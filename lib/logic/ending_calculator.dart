import 'dart:math' show log, max;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Score breakdown for the 100,000-point scoring system.
///
/// Five major base components, compound multipliers, additive bonuses,
/// and penalties — all exposed for the ending screen to display.
class ScoreBreakdown {
  // --- Base score components ---
  final double planetQuality;       // 0–25000
  final double shipCondition;       // 0–20000
  final double colonyViability;     // 0–15000
  final double nativeRelations;     // 0–10000
  final double landingPrecision;    // 0–5000

  // --- Multipliers (compound, applied to base total) ---
  final double habitabilityMultiplier;  // 0.7–1.08
  final double governanceMultiplier;    // 1.0–1.05
  final double encountersMultiplier;    // 1.0–1.2
  final double efficiencyMultiplier;    // 0.97–1.05

  // --- Additive bonuses (post-multiplier) ---
  final double moonBonus;
  final double ringBonus;
  final double surfaceFeatureBonus;
  final double featureInteractionBonus; // synergies, cancellations, etc.
  final double scannerUpgradeBonus;
  final double perfectSystemsBonus;
  final double fullCrewBonus;
  final double governanceClarityBonus;

  // --- Penalties (subtracted from total) ---
  final double healthPenalty;
  final double colonistLossPenalty;
  final double skipPenalty;

  const ScoreBreakdown({
    required this.planetQuality,
    required this.shipCondition,
    required this.colonyViability,
    required this.nativeRelations,
    required this.landingPrecision,
    required this.habitabilityMultiplier,
    required this.governanceMultiplier,
    required this.encountersMultiplier,
    required this.efficiencyMultiplier,
    required this.moonBonus,
    required this.ringBonus,
    required this.surfaceFeatureBonus,
    required this.featureInteractionBonus,
    required this.scannerUpgradeBonus,
    required this.perfectSystemsBonus,
    required this.fullCrewBonus,
    required this.governanceClarityBonus,
    required this.healthPenalty,
    required this.colonistLossPenalty,
    required this.skipPenalty,
  });

  double get baseTotal =>
      planetQuality + shipCondition + colonyViability + nativeRelations + landingPrecision;

  double get compoundMultiplier =>
      habitabilityMultiplier *
      governanceMultiplier *
      encountersMultiplier *
      efficiencyMultiplier;

  double get totalBonuses =>
      moonBonus +
      ringBonus +
      surfaceFeatureBonus +
      featureInteractionBonus +
      scannerUpgradeBonus +
      perfectSystemsBonus +
      fullCrewBonus +
      governanceClarityBonus;

  double get totalPenalties => healthPenalty + colonistLossPenalty + skipPenalty;

  double get total => baseTotal * compoundMultiplier + totalBonuses - totalPenalties;

  /// Localised entries for the ending screen breakdown display.
  List<MapEntry<String, double>> localizedEntries(AppLocalizations l10n) => [
    MapEntry(l10n.ending_scoreLabel_landing, landingPrecision),
    MapEntry(l10n.ending_scoreLabel_construction, colonyViability),
    MapEntry(l10n.ending_scoreLabel_technology, shipCondition),
    MapEntry(l10n.ending_scoreLabel_atmosphere, planetQuality),
    MapEntry(l10n.ending_scoreLabel_nativeRelations, nativeRelations),
    MapEntry(l10n.ending_scoreLabel_population, totalBonuses),
  ];

  /// Detailed entries with all sub-scores for a full breakdown view.
  List<MapEntry<String, double>> detailedEntries(AppLocalizations l10n) => [
    // Base components
    MapEntry(l10n.ending_scoreLabel_atmosphere, planetQuality),
    MapEntry(l10n.ending_scoreLabel_technology, shipCondition),
    MapEntry(l10n.ending_scoreLabel_construction, colonyViability),
    MapEntry(l10n.ending_scoreLabel_nativeRelations, nativeRelations),
    MapEntry(l10n.ending_scoreLabel_landing, landingPrecision),
    // Bonuses
    MapEntry(l10n.ending_scoreLabel_culture, totalBonuses),
    // Penalties
    MapEntry(l10n.ending_scoreLabel_population, -totalPenalties),
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
  final String nativeRelationsLabel;

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
    required this.nativeRelationsLabel,
    required this.colonyDescription,
    required this.landscapeDescription,
    required this.breakdown,
    required this.colonyName,
  });

  @override
  String toString() => 'EndingResult($score — $tier)';
}

/// Combines ship health, planet habitability, and voyage ideology into a scored ending.
class EndingCalculator {
  EndingCalculator._();

