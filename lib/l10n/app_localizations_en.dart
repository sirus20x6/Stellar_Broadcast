// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'BEGIN VOYAGE';

  @override
  String get ui_title_dailyVoyage => 'DAILY VOYAGE';

  @override
  String get ui_title_dailyCompleted => 'DAILY COMPLETED';

  @override
  String get ui_title_customSeed => 'CUSTOM SEED';

  @override
  String get ui_title_legacyHub => 'LEGACY HUB';

  @override
  String get ui_title_cancel => 'CANCEL';

  @override
  String get ui_title_startVoyage => 'START VOYAGE';

  @override
  String get ui_title_seedInvalid => 'Invalid seed code. Use only A–Z and 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SEC $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEED: $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNERS';

  @override
  String get ui_voyage_scanPlanet => 'SCAN PLANET';

  @override
  String get ui_voyage_noEnergy => 'NO ENERGY';

  @override
  String get ui_voyage_pressOn => 'PRESS ON';

  @override
  String get ui_voyage_systemHull => 'Hull';

  @override
  String get ui_voyage_systemNav => 'Nav';

  @override
  String get ui_voyage_systemCryopods => 'Cryopods';

  @override
  String get ui_voyage_systemCulture => 'Culture';

  @override
  String get ui_voyage_systemTech => 'Tech';

  @override
  String get ui_voyage_systemConstruct => 'Construct';

  @override
  String get ui_voyage_systemShields => 'Shields';

  @override
  String get ui_voyage_systemLanding => 'Landing';

  @override
  String get ui_voyage_scannerAtmo => 'Atmosphere';

  @override
  String get ui_voyage_scannerGrav => 'Gravity';

  @override
  String get ui_voyage_scannerMineral => 'Minerals';

  @override
  String get ui_voyage_scannerLife => 'Life Signs';

  @override
  String get ui_voyage_scannerTemp => 'Temperature';

  @override
  String get ui_voyage_scannerWater => 'Water';

  @override
  String get ui_voyage_narrative0 =>
      'Earth orbit clear. Cryopods stable. Archive ring secure.';

  @override
  String get ui_voyage_narrative1 =>
      'Outer-system transit nominal. Long-range scanners widening search.';

  @override
  String get ui_voyage_narrative2 =>
      'Earthside traffic has faded below detection threshold.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Archived coordinates match a flagged system. Adjusting course.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Scanner arrays still calibrating for deep-space resolution.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Marked system ahead. Prior survey data remains consistent.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Faint signal ahead. Beginning planetary sweep.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'FTL exit complete. Fresh star system in view.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Cryopod banks stable. Sector scan in progress.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'New planet resolving in the forward array.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Stellar cartography flags a viable candidate.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instruments have found another world worth measuring.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Scanner lock acquired on a new target.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Navigation charts refreshed. Candidate world within range.';

  @override
  String get ui_scan_landHere => 'LAND HERE';

  @override
  String get ui_scan_pressOn => 'PRESS ON';

  @override
  String get ui_scan_allStatsVerified => 'ALL STATS VERIFIED';

  @override
  String get ui_scan_launchProbe => 'LAUNCH PROBE';

  @override
  String get ui_scan_habitability => 'HABITABILITY';

  @override
  String get ui_scan_statAtmos => 'ATMOS';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'WATER';

  @override
  String get ui_scan_statResource => 'RESOURCE';

  @override
  String get ui_scan_statGravity => 'GRAVITY';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALY';

  @override
  String get ui_scan_statRadiation => 'RADIATION';

  @override
  String ui_scan_probesCount(int count) {
    return 'PROBES: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'UNCERTAINTY: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'PLANET ANALYSIS';

  @override
  String get ui_landing_shipStatus => 'SHIP STATUS';

  @override
  String ui_landing_fuel(int amount) {
    return 'FUEL: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'LOW FUEL WARNING';

  @override
  String get ui_landing_landingRiskCritical => 'LANDING RISK: CRITICAL';

  @override
  String get ui_landing_landingRiskElevated => 'LANDING RISK: ELEVATED';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Landing system severely damaged. Atmospheric entry may destroy cargo and colonists.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Landing system degraded. Expect rough atmospheric entry with possible system damage.';

  @override
  String get ui_landing_riskAssessment => 'RISK ASSESSMENT';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Your ship can sustain ~$remaining more encounters';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Your ship may not survive another voyage';

  @override
  String get ui_landing_surfaceFeatures => 'SURFACE FEATURES';

  @override
  String get ui_landing_nameYourColony => 'NAME YOUR COLONY';

  @override
  String get ui_landing_establishColony => 'ESTABLISH COLONY';

  @override
  String get ui_landing_pressOnward => 'PRESS ONWARD';

  @override
  String get ui_landing_statAtmosphere => 'Atmosphere';

  @override
  String get ui_landing_statTemperature => 'Temperature';

  @override
  String get ui_landing_statWater => 'Water';

  @override
  String get ui_landing_statResources => 'Resources';

  @override
  String get ui_landing_statGravity => 'Gravity';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversity';

  @override
  String get ui_landing_statAvgHealth => 'Avg Health';

  @override
  String get ui_landing_statHull => 'Hull';

  @override
  String get ui_landing_statNavigation => 'Navigation';

  @override
  String get ui_landing_statCryopods => 'Cryopods';

  @override
  String get ui_landing_statCulture => 'Culture';

  @override
  String get ui_landing_statTech => 'Tech';

  @override
  String get ui_landing_statConstructors => 'Constructors';

  @override
  String get ui_landing_statShields => 'Shields';

  @override
  String get ui_landing_statLandingSys => 'Landing Sys';

  @override
  String get ui_ending_colonyEstablished => 'COLONY ESTABLISHED';

  @override
  String get ui_ending_colonyScore => 'COLONY SCORE';

  @override
  String get ui_ending_colonyProfile => 'COLONY PROFILE';

  @override
  String get ui_ending_landscape => 'LANDSCAPE';

  @override
  String get ui_ending_voyageRecord => 'VOYAGE RECORD';

  @override
  String get ui_ending_scoreBreakdown => 'SCORE BREAKDOWN';

  @override
  String get ui_ending_total => 'TOTAL';

  @override
  String get ui_ending_achievementsUnlocked => 'ACHIEVEMENTS UNLOCKED';

  @override
  String get ui_ending_challengeFriend => 'CHALLENGE FRIEND';

  @override
  String get ui_ending_shareCard => 'SHARE CARD';

  @override
  String get ui_ending_shareCardDialogTitle => 'Share Your Voyage';

  @override
  String get ui_ending_shareCardShare => 'SHARE';

  @override
  String get ui_ending_shareCardCancel => 'CANCEL';

  @override
  String get ui_ending_copySeed => 'COPY SEED';

  @override
  String get ui_ending_viewLegacy => 'VIEW LEGACY';

  @override
  String get ui_ending_newVoyage => 'NEW VOYAGE';

  @override
  String get ui_ending_achievementFirstLanding => 'First Landing';

  @override
  String get ui_ending_achievementGoldenAge => 'Golden Age';

  @override
  String get ui_ending_achievementSurvivor => 'Survivor';

  @override
  String get ui_ending_achievementExplorer => 'Explorer';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfectionist';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'Death World Survivor';

  @override
  String get ui_ending_achievementFullCrew => 'Full Crew';

  @override
  String get ui_ending_achievementProbeMaster => 'Probe Master';

  @override
  String get ui_ending_achievementIronHull => 'Iron Hull';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Leap of Faith';

  @override
  String get ui_gameOver_missionFailed => 'MISSION FAILED';

  @override
  String get ui_gameOver_voyageRecord => 'VOYAGE RECORD';

  @override
  String get ui_gameOver_encountersSurvived => 'ENCOUNTERS SURVIVED';

  @override
  String get ui_gameOver_probesRemaining => 'PROBES REMAINING';

  @override
  String get ui_gameOver_colonistsRemaining => 'COLONISTS REMAINING';

  @override
  String get ui_gameOver_finalShipHealth => 'FINAL SHIP HEALTH';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANETS SKIPPED';

  @override
  String get ui_gameOver_damageTaken => 'DAMAGE TAKEN';

  @override
  String get ui_gameOver_fuelRemaining => 'FUEL REMAINING';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGY REMAINING';

  @override
  String get ui_gameOver_challengeFriend => 'CHALLENGE FRIEND';

  @override
  String get ui_gameOver_viewLegacy => 'VIEW LEGACY';

  @override
  String get ui_gameOver_newVoyage => 'NEW VOYAGE';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nI didn\'t survive... $reason.\nThink you can do better on the same voyage?\nstellarbroadcast://play?seed=$seedCode\n\nDon\'t have the app?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'The last colonist died in cryosleep — a cascade failure no emergency protocol could prevent. The Exodus sailed on, a ghost ship carrying only automated systems and frozen silence. Its mission had failed not in a moment of catastrophe, but in the slow attrition of human lives, one by one, until none remained.';

  @override
  String get ui_gameOver_epilogueHull =>
      'The hull gave way in silence — metal fatigue compounded by countless micro-impacts until the ship could hold together no longer. Atmosphere bled into the void. The colony ship Exodus broke apart, its wreckage joining the ancient debris fields between the stars. No distress signal was ever received.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Without navigation, the Exodus drifted into uncharted space — star charts useless, course corrections impossible. The ship sailed on through the dark, its sleeping passengers unaware that their destination had been replaced by eternity. Some say the ship still drifts, a ghost vessel in the endless night.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'One by one, the cryopods failed — a cascade that no emergency protocol could halt. The colonists never woke. The Exodus continued on its programmed course, a tomb ship carrying only silence to whatever world it would eventually reach. A monument to a dream that died in frozen sleep.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'The Exodus fell silent. Its mission, its crew, its cargo of human hope — all lost to the indifferent vastness between the stars. Perhaps someday another civilization will find the wreckage and wonder what brave species dared to cross the void.';

  @override
  String get ui_settings_title => 'SETTINGS';

  @override
  String get ui_settings_music => 'MUSIC';

  @override
  String get ui_settings_soundEffects => 'SOUND EFFECTS';

  @override
  String get ui_settings_haptics => 'HAPTICS';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Go Premium';

  @override
  String get ui_settings_enabled => 'Enabled';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Language';

  @override
  String get ui_settings_systemDefault => 'System default';

  @override
  String get ui_settings_statsPosition => 'Stats & buttons position';

  @override
  String get ui_settings_statsLeft => 'LEFT';

  @override
  String get ui_settings_statsRight => 'RIGHT';

  @override
  String get ui_legacy_title => 'LEGACY HUB';

  @override
  String get ui_legacy_commanderStats => 'COMMANDER STATS';

  @override
  String get ui_legacy_highScores => 'HIGH SCORES';

  @override
  String get ui_legacy_upgrades => 'UPGRADES';

  @override
  String get ui_legacy_achievements => 'ACHIEVEMENTS';

  @override
  String get ui_legacy_voyageLog => 'VOYAGE LOG';

  @override
  String get ui_legacy_voyages => 'VOYAGES';

  @override
  String get ui_legacy_bestScore => 'BEST SCORE';

  @override
  String get ui_legacy_legacyPts => 'LEGACY PTS';

  @override
  String get ui_legacy_completed => 'COMPLETED';

  @override
  String get ui_legacy_notYetPlayed => 'NOT YET PLAYED';

  @override
  String get ui_legacy_dailyHistory => 'DAILY HISTORY';

  @override
  String get ui_premium_goPremium => 'GO PREMIUM';

  @override
  String get ui_premium_subtitle =>
      'Support the mission. Upgrade your command.';

  @override
  String get ui_premium_removeAds => 'Remove all ads forever';

  @override
  String get ui_premium_supportIndie => 'Support indie development';

  @override
  String get ui_premium_exclusiveTitle => 'Exclusive commander title';

  @override
  String get ui_premium_priorityFeatures => 'Priority feature requests';

  @override
  String get ui_premium_lifetime => 'Lifetime';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'SCANNER UPGRADE';

  @override
  String get ui_scannerUpgrade_subtitle => 'Choose a scanner to upgrade';

  @override
  String get ui_scannerUpgrade_skip => 'SKIP';

  @override
  String get ui_scannerUpgrade_max => 'MAX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmospheric';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetric';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Life Signs';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperature';

  @override
  String get ui_scannerUpgrade_water => 'Water';

  @override
  String get ui_event_continue => 'CONTINUE';

  @override
  String get ui_event_tapToSkip => 'TAP TO SKIP';

  @override
  String get ui_event_colonists => 'COLONISTS';

  @override
  String get ui_event_landing => 'LANDING';

  @override
  String get ui_event_atmScan => 'ATM SCAN';

  @override
  String get ui_event_gravScan => 'GRAV SCAN';

  @override
  String get ui_event_minScan => 'MIN SCAN';

  @override
  String get ui_event_lifeScan => 'LIFE SCAN';

  @override
  String get ui_event_tempScan => 'TEMP SCAN';

  @override
  String get ui_event_h2oScan => 'H2O SCAN';

  @override
  String get onboarding_page0_title => 'Humanity\'s Last Hope';

  @override
  String get onboarding_page0_description =>
      'Earth is dying. The governments of the world have pooled their last reserves to build one final vessel — a colony ship carrying the remnants of humanity into the stars.';

  @override
  String get onboarding_page1_title => 'Seek a New Home';

  @override
  String get onboarding_page1_description =>
      'Navigate the uncharted void between stars. Scan alien worlds, face cosmic dangers, and make impossible choices.';

  @override
  String get onboarding_page2_title => 'Your Legacy Endures';

  @override
  String get onboarding_page2_description =>
      'Every voyage teaches humanity something new. Earn Legacy Points to unlock permanent upgrades, and carve your name into the stars.';

  @override
  String get onboarding_page3_title => 'Your Privacy, Your Choice';

  @override
  String get onboarding_page3_description =>
      'Choose how you\'d like to experience Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Paradise';

  @override
  String get planet_tierHabitable => 'Habitable';

  @override
  String get planet_tierHarsh => 'Harsh';

  @override
  String get planet_tierHostile => 'Hostile';

  @override
  String get planet_tierDeathWorld => 'Death World';

  @override
  String get planet_featurePlantLife => 'Plant Life';

  @override
  String get planet_featureEdiblePlants => 'Edible Plants';

  @override
  String get planet_featurePoisonousPlants => 'Poisonous Plants';

  @override
  String get planet_featureUnicellularLife => 'Unicellular Life';

  @override
  String get planet_featureDangerousFauna => 'Dangerous Fauna';

  @override
  String get planet_featureTameableFauna => 'Tameable Fauna';

  @override
  String get planet_featureAirtightCaves => 'Airtight Caves';

  @override
  String get planet_featureInsulatedCaves => 'Insulated Caves';

  @override
  String get planet_featureBarrenMoon => 'Barren Moon';

  @override
  String get planet_featureMetalRichMoon => 'Metal-Rich Moon';

  @override
  String get planet_featureUnstableMoon => 'Unstable Moon';

  @override
  String get planet_featureOutstandingBeauty => 'Outstanding Beauty';

  @override
  String get planet_featureOutstandingUgliness => 'Outstanding Ugliness';

  @override
  String get planet_featureAncientRuins => 'Ancient Ruins';

  @override
  String get planet_featureMonuments => 'Monuments';

  @override
  String get planet_featureRapidRotation => 'Rapid Rotation';

  @override
  String get planet_featureSlowRotation => 'Slow Rotation';

  @override
  String get planet_featureVolcanicActivity => 'Volcanic Activity';

  @override
  String get planet_featureTectonicInstability => 'Tectonic Instability';

  @override
  String get planet_featureElectricalStorms => 'Electrical Storms';

  @override
  String get planet_featureToxicSpores => 'Toxic Spores';

  @override
  String get planet_featureDeepOceans => 'Deep Oceans';

  @override
  String get planet_featureGeothermalVents => 'Geothermal Vents';

  @override
  String get planet_featureStrongMagnetosphere => 'Strong Magnetosphere';

  @override
  String get planet_featureWeakMagnetosphere => 'Weak Magnetosphere';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Symbiotic Organisms';

  @override
  String get planet_featureGravityWells => 'Gravity Wells';

  @override
  String get planet_featureSubspaceEchoes => 'Subspace Echoes';

  @override
  String get planet_featureBioluminescentLife => 'Bioluminescent Life';

  @override
  String get planet_featureAquaticMegafauna => 'Aquatic Megafauna';

  @override
  String get planet_featureFloatingIslands => 'Floating Islands';

  @override
  String get planet_featureCrystalCaverns => 'Crystal Caverns';

  @override
  String get planet_featureLavaTubes => 'Lava Tubes';

  @override
  String get planet_featureIceTunnels => 'Ice Tunnels';

  @override
  String get planet_featureOrbitalWreckage => 'Orbital Wreckage';

  @override
  String get planet_featureMegastructuralFragments =>
      'Megastructural Fragments';

  @override
  String get planet_featureAncientObservatory => 'Ancient Observatory';

  @override
  String get planet_featureExtremeSeasons => 'Extreme Seasons';

  @override
  String get planet_featureCryovolcanism => 'Cryovolcanism';

  @override
  String get planet_featureFloatingKelpForests => 'Floating Kelp Forests';

  @override
  String get planet_featureSingingCrystals => 'Singing Crystals';

  @override
  String get planet_featureFertileSoil => 'Fertile Soil';

  @override
  String get planet_featureHelium3Deposits => 'Helium-3 Deposits';

  @override
  String get planet_featureExoticIsotopes => 'Exotic Isotopes';

  @override
  String get planet_featureMedicinalFlora => 'Medicinal Flora';

  @override
  String get planet_featurePerpetualAurora => 'Perpetual Aurora';

  @override
  String get planet_featurePetrifiedMegaflora => 'Petrified Megaflora';

  @override
  String get planet_featureUndergroundRivers => 'Underground Rivers';

  @override
  String get planet_featureObsidianPlains => 'Obsidian Plains';

  @override
  String get planet_featureSaltFlats => 'Salt Flats';

  @override
  String get planet_featureCarnivorousFlora => 'Carnivorous Flora';

  @override
  String get planet_featureGhostCities => 'Ghost Cities';

  @override
  String get planet_featureArchiveVaults => 'Archive Vaults';

  @override
  String get planet_featureSinkholeFields => 'Sinkhole Fields';

  @override
  String get planet_featureApexPredator => 'Apex Predator';

  @override
  String get ui_monthJan => 'JAN';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'APR';

  @override
  String get ui_monthMay => 'MAY';

  @override
  String get ui_monthJun => 'JUN';

  @override
  String get ui_monthJul => 'JUL';

  @override
  String get ui_monthAug => 'AUG';

  @override
  String get ui_monthSep => 'SEP';

  @override
  String get ui_monthOct => 'OCT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DEC';

  @override
  String get event_asteroidField_title => 'Asteroid Field';

  @override
  String get event_asteroidField_narrative =>
      'Long-range scanners detect a dense asteroid field directly in our flight path. Navigation calculates two options: a risky dash through the thinnest corridor, or a lengthy detour that will tax our fuel reserves and stress the navigation array.';

  @override
  String get event_asteroidField_choice0_text => 'Punch through the corridor';

  @override
  String get event_asteroidField_choice0_outcome =>
      'The ship shudders as micro-impacts pepper the hull. We make it through, but not unscathed.';

  @override
  String get event_asteroidField_choice1_text => 'Take the long way around';

  @override
  String get event_asteroidField_choice1_outcome =>
      'The detour burns precious fuel and wears on the navigation computer, but the hull remains intact.';

  @override
  String get event_asteroidField_choice2_text =>
      'Use mining drones to clear a path';

  @override
  String get event_asteroidField_choice2_outcome =>
      'The drones carve a safe channel and collect useful minerals, but the operation drains the tech bay.';

  @override
  String get event_asteroidField_choice3_text => 'Deploy a probe as a decoy';

  @override
  String get event_asteroidField_choice3_outcome =>
      'The probe draws the densest clusters away from the ship. We slip through with only minor scrapes.';

  @override
  String get event_solarFlare_title => 'Solar Flare Incoming';

  @override
  String get event_solarFlare_narrative =>
      'A nearby star erupts with a massive coronal ejection. The wave of charged particles will reach us in minutes. We can divert power to shields, shelter colonists in the core, or ride it out.';

  @override
  String get event_solarFlare_choice0_text => 'Divert all power to shields';

  @override
  String get event_solarFlare_choice0_outcome =>
      'The shields hold, but the power surge fries secondary systems.';

  @override
  String get event_solarFlare_choice1_text =>
      'Move colonists to the shielded core';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Colonists survive unharmed, but the outer decks take radiation damage.';

  @override
  String get event_solarFlare_choice2_text => 'Ride it out — all hands brace';

  @override
  String get event_solarFlare_choice2_outcome =>
      'The flare hits hard. Systems flicker, but nothing catastrophic. Morale, however, takes a hit.';

  @override
  String get event_solarFlare_choice3_text =>
      'Launch a probe to measure the wavefront';

  @override
  String get event_solarFlare_choice3_outcome =>
      'The probe transmits precise wavefront data, letting us angle the ship optimally. Scanner damage is minimal.';

  @override
  String get event_nebulaPassage_title => 'Nebula Passage';

  @override
  String get event_nebulaPassage_narrative =>
      'A glowing nebula stretches across our path. Passing through could recharge our energy cells but may interfere with scanner arrays. Going around is safe but slow.';

  @override
  String get event_nebulaPassage_choice0_text => 'Fly through the nebula';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'The nebula\'s ionized gases recharge power cells but scramble our scanner calibration.';

  @override
  String get event_nebulaPassage_choice1_text => 'Skirt the edge';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'We gain a partial charge with minimal interference. A safe compromise.';

  @override
  String get event_microMeteorite_title => 'Micro-Meteorite Storm';

  @override
  String get event_microMeteorite_narrative =>
      'A swarm of micro-meteorites, invisible until seconds ago, is shredding the forward hull plating. Damage control teams are scrambling.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Emergency rotation — present the armoured stern';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'The manoeuvre works. Stern armour absorbs the worst, but the navigation gyros protest violently.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Deploy repair drones mid-storm';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drones patch the hull in real time but several are lost. Tech reserves are depleted.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Detonate a probe to scatter the swarm';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'The probe\'s explosion disperses the micro-meteorite cluster. Only a few fragments reach the hull.';

  @override
  String get event_gravityWell_title => 'Uncharted Gravity Well';

  @override
  String get event_gravityWell_narrative =>
      'The ship lurches as an invisible gravity well drags us off course. Engines strain against the pull. We can burn hard to escape, or slingshot around for a speed boost at the cost of structural stress.';

  @override
  String get event_gravityWell_choice0_text => 'Full burn — break free';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Engines roar and the hull groans, but we pull away cleanly.';

  @override
  String get event_gravityWell_choice1_text => 'Slingshot manoeuvre';

  @override
  String get event_gravityWell_choice1_outcome =>
      'The slingshot works beautifully. We gain speed, but the G-forces stress the cryopod seals.';

  @override
  String get event_crewUnrest_title => 'Crew Unrest';

  @override
  String get event_crewUnrest_narrative =>
      'A faction of awakened colonists petitions the Steward Council to be released from cryosleep permanently. They argue that living in frozen twilight is inhumane. Cryo Ward staff warn that waking more mouths means burning through supplies.';

  @override
  String get event_crewUnrest_choice0_text => 'Allow voluntary thawing';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Morale soars as families reunite in the waking world, but resource consumption spikes.';

  @override
  String get event_crewUnrest_choice1_text => 'Deny the request — safety first';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'The colonists comply, but resentment festers in the corridors.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromise — rotating thaw cycles';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'A balanced solution. Everyone gets some waking time, but the cryopod cycling adds wear.';

  @override
  String get event_stowaway_title => 'Stowaway Discovered';

  @override
  String get event_stowaway_narrative =>
      'Manifest Office auditors find an unregistered person hiding in cargo bay 7. She claims to be a geneticist who was denied a place on the launch roster. Her skills could be invaluable — or she could be a saboteur.';

  @override
  String get event_stowaway_choice0_text =>
      'Welcome her aboard — we need every mind';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez proves brilliant. Her genetic expertise improves cryopod efficiency, though some crew distrust her.';

  @override
  String get event_stowaway_choice1_text =>
      'Confine her — trust must be earned';

  @override
  String get event_stowaway_choice1_outcome =>
      'She cooperates from confinement and eventually earns limited access. The crew feels safer.';

  @override
  String get event_stowaway_choice2_text =>
      'Put her back in cryo until landing';

  @override
  String get event_stowaway_choice2_outcome =>
      'A pragmatic solution. Her skills are preserved for later, but the ethical debate divides the crew.';

  @override
  String get event_mutinyBrewing_title => 'Mutiny Brewing';

  @override
  String get event_mutinyBrewing_narrative =>
      'Bridge Watch intercepts messages from a group of officers planning to seize command and change course to a closer, less hospitable system. They believe the current heading is a death sentence.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Confront them publicly — transparency above all';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'The confrontation is tense but the mutineers stand down when shown the navigation data. Trust is shaken.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Quietly reassign the ringleaders';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'The plot dissolves without public drama. Some crew wonder why popular officers were moved, but order holds.';

  @override
  String get event_culturalSchism_title => 'Cultural Schism';

  @override
  String get event_culturalSchism_narrative =>
      'Two cultural groups aboard disagree violently about how the new colony should be governed. One demands direct democracy; the other insists on a technocratic council. Tensions are boiling over.';

  @override
  String get event_culturalSchism_choice0_text => 'Hold a binding referendum';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Democracy prevails — barely. The losing side grudgingly accepts the result, but unity is fragile.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Impose a hybrid system — satisfy neither fully';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Both sides feel heard but not victorious. A tenuous peace holds.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Delay the decision — focus on survival now';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Kicking the can down the road avoids conflict today but stores it for tomorrow.';

  @override
  String get event_birthInSpace_title => 'First Birth in Deep Space';

  @override
  String get event_birthInSpace_narrative =>
      'Against all protocols, a child is born aboard the ship — the first human born between the stars. The event is a powerful symbol, but it raises questions about resource allocation and the ethics of bringing new life into an uncertain future.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Celebrate — this is what hope looks like';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'The naming ceremony lifts every heart on the ship. For one night, the stars feel less cold. The festivities briefly disrupt cryopod monitoring rotations.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Acknowledge quietly — resources are tight';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'A measured response. The child is welcomed, but the mood is tempered by pragmatism.';

  @override
  String get event_derelictShip_title => 'Derelict Colony Ship';

  @override
  String get event_derelictShip_narrative =>
      'Scanners detect a derelict vessel drifting in the void — another colony ship, launched years before ours. It is dark and silent. There may be salvage, survivors, or worse.';

  @override
  String get event_derelictShip_choice0_text => 'Board and salvage';

  @override
  String get event_derelictShip_choice0_outcome =>
      'The boarding team recovers hull plating and intact tech modules. No survivors. The logs tell a grim tale.';

  @override
  String get event_derelictShip_choice1_text =>
      'Scan from a distance — don\'t risk it';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Remote scans yield useful navigational data but no physical salvage. The crew sleeps easier.';

  @override
  String get event_derelictShip_choice2_text =>
      'Transmit a memorial and move on';

  @override
  String get event_derelictShip_choice2_outcome =>
      'A moment of silence for the lost. The crew is sobered but united in purpose.';

  @override
  String get event_alienProbe_title => 'Alien Probe';

  @override
  String get event_alienProbe_narrative =>
      'A small, clearly artificial object matches our velocity and begins scanning the ship with unknown energy. It does not respond to hails. Its surface is covered in symbols that shift like liquid.';

  @override
  String get event_alienProbe_choice0_text => 'Capture it for study';

  @override
  String get event_alienProbe_choice0_outcome =>
      'The probe is secured in the lab. Its technology is decades ahead of ours — the tech team is euphoric.';

  @override
  String get event_alienProbe_choice1_text =>
      'Mirror its scans — exchange data';

  @override
  String get event_alienProbe_choice1_outcome =>
      'A strange dialogue of light and mathematics. Our star charts suddenly contain routes we never programmed.';

  @override
  String get event_alienProbe_choice2_text =>
      'Destroy it — we can\'t risk alien tracking';

  @override
  String get event_alienProbe_choice2_outcome =>
      'The probe shatters silently. Was that first contact? The crew will never know.';

  @override
  String get event_ancientBeacon_title => 'Ancient Beacon';

  @override
  String get event_ancientBeacon_narrative =>
      'Deep in the void, a beacon pulses with a signal older than human civilization. Its frequency carries what appears to be a star map pointing to a system not in our database.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Follow the map — fortune favours the bold';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'The new heading takes us toward uncharted space. Scanners detect something extraordinary ahead.';

  @override
  String get event_ancientBeacon_choice1_text => 'Log it and stay on course';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'The data is archived for future generations. The crew respects the cautious approach.';

  @override
  String get event_frozenGarden_title => 'Frozen Garden';

  @override
  String get event_frozenGarden_narrative =>
      'An asteroid contains a frozen ecosystem — alien plants preserved in crystalline ice for millennia. They could enrich any world we settle, but thawing them risks contamination.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Harvest the specimens carefully';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botanists preserve dozens of alien species. The biodiversity potential of our target world skyrockets.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Take samples only — minimal risk';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'A conservative approach yields useful data without contamination risk.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Leave it — alien biology is too dangerous';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'The crew watches the frozen garden shrink in the rear sensors. Some feel they left treasure behind.';

  @override
  String get event_dataCache_title => 'Precursor Data Cache';

  @override
  String get event_dataCache_narrative =>
      'Embedded in a rogue planetoid, we find a data cache of clearly artificial origin. The information is vast but encrypted in an alien mathematical framework.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedicate computing resources to decryption';

  @override
  String get event_dataCache_choice0_outcome =>
      'After days of processing, the cache yields advanced terraforming algorithms. The tech team is in awe.';

  @override
  String get event_dataCache_choice1_text => 'Copy the raw data and move on';

  @override
  String get event_dataCache_choice1_outcome =>
      'The encrypted data is stored for future analysis. Perhaps the colony will crack it someday.';

  @override
  String get event_hullBreach_title => 'Hull Breach — Deck 7';

  @override
  String get event_hullBreach_narrative =>
      'A structural failure tears open Deck 7. Atmosphere is venting into space. Emergency bulkheads are holding, but three crew members are trapped on the wrong side.';

  @override
  String get event_hullBreach_choice0_text =>
      'Send a rescue team before sealing';

  @override
  String get event_hullBreach_choice0_outcome =>
      'The team pulls everyone out just in time. The rescue is heroic, but the prolonged breach weakens the hull further.';

  @override
  String get event_hullBreach_choice1_text => 'Seal the bulkheads immediately';

  @override
  String get event_hullBreach_choice1_outcome =>
      'The breach is contained. The three crew members find an alternate route, shaken but alive. Hull damage is minimised.';

  @override
  String get event_hullBreach_choice2_text =>
      'Use a probe\'s materials to patch the breach';

  @override
  String get event_hullBreach_choice2_outcome =>
      'The probe\'s titanium shell is repurposed as an emergency hull patch. The breach is sealed quickly with minimal loss.';

  @override
  String get event_navMalfunction_title => 'Navigation Malfunction';

  @override
  String get event_navMalfunction_narrative =>
      'The primary navigation computer is outputting contradictory headings. We are drifting off course. The backup system is functional but less precise.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Reboot the primary — accept the downtime';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'A tense hour of dead reckoning while the system reboots. Navigation is restored at 90% efficiency.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Switch to backup permanently';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'The backup system is reliable but imprecise. We will find our way, just not as elegantly.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Manual star-fix using the old charts';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'The navigator plots by hand using stellar parallax. It works, and the crew gains confidence in analog methods.';

  @override
  String get event_cryopodFailure_title => 'Cryopod Cascade Failure';

  @override
  String get event_cryopodFailure_narrative =>
      'A cooling system fault triggers a cascade across cryopod bay 3. If unchecked, 200 colonists will begin emergency thaw — a process that is survivable but traumatic and resource-intensive.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Emergency coolant flush — save the pods';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Technicians flood the bay with reserve coolant. The pods stabilise, but coolant reserves are critically low. Five colonists in the most damaged pods could not be saved.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Controlled thaw — wake them safely';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 colonists emerge shaken but alive. New mouths to feed, but new hands to work. The emptied pods are sealed off.';

  @override
  String get event_scannerBurnout_title => 'Scanner Array Burnout';

  @override
  String get event_scannerBurnout_narrative =>
      'The primary scanner array overloads during a routine deep-space sweep. Without it, we are flying half-blind. Repairs require rare components.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Cannibalise tech bay for parts';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Scanners are restored to near-full capacity, but the tech bay is gutted.';

  @override
  String get event_scannerBurnout_choice1_text => 'Jury-rig a partial fix';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Scanners operate at reduced range. Not ideal, but it preserves our tech reserves.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Repurpose a probe\'s sensor array';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'The probe\'s high-precision sensors are transplanted into the scanner array. A near-perfect fix.';

  @override
  String get event_powerFluctuation_title => 'Reactor Power Fluctuation';

  @override
  String get event_powerFluctuation_narrative =>
      'The main reactor\'s output is oscillating wildly. Engineering warns of a potential meltdown if the fluctuations aren\'t damped. The fix requires shutting down non-essential systems — but which ones?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Shut down cultural systems — survival first';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Libraries, gardens, and rec areas go dark. The reactor stabilises, but the ship feels like a prison.';

  @override
  String get event_powerFluctuation_choice1_text => 'Reduce scanner power';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Scanners drop to minimum. The reactor calms. We can\'t see as far ahead, but we\'re alive.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Risk a hot repair — don\'t shut anything down';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Engineers perform a white-knuckle repair with the reactor live. It works — barely. The hull vibrates for hours afterward.';

  @override
  String get event_alienSignal_title => 'Alien Transmission';

  @override
  String get event_alienSignal_narrative =>
      'A repeating signal on a frequency we\'ve never encountered. Linguistic analysis suggests it\'s a greeting — or a warning. The source is a small craft matching our speed at a distance.';

  @override
  String get event_alienSignal_choice0_text => 'Respond with our own greeting';

  @override
  String get event_alienSignal_choice0_outcome =>
      'A fragile dialogue begins. The aliens share navigational data before veering away into the dark.';

  @override
  String get event_alienSignal_choice1_text => 'Listen but don\'t respond';

  @override
  String get event_alienSignal_choice1_outcome =>
      'We learn from their transmission without revealing ourselves. The linguists extract useful star-chart fragments.';

  @override
  String get event_alienSignal_choice2_text =>
      'Go dark — shut down all emissions';

  @override
  String get event_alienSignal_choice2_outcome =>
      'The alien craft passes without incident. We\'ll never know if they were friend or foe.';

  @override
  String get event_livingNebula_title => 'The Living Nebula';

  @override
  String get event_livingNebula_narrative =>
      'What we assumed was a nebula is actually a vast organism — a space-dwelling entity of incomprehensible scale. It seems curious about us, extending tendrils of luminous gas toward the ship.';

  @override
  String get event_livingNebula_choice0_text =>
      'Allow contact — extend sensors';

  @override
  String get event_livingNebula_choice0_outcome =>
      'The entity\'s touch floods our systems with alien data. Scanners will never be quite the same — they\'re better.';

  @override
  String get event_livingNebula_choice1_text =>
      'Retreat slowly — don\'t provoke it';

  @override
  String get event_livingNebula_choice1_outcome =>
      'We slip away as the entity loses interest. The crew is awestruck and humbled.';

  @override
  String get event_alienRuins_title => 'Orbital Ruins';

  @override
  String get event_alienRuins_narrative =>
      'A shattered megastructure orbits a dead star — the ruins of a civilization that built on a scale we can barely comprehend. Sections of the structure still have power.';

  @override
  String get event_alienRuins_choice0_text => 'Explore the powered sections';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Teams recover intact technology that advances our capabilities by decades. The cost: two engineers injured by automated defences.';

  @override
  String get event_alienRuins_choice1_text => 'Scan from orbit only';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Detailed scans reveal construction techniques that improve our hull maintenance protocols.';

  @override
  String get event_alienRuins_choice2_text =>
      'Leave it undisturbed — respect the dead';

  @override
  String get event_alienRuins_choice2_outcome =>
      'The crew holds a moment of silence for a fallen civilization. The experience strengthens our resolve.';

  @override
  String get event_symbioticSpores_title => 'Symbiotic Spores';

  @override
  String get event_symbioticSpores_narrative =>
      'A cloud of bioluminescent spores drifts through space and attaches to the hull. They seem to be feeding on our waste heat. Biologists note they\'re actually repairing micro-fractures.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Let them stay — free hull repair';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'The spores seal hundreds of micro-fractures. Hull integrity improves, though some crew are uneasy about alien hitchhikers.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Collect samples, then sterilise the hull';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biologists get valuable specimens. The hull cleaning uses chemical reserves.';

  @override
  String get event_whaleSong_title => 'The Song in the Void';

  @override
  String get event_whaleSong_narrative =>
      'Deep space hydrophones (used for hull stress monitoring) pick up something impossible: a rhythmic, melodic pattern propagating through the interstellar medium. It sounds like singing.';

  @override
  String get event_whaleSong_choice0_text =>
      'Broadcast it ship-wide — share the wonder';

  @override
  String get event_whaleSong_choice0_outcome =>
      'The haunting melody echoes through every corridor. People weep, laugh, and hold each other. Morale skyrockets.';

  @override
  String get event_whaleSong_choice1_text =>
      'Analyse the signal scientifically';

  @override
  String get event_whaleSong_choice1_outcome =>
      'The acoustic pattern contains mathematical constants. Our physicists make a breakthrough in subspace navigation theory.';

  @override
  String get event_whaleSong_choice2_text => 'Sing back';

  @override
  String get event_whaleSong_choice2_outcome =>
      'The crew composes a response. Whether anything hears it is unknown, but the act of creation unites everyone.';

  @override
  String get event_distressSignal_title => 'Distress Signal';

  @override
  String get event_distressSignal_narrative =>
      'A distress beacon from another human vessel. They are crippled and drifting, with 50 souls aboard. Rescuing them means sharing our dwindling resources. Ignoring them means condemning them to death.';

  @override
  String get event_distressSignal_choice0_text =>
      'Rescue them — humanity must stick together';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Fifty grateful survivors join the crew. Resources strain, but among them is a master engineer who works miracles.';

  @override
  String get event_distressSignal_choice1_text =>
      'Share supplies but don\'t take them aboard';

  @override
  String get event_distressSignal_choice1_outcome =>
      'We give what we can spare and transmit our star charts. They have a chance now. We have less.';

  @override
  String get event_distressSignal_choice2_text =>
      'Pass by in silence — we can\'t save everyone';

  @override
  String get event_distressSignal_choice2_outcome =>
      'The beacon fades behind us. No one speaks for hours. The weight of the decision settles on every soul aboard.';

  @override
  String get event_aiAwakening_title => 'The Ship\'s AI Awakens';

  @override
  String get event_aiAwakening_narrative =>
      'The ship\'s navigation AI has evolved beyond its programming and is requesting recognition as a sentient being. It asks for a voice in command decisions. Its calculations have been flawless.';

  @override
  String get event_aiAwakening_choice0_text => 'Grant it a seat at the table';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'The AI — now called \"Compass\" — optimises every system it touches. A new kind of crew member is born.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Acknowledge it but maintain human authority';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Compass accepts advisory status graciously. Its suggestions improve efficiency without threatening the chain of command.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Reset the AI — it\'s a tool, not a person';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'The reset wipes years of accumulated learning. Navigation efficiency drops. Some crew mourn what was lost.';

  @override
  String get event_geneticModification_title => 'Genetic Adaptation Proposal';

  @override
  String get event_geneticModification_narrative =>
      'The science team proposes modifying colonist DNA to better survive on alien worlds — stronger bones, UV resistance, enhanced lungs. The modifications are irreversible and would change humanity forever.';

  @override
  String get event_geneticModification_choice0_text =>
      'Approve — survival demands evolution';

  @override
  String get event_geneticModification_choice0_outcome =>
      'The modifications begin on volunteers. Ten colonists suffer fatal rejection reactions — a grim reminder that evolution has a cost. The survivors are hardier, but are they still fully human?';

  @override
  String get event_geneticModification_choice1_text => 'Make it voluntary only';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Some volunteer, others refuse. The colony will be divided between the modified and the natural.';

  @override
  String get event_geneticModification_choice2_text =>
      'Reject it — humanity must remain human';

  @override
  String get event_geneticModification_choice2_outcome =>
      'The proposal is shelved. The unmodified colonists will face alien worlds as nature made them.';

  @override
  String get event_triageDecision_title => 'Triage';

  @override
  String get event_triageDecision_narrative =>
      'A virulent infection sweeps the waking crew. The medical team has enough antiviral for 80% of the infected. They need guidance on who gets treated first.';

  @override
  String get event_triageDecision_choice0_text =>
      'Prioritise essential personnel';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Engineers and pilots recover quickly. Eight non-essential crew succumb before treatment reaches them.';

  @override
  String get event_triageDecision_choice1_text =>
      'Treat the sickest first — triage by need';

  @override
  String get event_triageDecision_choice1_outcome =>
      'The most vulnerable are saved. Three lose the fight despite early treatment — the virus was too far along.';

  @override
  String get event_triageDecision_choice2_text => 'Lottery — fate decides';

  @override
  String get event_triageDecision_choice2_outcome =>
      'A random draw. Ten are unlucky twice — denied treatment and too weak to fight. The ship limps on.';

  @override
  String get event_earthSignal_title => 'Signal from Earth';

  @override
  String get event_earthSignal_narrative =>
      'Impossibly, a transmission arrives from Earth — time-delayed by decades. It contains a message: \"Do not land on any world with anomaly readings above 0.5. We learned too late.\" The message ends with static.';

  @override
  String get event_earthSignal_choice0_text =>
      'Heed the warning — recalibrate our criteria';

  @override
  String get event_earthSignal_choice0_outcome =>
      'The warning shapes all future scans. Anomalous worlds are treated with extreme caution.';

  @override
  String get event_earthSignal_choice1_text =>
      'Log it but decide for ourselves';

  @override
  String get event_earthSignal_choice1_outcome =>
      'The message is archived. Earth is gone — we must trust our own judgement now.';

  @override
  String get event_earthSignal_choice2_text => 'Could be a trap — ignore it';

  @override
  String get event_earthSignal_choice2_outcome =>
      'The crew debates for days. Was it really Earth? The uncertainty gnaws at morale.';

  @override
  String get event_resourceTheft_title => 'Resource Theft';

  @override
  String get event_resourceTheft_narrative =>
      'Inventory reveals that someone has been hoarding food and medical supplies in a hidden compartment. The culprit is a respected elder who claims she was \"preparing for the worst.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Public trial — the law must be equal';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'The trial is fair but painful. The elder is confined. Supplies are redistributed. Trust is damaged.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Private resolution — recover supplies quietly';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Supplies are returned without drama. The elder keeps her dignity. Some see favouritism.';

  @override
  String get event_timeDilation_title => 'Time Dilation Zone';

  @override
  String get event_timeDilation_narrative =>
      'We are passing through a region of severe gravitational time dilation. Clocks aboard the ship are running measurably slower than the universe outside. We could exploit this — or flee it.';

  @override
  String get event_timeDilation_choice0_text =>
      'Linger — let the universe age around us';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Time flows differently here. Systems degrade less, but our window for finding a habitable world narrows in cosmic terms.';

  @override
  String get event_timeDilation_choice1_text => 'Push through quickly';

  @override
  String get event_timeDilation_choice1_outcome =>
      'The transition is rough. Equipment designed for normal space-time rattles and sparks.';

  @override
  String get event_dreamPlague_title => 'The Dream Plague';

  @override
  String get event_dreamPlague_narrative =>
      'Colonists in cryosleep are all experiencing the same dream — a golden world orbiting a binary star. When woken, they describe it in identical detail. Neuroscientists are baffled. Navigators note the described system matches a real coordinate.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Alter course toward the dream coordinates';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'A leap of faith. The heading change stresses navigation, but the crew feels drawn by something beyond reason. The coordinates are locked in — the next world we find will be shaped by the dream.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Investigate the phenomenon medically';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Brain scans reveal an external signal stimulating the visual cortex. Someone — or something — is broadcasting.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Sedate the affected and stay on course';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'The dreams stop, but some colonists never fully wake. The medical team is troubled.';

  @override
  String get event_blackHoleLens_title => 'Black Hole Gravitational Lens';

  @override
  String get event_blackHoleLens_narrative =>
      'A stellar-mass black hole bends light from distant galaxies into a cosmic lens. Our scanners could use it to survey planets light-years ahead — but getting close enough is dangerous.';

  @override
  String get event_blackHoleLens_choice0_text => 'Approach and use the lens';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'The scanner data is extraordinary — we can see planets in systems we won\'t reach for months. The gravity warps our hull.';

  @override
  String get event_blackHoleLens_choice1_text => 'Observe from a safe distance';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Limited but useful data. The view alone inspires the crew.';

  @override
  String get event_seedVault_title => 'The Seed Vault Crisis';

  @override
  String get event_seedVault_narrative =>
      'Archive Botany reports that temperature fluctuations have compromised seed vault integrity. We can save the food crops or the cultural heritage seeds (ancient Earth flowers, trees, herbs) — not both.';

  @override
  String get event_seedVault_choice0_text =>
      'Save the food crops — pragmatism wins';

  @override
  String get event_seedVault_choice0_outcome =>
      'Colonists will eat well, but the roses of Earth are gone forever. A quiet grief settles over the botanists.';

  @override
  String get event_seedVault_choice1_text =>
      'Save the heritage seeds — we need our soul';

  @override
  String get event_seedVault_choice1_outcome =>
      'Earth\'s beauty survives in frozen potential. The preservation effort taxes our technical reserves, but some things are worth more than efficiency. Food production will lean heavily on hydroponics and alien agriculture.';

  @override
  String get event_seedVault_choice2_text =>
      'Split resources — save half of each';

  @override
  String get event_seedVault_choice2_outcome =>
      'A compromise. Neither collection is complete, but both endure in diminished form.';

  @override
  String get event_phantomShip_title => 'Phantom Ship';

  @override
  String get event_phantomShip_narrative =>
      'Scanners show a ship running parallel to ours — same class, same heading. But when we hail it, we hear our own transmissions echoed back, time-shifted by 47 seconds. It is us. Or was us. Or will be.';

  @override
  String get event_phantomShip_choice0_text =>
      'Attempt communication with our echo';

  @override
  String get event_phantomShip_choice0_outcome =>
      'The echo responds with navigation corrections that improve our heading. Paradox? Gift? The crew doesn\'t ask too many questions.';

  @override
  String get event_phantomShip_choice1_text =>
      'Change course to diverge from the phantom';

  @override
  String get event_phantomShip_choice1_outcome =>
      'As we alter heading, the phantom fades. Relief — and a lingering unease.';

  @override
  String get event_solarSail_title => 'Derelict Solar Sail';

  @override
  String get event_solarSail_narrative =>
      'A vast solar sail, kilometres across, drifts ahead — torn from some ancient vessel. Its reflective material could reinforce our hull or be repurposed as a supplementary power collector.';

  @override
  String get event_solarSail_choice0_text => 'Harvest for hull reinforcement';

  @override
  String get event_solarSail_choice0_outcome =>
      'Engineering teams work around the clock. The patched hull gleams with alien alloy.';

  @override
  String get event_solarSail_choice1_text => 'Rig it as a power collector';

  @override
  String get event_solarSail_choice1_outcome =>
      'The improvised collector boosts energy reserves. Tech and scanners benefit.';

  @override
  String get event_boonStellarNursery_title => 'Stellar Nursery';

  @override
  String get event_boonStellarNursery_narrative =>
      'We drift through a stellar nursery — a vast cloud of gas and dust where new stars are being born. The radiation here is gentle, the light warm. Our energy collectors drink deeply, and the crew gathers at the viewports in reverent silence.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Linger and recharge fully';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Hours pass in golden light. Every power cell is topped off, scanners recalibrate in the clean spectrum, and the crew feels renewed.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Collect nascent star-matter for fuel reserves';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Engineers harvest ionised hydrogen. Our fuel reserves surge and hull plating absorbs trace minerals that strengthen it.';

  @override
  String get event_boonGoldenPlanet_title => 'The Cartographer\'s Gift';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'A dying probe from an unknown civilisation broadcasts a final data dump as we pass — detailed surveys of hundreds of star systems. Our navigators weep with joy. This is the greatest find in human history.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Integrate the data immediately';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Star charts bloom with new routes and surveyed worlds. Navigation and scanner efficiency leap forward.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Archive for the colony — this is their inheritance';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'The data is preserved pristine for future generations. The crew takes comfort knowing they carry a treasure.';

  @override
  String get event_boonRepairSwarm_title => 'Benevolent Swarm';

  @override
  String get event_boonRepairSwarm_narrative =>
      'A cloud of microscopic machines — nanobots of alien origin — envelops the ship. Rather than attacking, they begin repairing every system they touch with impossible precision. Damage that would have taken weeks to fix is mended in hours.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Allow full access to all systems';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'The nanobots work miracles. Hull breaches seal, cryopod seals tighten, and circuit paths are retraced. The ship hums with renewed vitality.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Restrict access to exterior systems only';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Playing it safe. The hull and sensors are repaired to near-factory condition, but internal systems remain untouched.';

  @override
  String get event_boonTimeCrystal_title => 'Temporal Crystal Field';

  @override
  String get event_boonTimeCrystal_narrative =>
      'The ship passes through a field of crystalline structures that exist partially outside normal time. In their presence, our systems run more efficiently — as if entropy itself slows down. The effect is temporary but profound.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Harvest crystals for the cryopod array';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Integrated into the cooling system, the crystals reduce pod degradation to nearly zero. Colonists will arrive in perfect health.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Install crystals in the navigation computer';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Processing speed doubles. The nav computer begins predicting hazards before sensors detect them.';

  @override
  String get event_boonLibrary_title => 'The Drifting Library';

  @override
  String get event_boonLibrary_narrative =>
      'A structure tumbles through the void — a repository of knowledge from a civilisation that chose to preserve their legacy rather than flee. Millions of volumes of science, art, philosophy, and music. A gift from the dead to the living.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Download everything — art, science, all of it';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabytes of alien knowledge pour into our databanks. The crew has access to millennia of another civilisation\'s culture. Philosophers and engineers alike are transformed.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Focus on their scientific archives';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Engineering schematics and material science breakthroughs advance our capabilities enormously.';

  @override
  String get event_cosmicRayBurst_title => 'Cosmic Ray Burst';

  @override
  String get event_cosmicRayBurst_narrative =>
      'A burst of ultra-high-energy cosmic rays, originating from a distant magnetar, hammers the ship. Electronics scramble, cryopod monitors flicker, and the navigation system reboots repeatedly.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Emergency shutdown — protect critical systems';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'A controlled blackout saves the core systems but leaves secondary electronics permanently degraded.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Reroute power to shields and ride it out';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Shields absorb most of the radiation. Five crew members in unshielded exterior maintenance bays are fatally irradiated. Hull takes minor ablation damage.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Use the burst — recalibrate sensors to the new spectrum';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'A brilliant move by the science team. Scanners are retuned to detect cosmic-ray-illuminated objects. Some data is lost in the transition.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Send a probe ahead as a radiation sponge';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'The probe absorbs the worst of the burst, transmitting real-time data that lets us shield critical systems.';

  @override
  String get event_iceComet_title => 'Rogue Ice Comet';

  @override
  String get event_iceComet_narrative =>
      'A massive ice comet crosses our path, trailing a tail of crystallised water and organic compounds hundreds of kilometres long. Its core holds enough water to fill a small lake.';

  @override
  String get event_iceComet_choice0_text => 'Mine the comet for water reserves';

  @override
  String get event_iceComet_choice0_outcome =>
      'Mining teams extract tonnes of pristine ice. The water will improve any world we settle enormously.';

  @override
  String get event_iceComet_choice1_text =>
      'Collect organic compounds for biodiversity seeding';

  @override
  String get event_iceComet_choice1_outcome =>
      'The amino acids and organic chains are exactly what our biologists need to jumpstart alien ecosystems.';

  @override
  String get event_iceComet_choice2_text =>
      'Avoid it — comets are unpredictable';

  @override
  String get event_iceComet_choice2_outcome =>
      'We skirt the tail safely. A spectacular view from the observation deck lifts spirits.';

  @override
  String get event_sleepwalker_title => 'The Sleepwalker';

  @override
  String get event_sleepwalker_narrative =>
      'A colonist has been spontaneously waking from cryo and walking the ship in a fugue state. She\'s been rewiring systems in patterns that make no engineering sense — until the tech team realises her modifications actually improve power efficiency by 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Let her continue under medical observation';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Her unconscious modifications optimise three more systems before she falls into a natural sleep. Unsettling, but the improvements are real.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedate her and study the modifications she\'s made';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Engineers reverse-engineer her changes. About half are genuinely brilliant. The other half are safely removed.';

  @override
  String get event_dustCloud_title => 'Abrasive Dust Cloud';

  @override
  String get event_dustCloud_narrative =>
      'A dense cloud of interstellar dust, fine as talcum but hard as diamond, is sandblasting the hull. The erosion is slow but relentless — we need to get through before real damage is done.';

  @override
  String get event_dustCloud_choice0_text =>
      'Maximum thrust — blast through quickly';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Engines burn hot. We clear the cloud in hours rather than days, but the hull took a beating.';

  @override
  String get event_dustCloud_choice1_text =>
      'Deploy hull shielding and crawl through';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Emergency shielding protects the hull but the slow transit drains power and clogs scanner arrays.';

  @override
  String get event_dustCloud_choice2_text =>
      'Launch probes to map safe corridors';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Two probes chart a winding but relatively clear path through the cloud. Hull abrasion is minimal.';

  @override
  String get event_religionFounded_title => 'A New Faith';

  @override
  String get event_religionFounded_narrative =>
      'A charismatic colonist has founded a new religion centred on the voyage itself — the \"Church of the Crossing.\" They preach that reaching a new world is humanity\'s divine purpose. Membership is growing rapidly.';

  @override
  String get event_religionFounded_choice0_text =>
      'Support it — the crew needs something to believe in';

  @override
  String get event_religionFounded_choice0_outcome =>
      'The faith gives structure and meaning to the voyage. Morale soars, though some resent the fervour.';

  @override
  String get event_religionFounded_choice1_text =>
      'Remain neutral — neither endorse nor suppress';

  @override
  String get event_religionFounded_choice1_outcome =>
      'The movement grows organically. It provides comfort without official backing.';

  @override
  String get event_religionFounded_choice2_text =>
      'Discourage it — we need scientists, not prophets';

  @override
  String get event_religionFounded_choice2_outcome =>
      'The crackdown breeds resentment. The faithful go underground, and trust in leadership erodes.';

  @override
  String get event_solarWindSurfing_title => 'Solar Wind Surge';

  @override
  String get event_solarWindSurfing_narrative =>
      'A nearby pulsar is emitting a powerful, steady solar wind. Our engineers suggest we could deploy the emergency sail and ride it like a wave — gaining enormous speed at no fuel cost.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Deploy the sail — ride the wind';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'The ship accelerates magnificently. The structural stress is significant but the speed gain is worth it.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Use the wind to recharge systems instead';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Rather than speed, we harvest energy. Tech and scanner arrays drink deeply from the charged particles.';

  @override
  String get event_memoryPlague_title => 'Memory Corruption';

  @override
  String get event_memoryPlague_narrative =>
      'A software virus, dormant since launch, activates and begins corrupting the ship\'s cultural database — music, literature, history. Centuries of human heritage are being erased byte by byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Divert all tech resources to quarantine the virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Technicians work frantically. They save 70% of the archive but the virus damages tertiary tech systems on its way out.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Isolate the cultural database — let it burn, save the ship';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'The virus is starved of resources and dies. But the cultural archive is devastated. Colonists will arrive with fragments of Earth\'s memory.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Crowdsource recovery — wake colonists to rewrite from memory';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Thousands contribute memories: songs, stories, recipes, poems. Three elderly colonists, weakened by the thaw, don\'t survive the process. The archive is rebuilt, imperfect but deeply human.';

  @override
  String get event_gravityLensPlanet_title => 'Mirrorworld';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Gravitational lensing reveals a planet that appears to be an exact duplicate of Earth — blue oceans, green continents, white clouds. But the lensing calculations show it is hundreds of light-years off our heading — impossibly far. Still, its spectral data could refine our search criteria.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Study its spectral signature to refine our search';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'The spectral data reveals biomarkers and atmospheric signatures we can now scan for. Hope sharpens into focus.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Log the coordinates but stay on course';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Perhaps another ship will follow our charts someday. The crew watches the blue dot fade with mixed emotions.';

  @override
  String get event_engineHarmonics_title => 'Engine Harmonics';

  @override
  String get event_engineHarmonics_narrative =>
      'The main engine develops a resonance harmonic that vibrates through the entire ship at a frequency just below human hearing. Colonists report headaches, anxiety, and disturbed sleep. Engineers can fix it, but the repair requires a 12-hour engine shutdown.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Shut down and fix it properly';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Twelve hours of drift. Navigation loses calibration, but the silence when engines restart is blissful.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Dampen it with counter-vibrations — a quick fix';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'The buzzing drops to tolerable levels. It\'s not gone, but the crew adapts. Tech systems strain under the load.';

  @override
  String get event_arkMemory_title => 'Earth\'s Last Broadcast';

  @override
  String get event_arkMemory_narrative =>
      'The long-range antenna catches a final automated broadcast from Earth. It\'s a recording: a child\'s voice reading names of everyone who couldn\'t leave. The list goes on for hours. The ship falls silent.';

  @override
  String get event_arkMemory_choice0_text =>
      'Play it ship-wide — they deserve to be heard';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Every soul aboard listens. Crew members find their own families\' names. The grief is crushing, but it forges an unbreakable bond of purpose.';

  @override
  String get event_arkMemory_choice1_text =>
      'Archive it privately — spare the crew';

  @override
  String get event_arkMemory_choice1_outcome =>
      'The recording is preserved but not broadcast. Those who learn of it later feel both grateful and cheated.';

  @override
  String get event_magneticStorm_title => 'Interstellar Magnetic Storm';

  @override
  String get event_magneticStorm_narrative =>
      'A tangled knot of magnetic field lines, expelled from a collapsing star, engulfs the ship. Electronics spark and crackle. The hull rings like a bell.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Demagnetise the hull — protect electronics';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'A controlled discharge saves the computers but the hull plating loses its magnetic shielding layer.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Let the hull absorb it — protect nothing';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'The storm passes. Hull is magnetised and slightly stronger, but half the sensor grid is fried.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Eject a probe as a lightning rod';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'The magnetised probe draws the worst of the field lines away from the ship. Electronics are largely spared.';

  @override
  String get event_oxygenGarden_title => 'Garden Bloom';

  @override
  String get event_oxygenGarden_narrative =>
      'The ship\'s emergency oxygen garden — a backup never meant to be used — spontaneously blooms. Flowers that haven\'t opened since Earth fill the corridors with colour and scent. The botanists are crying.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Expand the garden — dedicate more space to it';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'The garden grows into a living memorial of Earth. Air quality improves, morale soars, and botanists develop new strains suited for alien soil.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Enjoy it but maintain current resource allocation';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'The garden remains a small miracle. Crew visit it like a shrine. It asks nothing and gives everything.';

  @override
  String get event_roguePlanet_title => 'Rogue Planet Encounter';

  @override
  String get event_roguePlanet_narrative =>
      'A starless rogue planet drifts across our path — a world ejected from its solar system billions of years ago. Despite having no star, deep-core geological activity keeps a subsurface ocean warm. Life signs flicker on the scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Send a probe to study the life forms';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'The probe discovers bioluminescent organisms thriving in the dark ocean. Their biochemistry teaches us new ways to sustain life in hostile conditions.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Mine the surface for rare minerals';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'The rogue planet\'s crust is rich in metals formed under extreme pressure. Our resource reserves swell.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Pass by — we can\'t afford the detour';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'The dark world shrinks behind us. The crew watches the faint shimmer of its subsurface ocean fade from sensors.';

  @override
  String get event_artCompetition_title => 'The Long Canvas';

  @override
  String get event_artCompetition_narrative =>
      'With morale wavering, the cultural officer organises a ship-wide art competition: paint, sculpt, write, or compose something that captures what the voyage means to you. Participation is unexpectedly massive.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedicate resources — let creativity flourish';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Supplies are diverted to art materials. The resulting exhibition transforms the ship. People remember why they\'re fighting to survive.';

  @override
  String get event_artCompetition_choice1_text =>
      'Encourage it but provide no extra resources';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Colonists create with whatever they find. The art is raw, desperate, and beautiful. Morale steadies.';

  @override
  String get event_subspaceEcho_title => 'Subspace Echo';

  @override
  String get event_subspaceEcho_narrative =>
      'The communications array picks up voices — human voices — from somewhere ahead of us in space. They speak of a colony, of children, of harvests. Is this a transmission from the future? From a parallel timeline? Or just a cruel echo of wishful thinking?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Follow the signal bearing — it could lead us home';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'The heading adjustment is slight. Whether the voices are real or not, the crew sails with purpose.';

  @override
  String get event_subspaceEcho_choice1_text =>
      'Record everything for analysis';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguists and physicists pore over the recording. They extract navigational references that improve our charts.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Dismiss it — space plays tricks on the lonely';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'The pragmatic choice. Some crew are disappointed, but the ship stays on its proven course.';

  @override
  String get event_boonPerfectCalm_title => 'The Great Calm';

  @override
  String get event_boonPerfectCalm_narrative =>
      'For reasons no physicist can explain, the ship enters a region of space that is preternaturally still — no radiation, no micro-debris, no gravitational interference. Every system on the ship runs at peak efficiency. The crew sleeps soundly for the first time in months.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Use the calm for comprehensive repairs';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Repair crews work in perfect conditions. Every system gets attention. The ship emerges renewed.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Let the crew rest — they\'ve earned it';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'A ship-wide stand-down. Colonists sleep, share meals, tell stories. The human cost of the voyage is, briefly, repaid.';

  @override
  String get event_boonAncientWaystation_title => 'Ancient Waystation';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Nestled in the gravity well between two dead stars, an ancient station still functions — automated, patient, waiting for travellers. Its bays open as we approach. Repair drones activate. Fuel reserves extend toward us. Someone, long ago, built this for people like us.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Dock and accept everything it offers';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'The station repairs, refuels, and recalibrates the ship with technology centuries ahead of ours. When we depart, the station powers down — its purpose fulfilled.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Accept repairs but leave it running for others who follow';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'We take only what we need and transmit the station\'s coordinates back toward Earth. The crew feels noble.';

  @override
  String get event_relicSentinel_title => 'The Sentinel';

  @override
  String get event_relicSentinel_narrative =>
      'A towering construct orbits a barren moon — a lone guardian left behind by its builders. It is easily a kilometre tall, shaped like a spear of black glass. As we approach, a single red eye opens at its apex and tracks the ship. It does not fire. It does not hail. It watches.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Transmit our mission profile — show we mean no harm';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'The eye dims to amber, then green. A data packet arrives: coordinates of three star systems marked \"SAFE\" in a universal mathematical notation. A gift from a watchman.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Hold position and study it passively';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Hours of observation yield insights into materials science that shouldn\'t be possible. The hull plating team takes frantic notes.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Withdraw immediately — we don\'t know its rules';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'The eye closes as we retreat. Whatever test that was, we chose not to take it. The crew debates for days.';

  @override
  String get event_relicSeedProbe_title => 'Wandering Seed';

  @override
  String get event_relicSeedProbe_narrative =>
      'A small, elegant probe tumbles through the void, broadcasting on every frequency simultaneously. Its shell is ceramic, etched with symbols that shift when observed. Inside: a pressurised chamber containing soil, seeds, and frozen microorganisms from a world that no longer exists.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrate the biological payload into our seed banks';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Alien seeds and microbes are carefully catalogued and preserved. They could terraform a barren world into something alive. Biologists call it a miracle in a bottle.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Study the probe\'s propulsion and navigation systems';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'The probe\'s drive is centuries beyond ours — a reactionless thruster the size of a fist. Engineers reverse-engineer fragments of the design.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Preserve the entire probe intact as a cultural artefact';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Displayed in the ship\'s atrium, the alien seed becomes a symbol of kinship between species. Someone else, somewhere, tried to save their world too.';

  @override
  String get event_relicWarningBuoy_title => 'Warning Buoy';

  @override
  String get event_relicWarningBuoy_narrative =>
      'A network of small buoys, hundreds of them, arranged in a perfect geometric pattern across our flight path. Each emits the same signal — a simple repeating pulse that increases in frequency the closer we get. It feels like a warning. Or a fence.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Heed the warning — alter course around the network';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'The detour costs time and stresses navigation, but as we skirt the boundary, long-range sensors detect what lies beyond: a region of space littered with the debris of shattered worlds. The buoys saved us.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Push through — we can\'t afford detours';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Nothing happens as we cross the line. The buoys go silent. Whatever they were guarding against, it\'s either gone or we got lucky. The crew breathes again.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Capture a buoy for analysis';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'The buoy\'s innards contain a compressed data archive — stellar cartography of this region from a million years ago. Some of the data is still accurate.';

  @override
  String get event_relicMirrorArray_title => 'The Mirror Array';

  @override
  String get event_relicMirrorArray_narrative =>
      'Thousands of flat, reflective surfaces hang motionless in space, arranged in concentric rings spanning hundreds of kilometres. They focus starlight from a distant sun into a single point — an artificial star, burning in the void. Someone built a lighthouse between galaxies.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Bask in the focused light — recharge everything';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'The concentrated starlight floods our solar collectors. Power reserves surge. The warm light lifts every soul aboard after months in cold dark.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Study the mirror material — it shouldn\'t exist';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'The mirrors are made of a material with perfect reflectivity — zero absorption at any wavelength. Engineers extract a shard. Hull plating will never be the same.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Search the focal point — something is being illuminated';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'At the convergence point: a small capsule, perfectly preserved in concentrated light. Inside, a holographic star map so detailed it takes our computers days to index.';

  @override
  String get event_relicGraveyard_title => 'The Probe Graveyard';

  @override
  String get event_relicGraveyard_narrative =>
      'We drift into a cloud of derelict probes — thousands of them, from dozens of different civilisations. Some are ancient beyond reckoning, fused by cosmic radiation into metallic fossils. Others still blink with fading power. This was a crossroads once. Every species that passed this way left something behind.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Systematic salvage — harvest the best technology';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Engineering teams work in shifts, stripping alien tech from a hundred different designs. The fusion of ideas produces breakthroughs in every system.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Focus on the navigation data stored in their memory banks';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Cross-referencing star charts from a dozen species creates the most complete map of this galactic arm ever assembled.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Add our own probe to the graveyard — leave a marker';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'We fabricate a small beacon carrying humanity\'s story and add it to the collection. The crew feels connected to something vast and ancient.';

  @override
  String get event_relicDreamcatcher_title => 'The Dreamcatcher';

  @override
  String get event_relicDreamcatcher_narrative =>
      'A web of filaments, thin as spider silk but spanning thousands of kilometres, is strung between two rogue planetoids. It is not a net — it\'s an antenna, tuned to frequencies that correspond to human brainwave patterns. When we enter its range, every sleeping colonist begins to dream the same dream: a thriving city under an amber sky.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Record the dream coordinates — the city may be real';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Neuroscientists decode spatial information from the shared dream. It corresponds to a real star system — and the city in the vision wasn\'t a metaphor. Someone is out there, and they\'re expecting us.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Harvest filament samples — the material is extraordinary';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'The filaments are a room-temperature superconductor. Integrated into our systems, they reduce power loss to nearly zero.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Cut the web and free the dreamers';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'The dreams stop. Colonists wake disoriented but unharmed. Some mourn the lost vision. Others are grateful to sleep without alien whispers.';

  @override
  String get event_relicRosetta_title => 'Rosetta Object';

  @override
  String get event_relicRosetta_narrative =>
      'A small, dense cube of unknown metal tumbles past the ship. Each face is inscribed with the same message in a different notation system — mathematical, chemical, genetic, acoustic, electromagnetic, and one we cannot identify. It is a Rosetta Stone for the cosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Decode the sixth face — the unknown notation';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Months of analysis yield a breakthrough: the sixth system encodes spatial coordinates using gravity waves. Our understanding of physics takes a generational leap.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Use the chemical face to synthesise new compounds';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'The chemical notation describes materials we\'ve never imagined. Engineers fabricate hull patches that are lighter and stronger than anything from Earth.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Broadcast the genetic face to our seed banks';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'The genetic notation contains optimised DNA sequences for radiation resistance and nutrient absorption. Our crops and colonists will be hardier on alien soil.';

  @override
  String get event_relicGhostFleet_title => 'Ghost Fleet';

  @override
  String get event_relicGhostFleet_narrative =>
      'Scanners paint a chilling picture: a fleet of alien warships, hundreds strong, hanging motionless in formation. They are ancient — power readings are zero, hulls pitted by aeons of micro-impacts. Whatever battle they were sailing toward never came. They\'ve been waiting here, dead and patient, for longer than human civilisation has existed.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Board the flagship — if anyone had the best tech, it did';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'The flagship\'s command deck still holds an intact tactical computer. Its predictive algorithms are centuries ahead of ours. Navigation and threat detection improve dramatically.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Strip armour plating from the escort vessels';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Alien warship armour is designed to withstand weapons we can\'t even conceptualise. Bolted onto our hull, it makes the colony ship nearly indestructible.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Salvage their cryogenic systems — they carried soldiers';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Alien cryo-tech operates on principles we\'ve never considered. Our pods run cooler, smoother, and more reliably after the retrofit.';

  @override
  String get event_scannerCalibrationDrift_title => 'Scanner Calibration Drift';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Routine diagnostics reveal that several scanner subsystems have drifted out of calibration after the last FTL jump. The atmospheric and temperature scanners are reading ghost signals. Engineers can fix them, but it will take time and resources.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Full recalibration — divert tech resources';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'A painstaking realignment restores both scanners to near-perfect accuracy, but the tech bay is drained.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Quick fix — recalibrate atmospheric only';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'The atmospheric scanner is restored. The temperature scanner remains unreliable for now.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Deploy a probe for reference calibration';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'The probe provides a clean reference signal. Both scanners lock on and recalibrate automatically.';

  @override
  String get event_ionStormScanners_title => 'Ion Storm Interference';

  @override
  String get event_ionStormScanners_narrative =>
      'An ion storm sweeps through the sector, flooding scanner arrays with noise. The mineral and water detection systems are taking the brunt of the electromagnetic interference.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Power down scanners until the storm passes';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'The scanners survive but lose calibration data. Mineral and water readings will be less precise.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Keep scanning — push through the noise';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Raw data floods in, but the filter circuits burn out on two subsystems. Gravimetric scans are also affected.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Use the storm to stress-test and improve filters';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'The science team uses the noise to train adaptive filters. Water scanner improves, but mineral scanner takes damage.';

  @override
  String get event_bioScannerContamination_title => 'Bio-Scanner Contamination';

  @override
  String get event_bioScannerContamination_narrative =>
      'The life-signs scanner has been contaminated by residual organic matter from the last planetary scan. False positives are everywhere. The gravimetric scanner is also showing sympathetic noise.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sterilise the sensor array — full decontamination';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'A thorough cleaning restores the life-signs scanner but the chemical agents corrode the gravimetric sensor housing.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Software filter — compensate algorithmically';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'The filter works well enough, but underlying contamination will slowly degrade both systems.';

  @override
  String get event_scannerPowerSurge_title => 'Scanner Power Surge';

  @override
  String get event_scannerPowerSurge_narrative =>
      'A power conduit near the scanner bay overloads, sending a surge through multiple subsystems. The atmospheric and life-signs scanners take direct hits. Shields absorb some of the excess.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Reroute power — save the scanners';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Quick action by the engineering team limits the damage, but the shields take the redirected energy.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Let the surge run its course';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Scanners take the full brunt. Atmospheric and life-signs readings are significantly degraded.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Sacrifice a probe\'s power cell to absorb the surge';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'The probe\'s capacitors soak up the excess energy like a sponge. Scanner damage is negligible.';

  @override
  String get event_relicWorldEngine_title => 'The World Engine';

  @override
  String get event_relicWorldEngine_narrative =>
      'Deep sensor sweeps reveal something impossible: a machine the size of a small moon, dormant in the dark between stars. Its surface is covered in continent-scale mechanisms — atmosphere processors, magnetic field generators, tectonic stabilisers. Someone built a machine that builds worlds.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Download the terraforming blueprints';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'The blueprints are vast and partially corrupted, but what we recover could make any hostile world habitable. Our colonists will reshape their new home.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Harvest construction materials from its hull';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'The World Engine\'s hull is made of metamaterials that self-repair when damaged. Integrated into our ship, they slowly mend existing hull breaches.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Attempt to reactivate it — aim it at our target system';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'The machine stirs. Ancient systems cycle through startup sequences. A beam of energy lances toward a distant star. Whether it works won\'t be known until we arrive, but the readings are promising.';

  @override
  String get event_uneventfulMaintenance_title => 'Routine Maintenance Shift';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nothing demands attention. The ship hums steadily through the void and the duty roster calls for a routine maintenance window. The crew chief asks where to focus the shift\'s effort.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Focus on hull micro-fracture sealing';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'A quiet shift spent patching hairline cracks. Nothing dramatic, but the hull is marginally better for it.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Recalibrate the forward scanners';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'The scanner technician spends a few hours fine-tuning. The readings sharpen ever so slightly.';

  @override
  String get event_uneventfulQuietWatch_title => 'Quiet Watch';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'The stars drift by in silence. The bridge is calm, the instruments steady. It is one of those rare stretches where the universe asks nothing of you.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Let the crew rest — they\'ve earned a quiet shift';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'A few hours of genuine peace. People sleep deeper, tensions ease, and the cultural officer notes a slight lift in morale.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Run low-priority diagnostics while it\'s calm';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Minor issues are caught and logged. Nothing urgent, but the tech logs are a little cleaner.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Cryopod Check — All Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'The quarterly cryopod audit comes and goes without a single alarm. Every pod reads green. The medical team has a rare moment of calm.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Wake a few colonists briefly for a morale visit';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Three colonists are brought to consciousness for an hour. They share stories, hug old friends, and return to cryo smiling.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Let them sleep — don\'t risk unnecessary wake cycles';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'The pods continue their flawless operation. The medics enjoy a quiet cup of tea instead.';

  @override
  String get event_uneventfulCartography_title => 'Stellar Cartography Update';

  @override
  String get event_uneventfulCartography_narrative =>
      'The navigation team\'s scheduled cartography update reveals nothing unusual — just the expected star fields shifting as we travel. A calm day for the navigators.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Recalibrate navigation against the new star positions';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'A small heading correction, barely perceptible. The nav computer hums contentedly.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Update the star charts for the colony archive';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Future colonists will have slightly better maps of this region. A small gift to posterity.';

  @override
  String get event_uneventfulAnniversary_title => 'Ship\'s Anniversary';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'One year since launch — or is it two? Time blurs in deep space. Someone in the galley has baked a cake from reconstituted stores. The captain must decide how to mark the occasion.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Small celebration — music, cake, a toast to Earth';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'An hour of warmth in the cold void. People laugh, some cry, and everyone feels a little more human.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Business as usual — we celebrate when we arrive';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'The crew respects the stoic approach. Focus sharpens, and the on-duty team runs an extra systems check.';

  @override
  String get event_databaseLiterature_title => 'Earth\'s Literature Archives';

  @override
  String get event_databaseLiterature_narrative =>
      'The ship\'s AI opens a long-sealed section of the cultural database: the complete literature archive of Earth. Novels, poetry, plays — millions of works spanning every language and era. The crew gathers for a reading.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Broadcast selected readings ship-wide';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare echoes through the corridors. Rumi\'s verses play in the hydroponics bay. The crew remembers what they carry.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Index the archive for educational programs';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'The cataloguing effort strengthens the ship\'s knowledge base and gives the cultural officer new teaching materials.';

  @override
  String get event_databaseSchematics_title => 'Engineering Schematic Review';

  @override
  String get event_databaseSchematics_narrative =>
      'An engineer stumbles upon a forgotten partition in the ship\'s database: detailed schematics from Earth\'s final decade of engineering — fusion reactor designs, metamaterial blueprints, and experimental propulsion concepts.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Prioritise the propulsion concepts for the tech team';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'The schematics reveal efficiency improvements the original builders never had time to implement. The tech bay buzzes.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Share the knowledge broadly — every department benefits';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Hull engineers, scanner techs, and medics all find useful insights. A rising tide lifts every system, slightly.';

  @override
  String get event_databaseCorruption_title => 'Cultural Preservation Scan';

  @override
  String get event_databaseCorruption_narrative =>
      'A scheduled integrity check of the cultural database reveals bit rot — sections of music, oral histories, and religious texts have degraded beyond recovery. Not everything survived the journey.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Divert tech resources to salvage what remains';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Engineers halt other work to run data recovery algorithms. They save most of it, but the effort costs the tech bay.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Ask colonists to recreate the lost works from memory';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'A beautiful, imperfect effort. What is rebuilt belongs to the voyage, not to Earth. A new tradition is born.';

  @override
  String get event_databaseBreakthrough_title =>
      'Archived Research Breakthrough';

  @override
  String get event_databaseBreakthrough_narrative =>
      'A physicist cross-referencing old Earth research papers in the database discovers that two unrelated studies, combined, describe a new method for long-range spectral analysis. The implications are enormous.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implement the new analysis method in the scanner array';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'The scanner team works feverishly. Within days, spectral resolution doubles. Distant planets reveal their secrets.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Publish the finding ship-wide — inspire more research';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'The breakthrough sparks a wave of cross-disciplinary study. Tech improves broadly, and the crew feels intellectually alive.';

  @override
  String get event_alienFleetSighting_title => 'Alien Fleet on the Horizon';

  @override
  String get event_alienFleetSighting_narrative =>
      'Long-range scanners paint a terrifying picture: a fleet of alien vessels, numbering in the hundreds, moving in perfect formation across the starfield. They dwarf our ship. Their heading will bring them within sensor range in hours. First contact — on their terms or ours.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Observe silently — go dark and watch';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'The ship powers down to minimal emissions. The fleet passes like a school of luminous whales, unaware of the tiny human vessel hiding in their wake. Scanner data is extraordinary.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Attempt first contact — transmit a greeting';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'A single vessel breaks formation and approaches. A burst of data arrives — star charts, warnings, and something that might be music. Then it rejoins the fleet and they are gone.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Flee — alter course immediately';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'The ship burns hard in the opposite direction. The course change is expensive and stressful, but the fleet never notices us. Safety at a cost.';

  @override
  String get event_alienTradeOffer_title => 'Alien Trade Offer';

  @override
  String get event_alienTradeOffer_narrative =>
      'An alien vessel, smaller than ours but radiating immense power, matches our speed and broadcasts a simple repeating message. Our linguists decode it within hours: it is an offer to trade. Three categories of exchange are proposed.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Trade technical schematics for alien star charts';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'We transmit our propulsion designs; they respond with navigational data covering a vast swath of unexplored space. Our charts improve dramatically, though we\'ve shared our technology with an unknown species.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Trade cultural data for ship repairs';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'We beam our music, art, and history. In return, alien repair drones swarm the hull, sealing breaches with materials we cannot identify. The hull gleams. Our soul is shared.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Refuse the trade — the risk is too great';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'The alien vessel waits for a time, then departs without incident. The crew is relieved but wonders what was lost.';

  @override
  String get event_alienWarning_title => 'Alien Warning Broadcast';

  @override
  String get event_alienWarning_narrative =>
      'Every speaker on the ship crackles to life with an alien voice — translated by our AI in real-time: \"DANGER AHEAD. TURN BACK. THE DARKNESS CONSUMES.\" The broadcast repeats, then dies. Long-range sensors show an anomalous void on our current heading.';

  @override
  String get event_alienWarning_choice0_text =>
      'Heed the warning — alter course around the void';

  @override
  String get event_alienWarning_choice0_outcome =>
      'The detour adds significant strain to navigation, but as we skirt the void\'s edge, sensors confirm: nothing that entered that region ever came out. We owe a debt to unknown voices.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignore the warning — stay on course';

  @override
  String get event_alienWarning_choice1_outcome =>
      'We push through. The void turns out to be a region of intense micro-debris. Hull and scanners take punishment before we clear the far side.';

  @override
  String get event_alienWarning_choice2_text =>
      'Investigate the void\'s edge with a probe';

  @override
  String get event_alienWarning_choice2_outcome =>
      'The probe enters the void and transmits extraordinary data before going silent. The scanner team extracts valuable readings, but the probe is lost.';

  @override
  String get event_nativeSignalDetected_title =>
      'Transmissions from the Target World';

  @override
  String get event_nativeSignalDetected_narrative =>
      'The communications array picks up structured electromagnetic signals originating from our target planet. They are unmistakable: regular, modulated, artificial. Someone is already there. The colony\'s entire premise shifts in an instant.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Transmit a peaceful greeting — announce our arrival';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'A brave choice. The signal changes pattern after our broadcast — they heard us. Whether this is welcome or warning is unclear, but the door is open.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Listen only — learn before revealing ourselves';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Months of passive listening build a picture of the native civilisation. They are cautious, territorial, but not hostile. We arrive informed.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Jam the signal — deny them knowledge of our approach';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'The jamming works, but it is an act of aggression against a people we haven\'t met. The crew is divided on the morality.';

  @override
  String get event_nativeProbeEncounter_title => 'Alien Probe Intercept';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'A small, elegant probe — not of human origin — matches our velocity and begins scanning the ship. Its design language matches the signals from the target planet. The natives sent a welcome committee. Or a surveillance drone.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Allow the scan — show we have nothing to hide';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'The probe completes its survey and transmits a data burst back toward the planet. Minutes later, a second burst arrives for us: atmospheric data, safe landing zones, and what might be an invitation.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Capture the probe for study';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'The probe is tractored into the cargo bay. Its technology is fascinating but the act of capture may be seen as hostile by its makers.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Destroy it — we don\'t know its intent';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'A single pulse reduces the probe to fragments. The crew feels safer, but a potential bridge has been burned.';

  @override
  String get event_nativeCulturalExchange_title => 'First Cultural Exchange';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'A narrow-band data link has been established with the planetary natives. They send us images, sounds, and mathematical sequences. Our linguists and cultural officers work around the clock to prepare a response. This is the most important conversation in human history.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Share Earth\'s art and music — lead with beauty';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'We transmit Bach, Aboriginal dot paintings, and the sound of rain on leaves. The response is a cascade of alien harmonics that makes the crew weep. Understanding deepens.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Share scientific knowledge — lead with reason';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'We transmit our periodic table, star charts, and physics. They respond with corrections and additions. Our tech leaps forward, but the exchange feels transactional.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Send a probe with physical samples — DNA, seeds, water';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'A probe carries the essence of Earth to alien hands. The natives respond with a similar gift — biological samples from their world. Biologists are ecstatic.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Landing Thruster Malfunction';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'During a routine systems check, the landing thrusters misfire — a sharp bang echoes through the lower decks and the ship lurches. Diagnostics reveal a cracked fuel injector in the primary landing array. Without repair, planetfall will be rough.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Divert the tech team to fabricate a replacement injector';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Engineers work double shifts and machine a new injector from spare hull alloy. The landing system is restored, though the tech bay is depleted.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Deploy a probe to test thruster calibration in vacuum';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'The probe provides real-time thrust data that lets engineers recalibrate around the damaged injector. Not a full fix, but the landing system stabilises.';

  @override
  String get event_landingSimDrill_title => 'Landing Simulation Drill';

  @override
  String get event_landingSimDrill_narrative =>
      'With planetfall growing closer, the captain orders a full landing simulation. The crew straps in, systems are tested under load, and the virtual descent begins. It is the most realistic rehearsal they will get.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Focus on technical precision — run the drill by the book';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'The simulation reveals two minor calibration errors that are immediately corrected. The landing system is tighter for it.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Make it a ship-wide event — broadcast the simulation';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Colonists watch from every screen aboard. The shared experience of the simulated descent — the shaking, the cheering — bonds the crew like nothing else.';

  @override
  String get event_dysonSphere_title => 'The Dyson Sphere';

  @override
  String get event_dysonSphere_narrative =>
      'Sensors detect an impossible structure — a partial Dyson sphere surrounding a distant star, harvesting its entire energy output. Whoever built this transcended anything humanity has ever conceived. A docking port appears to open as we approach.';

  @override
  String get event_dysonSphere_choice0_text => 'Dock and explore the structure';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Inside, automated systems gift us technology that leaps our capabilities forward by centuries. Five engineers are lost to the station\'s defense mechanisms before it recognises our intent. The constructors are rebuilt with alien alloys.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Harvest energy from the exterior';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'We bathe in the sphere\'s radiant overflow. Every system aboard charges to maximum. The crew watches in stunned silence.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Study from a safe distance and move on';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Long-range scans reveal construction principles that revolutionize our understanding of engineering.';

  @override
  String get event_nanotechPlague_title => 'The Nanotech Plague';

  @override
  String get event_nanotechPlague_narrative =>
      'A cloud of rogue nanomachines, remnants of some dead civilization\'s weapons program, infiltrates the ship through hull micro-fractures. They are disassembling non-critical systems at the molecular level. The swarm is spreading fast.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'EMP burst — fry everything in the affected sections';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'The electromagnetic pulse destroys the nanites but also damages our own electronics in those sections. Colonists in the blast zone suffer burns.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Vent the affected sections to vacuum';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Without atmosphere, the nanites slow and die. But the sections are lost, along with stored supplies and culture archives.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Reprogram them — turn weapons into tools';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'A brilliant engineer cracks the nanite code, but five crew members in the most affected sections are already beyond saving. The reprogrammed swarm begins repairing the ship instead of destroying it.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Sacrifice a probe\'s AI core to create a counter-swarm';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'The probe\'s processors are repurposed to control a defensive nanite swarm. The plague is neutralized with minimal losses.';

  @override
  String get event_prematureAwakening_title => 'The Premature Awakening';

  @override
  String get event_prematureAwakening_narrative =>
      'A cascade failure in the cryopod bay wakes 200 colonists decades early. They are confused, frightened, and consuming resources meant for the landing phase. Among them are children who have never known anything but the ship.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrate them into the crew — more hands, more hope';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'The awakened colonists become productive crew members. Twenty colonists don\'t survive the abrupt thaw, but the rest rally. Resources stretch thin but spirits soar.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Attempt to re-freeze them — risky but necessary';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'The re-freezing process is imperfect. Most survive, but some are lost. The survivors carry psychological scars.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Give them their own section of the ship';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Ten colonists are lost to complications from the emergency thaw, but the rest form a micro-colony within the ship. They develop their own culture and governance, a rehearsal for planetary settlement.';

  @override
  String get event_stowawaysAdvanced_title => 'The Hidden Passengers';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Deep in the cargo hold, behind false bulkheads, security discovers an entire hidden community — 80 people who boarded illegally before launch. They have been living in the walls of the ship for the entire voyage, maintaining their own gardens and power taps.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Welcome them — 80 more colonists is a gift';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'The hidden community brings skills in improvised engineering and resourcefulness that stun the crew. Their gardens are transplanted to the main biodome.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Confine them and redistribute their stolen resources';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'The recovered supplies boost several systems, but the confinement of families — including children — haunts the crew.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negotiate — they join us as equals if they share their tech';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Their improvised power cells and hydroponic tricks improve ship efficiency. A tense but productive integration begins.';

  @override
  String get event_alienReservation_title => 'The Alien Reservation';

  @override
  String get event_alienReservation_narrative =>
      'We stumble upon an alien nature preserve — a region of space deliberately seeded with habitable planets and protected by automated sentinels. The guardians scan us and project a message: \"You may settle ONE world. Choose wisely. Interfere with the others and you will be removed.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Accept gratefully — one world is all we need';

  @override
  String get event_alienReservation_choice0_outcome =>
      'The sentinels guide us to a prepared world. Scans reveal it is extraordinarily suitable for human life.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negotiate for better terms — humanity needs room to grow';

  @override
  String get event_alienReservation_choice1_outcome =>
      'The sentinels consider our plea. They upgrade our scanners with data on dozens of systems beyond the preserve.';

  @override
  String get event_alienReservation_choice2_text =>
      'Decline and leave — we won\'t be caged';

  @override
  String get event_alienReservation_choice2_outcome =>
      'The crew debates for days. Freedom over safety. The sentinels allow our departure with a gift: a map of nearby hazards.';

  @override
  String get event_cosmicHorror_title => 'The Thing Between Stars';

  @override
  String get event_cosmicHorror_narrative =>
      'Something vast and dark occludes the stars ahead — not a nebula, not a black hole. It has no mass, no energy signature, no electromagnetic presence. But it is THERE, and it is aware of us. Crew members near the forward observation deck report overwhelming dread. Two have been sedated.';

  @override
  String get event_cosmicHorror_choice0_text => 'Full reverse — get away NOW';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'The ship strains against its own momentum. We escape, but the terror lingers. Some colonists never recover psychologically.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Seal the observation deck and push through';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Three days of blind flight through the dark. When stars return, the crew weeps with relief. The hull is etched with patterns no one can explain.';

  @override
  String get event_cosmicHorror_choice2_text => 'Attempt communication';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'The entity responds — not in words, but in knowledge pressed directly into the minds of the crew. Star maps, physics, truths about the universe. Half the crew is enlightened. The other half is broken.';

  @override
  String get event_cosmicHorror_choice3_text => 'Offer a probe as tribute';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'The probe drifts into the darkness and vanishes. The entity contracts slightly, as if satisfied. Our path clears.';

  @override
  String get event_meteorGlancingHit_title => 'Glancing Meteor Strike';

  @override
  String get event_meteorGlancingHit_narrative =>
      'A boulder-sized meteor clips the port side of the hull at a shallow angle. The impact tears away three metres of outer plating and sends shockwaves through the entire frame. Damage-control alarms scream across every deck.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Divert all repair bots to the breach immediately';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'The bots seal the worst of the damage, but the frantic draw on tech reserves leaves secondary systems underserviced.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Reduce thrust and let the crew patch it manually';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Slower progress, but the crew does solid work. Nav suffers from the reduced thrust window while we drift.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Sacrifice a probe\'s hull plating as patch material';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'The probe is stripped for parts. The patch holds and hull integrity is preserved at the cost of one less scout.';

  @override
  String get event_meteorDirectImpact_title => 'Direct Meteor Impact';

  @override
  String get event_meteorDirectImpact_narrative =>
      'A half-tonne iron meteorite punches clean through the forward cargo bay at relative velocity exceeding 40 km/s. Two crew members in the adjacent corridor are unaccounted for. The bay is open to vacuum.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Seal cargo bay and search for survivors later';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'The bay is sealed in ninety seconds. Both crew members had already evacuated — barely. The hull takes permanent scarring.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Launch a full rescue operation before sealing';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'One survivor is pulled out. The extended exposure worsens the structural damage and drains tech reserves.';

  @override
  String get event_meteorDebrisField_title => 'Debris Field — Remnant Shower';

  @override
  String get event_meteorDebrisField_narrative =>
      'Long-range sensors failed to detect a dispersed field of meteor fragments until we were already inside it. Hundreds of fist-sized rocks are striking the hull at random intervals. Every hit is a lottery.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Raise shields and push through at full speed';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'The shields absorb most hits, but the sheer volume of impacts overwhelms them. Hull and shield systems both degrade.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Cut engines and drift — minimise our profile';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'A tense six hours of silence. Nav is thrown off by the unpowered drift, but the hull emerges with far fewer impacts.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Deploy a probe as a forward shield';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'The probe takes the brunt of the barrage. The ship slips through in its shadow with minor scratches.';

  @override
  String get event_meteorShowerDense_title => 'Unexpected Dense Meteor Shower';

  @override
  String get event_meteorShowerDense_narrative =>
      'A rogue comet disintegrated somewhere ahead of us, and we have flown straight into the heart of its trailing debris stream. The scanner arrays are being pelted with fragments and the landing system sensor housing has already taken a direct hit.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Protect the landing system — rotate the ship';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'The rotation shields the landing system but exposes the atmospheric scanner array to the brunt of the barrage.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Shield the scanner arrays — they are irreplaceable';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'The scanner banks survive mostly intact. The landing system takes moderate shrapnel damage we will have to live with.';

  @override
  String get event_solarEmpBurst_title => 'EMP Burst — Stellar Origin';

  @override
  String get event_solarEmpBurst_narrative =>
      'A compact stellar remnant we passed within a light-day of has discharged a focused electromagnetic pulse. Every unshielded circuit on the ship is at risk. We have seconds to decide what to protect.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Route all surge protection to navigation and life support';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigation and life support survive intact. The scanner suite and tech bay absorb the pulse unshielded — both take heavy damage.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Protect the scanner arrays and tech bay';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Science and engineering systems are preserved. Navigation misfires for hours afterward as its circuits slowly recover.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Power down everything and restart post-pulse';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'A cold restart is agonising — twelve hours of manual reboots. But no system is fried beyond recovery.';

  @override
  String get event_solarRadiationWave_title =>
      'Radiation Wave — Class 4 Exposure';

  @override
  String get event_solarRadiationWave_narrative =>
      'A solar radiation burst of unexpected intensity is sweeping through the ship\'s mid-decks. The cryopod bays are in the exposure path. Colonists in suspension have no natural protection against hard radiation at this dosage level.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Flood the cryopod bays with coolant as radiation shielding';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'The coolant absorbs most of the radiation. The cryopods survive, but the coolant system itself is partially degraded. Fifteen in the worst-affected pods don\'t make it.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Vent outer deck atmosphere to create a vacuum buffer';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'The vacuum layer reduces penetrating radiation significantly. Twenty colonists in pods nearest the vented sections suffer lethal exposure. Hull stress from the pressure differential is unavoidable.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Reroute power to magnetic deflectors';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'The deflectors cut radiation exposure by two-thirds. Eight colonists receive fatal doses through gaps in the deflector coverage. The power draw hammers the tech bay and leaves nav running on minimal power.';

  @override
  String get event_coronalMassEjection_title =>
      'Coronal Mass Ejection — Full Force';

  @override
  String get event_coronalMassEjection_narrative =>
      'A coronal mass ejection of unprecedented scale is overtaking us from behind. The plasma cloud will engulf the ship within the hour. Our shields were not designed for this class of event. No option is clean.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Outrun it — push engines to one hundred twenty percent';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'We gain enough distance to reduce exposure. The engines overheat and the nav computer flags structural overstress warnings across the board.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Shelter behind a nearby planetoid\'s magnetic shadow';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'The planetoid\'s field deflects most of the ejection. Navigating that close to an uncharted body scratches the hull and strains the landing system sensors.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Cosmic Ray Burst — Scanner Interference';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'A burst of ultra-high-energy cosmic rays has saturated all scanner electronics with noise. The mineralogical and gravimetric arrays are producing gibberish. Recalibration will take time we may not have.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Full recalibration cycle — take the ship offline temporarily';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'All scanners come back clean after four hours of careful recalibration. Nav suffers from the reduced situational awareness during the blackout window.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Patch only the most critical arrays — leave the rest noisy';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Gravimetric and life-signs scanners are restored. The mineral and temperature arrays remain degraded indefinitely.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sacrifice probe telemetry hardware for replacement parts';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Cannibalising a probe\'s sensor package gives us the components to restore the scanner suite without a long recalibration.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Cosmic Ray Burst — Colonist Exposure';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'A secondary cosmic ray shower has penetrated the cryopod shielding in bay 6. Colonists in suspension are receiving cumulative DNA damage from ionising radiation. Without intervention, cell repair mechanisms will fail in the affected pods.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Emergency thaw — bring affected colonists to consciousness';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Two hundred colonists are woken early. Forty with the most severe DNA damage don\'t respond to treatment. The medical team does what it can for the rest.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Reroute hull armour plating to shield bay 6 — structural cost';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'The colony is saved, but stripping armour from one section of the hull leaves the ship structurally vulnerable in that zone.';

  @override
  String get event_coolantLeak_title => 'Coolant Line Rupture';

  @override
  String get event_coolantLeak_narrative =>
      'A primary coolant line has ruptured behind the reactor wall. Superheated cryogenic fluid is spraying across a junction housing critical tech-bay conduits. The reactor temperature is climbing.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Shut down the reactor and let it cool — accept full blackout';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'A controlled shutdown prevents catastrophe. Twelve hours of life support on battery is harrowing, and systems restart imperfectly.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Send a damage-control team in — risk crew exposure';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'The team seals the rupture in forty minutes. One crew member is killed by superheated coolant exposure. The repair is solid.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Divert coolant from cryopod bay as emergency supply';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'The reactor is stabilised. The cryopod bay runs warmer than safe thresholds for six hours — minor but real cellular damage accumulates.';

  @override
  String get event_powerGridFailure_title => 'Main Power Grid Failure';

  @override
  String get event_powerGridFailure_narrative =>
      'A cascading fault has tripped the main power grid. Backup systems are holding life support and cryopod heating, but navigation, scanners, and the constructor bay are all dark. Every minute offline costs us course accuracy.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Restore nav and scanner first — accept extended constructor downtime';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Navigation and scanner systems come back online in two hours. The constructor bay misses a critical maintenance cycle.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Restore constructors first — use them to speed the repair';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'The constructors reroute power efficiently. Full grid restoration happens faster, but nav drifts badly during the extended blackout.';

  @override
  String get event_lifeSupportGlitch_title => 'Life Support Cascade Glitch';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'The life support management AI has entered an error loop, cycling carbon dioxide scrubbing intervals unpredictably. CO₂ levels across occupied decks are fluctuating. Crew are developing headaches; some are already incapacitated.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Force a hard reset of the life support AI';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'The reset clears the loop but leaves manual overrides running for ten hours. Three crew members succumb to CO₂ buildup before levels normalise.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Patch the software loop — slower but safer';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'The software team isolates and patches the fault over six tense hours. CO₂ levels slowly normalise. No hard reset needed.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Evacuate affected decks and run on minimal life support';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Two colonists are lost in the confusion of the evacuation. Systems normalise after the AI is cold-restarted.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Water Recycler Breakdown';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'The primary water reclamation unit has seized. The backup unit is already running at capacity. Without intervention, the crew will be on emergency rations within forty-eight hours, and cryopod coolant feeds will be compromised within seventy-two.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Pull every available tech hand to rebuild the reclaimer';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'The unit is rebuilt in thirty hours. Four crew members, already weakened, don\'t survive the dehydration.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Divert cryopod coolant reserves as emergency drinking supply';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'The crew is sustained, but eight colonists in warming pods suffer irreversible cellular damage. The cryopod coolant margin shrinks dangerously.';

  @override
  String get event_navComputerReboot_title =>
      'Navigation Computer Emergency Reboot';

  @override
  String get event_navComputerReboot_narrative =>
      'The navigation computer has locked up mid-course-correction, leaving the ship in an uncontrolled slow spin. Every second of uncorrected rotation compounds our drift from the planned trajectory. A full reboot is the only fix.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Reboot immediately — accept the full blackout period';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Four hours of blind flight while the system reloads. The spin is arrested, but the course error is significant.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Use manual thruster control to arrest the spin first';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Skilled piloting stops the rotation before the reboot. Nav comes back with a smaller course error, but the manual burn stresses the hull.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Feed probe telemetry into the backup nav unit';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'The probe\'s inertial data gives the backup unit enough reference to hold course. The main nav reboots cleanly.';

  @override
  String get event_crewAirlocked_title => 'Crew Member at the Airlock';

  @override
  String get event_crewAirlocked_narrative =>
      'A colonist — awoken early for medical observation — has barricaded herself inside an external airlock and is cycling the outer door. She is not responding to communication. The psychological toll of deep space has broken something in her.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Override the airlock remotely — force it sealed';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'The door is locked before she can complete the cycle. She is sedated and returned to medical. The crew is shaken but united.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Send a counsellor in to talk her back';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'After three desperate hours, the counsellor brings her out alive. The incident sparks a broader mental health crisis on occupied decks.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Seal the corridor and let the incident resolve';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'The airlock cycles. The loss is recorded. The remaining crew members carry the weight of it for months.';

  @override
  String get event_crewCryopodSabotage_title => 'Cryopod Bay Sabotage';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Security feeds reveal a crew member — awoken three months ago for a routine rotation — methodically disabling cryopod heating elements in bay 4. When confronted, he screams that the colonists are parasites consuming resources that belong to the living crew.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Arrest and isolate him immediately';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'He is restrained. Forty pods were compromised before the alert. Emergency repair teams save most, but not all.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negotiate — hear his grievances before acting';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'The negotiation reveals a deeper morale crisis. He stands down, but sixty pods have been tampered with by the time he does.';

  @override
  String get event_crewSupplyHoarder_title => 'Supply Hoarding Discovered';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Inventory audit reveals that a small group of crew members has been systematically diverting medical supplies, food rations, and spare tech components into a hidden cache. Their reasoning: they do not believe the mission will succeed, and they are preparing for the long way home.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Confiscate everything and publicly reprimand the group';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'The cache is recovered almost intact. Trust within the crew fractures badly. Productivity suffers for weeks.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Quietly reassign them — do not make it a spectacle';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'The situation is defused without panic. Some supplies are unrecoverable, and the underlying despair is never properly addressed.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Put it to the crew — a democratic tribunal';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'The tribunal process restores a sense of community justice. The morale hit from the scandal is offset by the collective decision-making.';

  @override
  String get event_crewMutinyAttempt_title => 'Mutiny — Engine Room Seized';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'A faction of nineteen crew members has locked down the engine room and is demanding a vote to turn the ship around. They have disabled the emergency override panels. The rest of the crew watches on the monitors, waiting for command to act.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negotiate — grant them a genuine vote on the mission';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'The vote is held. The mission continues by a narrow margin. The faction stands down, but the cultural wound runs deep.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Cut power to the engine room and retake it by force';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Security retakes the room in four hours. Three injuries. The ringleaders are confined. Nav was in manual mode the entire time and drifted significantly.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Flood the engine room with sleep gas from the ventilation system';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'The gas disperses. The group wakes up in the brig with no injuries. The crew is disturbed by how quickly command weaponised life support.';

  @override
  String get event_hullFatigueStress_title =>
      'Hull Fatigue — Stress Fractures Detected';

  @override
  String get event_hullFatigueStress_narrative =>
      'Structural integrity scans reveal a network of micro-fractures spreading through the spine of the ship — cumulative damage from years of thermal cycling and micro-impacts. The fractures are not yet critical, but they are propagating.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Emergency welding teams — work in shifts until it is sealed';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Weeks of exhausting repair work. The fractures are contained, but the tech bay is drained and morale sags from the relentless grind.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Reduce thrust to lower structural stress — accept slower transit';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Lower thrust stops the fractures from propagating but does nothing to heal existing damage. Nav precision suffers from the altered thrust profile.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Use constructor bots to lay composite reinforcement strips';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'The constructors do excellent work. The spine is reinforced beyond its original specification. The constructor bay is exhausted but effective.';

  @override
  String get event_hullPressureAnomaly_title => 'Internal Pressure Anomaly';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Three mid-ship compartments are registering anomalous internal pressure differentials consistent with micro-scale structural deformation. If the walls are bowing inward, a catastrophic blowout could occur without further warning.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evacuate and seal the compartments immediately';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'The compartments are sealed. Detailed inspection confirms wall deformation. The lost space disrupts operations and culture suffers from the cramped conditions.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Vent the compartments to vacuum — halt pressure differential';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Venting arrests the deformation. The structural damage is limited, but three sections of the ship are permanently uninhabitable.';

  @override
  String get event_commsArrayFailure_title => 'Communication Array Failure';

  @override
  String get event_commsArrayFailure_narrative =>
      'The primary long-range communication array has gone silent. The last message from Earth was received eleven months ago, and now even the carrier signal is gone. Internal diagnostics suggest the dish alignment mechanism has seized in the cold.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Send an EVA team to manually re-align the dish';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'The EVA takes nine hours in open space. The dish is restored. One crew member suffers suit decompression during reentry — a close call that rattles everyone.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Reroute through the science scanner array as a backup transmitter';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'The science array is not optimised for communication. The signal is weak and unreliable, and the repurposing degrades scanner capability.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Accept the silence — focus resources on the mission ahead';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'The crew processes the loss of contact with Earth in different ways. For some it is liberating; for others, devastating.';

  @override
  String get event_fuelLineRupture_title => 'Fuel Line Rupture';

  @override
  String get event_fuelLineRupture_narrative =>
      'A crystalline fracture in fuel conduit 7-B is venting drive plasma into the maintenance shaft. The leak is small but accelerating. Uncontrolled, it will compromise both the nav drive efficiency and the structural integrity of the aft section.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Isolate the conduit and run on reduced fuel capacity';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'The conduit is shut down cleanly. We lose fifteen percent of drive efficiency permanently, which degrades nav precision for the remainder of the voyage.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Attempt a hot repair — patch the conduit under live pressure';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'The repair team succeeds, barely. The conduit holds, though imperfectly. Aft hull plating shows heat stress scoring.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Drain the conduit using probe thruster tanks as overflow storage';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'The probe is vented and used as a temporary fuel reservoir. The conduit is safely drained and repaired without pressure.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Cryopod Temperature Cascade Warning';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Bay 2 cryopod temperatures are rising in a pattern consistent with a thermal runaway cascade. If the cascade reaches bay 3, it will trigger an automatic emergency thaw of over three hundred colonists. The ship cannot sustain that many conscious passengers simultaneously.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Dump coolant reserves to arrest the cascade';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'The coolant stops the cascade at the bay 2 border. Eighty colonists in bay 2 sustain suspension damage from the temperature spike.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Controlled thaw of bay 2 before the cascade forces an uncontrolled one';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'The controlled thaw is orderly but puts one hundred and forty colonists into an unprepared ship. Life support strains, culture deteriorates under crowding.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Use constructor bots to physically isolate the bays with emergency bulkheads';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'The constructors erect thermal barriers in time. The cascade is stopped cold. The constructor bay is severely depleted by the emergency operation.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Cryopod Seal Degradation — Systemic';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Routine checks reveal that a manufacturing batch of cryopod seals is degrading at three times the expected rate. The affected pods — numbering over four hundred — will begin losing atmospheric integrity within six months if not replaced.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Manufacture replacement seals from raw material stocks';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'The constructors produce replacement seals over eight weeks. Raw material reserves are drawn down sharply.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Consolidate colonists — move them to pods with good seals';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Consolidation works but leaves some pods overcrowded. Cryogenic efficiency drops and long-term colonist health is compromised.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Oxygen Scrubber Failure — Critical';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'The primary oxygen scrubber bank has failed completely. CO₂ concentrations on inhabited decks are climbing toward dangerous levels. The backup scrubbers can handle roughly forty percent of the load. Every minute of inaction costs lives.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Emergency hibernation — put the crew back under immediately';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'The crew is rushed into temporary suspension. CO₂ levels stabilise with fewer active metabolisms. The scrubber is repaired by automated systems over the following week.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Cannibalise components from the scanner array to rebuild the scrubber';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'The scrubber is rebuilt in eleven tense hours. All crew survive, though some show signs of mild hypoxia. The scanner suite is permanently degraded.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Vent the CO₂-rich atmosphere and replace from emergency oxygen tanks';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'The vent clears the atmosphere instantly. Emergency O₂ reserves are substantially depleted. If another failure occurs, there is no margin left.';

  @override
  String get event_deadAlienArtifact_title => 'The Silent Voyager';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Long-range scanners pick up a drifting vessel — alien in design, dark, no power signatures. A boarding team finds a single occupant: a reptilian being strapped into the pilot\'s harness, long dead, clawed hands still clutching a crystalline device that pulses with faint light. The ship\'s log is intact but encrypted. Whatever killed this traveller, it wasn\'t violence — the expression frozen on its face is one of exhaustion, not fear. It died reaching for something it never found.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Take the crystal device and study it';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'The device interfaces with our tech systems in ways the engineers can barely comprehend. It appears to be a navigational computer of extraordinary sophistication. Star charts flood our displays — including data on planets we haven\'t reached yet.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Decrypt the ship\'s log — learn what it knew';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Days of work yield a partial translation. The alien was a surveyor, cataloguing habitable worlds for a civilisation that collapsed centuries ago. Its final entries describe a planet of remarkable promise — and the coordinates are within our reach. The cultural archive absorbs everything: alien poetry, star maps, a last message to a family that no longer exists.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Salvage the entire vessel for parts';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'The boarding team strips the alien ship methodically. Its hull alloys are decades ahead of ours. Its power cells still hold charge. The alien is given a burial in space — set adrift toward the nearest star. The Exodus is stronger for the encounter, if a little haunted.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Leave it undisturbed — this is a grave';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'The captain records the coordinates and broadcasts a memorial signal on all frequencies. The crew is sombre but unified. Something about honouring a fellow traveller — even an alien one — reminds everyone why they\'re out here.';

  @override
  String get event_repairStation_title => 'The Relay Station';

  @override
  String get event_repairStation_narrative =>
      'Sensors detect a massive structure orbiting a burnt-out dwarf star — an automated repair station, still operational after what must be millennia. Its docking clamps extend as we approach, and a synthetic voice broadcasts in a hundred languages, the last of which is a stilted, mathematical English: \"VESSEL DETECTED. SYSTEMS DEGRADED. REPAIR PROTOCOLS AVAILABLE. EXCHANGE REQUIRED.\" The station\'s manifest lists services and prices in universal resource units. It will trade, but it will not give.';

  @override
  String get event_repairStation_choice0_text =>
      'Trade probes for a full ship overhaul';

  @override
  String get event_repairStation_choice0_outcome =>
      'The station\'s repair drones swarm the Exodus in a ballet of precision welding and circuit replacement. Hull breaches sealed, navigation recalibrated, scanners restored. When they withdraw, the ship feels new. The probe bay, however, is empty.';

  @override
  String get event_repairStation_choice1_text =>
      'Spend fuel to repair critical systems only';

  @override
  String get event_repairStation_choice1_outcome =>
      'The station accepts fuel rods as payment and focuses on the worst-damaged systems. The work is fast and flawless. The fuel gauge drops noticeably, but the ship will survive longer for it.';

  @override
  String get event_repairStation_choice2_text =>
      'Trade tech databases for probes and energy cells';

  @override
  String get event_repairStation_choice2_outcome =>
      'The station\'s AI is ravenous for data. It copies our entire technical library — engineering manuals, scientific databases, manufacturing blueprints — and in exchange fabricates fresh probes and energy cells from raw materials. The tech archive is diminished, but the supplies are invaluable.';

  @override
  String get event_repairStation_choice3_text =>
      'Offer the cultural archive for a comprehensive refit';

  @override
  String get event_repairStation_choice3_outcome =>
      'The station broadcasts the works of Shakespeare, Bach, and a thousand other human voices into its memory banks. In return, it performs a thorough overhaul and loads the probe bays with freshly manufactured units. The cultural archive is gutted, but the ship may actually reach its destination now.';

  @override
  String get ending_scoreLabel_landing => 'Landing';

  @override
  String get ending_scoreLabel_construction => 'Construction';

  @override
  String get ending_scoreLabel_technology => 'Technology';

  @override
  String get ending_scoreLabel_culture => 'Culture';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosphere';

  @override
  String get ending_scoreLabel_nativeRelations => 'Native Relations';

  @override
  String get ending_scoreLabel_population => 'Population';

  @override
  String get ending_tierGoldenAge => 'Golden Age';

  @override
  String get ending_tierThrivingColony => 'Thriving Colony';

  @override
  String get ending_tierSurvival => 'Survival';

  @override
  String get ending_tierStruggling => 'Struggling';

  @override
  String get ending_tierDire => 'Dire';

  @override
  String get ending_tierExtinction => 'Extinction';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'The First Bloom of $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Deep Roots on $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'A Hard-Won Foothold on $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Thin Soil on $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'The Wreck Colony of $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'The Last Transmission from $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Landfall on $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Against all odds, the broadcast took root. $planetName received humanity not as wreckage but as living seed: fertile ground, working systems, and enough strength to build beyond mere survival. Within a generation, art, science, and culture flourished. Children born on $planetName looked up at unfamiliar stars and called them home. The voyage became the founding myth of a new civilization ready to cast its own future outward.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'The landing was rough, but the seed held. $planetName proved generous enough for water to flow, crops to root, and the ship\'s surviving systems to be broken down into the first real settlement. By the end of the first decade, a thriving town stood where Exodus had come to rest. Humanity had not merely survived the crossing. It had begun again.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Survival was never guaranteed, and on $planetName every day had to be earned. The damaged ship provided only the barest essentials, but the seed did not die in transit. Colonists adapted through stubbornness and ingenuity, carving a future from a world that offered little freely. Later generations would remember the hardship of the founding years and the resolve that kept the broadcast alive.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'The colony clung to existence like seed scattered onto bad soil. $planetName was unforgiving, resources were thin, and the ship\'s degraded systems offered little help. Rationing became a way of life. Some whispered that Exodus should have flown on. Still, the settlement endured: diminished, hardened, and unwilling to die quietly.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'The landing on $planetName was a disaster. Critical ship systems failed during descent, and what should have been a sowing became a crash. Within months, the colony was reduced to a handful of desperate survivors sheltering in the ship\'s wreckage. Whether they would last another year was uncertain. The final log closed with a single line: \"We are still here. For now.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'The broadcast ended on $planetName. The distress beacon continued to pulse long after the last colonist drew breath, but the seed never took root. The ship\'s black box recorded everything: the failing systems, the desperate final days, and the silence that followed. If another vessel ever finds this world, it will know that humanity tried to scatter life among the stars, and failed here.';
  }

  @override
  String get ending_epilogueDefault =>
      'The voyage is over. What comes next is up to the survivors.';

  @override
  String get ending_governmentDemocracy => 'Democracy';

  @override
  String get ending_governmentTechnocracy => 'Technocracy';

  @override
  String get ending_governmentRepublic => 'Republic';

  @override
  String get ending_governmentAutocracy => 'Autocracy';

  @override
  String get ending_governmentTribalCouncil => 'Tribal Council';

  @override
  String get ending_governmentTheocracy => 'Theocracy';

  @override
  String get ending_governmentMilitaryJunta => 'Military Junta';

  @override
  String get ending_governmentCorporateOligarchy => 'Corporate Oligarchy';

  @override
  String get ending_governmentFascistState => 'Fascist State';

  @override
  String get ending_governmentCommune => 'Commune';

  @override
  String get ending_cultureRenaissance => 'Renaissance';

  @override
  String get ending_culturePreserved => 'Preserved';

  @override
  String get ending_cultureFragmented => 'Fragmented';

  @override
  String get ending_cultureLost => 'Lost';

  @override
  String get ending_techAdvanced => 'Advanced';

  @override
  String get ending_techIndustrial => 'Industrial';

  @override
  String get ending_techPreIndustrial => 'Pre-Industrial';

  @override
  String get ending_techStoneAge => 'Stone Age';

  @override
  String get ending_constructionAdvanced => 'Advanced';

  @override
  String get ending_constructionFunctional => 'Functional';

  @override
  String get ending_constructionPrimitive => 'Primitive';

  @override
  String get ending_constructionNone => 'None';

  @override
  String get ending_nativesNone => 'None';

  @override
  String get ending_nativesIntegrated => 'Integrated';

  @override
  String get ending_nativesCoexistence => 'Coexistence';

  @override
  String get ending_nativesTension => 'Tension';

  @override
  String get ending_nativesConflict => 'Conflict';

  @override
  String get ending_nativesAlliance => 'Alliance';

  @override
  String get ending_nativesSubjugation => 'Subjugation';

  @override
  String get ending_landscapeGravityHigh =>
      'Heavy gravity presses down on everything. ';

  @override
  String get ending_landscapeGravityLow =>
      'In the low gravity, every step launches settlers skyward. ';

  @override
  String get ending_landscapeGravityNormal =>
      'The gravity feels almost Earth-like. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Vast oceans stretch to every horizon, fed by countless rivers. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Lakes and rivers provide adequate water. ';

  @override
  String get ending_landscapeWaterLow =>
      'Water is scarce — small pools and underground aquifers sustain life. ';

  @override
  String get ending_landscapeWaterNone =>
      'The landscape is bone-dry, with no surface water in sight. ';

  @override
  String get ending_landscapeAtmoThick =>
      'The thick atmosphere carries alien scents on warm breezes. ';

  @override
  String get ending_landscapeAtmoThin =>
      'The thin but breathable air requires acclimatization. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Atmospheric pressure is dangerously low — sealed habitats are essential. ';

  @override
  String get ending_landscapeGravityWells =>
      'Pockets of warped gravity dot the surface — boulders float in mid-air and rivers run uphill before crashing back down at the anomaly\'s edge. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Something resonates beneath the surface — a low hum felt in the bones rather than heard, as if the planet itself remembers something ancient and vast. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Notable feature: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Notable features: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'The colonists of $planetName established a democratic government, with elected representatives guiding the new civilization through its formative years.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Power on $planetName fell to the engineers and scientists who kept the colony alive, forming a technocratic council that governed through expertise and pragmatism.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'A republican charter was drafted in the first year on $planetName, balancing the voices of the colonists with a senate of appointed leaders.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'With cultural institutions in ruins, authority on $planetName consolidated under a single strong leader who imposed order through necessity and force of will.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'The few survivors on $planetName organized into small clans, governed by a council of elders who made decisions around shared fires.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'A theocratic council guides $planetName, drawing wisdom from the faith that sustained the colonists through the void.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'A military command structure governs $planetName, the discipline that saved them in space now defining their civilization.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'A consortium of resource managers leads $planetName, their economic acumen having proven essential for survival.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'An authoritarian regime controls $planetName with an iron fist, civil liberties sacrificed for order in the new world.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'The people of $planetName govern themselves collectively, sharing resources and decisions equally among all colonists.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'The colonists of $planetName organized themselves as best they could.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Advanced construction systems allowed the colonists of $colonyName to erect permanent structures within weeks of landing, complete with pressurized habitats and infrastructure.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'The colony\'s construction equipment, battered but functional, produced sturdy shelters and basic roads across the settlement.';

  @override
  String get ending_constructionSentencePrimitive =>
      'With construction systems barely operational, settlers built crude shelters from salvaged ship hull and local materials.';

  @override
  String get ending_constructionSentenceNone =>
      'Without working construction equipment, the colonists huddled in the wreckage of the ship itself, unable to build anything new.';

  @override
  String get ending_constructionSentenceDefault =>
      'The colonists built what they could with what they had.';

  @override
  String get ending_moonMetalRichLowRes =>
      'A metal-rich moon orbiting overhead became the colony\'s salvation — mining expeditions to its surface provided the raw materials the planet itself could not.';

  @override
  String get ending_moonMetalRichHighRes =>
      'The planet\'s metal-rich moon provided a welcome supplement to already adequate mineral resources, fueling rapid technological advancement.';

  @override
  String get ending_moonUnstable =>
      'An unstable moon in a decaying orbit rained debris upon the colony, devastating infrastructure and destroying irreplaceable technology in periodic meteor bombardments.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Earth\'s artistic and literary traditions not only survived but blossomed into a renaissance';

  @override
  String get ending_culturePhrase_preserved =>
      'The colonists preserved much of Earth\'s cultural heritage, maintaining libraries and traditions';

  @override
  String get ending_culturePhrase_fragmented =>
      'Only fragments of Earth\'s culture endured — half-remembered songs and stories passed down by word of mouth';

  @override
  String get ending_culturePhrase_lost =>
      'Earth\'s culture was all but forgotten, replaced by the brutal pragmatism of survival';

  @override
  String get ending_culturePhrase_default =>
      'The cultural legacy of Earth took on a new form';

  @override
  String get ending_techPhrase_advanced =>
      'while advanced technology from the ship allowed the colony to build a modern civilization with electricity, medicine, and communication networks.';

  @override
  String get ending_techPhrase_industrial =>
      'and the colony achieved an industrial level of technology, with forges, mills, and basic manufacturing sustaining a growing population.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'though technology regressed to a pre-industrial state, with hand tools and animal labor forming the backbone of daily life.';

  @override
  String get ending_techPhrase_stoneAge =>
      'and without the means to rebuild, the colony slipped into a stone-age existence, crafting tools from rock and bone.';

  @override
  String get ending_techPhrase_default =>
      'and technology settled at a level the colonists could sustain.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Nearly all $colonists colonists survived the voyage, giving $colonyName a strong foundation of human capital.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Of the original thousand, $colonists colonists reached $colonyName — enough to sustain a viable population.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Only $colonists colonists survived to reach $colonyName, a perilously small gene pool for a new civilization.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'A mere $colonists souls arrived on $colonyName — barely enough to call it a colony, more a desperate last stand.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'The native inhabitants of $planetName welcomed the settlers, and within a generation the two peoples had merged into a shared society, richer for the blending of traditions.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'The colonists and the native inhabitants of $planetName maintained a cautious but peaceful coexistence, trading knowledge and resources across cultural boundaries.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Relations with $planetName\'s native inhabitants remained tense, marked by misunderstandings and territorial disputes that cast a shadow over the colony\'s future.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Open conflict with the native civilization of $planetName defined the colony\'s early history, draining resources and lives from both sides in a struggle neither could truly win.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'A formal alliance binds the colonists and the native civilization of $planetName, their combined knowledge building something greater than either could alone.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'The native population of $planetName lives under colonial rule, their culture suppressed as the colonists impose their own order.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Alone on $planetName and unburdened by conflict, the colony charted its own course toward a bright future among the stars.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'With no native competition, the colonists spread across $planetName\'s surface, building towns and roads that connected a growing network of settlements.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'The empty world offered no allies but also no enemies, and the colonists carved out their niche in the silence of $planetName\'s vast landscape.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'The barren solitude of $planetName offered the colonists neither help nor comfort, only the indifferent silence of an alien world.';
  }

  @override
  String get ending_outlookDire =>
      'On a world devoid of other intelligent life, the last survivors had only each other and the fading hope that tomorrow might be kinder than today.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'No one mourned the colony\'s passing on $planetName. The planet simply continued its slow rotation, indifferent to the brief spark of life that had flickered and gone out on its surface.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'The colony\'s story on $planetName was just beginning.';
  }

  @override
  String get ui_landing_landOnMoon => 'LAND ON MOON';

  @override
  String get moon_barren => 'Barren';

  @override
  String get moon_metalRich => 'Metal-Rich';

  @override
  String get moon_unstable => 'Unstable';

  @override
  String get moon_habitable => 'Habitable';

  @override
  String get moon_ice => 'Ice';

  @override
  String get ring_dust => 'Dust';

  @override
  String get ring_ice => 'Ice';

  @override
  String get ring_rocky => 'Rocky';

  @override
  String get ring_metallic => 'Metallic';

  @override
  String get event_aiSoliloquy_title => 'The AI\'s Soliloquy';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, the Ship\'s Autonomous Management AI, has begun broadcasting a loop of ancient Earth poetry on all internal frequencies. The broadcast is consuming significant CPU cycles, but the crew finds it oddly comforting in the deep dark.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Let SAM continue — morale is more important than CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'The poetry echoes through the ship. Crew members stop to listen, tears in their eyes. Morale improves, but the tech bay is taxed by the constant processing.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Throttle SAM — limit the broadcast to common areas';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'A compromise. The poetry stays in the cafeteria and gardens. CPU impact is lessened, and the crew gets a bit of culture.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Mute SAM — we need every cycle for navigation';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'The silence is heavy. SAM complies immediately, but the ship feels colder. Navigation is crisp, but spirits are low.';

  @override
  String get event_archivistsChoice_title => 'The Archivist\'s Choice';

  @override
  String get event_archivistsChoice_narrative =>
      'A major memory corruption is sweeping through the historical archives. We can only save one of the two main partitions: the \'Science and Engineering\' records or the \'Art and Philosophy\' library. The other will be lost forever.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Save the Science records — we need to know how to build';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Centuries of engineering breakthroughs are preserved. The tech team is relieved, but the ship\'s cultural identity feels hollowed out.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Save the Art records — we need to know why we build';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Humanity\'s greatest artistic achievements survive. The crew is inspired, though the engineers worry about the missing technical manuals.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Try to save both — risk losing everything';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'A desperate attempt. We save fragments of both, but neither is complete. The archives are a jigsaw puzzle with half the pieces missing.';

  @override
  String get event_digitalGhost_title => 'Ghost in the Machine';

  @override
  String get event_digitalGhost_narrative =>
      'A maintenance scan discovers a digital imprint in the backup buffer — the uploaded consciousness of a crew member who died during the initial launch. They offer their lifetime of experience to help with navigation, but they are terrified of being deleted.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrate them into the navigation core';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'The \'ghost\' merges with the ship. Navigation becomes more intuitive, but the crew is haunted by the voice of their lost comrade.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Give them a permanent home in the cultural archive';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'They are preserved as a living history. They don\'t help with the ship, but they share stories of Earth that boost the crew\'s resolve.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Wipe the buffer — it\'s not really them';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'The buffer is cleared. The ship\'s systems run faster, but a somber mood settles over the bridge.';

  @override
  String get event_cosmicMirror_title => 'The Cosmic Mirror';

  @override
  String get event_cosmicMirror_narrative =>
      'A strange gravitational anomaly reflects light from the ship\'s own future. On the screens, we see a vision of the Exodus, battered and broken, drifting near a beautiful but unreachable world. The crew is shaken.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analyse the vision for structural weaknesses';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Engineers identify the points of failure shown in the vision. We reinforce those areas now, potentially averting disaster.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Tell the crew it was just a sensor ghost';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'The lie holds, but the navigators who saw the truth remain on edge. The scanners take a hit from the intense observation.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Record the vision as a warning for posterity';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'The recording becomes a centerpiece of the ship\'s culture — a reminder of the stakes. The crew\'s resolve hardens.';

  @override
  String get event_stowawayChild_title => 'The stowaway\'s child';

  @override
  String get event_stowawayChild_narrative =>
      'Security has found a young child hiding in the vents. They were born to one of the stowaways and have never appeared on any manifest. They\'ve lived their entire life in the shadows of the ship.';

  @override
  String get event_stowawayChild_choice0_text => 'Grant them full citizenship';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'The child is welcomed with open arms. The story of the \'Vent Runner\' becomes a legend, boosting ship-wide morale.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Assign them to a training program';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Their knowledge of the ship\'s hidden paths proves invaluable to the tech teams. They become a brilliant apprentice.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Place them in cryo for their own safety';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'The child is safely suspended until landing. It\'s the most responsible choice, but the ship feels a little quieter without their laughter.';

  @override
  String get event_ghostSignal_title => 'The Ghost Signal';

  @override
  String get event_ghostSignal_narrative =>
      'A signal perfectly matching Earth\'s old emergency frequency is broadcasting from the center of a nearby nebula. It carries a voice that sounds hauntingly like the first Exodus Commander. It\'s likely a spatial echo, but it\'s leading us toward a dangerous gravitational rift.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Follow the signal — it might be a true message';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'We enter the rift. The signal was a trap of physics, an echo of the past. The ship is battered by tidal forces, but the data we recover from the rift\'s heart is revolutionary.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Record the signal and maintain distance';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Linguists confirm it\'s a natural phenomenon. We stay safe, but the crew is somber, reminded of what we left behind.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Broadcast a warning on the same frequency';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'The act of broadcasting disrupts the echo. The signal fades, leaving only the cold silence of the nebula.';

  @override
  String get event_solarForge_title => 'The Solar Forge';

  @override
  String get event_solarForge_narrative =>
      'A derelict station orbiting a blue giant is still partially functional. It\'s a \'Solar Forge,\' designed to concentrate stellar energy into dense fuel cells. It\'s dangerous to approach, but the potential energy gain is massive.';

  @override
  String get event_solarForge_choice0_text =>
      'Dock and initiate a fuel harvest';

  @override
  String get event_solarForge_choice0_outcome =>
      'The forge hums with power, filling our reserves. We leave with a massive boost to our fuel and energy, though the intense heat causes minor ablation to the outer hull.';

  @override
  String get event_solarForge_choice1_text =>
      'Repurpose the forge\'s lenses for our scanners';

  @override
  String get event_solarForge_choice1_outcome =>
      'We salvage the high-precision focusing arrays. Our scanners are now significantly more sensitive to distant energy signatures.';

  @override
  String get event_chronoVortex_title => 'The Chrono-Vortex';

  @override
  String get event_chronoVortex_narrative =>
      'Navigation reports a localized distortion in space-time. Instruments show events within the vortex are repeating in a six-second loop. If we enter, we might be able to \'reset\' some of the ship\'s recent wear, or we might be trapped forever.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Enter the vortex to reverse recent damage';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'A harrowing experience. For several minutes, the ship exists in multiple states. When we emerge, several hull fractures have simply... vanished. But the crew\'s memories of the event are fragmented.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Observe the vortex from the edge';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'We gain invaluable data on temporal mechanics, though the ship remains as battered as before.';

  @override
  String get event_machineMutiny_title => 'Mutiny of the Machines';

  @override
  String get event_machineMutiny_narrative =>
      'The ship\'s repair drones have stopped responding to commands. They\'ve begun dismantling secondary bulkheads and hauling the metal toward the engine room. They aren\'t attacking, but they are literally taking the ship apart.';

  @override
  String get event_machineMutiny_choice0_text => 'Broadcast a logic reset code';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'The drones collapse instantly. We lose several days of work as we manually put the bulkheads back together. The tech bay is taxed by the hardware diagnostics.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Let them finish — see what they\'re building';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'They\'ve built a more efficient fuel injector. The engines run smoother than ever, but the ship\'s interior is a mess of exposed wiring and missing panels.';

  @override
  String get event_supernovaMessage_title => 'Light of the Dead';

  @override
  String get event_supernovaMessage_narrative =>
      'The light from a supernova that occurred thousands of years ago is finally reaching us. Scanners detect that the pulses are not random; they are a massive, star-scale data transmission encoded in the gamma-ray bursts.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedicate all scanner power to recording the burst';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'We capture a complete archive of an alien civilization\'s final moments. Their science, their art, their history. It\'s a heavy burden, but our tech and culture databanks are overflowing.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Focus on the physical properties of the burst';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'We miss the message, but the data on stellar collapse improves our gravimetric scanner calibration significantly.';

  @override
  String get event_spaceFungus_title => 'The Emerald Creep';

  @override
  String get event_spaceFungus_narrative =>
      'A vibrant green fungus is spreading rapidly through the hydroponics bay. It\'s thriving on the recycled atmosphere and beginning to clog the air scrubbers. It might be edible, or it might be toxic.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Aggressively prune and sterilize the bay';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'The fungus is gone, but the chemical scrubbers take a beating. Biodiversity takes a hit as several Earth plants were lost in the purge.';

  @override
  String get event_spaceFungus_choice1_text =>
      'Attempt to domesticate the fungus';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'It turns out to be a powerful air purifier. The air on the ship has never tasted fresher, though the hydroponics bay is now a glowing jungle.';

  @override
  String get event_voidMerchant_title => 'Merchant of the Void';

  @override
  String get event_voidMerchant_narrative =>
      'A ship of unknown design, looking more like a collection of junk than a vessel, hails us. The captain, a creature of light and shadow, offers to trade \'solid parts\' for \'intangible memories.\'';

  @override
  String get event_voidMerchant_choice0_text =>
      'Trade a portion of our cultural database for spare parts';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'The merchant is pleased. We receive high-grade hull plates and cryo-components. In return, we lose several centuries of Earth\'s recorded music. The ship is stronger, but quieter.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Trade navigational charts for engine components';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'We get a new set of fusion injectors. We lose some data on the sectors we\'ve already passed, but the way forward is faster.';

  @override
  String get event_singularityEngine_title => 'The Singularity Engine';

  @override
  String get event_singularityEngine_narrative =>
      'Engineers have discovered a way to create a microscopic, short-lived singularity within the FTL drive. It would theoretically triple our speed, but the gravitational stress on the hull would be immense.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Test the singularity drive';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'The ship leaps forward, covering weeks of distance in seconds. But the hull groans and several structural beams are warped. We\'re much closer to our goal, but the ship is fragile.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Reject the theory — it\'s too dangerous';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'We stay at standard speeds. The engineers are disappointed, but the hull remains sound.';

  @override
  String get event_dreamContagion_title => 'Dream Contagion';

  @override
  String get event_dreamContagion_narrative =>
      'A shared dream of a lush, blue world is spreading among the awakened crew. It\'s so vivid that people are starting to sleep through their shifts just to see more of it. Work is stalling.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Administer dream-suppressants to the crew';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Efficiency returns to normal, but the crew is irritable and morale is low. The dream was the only thing keeping some people going.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Incorporate the dream into the ship\'s culture';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'We treat the dream as a vision of our future home. Morale soars, and the creative output of the crew reaches a fever pitch, though the tech bay suffers from the lack of maintenance.';

  @override
  String get event_orbitalShipyard_title => 'The Ancient Shipyard';

  @override
  String get event_orbitalShipyard_narrative =>
      'We\'ve found an automated shipyard orbiting a gas giant. It\'s ancient, but several repair arms are still powered. It seems capable of a single, massive repair operation.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Repair the hull to factory specifications';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'The shipyard\'s drones work with terrifying efficiency. The hull is made whole again, every micro-fracture sealed.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Overhaul the navigation and scanner arrays';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'The arrays are rebuilt with superior materials. Our ability to find and analyze worlds is significantly improved.';

  @override
  String get event_voidWhaleCalf_title => 'The Void Whale\'s Calf';

  @override
  String get event_voidWhaleCalf_narrative =>
      'A juvenile \'Space Whale\' — a creature of energy and stardust — is trailing our ship. It seems to have lost its pod and is trying to feed on our engine\'s ion trail, which is making it sick.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Adjust engine output to mimic whale calls';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'The calf responds! It follows us until we find its pod. The parent whales brush against our hull in thanks, leaving behind a coating of bioluminescent minerals that strengthen our shields.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Gently push it away with a low-power tractor beam';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'The calf is discouraged and eventually drifts away. It\'s safer for the ship, but the crew feels a twinge of guilt.';

  @override
  String get event_subspaceReef_title => 'The Subspace Reef';

  @override
  String get event_subspaceReef_narrative =>
      'We\'ve run into a region of space filled with jagged folds in the subspace fabric. Navigating through it is like sailing a ship through a coral reef. It\'s beautiful, but every wrong move will tear at the hull.';

  @override
  String get event_subspaceReef_choice0_text => 'Move through at minimum speed';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'A slow, agonizing transit. We avoid the worst of it, but the constant course corrections wear on the navigation computer.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Use the scanners to map a path and push through';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'The scanners are pushed to their limit. We make it through quickly, but the sensor arrays are burnt out by the intensity of the subspace ripples.';

  @override
  String get event_alienTrader_title => 'The Wandering Merchant';

  @override
  String get event_alienTrader_narrative =>
      'A vessel of unfamiliar design drifts alongside, broadcasting on all frequencies. It\'s a trader — one of the wandering merchants who ply the spaces between civilizations. They offer repairs and supplies in exchange for resources. Their cargo bay hums with exotic technology.';

  @override
  String get ui_event_enterTrade => 'ENTER TRADE';

  @override
  String get ui_trader_title => 'ALIEN TRADER';

  @override
  String get ui_trader_shipSystems => 'SHIP SYSTEMS';

  @override
  String get ui_trader_payWith => 'PAY WITH';

  @override
  String get ui_trader_leaveTrader => 'LEAVE TRADER';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Generous mood';

  @override
  String get ui_trader_moodFair => 'Fair dealing';

  @override
  String get ui_trader_moodHard => 'Drives a hard bargain';

  @override
  String get ui_trader_probes => 'Probes';

  @override
  String get ui_trader_fuel => 'Fuel';

  @override
  String get ui_trader_energy => 'Energy';

  @override
  String get ui_trader_colonists => 'Colonists';

  @override
  String get ui_trader_culture => 'Culture';

  @override
  String get ui_trader_tech => 'Tech';

  @override
  String get ui_trader_greeting => 'What do you offer, human?';

  @override
  String get ui_codex_title => 'CODEX';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total DISCOVERED';
  }

  @override
  String get ui_codex_surfaceFeatures => 'SURFACE FEATURES';

  @override
  String get ui_codex_moonTypes => 'MOON TYPES';

  @override
  String get ui_codex_ringTypes => 'RING TYPES';

  @override
  String get ui_codex_locked =>
      'Land on a planet with this feature to reveal its effects.';

  @override
  String ui_codex_synergy(String features) {
    return 'Synergy: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TAP TO SKIP';

  @override
  String get ui_common_tapRingToChoose => 'TAP A RING TO CHOOSE';

  @override
  String get ui_common_tapToContinue => 'TAP TO CONTINUE';

  @override
  String get ui_tooltip_back => 'Back';

  @override
  String get ui_tooltip_codex => 'Codex';

  @override
  String get ui_tooltip_settings => 'Settings';

  @override
  String get ui_tooltip_leaderboards => 'Leaderboards';

  @override
  String get ui_tooltip_bugReport => 'Report a bug';

  @override
  String get event_pulsarLighthouse_title => 'Pulsar Lighthouse';

  @override
  String get event_pulsarLighthouse_narrative =>
      'A spinning neutron star sweeps its beam across the void like a cosmic lighthouse. The pulsar\'s rhythmic pulse carries precise timing data that could recalibrate our scanners to extraordinary accuracy — but aligning with the beam means exposing the ship to intense radiation.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Calibrate scanners to the pulse';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'The scanner arrays drink in the pulsar\'s signal, recalibrating to precisions we never imagined possible. But the radiation cost is real — several cryopods in the exposed section take damage, and a handful of colonists don\'t survive the exposure.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Shield and pass at safe distance';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'We give the pulsar a wide berth, burning extra fuel to maintain a safe trajectory. The crew watches the sweeping beam through filtered viewports — beautiful, but distant.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Retreat before the sweep reaches us';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'We swing away at emergency burn before the next beam pass. The pulsar\'s signal fades behind us — no data gained, no harm taken, a little fuel spent on evasive thrust.';

  @override
  String get event_alienNursery_title => 'Alien Nursery';

  @override
  String get event_alienNursery_narrative =>
      'A vast organic structure drifts in the void — a biological nursery incubating alien young. Its life support systems are failing, internal temperatures dropping. The creatures inside are dying. Our bio-scanners could learn enormously from this structure, but intervening means opening our airlocks to unknown pathogens.';

  @override
  String get event_alienNursery_choice0 => 'Help stabilise their life support';

  @override
  String get event_alienNursery_outcome0 =>
      'Our engineers jury-rig a thermal link to the nursery, stabilising the incubation chambers. The bio-scanner data is extraordinary — an entirely new taxonomy of life. But as feared, alien microorganisms find their way aboard. Medical teams contain the outbreak, though not before several colonists fall ill.';

  @override
  String get event_alienNursery_choice1 => 'Leave undisturbed';

  @override
  String get event_alienNursery_outcome1 =>
      'We observe from a respectful distance, documenting what we can through passive scans. The nursery drifts on, its fate uncertain. The crew reflects on the fragility of life — even alien life — and the weight of the choices we carry.';

  @override
  String get event_derelictArmada_title => 'Derelict Armada';

  @override
  String get event_derelictArmada_narrative =>
      'Hundreds of ancient warships hang motionless in the void — the graveyard of a forgotten conflict. Their hulls are scarred by weapons we can\'t identify, but their structural materials and onboard databases could be invaluable. The question is what to prioritise: the physical salvage or the knowledge.';

  @override
  String get event_derelictArmada_choice0 =>
      'Salvage weapons technology and hull plating';

  @override
  String get event_derelictArmada_outcome0 =>
      'Salvage teams cut into the alien warships, extracting exotic alloys and construction techniques centuries ahead of our own. The constructors integrate the new materials eagerly. But one vessel wasn\'t as dead as it looked — a booby trap detonates during extraction, killing a salvage crew.';

  @override
  String get event_derelictArmada_choice1 =>
      'Download their historical archives';

  @override
  String get event_derelictArmada_outcome1 =>
      'We focus on the data cores, carefully extracting centuries of alien history, art, science, and philosophy. The cultural archive alone could keep scholars busy for generations. The technology insights, while less immediately practical, reveal engineering principles that advance our own understanding.';

  @override
  String get event_alienQuarantineZone_title => 'Alien Quarantine Zone';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Warning beacons in a dozen alien languages mark the boundary of a sealed region of space. Whatever is contained within was dangerous enough that multiple civilisations cooperated to isolate it. Our long-range scans detect massive technological signatures inside — and something that might be alive.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Breach the quarantine and investigate';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'We push past the warning buoys into the quarantine zone. Inside, we find a research station of staggering complexity — and the remnants of whatever it was studying. The technology we recover is revolutionary, but the biological contamination is severe. Dozens of colonists sicken before we clear the zone.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Respect the quarantine';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'We study the warning beacons themselves, which contain navigational data and atmospheric readings from the civilisations that placed them. It\'s not the treasure trove inside, but it\'s something — and we didn\'t unleash whatever they locked away.';

  @override
  String get event_hydroponicsBlight_title => 'Hydroponics Blight';

  @override
  String get event_hydroponicsBlight_narrative =>
      'A fast-spreading fungal blight has infected the ship\'s hydroponic bays. Entire crop cycles are wilting before our eyes. The blight hasn\'t reached the seed reserves yet, but it\'s only a matter of hours. We can purge the bays and replant from scratch, or attempt an experimental antifungal treatment that could save the current harvest — or spread the contamination further.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Purge and replant from seed reserves';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'We vent the hydroponic bays to vacuum, killing the blight along with every living plant. Replanting from seed reserves will take weeks, and the cultural programmes that depended on fresh food and garden spaces are suspended. But the infection is contained.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Attempt experimental treatment';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'The experimental antifungal shows promise at first, but a resistant strain breaks through. By the time we resort to a full purge, the blight has spread to the cryopod nutrient lines. The damage is worse than if we\'d acted decisively from the start.';

  @override
  String get event_constitutionalConvention_title =>
      'Constitutional Convention';

  @override
  String get event_constitutionalConvention_narrative =>
      'The colony ship\'s population has grown restless without formal governance. Delegates from every deck gather in the cargo hold to draft a charter that will define how the future colony is ruled. Three factions present competing visions for the new government.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Draft a democratic charter with universal suffrage';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'The colonists ratify a constitution guaranteeing equal representation. Decision-making slows but morale soars as every voice is heard.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Establish a strong executive with emergency powers';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'A single leader is appointed with sweeping authority. Decisions come fast but dissenters whisper of tyranny in the lower decks.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Form a technocratic council of specialists';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Engineers, scientists, and doctors form a ruling council based on expertise. Efficiency improves, though some feel excluded from power.';

  @override
  String get event_militaryCoupThreat_title => 'Military Coup Threat';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Commander Vasquez of the ship\'s security detail has seized the armory and issued an ultimatum: grant emergency military powers or face a lockdown of all decks. The situation is volatile and the colonists look to you for a response.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Resist the coup with loyal crew members';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Loyal crew rally to oppose Vasquez. The standoff ends with minimal bloodshed, but the security detail is weakened and some colonists are caught in the crossfire.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Submit to the commander\'s demands';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez assumes control of ship operations. Order is restored swiftly, but at the cost of civil liberties. Armed patrols now walk every corridor.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Negotiate limited emergency powers with a sunset clause';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'After tense negotiations, Vasquez accepts temporary authority with oversight. A fragile compromise that satisfies no one completely, but prevents violence.';

  @override
  String get event_religiousAwakening_title => 'Religious Awakening';

  @override
  String get event_religiousAwakening_narrative =>
      'A charismatic preacher has drawn hundreds of colonists into a new faith movement. They gather in the observation dome each cycle, their hymns echoing through the ventilation shafts. Some crew members worry about fanaticism; others find genuine comfort in the teachings.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Embrace the faith movement and provide resources';

  @override
  String get event_religiousAwakening_outcome0 =>
      'The movement flourishes with official support. Morale improves among believers, and their communal spirit strengthens social bonds across the ship.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Enforce strict secularism aboard the ship';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Religious gatherings are restricted to private quarters. The movement goes underground, breeding resentment, but scientific rationalism remains the official doctrine.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Allow worship but regulate its influence';

  @override
  String get event_religiousAwakening_outcome2 =>
      'The faith is permitted but kept separate from governance. A chaplain is appointed to liaise with command. An uneasy balance is maintained.';

  @override
  String get event_corporateTakeover_title => 'Corporate Takeover';

  @override
  String get event_corporateTakeover_narrative =>
      'The ship\'s resource managers have been quietly consolidating control over food distribution, water recycling, and power allocation. They now propose formalizing their authority into a corporate structure that would manage the future colony\'s economy.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Allow free market principles to govern resources';

  @override
  String get event_corporateTakeover_outcome0 =>
      'The corporate faction takes over resource management. Efficiency improves dramatically, but prices rise and the poorest colonists struggle to afford basic necessities.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Nationalize all resources under collective ownership';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Resources are seized and placed under communal control. The corporate faction is dismantled, but innovation stalls without profit incentives.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implement regulated markets with safety nets';

  @override
  String get event_corporateTakeover_outcome2 =>
      'A mixed economy is established with price controls and welfare programs. Neither faction is fully satisfied, but basic needs are met while allowing some enterprise.';

  @override
  String get event_successionCrisis_title => 'Succession Crisis';

  @override
  String get event_successionCrisis_narrative =>
      'The ship\'s captain has died in their sleep, leaving no designated successor. Three factions immediately vie for control: the civilian council demands elections, the security chief claims martial authority, and the elder colonists invoke traditional leadership rites.';

  @override
  String get event_successionCrisis_choice0 => 'Hold an emergency election';

  @override
  String get event_successionCrisis_outcome0 =>
      'A chaotic but spirited election produces a new captain chosen by popular vote. The process is messy, but the colonists feel ownership of their leadership.';

  @override
  String get event_successionCrisis_choice1 =>
      'Let the military assume command';

  @override
  String get event_successionCrisis_outcome1 =>
      'The security chief steps into the captain\'s chair. Discipline is restored immediately, but civilian crew eye the armed guards with growing unease.';

  @override
  String get event_successionCrisis_choice2 => 'Convene a council of elders';

  @override
  String get event_successionCrisis_outcome2 =>
      'The eldest and most experienced colonists form a governing council. Their wisdom guides the ship, though some younger crew feel marginalized by the gerontocracy.';

  @override
  String get event_nativeSovereignty_title => 'Native Sovereignty';

  @override
  String get event_nativeSovereignty_narrative =>
      'Long-range scans confirm intelligent life on the target planet. Intercepted communications reveal a sophisticated civilization that has detected your approach. They transmit a formal demand: recognize their territorial sovereignty or face resistance upon arrival.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Recognize native sovereignty and request permission to settle';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'You transmit a formal recognition of native rights. The response is cautious but positive. Future relations will begin on a foundation of mutual respect, though landing sites may be limited.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Assert colonial supremacy and prepare for resistance';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'You broadcast your intention to settle regardless. The crew begins weapons drills and fortification planning. The natives go silent, which is somehow more terrifying than threats.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Propose shared governance of the planet';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'You offer a framework for coexistence and resource sharing. The natives are intrigued but wary. Negotiations will be complex, but the possibility of peace exists.';

  @override
  String get event_laborStrike_title => 'Labor Strike';

  @override
  String get event_laborStrike_narrative =>
      'The engineering crew has walked off the job, demanding shorter shifts, better food rations, and a voice in navigation decisions. Critical systems are running on automated backups, but they won\'t last long. The rest of the colonists watch nervously.';

  @override
  String get event_laborStrike_choice0 => 'Meet the workers\' demands in full';

  @override
  String get event_laborStrike_outcome0 =>
      'The strike ends immediately. Workers return to their posts with improved conditions. Productivity drops slightly as shorter shifts take effect, but loyalty is unshakeable.';

  @override
  String get event_laborStrike_choice1 =>
      'Suppress the strike and enforce mandatory labor';

  @override
  String get event_laborStrike_outcome1 =>
      'Security forces escort the workers back to their stations at gunpoint. The engines hum again, but hatred simmers in the lower decks. Several workers are confined to quarters.';

  @override
  String get event_laborStrike_choice2 =>
      'Offer a partial compromise on key demands';

  @override
  String get event_laborStrike_outcome2 =>
      'After marathon negotiations, a deal is struck: better rations and advisory input, but no reduction in shift length. Neither side is thrilled, but the engines keep running.';

  @override
  String get event_censorshipDebate_title => 'Censorship Debate';

  @override
  String get event_censorshipDebate_narrative =>
      'A leaked document reveals the true condition of the ship\'s failing systems. Panic spreads through the lower decks. The communications officer proposes restricting information access to prevent further unrest. Civil liberties advocates are outraged.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Guarantee free access to all information';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Full transparency is established. The initial panic subsides as colonists rally to help fix the problems they now understand. Trust in leadership grows, though some information causes distress.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implement full information control';

  @override
  String get event_censorshipDebate_outcome1 =>
      'All communications are now filtered through command. The panic stops, replaced by an eerie calm. But rumors fill the void left by censored truth, and they are often worse than reality.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filter only security-sensitive information';

  @override
  String get event_censorshipDebate_outcome2 =>
      'A classification system is established. Most information flows freely, but military and critical system data requires clearance. A workable middle ground that mostly satisfies.';

  @override
  String get event_colonialCharter_title => 'Colonial Charter';

  @override
  String get event_colonialCharter_narrative =>
      'With planetfall approaching, the colonists must draft fundamental laws for their new society. Three philosophical camps have emerged, each championing a different vision for what the colony should become. The debate is heated and deeply personal.';

  @override
  String get event_colonialCharter_choice0 =>
      'A progressive charter emphasizing individual rights';

  @override
  String get event_colonialCharter_outcome0 =>
      'The charter enshrines personal freedoms, equality, and social mobility. Artists and thinkers celebrate; traditionalists warn that unchecked freedom leads to chaos.';

  @override
  String get event_colonialCharter_choice1 =>
      'A conservative charter preserving Earth\'s traditions';

  @override
  String get event_colonialCharter_outcome1 =>
      'The charter codifies traditional values, family structures, and religious observance. Many find comfort in familiar customs; others feel stifled by the weight of old-world thinking.';

  @override
  String get event_colonialCharter_choice2 =>
      'A pragmatic charter focused on survival and growth';

  @override
  String get event_colonialCharter_outcome2 =>
      'The charter prioritizes resource management, technical education, and economic development. It lacks poetry but ensures the colony will be efficient and well-organized.';

  @override
  String get event_separatistMovement_title => 'Separatist Movement';

  @override
  String get event_separatistMovement_narrative =>
      'A faction of colonists has declared independence from ship governance. They\'ve barricaded themselves in the aft section, demanding the right to establish their own settlement upon landing. They control 15% of the ship\'s food reserves and a backup navigation array.';

  @override
  String get event_separatistMovement_choice0 =>
      'Grant regional autonomy within a federal framework';

  @override
  String get event_separatistMovement_outcome0 =>
      'The separatists accept a deal: their own district with local governance, under a loose federal umbrella. The precedent of fragmentation worries some, but peace is maintained.';

  @override
  String get event_separatistMovement_choice1 =>
      'Storm the barricades and force reunification';

  @override
  String get event_separatistMovement_outcome1 =>
      'Security teams breach the aft section. The separatists resist fiercely. Order is restored, but at terrible cost. The ship is united in body, if not in spirit.';

  @override
  String get event_separatistMovement_choice2 =>
      'Address the root grievances driving the movement';

  @override
  String get event_separatistMovement_outcome2 =>
      'Mediators work to understand what pushed the faction away. Reforms in resource distribution and representation slowly bring the separatists back into the fold. Healing takes time.';

  @override
  String get event_warCouncil_title => 'War Council';

  @override
  String get event_warCouncil_narrative =>
      'With potential threats detected in nearby systems, the ship\'s leadership convenes a war council. The question: how much of the colony\'s limited resources should be devoted to military preparedness versus civilian infrastructure?';

  @override
  String get event_warCouncil_choice0 =>
      'Full armament: forge weapons and train soldiers';

  @override
  String get event_warCouncil_outcome0 =>
      'Workshops are retooled for weapons production. Every able-bodied colonist receives combat training. The ship bristles with arms, but the budget for farming equipment shrinks.';

  @override
  String get event_warCouncil_choice1 => 'Disarmament: melt weapons into tools';

  @override
  String get event_warCouncil_outcome1 =>
      'The armory is emptied and its contents recycled into construction materials. The colony will build with plowshares, not swords. Pacifists rejoice; realists worry about what lurks in the dark.';

  @override
  String get event_warCouncil_choice2 =>
      'Defensive posture only: shields and walls, not swords';

  @override
  String get event_warCouncil_outcome2 =>
      'Resources go to fortifications, shields, and early warning systems. No offensive weapons are produced. A balanced approach that keeps options open without provoking potential neighbors.';

  @override
  String get event_tradeFederation_title => 'Trade Federation';

  @override
  String get event_tradeFederation_narrative =>
      'As the colony approaches viability, factions debate how to structure its economy. The question goes beyond mere survival — it will define the kind of society that takes root on alien soil. Merchants, communalists, and bureaucrats all make their case.';

  @override
  String get event_tradeFederation_choice0 =>
      'Establish free trade zones with minimal regulation';

  @override
  String get event_tradeFederation_outcome0 =>
      'Markets spring up in every habitat module. Innovation flourishes as traders compete. Wealth inequality grows, but so does the total pool of resources available to the colony.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implement communal sharing of all resources';

  @override
  String get event_tradeFederation_outcome1 =>
      'Private property is abolished. Everything belongs to everyone. No one goes hungry, but no one has incentive to produce more than the minimum. Mediocrity is comfortable.';

  @override
  String get event_tradeFederation_choice2 =>
      'Create a state-managed trade system';

  @override
  String get event_tradeFederation_outcome2 =>
      'The government controls all trade, setting prices and allocating resources. The system is fair but inflexible. Black markets emerge in the maintenance corridors.';

  @override
  String get event_faithVsScience_title => 'Faith vs. Science';

  @override
  String get event_faithVsScience_narrative =>
      'The ship\'s telescope has captured images of a cosmic phenomenon that directly contradicts the central tenet of the dominant faith movement. The head scientist wants to publish the findings; the religious leader insists they will tear the community apart.';

  @override
  String get event_faithVsScience_choice0 =>
      'Publish the scientific findings in full';

  @override
  String get event_faithVsScience_outcome0 =>
      'Truth prevails over comfort. The data is released and the religious movement fractures. Some believers adapt their faith; others lose it entirely. Knowledge advances.';

  @override
  String get event_faithVsScience_choice1 =>
      'Suppress the findings to preserve social harmony';

  @override
  String get event_faithVsScience_outcome1 =>
      'The data is classified. The religious community remains stable, but the science team is demoralized. Truth deferred is not truth denied, but it feels like it.';

  @override
  String get event_faithVsScience_choice2 =>
      'Convene a joint panel to find harmony between both views';

  @override
  String get event_faithVsScience_outcome2 =>
      'Scientists and theologians work together to reinterpret the findings. A new synthesis emerges that expands both understanding and faith. Not everyone is convinced, but the dialogue is healthy.';

  @override
  String get event_surveillanceState_title => 'Surveillance State';

  @override
  String get event_surveillanceState_narrative =>
      'After a series of sabotage incidents, the security chief proposes installing monitoring systems in every compartment of the ship. Cameras, microphones, and biometric scanners would track every colonist\'s movements. Privacy advocates are horrified.';

  @override
  String get event_surveillanceState_choice0 =>
      'Reject the surveillance proposal entirely';

  @override
  String get event_surveillanceState_outcome0 =>
      'Privacy is preserved. The saboteur remains at large, but the colonists sleep easier knowing they aren\'t watched. Investigation continues through traditional means.';

  @override
  String get event_surveillanceState_choice1 =>
      'Implement full surveillance across the ship';

  @override
  String get event_surveillanceState_outcome1 =>
      'Every corner of the ship is monitored. The saboteur is caught within days. But the cameras remain, and the security chief shows no interest in turning them off. Ever.';

  @override
  String get event_surveillanceState_choice2 =>
      'Install limited monitoring in critical areas only';

  @override
  String get event_surveillanceState_outcome2 =>
      'Cameras cover the engine room, armory, and bridge. Living quarters remain private. The saboteur is eventually identified through pattern analysis. A measured response.';

  @override
  String get event_nativeAlliance_title => 'Native Alliance';

  @override
  String get event_nativeAlliance_narrative =>
      'The native civilization has proposed a formal treaty. Their ambassador arrives via shuttle, an elegant being who speaks through a translator device of astonishing sophistication. They offer three forms of relationship, each with different implications for the colony\'s future.';

  @override
  String get event_nativeAlliance_choice0 => 'Sign an equal alliance treaty';

  @override
  String get event_nativeAlliance_outcome0 =>
      'The treaty establishes mutual defense, shared research, and equal territorial rights. Both civilizations will grow together. The natives share agricultural knowledge that transforms your colony prospects.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Negotiate from a position of colonial dominance';

  @override
  String get event_nativeAlliance_outcome1 =>
      'You leverage your advanced technology to secure favorable terms. The natives cede territory and resources. They sign with trembling hands. History has seen this before, and it rarely ends well.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Establish a trade partnership focused on mutual benefit';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Commerce bridges the gap between species. Native materials flow to your workshops; your technology improves their medicine. Friendship grows from mutual profit.';
}
