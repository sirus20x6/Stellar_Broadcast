import 'dart:math';

import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/services/planet_name_service_loader.dart';

/// Procedural planet factory.
///
/// Uses a beta-distribution approximation (mean of 3 uniform samples) so that
/// stats cluster around the 0.3–0.7 range with rare extremes.
class PlanetGenerator {
  PlanetGenerator._();

  // ── Name tables ──────────────────────────────────────────────────────

  static const _prefixes = [
    'Kepler',
    'Nova',
    'Tau',
    'Gliese',
    'Proxima',
    'Trappist',
    'Lyra',
    'Vega',
    'Altair',
    'Rigel',
    'Sigma',
    'Zeta',
    'Draco',
    'Cygnus',
    'Orion',
    'Helios',
    'Arcadia',
    'Erebus',
    'Solara',
    'Tethys',
  ];

  static const _suffixes = [
    'Prime',
    'VII',
    'b',
    'Proxima',
    'Major',
    'Minor',
    'Alpha',
    'Beta',
    'Gamma',
    'Delta',
    'IX',
    'III',
    'c',
    'Secundus',
    'Tertius',
  ];

  // ── Surface feature affinities ─────────────────────────────────────

  // Feature categories (for reference):
  // Plants: plant_life, edible_plants, poisonous_plants
  // Animals: unicellular_life, dangerous_fauna, tameable_fauna
  // Terrain: airtight_caves, insulated_caves
  // Monuments: ancient_ruins, monuments
  // Aesthetics: outstanding_beauty, outstanding_ugliness

  // ── Generation ───────────────────────────────────────────────────────

  /// Generates a random [Planet] using the supplied [random] source.
  /// If [scannerLevels] is provided, stat floors are applied based on levels.
  static Planet generate(Random random, {Map<String, int>? scannerLevels, PlanetNameService? nameService}) {
    double stat() => _betaApprox(random);

    var atmosphere = stat();
    var temperature = stat();
    var water = stat();
    var resources = stat();
    var gravity = stat().clamp(0.08, 1.0); // planets have *some* gravity
    var biodiversity = stat();
    var anomaly = stat();
    var radiation = stat();

    // Apply scanner level floors if provided.
    if (scannerLevels != null) {
      atmosphere = _applyFloor(atmosphere, scannerLevels['atmosphericScanner'] ?? 0);
      temperature = _applyFloor(temperature, scannerLevels['temperatureScanner'] ?? 0);
      water = _applyFloor(water, scannerLevels['waterScanner'] ?? 0);
      resources = _applyFloor(resources, scannerLevels['mineralScanner'] ?? 0);
      gravity = _applyFloor(gravity, scannerLevels['gravimetricScanner'] ?? 0);
      biodiversity = _applyFloor(biodiversity, scannerLevels['lifeSignsScanner'] ?? 0);
    }

    // ~30% chance of native civilization. Higher biodiversity = more likely.
    final nativeRoll = random.nextDouble();
    final nativeThreshold = 0.7 - biodiversity * 0.3; // bio 1.0 → threshold 0.4
    final hasNatives = nativeRoll > nativeThreshold;
    final nativePresence = hasNatives ? (0.2 + random.nextDouble() * 0.8) : 0.0;
    final nativeDisposition = hasNatives ? stat() : 0.5;

    // Roll surface features (0-3).
    final surfaceFeatures = _rollSurfaceFeatures(random, {
      'atmosphere': atmosphere,
      'temperature': temperature,
      'water': water,
      'resources': resources,
      'gravity': gravity,
      'biodiversity': biodiversity,
      'anomaly': anomaly,
      'radiation': radiation,
    });

    // Roll moons and rings (separate from surface features).
    final moons = _rollMoons(random, gravity: gravity, resources: resources,
        water: water, atmosphere: atmosphere);
    final rings = _rollRings(random, moonCount: moons.length,
        resources: resources, water: water);

    var name = '';
    if (nameService != null && nameService.isReady) {
      name = nameService.generateName(
        atmosphere: atmosphere,
        gravity: gravity,
        resources: resources,
        biodiversity: biodiversity,
        temperature: temperature,
        water: water,
        // Name model was trained with inverted semantics (high = safe).
        radiation: 1.0 - radiation,
      );
    }
    if (name.isEmpty) name = _generateName(random);
    final description = _generateDescription(
      name: name,
      atmosphere: atmosphere,
      temperature: temperature,
      water: water,
      resources: resources,
      gravity: gravity,
      biodiversity: biodiversity,
      anomaly: anomaly,
      radiation: radiation,
      nativePresence: nativePresence,
    );

    return Planet(
      name: name,
      description: description,
      atmosphere: atmosphere,
      temperature: temperature,
      water: water,
      resources: resources,
      gravity: gravity,
      biodiversity: biodiversity,
      anomaly: anomaly,
      radiation: radiation,
      nativePresence: nativePresence,
      nativeDisposition: nativeDisposition,
      surfaceFeatures: surfaceFeatures,
      moons: moons,
      rings: rings,
    );
  }

