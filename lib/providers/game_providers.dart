import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:ui' show Locale;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_storage/quickapps_storage.dart';

import 'package:stellar_broadcast/data/event_loader.dart';
import 'package:stellar_broadcast/data/events.dart';
import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/logic/event_engine.dart';
import 'package:stellar_broadcast/logic/planet_generator.dart';
import 'package:stellar_broadcast/logic/puzzle_generator.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/legacy.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_log_entry.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/services/planet_name_service_loader.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:stellar_broadcast/services/voyage_save_service.dart';
import 'package:stellar_broadcast/utils/constants.dart';

// ═══════════════════════════════════════════════════════════════════════════
// Trade resources
// ═══════════════════════════════════════════════════════════════════════════

/// Resources the player can spend at the Alien Trader to repair ship systems.
enum TradeResource { probes, fuel, energy, colonists, culture, tech }

// ═══════════════════════════════════════════════════════════════════════════
// Interstitial ad (long-lived, survives screen transitions)
// ═══════════════════════════════════════════════════════════════════════════

final interstitialAdProvider = Provider<AdLifecycleManager>((ref) {
  // Watch premium so the provider rebuilds when the user upgrades mid-session.
  // Without this, an existing AdMob handle would keep firing interstitials
  // even after a refund-eligible purchase, since `QaAdConfig.adapter` is only
  // read here once at construction time.
  final isPremium = ref.watch(isPremiumProvider);
  final adapter = QaAdConfig.adapter;
  final adUnitId = QaAdConfig.resolveAdUnitId(QaAdFormat.interstitial);
  late final QaInterstitialAdHandle handle;
  if (isPremium || adapter == null || adUnitId == null) {
    handle = noOpInterstitialHandle();
  } else {
    // Wire telemetry into every event the handle emits — without this,
    // none of the ad_requested / ad_loaded / ad_impression / ad_clicked
    // events ever reached Firebase Analytics for interstitials. The other
    // ad widgets (banner, native) merge telemetry inside their own
    // wrapper, but this provider creates a handle directly.
    final telemetryCallbacks = QaAdConfig.telemetry?.defaultCallbacks;
    handle = adapter.createInterstitialAd(
      adUnitId: adUnitId,
      // The game already rate-limits interstitials to once per 3 Press On
      // clicks, so we don't want the handle layering a second time-based
      // cooldown on top — a fast player could easily clear 3 planets in
      // under the default 3 minutes and silently miss an interstitial.
      cooldown: Duration.zero,
      callbacks: telemetryCallbacks,
    );
  }
  final manager = AdLifecycleManager(handle: handle);
  ref.onDispose(manager.dispose);
  return manager;
});

// ═══════════════════════════════════════════════════════════════════════════
// Seed utilities
// ═══════════════════════════════════════════════════════════════════════════

String seedToCode(int seed) =>
    (seed.abs() % 2176782336).toRadixString(36).toUpperCase().padLeft(6, '0');

/// Decodes a 6-character base-36 seed code. Returns `null` if the input
/// contains characters outside `[0-9A-Z]`.
int? codeToSeed(String code) =>
    int.tryParse(code.trim().toUpperCase(), radix: 36);

// ═══════════════════════════════════════════════════════════════════════════
// Daily seed
// ═══════════════════════════════════════════════════════════════════════════

/// Today's UTC date string in YYYY-MM-DD format.
String _todayUtc() {
  final now = DateTime.now().toUtc();
  return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
}

/// Deterministic seed for a UTC date string in YYYY-MM-DD format.
///
/// Do not use [String.hashCode] here: Dart does not promise a stable
/// cross-runtime hash, and daily voyages must match across mobile, desktop,
/// and web builds. FNV-1a is tiny, deterministic, and good enough for turning
/// a date label into a shareable game seed.
int dailySeedForDate(String date) {
  const fnvPrime = 0x01000193;
  var hash = 0x811c9dc5;
  for (final unit in date.codeUnits) {
    hash ^= unit;
    hash = (hash * fnvPrime) & 0xffffffff;
  }
  return hash % 2176782336;
}

/// Deterministic seed for today's daily voyage, derived from UTC date.
int dailySeed() => dailySeedForDate(_todayUtc());

/// 6-char code for today's daily seed.
String dailySeedCode() => seedToCode(dailySeed());

// ═══════════════════════════════════════════════════════════════════════════
// Voyage
// ═══════════════════════════════════════════════════════════════════════════

/// Holds the singleton [PlanetNameService] instance, overridden in main.dart.
final planetNameServiceProvider = Provider<PlanetNameService?>((ref) => null);

final voyageProvider = StateNotifierProvider<VoyageNotifier, VoyageState>((
  ref,
) {
  return VoyageNotifier(ref.watch(planetNameServiceProvider));
});

class VoyageNotifier extends StateNotifier<VoyageState> {
  VoyageNotifier(this._nameService) : super(const VoyageState());

  /// Toggle to load events from YAML instead of hardcoded Dart constructors.
  /// Set to true to test the statechart event system.
  static bool useYamlEvents = false;

  /// Cached YAML-loaded events (loaded once, reused across voyages).
  static List<GameEvent>? _yamlEventCache;

  /// Pre-loads YAML events into cache. Call once at app startup (e.g. in
  /// main.dart) when [useYamlEvents] is true. The `@key` references in YAML
  /// are resolved to the raw key string (for prototype; production would
  /// resolve via AppLocalizations).
  static Future<void> preloadYamlEvents() async {
    _yamlEventCache = await EventLoader.loadEvents(
      'assets/events/events.yaml',
      (key) =>
          key, // Prototype: @key passthrough (new events use inline strings)
    );
  }

  final PlanetNameService? _nameService;

  late Random _random = Random();

  /// Exposes the seeded RNG for screens that need reproducible randomness
  /// (e.g. weighted outcome resolution, landing sequences).
  Random get seededRandom => _random;

  late List<GameEvent> _eventPool = const [];
  Map<String, GameEvent> _eventIndex = const {};

  void _refreshEventPool(AppLocalizations l10n) {
    final localizedEvents = getEventPool(l10n);
    if (!useYamlEvents || _yamlEventCache == null) {
      _eventPool = localizedEvents;
      _eventIndex = {for (final event in _eventPool) event.id: event};
      return;
    }

    final existingIds = localizedEvents.map((e) => e.id).toSet();
    _eventPool = [
      ...localizedEvents,
      ..._yamlEventCache!.where((e) => !existingIds.contains(e.id)),
    ];
    _eventIndex = {for (final event in _eventPool) event.id: event};
  }

