import 'package:stellar_broadcast/l10n/app_localizations.dart';

/// Maps the English tier string returned by [Planet.tier] to a localized label.
String localizedTier(AppLocalizations l10n, String tier) {
  switch (tier) {
    case 'Utopia':
      return l10n.planet_tierUtopia;
    case 'Paradise':
      return l10n.planet_tierParadise;
    case 'Habitable':
      return l10n.planet_tierHabitable;
    case 'Harsh':
      return l10n.planet_tierHarsh;
    case 'Hostile':
      return l10n.planet_tierHostile;
    case 'Death World':
      return l10n.planet_tierDeathWorld;
    default:
      return tier;
  }
}

/// Maps a snake_case surface-feature key to its localized label.
String localizedSurfaceFeature(AppLocalizations l10n, String featureKey) {
  switch (featureKey) {
    case 'plant_life':
      return l10n.planet_featurePlantLife;
    case 'edible_plants':
      return l10n.planet_featureEdiblePlants;
    case 'poisonous_plants':
      return l10n.planet_featurePoisonousPlants;
    case 'unicellular_life':
      return l10n.planet_featureUnicellularLife;
    case 'dangerous_fauna':
      return l10n.planet_featureDangerousFauna;
    case 'tameable_fauna':
      return l10n.planet_featureTameableFauna;
    case 'airtight_caves':
      return l10n.planet_featureAirtightCaves;
    case 'insulated_caves':
      return l10n.planet_featureInsulatedCaves;
    case 'barren_moon':
      return l10n.planet_featureBarrenMoon;
    case 'metal_rich_moon':
      return l10n.planet_featureMetalRichMoon;
    case 'unstable_moon':
      return l10n.planet_featureUnstableMoon;
    case 'outstanding_beauty':
      return l10n.planet_featureOutstandingBeauty;
    case 'outstanding_ugliness':
      return l10n.planet_featureOutstandingUgliness;
    case 'ancient_ruins':
      return l10n.planet_featureAncientRuins;
    case 'monuments':
      return l10n.planet_featureMonuments;
    case 'high_rotation':
      return l10n.planet_featureRapidRotation;
    case 'low_rotation':
      return l10n.planet_featureSlowRotation;
    case 'volcanic_activity':
      return l10n.planet_featureVolcanicActivity;
    case 'tectonic_instability':
      return l10n.planet_featureTectonicInstability;
    case 'electrical_storms':
      return l10n.planet_featureElectricalStorms;
    case 'toxic_spores':
      return l10n.planet_featureToxicSpores;
    case 'deep_oceans':
      return l10n.planet_featureDeepOceans;
    case 'geothermal_vents':
      return l10n.planet_featureGeothermalVents;
    case 'strong_magnetosphere':
      return l10n.planet_featureStrongMagnetosphere;
    case 'weak_magnetosphere':
      return l10n.planet_featureWeakMagnetosphere;
    case 'megafauna':
      return l10n.planet_featureMegafauna;
    case 'symbiotic_organisms':
      return l10n.planet_featureSymbioticOrganisms;
    case 'gravity_wells':
      return l10n.planet_featureGravityWells;
    case 'subspace_echoes':
      return l10n.planet_featureSubspaceEchoes;
    case 'bioluminescent_life':
      return l10n.planet_featureBioluminescentLife;
    case 'aquatic_megafauna':
      return l10n.planet_featureAquaticMegafauna;
    case 'floating_islands':
      return l10n.planet_featureFloatingIslands;
    case 'crystal_caverns':
      return l10n.planet_featureCrystalCaverns;
    case 'lava_tubes':
      return l10n.planet_featureLavaTubes;
    case 'ice_tunnels':
      return l10n.planet_featureIceTunnels;
    case 'orbital_wreckage':
      return l10n.planet_featureOrbitalWreckage;
    case 'megastructural_fragments':
      return l10n.planet_featureMegastructuralFragments;
    case 'ancient_observatory':
      return l10n.planet_featureAncientObservatory;
    case 'extreme_seasons':
      return l10n.planet_featureExtremeSeasons;
    case 'cryovolcanism':
      return l10n.planet_featureCryovolcanism;
    case 'floating_kelp_forests':
      return l10n.planet_featureFloatingKelpForests;
    case 'singing_crystals':
      return l10n.planet_featureSingingCrystals;
    case 'fertile_soil':
      return l10n.planet_featureFertileSoil;
    case 'helium3_deposits':
      return l10n.planet_featureHelium3Deposits;
    case 'exotic_isotopes':
      return l10n.planet_featureExoticIsotopes;
    case 'medicinal_flora':
      return l10n.planet_featureMedicinalFlora;
    default:
      return featureKey;
  }
}
