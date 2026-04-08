import 'dart:math' show log;

import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';

/// Score breakdown with 11 sub-scores (0-10 each).
class ScoreBreakdown {
  final double scoreLanding;
  final double scoreConstruction;
  final double scoreTechnology;
  final double scoreCulture;
  final double scoreAtmosphere;
  final double scoreGravity;
  final double scoreTemperature;
  final double scoreWater;
  final double scoreResources;
  final double scoreNativeRelations;
  final double scorePopulation;

  const ScoreBreakdown({
    required this.scoreLanding,
    required this.scoreConstruction,
    required this.scoreTechnology,
    required this.scoreCulture,
    required this.scoreAtmosphere,
    required this.scoreGravity,
    required this.scoreTemperature,
    required this.scoreWater,
    required this.scoreResources,
    required this.scoreNativeRelations,
    required this.scorePopulation,
  });

  double get total =>
      scoreLanding +
      scoreConstruction +
      scoreTechnology +
      scoreCulture +
      scoreAtmosphere +
      scoreGravity +
      scoreTemperature +
      scoreWater +
      scoreResources +
      scoreNativeRelations +
      scorePopulation;

  List<MapEntry<String, double>> localizedEntries(AppLocalizations l10n) => [
    MapEntry(l10n.ending_scoreLabel_landing, scoreLanding),
    MapEntry(l10n.ending_scoreLabel_construction, scoreConstruction),
    MapEntry(l10n.ending_scoreLabel_technology, scoreTechnology),
    MapEntry(l10n.ending_scoreLabel_culture, scoreCulture),
    MapEntry(l10n.ending_scoreLabel_atmosphere, scoreAtmosphere),
    MapEntry(l10n.ending_scoreLabel_gravity, scoreGravity),
    MapEntry(l10n.ending_scoreLabel_temperature, scoreTemperature),
    MapEntry(l10n.ending_scoreLabel_water, scoreWater),
    MapEntry(l10n.ending_scoreLabel_resources, scoreResources),
    MapEntry(l10n.ending_scoreLabel_nativeRelations, scoreNativeRelations),
    MapEntry(l10n.ending_scoreLabel_population, scorePopulation),
  ];
}

/// The computed ending of a voyage.
class EndingResult {
  final int score;
  final String tier;
  final String title;
  final String epilogue;

  /// The form of government that emerges in the colony.
  final String governmentType;

  /// How much of Earth's cultural heritage survived the voyage.
  final String cultureLevel;

  /// The technological capability of the new colony.
  final String technologyLevel;

  /// The construction capability of the new colony.
  final String constructionLevel;

  /// The relationship with any native civilizations on the planet.
  final String nativeRelations;

  /// A narrative paragraph describing the colony's unique character.
  final String colonyDescription;

  /// A narrative description of the planet's landscape.
  final String landscapeDescription;

  /// Detailed score breakdown by category.
  final ScoreBreakdown breakdown;

  /// Colony name chosen by the player (or generated).
  final String colonyName;

  const EndingResult({
    required this.score,
    required this.tier,
    required this.title,
    required this.epilogue,
    required this.governmentType,
    required this.cultureLevel,
    required this.technologyLevel,
    required this.constructionLevel,
    required this.nativeRelations,
    required this.colonyDescription,
    required this.landscapeDescription,
    required this.breakdown,
    required this.colonyName,
  });

  @override
  String toString() => 'EndingResult($score — $tier)';
}

/// Combines ship health and planet habitability into a scored ending.
class EndingCalculator {
  EndingCalculator._();

  /// Ship health contributes 40 %, planet habitability 60 %.
  static EndingResult calculate(
    ShipSystems ship,
    Planet planet,
    AppLocalizations l10n, {
    int colonists = 1000,
    String? colonyName,
    int fuel = 200,
    bool landedOnMoon = false,
  }) {
    final breakdown = _calculateBreakdown(ship, planet, colonists, fuel, landedOnMoon);
    // Penalise low average ship health: up to -15 points at 0% avg health.
    final healthPenalty = (1.0 - ship.averageHealth) * 15.0;
    // Hostile planets drag down the entire score — a perfect ship can't fully
    // compensate for a terrible planet. The multiplier ranges from 0.45 (death
    // world, hab=0) to 1.0 (utopia, hab≥0.75).
    final hab = planet.habitabilityScore.clamp(0.0, 1.0);
    final habitabilityMultiplier = 0.45 + 0.55 * (hab / 0.75).clamp(0.0, 1.0);
    final rawScore = (breakdown.total - healthPenalty) * habitabilityMultiplier;
    final score = rawScore.round().clamp(0, 130);

    final tierKey = _tierKeyFor(score);
    final tier = _localizeTier(tierKey, l10n);
    // When landing on a moon, use the colony name or "moon of [planet]".
    final String effectiveName;
    if (landedOnMoon && colonyName == null) {
      effectiveName = '${planet.name} Moon';
    } else {
      effectiveName = colonyName ?? planet.name;
    }
    final title = _titleFor(tierKey, effectiveName, l10n);
    final epilogue = _epilogueFor(tierKey, planet, l10n, landedOnMoon: landedOnMoon);

    final govKey = _governmentKeyFor(ship, planet);
    final governmentType = _localizeGovernment(govKey, l10n);
    final cultureKey = _cultureKeyFor(ship, planet);
    final cultureLevel = _localizeCulture(cultureKey, l10n);
    final techKey = _technologyKeyFor(ship, planet);
    final technologyLevel = _localizeTechnology(techKey, l10n);
    final constructKey = _constructionKeyFor(ship, planet);
    final constructionLevel = _localizeConstruction(constructKey, l10n);
    final nativeKey = _nativeRelationsKeyFor(planet);
    final nativeRelations = _localizeNativeRelations(nativeKey, l10n);
    final landscapeDescription = _landscapeDescription(planet, l10n, landedOnMoon);
    final colonyDescription = _colonyDescriptionFor(
      planet: planet,
      governmentKey: govKey,
      cultureKey: cultureKey,
      technologyKey: techKey,
      constructionKey: constructKey,
      nativeKey: nativeKey,
      tierKey: tierKey,
      colonists: colonists,
      colonyName: effectiveName,
      l10n: l10n,
      landedOnMoon: landedOnMoon,
    );

    return EndingResult(
      score: score,
      tier: tier,
      title: title,
      epilogue: epilogue,
      governmentType: governmentType,
      cultureLevel: cultureLevel,
      technologyLevel: technologyLevel,
      constructionLevel: constructionLevel,
      nativeRelations: nativeRelations,
      colonyDescription: colonyDescription,
      landscapeDescription: landscapeDescription,
      breakdown: breakdown,
      colonyName: effectiveName,
    );
  }

  // ---------------------------------------------------------------------------
  // Score breakdown
  // ---------------------------------------------------------------------------