  /// Begins a fresh voyage with pristine ship systems and 10 probes.
  /// If [upgrades] is provided, purchased upgrades boost starting stats.
  void startVoyage({
    int? seed,
    bool isDaily = false,
    Map<String, bool> upgrades = const {},
    required AppLocalizations l10n,
  }) {
    _refreshEventPool(l10n);
    if (isDaily) {
      seed = dailySeed();
    } else {
      seed ??= DateTime.now().microsecondsSinceEpoch % 2176782336;
    }
    _random = Random(seed);

    // Apply legacy upgrade bonuses.
    var ship = const ShipSystems();
    int probes = 10;

    if (upgrades['reinforced_hull'] == true) {
      ship = ship.copyWith(hull: 1.1);
    }
    if (upgrades['advanced_scanner'] == true) {
      ship = ship.copyWith(
        atmosphericScanner: 1.1,
        gravimetricScanner: 1.1,
        mineralScanner: 1.1,
        lifeSignsScanner: 1.1,
        temperatureScanner: 1.1,
        waterScanner: 1.1,
      );
    }
    if (upgrades['warp_nav'] == true) {
      ship = ship.copyWith(nav: ship.nav + 0.1);
    }
    if (upgrades['cryo_shield'] == true) {
      ship = ship.copyWith(cryopods: 1.1);
    }
    if (upgrades['culture_archive'] == true) {
      ship = ship.copyWith(culture: ship.culture + 0.1);
    }
    if (upgrades['tech_boost'] == true) {
      ship = ship.copyWith(tech: ship.tech + 0.1);
    }
    if (upgrades['star_charts'] == true) {
      ship = ship.copyWith(
        nav: ship.nav + 0.05,
        atmosphericScanner: ship.atmosphericScanner + 0.05,
        gravimetricScanner: ship.gravimetricScanner + 0.05,
        mineralScanner: ship.mineralScanner + 0.05,
        lifeSignsScanner: ship.lifeSignsScanner + 0.05,
        temperatureScanner: ship.temperatureScanner + 0.05,
        waterScanner: ship.waterScanner + 0.05,
      );
    }
    if (upgrades['extra_probe'] == true) {
      probes = 12;
    }

    state = VoyageState(
      ship: ship,
      probes: probes,
      voyageStartTime: DateTime.now(),
      seed: seed,
      isDaily: isDaily,
    );

    // Record daily play immediately so force-close can't bypass the limit.
    if (isDaily) {
      final today = DateTime.now().toUtc().toIso8601String().substring(0, 10);
      SettingsRepository().setString('daily_played_date', today);
    }

    AnalyticsService().logEvent(
      name: isDaily ? QaEvents.dailyChallengeStarted : QaEvents.voyageStarted,
      parameters: {
        'seed': seed,
        'is_daily': isDaily ? 1 : 0,
        'upgrade_count': upgrades.values.where((v) => v).length,
      },
    );

    saveState();
  }

  /// Whether the player has reached enough encounters to scan a planet.
  /// Planets are rare — requires 3-6 encounters between each one.
  bool get canScanPlanet => state.encounterCount >= state.nextPlanetEncounter;

  /// Whether the ship has enough energy to scan.
  bool get canScanEnergy => state.energy >= 2;

  /// Generates a new planet and assigns it as the current scan target.
  /// Generates deceptive scanner readings based on scanner subsystem health.
  /// Consumes 2 energy per scan.
  Future<void> scanPlanet() async {
    var planet = await PlanetGenerator.generate(
      _random,
      scannerLevels: state.scannerLevels,
      nameService: _nameService,
    );

    // Early-voyage stat drag: first few planets are *likely* worse but
    // not guaranteed. Each stat is independently re-rolled against a
    // ceiling that rises with planets scanned. A lucky roll can still
    // produce a gem early on.
    final scannedSoFar = state.planetsScanned; // 0-indexed before increment
    if (scannedSoFar < 5) {
      // Ceiling rises from 0.55 (planet 1) → 0.70 → 0.80 → 0.90 → 0.95.
      final ceiling = 0.55 + scannedSoFar * 0.10;
      // Bypass chance rises with planet number: 20% → 28% → 36% → 44% → 52%.
      final bypassChance = 0.20 + scannedSoFar * 0.08;
      double cap(double stat) {
        if (_random.nextDouble() < bypassChance) return stat;
        return stat.clamp(0.0, ceiling);
      }

      planet = planet.copyWith(
        atmosphere: cap(planet.atmosphere),
        gravity: cap(planet.gravity),
        temperature: cap(planet.temperature),
        water: cap(planet.water),
        resources: cap(planet.resources),
        biodiversity: cap(planet.biodiversity),
      );
    }

    // Apply any pending planet modifiers from previous events
    // (e.g. terraforming devices aimed at our target system).
    if (state.pendingPlanetModifiers.isNotEmpty) {
      planet = _applyPendingModifiers(planet, state.pendingPlanetModifiers);
    }

    final readings = _generateScannerReadings(planet, state.ship);
    final newScanned = state.planetsScanned + 1;
    final pendingUpgrade = newScanned % 3 == 0;

    // Solar panel recharge: 40% chance when entering orbit.
    // The star's spectrum may be compatible with the ship's solar arrays.
    var rechargeAmount = 0;
    if (_random.nextDouble() < 0.4) {
      rechargeAmount = 1 + _random.nextInt(3); // 1-3 energy
    }
    final newEnergy = ((state.energy - 2) + rechargeAmount).clamp(0, 40);

    state = state.copyWith(
      currentPlanet: planet,
      probedStats: const {},
      revealedFeatures: const {},
      scannerReadings: readings,
      planetsScanned: newScanned,
      pendingScannerUpgrade: pendingUpgrade,
      energy: newEnergy,
      energyConsumed: state.energyConsumed + 2,
      solarRechargeAmount: rechargeAmount,
      pendingPlanetModifiers: const {},
      log: List<String>.of(state.log)
        ..add('Scanned ${planet.name}. (-2 energy)')
        ..addAll([
          if (rechargeAmount > 0)
            'Solar panels recharged +$rechargeAmount energy from stellar radiation.',
        ]),
    );

    AnalyticsService().logEvent(
      name: QaEvents.planetScanned,
      parameters: {
        'planet_number': newScanned,
        'habitability': (planet.habitabilityScore * 100).round(),
      },
    );

    saveState();
  }