  /// Main scoring entry point — 0 to 100,000 scale.
  static EndingResult calculate(
    ShipSystems ship,
    Planet planet,
    AppLocalizations l10n, {
    int colonists = 1000,
    String? colonyName,
    int fuel = 200,
    bool landedOnMoon = false,
    required VoyageState voyage,
  }) {
    final breakdown = _calculateBreakdown(ship, planet, colonists, fuel, landedOnMoon, voyage);
    final rawScore = breakdown.total;
    final score = rawScore.round().clamp(0, 100000);

    final tierKey = _tierKeyFor(score);
    final tier = _localizeTier(tierKey, l10n);

    final String effectiveName;
    if (landedOnMoon && colonyName == null) {
      effectiveName = '${planet.name} Moon';
    } else {
      effectiveName = colonyName ?? planet.name;
    }
    final title = _titleFor(tierKey, effectiveName, l10n);
    final epilogue = _epilogueFor(tierKey, planet, l10n, landedOnMoon: landedOnMoon);

    final govKey = _governmentKeyFor(ship, voyage);
    final governmentType = _localizeGovernment(govKey, l10n);
    final cultureKey = _cultureKeyFor(ship, planet);
    final cultureLevel = _localizeCulture(cultureKey, l10n);
    final techKey = _technologyKeyFor(ship, planet);
    final technologyLevel = _localizeTechnology(techKey, l10n);
    final constructKey = _constructionKeyFor(ship, planet);
    final constructionLevel = _localizeConstruction(constructKey, l10n);
    final nativeKey = _nativeRelationsKeyFor(planet, voyage);
    final nativeRelationsLabel = _localizeNativeRelations(nativeKey, l10n);
    final landscapeDescription = _landscapeDescription(planet, ship, l10n, landedOnMoon);
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
      nativeRelationsLabel: nativeRelationsLabel,
      colonyDescription: colonyDescription,
      landscapeDescription: landscapeDescription,
      breakdown: breakdown,
      colonyName: effectiveName,
    );
  }

  // ---------------------------------------------------------------------------
  // Score breakdown — 100,000-point system
  // ---------------------------------------------------------------------------

  static ScoreBreakdown _calculateBreakdown(
    ShipSystems ship,
    Planet planet,
    int colonists,
    int fuel,
    bool landedOnMoon,
    VoyageState voyage,
  ) {
    // --- Planet Quality (0–25000) ---
    // 6 planet stats, each log-scaled with weights.
    final pqAtmo = _logScore(planet.atmosphere, 5000.0, 12.0);
    final pqTemp = _logScore(planet.temperature, 4500.0, 10.0);
    final pqWater = _logScore(planet.water, 4500.0, 12.0);
    final pqResources = _logScore(planet.resources, 4000.0, 8.0);
    final pqGravity = _logScore(planet.gravity, 3500.0, 3.0);
    final pqBio = _logScore(planet.biodiversity, 3500.0, 9.0);
    final planetQuality = (pqAtmo + pqTemp + pqWater + pqResources + pqGravity + pqBio)
        .clamp(0.0, 25000.0);

    // --- Ship Condition (0–20000) ---
    // 14 ship system healths, weighted (hull/nav/cryopods worth more).
    final shipCondition = _shipConditionScore(ship).clamp(0.0, 20000.0);

    // --- Colony Viability (0–15000) ---
    // Colonists alive (scaled), fuel remaining, construction/tech/culture.
    final cvColonists = (colonists / 1000.0).clamp(0.0, 1.0) * 6000.0;
    final cvFuel = (fuel / 200.0).clamp(0.0, 1.0) * 2000.0;
    final cvConstruction = ship.constructors * 2500.0;
    final cvTech = ship.tech * 2500.0;
    final cvCulture = ship.culture * 2000.0;
    final colonyViability = (cvColonists + cvFuel + cvConstruction + cvTech + cvCulture)
        .clamp(0.0, 15000.0);

    // --- Native Relations (0–10000) ---
    double nativeRelScore;
    if (planet.nativePresence < 0.1) {
      nativeRelScore = 5000.0; // neutral — no natives
    } else {
      nativeRelScore = planet.nativePresence * planet.nativeDisposition * 10000.0;
      // Bonus for high integration (disposition > 0.7 and presence > 0.5).
      if (planet.nativeDisposition > 0.7 && planet.nativePresence > 0.5) {
        nativeRelScore += 2000.0;
      }
    }
    nativeRelScore = nativeRelScore.clamp(0.0, 10000.0);

    // --- Landing Precision (0–5000) ---
    final lpBase = ship.landingSystem * 3000.0;
    final lpFuel = (fuel / 200.0).clamp(0.0, 1.0) * 1000.0;
    final lpMoon = landedOnMoon ? 1000.0 : 0.0;
    final landingPrecision = (lpBase + lpFuel + lpMoon).clamp(0.0, 5000.0);

    // --- Multipliers (kept modest so 100K requires near-perfect run) ---
    // Max compound: ~1.08 × 1.05 × 1.05 × 1.05 = ~1.25x
    // A 75K base + 1.25x = 93.7K + bonuses → only true perfection hits 100K.
    final hab = planet.habitabilityScore.clamp(0.0, 1.0);
    final habitabilityMult = (0.7 + 0.38 * hab).clamp(0.7, 1.08);

    // Governance coherence: max absolute axis > 0.5 gives small bonus.
    final maxAxis = [
      voyage.authorityAxis.abs(),
      voyage.cultureAxis.abs(),
      voyage.economyAxis.abs(),
      voyage.faithAxis.abs(),
      voyage.militaryAxis.abs(),
    ].reduce((a, b) => a > b ? a : b);
    final governanceMultFinal = maxAxis > 0.5
        ? (1.0 + 0.05 * ((maxAxis - 0.5) / 0.5)).clamp(1.0, 1.05)
        : 1.0;

    // Encounters multiplier: small reward for surviving more encounters.
    final maxEnc = voyage.maxEncounters > 0 ? voyage.maxEncounters : 30;
    final encountersMult = maxEnc > 0
        ? (1.0 + (voyage.encounterCount / maxEnc) * 0.05).clamp(1.0, 1.05)
        : 1.0;

    // Efficiency multiplier: small reward for fuel conservation.
    final efficiencyMult = (0.97 + (fuel / 200.0) * 0.08).clamp(0.97, 1.05);

    // --- Additive Bonuses ---
    final moonBonus = landedOnMoon ? 2000.0 : 0.0;

    double ringBonus = 0.0;
    if (planet.rings != null) {
      final d = planet.rings!.density;
      ringBonus = switch (planet.rings!.type) {
        RingType.dust => 500.0 * d,
        RingType.ice => 1000.0 * d,
        RingType.rocky => 1500.0 * d,
        RingType.metallic => 2000.0 * d,
      };
    }

    // Surface feature bonus.
    double surfaceFeatureBonus = 0.0;
    for (final feature in planet.surfaceFeatures) {
      surfaceFeatureBonus += _surfaceFeatureRarity(feature);
    }

    // Scanner upgrades.
    final scannerUpgradeBonus = voyage.scannersUpgraded * 500.0;

    // Perfect systems: all 14 ship systems >= 0.8.
    final allSystems = [
      ship.hull, ship.nav, ship.cryopods, ship.culture, ship.tech,
      ship.constructors, ship.shields, ship.landingSystem,
      ship.atmosphericScanner, ship.gravimetricScanner, ship.mineralScanner,
      ship.lifeSignsScanner, ship.temperatureScanner, ship.waterScanner,
    ];
    final perfectSystemsBonus = allSystems.every((s) => s >= 0.8) ? 1000.0 : 0.0;

    // Full crew.
    final fullCrewBonus = colonists >= 950 ? 1000.0 : 0.0;

    // Governance clarity bonus.
    double govClarityBonus = 0.0;
    if (maxAxis > 0.5) {
      govClarityBonus = (500.0 + 1500.0 * ((maxAxis - 0.5) / 0.5)).clamp(500.0, 2000.0);
    }

    // --- Penalties ---
    final healthPenalty = (1.0 - ship.averageHealth) * 5000.0;
    final colonistLoss = (1000 - colonists).clamp(0, 1000);
    final colonistLossPenalty = (colonistLoss * 10.0).clamp(0.0, 10000.0);
    final skipped = voyage.planetsSkipped;
    final skipPenalty = max(0, skipped - 3) * 200.0;

    return ScoreBreakdown(
      planetQuality: planetQuality,
      shipCondition: shipCondition,
      colonyViability: colonyViability,
      nativeRelations: nativeRelScore,
      landingPrecision: landingPrecision,
      habitabilityMultiplier: habitabilityMult,
      governanceMultiplier: governanceMultFinal,
      encountersMultiplier: encountersMult,
      efficiencyMultiplier: efficiencyMult,
      moonBonus: moonBonus,
      ringBonus: ringBonus,
      surfaceFeatureBonus: surfaceFeatureBonus,
      featureInteractionBonus: _calculateFeatureInteractions(planet, ship),
      scannerUpgradeBonus: scannerUpgradeBonus,
      perfectSystemsBonus: perfectSystemsBonus,
      fullCrewBonus: fullCrewBonus,
      governanceClarityBonus: govClarityBonus,
      healthPenalty: healthPenalty,
      colonistLossPenalty: colonistLossPenalty,
      skipPenalty: skipPenalty,
    );
  }

  /// Weighted ship condition score (0–20000).
  /// Hull, nav, and cryopods are worth more than other systems.
  static double _shipConditionScore(ShipSystems ship) {
    // Weights: hull 3, nav 3, cryopods 3, culture 1.5, tech 1.5,
    // constructors 1.5, shields 1, landingSystem 1.5, scanners 0.5 each.
    const totalWeight = 3.0 + 3.0 + 3.0 + 1.5 + 1.5 + 1.5 + 1.0 + 1.5 + (0.5 * 6);
    final weighted =
        ship.hull * 3.0 +
        ship.nav * 3.0 +
        ship.cryopods * 3.0 +
        ship.culture * 1.5 +
        ship.tech * 1.5 +
        ship.constructors * 1.5 +
        ship.shields * 1.0 +
        ship.landingSystem * 1.5 +
        ship.atmosphericScanner * 0.5 +
        ship.gravimetricScanner * 0.5 +
        ship.mineralScanner * 0.5 +
        ship.lifeSignsScanner * 0.5 +
        ship.temperatureScanner * 0.5 +
        ship.waterScanner * 0.5;
    return (weighted / totalWeight) * 20000.0;
  }

  /// Rarity-based bonus per surface feature (100–500).
  static double _surfaceFeatureRarity(String feature) {
    // Debug-mode typo detection: flag any feature used at runtime that
    // isn't in the canonical Planet.allSurfaceFeatures list.
    if (kDebugMode && !Planet.allSurfaceFeatures.contains(feature)) {
      QaLogger.app.warning(
        'Unknown surface feature "$feature" in scoring — '
        'not present in Planet.allSurfaceFeatures. Check for typos.',
      );
    }
    // Rare/exotic features are worth more.
    return switch (feature) {
      'singing_crystals' => 500.0,
      'megastructural_fragments' => 500.0,
      'subspace_echoes' => 500.0,
      'helium3_deposits' => 450.0,
      'exotic_isotopes' => 450.0,
      'floating_islands' => 400.0,
      'gravity_wells' => 400.0,
      'ancient_observatory' => 400.0,
      'ancient_ruins' => 350.0,
      'bioluminescent_life' => 350.0,
      'geothermal_vents' => 300.0,
      'crystal_caverns' => 300.0,
      'fertile_soil' => 300.0,
      'medicinal_flora' => 300.0,
      'monuments' => 250.0,
      'deep_oceans' => 250.0,
      'symbiotic_organisms' => 250.0,
      'aquatic_megafauna' => 250.0,
      'floating_kelp_forests' => 200.0,
      'megafauna' => 200.0,
      'airtight_caves' => 200.0,
      'insulated_caves' => 200.0,
      'lava_tubes' => 200.0,
      'ice_tunnels' => 200.0,
      'orbital_wreckage' => 200.0,
      'tameable_fauna' => 150.0,
      'edible_plants' => 150.0,
      'plant_life' => 100.0,
      'unicellular_life' => 100.0,
      'cryovolcanism' => 150.0,
      'strong_magnetosphere' => 150.0,
      'ghost_cities' => 500.0,
      'archive_vaults' => 450.0,
      'perpetual_aurora' => 350.0,
      'petrified_megaflora' => 300.0,
      'underground_rivers' => 250.0,
      'carnivorous_flora' => 250.0,
      'apex_predator' => 200.0,
      'obsidian_plains' => 200.0,
      'salt_flats' => 150.0,
      'sinkhole_fields' => 150.0,
      _ => 100.0, // unknown features get base rarity
    };
  }

  /// Log-scale scoring: punishes low stats harder than linear.
  /// [stat] is 0.0–1.0, [weight] is the max score, [k] controls curvature.
  static double _logScore(double stat, double weight, double k) {
    if (stat <= 0) return 0.0;
    return (log(1.0 + stat * k) / log(1.0 + k)) * weight;
  }

  // ---------------------------------------------------------------------------
  // Tier, title, and epilogue
  // ---------------------------------------------------------------------------

  /// Calculates the net bonus from surface feature interactions (synergies,
  /// cancellations, conditional effects). Restores the detailed feature
  /// interaction system from the original scoring, scaled to the 100K system.
  /// Old effects were 0–10 scale; we multiply by 500 for the 0–100K scale.
  static double _calculateFeatureInteractions(Planet planet, ShipSystems ship) {
    const scale = 500.0;
    final features = planet.surfaceFeatures.toSet();
    var total = 0.0;

    void add(double value) { total += value * scale; }

    // --- Cancellation flags ---
    final hasDangerous = features.contains('dangerous_fauna');
    final hasTameable = features.contains('tameable_fauna');
    final hasPoisonous = features.contains('poisonous_plants');
    final hasEdible = features.contains('edible_plants');
    final hasBeauty = features.contains('outstanding_beauty');
    final hasUgliness = features.contains('outstanding_ugliness');
    final hasRuins = features.contains('ancient_ruins');
    final hasMonuments = features.contains('monuments');

    // --- Plants & animals ---
    if (hasEdible) {
      var bonus = 1.5;
      if (hasPoisonous) bonus = 0.75; // Cancellation: halved
      add(bonus);
      if (planet.water > 0.6) add(bonus * 0.15); // wet world bonus
      if (planet.water < 0.2) add(-bonus * 0.2); // dry world penalty
    }
    if (features.contains('plant_life')) { add(0.5); add(0.5); }
    if (hasPoisonous && !hasEdible) add(-1.0); // population penalty
    if (hasTameable) { add(1.0); add(0.5); }
    if (hasDangerous) {
      var pop = -1.5;
      if (hasTameable) pop = -0.75;
      if (planet.biodiversity > 0.7) pop *= 2.0;
      add(pop);
      add(-0.5);
    }
    if (features.contains('unicellular_life')) add(0.5);

    // --- Caves ---
    if (features.contains('airtight_caves')) { add(1.0); add(0.5); }
    if (features.contains('insulated_caves')) { add(1.0); add(0.5); }

    // --- Beauty / ugliness ---
    if (hasBeauty && hasUgliness) {
      add(4.0); // comedy + drama
    } else if (hasBeauty) {
      add(2.0);
    } else if (hasUgliness) {
      add(-1.0);
    }

    // --- Ruins & monuments ---
    if (hasRuins) { add(2.0); add(1.0); if (ship.tech > 0.7) add(2.0); }
    if (hasMonuments) { add(1.5); add(0.5); }
    if (hasRuins && hasMonuments) add(1.0); // synergy
    if (hasPoisonous && planet.biodiversity > 0.7) add(1.0); // pharma

    // --- Rotation ---
    if (features.contains('high_rotation')) { add(-1.0); add(0.5); }
    if (features.contains('low_rotation')) {
      add(-1.0); add(-0.5);
      if (planet.biodiversity > 0.4) add(0.5);
    }

    // --- Geological ---
    if (features.contains('volcanic_activity')) {
      add(1.5); add(-1.5); add(-0.5);
      if (features.contains('insulated_caves')) add(1.0);
    }
    if (features.contains('tectonic_instability')) {
      add(1.0); add(-1.5); add(-1.0);
      if (features.contains('airtight_caves')) { add(0.5); add(0.5); }
    }

    // --- Atmospheric ---
    if (features.contains('electrical_storms')) {
      add(-1.0); add(-0.5);
      if (ship.tech > 0.7) { add(1.5); add(0.5); }
      if (hasBeauty) add(-1.0);
    }
    if (features.contains('toxic_spores')) {
      add(-1.5); add(-0.5);
      if (ship.tech > 0.7) add(0.75);
      if (planet.biodiversity > 0.5) add(0.5);
    }

    // --- Hydrological ---
    if (features.contains('deep_oceans')) {
      add(-1.0); add(-1.0); add(0.5);
      if (hasEdible) { add(1.5); add(0.5); }
    }
    if (features.contains('geothermal_vents')) {
      add(1.0); add(1.0); add(1.0);
      if (features.contains('deep_oceans')) { add(0.5); add(0.5); }
    }

    // --- Magnetosphere ---
    if (features.contains('strong_magnetosphere')) {
      add(-0.5); add(1.0);
      if (planet.radiation > 0.6) add(1.0);
    }
    if (features.contains('weak_magnetosphere')) {
      add(-1.0); add(-0.5); add(0.5);
      if (hasBeauty) add(1.5);
    }

    // --- Exotic life ---
    if (features.contains('megafauna')) {
      add(-1.0); add(-0.5); add(1.5);
      if (hasDangerous) add(-1.0);
      if (hasTameable) { add(1.0); add(0.5); }
    }
    if (features.contains('symbiotic_organisms')) {
      add(0.5); add(0.5);
      if (hasEdible) add(0.5);
      if (hasTameable) { add(0.5); add(0.5); }
      if (planet.biodiversity > 0.6) add(0.5);
    }

    // --- Anomaly ---
    if (features.contains('gravity_wells')) {
      add(-1.5); add(-0.5);
      add(ship.tech > 0.7 ? 2.0 : 0.5);
    }
    if (features.contains('subspace_echoes')) {
      add(2.0);
      if (hasRuins) { add(1.5); add(1.5); }
      if (hasMonuments) add(1.0);
    }

    // --- Life ---
    if (features.contains('bioluminescent_life')) { add(1.0); add(0.5); }
    if (features.contains('aquatic_megafauna')) {
      add(1.0); add(-0.5);
      if (features.contains('deep_oceans')) add(1.0);
    }
    if (features.contains('floating_kelp_forests')) { add(1.5); add(0.5); }
    if (features.contains('medicinal_flora')) { add(1.5); add(0.5); }

    // --- Terrain ---
    if (features.contains('floating_islands')) {
      add(2.0); add(1.0);
      if (hasBeauty) add(1.0);
    }
    if (features.contains('crystal_caverns')) {
      add(1.0); add(1.0);
      if (features.contains('singing_crystals')) add(1.5);
    }
    if (features.contains('lava_tubes')) { add(1.0); add(0.5); add(-0.5); }
    if (features.contains('ice_tunnels')) { add(1.0); add(0.5); add(0.5); }

    // --- Space debris ---
    if (features.contains('orbital_wreckage')) { add(1.5); add(1.0); add(-0.5); }
    if (features.contains('megastructural_fragments')) { add(3.0); add(1.5); add(-1.0); }
    if (features.contains('ancient_observatory')) { add(2.0); add(1.0); add(0.5); }

    // --- Environmental ---
    if (features.contains('extreme_seasons')) { add(-1.0); add(-0.5); add(0.5); }
    if (features.contains('cryovolcanism')) { add(1.0); add(-0.5); add(0.5); }

    // --- Rare/exotic ---
    if (features.contains('singing_crystals')) { add(2.0); add(0.5); }
    if (features.contains('fertile_soil')) { add(2.0); add(1.0); }
    if (features.contains('helium3_deposits')) { add(2.0); add(1.0); }
    if (features.contains('exotic_isotopes')) { add(1.5); add(1.0); add(-0.5); }

    // --- New features ---
    if (features.contains('perpetual_aurora')) {
      add(2.0); // culture/wonder
      // Synergy: aurora + outstanding beauty = iconic world.
      if (hasBeauty) add(2.0);
      // Synergy: aurora + weak magnetosphere = the aurora IS from the weak field.
      if (features.contains('weak_magnetosphere')) add(1.0);
    }
    if (features.contains('petrified_megaflora')) {
      add(1.0); add(0.5); // resources + culture
      // Synergy: petrified forest + ancient ruins = what killed everything?
      if (hasRuins) { add(1.5); add(1.0); } // mystery + forensic study
    }
    if (features.contains('underground_rivers')) {
      add(1.0); add(0.5); // water + construction
      // Synergy: underground rivers + airtight caves = underground civilization.
      if (features.contains('airtight_caves')) { add(1.0); add(0.5); }
      // Synergy: underground rivers + sinkhole fields = navigable sinkholes.
      if (features.contains('sinkhole_fields')) add(1.0); // partially cancels sinkhole penalty
      // Synergy: underground rivers + salt flats = hidden oasis.
      if (features.contains('salt_flats')) add(1.0); // water beneath the salt
    }
    if (features.contains('obsidian_plains')) {
      add(0.5); add(-0.5); // resources, -bio
      // Synergy: obsidian plains + crystal caverns = geological treasure.
      if (features.contains('crystal_caverns')) add(1.0);
    }
    if (features.contains('salt_flats')) {
      add(1.0); // mineral wealth
    }
    if (features.contains('carnivorous_flora')) {
      add(-1.5); add(0.5); // -population, +bio
      // Synergy: carnivorous + medicinal flora = dangerous pharma potential.
      if (features.contains('medicinal_flora')) add(1.5); // tech/pharma
      // Synergy: carnivorous flora + apex predator = everything here kills.
      if (features.contains('apex_predator')) add(-1.0); // stacking lethality
    }
    if (features.contains('ghost_cities')) {
      add(3.0); add(2.0); add(1.0); // massive tech + construction + culture
      // Synergy: ghost cities + ancient ruins.
      if (hasRuins) add(1.5);
      // Synergy: ghost cities + archive vaults = knowledge within the city.
      if (features.contains('archive_vaults')) { add(2.0); add(1.0); }
      // Synergy: ghost cities + subspace echoes = alien ghosts haunt the city.
      if (features.contains('subspace_echoes')) { add(2.0); add(1.5); }
    }
    if (features.contains('archive_vaults')) {
      add(2.5); add(1.0); // tech + culture
      if (ship.tech > 0.7) add(1.5); // high-tech unlocks more
      // Synergy: archive vaults + ancient ruins.
      if (hasRuins) add(1.5);
    }
    if (features.contains('sinkhole_fields')) {
      // Base penalty reduced if underground rivers present (handled above).
      final sinkPop = features.contains('underground_rivers') ? -0.5 : -1.0;
      final sinkCon = features.contains('underground_rivers') ? -0.75 : -1.5;
      add(sinkCon); add(sinkPop);
    }
    if (features.contains('apex_predator')) {
      add(-2.0); add(-0.5); add(1.5); // -population, -construction, +culture (legends)
      if (hasDangerous) add(-1.0); // stacks with dangerous fauna
      // Synergy: apex predator + megafauna = terrifying apex chain (pure negative).
      if (features.contains('megafauna')) { add(-2.0); add(-1.0); }
    }

    // --- Anti-synergies (negative feature interactions) ---

    // Toxic spores contaminate the food supply.
    if (features.contains('toxic_spores') && hasEdible) add(-1.0);
    // Tectonic instability + sinkholes = ground can't be trusted at all.
    if (features.contains('tectonic_instability') && features.contains('sinkhole_fields')) {
      add(-1.5); add(-0.5);
    }
    // Eruptions destroy floating island platforms.
    if (features.contains('volcanic_activity') && features.contains('floating_islands')) add(-1.0);
    // Lightning shatters the singing crystals.
    if (features.contains('electrical_storms') && features.contains('singing_crystals')) add(-1.0);
    // Toxic spores make medicinal flora harder to harvest safely.
    if (features.contains('toxic_spores') && features.contains('medicinal_flora')) add(-0.5);
    // Gravity wells pull floating islands down.
    if (features.contains('gravity_wells') && features.contains('floating_islands')) {
      add(-1.5); add(-1.0);
    }
    // Sinkholes on an ocean world flood catastrophically.
    if (features.contains('deep_oceans') && features.contains('sinkhole_fields')) add(-1.5);
    // Quakes crumble the ghost cities, destroying irreplaceable data.
    if (features.contains('tectonic_instability') && features.contains('ghost_cities')) add(-1.0);
    // Volcanic activity melts ice tunnel infrastructure.
    if (features.contains('volcanic_activity') && features.contains('ice_tunnels')) add(-1.0);
    // Radiation mutates toxic spores into something worse.
    if (features.contains('weak_magnetosphere') && features.contains('toxic_spores')) add(-1.0);
    // Glass floor collapses into sinkholes beneath.
    if (features.contains('obsidian_plains') && features.contains('sinkhole_fields')) {
      add(-1.0); add(-0.5);
    }
    // Seasonal hunger cycles make carnivorous flora more aggressive.
    if (features.contains('extreme_seasons') && features.contains('carnivorous_flora')) add(-0.5);
    // Ice geysers flood the lava tubes.
    if (features.contains('cryovolcanism') && features.contains('lava_tubes')) add(-0.5);
    // Coriolis + storms = planet-spanning hyperstorms.
    if (features.contains('high_rotation') && features.contains('electrical_storms')) {
      add(-1.0); add(-0.5);
    }

    return total;
  }

  static String _tierKeyFor(int score) {
    if (score >= 80000) return 'Golden Age';
    if (score >= 60000) return 'Thriving Colony';
    if (score >= 40000) return 'Survival';
    if (score >= 20000) return 'Struggling';
    if (score >= 5000) return 'Dire';
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
  // Government type — 10 types using ideology axes
  // ---------------------------------------------------------------------------

  static String _governmentKeyFor(ShipSystems ship, VoyageState voyage) {
    // 1. Tribal Council — cryopods < 0.15 (civilization collapse)
    if (ship.cryopods < 0.15) return 'Tribal Council';

    // 2. Fascist State — authorityAxis > 0.5 AND militaryAxis > 0.2
    if (voyage.authorityAxis > 0.5 && voyage.militaryAxis > 0.2) {
      return 'Fascist State';
    }

    // 3. Military Junta — militaryAxis > 0.4 AND authorityAxis > 0.2
    if (voyage.militaryAxis > 0.4 && voyage.authorityAxis > 0.2) {
      return 'Military Junta';
    }

    // 4. Theocracy — faithAxis > 0.4
    if (voyage.faithAxis > 0.4) return 'Theocracy';

    // 5. Corporate Oligarchy — economyAxis > 0.4
    if (voyage.economyAxis > 0.4) return 'Corporate Oligarchy';

    // 6. Commune — economyAxis < -0.4 AND authorityAxis < -0.2
    if (voyage.economyAxis < -0.4 && voyage.authorityAxis < -0.2) {
      return 'Commune';
    }

    // 7. Technocracy — ship.tech > ship.culture + 0.2
    if (ship.tech > ship.culture + 0.2) return 'Technocracy';

    // 8. Democracy — authorityAxis < -0.3 AND cultureAxis > 0.0
    if (voyage.authorityAxis < -0.3 && voyage.cultureAxis > 0.0) {
      return 'Democracy';
    }

    // 9. Republic — authorityAxis between -0.3 and 0.1 AND cultureAxis > -0.2
    if (voyage.authorityAxis >= -0.3 &&
        voyage.authorityAxis <= 0.1 &&
        voyage.cultureAxis > -0.2) {
      return 'Republic';
    }

    // 10. Autocracy — fallback
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
      case 'Fascist State':
        return l10n.ending_governmentFascistState;
      case 'Military Junta':
        return l10n.ending_governmentMilitaryJunta;
      case 'Theocracy':
        return l10n.ending_governmentTheocracy;
      case 'Corporate Oligarchy':
        return l10n.ending_governmentCorporateOligarchy;
      case 'Commune':
        return l10n.ending_governmentCommune;
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

    for (final moon in planet.moons) {
      if (moon.type == MoonType.unstable) {
        techScore -= 0.15 * moon.size;
      } else if (moon.type == MoonType.metalRich && planet.resources < 0.3) {
        techScore += 0.10 * moon.size;
      } else if (moon.type == MoonType.ice) {
        techScore += 0.03 * moon.size;
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

    for (final moon in planet.moons) {
      if (moon.type == MoonType.unstable) {
        score -= 0.08 * moon.size;
      } else if (moon.type == MoonType.metalRich && planet.resources < 0.3) {
        score += 0.07 * moon.size;
      } else if (moon.type == MoonType.ice) {
        score += 0.03 * moon.size;
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
  // Native relations — 7 types using ideology axes
  // ---------------------------------------------------------------------------

  static String _nativeRelationsKeyFor(Planet planet, VoyageState voyage) {
    // 1. None — presence < 0.1
    if (planet.nativePresence < 0.1) return 'None';

    // Ship culture nudges the disposition the natives perceive. Baseline
    // (1.0) is neutral; a well-maintained cultural archive (up to 1.5)
    // shifts up to +0.10, a depleted one down to −0.20. A maxed-culture
    // ship can turn a neutral planet (~0.4) into an Alliance candidate;
    // a destroyed culture system genuinely hurts.
    final cultureBonus = (voyage.ship.culture - 1.0) * 0.20;
    final disposition = (planet.nativeDisposition + cultureBonus).clamp(
      0.0,
      1.0,
    );

    // 2. Integrated — disposition > 0.7 AND militaryAxis < 0.0
    if (disposition > 0.7 && voyage.militaryAxis < 0.0) return 'Integrated';

    // 3. Alliance — disposition > 0.5 AND authorityAxis < 0.2
    if (disposition > 0.5 && voyage.authorityAxis < 0.2) return 'Alliance';

    // 4. Coexistence — disposition > 0.3
    if (disposition > 0.3) return 'Coexistence';

    // 5. Subjugation — militaryAxis > 0.3 AND authorityAxis > 0.3
    if (voyage.militaryAxis > 0.3 && voyage.authorityAxis > 0.3) {
      return 'Subjugation';
    }

    // 6. Tension — disposition 0.1 to 0.3
    if (disposition >= 0.1 && disposition <= 0.3) return 'Tension';

    // 7. Conflict — disposition < 0.1 AND presence > 0.3
    if (disposition < 0.1 && planet.nativePresence > 0.3) return 'Conflict';

    return 'Tension'; // fallback
  }

  static String _localizeNativeRelations(String key, AppLocalizations l10n) {
    switch (key) {
      case 'None':
        return l10n.ending_nativesNone;
      case 'Integrated':
        return l10n.ending_nativesIntegrated;
      case 'Alliance':
        return l10n.ending_nativesAlliance;
      case 'Coexistence':
        return l10n.ending_nativesCoexistence;
      case 'Subjugation':
        return l10n.ending_nativesSubjugation;
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

  static String _landscapeDescription(Planet planet, ShipSystems ship, AppLocalizations l10n, [bool landedOnMoon = false]) {
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

    // Temperature description.
    if (planet.temperature > 0.8) {
      buf.write('Surface temperatures are punishing. Exposed metal blisters in the heat, and settlers must time their work to the cooler hours. ');
    } else if (planet.temperature > 0.6) {
      buf.write('The climate runs hot, with long dry seasons and shimmering heat haze over the lowlands. ');
    } else if (planet.temperature < 0.15) {
      buf.write('The world is locked in deep cold, where breath crystallizes instantly and exposed skin freezes in minutes. ');
    } else if (planet.temperature < 0.3) {
      buf.write('Frost clings to every surface and long winters dominate the calendar. ');
    }
    // Mid-range (0.3-0.6) is comfortable — no special mention needed.

    // Radiation description.
    if (planet.radiation > 0.7) {
      buf.write('Background radiation is dangerously elevated. Settlers will need shielded habitats and limited surface exposure. ');
    } else if (planet.radiation > 0.5) {
      buf.write('Moderate radiation levels require careful monitoring and periodic shelter rotations. ');
    } else if (planet.radiation < 0.15) {
      buf.write('Radiation levels are remarkably low, allowing unrestricted surface activity. ');
    }

    // Biodiversity description.
    if (planet.biodiversity > 0.8) {
      buf.write('Life teems across every surface; the biosphere is dense, complex, and aggressively competitive. ');
    } else if (planet.biodiversity > 0.6) {
      buf.write('A rich web of native organisms covers much of the planet, promising both resources and challenges. ');
    } else if (planet.biodiversity < 0.15) {
      buf.write('The world is biologically barren: sterile rock and dust with no detectable organic activity. ');
    } else if (planet.biodiversity < 0.3) {
      buf.write('Only the hardiest organisms cling to existence here, scattered across an otherwise lifeless landscape. ');
    }

    // Moons in the sky.
    if (planet.moons.isNotEmpty) {
      buf.write(_moonLandscapeDescription(planet, l10n, landedOnMoon));
    }

    // Moon landing narrative.
    if (landedOnMoon && planet.bestHabitableMoon != null) {
      buf.write('The colony was founded on the surface of the habitable moon, '
          'where lighter gravity eases the burden of construction. ');
    }

    // Ring system.
    if (planet.rings != null) {
      buf.write(_ringLandscapeDescription(planet.rings!, l10n));
    }

    // (Common feature prose for rotation, geological, atmospheric, magnetosphere,
    // exotic life is now handled in the dedicated prose section below.)

    // Anomalies.
    if (planet.surfaceFeatures.contains('gravity_wells')) {
      buf.write(l10n.ending_landscapeGravityWells);
    }
    if (planet.surfaceFeatures.contains('subspace_echoes')) {
      buf.write(l10n.ending_landscapeSubspaceEchoes);
    }

    // Common biological features (skip if biosphere described as barren).
    if (planet.surfaceFeatures.contains('plant_life') && planet.biodiversity >= 0.15) {
      buf.write('Green growth carpets the lowlands, the first sign of a world that can sustain terrestrial crops. ');
    }
    if (planet.surfaceFeatures.contains('edible_plants')) {
      buf.write('Field teams confirmed edible plant species, a crucial head start on food independence. ');
    }
    if (planet.surfaceFeatures.contains('poisonous_plants')) {
      buf.write('Many native plants carry potent toxins; colonists will need to learn which species to avoid. ');
    }
    if (planet.surfaceFeatures.contains('unicellular_life')) {
      buf.write('Microbial life thrives in the soil and water, a building block for future ecological integration. ');
    }
    if (planet.surfaceFeatures.contains('dangerous_fauna')) {
      buf.write('Aggressive predators roam the surface, making armed escorts a necessity for any expedition. ');
    }
    if (planet.surfaceFeatures.contains('tameable_fauna')) {
      buf.write('Several native species show signs of domesticability: potential labor animals and companions. ');
    }

    // Common terrain features.
    if (planet.surfaceFeatures.contains('airtight_caves')) {
      buf.write('Networks of naturally sealed caves offer ready-made shelter, requiring minimal modification for habitation. ');
    }
    if (planet.surfaceFeatures.contains('insulated_caves')) {
      buf.write('Deep caves maintain stable temperatures year-round, natural refuges from the surface extremes. ');
    }

    // Common aesthetic features.
    if (planet.surfaceFeatures.contains('outstanding_beauty') && planet.surfaceFeatures.contains('outstanding_ugliness')) {
      buf.write('The landscape is a study in contrasts: breathtaking beauty beside nightmarish desolation, as if two worlds were stitched together at the seams. ');
    } else if (planet.surfaceFeatures.contains('outstanding_beauty')) {
      buf.write('The landscape is breathtaking, with sweeping vistas that lift the spirit and remind the colonists why they crossed the stars. ');
    } else if (planet.surfaceFeatures.contains('outstanding_ugliness')) {
      buf.write('The terrain is bleak and hostile to the eye. Twisted rock formations and discolored soil stretch to every horizon. ');
    }

    // Common archaeological features.
    if (planet.surfaceFeatures.contains('ancient_ruins')) {
      buf.write('Weathered alien ruins dot the landscape, their builders long vanished but their engineering still standing. ');
    }
    if (planet.surfaceFeatures.contains('monuments')) {
      buf.write('Towering monuments of unknown origin stand sentinel across the plains, carved from materials that resist all weathering. ');
    }

    // Rotation features.
    if (planet.surfaceFeatures.contains('high_rotation')) {
      buf.write('The planet spins rapidly. Days are short and Coriolis winds buffet anything above ground level. ');
    }
    if (planet.surfaceFeatures.contains('low_rotation')) {
      buf.write('The world turns slowly, with punishingly long days and nights that drive extreme thermal swings. ');
    }

    // Geological features.
    if (planet.surfaceFeatures.contains('volcanic_activity')) {
      buf.write('Active volcanoes paint the horizon with smoke and ash, the ground itself restless beneath the colony. ');
    }
    if (planet.surfaceFeatures.contains('tectonic_instability')) {
      buf.write('The ground shakes with regular tremors, a reminder that this world\'s crust is young and unsettled. ');
    }

    // Atmospheric features.
    if (planet.surfaceFeatures.contains('electrical_storms')) {
      buf.write('Lightning laces the sky with alarming frequency, electromagnetic interference a constant nuisance. ');
    }
    if (planet.surfaceFeatures.contains('toxic_spores')) {
      buf.write('Clouds of biological spores drift on the wind, requiring sealed habitats and filtered breathing equipment. ');
    }

    // Magnetosphere features.
    if (planet.surfaceFeatures.contains('strong_magnetosphere')) {
      buf.write('A powerful magnetosphere shields the surface, deflecting stellar radiation but playing havoc with compasses and unshielded electronics. ');
    }
    if (planet.surfaceFeatures.contains('weak_magnetosphere')) {
      buf.write('The planet\'s weak magnetic field offers little protection from stellar wind, but paints the sky with shimmering auroral displays. ');
    }

    // Hydrological features.
    if (planet.surfaceFeatures.contains('deep_oceans')) {
      buf.write('The planet is mostly ocean: vast, dark waters stretching to every horizon, with only scattered archipelagos breaking the surface. ');
    }
    if (planet.surfaceFeatures.contains('geothermal_vents')) {
      buf.write('Geothermal vents line the seabed and crater rims, pumping mineral-rich heat into the surrounding waters and soil. ');
    }

    // Exotic life features.
    if (planet.surfaceFeatures.contains('megafauna')) {
      buf.write('Enormous creatures roam the surface, dwarfing anything in Earth\'s fossil record and shaking the ground with every step. ');
    }
    if (planet.surfaceFeatures.contains('symbiotic_organisms')) {
      buf.write('A web of cooperative organisms permeates the ecosystem, linking species in mutual dependency. ');
    }

    // Life features.
    if (planet.surfaceFeatures.contains('bioluminescent_life')) {
      buf.write('At night, bioluminescent organisms set the landscape alight, turning forests and shorelines into rivers of cold fire. ');
    }
    if (planet.surfaceFeatures.contains('aquatic_megafauna')) {
      buf.write('Colossal creatures glide through the planet\'s waters, their shadows darkening the seabed for hundreds of metres. ');
    }
    if (planet.surfaceFeatures.contains('floating_kelp_forests')) {
      buf.write('Vast kelp forests sway in the currents, a sustainable bounty for the colony. ');
    }
    if (planet.surfaceFeatures.contains('medicinal_flora')) {
      buf.write('The native flora holds remarkable pharmaceutical potential, with compounds that could treat diseases Earth medicine never solved. ');
    }

    // Terrain features.
    if (planet.surfaceFeatures.contains('floating_islands')) {
      buf.write('Impossibly, stone formations the size of mountains drift through the atmosphere, trailing waterfalls into the void below. ');
    }
    if (planet.surfaceFeatures.contains('crystal_caverns')) {
      buf.write('Below the crust, crystal caverns stretch for kilometres, their faceted walls catching and multiplying even the faintest light. ');
    }
    if (planet.surfaceFeatures.contains('lava_tubes')) {
      buf.write('Networks of lava tubes wind beneath the surface, their smooth walls already shaped for habitation. ');
    }
    if (planet.surfaceFeatures.contains('ice_tunnels')) {
      buf.write('Tunnels carved through ancient ice provide insulation and a steady supply of meltwater. ');
    }

    // Space debris.
    if (planet.surfaceFeatures.contains('orbital_wreckage')) {
      buf.write('Debris from an ancient vessel orbits overhead, a graveyard in the sky. ');
    }
    if (planet.surfaceFeatures.contains('megastructural_fragments')) {
      buf.write('Colossal fragments of alien engineering litter the landscape like toppled pillars of a civilization that built on a planetary scale. ');
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
      buf.write('Rich, dark soil stretches to the horizon: a farmer\'s paradise. ');
    }
    if (planet.surfaceFeatures.contains('helium3_deposits')) {
      buf.write('Helium-3 deposits in the regolith promise near-limitless fusion fuel. ');
    }
    if (planet.surfaceFeatures.contains('exotic_isotopes')) {
      buf.write('The ground is laced with exotic isotopes, a treasure trove for researchers. ');
    }

    // New features.
    if (planet.surfaceFeatures.contains('perpetual_aurora') && !planet.surfaceFeatures.contains('weak_magnetosphere')) {
      buf.write('Shimmering curtains of light dance endlessly across the sky, painting every night in shifting color. ');
    }
    if (planet.surfaceFeatures.contains('petrified_megaflora')) {
      buf.write('Towering stone trunks of petrified trees stand like gravestones of a long-dead biosphere. ');
    }
    if (planet.surfaceFeatures.contains('underground_rivers')) {
      buf.write('Hidden rivers flow beneath the surface, carving vast cavern networks accessible through sinkholes. ');
    }
    if (planet.surfaceFeatures.contains('obsidian_plains')) {
      buf.write('Vast plains of volcanic glass stretch to the horizon, razor-sharp and mirror-smooth. ');
    }
    if (planet.surfaceFeatures.contains('salt_flats')) {
      buf.write('Blinding white salt flats mark where ancient seas evaporated, leaving mineral wealth behind. ');
    }
    if (planet.surfaceFeatures.contains('carnivorous_flora')) {
      buf.write('The plant life here is aggressive. Tendrils snap at anything that moves too slowly. ');
    }
    if (planet.surfaceFeatures.contains('ghost_cities')) {
      buf.write('An empty alien metropolis stands perfectly preserved, every door open, every street silent, as if the population simply walked away. ');
    }
    if (planet.surfaceFeatures.contains('archive_vaults')) {
      buf.write('Sealed vaults beneath the surface hold alien data in formats no human has seen before. ');
    }
    if (planet.surfaceFeatures.contains('sinkhole_fields')) {
      buf.write('The ground is treacherous; sinkholes open without warning, swallowing anything above. ');
    }
    if (planet.surfaceFeatures.contains('apex_predator')) {
      buf.write('A single apex predator dominates the ecosystem, a terrifying creature that even megafauna avoid. ');
    }

    // --- Feature interaction prose (synergies & anti-synergies) ---

    // Biological interactions.
    if (planet.surfaceFeatures.contains('edible_plants') && planet.surfaceFeatures.contains('deep_oceans')) {
      buf.write('Coastal aquaculture thrives where edible plants meet the shallows, feeding the colony from sea and land alike. ');
    }
    if (planet.surfaceFeatures.contains('symbiotic_organisms') && planet.surfaceFeatures.contains('edible_plants')) {
      buf.write('Symbiotic organisms amplify crop yields, wrapping root systems in nutrient-rich networks. ');
    }
    if (planet.surfaceFeatures.contains('symbiotic_organisms') && planet.surfaceFeatures.contains('tameable_fauna')) {
      buf.write('The symbiotic organisms bond with domesticated animals, making them stronger and more docile. ');
    }
    if (planet.surfaceFeatures.contains('dangerous_fauna') && planet.surfaceFeatures.contains('megafauna')) {
      buf.write('The megafauna attract apex hunters, creating a food chain where colonists are far from the top. ');
    }
    if (planet.surfaceFeatures.contains('tameable_fauna') && planet.surfaceFeatures.contains('megafauna')) {
      buf.write('Some of the megafauna prove tameable: massive beasts of burden that can haul materials no machine could move. ');
    }
    if (planet.surfaceFeatures.contains('poisonous_plants') && planet.biodiversity > 0.7) {
      buf.write('The toxic flora, studied carefully, yields compounds of extraordinary pharmaceutical value. ');
    }
    if (planet.surfaceFeatures.contains('toxic_spores') && planet.surfaceFeatures.contains('edible_plants')) {
      buf.write('Airborne spores contaminate the crops, forcing the colony into sealed greenhouse agriculture. ');
    }
    if (planet.surfaceFeatures.contains('toxic_spores') && planet.surfaceFeatures.contains('medicinal_flora')) {
      buf.write('Harvesting the medicinal plants means braving the toxic spore clouds, a dangerous but necessary risk. ');
    }
    if (planet.surfaceFeatures.contains('carnivorous_flora') && planet.surfaceFeatures.contains('medicinal_flora')) {
      buf.write('The most potent medicines grow alongside the most dangerous plants, requiring hazmat-suited collection teams. ');
    }
    if (planet.surfaceFeatures.contains('carnivorous_flora') && planet.surfaceFeatures.contains('apex_predator')) {
      buf.write('Between the hunting plants and the apex predator, nothing on this world is safe outside fortified walls. ');
    }
    if (planet.surfaceFeatures.contains('extreme_seasons') && planet.surfaceFeatures.contains('carnivorous_flora')) {
      buf.write('Seasonal hunger cycles drive the carnivorous flora into frenzied aggression during lean months. ');
    }

    // Geological interactions.
    if (planet.surfaceFeatures.contains('volcanic_activity') && planet.surfaceFeatures.contains('insulated_caves')) {
      buf.write('The insulated caves provide shelter from eruptions, their thick walls holding firm against the heat. ');
    }
    if (planet.surfaceFeatures.contains('tectonic_instability') && planet.surfaceFeatures.contains('airtight_caves')) {
      buf.write('Underground cities in the sealed caves ride out the quakes, their flexible joints absorbing the tremors. ');
    }
    if (planet.surfaceFeatures.contains('volcanic_activity') && planet.surfaceFeatures.contains('floating_islands')) {
      buf.write('Eruptions threaten the floating platforms, molten debris arcing upward to batter the drifting islands. ');
    }
    if (planet.surfaceFeatures.contains('volcanic_activity') && planet.surfaceFeatures.contains('ice_tunnels')) {
      buf.write('Volcanic heat is slowly melting the ice tunnel network, collapsing passages that took millennia to form. ');
    }
    if (planet.surfaceFeatures.contains('tectonic_instability') && planet.surfaceFeatures.contains('sinkhole_fields')) {
      buf.write('Tremors trigger cascading sinkholes, swallowing entire grid squares of mapped terrain overnight. ');
    }
    if (planet.surfaceFeatures.contains('tectonic_instability') && planet.surfaceFeatures.contains('ghost_cities')) {
      buf.write('The alien city is slowly crumbling under the quakes, irreplaceable architecture lost with every tremor. ');
    }
    if (planet.surfaceFeatures.contains('obsidian_plains') && planet.surfaceFeatures.contains('crystal_caverns')) {
      buf.write('Beneath the obsidian surface lies a geological treasure: crystal caverns formed in the volcanic aftermath. ');
    }
    if (planet.surfaceFeatures.contains('obsidian_plains') && planet.surfaceFeatures.contains('sinkhole_fields')) {
      buf.write('The glass-smooth obsidian conceals sinkholes beneath, a lethal trap for the unwary. ');
    }
    if (planet.surfaceFeatures.contains('cryovolcanism') && planet.surfaceFeatures.contains('lava_tubes')) {
      buf.write('Ice geysers periodically flood the lava tube shelters, forcing evacuations and costly repairs. ');
    }

    // Hydrological interactions.
    if (planet.surfaceFeatures.contains('deep_oceans') && planet.surfaceFeatures.contains('geothermal_vents')) {
      buf.write('Geothermal vents on the ocean floor create thriving ecosystems and natural hot springs along the coast. ');
    }
    if (planet.surfaceFeatures.contains('deep_oceans') && planet.surfaceFeatures.contains('sinkhole_fields')) {
      buf.write('Coastal sinkholes breach into the ocean, flooding lowland settlements with catastrophic surges. ');
    }
    if (planet.surfaceFeatures.contains('underground_rivers') && planet.surfaceFeatures.contains('airtight_caves')) {
      buf.write('Underground rivers connect the sealed cave systems, enabling subterranean civilization with running water. ');
    }
    if (planet.surfaceFeatures.contains('underground_rivers') && planet.surfaceFeatures.contains('sinkhole_fields')) {
      buf.write('The rivers that carved the sinkholes also make them navigable. What was a hazard becomes a highway. ');
    }
    if (planet.surfaceFeatures.contains('underground_rivers') && planet.surfaceFeatures.contains('salt_flats')) {
      buf.write('Beneath the salt crust, hidden rivers carry fresh water: an oasis for those who know where to drill. ');
    }

    // Atmospheric interactions.
    if (planet.surfaceFeatures.contains('electrical_storms') && ship.tech > 0.7) {
      buf.write('Advanced lightning harvesters convert the constant storms into a reliable power grid. ');
    }
    if (planet.surfaceFeatures.contains('electrical_storms') && planet.surfaceFeatures.contains('outstanding_beauty')) {
      buf.write('The storms, for all their danger, paint the sky with violent beauty that no colonist can look away from. ');
    }
    if (planet.surfaceFeatures.contains('electrical_storms') && planet.surfaceFeatures.contains('singing_crystals')) {
      buf.write('Lightning strikes shatter the singing crystals, silencing their harmonics one storm at a time. ');
    }
    if (planet.surfaceFeatures.contains('high_rotation') && planet.surfaceFeatures.contains('electrical_storms')) {
      buf.write('The rapid spin feeds the storms into planet-spanning hyperstorms that circle the equator endlessly. ');
    }
    if (planet.surfaceFeatures.contains('weak_magnetosphere') && planet.surfaceFeatures.contains('toxic_spores')) {
      buf.write('Stellar radiation mutates the spores between seasons, making each bloom more unpredictable than the last. ');
    }
    if (planet.surfaceFeatures.contains('weak_magnetosphere') && planet.surfaceFeatures.contains('outstanding_beauty')) {
      buf.write('The weak magnetic field lets stellar wind pour in unchecked, igniting auroral displays of staggering intensity across every latitude. ');
    }

    // Anomaly interactions.
    if (planet.surfaceFeatures.contains('subspace_echoes') && planet.surfaceFeatures.contains('ancient_ruins')) {
      buf.write('The ruins resonate with subspace echoes, preserving alien memories that surface as vivid hallucinations. ');
    }
    if (planet.surfaceFeatures.contains('subspace_echoes') && planet.surfaceFeatures.contains('monuments')) {
      buf.write('The monuments amplify the subspace echoes, turning the landscape into a living memorial to a vanished people. ');
    }
    if (planet.surfaceFeatures.contains('gravity_wells') && planet.surfaceFeatures.contains('floating_islands')) {
      buf.write('The gravity wells are dragging the floating islands down. Some have already crashed, leaving craters where wonders once drifted. ');
    }
    if (planet.surfaceFeatures.contains('gravity_wells') && ship.tech > 0.7) {
      buf.write('The gravity anomalies, properly harnessed, could revolutionize physics. The colony\'s scientists are already taking measurements. ');
    }

    // Archaeological interactions.
    if (planet.surfaceFeatures.contains('ancient_ruins') && planet.surfaceFeatures.contains('monuments')) {
      buf.write('The ruins and monuments together tell the story of a civilization that built grandly and vanished completely. ');
    }
    if (planet.surfaceFeatures.contains('ancient_ruins') && ship.tech > 0.7) {
      buf.write('High-tech analysis of the ruins is unlocking alien engineering principles decades ahead of human science. ');
    }
    if (planet.surfaceFeatures.contains('ghost_cities') && planet.surfaceFeatures.contains('archive_vaults')) {
      buf.write('Within the ghost city\'s walls, sealed archive vaults contain a civilization\'s worth of knowledge, waiting to be deciphered. ');
    }
    if (planet.surfaceFeatures.contains('ghost_cities') && planet.surfaceFeatures.contains('subspace_echoes')) {
      buf.write('The empty city echoes with subspace whispers. The ghosts of its builders, some colonists say, still walk the streets. ');
    }
    if (planet.surfaceFeatures.contains('petrified_megaflora') && planet.surfaceFeatures.contains('ancient_ruins')) {
      buf.write('Petrified forests surround the ruins, both fossilized at the same moment. Whatever killed this world, it was sudden. ');
    }

    // New feature interactions.
    if (planet.surfaceFeatures.contains('perpetual_aurora') && planet.surfaceFeatures.contains('outstanding_beauty')) {
      buf.write('The perpetual aurora crowns the already stunning landscape, making this one of the most visually magnificent worlds ever catalogued. ');
    }
    if (planet.surfaceFeatures.contains('perpetual_aurora') && planet.surfaceFeatures.contains('weak_magnetosphere')) {
      buf.write('The aurora is a direct consequence of the weak magnetosphere: beautiful, but a constant reminder of the radiation filtering through. ');
    }
    if (planet.surfaceFeatures.contains('archive_vaults') && planet.surfaceFeatures.contains('ancient_ruins')) {
      buf.write('The ruins contain sealed vaults of alien data: a library buried beneath the rubble of its civilization. ');
    }
    if (planet.surfaceFeatures.contains('apex_predator') && planet.surfaceFeatures.contains('megafauna')) {
      buf.write('The apex predator hunts the megafauna, a terrifying display of power that makes all other life (including colonists) irrelevant prey. ');
    }
    if (planet.surfaceFeatures.contains('apex_predator') && planet.surfaceFeatures.contains('dangerous_fauna')) {
      buf.write('Even the dangerous predators avoid the apex species, creating an eerie silence wherever it hunts. ');
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

    if (hasIce) {
      buf.write("Ice harvested from the frozen moon supplements the colony's water supply. ");
    }

    return buf.toString();
  }

  /// Generates landscape text describing the ring system.
  static String _ringLandscapeDescription(RingSystem rings, AppLocalizations l10n) {
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
      case 'Fascist State':
        return l10n.ending_govSentenceFascistState(planetName);
      case 'Military Junta':
        return l10n.ending_govSentenceMilitaryJunta(planetName);
      case 'Theocracy':
        return l10n.ending_govSentenceTheocracy(planetName);
      case 'Corporate Oligarchy':
        return l10n.ending_govSentenceCorporateOligarchy(planetName);
      case 'Commune':
        return l10n.ending_govSentenceCommune(planetName);
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
      'Alliance' => l10n.ending_nativeSentenceAlliance(planetName),
      'Subjugation' => l10n.ending_nativeSentenceSubjugation(planetName),
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
