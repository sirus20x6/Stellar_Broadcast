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
  final double authorityAxis;    // -1 = anarchist, +1 = authoritarian
  final double cultureAxis;      // -1 = traditionalist, +1 = progressive
  final double economyAxis;      // -1 = collectivist, +1 = corporatist
  final double faithAxis;        // -1 = secular, +1 = theocratic
  final double militaryAxis;     // -1 = pacifist, +1 = militarist

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
      pendingScannerUpgrade: pendingScannerUpgrade ?? this.pendingScannerUpgrade,
      colonyName: clearColonyName ? null : (colonyName ?? this.colonyName),
      fuel: fuel ?? this.fuel,
      energy: energy ?? this.energy,
      planetsSkipped: planetsSkipped ?? this.planetsSkipped,
      totalDamageTaken: totalDamageTaken ?? this.totalDamageTaken,
      scannersUpgraded: scannersUpgraded ?? this.scannersUpgraded,
      fuelConsumed: fuelConsumed ?? this.fuelConsumed,
      energyConsumed: energyConsumed ?? this.energyConsumed,
      voyageStartTime: clearVoyageStartTime ? null : (voyageStartTime ?? this.voyageStartTime),
      isGameOver: isGameOver ?? this.isGameOver,
      gameOverReason: gameOverReason ?? this.gameOverReason,
      pendingPlanetModifiers: pendingPlanetModifiers ?? this.pendingPlanetModifiers,
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

  Map<String, dynamic> toJson() => {
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

  factory VoyageState.fromJson(Map<String, dynamic> json) => VoyageState(
        ship: ShipSystems.fromJson(json['ship'] as Map<String, dynamic>),
        currentPlanet: json['currentPlanet'] != null
            ? Planet.fromJson(json['currentPlanet'] as Map<String, dynamic>)
            : null,
        encounterCount: json['encounterCount'] as int,
        maxEncounters: json['maxEncounters'] as int,
        log: (json['log'] as List<dynamic>).cast<String>(),
        isComplete: json['isComplete'] as bool,
        seenEventIds: (json['seenEventIds'] as List<dynamic>).cast<String>(),
        probes: json['probes'] as int,
        probedStats: (json['probedStats'] as List<dynamic>).cast<String>().toSet(),
        revealedFeatures:
            (json['revealedFeatures'] as List<dynamic>).cast<String>().toSet(),
        scannerReadings: (json['scannerReadings'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, (v as num?)?.toDouble()),
        ),
        colonists: json['colonists'] as int,
        scannerLevels: (json['scannerLevels'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, (v as num).toInt()),
        ),
        planetsScanned: json['planetsScanned'] as int,
        nextPlanetEncounter: json['nextPlanetEncounter'] as int,
        pendingScannerUpgrade: json['pendingScannerUpgrade'] as bool,
        colonyName: json['colonyName'] as String?,
        fuel: json['fuel'] as int,
        energy: json['energy'] as int,
        planetsSkipped: json['planetsSkipped'] as int,
        totalDamageTaken: (json['totalDamageTaken'] as num).toDouble(),
        scannersUpgraded: json['scannersUpgraded'] as int,
        fuelConsumed: json['fuelConsumed'] as int,
        energyConsumed: json['energyConsumed'] as int,
        voyageStartTime: json['voyageStartTime'] != null
            ? DateTime.parse(json['voyageStartTime'] as String)
            : null,
        isGameOver: json['isGameOver'] as bool? ?? false,
        gameOverReason: json['gameOverReason'] as String? ?? '',
        pendingPlanetModifiers:
            (json['pendingPlanetModifiers'] as Map<String, dynamic>?)?.map(
                  (k, v) => MapEntry(k, (v as num).toDouble()),
                ) ??
                {},
        seed: json['seed'] as int? ?? 0,
        isDaily: json['isDaily'] as bool? ?? false,
        landedOnMoon: json['landedOnMoon'] as bool? ?? false,
        solarRechargeAmount: json['solarRechargeAmount'] as int? ?? 0,
        pendingChains: (json['pendingChains'] as List<dynamic>?)
                ?.map((e) =>
                    PendingChain.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        authorityAxis: (json['authorityAxis'] as num?)?.toDouble() ?? 0.0,
        cultureAxis: (json['cultureAxis'] as num?)?.toDouble() ?? 0.0,
        economyAxis: (json['economyAxis'] as num?)?.toDouble() ?? 0.0,
        faithAxis: (json['faithAxis'] as num?)?.toDouble() ?? 0.0,
        militaryAxis: (json['militaryAxis'] as num?)?.toDouble() ?? 0.0,
      );

  /// Efficiently append a single log message (avoids O(n) spread copy).
  VoyageState appendLog(String message) => copyWith(
        log: List<String>.of(log)..add(message),
      );

  /// Efficiently append multiple log messages at once.
  VoyageState appendLogs(List<String> messages) => copyWith(
        log: List<String>.of(log)..addAll(messages),
      );

  @override
  String toString() =>
      'VoyageState(encounter: $encounterCount/$maxEncounters, '
      'planet: ${currentPlanet?.name ?? "none"}, probes: $probes, complete: $isComplete)';
}