  /// Apply scanner level floor to a stat.
  /// Level 1: floor at 0.25. Level 2: floor at 0.45.
  static double _applyFloor(double value, int level) {
    if (level >= 2) return value < 0.45 ? 0.45 : value;
    if (level >= 1) return value < 0.25 ? 0.25 : value;
    return value;
  }

  /// Rolls surface features using a multiplier-based probability system.
  /// Each feature has a base probability (0.3) multiplied by stat-derived multipliers.
  static List<String> _rollSurfaceFeatures(
    Random random,
    Map<String, double> stats,
  ) {
    final bio = stats['biodiversity'] ?? 0.5;
    final water = stats['water'] ?? 0.5;
    final atmo = stats['atmosphere'] ?? 0.5;
    final temp = stats['temperature'] ?? 0.5;
    final grav = stats['gravity'] ?? 0.5;
    final res = stats['resources'] ?? 0.5;
    final anom = stats['anomaly'] ?? 0.5;
    final rad = stats['radiation'] ?? 0.5;

    // Corrosive/extreme conditions slash plant/animal probabilities.
    // High radiation (> 0.8) or thin atmosphere slashes life probabilities.
    final extremePenalty = (atmo < 0.2 || rad > 0.8) ? 0.1 : 1.0;

    final probabilities = <String, double>{
      // Plants: need biodiversity, water, atmosphere.
      'plant_life': 0.3 * (bio * 1.5) * (water * 1.2) * (atmo > 0.3 ? 1.0 : 0.1) * extremePenalty,
      'edible_plants': 0.3 * (bio * 1.5) * (water * 1.2) * (atmo > 0.3 ? 1.0 : 0.1) * extremePenalty * 0.8,
      'poisonous_plants': 0.3 * (bio * 1.3) * (atmo > 0.2 ? 1.0 : 0.2) * extremePenalty,
      // Animals: need biodiversity, temperature, atmosphere.
      'unicellular_life': 0.3 * (bio >= 0.2 ? bio * 1.5 : 0.0) * (water * 1.3) * extremePenalty,
      'dangerous_fauna': 0.3 * (bio >= 0.5 ? bio * 1.5 : 0.0) * (temp >= 0.3 ? temp : 0.0) * extremePenalty,
      'tameable_fauna': 0.3 * (bio >= 0.6 ? bio * 1.3 : 0.0) * (temp >= 0.4 ? temp : 0.0) * extremePenalty,
      // Terrain: caves need specific conditions.
      'airtight_caves': 0.3 * (atmo < 0.5 ? 1.5 : 0.5) * (grav * 1.2),
      'insulated_caves': 0.3 * (temp < 0.4 ? 1.5 : 0.5) * (grav * 1.2),
      // Aesthetics: beauty needs water + low radiation, ugliness from high radiation.
      'outstanding_beauty': 0.3 * (water * 1.5) * (bio * 1.3) * (rad < 0.5 ? 1.0 : 0.3),
      'outstanding_ugliness': 0.3 * (rad > 0.7 ? 1.5 : 0.3) * (bio < 0.3 ? 1.5 : 0.5),
      // Monuments: anomaly-driven.
      'ancient_ruins': 0.3 * (anom * 1.8),
      'monuments': 0.3 * (anom * 1.5) * (bio * 1.2),
      // Geological: volcanic and tectonic.
      'volcanic_activity': 0.2 * (temp > 0.5 ? temp * 1.3 : 0.3) * (res * 1.4),
      'tectonic_instability': 0.15 * (grav < 0.5 ? 1.4 : 0.6) * (anom * 1.3),
      // Atmospheric: storms and spores.
      'electrical_storms': 0.2 * (atmo * 1.4) * (anom > 0.3 ? 1.2 : 0.5),
      'toxic_spores': 0.15 * (bio > 0.4 ? bio * 1.5 : 0.1) * (rad > 0.6 ? 1.4 : 1.0) * extremePenalty,
      // Hydrological: oceans and vents.
      'deep_oceans': 0.2 * (water > 0.6 ? water * 1.8 : 0.1),
      'geothermal_vents': 0.12 * (temp < 0.5 ? 1.4 : 0.6) * (water * 1.3) * (res * 1.2),
      // Life: megafauna and symbiotes.
      'megafauna': 0.12 * (bio >= 0.6 ? bio * 1.6 : 0.0) * (grav * 1.3) * extremePenalty,
      'symbiotic_organisms': 0.15 * (bio > 0.5 ? bio * 1.4 : 0.1) * (water * 1.3) * extremePenalty,
      // Anomaly: gravity wells and subspace.
      'gravity_wells': 0.1 * (grav > 0.6 ? grav * 1.5 : 0.2) * (anom * 1.5),
      'subspace_echoes': 0.1 * (anom > 0.5 ? anom * 2.0 : 0.1),
    };

    final result = <String>[];
    for (final entry in probabilities.entries) {
      if (random.nextDouble() < entry.value.clamp(0.0, 0.85)) {
        result.add(entry.key);
      }
    }

    // ── New surface features (stat-gated with flat base chances) ──────

    // Independent features with stat prerequisites.
    if (bio > 0.4 && water > 0.3 && random.nextDouble() < 0.15) {
      result.add('bioluminescent_life');
    }
    if (water > 0.6 && bio > 0.5 && random.nextDouble() < 0.10) {
      result.add('aquatic_megafauna');
    }
    if (atmo > 0.6 && grav < 0.5 && random.nextDouble() < 0.08) {
      result.add('floating_islands');
    }
    if (res > 0.4 && random.nextDouble() < 0.12) {
      result.add('crystal_caverns');
    }
    if ((result.contains('volcanic_activity') || temp > 0.7) &&
        random.nextDouble() < 0.15) {
      result.add('lava_tubes');
    }
    if (temp < 0.3 && water > 0.2 && random.nextDouble() < 0.12) {
      result.add('ice_tunnels');
    }
    if (random.nextDouble() < 0.08) {
      result.add('orbital_wreckage');
    }
    if (temp < 0.3 && random.nextDouble() < 0.10) {
      result.add('cryovolcanism');
    }
    if (water > 0.7 && bio > 0.4 && random.nextDouble() < 0.12) {
      result.add('floating_kelp_forests');
    }
    if (res > 0.5 && anom > 0.3 && random.nextDouble() < 0.08) {
      result.add('singing_crystals');
    }
    if (bio > 0.3 && water > 0.3 && temp > 0.3 && random.nextDouble() < 0.20) {
      result.add('fertile_soil');
    }
    if (atmo > 0.3 && random.nextDouble() < 0.10) {
      result.add('helium3_deposits');
    }
    if (anom > 0.4 && res > 0.3 && random.nextDouble() < 0.08) {
      result.add('exotic_isotopes');
    }
    if (result.contains('high_rotation') || grav > 0.6) {
      if (random.nextDouble() < 0.10) {
        result.add('extreme_seasons');
      }
    }

    // Cap at 7 BEFORE rolling dependent features, so prerequisites aren't orphaned.
    if (result.length > 7) {
      result.shuffle(random);
      result.removeRange(7, result.length);
    }

    // Features that depend on other features being present.
    // These are bonus additions beyond the cap — guaranteed to keep their prerequisite.
    if (result.contains('orbital_wreckage') && random.nextDouble() < 0.30) {
      result.add('megastructural_fragments');
    }
    if (result.contains('ancient_ruins') && random.nextDouble() < 0.25) {
      result.add('ancient_observatory');
    }
    if (result.contains('plant_life') && bio > 0.5 &&
        random.nextDouble() < 0.20) {
      result.add('medicinal_flora');
    }

    // Roll for rotation rate (mutually exclusive, ~20% chance total).
    // High rotation more likely at high gravity, low rotation at low gravity.
    final rotationRoll = random.nextDouble();
    final highRotChance = 0.05 + grav * 0.10; // 5-15%
    final lowRotChance = 0.05 + (1.0 - grav) * 0.10; // 5-15%
    if (rotationRoll < highRotChance) {
      result.add('high_rotation');
    } else if (rotationRoll < highRotChance + lowRotChance) {
      result.add('low_rotation');
    }

    // Roll for magnetosphere (mutually exclusive, ~18% chance total).
    // Strong magnetosphere more likely at high gravity, weak at low gravity.
    final magRoll = random.nextDouble();
    final strongMagChance = 0.04 + grav * 0.10 + anom * 0.05; // 4-19%
    final weakMagChance = 0.04 + (1.0 - grav) * 0.10; // 4-14%
    if (magRoll < strongMagChance) {
      result.add('strong_magnetosphere');
    } else if (magRoll < strongMagChance + weakMagChance) {
      result.add('weak_magnetosphere');
    }

    return result;
  }

