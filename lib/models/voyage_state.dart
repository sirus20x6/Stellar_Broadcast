import 'package:flutter/foundation.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';

/// Snapshot of an in-progress voyage.
class VoyageState {
  final ShipSystems ship;
  final Planet? currentPlanet;
  final int encounterCount;
  final int maxEncounters;
  final List<String> log;
  final bool isComplete;

  /// IDs of events already seen this voyage, used to avoid repeats.
  final List<String> seenEventIds;

  /// Number of probes remaining. Used for scanning refinement and sacrificial choices.
  final int probes;

  /// Planet stats refined by probe usage this scan (resets per planet).
  final Set<String> probedStats;

  /// Surface features revealed by probing (non-obvious features identified from orbit).
  final Set<String> revealedFeatures;

  /// Deceptive scanner readings — what the scanners *report* (may differ from truth).
  /// Keys are planet stat names, values are the scanner's (possibly inaccurate) reading.
  /// A null value means the scanner failed to get a reading for that stat.
  /// Empty until a planet is scanned. Probed stats get replaced with true values.
  final Map<String, double?> scannerReadings;

  /// Number of living colonists aboard.
  final int colonists;

  /// Scanner upgrade levels (0 = base, 1 = improved, 2 = advanced).
  final Map<String, int> scannerLevels;

  /// Number of planets scanned this voyage.
  final int planetsScanned;

  /// Encounter number at which the next planet scan becomes available.
  /// After each planet (scanned + decision), this resets to current + 3-6.
  final int nextPlanetEncounter;

  /// Whether a scanner upgrade choice is pending.
  final bool pendingScannerUpgrade;

  /// Player-chosen colony name (set on landing).
  final String? colonyName;

  /// Fuel remaining (default 200). Consumed when pressing on and during landing.
  final int fuel;

  /// Energy remaining (default 40). Consumed when scanning planets.
  final int energy;

  /// Number of planets skipped (pressed on without landing).
  final int planetsSkipped;

  /// Total damage taken across all systems during the voyage.
  final double totalDamageTaken;

  /// Number of scanners upgraded this voyage.
  final int scannersUpgraded;

  /// Total fuel consumed this voyage.
  final int fuelConsumed;

  /// Total energy consumed this voyage.
  final int energyConsumed;

  /// When the voyage started.
  final DateTime? voyageStartTime;

  /// Whether the voyage ended in catastrophic failure (hull or nav at 0).
  final bool isGameOver;

  /// Reason for game over, if applicable.
  final String gameOverReason;

  /// Accumulated planet modifiers to apply to the next scanned planet.
  /// Set by events that narratively target a future destination (e.g.
  /// activating a terraforming device aimed at the target system).
  final Map<String, double> pendingPlanetModifiers;

  /// Seed used to initialise this voyage's RNG. 0 = unseeded/legacy.
  final int seed;

  /// Whether this voyage was started via the Daily Voyage button.
  final bool isDaily;

  /// Whether the player landed on a habitable moon instead of the planet.
  final bool landedOnMoon;

  /// Energy recharged from solar panels when entering a planet's orbit.
  /// 0 means no recharge occurred. Reset each scan.
  final int solarRechargeAmount;

  /// Chained events waiting to fire at future encounters.
  final List<PendingChain> pendingChains;

  /// Governance ideology axes — each ranges from -1.0 to +1.0.
  final double authorityAxis; // -1 = anarchist, +1 = authoritarian
  final double cultureAxis; // -1 = traditionalist, +1 = progressive
  final double economyAxis; // -1 = collectivist, +1 = corporatist
  final double faithAxis; // -1 = secular, +1 = theocratic
  final double militaryAxis; // -1 = pacifist, +1 = militarist

