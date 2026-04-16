/// Ship systems model for Stellar Broadcast.
///
/// Tracks the health of ship systems, each ranging from 0.0 (destroyed)
/// to 1.0 (pristine). Includes 6 core systems, shields, and 6 scanner
/// subsystems.
class ShipSystems {
  // Core systems.
  final double hull;
  final double nav;
  final double cryopods;
  final double culture;
  final double tech;
  final double constructors;

  // Defense.
  final double shields;

  // Landing.
  final double landingSystem;

  // Scanner subsystems.
  final double atmosphericScanner;
  final double gravimetricScanner;
  final double mineralScanner;
  final double lifeSignsScanner;
  final double temperatureScanner;
  final double waterScanner;

  const ShipSystems({
    this.hull = 1.0,
    this.nav = 1.0,
    this.cryopods = 1.0,
    this.culture = 1.0,
    this.tech = 1.0,
    this.constructors = 1.0,
    this.shields = 1.0,
    this.landingSystem = 1.0,
    this.atmosphericScanner = 1.0,
    this.gravimetricScanner = 1.0,
    this.mineralScanner = 1.0,
    this.lifeSignsScanner = 1.0,
    this.temperatureScanner = 1.0,
    this.waterScanner = 1.0,
  });

  /// All system names, matching the field names used in event effect maps.
  static const List<String> systemNames = [
    'hull',
    'nav',
    'cryopods',
    'culture',
    'tech',
    'constructors',
    'shields',
    'landingSystem',
    'atmosphericScanner',
    'gravimetricScanner',
    'mineralScanner',
    'lifeSignsScanner',
    'temperatureScanner',
    'waterScanner',
  ];

  /// The original 6 core systems (used for pressOn degradation etc.).
  static const List<String> coreSystemNames = [
    'hull',
    'nav',
    'cryopods',
    'culture',
    'tech',
    'constructors',
  ];

  /// Scanner subsystem names.
  static const List<String> scannerSubsystemNames = [
    'atmosphericScanner',
    'gravimetricScanner',
    'mineralScanner',
    'lifeSignsScanner',
    'temperatureScanner',
    'waterScanner',
  ];

  /// Maps each scanner subsystem to the planet stat it measures.
  static const Map<String, String> scannerForStat = {
    'atmosphere': 'atmosphericScanner',
    'gravity': 'gravimetricScanner',
    'resources': 'mineralScanner',
    'biodiversity': 'lifeSignsScanner',
    'temperature': 'temperatureScanner',
    'water': 'waterScanner',
  };

  /// Returns the value of the named system.
  double getSystem(String name) {
    switch (name) {
      case 'hull':
        return hull;
      case 'nav':
        return nav;
      case 'cryopods':
        return cryopods;
      case 'culture':
        return culture;
      case 'tech':
        return tech;
      case 'constructors':
        return constructors;
      case 'shields':
        return shields;
      case 'landingSystem':
        return landingSystem;
      case 'atmosphericScanner':
        return atmosphericScanner;
      case 'gravimetricScanner':
        return gravimetricScanner;
      case 'mineralScanner':
        return mineralScanner;
      case 'lifeSignsScanner':
        return lifeSignsScanner;
      case 'temperatureScanner':
        return temperatureScanner;
      case 'waterScanner':
        return waterScanner;
      default:
        throw ArgumentError('Unknown ship system: $name');
    }
  }

  /// Returns a copy with [system] decreased by [amount], clamped to [0, 1].
  ShipSystems degrade(String system, double amount) {
    return _applyDelta(system, -amount.abs());
  }

  /// Returns a copy with [system] increased by [amount], clamped to [0, 1].
  ShipSystems boost(String system, double amount) {
    return _applyDelta(system, amount.abs());
  }

  ShipSystems _applyDelta(String system, double delta) {
    double clamp(double v) => (v + delta).clamp(0.0, 1.0);
    // Culture and tech can be over-repaired up to 1.5 (alien databases etc.).
    double clampOverRepair(double v) => (v + delta).clamp(0.0, 1.5);

    switch (system) {
      case 'hull':
        return copyWith(hull: clamp(hull));
      case 'nav':
        return copyWith(nav: clamp(nav));
      case 'cryopods':
        return copyWith(cryopods: clamp(cryopods));
      case 'culture':
        return copyWith(culture: clampOverRepair(culture));
      case 'tech':
        return copyWith(tech: clampOverRepair(tech));
      case 'constructors':
        return copyWith(constructors: clamp(constructors));
      case 'shields':
        return copyWith(shields: clamp(shields));
      case 'landingSystem':
        return copyWith(landingSystem: clamp(landingSystem));
      case 'atmosphericScanner':
        return copyWith(atmosphericScanner: clamp(atmosphericScanner));
      case 'gravimetricScanner':
        return copyWith(gravimetricScanner: clamp(gravimetricScanner));
      case 'mineralScanner':
        return copyWith(mineralScanner: clamp(mineralScanner));
      case 'lifeSignsScanner':
        return copyWith(lifeSignsScanner: clamp(lifeSignsScanner));
      case 'temperatureScanner':
        return copyWith(temperatureScanner: clamp(temperatureScanner));
      case 'waterScanner':
        return copyWith(waterScanner: clamp(waterScanner));
      default:
        throw ArgumentError('Unknown ship system: $system');
    }
  }