  // ── Multi-moon generation ─────────────────────────────────────────

  /// Rolls a list of [Moon]s based on planet stats.
  /// Moon count is gravity-dependent; moon types are weighted by planet conditions.
  static List<Moon> _rollMoons(
    Random random, {
    required double gravity,
    required double resources,
    required double water,
    required double atmosphere,
  }) {
    // Determine moon count. Higher gravity → more moons.
    // Cumulative thresholds: 0 | 1 | 2 | 3 | 4-5
    final countRoll = random.nextDouble();
    final zeroChance = gravity > 0.5 ? 0.10 : 0.30;
    final oneChance = 0.35;
    final twoChance = 0.20;
    final threeChance = 0.10;
    // 4-5 moons only possible with gravity > 0.6.
    int moonCount;
    if (countRoll < zeroChance) {
      moonCount = 0;
    } else if (countRoll < zeroChance + oneChance) {
      moonCount = 1;
    } else if (countRoll < zeroChance + oneChance + twoChance) {
      moonCount = 2;
    } else if (countRoll < zeroChance + oneChance + twoChance + threeChance) {
      moonCount = 3;
    } else if (gravity > 0.6) {
      moonCount = 4 + (random.nextDouble() < 0.5 ? 1 : 0); // 4 or 5
    } else {
      moonCount = 3; // fall back to 3 if gravity too low for 4-5
    }

    final moons = <Moon>[];
    for (var i = 0; i < moonCount; i++) {
      moons.add(_rollSingleMoon(random,
          resources: resources, water: water, gravity: gravity,
          atmosphere: atmosphere));
    }
    return moons;
  }