  static ScoreBreakdown _calculateBreakdown(
    ShipSystems ship,
    Planet planet,
    int colonists, [
    int fuel = 200,
    bool landedOnMoon = false,
  ]) {
    // Landing score includes fuel bonus: full fuel adds up to 2 extra points.
    final fuelBonus = (fuel / 200.0).clamp(0.0, 1.0) * 2.0;

    var techScore = (ship.tech * 0.7 + planet.resources * 0.3) * 10;
    var constructionScore =
        (ship.constructors * 0.7 + planet.resources * 0.3) * 10;
    var cultureScore = (ship.culture * 0.7 + planet.biodiversity * 0.3) * 10;
    var waterScore = _logScore(planet.water, 12.0, 9.0);

    // --- Multi-moon scoring ---
    final moonEffects = _applyMoonEffects(planet, landedOnMoon);
    techScore *= moonEffects['techMultiplier'] ?? 1.0;
    constructionScore *= moonEffects['constructionMultiplier'] ?? 1.0;
    techScore += moonEffects['tech'] ?? 0;
    constructionScore += moonEffects['construction'] ?? 0;
    cultureScore += moonEffects['culture'] ?? 0;
    waterScore += moonEffects['water'] ?? 0;

    // No moons at all: resource penalty on tech/construction when resources are low.
    if (planet.moons.isEmpty) {
      if (planet.resources >= 0.3 && planet.resources < 0.6) {
        techScore *= 0.90;
        constructionScore *= 0.90;
      } else if (planet.resources < 0.3) {
        techScore *= 0.75;
        constructionScore *= 0.75;
      }
    }

    // --- Ring system scoring ---
    final ringEffects = _applyRingEffects(planet);
    cultureScore += ringEffects['culture'] ?? 0;
    waterScore += ringEffects['water'] ?? 0;
    techScore += ringEffects['tech'] ?? 0;
    constructionScore += ringEffects['construction'] ?? 0;
    // Ring resources applied after resourcesScore is initialised below.
    final ringResourcesBonus = ringEffects['resources'] ?? 0;

    // Landing difficulty adjustment for moon landing.
    var landingScore = ship.landingSystem * 10 + fuelBonus;
    if (landedOnMoon && planet.bestHabitableMoon != null) {
      // Lower gravity on moons makes landing easier: +1.0 bonus.
      landingScore += 1.0;
    }
    // Log-scale scoring for planet stats: low values are severely punished.
    // Formula: log(1 + stat * k) / log(1 + k) * weight
    // k controls the curve — higher k = more penalty for low values.
    // Gravity uses a gentler curve (more tolerable at low values).
    var atmosphereScore = _logScore(planet.atmosphere, 12.0, 9.0);
    var temperatureScore = _logScore(planet.temperature, 10.0, 9.0);
    var resourcesScore = _logScore(planet.resources, 8.0, 12.0) + ringResourcesBonus;
    var populationScore = _populationScore(colonists);

    // Apply surface feature effects.
    final featureEffects = _applySurfaceFeatureEffects(planet, ship);
    resourcesScore += featureEffects['resources'] ?? 0;
    cultureScore += featureEffects['culture'] ?? 0;
    atmosphereScore += featureEffects['atmosphere'] ?? 0;
    temperatureScore += featureEffects['temperature'] ?? 0;
    techScore += featureEffects['technology'] ?? 0;
    constructionScore += featureEffects['construction'] ?? 0;
    populationScore += featureEffects['population'] ?? 0;
    waterScore += featureEffects['water'] ?? 0;
    landingScore += featureEffects['landing'] ?? 0;

    return ScoreBreakdown(
      scoreLanding: landingScore,
      scoreConstruction: constructionScore,
      // Culture/tech can exceed 1.0 (up to 1.5) so scores can reach 15.
      scoreTechnology: techScore,
      scoreCulture: cultureScore,
      scoreAtmosphere: atmosphereScore,
      scoreGravity: _logScore(planet.gravity, 10.0, 3.0), // gentler curve
      scoreTemperature: temperatureScore,
      scoreWater: waterScore,
      scoreResources: resourcesScore,
      scoreNativeRelations: _nativeRelationScore(planet),
      scorePopulation: populationScore,
    );
  }

  static double _nativeRelationScore(Planet planet) {
    if (planet.nativePresence < 0.1) return 5.0; // neutral
    return planet.nativeDisposition * planet.nativePresence * 10;
  }

  /// Log-scale scoring: punishes low stats harder than linear.
  /// [stat] is 0.0–1.0, [weight] is the max score, [k] controls curvature.
  /// k=3 is gentle (gravity), k=9 is moderate, k=12 is harsh (resources).
  /// At k=9: stat 0.1 → 28% of max, stat 0.5 → 70%, stat 1.0 → 100%.
  /// At k=12: stat 0.1 → 23% of max, stat 0.5 → 66%, stat 1.0 → 100%.
  /// At k=3: stat 0.1 → 48% of max, stat 0.5 → 82%, stat 1.0 → 100%.
  static double _logScore(double stat, double weight, double k) {
    if (stat <= 0) return 0.0;
    return (log(1.0 + stat * k) / log(1.0 + k)) * weight;
  }

  static double _populationScore(int colonists) {
    if (colonists >= 950) return 10.0;
    if (colonists >= 850) return 8.0;
    if (colonists >= 700) return 6.0;
    if (colonists >= 500) return 4.0;
    if (colonists >= 250) return 2.0;
    if (colonists > 0) return 1.0;
    return 0.0;
  }

  /// Calculates additive and multiplicative effects from all moons.
  ///
  /// Returns a map with keys: 'tech', 'construction', 'culture', 'water',
  /// 'techMultiplier', 'constructionMultiplier'.
  static Map<String, double> _applyMoonEffects(Planet planet, bool landedOnMoon) {
    final effects = <String, double>{};
    void add(String k, double v) => effects[k] = (effects[k] ?? 0) + v;

    var techMult = 1.0;
    var conMult = 1.0;
    var metalRichCount = 0;

    for (final moon in planet.moons) {
      switch (moon.type) {
        case MoonType.barren:
          // Neutral — no effect.
          break;

        case MoonType.metalRich:
          // Diminishing returns: each additional gives 60 % of previous.
          final diminish = _pow(0.6, metalRichCount);
          metalRichCount++;

          double techM;
          double conM;
          if (planet.resources < 0.3) {
            techM = 1.10;
            conM = 1.08;
          } else if (planet.resources <= 0.6) {
            techM = 1.03;
            conM = 1.02;
          } else {
            techM = 1.05;
            conM = 1.05;
          }

          // Scale bonus portion by moon.size and diminishing factor.
          techMult *= 1.0 + (techM - 1.0) * moon.size * diminish;
          conMult *= 1.0 + (conM - 1.0) * moon.size * diminish;

        case MoonType.unstable:
          // Full penalty each time — no diminishing returns.
          add('tech', -2.0 * moon.size);
          add('construction', -1.0 * moon.size);

        case MoonType.habitable:
          // Culture bonus from hope/inspiration — always applies.
          add('culture', 1.0);

          // If this is the moon we landed on, use its habitability for scoring.
          if (landedOnMoon && moon == planet.bestHabitableMoon) {
            // Habitability bonus scales tech and culture.
            final hab = moon.habitability ?? 0.5;
            add('tech', hab * 1.5);
            add('culture', hab * 1.0);
          }

          // Water bonus from habitable moons with good water.
          if ((moon.water ?? 0) > 0.6) {
            add('water', 0.5 * moon.size);
          }

        case MoonType.ice:
          // Water bonus inversely proportional to planet water (dry planets benefit more).
          add('water', 2.0 * moon.size * (1.0 - planet.water));
          // Ice harvesting infrastructure.
          add('construction', 0.5 * moon.size);
          // Water extraction technology.
          add('tech', 0.3 * moon.size);
      }
    }

    effects['techMultiplier'] = techMult;
    effects['constructionMultiplier'] = conMult;
    return effects;
  }

