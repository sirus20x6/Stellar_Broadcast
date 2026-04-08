/// Moon types that can orbit a planet.
enum MoonType { barren, metalRich, unstable, habitable, ice }

/// Ring system types.
enum RingType { dust, ice, rocky, metallic }

/// A moon orbiting a planet.
class Moon {
  final MoonType type;

  /// Relative size (0.0–1.0). Affects magnitude of bonuses/penalties.
  final double size;

  /// Habitability score for habitable moons (null for other types).
  final double? habitability;

  /// Water level for habitable/ice moons (null for other types).
  final double? water;

  /// Atmosphere level for habitable moons (null for other types).
  final double? atmosphere;

  const Moon({
    required this.type,
    this.size = 0.5,
    this.habitability,
    this.water,
    this.atmosphere,
  });
}

/// A ring system around a planet.
class RingSystem {
  final RingType type;

  /// Ring density (0.0–1.0). Affects magnitude of bonuses.
  final double density;

  /// Tilt angle in degrees (5–20). Adds visual variety.
  final double tiltDegrees;

  const RingSystem({required this.type, this.density = 0.5, this.tiltDegrees = 10.0});
}

/// Procedurally generated planet model for Stellar Broadcast.
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
  final double radiation;

  /// Native civilization presence (0.0 = none, 1.0 = advanced).
  final double nativePresence;

  /// Native disposition toward colonists (0.0 = hostile, 0.5 = neutral, 1.0 = welcoming).
  final double nativeDisposition;

  /// Surface features discovered on the planet.
  final List<String> surfaceFeatures;

  /// Moons orbiting this planet (0–5).
  final List<Moon> moons;

  /// Ring system, if any.
  final RingSystem? rings;

  /// All possible surface features.
  static const List<String> allSurfaceFeatures = [
    'plant_life',
    'edible_plants',
    'poisonous_plants',
    'unicellular_life',
    'dangerous_fauna',
    'tameable_fauna',
    'airtight_caves',
    'insulated_caves',
    'outstanding_beauty',
    'outstanding_ugliness',
    'ancient_ruins',
    'monuments',
    'high_rotation',
    'low_rotation',
    'volcanic_activity',
    'tectonic_instability',
    'electrical_storms',
    'toxic_spores',
    'deep_oceans',
    'geothermal_vents',
    'strong_magnetosphere',
    'weak_magnetosphere',
    'megafauna',
    'symbiotic_organisms',
    'gravity_wells',
    'subspace_echoes',
    'bioluminescent_life',
    'aquatic_megafauna',
    'floating_islands',
    'crystal_caverns',
    'lava_tubes',
    'ice_tunnels',
    'orbital_wreckage',
    'megastructural_fragments',
    'ancient_observatory',
    'extreme_seasons',
    'cryovolcanism',
    'floating_kelp_forests',
    'singing_crystals',
    'fertile_soil',
    'helium3_deposits',
    'exotic_isotopes',
    'medicinal_flora',
  ];

  /// Human-readable labels for surface features.
  static const Map<String, String> surfaceFeatureLabels = {
    'plant_life': 'Plant Life',
    'edible_plants': 'Edible Plants',
    'poisonous_plants': 'Poisonous Plants',
    'unicellular_life': 'Unicellular Life',
    'dangerous_fauna': 'Dangerous Fauna',
    'tameable_fauna': 'Tameable Fauna',
    'airtight_caves': 'Airtight Caves',
    'insulated_caves': 'Insulated Caves',
    'outstanding_beauty': 'Outstanding Beauty',
    'outstanding_ugliness': 'Outstanding Ugliness',
    'ancient_ruins': 'Ancient Ruins',
    'monuments': 'Monuments',
    'high_rotation': 'Rapid Rotation',
    'low_rotation': 'Slow Rotation',
    'volcanic_activity': 'Volcanic Activity',
    'tectonic_instability': 'Tectonic Instability',
    'electrical_storms': 'Electrical Storms',
    'toxic_spores': 'Toxic Spores',
    'deep_oceans': 'Deep Oceans',
    'geothermal_vents': 'Geothermal Vents',
    'strong_magnetosphere': 'Strong Magnetosphere',
    'weak_magnetosphere': 'Weak Magnetosphere',
    'megafauna': 'Megafauna',
    'symbiotic_organisms': 'Symbiotic Organisms',
    'gravity_wells': 'Gravity Wells',
    'subspace_echoes': 'Subspace Echoes',
    'bioluminescent_life': 'Bioluminescent Life',
    'aquatic_megafauna': 'Aquatic Megafauna',
    'floating_islands': 'Floating Islands',
    'crystal_caverns': 'Crystal Caverns',
    'lava_tubes': 'Lava Tubes',
    'ice_tunnels': 'Ice Tunnels',
    'orbital_wreckage': 'Orbital Wreckage',
    'megastructural_fragments': 'Megastructural Fragments',
    'ancient_observatory': 'Ancient Observatory',
    'extreme_seasons': 'Extreme Seasons',
    'cryovolcanism': 'Cryovolcanism',
    'floating_kelp_forests': 'Floating Kelp Forests',
    'singing_crystals': 'Singing Crystals',
    'fertile_soil': 'Fertile Soil',
    'helium3_deposits': 'Helium-3 Deposits',
    'exotic_isotopes': 'Exotic Isotopes',
    'medicinal_flora': 'Medicinal Flora',
  };

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
    this.radiation = 0.5,
    this.nativePresence = 0.0,
    this.nativeDisposition = 0.5,
    this.surfaceFeatures = const [],
    this.moons = const [],
    this.rings,
  });

  /// The most habitable moon, if more habitable than the planet itself.
  Moon? get bestHabitableMoon {
    final habMoons = moons.where((m) => m.type == MoonType.habitable && m.habitability != null);
    if (habMoons.isEmpty) return null;
    final best = habMoons.reduce((a, b) => (a.habitability! > b.habitability!) ? a : b);
    return best.habitability! > habitabilityScore ? best : null;
  }

  /// Whether the player can choose to land on a moon instead of the planet.
  bool get canLandOnMoon => bestHabitableMoon != null;

  /// Weighted habitability score (0.0 – 1.0).
  double get habitabilityScore =>
      water * 0.21 +
      atmosphere * 0.20 +
      temperature * 0.13 +
      resources * 0.15 +
      gravity * 0.08 +
      biodiversity * 0.08 +
      (1.0 - radiation) * 0.08 +
      _nativeBonus * 0.07;

  /// Natives can be a bonus or penalty depending on disposition.
  double get _nativeBonus {
    if (nativePresence < 0.1) return 0.5; // no natives = neutral
    // Hostile natives are a penalty, friendly are a bonus.
    return nativeDisposition * nativePresence;
  }

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

  /// Description of native civilization.
  String get nativeDescription {
    if (nativePresence < 0.1) return 'No intelligent life detected';
    final level = nativePresence > 0.7
        ? 'advanced'
        : nativePresence > 0.4
            ? 'developing'
            : 'primitive';
    final attitude = nativeDisposition > 0.7
        ? 'welcoming'
        : nativeDisposition > 0.4
            ? 'cautious'
            : 'hostile';
    return '${level[0].toUpperCase()}${level.substring(1)} civilization — $attitude';
  }

  /// All stat names, matching the keys used in event effect maps.
  static const List<String> statNames = [
    'atmosphere',
    'temperature',
    'water',
    'resources',
    'gravity',
    'biodiversity',
    'radiation',
  ];

  /// Scannable stats (mapped to scanner subsystems).
  static const List<String> scannableStats = [
    'atmosphere',
    'temperature',
    'water',
    'resources',
    'gravity',
    'biodiversity',
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
      case 'radiation':
        return radiation;
      case 'nativePresence':
        return nativePresence;
      case 'nativeDisposition':
        return nativeDisposition;
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
    double? radiation,
    double? nativePresence,
    double? nativeDisposition,
    List<String>? surfaceFeatures,
    List<Moon>? moons,
    RingSystem? rings,
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
      radiation: radiation ?? this.radiation,
      nativePresence: nativePresence ?? this.nativePresence,
      nativeDisposition: nativeDisposition ?? this.nativeDisposition,
      surfaceFeatures: surfaceFeatures ?? this.surfaceFeatures,
      moons: moons ?? this.moons,
      rings: rings ?? this.rings,
    );
  }

  @override
  String toString() => 'Planet($name, tier: $tier, hab: ${habitabilityScore.toStringAsFixed(2)})';
}