  const VoyageState({
    this.ship = const ShipSystems(),
    this.currentPlanet,
    this.encounterCount = 0,
    this.maxEncounters = 30,
    this.log = const [],
    this.isComplete = false,
    this.seenEventIds = const [],
    this.probes = 10,
    this.probedStats = const {},
    this.revealedFeatures = const {},
    this.scannerReadings = const {},
    this.colonists = 1000,
    this.scannerLevels = const {},
    this.planetsScanned = 0,
    this.nextPlanetEncounter = 3,
    this.pendingScannerUpgrade = false,
    this.colonyName,
    this.fuel = 200,
    this.energy = 40,
    this.planetsSkipped = 0,
    this.totalDamageTaken = 0.0,
    this.scannersUpgraded = 0,
    this.fuelConsumed = 0,
    this.energyConsumed = 0,
    this.voyageStartTime,
    this.isGameOver = false,
    this.gameOverReason = '',
    this.pendingPlanetModifiers = const {},
    this.seed = 0,
    this.isDaily = false,
    this.landedOnMoon = false,
    this.solarRechargeAmount = 0,
    this.pendingChains = const [],
    this.authorityAxis = 0.0,
    this.cultureAxis = 0.0,
    this.economyAxis = 0.0,
    this.faithAxis = 0.0,
    this.militaryAxis = 0.0,
  });

  VoyageState copyWith({
    ShipSystems? ship,
    Planet? currentPlanet,
    bool clearPlanet = false,
    int? encounterCount,
    int? maxEncounters,
    List<String>? log,
    bool? isComplete,
    List<String>? seenEventIds,
    int? probes,
    Set<String>? probedStats,
    Set<String>? revealedFeatures,
    Map<String, double?>? scannerReadings,
    int? colonists,
    Map<String, int>? scannerLevels,
    int? planetsScanned,
    int? nextPlanetEncounter,
    bool? pendingScannerUpgrade,
    String? colonyName,
    bool clearColonyName = false,
    int? fuel,
    int? energy,
    int? planetsSkipped,
    double? totalDamageTaken,
    int? scannersUpgraded,
    int? fuelConsumed,
    int? energyConsumed,
    DateTime? voyageStartTime,
    bool clearVoyageStartTime = false,
    bool? isGameOver,
    String? gameOverReason,
    Map<String, double>? pendingPlanetModifiers,
    int? seed,
    bool? isDaily,
    bool? landedOnMoon,
    int? solarRechargeAmount,
    List<PendingChain>? pendingChains,
    double? authorityAxis,
    double? cultureAxis,
    double? economyAxis,
    double? faithAxis,
    double? militaryAxis,
  }) {
    return VoyageState(
      ship: ship ?? this.ship,
      currentPlanet: clearPlanet ? null : (currentPlanet ?? this.currentPlanet),
      encounterCount: encounterCount ?? this.encounterCount,
      maxEncounters: maxEncounters ?? this.maxEncounters,
      log: log ?? this.log,
      isComplete: isComplete ?? this.isComplete,
      seenEventIds: seenEventIds ?? this.seenEventIds,
      probes: probes ?? this.probes,
      probedStats: probedStats ?? this.probedStats,
      revealedFeatures: revealedFeatures ?? this.revealedFeatures,
      scannerReadings: scannerReadings ?? this.scannerReadings,
      colonists: colonists ?? this.colonists,
      scannerLevels: scannerLevels ?? this.scannerLevels,
      planetsScanned: planetsScanned ?? this.planetsScanned,
      nextPlanetEncounter: nextPlanetEncounter ?? this.nextPlanetEncounter,
      pendingScannerUpgrade:
          pendingScannerUpgrade ?? this.pendingScannerUpgrade,
      colonyName: clearColonyName ? null : (colonyName ?? this.colonyName),
      fuel: fuel ?? this.fuel,
      energy: energy ?? this.energy,
      planetsSkipped: planetsSkipped ?? this.planetsSkipped,
      totalDamageTaken: totalDamageTaken ?? this.totalDamageTaken,
      scannersUpgraded: scannersUpgraded ?? this.scannersUpgraded,
      fuelConsumed: fuelConsumed ?? this.fuelConsumed,
      energyConsumed: energyConsumed ?? this.energyConsumed,
      voyageStartTime: clearVoyageStartTime
          ? null
          : (voyageStartTime ?? this.voyageStartTime),
      isGameOver: isGameOver ?? this.isGameOver,
      gameOverReason: gameOverReason ?? this.gameOverReason,
      pendingPlanetModifiers:
          pendingPlanetModifiers ?? this.pendingPlanetModifiers,
      seed: seed ?? this.seed,
      isDaily: isDaily ?? this.isDaily,
      landedOnMoon: landedOnMoon ?? this.landedOnMoon,
      solarRechargeAmount: solarRechargeAmount ?? this.solarRechargeAmount,
      pendingChains: pendingChains ?? this.pendingChains,
      authorityAxis: authorityAxis ?? this.authorityAxis,
      cultureAxis: cultureAxis ?? this.cultureAxis,
      economyAxis: economyAxis ?? this.economyAxis,
      faithAxis: faithAxis ?? this.faithAxis,
      militaryAxis: militaryAxis ?? this.militaryAxis,
    );
  }