  /// Rolls a single [Moon] with type-weighted probabilities.
  static Moon _rollSingleMoon(
    Random random, {
    required double resources,
    required double water,
    required double gravity,
    required double atmosphere,
  }) {
    // Base weights with conditional bonuses.
    var barrenW = 0.35;
    var metalW = 0.25 + (resources > 0.6 ? 0.15 : 0.0);
    var unstableW = 0.15 + (gravity < 0.3 ? 0.10 : 0.0);
    var iceW = 0.15 + (water < 0.3 ? 0.20 : 0.0);
    var habitableW = atmosphere > 0.3 ? 0.10 : 0.0;

    // Normalize weights.
    final total = barrenW + metalW + unstableW + iceW + habitableW;
    barrenW /= total;
    metalW /= total;
    unstableW /= total;
    iceW /= total;
    // habitableW is the remainder.

    final roll = random.nextDouble();
    final size = 0.2 + random.nextDouble() * 0.8;

    if (roll < barrenW) {
      return Moon(type: MoonType.barren, size: size);
    } else if (roll < barrenW + metalW) {
      return Moon(type: MoonType.metalRich, size: size);
    } else if (roll < barrenW + metalW + unstableW) {
      return Moon(type: MoonType.unstable, size: size);
    } else if (roll < barrenW + metalW + unstableW + iceW) {
      return Moon(type: MoonType.ice, size: size,
          water: 0.6 + random.nextDouble() * 0.4);
    } else {
      return Moon(
        type: MoonType.habitable,
        size: size,
        habitability: 0.3 + random.nextDouble() * 0.6,
        water: 0.2 + random.nextDouble() * 0.6,
        atmosphere: 0.3 + random.nextDouble() * 0.4,
      );
    }
  }