  /// Calculates additive effects from the ring system.
  static Map<String, double> _applyRingEffects(Planet planet) {
    final rings = planet.rings;
    if (rings == null) return const {};

    final d = rings.density;
    switch (rings.type) {
      case RingType.dust:
        return {'culture': 1.0 * d};
      case RingType.ice:
        return {'culture': 1.5 * d, 'water': 0.5 * d};
      case RingType.rocky:
        return {'resources': 1.0 * d, 'construction': 0.5 * d};
      case RingType.metallic:
        return {'resources': 1.5 * d, 'tech': 1.0 * d};
    }
  }

  /// Integer power for diminishing returns: base^exp (both non-negative).
  static double _pow(double base, int exp) {
    var result = 1.0;
    for (var i = 0; i < exp; i++) {
      result *= base;
    }
    return result;
  }

  // ---------------------------------------------------------------------------
  // Surface feature scoring
  // ---------------------------------------------------------------------------

  /// Calculates additive, multiplicative, and cancellation effects from
  /// surface features. Returns a map of score category → delta.
  static Map<String, double> _applySurfaceFeatureEffects(
    Planet planet,
    ShipSystems ship,
  ) {
    final features = planet.surfaceFeatures.toSet();
    final effects = <String, double>{};

    void add(String category, double value) {
      effects[category] = (effects[category] ?? 0) + value;
    }

    // --- Cancellation flags ---
    final hasDangerous = features.contains('dangerous_fauna');
    final hasTameable = features.contains('tameable_fauna');
    final hasPoisonous = features.contains('poisonous_plants');
    final hasEdible = features.contains('edible_plants');
    final hasBeauty = features.contains('outstanding_beauty');
    final hasUgliness = features.contains('outstanding_ugliness');
    final hasRuins = features.contains('ancient_ruins');
    final hasMonuments = features.contains('monuments');

    // --- Additive effects ---

    if (hasEdible) {
      var bonus = 1.5;
      // Cancellation: poisonous + edible → edible bonus halved.
      if (hasPoisonous) bonus = 0.75;
      add('resources', bonus);
    }

    if (features.contains('plant_life')) {
      add('culture', 0.5);
      add('atmosphere', 0.5);
    }

    if (hasPoisonous) {
      // Cancellation: poisonous + edible → poison penalty removed.
      if (!hasEdible) {
        add('population', -1.0);
      }
    }

    if (hasTameable) {
      add('resources', 1.0);
      add('culture', 0.5);
    }

    if (hasDangerous) {
      // Cancellation: dangerous + tameable → population penalty halved.
      var popPenalty = -1.5;
      if (hasTameable) popPenalty = -0.75;
      add('population', popPenalty);
      add('construction', -0.5);
    }

    if (features.contains('unicellular_life')) {
      add('technology', 0.5);
    }

    if (features.contains('airtight_caves')) {
      add('construction', 1.0);
      add('atmosphere', 0.5);
    }

    if (features.contains('insulated_caves')) {
      add('construction', 1.0);
      add('temperature', 0.5);
    }

    if (hasBeauty && hasUgliness) {
      // Comedy and drama — two halves of the same mask. Culture doubles.
      add('culture', 4.0);
    } else if (hasBeauty) {
      add('culture', 2.0);
    } else if (hasUgliness) {
      add('culture', -1.0);
    }

    if (hasRuins) {
      add('technology', 2.0);
      add('culture', 1.0);
    }

    if (hasMonuments) {
      add('culture', 1.5);
      add('technology', 0.5);
    }

    // Synergy: ancient_ruins + monuments → extra culture.
    if (hasRuins && hasMonuments) {
      add('culture', 1.0);
    }

    // --- Multiplicative effects ---

    if (hasEdible) {
      if (planet.water > 0.6) {
        // Scale existing resources bonus by 1.15.
        final current = effects['resources'] ?? 0;
        effects['resources'] = current * 1.15;
      } else if (planet.water < 0.2) {
        final current = effects['resources'] ?? 0;
        effects['resources'] = current * 0.8;
      }
    }

    if (hasDangerous && planet.biodiversity > 0.7) {
      // Population penalty doubles: adjust from current to -3.0 base
      // (before tameable halving).
      final currentPop = effects['population'] ?? 0;
      // Replace the dangerous_fauna contribution with doubled version.
      final basePenalty = hasTameable ? -0.75 : -1.5;
      final doubledPenalty = hasTameable ? -1.5 : -3.0;
      effects['population'] = currentPop - basePenalty + doubledPenalty;
    }

    if (hasRuins && ship.tech > 0.7) {
      // Technology bonus doubles: add another +2.0.
      add('technology', 2.0);
    }

    if (hasPoisonous && planet.biodiversity > 0.7) {
      // Pharma potential.
      add('technology', 1.0);
    }

    // --- Rotation rate effects ---

    if (features.contains('high_rotation')) {
      // Short days: Coriolis effects hamper construction and landing,
      // but the rapid spin stabilises atmosphere and boosts effective gravity.
      add('construction', -1.0);
      // Landing penalty: crosswinds from Coriolis.
      add('atmosphere', 0.5);
    }

    if (features.contains('low_rotation')) {
      // Long days: extreme thermal swings between day/night hemispheres,
      // but tidal-locked twilight zones harbour diverse life.
      add('temperature', -1.0);
      add('population', -0.5);
      if (planet.biodiversity > 0.4) {
        add('culture', 0.5);
      }
    }

    // --- Geological effects ---

    if (features.contains('volcanic_activity')) {
      // Lava fields expose minerals but make construction treacherous.
      add('resources', 1.5);
      add('construction', -1.5);
      add('temperature', -0.5);
      // Synergy: insulated caves shelter colonists from eruptions.
      if (features.contains('insulated_caves')) {
        add('construction', 1.0); // partially cancels penalty
      }
    }

    if (features.contains('tectonic_instability')) {
      // Quakes expose mineral veins but flatten anything built.
      add('resources', 1.0);
      add('construction', -1.5);
      add('population', -1.0);
      // Synergy: airtight caves = underground cities survive quakes.
      if (features.contains('airtight_caves')) {
        add('construction', 0.5);
        add('population', 0.5);
      }
    }

    // --- Atmospheric effects ---

    if (features.contains('electrical_storms')) {
      // Constant lightning fries exposed electronics but is an energy source.
      add('technology', -1.0);
      add('construction', -0.5);
      // High-tech colonies can harness the energy.
      if (ship.tech > 0.7) {
        add('technology', 1.5); // net +0.5
        add('resources', 0.5);
      }
      // Cancels beauty — hard to admire scenery through static.
      if (hasBeauty) {
        add('culture', -1.0);
      }
    }

    if (features.contains('toxic_spores')) {
      // Airborne biological contaminants threaten colonist health.
      add('population', -1.5);
      add('atmosphere', -0.5);
      // High-tech filtration systems reduce the threat.
      if (ship.tech > 0.7) {
        add('population', 0.75);
      }
      // Pharma potential from the spores themselves.
      if (planet.biodiversity > 0.5) {
        add('technology', 0.5);
      }
    }

    // --- Hydrological effects ---

    if (features.contains('deep_oceans')) {
      // Vast oceans boost water score but submerge resources and limit land.
      add('resources', -1.0);
      add('construction', -1.0);
      // Synergy: edible plants + deep oceans = aquaculture.
      if (hasEdible) {
        add('resources', 1.5);
        add('population', 0.5);
      }
      // Culture bonus: ocean worlds inspire art and wonder.
      add('culture', 0.5);
    }

    if (features.contains('geothermal_vents')) {
      // Rare and valuable: energy, warmth, mineral-rich water.
      add('temperature', 1.0);
      add('resources', 1.0);
      add('technology', 1.0);
      // Synergy: deep oceans + geothermal = thriving ecosystem.
      if (features.contains('deep_oceans')) {
        add('resources', 0.5);
        add('technology', 0.5);
      }
    }

    // --- Magnetosphere effects ---

    if (features.contains('strong_magnetosphere')) {
      // Shields the surface from stellar radiation but disrupts electronics.
      add('technology', -0.5);
      add('population', 1.0);
      // Effective radiation shielding.
      if (planet.radiation > 0.6) {
        // Planet has high radiation — magnetosphere compensates.
        add('atmosphere', 1.0);
      }
    }

    if (features.contains('weak_magnetosphere')) {
      // Surface exposed to stellar wind — radiation hazard.
      add('population', -1.0);
      add('atmosphere', -0.5);
      // But: spectacular auroras inspire culture.
      add('culture', 0.5);
      // Synergy: beauty + weak magnetosphere = aurora world.
      if (hasBeauty) {
        add('culture', 1.5);
      }
    }

    // --- Exotic life effects ---

    if (features.contains('megafauna')) {
      // Enormous creatures: dangerous but awe-inspiring.
      add('population', -1.0);
      add('construction', -0.5);
      add('culture', 1.5);
      // Synergy: dangerous fauna + megafauna = apex predator hell.
      if (hasDangerous) {
        add('population', -1.0);
      }
      // Synergy: tameable fauna + megafauna = beast of burden potential.
      if (hasTameable) {
        add('construction', 1.0);
        add('resources', 0.5);
      }
    }

    if (features.contains('symbiotic_organisms')) {
      // Cooperative biology amplifies other life features.
      add('population', 0.5);
      add('resources', 0.5);
      // Amplifies edible plants.
      if (hasEdible) {
        add('resources', 0.5);
      }
      // Amplifies tameable fauna.
      if (hasTameable) {
        add('culture', 0.5);
        add('resources', 0.5);
      }
      // High biodiversity synergy.
      if (planet.biodiversity > 0.6) {
        add('technology', 0.5);
      }
    }

    // --- Anomaly effects ---

    if (features.contains('gravity_wells')) {
      // Localised gravity distortions: dangerous but scientifically priceless.
      add('construction', -1.5);
      // Landing is treacherous in warped gravity.
      if (ship.tech > 0.7) {
        add('technology', 2.0);
      } else {
        add('technology', 0.5);
      }
      add('population', -0.5);
    }

    if (features.contains('subspace_echoes')) {
      // The planet resonates with something beyond normal space.
      // Enormous culture value — the planet "remembers."
      add('culture', 2.0);
      // Synergy: ancient ruins + subspace echoes = alien memory palace.
      if (hasRuins) {
        add('culture', 1.5);
        add('technology', 1.5);
      }
      // Synergy: monuments + echoes = living memorials.
      if (hasMonuments) {
        add('culture', 1.0);
      }
    }

    // --- Life features ---

    if (features.contains('bioluminescent_life')) {
      add('culture', 1.0); // beauty/wonder
      add('technology', 0.5); // study value
    }

    if (features.contains('aquatic_megafauna')) {
      add('resources', 1.0); // fishing
      add('construction', -0.5); // ocean obstacles
      // Synergy: deep oceans + aquatic megafauna = thriving marine economy.
      if (features.contains('deep_oceans')) {
        add('resources', 1.0);
      }
    }

    if (features.contains('floating_kelp_forests')) {
      add('resources', 1.5); // sustainable harvest
      add('water', 0.5);
    }

    if (features.contains('medicinal_flora')) {
      add('population', 1.5);
      add('technology', 0.5); // pharmaceutical research
    }

    // --- Terrain features ---

    if (features.contains('floating_islands')) {
      add('culture', 2.0); // awe-inspiring
      add('construction', 1.0); // natural platforms
      // Synergy: outstanding beauty + floating islands = iconic vistas.
      if (hasBeauty) {
        add('culture', 1.0);
      }
    }

    if (features.contains('crystal_caverns')) {
      add('resources', 1.0);
      add('culture', 1.0); // beauty
      // Synergy: singing crystals + crystal caverns = harmonic caves.
      if (features.contains('singing_crystals')) {
        add('culture', 1.5);
      }
    }

    if (features.contains('lava_tubes')) {
      add('construction', 1.0); // natural shelter
      add('atmosphere', 0.5); // sealable tunnels
      add('population', -0.5); // heat hazard
    }

    if (features.contains('ice_tunnels')) {
      add('construction', 1.0); // natural shelter
      add('atmosphere', 0.5); // sealable tunnels
      add('water', 0.5); // meltwater
    }

    // --- Space debris ---

    if (features.contains('orbital_wreckage')) {
      add('technology', 1.5); // salvage
      add('resources', 1.0); // scrap metal
      add('construction', -0.5); // debris rain risk
    }

    if (features.contains('megastructural_fragments')) {
      add('technology', 3.0); // alien engineering
      add('construction', 1.5); // prefab materials
      add('culture', -1.0); // existential dread of fallen civilization
    }

    if (features.contains('ancient_observatory')) {
      add('technology', 2.0); // star charts
      add('culture', 1.0); // knowledge
      add('landing', 0.5); // nav bonus on ship
    }

    // --- Environmental ---

    if (features.contains('extreme_seasons')) {
      add('construction', -1.0); // weather damage
      add('population', -0.5); // harsh transitions
      add('resources', 0.5); // seasonal adaptation / biodiversity
    }

    if (features.contains('cryovolcanism')) {
      add('resources', 1.0); // mineral deposits
      add('construction', -0.5); // unstable ground
      add('water', 0.5); // ice geysers
    }

    // --- Rare/exotic ---

    if (features.contains('singing_crystals')) {
      add('culture', 2.0); // unique beauty/music
      add('technology', 0.5); // piezoelectric potential
    }

    if (features.contains('fertile_soil')) {
      add('resources', 2.0); // agriculture
      add('population', 1.0); // food security
    }

    if (features.contains('helium3_deposits')) {
      add('technology', 2.0); // fusion fuel
      add('resources', 1.0); // energy exports
    }

    if (features.contains('exotic_isotopes')) {
      add('technology', 1.5); // research
      add('resources', 1.0);
      add('population', -0.5); // radiation risk
    }

    return effects;
  }