  /// Applies accumulated pending planet modifiers to a freshly generated planet.
  Planet _applyPendingModifiers(Planet planet, Map<String, double> modifiers) {
    var atm = planet.atmosphere;
    var temp = planet.temperature;
    var wat = planet.water;
    var res = planet.resources;
    var grav = planet.gravity;
    var bio = planet.biodiversity;
    var anom = planet.anomaly;
    var rad = planet.radiation;
    var natPres = planet.nativePresence;
    var natDisp = planet.nativeDisposition;

    for (final entry in modifiers.entries) {
      double apply(double current) => (current + entry.value).clamp(0.0, 1.0);

      switch (entry.key) {
        case 'atmosphere':
          atm = apply(atm);
        case 'temperature':
          temp = apply(temp);
        case 'water':
          wat = apply(wat);
        case 'resources':
          res = apply(res);
        case 'gravity':
          grav = apply(grav);
        case 'biodiversity':
          bio = apply(bio);
        case 'anomaly':
          anom = apply(anom);
        case 'radiation':
          rad = apply(rad);
        case 'nativePresence':
          natPres = apply(natPres);
        case 'nativeDisposition':
          natDisp = apply(natDisp);
      }
    }

    return planet.copyWith(
      atmosphere: atm,
      temperature: temp,
      water: wat,
      resources: res,
      gravity: grav,
      biodiversity: bio,
      anomaly: anom,
      radiation: rad,
      nativePresence: natPres,
      nativeDisposition: natDisp,
    );
  }