  // ── Ring generation ──────────────────────────────────────────────

  /// Rolls an optional [RingSystem] based on planet conditions.
  static RingSystem? _rollRings(
    Random random, {
    required int moonCount,
    required double resources,
    required double water,
  }) {
    // Base 20% chance, +15% if 2+ moons, +10% if resource-rich.
    var ringChance = 0.20;
    if (moonCount >= 2) ringChance += 0.15;
    if (resources > 0.6) ringChance += 0.10;

    if (random.nextDouble() >= ringChance) return null;

    // Ring type weights with conditional bonuses.
    var dustW = 0.30;
    var iceW = 0.25 + (water < 0.4 ? 0.15 : 0.0);
    var rockyW = 0.25 + (resources > 0.5 ? 0.10 : 0.0);
    var metallicW = 0.20 + (resources > 0.7 ? 0.10 : 0.0);

    // Normalize.
    final total = dustW + iceW + rockyW + metallicW;
    dustW /= total;
    iceW /= total;
    rockyW /= total;
    // metallicW is the remainder.

    final roll = random.nextDouble();
    final density = 0.3 + random.nextDouble() * 0.7;

    RingType type;
    if (roll < dustW) {
      type = RingType.dust;
    } else if (roll < dustW + iceW) {
      type = RingType.ice;
    } else if (roll < dustW + iceW + rockyW) {
      type = RingType.rocky;
    } else {
      type = RingType.metallic;
    }

    final tilt = 5.0 + random.nextDouble() * 15.0; // 5-20°
    return RingSystem(type: type, density: density, tiltDegrees: tilt);
  }

  /// Skewed distribution with high variance but low mean (~0.28).
  /// Uses min of 2 uniform samples to skew toward 0, preserving spread.
  /// Min(U,U) has mean 1/3; × 0.84 ≈ 0.28.
  static double _betaApprox(Random r) {
    final a = r.nextDouble();
    final b = r.nextDouble();
    return (a < b ? a : b) * 0.84;
  }

  static String _generateName(Random r) {
    final prefix = _prefixes[r.nextInt(_prefixes.length)];
    final suffix = _suffixes[r.nextInt(_suffixes.length)];
    return '$prefix $suffix';
  }