  // ---------------------------------------------------------------------------
  // Tier, title, and epilogue (original logic)
  // ---------------------------------------------------------------------------

  /// Internal tier key (not localized — used for switch logic).
  static String _tierKeyFor(int score) {
    if (score >= 95) return 'Golden Age';
    if (score >= 75) return 'Thriving Colony';
    if (score >= 55) return 'Survival';
    if (score >= 35) return 'Struggling';
    if (score >= 15) return 'Dire';
    return 'Extinction';
  }

  static String _localizeTier(String tierKey, AppLocalizations l10n) {
    switch (tierKey) {
      case 'Golden Age':
        return l10n.ending_tierGoldenAge;
      case 'Thriving Colony':
        return l10n.ending_tierThrivingColony;
      case 'Survival':
        return l10n.ending_tierSurvival;
      case 'Struggling':
        return l10n.ending_tierStruggling;
      case 'Dire':
        return l10n.ending_tierDire;
      case 'Extinction':
        return l10n.ending_tierExtinction;
      default:
        return tierKey;
    }
  }

  static String _titleFor(
    String tierKey,
    String planetName,
    AppLocalizations l10n,
  ) {
    switch (tierKey) {
      case 'Golden Age':
        return l10n.ending_titleGoldenAge(planetName);
      case 'Thriving Colony':
        return l10n.ending_titleThrivingColony(planetName);
      case 'Survival':
        return l10n.ending_titleSurvival(planetName);
      case 'Struggling':
        return l10n.ending_titleStruggling(planetName);
      case 'Dire':
        return l10n.ending_titleDire(planetName);
      case 'Extinction':
        return l10n.ending_titleExtinction(planetName);
      default:
        return l10n.ending_titleDefault(planetName);
    }
  }