  /// Current save schema version. Bump when fields are added, removed,
  /// renamed, or change type in a way that breaks fromJson. Migration
  /// logic lives inside [VoyageState.fromJson] / [_migrateJson].
  static const int currentSchemaVersion = 2;

  Map<String, dynamic> toJson() => {
    'schemaVersion': currentSchemaVersion,
    'ship': ship.toJson(),
    if (currentPlanet != null) 'currentPlanet': currentPlanet!.toJson(),
    'encounterCount': encounterCount,
    'maxEncounters': maxEncounters,
    'log': log,
    'isComplete': isComplete,
    'seenEventIds': seenEventIds,
    'probes': probes,
    'probedStats': probedStats.toList(),
    'revealedFeatures': revealedFeatures.toList(),
    'scannerReadings': scannerReadings,
    'colonists': colonists,
    'scannerLevels': scannerLevels,
    'planetsScanned': planetsScanned,
    'nextPlanetEncounter': nextPlanetEncounter,
    'pendingScannerUpgrade': pendingScannerUpgrade,
    if (colonyName != null) 'colonyName': colonyName,
    'fuel': fuel,
    'energy': energy,
    'planetsSkipped': planetsSkipped,
    'totalDamageTaken': totalDamageTaken,
    'scannersUpgraded': scannersUpgraded,
    'fuelConsumed': fuelConsumed,
    'energyConsumed': energyConsumed,
    if (voyageStartTime != null)
      'voyageStartTime': voyageStartTime!.toIso8601String(),
    'isGameOver': isGameOver,
    'gameOverReason': gameOverReason,
    'pendingPlanetModifiers': pendingPlanetModifiers,
    'seed': seed,
    'isDaily': isDaily,
    'landedOnMoon': landedOnMoon,
    'solarRechargeAmount': solarRechargeAmount,
    'pendingChains': pendingChains.map((c) => c.toJson()).toList(),
    'authorityAxis': authorityAxis,
    'cultureAxis': cultureAxis,
    'economyAxis': economyAxis,
    'faithAxis': faithAxis,
    'militaryAxis': militaryAxis,
  };

  /// Maximum entries we'll accept for any save-file list. Guards against
  /// memory-bomb saves where an attacker (or bug) produced a million-entry
  /// log. Well above anything a normal voyage produces.
  static const int _maxListEntries = 10000;

  static int _readInt(Object? v, [int fallback = 0, String? field]) {
    if (v is num) return v.toInt();
    if (v != null && field != null) {
      QaLogger.app.warning(
        'voyage save: expected num for "$field", got ${v.runtimeType}; '
        'using fallback $fallback',
      );
    }
    return fallback;
  }

