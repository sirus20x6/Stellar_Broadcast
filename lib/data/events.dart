import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/models/event.dart';

final Map<String, List<GameEvent>> _eventPoolCache = {};

List<GameEvent> getEventPool(AppLocalizations l10n) {
  return _eventPoolCache.putIfAbsent(
    l10n.localeName,
    () => buildEventPool(l10n),
  );
}

/// Master pool of narrative events. At least 30 unique events with 2-3
/// choices each, covering space hazards, crew dilemmas, discoveries,
/// system failures, alien encounters, and moral choices.
List<GameEvent> buildEventPool(AppLocalizations l10n) => [
  // ═══════════════════════════════════════════════════════════════════════
  // SPACE HAZARDS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'asteroid_field',
    title: l10n.event_asteroidField_title,
    narrative: l10n.event_asteroidField_narrative,
    choices: [
      EventChoice(
        text: l10n.event_asteroidField_choice0_text,
        outcome: l10n.event_asteroidField_choice0_outcome,
        shipEffects: {'hull': -0.15, 'nav': 0.05},
      ),
      EventChoice(
        text: l10n.event_asteroidField_choice1_text,
        outcome: l10n.event_asteroidField_choice1_outcome,
        shipEffects: {'nav': -0.10, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_asteroidField_choice2_text,
        outcome: l10n.event_asteroidField_choice2_outcome,
        shipEffects: {'tech': -0.12, 'hull': 0.02},
        planetModifiers: {'resources': 0.05},
        economyDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_asteroidField_choice3_text,
        outcome: l10n.event_asteroidField_choice3_outcome,
        shipEffects: {'hull': -0.05},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'solar_flare',
    title: l10n.event_solarFlare_title,
    narrative: l10n.event_solarFlare_narrative,
    choices: [
      EventChoice(
        text: l10n.event_solarFlare_choice0_text,
        outcome: l10n.event_solarFlare_choice0_outcome,
        shipEffects: {'shields': -0.08, 'tech': -0.15, 'scanners': -0.08},
      ),
      EventChoice(
        text: l10n.event_solarFlare_choice1_text,
        outcome: l10n.event_solarFlare_choice1_outcome,
        shipEffects: {'cryopods': 0.05, 'hull': -0.12},
      ),
      EventChoice(
        text: l10n.event_solarFlare_choice2_text,
        outcome: l10n.event_solarFlare_choice2_outcome,
        shipEffects: {'hull': -0.08, 'culture': -0.08},
      ),
      EventChoice(
        text: l10n.event_solarFlare_choice3_text,
        outcome: l10n.event_solarFlare_choice3_outcome,
        shipEffects: {'atmosphericScanner': -0.03, 'tech': -0.05},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'nebula_passage',
    title: l10n.event_nebulaPassage_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_nebulaPassage_narrative,
    choices: [
      EventChoice(
        text: l10n.event_nebulaPassage_choice0_text,
        outcome: l10n.event_nebulaPassage_choice0_outcome,
        shipEffects: {'tech': 0.10, 'atmosphericScanner': -0.15},
      ),
      EventChoice(
        text: l10n.event_nebulaPassage_choice1_text,
        outcome: l10n.event_nebulaPassage_choice1_outcome,
        shipEffects: {'tech': 0.05, 'atmosphericScanner': -0.05, 'nav': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'micro_meteorite',
    title: l10n.event_microMeteorite_title,
    narrative: l10n.event_microMeteorite_narrative,
    choices: [
      EventChoice(
        text: l10n.event_microMeteorite_choice0_text,
        outcome: l10n.event_microMeteorite_choice0_outcome,
        shipEffects: {'hull': -0.05, 'nav': -0.10},
      ),
      EventChoice(
        text: l10n.event_microMeteorite_choice1_text,
        outcome: l10n.event_microMeteorite_choice1_outcome,
        shipEffects: {'hull': 0.03, 'tech': -0.12},
      ),
      EventChoice(
        text: l10n.event_microMeteorite_choice2_text,
        outcome: l10n.event_microMeteorite_choice2_outcome,
        shipEffects: {'hull': -0.03, 'nav': -0.03},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'gravity_well',
    title: l10n.event_gravityWell_title,
    narrative: l10n.event_gravityWell_narrative,
    choices: [
      EventChoice(
        text: l10n.event_gravityWell_choice0_text,
        outcome: l10n.event_gravityWell_choice0_outcome,
        shipEffects: {'nav': -0.08, 'hull': -0.06},
      ),
      EventChoice(
        text: l10n.event_gravityWell_choice1_text,
        outcome: l10n.event_gravityWell_choice1_outcome,
        shipEffects: {'nav': 0.08, 'cryopods': -0.10, 'hull': -0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // CREW DILEMMAS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'crew_unrest',
    category: EventCategory.early,
    title: l10n.event_crewUnrest_title,
    narrative: l10n.event_crewUnrest_narrative,
    choices: [
      EventChoice(
        text: l10n.event_crewUnrest_choice0_text,
        outcome: l10n.event_crewUnrest_choice0_outcome,
        shipEffects: {'culture': 0.12, 'cryopods': -0.10, 'tech': -0.05},
        colonistDelta: 50,
        authorityDelta: -0.05,
      ),
      EventChoice(
        text: l10n.event_crewUnrest_choice1_text,
        outcome: l10n.event_crewUnrest_choice1_outcome,
        shipEffects: {'culture': -0.12},
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_crewUnrest_choice2_text,
        outcome: l10n.event_crewUnrest_choice2_outcome,
        shipEffects: {'culture': 0.05, 'cryopods': -0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'stowaway',
    title: l10n.event_stowaway_title,
    category: EventCategory.early,
    narrative: l10n.event_stowaway_narrative,
    choices: [
      EventChoice(
        text: l10n.event_stowaway_choice0_text,
        outcome: l10n.event_stowaway_choice0_outcome,
        shipEffects: {'cryopods': 0.08, 'tech': 0.05, 'culture': -0.05},
        colonistDelta: 1,
        cultureDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_stowaway_choice1_text,
        outcome: l10n.event_stowaway_choice1_outcome,
        shipEffects: {'culture': 0.03, 'cryopods': 0.03},
      ),
      EventChoice(
        text: l10n.event_stowaway_choice2_text,
        outcome: l10n.event_stowaway_choice2_outcome,
        shipEffects: {'culture': -0.08, 'cryopods': -0.03},
        authorityDelta: 0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'mutiny_brewing',
    title: l10n.event_mutinyBrewing_title,
    narrative: l10n.event_mutinyBrewing_narrative,
    choices: [
      EventChoice(
        text: l10n.event_mutinyBrewing_choice0_text,
        outcome: l10n.event_mutinyBrewing_choice0_outcome,
        shipEffects: {'culture': -0.10, 'shields': -0.05},
        authorityDelta: 0.10,
      ),
      EventChoice(
        text: l10n.event_mutinyBrewing_choice1_text,
        outcome: l10n.event_mutinyBrewing_choice1_outcome,
        shipEffects: {'culture': -0.05, 'nav': 0.03},
        authorityDelta: -0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'cultural_schism',
    title: l10n.event_culturalSchism_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_culturalSchism_narrative,
    choices: [
      EventChoice(
        text: l10n.event_culturalSchism_choice0_text,
        outcome: l10n.event_culturalSchism_choice0_outcome,
        shipEffects: {'culture': 0.05},
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_culturalSchism_choice1_text,
        outcome: l10n.event_culturalSchism_choice1_outcome,
        shipEffects: {'culture': -0.03, 'tech': 0.03},
      ),
      EventChoice(
        text: l10n.event_culturalSchism_choice2_text,
        outcome: l10n.event_culturalSchism_choice2_outcome,
        shipEffects: {'culture': -0.08},
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'birth_in_space',
    category: EventCategory.early,
    title: l10n.event_birthInSpace_title,
    narrative: l10n.event_birthInSpace_narrative,
    choices: [
      EventChoice(
        text: l10n.event_birthInSpace_choice0_text,
        outcome: l10n.event_birthInSpace_choice0_outcome,
        shipEffects: {'culture': 0.15, 'cryopods': -0.05},
        colonistDelta: 1,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_birthInSpace_choice1_text,
        outcome: l10n.event_birthInSpace_choice1_outcome,
        shipEffects: {'culture': 0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // DISCOVERIES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'derelict_ship',
    title: l10n.event_derelictShip_title,
    narrative: l10n.event_derelictShip_narrative,
    choices: [
      EventChoice(
        text: l10n.event_derelictShip_choice0_text,
        outcome: l10n.event_derelictShip_choice0_outcome,
        shipEffects: {
          'hull': 0.10,
          'tech': 0.08,
          'culture': -0.08,
          'constructors': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_derelictShip_choice1_text,
        outcome: l10n.event_derelictShip_choice1_outcome,
        shipEffects: {'mineralScanner': 0.05, 'nav': 0.05},
      ),
      EventChoice(
        text: l10n.event_derelictShip_choice2_text,
        outcome: l10n.event_derelictShip_choice2_outcome,
        shipEffects: {'culture': 0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'alien_probe',
    title: l10n.event_alienProbe_title,
    category: EventCategory.rare,
    narrative: l10n.event_alienProbe_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienProbe_choice0_text,
        outcome: l10n.event_alienProbe_choice0_outcome,
        shipEffects: {'tech': 0.15, 'atmosphericScanner': 0.08, 'hull': -0.05},
      ),
      EventChoice(
        text: l10n.event_alienProbe_choice1_text,
        outcome: l10n.event_alienProbe_choice1_outcome,
        shipEffects: {'nav': 0.12, 'atmosphericScanner': 0.10},
        planetModifiers: {'anomaly': 0.10},
      ),
      EventChoice(
        text: l10n.event_alienProbe_choice2_text,
        outcome: l10n.event_alienProbe_choice2_outcome,
        shipEffects: {'hull': 0.03, 'culture': -0.10, 'tech': -0.05},
        militaryDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'ancient_beacon',
    title: l10n.event_ancientBeacon_title,
    category: EventCategory.rare,
    narrative: l10n.event_ancientBeacon_narrative,
    choices: [
      EventChoice(
        text: l10n.event_ancientBeacon_choice0_text,
        outcome: l10n.event_ancientBeacon_choice0_outcome,
        shipEffects: {'nav': -0.08, 'gravimetricScanner': 0.10},
        planetModifiers: {'anomaly': 0.15, 'resources': 0.10},
      ),
      EventChoice(
        text: l10n.event_ancientBeacon_choice1_text,
        outcome: l10n.event_ancientBeacon_choice1_outcome,
        shipEffects: {'nav': 0.05, 'culture': 0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'frozen_garden',
    title: l10n.event_frozenGarden_title,
    narrative: l10n.event_frozenGarden_narrative,
    choices: [
      EventChoice(
        text: l10n.event_frozenGarden_choice0_text,
        outcome: l10n.event_frozenGarden_choice0_outcome,
        shipEffects: {'tech': -0.05},
        planetModifiers: {'biodiversity': 0.15, 'anomaly': 0.05},
      ),
      EventChoice(
        text: l10n.event_frozenGarden_choice1_text,
        outcome: l10n.event_frozenGarden_choice1_outcome,
        shipEffects: {'lifeSignsScanner': 0.05},
        planetModifiers: {'biodiversity': 0.05},
      ),
      EventChoice(
        text: l10n.event_frozenGarden_choice2_text,
        outcome: l10n.event_frozenGarden_choice2_outcome,
        shipEffects: {'culture': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'data_cache',
    title: l10n.event_dataCache_title,
    narrative: l10n.event_dataCache_narrative,
    choices: [
      EventChoice(
        text: l10n.event_dataCache_choice0_text,
        outcome: l10n.event_dataCache_choice0_outcome,
        shipEffects: {'tech': 0.12, 'nav': -0.05, 'constructors': 0.05},
        planetModifiers: {'atmosphere': 0.08, 'water': 0.05},
      ),
      EventChoice(
        text: l10n.event_dataCache_choice1_text,
        outcome: l10n.event_dataCache_choice1_outcome,
        shipEffects: {'atmosphericScanner': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // SYSTEM FAILURES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'hull_breach',
    title: l10n.event_hullBreach_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_hullBreach_narrative,
    choices: [
      EventChoice(
        text: l10n.event_hullBreach_choice0_text,
        outcome: l10n.event_hullBreach_choice0_outcome,
        shipEffects: {'hull': -0.15, 'culture': 0.10},
        colonistDelta: -3,
      ),
      EventChoice(
        text: l10n.event_hullBreach_choice1_text,
        outcome: l10n.event_hullBreach_choice1_outcome,
        shipEffects: {'hull': -0.08, 'culture': 0.02},
      ),
      EventChoice(
        text: l10n.event_hullBreach_choice2_text,
        outcome: l10n.event_hullBreach_choice2_outcome,
        shipEffects: {'hull': -0.04, 'culture': 0.05},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'nav_malfunction',
    title: l10n.event_navMalfunction_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_navMalfunction_narrative,
    choices: [
      EventChoice(
        text: l10n.event_navMalfunction_choice0_text,
        outcome: l10n.event_navMalfunction_choice0_outcome,
        shipEffects: {'nav': -0.08, 'gravimetricScanner': -0.03},
      ),
      EventChoice(
        text: l10n.event_navMalfunction_choice1_text,
        outcome: l10n.event_navMalfunction_choice1_outcome,
        shipEffects: {'nav': -0.12},
      ),
      EventChoice(
        text: l10n.event_navMalfunction_choice2_text,
        outcome: l10n.event_navMalfunction_choice2_outcome,
        shipEffects: {'nav': -0.05, 'culture': 0.05, 'tech': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'cryopod_failure',
    title: l10n.event_cryopodFailure_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_cryopodFailure_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cryopodFailure_choice0_text,
        outcome: l10n.event_cryopodFailure_choice0_outcome,
        shipEffects: {'cryopods': -0.05, 'tech': -0.10},
        colonistDelta: -5,
      ),
      EventChoice(
        text: l10n.event_cryopodFailure_choice1_text,
        outcome: l10n.event_cryopodFailure_choice1_outcome,
        shipEffects: {'cryopods': -0.15, 'culture': 0.10},
        colonistDelta: 200,
      ),
    ],
  ),

  GameEvent(
    id: 'scanner_burnout',
    title: l10n.event_scannerBurnout_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_scannerBurnout_narrative,
    choices: [
      EventChoice(
        text: l10n.event_scannerBurnout_choice0_text,
        outcome: l10n.event_scannerBurnout_choice0_outcome,
        shipEffects: {
          'atmosphericScanner': 0.10,
          'tech': -0.15,
          'constructors': -0.08,
        },
      ),
      EventChoice(
        text: l10n.event_scannerBurnout_choice1_text,
        outcome: l10n.event_scannerBurnout_choice1_outcome,
        shipEffects: {'atmosphericScanner': -0.08, 'tech': -0.03},
      ),
      EventChoice(
        text: l10n.event_scannerBurnout_choice2_text,
        outcome: l10n.event_scannerBurnout_choice2_outcome,
        shipEffects: {'atmosphericScanner': 0.05},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'power_fluctuation',
    title: l10n.event_powerFluctuation_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_powerFluctuation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_powerFluctuation_choice0_text,
        outcome: l10n.event_powerFluctuation_choice0_outcome,
        shipEffects: {'tech': 0.08, 'culture': -0.15},
      ),
      EventChoice(
        text: l10n.event_powerFluctuation_choice1_text,
        outcome: l10n.event_powerFluctuation_choice1_outcome,
        shipEffects: {'tech': 0.05, 'atmosphericScanner': -0.12},
      ),
      EventChoice(
        text: l10n.event_powerFluctuation_choice2_text,
        outcome: l10n.event_powerFluctuation_choice2_outcome,
        shipEffects: {'tech': 0.03, 'hull': -0.08, 'constructors': -0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ALIEN ENCOUNTERS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'alien_signal',
    title: l10n.event_alienSignal_title,
    narrative: l10n.event_alienSignal_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienSignal_choice0_text,
        outcome: l10n.event_alienSignal_choice0_outcome,
        shipEffects: {'nav': 0.10, 'atmosphericScanner': 0.08, 'culture': 0.05},
      ),
      EventChoice(
        text: l10n.event_alienSignal_choice1_text,
        outcome: l10n.event_alienSignal_choice1_outcome,
        shipEffects: {'atmosphericScanner': 0.05, 'nav': 0.05},
      ),
      EventChoice(
        text: l10n.event_alienSignal_choice2_text,
        outcome: l10n.event_alienSignal_choice2_outcome,
        shipEffects: {'culture': -0.05, 'atmosphericScanner': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'living_nebula',
    title: l10n.event_livingNebula_title,
    category: EventCategory.rare,
    narrative: l10n.event_livingNebula_narrative,
    choices: [
      EventChoice(
        text: l10n.event_livingNebula_choice0_text,
        outcome: l10n.event_livingNebula_choice0_outcome,
        shipEffects: {'lifeSignsScanner': 0.15, 'hull': -0.08, 'tech': 0.05},
        planetModifiers: {'anomaly': 0.10},
      ),
      EventChoice(
        text: l10n.event_livingNebula_choice1_text,
        outcome: l10n.event_livingNebula_choice1_outcome,
        shipEffects: {'culture': 0.08, 'nav': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'alien_ruins',
    title: l10n.event_alienRuins_title,
    narrative: l10n.event_alienRuins_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienRuins_choice0_text,
        outcome: l10n.event_alienRuins_choice0_outcome,
        shipEffects: {
          'tech': 0.15,
          'cryopods': -0.08,
          'hull': -0.05,
          'constructors': 0.10,
        },
        planetModifiers: {'resources': 0.08},
      ),
      EventChoice(
        text: l10n.event_alienRuins_choice1_text,
        outcome: l10n.event_alienRuins_choice1_outcome,
        shipEffects: {'hull': 0.08, 'mineralScanner': 0.03},
      ),
      EventChoice(
        text: l10n.event_alienRuins_choice2_text,
        outcome: l10n.event_alienRuins_choice2_outcome,
        shipEffects: {'culture': 0.10},
      ),
    ],
  ),

  GameEvent(
    id: 'symbiotic_spores',
    title: l10n.event_symbioticSpores_title,
    narrative: l10n.event_symbioticSpores_narrative,
    choices: [
      EventChoice(
        text: l10n.event_symbioticSpores_choice0_text,
        outcome: l10n.event_symbioticSpores_choice0_outcome,
        shipEffects: {'hull': 0.12, 'culture': -0.05},
        planetModifiers: {'biodiversity': 0.08},
      ),
      EventChoice(
        text: l10n.event_symbioticSpores_choice1_text,
        outcome: l10n.event_symbioticSpores_choice1_outcome,
        shipEffects: {'tech': 0.05, 'hull': -0.03},
        planetModifiers: {'biodiversity': 0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'whale_song',
    title: l10n.event_whaleSong_title,
    category: EventCategory.rare,
    narrative: l10n.event_whaleSong_narrative,
    choices: [
      EventChoice(
        text: l10n.event_whaleSong_choice0_text,
        outcome: l10n.event_whaleSong_choice0_outcome,
        shipEffects: {'culture': 0.15},
        faithDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_whaleSong_choice1_text,
        outcome: l10n.event_whaleSong_choice1_outcome,
        shipEffects: {'nav': 0.08, 'tech': 0.05},
      ),
      EventChoice(
        text: l10n.event_whaleSong_choice2_text,
        outcome: l10n.event_whaleSong_choice2_outcome,
        shipEffects: {'culture': 0.12, 'lifeSignsScanner': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MORAL CHOICES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'distress_signal',
    title: l10n.event_distressSignal_title,
    narrative: l10n.event_distressSignal_narrative,
    choices: [
      EventChoice(
        text: l10n.event_distressSignal_choice0_text,
        outcome: l10n.event_distressSignal_choice0_outcome,
        shipEffects: {'cryopods': -0.05, 'tech': 0.10, 'culture': 0.08},
        colonistDelta: 50,
        cultureDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_distressSignal_choice1_text,
        outcome: l10n.event_distressSignal_choice1_outcome,
        shipEffects: {'cryopods': -0.05, 'culture': 0.05, 'nav': 0.03},
        colonistDelta: 0,
      ),
      EventChoice(
        text: l10n.event_distressSignal_choice2_text,
        outcome: l10n.event_distressSignal_choice2_outcome,
        shipEffects: {'culture': -0.08},
        authorityDelta: 0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'ai_awakening',
    title: l10n.event_aiAwakening_title,
    category: EventCategory.rare,
    narrative: l10n.event_aiAwakening_narrative,
    choices: [
      EventChoice(
        text: l10n.event_aiAwakening_choice0_text,
        outcome: l10n.event_aiAwakening_choice0_outcome,
        shipEffects: {'nav': 0.12, 'tech': 0.10, 'culture': -0.05},
        authorityDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_aiAwakening_choice1_text,
        outcome: l10n.event_aiAwakening_choice1_outcome,
        shipEffects: {'nav': 0.08, 'tech': 0.05},
      ),
      EventChoice(
        text: l10n.event_aiAwakening_choice2_text,
        outcome: l10n.event_aiAwakening_choice2_outcome,
        shipEffects: {'nav': -0.10, 'culture': -0.08, 'tech': -0.05},
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'genetic_modification',
    title: l10n.event_geneticModification_title,
    narrative: l10n.event_geneticModification_narrative,
    choices: [
      EventChoice(
        text: l10n.event_geneticModification_choice0_text,
        outcome: l10n.event_geneticModification_choice0_outcome,
        shipEffects: {'cryopods': -0.05, 'tech': -0.08, 'culture': -0.05},
        planetModifiers: {'atmosphere': 0.08, 'gravity': 0.05},
        colonistDelta: -10,
        faithDelta: -0.03,
      ),
      EventChoice(
        text: l10n.event_geneticModification_choice1_text,
        outcome: l10n.event_geneticModification_choice1_outcome,
        shipEffects: {'cryopods': 0.05, 'culture': -0.08},
        planetModifiers: {'atmosphere': 0.03},
      ),
      EventChoice(
        text: l10n.event_geneticModification_choice2_text,
        outcome: l10n.event_geneticModification_choice2_outcome,
        shipEffects: {'culture': 0.08},
        faithDelta: 0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'triage_decision',
    title: l10n.event_triageDecision_title,
    narrative: l10n.event_triageDecision_narrative,
    choices: [
      EventChoice(
        text: l10n.event_triageDecision_choice0_text,
        outcome: l10n.event_triageDecision_choice0_outcome,
        shipEffects: {'cryopods': -0.05, 'culture': -0.05},
        colonistDelta: -8,
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_triageDecision_choice1_text,
        outcome: l10n.event_triageDecision_choice1_outcome,
        shipEffects: {'tech': -0.08, 'cryopods': -0.03},
        colonistDelta: -3,
      ),
      EventChoice(
        text: l10n.event_triageDecision_choice2_text,
        outcome: l10n.event_triageDecision_choice2_outcome,
        shipEffects: {'tech': -0.05, 'culture': 0.05},
        colonistDelta: -10,
        authorityDelta: -0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'earth_signal',
    title: l10n.event_earthSignal_title,
    narrative: l10n.event_earthSignal_narrative,
    choices: [
      EventChoice(
        text: l10n.event_earthSignal_choice0_text,
        outcome: l10n.event_earthSignal_choice0_outcome,
        shipEffects: {'atmosphericScanner': 0.08, 'nav': -0.05},
        planetModifiers: {'anomaly': -0.15},
      ),
      EventChoice(
        text: l10n.event_earthSignal_choice1_text,
        outcome: l10n.event_earthSignal_choice1_outcome,
        shipEffects: {'culture': 0.05},
      ),
      EventChoice(
        text: l10n.event_earthSignal_choice2_text,
        outcome: l10n.event_earthSignal_choice2_outcome,
        shipEffects: {'culture': -0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'resource_theft',
    title: l10n.event_resourceTheft_title,
    narrative: l10n.event_resourceTheft_narrative,
    choices: [
      EventChoice(
        text: l10n.event_resourceTheft_choice0_text,
        outcome: l10n.event_resourceTheft_choice0_outcome,
        shipEffects: {'culture': -0.08, 'cryopods': 0.05},
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_resourceTheft_choice1_text,
        outcome: l10n.event_resourceTheft_choice1_outcome,
        shipEffects: {'culture': -0.03, 'cryopods': 0.03},
        authorityDelta: -0.03,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MIXED / UNIQUE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'time_dilation',
    title: l10n.event_timeDilation_title,
    category: EventCategory.rare,
    narrative: l10n.event_timeDilation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_timeDilation_choice0_text,
        outcome: l10n.event_timeDilation_choice0_outcome,
        shipEffects: {'hull': 0.08, 'cryopods': 0.08, 'nav': -0.10},
      ),
      EventChoice(
        text: l10n.event_timeDilation_choice1_text,
        outcome: l10n.event_timeDilation_choice1_outcome,
        shipEffects: {'tech': -0.08, 'nav': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'dream_plague',
    title: l10n.event_dreamPlague_title,
    category: EventCategory.rare,
    narrative: l10n.event_dreamPlague_narrative,
    choices: [
      EventChoice(
        text: l10n.event_dreamPlague_choice0_text,
        outcome: l10n.event_dreamPlague_choice0_outcome,
        shipEffects: {'nav': -0.10, 'culture': 0.10},
        nextPlanetModifiers: {
          'atmosphere': 0.12,
          'water': 0.10,
          'nativePresence': 0.80,
          'nativeDisposition': 0.50,
        },
        faithDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_dreamPlague_choice1_text,
        outcome: l10n.event_dreamPlague_choice1_outcome,
        shipEffects: {
          'lifeSignsScanner': 0.08,
          'tech': 0.05,
          'cryopods': -0.05,
        },
      ),
      EventChoice(
        text: l10n.event_dreamPlague_choice2_text,
        outcome: l10n.event_dreamPlague_choice2_outcome,
        shipEffects: {'cryopods': -0.10, 'culture': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'black_hole_lens',
    title: l10n.event_blackHoleLens_title,
    category: EventCategory.rare,
    narrative: l10n.event_blackHoleLens_narrative,
    choices: [
      EventChoice(
        text: l10n.event_blackHoleLens_choice0_text,
        outcome: l10n.event_blackHoleLens_choice0_outcome,
        shipEffects: {'gravimetricScanner': 0.15, 'hull': -0.10, 'nav': -0.05},
        planetModifiers: {'water': 0.05, 'atmosphere': 0.05},
      ),
      EventChoice(
        text: l10n.event_blackHoleLens_choice1_text,
        outcome: l10n.event_blackHoleLens_choice1_outcome,
        shipEffects: {'gravimetricScanner': 0.05, 'culture': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'seed_vault',
    title: l10n.event_seedVault_title,
    narrative: l10n.event_seedVault_narrative,
    choices: [
      EventChoice(
        text: l10n.event_seedVault_choice0_text,
        outcome: l10n.event_seedVault_choice0_outcome,
        shipEffects: {'cryopods': 0.08, 'culture': -0.10},
        planetModifiers: {'resources': 0.05},
      ),
      EventChoice(
        text: l10n.event_seedVault_choice1_text,
        outcome: l10n.event_seedVault_choice1_outcome,
        shipEffects: {'culture': 0.12, 'tech': -0.05},
        planetModifiers: {'biodiversity': 0.05},
      ),
      EventChoice(
        text: l10n.event_seedVault_choice2_text,
        outcome: l10n.event_seedVault_choice2_outcome,
        shipEffects: {'cryopods': 0.03, 'culture': 0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'phantom_ship',
    title: l10n.event_phantomShip_title,
    category: EventCategory.rare,
    narrative: l10n.event_phantomShip_narrative,
    choices: [
      EventChoice(
        text: l10n.event_phantomShip_choice0_text,
        outcome: l10n.event_phantomShip_choice0_outcome,
        shipEffects: {
          'nav': 0.10,
          'atmosphericScanner': 0.05,
          'culture': -0.08,
        },
      ),
      EventChoice(
        text: l10n.event_phantomShip_choice1_text,
        outcome: l10n.event_phantomShip_choice1_outcome,
        shipEffects: {'culture': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'solar_sail',
    title: l10n.event_solarSail_title,
    narrative: l10n.event_solarSail_narrative,
    choices: [
      EventChoice(
        text: l10n.event_solarSail_choice0_text,
        outcome: l10n.event_solarSail_choice0_outcome,
        shipEffects: {'hull': 0.12, 'tech': -0.05, 'constructors': 0.08},
      ),
      EventChoice(
        text: l10n.event_solarSail_choice1_text,
        outcome: l10n.event_solarSail_choice1_outcome,
        shipEffects: {'tech': 0.10, 'atmosphericScanner': 0.05, 'hull': -0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // BOONS (rare positive events — weighted lower in event engine)
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'boon_stellar_nursery',
    title: l10n.event_boonStellarNursery_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonStellarNursery_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonStellarNursery_choice0_text,
        outcome: l10n.event_boonStellarNursery_choice0_outcome,
        shipEffects: {
          'tech': 0.12,
          'atmosphericScanner': 0.08,
          'culture': 0.10,
        },
      ),
      EventChoice(
        text: l10n.event_boonStellarNursery_choice1_text,
        outcome: l10n.event_boonStellarNursery_choice1_outcome,
        shipEffects: {'hull': 0.10, 'tech': 0.10, 'nav': 0.05},
        fuelDelta: 25,
      ),
    ],
  ),

  GameEvent(
    id: 'boon_golden_planet',
    title: l10n.event_boonGoldenPlanet_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonGoldenPlanet_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonGoldenPlanet_choice0_text,
        outcome: l10n.event_boonGoldenPlanet_choice0_outcome,
        shipEffects: {'nav': 0.15, 'mineralScanner': 0.12},
        planetModifiers: {'water': 0.08, 'atmosphere': 0.05, 'resources': 0.05},
        economyDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_boonGoldenPlanet_choice1_text,
        outcome: l10n.event_boonGoldenPlanet_choice1_outcome,
        shipEffects: {'culture': 0.12, 'mineralScanner': 0.08},
        planetModifiers: {'resources': 0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'boon_repair_swarm',
    title: l10n.event_boonRepairSwarm_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonRepairSwarm_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonRepairSwarm_choice0_text,
        outcome: l10n.event_boonRepairSwarm_choice0_outcome,
        shipEffects: {
          'hull': 0.15,
          'cryopods': 0.10,
          'tech': 0.10,
          'atmosphericScanner': 0.08,
          'constructors': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_boonRepairSwarm_choice1_text,
        outcome: l10n.event_boonRepairSwarm_choice1_outcome,
        shipEffects: {'hull': 0.15, 'atmosphericScanner': 0.10},
      ),
    ],
  ),

  GameEvent(
    id: 'boon_time_crystal',
    title: l10n.event_boonTimeCrystal_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonTimeCrystal_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonTimeCrystal_choice0_text,
        outcome: l10n.event_boonTimeCrystal_choice0_outcome,
        shipEffects: {'cryopods': 0.15, 'culture': 0.05},
      ),
      EventChoice(
        text: l10n.event_boonTimeCrystal_choice1_text,
        outcome: l10n.event_boonTimeCrystal_choice1_outcome,
        shipEffects: {'nav': 0.15, 'gravimetricScanner': 0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'boon_library',
    title: l10n.event_boonLibrary_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonLibrary_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonLibrary_choice0_text,
        outcome: l10n.event_boonLibrary_choice0_outcome,
        shipEffects: {'culture': 0.15, 'tech': 0.12},
        planetModifiers: {'resources': 0.05},
      ),
      EventChoice(
        text: l10n.event_boonLibrary_choice1_text,
        outcome: l10n.event_boonLibrary_choice1_outcome,
        shipEffects: {'tech': 0.15, 'hull': 0.08, 'constructors': 0.10},
        planetModifiers: {'atmosphere': 0.05, 'resources': 0.08},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ADDITIONAL HAZARDS & DILEMMAS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'cosmic_ray_burst',
    title: l10n.event_cosmicRayBurst_title,
    narrative: l10n.event_cosmicRayBurst_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cosmicRayBurst_choice0_text,
        outcome: l10n.event_cosmicRayBurst_choice0_outcome,
        shipEffects: {'tech': -0.12, 'atmosphericScanner': -0.08},
      ),
      EventChoice(
        text: l10n.event_cosmicRayBurst_choice1_text,
        outcome: l10n.event_cosmicRayBurst_choice1_outcome,
        shipEffects: {'hull': -0.10, 'tech': -0.05},
        colonistDelta: -5,
      ),
      EventChoice(
        text: l10n.event_cosmicRayBurst_choice2_text,
        outcome: l10n.event_cosmicRayBurst_choice2_outcome,
        shipEffects: {'atmosphericScanner': 0.05, 'nav': -0.08, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_cosmicRayBurst_choice3_text,
        outcome: l10n.event_cosmicRayBurst_choice3_outcome,
        shipEffects: {'tech': -0.05, 'atmosphericScanner': -0.03},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'ice_comet',
    title: l10n.event_iceComet_title,
    narrative: l10n.event_iceComet_narrative,
    choices: [
      EventChoice(
        text: l10n.event_iceComet_choice0_text,
        outcome: l10n.event_iceComet_choice0_outcome,
        shipEffects: {'hull': -0.05, 'tech': -0.05},
        planetModifiers: {'water': 0.12},
        economyDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_iceComet_choice1_text,
        outcome: l10n.event_iceComet_choice1_outcome,
        shipEffects: {'tech': -0.03},
        planetModifiers: {'biodiversity': 0.10, 'water': 0.05},
      ),
      EventChoice(
        text: l10n.event_iceComet_choice2_text,
        outcome: l10n.event_iceComet_choice2_outcome,
        shipEffects: {'culture': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'sleepwalker',
    title: l10n.event_sleepwalker_title,
    narrative: l10n.event_sleepwalker_narrative,
    choices: [
      EventChoice(
        text: l10n.event_sleepwalker_choice0_text,
        outcome: l10n.event_sleepwalker_choice0_outcome,
        shipEffects: {'tech': 0.10, 'cryopods': -0.08, 'culture': -0.05},
      ),
      EventChoice(
        text: l10n.event_sleepwalker_choice1_text,
        outcome: l10n.event_sleepwalker_choice1_outcome,
        shipEffects: {'tech': 0.05, 'cryopods': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'dust_cloud',
    title: l10n.event_dustCloud_title,
    narrative: l10n.event_dustCloud_narrative,
    choices: [
      EventChoice(
        text: l10n.event_dustCloud_choice0_text,
        outcome: l10n.event_dustCloud_choice0_outcome,
        shipEffects: {'hull': -0.12, 'nav': -0.05},
      ),
      EventChoice(
        text: l10n.event_dustCloud_choice1_text,
        outcome: l10n.event_dustCloud_choice1_outcome,
        shipEffects: {
          'hull': -0.05,
          'atmosphericScanner': -0.10,
          'tech': -0.05,
        },
      ),
      EventChoice(
        text: l10n.event_dustCloud_choice2_text,
        outcome: l10n.event_dustCloud_choice2_outcome,
        shipEffects: {'hull': -0.03, 'nav': -0.03},
        probeCost: 2,
      ),
    ],
  ),

  GameEvent(
    id: 'religion_founded',
    title: l10n.event_religionFounded_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_religionFounded_narrative,
    choices: [
      EventChoice(
        text: l10n.event_religionFounded_choice0_text,
        outcome: l10n.event_religionFounded_choice0_outcome,
        shipEffects: {'culture': 0.12, 'tech': -0.03},
        faithDelta: 0.10,
      ),
      EventChoice(
        text: l10n.event_religionFounded_choice1_text,
        outcome: l10n.event_religionFounded_choice1_outcome,
        shipEffects: {'culture': 0.05},
      ),
      EventChoice(
        text: l10n.event_religionFounded_choice2_text,
        outcome: l10n.event_religionFounded_choice2_outcome,
        shipEffects: {'culture': -0.10, 'tech': 0.05},
        faithDelta: -0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'solar_wind_surfing',
    title: l10n.event_solarWindSurfing_title,
    narrative: l10n.event_solarWindSurfing_narrative,
    choices: [
      EventChoice(
        text: l10n.event_solarWindSurfing_choice0_text,
        outcome: l10n.event_solarWindSurfing_choice0_outcome,
        shipEffects: {'nav': 0.10, 'hull': -0.08},
      ),
      EventChoice(
        text: l10n.event_solarWindSurfing_choice1_text,
        outcome: l10n.event_solarWindSurfing_choice1_outcome,
        shipEffects: {'tech': 0.08, 'atmosphericScanner': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'memory_plague',
    title: l10n.event_memoryPlague_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_memoryPlague_narrative,
    choices: [
      EventChoice(
        text: l10n.event_memoryPlague_choice0_text,
        outcome: l10n.event_memoryPlague_choice0_outcome,
        shipEffects: {'culture': -0.08, 'tech': -0.10},
      ),
      EventChoice(
        text: l10n.event_memoryPlague_choice1_text,
        outcome: l10n.event_memoryPlague_choice1_outcome,
        shipEffects: {'culture': -0.18},
      ),
      EventChoice(
        text: l10n.event_memoryPlague_choice2_text,
        outcome: l10n.event_memoryPlague_choice2_outcome,
        shipEffects: {'culture': -0.03, 'cryopods': -0.10, 'tech': -0.05},
        colonistDelta: -3,
      ),
    ],
  ),

  GameEvent(
    id: 'gravity_lens_planet',
    title: l10n.event_gravityLensPlanet_title,
    narrative: l10n.event_gravityLensPlanet_narrative,
    choices: [
      EventChoice(
        text: l10n.event_gravityLensPlanet_choice0_text,
        outcome: l10n.event_gravityLensPlanet_choice0_outcome,
        shipEffects: {'gravimetricScanner': 0.08, 'culture': 0.10},
        planetModifiers: {
          'water': 0.10,
          'atmosphere': 0.10,
          'biodiversity': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_gravityLensPlanet_choice1_text,
        outcome: l10n.event_gravityLensPlanet_choice1_outcome,
        shipEffects: {'culture': -0.05, 'gravimetricScanner': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'engine_harmonics',
    title: l10n.event_engineHarmonics_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_engineHarmonics_narrative,
    choices: [
      EventChoice(
        text: l10n.event_engineHarmonics_choice0_text,
        outcome: l10n.event_engineHarmonics_choice0_outcome,
        shipEffects: {'nav': -0.08, 'culture': 0.08},
      ),
      EventChoice(
        text: l10n.event_engineHarmonics_choice1_text,
        outcome: l10n.event_engineHarmonics_choice1_outcome,
        shipEffects: {'tech': -0.08, 'culture': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'ark_memory',
    title: l10n.event_arkMemory_title,
    narrative: l10n.event_arkMemory_narrative,
    choices: [
      EventChoice(
        text: l10n.event_arkMemory_choice0_text,
        outcome: l10n.event_arkMemory_choice0_outcome,
        shipEffects: {'culture': 0.15, 'cryopods': -0.03},
      ),
      EventChoice(
        text: l10n.event_arkMemory_choice1_text,
        outcome: l10n.event_arkMemory_choice1_outcome,
        shipEffects: {'culture': 0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'magnetic_storm',
    title: l10n.event_magneticStorm_title,
    narrative: l10n.event_magneticStorm_narrative,
    choices: [
      EventChoice(
        text: l10n.event_magneticStorm_choice0_text,
        outcome: l10n.event_magneticStorm_choice0_outcome,
        shipEffects: {'hull': -0.10, 'tech': 0.05},
      ),
      EventChoice(
        text: l10n.event_magneticStorm_choice1_text,
        outcome: l10n.event_magneticStorm_choice1_outcome,
        shipEffects: {'hull': 0.05, 'atmosphericScanner': -0.12, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_magneticStorm_choice2_text,
        outcome: l10n.event_magneticStorm_choice2_outcome,
        shipEffects: {'hull': -0.03, 'tech': -0.03},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'oxygen_garden',
    title: l10n.event_oxygenGarden_title,
    narrative: l10n.event_oxygenGarden_narrative,
    choices: [
      EventChoice(
        text: l10n.event_oxygenGarden_choice0_text,
        outcome: l10n.event_oxygenGarden_choice0_outcome,
        shipEffects: {'culture': 0.12, 'cryopods': 0.05},
        planetModifiers: {'biodiversity': 0.05},
      ),
      EventChoice(
        text: l10n.event_oxygenGarden_choice1_text,
        outcome: l10n.event_oxygenGarden_choice1_outcome,
        shipEffects: {'culture': 0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'rogue_planet',
    title: l10n.event_roguePlanet_title,
    narrative: l10n.event_roguePlanet_narrative,
    choices: [
      EventChoice(
        text: l10n.event_roguePlanet_choice0_text,
        outcome: l10n.event_roguePlanet_choice0_outcome,
        shipEffects: {'mineralScanner': 0.08, 'tech': 0.05},
        planetModifiers: {'biodiversity': 0.08, 'water': 0.05},
      ),
      EventChoice(
        text: l10n.event_roguePlanet_choice1_text,
        outcome: l10n.event_roguePlanet_choice1_outcome,
        shipEffects: {'hull': 0.08},
        planetModifiers: {'resources': 0.10},
        economyDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_roguePlanet_choice2_text,
        outcome: l10n.event_roguePlanet_choice2_outcome,
        shipEffects: {'nav': 0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'art_competition',
    title: l10n.event_artCompetition_title,
    narrative: l10n.event_artCompetition_narrative,
    choices: [
      EventChoice(
        text: l10n.event_artCompetition_choice0_text,
        outcome: l10n.event_artCompetition_choice0_outcome,
        shipEffects: {'culture': 0.15, 'tech': -0.05},
        cultureDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_artCompetition_choice1_text,
        outcome: l10n.event_artCompetition_choice1_outcome,
        shipEffects: {'culture': 0.08},
      ),
    ],
  ),

  GameEvent(
    id: 'subspace_echo',
    title: l10n.event_subspaceEcho_title,
    narrative: l10n.event_subspaceEcho_narrative,
    choices: [
      EventChoice(
        text: l10n.event_subspaceEcho_choice0_text,
        outcome: l10n.event_subspaceEcho_choice0_outcome,
        shipEffects: {'nav': 0.05, 'culture': 0.10},
        planetModifiers: {'anomaly': 0.08},
      ),
      EventChoice(
        text: l10n.event_subspaceEcho_choice1_text,
        outcome: l10n.event_subspaceEcho_choice1_outcome,
        shipEffects: {'gravimetricScanner': 0.08, 'nav': 0.05},
      ),
      EventChoice(
        text: l10n.event_subspaceEcho_choice2_text,
        outcome: l10n.event_subspaceEcho_choice2_outcome,
        shipEffects: {'culture': -0.05, 'nav': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ADDITIONAL BOONS (very rare)
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'boon_perfect_calm',
    title: l10n.event_boonPerfectCalm_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonPerfectCalm_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonPerfectCalm_choice0_text,
        outcome: l10n.event_boonPerfectCalm_choice0_outcome,
        shipEffects: {
          'hull': 0.10,
          'atmosphericScanner': 0.08,
          'nav': 0.08,
          'tech': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_boonPerfectCalm_choice1_text,
        outcome: l10n.event_boonPerfectCalm_choice1_outcome,
        shipEffects: {'culture': 0.15, 'cryopods': 0.10},
      ),
    ],
  ),

  GameEvent(
    id: 'boon_ancient_waystation',
    title: l10n.event_boonAncientWaystation_title,
    category: EventCategory.boon,
    narrative: l10n.event_boonAncientWaystation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_boonAncientWaystation_choice0_text,
        outcome: l10n.event_boonAncientWaystation_choice0_outcome,
        shipEffects: {
          'hull': 0.12,
          'nav': 0.12,
          'tech': 0.10,
          'atmosphericScanner': 0.10,
          'cryopods': 0.08,
          'culture': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_boonAncientWaystation_choice1_text,
        outcome: l10n.event_boonAncientWaystation_choice1_outcome,
        shipEffects: {'hull': 0.08, 'nav': 0.08, 'tech': 0.05, 'culture': 0.12},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ALIEN PROBES & RELIC DISCOVERIES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'relic_sentinel',
    title: l10n.event_relicSentinel_title,
    narrative: l10n.event_relicSentinel_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicSentinel_choice0_text,
        outcome: l10n.event_relicSentinel_choice0_outcome,
        shipEffects: {'nav': 0.10, 'gravimetricScanner': 0.08},
        planetModifiers: {'atmosphere': 0.05, 'water': 0.05},
      ),
      EventChoice(
        text: l10n.event_relicSentinel_choice1_text,
        outcome: l10n.event_relicSentinel_choice1_outcome,
        shipEffects: {'hull': 0.08, 'tech': 0.05, 'gravimetricScanner': 0.05},
      ),
      EventChoice(
        text: l10n.event_relicSentinel_choice2_text,
        outcome: l10n.event_relicSentinel_choice2_outcome,
        shipEffects: {'culture': -0.05, 'nav': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_seed_probe',
    title: l10n.event_relicSeedProbe_title,
    narrative: l10n.event_relicSeedProbe_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicSeedProbe_choice0_text,
        outcome: l10n.event_relicSeedProbe_choice0_outcome,
        shipEffects: {'tech': -0.05},
        planetModifiers: {
          'biodiversity': 0.15,
          'atmosphere': 0.05,
          'water': 0.03,
        },
      ),
      EventChoice(
        text: l10n.event_relicSeedProbe_choice1_text,
        outcome: l10n.event_relicSeedProbe_choice1_outcome,
        shipEffects: {'nav': 0.10, 'tech': 0.10},
      ),
      EventChoice(
        text: l10n.event_relicSeedProbe_choice2_text,
        outcome: l10n.event_relicSeedProbe_choice2_outcome,
        shipEffects: {'culture': 0.12},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_warning_buoy',
    title: l10n.event_relicWarningBuoy_title,
    narrative: l10n.event_relicWarningBuoy_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicWarningBuoy_choice0_text,
        outcome: l10n.event_relicWarningBuoy_choice0_outcome,
        shipEffects: {'nav': -0.08, 'hull': 0.05},
      ),
      EventChoice(
        text: l10n.event_relicWarningBuoy_choice1_text,
        outcome: l10n.event_relicWarningBuoy_choice1_outcome,
        shipEffects: {'culture': -0.05},
      ),
      EventChoice(
        text: l10n.event_relicWarningBuoy_choice2_text,
        outcome: l10n.event_relicWarningBuoy_choice2_outcome,
        shipEffects: {'gravimetricScanner': 0.10, 'nav': 0.05, 'tech': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_mirror_array',
    title: l10n.event_relicMirrorArray_title,
    narrative: l10n.event_relicMirrorArray_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicMirrorArray_choice0_text,
        outcome: l10n.event_relicMirrorArray_choice0_outcome,
        shipEffects: {
          'tech': 0.10,
          'culture': 0.08,
          'atmosphericScanner': 0.05,
        },
      ),
      EventChoice(
        text: l10n.event_relicMirrorArray_choice1_text,
        outcome: l10n.event_relicMirrorArray_choice1_outcome,
        shipEffects: {'hull': 0.12, 'tech': 0.08},
      ),
      EventChoice(
        text: l10n.event_relicMirrorArray_choice2_text,
        outcome: l10n.event_relicMirrorArray_choice2_outcome,
        shipEffects: {'nav': 0.12, 'atmosphericScanner': 0.10},
        planetModifiers: {'resources': 0.05, 'atmosphere': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_graveyard',
    title: l10n.event_relicGraveyard_title,
    narrative: l10n.event_relicGraveyard_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicGraveyard_choice0_text,
        outcome: l10n.event_relicGraveyard_choice0_outcome,
        shipEffects: {
          'tech': 0.12,
          'hull': 0.08,
          'mineralScanner': 0.05,
          'nav': 0.05,
        },
      ),
      EventChoice(
        text: l10n.event_relicGraveyard_choice1_text,
        outcome: l10n.event_relicGraveyard_choice1_outcome,
        shipEffects: {'nav': 0.15, 'mineralScanner': 0.10},
        planetModifiers: {'water': 0.05, 'resources': 0.05},
      ),
      EventChoice(
        text: l10n.event_relicGraveyard_choice2_text,
        outcome: l10n.event_relicGraveyard_choice2_outcome,
        shipEffects: {'culture': 0.12, 'tech': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_dreamcatcher',
    title: l10n.event_relicDreamcatcher_title,
    narrative: l10n.event_relicDreamcatcher_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicDreamcatcher_choice0_text,
        outcome: l10n.event_relicDreamcatcher_choice0_outcome,
        shipEffects: {'lifeSignsScanner': 0.10, 'nav': 0.08},
        nextPlanetModifiers: {
          'atmosphere': 0.15,
          'water': 0.12,
          'nativePresence': 0.80,
          'nativeDisposition': 0.50,
        },
      ),
      EventChoice(
        text: l10n.event_relicDreamcatcher_choice1_text,
        outcome: l10n.event_relicDreamcatcher_choice1_outcome,
        shipEffects: {'tech': 0.12, 'lifeSignsScanner': 0.08},
      ),
      EventChoice(
        text: l10n.event_relicDreamcatcher_choice2_text,
        outcome: l10n.event_relicDreamcatcher_choice2_outcome,
        shipEffects: {'cryopods': 0.05, 'culture': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_rosetta',
    title: l10n.event_relicRosetta_title,
    narrative: l10n.event_relicRosetta_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicRosetta_choice0_text,
        outcome: l10n.event_relicRosetta_choice0_outcome,
        shipEffects: {'tech': 0.15, 'nav': 0.10},
      ),
      EventChoice(
        text: l10n.event_relicRosetta_choice1_text,
        outcome: l10n.event_relicRosetta_choice1_outcome,
        shipEffects: {'hull': 0.12, 'tech': 0.05},
      ),
      EventChoice(
        text: l10n.event_relicRosetta_choice2_text,
        outcome: l10n.event_relicRosetta_choice2_outcome,
        shipEffects: {'cryopods': 0.08},
        planetModifiers: {'biodiversity': 0.08, 'atmosphere': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'relic_ghost_fleet',
    title: l10n.event_relicGhostFleet_title,
    narrative: l10n.event_relicGhostFleet_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicGhostFleet_choice0_text,
        outcome: l10n.event_relicGhostFleet_choice0_outcome,
        shipEffects: {'nav': 0.10, 'gravimetricScanner': 0.12, 'hull': -0.05},
      ),
      EventChoice(
        text: l10n.event_relicGhostFleet_choice1_text,
        outcome: l10n.event_relicGhostFleet_choice1_outcome,
        shipEffects: {'hull': 0.18, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_relicGhostFleet_choice2_text,
        outcome: l10n.event_relicGhostFleet_choice2_outcome,
        shipEffects: {'cryopods': 0.12, 'tech': 0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // SCANNER SUBSYSTEM EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'scanner_calibration_drift',
    title: l10n.event_scannerCalibrationDrift_title,
    narrative: l10n.event_scannerCalibrationDrift_narrative,
    choices: [
      EventChoice(
        text: l10n.event_scannerCalibrationDrift_choice0_text,
        outcome: l10n.event_scannerCalibrationDrift_choice0_outcome,
        shipEffects: {
          'atmosphericScanner': 0.10,
          'temperatureScanner': 0.10,
          'tech': -0.10,
        },
      ),
      EventChoice(
        text: l10n.event_scannerCalibrationDrift_choice1_text,
        outcome: l10n.event_scannerCalibrationDrift_choice1_outcome,
        shipEffects: {
          'atmosphericScanner': 0.08,
          'temperatureScanner': -0.05,
          'tech': -0.03,
        },
      ),
      EventChoice(
        text: l10n.event_scannerCalibrationDrift_choice2_text,
        outcome: l10n.event_scannerCalibrationDrift_choice2_outcome,
        shipEffects: {'atmosphericScanner': 0.08, 'temperatureScanner': 0.08},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'ion_storm_scanners',
    title: l10n.event_ionStormScanners_title,
    narrative: l10n.event_ionStormScanners_narrative,
    choices: [
      EventChoice(
        text: l10n.event_ionStormScanners_choice0_text,
        outcome: l10n.event_ionStormScanners_choice0_outcome,
        shipEffects: {'mineralScanner': -0.10, 'waterScanner': -0.08},
      ),
      EventChoice(
        text: l10n.event_ionStormScanners_choice1_text,
        outcome: l10n.event_ionStormScanners_choice1_outcome,
        shipEffects: {
          'mineralScanner': -0.12,
          'waterScanner': -0.10,
          'gravimetricScanner': -0.05,
        },
      ),
      EventChoice(
        text: l10n.event_ionStormScanners_choice2_text,
        outcome: l10n.event_ionStormScanners_choice2_outcome,
        shipEffects: {
          'waterScanner': 0.05,
          'mineralScanner': -0.08,
          'tech': -0.05,
        },
      ),
    ],
  ),

  GameEvent(
    id: 'bio_scanner_contamination',
    title: l10n.event_bioScannerContamination_title,
    narrative: l10n.event_bioScannerContamination_narrative,
    choices: [
      EventChoice(
        text: l10n.event_bioScannerContamination_choice0_text,
        outcome: l10n.event_bioScannerContamination_choice0_outcome,
        shipEffects: {'lifeSignsScanner': 0.08, 'gravimetricScanner': -0.08},
      ),
      EventChoice(
        text: l10n.event_bioScannerContamination_choice1_text,
        outcome: l10n.event_bioScannerContamination_choice1_outcome,
        shipEffects: {
          'lifeSignsScanner': -0.05,
          'gravimetricScanner': -0.03,
          'tech': -0.03,
        },
      ),
    ],
  ),

  GameEvent(
    id: 'scanner_power_surge',
    title: l10n.event_scannerPowerSurge_title,
    narrative: l10n.event_scannerPowerSurge_narrative,
    choices: [
      EventChoice(
        text: l10n.event_scannerPowerSurge_choice0_text,
        outcome: l10n.event_scannerPowerSurge_choice0_outcome,
        shipEffects: {'scanners': -0.10, 'shields': -0.10},
      ),
      EventChoice(
        text: l10n.event_scannerPowerSurge_choice1_text,
        outcome: l10n.event_scannerPowerSurge_choice1_outcome,
        shipEffects: {'scanners': -0.18},
      ),
      EventChoice(
        text: l10n.event_scannerPowerSurge_choice2_text,
        outcome: l10n.event_scannerPowerSurge_choice2_outcome,
        shipEffects: {'scanners': -0.04},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'relic_world_engine',
    title: l10n.event_relicWorldEngine_title,
    narrative: l10n.event_relicWorldEngine_narrative,
    choices: [
      EventChoice(
        text: l10n.event_relicWorldEngine_choice0_text,
        outcome: l10n.event_relicWorldEngine_choice0_outcome,
        shipEffects: {'tech': 0.10},
        planetModifiers: {
          'atmosphere': 0.12,
          'water': 0.10,
          'temperature': 0.08,
          'gravity': 0.05,
        },
      ),
      EventChoice(
        text: l10n.event_relicWorldEngine_choice1_text,
        outcome: l10n.event_relicWorldEngine_choice1_outcome,
        shipEffects: {'hull': 0.15, 'tech': 0.08},
      ),
      EventChoice(
        text: l10n.event_relicWorldEngine_choice2_text,
        outcome: l10n.event_relicWorldEngine_choice2_outcome,
        shipEffects: {'tech': -0.10, 'nav': -0.05},
        nextPlanetModifiers: {
          'atmosphere': 0.15,
          'water': 0.12,
          'temperature': 0.10,
          'biodiversity': 0.08,
          'resources': 0.08,
        },
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // UNEVENTFUL EVENTS (breathing room)
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'uneventful_maintenance',
    title: l10n.event_uneventfulMaintenance_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_uneventfulMaintenance_narrative,
    choices: [
      EventChoice(
        text: l10n.event_uneventfulMaintenance_choice0_text,
        outcome: l10n.event_uneventfulMaintenance_choice0_outcome,
        shipEffects: {'hull': 0.02},
      ),
      EventChoice(
        text: l10n.event_uneventfulMaintenance_choice1_text,
        outcome: l10n.event_uneventfulMaintenance_choice1_outcome,
        shipEffects: {'atmosphericScanner': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'uneventful_quiet_watch',
    title: l10n.event_uneventfulQuietWatch_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_uneventfulQuietWatch_narrative,
    choices: [
      EventChoice(
        text: l10n.event_uneventfulQuietWatch_choice0_text,
        outcome: l10n.event_uneventfulQuietWatch_choice0_outcome,
        shipEffects: {'culture': 0.02},
      ),
      EventChoice(
        text: l10n.event_uneventfulQuietWatch_choice1_text,
        outcome: l10n.event_uneventfulQuietWatch_choice1_outcome,
        shipEffects: {'tech': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'uneventful_cryopod_check',
    title: l10n.event_uneventfulCryopodCheck_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_uneventfulCryopodCheck_narrative,
    choices: [
      EventChoice(
        text: l10n.event_uneventfulCryopodCheck_choice0_text,
        outcome: l10n.event_uneventfulCryopodCheck_choice0_outcome,
        shipEffects: {'culture': 0.02, 'cryopods': -0.01},
      ),
      EventChoice(
        text: l10n.event_uneventfulCryopodCheck_choice1_text,
        outcome: l10n.event_uneventfulCryopodCheck_choice1_outcome,
        shipEffects: {'cryopods': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'uneventful_cartography',
    title: l10n.event_uneventfulCartography_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_uneventfulCartography_narrative,
    choices: [
      EventChoice(
        text: l10n.event_uneventfulCartography_choice0_text,
        outcome: l10n.event_uneventfulCartography_choice0_outcome,
        shipEffects: {'nav': 0.02},
      ),
      EventChoice(
        text: l10n.event_uneventfulCartography_choice1_text,
        outcome: l10n.event_uneventfulCartography_choice1_outcome,
        shipEffects: {'gravimetricScanner': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'uneventful_anniversary',
    title: l10n.event_uneventfulAnniversary_title,
    category: EventCategory.uneventful,
    narrative: l10n.event_uneventfulAnniversary_narrative,
    choices: [
      EventChoice(
        text: l10n.event_uneventfulAnniversary_choice0_text,
        outcome: l10n.event_uneventfulAnniversary_choice0_outcome,
        shipEffects: {'culture': 0.02},
      ),
      EventChoice(
        text: l10n.event_uneventfulAnniversary_choice1_text,
        outcome: l10n.event_uneventfulAnniversary_choice1_outcome,
        shipEffects: {'tech': 0.01, 'nav': 0.01},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // DATABASE READING EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'database_literature',
    title: l10n.event_databaseLiterature_title,
    narrative: l10n.event_databaseLiterature_narrative,
    choices: [
      EventChoice(
        text: l10n.event_databaseLiterature_choice0_text,
        outcome: l10n.event_databaseLiterature_choice0_outcome,
        shipEffects: {'culture': 0.10},
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_databaseLiterature_choice1_text,
        outcome: l10n.event_databaseLiterature_choice1_outcome,
        shipEffects: {'culture': 0.06, 'tech': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'database_schematics',
    title: l10n.event_databaseSchematics_title,
    narrative: l10n.event_databaseSchematics_narrative,
    choices: [
      EventChoice(
        text: l10n.event_databaseSchematics_choice0_text,
        outcome: l10n.event_databaseSchematics_choice0_outcome,
        shipEffects: {'tech': 0.10, 'nav': 0.03},
      ),
      EventChoice(
        text: l10n.event_databaseSchematics_choice1_text,
        outcome: l10n.event_databaseSchematics_choice1_outcome,
        shipEffects: {'tech': 0.06, 'hull': 0.02, 'atmosphericScanner': 0.02},
      ),
    ],
  ),

  GameEvent(
    id: 'database_corruption',
    title: l10n.event_databaseCorruption_title,
    narrative: l10n.event_databaseCorruption_narrative,
    choices: [
      EventChoice(
        text: l10n.event_databaseCorruption_choice0_text,
        outcome: l10n.event_databaseCorruption_choice0_outcome,
        shipEffects: {'culture': -0.05, 'tech': -0.06},
      ),
      EventChoice(
        text: l10n.event_databaseCorruption_choice1_text,
        outcome: l10n.event_databaseCorruption_choice1_outcome,
        shipEffects: {'culture': 0.03, 'cryopods': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'database_breakthrough',
    title: l10n.event_databaseBreakthrough_title,
    narrative: l10n.event_databaseBreakthrough_narrative,
    choices: [
      EventChoice(
        text: l10n.event_databaseBreakthrough_choice0_text,
        outcome: l10n.event_databaseBreakthrough_choice0_outcome,
        shipEffects: {'tech': 0.06, 'atmosphericScanner': 0.08},
      ),
      EventChoice(
        text: l10n.event_databaseBreakthrough_choice1_text,
        outcome: l10n.event_databaseBreakthrough_choice1_outcome,
        shipEffects: {'tech': 0.08, 'culture': 0.04},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MULTI-PART ALIEN ENCOUNTERS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'alien_fleet_sighting',
    title: l10n.event_alienFleetSighting_title,
    narrative: l10n.event_alienFleetSighting_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienFleetSighting_choice0_text,
        outcome: l10n.event_alienFleetSighting_choice0_outcome,
        shipEffects: {'atmosphericScanner': 0.10, 'nav': -0.05},
      ),
      EventChoice(
        text: l10n.event_alienFleetSighting_choice1_text,
        outcome: l10n.event_alienFleetSighting_choice1_outcome,
        shipEffects: {'culture': 0.10, 'nav': 0.05, 'atmosphericScanner': 0.05},
        cultureDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_alienFleetSighting_choice2_text,
        outcome: l10n.event_alienFleetSighting_choice2_outcome,
        shipEffects: {'nav': -0.12, 'hull': -0.05, 'culture': -0.03},
        militaryDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'alien_trade_offer',
    title: l10n.event_alienTradeOffer_title,
    narrative: l10n.event_alienTradeOffer_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienTradeOffer_choice0_text,
        outcome: l10n.event_alienTradeOffer_choice0_outcome,
        shipEffects: {'nav': 0.12, 'mineralScanner': 0.08, 'tech': -0.08},
        economyDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_alienTradeOffer_choice1_text,
        outcome: l10n.event_alienTradeOffer_choice1_outcome,
        shipEffects: {'hull': 0.15, 'culture': -0.08},
        economyDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_alienTradeOffer_choice2_text,
        outcome: l10n.event_alienTradeOffer_choice2_outcome,
        shipEffects: {'culture': -0.03},
      ),
    ],
  ),

  GameEvent(
    id: 'alien_warning',
    title: l10n.event_alienWarning_title,
    narrative: l10n.event_alienWarning_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienWarning_choice0_text,
        outcome: l10n.event_alienWarning_choice0_outcome,
        shipEffects: {'nav': -0.10, 'hull': 0.05, 'atmosphericScanner': 0.03},
        militaryDelta: -0.03,
      ),
      EventChoice(
        text: l10n.event_alienWarning_choice1_text,
        outcome: l10n.event_alienWarning_choice1_outcome,
        shipEffects: {'hull': -0.12, 'atmosphericScanner': -0.08},
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_alienWarning_choice2_text,
        outcome: l10n.event_alienWarning_choice2_outcome,
        shipEffects: {'atmosphericScanner': 0.10, 'hull': -0.05},
        probeCost: 1,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // NATIVE CIVILIZATION EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'native_signal_detected',
    title: l10n.event_nativeSignalDetected_title,
    narrative: l10n.event_nativeSignalDetected_narrative,
    choices: [
      EventChoice(
        text: l10n.event_nativeSignalDetected_choice0_text,
        outcome: l10n.event_nativeSignalDetected_choice0_outcome,
        shipEffects: {'culture': 0.05, 'lifeSignsScanner': 0.03},
        planetModifiers: {'nativePresence': 0.10, 'nativeDisposition': 0.10},
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_nativeSignalDetected_choice1_text,
        outcome: l10n.event_nativeSignalDetected_choice1_outcome,
        shipEffects: {'lifeSignsScanner': 0.05},
        planetModifiers: {'nativePresence': 0.10, 'nativeDisposition': 0.05},
      ),
      EventChoice(
        text: l10n.event_nativeSignalDetected_choice2_text,
        outcome: l10n.event_nativeSignalDetected_choice2_outcome,
        shipEffects: {'tech': -0.05, 'culture': -0.08},
        planetModifiers: {'nativePresence': 0.05, 'nativeDisposition': -0.15},
        militaryDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'native_probe_encounter',
    title: l10n.event_nativeProbeEncounter_title,
    narrative: l10n.event_nativeProbeEncounter_narrative,
    choices: [
      EventChoice(
        text: l10n.event_nativeProbeEncounter_choice0_text,
        outcome: l10n.event_nativeProbeEncounter_choice0_outcome,
        shipEffects: {'atmosphericScanner': 0.05, 'nav': 0.03},
        planetModifiers: {'nativePresence': 0.08, 'nativeDisposition': 0.12},
      ),
      EventChoice(
        text: l10n.event_nativeProbeEncounter_choice1_text,
        outcome: l10n.event_nativeProbeEncounter_choice1_outcome,
        shipEffects: {'tech': 0.08, 'atmosphericScanner': 0.05},
        planetModifiers: {'nativePresence': 0.05, 'nativeDisposition': -0.10},
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_nativeProbeEncounter_choice2_text,
        outcome: l10n.event_nativeProbeEncounter_choice2_outcome,
        shipEffects: {'culture': -0.05},
        planetModifiers: {'nativePresence': 0.03, 'nativeDisposition': -0.15},
        probeCost: 1,
        militaryDelta: 0.10,
      ),
    ],
  ),

  GameEvent(
    id: 'native_cultural_exchange',
    title: l10n.event_nativeCulturalExchange_title,
    narrative: l10n.event_nativeCulturalExchange_narrative,
    choices: [
      EventChoice(
        text: l10n.event_nativeCulturalExchange_choice0_text,
        outcome: l10n.event_nativeCulturalExchange_choice0_outcome,
        shipEffects: {'culture': 0.10, 'tech': 0.03},
        planetModifiers: {'nativeDisposition': 0.12},
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_nativeCulturalExchange_choice1_text,
        outcome: l10n.event_nativeCulturalExchange_choice1_outcome,
        shipEffects: {'tech': 0.10, 'atmosphericScanner': 0.05},
        planetModifiers: {'nativeDisposition': 0.05},
        economyDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_nativeCulturalExchange_choice2_text,
        outcome: l10n.event_nativeCulturalExchange_choice2_outcome,
        shipEffects: {'tech': 0.05, 'culture': 0.05},
        planetModifiers: {'nativeDisposition': 0.10, 'nativePresence': 0.03},
        probeCost: 1,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // LANDING SYSTEM EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'landing_thruster_malfunction',
    title: l10n.event_landingThrusterMalfunction_title,
    narrative: l10n.event_landingThrusterMalfunction_narrative,
    choices: [
      EventChoice(
        text: l10n.event_landingThrusterMalfunction_choice0_text,
        outcome: l10n.event_landingThrusterMalfunction_choice0_outcome,
        shipEffects: {'landingSystem': 0.10, 'tech': -0.08},
      ),
      EventChoice(
        text: l10n.event_landingThrusterMalfunction_choice1_text,
        outcome: l10n.event_landingThrusterMalfunction_choice1_outcome,
        shipEffects: {'landingSystem': 0.06, 'atmosphericScanner': 0.02},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'landing_sim_drill',
    title: l10n.event_landingSimDrill_title,
    narrative: l10n.event_landingSimDrill_narrative,
    choices: [
      EventChoice(
        text: l10n.event_landingSimDrill_choice0_text,
        outcome: l10n.event_landingSimDrill_choice0_outcome,
        shipEffects: {'landingSystem': 0.08, 'nav': 0.02},
      ),
      EventChoice(
        text: l10n.event_landingSimDrill_choice1_text,
        outcome: l10n.event_landingSimDrill_choice1_outcome,
        shipEffects: {'landingSystem': 0.04, 'culture': 0.08},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // RARE MEMORABLE EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'dyson_sphere',
    title: l10n.event_dysonSphere_title,
    category: EventCategory.rare,
    narrative: l10n.event_dysonSphere_narrative,
    choices: [
      EventChoice(
        text: l10n.event_dysonSphere_choice0_text,
        outcome: l10n.event_dysonSphere_choice0_outcome,
        shipEffects: {
          'tech': 0.20,
          'constructors': 0.15,
          'atmosphericScanner': 0.10,
        },
        colonistDelta: -5,
      ),
      EventChoice(
        text: l10n.event_dysonSphere_choice1_text,
        outcome: l10n.event_dysonSphere_choice1_outcome,
        shipEffects: {
          'tech': 0.12,
          'hull': 0.05,
          'shields': 0.05,
          'nav': -0.08,
        },
      ),
      EventChoice(
        text: l10n.event_dysonSphere_choice2_text,
        outcome: l10n.event_dysonSphere_choice2_outcome,
        shipEffects: {'constructors': 0.10, 'tech': 0.08, 'culture': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'nanotech_plague',
    title: l10n.event_nanotechPlague_title,
    category: EventCategory.rare,
    narrative: l10n.event_nanotechPlague_narrative,
    choices: [
      EventChoice(
        text: l10n.event_nanotechPlague_choice0_text,
        outcome: l10n.event_nanotechPlague_choice0_outcome,
        shipEffects: {'tech': -0.15, 'lifeSignsScanner': -0.10, 'hull': -0.05},
        colonistDelta: -25,
      ),
      EventChoice(
        text: l10n.event_nanotechPlague_choice1_text,
        outcome: l10n.event_nanotechPlague_choice1_outcome,
        shipEffects: {'culture': -0.15, 'hull': -0.10, 'constructors': -0.08},
        colonistDelta: -10,
      ),
      EventChoice(
        text: l10n.event_nanotechPlague_choice2_text,
        outcome: l10n.event_nanotechPlague_choice2_outcome,
        shipEffects: {
          'tech': 0.05,
          'hull': 0.10,
          'constructors': 0.12,
          'culture': -0.15,
        },
        colonistDelta: -20,
      ),
      EventChoice(
        text: l10n.event_nanotechPlague_choice3_text,
        outcome: l10n.event_nanotechPlague_choice3_outcome,
        shipEffects: {'hull': -0.03, 'tech': -0.03},
        colonistDelta: -3,
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'premature_awakening',
    title: l10n.event_prematureAwakening_title,
    category: EventCategory.rare,
    narrative: l10n.event_prematureAwakening_narrative,
    choices: [
      EventChoice(
        text: l10n.event_prematureAwakening_choice0_text,
        outcome: l10n.event_prematureAwakening_choice0_outcome,
        shipEffects: {'culture': 0.15, 'cryopods': -0.18, 'tech': 0.08},
        colonistDelta: 180,
      ),
      EventChoice(
        text: l10n.event_prematureAwakening_choice1_text,
        outcome: l10n.event_prematureAwakening_choice1_outcome,
        shipEffects: {'cryopods': -0.10, 'culture': -0.10},
        colonistDelta: -40,
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_prematureAwakening_choice2_text,
        outcome: l10n.event_prematureAwakening_choice2_outcome,
        shipEffects: {'culture': 0.05, 'cryopods': -0.12, 'constructors': 0.08},
        colonistDelta: 190,
      ),
    ],
  ),

  GameEvent(
    id: 'stowaways_advanced',
    title: l10n.event_stowawaysAdvanced_title,
    category: EventCategory.rare,
    narrative: l10n.event_stowawaysAdvanced_narrative,
    choices: [
      EventChoice(
        text: l10n.event_stowawaysAdvanced_choice0_text,
        outcome: l10n.event_stowawaysAdvanced_choice0_outcome,
        shipEffects: {'culture': 0.10, 'constructors': 0.08, 'tech': 0.05},
        colonistDelta: 80,
      ),
      EventChoice(
        text: l10n.event_stowawaysAdvanced_choice1_text,
        outcome: l10n.event_stowawaysAdvanced_choice1_outcome,
        shipEffects: {'cryopods': 0.08, 'hull': 0.03, 'culture': -0.12},
        colonistDelta: 80,
        authorityDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_stowawaysAdvanced_choice2_text,
        outcome: l10n.event_stowawaysAdvanced_choice2_outcome,
        shipEffects: {'tech': 0.08, 'constructors': 0.05, 'culture': 0.03},
        colonistDelta: 80,
      ),
    ],
  ),

  GameEvent(
    id: 'alien_reservation',
    title: l10n.event_alienReservation_title,
    category: EventCategory.rare,
    narrative: l10n.event_alienReservation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_alienReservation_choice0_text,
        outcome: l10n.event_alienReservation_choice0_outcome,
        shipEffects: {'nav': 0.08, 'gravimetricScanner': 0.08, 'hull': -0.05},
        opensPlanetScreen: true,
        immediatePlanetMinHabitability: 0.78,
        planetModifiers: {
          'atmosphere': 0.15,
          'water': 0.12,
          'temperature': 0.10,
          'resources': 0.08,
        },
      ),
      EventChoice(
        text: l10n.event_alienReservation_choice1_text,
        outcome: l10n.event_alienReservation_choice1_outcome,
        shipEffects: {'lifeSignsScanner': 0.15, 'nav': 0.10, 'culture': 0.05},
        planetModifiers: {'resources': 0.10, 'biodiversity': 0.08},
      ),
      EventChoice(
        text: l10n.event_alienReservation_choice2_text,
        outcome: l10n.event_alienReservation_choice2_outcome,
        shipEffects: {'nav': 0.08, 'culture': 0.10, 'lifeSignsScanner': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'cosmic_horror',
    title: l10n.event_cosmicHorror_title,
    category: EventCategory.rare,
    narrative: l10n.event_cosmicHorror_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cosmicHorror_choice0_text,
        outcome: l10n.event_cosmicHorror_choice0_outcome,
        shipEffects: {'nav': -0.12, 'hull': -0.08, 'culture': -0.10},
        colonistDelta: -15,
        faithDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_cosmicHorror_choice1_text,
        outcome: l10n.event_cosmicHorror_choice1_outcome,
        shipEffects: {
          'hull': -0.05,
          'culture': -0.15,
          'atmosphericScanner': -0.08,
        },
        colonistDelta: -8,
      ),
      EventChoice(
        text: l10n.event_cosmicHorror_choice2_text,
        outcome: l10n.event_cosmicHorror_choice2_outcome,
        shipEffects: {
          'nav': 0.08,
          'atmosphericScanner': 0.06,
          'tech': 0.05,
          'culture': -0.25,
        },
        colonistDelta: -50,
        faithDelta: -0.05,
      ),
      EventChoice(
        text: l10n.event_cosmicHorror_choice3_text,
        outcome: l10n.event_cosmicHorror_choice3_outcome,
        shipEffects: {'culture': -0.05},
        colonistDelta: -2,
        probeCost: 1,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — METEOR SHOWERS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'meteor_glancing_hit',
    title: l10n.event_meteorGlancingHit_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_meteorGlancingHit_narrative,
    choices: [
      EventChoice(
        text: l10n.event_meteorGlancingHit_choice0_text,
        outcome: l10n.event_meteorGlancingHit_choice0_outcome,
        shipEffects: {'hull': -0.08, 'tech': -0.12},
      ),
      EventChoice(
        text: l10n.event_meteorGlancingHit_choice1_text,
        outcome: l10n.event_meteorGlancingHit_choice1_outcome,
        shipEffects: {'hull': -0.10, 'nav': -0.08},
      ),
      EventChoice(
        text: l10n.event_meteorGlancingHit_choice2_text,
        outcome: l10n.event_meteorGlancingHit_choice2_outcome,
        shipEffects: {'hull': -0.04},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'meteor_direct_impact',
    title: l10n.event_meteorDirectImpact_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_meteorDirectImpact_narrative,
    choices: [
      EventChoice(
        text: l10n.event_meteorDirectImpact_choice0_text,
        outcome: l10n.event_meteorDirectImpact_choice0_outcome,
        shipEffects: {'hull': -0.18, 'culture': -0.08},
        colonistDelta: -2,
      ),
      EventChoice(
        text: l10n.event_meteorDirectImpact_choice1_text,
        outcome: l10n.event_meteorDirectImpact_choice1_outcome,
        shipEffects: {'hull': -0.20, 'tech': -0.10, 'culture': 0.05},
        colonistDelta: -1,
      ),
    ],
  ),

  GameEvent(
    id: 'meteor_debris_field',
    title: l10n.event_meteorDebrisField_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_meteorDebrisField_narrative,
    choices: [
      EventChoice(
        text: l10n.event_meteorDebrisField_choice0_text,
        outcome: l10n.event_meteorDebrisField_choice0_outcome,
        shipEffects: {'shields': -0.15, 'hull': -0.10},
      ),
      EventChoice(
        text: l10n.event_meteorDebrisField_choice1_text,
        outcome: l10n.event_meteorDebrisField_choice1_outcome,
        shipEffects: {'hull': -0.06, 'nav': -0.12},
      ),
      EventChoice(
        text: l10n.event_meteorDebrisField_choice2_text,
        outcome: l10n.event_meteorDebrisField_choice2_outcome,
        shipEffects: {'hull': -0.05, 'shields': -0.04},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'meteor_shower_dense',
    title: l10n.event_meteorShowerDense_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_meteorShowerDense_narrative,
    choices: [
      EventChoice(
        text: l10n.event_meteorShowerDense_choice0_text,
        outcome: l10n.event_meteorShowerDense_choice0_outcome,
        shipEffects: {
          'landingSystem': -0.05,
          'atmosphericScanner': -0.15,
          'hull': -0.08,
        },
      ),
      EventChoice(
        text: l10n.event_meteorShowerDense_choice1_text,
        outcome: l10n.event_meteorShowerDense_choice1_outcome,
        shipEffects: {
          'gravimetricScanner': -0.06,
          'landingSystem': -0.15,
          'hull': -0.07,
        },
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — SOLAR FLARES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'solar_emp_burst',
    title: l10n.event_solarEmpBurst_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_solarEmpBurst_narrative,
    choices: [
      EventChoice(
        text: l10n.event_solarEmpBurst_choice0_text,
        outcome: l10n.event_solarEmpBurst_choice0_outcome,
        shipEffects: {'nav': -0.03, 'scanners': -0.18, 'tech': -0.15},
      ),
      EventChoice(
        text: l10n.event_solarEmpBurst_choice1_text,
        outcome: l10n.event_solarEmpBurst_choice1_outcome,
        shipEffects: {'scanners': -0.04, 'tech': -0.04, 'nav': -0.18},
      ),
      EventChoice(
        text: l10n.event_solarEmpBurst_choice2_text,
        outcome: l10n.event_solarEmpBurst_choice2_outcome,
        shipEffects: {
          'nav': -0.08,
          'scanners': -0.08,
          'tech': -0.08,
          'culture': -0.06,
        },
      ),
    ],
  ),

  GameEvent(
    id: 'solar_radiation_wave',
    title: l10n.event_solarRadiationWave_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_solarRadiationWave_narrative,
    choices: [
      EventChoice(
        text: l10n.event_solarRadiationWave_choice0_text,
        outcome: l10n.event_solarRadiationWave_choice0_outcome,
        shipEffects: {'cryopods': -0.08, 'tech': -0.12},
        colonistDelta: -15,
      ),
      EventChoice(
        text: l10n.event_solarRadiationWave_choice1_text,
        outcome: l10n.event_solarRadiationWave_choice1_outcome,
        shipEffects: {'hull': -0.12, 'cryopods': -0.10},
        colonistDelta: -20,
      ),
      EventChoice(
        text: l10n.event_solarRadiationWave_choice2_text,
        outcome: l10n.event_solarRadiationWave_choice2_outcome,
        shipEffects: {'tech': -0.15, 'nav': -0.10, 'cryopods': -0.05},
        colonistDelta: -8,
      ),
    ],
  ),

  GameEvent(
    id: 'coronal_mass_ejection',
    title: l10n.event_coronalMassEjection_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_coronalMassEjection_narrative,
    choices: [
      EventChoice(
        text: l10n.event_coronalMassEjection_choice0_text,
        outcome: l10n.event_coronalMassEjection_choice0_outcome,
        shipEffects: {'hull': -0.10, 'nav': -0.12, 'tech': -0.10},
      ),
      EventChoice(
        text: l10n.event_coronalMassEjection_choice1_text,
        outcome: l10n.event_coronalMassEjection_choice1_outcome,
        shipEffects: {'hull': -0.08, 'landingSystem': -0.10, 'shields': -0.08},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — COSMIC RAY BURST
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'cosmic_ray_scanner_interference',
    title: l10n.event_cosmicRayScannerInterference_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_cosmicRayScannerInterference_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cosmicRayScannerInterference_choice0_text,
        outcome: l10n.event_cosmicRayScannerInterference_choice0_outcome,
        shipEffects: {
          'mineralScanner': -0.06,
          'gravimetricScanner': -0.06,
          'nav': -0.10,
        },
      ),
      EventChoice(
        text: l10n.event_cosmicRayScannerInterference_choice1_text,
        outcome: l10n.event_cosmicRayScannerInterference_choice1_outcome,
        shipEffects: {
          'mineralScanner': -0.15,
          'temperatureScanner': -0.12,
          'gravimetricScanner': -0.04,
          'lifeSignsScanner': -0.04,
        },
      ),
      EventChoice(
        text: l10n.event_cosmicRayScannerInterference_choice2_text,
        outcome: l10n.event_cosmicRayScannerInterference_choice2_outcome,
        shipEffects: {'atmosphericScanner': -0.05},
        probeCost: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'cosmic_ray_dna_damage',
    title: l10n.event_cosmicRayDnaDamage_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_cosmicRayDnaDamage_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cosmicRayDnaDamage_choice0_text,
        outcome: l10n.event_cosmicRayDnaDamage_choice0_outcome,
        shipEffects: {'cryopods': -0.10, 'tech': -0.08, 'culture': -0.05},
        colonistDelta: -40,
      ),
      EventChoice(
        text: l10n.event_cosmicRayDnaDamage_choice1_text,
        outcome: l10n.event_cosmicRayDnaDamage_choice1_outcome,
        shipEffects: {'hull': -0.15, 'cryopods': -0.05},
        colonistDelta: -10,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — EQUIPMENT FAILURES
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'coolant_leak',
    title: l10n.event_coolantLeak_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_coolantLeak_narrative,
    choices: [
      EventChoice(
        text: l10n.event_coolantLeak_choice0_text,
        outcome: l10n.event_coolantLeak_choice0_outcome,
        shipEffects: {'tech': -0.12, 'nav': -0.08, 'temperatureScanner': -0.06},
      ),
      EventChoice(
        text: l10n.event_coolantLeak_choice1_text,
        outcome: l10n.event_coolantLeak_choice1_outcome,
        shipEffects: {'tech': -0.08},
        colonistDelta: -1,
      ),
      EventChoice(
        text: l10n.event_coolantLeak_choice2_text,
        outcome: l10n.event_coolantLeak_choice2_outcome,
        shipEffects: {'tech': -0.06, 'cryopods': -0.12},
        colonistDelta: -5,
      ),
    ],
  ),

  GameEvent(
    id: 'power_grid_failure',
    title: l10n.event_powerGridFailure_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_powerGridFailure_narrative,
    choices: [
      EventChoice(
        text: l10n.event_powerGridFailure_choice0_text,
        outcome: l10n.event_powerGridFailure_choice0_outcome,
        shipEffects: {
          'nav': -0.06,
          'atmosphericScanner': -0.06,
          'constructors': -0.15,
        },
      ),
      EventChoice(
        text: l10n.event_powerGridFailure_choice1_text,
        outcome: l10n.event_powerGridFailure_choice1_outcome,
        shipEffects: {
          'constructors': -0.06,
          'nav': -0.15,
          'atmosphericScanner': -0.08,
        },
      ),
    ],
  ),

  GameEvent(
    id: 'life_support_glitch',
    title: l10n.event_lifeSupportGlitch_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_lifeSupportGlitch_narrative,
    choices: [
      EventChoice(
        text: l10n.event_lifeSupportGlitch_choice0_text,
        outcome: l10n.event_lifeSupportGlitch_choice0_outcome,
        shipEffects: {'tech': -0.10, 'culture': -0.08},
        colonistDelta: -3,
      ),
      EventChoice(
        text: l10n.event_lifeSupportGlitch_choice1_text,
        outcome: l10n.event_lifeSupportGlitch_choice1_outcome,
        shipEffects: {'tech': -0.07, 'lifeSignsScanner': -0.05},
      ),
      EventChoice(
        text: l10n.event_lifeSupportGlitch_choice2_text,
        outcome: l10n.event_lifeSupportGlitch_choice2_outcome,
        shipEffects: {'cryopods': -0.08, 'culture': -0.10},
        colonistDelta: -2,
      ),
    ],
  ),

  GameEvent(
    id: 'water_recycler_breakdown',
    title: l10n.event_waterRecyclerBreakdown_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_waterRecyclerBreakdown_narrative,
    choices: [
      EventChoice(
        text: l10n.event_waterRecyclerBreakdown_choice0_text,
        outcome: l10n.event_waterRecyclerBreakdown_choice0_outcome,
        shipEffects: {'tech': -0.10, 'culture': -0.12},
        colonistDelta: -4,
      ),
      EventChoice(
        text: l10n.event_waterRecyclerBreakdown_choice1_text,
        outcome: l10n.event_waterRecyclerBreakdown_choice1_outcome,
        shipEffects: {'cryopods': -0.15, 'tech': -0.05},
        colonistDelta: -8,
      ),
    ],
  ),

  GameEvent(
    id: 'nav_computer_reboot',
    title: l10n.event_navComputerReboot_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_navComputerReboot_narrative,
    choices: [
      EventChoice(
        text: l10n.event_navComputerReboot_choice0_text,
        outcome: l10n.event_navComputerReboot_choice0_outcome,
        shipEffects: {'nav': -0.15, 'gravimetricScanner': -0.05},
      ),
      EventChoice(
        text: l10n.event_navComputerReboot_choice1_text,
        outcome: l10n.event_navComputerReboot_choice1_outcome,
        shipEffects: {'nav': -0.08, 'hull': -0.08},
      ),
      EventChoice(
        text: l10n.event_navComputerReboot_choice2_text,
        outcome: l10n.event_navComputerReboot_choice2_outcome,
        shipEffects: {'nav': -0.05},
        probeCost: 1,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — CRAZED / DESPERATE CREW
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'crew_airlocked',
    title: l10n.event_crewAirlocked_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_crewAirlocked_narrative,
    choices: [
      EventChoice(
        text: l10n.event_crewAirlocked_choice0_text,
        outcome: l10n.event_crewAirlocked_choice0_outcome,
        shipEffects: {'culture': -0.10, 'tech': -0.05},
        authorityDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_crewAirlocked_choice1_text,
        outcome: l10n.event_crewAirlocked_choice1_outcome,
        shipEffects: {'culture': -0.15},
      ),
      EventChoice(
        text: l10n.event_crewAirlocked_choice2_text,
        outcome: l10n.event_crewAirlocked_choice2_outcome,
        shipEffects: {'culture': -0.20},
        colonistDelta: -1,
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'crew_cryopod_sabotage',
    title: l10n.event_crewCryopodSabotage_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_crewCryopodSabotage_narrative,
    choices: [
      EventChoice(
        text: l10n.event_crewCryopodSabotage_choice0_text,
        outcome: l10n.event_crewCryopodSabotage_choice0_outcome,
        shipEffects: {'cryopods': -0.12, 'culture': -0.08, 'tech': -0.08},
        colonistDelta: -25,
        authorityDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_crewCryopodSabotage_choice1_text,
        outcome: l10n.event_crewCryopodSabotage_choice1_outcome,
        shipEffects: {'cryopods': -0.18, 'culture': -0.06},
        colonistDelta: -40,
      ),
    ],
  ),

  GameEvent(
    id: 'crew_supply_hoarder',
    title: l10n.event_crewSupplyHoarder_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_crewSupplyHoarder_narrative,
    choices: [
      EventChoice(
        text: l10n.event_crewSupplyHoarder_choice0_text,
        outcome: l10n.event_crewSupplyHoarder_choice0_outcome,
        shipEffects: {'culture': -0.15, 'tech': 0.05},
        authorityDelta: 0.05,
        economyDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_crewSupplyHoarder_choice1_text,
        outcome: l10n.event_crewSupplyHoarder_choice1_outcome,
        shipEffects: {'culture': -0.08, 'tech': -0.06},
      ),
      EventChoice(
        text: l10n.event_crewSupplyHoarder_choice2_text,
        outcome: l10n.event_crewSupplyHoarder_choice2_outcome,
        shipEffects: {'culture': -0.05, 'tech': -0.04},
        economyDelta: -0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'crew_mutiny_attempt',
    title: l10n.event_crewMutinyAttempt_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_crewMutinyAttempt_narrative,
    choices: [
      EventChoice(
        text: l10n.event_crewMutinyAttempt_choice0_text,
        outcome: l10n.event_crewMutinyAttempt_choice0_outcome,
        shipEffects: {'culture': -0.15},
        colonistDelta: -5,
        authorityDelta: 0.05,
        militaryDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_crewMutinyAttempt_choice1_text,
        outcome: l10n.event_crewMutinyAttempt_choice1_outcome,
        shipEffects: {'culture': -0.18, 'nav': -0.10},
        colonistDelta: -3,
      ),
      EventChoice(
        text: l10n.event_crewMutinyAttempt_choice2_text,
        outcome: l10n.event_crewMutinyAttempt_choice2_outcome,
        shipEffects: {'culture': -0.12, 'tech': -0.06},
        authorityDelta: -0.03,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — HULL FATIGUE / STRUCTURAL STRESS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'hull_fatigue_stress',
    title: l10n.event_hullFatigueStress_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_hullFatigueStress_narrative,
    choices: [
      EventChoice(
        text: l10n.event_hullFatigueStress_choice0_text,
        outcome: l10n.event_hullFatigueStress_choice0_outcome,
        shipEffects: {'hull': -0.06, 'tech': -0.14, 'culture': -0.08},
      ),
      EventChoice(
        text: l10n.event_hullFatigueStress_choice1_text,
        outcome: l10n.event_hullFatigueStress_choice1_outcome,
        shipEffects: {'hull': -0.10, 'nav': -0.10},
      ),
      EventChoice(
        text: l10n.event_hullFatigueStress_choice2_text,
        outcome: l10n.event_hullFatigueStress_choice2_outcome,
        shipEffects: {'hull': 0.04, 'constructors': -0.18},
      ),
    ],
  ),

  GameEvent(
    id: 'hull_pressure_anomaly',
    title: l10n.event_hullPressureAnomaly_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_hullPressureAnomaly_narrative,
    choices: [
      EventChoice(
        text: l10n.event_hullPressureAnomaly_choice0_text,
        outcome: l10n.event_hullPressureAnomaly_choice0_outcome,
        shipEffects: {'hull': -0.10, 'culture': -0.10},
      ),
      EventChoice(
        text: l10n.event_hullPressureAnomaly_choice1_text,
        outcome: l10n.event_hullPressureAnomaly_choice1_outcome,
        shipEffects: {'hull': -0.07, 'culture': -0.15},
        colonistDelta: -5,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — COMMUNICATION ARRAY FAILURE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'comms_array_failure',
    title: l10n.event_commsArrayFailure_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_commsArrayFailure_narrative,
    choices: [
      EventChoice(
        text: l10n.event_commsArrayFailure_choice0_text,
        outcome: l10n.event_commsArrayFailure_choice0_outcome,
        shipEffects: {'atmosphericScanner': -0.06, 'culture': -0.08},
        colonistDelta: -1,
      ),
      EventChoice(
        text: l10n.event_commsArrayFailure_choice1_text,
        outcome: l10n.event_commsArrayFailure_choice1_outcome,
        shipEffects: {'gravimetricScanner': -0.14, 'atmosphericScanner': -0.10},
      ),
      EventChoice(
        text: l10n.event_commsArrayFailure_choice2_text,
        outcome: l10n.event_commsArrayFailure_choice2_outcome,
        shipEffects: {'culture': -0.12},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — FUEL LINE RUPTURE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'fuel_line_rupture',
    title: l10n.event_fuelLineRupture_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_fuelLineRupture_narrative,
    choices: [
      EventChoice(
        text: l10n.event_fuelLineRupture_choice0_text,
        outcome: l10n.event_fuelLineRupture_choice0_outcome,
        shipEffects: {'nav': -0.15, 'hull': -0.05},
      ),
      EventChoice(
        text: l10n.event_fuelLineRupture_choice1_text,
        outcome: l10n.event_fuelLineRupture_choice1_outcome,
        shipEffects: {'hull': -0.10, 'nav': -0.06},
        colonistDelta: -1,
      ),
      EventChoice(
        text: l10n.event_fuelLineRupture_choice2_text,
        outcome: l10n.event_fuelLineRupture_choice2_outcome,
        shipEffects: {'hull': -0.03, 'nav': -0.04},
        probeCost: 1,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — CRYOPOD CASCADE WARNING
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'cryopod_cascade_warning',
    title: l10n.event_cryopodCascadeWarning_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_cryopodCascadeWarning_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cryopodCascadeWarning_choice0_text,
        outcome: l10n.event_cryopodCascadeWarning_choice0_outcome,
        shipEffects: {'cryopods': -0.12, 'tech': -0.08},
        colonistDelta: -30,
      ),
      EventChoice(
        text: l10n.event_cryopodCascadeWarning_choice1_text,
        outcome: l10n.event_cryopodCascadeWarning_choice1_outcome,
        shipEffects: {'cryopods': -0.08, 'culture': -0.14, 'tech': -0.06},
        colonistDelta: -20,
      ),
      EventChoice(
        text: l10n.event_cryopodCascadeWarning_choice2_text,
        outcome: l10n.event_cryopodCascadeWarning_choice2_outcome,
        shipEffects: {'constructors': -0.20, 'cryopods': -0.06},
        colonistDelta: -10,
      ),
    ],
  ),

  GameEvent(
    id: 'cryopod_seal_degradation',
    title: l10n.event_cryopodSealDegradation_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_cryopodSealDegradation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_cryopodSealDegradation_choice0_text,
        outcome: l10n.event_cryopodSealDegradation_choice0_outcome,
        shipEffects: {'constructors': -0.12, 'tech': -0.10, 'cryopods': -0.06},
        colonistDelta: -15,
      ),
      EventChoice(
        text: l10n.event_cryopodSealDegradation_choice1_text,
        outcome: l10n.event_cryopodSealDegradation_choice1_outcome,
        shipEffects: {'cryopods': -0.15},
        colonistDelta: -25,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MALFUNCTIONS — OXYGEN SCRUBBER FAILURE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'oxygen_scrubber_failure',
    title: l10n.event_oxygenScrubberFailure_title,
    category: EventCategory.malfunction,
    narrative: l10n.event_oxygenScrubberFailure_narrative,
    choices: [
      EventChoice(
        text: l10n.event_oxygenScrubberFailure_choice0_text,
        outcome: l10n.event_oxygenScrubberFailure_choice0_outcome,
        shipEffects: {'cryopods': -0.10, 'tech': -0.08, 'culture': -0.05},
        colonistDelta: -8,
      ),
      EventChoice(
        text: l10n.event_oxygenScrubberFailure_choice1_text,
        outcome: l10n.event_oxygenScrubberFailure_choice1_outcome,
        shipEffects: {'atmosphericScanner': -0.18, 'lifeSignsScanner': -0.12},
        colonistDelta: -3,
      ),
      EventChoice(
        text: l10n.event_oxygenScrubberFailure_choice2_text,
        outcome: l10n.event_oxygenScrubberFailure_choice2_outcome,
        shipEffects: {'hull': -0.05, 'tech': -0.10},
        colonistDelta: -2,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // DEAD ALIEN ARTIFACT
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'dead_alien_artifact',
    title: l10n.event_deadAlienArtifact_title,
    category: EventCategory.rare,
    narrative: l10n.event_deadAlienArtifact_narrative,
    choices: [
      EventChoice(
        text: l10n.event_deadAlienArtifact_choice0_text,
        outcome: l10n.event_deadAlienArtifact_choice0_outcome,
        shipEffects: {'nav': 0.15, 'tech': 0.10},
        nextPlanetModifiers: {'atmosphere': 0.08, 'water': 0.05},
      ),
      EventChoice(
        text: l10n.event_deadAlienArtifact_choice1_text,
        outcome: l10n.event_deadAlienArtifact_choice1_outcome,
        shipEffects: {'culture': 0.20, 'atmosphericScanner': 0.08},
        nextPlanetModifiers: {'biodiversity': 0.10, 'resources': 0.05},
      ),
      EventChoice(
        text: l10n.event_deadAlienArtifact_choice2_text,
        outcome: l10n.event_deadAlienArtifact_choice2_outcome,
        shipEffects: {'hull': 0.12, 'shields': 0.10, 'constructors': 0.08},
        fuelDelta: 15,
      ),
      EventChoice(
        text: l10n.event_deadAlienArtifact_choice3_text,
        outcome: l10n.event_deadAlienArtifact_choice3_outcome,
        shipEffects: {'culture': 0.12, 'cryopods': 0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // AUTOMATED REPAIR STATION
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'repair_station',
    title: l10n.event_repairStation_title,
    category: EventCategory.rare,
    narrative: l10n.event_repairStation_narrative,
    choices: [
      EventChoice(
        text: l10n.event_repairStation_choice0_text,
        outcome: l10n.event_repairStation_choice0_outcome,
        shipEffects: {
          'hull': 0.15,
          'nav': 0.12,
          'atmosphericScanner': 0.10,
          'shields': 0.10,
          'landingSystem': 0.10,
          'cryopods': 0.08,
        },
        probeCost: 4,
      ),
      EventChoice(
        text: l10n.event_repairStation_choice1_text,
        outcome: l10n.event_repairStation_choice1_outcome,
        shipEffects: {
          'hull': 0.12,
          'nav': 0.10,
          'cryopods': 0.10,
          'landingSystem': 0.08,
        },
        fuelDelta: -30,
      ),
      EventChoice(
        text: l10n.event_repairStation_choice2_text,
        outcome: l10n.event_repairStation_choice2_outcome,
        shipEffects: {'tech': -0.15},
        probeDelta: 5,
        energyDelta: 15,
      ),
      EventChoice(
        text: l10n.event_repairStation_choice3_text,
        outcome: l10n.event_repairStation_choice3_outcome,
        shipEffects: {
          'culture': -0.20,
          'hull': 0.12,
          'nav': 0.10,
          'atmosphericScanner': 0.08,
          'constructors': 0.08,
        },
        probeDelta: 3,
        fuelDelta: 20,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // NARRATIVE LEGACY
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'ai_soliloquy',
    title: l10n.event_aiSoliloquy_title,
    narrative: l10n.event_aiSoliloquy_narrative,
    choices: [
      EventChoice(
        text: l10n.event_aiSoliloquy_choice0_text,
        outcome: l10n.event_aiSoliloquy_choice0_outcome,
        shipEffects: {'culture': 0.15, 'tech': -0.10},
      ),
      EventChoice(
        text: l10n.event_aiSoliloquy_choice1_text,
        outcome: l10n.event_aiSoliloquy_choice1_outcome,
        shipEffects: {'culture': 0.08, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_aiSoliloquy_choice2_text,
        outcome: l10n.event_aiSoliloquy_choice2_outcome,
        shipEffects: {'culture': -0.10, 'tech': 0.05, 'nav': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'archivists_choice',
    title: l10n.event_archivistsChoice_title,
    narrative: l10n.event_archivistsChoice_narrative,
    choices: [
      EventChoice(
        text: l10n.event_archivistsChoice_choice0_text,
        outcome: l10n.event_archivistsChoice_choice0_outcome,
        shipEffects: {'tech': 0.20, 'culture': -0.25},
      ),
      EventChoice(
        text: l10n.event_archivistsChoice_choice1_text,
        outcome: l10n.event_archivistsChoice_choice1_outcome,
        shipEffects: {'culture': 0.20, 'tech': -0.15},
      ),
      EventChoice(
        text: l10n.event_archivistsChoice_choice2_text,
        outcome: l10n.event_archivistsChoice_choice2_outcome,
        shipEffects: {'culture': -0.05, 'tech': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'digital_ghost',
    title: l10n.event_digitalGhost_title,
    narrative: l10n.event_digitalGhost_narrative,
    choices: [
      EventChoice(
        text: l10n.event_digitalGhost_choice0_text,
        outcome: l10n.event_digitalGhost_choice0_outcome,
        shipEffects: {'nav': 0.15, 'tech': 0.05, 'culture': -0.10},
      ),
      EventChoice(
        text: l10n.event_digitalGhost_choice1_text,
        outcome: l10n.event_digitalGhost_choice1_outcome,
        shipEffects: {'culture': 0.15, 'tech': -0.05},
      ),
      EventChoice(
        text: l10n.event_digitalGhost_choice2_text,
        outcome: l10n.event_digitalGhost_choice2_outcome,
        shipEffects: {'tech': 0.05, 'culture': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'cosmic_mirror',
    title: l10n.event_cosmicMirror_title,
    narrative: l10n.event_cosmicMirror_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_cosmicMirror_choice0_text,
        outcome: l10n.event_cosmicMirror_choice0_outcome,
        shipEffects: {'hull': 0.10, 'tech': 0.05},
      ),
      EventChoice(
        text: l10n.event_cosmicMirror_choice1_text,
        outcome: l10n.event_cosmicMirror_choice1_outcome,
        shipEffects: {'scanners': -0.10, 'nav': 0.05},
      ),
      EventChoice(
        text: l10n.event_cosmicMirror_choice2_text,
        outcome: l10n.event_cosmicMirror_choice2_outcome,
        shipEffects: {'culture': 0.15},
      ),
    ],
  ),

  GameEvent(
    id: 'stowaway_child',
    title: l10n.event_stowawayChild_title,
    narrative: l10n.event_stowawayChild_narrative,
    category: EventCategory.early,
    choices: [
      EventChoice(
        text: l10n.event_stowawayChild_choice0_text,
        outcome: l10n.event_stowawayChild_choice0_outcome,
        shipEffects: {'culture': 0.15},
        colonistDelta: 1,
      ),
      EventChoice(
        text: l10n.event_stowawayChild_choice1_text,
        outcome: l10n.event_stowawayChild_choice1_outcome,
        shipEffects: {'tech': 0.10, 'culture': 0.05},
        colonistDelta: 1,
      ),
      EventChoice(
        text: l10n.event_stowawayChild_choice2_text,
        outcome: l10n.event_stowawayChild_choice2_outcome,
        shipEffects: {'culture': -0.05},
        colonistDelta: 1,
      ),
    ],
  ),

  GameEvent(
    id: 'ghost_signal',
    title: l10n.event_ghostSignal_title,
    narrative: l10n.event_ghostSignal_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_ghostSignal_choice0_text,
        outcome: l10n.event_ghostSignal_choice0_outcome,
        shipEffects: {'hull': -0.15, 'tech': 0.15},
      ),
      EventChoice(
        text: l10n.event_ghostSignal_choice1_text,
        outcome: l10n.event_ghostSignal_choice1_outcome,
        shipEffects: {'culture': -0.05},
      ),
      EventChoice(
        text: l10n.event_ghostSignal_choice2_text,
        outcome: l10n.event_ghostSignal_choice2_outcome,
        shipEffects: {'tech': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'solar_forge',
    title: l10n.event_solarForge_title,
    narrative: l10n.event_solarForge_narrative,
    category: EventCategory.boon,
    choices: [
      EventChoice(
        text: l10n.event_solarForge_choice0_text,
        outcome: l10n.event_solarForge_choice0_outcome,
        fuelDelta: 50,
        energyDelta: 50,
        shipEffects: {'hull': -0.05},
      ),
      EventChoice(
        text: l10n.event_solarForge_choice1_text,
        outcome: l10n.event_solarForge_choice1_outcome,
        shipEffects: {'scanners': 0.15},
      ),
    ],
  ),

  GameEvent(
    id: 'chrono_vortex',
    title: l10n.event_chronoVortex_title,
    narrative: l10n.event_chronoVortex_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_chronoVortex_choice0_text,
        outcome: l10n.event_chronoVortex_choice0_outcome,
        shipEffects: {'hull': 0.25, 'culture': -0.10},
      ),
      EventChoice(
        text: l10n.event_chronoVortex_choice1_text,
        outcome: l10n.event_chronoVortex_choice1_outcome,
        shipEffects: {'tech': 0.10},
      ),
    ],
  ),

  GameEvent(
    id: 'machine_mutiny',
    title: l10n.event_machineMutiny_title,
    narrative: l10n.event_machineMutiny_narrative,
    category: EventCategory.malfunction,
    choices: [
      EventChoice(
        text: l10n.event_machineMutiny_choice0_text,
        outcome: l10n.event_machineMutiny_choice0_outcome,
        shipEffects: {'tech': -0.15, 'hull': 0.05},
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_machineMutiny_choice1_text,
        outcome: l10n.event_machineMutiny_choice1_outcome,
        shipEffects: {'nav': 0.15, 'hull': -0.10, 'culture': -0.05},
        authorityDelta: -0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'supernova_message',
    title: l10n.event_supernovaMessage_title,
    narrative: l10n.event_supernovaMessage_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_supernovaMessage_choice0_text,
        outcome: l10n.event_supernovaMessage_choice0_outcome,
        shipEffects: {
          'tech': 0.15,
          'culture': 0.15,
          'atmosphericScanner': -0.08,
          'gravimetricScanner': -0.08,
        },
      ),
      EventChoice(
        text: l10n.event_supernovaMessage_choice1_text,
        outcome: l10n.event_supernovaMessage_choice1_outcome,
        shipEffects: {'gravimetricScanner': 0.15},
      ),
    ],
  ),

  GameEvent(
    id: 'space_fungus',
    title: l10n.event_spaceFungus_title,
    narrative: l10n.event_spaceFungus_narrative,
    choices: [
      EventChoice(
        text: l10n.event_spaceFungus_choice0_text,
        outcome: l10n.event_spaceFungus_choice0_outcome,
        shipEffects: {'tech': -0.10},
        planetModifiers: {'biodiversity': -0.10},
      ),
      EventChoice(
        text: l10n.event_spaceFungus_choice1_text,
        outcome: l10n.event_spaceFungus_choice1_outcome,
        shipEffects: {'culture': 0.10},
        planetModifiers: {'atmosphere': 0.10},
      ),
    ],
  ),

  GameEvent(
    id: 'void_merchant',
    title: l10n.event_voidMerchant_title,
    narrative: l10n.event_voidMerchant_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_voidMerchant_choice0_text,
        outcome: l10n.event_voidMerchant_choice0_outcome,
        shipEffects: {'hull': 0.15, 'cryopods': 0.10, 'culture': -0.20},
        economyDelta: 0.03,
      ),
      EventChoice(
        text: l10n.event_voidMerchant_choice1_text,
        outcome: l10n.event_voidMerchant_choice1_outcome,
        shipEffects: {'tech': 0.15, 'nav': -0.10},
        economyDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'singularity_engine',
    title: l10n.event_singularityEngine_title,
    narrative: l10n.event_singularityEngine_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_singularityEngine_choice0_text,
        outcome: l10n.event_singularityEngine_choice0_outcome,
        shipEffects: {'nav': 0.30, 'hull': -0.20},
      ),
      EventChoice(
        text: l10n.event_singularityEngine_choice1_text,
        outcome: l10n.event_singularityEngine_choice1_outcome,
        shipEffects: {'tech': -0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'dream_contagion',
    title: l10n.event_dreamContagion_title,
    narrative: l10n.event_dreamContagion_narrative,
    choices: [
      EventChoice(
        text: l10n.event_dreamContagion_choice0_text,
        outcome: l10n.event_dreamContagion_choice0_outcome,
        shipEffects: {'tech': 0.05, 'culture': -0.15},
      ),
      EventChoice(
        text: l10n.event_dreamContagion_choice1_text,
        outcome: l10n.event_dreamContagion_choice1_outcome,
        shipEffects: {'culture': 0.20, 'tech': -0.10},
        faithDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'orbital_shipyard',
    title: l10n.event_orbitalShipyard_title,
    narrative: l10n.event_orbitalShipyard_narrative,
    category: EventCategory.boon,
    choices: [
      EventChoice(
        text: l10n.event_orbitalShipyard_choice0_text,
        outcome: l10n.event_orbitalShipyard_choice0_outcome,
        shipEffects: {'hull': 1.0}, // Full repair
      ),
      EventChoice(
        text: l10n.event_orbitalShipyard_choice1_text,
        outcome: l10n.event_orbitalShipyard_choice1_outcome,
        shipEffects: {'nav': 0.50, 'scanners': 0.50},
      ),
    ],
  ),

  GameEvent(
    id: 'void_whale_calf',
    title: l10n.event_voidWhaleCalf_title,
    narrative: l10n.event_voidWhaleCalf_narrative,
    category: EventCategory.boon,
    choices: [
      EventChoice(
        text: l10n.event_voidWhaleCalf_choice0_text,
        outcome: l10n.event_voidWhaleCalf_choice0_outcome,
        shipEffects: {'shields': 0.20, 'culture': 0.10},
      ),
      EventChoice(
        text: l10n.event_voidWhaleCalf_choice1_text,
        outcome: l10n.event_voidWhaleCalf_choice1_outcome,
        shipEffects: {'nav': 0.05},
      ),
    ],
  ),

  GameEvent(
    id: 'subspace_reef',
    title: l10n.event_subspaceReef_title,
    narrative: l10n.event_subspaceReef_narrative,
    choices: [
      EventChoice(
        text: l10n.event_subspaceReef_choice0_text,
        outcome: l10n.event_subspaceReef_choice0_outcome,
        shipEffects: {'nav': -0.15},
      ),
      EventChoice(
        text: l10n.event_subspaceReef_choice1_text,
        outcome: l10n.event_subspaceReef_choice1_outcome,
        shipEffects: {'scanners': -0.20, 'hull': -0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // PULSAR LIGHTHOUSE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'pulsar_lighthouse',
    title: l10n.event_pulsarLighthouse_title,
    narrative: l10n.event_pulsarLighthouse_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_pulsarLighthouse_choice0,
        outcome: l10n.event_pulsarLighthouse_outcome0,
        shipEffects: {
          'atmosphericScanner': 0.08,
          'gravimetricScanner': 0.08,
          'temperatureScanner': 0.06,
          'cryopods': -0.06,
        },
        colonistDelta: -15,
      ),
      EventChoice(
        text: l10n.event_pulsarLighthouse_choice1,
        outcome: l10n.event_pulsarLighthouse_outcome1,
        fuelDelta: -10,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ALIEN NURSERY
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'alien_nursery',
    title: l10n.event_alienNursery_title,
    narrative: l10n.event_alienNursery_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_alienNursery_choice0,
        outcome: l10n.event_alienNursery_outcome0,
        shipEffects: {'lifeSignsScanner': 0.10, 'cryopods': -0.05},
        colonistDelta: -8,
        nextPlanetModifiers: {'biodiversity': 0.06},
      ),
      EventChoice(
        text: l10n.event_alienNursery_choice1,
        outcome: l10n.event_alienNursery_outcome1,
        shipEffects: {'culture': 0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // DERELICT ARMADA
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'derelict_armada',
    title: l10n.event_derelictArmada_title,
    narrative: l10n.event_derelictArmada_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_derelictArmada_choice0,
        outcome: l10n.event_derelictArmada_outcome0,
        shipEffects: {'constructors': 0.10, 'hull': 0.06},
        colonistDelta: -12,
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: l10n.event_derelictArmada_choice1,
        outcome: l10n.event_derelictArmada_outcome1,
        shipEffects: {'culture': 0.08, 'technology': 0.08},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ALIEN QUARANTINE ZONE
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'alien_quarantine_zone',
    title: l10n.event_alienQuarantineZone_title,
    narrative: l10n.event_alienQuarantineZone_narrative,
    category: EventCategory.rare,
    choices: [
      EventChoice(
        text: l10n.event_alienQuarantineZone_choice0,
        outcome: l10n.event_alienQuarantineZone_outcome0,
        shipEffects: {
          'technology': 0.12,
          'mineralScanner': 0.08,
          'cryopods': -0.10,
        },
        colonistDelta: -25,
      ),
      EventChoice(
        text: l10n.event_alienQuarantineZone_choice1,
        outcome: l10n.event_alienQuarantineZone_outcome1,
        shipEffects: {'temperatureScanner': 0.04, 'atmosphericScanner': 0.04},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // HYDROPONICS BLIGHT
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'hydroponics_blight',
    title: l10n.event_hydroponicsBlight_title,
    narrative: l10n.event_hydroponicsBlight_narrative,
    category: EventCategory.common,
    choices: [
      EventChoice(
        text: l10n.event_hydroponicsBlight_choice0,
        outcome: l10n.event_hydroponicsBlight_outcome0,
        shipEffects: {'culture': -0.06},
        energyDelta: -5,
      ),
      EventChoice(
        text: l10n.event_hydroponicsBlight_choice1,
        outcome: l10n.event_hydroponicsBlight_outcome1,
        shipEffects: {'cryopods': -0.08},
        colonistDelta: -20,
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // TRADER
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'alien_trader',
    title: l10n.event_alienTrader_title,
    narrative: l10n.event_alienTrader_narrative,
    choices: [],
    category: EventCategory.boon,
    openTraderScreen: true,
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // POLITICAL / GOVERNANCE EVENTS
  // ═══════════════════════════════════════════════════════════════════════
  GameEvent(
    id: 'constitutional_convention',
    title: 'Constitutional Convention',
    narrative:
        'The colony ship\'s population has grown restless without formal governance. '
        'Delegates from every deck gather in the cargo hold to draft a charter '
        'that will define how the future colony is ruled. Three factions present '
        'competing visions for the new government.',
    choices: [
      EventChoice(
        text: 'Draft a democratic charter with universal suffrage',
        outcome:
            'The colonists ratify a constitution guaranteeing equal representation. '
            'Decision-making slows but morale soars as every voice is heard.',
        shipEffects: {'culture': 0.05},
        authorityDelta: -0.15,
        cultureDelta: 0.10,
      ),
      EventChoice(
        text: 'Establish a strong executive with emergency powers',
        outcome:
            'A single leader is appointed with sweeping authority. Decisions '
            'come fast but dissenters whisper of tyranny in the lower decks.',
        shipEffects: {'nav': 0.03},
        authorityDelta: 0.15,
        cultureDelta: -0.05,
      ),
      EventChoice(
        text: 'Form a technocratic council of specialists',
        outcome:
            'Engineers, scientists, and doctors form a ruling council based on '
            'expertise. Efficiency improves, though some feel excluded from power.',
        shipEffects: {'tech': 0.03},
        economyDelta: 0.05,
        cultureDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'military_coup_threat',
    title: 'Military Coup Threat',
    category: EventCategory.rare,
    narrative:
        'Commander Vasquez of the ship\'s security detail has seized the armory '
        'and issued an ultimatum: grant emergency military powers or face a '
        'lockdown of all decks. The situation is volatile and the colonists '
        'look to you for a response.',
    choices: [
      EventChoice(
        text: 'Resist the coup with loyal crew members',
        outcome:
            'Loyal crew rally to oppose Vasquez. The standoff ends with minimal '
            'bloodshed, but the security detail is weakened and some colonists '
            'are caught in the crossfire.',
        shipEffects: {'culture': -0.05},
        colonistDelta: -20,
        authorityDelta: -0.10,
        militaryDelta: -0.05,
      ),
      EventChoice(
        text: 'Submit to the commander\'s demands',
        outcome:
            'Vasquez assumes control of ship operations. Order is restored '
            'swiftly, but at the cost of civil liberties. Armed patrols now '
            'walk every corridor.',
        shipEffects: {'nav': 0.03},
        authorityDelta: 0.15,
        militaryDelta: 0.10,
      ),
      EventChoice(
        text: 'Negotiate limited emergency powers with a sunset clause',
        outcome:
            'After tense negotiations, Vasquez accepts temporary authority with '
            'oversight. A fragile compromise that satisfies no one completely, '
            'but prevents violence.',
        shipEffects: {'culture': 0.03},
        authorityDelta: 0.05,
        militaryDelta: 0.05,
        cultureDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'religious_awakening',
    title: 'Religious Awakening',
    narrative:
        'A charismatic preacher has drawn hundreds of colonists into a new '
        'faith movement. They gather in the observation dome each cycle, '
        'their hymns echoing through the ventilation shafts. Some crew members '
        'worry about fanaticism; others find genuine comfort in the teachings.',
    choices: [
      EventChoice(
        text: 'Embrace the faith movement and provide resources',
        outcome:
            'The movement flourishes with official support. Morale improves '
            'among believers, and their communal spirit strengthens social bonds '
            'across the ship.',
        shipEffects: {'culture': 0.05},
        faithDelta: 0.15,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: 'Enforce strict secularism aboard the ship',
        outcome:
            'Religious gatherings are restricted to private quarters. The '
            'movement goes underground, breeding resentment, but scientific '
            'rationalism remains the official doctrine.',
        shipEffects: {'tech': 0.03},
        faithDelta: -0.10,
        authorityDelta: 0.05,
      ),
      EventChoice(
        text: 'Allow worship but regulate its influence',
        outcome:
            'The faith is permitted but kept separate from governance. A '
            'chaplain is appointed to liaise with command. An uneasy balance '
            'is maintained.',
        shipEffects: {'culture': 0.02},
        faithDelta: 0.05,
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'corporate_takeover',
    title: 'Corporate Takeover',
    narrative:
        'The ship\'s resource managers have been quietly consolidating control '
        'over food distribution, water recycling, and power allocation. They '
        'now propose formalizing their authority into a corporate structure '
        'that would manage the future colony\'s economy.',
    choices: [
      EventChoice(
        text: 'Allow free market principles to govern resources',
        outcome:
            'The corporate faction takes over resource management. Efficiency '
            'improves dramatically, but prices rise and the poorest colonists '
            'struggle to afford basic necessities.',
        shipEffects: {'tech': 0.03},
        economyDelta: 0.15,
        authorityDelta: -0.05,
      ),
      EventChoice(
        text: 'Nationalize all resources under collective ownership',
        outcome:
            'Resources are seized and placed under communal control. The '
            'corporate faction is dismantled, but innovation stalls without '
            'profit incentives.',
        shipEffects: {'culture': 0.05},
        economyDelta: -0.10,
        authorityDelta: 0.10,
      ),
      EventChoice(
        text: 'Implement regulated markets with safety nets',
        outcome:
            'A mixed economy is established with price controls and welfare '
            'programs. Neither faction is fully satisfied, but basic needs '
            'are met while allowing some enterprise.',
        shipEffects: {'culture': 0.02, 'tech': 0.02},
        economyDelta: 0.05,
        cultureDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'succession_crisis',
    title: 'Succession Crisis',
    category: EventCategory.rare,
    narrative:
        'The ship\'s captain has died in their sleep, leaving no designated '
        'successor. Three factions immediately vie for control: the civilian '
        'council demands elections, the security chief claims martial authority, '
        'and the elder colonists invoke traditional leadership rites.',
    choices: [
      EventChoice(
        text: 'Hold an emergency election',
        outcome:
            'A chaotic but spirited election produces a new captain chosen '
            'by popular vote. The process is messy, but the colonists feel '
            'ownership of their leadership.',
        shipEffects: {'culture': 0.05},
        authorityDelta: -0.10,
        cultureDelta: 0.10,
      ),
      EventChoice(
        text: 'Let the military assume command',
        outcome:
            'The security chief steps into the captain\'s chair. Discipline '
            'is restored immediately, but civilian crew eye the armed guards '
            'with growing unease.',
        shipEffects: {'nav': 0.05},
        militaryDelta: 0.15,
        authorityDelta: 0.10,
      ),
      EventChoice(
        text: 'Convene a council of elders',
        outcome:
            'The eldest and most experienced colonists form a governing council. '
            'Their wisdom guides the ship, though some younger crew feel '
            'marginalized by the gerontocracy.',
        shipEffects: {'culture': 0.03},
        cultureDelta: 0.05,
        faithDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'native_sovereignty',
    title: 'Native Sovereignty',
    category: EventCategory.rare,
    narrative:
        'Long-range scans confirm intelligent life on the target planet. '
        'Intercepted communications reveal a sophisticated civilization that '
        'has detected your approach. They transmit a formal demand: recognize '
        'their territorial sovereignty or face resistance upon arrival.',
    choices: [
      EventChoice(
        text: 'Recognize native sovereignty and request permission to settle',
        outcome:
            'You transmit a formal recognition of native rights. The response '
            'is cautious but positive. Future relations will begin on a '
            'foundation of mutual respect, though landing sites may be limited.',
        shipEffects: {'culture': 0.05},
        planetModifiers: {'nativeDisposition': 0.10},
        militaryDelta: -0.10,
        cultureDelta: 0.10,
      ),
      EventChoice(
        text: 'Assert colonial supremacy and prepare for resistance',
        outcome:
            'You broadcast your intention to settle regardless. The crew '
            'begins weapons drills and fortification planning. The natives '
            'go silent, which is somehow more terrifying than threats.',
        shipEffects: {'hull': 0.03},
        planetModifiers: {'nativeDisposition': -0.15},
        militaryDelta: 0.10,
        authorityDelta: 0.10,
      ),
      EventChoice(
        text: 'Propose shared governance of the planet',
        outcome:
            'You offer a framework for coexistence and resource sharing. '
            'The natives are intrigued but wary. Negotiations will be complex, '
            'but the possibility of peace exists.',
        shipEffects: {'culture': 0.03},
        planetModifiers: {'nativeDisposition': 0.05},
        cultureDelta: 0.05,
        economyDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'labor_strike',
    title: 'Labor Strike',
    narrative:
        'The engineering crew has walked off the job, demanding shorter shifts, '
        'better food rations, and a voice in navigation decisions. Critical '
        'systems are running on automated backups, but they won\'t last long. '
        'The rest of the colonists watch nervously.',
    choices: [
      EventChoice(
        text: 'Meet the workers\' demands in full',
        outcome:
            'The strike ends immediately. Workers return to their posts with '
            'improved conditions. Productivity drops slightly as shorter shifts '
            'take effect, but loyalty is unshakeable.',
        shipEffects: {'culture': 0.05, 'tech': -0.03},
        economyDelta: -0.10,
        cultureDelta: 0.05,
        authorityDelta: -0.05,
      ),
      EventChoice(
        text: 'Suppress the strike and enforce mandatory labor',
        outcome:
            'Security forces escort the workers back to their stations at '
            'gunpoint. The engines hum again, but hatred simmers in the '
            'lower decks. Several workers are confined to quarters.',
        shipEffects: {'tech': 0.03},
        colonistDelta: -15,
        authorityDelta: 0.10,
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: 'Offer a partial compromise on key demands',
        outcome:
            'After marathon negotiations, a deal is struck: better rations '
            'and advisory input, but no reduction in shift length. Neither side '
            'is thrilled, but the engines keep running.',
        shipEffects: {'culture': 0.02},
        economyDelta: -0.05,
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'censorship_debate',
    title: 'Censorship Debate',
    narrative:
        'A leaked document reveals the true condition of the ship\'s failing '
        'systems. Panic spreads through the lower decks. The communications '
        'officer proposes restricting information access to prevent further '
        'unrest. Civil liberties advocates are outraged.',
    choices: [
      EventChoice(
        text: 'Guarantee free access to all information',
        outcome:
            'Full transparency is established. The initial panic subsides as '
            'colonists rally to help fix the problems they now understand. '
            'Trust in leadership grows, though some information causes distress.',
        shipEffects: {'culture': 0.05},
        authorityDelta: -0.10,
        cultureDelta: 0.10,
      ),
      EventChoice(
        text: 'Implement full information control',
        outcome:
            'All communications are now filtered through command. The panic '
            'stops, replaced by an eerie calm. But rumors fill the void left '
            'by censored truth, and they are often worse than reality.',
        shipEffects: {'culture': -0.05},
        authorityDelta: 0.15,
        cultureDelta: -0.10,
      ),
      EventChoice(
        text: 'Filter only security-sensitive information',
        outcome:
            'A classification system is established. Most information flows '
            'freely, but military and critical system data requires clearance. '
            'A workable middle ground that mostly satisfies.',
        shipEffects: {'culture': 0.02},
        authorityDelta: 0.05,
        militaryDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'colonial_charter',
    title: 'Colonial Charter',
    narrative:
        'With planetfall approaching, the colonists must draft fundamental '
        'laws for their new society. Three philosophical camps have emerged, '
        'each championing a different vision for what the colony should become. '
        'The debate is heated and deeply personal.',
    choices: [
      EventChoice(
        text: 'A progressive charter emphasizing individual rights',
        outcome:
            'The charter enshrines personal freedoms, equality, and social '
            'mobility. Artists and thinkers celebrate; traditionalists warn '
            'that unchecked freedom leads to chaos.',
        shipEffects: {'culture': 0.05},
        cultureDelta: 0.15,
        authorityDelta: -0.05,
      ),
      EventChoice(
        text: 'A conservative charter preserving Earth\'s traditions',
        outcome:
            'The charter codifies traditional values, family structures, and '
            'religious observance. Many find comfort in familiar customs; '
            'others feel stifled by the weight of old-world thinking.',
        shipEffects: {'culture': 0.02},
        faithDelta: 0.10,
        cultureDelta: -0.05,
      ),
      EventChoice(
        text: 'A pragmatic charter focused on survival and growth',
        outcome:
            'The charter prioritizes resource management, technical education, '
            'and economic development. It lacks poetry but ensures the colony '
            'will be efficient and well-organized.',
        shipEffects: {'tech': 0.03},
        economyDelta: 0.10,
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'separatist_movement',
    title: 'Separatist Movement',
    category: EventCategory.rare,
    narrative:
        'A faction of colonists has declared independence from ship governance. '
        'They\'ve barricaded themselves in the aft section, demanding the right '
        'to establish their own settlement upon landing. They control 15%% of '
        'the ship\'s food reserves and a backup navigation array.',
    choices: [
      EventChoice(
        text: 'Grant regional autonomy within a federal framework',
        outcome:
            'The separatists accept a deal: their own district with local '
            'governance, under a loose federal umbrella. The precedent of '
            'fragmentation worries some, but peace is maintained.',
        shipEffects: {'culture': 0.03},
        authorityDelta: -0.10,
        economyDelta: -0.05,
      ),
      EventChoice(
        text: 'Storm the barricades and force reunification',
        outcome:
            'Security teams breach the aft section. The separatists resist '
            'fiercely. Order is restored, but at terrible cost. The ship is '
            'united in body, if not in spirit.',
        shipEffects: {'hull': -0.03},
        colonistDelta: -25,
        authorityDelta: 0.15,
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: 'Address the root grievances driving the movement',
        outcome:
            'Mediators work to understand what pushed the faction away. '
            'Reforms in resource distribution and representation slowly bring '
            'the separatists back into the fold. Healing takes time.',
        shipEffects: {'culture': 0.05},
        cultureDelta: 0.10,
        economyDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'war_council',
    title: 'War Council',
    narrative:
        'With potential threats detected in nearby systems, the ship\'s '
        'leadership convenes a war council. The question: how much of the '
        'colony\'s limited resources should be devoted to military preparedness '
        'versus civilian infrastructure?',
    choices: [
      EventChoice(
        text: 'Full armament: forge weapons and train soldiers',
        outcome:
            'Workshops are retooled for weapons production. Every able-bodied '
            'colonist receives combat training. The ship bristles with arms, '
            'but the budget for farming equipment shrinks.',
        shipEffects: {'shields': 0.05},
        militaryDelta: 0.15,
        economyDelta: -0.05,
      ),
      EventChoice(
        text: 'Disarmament: melt weapons into tools',
        outcome:
            'The armory is emptied and its contents recycled into construction '
            'materials. The colony will build with plowshares, not swords. '
            'Pacifists rejoice; realists worry about what lurks in the dark.',
        shipEffects: {'constructors': 0.05},
        militaryDelta: -0.10,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: 'Defensive posture only: shields and walls, not swords',
        outcome:
            'Resources go to fortifications, shields, and early warning systems. '
            'No offensive weapons are produced. A balanced approach that keeps '
            'options open without provoking potential neighbors.',
        shipEffects: {'shields': 0.03},
        militaryDelta: 0.05,
        authorityDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'trade_federation',
    title: 'Trade Federation',
    narrative:
        'As the colony approaches viability, factions debate how to structure '
        'its economy. The question goes beyond mere survival — it will define '
        'the kind of society that takes root on alien soil. Merchants, '
        'communalists, and bureaucrats all make their case.',
    choices: [
      EventChoice(
        text: 'Establish free trade zones with minimal regulation',
        outcome:
            'Markets spring up in every habitat module. Innovation flourishes '
            'as traders compete. Wealth inequality grows, but so does the '
            'total pool of resources available to the colony.',
        shipEffects: {'tech': 0.03},
        economyDelta: 0.15,
        authorityDelta: -0.05,
      ),
      EventChoice(
        text: 'Implement communal sharing of all resources',
        outcome:
            'Private property is abolished. Everything belongs to everyone. '
            'No one goes hungry, but no one has incentive to produce more '
            'than the minimum. Mediocrity is comfortable.',
        shipEffects: {'culture': 0.05},
        economyDelta: -0.15,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: 'Create a state-managed trade system',
        outcome:
            'The government controls all trade, setting prices and allocating '
            'resources. The system is fair but inflexible. Black markets '
            'emerge in the maintenance corridors.',
        shipEffects: {'nav': 0.02},
        economyDelta: 0.05,
        authorityDelta: 0.10,
      ),
    ],
  ),

  GameEvent(
    id: 'faith_vs_science',
    title: 'Faith vs. Science',
    narrative:
        'The ship\'s telescope has captured images of a cosmic phenomenon '
        'that directly contradicts the central tenet of the dominant faith '
        'movement. The head scientist wants to publish the findings; the '
        'religious leader insists they will tear the community apart.',
    choices: [
      EventChoice(
        text: 'Publish the scientific findings in full',
        outcome:
            'Truth prevails over comfort. The data is released and the '
            'religious movement fractures. Some believers adapt their faith; '
            'others lose it entirely. Knowledge advances.',
        shipEffects: {'tech': 0.03},
        faithDelta: -0.10,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: 'Suppress the findings to preserve social harmony',
        outcome:
            'The data is classified. The religious community remains stable, '
            'but the science team is demoralized. Truth deferred is not truth '
            'denied, but it feels like it.',
        shipEffects: {'culture': 0.03},
        faithDelta: 0.10,
        cultureDelta: -0.05,
      ),
      EventChoice(
        text: 'Convene a joint panel to find harmony between both views',
        outcome:
            'Scientists and theologians work together to reinterpret the '
            'findings. A new synthesis emerges that expands both understanding '
            'and faith. Not everyone is convinced, but the dialogue is healthy.',
        shipEffects: {'tech': 0.03, 'culture': 0.03},
        faithDelta: 0.05,
        cultureDelta: 0.05,
      ),
    ],
  ),

  GameEvent(
    id: 'surveillance_state',
    title: 'Surveillance State',
    narrative:
        'After a series of sabotage incidents, the security chief proposes '
        'installing monitoring systems in every compartment of the ship. '
        'Cameras, microphones, and biometric scanners would track every '
        'colonist\'s movements. Privacy advocates are horrified.',
    choices: [
      EventChoice(
        text: 'Reject the surveillance proposal entirely',
        outcome:
            'Privacy is preserved. The saboteur remains at large, but the '
            'colonists sleep easier knowing they aren\'t watched. Investigation '
            'continues through traditional means.',
        shipEffects: {'culture': 0.05},
        authorityDelta: -0.10,
        cultureDelta: 0.05,
      ),
      EventChoice(
        text: 'Implement full surveillance across the ship',
        outcome:
            'Every corner of the ship is monitored. The saboteur is caught '
            'within days. But the cameras remain, and the security chief shows '
            'no interest in turning them off. Ever.',
        shipEffects: {'tech': 0.03},
        authorityDelta: 0.15,
        militaryDelta: 0.05,
      ),
      EventChoice(
        text: 'Install limited monitoring in critical areas only',
        outcome:
            'Cameras cover the engine room, armory, and bridge. Living quarters '
            'remain private. The saboteur is eventually identified through '
            'pattern analysis. A measured response.',
        shipEffects: {'tech': 0.02},
        authorityDelta: 0.05,
        militaryDelta: 0.03,
      ),
    ],
  ),

  GameEvent(
    id: 'native_alliance',
    title: 'Native Alliance',
    category: EventCategory.rare,
    narrative:
        'The native civilization has proposed a formal treaty. Their ambassador '
        'arrives via shuttle, an elegant being who speaks through a translator '
        'device of astonishing sophistication. They offer three forms of '
        'relationship, each with different implications for the colony\'s future.',
    choices: [
      EventChoice(
        text: 'Sign an equal alliance treaty',
        outcome:
            'The treaty establishes mutual defense, shared research, and equal '
            'territorial rights. Both civilizations will grow together. The '
            'natives share agricultural knowledge that transforms your colony '
            'prospects.',
        shipEffects: {'culture': 0.08},
        planetModifiers: {'nativeDisposition': 0.15, 'biodiversity': 0.05},
        cultureDelta: 0.10,
        militaryDelta: -0.05,
      ),
      EventChoice(
        text: 'Negotiate from a position of colonial dominance',
        outcome:
            'You leverage your advanced technology to secure favorable terms. '
            'The natives cede territory and resources. They sign with trembling '
            'hands. History has seen this before, and it rarely ends well.',
        shipEffects: {'tech': 0.03},
        planetModifiers: {'nativeDisposition': -0.10, 'resources': 0.08},
        militaryDelta: 0.10,
        authorityDelta: 0.10,
      ),
      EventChoice(
        text: 'Establish a trade partnership focused on mutual benefit',
        outcome:
            'Commerce bridges the gap between species. Native materials flow '
            'to your workshops; your technology improves their medicine. '
            'Friendship grows from mutual profit.',
        shipEffects: {'tech': 0.03},
        planetModifiers: {'nativeDisposition': 0.05, 'resources': 0.05},
        economyDelta: 0.10,
      ),
    ],
  ),
];
