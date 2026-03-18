import 'dart:math';

import 'package:starbound_exodus/models/planet.dart';

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

  // ── Generation ───────────────────────────────────────────────────────

  /// Generates a random [Planet] using the supplied [random] source.
  static Planet generate(Random random) {
    double stat() => _betaApprox(random);

    final atmosphere = stat();
    final temperature = stat();
    final water = stat();
    final resources = stat();
    final gravity = stat();
    final biodiversity = stat();
    final anomaly = stat();

    final name = _generateName(random);
    final description = _generateDescription(
      name: name,
      atmosphere: atmosphere,
      temperature: temperature,
      water: water,
      resources: resources,
      gravity: gravity,
      biodiversity: biodiversity,
      anomaly: anomaly,
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
    );
  }

  /// Beta-distribution approximation: average of 3 uniform samples.
  static double _betaApprox(Random r) {
    return (r.nextDouble() + r.nextDouble() + r.nextDouble()) / 3.0;
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
    final caution = anomaly > 0.7
        ? ' Sensors detect unexplained energy signatures beneath the surface.'
        : '';

    return '$opening $detail$caution';
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