  static String _epilogueFor(
    String tierKey,
    Planet planet,
    AppLocalizations l10n, {
    bool landedOnMoon = false,
  }) {
    // Use "a moon of [planet]" when landed on moon for narrative context.
    final name = landedOnMoon ? 'a moon of ${planet.name}' : planet.name;
    switch (tierKey) {
      case 'Golden Age':
        return l10n.ending_epilogueGoldenAge(name);
      case 'Thriving Colony':
        return l10n.ending_epilogueThrivingColony(name);
      case 'Survival':
        return l10n.ending_epilogueSurvival(name);
      case 'Struggling':
        return l10n.ending_epilogueStruggling(name);
      case 'Dire':
        return l10n.ending_epilogueDire(name);
      case 'Extinction':
        return l10n.ending_epilogueExtinction(name);
      default:
        return l10n.ending_epilogueDefault;
    }
  }

  // ---------------------------------------------------------------------------
  // Government type
  // ---------------------------------------------------------------------------

  static String _governmentKeyFor(ShipSystems ship, Planet planet) {
    final cultureHealth = ship.culture;
    final techHealth = ship.tech;
    final cryoHealth = ship.cryopods;

    if (cryoHealth < 0.15) return 'Tribal Council';

    if (cultureHealth > 0.7) {
      if (techHealth > 0.7) return 'Democracy';
      return 'Democracy';
    }

    if (cultureHealth > 0.4) {
      if (techHealth > cultureHealth) return 'Technocracy';
      return 'Republic';
    }

    if (cultureHealth > 0.2) {
      if (techHealth > 0.5) return 'Technocracy';
      return 'Autocracy';
    }

    if (cryoHealth < 0.3) return 'Tribal Council';
    return 'Autocracy';
  }

  static String _localizeGovernment(String key, AppLocalizations l10n) {
    switch (key) {
      case 'Democracy':
        return l10n.ending_governmentDemocracy;
      case 'Technocracy':
        return l10n.ending_governmentTechnocracy;
      case 'Republic':
        return l10n.ending_governmentRepublic;
      case 'Autocracy':
        return l10n.ending_governmentAutocracy;
      case 'Tribal Council':
        return l10n.ending_governmentTribalCouncil;
      default:
        return key;
    }
  }

  // ---------------------------------------------------------------------------
  // Culture level
  // ---------------------------------------------------------------------------

  static String _cultureKeyFor(ShipSystems ship, Planet planet) {
    final cultureScore = ship.culture * 0.7 + planet.biodiversity * 0.3;

    if (cultureScore > 0.7) return 'Renaissance';
    if (cultureScore > 0.45) return 'Preserved';
    if (cultureScore > 0.2) return 'Fragmented';
    return 'Lost';
  }

  static String _localizeCulture(String key, AppLocalizations l10n) {
    switch (key) {
      case 'Renaissance':
        return l10n.ending_cultureRenaissance;
      case 'Preserved':
        return l10n.ending_culturePreserved;
      case 'Fragmented':
        return l10n.ending_cultureFragmented;
      case 'Lost':
        return l10n.ending_cultureLost;
      default:
        return key;
    }
  }

  // ---------------------------------------------------------------------------
  // Technology level
  // ---------------------------------------------------------------------------

