/// Procedurally generated planet model for Starbound Exodus.
class Planet {
  final String name;
  final String description;
  final double atmosphere;
  final double temperature;
  final double water;
  final double resources;
  final double gravity;
  final double biodiversity;
  final double anomaly;

  const Planet({
    required this.name,
    required this.description,
    required this.atmosphere,
    required this.temperature,
    required this.water,
    required this.resources,
    required this.gravity,
    required this.biodiversity,
    required this.anomaly,
  });

  /// Weighted habitability score (0.0 – 1.0).
  double get habitabilityScore =>
      water * 0.20 +
      atmosphere * 0.20 +
      temperature * 0.15 +
      resources * 0.15 +
      gravity * 0.10 +
      biodiversity * 0.10 +
      anomaly * 0.10;

  /// Human-readable tier derived from habitability.
  String get tier {
    final s = habitabilityScore;
    if (s > 0.9) return 'Utopia';
    if (s > 0.75) return 'Paradise';
    if (s > 0.6) return 'Habitable';
    if (s > 0.4) return 'Harsh';
    if (s > 0.2) return 'Hostile';
    return 'Death World';
  }

  /// All stat names, matching the keys used in event effect maps.
  static const List<String> statNames = [
    'atmosphere',
    'temperature',
    'water',
    'resources',
    'gravity',
    'biodiversity',
    'anomaly',
  ];

  /// Returns the value of the named stat.
  double getStat(String name) {
    switch (name) {
      case 'atmosphere':
        return atmosphere;
      case 'temperature':
        return temperature;
      case 'water':
        return water;
      case 'resources':
        return resources;
      case 'gravity':
        return gravity;
      case 'biodiversity':
        return biodiversity;
      case 'anomaly':
        return anomaly;
      default:
        throw ArgumentError('Unknown planet stat: $name');
    }
  }

  Planet copyWith({
    String? name,
    String? description,
    double? atmosphere,
    double? temperature,
    double? water,
    double? resources,
    double? gravity,
    double? biodiversity,
    double? anomaly,
  }) {
    return Planet(
      name: name ?? this.name,
      description: description ?? this.description,
      atmosphere: atmosphere ?? this.atmosphere,
      temperature: temperature ?? this.temperature,
      water: water ?? this.water,
      resources: resources ?? this.resources,
      gravity: gravity ?? this.gravity,
      biodiversity: biodiversity ?? this.biodiversity,
      anomaly: anomaly ?? this.anomaly,
    );
  }

  @override
  String toString() => 'Planet($name, tier: $tier, hab: ${habitabilityScore.toStringAsFixed(2)})';
}