  /// Upgrades a scanner subsystem by one level (max 2).
  void upgradeScanner(String scannerName) {
    final current = state.scannerLevels[scannerName] ?? 0;
    if (current >= 2) return;
    final updated = Map<String, int>.from(state.scannerLevels);
    updated[scannerName] = current + 1;
    state = state.copyWith(
      scannerLevels: updated,
      pendingScannerUpgrade: false,
      scannersUpgraded: state.scannersUpgraded + 1,
      log: List<String>.of(state.log)
        ..add('Upgraded $scannerName to level ${current + 1}.'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.scannerUpgraded,
      parameters: {'scanner_name': scannerName, 'new_level': current + 1},
    );
  }

  /// Dismisses pending scanner upgrade without choosing.
  void dismissScannerUpgrade() {
    state = state.copyWith(pendingScannerUpgrade: false);
  }

  /// Sets the colony name chosen by the player.
  void setColonyName(String name) {
    state = state.copyWith(colonyName: name);
  }

  void setLandedOnMoon(bool value) {
    state = state.copyWith(landedOnMoon: value);
  }

  /// Debug: degrade a system by a fixed amount.
  void debugDegradeSystem(String system, double amount) {
    state = state.copyWith(ship: state.ship.degrade(system, amount));
  }

  /// QA helper — sets a sample game over reason without triggering the
  /// actual game over state transition. Used by the debug deep-link path
  /// to make the gameover screen's Phase 2 box populated in screenshots.
  void debugSetGameOverReason(String reason) {
    state = state.copyWith(gameOverReason: reason);
  }

  /// Generates potentially inaccurate scanner readings based on scanner health.
  /// Scanners can fail (return null) based on health — lower health = higher failure chance.
  Map<String, double?> _generateScannerReadings(
    Planet planet,
    ShipSystems ship,
  ) {
    final readings = <String, double?>{};
    for (final stat in Planet.scannableStats) {
      final scannerName = ShipSystems.scannerForStat[stat];
      if (scannerName == null) continue;
      final scannerHealth = ship.getSystem(scannerName);
      // Scan failure: scanner must roll under its health to succeed.
      if (_random.nextDouble() >= scannerHealth) {
        readings[stat] = null; // Scanner failed.
        continue;
      }
      final trueValue = planet.getStat(stat);
      // Base ±22% error even at full health; scales up to ±62% at 0 health.
      final maxError = 0.22 + (1.0 - scannerHealth) * 0.4;
      final error = (_random.nextDouble() * 2 - 1) * maxError;
      readings[stat] = (trueValue + error).clamp(0.0, 1.0);
    }
    // Radiation is shown as-is (no dedicated scanner subsystem).
    readings['radiation'] = planet.radiation;
    return readings;
  }

  /// Uses a probe to refine a specific planet stat, revealing the true value.
  void useProbe(String planetStat) {
    if (state.probes <= 0) return;
    if (state.probedStats.contains(planetStat)) return;
    if (state.currentPlanet == null) return;

    // Replace the scanner reading (possibly null/failed) with the true value.
    final trueValue = state.currentPlanet!.getStat(planetStat);
    final updatedReadings = Map<String, double?>.from(state.scannerReadings);
    updatedReadings[planetStat] = trueValue;

    state = state.copyWith(
      probes: state.probes - 1,
      probedStats: {...state.probedStats, planetStat},
      scannerReadings: updatedReadings,
      log: List<String>.of(state.log)
        ..add('Deployed probe to verify $planetStat readings.'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.probeUsed,
      parameters: {'type': 'single', 'stat': planetStat},
    );
  }

  /// Uses a single probe to verify ALL scannable stats at once,
  /// replacing scanner readings with true values.
  void useProbeAll() {
    if (state.probes <= 0) return;
    if (state.currentPlanet == null) return;

    final planet = state.currentPlanet!;
    final updatedReadings = Map<String, double?>.from(state.scannerReadings);
    final updatedProbed = <String>{...state.probedStats};

    for (final stat in Planet.scannableStats) {
      if (!updatedProbed.contains(stat)) {
        updatedReadings[stat] = planet.getStat(stat);
        updatedProbed.add(stat);
      }
    }

    // Probe also reveals 2-3 hidden surface features.
    final hiddenFeatures = planet.surfaceFeatures
        .where((f) => !state.revealedFeatures.contains(f))
        .toList();
    hiddenFeatures.shuffle(_random);
    final maxReveal = 2 + _random.nextInt(2); // 2-3
    final revealed = hiddenFeatures.take(maxReveal).toList();
    final newRevealed = <String>{...state.revealedFeatures, ...revealed};

    final featureMsg = revealed.isEmpty
        ? 'all surface features already identified.'
        : '${revealed.length} surface feature${revealed.length == 1 ? '' : 's'} identified.';

    state = state.copyWith(
      probes: state.probes - 1,
      probedStats: updatedProbed,
      revealedFeatures: newRevealed,
      scannerReadings: updatedReadings,
      log: List<String>.of(state.log)
        ..add('Deployed probe — scanner readings verified, $featureMsg'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.probeUsed,
      parameters: {'type': 'all', 'features_revealed': revealed.length},
    );
  }

  /// Sacrifices a probe to boost a ship system by 0.15.
  void sacrificeProbe(String system) {
    if (state.probes <= 0) return;

    final boosted = state.ship.boost(system, 0.15);
    state = state.copyWith(
      probes: state.probes - 1,
      ship: boosted,
      log: List<String>.of(state.log)
        ..add('Sacrificed a probe to repair $system.'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.probeUsed,
      parameters: {'type': 'sacrifice', 'system': system},
    );
  }

  /// Triggers a random narrative event and returns it for the UI to display.
  GameEvent triggerEvent() {
    final event = EventEngine.getRandomEvent(
      _random,
      state,
      _eventPool,
      eventIndex: _eventIndex,
    );
    state = state.copyWith(seenEventIds: [...state.seenEventIds, event.id]);
    return event;
  }

  /// Applies the player's chosen [EventChoice] to the current state.
  ///
  /// Important: callers should `await` this method because it may trigger
  /// async planet generation ([_openImmediatePlanet]) that mutates state.
  Future<void> handleEvent(EventChoice choice) async {
    // Note: weighted outcomes should be resolved by the caller before passing
    // here, so the choice's outcome/effects are already finalized.
    final eventId = state.seenEventIds.isNotEmpty ? state.seenEventIds.last : null;
    state = EventEngine.applyChoice(state, choice, _random, triggeredEventId: eventId);

    if (choice.opensPlanetScreen) {
      await _openImmediatePlanet(
        minHabitability: choice.immediatePlanetMinHabitability,
      );
    }

    state = state.copyWith(encounterCount: state.encounterCount + 1);

    AnalyticsService().logEvent(
      name: QaEvents.eventChoiceMade,
      parameters: {
        'event_id': state.seenEventIds.isNotEmpty
            ? state.seenEventIds.last
            : 'unknown',
        'choice_label': choice.text.length > 40
            ? choice.text.substring(0, 40)
            : choice.text,
      },
    );

    // Check for game over conditions.
    _checkGameOver();
    saveState();
  }

  // ─── Puzzle integration ──────────────────────────────────────────────

  /// Whether the next encounter should be a puzzle instead of a normal event.
  /// ~12% chance per encounter after encounter 3.
  bool shouldTriggerPuzzle() {
    if (state.encounterCount < 3) return false;
    return _random.nextDouble() < 0.06;
  }

  /// Generates a puzzle for the current encounter.
  AlienPuzzle generatePuzzle() {
    return PuzzleGenerator.generate(_random, state);
  }

  /// Applies puzzle result (reward or penalty) and advances the encounter.
  void handlePuzzleResult(EventChoice choice, {bool isCorrect = true}) {
    state = EventEngine.applyChoice(state, choice, _random, triggeredEventId: 'puzzle_encounter');
    state = state.copyWith(encounterCount: state.encounterCount + 1);

    AnalyticsService().logEvent(
      name: QaEvents.puzzleCompleted,
      parameters: {
        'choice_label': choice.text.length > 40
            ? choice.text.substring(0, 40)
            : choice.text,
        'encounter': state.encounterCount,
        'is_correct': isCorrect ? 1 : 0,
      },
    );
    if (!isCorrect) {
      AnalyticsService().logEvent(
        name: 'puzzle_failed',
        parameters: {'encounter': state.encounterCount},
      );
    }

    _checkGameOver();
    saveState();
  }

  // ─── Immediate planet ───────────────────────────────────────────────

  Future<void> _openImmediatePlanet({double minHabitability = 0.0}) async {
    final deferredModifiers = Map<String, double>.from(
      state.pendingPlanetModifiers,
    );
    Planet? bestPlanet;
    var bestScore = -1.0;

    for (int i = 0; i < 24; i++) {
      // Yield every iteration — stat rolling and modifier logic is light,
      // but we yield so the UI doesn't hitch if many planets are evaluated.
      await Future.delayed(Duration.zero);

      var candidate = await PlanetGenerator.generate(
        _random,
        scannerLevels: state.scannerLevels,
        nameService: null, // Defer naming to the winner
      );

      if (deferredModifiers.isNotEmpty) {
        candidate = _applyPendingModifiers(candidate, deferredModifiers);
      }

      final score = candidate.habitabilityScore;
      if (score > bestScore) {
        bestPlanet = candidate;
        bestScore = score;
      }

      if (score >= minHabitability) {
        bestPlanet = candidate;
        break;
      }
    }

    if (bestPlanet == null) {
      QaLogger.app.warning(
        '_openImmediatePlanet: no suitable planet found after 24 candidates (minHabitability=$minHabitability)',
      );
      return;
    }

    // Name the winner.
    var finalPlanet = bestPlanet;
    if (_nameService != null && _nameService.isReady) {
      final name = await _nameService.generateName(
        atmosphere: finalPlanet.atmosphere,
        gravity: finalPlanet.gravity,
        resources: finalPlanet.resources,
        biodiversity: finalPlanet.biodiversity,
        temperature: finalPlanet.temperature,
        water: finalPlanet.water,
        radiation: 1.0 - finalPlanet.radiation,
        random: _random,
      );
      if (name.isNotEmpty) {
        finalPlanet = finalPlanet.copyWith(name: name);
      }
    }

    final readings = _generateScannerReadings(finalPlanet, state.ship);

    state = state.copyWith(
      currentPlanet: finalPlanet,
      probedStats: const {},
      scannerReadings: readings,
      planetsScanned: state.planetsScanned + 1,
      pendingScannerUpgrade: (state.planetsScanned + 1) % 3 == 0,
      pendingPlanetModifiers: const {},
      log: List<String>.of(state.log)
        ..add('Guided to ${finalPlanet.name} by alien sentinels.'),
    );
  }

  /// Applies damage from the cinematic landing sequence before scoring.
  void applyLandingDamage({
    required ShipSystems ship,
    required int colonists,
    required int fuelCost,
  }) {
    state = state.copyWith(
      ship: ship,
      colonists: colonists,
      fuel: (state.fuel - fuelCost).clamp(0, 200),
      fuelConsumed: state.fuelConsumed + fuelCost,
    );
  }

  /// Accept the current planet and end the voyage (triggers ending).
  EndingResult landOnPlanet(AppLocalizations l10n) {
    if (state.currentPlanet == null) {
      throw StateError('No planet scanned — cannot land.');
    }

    final result = EndingCalculator.calculate(
      state.ship,
      state.currentPlanet!,
      l10n,
      colonists: state.colonists,
      colonyName: state.colonyName,
      fuel: state.fuel,
      landedOnMoon: state.landedOnMoon,
      voyage: state,
    );

    state = state.copyWith(
      isComplete: true,
      log: List<String>.of(
        state.log,
      )..add('Landed on ${state.currentPlanet!.name}. Score: ${result.score}.'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.planetLanded,
      parameters: {
        'score': result.score,
        'tier': result.tier,
        'planets_scanned': state.planetsScanned,
        'encounter_count': state.encounterCount,
      },
    );

    _clearSavedVoyageInBackground();
    return result;
  }

  /// Reject the current planet and continue the voyage.
  void pressOn() {
    final hadPlanet = state.currentPlanet != null;
    final logs = List<String>.of(state.log);
    if (hadPlanet) {
      logs.add('Left ${state.currentPlanet!.name} behind and pressed on.');
    }

    // Fuel consumption: 5-10 per pressOn.
    final fuelCost = 5 + _random.nextInt(6);
    final newFuel = (state.fuel - fuelCost).clamp(0, 200);

    // Trace damage: each ship system has a small chance to degrade.
    var ship = state.ship;
    var totalDmg = 0.0;
    for (final sys in ShipSystems.systemNames) {
      if (_random.nextDouble() < 0.15) {
        final dmg = 0.05 + _random.nextDouble() * 0.10;
        ship = ship.degrade(sys, dmg);
        totalDmg += dmg;
      }
    }

    var newEnergy = state.energy;

    final newEncounter = state.encounterCount + 1;
    // If leaving a planet, set next planet 3-6 encounters ahead.
    final nextPlanet = hadPlanet
        ? newEncounter +
              3 +
              _random.nextInt(4) // 3-6 encounters gap
        : state.nextPlanetEncounter;

    state = state.copyWith(
      clearPlanet: true,
      scannerReadings: const {},
      encounterCount: newEncounter,
      nextPlanetEncounter: nextPlanet,
      ship: ship,
      fuel: newFuel,
      energy: newEnergy,
      fuelConsumed: state.fuelConsumed + fuelCost,
      totalDamageTaken: state.totalDamageTaken + totalDmg,
      planetsSkipped: hadPlanet
          ? state.planetsSkipped + 1
          : state.planetsSkipped,
      log: logs,
    );

    if (hadPlanet) {
      AnalyticsService().logEvent(
        name: QaEvents.planetSkipped,
        parameters: {
          'planet_number': state.planetsScanned,
          'encounter': newEncounter,
        },
      );
    }

    // Check for game over conditions.
    _checkGameOver();
    saveState();
  }

  /// Checks if hull, nav, cryopods hit 0, or colonists reach 0.
  void _checkGameOver() {
    final wasDead = state.isGameOver;
    if (state.ship.hull <= 0.0) {
      state = state.copyWith(
        isGameOver: true,
        isComplete: true,
        gameOverReason: 'HULL BREACH CRITICAL — STRUCTURAL COLLAPSE',
      );
    } else if (state.ship.nav <= 0.0) {
      state = state.copyWith(
        isGameOver: true,
        isComplete: true,
        gameOverReason: 'NAVIGATION FAILURE — LOST IN THE VOID',
      );
    } else if (state.ship.cryopods <= 0.0) {
      state = state.copyWith(
        isGameOver: true,
        isComplete: true,
        gameOverReason: 'CRYOPOD CASCADE FAILURE — NO SURVIVORS',
      );
    } else if (state.colonists <= 0) {
      state = state.copyWith(
        isGameOver: true,
        isComplete: true,
        gameOverReason: 'ALL COLONISTS LOST — THE VESSEL SAILS EMPTY',
      );
    } else if (state.fuel <= 0) {
      state = state.copyWith(
        isGameOver: true,
        isComplete: true,
        gameOverReason: 'FUEL EXHAUSTED — ADRIFT BETWEEN STARS',
      );
    }
    if (!wasDead && state.isGameOver) {
      _clearSavedVoyageInBackground();
      AnalyticsService().logEvent(
        name: QaEvents.gameOver,
        parameters: {
          'reason': state.gameOverReason,
          'encounter_count': state.encounterCount,
          'planets_scanned': state.planetsScanned,
          'is_daily': state.isDaily ? 1 : 0,
        },
      );
    }
  }

  /// Trades a resource to repair [system] by 10 %. The base cost per 10 %
  /// repair is multiplied by [markup]. Returns true if the trade succeeded.
  bool tradeRepair(String system, TradeResource resource, double markup) {
    // Base costs per 10 % repair.
    const baseCosts = <TradeResource, double>{
      TradeResource.probes: 1,
      TradeResource.fuel: 25,
      TradeResource.energy: 8,
      TradeResource.colonists: 30,
      TradeResource.culture: 0.10,
      TradeResource.tech: 0.10,
    };

    final rawCost = baseCosts[resource]! * markup;

    // Check affordability.
    switch (resource) {
      case TradeResource.probes:
        if (state.probes < rawCost.ceil()) return false;
      case TradeResource.fuel:
        if (state.fuel < rawCost.ceil()) return false;
      case TradeResource.energy:
        if (state.energy < rawCost.ceil()) return false;
      case TradeResource.colonists:
        if (state.colonists < rawCost.ceil()) return false;
      case TradeResource.culture:
        if (state.ship.culture < rawCost) return false;
      case TradeResource.tech:
        if (state.ship.tech < rawCost) return false;
    }

    // Deduct the resource.
    var ship = state.ship;
    var probes = state.probes;
    var fuel = state.fuel;
    var energy = state.energy;
    var colonists = state.colonists;

    switch (resource) {
      case TradeResource.probes:
        probes -= rawCost.ceil();
      case TradeResource.fuel:
        fuel -= rawCost.ceil();
      case TradeResource.energy:
        energy -= rawCost.ceil();
      case TradeResource.colonists:
        colonists -= rawCost.ceil();
      case TradeResource.culture:
        ship = ship.degrade('culture', rawCost);
      case TradeResource.tech:
        ship = ship.degrade('tech', rawCost);
    }

    // Boost the system by 10 %.
    ship = ship.boost(system, 0.10);

    state = state.copyWith(
      ship: ship,
      probes: probes,
      fuel: fuel,
      energy: energy,
      colonists: colonists,
      log: List<String>.of(state.log)
        ..add('Traded ${resource.name} to repair $system (+10%).'),
    );

    AnalyticsService().logEvent(
      name: QaEvents.tradeCompleted,
      parameters: {'system': system, 'resource': resource.name},
    );

    return true;
  }

  // ─── Mid-run save / restore ──────────────────────────────────────────

  bool _saving = false;
  bool _saveQueued = false;

  /// Persists the current voyage state to local storage.
  /// Serialized: concurrent calls coalesce so the newest state wins.
  Future<void> saveState() async {
    if (state.isComplete || state.isGameOver || state.encounterCount <= 0) {
      return;
    }

    _saveQueued = true;
    if (_saving) {
      return;
    }

    _saving = true;
    try {
      while (_saveQueued) {
        _saveQueued = false;
        final snapshot = state;
        if (snapshot.isComplete ||
            snapshot.isGameOver ||
            snapshot.encounterCount <= 0) {
          continue;
        }
        await VoyageSaveService.save(snapshot);
      }
    } finally {
      _saving = false;
    }
  }

  /// Restores a previously saved voyage. Returns true if restored.
  ///
  /// Note on determinism: the RNG is reseeded with `saved.seed +
  /// saved.encounterCount`, which approximates "RNG state at encounter N"
  /// without replaying. This means a *resumed* voyage will diverge from a
  /// *continuously-played* voyage with the same starting seed, even after the
  /// resume point. Achieving exact equivalence would require either tracking
  /// the precise PRNG call sequence (Dart's `Random` doesn't expose state) or
  /// switching to a serialisable PRNG. This is acceptable for shareable seeds
  /// (which are always replayed from scratch) but means save-scumming cannot
  /// be used to "reroll" identical events.
  Future<bool> restoreState(AppLocalizations l10n) async {
    final saved = await VoyageSaveService.load();
    if (saved == null) return false;
    _refreshEventPool(l10n);
    _random = Random(saved.seed + saved.encounterCount);
    state = saved;

    AnalyticsService().logEvent(
      name: QaEvents.saveRestored,
      parameters: {
        'encounter_count': saved.encounterCount,
        'planets_scanned': saved.planetsScanned,
        'is_daily': saved.isDaily ? 1 : 0,
      },
    );
    AnalyticsService().logEvent(
      name: QaEvents.voyageResumed,
      parameters: {
        'encounter_count': saved.encounterCount,
        'planets_scanned': saved.planetsScanned,
      },
    );

    return true;
  }

  /// Clears any saved voyage from storage.
  static Future<void> clearSave() => VoyageSaveService.clear();

  /// Fire-and-forget helper that clears the saved voyage and logs any storage
  /// failure instead of dropping it. Use this whenever the voyage ends or
  /// resets so a failed clear doesn't haunt the next launch.
  void _clearSavedVoyageInBackground() {
    unawaited(
      VoyageSaveService.clear().catchError((Object e, StackTrace st) {
        QaLogger.app.warning('Failed to clear saved voyage', e, st);
      }),
    );
  }

  /// Resets the voyage to the initial state.
  void reset() {
    _clearSavedVoyageInBackground();
    state = const VoyageState();
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Legacy (meta-progression)
// ═══════════════════════════════════════════════════════════════════════════

final legacyProvider = StateNotifierProvider<LegacyNotifier, LegacyData>((ref) {
  return LegacyNotifier(ref);
});

/// Whether today's daily voyage has already been played.
///
/// Two sources of truth, checked in order:
///   1. An explicit `daily_played_date` marker written when a daily starts
///      and again when it completes.
///   2. An in-progress voyage save with `isDaily == true` and a start
///      timestamp from today — covers the race window between daily start
///      and marker persistence if the app force-closes in between.
final dailyPlayedProvider = FutureProvider<bool>((ref) async {
  final settings = SettingsRepository();
  final today = _todayUtc();
  final stored = await settings.getString('daily_played_date');
  if (stored == today) return true;

  // Fallback: a saved voyage marked as daily from today means the player
  // already started it, even if the marker write raced and was lost.
  final saved = await VoyageSaveService.load();
  if (saved != null && saved.isDaily && saved.voyageStartTime != null) {
    final voyageDate = saved.voyageStartTime!
        .toUtc()
        .toIso8601String()
        .substring(0, 10);
    if (voyageDate == today) return true;
  }
  return false;
});

class LegacyNotifier extends StateNotifier<LegacyData> {
  LegacyNotifier(this._ref) : super(const LegacyData()) {
    _loadFuture = _loadFromStorage();
  }

  final Ref _ref;
  final _settings = SettingsRepository();

  /// Resolves when the initial load from Hive has finished (success or
  /// silent failure). Every save awaits this first so a mutation that fires
  /// before the box has been opened can't persist the default `LegacyData()`
  /// over a real on-disk total. Without this gate, a cold-launch
  /// finalizeVoyage (common on first-of-the-day daily runs) can overwrite
  /// the player's saved legacyPoints with the post-race value.
  Future<void>? _loadFuture;

  /// When > 0, [_saveToStorage] is a no-op so multiple state mutations can
  /// be batched and persisted as a single atomic write at the end of the
  /// batch. Decremented by [finalizeVoyage] which then performs one save.
  /// Prevents partially-committed legacy state if the app crashes between
  /// individual mutation calls.
  int _saveSuppressCount = 0;

  // Daily marker is queued during a write batch and only flushed AFTER the
  // legacy state save completes, so a crash mid-finalize cannot leave the
  // "today is played" marker on disk without a matching score row.
  String? _pendingDailyMarker;

  /// Apply a completed voyage's results to the legacy state in a single
  /// batched operation: the voyage log, discoveries, and any newly unlocked
  /// achievements are all persisted together. A crash mid-batch leaves the
  /// previous legacy state untouched; a completed batch is written atomically
  /// by the wrapped save service. Returns the list of newly unlocked
  /// achievements (pushed to Play Games / Game Center inside the batch).
  List<String> finalizeVoyage({
    required VoyageLogEntry entry,
    required List<String> discoveries,
    required int score,
    required VoyageState voyage,
    bool isDaily = false,
  }) {
    _saveSuppressCount++;
    List<String> newlyUnlocked;
    try {
      addVoyageResult(entry, isDaily: isDaily);
      recordDiscoveries(discoveries);
      newlyUnlocked = checkAchievements(score: score, voyage: voyage);
    } finally {
      _saveSuppressCount--;
    }
    // One save writes the bundled result: voyage log + discoveries +
    // achievements + any score/points mutations. Once the save resolves we
    // flush any deferred daily marker so the on-disk ordering is
    // legacy-state-then-marker (never the other way around).
    unawaited(_saveToStorage().then((_) => _flushPendingDailyMarker()));
    return newlyUnlocked;
  }

  Future<void> _loadFromStorage() async {
    try {
      final raw = await _settings.getString('legacy_data');
      if (raw.isEmpty) return;
      final map = jsonDecode(raw) as Map<String, dynamic>;
      // Migrate highScores: handle both legacy List<int> and new List<Map>.
      final rawScores = map['highScores'] as List? ?? [];
      final highScores = rawScores.map<HighScoreEntry>((e) {
        if (e is Map<String, dynamic>) {
          return HighScoreEntry.fromJson(e);
        }
        // Legacy int entry — wrap with seed=0 and epoch timestamp.
        return HighScoreEntry(score: e as int, seed: 0, timestamp: 0);
      }).toList();

      final rawDaily = map['dailyScores'] as List? ?? [];
      final dailyScores = rawDaily.map<HighScoreEntry>((e) {
        try {
          return HighScoreEntry.fromJson(e as Map<String, dynamic>);
        } catch (parseErr) {
          QaLogger.app.warning(
            'Skipping malformed daily score entry: $parseErr',
          );
          return HighScoreEntry(score: 0, seed: 0, timestamp: 0);
        }
      }).toList();

      final rawDiscovered = map['discoveredFeatures'] as List? ?? [];
      final discoveredFeatures = Set<String>.from(rawDiscovered);

      final loadedVersion = map['scoreVersion'] as int? ?? 1;
      var bestScore = map['bestScore'] as int? ?? 0;
      var legacyBestScore = map['legacyBestScore'] as int? ?? 0;

      // Migration: if data predates scoreVersion 2, archive the old best score
      // and reset bestScore so the new 0-100K system starts fresh.
      if (loadedVersion < 2) {
        QaLogger.app.info(
          'Migrating legacy data from scoreVersion $loadedVersion to 2 (bestScore=$bestScore)',
        );
        if (legacyBestScore == 0 && bestScore > 0) {
          legacyBestScore = bestScore;
        }
        bestScore = 0;
      }

      state = LegacyData(
        totalVoyages: map['totalVoyages'] as int? ?? 0,
        bestScore: bestScore,
        achievements: List<String>.from(map['achievements'] as List? ?? []),
        upgrades: Map<String, bool>.from(map['upgrades'] as Map? ?? {}),
        legacyPoints: map['legacyPoints'] as int? ?? 0,
        voyageLogs: _parseVoyageLogs(map['voyageLogs'] as List? ?? []),
        highScores: highScores,
        dailyScores: dailyScores,
        discoveredFeatures: discoveredFeatures,
        legacyBestScore: legacyBestScore,
        scoreVersion: 2,
      );

      // Persist the migration immediately so it only runs once.
      if (loadedVersion < 2) _saveToStorage();
    } catch (e, st) {
      QaLogger.app.warning('Failed to load legacy data', e, st);
    }
  }

  Future<void> _saveToStorage() async {
    // Honor batched writes — see [_saveSuppressCount] and [finalizeVoyage].
    if (_saveSuppressCount > 0) return;
    // Block until the initial load has resolved. If a save fires before
    // _loadFromStorage has populated state from disk, we'd be persisting
    // `const LegacyData()` (legacyPoints=0) with whatever delta was just
    // applied — wiping the real saved total. Awaiting the loadFuture makes
    // every save consistent with the on-disk baseline.
    if (_loadFuture != null) {
      try {
        await _loadFuture;
      } catch (_) {
        // Load errors are already logged inside _loadFromStorage; we
        // continue so saves aren't permanently blocked on a corrupt box.
      }
    }
    try {
      final map = {
        'totalVoyages': state.totalVoyages,
        'bestScore': state.bestScore,
        'achievements': state.achievements,
        'upgrades': state.upgrades,
        'legacyPoints': state.legacyPoints,
        'voyageLogs': state.voyageLogs.map((e) => e.toJson()).toList(),
        'highScores': state.highScores.map((e) => e.toJson()).toList(),
        'dailyScores': state.dailyScores.map((e) => e.toJson()).toList(),
        'discoveredFeatures': state.discoveredFeatures.toList(),
        'legacyBestScore': state.legacyBestScore,
        'scoreVersion': state.scoreVersion,
      };
      await _settings.setString('legacy_data', jsonEncode(map));
    } catch (e, st) {
      QaLogger.app.warning('Failed to save legacy data', e, st);
    }
  }

  /// Parse voyage logs from storage, handling both legacy strings and structured entries.
  /// A single malformed entry is logged and skipped rather than aborting the
  /// whole load — otherwise one corrupt voyage log would blank the player's
  /// entire legacy profile (including legacyPoints) on the next launch.
  static List<VoyageLogEntry> _parseVoyageLogs(List<dynamic> raw) {
    final result = <VoyageLogEntry>[];
    for (final item in raw) {
      try {
        if (item is String) {
          result.add(VoyageLogEntry.fromLegacyString(item));
        } else if (item is Map<String, dynamic>) {
          result.add(VoyageLogEntry.fromJson(item));
        } else if (item is Map) {
          result.add(VoyageLogEntry.fromJson(Map<String, dynamic>.from(item)));
        }
      } catch (parseErr) {
        QaLogger.app.warning('Skipping malformed voyage log entry: $parseErr');
      }
    }
    return result;
  }

  void addVoyageResult(VoyageLogEntry entry, {bool isDaily = false}) async {
    await _loadFuture;
    final score = entry.score;
    final seed = entry.seed;
    final points = (score / 8000).ceil();
    final voyageNum = state.totalVoyages + 1;

    if (state.totalVoyages == 0) {
      AnalyticsService().logEvent(
        name: 'first_voyage_completed',
        parameters: {'score': score},
      );
    }

    final today = _todayUtc();
    final hsEntry = HighScoreEntry(
      score: score,
      seed: seed,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      date: isDaily ? today : null,
    );

    // Insert score into sorted high scores (descending), cap at 10.
    final scores = [...state.highScores, hsEntry]
      ..sort((a, b) => b.score.compareTo(a.score));
    final capped = scores.length > 10 ? scores.sublist(0, 10) : scores;

    // If daily voyage, also add to daily scores and queue the played marker.
    // The marker is NOT written here — it's deferred via _pendingDailyMarker
    // and flushed only after _saveToStorage resolves, so a crash between the
    // two writes can never leave the marker set without a matching score row.
    var dailyScores = state.dailyScores;
    if (isDaily) {
      final dailyEntry = HighScoreEntry(
        score: score,
        seed: seed,
        timestamp: DateTime.now().millisecondsSinceEpoch,
        date: today,
      );
      dailyScores = [...dailyScores, dailyEntry]
        ..sort((a, b) => b.score.compareTo(a.score));
      // Cap daily scores at 30 entries.
      if (dailyScores.length > 30) dailyScores = dailyScores.sublist(0, 30);
      _pendingDailyMarker = today;
    }

    state = state.copyWith(
      totalVoyages: voyageNum,
      bestScore: score > state.bestScore ? score : state.bestScore,
      legacyPoints: state.legacyPoints + points,
      voyageLogs: [...state.voyageLogs, entry],
      highScores: capped,
      dailyScores: dailyScores,
    );
    // Outside a finalizeVoyage batch (e.g. game-over flow), flush the marker
    // ourselves once the legacy state save resolves.
    if (_saveSuppressCount == 0) {
      unawaited(_saveToStorage().then((_) => _flushPendingDailyMarker()));
    } else {
      _saveToStorage();
    }
  }

  void _flushPendingDailyMarker() {
    final marker = _pendingDailyMarker;
    if (marker == null) return;
    _pendingDailyMarker = null;
    _settings.setString('daily_played_date', marker);
    _ref.invalidate(dailyPlayedProvider);
  }

  /// Records newly discovered planet features into the legacy codex.
  void recordDiscoveries(List<String> features) async {
    await _loadFuture;
    final updated = {...state.discoveredFeatures, ...features};
    if (updated.length == state.discoveredFeatures.length) return;
    state = state.copyWith(discoveredFeatures: updated);
    _saveToStorage();
  }

  void unlockAchievement(String achievement) async {
    await _loadFuture;
    if (state.achievements.contains(achievement)) return;
    state = state.copyWith(
      achievements: [...state.achievements, achievement],
      legacyPoints: state.legacyPoints + 5,
    );
    _saveToStorage();

    // Push to Play Games / Game Center.
    final androidId = AppConstants.achievementIdsAndroid[achievement];
    final iosId = AppConstants.achievementIdsIos[achievement];
    if (androidId != null && iosId != null) {
      PlayGamesService.unlockAchievement(androidId: androidId, iosId: iosId);
    }
  }

  Future<bool> purchaseUpgrade(String upgrade, {int cost = 10}) async {
    await _loadFuture;
    if (state.upgrades[upgrade] == true) return false;
    if (state.legacyPoints < cost) return false;

    state = state.copyWith(
      upgrades: {...state.upgrades, upgrade: true},
      legacyPoints: state.legacyPoints - cost,
    );
    _saveToStorage();
    return true;
  }

  /// Check and unlock achievements based on voyage results.
  /// Returns list of newly unlocked achievement IDs.
  List<String> checkAchievements({
    required int score,
    required VoyageState voyage,
  }) {
    // Note: checkAchievements is synchronous because it's usually called
    // inside finalizeVoyage which already awaits _loadFuture.
    final newlyUnlocked = <String>[];

    void checkAchievement(String id, bool condition) {
      if (condition && !state.achievements.contains(id)) {
        newlyUnlocked.add(id);
      }
    }

    // Voyage-count based.
    checkAchievement('first_landing', state.totalVoyages >= 1);
    checkAchievement('explorer', state.totalVoyages >= 10);

    // Score based (100K scoring system).
    checkAchievement('golden_age', score >= 90000);
    checkAchievement('perfectionist', score >= 95000);

    // Ship state based (only for successful landings, not game overs).
    if (!voyage.isGameOver) {
      final ship = voyage.ship;

      // Any system below 10% at landing.
      final anyCritical = ShipSystems.systemNames.any(
        (s) => ship.getSystem(s) < 0.1,
      );
      checkAchievement('survivor', anyCritical);

      // Hull above 90%.
      checkAchievement('iron_hull', ship.hull > 0.9);

      // Landing on a Death World.
      final planet = voyage.currentPlanet;
      if (planet != null && planet.tier == 'Death World') {
        checkAchievement('death_world_survivor', true);
      }

      // 1000+ colonists at landing.
      checkAchievement('full_crew', voyage.colonists >= 1000);

      // All 10 probes used.
      checkAchievement('probe_master', voyage.probes == 0);

      // Only scanned 1 planet.
      checkAchievement('no_scan', voyage.planetsScanned <= 1);
    }

    for (final id in newlyUnlocked) {
      unlockAchievement(id);
    }
    return newlyUnlocked;
  }

  Future<bool> spendPoints(int amount) async {
    await _loadFuture;
    if (state.legacyPoints < amount) return false;
    state = state.copyWith(legacyPoints: state.legacyPoints - amount);
    _saveToStorage();
    return true;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Locale override
// ═══════════════════════════════════════════════════════════════════════════

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale?>(
  (ref) => LocaleNotifier(),
);

class LocaleNotifier extends StateNotifier<Locale?> {
  LocaleNotifier() : super(null) {
    _loadFuture = _load();
  }

  static const _key = 'locale_override';
  final _settings = SettingsRepository();
  Future<void>? _loadFuture;

  Future<void> _load() async {
    final code = await _settings.getString(_key);
    if (code.isNotEmpty) {
      state = _parseLocale(code);
    }
  }

  void set(Locale? locale) async {
    await _loadFuture;
    state = locale;
    if (locale == null) {
      _settings.remove(_key);
    } else {
      _settings.setString(_key, locale.toLanguageTag());
    }
  }

  static Locale _parseLocale(String tag) {
    final parts = tag.split('-');
    if (parts.length > 1) return Locale(parts[0], parts[1]);
    return Locale(parts[0]);
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Stats side preference (landscape layout)
// ═══════════════════════════════════════════════════════════════════════════

/// Whether stats/buttons appear on the left (true, default) or right (false).
final statsOnLeftProvider = StateNotifierProvider<StatsOnLeftNotifier, bool>(
  (ref) => StatsOnLeftNotifier(),
);

class StatsOnLeftNotifier extends StateNotifier<bool> {
  StatsOnLeftNotifier() : super(true) {
    _loadFuture = _load();
  }

  static const _key = 'stats_on_left';
  final _settings = SettingsRepository();
  Future<void>? _loadFuture;

  Future<void> _load() async {
    final val = await _settings.getBool(_key, defaultValue: true);
    state = val;
  }

  void toggle() async {
    await _loadFuture;
    state = !state;
    _settings.setBool(_key, state);
  }
}