  static String _technologyKeyFor(ShipSystems ship, Planet planet) {
    var techScore = ship.tech * 0.5 + planet.resources * 0.5;

    // Moon effects on tech level thresholds.
    for (final moon in planet.moons) {
      if (moon.type == MoonType.unstable) {
        techScore -= 0.15 * moon.size; // Bombardment risk damages technology.
      } else if (moon.type == MoonType.metalRich && planet.resources < 0.3) {
        techScore += 0.10 * moon.size; // Moon compensates for poor resources.
      } else if (moon.type == MoonType.ice) {
        techScore += 0.03 * moon.size; // Minor tech from water extraction.
      }
    }

    if (techScore > 0.7) return 'Advanced';
    if (techScore > 0.45) return 'Industrial';
    if (techScore > 0.2) return 'Pre-Industrial';
    return 'Stone Age';
  }

  static String _localizeTechnology(String key, AppLocalizations l10n) {
    switch (key) {
      case 'Advanced':
        return l10n.ending_techAdvanced;
      case 'Industrial':
        return l10n.ending_techIndustrial;
      case 'Pre-Industrial':
        return l10n.ending_techPreIndustrial;
      case 'Stone Age':
        return l10n.ending_techStoneAge;
      default:
        return key;
    }
  }

  // ---------------------------------------------------------------------------
  // Construction level
  // ---------------------------------------------------------------------------

  static String _constructionKeyFor(ShipSystems ship, Planet planet) {
    var score = ship.constructors * 0.5 + planet.resources * 0.5;

    // Moon effects on construction level.
    for (final moon in planet.moons) {
      if (moon.type == MoonType.unstable) {
        score -= 0.08 * moon.size; // Debris damages infrastructure.
      } else if (moon.type == MoonType.metalRich && planet.resources < 0.3) {
        score += 0.07 * moon.size; // Moon minerals supplement poor resources.
      } else if (moon.type == MoonType.ice) {
        score += 0.03 * moon.size; // Ice harvesting infrastructure.
      }
    }

    if (score > 0.7) return 'Advanced';
    if (score > 0.45) return 'Functional';
    if (score > 0.2) return 'Primitive';
    return 'None';
  }

  static String _localizeConstruction(String key, AppLocalizations l10n) {
    switch (key) {
      case 'Advanced':
        return l10n.ending_constructionAdvanced;
      case 'Functional':
        return l10n.ending_constructionFunctional;
      case 'Primitive':
        return l10n.ending_constructionPrimitive;
      case 'None':
        return l10n.ending_constructionNone;
      default:
        return key;
    }
  }

  // ---------------------------------------------------------------------------
  // Native relations
  // ---------------------------------------------------------------------------

  static String _nativeRelationsKeyFor(Planet planet) {
    if (planet.nativePresence < 0.1) return 'None';

    final disposition = planet.nativeDisposition;
    final presence = planet.nativePresence;

    if (disposition > 0.7) {
      if (presence > 0.5) return 'Integrated';
      return 'Coexistence';
    }

    if (disposition > 0.4) {
      if (presence > 0.6) return 'Tension';
      return 'Coexistence';
    }

    if (presence > 0.5) return 'Conflict';
    return 'Tension';
  }

  static String _localizeNativeRelations(String key, AppLocalizations l10n) {
    switch (key) {
      case 'None':
        return l10n.ending_nativesNone;
      case 'Integrated':
        return l10n.ending_nativesIntegrated;
      case 'Coexistence':
        return l10n.ending_nativesCoexistence;
      case 'Tension':
        return l10n.ending_nativesTension;
      case 'Conflict':
        return l10n.ending_nativesConflict;
      default:
        return key;
    }
  }

  // ---------------------------------------------------------------------------
  // Landscape description
  // ---------------------------------------------------------------------------

