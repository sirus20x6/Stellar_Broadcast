/// Structured record of a completed voyage for the legacy log.
class VoyageLogEntry {
  final String planetName;
  final String tier;
  final int score;
  final int seed;
  final int encounterCount;
  final int colonistsLanded;
  final int planetsScanned;
  final int planetsSkipped;
  final int fuelConsumed;
  final int energyConsumed;
  final double totalDamageTaken;
  final List<String> keyEvents;
  final int timestamp;
  final bool isDaily;
  final bool isGameOver;
  final String? gameOverReason;

  // Planet details (populated on successful landing).
  final List<String> surfaceFeatures;
  final List<String> moonTypes; // e.g. ['habitable', 'barren']
  final String? ringType;
  final String? nativeDescription;
  final String? governmentType;
  final String? cultureLevel;
  final String? technologyLevel;
  final String? nativeRelations;
  final String? landscapeDescription;
  final bool landedOnMoon;

  const VoyageLogEntry({
    this.planetName = '',
    this.tier = '',
    this.score = 0,
    this.seed = 0,
    this.encounterCount = 0,
    this.colonistsLanded = 0,
    this.planetsScanned = 0,
    this.planetsSkipped = 0,
    this.fuelConsumed = 0,
    this.energyConsumed = 0,
    this.totalDamageTaken = 0.0,
    this.keyEvents = const [],
    this.timestamp = 0,
    this.isDaily = false,
    this.isGameOver = false,
    this.gameOverReason,
    this.surfaceFeatures = const [],
    this.moonTypes = const [],
    this.ringType,
    this.nativeDescription,
    this.governmentType,
    this.cultureLevel,
    this.technologyLevel,
    this.nativeRelations,
    this.landscapeDescription,
    this.landedOnMoon = false,
  });

  /// 6-char alphanumeric seed code.
  String get seedCode => seed == 0
      ? '------'
      : (seed.abs() % 2176782336).toRadixString(36).toUpperCase().padLeft(6, '0');

  Map<String, dynamic> toJson() => {
        'planetName': planetName,
        'tier': tier,
        'score': score,
        'seed': seed,
        'encounterCount': encounterCount,
        'colonistsLanded': colonistsLanded,
        'planetsScanned': planetsScanned,
        'planetsSkipped': planetsSkipped,
        'fuelConsumed': fuelConsumed,
        'energyConsumed': energyConsumed,
        'totalDamageTaken': totalDamageTaken,
        'keyEvents': keyEvents,
        'timestamp': timestamp,
        'isDaily': isDaily,
        'isGameOver': isGameOver,
        if (gameOverReason != null) 'gameOverReason': gameOverReason,
        if (surfaceFeatures.isNotEmpty) 'surfaceFeatures': surfaceFeatures,
        if (moonTypes.isNotEmpty) 'moonTypes': moonTypes,
        if (ringType != null) 'ringType': ringType,
        if (nativeDescription != null) 'nativeDescription': nativeDescription,
        if (governmentType != null) 'governmentType': governmentType,
        if (cultureLevel != null) 'cultureLevel': cultureLevel,
        if (technologyLevel != null) 'technologyLevel': technologyLevel,
        if (nativeRelations != null) 'nativeRelations': nativeRelations,
        if (landscapeDescription != null) 'landscapeDescription': landscapeDescription,
        if (landedOnMoon) 'landedOnMoon': true,
      };

  factory VoyageLogEntry.fromJson(Map<String, dynamic> json) {
    return VoyageLogEntry(
      planetName: json['planetName'] as String? ?? '',
      tier: json['tier'] as String? ?? '',
      score: json['score'] as int? ?? 0,
      seed: json['seed'] as int? ?? 0,
      encounterCount: json['encounterCount'] as int? ?? 0,
      colonistsLanded: json['colonistsLanded'] as int? ?? 0,
      planetsScanned: json['planetsScanned'] as int? ?? 0,
      planetsSkipped: json['planetsSkipped'] as int? ?? 0,
      fuelConsumed: json['fuelConsumed'] as int? ?? 0,
      energyConsumed: json['energyConsumed'] as int? ?? 0,
      totalDamageTaken: (json['totalDamageTaken'] as num?)?.toDouble() ?? 0.0,
      keyEvents: List<String>.from(json['keyEvents'] as List? ?? []),
      timestamp: json['timestamp'] as int? ?? 0,
      isDaily: json['isDaily'] as bool? ?? false,
      isGameOver: json['isGameOver'] as bool? ?? false,
      gameOverReason: json['gameOverReason'] as String?,
      surfaceFeatures: List<String>.from(json['surfaceFeatures'] as List? ?? []),
      moonTypes: List<String>.from(json['moonTypes'] as List? ?? []),
      ringType: json['ringType'] as String?,
      nativeDescription: json['nativeDescription'] as String?,
      governmentType: json['governmentType'] as String?,
      cultureLevel: json['cultureLevel'] as String?,
      technologyLevel: json['technologyLevel'] as String?,
      nativeRelations: json['nativeRelations'] as String?,
      landscapeDescription: json['landscapeDescription'] as String?,
      landedOnMoon: json['landedOnMoon'] as bool? ?? false,
    );
  }

  /// Parse a legacy log string like "Landed on Kepler. Score: 73 — Garden World."
  /// or "Ship lost: hull breach" into a partial entry.
  factory VoyageLogEntry.fromLegacyString(String s) {
    // Game over format: "Ship lost: <reason>"
    if (s.startsWith('Ship lost:')) {
      return VoyageLogEntry(
        isGameOver: true,
        gameOverReason: s.substring('Ship lost:'.length).trim(),
      );
    }

    // Landing format: "Landed on <name>. Score: <n> — <tier>."
    final match = RegExp(r'Landed on (.+?)\. Score: (\d+) — (.+?)\.?$').firstMatch(s);
    if (match != null) {
      return VoyageLogEntry(
        planetName: match.group(1) ?? '',
        score: int.tryParse(match.group(2) ?? '') ?? 0,
        tier: match.group(3) ?? '',
      );
    }

    // Fallback: generic entry.
    return VoyageLogEntry(planetName: s);
  }
}