  static double _readDouble(Object? v, [double fallback = 0.0, String? field]) {
    if (v is num) return v.toDouble();
    if (v != null && field != null) {
      QaLogger.app.warning(
        'voyage save: expected num for "$field", got ${v.runtimeType}; '
        'using fallback $fallback',
      );
    }
    return fallback;
  }

  static bool _readBool(Object? v, [bool fallback = false, String? field]) {
    if (v is bool) return v;
    if (v != null && field != null) {
      QaLogger.app.warning(
        'voyage save: expected bool for "$field", got ${v.runtimeType}; '
        'using fallback $fallback',
      );
    }
    return fallback;
  }

  static String? _readStringOrNull(Object? v) => v is String ? v : null;

  /// Extract only the string elements from a JSON list, capped at
  /// [_maxListEntries] to avoid memory attacks from malformed saves.
  static List<String> _readStringList(Object? v) {
    if (v is! List) return const [];
    final out = <String>[];
    for (final e in v) {
      if (e is String) out.add(e);
      if (out.length >= _maxListEntries) break;
    }
    return out;
  }

  static Map<String, double> _readDoubleMap(Object? v) {
    if (v is! Map) return const {};
    final out = <String, double>{};
    v.forEach((k, val) {
      if (k is String && val is num) out[k] = val.toDouble();
    });
    return out;
  }

  /// Upgrades an older save JSON blob to [currentSchemaVersion] in place.
  ///
  /// Each case handles a single version step (vN -> vN+1) and falls through
  /// so a very old save is walked forward one step at a time. Keep each
  /// step self-contained and idempotent; never reach outside `json`.
  static Map<String, dynamic> _migrateJson(
    Map<String, dynamic> json,
    int fromVersion,
  ) {
    var working = json;
    var v = fromVersion;
    while (v < currentSchemaVersion) {
      switch (v) {
        case 1:
          // v1 -> v2: no-op (structural bump for future migrations).
          // No field renames; new fields added since v1 rely on
          // fromJson fallbacks via the _read* helpers, which is safe.
          break;
        default:
          // Unknown intermediate version: stop walking forward to avoid
          // an infinite loop. Remaining reads will use their fallbacks.
          v = currentSchemaVersion;
          continue;
      }
      v++;
    }
    debugPrint(
      'VoyageState: migrated save from v$fromVersion to v$currentSchemaVersion',
    );
    return working;
  }