  static String _landscapeDescription(Planet planet, AppLocalizations l10n, [bool landedOnMoon = false]) {
    final buf = StringBuffer();

    // Gravity description.
    if (planet.gravity > 0.7) {
      buf.write(l10n.ending_landscapeGravityHigh);
    } else if (planet.gravity < 0.3) {
      buf.write(l10n.ending_landscapeGravityLow);
    } else {
      buf.write(l10n.ending_landscapeGravityNormal);
    }

    // Water description.
    if (planet.water > 0.7) {
      buf.write(l10n.ending_landscapeWaterHigh);
    } else if (planet.water > 0.4) {
      buf.write(l10n.ending_landscapeWaterMedium);
    } else if (planet.water > 0.15) {
      buf.write(l10n.ending_landscapeWaterLow);
    } else {
      buf.write(l10n.ending_landscapeWaterNone);
    }

    // Atmosphere description.
    if (planet.atmosphere > 0.7) {
      buf.write(l10n.ending_landscapeAtmoThick);
    } else if (planet.atmosphere > 0.4) {
      buf.write(l10n.ending_landscapeAtmoThin);
    } else {
      buf.write(l10n.ending_landscapeAtmoLow);
    }

    // Moons in the sky.
    if (planet.moons.isNotEmpty) {
      buf.write(_moonLandscapeDescription(planet, l10n, landedOnMoon));
    }

    // Moon landing narrative.
    if (landedOnMoon && planet.bestHabitableMoon != null) {
      // TODO(l10n): ending_landscapeMoonLanding
      buf.write('The colony was founded on the surface of the habitable moon, '
          'where lighter gravity eases the burden of construction. ');
    }

    // Ring system.
    if (planet.rings != null) {
      buf.write(_ringLandscapeDescription(planet.rings!, l10n));
    }

    // Rotation rate.
    if (planet.surfaceFeatures.contains('high_rotation')) {
      buf.write(l10n.ending_landscapeHighRotation);
    } else if (planet.surfaceFeatures.contains('low_rotation')) {
      buf.write(l10n.ending_landscapeLowRotation);
    }

    // Geological.
    if (planet.surfaceFeatures.contains('volcanic_activity')) {
      buf.write(l10n.ending_landscapeVolcanic);
    }
    if (planet.surfaceFeatures.contains('tectonic_instability')) {
      buf.write(l10n.ending_landscapeTectonic);
    }

    // Atmospheric.
    if (planet.surfaceFeatures.contains('electrical_storms')) {
      buf.write(l10n.ending_landscapeElectricalStorms);
    }
    if (planet.surfaceFeatures.contains('toxic_spores')) {
      buf.write(l10n.ending_landscapeToxicSpores);
    }

    // Hydrological.
    if (planet.surfaceFeatures.contains('deep_oceans')) {
      buf.write(l10n.ending_landscapeDeepOceans);
    }
    if (planet.surfaceFeatures.contains('geothermal_vents')) {
      buf.write(l10n.ending_landscapeGeothermalVents);
    }

    // Magnetosphere.
    if (planet.surfaceFeatures.contains('strong_magnetosphere')) {
      buf.write(l10n.ending_landscapeStrongMagnetosphere);
    } else if (planet.surfaceFeatures.contains('weak_magnetosphere')) {
      buf.write(l10n.ending_landscapeWeakMagnetosphere);
    }

    // Exotic life.
    if (planet.surfaceFeatures.contains('megafauna')) {
      buf.write(l10n.ending_landscapeMegafauna);
    }
    if (planet.surfaceFeatures.contains('symbiotic_organisms')) {
      buf.write(l10n.ending_landscapeSymbioticOrganisms);
    }

    // Anomalies.
    if (planet.surfaceFeatures.contains('gravity_wells')) {
      buf.write(l10n.ending_landscapeGravityWells);
    }
    if (planet.surfaceFeatures.contains('subspace_echoes')) {
      buf.write(l10n.ending_landscapeSubspaceEchoes);
    }

    // Life features.
    if (planet.surfaceFeatures.contains('bioluminescent_life')) {
      buf.write('At night, the surface glows with bioluminescent organisms. ');
    }
    if (planet.surfaceFeatures.contains('aquatic_megafauna')) {
      buf.write('Colossal creatures glide through the planet\'s waters, dwarfing anything from Earth\'s oceans. ');
    }
    if (planet.surfaceFeatures.contains('floating_kelp_forests')) {
      buf.write('Vast kelp forests sway in the currents, a sustainable bounty for the colony. ');
    }
    if (planet.surfaceFeatures.contains('medicinal_flora')) {
      buf.write('The native flora holds remarkable pharmaceutical potential. ');
    }

    // Terrain features.
    if (planet.surfaceFeatures.contains('floating_islands')) {
      buf.write('Massive stone formations drift through the atmosphere, defying gravity. ');
    }
    if (planet.surfaceFeatures.contains('crystal_caverns')) {
      buf.write('Vast crystal caverns glitter beneath the surface. ');
    }
    if (planet.surfaceFeatures.contains('lava_tubes')) {
      buf.write('Networks of lava tubes offer natural shelter beneath the surface. ');
    }
    if (planet.surfaceFeatures.contains('ice_tunnels')) {
      buf.write('Tunnels carved through ancient ice provide shelter and meltwater. ');
    }

    // Space debris.
    if (planet.surfaceFeatures.contains('orbital_wreckage')) {
      buf.write('Debris from an ancient vessel orbits overhead, a graveyard in the sky. ');
    }
    if (planet.surfaceFeatures.contains('megastructural_fragments')) {
      buf.write('Colossal fragments of alien engineering litter the landscape like fallen monuments. ');
    }
    if (planet.surfaceFeatures.contains('ancient_observatory')) {
      buf.write('An ancient observatory sits atop a peak, its instruments still pointed at the stars. ');
    }

    // Environmental.
    if (planet.surfaceFeatures.contains('extreme_seasons')) {
      buf.write('The planet swings between brutal extremes with each passing season. ');
    }
    if (planet.surfaceFeatures.contains('cryovolcanism')) {
      buf.write('Geysers of ice and ammonia erupt from the frozen surface. ');
    }

    // Rare/exotic.
    if (planet.surfaceFeatures.contains('singing_crystals')) {
      buf.write('Crystalline formations hum with an eerie harmony that shifts with the wind. ');
    }
    if (planet.surfaceFeatures.contains('fertile_soil')) {
      buf.write('Rich, dark soil stretches to the horizon \u2014 a farmer\'s paradise. ');
    }
    if (planet.surfaceFeatures.contains('helium3_deposits')) {
      buf.write('Helium-3 deposits in the regolith promise near-limitless fusion fuel. ');
    }
    if (planet.surfaceFeatures.contains('exotic_isotopes')) {
      buf.write('The ground is laced with exotic isotopes, a treasure trove for researchers. ');
    }

    // Surface features.
    if (planet.surfaceFeatures.isNotEmpty) {
      final labels = planet.surfaceFeatures
          .map((f) => Planet.surfaceFeatureLabels[f] ?? f)
          .toList();
      if (labels.length == 1) {
        buf.write(l10n.ending_landscapeNotableFeature(labels.first));
      } else {
        buf.write(l10n.ending_landscapeNotableFeatures(labels.join(', ')));
      }
    }

    return buf.toString().trim();
  }

  /// Generates landscape text describing moons visible in the sky.
  static String _moonLandscapeDescription(Planet planet, AppLocalizations l10n, [bool landedOnMoon = false]) {
    final count = planet.moons.length;
    final hasHabitable = planet.moons.any((m) => m.type == MoonType.habitable);
    final hasMetalRich = planet.moons.any((m) => m.type == MoonType.metalRich);
    final hasUnstable = planet.moons.any((m) => m.type == MoonType.unstable);
    final hasIce = planet.moons.any((m) => m.type == MoonType.ice);

    final buf = StringBuffer();

    if (landedOnMoon) {
      // Colony is on the moon — the planet dominates the sky.
      buf.write(' The parent planet dominates the horizon, a vast sphere of color and cloud');
      final siblingCount = count - 1;
      if (siblingCount > 0) {
        buf.write(', while $siblingCount sibling moon${siblingCount == 1 ? '' : 's'} trace${siblingCount == 1 ? 's' : ''} bright arcs across the sky');
      }
      buf.write('. ');
    } else {
      if (count == 1) {
        buf.write(' A single moon hangs in the sky');
      } else {
        final countWord = switch (count) {
          2 => 'Two',
          3 => 'Three',
          4 => 'Four',
          _ => '$count',
        };
        buf.write(' $countWord moons hang in the sky');
      }

      // Describe notable types.
      final notable = <String>[];
      if (hasHabitable) notable.add('a habitable world');
      if (hasIce) notable.add('a frozen ice moon');
      if (hasMetalRich) notable.add('a metal-rich satellite');
      if (hasUnstable) notable.add('an unstable body');

      if (notable.isNotEmpty) {
        buf.write(', including ${notable.join(' and ')}');
      }
      buf.write('. ');
    }

    // Ice moon water harvesting note.
    if (hasIce) {
      buf.write("Ice harvested from the frozen moon supplements the colony's water supply. ");
    }

    return buf.toString();
  }

  /// Generates landscape text describing the ring system.
  static String _ringLandscapeDescription(RingSystem rings, AppLocalizations l10n) {
    // TODO(l10n): ending_landscapeRingDust, ending_landscapeRingIce,
    //            ending_landscapeRingRocky, ending_landscapeRingMetallic
    return switch (rings.type) {
      RingType.dust =>
        ' A delicate ring of dust encircles the planet, glowing softly in the starlight. ',
      RingType.ice =>
        ' A brilliant ring of ice catches the starlight, casting prismatic reflections across the sky. ',
      RingType.rocky =>
        ' A broad ring of rocky debris arcs across the heavens, a reminder of ancient collisions. ',
      RingType.metallic =>
        ' A gleaming metallic ring bands the equator, rich with harvestable ore. ',
    };
  }