  /// The name of the system with the lowest health.
  String get lowestSystem {
    final values = <String, double>{
      for (final name in systemNames) name: getSystem(name),
    };
    return values.entries.reduce((a, b) => a.value <= b.value ? a : b).key;
  }

  /// Mean health across all 14 systems.
  double get averageHealth {
    double sum = 0;
    for (final name in systemNames) {
      sum += getSystem(name);
    }
    return sum / systemNames.length;
  }

  ShipSystems copyWith({
    double? hull,
    double? nav,
    double? cryopods,
    double? culture,
    double? tech,
    double? constructors,
    double? shields,
    double? landingSystem,
    double? atmosphericScanner,
    double? gravimetricScanner,
    double? mineralScanner,
    double? lifeSignsScanner,
    double? temperatureScanner,
    double? waterScanner,
  }) {
    return ShipSystems(
      hull: hull ?? this.hull,
      nav: nav ?? this.nav,
      cryopods: cryopods ?? this.cryopods,
      culture: culture ?? this.culture,
      tech: tech ?? this.tech,
      constructors: constructors ?? this.constructors,
      shields: shields ?? this.shields,
      landingSystem: landingSystem ?? this.landingSystem,
      atmosphericScanner: atmosphericScanner ?? this.atmosphericScanner,
      gravimetricScanner: gravimetricScanner ?? this.gravimetricScanner,
      mineralScanner: mineralScanner ?? this.mineralScanner,
      lifeSignsScanner: lifeSignsScanner ?? this.lifeSignsScanner,
      temperatureScanner: temperatureScanner ?? this.temperatureScanner,
      waterScanner: waterScanner ?? this.waterScanner,
    );
  }

  Map<String, dynamic> toJson() => {
        'hull': hull,
        'nav': nav,
        'cryopods': cryopods,
        'culture': culture,
        'tech': tech,
        'constructors': constructors,
        'shields': shields,
        'landingSystem': landingSystem,
        'atmosphericScanner': atmosphericScanner,
        'gravimetricScanner': gravimetricScanner,
        'mineralScanner': mineralScanner,
        'lifeSignsScanner': lifeSignsScanner,
        'temperatureScanner': temperatureScanner,
        'waterScanner': waterScanner,
      };

  factory ShipSystems.fromJson(Map<String, dynamic> json) => ShipSystems(
        hull: _readStat(json, 'hull'),
        nav: _readStat(json, 'nav'),
        cryopods: _readStat(json, 'cryopods'),
        culture: _readStat(json, 'culture', max: 1.5),
        tech: _readStat(json, 'tech', max: 1.5),
        constructors: _readStat(json, 'constructors'),
        shields: _readStat(json, 'shields'),
        landingSystem: _readStat(json, 'landingSystem'),
        atmosphericScanner: _readStat(json, 'atmosphericScanner'),
        gravimetricScanner: _readStat(json, 'gravimetricScanner'),
        mineralScanner: _readStat(json, 'mineralScanner'),
        lifeSignsScanner: _readStat(json, 'lifeSignsScanner'),
        temperatureScanner: _readStat(json, 'temperatureScanner'),
        waterScanner: _readStat(json, 'waterScanner'),
      );

  /// Reads a ship stat from JSON, clamped to [0.0, max]. Missing or malformed
  /// fields default to 1.0 (full health) so loading an older or corrupted save
  /// degrades gracefully instead of crashing.
  static double _readStat(Map<String, dynamic> json, String key,
      {double max = 1.0}) {
    final v = json[key];
    if (v is num) return v.toDouble().clamp(0.0, max);
    return 1.0;
  }

  @override
  String toString() =>
      'ShipSystems(hull: ${hull.toStringAsFixed(2)}, '
      'nav: ${nav.toStringAsFixed(2)}, cryopods: ${cryopods.toStringAsFixed(2)}, '
      'culture: ${culture.toStringAsFixed(2)}, tech: ${tech.toStringAsFixed(2)}, '
      'shields: ${shields.toStringAsFixed(2)})';
}
