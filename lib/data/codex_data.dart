// Static reference of all planet features and their scoring effects.
//
// Effects are derived from EndingCalculator and represent the additive
// score modifiers each feature contributes. Conditional/multiplicative
// effects (e.g. ship.tech > 0.7) are noted in comments but the base case
// is recorded in [effects].

/// A single codex entry describing a planet feature and its scoring effects.
class CodexEntry {
  final String key;

  /// 'surface', 'moon', or 'ring'.
  final String category;

  /// Score category key → base additive modifier.
  ///
  /// Keys match the score breakdown: 'resources', 'culture', 'atmosphere',
  /// 'temperature', 'technology', 'construction', 'population', 'water',
  /// 'landing'.
  final Map<String, double> effects;

  /// Keys of features that create combo/synergy bonuses when both are present.
  final List<String> synergies;

  const CodexEntry({
    required this.key,
    required this.category,
    this.effects = const {},
    this.synergies = const [],
  });
}

/// All codex entries keyed by feature ID.
const codexEntries = <String, CodexEntry>{
  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Flora
  // ═══════════════════════════════════════════════════════════════════════

  'plant_life': CodexEntry(
    key: 'plant_life',
    category: 'surface',
    effects: {'culture': 0.5, 'atmosphere': 0.5},
    synergies: ['medicinal_flora'],
  ),

  'edible_plants': CodexEntry(
    key: 'edible_plants',
    category: 'surface',
    effects: {'resources': 1.5},
    synergies: ['poisonous_plants', 'deep_oceans', 'symbiotic_organisms'],
  ),

  'poisonous_plants': CodexEntry(
    key: 'poisonous_plants',
    category: 'surface',
    effects: {'population': -1.0},
    synergies: ['edible_plants'],
    // edible_plants present → population penalty removed, but edible bonus halved.
    // biodiversity > 0.7 → +1.0 technology (pharma potential).
  ),

  'medicinal_flora': CodexEntry(
    key: 'medicinal_flora',
    category: 'surface',
    effects: {'population': 1.5, 'technology': 0.5},
    synergies: ['plant_life'],
  ),

  'fertile_soil': CodexEntry(
    key: 'fertile_soil',
    category: 'surface',
    effects: {'resources': 2.0, 'population': 1.0},
  ),

  'carnivorous_flora': CodexEntry(
    key: 'carnivorous_flora',
    category: 'surface',
    effects: {'population': -1.5, 'technology': 0.5},
    synergies: ['medicinal_flora', 'apex_predator'],
    // medicinal_flora → +1.5 technology (dangerous pharma potential).
    // apex_predator → -1.0 population (stacking lethality).
    // extreme_seasons → -0.5 population (hunger cycles drive aggression).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Fauna
  // ═══════════════════════════════════════════════════════════════════════

  'unicellular_life': CodexEntry(
    key: 'unicellular_life',
    category: 'surface',
    effects: {'technology': 0.5},
  ),

  'dangerous_fauna': CodexEntry(
    key: 'dangerous_fauna',
    category: 'surface',
    effects: {'population': -1.5, 'construction': -0.5},
    synergies: ['tameable_fauna', 'megafauna'],
    // tameable_fauna → population penalty halved to -0.75.
    // biodiversity > 0.7 → population penalty doubled.
  ),

  'tameable_fauna': CodexEntry(
    key: 'tameable_fauna',
    category: 'surface',
    effects: {'resources': 1.0, 'culture': 0.5},
    synergies: ['dangerous_fauna', 'megafauna', 'symbiotic_organisms'],
    // dangerous_fauna present → halves dangerous_fauna population penalty.
  ),

  'megafauna': CodexEntry(
    key: 'megafauna',
    category: 'surface',
    effects: {'population': -1.0, 'construction': -0.5, 'culture': 1.5},
    synergies: ['dangerous_fauna', 'tameable_fauna'],
    // dangerous_fauna → extra -1.0 population (apex predator hell).
    // tameable_fauna → +1.0 construction, +0.5 resources (beast of burden).
  ),

  'symbiotic_organisms': CodexEntry(
    key: 'symbiotic_organisms',
    category: 'surface',
    effects: {'population': 0.5, 'resources': 0.5},
    synergies: ['edible_plants', 'tameable_fauna'],
    // edible_plants → +0.5 resources.
    // tameable_fauna → +0.5 culture, +0.5 resources.
    // biodiversity > 0.6 → +0.5 technology.
  ),

  'bioluminescent_life': CodexEntry(
    key: 'bioluminescent_life',
    category: 'surface',
    effects: {'culture': 1.0, 'technology': 0.5},
  ),

  'aquatic_megafauna': CodexEntry(
    key: 'aquatic_megafauna',
    category: 'surface',
    effects: {'resources': 1.0, 'construction': -0.5},
    synergies: ['deep_oceans'],
    // deep_oceans → +1.0 resources (thriving marine economy).
  ),

  'floating_kelp_forests': CodexEntry(
    key: 'floating_kelp_forests',
    category: 'surface',
    effects: {'resources': 1.5, 'water': 0.5},
  ),

  'apex_predator': CodexEntry(
    key: 'apex_predator',
    category: 'surface',
    effects: {'population': -2.0, 'construction': -0.5, 'culture': 1.5},
    synergies: ['dangerous_fauna', 'megafauna', 'carnivorous_flora'],
    // dangerous_fauna → -1.0 population (stacks).
    // megafauna → -2.0 population, -1.0 construction (terrifying apex chain).
    // carnivorous_flora → -1.0 population (stacking lethality).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Terrain
  // ═══════════════════════════════════════════════════════════════════════

  'airtight_caves': CodexEntry(
    key: 'airtight_caves',
    category: 'surface',
    effects: {'construction': 1.0, 'atmosphere': 0.5},
    synergies: ['tectonic_instability'],
    // tectonic_instability → +0.5 construction, +0.5 population.
  ),

  'insulated_caves': CodexEntry(
    key: 'insulated_caves',
    category: 'surface',
    effects: {'construction': 1.0, 'temperature': 0.5},
    synergies: ['volcanic_activity'],
    // volcanic_activity → +1.0 construction (partially cancels volcano penalty).
  ),

  'floating_islands': CodexEntry(
    key: 'floating_islands',
    category: 'surface',
    effects: {'culture': 2.0, 'construction': 1.0},
    synergies: ['outstanding_beauty'],
    // outstanding_beauty → +1.0 culture (iconic vistas).
  ),

  'crystal_caverns': CodexEntry(
    key: 'crystal_caverns',
    category: 'surface',
    effects: {'resources': 1.0, 'culture': 1.0},
    synergies: ['singing_crystals'],
    // singing_crystals → +1.5 culture (harmonic caves).
  ),

  'lava_tubes': CodexEntry(
    key: 'lava_tubes',
    category: 'surface',
    effects: {'construction': 1.0, 'atmosphere': 0.5, 'population': -0.5},
  ),

  'ice_tunnels': CodexEntry(
    key: 'ice_tunnels',
    category: 'surface',
    effects: {'construction': 1.0, 'atmosphere': 0.5, 'water': 0.5},
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Aesthetics
  // ═══════════════════════════════════════════════════════════════════════

  'outstanding_beauty': CodexEntry(
    key: 'outstanding_beauty',
    category: 'surface',
    effects: {'culture': 2.0},
    synergies: ['outstanding_ugliness', 'floating_islands', 'weak_magnetosphere'],
    // outstanding_ugliness present → culture becomes 4.0 instead (comedy & drama).
    // electrical_storms → -1.0 culture.
    // weak_magnetosphere → +1.5 culture (aurora world).
    // floating_islands → +1.0 culture.
  ),

  'outstanding_ugliness': CodexEntry(
    key: 'outstanding_ugliness',
    category: 'surface',
    effects: {'culture': -1.0},
    synergies: ['outstanding_beauty'],
    // outstanding_beauty present → culture becomes 4.0 instead.
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Ancient
  // ═══════════════════════════════════════════════════════════════════════

  'ancient_ruins': CodexEntry(
    key: 'ancient_ruins',
    category: 'surface',
    effects: {'technology': 2.0, 'culture': 1.0},
    synergies: ['monuments', 'subspace_echoes'],
    // monuments → +1.0 culture.
    // ship.tech > 0.7 → technology bonus doubles (+2.0 extra).
    // subspace_echoes → +1.5 culture, +1.5 technology.
  ),

  'monuments': CodexEntry(
    key: 'monuments',
    category: 'surface',
    effects: {'culture': 1.5, 'technology': 0.5},
    synergies: ['ancient_ruins', 'subspace_echoes'],
    // ancient_ruins → +1.0 culture.
    // subspace_echoes → +1.0 culture.
  ),

  'ancient_observatory': CodexEntry(
    key: 'ancient_observatory',
    category: 'surface',
    effects: {'technology': 2.0, 'culture': 1.0, 'landing': 0.5},
  ),

  'petrified_megaflora': CodexEntry(
    key: 'petrified_megaflora',
    category: 'surface',
    effects: {'resources': 1.0, 'culture': 0.5},
    synergies: ['ancient_ruins'],
    // ancient_ruins → +1.5 culture, +1.0 technology (forensic mystery).
  ),

  'ghost_cities': CodexEntry(
    key: 'ghost_cities',
    category: 'surface',
    effects: {'technology': 3.0, 'construction': 2.0, 'culture': 1.0},
    synergies: ['ancient_ruins', 'archive_vaults', 'subspace_echoes'],
    // ancient_ruins → +1.5 culture.
    // archive_vaults → +2.0 technology, +1.0 culture (knowledge within).
    // subspace_echoes → +2.0 culture, +1.5 technology (alien ghosts).
    // tectonic_instability → -1.0 construction (quakes crumble the city).
  ),

  'archive_vaults': CodexEntry(
    key: 'archive_vaults',
    category: 'surface',
    effects: {'technology': 2.5, 'culture': 1.0},
    synergies: ['ancient_ruins', 'ghost_cities'],
    // ship.tech > 0.7 → +1.5 technology (high-tech unlocks more).
    // ancient_ruins → +1.5 culture.
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Geological
  // ═══════════════════════════════════════════════════════════════════════

  'volcanic_activity': CodexEntry(
    key: 'volcanic_activity',
    category: 'surface',
    effects: {'resources': 1.5, 'construction': -1.5, 'temperature': -0.5},
    synergies: ['insulated_caves'],
    // insulated_caves → +1.0 construction (partially cancels penalty).
  ),

  'tectonic_instability': CodexEntry(
    key: 'tectonic_instability',
    category: 'surface',
    effects: {'resources': 1.0, 'construction': -1.5, 'population': -1.0},
    synergies: ['airtight_caves'],
    // airtight_caves → +0.5 construction, +0.5 population.
  ),

  'cryovolcanism': CodexEntry(
    key: 'cryovolcanism',
    category: 'surface',
    effects: {'resources': 1.0, 'construction': -0.5, 'water': 0.5},
  ),

  'sinkhole_fields': CodexEntry(
    key: 'sinkhole_fields',
    category: 'surface',
    effects: {'construction': -1.5, 'population': -1.0},
    synergies: ['underground_rivers'],
    // underground_rivers → construction penalty softens to -0.75, population to -0.5 (navigable sinkholes).
    // tectonic_instability → -1.5 construction, -0.5 population (cascading collapses).
    // deep_oceans → -1.5 (coastal flooding).
    // obsidian_plains → -1.0 construction, -0.5 population (hidden glass traps).
  ),

  'obsidian_plains': CodexEntry(
    key: 'obsidian_plains',
    category: 'surface',
    effects: {'resources': 0.5, 'population': -0.5},
    synergies: ['crystal_caverns'],
    // crystal_caverns → +1.0 resources (geological treasure).
  ),

  'salt_flats': CodexEntry(
    key: 'salt_flats',
    category: 'surface',
    effects: {'resources': 1.0},
    synergies: ['underground_rivers'],
    // underground_rivers → +1.0 water (hidden oasis beneath the salt).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Atmospheric
  // ═══════════════════════════════════════════════════════════════════════

  'electrical_storms': CodexEntry(
    key: 'electrical_storms',
    category: 'surface',
    effects: {'technology': -1.0, 'construction': -0.5},
    synergies: ['outstanding_beauty'],
    // ship.tech > 0.7 → +1.5 technology (net +0.5), +0.5 resources.
    // outstanding_beauty → -1.0 culture.
  ),

  'toxic_spores': CodexEntry(
    key: 'toxic_spores',
    category: 'surface',
    effects: {'population': -1.5, 'atmosphere': -0.5},
    // ship.tech > 0.7 → +0.75 population.
    // biodiversity > 0.5 → +0.5 technology.
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Hydrological
  // ═══════════════════════════════════════════════════════════════════════

  'deep_oceans': CodexEntry(
    key: 'deep_oceans',
    category: 'surface',
    effects: {'resources': -1.0, 'construction': -1.0, 'culture': 0.5},
    synergies: ['edible_plants', 'geothermal_vents', 'aquatic_megafauna'],
    // edible_plants → +1.5 resources, +0.5 population (aquaculture).
    // geothermal_vents → +0.5 resources, +0.5 technology.
    // aquatic_megafauna → +1.0 resources.
  ),

  'geothermal_vents': CodexEntry(
    key: 'geothermal_vents',
    category: 'surface',
    effects: {'temperature': 1.0, 'resources': 1.0, 'technology': 1.0},
    synergies: ['deep_oceans'],
    // deep_oceans → +0.5 resources, +0.5 technology.
  ),

  'underground_rivers': CodexEntry(
    key: 'underground_rivers',
    category: 'surface',
    effects: {'water': 1.0, 'construction': 0.5},
    synergies: ['airtight_caves', 'sinkhole_fields', 'salt_flats'],
    // airtight_caves → +1.0 water, +0.5 construction (underground civilization).
    // sinkhole_fields → partially cancels the sinkhole penalty (navigable sinkholes).
    // salt_flats → +1.0 water (hidden oasis).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Magnetosphere
  // ═══════════════════════════════════════════════════════════════════════

  'strong_magnetosphere': CodexEntry(
    key: 'strong_magnetosphere',
    category: 'surface',
    effects: {'technology': -0.5, 'population': 1.0},
    // planet.radiation > 0.6 → +1.0 atmosphere.
  ),

  'weak_magnetosphere': CodexEntry(
    key: 'weak_magnetosphere',
    category: 'surface',
    effects: {'population': -1.0, 'atmosphere': -0.5, 'culture': 0.5},
    synergies: ['outstanding_beauty'],
    // outstanding_beauty → +1.5 culture (aurora world).
  ),

  'perpetual_aurora': CodexEntry(
    key: 'perpetual_aurora',
    category: 'surface',
    effects: {'culture': 2.0},
    synergies: ['outstanding_beauty', 'weak_magnetosphere'],
    // outstanding_beauty → +2.0 culture (iconic world).
    // weak_magnetosphere → +1.0 culture (the aurora IS from the weak field).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Rotation
  // ═══════════════════════════════════════════════════════════════════════

  'high_rotation': CodexEntry(
    key: 'high_rotation',
    category: 'surface',
    effects: {'construction': -1.0, 'atmosphere': 0.5},
  ),

  'low_rotation': CodexEntry(
    key: 'low_rotation',
    category: 'surface',
    effects: {'temperature': -1.0, 'population': -0.5},
    // biodiversity > 0.4 → +0.5 culture.
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Space debris
  // ═══════════════════════════════════════════════════════════════════════

  'orbital_wreckage': CodexEntry(
    key: 'orbital_wreckage',
    category: 'surface',
    effects: {'technology': 1.5, 'resources': 1.0, 'construction': -0.5},
    synergies: ['megastructural_fragments'],
  ),

  'megastructural_fragments': CodexEntry(
    key: 'megastructural_fragments',
    category: 'surface',
    effects: {'technology': 3.0, 'construction': 1.5, 'culture': -1.0},
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Anomaly
  // ═══════════════════════════════════════════════════════════════════════

  'gravity_wells': CodexEntry(
    key: 'gravity_wells',
    category: 'surface',
    effects: {'construction': -1.5, 'technology': 0.5, 'population': -0.5},
    // ship.tech > 0.7 → technology becomes +2.0 instead of +0.5.
  ),

  'subspace_echoes': CodexEntry(
    key: 'subspace_echoes',
    category: 'surface',
    effects: {'culture': 2.0},
    synergies: ['ancient_ruins', 'monuments'],
    // ancient_ruins → +1.5 culture, +1.5 technology (alien memory palace).
    // monuments → +1.0 culture (living memorials).
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Environmental
  // ═══════════════════════════════════════════════════════════════════════

  'extreme_seasons': CodexEntry(
    key: 'extreme_seasons',
    category: 'surface',
    effects: {'construction': -1.0, 'population': -0.5, 'resources': 0.5},
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Surface features — Rare/Exotic
  // ═══════════════════════════════════════════════════════════════════════

  'singing_crystals': CodexEntry(
    key: 'singing_crystals',
    category: 'surface',
    effects: {'culture': 2.0, 'technology': 0.5},
    synergies: ['crystal_caverns'],
    // crystal_caverns → +1.5 culture (harmonic caves).
  ),

  'helium3_deposits': CodexEntry(
    key: 'helium3_deposits',
    category: 'surface',
    effects: {'technology': 2.0, 'resources': 1.0},
  ),

  'exotic_isotopes': CodexEntry(
    key: 'exotic_isotopes',
    category: 'surface',
    effects: {'technology': 1.5, 'resources': 1.0, 'population': -0.5},
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Moon types
  // ═══════════════════════════════════════════════════════════════════════

  'moon_barren': CodexEntry(
    key: 'moon_barren',
    category: 'moon',
    effects: {},
  ),

  'moon_metalRich': CodexEntry(
    key: 'moon_metalRich',
    category: 'moon',
    // Multiplicative: tech ×1.03–1.10, construction ×1.02–1.08 depending on
    // planet resources. Diminishing returns with multiple metal-rich moons.
    // Represented here as rough additive equivalent for display.
    effects: {'technology': 1.0, 'construction': 1.0},
  ),

  'moon_unstable': CodexEntry(
    key: 'moon_unstable',
    category: 'moon',
    // Scaled by moon.size. Base values at size 1.0.
    effects: {'technology': -2.0, 'construction': -1.0},
  ),

  'moon_habitable': CodexEntry(
    key: 'moon_habitable',
    category: 'moon',
    effects: {'culture': 1.0},
    // Landing on habitable moon adds tech and culture scaled by habitability.
    // Water bonus if moon water > 0.6.
  ),

  'moon_ice': CodexEntry(
    key: 'moon_ice',
    category: 'moon',
    // Scaled by moon.size. Water bonus inversely proportional to planet water.
    // Base values at size 1.0, planet water 0.0 (maximum benefit).
    effects: {'water': 2.0, 'construction': 0.5, 'technology': 0.3},
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // Ring types
  // ═══════════════════════════════════════════════════════════════════════

  'ring_dust': CodexEntry(
    key: 'ring_dust',
    category: 'ring',
    // Scaled by ring density.
    effects: {'culture': 1.0},
  ),

  'ring_ice': CodexEntry(
    key: 'ring_ice',
    category: 'ring',
    effects: {'culture': 1.5, 'water': 0.5},
  ),

  'ring_rocky': CodexEntry(
    key: 'ring_rocky',
    category: 'ring',
    effects: {'resources': 1.0, 'construction': 0.5},
  ),

  'ring_metallic': CodexEntry(
    key: 'ring_metallic',
    category: 'ring',
    effects: {'resources': 1.5, 'technology': 1.0},
  ),
};
