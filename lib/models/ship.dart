import 'dart:math' as math;

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
    this.maxOverrides = const {},
  });

  /// Per-system maxima above the default 1.0 (or 1.5 for culture/tech). Set
  /// at voyage start when legacy upgrades push a system's starting value
  /// above 1.0 — e.g. `reinforced_hull` makes `maxOverrides['hull'] = 1.10`,
  /// so a hull damaged to 0.5 can still repair back to 1.10 instead of
  /// being capped at the default 1.0.
  final Map<String, double> maxOverrides;

  /// Maximum allowed value for [system]. Returns the legacy-upgrade
  /// override if set, otherwise the per-system default.
  double maxFor(String system) {
    final override = maxOverrides[system];
    if (override != null) return override;
    if (system == 'culture' || system == 'tech') return 1.5;
    return 1.0;
  }

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
    // Apply delta to a single named system using its per-system ceiling.
    // The ceiling is whichever is higher: the system's declared max
    // (legacy-upgrade override or default 1.0 / 1.5) or its current value
    // — so an event that briefly pushed a stat above its declared max
    // won't be clipped mid-flight by a subsequent boost. After damage
    // drops the stat below the legacy max, repairs can still bring it
    // back up to the legacy ceiling.
    double clampSingle(String name, double v) {
      final ceiling = math.max(maxFor(name), getSystem(name));
      return (v + delta).clamp(0.0, ceiling);
    }

    switch (system) {
      case 'hull':
        return copyWith(hull: clampSingle('hull', hull));
      case 'nav':
        return copyWith(nav: clampSingle('nav', nav));
      case 'cryopods':
        return copyWith(cryopods: clampSingle('cryopods', cryopods));
      case 'culture':
        return copyWith(culture: clampSingle('culture', culture));
      case 'tech':
        return copyWith(tech: clampSingle('tech', tech));
      case 'constructors':
        return copyWith(constructors: clampSingle('constructors', constructors));
      case 'shields':
        return copyWith(shields: clampSingle('shields', shields));
      case 'landingSystem':
        return copyWith(landingSystem: clampSingle('landingSystem', landingSystem));
      case 'atmosphericScanner':
        return copyWith(
            atmosphericScanner: clampSingle('atmosphericScanner', atmosphericScanner));
      case 'gravimetricScanner':
        return copyWith(
            gravimetricScanner: clampSingle('gravimetricScanner', gravimetricScanner));
      case 'mineralScanner':
        return copyWith(
            mineralScanner: clampSingle('mineralScanner', mineralScanner));
      case 'lifeSignsScanner':
        return copyWith(
            lifeSignsScanner: clampSingle('lifeSignsScanner', lifeSignsScanner));
      case 'temperatureScanner':
        return copyWith(
            temperatureScanner: clampSingle('temperatureScanner', temperatureScanner));
      case 'waterScanner':
        return copyWith(waterScanner: clampSingle('waterScanner', waterScanner));
      case 'scanners':
        // Alias meaning "every scanner" — event authors use this when a
        // choice damages or heals the whole scanner suite. Apply the delta
        // uniformly to all six individual scanners (each with its own
        // ceiling, so legacy-upgraded scanners keep their headroom).
        return copyWith(
          atmosphericScanner:
              clampSingle('atmosphericScanner', atmosphericScanner),
          gravimetricScanner:
              clampSingle('gravimetricScanner', gravimetricScanner),
          mineralScanner: clampSingle('mineralScanner', mineralScanner),
          lifeSignsScanner: clampSingle('lifeSignsScanner', lifeSignsScanner),
          temperatureScanner:
              clampSingle('temperatureScanner', temperatureScanner),
          waterScanner: clampSingle('waterScanner', waterScanner),
        );
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
    Map<String, double>? maxOverrides,
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
      maxOverrides: maxOverrides ?? this.maxOverrides,
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
        if (maxOverrides.isNotEmpty) 'maxOverrides': maxOverrides,
      };

  /// Hard upper bound on any saved or in-memory ceiling. Above this we
  /// assume the save was tampered with and reject the override. Current
  /// legitimate legacy ceilings top out at 1.15 (warp_nav 1.10 +
  /// star_charts 0.05; advanced_scanner 1.10 + star_charts 0.05); 1.25
  /// gives a small cushion for future upgrades while still rejecting
  /// runaway values like 1.99.
  static const double _maxAbsoluteCeiling = 1.25;

  factory ShipSystems.fromJson(Map<String, dynamic> json) {
    final overrides = <String, double>{};
    final raw = json['maxOverrides'];
    if (raw is Map) {
      for (final e in raw.entries) {
        final key = e.key.toString();
        final v = e.value;
        // Defensive parsing: skip unknown system names, non-finite values,
        // and ceilings outside [1.0, _maxAbsoluteCeiling]. A negative or
        // NaN ceiling would make the per-system clamp throw or admit
        // arbitrary values, neither of which we want from save input.
        if (!systemNames.contains(key)) continue;
        if (v is! num) continue;
        final d = v.toDouble();
        if (!d.isFinite) continue;
        if (d < 1.0 || d > _maxAbsoluteCeiling) continue;
        overrides[key] = d;
      }
    }
    double readStat(String key) {
      final v = json[key];
      if (v is! num) return 1.0;
      // Per-system ceiling: legacy override if present, otherwise 1.0
      // (or 1.5 for culture/tech). Defends against corrupted saves
      // claiming impossible values for systems with no over-baseline path.
      final ceiling = overrides[key] ??
          ((key == 'culture' || key == 'tech') ? 1.5 : 1.0);
      return v.toDouble().clamp(0.0, ceiling);
    }

    return ShipSystems(
      hull: readStat('hull'),
      nav: readStat('nav'),
      cryopods: readStat('cryopods'),
      culture: readStat('culture'),
      tech: readStat('tech'),
      constructors: readStat('constructors'),
      shields: readStat('shields'),
      landingSystem: readStat('landingSystem'),
      atmosphericScanner: readStat('atmosphericScanner'),
      gravimetricScanner: readStat('gravimetricScanner'),
      mineralScanner: readStat('mineralScanner'),
      lifeSignsScanner: readStat('lifeSignsScanner'),
      temperatureScanner: readStat('temperatureScanner'),
      waterScanner: readStat('waterScanner'),
      maxOverrides: overrides,
    );
  }

  @override
  String toString() =>
      'ShipSystems(hull: ${hull.toStringAsFixed(2)}, '
      'nav: ${nav.toStringAsFixed(2)}, cryopods: ${cryopods.toStringAsFixed(2)}, '
      'culture: ${culture.toStringAsFixed(2)}, tech: ${tech.toStringAsFixed(2)}, '
      'shields: ${shields.toStringAsFixed(2)})';
}