  // ---------------------------------------------------------------------------
  // Colony description (expanded 3-5 sentences)
  // ---------------------------------------------------------------------------

  static String _colonyDescriptionFor({
    required Planet planet,
    required String governmentKey,
    required String cultureKey,
    required String technologyKey,
    required String constructionKey,
    required String nativeKey,
    required String tierKey,
    required int colonists,
    required String colonyName,
    required AppLocalizations l10n,
    bool landedOnMoon = false,
  }) {
    final buf = StringBuffer();

    // Opening sentence — governance and social structure.
    buf.write(_governmentSentence(governmentKey, colonyName, l10n));
    buf.write(' ');

    // Construction sentence.
    buf.write(_constructionSentence(constructionKey, colonyName, l10n));
    buf.write(' ');

    // Moon sentence.
    final moonSentence = _moonSentence(planet, l10n, landedOnMoon);
    if (moonSentence != null) {
      buf.write(moonSentence);
      buf.write(' ');
    }

    // Middle sentence — culture and technology.
    buf.write(_cultureTechSentence(cultureKey, technologyKey, l10n));
    buf.write(' ');

    // Population sentence.
    buf.write(_populationSentence(colonists, colonyName, l10n));
    buf.write(' ');

    // Closing sentence — native relations and outlook.
    buf.write(_nativeOutlookSentence(nativeKey, tierKey, colonyName, l10n));

    return buf.toString();
  }

  static String _constructionSentence(
    String constructionKey,
    String name,
    AppLocalizations l10n,
  ) {
    switch (constructionKey) {
      case 'Advanced':
        return l10n.ending_constructionSentenceAdvanced(name);
      case 'Functional':
        return l10n.ending_constructionSentenceFunctional;
      case 'Primitive':
        return l10n.ending_constructionSentencePrimitive;
      case 'None':
        return l10n.ending_constructionSentenceNone;
      default:
        return l10n.ending_constructionSentenceDefault;
    }
  }

  static String? _moonSentence(Planet planet, AppLocalizations l10n, [bool landedOnMoon = false]) {
    if (planet.moons.isEmpty) return null;

    final buf = StringBuffer();
    final moonCount = planet.moons.length;
    final otherMoonCount = landedOnMoon ? moonCount - 1 : moonCount;
    final hasMetalRich = planet.moons.any((m) => m.type == MoonType.metalRich);
    final hasUnstable = planet.moons.any((m) => m.type == MoonType.unstable);
    final hasIce = planet.moons.any((m) => m.type == MoonType.ice);

    if (landedOnMoon) {
      // Colony is ON the moon — describe the parent planet and sibling moons.
      buf.write('The colony looks up at the vast parent planet filling the sky. ');
      if (otherMoonCount > 0) {
        buf.write('$otherMoonCount sibling moon${otherMoonCount == 1 ? '' : 's'} share${otherMoonCount == 1 ? 's' : ''} the orbit. ');
      }
    } else {
      buf.write('The colony orbits beneath $moonCount moon${moonCount == 1 ? '' : 's'}. ');
    }

    if (hasMetalRich) {
      if (planet.resources < 0.3) {
        buf.write(l10n.ending_moonMetalRichLowRes);
      } else {
        buf.write(l10n.ending_moonMetalRichHighRes);
      }
      buf.write(' ');
    }

    if (hasUnstable) {
      buf.write(l10n.ending_moonUnstable);
      buf.write(' ');
    }

    if (hasIce) {
      buf.write("Ice harvested from a frozen companion moon supplements the colony's water supply. ");
    }

    return buf.toString().trim();
  }

  static String _populationSentence(
    int colonists,
    String name,
    AppLocalizations l10n,
  ) {
    if (colonists >= 900) {
      return l10n.ending_populationHigh(colonists, name);
    } else if (colonists >= 500) {
      return l10n.ending_populationMedium(colonists, name);
    } else if (colonists >= 200) {
      return l10n.ending_populationLow(colonists, name);
    } else {
      return l10n.ending_populationCritical(colonists, name);
    }
  }

  static String _governmentSentence(
    String governmentKey,
    String planetName,
    AppLocalizations l10n,
  ) {
    switch (governmentKey) {
      case 'Democracy':
        return l10n.ending_govSentenceDemocracy(planetName);
      case 'Technocracy':
        return l10n.ending_govSentenceTechnocracy(planetName);
      case 'Republic':
        return l10n.ending_govSentenceRepublic(planetName);
      case 'Autocracy':
        return l10n.ending_govSentenceAutocracy(planetName);
      case 'Tribal Council':
        return l10n.ending_govSentenceTribalCouncil(planetName);
      default:
        return l10n.ending_govSentenceDefault(planetName);
    }
  }

  static String _cultureTechSentence(
    String cultureKey,
    String technologyKey,
    AppLocalizations l10n,
  ) {
    final culturePhrase = switch (cultureKey) {
      'Renaissance' => l10n.ending_culturePhrase_renaissance,
      'Preserved' => l10n.ending_culturePhrase_preserved,
      'Fragmented' => l10n.ending_culturePhrase_fragmented,
      'Lost' => l10n.ending_culturePhrase_lost,
      _ => l10n.ending_culturePhrase_default,
    };

    final techPhrase = switch (technologyKey) {
      'Advanced' => l10n.ending_techPhrase_advanced,
      'Industrial' => l10n.ending_techPhrase_industrial,
      'Pre-Industrial' => l10n.ending_techPhrase_preIndustrial,
      'Stone Age' => l10n.ending_techPhrase_stoneAge,
      _ => l10n.ending_techPhrase_default,
    };

    return l10n.ending_cultureTechJoiner(culturePhrase, techPhrase);
  }

  static String _nativeOutlookSentence(
    String nativeKey,
    String tierKey,
    String planetName,
    AppLocalizations l10n,
  ) {
    final nativePhrase = switch (nativeKey) {
      'Integrated' => l10n.ending_nativeSentenceIntegrated(planetName),
      'Coexistence' => l10n.ending_nativeSentenceCoexistence(planetName),
      'Tension' => l10n.ending_nativeSentenceTension(planetName),
      'Conflict' => l10n.ending_nativeSentenceConflict(planetName),
      _ => '',
    };

    if (nativePhrase.isNotEmpty) return nativePhrase;

    return switch (tierKey) {
      'Golden Age' => l10n.ending_outlookGoldenAge(planetName),
      'Thriving Colony' => l10n.ending_outlookThrivingColony(planetName),
      'Survival' => l10n.ending_outlookSurvival(planetName),
      'Struggling' => l10n.ending_outlookStruggling(planetName),
      'Dire' => l10n.ending_outlookDire,
      'Extinction' => l10n.ending_outlookExtinction(planetName),
      _ => l10n.ending_outlookDefault(planetName),
    };
  }
}
