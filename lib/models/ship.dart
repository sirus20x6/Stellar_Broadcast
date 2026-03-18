/// Ship systems model for Starbound Exodus.
///
/// Tracks the health of six critical colony ship systems, each ranging
/// from 0.0 (destroyed) to 1.0 (pristine).
class ShipSystems {
  final double hull;
  final double scanner;
  final double nav;
  final double cryopods;
  final double culture;
  final double tech;

  const ShipSystems({
    this.hull = 1.0,
    this.scanner = 1.0,
    this.nav = 1.0,
    this.cryopods = 1.0,
    this.culture = 1.0,
    this.tech = 1.0,
  });

  /// All system names, matching the field names used in event effect maps.
  static const List<String> systemNames = [
    'hull',
    'scanner',
    'nav',
    'cryopods',
    'culture',
    'tech',
  ];

  /// Returns the value of the named system.
  double getSystem(String name) {
    switch (name) {
      case 'hull':
        return hull;
      case 'scanner':
        return scanner;
      case 'nav':
        return nav;
      case 'cryopods':
        return cryopods;
      case 'culture':
        return culture;
      case 'tech':
        return tech;
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

    switch (system) {
      case 'hull':
        return copyWith(hull: clamp(hull));
      case 'scanner':
        return copyWith(scanner: clamp(scanner));
      case 'nav':
        return copyWith(nav: clamp(nav));
      case 'cryopods':
        return copyWith(cryopods: clamp(cryopods));
      case 'culture':
        return copyWith(culture: clamp(culture));
      case 'tech':
        return copyWith(tech: clamp(tech));
      default:
        throw ArgumentError('Unknown ship system: $system');
    }
  }

  /// The name of the system with the lowest health.
  String get lowestSystem {
    final values = <String, double>{
      'hull': hull,
      'scanner': scanner,
      'nav': nav,
      'cryopods': cryopods,
      'culture': culture,
      'tech': tech,
    };
    return values.entries.reduce((a, b) => a.value <= b.value ? a : b).key;
  }

  /// Mean health across all six systems.
  double get averageHealth =>
      (hull + scanner + nav + cryopods + culture + tech) / 6.0;

  ShipSystems copyWith({
    double? hull,
    double? scanner,
    double? nav,
    double? cryopods,
    double? culture,
    double? tech,
  }) {
    return ShipSystems(
      hull: hull ?? this.hull,
      scanner: scanner ?? this.scanner,
      nav: nav ?? this.nav,
      cryopods: cryopods ?? this.cryopods,
      culture: culture ?? this.culture,
      tech: tech ?? this.tech,
    );
  }

  @override
  String toString() =>
      'ShipSystems(hull: ${hull.toStringAsFixed(2)}, scanner: ${scanner.toStringAsFixed(2)}, '
      'nav: ${nav.toStringAsFixed(2)}, cryopods: ${cryopods.toStringAsFixed(2)}, '
      'culture: ${culture.toStringAsFixed(2)}, tech: ${tech.toStringAsFixed(2)})';
}