  factory VoyageState.fromJson(Map<String, dynamic> json) {
    // Schema version check: migrations for older formats live here.
    // Saves from before versioning was introduced have no schemaVersion
    // field and are treated as v1 (the first published format).
    final version = _readInt(json['schemaVersion'], 1);
    if (version > currentSchemaVersion) {
      QaLogger.app.warning(
        'voyage save: schemaVersion $version > supported '
        '$currentSchemaVersion. Loading optimistically; unknown fields '
        'will be dropped.',
      );
    } else if (version < currentSchemaVersion) {
      json = _migrateJson(json, version);
    }

    return VoyageState(
      ship: ShipSystems.fromJson(
        (json['ship'] as Map<String, dynamic>?) ?? const {},
      ),
      currentPlanet: json['currentPlanet'] is Map<String, dynamic>
          ? Planet.fromJson(json['currentPlanet'] as Map<String, dynamic>)
          : null,
      encounterCount: _readInt(json['encounterCount'], 0, 'encounterCount'),
      maxEncounters: _readInt(json['maxEncounters'], 30, 'maxEncounters'),
      log: _readStringList(json['log']),
      isComplete: _readBool(json['isComplete'], false, 'isComplete'),
      seenEventIds: _readStringList(json['seenEventIds']),
      probes: _readInt(json['probes'], 0, 'probes'),
      probedStats: _readStringList(json['probedStats']).toSet(),
      revealedFeatures: _readStringList(json['revealedFeatures']).toSet(),
      scannerReadings: {
        for (final e
            in ((json['scannerReadings'] as Map?)?.entries ??
                const <MapEntry<Object?, Object?>>[]))
          if (e.key is String)
            e.key as String: e.value is num
                ? (e.value as num).toDouble()
                : null,
      },
      colonists: _readInt(json['colonists'], 0, 'colonists'),
      scannerLevels: {
        for (final e
            in ((json['scannerLevels'] as Map?)?.entries ??
                const <MapEntry<Object?, Object?>>[]))
          if (e.key is String && e.value is num)
            e.key as String: (e.value as num).toInt(),
      },
      planetsScanned: _readInt(json['planetsScanned'], 0, 'planetsScanned'),
      nextPlanetEncounter: _readInt(
        json['nextPlanetEncounter'],
        0,
        'nextPlanetEncounter',
      ),
      pendingScannerUpgrade: _readBool(
        json['pendingScannerUpgrade'],
        false,
        'pendingScannerUpgrade',
      ),
      colonyName: _readStringOrNull(json['colonyName']),
      fuel: _readInt(json['fuel'], 0, 'fuel'),
      energy: _readInt(json['energy'], 0, 'energy'),
      planetsSkipped: _readInt(json['planetsSkipped'], 0, 'planetsSkipped'),
      totalDamageTaken: _readDouble(
        json['totalDamageTaken'],
        0.0,
        'totalDamageTaken',
      ),
      scannersUpgraded: _readInt(
        json['scannersUpgraded'],
        0,
        'scannersUpgraded',
      ),
      fuelConsumed: _readInt(json['fuelConsumed'], 0, 'fuelConsumed'),
      energyConsumed: _readInt(json['energyConsumed'], 0, 'energyConsumed'),
      voyageStartTime: _readStringOrNull(json['voyageStartTime']) != null
          ? DateTime.tryParse(json['voyageStartTime'] as String)
          : null,
      isGameOver: _readBool(json['isGameOver'], false, 'isGameOver'),
      gameOverReason: _readStringOrNull(json['gameOverReason']) ?? '',
      pendingPlanetModifiers: _readDoubleMap(json['pendingPlanetModifiers']),
      seed: _readInt(json['seed'], 0, 'seed'),
      isDaily: _readBool(json['isDaily'], false, 'isDaily'),
      landedOnMoon: _readBool(json['landedOnMoon'], false, 'landedOnMoon'),
      solarRechargeAmount: _readInt(
        json['solarRechargeAmount'],
        0,
        'solarRechargeAmount',
      ),
      pendingChains: (json['pendingChains'] is List)
          ? [
              for (final e in (json['pendingChains'] as List).take(
                _maxListEntries,
              ))
                if (e is Map<String, dynamic>) PendingChain.fromJson(e),
            ]
          : const [],
      authorityAxis: _readDouble(json['authorityAxis'], 0.0, 'authorityAxis'),
      cultureAxis: _readDouble(json['cultureAxis'], 0.0, 'cultureAxis'),
      economyAxis: _readDouble(json['economyAxis'], 0.0, 'economyAxis'),
      faithAxis: _readDouble(json['faithAxis'], 0.0, 'faithAxis'),
      militaryAxis: _readDouble(json['militaryAxis'], 0.0, 'militaryAxis'),
    );
  }

  /// Efficiently append a single log message (avoids O(n) spread copy).
  VoyageState appendLog(String message) =>
      copyWith(log: List<String>.of(log)..add(message));

  /// Efficiently append multiple log messages at once.
  VoyageState appendLogs(List<String> messages) =>
      copyWith(log: List<String>.of(log)..addAll(messages));

  @override
  String toString() =>
      'VoyageState(encounter: $encounterCount/$maxEncounters, '
      'planet: ${currentPlanet?.name ?? "none"}, probes: $probes, complete: $isComplete)';
}