  static String _generateDescription({
    required String name,
    required double atmosphere,
    required double temperature,
    required double water,
    required double resources,
    required double gravity,
    required double biodiversity,
    required double anomaly,
    required double radiation,
    required double nativePresence,
  }) {
    // Find the two most dominant stats to flavour the description.
    final stats = {
      'atmosphere': atmosphere,
      'temperature': temperature,
      'water': water,
      'resources': resources,
      'gravity': gravity,
      'biodiversity': biodiversity,
      'anomaly': anomaly,
    };
    final sorted = stats.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final top = sorted.first.key;
    final second = sorted[1].key;

    final opening = _openingFor(top, sorted.first.value);
    final detail = _detailFor(second, sorted[1].value);

    var extra = '';
    if (anomaly > 0.7) {
      extra += ' Sensors detect unexplained energy signatures beneath the surface.';
    }
    if (radiation > 0.7) {
      extra += ' Radiation levels are dangerously high.';
    }
    if (nativePresence > 0.5) {
      extra += ' Scanners detect signs of organized civilization.';
    } else if (nativePresence > 0.1) {
      extra += ' Faint signs of primitive life forms detected.';
    }

    return '$opening $detail$extra';
  }

  static String _openingFor(String stat, double value) {
    if (value < 0.3) {
      switch (stat) {
        case 'atmosphere':
          return 'A barren rock with almost no atmosphere.';
        case 'temperature':
          return 'Surface temperatures are lethally extreme.';
        case 'water':
          return 'A parched world devoid of liquid water.';
        case 'resources':
          return 'Scans reveal almost no exploitable minerals.';
        case 'gravity':
          return 'Dangerously low gravity threatens structural integrity.';
        case 'biodiversity':
          return 'No signs of life detected anywhere.';
        case 'anomaly':
          return 'A seemingly ordinary world — no anomalies detected.';
        default:
          return 'An unremarkable world.';
      }
    }
    switch (stat) {
      case 'atmosphere':
        return 'Thick clouds swirl over a world with a dense, breathable atmosphere.';
      case 'temperature':
        return 'A temperate world basking in the gentle warmth of its star.';
      case 'water':
        return 'Vast oceans glitter beneath the star light, promising abundant water.';
      case 'resources':
        return 'Rich mineral deposits are visible even from orbit.';
      case 'gravity':
        return 'Gravity readings suggest a comfortable, Earth-like pull.';
      case 'biodiversity':
        return 'Teeming with alien life — bioluminescent forests carpet the surface.';
      case 'anomaly':
        return 'Strange energy readings pulse from deep within the planet.';
      default:
        return 'A world of surprising potential.';
    }
  }

  static String _detailFor(String stat, double value) {
    if (value < 0.3) {
      switch (stat) {
        case 'atmosphere':
          return 'The thin atmosphere offers little protection from radiation.';
        case 'temperature':
          return 'Extreme thermal cycles make surface habitation dangerous.';
        case 'water':
          return 'Water sources are scarce — recycling will be critical.';
        case 'resources':
          return 'Resource scarcity may doom long-term colonization.';
        case 'gravity':
          return 'The weak gravity will challenge agriculture and construction.';
        case 'biodiversity':
          return 'The biosphere is barren — colonists will rely entirely on stores.';
        case 'anomaly':
          return 'Preliminary surveys show nothing out of the ordinary.';
        default:
          return '';
      }
    }
    switch (stat) {
      case 'atmosphere':
        return 'Air composition analysis suggests breathable conditions with minor filtration.';
      case 'temperature':
        return 'Seasonal variance is mild — colonists could thrive outdoors.';
      case 'water':
        return 'Subterranean aquifers supplement the surface water supply.';
      case 'resources':
        return 'Rare-earth elements could fuel technology for generations.';
      case 'gravity':
        return 'Gravity is well-suited for human physiology.';
      case 'biodiversity':
        return 'A complex biosphere hints at a stable, mature ecosystem.';
      case 'anomaly':
        return 'Anomalous readings suggest something ancient lies buried here.';
      default:
        return '';
    }
  }
}

