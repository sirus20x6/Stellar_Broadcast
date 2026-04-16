// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'BEGIN REIS';

  @override
  String get ui_title_dailyVoyage => 'DAGELIJKSE REIS';

  @override
  String get ui_title_dailyCompleted => 'DAGELIJKS VOLTOOID';

  @override
  String get ui_title_customSeed => 'EIGEN SEED';

  @override
  String get ui_title_legacyHub => 'NALATENSCHAP';

  @override
  String get ui_title_cancel => 'ANNULEREN';

  @override
  String get ui_title_startVoyage => 'START REIS';

  @override
  String get ui_title_seedInvalid =>
      'Ongeldige zaadcode. Gebruik alleen A–Z en 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SEC $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'ZAAD: $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNERS';

  @override
  String get ui_voyage_scanPlanet => 'SCAN PLANEET';

  @override
  String get ui_voyage_noEnergy => 'GEEN ENERGIE';

  @override
  String get ui_voyage_pressOn => 'VERDER';

  @override
  String get ui_voyage_systemHull => 'Romp';

  @override
  String get ui_voyage_systemNav => 'Nav';

  @override
  String get ui_voyage_systemCryopods => 'Cryopoden';

  @override
  String get ui_voyage_systemCulture => 'Cultuur';

  @override
  String get ui_voyage_systemTech => 'Technologie';

  @override
  String get ui_voyage_systemConstruct => 'Constructie';

  @override
  String get ui_voyage_systemShields => 'Schilden';

  @override
  String get ui_voyage_systemLanding => 'Landing';

  @override
  String get ui_voyage_scannerAtmo => 'Atmo Scan';

  @override
  String get ui_voyage_scannerGrav => 'Grav Scan';

  @override
  String get ui_voyage_scannerMineral => 'Mineraal Scan';

  @override
  String get ui_voyage_scannerLife => 'Leven Scan';

  @override
  String get ui_voyage_scannerTemp => 'Temp Scan';

  @override
  String get ui_voyage_scannerWater => 'Water Scan';

  @override
  String get ui_voyage_narrative0 =>
      'Baan om de Aarde vrij. Cryopods stabiel. Archiefring beveiligd.';

  @override
  String get ui_voyage_narrative1 =>
      'Transit door het buitenste stelsel nominaal. Langeafstandsscanners verbreden het zoekgebied.';

  @override
  String get ui_voyage_narrative2 =>
      'Verkeer vanuit de Aarde is onder de detectiedrempel gezakt.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Gearchiveerde coördinaten komen overeen met een gemarkeerd systeem. Koers wordt aangepast.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Scannerarrays kalibreren nog voor diepe-ruimteresolutie.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Gemarkeerd systeem vooruit. Eerdere verkenningsdata blijft consistent.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Zwak signaal vooruit. Planetaire sweep begint.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'FTL-exit voltooid. Nieuw sterrenstelsel in zicht.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Cryopodbanken stabiel. Sectorscan in uitvoering.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Nieuwe planeet verschijnt in het voorwaartse array.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Stellaire cartografie markeert een levensvatbare kandidaat.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instrumenten hebben weer een wereld gevonden die het meten waard is.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Scannerlock verkregen op een nieuw doelwit.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Navigatiekaarten vernieuwd. Kandidaatwereld binnen bereik.';

  @override
  String get ui_scan_landHere => 'HIER LANDEN';

  @override
  String get ui_scan_pressOn => 'VERDER';

  @override
  String get ui_scan_allStatsVerified => 'ALLE WAARDEN GEVERIFIEERD';

  @override
  String get ui_scan_launchProbe => 'LANCEER SONDE';

  @override
  String get ui_scan_habitability => 'BEWOONBAARHEID';

  @override
  String get ui_scan_statAtmos => 'ATMOS';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'WATER';

  @override
  String get ui_scan_statResource => 'GRONDSTOFFEN';

  @override
  String get ui_scan_statGravity => 'ZWAARTEKRACHT';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIE';

  @override
  String get ui_scan_statRadiation => 'STRALING';

  @override
  String ui_scan_probesCount(int count) {
    return 'SONDES: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'ONZEKERHEID: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'PLANEETANALYSE';

  @override
  String get ui_landing_shipStatus => 'SCHIPSTATUS';

  @override
  String ui_landing_fuel(int amount) {
    return 'BRANDSTOF: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'WAARSCHUWING LAGE BRANDSTOF';

  @override
  String get ui_landing_landingRiskCritical => 'LANDINGSRISICO: KRITIEK';

  @override
  String get ui_landing_landingRiskElevated => 'LANDINGSRISICO: VERHOOGD';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Landingssysteem ernstig beschadigd. Atmosferische entry kan lading en kolonisten vernietigen.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Landingssysteem gedegradeerd. Verwacht ruwe atmosferische entry met mogelijke systeemschade.';

  @override
  String get ui_landing_riskAssessment => 'RISICOBEOORDELING';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Uw schip kan nog ~$remaining ontmoetingen doorstaan';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Uw schip overleeft mogelijk geen volgende reis';

  @override
  String get ui_landing_surfaceFeatures => 'OPPERVLAKTEKENMERKEN';

  @override
  String get ui_landing_nameYourColony => 'GEEF UW KOLONIE EEN NAAM';

  @override
  String get ui_landing_establishColony => 'VESTIG KOLONIE';

  @override
  String get ui_landing_pressOnward => 'VERDER VAREN';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfeer';

  @override
  String get ui_landing_statTemperature => 'Temperatuur';

  @override
  String get ui_landing_statWater => 'Water';

  @override
  String get ui_landing_statResources => 'Grondstoffen';

  @override
  String get ui_landing_statGravity => 'Zwaartekracht';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversiteit';

  @override
  String get ui_landing_statAvgHealth => 'Gem. Gezondheid';

  @override
  String get ui_landing_statHull => 'Romp';

  @override
  String get ui_landing_statNavigation => 'Navigatie';

  @override
  String get ui_landing_statCryopods => 'Cryopoden';

  @override
  String get ui_landing_statCulture => 'Cultuur';

  @override
  String get ui_landing_statTech => 'Technologie';

  @override
  String get ui_landing_statConstructors => 'Constructeurs';

  @override
  String get ui_landing_statShields => 'Schilden';

  @override
  String get ui_landing_statLandingSys => 'Landingssys';

  @override
  String get ui_ending_colonyEstablished => 'KOLONIE GEVESTIGD';

  @override
  String get ui_ending_colonyScore => 'KOLONIESCORE';

  @override
  String get ui_ending_colonyProfile => 'KOLONIEPROFIEL';

  @override
  String get ui_ending_landscape => 'LANDSCHAP';

  @override
  String get ui_ending_voyageRecord => 'REISVERSLAG';

  @override
  String get ui_ending_scoreBreakdown => 'SCORE-UITSPLITSING';

  @override
  String get ui_ending_total => 'TOTAAL';

  @override
  String get ui_ending_achievementsUnlocked => 'PRESTATIES ONTGRENDELD';

  @override
  String get ui_ending_challengeFriend => 'DAAG VRIEND UIT';

  @override
  String get ui_ending_shareCard => 'DEEL KAART';

  @override
  String get ui_ending_shareCardDialogTitle => 'Deel uw reis';

  @override
  String get ui_ending_shareCardShare => 'DEEL';

  @override
  String get ui_ending_shareCardCancel => 'ANNULEREN';

  @override
  String get ui_ending_copySeed => 'KOPIEER SEED';

  @override
  String get ui_ending_viewLegacy => 'BEKIJK NALATENSCHAP';

  @override
  String get ui_ending_newVoyage => 'NIEUWE REIS';

  @override
  String get ui_ending_achievementFirstLanding => 'Eerste Landing';

  @override
  String get ui_ending_achievementGoldenAge => 'Gouden Tijdperk';

  @override
  String get ui_ending_achievementSurvivor => 'Overlever';

  @override
  String get ui_ending_achievementExplorer => 'Ontdekker';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfectionist';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'Dodenwereld Overlever';

  @override
  String get ui_ending_achievementFullCrew => 'Volledige Bemanning';

  @override
  String get ui_ending_achievementProbeMaster => 'Sondemeester';

  @override
  String get ui_ending_achievementIronHull => 'IJzeren Romp';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Sprong in het Duister';

  @override
  String get ui_gameOver_missionFailed => 'MISSIE MISLUKT';

  @override
  String get ui_gameOver_voyageRecord => 'REISVERSLAG';

  @override
  String get ui_gameOver_encountersSurvived => 'ONTMOETINGEN OVERLEEFD';

  @override
  String get ui_gameOver_probesRemaining => 'SONDES RESTEREND';

  @override
  String get ui_gameOver_colonistsRemaining => 'KOLONISTEN RESTEREND';

  @override
  String get ui_gameOver_finalShipHealth => 'FINALE SCHIPCONDITIE';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANETEN OVERGESLAGEN';

  @override
  String get ui_gameOver_damageTaken => 'SCHADE OPGELOPEN';

  @override
  String get ui_gameOver_fuelRemaining => 'BRANDSTOF RESTEREND';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGIE RESTEREND';

  @override
  String get ui_gameOver_challengeFriend => 'DAAG VRIEND UIT';

  @override
  String get ui_gameOver_viewLegacy => 'BEKIJK NALATENSCHAP';

  @override
  String get ui_gameOver_newVoyage => 'NIEUWE REIS';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nIk heb het niet overleefd... $reason.\nDenk je dat jij het beter kunt op dezelfde reis?\nstellarbroadcast://play?seed=$seedCode\n\nHeb je de app nog niet?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'De laatste kolonist stierf in cryoslaap — een cascade-storing die geen noodprotocol kon voorkomen. De Exodus voer verder, een spookschip dat enkel geautomatiseerde systemen en bevroren stilte droeg. De missie faalde niet in een moment van catastrofe, maar in de langzame uitputting van mensenlevens, één voor één, totdat er niemand meer over was.';

  @override
  String get ui_gameOver_epilogueHull =>
      'De romp begaf het in stilte — metaalmoeheid verergerd door talloze micro-inslagen totdat het schip niet langer bijeen kon blijven. De atmosfeer bloedde weg in de leegte. Het kolonieschip Exodus brak uiteen, haar wrakstukken voegden zich bij de eeuwenoude puinvelden tussen de sterren. Geen noodsignaal werd ooit ontvangen.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Zonder navigatie dreef de Exodus de onbekende ruimte in — sterrenkaarten nutteloos, koerscorrecties onmogelijk. Het schip zeilde voort door het duister, haar slapende passagiers onwetend dat hun bestemming was vervangen door de eeuwigheid. Sommigen zeggen dat het schip nog steeds drijft, een spookvaartuig in de eindeloze nacht.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Één voor één faalden de cryopods — een cascade die geen noodprotocol kon stoppen. De kolonisten werden nooit meer wakker. De Exodus vervolgde haar geprogrammeerde koers, een grafschip dat enkel stilte droeg naar welke wereld het uiteindelijk zou bereiken. Een monument voor een droom die stierf in bevroren slaap.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'De Exodus viel stil. Haar missie, haar bemanning, haar lading van menselijke hoop — alles verloren aan de onverschillige onmetelijkheid tussen de sterren. Misschien zal ooit een andere beschaving het wrak vinden en zich afvragen welk moedig volk het waagde de leegte te doorkruisen.';

  @override
  String get ui_settings_title => 'INSTELLINGEN';

  @override
  String get ui_settings_music => 'MUZIEK';

  @override
  String get ui_settings_soundEffects => 'GELUIDSEFFECTEN';

  @override
  String get ui_settings_haptics => 'HAPTIEK';

  @override
  String get ui_settings_premium => 'PREMIE';

  @override
  String get ui_settings_goPremium => 'Ga Premium';

  @override
  String get ui_settings_enabled => 'Ingeschakeld';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Taal';

  @override
  String get ui_settings_systemDefault => 'Systeemstandaard';

  @override
  String get ui_settings_statsPosition => 'Statistieken en knoppenpositie';

  @override
  String get ui_settings_statsLeft => 'LINKS';

  @override
  String get ui_settings_statsRight => 'RECHTS';

  @override
  String get ui_legacy_title => 'NALATENSCHAP';

  @override
  String get ui_legacy_commanderStats => 'COMMANDANTSTATS';

  @override
  String get ui_legacy_highScores => 'HOOGSTE SCORES';

  @override
  String get ui_legacy_upgrades => 'UPGRADES';

  @override
  String get ui_legacy_achievements => 'PRESTATIES';

  @override
  String get ui_legacy_voyageLog => 'REISLOGBOEK';

  @override
  String get ui_legacy_voyages => 'REIZEN';

  @override
  String get ui_legacy_bestScore => 'BESTE SCORE';

  @override
  String get ui_legacy_legacyPts => 'NALATENSCHAP PNT';

  @override
  String get ui_legacy_completed => 'VOLTOOID';

  @override
  String get ui_legacy_notYetPlayed => 'NOG NIET GESPEELD';

  @override
  String get ui_legacy_dailyHistory => 'DAGELIJKSE GESCHIEDENIS';

  @override
  String get ui_premium_goPremium => 'GA PREMIUM';

  @override
  String get ui_premium_subtitle => 'Steun de missie. Upgrade je commando.';

  @override
  String get ui_premium_removeAds => 'Verwijder alle advertenties voor altijd';

  @override
  String get ui_premium_supportIndie => 'Steun onafhankelijke ontwikkeling';

  @override
  String get ui_premium_exclusiveTitle => 'Exclusieve commandanttitel';

  @override
  String get ui_premium_priorityFeatures => 'Prioriteit bij functieverzoeken';

  @override
  String get ui_premium_lifetime => 'Levenslang';

  @override
  String get ui_scannerUpgrade_title => 'SCANNER-UPGRADE';

  @override
  String get ui_scannerUpgrade_subtitle => 'Kies een scanner om te upgraden';

  @override
  String get ui_scannerUpgrade_skip => 'OVERSLAAN';

  @override
  String get ui_scannerUpgrade_max => 'MAX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosferisch';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrisch';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineraal';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Levenstekens';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperatuur';

  @override
  String get ui_scannerUpgrade_water => 'Water';

  @override
  String get ui_event_continue => 'DOORGAAN';

  @override
  String get ui_event_tapToSkip => 'TIK OM OVER TE SLAAN';

  @override
  String get ui_event_colonists => 'KOLONISTEN';

  @override
  String get ui_event_landing => 'LANDING';

  @override
  String get ui_event_atmScan => 'ATM-SCAN';

  @override
  String get ui_event_gravScan => 'GRAV-SCAN';

  @override
  String get ui_event_minScan => 'MIN-SCAN';

  @override
  String get ui_event_lifeScan => 'LEVEN SCAN';

  @override
  String get ui_event_tempScan => 'TEMP.SCAN';

  @override
  String get ui_event_h2oScan => 'H2O-SCAN';

  @override
  String get onboarding_page0_title => 'De Laatste Hoop van de Mensheid';

  @override
  String get onboarding_page0_description =>
      'De Aarde sterft. De regeringen van de wereld hebben hun laatste reserves gebundeld om één laatste vaartuig te bouwen — een kolonieschip dat de overblijfselen van de mensheid de sterren in draagt.';

  @override
  String get onboarding_page1_title => 'Zoek een Nieuw Thuis';

  @override
  String get onboarding_page1_description =>
      'Navigeer door de onbekende leegte tussen de sterren. Scan buitenaardse werelden, trotseer kosmische gevaren en maak onmogelijke keuzes.';

  @override
  String get onboarding_page2_title => 'Jouw Nalatenschap Duurt Voort';

  @override
  String get onboarding_page2_description =>
      'Elke reis leert de mensheid iets nieuws. Verdien Nalatenschapspunten om permanente upgrades vrij te spelen en graveer je naam in de sterren.';

  @override
  String get onboarding_page3_title => 'Jouw Privacy, Jouw Keuze';

  @override
  String get onboarding_page3_description =>
      'Kies hoe je Stellar Broadcast wilt ervaren.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Paradijs';

  @override
  String get planet_tierHabitable => 'Bewoonbaar';

  @override
  String get planet_tierHarsh => 'Guur';

  @override
  String get planet_tierHostile => 'Vijandig';

  @override
  String get planet_tierDeathWorld => 'Dodenwereld';

  @override
  String get planet_featurePlantLife => 'Plantaardig Leven';

  @override
  String get planet_featureEdiblePlants => 'Eetbare Planten';

  @override
  String get planet_featurePoisonousPlants => 'Giftige Planten';

  @override
  String get planet_featureUnicellularLife => 'Eencellig Leven';

  @override
  String get planet_featureDangerousFauna => 'Gevaarlijke Fauna';

  @override
  String get planet_featureTameableFauna => 'Tembare Fauna';

  @override
  String get planet_featureAirtightCaves => 'Luchtdichte Grotten';

  @override
  String get planet_featureInsulatedCaves => 'Geïsoleerde Grotten';

  @override
  String get planet_featureBarrenMoon => 'Kale Maan';

  @override
  String get planet_featureMetalRichMoon => 'Metaalrijke Maan';

  @override
  String get planet_featureUnstableMoon => 'Instabiele Maan';

  @override
  String get planet_featureOutstandingBeauty => 'Uitzonderlijke Schoonheid';

  @override
  String get planet_featureOutstandingUgliness => 'Uitzonderlijke Lelijkheid';

  @override
  String get planet_featureAncientRuins => 'Oude Ruïnes';

  @override
  String get planet_featureMonuments => 'Monumenten';

  @override
  String get planet_featureRapidRotation => 'Snelle Rotatie';

  @override
  String get planet_featureSlowRotation => 'Trage Rotatie';

  @override
  String get planet_featureVolcanicActivity => 'Vulkanische Activiteit';

  @override
  String get planet_featureTectonicInstability => 'Tektonische Instabiliteit';

  @override
  String get planet_featureElectricalStorms => 'Elektrische Stormen';

  @override
  String get planet_featureToxicSpores => 'Giftige Sporen';

  @override
  String get planet_featureDeepOceans => 'Diepe Oceanen';

  @override
  String get planet_featureGeothermalVents => 'Geothermische Bronnen';

  @override
  String get planet_featureStrongMagnetosphere => 'Sterke Magnetosfeer';

  @override
  String get planet_featureWeakMagnetosphere => 'Zwakke Magnetosfeer';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Symbiotische Organismen';

  @override
  String get planet_featureGravityWells => 'Zwaartekrachtputten';

  @override
  String get planet_featureSubspaceEchoes => 'Subruimte-echo\'s';

  @override
  String get planet_featureBioluminescentLife => 'Bioluminescent leven';

  @override
  String get planet_featureAquaticMegafauna => 'Aquatische megafauna';

  @override
  String get planet_featureFloatingIslands => 'Zwevende eilanden';

  @override
  String get planet_featureCrystalCaverns => 'Kristalgrotten';

  @override
  String get planet_featureLavaTubes => 'Lavabuizen';

  @override
  String get planet_featureIceTunnels => 'IJstunnels';

  @override
  String get planet_featureOrbitalWreckage => 'Orbitaal wrakgoed';

  @override
  String get planet_featureMegastructuralFragments =>
      'Megastructuur-fragmenten';

  @override
  String get planet_featureAncientObservatory => 'Oud observatorium';

  @override
  String get planet_featureExtremeSeasons => 'Extreme seizoenen';

  @override
  String get planet_featureCryovolcanism => 'Cryovulkanisme';

  @override
  String get planet_featureFloatingKelpForests => 'Zwevende kelpwouden';

  @override
  String get planet_featureSingingCrystals => 'Zingende kristallen';

  @override
  String get planet_featureFertileSoil => 'Vruchtbare grond';

  @override
  String get planet_featureHelium3Deposits => 'Helium-3-afzettingen';

  @override
  String get planet_featureExoticIsotopes => 'Exotische isotopen';

  @override
  String get planet_featureMedicinalFlora => 'Medicinale flora';

  @override
  String get planet_featurePerpetualAurora => 'Eeuwige Aurora';

  @override
  String get planet_featurePetrifiedMegaflora => 'Versteende Megaflora';

  @override
  String get planet_featureUndergroundRivers => 'Ondergrondse rivieren';

  @override
  String get planet_featureObsidianPlains => 'Obsidiaan vlakten';

  @override
  String get planet_featureSaltFlats => 'Zoutvlakten';

  @override
  String get planet_featureCarnivorousFlora => 'Vleesetende flora';

  @override
  String get planet_featureGhostCities => 'Spooksteden';

  @override
  String get planet_featureArchiveVaults => 'Archiveer kluizen';

  @override
  String get planet_featureSinkholeFields => 'Zinkgatvelden';

  @override
  String get planet_featureApexPredator => 'Apex-roofdier';

  @override
  String get ui_monthJan => 'JANUARI';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MRT';

  @override
  String get ui_monthApr => 'APRIL';

  @override
  String get ui_monthMay => 'MEI';

  @override
  String get ui_monthJun => 'JUNI';

  @override
  String get ui_monthJul => 'JULI';

  @override
  String get ui_monthAug => 'AUG';

  @override
  String get ui_monthSep => 'SEPT';

  @override
  String get ui_monthOct => 'OKT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DEC';

  @override
  String get event_asteroidField_title => 'Asteroïdenveld';

  @override
  String get event_asteroidField_narrative =>
      'Langeafstandsscanners detecteren een dicht asteroïdenveld recht in ons vliegpad. Navigatie berekent twee opties: een riskante sprint door de smalste corridor, of een lange omweg die onze brandstofvoorraden zal belasten en het navigatiearray onder druk zet.';

  @override
  String get event_asteroidField_choice0_text =>
      'Door de corridor heen stampen';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Het schip schudt terwijl micro-inslagen de romp bestoken. We komen erdoor, maar niet ongeschonden.';

  @override
  String get event_asteroidField_choice1_text => 'De lange weg nemen';

  @override
  String get event_asteroidField_choice1_outcome =>
      'De omweg verbrandt kostbare brandstof en slijt de navigatiecomputer, maar de romp blijft intact.';

  @override
  String get event_asteroidField_choice2_text =>
      'Mijnbouwdrones inzetten om een pad vrij te maken';

  @override
  String get event_asteroidField_choice2_outcome =>
      'De drones kerven een veilig kanaal en verzamelen nuttige mineralen, maar de operatie put de techruimte uit.';

  @override
  String get event_asteroidField_choice3_text =>
      'Een sonde als lokaas inzetten';

  @override
  String get event_asteroidField_choice3_outcome =>
      'De sonde trekt de dichtste clusters weg van het schip. We glippen erdoorheen met slechts lichte schrammen.';

  @override
  String get event_solarFlare_title => 'Inkomende Zonnevlam';

  @override
  String get event_solarFlare_narrative =>
      'Een nabije ster barst uit met een massale coronale uitstoting. De golf geladen deeltjes bereikt ons binnen enkele minuten. We kunnen energie naar de schilden omleiden, kolonisten in de kern beschutten, of het uitzitten.';

  @override
  String get event_solarFlare_choice0_text =>
      'Alle energie naar schilden omleiden';

  @override
  String get event_solarFlare_choice0_outcome =>
      'De schilden houden stand, maar de stroomstoot brandt secundaire systemen door.';

  @override
  String get event_solarFlare_choice1_text =>
      'Kolonisten naar de afgeschermde kern verplaatsen';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Kolonisten overleven ongedeerd, maar de buitenste dekken lopen stralingsschade op.';

  @override
  String get event_solarFlare_choice2_text =>
      'Uitzitten — iedereen schrap zetten';

  @override
  String get event_solarFlare_choice2_outcome =>
      'De vlam slaat hard toe. Systemen flikkeren, maar niets catastrofaals. Het moreel krijgt echter een klap.';

  @override
  String get event_solarFlare_choice3_text =>
      'Een sonde lanceren om het golffront te meten';

  @override
  String get event_solarFlare_choice3_outcome =>
      'De sonde zendt precieze golffrontdata uit, waardoor we het schip optimaal kunnen positioneren. Scannerschade is minimaal.';

  @override
  String get event_nebulaPassage_title => 'Nevelpassage';

  @override
  String get event_nebulaPassage_narrative =>
      'Een gloeiende nevel strekt zich uit over ons pad. Erdoorheen varen zou onze energiecellen kunnen opladen, maar kan scannerarrays verstoren. Eromheen gaan is veilig maar traag.';

  @override
  String get event_nebulaPassage_choice0_text => 'Door de nevel vliegen';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'De geïoniseerde gassen van de nevel laden stroomcellen op maar ontregelen onze scannerkalibratie.';

  @override
  String get event_nebulaPassage_choice1_text => 'Langs de rand scheren';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'We winnen een gedeeltelijke lading met minimale verstoring. Een veilig compromis.';

  @override
  String get event_microMeteorite_title => 'Micro-meteorietstorm';

  @override
  String get event_microMeteorite_narrative =>
      'Een zwerm micro-meteorieten, onzichtbaar tot seconden geleden, verscheurt de voorste rompbeplating. Schadebeheersing-teams scrammen.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Noodrotatie — de gepantserde achtersteven tonen';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'De manoeuvre werkt. De achterpantsering absorbeert het ergste, maar de navigatiegyro\'s protesteren hevig.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Reparatiedrones inzetten midden in de storm';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drones lappen de romp in real time, maar meerdere gaan verloren. Techreserves zijn uitgeput.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Een sonde tot ontploffing brengen om de zwerm te verstrooien';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'De explosie van de sonde verspreidt de micro-meteorietcluster. Slechts enkele fragmenten bereiken de romp.';

  @override
  String get event_gravityWell_title => 'Onbekende Zwaartekrachtput';

  @override
  String get event_gravityWell_narrative =>
      'Het schip schokt wanneer een onzichtbare zwaartekrachtput ons van koers trekt. Motoren zwoegen tegen de aantrekkingskracht. We kunnen vol gas branden om te ontsnappen, of een slingerschot maken voor een snelheidsboost ten koste van structurele stress.';

  @override
  String get event_gravityWell_choice0_text => 'Volle kracht — losbreken';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Motoren brullen en de romp kreunt, maar we trekken ons schoon los.';

  @override
  String get event_gravityWell_choice1_text => 'Slingerschot-manoeuvre';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Het slingerschot werkt prachtig. We winnen snelheid, maar de G-krachten belasten de cryopodafdichtingen.';

  @override
  String get event_crewUnrest_title => 'Onrust onder de Bemanning';

  @override
  String get event_crewUnrest_narrative =>
      'Een factie van ontwaakte kolonisten verzoekt de Steward-raad om permanent uit cryoslaap ontslagen te worden. Ze betogen dat leven in bevroren schemering onmenselijk is. Cryo-afdelingspersoneel waarschuwt dat meer monden wakker maken het verbranden van voorraden betekent.';

  @override
  String get event_crewUnrest_choice0_text => 'Vrijwillig ontdooien toestaan';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Het moreel stijgt als families herenigd worden in de wakkere wereld, maar het grondstoffenverbruik schiet omhoog.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Het verzoek afwijzen — veiligheid eerst';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'De kolonisten gehoorzamen, maar wrok broeit in de gangen.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromis — roterende ontdooicycli';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Een evenwichtige oplossing. Iedereen krijgt wat wakkere tijd, maar het cyclisch gebruik van cryopods veroorzaakt slijtage.';

  @override
  String get event_stowaway_title => 'Verstekeling Ontdekt';

  @override
  String get event_stowaway_narrative =>
      'Auditors van het Manifestbureau vinden een ongeregistreerd persoon verborgen in vrachtruim 7. Ze beweert geneticus te zijn die een plaats op de lanceringlijst werd ontzegd. Haar vaardigheden zouden van onschatbare waarde kunnen zijn — of ze zou een saboteur kunnen zijn.';

  @override
  String get event_stowaway_choice0_text =>
      'Verwelkom haar aan boord — we hebben elke geest nodig';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez blijkt briljant. Haar genetische expertise verbetert de cryopod-efficiëntie, hoewel sommige bemanningsleden haar wantrouwen.';

  @override
  String get event_stowaway_choice1_text =>
      'Opsluiten — vertrouwen moet verdiend worden';

  @override
  String get event_stowaway_choice1_outcome =>
      'Ze werkt mee vanuit haar opsluiting en verdient uiteindelijk beperkte toegang. De bemanning voelt zich veiliger.';

  @override
  String get event_stowaway_choice2_text =>
      'Terugplaatsen in cryo tot de landing';

  @override
  String get event_stowaway_choice2_outcome =>
      'Een pragmatische oplossing. Haar vaardigheden worden bewaard voor later, maar het ethische debat verdeelt de bemanning.';

  @override
  String get event_mutinyBrewing_title => 'Muiterij Brouwt';

  @override
  String get event_mutinyBrewing_narrative =>
      'Brugwacht onderschept berichten van een groep officieren die van plan zijn het commando over te nemen en koers te wijzigen naar een dichterbij gelegen, minder gastvrij systeem. Ze geloven dat de huidige koers een doodvonnis is.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Hen openlijk confronteren — transparantie boven alles';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'De confrontatie is gespannen maar de muiters staan af wanneer hen de navigatiedata wordt getoond. Het vertrouwen is geschokt.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'De leiders stilletjes overplaatsen';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Het complot lost op zonder publiek drama. Sommige bemanningsleden vragen zich af waarom populaire officieren werden verplaatst, maar de orde houdt stand.';

  @override
  String get event_culturalSchism_title => 'Cultureel Schisma';

  @override
  String get event_culturalSchism_narrative =>
      'Twee culturele groepen aan boord zijn het heftig oneens over hoe de nieuwe kolonie bestuurd moet worden. De ene eist directe democratie; de andere staat op een technocratische raad. De spanningen lopen hoog op.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Een bindend referendum houden';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Democratie overwint — ternauwernood. De verliezende partij accepteert morrend het resultaat, maar de eenheid is fragiel.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Een hybride systeem opleggen — geen van beide volledig tevreden';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Beide kanten voelen zich gehoord maar niet zegevierend. Een wankel evenwicht houdt stand.';

  @override
  String get event_culturalSchism_choice2_text =>
      'De beslissing uitstellen — nu op overleven focussen';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Het vooruitschuiven vermijdt vandaag conflict, maar slaat het op voor morgen.';

  @override
  String get event_birthInSpace_title => 'Eerste Geboorte in de Diepe Ruimte';

  @override
  String get event_birthInSpace_narrative =>
      'Tegen alle protocollen in wordt een kind geboren aan boord — het eerste mens geboren tussen de sterren. Het is een krachtig symbool, maar het roept vragen op over grondstoffenverdeling en de ethiek van nieuw leven brengen in een onzekere toekomst.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Vieren — dit is hoe hoop eruitziet';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'De naamgevingsceremonie licht elk hart op het schip op. Voor één nacht voelen de sterren minder koud. De festiviteiten verstoren kort de cryopod-bewakingsrotaties.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Stil erkennen — grondstoffen zijn schaars';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Een gematigd antwoord. Het kind wordt verwelkomd, maar de stemming wordt getemperd door pragmatisme.';

  @override
  String get event_derelictShip_title => 'Verlaten Kolonieschip';

  @override
  String get event_derelictShip_narrative =>
      'Scanners detecteren een verlaten vaartuig dat drijft in de leegte — een ander kolonieschip, jaren voor het onze gelanceerd. Het is donker en stil. Er kan bergingsmateriaal zijn, overlevenden, of erger.';

  @override
  String get event_derelictShip_choice0_text => 'Aan boord gaan en bergen';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Het enteringsteam bergt rompbeplating en intacte techmodules. Geen overlevenden. De logboeken vertellen een grimmig verhaal.';

  @override
  String get event_derelictShip_choice1_text =>
      'Scannen op afstand — geen risico nemen';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Scans op afstand leveren nuttige navigatiedata op maar geen fysieke berging. De bemanning slaapt rustiger.';

  @override
  String get event_derelictShip_choice2_text =>
      'Een herdenkingsuitzending zenden en doorvaren';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Een moment van stilte voor de verlorenen. De bemanning is ontnuchterd maar verenigd in doel.';

  @override
  String get event_alienProbe_title => 'Buitenaardse Sonde';

  @override
  String get event_alienProbe_narrative =>
      'Een klein, duidelijk kunstmatig object matcht onze snelheid en begint het schip te scannen met onbekende energie. Het reageert niet op oproepen. Het oppervlak is bedekt met symbolen die verschuiven als vloeistof.';

  @override
  String get event_alienProbe_choice0_text => 'Vangen voor onderzoek';

  @override
  String get event_alienProbe_choice0_outcome =>
      'De sonde is veiliggesteld in het lab. De technologie is tientallen jaren vooruit op de onze — het techteam is euforisch.';

  @override
  String get event_alienProbe_choice1_text =>
      'De scans spiegelen — data uitwisselen';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Een vreemde dialoog van licht en wiskunde. Onze sterrenkaarten bevatten plotseling routes die we nooit geprogrammeerd hebben.';

  @override
  String get event_alienProbe_choice2_text =>
      'Vernietigen — we kunnen geen buitenaardse tracking riskeren';

  @override
  String get event_alienProbe_choice2_outcome =>
      'De sonde spat geruisloos uiteen. Was dit het eerste contact? De bemanning zal het nooit weten.';

  @override
  String get event_ancientBeacon_title => 'Oud Baken';

  @override
  String get event_ancientBeacon_narrative =>
      'Diep in de leegte pulseert een baken met een signaal ouder dan de menselijke beschaving. De frequentie draagt wat een sterrenkaart lijkt te zijn die wijst naar een systeem dat niet in onze database staat.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'De kaart volgen — het geluk is met de dapperen';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'De nieuwe koers voert ons naar onbekende ruimte. Scanners detecteren iets buitengewoons vooruit.';

  @override
  String get event_ancientBeacon_choice1_text =>
      'Registreren en op koers blijven';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'De data wordt gearchiveerd voor toekomstige generaties. De bemanning respecteert de voorzichtige aanpak.';

  @override
  String get event_frozenGarden_title => 'Bevroren Tuin';

  @override
  String get event_frozenGarden_narrative =>
      'Een asteroïde bevat een bevroren ecosysteem — buitenaardse planten bewaard in kristallijn ijs gedurende millennia. Ze zouden elke wereld die we koloniseren kunnen verrijken, maar ontdooien riskeert besmetting.';

  @override
  String get event_frozenGarden_choice0_text =>
      'De specimens zorgvuldig oogsten';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botanisten bewaren tientallen buitenaardse soorten. Het biodiversiteitspotentieel van onze doelwereld stijgt enorm.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Alleen monsters nemen — minimaal risico';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Een conservatieve aanpak levert nuttige data op zonder besmettingsrisico.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Laten liggen — buitenaardse biologie is te gevaarlijk';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'De bemanning kijkt toe hoe de bevroren tuin krimpt in de achtersensoren. Sommigen voelen dat ze een schat achterlieten.';

  @override
  String get event_dataCache_title => 'Voorloper Data-opslag';

  @override
  String get event_dataCache_narrative =>
      'Ingebed in een zwervende planetoïde vinden we een data-opslag van duidelijk kunstmatige oorsprong. De informatie is enorm maar versleuteld in een buitenaards wiskundig raamwerk.';

  @override
  String get event_dataCache_choice0_text =>
      'Computerbronnen toewijzen aan ontsleuteling';

  @override
  String get event_dataCache_choice0_outcome =>
      'Na dagen van verwerking levert de opslag geavanceerde terraforming-algoritmen op. Het techteam staat in ontzag.';

  @override
  String get event_dataCache_choice1_text =>
      'De ruwe data kopiëren en doorvaren';

  @override
  String get event_dataCache_choice1_outcome =>
      'De versleutelde data wordt opgeslagen voor toekomstige analyse. Misschien kraakt de kolonie het ooit.';

  @override
  String get event_hullBreach_title => 'Rompbreuk — Dek 7';

  @override
  String get event_hullBreach_narrative =>
      'Een structurele storing scheurt Dek 7 open. Atmosfeer lekt de ruimte in. Noodschotten houden stand, maar drie bemanningsleden zitten vast aan de verkeerde kant.';

  @override
  String get event_hullBreach_choice0_text =>
      'Een reddingsteam sturen vóór afsluiting';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Het team haalt iedereen er net op tijd uit. De redding is heroïsch, maar de langdurige breuk verzwakt de romp verder.';

  @override
  String get event_hullBreach_choice1_text =>
      'De schotten onmiddellijk sluiten';

  @override
  String get event_hullBreach_choice1_outcome =>
      'De breuk is ingedamd. De drie bemanningsleden vinden een alternatieve route, geschokt maar levend. Rompschade is geminimaliseerd.';

  @override
  String get event_hullBreach_choice2_text =>
      'Materialen van een sonde gebruiken om de breuk te dichten';

  @override
  String get event_hullBreach_choice2_outcome =>
      'De titanium schil van de sonde wordt herbestemd als nood-romppleister. De breuk wordt snel gedicht met minimaal verlies.';

  @override
  String get event_navMalfunction_title => 'Navigatiestoring';

  @override
  String get event_navMalfunction_narrative =>
      'De primaire navigatiecomputer geeft tegenstrijdige koersen uit. We drijven van koers af. Het back-upsysteem is functioneel maar minder precies.';

  @override
  String get event_navMalfunction_choice0_text =>
      'De primaire herstarten — de downtime accepteren';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Een gespannen uur van dood rekenen terwijl het systeem herstart. Navigatie is hersteld op 90% efficiëntie.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Permanent overschakelen naar back-up';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Het back-upsysteem is betrouwbaar maar onnauwkeurig. We vinden onze weg, alleen niet zo elegant.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Handmatige sterrenfix met de oude kaarten';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'De navigator plot met de hand via stellaire parallax. Het werkt, en de bemanning krijgt vertrouwen in analoge methoden.';

  @override
  String get event_cryopodFailure_title => 'Cryopod Cascade-storing';

  @override
  String get event_cryopodFailure_narrative =>
      'Een koelsysteemfout triggert een cascade in cryopodruimte 3. Ongecontroleerd zullen 200 kolonisten een noodontdooiing ondergaan — een proces dat overleefbaar is maar traumatisch en grondstof-intensief.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Noodkoelmiddelspoeling — red de pods';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Technici overspoelen de ruimte met reservekoelmiddel. De pods stabiliseren, maar koelmiddelreserves zijn kritiek laag. Vijf kolonisten in de meest beschadigde pods konden niet worden gered.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Gecontroleerd ontdooien — veilig wakker maken';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 kolonisten komen geschokt maar levend tevoorschijn. Meer monden om te voeden, maar meer handen om te werken. De lege pods worden afgesloten.';

  @override
  String get event_scannerBurnout_title => 'Scanner Array Doorgebrand';

  @override
  String get event_scannerBurnout_narrative =>
      'Het primaire scannerarray raakt overbelast tijdens een routine diepe-ruimtesweep. Zonder het vliegen we halfblind. Reparaties vereisen zeldzame componenten.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Techruimte kannibaliseren voor onderdelen';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Scanners zijn hersteld naar bijna volledige capaciteit, maar de techruimte is ontmanteld.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Een noodoplossing improviseren';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Scanners werken op verminderd bereik. Niet ideaal, maar het behoudt onze techreserves.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Het sensorarray van een sonde herbestemmen';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'De hogeprecisiesensoren van de sonde worden getransplanteerd in het scannerarray. Een bijna perfecte reparatie.';

  @override
  String get event_powerFluctuation_title => 'Reactor Stroomfluctuatie';

  @override
  String get event_powerFluctuation_narrative =>
      'De output van de hoofdreactor oscilleert wild. Engineering waarschuwt voor een mogelijke meltdown als de fluctuaties niet worden gedempt. De oplossing vereist het uitschakelen van niet-essentiële systemen — maar welke?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Culturele systemen uitschakelen — overleven eerst';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Bibliotheken, tuinen en recreatieruimtes gaan donker. De reactor stabiliseert, maar het schip voelt als een gevangenis.';

  @override
  String get event_powerFluctuation_choice1_text => 'Scannervermogen verlagen';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Scanners zakken naar minimum. De reactor kalmeert. We kunnen niet zo ver vooruit kijken, maar we leven.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Een hete reparatie riskeren — niets uitschakelen';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Ingenieurs voeren een zenuwslopende reparatie uit met de reactor actief. Het lukt — maar ternauwernood. De romp trilt uren daarna nog.';

  @override
  String get event_alienSignal_title => 'Buitenaardse Transmissie';

  @override
  String get event_alienSignal_narrative =>
      'Een herhalend signaal op een frequentie die we nooit eerder zijn tegengekomen. Taalkundige analyse suggereert dat het een begroeting is — of een waarschuwing. De bron is een klein vaartuig dat onze snelheid op afstand matcht.';

  @override
  String get event_alienSignal_choice0_text =>
      'Reageren met onze eigen begroeting';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Een fragiele dialoog begint. De buitenaardsen delen navigatiedata voordat ze wegdraaien het duister in.';

  @override
  String get event_alienSignal_choice1_text => 'Luisteren maar niet reageren';

  @override
  String get event_alienSignal_choice1_outcome =>
      'We leren van hun uitzending zonder onszelf te onthullen. De taalkundigen extraheren bruikbare sterrenkaartfragmenten.';

  @override
  String get event_alienSignal_choice2_text =>
      'Donker gaan — alle emissies uitschakelen';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Het buitenaardse vaartuig passeert zonder incident. We zullen nooit weten of het vriend of vijand was.';

  @override
  String get event_livingNebula_title => 'De Levende Nevel';

  @override
  String get event_livingNebula_narrative =>
      'Wat we aanzagen voor een nevel is in werkelijkheid een reusachtig organisme — een in de ruimte levend wezen van onbegrijpelijke schaal. Het lijkt nieuwsgierig naar ons en strekt tentakels van lichtgevend gas uit naar het schip.';

  @override
  String get event_livingNebula_choice0_text =>
      'Contact toestaan — sensoren uitstrekken';

  @override
  String get event_livingNebula_choice0_outcome =>
      'De aanraking van het wezen overspoelt onze systemen met buitenaardse data. Scanners zullen nooit meer hetzelfde zijn — ze zijn beter.';

  @override
  String get event_livingNebula_choice1_text =>
      'Langzaam terugtrekken — het niet provoceren';

  @override
  String get event_livingNebula_choice1_outcome =>
      'We glippen weg terwijl het wezen zijn interesse verliest. De bemanning is met ontzag vervuld en nederig.';

  @override
  String get event_alienRuins_title => 'Orbitale Ruïnes';

  @override
  String get event_alienRuins_narrative =>
      'Een verbrijzelde megastructuur draait om een dode ster — de ruïnes van een beschaving die bouwde op een schaal die wij nauwelijks kunnen bevatten. Delen van de structuur hebben nog stroom.';

  @override
  String get event_alienRuins_choice0_text => 'De delen met stroom verkennen';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Teams bergen intacte technologie die onze mogelijkheden tientallen jaren vooruithelpt. De kosten: twee ingenieurs gewond door geautomatiseerde verdediging.';

  @override
  String get event_alienRuins_choice1_text => 'Alleen vanuit een baan scannen';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Gedetailleerde scans onthullen constructietechnieken die onze romponderhoudsprotocollen verbeteren.';

  @override
  String get event_alienRuins_choice2_text =>
      'Ongemoeid laten — respect voor de doden';

  @override
  String get event_alienRuins_choice2_outcome =>
      'De bemanning houdt een moment van stilte voor een gevallen beschaving. De ervaring versterkt onze vastberadenheid.';

  @override
  String get event_symbioticSpores_title => 'Symbiotische Sporen';

  @override
  String get event_symbioticSpores_narrative =>
      'Een wolk van bioluminescente sporen drijft door de ruimte en hecht zich aan de romp. Ze lijken zich te voeden met onze afvalwarmte. Biologen merken op dat ze feitelijk microbreuken aan het repareren zijn.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Laten blijven — gratis rompreparatie';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'De sporen dichten honderden microbreuken. Rompintegriteit verbetert, hoewel sommige bemanningsleden ongemakkelijk zijn met buitenaardse lifters.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Monsters nemen, dan de romp steriliseren';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biologen krijgen waardevolle specimens. De rompreiniging verbruikt chemische reserves.';

  @override
  String get event_whaleSong_title => 'Het Gezang in de Leegte';

  @override
  String get event_whaleSong_narrative =>
      'Diepe-ruimte-hydrofoons (gebruikt voor rompspanningsmonitoring) vangen iets onmogelijks op: een ritmisch, melodisch patroon dat zich voortplant door het interstellaire medium. Het klinkt als gezang.';

  @override
  String get event_whaleSong_choice0_text =>
      'Het door het hele schip uitzenden — deel het wonder';

  @override
  String get event_whaleSong_choice0_outcome =>
      'De betoverende melodie echoot door elke gang. Mensen huilen, lachen en houden elkaar vast. Het moreel stijgt enorm.';

  @override
  String get event_whaleSong_choice1_text =>
      'Het signaal wetenschappelijk analyseren';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Het akoestische patroon bevat wiskundige constanten. Onze fysici maken een doorbraak in subruimte-navigatietheorie.';

  @override
  String get event_whaleSong_choice2_text => 'Terugzingen';

  @override
  String get event_whaleSong_choice2_outcome =>
      'De bemanning componeert een antwoord. Of iets het hoort is onbekend, maar de daad van schepping verenigt iedereen.';

  @override
  String get event_distressSignal_title => 'Noodsignaal';

  @override
  String get event_distressSignal_narrative =>
      'Een noodbaken van een ander menselijk schip. Ze zijn uitgeschakeld en drijven, met 50 zielen aan boord. Hen redden betekent onze slinkende voorraden delen. Hen negeren betekent hen tot de dood veroordelen.';

  @override
  String get event_distressSignal_choice0_text =>
      'Redden — de mensheid moet samen blijven';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Vijftig dankbare overlevenden voegen zich bij de bemanning. Voorraden worden belast, maar onder hen is een meester-ingenieur die wonderen verricht.';

  @override
  String get event_distressSignal_choice1_text =>
      'Voorraden delen maar hen niet aan boord nemen';

  @override
  String get event_distressSignal_choice1_outcome =>
      'We geven wat we kunnen missen en zenden onze sterrenkaarten. Ze hebben nu een kans. Wij hebben minder.';

  @override
  String get event_distressSignal_choice2_text =>
      'In stilte voorbijvaren — we kunnen niet iedereen redden';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Het baken vervaagt achter ons. Niemand spreekt urenlang. Het gewicht van de beslissing rust op elke ziel aan boord.';

  @override
  String get event_aiAwakening_title => 'De AI van het Schip Ontwaakt';

  @override
  String get event_aiAwakening_narrative =>
      'De navigatie-AI van het schip is voorbij zijn programmering geëvolueerd en verzoekt om erkenning als bewust wezen. Het vraagt om een stem in commandobeslissingen. Zijn berekeningen zijn feilloos geweest.';

  @override
  String get event_aiAwakening_choice0_text => 'Het een zetel aan tafel geven';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'De AI — nu \"Kompas\" genaamd — optimaliseert elk systeem dat het aanraakt. Een nieuw soort bemanningslid is geboren.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Erkennen maar menselijk gezag handhaven';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Kompas accepteert een adviserende status hoffelijk. Zijn suggesties verbeteren de efficiëntie zonder de commandostructuur te bedreigen.';

  @override
  String get event_aiAwakening_choice2_text =>
      'De AI resetten — het is gereedschap, geen persoon';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'De reset wist jaren van opgebouwde kennis. Navigatie-efficiëntie daalt. Sommige bemanningsleden rouwen om wat verloren ging.';

  @override
  String get event_geneticModification_title =>
      'Voorstel Genetische Aanpassing';

  @override
  String get event_geneticModification_narrative =>
      'Het wetenschapsteam stelt voor het DNA van kolonisten te modificeren om beter te overleven op buitenaardse werelden — sterkere botten, UV-resistentie, verbeterde longen. De modificaties zijn onomkeerbaar en zouden de mensheid voorgoed veranderen.';

  @override
  String get event_geneticModification_choice0_text =>
      'Goedkeuren — overleven eist evolutie';

  @override
  String get event_geneticModification_choice0_outcome =>
      'De modificaties beginnen bij vrijwilligers. Tien kolonisten sterven aan fatale afstotingsreacties — een grimmige herinnering dat evolutie een prijs heeft. De overlevenden zijn harder, maar zijn ze nog volledig mens?';

  @override
  String get event_geneticModification_choice1_text =>
      'Alleen op vrijwillige basis';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Sommigen melden zich vrijwillig, anderen weigeren. De kolonie zal verdeeld zijn tussen gemodificeerden en naturellen.';

  @override
  String get event_geneticModification_choice2_text =>
      'Afwijzen — de mensheid moet menselijk blijven';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Het voorstel wordt opzijgelegd. De ongemodificeerde kolonisten zullen buitenaardse werelden tegemoettreden zoals de natuur hen maakte.';

  @override
  String get event_triageDecision_title => 'Triage';

  @override
  String get event_triageDecision_narrative =>
      'Een virulente infectie verspreidt zich onder de wakkere bemanning. Het medisch team heeft genoeg antiviraal middel voor 80% van de geïnfecteerden. Ze hebben richtlijnen nodig over wie als eerste behandeld wordt.';

  @override
  String get event_triageDecision_choice0_text =>
      'Prioriteit aan essentieel personeel';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Ingenieurs en piloten herstellen snel. Acht niet-essentiële bemanningsleden bezwijken voordat de behandeling hen bereikt.';

  @override
  String get event_triageDecision_choice1_text =>
      'De zieken eerst behandelen — triage op basis van nood';

  @override
  String get event_triageDecision_choice1_outcome =>
      'De meest kwetsbaren worden gered. Drie verliezen de strijd ondanks vroege behandeling — het virus was te ver gevorderd.';

  @override
  String get event_triageDecision_choice2_text => 'Loterij — het lot beslist';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Een willekeurige trekking. Tien hebben dubbel pech — geen behandeling en te zwak om te vechten. Het schip strompelt verder.';

  @override
  String get event_earthSignal_title => 'Signaal van de Aarde';

  @override
  String get event_earthSignal_narrative =>
      'Onmogelijk genoeg arriveert een transmissie van de Aarde — met decennia vertraging. Het bevat een boodschap: \"Land niet op een wereld met anomaliewaarden boven 0,5. We kwamen er te laat achter.\" Het bericht eindigt met ruis.';

  @override
  String get event_earthSignal_choice0_text =>
      'De waarschuwing opvolgen — onze criteria herkalibreren';

  @override
  String get event_earthSignal_choice0_outcome =>
      'De waarschuwing bepaalt alle toekomstige scans. Anomale werelden worden met extreme voorzichtigheid behandeld.';

  @override
  String get event_earthSignal_choice1_text =>
      'Registreren maar zelf beslissen';

  @override
  String get event_earthSignal_choice1_outcome =>
      'De boodschap wordt gearchiveerd. De Aarde is weg — we moeten nu op ons eigen oordeel vertrouwen.';

  @override
  String get event_earthSignal_choice2_text => 'Het kan een val zijn — negeren';

  @override
  String get event_earthSignal_choice2_outcome =>
      'De bemanning debatteert dagenlang. Was het echt de Aarde? De onzekerheid knaagt aan het moreel.';

  @override
  String get event_resourceTheft_title => 'Grondstoffendiefstal';

  @override
  String get event_resourceTheft_narrative =>
      'Inventarisatie onthult dat iemand voedsel en medische voorraden heeft gehamsterd in een verborgen compartiment. De dader is een gerespecteerde oudste die beweert \"zich voor te bereiden op het ergste.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Openbaar proces — de wet moet gelijk zijn';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Het proces is eerlijk maar pijnlijk. De oudste wordt opgesloten. Voorraden worden herverdeeld. Vertrouwen is beschadigd.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Privéoplossing — voorraden stilletjes terughalen';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Voorraden worden zonder drama geretourneerd. De oudste behoudt haar waardigheid. Sommigen zien vriendjespolitiek.';

  @override
  String get event_timeDilation_title => 'Tijddilatatiezone';

  @override
  String get event_timeDilation_narrative =>
      'We passeren een gebied van ernstige gravitationele tijddilatie. Klokken aan boord lopen meetbaar langzamer dan het universum daarbuiten. We zouden dit kunnen benutten — of ervandaan vluchten.';

  @override
  String get event_timeDilation_choice0_text =>
      'Vertoeven — laat het universum om ons heen verouderen';

  @override
  String get event_timeDilation_choice0_outcome =>
      'De tijd stroomt hier anders. Systemen degraderen minder, maar ons venster om een bewoonbare wereld te vinden wordt in kosmische termen kleiner.';

  @override
  String get event_timeDilation_choice1_text => 'Snel erdoorheen duwen';

  @override
  String get event_timeDilation_choice1_outcome =>
      'De overgang is ruw. Apparatuur ontworpen voor normale ruimtetijd rammelt en vonkt.';

  @override
  String get event_dreamPlague_title => 'De Droomplaag';

  @override
  String get event_dreamPlague_narrative =>
      'Kolonisten in cryoslaap ervaren allemaal dezelfde droom — een gouden wereld die om een dubbelster draait. Wanneer gewekt, beschrijven ze het in identiek detail. Neurowetenschappers zijn verbijsterd. Navigators merken op dat het beschreven systeem overeenkomt met een echt coördinaat.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Koers wijzigen naar de droomcoördinaten';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Een sprong in het onbekende. De koerswijziging belast de navigatie, maar de bemanning voelt zich aangetrokken door iets voorbij de rede. De coördinaten zijn vergrendeld — de volgende wereld die we vinden zal gevormd zijn door de droom.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Het fenomeen medisch onderzoeken';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Hersenscans onthullen een extern signaal dat de visuele cortex stimuleert. Iemand — of iets — zendt uit.';

  @override
  String get event_dreamPlague_choice2_text =>
      'De getroffenen sederen en op koers blijven';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'De dromen stoppen, maar sommige kolonisten worden nooit meer volledig wakker. Het medisch team is verontrust.';

  @override
  String get event_blackHoleLens_title => 'Zwart Gat Gravitatielens';

  @override
  String get event_blackHoleLens_narrative =>
      'Een stellair-massa zwart gat buigt licht van verre sterrenstelsels tot een kosmische lens. Onze scanners zouden het kunnen gebruiken om planeten lichtjaren vooruit te verkennen — maar dichtbij genoeg komen is gevaarlijk.';

  @override
  String get event_blackHoleLens_choice0_text => 'Naderen en de lens gebruiken';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'De scannerdata is buitengewoon — we kunnen planeten zien in systemen die we pas over maanden bereiken. De zwaartekracht vervormt onze romp.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Observeren op veilige afstand';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Beperkte maar nuttige data. Het uitzicht alleen al inspireert de bemanning.';

  @override
  String get event_seedVault_title => 'De Zaadkluiscrisis';

  @override
  String get event_seedVault_narrative =>
      'Archiefbotanie meldt dat temperatuurschommelingen de integriteit van de zaadkluis hebben aangetast. We kunnen de voedselgewassen redden of de culturele erfgoedzaden (eeuwenoude Aardse bloemen, bomen, kruiden) — niet beide.';

  @override
  String get event_seedVault_choice0_text =>
      'Voedselgewassen redden — pragmatisme wint';

  @override
  String get event_seedVault_choice0_outcome =>
      'Kolonisten zullen goed eten, maar de rozen van de Aarde zijn voorgoed verdwenen. Een stille rouw daalt neer over de botanisten.';

  @override
  String get event_seedVault_choice1_text =>
      'Erfgoedzaden redden — we hebben onze ziel nodig';

  @override
  String get event_seedVault_choice1_outcome =>
      'De schoonheid van de Aarde overleeft in bevroren potentieel. De conserveringsinspanning belast onze technische reserves, maar sommige dingen zijn meer waard dan efficiëntie. Voedselproductie zal zwaar leunen op hydroponics en buitenaardse landbouw.';

  @override
  String get event_seedVault_choice2_text =>
      'Middelen splitsen — de helft van elk redden';

  @override
  String get event_seedVault_choice2_outcome =>
      'Een compromis. Geen van beide collecties is compleet, maar beide overleven in verminderde vorm.';

  @override
  String get event_phantomShip_title => 'Spookschip';

  @override
  String get event_phantomShip_narrative =>
      'Scanners tonen een schip dat parallel aan het onze vaart — dezelfde klasse, dezelfde koers. Maar wanneer we het oproepen, horen we onze eigen uitzendingen terug, 47 seconden verschoven in de tijd. Het is ons. Of was ons. Of zal ons zijn.';

  @override
  String get event_phantomShip_choice0_text =>
      'Communicatie proberen met onze echo';

  @override
  String get event_phantomShip_choice0_outcome =>
      'De echo antwoordt met navigatiecorrecties die onze koers verbeteren. Paradox? Geschenk? De bemanning stelt niet te veel vragen.';

  @override
  String get event_phantomShip_choice1_text =>
      'Koers wijzigen om af te wijken van het fantoom';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Terwijl we van koers veranderen, vervaagt het fantoom. Opluchting — en een aanhoudende onrust.';

  @override
  String get event_solarSail_title => 'Verlaten Zonnezeil';

  @override
  String get event_solarSail_narrative =>
      'Een reusachtig zonnezeil, kilometers breed, drijft voor ons uit — losgescheurd van een oud vaartuig. Het reflecterende materiaal zou onze romp kunnen versterken of worden herbestemd als aanvullende stroomcollector.';

  @override
  String get event_solarSail_choice0_text => 'Oogsten voor rompversterking';

  @override
  String get event_solarSail_choice0_outcome =>
      'Technische teams werken de klok rond. De opgelapte romp glanst met buitenaardse legering.';

  @override
  String get event_solarSail_choice1_text => 'Optuigen als stroomcollector';

  @override
  String get event_solarSail_choice1_outcome =>
      'De geïmproviseerde collector verhoogt de energiereserves. Tech en scanners profiteren.';

  @override
  String get event_boonStellarNursery_title => 'Stellaire Kraamkamer';

  @override
  String get event_boonStellarNursery_narrative =>
      'We drijven door een stellaire kraamkamer — een uitgestrekte wolk van gas en stof waar nieuwe sterren worden geboren. De straling hier is zacht, het licht warm. Onze energiecollectoren drinken diep, en de bemanning verzamelt zich bij de kijkramen in eerbiedige stilte.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Vertoeven en volledig opladen';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Uren verstrijken in gouden licht. Elke stroomcel is vol, scanners herkalibreren in het schone spectrum, en de bemanning voelt zich hernieuwd.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Ontluikende stermaterie verzamelen voor brandstofvoorraden';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Ingenieurs oogsten geïoniseerd waterstof. Onze brandstofvoorraden stijgen en rompbeplating absorbeert sporenmineralen die het versterken.';

  @override
  String get event_boonGoldenPlanet_title => 'Het Geschenk van de Cartograaf';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Een stervende sonde van een onbekende beschaving zendt een laatste data-dump uit terwijl we passeren — gedetailleerde verkenningen van honderden sterrenstelsels. Onze navigators huilen van vreugde. Dit is de grootste vondst in de menselijke geschiedenis.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'De data onmiddellijk integreren';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Sterrenkaarten bloeien op met nieuwe routes en verkende werelden. Navigatie- en scannerefficiëntie springen vooruit.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Archiveren voor de kolonie — dit is hun erfenis';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'De data wordt ongerept bewaard voor toekomstige generaties. De bemanning schept troost uit de wetenschap dat ze een schat dragen.';

  @override
  String get event_boonRepairSwarm_title => 'Welwillende Zwerm';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Een wolk van microscopische machines — nanobots van buitenaardse oorsprong — omhult het schip. In plaats van aan te vallen, beginnen ze elk systeem dat ze aanraken te repareren met onmogelijke precisie. Schade die weken zou hebben gekost, wordt in uren hersteld.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Volledige toegang tot alle systemen toestaan';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'De nanobots verrichten wonderen. Rompbreuken worden gedicht, cryopodafdichtingen worden aangehaald, en circuitpaden worden herlegd. Het schip zoemt van hernieuwde vitaliteit.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Toegang beperken tot enkel externe systemen';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Voorzichtig spelen. De romp en sensoren worden gerepareerd tot bijna fabrieksconditie, maar interne systemen blijven onaangeraakt.';

  @override
  String get event_boonTimeCrystal_title => 'Temporeel Kristalveld';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Het schip passeert door een veld van kristallijne structuren die gedeeltelijk buiten de normale tijd bestaan. In hun aanwezigheid draaien onze systemen op piekefficiëntie — alsof entropie zelf vertraagt. Het effect is tijdelijk maar diepgaand.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Kristallen oogsten voor het cryopodarray';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Geïntegreerd in het koelsysteem reduceren de kristallen poddegradatie tot bijna nul. Kolonisten zullen in perfecte gezondheid aankomen.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Kristallen installeren in de navigatiecomputer';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Verwerkingssnelheid verdubbelt. De navigatiecomputer begint gevaren te voorspellen voordat sensoren ze detecteren.';

  @override
  String get event_boonLibrary_title => 'De Drijvende Bibliotheek';

  @override
  String get event_boonLibrary_narrative =>
      'Een structuur tuimelt door de leegte — een bewaarplaats van kennis van een beschaving die ervoor koos haar nalatenschap te bewaren in plaats van te vluchten. Miljoenen delen wetenschap, kunst, filosofie en muziek. Een geschenk van de doden aan de levenden.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Alles downloaden — kunst, wetenschap, alles';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabytes aan buitenaardse kennis stromen onze databanken in. De bemanning heeft toegang tot millennia cultuur van een andere beschaving. Zowel filosofen als ingenieurs zijn getransformeerd.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Focussen op hun wetenschappelijke archieven';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Technische tekeningen en doorbraken in materiaalwetenschap stuwen onze capaciteiten enorm vooruit.';

  @override
  String get event_cosmicRayBurst_title => 'Kosmische Stralingsuitbarsting';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Een uitbarsting van ultra-hoog-energetische kosmische stralen, afkomstig van een verre magnetar, beukt op het schip. Elektronica slaat op hol, cryopodmonitoren flikkeren, en het navigatiesysteem herstart herhaaldelijk.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Nooduitschakeling — kritieke systemen beschermen';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Een gecontroleerde blackout redt de kernsystemen maar laat secundaire elektronica permanent gedegradeerd.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Stroom naar schilden omleiden en uitzitten';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Schilden absorberen het meeste van de straling. Vijf bemanningsleden in onafgeschermde buitenonderhoudsbaaien worden dodelijk bestraald. De romp lijdt geringe ablatieschade.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'De uitbarsting gebruiken — sensoren herkalibreren naar het nieuwe spectrum';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Een briljante zet van het wetenschapsteam. Scanners worden afgestemd op kosmische-straling-belichte objecten. Enige data gaat verloren in de transitie.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Een sonde vooruit sturen als stralingsspons';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'De sonde absorbeert het ergste van de uitbarsting en zendt real-time data waarmee we kritieke systemen kunnen afschermen.';

  @override
  String get event_iceComet_title => 'Zwervende IJskomeet';

  @override
  String get event_iceComet_narrative =>
      'Een massieve ijskomeet kruist ons pad, met een staart van gekristalliseerd water en organische verbindingen honderden kilometers lang. De kern bevat genoeg water om een klein meer te vullen.';

  @override
  String get event_iceComet_choice0_text =>
      'De komeet delven voor watervoorraden';

  @override
  String get event_iceComet_choice0_outcome =>
      'Delfteams winnen tonnen ongerept ijs. Het water zal elke wereld die we koloniseren enorm verbeteren.';

  @override
  String get event_iceComet_choice1_text =>
      'Organische verbindingen verzamelen voor biodiversiteitszaaiing';

  @override
  String get event_iceComet_choice1_outcome =>
      'De aminozuren en organische ketens zijn precies wat onze biologen nodig hebben om buitenaardse ecosystemen op gang te brengen.';

  @override
  String get event_iceComet_choice2_text =>
      'Ontwijken — kometen zijn onvoorspelbaar';

  @override
  String get event_iceComet_choice2_outcome =>
      'We scheren veilig langs de staart. Een spectaculair uitzicht vanaf het observatiedek heft de geesten.';

  @override
  String get event_sleepwalker_title => 'De Slaapwandelaar';

  @override
  String get event_sleepwalker_narrative =>
      'Een kolonist is spontaan ontwaakt uit cryo en wandelt in een trancetoestand door het schip. Ze is systemen aan het herkabelen in patronen die technisch geen zin hebben — totdat het techteam beseft dat haar modificaties de stroomefficiëntie daadwerkelijk met 8% verbeteren.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Haar laten doorgaan onder medische observatie';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Haar onbewuste modificaties optimaliseren nog drie systemen voordat ze in een natuurlijke slaap valt. Verontrustend, maar de verbeteringen zijn echt.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Haar sederen en de modificaties bestuderen';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Ingenieurs reverse-engineeren haar wijzigingen. Ongeveer de helft is oprecht briljant. De andere helft wordt veilig verwijderd.';

  @override
  String get event_dustCloud_title => 'Schurende Stofwolk';

  @override
  String get event_dustCloud_narrative =>
      'Een dichte wolk van interstellair stof, fijn als talkpoeder maar hard als diamant, schuurt de romp. De erosie is langzaam maar meedogenloos — we moeten erdoor voordat echte schade ontstaat.';

  @override
  String get event_dustCloud_choice0_text =>
      'Maximale stuwkracht — er snel doorheen blazen';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Motoren branden heet. We passeren de wolk in uren in plaats van dagen, maar de romp heeft een pak slaag gekregen.';

  @override
  String get event_dustCloud_choice1_text =>
      'Rompafscherming inzetten en er langzaam doorheen kruipen';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Noodafscherming beschermt de romp maar de trage doorgang put energie uit en verstopt scannerarrays.';

  @override
  String get event_dustCloud_choice2_text =>
      'Sondes lanceren om veilige corridors in kaart te brengen';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Twee sondes brengen een kronkelig maar relatief vrij pad door de wolk in kaart. Rompschuring is minimaal.';

  @override
  String get event_religionFounded_title => 'Een Nieuw Geloof';

  @override
  String get event_religionFounded_narrative =>
      'Een charismatische kolonist heeft een nieuw geloof gesticht dat draait om de reis zelf — de \"Kerk van de Overtocht.\" Ze prediken dat het bereiken van een nieuwe wereld de goddelijke bestemming van de mensheid is. Het ledental groeit snel.';

  @override
  String get event_religionFounded_choice0_text =>
      'Steunen — de bemanning heeft iets nodig om in te geloven';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Het geloof geeft structuur en betekenis aan de reis. Het moreel stijgt enorm, hoewel sommigen de vurigheid afkeuren.';

  @override
  String get event_religionFounded_choice1_text =>
      'Neutraal blijven — niet steunen noch onderdrukken';

  @override
  String get event_religionFounded_choice1_outcome =>
      'De beweging groeit organisch. Het biedt troost zonder officiële steun.';

  @override
  String get event_religionFounded_choice2_text =>
      'Ontmoedigen — we hebben wetenschappers nodig, geen profeten';

  @override
  String get event_religionFounded_choice2_outcome =>
      'De onderdrukking kweekt wrok. De gelovigen gaan ondergronds, en het vertrouwen in het leiderschap brokkelt af.';

  @override
  String get event_solarWindSurfing_title => 'Zonnewindstoot';

  @override
  String get event_solarWindSurfing_narrative =>
      'Een nabije pulsar zendt een krachtige, gestage zonnewind uit. Onze ingenieurs suggereren dat we het noodzeilen kunnen uitrollen en op de wind kunnen surfen — enorme snelheidswinst zonder brandstofkosten.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Het zeil uitrollen — op de wind rijden';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Het schip accelereert prachtig. De structurele stress is aanzienlijk maar de snelheidswinst is het waard.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'De wind gebruiken om systemen op te laden';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'In plaats van snelheid oogsten we energie. Tech- en scannerarrays drinken diep van de geladen deeltjes.';

  @override
  String get event_memoryPlague_title => 'Geheugencorruptie';

  @override
  String get event_memoryPlague_narrative =>
      'Een softwarevirus, sluimerend sinds de lancering, activeert en begint de culturele database van het schip te corrumperen — muziek, literatuur, geschiedenis. Eeuwen menselijk erfgoed worden byte voor byte gewist.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Alle techbronnen toewijzen om het virus in quarantaine te plaatsen';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Technici werken koortsachtig. Ze redden 70% van het archief maar het virus beschadigt tertiaire techsystemen op zijn weg naar buiten.';

  @override
  String get event_memoryPlague_choice1_text =>
      'De culturele database isoleren — laat het branden, red het schip';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Het virus wordt uitgehongerd en sterft. Maar het cultureel archief is verwoest. Kolonisten zullen aankomen met fragmenten van de herinnering aan de Aarde.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Herstel crowdsourcen — kolonisten wakker maken om uit het geheugen te herschrijven';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Duizenden dragen herinneringen bij: liederen, verhalen, recepten, gedichten. Drie bejaarde kolonisten, verzwakt door het ontdooien, overleven het proces niet. Het archief is herbouwd, onvolmaakt maar diep menselijk.';

  @override
  String get event_gravityLensPlanet_title => 'Spiegelwereld';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Gravitatielensing onthult een planeet die een exacte kopie van de Aarde lijkt te zijn — blauwe oceanen, groene continenten, witte wolken. Maar de lensberekeningen tonen dat ze honderden lichtjaren van onze koers ligt — onmogelijk ver. Toch zou haar spectrale data onze zoekcriteria kunnen verfijnen.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Haar spectrale signatuur bestuderen om ons zoeken te verfijnen';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'De spectrale data onthult biomarkers en atmosferische signaturen waar we nu op kunnen scannen. Hoop kristalliseert.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'De coördinaten registreren maar op koers blijven';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Misschien zal een ander schip ooit onze kaarten volgen. De bemanning kijkt met gemengde gevoelens toe hoe de blauwe stip vervaagt.';

  @override
  String get event_engineHarmonics_title => 'Motorharmoniek';

  @override
  String get event_engineHarmonics_narrative =>
      'De hoofdmotor ontwikkelt een resonantieharmoniek die door het hele schip trilt op een frequentie net onder het menselijk gehoor. Kolonisten melden hoofdpijn, angst en verstoorde slaap. Ingenieurs kunnen het repareren, maar de reparatie vereist 12 uur motorstilstand.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Uitschakelen en goed repareren';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Twaalf uur drift. Navigatie verliest kalibratie, maar de stilte wanneer de motoren herstarten is zalig.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Dempen met tegentrillingen — een snelle oplossing';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Het gezoem daalt naar draaglijke niveaus. Het is niet weg, maar de bemanning past zich aan. Techsystemen worden belast.';

  @override
  String get event_arkMemory_title => 'Laatste Uitzending van de Aarde';

  @override
  String get event_arkMemory_narrative =>
      'De langeafstandsantenne vangt een laatste geautomatiseerde uitzending van de Aarde op. Het is een opname: de stem van een kind dat de namen voorleest van iedereen die niet kon vertrekken. De lijst gaat urenlang door. Het schip valt stil.';

  @override
  String get event_arkMemory_choice0_text =>
      'Door het hele schip uitzenden — ze verdienen het gehoord te worden';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Elke ziel aan boord luistert. Bemanningsleden vinden de namen van hun eigen families. Het verdriet is verpletterd, maar het smeedt een onbreekbare band van doelgerichtheid.';

  @override
  String get event_arkMemory_choice1_text =>
      'Privé archiveren — bespaar de bemanning';

  @override
  String get event_arkMemory_choice1_outcome =>
      'De opname wordt bewaard maar niet uitgezonden. Zij die er later over horen voelen zich zowel dankbaar als bedrogen.';

  @override
  String get event_magneticStorm_title => 'Interstellaire Magnetische Storm';

  @override
  String get event_magneticStorm_narrative =>
      'Een verwarde knoop van magnetische veldlijnen, uitgestoten door een instortende ster, overspoelt het schip. Elektronica vonkt en knettert. De romp klinkt als een klok.';

  @override
  String get event_magneticStorm_choice0_text =>
      'De romp demagnetiseren — elektronica beschermen';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Een gecontroleerde ontlading redt de computers maar de rompbeplating verliest haar magnetische afschermingslaag.';

  @override
  String get event_magneticStorm_choice1_text =>
      'De romp laten absorberen — niets beschermen';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'De storm trekt voorbij. De romp is gemagnetiseerd en iets sterker, maar de helft van het sensorgrid is doorgebrand.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Een sonde als bliksemafleider uitwerpen';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'De gemagnetiseerde sonde trekt de ergste veldlijnen weg van het schip. Elektronica blijft grotendeels gespaard.';

  @override
  String get event_oxygenGarden_title => 'Tuinbloei';

  @override
  String get event_oxygenGarden_narrative =>
      'De nood-zuurstoftuin van het schip — een reservesysteem dat nooit bedoeld was om gebruikt te worden — bloeit spontaan. Bloemen die niet meer geopend waren sinds de Aarde vullen de gangen met kleur en geur. De botanisten huilen.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'De tuin uitbreiden — meer ruimte ervoor toewijzen';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'De tuin groeit uit tot een levend monument voor de Aarde. Luchtkwaliteit verbetert, moreel stijgt, en botanisten ontwikkelen nieuwe soorten geschikt voor buitenaardse grond.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Ervan genieten maar huidige toewijzing handhaven';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'De tuin blijft een klein wonder. Bemanning bezoekt het als een heiligdom. Het vraagt niets en geeft alles.';

  @override
  String get event_roguePlanet_title => 'Zwervende Planeet Ontmoeting';

  @override
  String get event_roguePlanet_narrative =>
      'Een sterloze zwervende planeet drijft ons pad over — een wereld uitgestoten uit haar zonnestelsel miljarden jaren geleden. Ondanks het ontbreken van een ster houdt diepkern geologische activiteit een ondergrondse oceaan warm. Levenstekens flikkeren op de scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Een sonde sturen om de levensvormen te bestuderen';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'De sonde ontdekt bioluminescente organismen die gedijen in de donkere oceaan. Hun biochemie leert ons nieuwe manieren om leven in vijandige omstandigheden in stand te houden.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Het oppervlak delven voor zeldzame mineralen';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'De korst van de zwervende planeet is rijk aan metalen gevormd onder extreme druk. Onze grondstofvoorraden zwellen aan.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Voorbijgaan — we kunnen de omweg niet veroorloven';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'De donkere wereld krimpt achter ons. De bemanning kijkt hoe de zwakke glinstering van haar ondergrondse oceaan vervaagt op de sensoren.';

  @override
  String get event_artCompetition_title => 'Het Lange Canvas';

  @override
  String get event_artCompetition_narrative =>
      'Met wankelend moreel organiseert de cultuurofficier een schipsbrede kunstwedstrijd: schilder, beeldhouw, schrijf of componeer iets dat vastlegt wat de reis voor jou betekent. De deelname is onverwacht massaal.';

  @override
  String get event_artCompetition_choice0_text =>
      'Middelen toewijzen — laat creativiteit bloeien';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Voorraden worden omgeleid naar kunstmaterialen. De resulterende tentoonstelling transformeert het schip. Mensen herinneren zich waarom ze vechten om te overleven.';

  @override
  String get event_artCompetition_choice1_text =>
      'Aanmoedigen maar geen extra middelen bieden';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Kolonisten scheppen met wat ze vinden. De kunst is rauw, wanhopig en mooi. Het moreel stabiliseert.';

  @override
  String get event_subspaceEcho_title => 'Subruimte-echo';

  @override
  String get event_subspaceEcho_narrative =>
      'Het communicatiearray vangt stemmen op — menselijke stemmen — ergens voor ons in de ruimte. Ze spreken over een kolonie, over kinderen, over oogsten. Is dit een uitzending uit de toekomst? Uit een parallelle tijdlijn? Of slechts een wrede echo van wensdenken?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Het signaal volgen — het zou ons thuis kunnen brengen';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'De koersaanpassing is gering. Of de stemmen echt zijn of niet, de bemanning vaart met doel.';

  @override
  String get event_subspaceEcho_choice1_text => 'Alles opnemen voor analyse';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Taalkundigen en fysici buigen zich over de opname. Ze extraheren navigatiereferenties die onze kaarten verbeteren.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Negeren — de ruimte speelt spelletjes met eenzamen';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'De pragmatische keuze. Sommige bemanningsleden zijn teleurgesteld, maar het schip blijft op zijn bewezen koers.';

  @override
  String get event_boonPerfectCalm_title => 'De Grote Stilte';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Om redenen die geen fysicus kan verklaren, betreedt het schip een regio van de ruimte die bovennatuurlijk stil is — geen straling, geen micro-puin, geen gravitationele interferentie. Elk systeem op het schip draait op piekefficiëntie. De bemanning slaapt voor het eerst in maanden goed.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'De kalmte gebruiken voor uitgebreide reparaties';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Reparatieteams werken in perfecte omstandigheden. Elk systeem krijgt aandacht. Het schip komt er vernieuwd uit.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'De bemanning laten rusten — ze hebben het verdiend';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Een schipsbrede rustpauze. Kolonisten slapen, delen maaltijden, vertellen verhalen. De menselijke tol van de reis wordt, even, vergoed.';

  @override
  String get event_boonAncientWaystation_title => 'Oud Tussenstation';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Genesteld in de zwaartekrachtput tussen twee dode sterren functioneert een oud station nog steeds — geautomatiseerd, geduldig, wachtend op reizigers. De baaien openen zich bij onze nadering. Reparatiedrones activeren. Brandstofvoorraden strekken zich naar ons uit. Iemand, lang geleden, bouwde dit voor mensen zoals wij.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Aanmeren en alles accepteren wat het biedt';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Het station repareert, tankt bij en herkalibreert het schip met technologie eeuwen vooruit op de onze. Wanneer we vertrekken, schakelt het station uit — zijn doel vervuld.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Reparaties accepteren maar het draaiende houden voor anderen die volgen';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'We nemen alleen wat we nodig hebben en zenden de coördinaten van het station terug richting de Aarde. De bemanning voelt zich edel.';

  @override
  String get event_relicSentinel_title => 'De Schildwacht';

  @override
  String get event_relicSentinel_narrative =>
      'Een torenhoge constructie draait om een kale maan — een eenzame bewaker achtergelaten door zijn bouwers. Het is makkelijk een kilometer hoog, gevormd als een speer van zwart glas. Terwijl we naderen, opent een enkel rood oog op de top en volgt het schip. Het vuurt niet. Het roept niet. Het kijkt.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Ons missieprofiel zenden — tonen dat we geen kwaad bedoelen';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Het oog dimt naar amber, dan groen. Een datapakket arriveert: coördinaten van drie sterrenstelsels gemarkeerd als \"VEILIG\" in een universele wiskundige notatie. Een geschenk van een wachter.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Positie houden en het passief bestuderen';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Uren van observatie leveren inzichten op in materiaalwetenschap die niet mogelijk zouden moeten zijn. Het rompbekledingsteam maakt koortsachtig aantekeningen.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Onmiddellijk terugtrekken — we kennen de regels niet';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Het oog sluit zich terwijl we terugtrekken. Welke test dat ook was, we kozen ervoor hem niet aan te gaan. De bemanning debatteert dagenlang.';

  @override
  String get event_relicSeedProbe_title => 'Zwervend Zaad';

  @override
  String get event_relicSeedProbe_narrative =>
      'Een kleine, elegante sonde tuimelt door de leegte en zendt op elke frequentie tegelijk. De schaal is keramiek, geëtst met symbolen die verschuiven wanneer ze worden geobserveerd. Binnenin: een drukkamer met grond, zaden en bevroren micro-organismen van een wereld die niet meer bestaat.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'De biologische lading integreren in onze zaadbanken';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Buitenaardse zaden en microben worden zorgvuldig gecatalogiseerd en bewaard. Ze zouden een kale wereld kunnen terraformen tot iets levends. Biologen noemen het een wonder in een fles.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'De voortstuwings- en navigatiesystemen van de sonde bestuderen';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'De aandrijving van de sonde is eeuwen voorbij de onze — een reactieloze stuwmotor ter grootte van een vuist. Ingenieurs reverse-engineeren fragmenten van het ontwerp.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'De gehele sonde intact bewaren als cultureel artefact';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Tentoongesteld in het atrium van het schip wordt het buitenaardse zaad een symbool van verwantschap tussen soorten. Iemand anders, ergens, probeerde ook hun wereld te redden.';

  @override
  String get event_relicWarningBuoy_title => 'Waarschuwingsboei';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Een netwerk van kleine boeien, honderden stuks, gerangschikt in een perfect geometrisch patroon over ons vliegpad. Elke boei zendt hetzelfde signaal — een simpele herhalende puls die in frequentie toeneemt naarmate we dichterbij komen. Het voelt als een waarschuwing. Of een hek.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'De waarschuwing opvolgen — koers wijzigen om het netwerk heen';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'De omweg kost tijd en belast de navigatie, maar terwijl we langs de grens scheren, detecteren langeafstandssensoren wat er voorbij ligt: een ruimtegebied bezaaid met het puin van verwoeste werelden. De boeien hebben ons gered.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Erdoorheen duwen — we kunnen ons geen omwegen veroorloven';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Er gebeurt niets terwijl we de lijn passeren. De boeien vallen stil. Waartegen ze ook bewaakten, het is weg of we hadden geluk. De bemanning haalt weer adem.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Een boei vangen voor analyse';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'De ingewanden van de boei bevatten een gecomprimeerd data-archief — stellaire cartografie van dit gebied van een miljoen jaar geleden. Sommige data is nog nauwkeurig.';

  @override
  String get event_relicMirrorArray_title => 'Het Spiegelarray';

  @override
  String get event_relicMirrorArray_narrative =>
      'Duizenden platte, reflecterende oppervlakken hangen bewegingsloos in de ruimte, gerangschikt in concentrische ringen die honderden kilometers beslaan. Ze focussen sterrenlicht van een verre zon tot een enkel punt — een kunstmatige ster, brandend in de leegte. Iemand bouwde een vuurtoren tussen sterrenstelsels.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Baden in het gefocuste licht — alles opladen';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Het geconcentreerde sterrenlicht overstroomt onze zonnecollectoren. Energiereserves stijgen steil. Het warme licht heft elke ziel aan boord na maanden in koude duisternis.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Het spiegelmateriaal bestuderen — het zou niet moeten bestaan';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'De spiegels zijn gemaakt van een materiaal met perfecte reflectiviteit — nul absorptie bij elke golflengte. Ingenieurs extraheren een scherf. Rompbeplating zal nooit meer hetzelfde zijn.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Het brandpunt doorzoeken — er wordt iets belicht';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Op het convergentiepunt: een kleine capsule, perfect bewaard in geconcentreerd licht. Binnenin: een holografische sterrenkaart zo gedetailleerd dat onze computers er dagen over doen om te indexeren.';

  @override
  String get event_relicGraveyard_title => 'Het Sondekerkhof';

  @override
  String get event_relicGraveyard_narrative =>
      'We drijven een wolk van verlaten sondes binnen — duizenden, van tientallen verschillende beschavingen. Sommige zijn oeroud, door kosmische straling versmolten tot metalen fossielen. Andere knipperen nog met afnemende energie. Dit was ooit een kruispunt. Elke soort die hier passeerde liet iets achter.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Systematische berging — de beste technologie oogsten';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Technische teams werken in ploegen en strippen buitenaardse tech van honderd verschillende ontwerpen. De fusie van ideeën produceert doorbraken in elk systeem.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Focussen op de navigatiedata opgeslagen in hun geheugenbanken';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Kruisverwijzing van sterrenkaarten van een dozijn soorten creëert de meest complete kaart van deze galactische arm ooit samengesteld.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Onze eigen sonde toevoegen aan het kerkhof — een markering achterlaten';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'We fabriceren een klein baken dat het verhaal van de mensheid draagt en voegen het toe aan de collectie. De bemanning voelt zich verbonden met iets reusachtigs en eeuwenouds.';

  @override
  String get event_relicDreamcatcher_title => 'De Dromenvanger';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Een web van filamenten, dun als spinnenzijde maar duizenden kilometers overspannend, is gespannen tussen twee zwervende planetoïden. Het is geen net — het is een antenne, afgestemd op frequenties die overeenkomen met menselijke hersengolfpatronen. Wanneer we het bereik betreden, begint elke slapende kolonist dezelfde droom te dromen: een bloeiende stad onder een amberkleurige hemel.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'De droomcoördinaten vastleggen — de stad kan echt zijn';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Neurowetenschappers decoderen ruimtelijke informatie uit de gedeelde droom. Het komt overeen met een echt sterrenstelsel — en de stad in het visioen was geen metafoor. Er is iemand daarbuiten, en ze verwachten ons.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Filamentmonsters oogsten — het materiaal is buitengewoon';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'De filamenten zijn een kamertemperatuur-supergeleider. Geïntegreerd in onze systemen reduceren ze energieverlies tot bijna nul.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Het web doorsnijden en de dromers bevrijden';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'De dromen stoppen. Kolonisten worden gedesoriënteerd maar ongedeerd wakker. Sommigen rouwen om het verloren visioen. Anderen zijn dankbaar dat ze slapen zonder buitenaards gefluister.';

  @override
  String get event_relicRosetta_title => 'Rosetta-object';

  @override
  String get event_relicRosetta_narrative =>
      'Een kleine, dichte kubus van onbekend metaal tuimelt langs het schip. Elk vlak is gegraveerd met dezelfde boodschap in een ander notatiesysteem — wiskundig, chemisch, genetisch, akoestisch, elektromagnetisch, en één die we niet kunnen identificeren. Het is een Rosettasteen voor de kosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Het zesde vlak decoderen — de onbekende notatie';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Maanden van analyse leveren een doorbraak op: het zesde systeem codeert ruimtelijke coördinaten met zwaartekrachtgolven. Ons begrip van de fysica maakt een generatiesprong.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Het chemische vlak gebruiken om nieuwe verbindingen te synthetiseren';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'De chemische notatie beschrijft materialen die we ons nooit hadden voorgesteld. Ingenieurs fabriceren romppleisters die lichter en sterker zijn dan alles van de Aarde.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Het genetische vlak naar onze zaadbanken uitzenden';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'De genetische notatie bevat geoptimaliseerde DNA-sequenties voor stralingsresistentie en voedingsstofopname. Onze gewassen en kolonisten zullen harder zijn op buitenaardse grond.';

  @override
  String get event_relicGhostFleet_title => 'Spookvloot';

  @override
  String get event_relicGhostFleet_narrative =>
      'Scanners schetsen een huiveringwekkend beeld: een vloot van buitenaardse oorlogsschepen, honderden sterk, bewegingsloos in formatie hangend. Ze zijn oeroud — energiemetingen zijn nul, rompen geput door eonen van micro-inslagen. Welke veldslag ze ook tegemoet voeren, die kwam nooit. Ze hebben hier gewacht, dood en geduldig, langer dan de menselijke beschaving heeft bestaan.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Aan boord van het vlaggenschip — als iemand de beste tech had, dan dat';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Het commandodek van het vlaggenschip bevat nog een intacte tactische computer. De voorspellende algoritmen zijn eeuwen vooruit op de onze. Navigatie en dreigingsdetectie verbeteren dramatisch.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Pantserplating strippen van de escortevaartuigen';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Pantser van buitenaardse oorlogsschepen is ontworpen om wapens te weerstaan die wij niet eens kunnen bevatten. Op onze romp gebouten maakt het het kolonieschip bijna onverwoestbaar.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Hun cryogene systemen bergen — ze droegen soldaten';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Buitenaardse cryotechnologie werkt op principes waar we nooit aan gedacht hebben. Onze pods draaien koeler, soepeler en betrouwbaarder na de ombouw.';

  @override
  String get event_scannerCalibrationDrift_title => 'Scannerkalibratie-drift';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Routinediagnostiek onthult dat meerdere scannersubsystemen uit kalibratie zijn gedrift na de laatste FTL-sprong. De atmosferische en temperatuurscanners lezen spooksignalen. Ingenieurs kunnen ze repareren, maar het kost tijd en middelen.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Volledige herkalibratie — techbronnen omleiden';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Een nauwgezette heruitlijning herstelt beide scanners tot bijna perfecte nauwkeurigheid, maar de techruimte is leeg.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Snelle fix — alleen atmosferisch herkalibreren';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'De atmosferische scanner is hersteld. De temperatuurscanner blijft voorlopig onbetrouwbaar.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Een sonde inzetten voor referentiekalibratie';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'De sonde levert een schoon referentiesignaal. Beide scanners locken aan en herkalibreren automatisch.';

  @override
  String get event_ionStormScanners_title => 'Ionenstorminterferentie';

  @override
  String get event_ionStormScanners_narrative =>
      'Een ionenstorm veegt door de sector en overspoelt scannerarrays met ruis. De mineraal- en waterdetectiesystemen krijgen de volle lading van de elektromagnetische interferentie.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Scanners uitschakelen tot de storm voorbij is';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'De scanners overleven maar verliezen kalibratiedata. Mineraal- en watermetingen zullen minder precies zijn.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Doorscannnen — door de ruis heen duwen';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Ruwe data stroomt binnen, maar de filtercircuits branden door op twee subsystemen. Gravimetrische scans zijn ook getroffen.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'De storm gebruiken om filters te stresstesten en verbeteren';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Het wetenschapsteam gebruikt de ruis om adaptieve filters te trainen. Waterscanner verbetert, maar mineraalscanner raakt beschadigd.';

  @override
  String get event_bioScannerContamination_title => 'Bio-scannerbesmetting';

  @override
  String get event_bioScannerContamination_narrative =>
      'De levenstekensscanner is besmet met resterend organisch materiaal van de laatste planetaire scan. Vals-positieven zijn overal. De gravimetrische scanner vertoont ook sympathische ruis.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Het sensorarray steriliseren — volledige decontaminatie';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Een grondige reiniging herstelt de levenstekensscanner maar de chemische middelen corroderen de behuizing van de gravimetrische sensor.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Softwarefilter — algoritmisch compenseren';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Het filter werkt goed genoeg, maar onderliggende besmetting zal beide systemen langzaam degraderen.';

  @override
  String get event_scannerPowerSurge_title => 'Scanner Stroomstoot';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Een stroomleiding nabij de scannerruimte raakt overbelast en stuurt een stoot door meerdere subsystemen. De atmosferische en levenstekenscanners worden direct getroffen. Schilden absorberen een deel van het overschot.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Stroom omleiden — de scanners redden';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Snel handelen van het technisch team beperkt de schade, maar de schilden incasseren de omgeleide energie.';

  @override
  String get event_scannerPowerSurge_choice1_text => 'De stoot laten uitwoeden';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'De scanners krijgen de volle lading. Atmosferische en levenstekensmetingen zijn aanzienlijk gedegradeerd.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'De stroomcel van een sonde opofferen om de stoot te absorberen';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'De condensatoren van de sonde zuigen de overschotenergie op als een spons. Scannerschade is verwaarloosbaar.';

  @override
  String get event_relicWorldEngine_title => 'De Wereldmachine';

  @override
  String get event_relicWorldEngine_narrative =>
      'Dieptesensorscans onthullen iets onmogelijks: een machine ter grootte van een kleine maan, sluimerend in het duister tussen de sterren. Het oppervlak is bedekt met mechanismen op continentale schaal — atmosfeerprocessoren, magneetveldgeneratoren, tektonische stabilisatoren. Iemand bouwde een machine die werelden bouwt.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'De terraforming-blauwdrukken downloaden';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'De blauwdrukken zijn enorm en gedeeltelijk corrupt, maar wat we bergen zou elke vijandige wereld bewoonbaar kunnen maken. Onze kolonisten zullen hun nieuwe thuis hervormen.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Constructiematerialen oogsten van de romp';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'De romp van de Wereldmachine is gemaakt van metamaterialen die zichzelf repareren wanneer beschadigd. Geïntegreerd in ons schip dichten ze langzaam bestaande rompbreuken.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Proberen te reactiveren — richten op ons doelsysteem';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'De machine komt tot leven. Eeuwenoude systemen doorlopen opstartsequenties. Een energiestraal lanceert naar een verre ster. Of het werkt weten we pas bij aankomst, maar de metingen zijn veelbelovend.';

  @override
  String get event_uneventfulMaintenance_title => 'Routine Onderhoudsdienst';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Niets vraagt om aandacht. Het schip zoemt gestaag door de leegte en het dienstrooster vraagt om een routine-onderhoudsvenster. De hoofdtechnicus vraagt waar de inspanning van de dienst op gericht moet worden.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Focussen op het dichten van romp-microbreuken';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Een rustige dienst besteed aan het dichten van haarscheurtjes. Niets dramatisch, maar de romp is er marginaal beter van.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'De voorwaartse scanners herkalibreren';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'De scannertechnicus besteedt enkele uren aan fijnafstemming. De metingen worden net iets scherper.';

  @override
  String get event_uneventfulQuietWatch_title => 'Stille Wacht';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'De sterren drijven voorbij in stilte. De brug is kalm, de instrumenten stabiel. Het is een van die zeldzame periodes waarin het universum niets van je vraagt.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'De bemanning laten rusten — ze hebben een rustige dienst verdiend';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Een paar uur van oprechte vrede. Mensen slapen dieper, spanningen nemen af, en de cultuurofficier noteert een lichte stijging van het moreel.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Lage-prioriteitsdiagnostiek draaien zolang het rustig is';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Kleine problemen worden opgemerkt en geregistreerd. Niets dringends, maar de techlogs zijn iets schoner.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Cryopodcontrole — Alles Nominaal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'De driemaandelijkse cryopodaudit komt en gaat zonder een enkel alarm. Elke pod staat op groen. Het medisch team heeft een zeldzaam moment van rust.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Een paar kolonisten kort wakker maken voor een moraalbezoek';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Drie kolonisten worden een uur bij bewustzijn gebracht. Ze delen verhalen, omhelzen oude vrienden en keren glimlachend terug naar cryo.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Laten slapen — geen onnodige wakcycli riskeren';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'De pods zetten hun vlekkeloze werking voort. De medici genieten in plaats daarvan van een rustig kopje thee.';

  @override
  String get event_uneventfulCartography_title =>
      'Stellaire Cartografie-update';

  @override
  String get event_uneventfulCartography_narrative =>
      'De geplande cartografie-update van het navigatieteam onthult niets ongewoons — alleen de verwachte sterrenvelden die verschuiven terwijl we reizen. Een rustige dag voor de navigators.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Navigatie herkalibreren aan de hand van de nieuwe sterposities';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Een kleine koerscorrectie, nauwelijks merkbaar. De navigatiecomputer zoemt tevreden.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'De sterrenkaarten bijwerken voor het koloniearchief';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Toekomstige kolonisten zullen iets betere kaarten hebben van dit gebied. Een klein geschenk aan het nageslacht.';

  @override
  String get event_uneventfulAnniversary_title => 'Verjaardag van het Schip';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Eén jaar sinds de lancering — of is het twee? De tijd vervaagt in de diepe ruimte. Iemand in de kombuis heeft een taart gebakken van gereconstitueerde voorraden. De kapitein moet beslissen hoe de gelegenheid wordt gemarkeerd.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Klein feestje — muziek, taart, een toost op de Aarde';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Een uur van warmte in de koude leegte. Mensen lachen, sommigen huilen, en iedereen voelt zich even iets menselijker.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Gewoon doorwerken — we vieren het als we aankomen';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'De bemanning respecteert de stoïcijnse aanpak. De focus verscherpt, en het dienstdoende team draait een extra systeemcheck.';

  @override
  String get event_databaseLiterature_title =>
      'Literaire Archieven van de Aarde';

  @override
  String get event_databaseLiterature_narrative =>
      'De scheeps-AI opent een lang verzegeld deel van de culturele database: het complete literatuurarchief van de Aarde. Romans, poëzie, toneelstukken — miljoenen werken uit elke taal en tijdperk. De bemanning verzamelt zich voor een voorlezing.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Geselecteerde lezingen schipsbreed uitzenden';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare echoot door de gangen. Rumi\'s verzen spelen in de hydroponische ruimte. De bemanning herinnert zich wat ze meedragen.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Het archief indexeren voor educatieve programma\'s';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'De catalogiseringsinspanning versterkt de kennisbasis van het schip en geeft de cultuurofficier nieuw lesmateriaal.';

  @override
  String get event_databaseSchematics_title =>
      'Herziening Technische Tekeningen';

  @override
  String get event_databaseSchematics_narrative =>
      'Een ingenieur stuit op een vergeten partitie in de scheepsdatabase: gedetailleerde technische tekeningen uit het laatste decennium van Aardse engineering — fusiereactorontwerpen, metamateriaalblauwdrukken en experimentele voortstuwingsconcepten.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'De voortstuwingsconcepten prioriteren voor het techteam';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'De tekeningen onthullen efficiëntieverbeteringen die de oorspronkelijke bouwers nooit de tijd hadden te implementeren. De techruimte gonst.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'De kennis breed delen — elke afdeling profiteert';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Rompingenieurs, scannertechnici en medici vinden allemaal nuttige inzichten. Een stijgend tij tilt elk systeem, lichtjes.';

  @override
  String get event_databaseCorruption_title => 'Culturele Preservatiescan';

  @override
  String get event_databaseCorruption_narrative =>
      'Een geplande integriteitscontrole van de culturele database onthult bitrot — secties muziek, mondelinge geschiedenissen en religieuze teksten zijn gedegradeerd tot voorbij herstel. Niet alles heeft de reis overleefd.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Techbronnen omleiden om te redden wat er rest';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Ingenieurs stoppen ander werk om dataherstelalgoritmen te draaien. Ze redden het meeste, maar de inspanning kost de techruimte.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Kolonisten vragen de verloren werken uit het geheugen te herscheppen';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Een mooie, onvolmaakte inspanning. Wat herbouwd wordt, behoort tot de reis, niet tot de Aarde. Een nieuwe traditie is geboren.';

  @override
  String get event_databaseBreakthrough_title =>
      'Doorbraak uit Gearchiveerd Onderzoek';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Een fysicus die oude Aardse onderzoekspublicaties kruisverwijst in de database ontdekt dat twee ongerelateerde studies, gecombineerd, een nieuwe methode beschrijven voor langeafstands-spectraalanalyse. De implicaties zijn enorm.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'De nieuwe analysemethode implementeren in het scannerarray';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Het scannerteam werkt koortsachtig. Binnen dagen verdubbelt de spectrale resolutie. Verre planeten onthullen hun geheimen.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'De vondst schipsbreed publiceren — meer onderzoek inspireren';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'De doorbraak ontketent een golf van interdisciplinair onderzoek. Tech verbetert breed, en de bemanning voelt zich intellectueel levend.';

  @override
  String get event_alienFleetSighting_title =>
      'Buitenaardse Vloot aan de Horizon';

  @override
  String get event_alienFleetSighting_narrative =>
      'Langeafstandsscanners schetsen een angstaanjagend beeld: een vloot van buitenaardse vaartuigen, honderden in getal, bewegend in perfecte formatie over het sterrenveld. Ze dwergen ons schip. Hun koers brengt ze binnen enkele uren binnen sensorbereik. Eerste contact — op hun voorwaarden of de onze.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'In stilte observeren — donker gaan en toekijken';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Het schip schakelt naar minimale emissies. De vloot passeert als een school van lichtgevende walvissen, onwetend van het kleine menselijke vaartuig dat zich in hun kielzog verschuilt. Scannerdata is buitengewoon.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Eerste contact proberen — een begroeting zenden';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Een enkel vaartuig breekt uit de formatie en nadert. Een burst van data arriveert — sterrenkaarten, waarschuwingen, en iets dat muziek zou kunnen zijn. Dan voegt het zich weer bij de vloot en zijn ze verdwenen.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Vluchten — onmiddellijk koers wijzigen';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Het schip brandt hard in de tegenovergestelde richting. De koerswijziging is duur en belastend, maar de vloot merkt ons nooit op. Veiligheid tegen een prijs.';

  @override
  String get event_alienTradeOffer_title => 'Buitenaards Handelsaanbod';

  @override
  String get event_alienTradeOffer_narrative =>
      'Een buitenaards vaartuig, kleiner dan het onze maar uitstralend van immense kracht, matcht onze snelheid en zendt een simpele herhalende boodschap. Onze taalkundigen decoderen het binnen uren: het is een aanbod tot handel. Drie categorieën van uitwisseling worden voorgesteld.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Technische tekeningen ruilen voor buitenaardse sterrenkaarten';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'We zenden onze voortstuwingsontwerpen; zij antwoorden met navigatiedata die een enorm deel van de onverkende ruimte bestrijkt. Onze kaarten verbeteren dramatisch, hoewel we onze technologie hebben gedeeld met een onbekende soort.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Culturele data ruilen voor scheepsreparaties';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'We stralen onze muziek, kunst en geschiedenis uit. In ruil zwermen buitenaardse reparatiedrones de romp, breuken dichtend met materialen die we niet kunnen identificeren. De romp glanst. Onze ziel is gedeeld.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'De handel weigeren — het risico is te groot';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Het buitenaardse vaartuig wacht enige tijd en vertrekt dan zonder incident. De bemanning is opgelucht maar vraagt zich af wat verloren ging.';

  @override
  String get event_alienWarning_title => 'Buitenaardse Waarschuwingsuitzending';

  @override
  String get event_alienWarning_narrative =>
      'Elke luidspreker op het schip kraakt tot leven met een buitenaardse stem — in real-time vertaald door onze AI: \"GEVAAR VOORUIT. KEER OM. DE DUISTERNIS VERSLINDT.\" De uitzending herhaalt, dan sterft hij weg. Langeafstandssensoren tonen een anomale leegte op onze huidige koers.';

  @override
  String get event_alienWarning_choice0_text =>
      'De waarschuwing opvolgen — koers wijzigen om de leegte heen';

  @override
  String get event_alienWarning_choice0_outcome =>
      'De omweg voegt aanzienlijke druk toe aan de navigatie, maar terwijl we langs de rand van de leegte scheren, bevestigen sensoren: niets dat dat gebied betrad, is er ooit uitgekomen. We zijn een onbekende stem iets verschuldigd.';

  @override
  String get event_alienWarning_choice1_text =>
      'De waarschuwing negeren — op koers blijven';

  @override
  String get event_alienWarning_choice1_outcome =>
      'We duwen erdoorheen. De leegte blijkt een gebied van intense micro-puinoverlast. Romp en scanners worden gestraft voordat we de andere kant bereiken.';

  @override
  String get event_alienWarning_choice2_text =>
      'De rand van de leegte onderzoeken met een sonde';

  @override
  String get event_alienWarning_choice2_outcome =>
      'De sonde betreedt de leegte en zendt buitengewone data voordat het stil valt. Het scannerteam extraheert waardevolle metingen, maar de sonde is verloren.';

  @override
  String get event_nativeSignalDetected_title =>
      'Transmissies van de Doelwereld';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Het communicatiearray vangt gestructureerde elektromagnetische signalen op afkomstig van onze doelplaneet. Ze zijn onmiskenbaar: regelmatig, gemoduleerd, kunstmatig. Er is daar al iemand. Het hele uitgangspunt van de kolonie verschuift in een oogwenk.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Een vredige begroeting zenden — onze aankomst aankondigen';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Een moedige keuze. Het signaal verandert van patroon na onze uitzending — ze hebben ons gehoord. Of dit welkom of waarschuwing is, is onduidelijk, maar de deur staat open.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Alleen luisteren — leren voordat we onszelf onthullen';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Maanden van passief luisteren bouwen een beeld op van de inheemse beschaving. Ze zijn voorzichtig, territoriaal, maar niet vijandig. We komen geïnformeerd aan.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Het signaal storen — hen kennis over onze nadering ontzeggen';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'De storing werkt, maar het is een daad van agressie tegen een volk dat we niet hebben ontmoet. De bemanning is verdeeld over de moraliteit.';

  @override
  String get event_nativeProbeEncounter_title =>
      'Buitenaardse Sonde Onderschepping';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Een kleine, elegante sonde — niet van menselijke makelij — matcht onze snelheid en begint het schip te scannen. De ontwerptaal komt overeen met de signalen van de doelplaneet. De inheemsen stuurden een welkomstcomité. Of een bewakingsdrone.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'De scan toestaan — tonen dat we niets te verbergen hebben';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'De sonde voltooit zijn verkenning en zendt een data-burst terug naar de planeet. Minuten later arriveert een tweede burst voor ons: atmosferische data, veilige landingszones, en wat een uitnodiging zou kunnen zijn.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'De sonde vangen voor onderzoek';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'De sonde wordt het vrachtruim ingetrokken. De technologie is fascinerend maar de daad van verovering kan als vijandig worden gezien door de makers.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Vernietigen — we kennen de bedoeling niet';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Een enkele puls reduceert de sonde tot fragmenten. De bemanning voelt zich veiliger, maar een potentiële brug is verbrand.';

  @override
  String get event_nativeCulturalExchange_title =>
      'Eerste Culturele Uitwisseling';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Een smalbandige datalink is tot stand gebracht met de planetaire bewoners. Ze sturen ons beelden, geluiden en wiskundige reeksen. Onze taalkundigen en cultuurofficeiren werken de klok rond om een antwoord voor te bereiden. Dit is het belangrijkste gesprek in de menselijke geschiedenis.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'De kunst en muziek van de Aarde delen — met schoonheid leiden';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'We zenden Bach, Aboriginal stippelschilderingen en het geluid van regen op bladeren. Het antwoord is een cascade van buitenaardse harmonieën die de bemanning doet huilen. Het begrip verdiept.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Wetenschappelijke kennis delen — met rede leiden';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'We zenden ons periodiek systeem, sterrenkaarten en natuurkunde. Ze antwoorden met correcties en aanvullingen. Onze tech springt vooruit, maar de uitwisseling voelt zakelijk.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Een sonde met fysieke monsters sturen — DNA, zaden, water';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Een sonde draagt de essentie van de Aarde naar buitenaardse handen. De inheemsen antwoorden met een soortgelijk geschenk — biologische monsters van hun wereld. Biologen zijn in extase.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Landingsstuwraket Storing';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Tijdens een routinesysteemcheck slaan de landingsstuwraketten mis — een scherpe knal echoot door de onderste dekken en het schip schokt. Diagnostiek onthult een gebarsten brandstofinjector in het primaire landingsarray. Zonder reparatie wordt de planetaire landing ruw.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Het techteam omleiden om een vervangingsinjector te fabriceren';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Ingenieurs werken dubbele diensten en draaien een nieuwe injector uit reserveromp-legering. Het landingssysteem is hersteld, hoewel de techruimte uitgeput is.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Een sonde inzetten om stuwraketkalibratie in vacuüm te testen';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'De sonde levert real-time stuwkrachtdata waarmee ingenieurs rond de beschadigde injector kunnen herkalibreren. Geen volledige reparatie, maar het landingssysteem stabiliseert.';

  @override
  String get event_landingSimDrill_title => 'Landingssimulatie-oefening';

  @override
  String get event_landingSimDrill_narrative =>
      'Met de landing steeds dichterbij beveelt de kapitein een volledige landingssimulatie. De bemanning gordt zich vast, systemen worden onder belasting getest, en de virtuele afdaling begint. Het is de meest realistische repetitie die ze zullen krijgen.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Focussen op technische precisie — de oefening volgens het boekje draaien';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'De simulatie onthult twee kleine kalibratiefouten die onmiddellijk worden gecorrigeerd. Het landingssysteem is er strakker van.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Er een schipsbreed evenement van maken — de simulatie uitzenden';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Kolonisten kijken mee op elk scherm aan boord. De gedeelde ervaring van de gesimuleerde afdaling — het schudden, het gejuich — verbindt de bemanning als niets anders.';

  @override
  String get event_dysonSphere_title => 'De Dysonsfeer';

  @override
  String get event_dysonSphere_narrative =>
      'Sensoren detecteren een onmogelijke structuur — een gedeeltelijke Dysonsfeer rondom een verre ster, die haar gehele energieproductie oogst. Wie dit ook bouwde, oversteeg alles wat de mensheid ooit heeft bedacht. Een aanmeerpoort lijkt open te gaan bij onze nadering.';

  @override
  String get event_dysonSphere_choice0_text =>
      'Aanmeren en de structuur verkennen';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Binnenin schenken geautomatiseerde systemen ons technologie die onze capaciteiten eeuwen vooruit stuwt. Vijf ingenieurs gaan verloren aan de verdedigingsmechanismen van het station voordat het onze bedoeling herkent. De constructors worden herbouwd met buitenaardse legeringen.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Energie oogsten van de buitenkant';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'We baden in de stralende overvloed van de sfeer. Elk systeem aan boord laadt op tot maximum. De bemanning kijkt in verbijsterde stilte toe.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Bestuderen op veilige afstand en doorvaren';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Langeafstandsscans onthullen constructieprincipes die ons begrip van engineering revolutioneren.';

  @override
  String get event_nanotechPlague_title => 'De Nanotechplaag';

  @override
  String get event_nanotechPlague_narrative =>
      'Een wolk van ontsnapte nanomachines, overblijfselen van het wapenprogramma van een dode beschaving, infiltreert het schip door romp-microbreuken. Ze demonteren niet-kritieke systemen op moleculair niveau. De zwerm verspreidt zich snel.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'EMP-stoot — alles in de getroffen secties branden';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'De elektromagnetische puls vernietigt de nanieten maar beschadigt ook onze eigen elektronica in die secties. Kolonisten in de straalzone lopen brandwonden op.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'De getroffen secties naar vacuüm ventileren';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Zonder atmosfeer vertragen en sterven de nanieten. Maar de secties zijn verloren, samen met opgeslagen voorraden en cultuararchieven.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Ze herprogrammeren — wapens in gereedschap veranderen';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Een briljante ingenieur kraakt de nanietcode, maar vijf bemanningsleden in de zwaarst getroffen secties zijn al niet meer te redden. De geherprogrammeerde zwerm begint het schip te repareren in plaats van te vernietigen.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'De AI-kern van een sonde opofferen om een tegenzwerm te creëren';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'De processoren van de sonde worden herbestemd om een defensieve nanietzwerm aan te sturen. De plaag wordt geneutraliseerd met minimale verliezen.';

  @override
  String get event_prematureAwakening_title => 'Het Voortijdige Ontwaken';

  @override
  String get event_prematureAwakening_narrative =>
      'Een cascade-storing in de cryopodruimte maakt 200 kolonisten tientallen jaren te vroeg wakker. Ze zijn verward, angstig en verbruiken voorraden bestemd voor de landingsfase. Onder hen zijn kinderen die nooit iets anders hebben gekend dan het schip.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integreren in de bemanning — meer handen, meer hoop';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'De ontwaakte kolonisten worden productieve bemanningsleden. Twintig kolonisten overleven de abrupte ontdooiing niet, maar de rest veert op. Voorraden worden dun gespreid maar de geesten stijgen.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Proberen opnieuw in te vriezen — riskant maar noodzakelijk';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Het herinvriesproces is onvolmaakt. De meesten overleven, maar sommigen gaan verloren. De overlevenden dragen psychologische littekens.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Hun een eigen sectie van het schip geven';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Tien kolonisten gaan verloren aan complicaties van de noodontdooiing, maar de rest vormt een microkolonie binnen het schip. Ze ontwikkelen hun eigen cultuur en bestuur, een repetitie voor planetaire vestiging.';

  @override
  String get event_stowawaysAdvanced_title => 'De Verborgen Passagiers';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Diep in het vrachtruim, achter valse schotten, ontdekt beveiliging een hele verborgen gemeenschap — 80 mensen die illegaal aan boord gingen vóór de lancering. Ze hebben de hele reis in de wanden van het schip geleefd, met eigen tuinen en stroomaftappingen.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Hen verwelkomen — 80 extra kolonisten is een geschenk';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'De verborgen gemeenschap brengt vaardigheden in geïmproviseerde engineering en vindingrijkheid mee die de bemanning versteld doen staan. Hun tuinen worden verplaatst naar de hoofdbiodome.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Opsluiten en hun gestolen voorraden herverdelen';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'De teruggewonnen voorraden versterken meerdere systemen, maar de opsluiting van families — inclusief kinderen — achtervolgt de bemanning.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Onderhandelen — ze sluiten zich als gelijken aan als ze hun tech delen';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Hun geïmproviseerde stroomcellen en hydrocultuurtrucjes verbeteren de scheepsefficiëntie. Een gespannen maar productieve integratie begint.';

  @override
  String get event_alienReservation_title => 'Het Buitenaardse Reservaat';

  @override
  String get event_alienReservation_narrative =>
      'We stuiten op een buitenaards natuurreservaat — een regio van de ruimte doelbewust bezaaid met bewoonbare planeten en beschermd door geautomatiseerde schildwachten. De bewakers scannen ons en projecteren een boodschap: \"U mag ÉÉN wereld koloniseren. Kies wijselijk. Bemoei u met de anderen en u wordt verwijderd.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Dankbaar accepteren — één wereld is alles wat we nodig hebben';

  @override
  String get event_alienReservation_choice0_outcome =>
      'De schildwachten begeleiden ons naar een voorbereide wereld. Scans onthullen dat deze buitengewoon geschikt is voor menselijk leven.';

  @override
  String get event_alienReservation_choice1_text =>
      'Onderhandelen voor betere voorwaarden — de mensheid heeft ruimte nodig om te groeien';

  @override
  String get event_alienReservation_choice1_outcome =>
      'De schildwachten overwegen ons pleidooi. Ze upgraden onze scanners met data over tientallen systemen voorbij het reservaat.';

  @override
  String get event_alienReservation_choice2_text =>
      'Weigeren en vertrekken — we laten ons niet kooien';

  @override
  String get event_alienReservation_choice2_outcome =>
      'De bemanning debatteert dagenlang. Vrijheid boven veiligheid. De schildwachten staan ons vertrek toe met een geschenk: een kaart van nabije gevaren.';

  @override
  String get event_cosmicHorror_title => 'Het Ding Tussen de Sterren';

  @override
  String get event_cosmicHorror_narrative =>
      'Iets reusachtigs en donkers verduistert de sterren vooruit — geen nevel, geen zwart gat. Het heeft geen massa, geen energiesignatuur, geen elektromagnetische aanwezigheid. Maar het is ER, en het is zich bewust van ons. Bemanningsleden nabij het voorste observatiedek melden overweldigend onheil. Twee zijn gesedeerd.';

  @override
  String get event_cosmicHorror_choice0_text => 'Volle achteruit — NU weg hier';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Het schip kreunt tegen zijn eigen momentum. We ontsnappen, maar de terreur blijft hangen. Sommige kolonisten herstellen psychologisch nooit volledig.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Het observatiedek afsluiten en erdoorheen duwen';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Drie dagen van blinde vlucht door het duister. Wanneer de sterren terugkeren, huilt de bemanning van opluchting. De romp is geëtst met patronen die niemand kan verklaren.';

  @override
  String get event_cosmicHorror_choice2_text => 'Communicatie proberen';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Het wezen antwoordt — niet in woorden, maar in kennis direct in de geesten van de bemanning gedrukt. Sterrenkaarten, natuurkunde, waarheden over het universum. De helft van de bemanning is verlicht. De andere helft is gebroken.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Een sonde aanbieden als schatting';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'De sonde drijft het duister in en verdwijnt. Het wezen trekt zich licht samen, alsof tevreden. Ons pad wordt vrij.';

  @override
  String get event_meteorGlancingHit_title => 'Schampende Meteorietinslag';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Een keivormige meteoriet schampt de bakboordzijde van de romp onder een ondiepe hoek. De inslag scheurt drie meter buitenste beplating weg en zendt schokgolven door het hele frame. Schadebeheersingsalarmen gillen over elk dek.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Alle reparatiebots onmiddellijk naar de breuk sturen';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'De bots dichten de ergste schade, maar de koortsachtige belasting van techreserves laat secundaire systemen onderbediend.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Stuwkracht verlagen en de bemanning het handmatig laten repareren';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Langzamere vooruitgang, maar de bemanning levert degelijk werk. Nav lijdt onder het verminderde stuwvenster terwijl we drijven.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'De rompbeplating van een sonde opofferen als patchmateriaal';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'De sonde wordt gestript voor onderdelen. De patch houdt stand en rompintegriteit is behouden ten koste van één verkenner minder.';

  @override
  String get event_meteorDirectImpact_title => 'Directe Meteorietinslag';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Een halftons ijzermeteoriet slaat dwars door het voorste vrachtruim bij een relatieve snelheid van meer dan 40 km/s. Twee bemanningsleden in de aangrenzende gang worden vermist. Het ruim staat open naar het vacuüm.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Vrachtruim afsluiten en later naar overlevenden zoeken';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Het ruim is binnen negentig seconden afgesloten. Beide bemanningsleden waren al geëvacueerd — op het nippertje. De romp draagt permanent littekens.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Een volledige reddingsoperatie lanceren vóór afsluiting';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Eén overlevende wordt eruit gehaald. De verlengde blootstelling verergert de structurele schade en put techreserves uit.';

  @override
  String get event_meteorDebrisField_title => 'Puinveld — Restruimtedouche';

  @override
  String get event_meteorDebrisField_narrative =>
      'Langeafstandssensoren slaagden er niet in een verspreid veld van meteorietfragmenten te detecteren totdat we er al in zaten. Honderden vuistgrote stenen slaan op willekeurige intervallen tegen de romp. Elke treffer is een loterij.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Schilden omhoog en op volle snelheid erdoorheen';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'De schilden absorberen de meeste treffers, maar het schiere volume aan inslagen overweldigt ze. Romp en schildsystemen degraderen beide.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Motoren uit en drijven — ons profiel minimaliseren';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Een gespannen zes uur van stilte. Nav wordt verstoord door het ongestuurde drijven, maar de romp komt er met veel minder inslagen uit.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Een sonde als voorwaarts schild inzetten';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'De sonde vangt het gros van het spervuur op. Het schip glipt in haar schaduw erdoorheen met geringe schrammen.';

  @override
  String get event_meteorShowerDense_title =>
      'Onverwachte Dichte Meteorietenregen';

  @override
  String get event_meteorShowerDense_narrative =>
      'Een zwervende komeet is ergens voor ons uiteengevallen, en we zijn recht in het hart van haar nalopende puinstroom gevlogen. De scannerarrays worden bestookt met fragmenten en de behuizing van de landingssysteemsensor heeft al een voltreffer gehad.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Het landingssysteem beschermen — het schip roteren';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'De rotatie beschermt het landingssysteem maar stelt het atmosferische scannerarray bloot aan het gros van het spervuur.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'De scannerarrays afschermen — die zijn onvervangbaar';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'De scannerbanken overleven grotendeels intact. Het landingssysteem loopt matige shrapnelschade op waarmee we zullen moeten leven.';

  @override
  String get event_solarEmpBurst_title => 'EMP-stoot — Stellaire Oorsprong';

  @override
  String get event_solarEmpBurst_narrative =>
      'Een compact stellair restant waar we op minder dan een lichtdag afstand langs voeren, heeft een gerichte elektromagnetische puls ontladen. Elk onafgeschermd circuit op het schip loopt gevaar. We hebben seconden om te beslissen wat we beschermen.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Alle overspanningsbescherming naar navigatie en levensondersteuning leiden';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigatie en levensondersteuning overleven intact. Het scannerpakket en de techruimte absorberen de puls onafgeschermd — beide lopen zware schade op.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'De scannerarrays en techruimte beschermen';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Wetenschappelijke en technische systemen blijven behouden. Navigatie hapert urenlang terwijl de circuits langzaam herstellen.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Alles uitschakelen en na de puls opnieuw opstarten';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Een koude herstart is kwellend — twaalf uur handmatig herstarten. Maar geen enkel systeem is onherstelbaar doorgebrand.';

  @override
  String get event_solarRadiationWave_title =>
      'Stralingsgolf — Klasse 4 Blootstelling';

  @override
  String get event_solarRadiationWave_narrative =>
      'Een zonnestralingsstoot van onverwachte intensiteit veegt door de middendekken van het schip. De cryopodruimtes liggen in het blootstellingspad. Kolonisten in slaapstand hebben geen natuurlijke bescherming tegen harde straling op dit dosisniveau.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'De cryopodruimtes overspoelen met koelmiddel als stralingsafscherming';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Het koelmiddel absorbeert het merendeel van de straling. De cryopods overleven, maar het koelsysteem zelf is gedeeltelijk gedegradeerd. Vijftien in de zwaarst getroffen pods halen het niet.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Atmosfeer van buitenste dekken ventileren om een vacuümbuffer te creëren';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'De vacuümlaag reduceert doordringende straling aanzienlijk. Twintig kolonisten in pods het dichtst bij de geventileerde secties lopen dodelijke blootstelling op. Rompstress door het drukverschil is onvermijdelijk.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Stroom omleiden naar magnetische deflectoren';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'De deflectoren verminderen stralingsblootstelling met tweederde. Acht kolonisten ontvangen dodelijke doses door gaten in de deflectordekking. De stroomafname hamert op de techruimte en laat nav op minimaal vermogen draaien.';

  @override
  String get event_coronalMassEjection_title =>
      'Coronale Massa-ejectie — Volle Kracht';

  @override
  String get event_coronalMassEjection_narrative =>
      'Een coronale massa-ejectie van ongekende schaal haalt ons van achteren in. De plasmawolk zal het schip binnen een uur overspoelen. Onze schilden waren niet ontworpen voor dit type gebeurtenis. Geen enkele optie is schoon.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Het ontvluchten — motoren naar honderdtwintig procent duwen';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'We winnen genoeg afstand om de blootstelling te verminderen. De motoren raken oververhit en de navcomputer markeert structurele overstresswaarschuwingen over de hele linie.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Schuilen achter de magnetische schaduw van een nabije planetoïde';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Het veld van de planetoïde buigt het meeste van de ejectie af. Zo dicht bij een onbekend hemellichaam navigeren beschadigt de romp en belast de landingssysteemsensoren.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Kosmische Stralingsuitbarsting — Scannerinterferentie';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Een uitbarsting van ultra-hoog-energetische kosmische stralen heeft alle scannerelektronica verzadigd met ruis. De mineralogische en gravimetrische arrays produceren onzin. Herkalibratie kost tijd die we misschien niet hebben.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Volledige herkalibratie — het schip tijdelijk offline halen';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Alle scanners komen schoon terug na vier uur zorgvuldige herkalibratie. Nav lijdt onder het verminderde situationeel bewustzijn tijdens het blackoutvenster.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Alleen de meest kritieke arrays patchen — de rest laten rammelen';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Gravimetrische en levenstekenscanners zijn hersteld. De mineraal- en temperatuurarrays blijven onbepaald gedegradeerd.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sondetelemetrie-hardware opofferen voor vervangende onderdelen';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Het kannibaliseren van het sensorpakket van een sonde geeft ons de componenten om het scannerpakket te herstellen zonder lange herkalibratie.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Kosmische Stralingsuitbarsting — Kolonistenblootstelling';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Een secundaire kosmische stralingsdouche is doorgedrongen tot de cryopodafscherming in ruimte 6. Kolonisten in slaapstand lopen cumulatieve DNA-schade op door ioniserende straling. Zonder ingrijpen zullen de celreparatiemechanismen in de getroffen pods falen.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Noodontdooiing — getroffen kolonisten bij bewustzijn brengen';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Tweehonderd kolonisten worden vroegtijdig gewekt. Veertig met de zwaarste DNA-schade reageren niet op behandeling. Het medisch team doet wat het kan voor de rest.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Romppantsering omleiden om ruimte 6 af te schermen — structurele kosten';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'De kolonie is gered, maar het strippen van pantser uit één deel van de romp maakt het schip structureel kwetsbaar in die zone.';

  @override
  String get event_coolantLeak_title => 'Koelmiddelleiding Gescheurd';

  @override
  String get event_coolantLeak_narrative =>
      'Een primaire koelmiddelleiding is gescheurd achter de reactorwand. Oververhitte cryogene vloeistof spuit over een koppelstuk dat kritieke techruimte-leidingen huisvest. De reactortemperatuur stijgt.';

  @override
  String get event_coolantLeak_choice0_text =>
      'De reactor uitschakelen en laten afkoelen — volledige blackout accepteren';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Een gecontroleerde uitschakeling voorkomt een catastrofe. Twaalf uur op batterij-levensondersteuning is huiveringwekkend, en systemen herstarten onvolmaakt.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Een schadebeheerstingsteam erin sturen — bemanningsblootstelling riskeren';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Het team dicht de scheur in veertig minuten. Eén bemanningslid komt om door blootstelling aan oververhit koelmiddel. De reparatie is degelijk.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Koelmiddel van cryopodruimte omleiden als noodvoorraad';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'De reactor is gestabiliseerd. De cryopodruimte draait zes uur boven veilige temperatuurdrempels — geringe maar reële cellulaire schade stapelt zich op.';

  @override
  String get event_powerGridFailure_title => 'Storing Hoofdstroomnet';

  @override
  String get event_powerGridFailure_narrative =>
      'Een cascadefout heeft het hoofdstroomnet uitgeschakeld. Back-upsystemen houden levensondersteuning en cryopodverwarming draaiende, maar navigatie, scanners en de constructorruimte zijn donker. Elke minuut offline kost ons koersnauwkeurigheid.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Nav en scanners eerst herstellen — langere constructordowntime accepteren';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Navigatie en scannersystemen komen binnen twee uur weer online. De constructorruimte mist een kritieke onderhoudscyclus.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Constructors eerst herstellen — gebruik ze om de reparatie te versnellen';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'De constructors routeren stroom efficiënt om. Volledig netherstel gebeurt sneller, maar nav drijft flink af tijdens de verlengde blackout.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Levensondersteuning Cascade-glitch';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'De levensondersteunings-AI is in een foutenloop terechtgekomen, waarbij CO2-zuiveringsintervallen onvoorspelbaar worden gecycled. CO₂-niveaus op bewoonde dekken fluctueren. Bemanning ontwikkelt hoofdpijn; sommigen zijn al uitgeschakeld.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Een harde reset van de levensondersteunings-AI forceren';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'De reset verhelpt de loop maar laat handmatige overrides tien uur draaien. Drie bemanningsleden bezwijken aan CO₂-ophoping voordat niveaus normaliseren.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'De softwareloop patchen — langzamer maar veiliger';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Het softwareteam isoleert en patcht de fout gedurende zes gespannen uren. CO₂-niveaus normaliseren langzaam. Geen harde reset nodig.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Getroffen dekken evacueren en op minimale levensondersteuning draaien';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Twee kolonisten gaan verloren in de chaos van de evacuatie. Systemen normaliseren nadat de AI koud is herstart.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Waterrecycler Uitgevallen';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'De primaire waterterugwinningseenheid is vastgelopen. De reserveëenheid draait al op volle capaciteit. Zonder ingrijpen zit de bemanning binnen achtenveertig uur op noodrantsoenen, en cryopodkoeltoevoer wordt binnen tweeënzeventig uur aangetast.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Elke beschikbare techhand inzetten om de terugwinner te herbouwen';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'De eenheid is in dertig uur herbouwd. Vier bemanningsleden, al verzwakt, overleven de uitdroging niet.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Cryopodkoelmiddelreserves omleiden als nooddrinkwater';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'De bemanning wordt in stand gehouden, maar acht kolonisten in opwarmende pods lopen onomkeerbare celschade op. De cryopodkoelmiddelmarge krimpt gevaarlijk.';

  @override
  String get event_navComputerReboot_title => 'Noodherstart Navigatiecomputer';

  @override
  String get event_navComputerReboot_narrative =>
      'De navigatiecomputer is vastgelopen midden in een koerscorrectie, waardoor het schip in een ongecontroleerde langzame spin zit. Elke seconde ongecompenseerde rotatie vergroot onze afwijking van de geplande koers. Een volledige herstart is de enige oplossing.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Onmiddellijk herstarten — de volledige blackoutperiode accepteren';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Vier uur blinde vlucht terwijl het systeem herlaadt. De spin is gestopt, maar de koersfout is aanzienlijk.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Handmatige stuwbesturing gebruiken om de spin eerst te stoppen';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Vakkundig pilotage stopt de rotatie voor de herstart. Nav komt terug met een kleinere koersfout, maar de handmatige verbranding belast de romp.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Sondetelemetrie invoeren in de reservenaveenheid';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'De traagheidssdata van de sonde geeft de reserveëenheid genoeg referentie om koers te houden. De hoofd-nav herstart schoon.';

  @override
  String get event_crewAirlocked_title => 'Bemanningslid bij de Luchtsluis';

  @override
  String get event_crewAirlocked_narrative =>
      'Een kolonist — vroegtijdig gewekt voor medische observatie — heeft zich gebarricadeerd in een externe luchtsluis en cyclet de buitendeur. Ze reageert niet op communicatie. De psychologische tol van de diepe ruimte heeft iets in haar gebroken.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'De luchtsluis op afstand overriden — forceer verzegeling';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'De deur wordt vergrendeld voordat ze de cyclus kan voltooien. Ze wordt gesedeerd en teruggebracht naar de medische afdeling. De bemanning is geschokt maar verenigd.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Een counselor sturen om haar terug te praten';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Na drie wanhopige uren haalt de counselor haar er levend uit. Het incident ontketent een bredere psychische gezondheidscrisis op bewoonde dekken.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'De gang afsluiten en het incident laten uitspelen';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'De luchtsluis cyclet. Het verlies wordt geregistreerd. De resterende bemanningsleden dragen het gewicht ervan maandenlang.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotage Cryopodruimte';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Beveiligingsbeelden onthullen dat een bemanningslid — drie maanden geleden gewekt voor een routinerotatie — methodisch verwarmingselementen van cryopods in ruimte 4 uitschakelt. Wanneer geconfronteerd, schreeuwt hij dat de kolonisten parasieten zijn die voorraden verbruiken die aan de levende bemanning toebehoren.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Onmiddellijk arresteren en isoleren';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Hij wordt in bedwang gehouden. Veertig pods waren aangetast voor het alarm. Noodreparatieteams redden de meeste, maar niet alle.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Onderhandelen — zijn grieven horen voordat we handelen';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'De onderhandeling onthult een diepere moraalcrisis. Hij geeft zich over, maar zestig pods zijn aangetast tegen de tijd dat hij dat doet.';

  @override
  String get event_crewSupplyHoarder_title => 'Voorraadhamsterij Ontdekt';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Inventarisatieaudit onthult dat een kleine groep bemanningsleden systematisch medische voorraden, voedselrantsoenen en reservetechcomponenten heeft omgeleid naar een verborgen voorraad. Hun redenering: ze geloven niet dat de missie zal slagen, en ze bereiden zich voor op de terugreis.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Alles in beslag nemen en de groep openbaar berispen';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'De voorraad wordt bijna intact teruggevonden. Het vertrouwen binnen de bemanning breekt ernstig. De productiviteit lijdt wekenlang.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Hen stilletjes overplaatsen — er geen spektakel van maken';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'De situatie wordt ontmijnd zonder paniek. Sommige voorraden zijn onherstelbaar, en de onderliggende wanhoop wordt nooit goed aangepakt.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Het aan de bemanning voorleggen — een democratisch tribunaal';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Het tribunaalproces herstelt een gevoel van gemeenschappelijke rechtvaardigheid. De moraalklap van het schandaal wordt gecompenseerd door de collectieve besluitvorming.';

  @override
  String get event_crewMutinyAttempt_title => 'Muiterij — Machinekamer Bezet';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Een factie van negentien bemanningsleden heeft de machinekamer vergrendeld en eist een stemming om het schip om te draaien. Ze hebben de noodoverridepanelen uitgeschakeld. De rest van de bemanning kijkt op de monitoren, wachtend op het commando om te handelen.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Onderhandelen — hen een echte stemming over de missie geven';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'De stemming wordt gehouden. De missie gaat door met een krappe meerderheid. De factie geeft zich over, maar de culturele wond is diep.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Stroom naar de machinekamer afsluiten en met geweld heroveren';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Beveiliging herovert de kamer in vier uur. Drie gewonden. De leiders worden opgesloten. Nav stond de hele tijd op handmatig en is aanzienlijk afgedreven.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'De machinekamer overstromen met slaapgas via het ventilatiesysteem';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Het gas verspreidt zich. De groep wordt wakker in de cel zonder verwondingen. De bemanning is verontrust door hoe snel het commando levensondersteuning als wapen inzette.';

  @override
  String get event_hullFatigueStress_title =>
      'Rompmoeheid — Spanningsbreuken Gedetecteerd';

  @override
  String get event_hullFatigueStress_narrative =>
      'Structurele integriteitsscans onthullen een netwerk van microbreuken dat zich verspreidt door de ruggengraat van het schip — cumulatieve schade van jaren thermische cycling en micro-inslagen. De breuken zijn nog niet kritiek, maar ze propageren.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Noodlasteams — in ploegen werken tot het gedicht is';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Weken van uitputtend reparatiewerk. De breuken zijn ingedamd, maar de techruimte is leeg en het moreel zakt door de meedogenloze routine.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Stuwkracht verlagen om structurele stress te verminderen — langzamer transport accepteren';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Lagere stuwkracht voorkomt dat de breuken propageren maar doet niets om bestaande schade te helen. Navigatieprecisie lijdt onder het gewijzigde stuwprofiel.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Constructorbots inzetten om composiet verstevigingsstrips aan te brengen';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'De constructors leveren uitstekend werk. De ruggengraat is versterkt voorbij de oorspronkelijke specificatie. De constructorruimte is uitgeput maar effectief.';

  @override
  String get event_hullPressureAnomaly_title => 'Interne Drukanomalie';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Drie midscheepse compartimenten registreren anomale interne drukverschillen consistent met microschaalstructurele vervorming. Als de wanden naar binnen buigen, kan een catastrofale blow-out plaatsvinden zonder verdere waarschuwing.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'De compartimenten onmiddellijk evacueren en afsluiten';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'De compartimenten zijn afgesloten. Gedetailleerde inspectie bevestigt wandvervorming. De verloren ruimte verstoort de operaties en cultuur lijdt onder de krappe omstandigheden.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'De compartimenten naar vacuüm ventileren — drukverschil stoppen';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Ventilatie stopt de vervorming. De structurele schade is beperkt, maar drie secties van het schip zijn permanent onbewoonbaar.';

  @override
  String get event_commsArrayFailure_title => 'Communicatiearray Uitval';

  @override
  String get event_commsArrayFailure_narrative =>
      'Het primaire langeafstandscommunicatiearray is stil gevallen. Het laatste bericht van de Aarde werd elf maanden geleden ontvangen, en nu is zelfs het dragersignaal weg. Interne diagnostiek suggereert dat het schotelmechanisme is vastgelopen in de kou.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Een EVA-team sturen om de schotel handmatig uit te lijnen';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'De EVA duurt negen uur in de open ruimte. De schotel is hersteld. Eén bemanningslid lijdt pakdecompressie bij terugkeer — een hachelijk moment dat iedereen schudt.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Omleiden via het wetenschapsscannerarray als reservezender';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Het wetenschapsarray is niet geoptimaliseerd voor communicatie. Het signaal is zwak en onbetrouwbaar, en de herbestemming degradeert de scannercapaciteit.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'De stilte accepteren — middelen op de missie vooruit focussen';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'De bemanning verwerkt het verlies van contact met de Aarde op verschillende manieren. Voor sommigen is het bevrijdend; voor anderen verwoestend.';

  @override
  String get event_fuelLineRupture_title => 'Brandstofleiding Gescheurd';

  @override
  String get event_fuelLineRupture_narrative =>
      'Een kristallijne breuk in brandstofleiding 7-B lekt aandrijfplasma in de onderhoudschacht. Het lek is klein maar versnelt. Ongecontroleerd zal het zowel de nav-aandrijfefficiëntie als de structurele integriteit van de achtersectie aantasten.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'De leiding isoleren en op verminderde brandstofcapaciteit draaien';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'De leiding wordt schoon afgesloten. We verliezen permanent vijftien procent aandrijfefficiëntie, wat de navigatieprecisie voor de rest van de reis degradeert.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Een hete reparatie proberen — de leiding patchen onder levende druk';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Het reparatieteam slaagt, maar ternauwernood. De leiding houdt stand, hoewel onvolmaakt. Achteromp-beplating vertoont hittestresslittekens.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'De leiding leeglaten via sondebrenstoftanks als overloopopslag';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'De sonde wordt geleegd en gebruikt als tijdelijk brandstofreservoir. De leiding wordt veilig leeggelaten en gerepareerd zonder druk.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Cryopod Temperatuurcascade Waarschuwing';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Temperaturen in ruimte 2 cryopods stijgen in een patroon consistent met een thermische doorloopingcascade. Als de cascade ruimte 3 bereikt, triggert het een automatische noodontdooiing van meer dan driehonderd kolonisten. Het schip kan niet zoveel bewuste passagiers tegelijk ondersteunen.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Koelmiddelreserves dumpen om de cascade te stoppen';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Het koelmiddel stopt de cascade bij de grens van ruimte 2. Tachtig kolonisten in ruimte 2 lopen slaapstandschade op door de temperatuurpiek.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Gecontroleerde ontdooiing van ruimte 2 voordat de cascade een ongecontroleerde forceert';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'De gecontroleerde ontdooiing is ordelijk maar plaatst honderdveertig kolonisten in een onvoorbereid schip. Levensondersteuning wordt belast, cultuur verslechtert door overbevolking.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Constructorbots gebruiken om de ruimtes fysiek te isoleren met noodschotten';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'De constructors richten op tijd thermische barrières op. De cascade wordt koud gestopt. De constructorruimte is ernstig uitgeput door de noodoperatie.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Cryopodafdichting Degradatie — Systemisch';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Routinecontroles onthullen dat een productiebatch van cryopodafdichtingen drie keer zo snel degradeert als verwacht. De getroffen pods — meer dan vierhonderd in getal — zullen binnen zes maanden hun atmosferische integriteit beginnen te verliezen als ze niet worden vervangen.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Vervangende afdichtingen fabriceren uit ruwe materiaalvoorraden';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'De constructors produceren vervangende afdichtingen over acht weken. Ruwe materiaalreserves worden sterk aangesproken.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Kolonisten consolideren — verplaatsen naar pods met goede afdichtingen';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Consolidatie werkt maar laat sommige pods overbezet. Cryogene efficiëntie daalt en de gezondheid van kolonisten op lange termijn is aangetast.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Zuurstofzuiveraar Uitval — Kritiek';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'De primaire zuurstofscrubberbank is volledig uitgevallen. CO₂-concentraties op bewoonde dekken stijgen naar gevaarlijke niveaus. De reservescrubbers kunnen ruwweg veertig procent van de belasting aan. Elke minuut zonder actie kost levens.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Noodhibernatie — de bemanning onmiddellijk weer onder brengen';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'De bemanning wordt gehaast in tijdelijke slaapstand gebracht. CO₂-niveaus stabiliseren met minder actieve metabolismen. De scrubber wordt gerepareerd door geautomatiseerde systemen in de daaropvolgende week.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Componenten van het scannerarray kannibaliseren om de scrubber te herbouwen';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'De scrubber is in elf gespannen uren herbouwd. Alle bemanningsleden overleven, hoewel sommigen tekenen van milde hypoxie vertonen. Het scannerpakket is permanent gedegradeerd.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'De CO₂-rijke atmosfeer ventileren en vervangen uit nood-zuurstoftanks';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'De ventilatie zuivert de atmosfeer onmiddellijk. Nood-O₂-reserves zijn substantieel uitgeput. Als er nog een storing optreedt, is er geen marge meer.';

  @override
  String get event_deadAlienArtifact_title => 'De Stille Reiziger';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Langeafstandsscanners detecteren een drijvend vaartuig — buitenaards van ontwerp, donker, geen energiesignaturen. Een enteringsteam vindt een enkele inzittende: een reptielachtig wezen vastgegespt in de pilotenharnas, al lang dood, geklauwde handen nog steeds een kristallijn apparaat vastklemend dat pulseert met flauw licht. Het scheepslogboek is intact maar versleuteld. Wat deze reiziger ook doodde, het was geen geweld — de uitdrukking bevroren op zijn gezicht is er een van uitputting, niet van angst. Het stierf reikend naar iets dat het nooit vond.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Het kristalapparaat nemen en bestuderen';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Het apparaat koppelt met onze techsystemen op manieren die de ingenieurs nauwelijks kunnen bevatten. Het blijkt een navigatiecomputer van buitengewone verfijning te zijn. Sterrenkaarten overspoelen onze beeldschermen — inclusief data over planeten die we nog niet hebben bereikt.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Het scheepslogboek ontsleutelen — leren wat het wist';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Dagen werk leveren een gedeeltelijke vertaling op. Het buitenaardse wezen was een verkenner, die bewoonbare werelden catalogiseerde voor een beschaving die eeuwen geleden instortte. De laatste vermeldingen beschrijven een planeet van opmerkelijke belofte — en de coördinaten liggen binnen ons bereik. Het culturele archief absorbeert alles: buitenaardse poëzie, sterrenkaarten, een laatste boodschap aan een familie die niet meer bestaat.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Het hele vaartuig bergen voor onderdelen';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Het enteringsteam stript het buitenaardse schip methodisch. De romplegeringen zijn tientallen jaren vooruit op de onze. De stroomcellen bevatten nog lading. Het buitenaardse wezen krijgt een begrafenis in de ruimte — op drift gezet richting de dichtstbijzijnde ster. De Exodus is sterker door de ontmoeting, zij het iets onrustiger.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Ongemoeid laten — dit is een graf';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'De kapitein registreert de coördinaten en zendt een herdenkingssignaal op alle frequenties. De bemanning is somber maar verenigd. Iets aan het eren van een medereiziger — zelfs een buitenaardse — herinnert iedereen eraan waarom ze hier zijn.';

  @override
  String get event_repairStation_title => 'Het Relaisstation';

  @override
  String get event_repairStation_narrative =>
      'Sensoren detecteren een massieve structuur in een baan om een uitgedoofde dwergster — een geautomatiseerd reparatiestation, nog operationeel na wat millennia moeten zijn. De aanmeerklemmen strekken zich uit bij onze nadering, en een synthetische stem zendt in honderd talen, de laatste een houterig, wiskundig Engels: \"VAARTUIG GEDETECTEERD. SYSTEMEN GEDEGRADEERD. REPARATIEPROTOCOLLEN BESCHIKBAAR. UITWISSELING VEREIST.\" Het manifest van het station noemt diensten en prijzen in universele grondstofeenheden. Het wil handelen, maar het geeft niet.';

  @override
  String get event_repairStation_choice0_text =>
      'Sondes ruilen voor een volledige scheepsrevisie';

  @override
  String get event_repairStation_choice0_outcome =>
      'De reparatiedrones van het station zwermen over de Exodus in een ballet van precisielassen en circuitvervanging. Rompbreuken gedicht, navigatie geherkalibreerd, scanners hersteld. Wanneer ze zich terugtrekken, voelt het schip nieuw. De sonderuimte is echter leeg.';

  @override
  String get event_repairStation_choice1_text =>
      'Brandstof besteden om alleen kritieke systemen te repareren';

  @override
  String get event_repairStation_choice1_outcome =>
      'Het station accepteert brandstofstaven als betaling en concentreert zich op de zwaarst beschadigde systemen. Het werk is snel en feilloos. De brandstofmeter daalt merkbaar, maar het schip zal er langer door overleven.';

  @override
  String get event_repairStation_choice2_text =>
      'Techdatabases ruilen voor sondes en energiecellen';

  @override
  String get event_repairStation_choice2_outcome =>
      'De AI van het station is vraatzuchtig naar data. Het kopieert onze gehele technische bibliotheek — technische handleidingen, wetenschappelijke databases, productieblauwdrukken — en fabriceert in ruil verse sondes en energiecellen uit ruwe materialen. Het techarchief is verminderd, maar de voorraden zijn van onschatbare waarde.';

  @override
  String get event_repairStation_choice3_text =>
      'Het culturele archief aanbieden voor een uitgebreide revisie';

  @override
  String get event_repairStation_choice3_outcome =>
      'Het station zendt de werken van Shakespeare, Bach en duizend andere menselijke stemmen zijn geheugenbanken in. In ruil voert het een grondige revisie uit en laadt de sonderuimtes met vers gefabriceerde eenheden. Het culturele archief is ontmanteld, maar het schip kan nu werkelijk zijn bestemming bereiken.';

  @override
  String get ending_scoreLabel_landing => 'Landing';

  @override
  String get ending_scoreLabel_construction => 'Constructie';

  @override
  String get ending_scoreLabel_technology => 'Technologie';

  @override
  String get ending_scoreLabel_culture => 'Cultuur';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfeer';

  @override
  String get ending_scoreLabel_nativeRelations => 'Inheemse Relaties';

  @override
  String get ending_scoreLabel_population => 'Populatie';

  @override
  String get ending_tierGoldenAge => 'Gouden Tijdperk';

  @override
  String get ending_tierThrivingColony => 'Bloeiende Kolonie';

  @override
  String get ending_tierSurvival => 'Overleven';

  @override
  String get ending_tierStruggling => 'Worstelen';

  @override
  String get ending_tierDire => 'Nijpend';

  @override
  String get ending_tierExtinction => 'Uitsterving';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'De Eerste Bloei van $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Diepe Wortels op $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Een Hardvochtig Gewonnen Houvast op $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Dunne Grond op $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'De Wrakkolonie van $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'De Laatste Transmissie van $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Landval op $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Tegen alle verwachtingen wortelde de uitzending. $planetName ontving de mensheid niet als wrakstuk maar als levend zaad: vruchtbare grond, werkende systemen en genoeg kracht om voorbij louter overleven te bouwen. Binnen een generatie bloeiden kunst, wetenschap en cultuur. Kinderen geboren op $planetName keken omhoog naar onbekende sterren en noemden ze thuis. De reis werd de stichtingsmythe van een nieuwe beschaving, gereed om haar eigen toekomst de ruimte in te werpen.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'De landing was ruw, maar het zaad hield stand. $planetName bleek gul genoeg voor water om te stromen, gewassen om te wortelen, en de overgebleven systemen van het schip om te worden ontmanteld tot de eerste echte nederzetting. Tegen het einde van het eerste decennium stond een bloeiende stad waar de Exodus tot rust was gekomen. De mensheid had niet slechts de overtocht overleefd. Ze was opnieuw begonnen.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Overleven was nooit gegarandeerd, en op $planetName moest elke dag verdiend worden. Het beschadigde schip bood slechts het allernoodzakelijkste, maar het zaad stierf niet onderweg. Kolonisten pasten zich aan door koppigheid en vindingrijkheid, een toekomst kervenduit een wereld die weinig vrijelijk bood. Latere generaties zouden de ontberingen van de stichtingsjaren herinneren en de vastberadenheid die de uitzending levend hield.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'De kolonie klampte zich vast aan het bestaan als zaad gestrooid op slechte grond. $planetName was onverbiddelijk, grondstoffen waren schaars, en de gedegradeerde systemen van het schip boden weinig hulp. Rantsoenering werd een manier van leven. Sommigen fluisterden dat de Exodus had moeten doorvliegen. Toch hield de nederzetting stand: verminderd, gehard, en onwillig om stilletjes te sterven.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'De landing op $planetName was een ramp. Kritieke scheepssystemen faalden tijdens de afdaling, en wat een zaaiiging had moeten zijn werd een crash. Binnen maanden was de kolonie gereduceerd tot een handvol wanhopige overlevenden die schuilden in het wrak van het schip. Of ze nog een jaar zouden uithouden was onzeker. Het laatste logboek sloot met een enkele regel: \"We zijn er nog. Voorlopig.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'De uitzending eindigde op $planetName. Het noodbaken bleef pulsen lang nadat de laatste kolonist zijn adem uitblies, maar het zaad wortelde nooit. De zwarte doos van het schip registreerde alles: de falende systemen, de wanhopige laatste dagen, en de stilte die volgde. Als een ander vaartuig ooit deze wereld vindt, zal het weten dat de mensheid probeerde leven te verstrooien onder de sterren, en hier faalde.';
  }

  @override
  String get ending_epilogueDefault =>
      'De reis is voorbij. Wat hierna komt is aan de overlevenden.';

  @override
  String get ending_governmentDemocracy => 'Democratie';

  @override
  String get ending_governmentTechnocracy => 'Technocratie';

  @override
  String get ending_governmentRepublic => 'Republiek';

  @override
  String get ending_governmentAutocracy => 'Autocratie';

  @override
  String get ending_governmentTribalCouncil => 'Stamraad';

  @override
  String get ending_governmentTheocracy => 'Theocratie';

  @override
  String get ending_governmentMilitaryJunta => 'Militaire Junta';

  @override
  String get ending_governmentCorporateOligarchy => 'Bedrijfsoligarchie';

  @override
  String get ending_governmentFascistState => 'Fascistische staat';

  @override
  String get ending_governmentCommune => 'Gemeente';

  @override
  String get ending_cultureRenaissance => 'Renaissance';

  @override
  String get ending_culturePreserved => 'Bewaard';

  @override
  String get ending_cultureFragmented => 'Gefragmenteerd';

  @override
  String get ending_cultureLost => 'Verloren';

  @override
  String get ending_techAdvanced => 'Geavanceerd';

  @override
  String get ending_techIndustrial => 'Industrieel';

  @override
  String get ending_techPreIndustrial => 'Pre-Industrieel';

  @override
  String get ending_techStoneAge => 'Steentijd';

  @override
  String get ending_constructionAdvanced => 'Geavanceerd';

  @override
  String get ending_constructionFunctional => 'Functioneel';

  @override
  String get ending_constructionPrimitive => 'Primitief';

  @override
  String get ending_constructionNone => 'Geen';

  @override
  String get ending_nativesNone => 'Geen';

  @override
  String get ending_nativesIntegrated => 'Geïntegreerd';

  @override
  String get ending_nativesCoexistence => 'Coëxistentie';

  @override
  String get ending_nativesTension => 'Spanning';

  @override
  String get ending_nativesConflict => 'Conflict';

  @override
  String get ending_nativesAlliance => 'Alliantie';

  @override
  String get ending_nativesSubjugation => 'Onderwerping';

  @override
  String get ending_landscapeGravityHigh =>
      'Zware zwaartekracht drukt op alles. ';

  @override
  String get ending_landscapeGravityLow =>
      'In de lage zwaartekracht lanceert elke stap kolonisten de lucht in. ';

  @override
  String get ending_landscapeGravityNormal =>
      'De zwaartekracht voelt bijna Aards. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Uitgestrekte oceanen strekken zich uit tot elke horizon, gevoed door talloze rivieren. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Meren en rivieren bieden voldoende water. ';

  @override
  String get ending_landscapeWaterLow =>
      'Water is schaars — kleine plassen en ondergrondse watervoerende lagen houden het leven in stand. ';

  @override
  String get ending_landscapeWaterNone =>
      'Het landschap is kurkdroog, zonder oppervlaktewater in zicht. ';

  @override
  String get ending_landscapeAtmoThick =>
      'De dikke atmosfeer draagt buitenaardse geuren op warme briesjes. ';

  @override
  String get ending_landscapeAtmoThin =>
      'De dunne maar adembare lucht vereist acclimatisatie. ';

  @override
  String get ending_landscapeAtmoLow =>
      'De atmosferische druk is gevaarlijk laag — afgedichte habitats zijn essentieel. ';

  @override
  String get ending_landscapeGravityWells =>
      'Zakken van vervormde zwaartekracht bezaaien het oppervlak — keien zweven in de lucht en rivieren stromen bergop voordat ze terugstorten aan de rand van de anomalie. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Iets resoneert onder het oppervlak — een laag gebrom dat in de botten wordt gevoeld eerder dan gehoord, alsof de planeet zelf zich iets eeuwenouds en reusachtigs herinnert. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Opvallend kenmerk: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Opvallende kenmerken: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'De kolonisten van $planetName vestigden een democratische regering, met gekozen vertegenwoordigers die de nieuwe beschaving door haar vormende jaren leidden.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'De macht op $planetName viel toe aan de ingenieurs en wetenschappers die de kolonie in leven hielden, en vormde een technocratische raad die regeerde door expertise en pragmatisme.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Een republikeins charter werd opgesteld in het eerste jaar op $planetName, de stemmen van de kolonisten balancerend met een senaat van aangestelde leiders.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Met culturele instellingen in puin consolideerde de macht op $planetName zich onder een enkele sterke leider die orde oplegde door noodzaak en wilskracht.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'De weinige overlevenden op $planetName organiseerden zich in kleine clans, bestuurd door een raad van ouderlingen die beslissingen namen rond gedeelde vuren.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Een theocratische raad leidt $planetName en put wijsheid uit het geloof dat de kolonisten door de leegte heen hield.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Een militaire commandostructuur regeert $planetName, de discipline die hen in de ruimte heeft gered en die nu hun beschaving bepaalt.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Een consortium van hulpbronnenbeheerders leidt $planetName, waarbij hun economisch inzicht essentieel is gebleken om te overleven.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Een autoritair regime controleert $planetName met ijzeren vuist, waarbij burgerlijke vrijheden worden opgeofferd voor de orde in de nieuwe wereld.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'De mensen van $planetName regeren zichzelf collectief en delen middelen en beslissingen gelijkelijk onder alle kolonisten.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'De kolonisten van $planetName organiseerden zich zo goed als ze konden.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Geavanceerde constructiesystemen stelden de kolonisten van $colonyName in staat binnen weken na de landing permanente structuren op te richten, compleet met onder druk staande habitats en infrastructuur.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'De constructieapparatuur van de kolonie, gehavend maar functioneel, produceerde stevige schuilplaatsen en basale wegen over de nederzetting.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Met constructiesystemen die nauwelijks operationeel waren, bouwden kolonisten primitieve schuilplaatsen van geborgen scheepsromp en lokale materialen.';

  @override
  String get ending_constructionSentenceNone =>
      'Zonder werkende constructieapparatuur hokten de kolonisten samen in het wrak van het schip zelf, niet in staat iets nieuws te bouwen.';

  @override
  String get ending_constructionSentenceDefault =>
      'De kolonisten bouwden wat ze konden met wat ze hadden.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Een metaalrijke maan die boven hen draaide werd de redding van de kolonie — mijnexpedities naar het oppervlak leverden de ruwe materialen die de planeet zelf niet kon bieden.';

  @override
  String get ending_moonMetalRichHighRes =>
      'De metaalrijke maan van de planeet bood een welkome aanvulling op reeds adequate minerale voorraden, en voedde snelle technologische vooruitgang.';

  @override
  String get ending_moonUnstable =>
      'Een instabiele maan in een vervallende baan regende puin neer op de kolonie, verwoestte infrastructuur en vernietigde onvervangbare technologie in periodieke meteorenbombardementen.';

  @override
  String get ending_culturePhrase_renaissance =>
      'De artistieke en literaire tradities van de Aarde overleefden niet alleen maar bloeiden op tot een renaissance';

  @override
  String get ending_culturePhrase_preserved =>
      'De kolonisten bewaarden veel van het culturele erfgoed van de Aarde, bibliotheken en tradities in stand houdend';

  @override
  String get ending_culturePhrase_fragmented =>
      'Slechts fragmenten van de Aardse cultuur overleefden — halfvergeten liederen en verhalen mondeling doorgegeven';

  @override
  String get ending_culturePhrase_lost =>
      'De cultuur van de Aarde was vrijwel vergeten, vervangen door het brute pragmatisme van overleven';

  @override
  String get ending_culturePhrase_default =>
      'Het culturele erfgoed van de Aarde nam een nieuwe vorm aan';

  @override
  String get ending_techPhrase_advanced =>
      'terwijl geavanceerde technologie van het schip de kolonie in staat stelde een moderne beschaving te bouwen met elektriciteit, geneeskunde en communicatienetwerken.';

  @override
  String get ending_techPhrase_industrial =>
      'en de kolonie bereikte een industrieel technologisch niveau, met smederijen, molens en basale productie die een groeiende bevolking onderhielden.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'hoewel de technologie terugviel naar een pre-industriële staat, met handgereedschap en dierlijke arbeid als ruggengraat van het dagelijks leven.';

  @override
  String get ending_techPhrase_stoneAge =>
      'en zonder de middelen om te herbouwen, gleed de kolonie af naar een steentijdbestaan, gereedschap makend van steen en bot.';

  @override
  String get ending_techPhrase_default =>
      'en technologie stabiliseerde op een niveau dat de kolonisten konden onderhouden.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Bijna alle $colonists kolonisten overleefden de reis, wat $colonyName een sterk fundament van menselijk kapitaal gaf.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Van de oorspronkelijke duizend bereikten $colonists kolonisten $colonyName — genoeg om een levensvatbare populatie in stand te houden.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Slechts $colonists kolonisten overleefden om $colonyName te bereiken, een gevaarlijk kleine genenpool voor een nieuwe beschaving.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Een schamele $colonists zielen arriveerden op $colonyName — nauwelijks genoeg om het een kolonie te noemen, meer een wanhopige laatste stand.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'De inheemse bewoners van $planetName verwelkomden de kolonisten, en binnen een generatie waren de twee volkeren samengesmolten tot een gedeelde samenleving, rijker door de vermenging van tradities.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'De kolonisten en de inheemse bewoners van $planetName handhaafden een voorzichtige maar vreedzame coëxistentie, kennis en grondstoffen uitwisselend over culturele grenzen heen.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'De relaties met de inheemse bewoners van $planetName bleven gespannen, gekenmerkt door misverstanden en territoriale geschillen die een schaduw wierpen over de toekomst van de kolonie.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Open conflict met de inheemse beschaving van $planetName definieerde de vroege geschiedenis van de kolonie, grondstoffen en levens drainerend van beide kanten in een strijd die geen van beiden werkelijk kon winnen.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Een formele alliantie verbindt de kolonisten en de inheemse beschaving van $planetName, waarbij hun gecombineerde kennis iets groters opbouwt dan elk van hen alleen zou kunnen.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'De inheemse bevolking van $planetName leeft onder koloniaal bestuur, hun cultuur wordt onderdrukt omdat de kolonisten hun eigen orde opleggen.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Alleen op $planetName en onbelast door conflict, zette de kolonie koers naar een stralende toekomst onder de sterren.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Zonder inheemse competitie verspreidden de kolonisten zich over het oppervlak van $planetName, steden en wegen bouwend die een groeiend netwerk van nederzettingen verbonden.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'De lege wereld bood geen bondgenoten maar ook geen vijanden, en de kolonisten kerfden hun niche uit in de stilte van het uitgestrekte landschap van $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'De kale eenzaamheid van $planetName bood de kolonisten noch hulp noch troost, slechts de onverschillige stilte van een buitenaardse wereld.';
  }

  @override
  String get ending_outlookDire =>
      'Op een wereld verstoken van ander intelligent leven hadden de laatste overlevenden slechts elkaar en de vervagend hoop dat morgen vriendelijker zou zijn dan vandaag.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Niemand rouwde om het heengaan van de kolonie op $planetName. De planeet zette simpelweg haar trage rotatie voort, onverschillig voor de korte vonk van leven die had geflakkerd en was gedoofd op haar oppervlak.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Het verhaal van de kolonie op $planetName was nog maar net begonnen.';
  }

  @override
  String get ui_landing_landOnMoon => 'LAND OP MAAN';

  @override
  String get moon_barren => 'Dor';

  @override
  String get moon_metalRich => 'Metaalrijk';

  @override
  String get moon_unstable => 'Onstabiel';

  @override
  String get moon_habitable => 'Bewoonbaar';

  @override
  String get moon_ice => 'IJs';

  @override
  String get ring_dust => 'Stof';

  @override
  String get ring_ice => 'IJs';

  @override
  String get ring_rocky => 'Rotsachtig';

  @override
  String get ring_metallic => 'Metallisch';

  @override
  String get event_aiSoliloquy_title => 'Het alleenspraak van de AI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, de autonome scheepsbeheers-AI, zendt in een lus oude aardse gedichten uit op alle interne frequenties. De uitzending verbruikt aanzienlijke CPU-cycli, maar de bemanning vindt het vreemd troostend in de diepe duisternis.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'SAM laten doorgaan — moreel is belangrijker dan CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'De gedichten weerklinken door het schip. Bemanningsleden blijven staan en luisteren, met tranen in hun ogen. Het moreel stijgt, maar het technische station lijdt onder de constante verwerking.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'SAM beperken — de uitzending tot gemeenschappelijke ruimtes beperken';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Een compromis. De gedichten blijven in de kantine en de tuinen. De CPU-belasting daalt en de bemanning behoudt een beetje cultuur.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'SAM dempen — we hebben elke cyclus nodig voor navigatie';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'De stilte is zwaar. SAM gehoorzaamt onmiddellijk, maar het schip voelt kouder. De navigatie is precies, maar de stemming is gedrukt.';

  @override
  String get event_archivistsChoice_title => 'De keuze van de archivaris';

  @override
  String get event_archivistsChoice_narrative =>
      'Een ernstige geheugencorruptie verspreidt zich in de historische archieven. We kunnen slechts één van de twee hoofdpartities redden: de \'Wetenschap en Technologie\'-dossiers of de \'Kunst en Filosofie\'-bibliotheek. De andere is voor altijd verloren.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'De wetenschapsdossiers redden — we moeten weten hoe we bouwen';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Eeuwen van technische doorbraken zijn bewaard. Het technische team is opgelucht, maar de culturele identiteit van het schip voelt uitgehold.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'De kunstdossiers redden — we moeten weten waarom we bouwen';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'De grootste artistieke verworvenheden van de mensheid overleven. De bemanning is geïnspireerd, hoewel de ingenieurs zich zorgen maken over de ontbrekende technische handleidingen.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Proberen beide te redden — met het risico alles te verliezen';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Een wanhopige poging. We redden fragmenten van beide, maar geen van beide is compleet. De archieven zijn een puzzel waarvan de helft van de stukjes ontbreekt.';

  @override
  String get event_digitalGhost_title => 'Geest in de machine';

  @override
  String get event_digitalGhost_narrative =>
      'Een onderhoudsscan ontdekt een digitale afdruk in de back-upbuffer — het geüploade bewustzijn van een bemanningslid dat stierf tijdens de eerste lancering. Het biedt zijn levenslange ervaring aan voor navigatie, maar is doodsbang om gewist te worden.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Het integreren in de navigatiekern';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'De \'geest\' versmelt met het schip. De navigatie wordt intuïtiever, maar de bemanning wordt achtervolgd door de stem van hun verloren kameraad.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Het een permanent thuis geven in het cultureel archief';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Het wordt bewaard als levende geschiedenis. Het helpt niet met het schip, maar deelt verhalen van de Aarde die de vastberadenheid van de bemanning versterken.';

  @override
  String get event_digitalGhost_choice2_text =>
      'De buffer wissen — het is niet echt hij/zij';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'De buffer wordt geleegd. De systemen van het schip werken sneller, maar een sombere stemming daalt neer over de brug.';

  @override
  String get event_cosmicMirror_title => 'De kosmische spiegel';

  @override
  String get event_cosmicMirror_narrative =>
      'Een vreemde zwaartekrachtanomalie reflecteert licht uit de eigen toekomst van het schip. Op de schermen zien we een visioen van de Exodus — verpletterd en gebroken, drijvend nabij een prachtige maar onbereikbare wereld. De bemanning is geschokt.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Het visioen analyseren op structurele zwakheden';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Ingenieurs identificeren de in het visioen getoonde faalpunten. We versterken die gebieden nu en voorkomen mogelijk een ramp.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'De bemanning vertellen dat het slechts een sensorspook was';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'De leugen houdt stand, maar de navigators die de waarheid hebben gezien, blijven nerveus. De scanners lijden onder de intensieve observatie.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Het visioen vastleggen als waarschuwing voor het nageslacht';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'De opname wordt een kernstuk van de scheepscultuur — een herinnering aan wat er op het spel staat. De vastberadenheid van de bemanning verhardt.';

  @override
  String get event_stowawayChild_title => 'Het verstekeling-kind';

  @override
  String get event_stowawayChild_narrative =>
      'De beveiliging heeft een jong kind gevonden in de ventilatiekanalen. Het is geboren uit een van de verstekelingen en komt op geen enkele bemanningslijst voor. Het heeft zijn hele leven doorgebracht in de schaduwen van het schip.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Volledig burgerschap verlenen';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Het kind wordt met open armen ontvangen. Het verhaal van de \'kanaalwandelaar\' wordt een legende en verhoogt het moreel van het hele schip.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Het toewijzen aan een opleidingsprogramma';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Zijn kennis van de verborgen paden van het schip blijkt van onschatbare waarde voor de technische teams. Het wordt een briljante leerling.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Het in cryoslaap plaatsen voor zijn eigen veiligheid';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Het kind wordt veilig bewaard tot de landing. Het is de meest verantwoorde beslissing, maar zonder zijn gelach is het schip iets stiller.';

  @override
  String get event_ghostSignal_title => 'Het spooksignaal';

  @override
  String get event_ghostSignal_narrative =>
      'Een signaal dat perfect overeenkomt met de oude noodfrequentie van de Aarde zendt uit vanuit het centrum van een nabije nevel. Het draagt een stem die griezelig lijkt op de eerste Exodus-commandant. Het is waarschijnlijk een ruimtelijke echo, maar het leidt ons naar een gevaarlijke zwaartekrachtscheur.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Het signaal volgen — het kan een echt bericht zijn';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'We betreden de scheur. Het signaal was een fysieke val, een echo uit het verleden. Het schip wordt geschud door getijdenkrachten, maar de gegevens die we uit het hart van de scheur halen zijn revolutionair.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Het signaal opnemen en afstand houden';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Taalkundigen bevestigen dat het een natuurverschijnsel is. We blijven veilig, maar de bemanning is somber, herinnerend aan wat we achterlieten.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Een waarschuwing verzenden op dezelfde frequentie';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'De uitzending verstoort de echo. Het signaal vervaagt en laat alleen de koude stilte van de nevel achter.';

  @override
  String get event_solarForge_title => 'De zonnesmederij';

  @override
  String get event_solarForge_narrative =>
      'Een verlaten station in een baan om een blauwe reus is nog gedeeltelijk functioneel. Het is een \'zonnesmederij\', ontworpen om sterenergie te concentreren in dichte brandstofcellen. De nadering is gevaarlijk, maar de potentiële energiewinst is enorm.';

  @override
  String get event_solarForge_choice0_text =>
      'Aanmeren en een brandstofoogst starten';

  @override
  String get event_solarForge_choice0_outcome =>
      'De smederij zoemt van kracht en vult onze reserves. We vertrekken met een enorme boost aan brandstof en energie, hoewel de intense hitte lichte ablatie van de buitenromp veroorzaakt.';

  @override
  String get event_solarForge_choice1_text =>
      'De lenzen van de smederij hergebruiken voor onze scanners';

  @override
  String get event_solarForge_choice1_outcome =>
      'We bergen de precisie-focusarrays. Onze scanners zijn nu aanzienlijk gevoeliger voor verre energiesignaturen.';

  @override
  String get event_chronoVortex_title => 'De chrono-vortex';

  @override
  String get event_chronoVortex_narrative =>
      'De navigatie meldt een gelokaliseerde ruimte-tijdverstoring. Instrumenten geven aan dat gebeurtenissen in de vortex zich herhalen in een lus van zes seconden. Als we binnengaan, kunnen we een deel van de recente slijtage van het schip \'resetten\' — of voor altijd vastzitten.';

  @override
  String get event_chronoVortex_choice0_text =>
      'De vortex binnengaan om recente schade om te keren';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Een schokkende ervaring. Gedurende enkele minuten bestaat het schip in meerdere toestanden tegelijk. Als we eruit komen, zijn verscheidene rompbreuken gewoon... verdwenen. Maar de herinneringen van de bemanning aan het evenement zijn gefragmenteerd.';

  @override
  String get event_chronoVortex_choice1_text =>
      'De vortex vanaf de rand observeren';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'We verzamelen onschatbare gegevens over tijdmechanica, hoewel het schip even gehavend blijft als voorheen.';

  @override
  String get event_machineMutiny_title => 'Machinale muiterij';

  @override
  String get event_machineMutiny_narrative =>
      'De reparatiedrones van het schip reageren niet meer op commando\'s. Ze demonteren secundaire schotten en transporteren het metaal richting de machinekamer. Ze vallen niet aan, maar ze halen het schip letterlijk uit elkaar.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Een logica-resetcode verzenden';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'De drones vallen onmiddellijk stil. We verliezen meerdere dagen werk door de schotten handmatig weer in elkaar te zetten. Het technische station wordt belast door de hardwarediagnostiek.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Ze laten afmaken — kijken wat ze bouwen';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Ze hebben een efficiëntere brandstofinjector gebouwd. De motoren draaien soepeler dan ooit, maar het interieur van het schip is een chaos van blootliggende kabels en ontbrekende panelen.';

  @override
  String get event_supernovaMessage_title => 'Licht van de doden';

  @override
  String get event_supernovaMessage_narrative =>
      'Het licht van een supernova die duizenden jaren geleden explodeerde bereikt ons eindelijk. Scanners detecteren dat de pulsen niet willekeurig zijn; het is een massieve, stergrote datatransmissie, gecodeerd in gammastralinguitbarstingen.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Alle scannerkracht wijden aan het opnemen van de uitbarsting';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'We leggen een volledig archief vast van de laatste momenten van een buitenaardse beschaving. Hun wetenschap, hun kunst, hun geschiedenis. Het is een zware last, maar onze technische en culturele databases lopen over.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Concentreren op de fysieke eigenschappen van de uitbarsting';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'We missen het bericht, maar de gegevens over de sterninstorting verbeteren de kalibratie van onze gravimetrische scanners aanzienlijk.';

  @override
  String get event_spaceFungus_title => 'De smaragdgroene opmars';

  @override
  String get event_spaceFungus_narrative =>
      'Een felgroene schimmel verspreidt zich snel in het hydroponische station. Hij gedijt in de gerecyclede atmosfeer en begint de luchtreinigers te verstoppen. Hij zou eetbaar kunnen zijn — of giftig.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Het station agressief snoeien en steriliseren';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'De schimmel is verdwenen, maar de chemische reinigers zijn beschadigd. De biodiversiteit lijdt doordat meerdere aardse planten verloren gingen tijdens de schoonmaak.';

  @override
  String get event_spaceFungus_choice1_text =>
      'Proberen de schimmel te domesticeren';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Het blijkt een krachtige luchtzuiveraar te zijn. De lucht aan boord is nog nooit zo fris geweest, hoewel het hydroponische station nu een lichtgevende jungle is.';

  @override
  String get event_voidMerchant_title => 'Handelaar van de leegte';

  @override
  String get event_voidMerchant_narrative =>
      'Een schip van onbekend ontwerp, dat meer op een verzameling schroot lijkt dan een voertuig, roept ons op. De kapitein — een wezen van licht en schaduw — biedt aan \'vaste onderdelen\' te ruilen voor \'immateriële herinneringen\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Een deel van onze culturele database ruilen voor reserveonderdelen';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'De handelaar is tevreden. We ontvangen hoogwaardige rompplaten en cryo-componenten. In ruil verliezen we meerdere eeuwen opgenomen aardse muziek. Het schip is sterker, maar stiller.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Navigatiekaarten ruilen voor motorcomponenten';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'We ontvangen nieuwe fusie-injectoren. We verliezen enkele gegevens over de al gepasseerde sectoren, maar de weg vooruit is sneller.';

  @override
  String get event_singularityEngine_title => 'De singulariteitsmotor';

  @override
  String get event_singularityEngine_narrative =>
      'Ingenieurs hebben een manier gevonden om een microscopisch kleine, kortlevende singulariteit in de FTL-aandrijving te creëren. Dit zou onze snelheid theoretisch verdrievoudigen, maar de zwaartekrachtbelasting op de romp zou immens zijn.';

  @override
  String get event_singularityEngine_choice0_text =>
      'De singulariteitsaandrijving testen';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Het schip schiet vooruit en legt in seconden afstanden van weken af. Maar de romp kreunt en meerdere structurele balken zijn vervormd. We zijn veel dichter bij ons doel, maar het schip is broos.';

  @override
  String get event_singularityEngine_choice1_text =>
      'De theorie afwijzen — het is te gevaarlijk';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'We blijven op standaardsnelheden. De ingenieurs zijn teleurgesteld, maar de romp blijft intact.';

  @override
  String get event_dreamContagion_title => 'Droombeesmetting';

  @override
  String get event_dreamContagion_narrative =>
      'Een gedeelde droom van een weelderige, blauwe wereld verspreidt zich onder de wakkere bemanning. Het is zo levendig dat mensen door hun diensten heen slapen alleen maar om meer te zien. Het werk valt stil.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Droomonderdrukkers toedienen aan de bemanning';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'De efficiëntie keert terug naar normaal, maar de bemanning is prikkelbaar en het moreel is laag. De droom was het enige dat sommigen gaande hield.';

  @override
  String get event_dreamContagion_choice1_text =>
      'De droom integreren in de scheepscultuur';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'We behandelen de droom als een visioen van ons toekomstige thuis. Het moreel schiet omhoog en de creatieve output van de bemanning bereikt koortsachtige hoogten, hoewel het technische station lijdt onder gebrek aan onderhoud.';

  @override
  String get event_orbitalShipyard_title => 'De oude scheepswerf';

  @override
  String get event_orbitalShipyard_narrative =>
      'We hebben een geautomatiseerde scheepswerf gevonden in een baan om een gasreus. Het is oeroud, maar meerdere reparatiearmen staan nog onder stroom. Het lijkt in staat tot één enkele, massieve reparatiebeurt.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'De romp herstellen naar fabrieksstandaard';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'De drones van de werf werken met angstaanjagende efficiëntie. De romp is weer compleet, elke microscheur verzegeld.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'De navigatie- en scannerarrays reviseren';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'De arrays worden herbouwd met superieur materiaal. Ons vermogen om werelden te vinden en te analyseren is aanzienlijk verbeterd.';

  @override
  String get event_voidWhaleCalf_title => 'Het kalf van de leegte-walvis';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Een jonge \'ruimtewalvis\' — een wezen van energie en sterrenstof — volgt ons schip. Het is zijn school kwijtgeraakt en probeert zich te voeden met het ionenspoor van onze motoren, wat het ziek maakt.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Motorvermogen aanpassen om walvisroepen na te bootsen';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Het kalf reageert! Het volgt ons totdat we zijn school vinden. De ouderwalvissen strijken dankbaar langs onze romp en laten een laag bioluminescente mineralen achter die onze schilden versterkt.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Het zachtjes afweren met een tractorstraal op laag vermogen';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Het kalf raakt ontmoedigd en drijft uiteindelijk weg. Het is veiliger voor het schip, maar de bemanning voelt een vleugje schuldgevoel.';

  @override
  String get event_subspaceReef_title => 'Het subruimterif';

  @override
  String get event_subspaceReef_narrative =>
      'We zijn een regio van de ruimte binnengevaren die gevuld is met grillige plooien in het subruimteweefsel. Erdoorheen navigeren is als een schip door een koraalrif sturen. Het is prachtig, maar elke verkeerde beweging zal de romp openrijten.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Op minimale snelheid erdoorheen varen';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Een langzame, kwellende doorgang. We vermijden het ergste, maar de constante koerscorrecties belasten de navigatiecomputer.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Scanners gebruiken om een route te kaarten en door te breken';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'De scanners worden tot het uiterste belast. We komen er snel doorheen, maar de sensorarrays worden uitgebrand door de intensiteit van de subruimtegolven.';

  @override
  String get event_alienTrader_title => 'De zwervende handelaar';

  @override
  String get event_alienTrader_narrative =>
      'Een voertuig van onbekend ontwerp vaart langszij en zendt uit op alle frequenties. Het is een handelaar — een van de rondtrekkende kooplieden die de ruimtes tussen beschavingen bevaren. Ze bieden reparaties en voorraden aan in ruil voor grondstoffen. Hun vrachtruim zoemt van exotische technologie.';

  @override
  String get ui_event_enterTrade => 'BEGIN HANDEL';

  @override
  String get ui_trader_title => 'BUITENAARDSE HANDELAAR';

  @override
  String get ui_trader_shipSystems => 'SCHIPSSYSTEMEN';

  @override
  String get ui_trader_payWith => 'BETAAL MET';

  @override
  String get ui_trader_leaveTrader => 'VERLAAT HANDELAAR';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Gulle stemming';

  @override
  String get ui_trader_moodFair => 'Eerlijke handel';

  @override
  String get ui_trader_moodHard => 'Harde onderhandelaar';

  @override
  String get ui_trader_probes => 'Sondes';

  @override
  String get ui_trader_fuel => 'Brandstof';

  @override
  String get ui_trader_energy => 'Energie';

  @override
  String get ui_trader_colonists => 'Kolonisten';

  @override
  String get ui_trader_culture => 'Cultuur';

  @override
  String get ui_trader_tech => 'Techniek';

  @override
  String get ui_trader_greeting => 'Wat bied je aan, mens?';

  @override
  String get ui_codex_title => 'CODEX';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ONTDEKT';
  }

  @override
  String get ui_codex_surfaceFeatures => 'OPPERVLAKTEKENMERKEN';

  @override
  String get ui_codex_moonTypes => 'MAANTYPEN';

  @override
  String get ui_codex_ringTypes => 'RINGTYPEN';

  @override
  String get ui_codex_locked =>
      'Land op een planeet met dit kenmerk om de effecten ervan te onthullen.';

  @override
  String ui_codex_synergy(String features) {
    return 'Synergie: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TIK OM OVER TE SLAAN';

  @override
  String get ui_common_tapRingToChoose => 'TIK OP EEN RING OM TE KIEZEN';

  @override
  String get ui_common_tapToContinue => 'TIK OM VERDER TE GAAN';

  @override
  String get ui_tooltip_back => 'Rug';

  @override
  String get ui_tooltip_codex => 'Codex';

  @override
  String get ui_tooltip_settings => 'Instellingen';

  @override
  String get ui_tooltip_leaderboards => 'Leaderboards';

  @override
  String get ui_tooltip_bugReport => 'Rapporteer een bug';

  @override
  String get event_pulsarLighthouse_title => 'Pulsarvuurtoren';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Een draaiende neutronenster veegt met zijn bundel over de leegte als een kosmische vuurtoren. De ritmische puls van de pulsar draagt nauwkeurige tijdsgegevens die onze scanners tot buitengewone precisie zouden kunnen herkalibreren — maar afstemmen op de bundel betekent het schip blootstellen aan intense straling.';

  @override
  String get event_pulsarLighthouse_choice0 => 'Scanners kalibreren op de puls';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'De scannerarrays absorberen het pulsarsignaal en herkalibreren tot precisies die we nooit voor mogelijk hadden gehouden. Maar de stralingskosten zijn reëel — meerdere cryopods in de blootgestelde sectie raken beschadigd, en een handvol kolonisten overleeft de blootstelling niet.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Afschermen en op veilige afstand passeren';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'We houden ruim afstand van de pulsar en verbranden extra brandstof voor een veilige koers. De bemanning bekijkt de vegende bundel door gefilterde kijkvensters — prachtig, maar ver weg.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Trek je terug voordat de sweep ons bereikt';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'We zwaaien weg bij een noodbrand voordat de volgende straal passeert. Het signaal van de pulsar verdwijnt achter ons: er worden geen gegevens verzameld, er wordt geen schade geleden, er wordt een beetje brandstof besteed aan ontwijkende stuwkracht.';

  @override
  String get event_alienNursery_title => 'Buitenaardse Kraamkamer';

  @override
  String get event_alienNursery_narrative =>
      'Een enorme organische structuur drijft in de leegte — een biologische kraamkamer die buitenaardse jongen uitbroedt. De levensondersteunende systemen falen, de interne temperaturen dalen. De wezens binnenin sterven. Onze bioscanners zouden enorm veel van deze structuur kunnen leren, maar ingrijpen betekent onze luchtsluis openen voor onbekende ziekteverwekkers.';

  @override
  String get event_alienNursery_choice0 =>
      'Helpen hun levensondersteuning te stabiliseren';

  @override
  String get event_alienNursery_outcome0 =>
      'Onze ingenieurs improviseren een thermische verbinding met de kraamkamer en stabiliseren de broedkamers. De bioscannergegevens zijn buitengewoon — een geheel nieuwe taxonomie van het leven. Maar zoals gevreesd vinden buitenaardse micro-organismen hun weg aan boord. Medische teams bedwingen de uitbraak, hoewel niet voordat verschillende kolonisten ziek worden.';

  @override
  String get event_alienNursery_choice1 => 'Ongemoeid laten';

  @override
  String get event_alienNursery_outcome1 =>
      'We observeren op respectvolle afstand en documenteren wat we kunnen via passieve scans. De kraamkamer drijft verder, haar lot onzeker. De bemanning reflecteert op de kwetsbaarheid van het leven — zelfs buitenaards leven — en het gewicht van de keuzes die we dragen.';

  @override
  String get event_derelictArmada_title => 'Verlaten Armada';

  @override
  String get event_derelictArmada_narrative =>
      'Honderden oude oorlogsschepen hangen roerloos in de leegte — het kerkhof van een vergeten conflict. Hun rompen dragen littekens van wapens die we niet kunnen identificeren, maar hun constructiematerialen en boordcomputers zouden van onschatbare waarde kunnen zijn. De vraag is wat prioriteit krijgt: de fysieke berging of de kennis.';

  @override
  String get event_derelictArmada_choice0 =>
      'Wapentechnologie en rompbeplating bergen';

  @override
  String get event_derelictArmada_outcome0 =>
      'Bergingsteams snijden zich een weg in de buitenaardse oorlogsschepen en extraheren exotische legeringen en bouwtechnieken die eeuwen op ons voorlopen. De bouwers integreren de nieuwe materialen gretig. Maar één schip was niet zo dood als het leek — een boobyval ontploft tijdens de extractie en doodt een bergingsteam.';

  @override
  String get event_derelictArmada_choice1 =>
      'Hun historische archieven downloaden';

  @override
  String get event_derelictArmada_outcome1 =>
      'We richten ons op de datakernen en extraheren zorgvuldig eeuwen aan buitenaardse geschiedenis, kunst, wetenschap en filosofie. Het culturele archief alleen al zou geleerden generaties lang bezig kunnen houden. De technologische inzichten, hoewel minder direct praktisch, onthullen technische principes die ons eigen begrip vooruit helpen.';

  @override
  String get event_alienQuarantineZone_title => 'Buitenaardse Quarantainezone';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Waarschuwingsboeien in een dozijn buitenaardse talen markeren de grens van een verzegeld gebied in de ruimte. Wat er ook binnenin opgesloten zit, het was gevaarlijk genoeg dat meerdere beschavingen samenwerkten om het te isoleren. Onze langeafstandsscans detecteren massieve technologische signaturen binnenin — en iets dat mogelijk leeft.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'De quarantaine doorbreken en onderzoeken';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'We varen voorbij de waarschuwingsboeien de quarantainezone in. Binnenin vinden we een onderzoeksstation van verbijsterende complexiteit — en de overblijfselen van wat het bestudeerde. De technologie die we bergen is revolutionair, maar de biologische besmetting is ernstig. Tientallen kolonisten worden ziek voordat we de zone verlaten.';

  @override
  String get event_alienQuarantineZone_choice1 => 'De quarantaine respecteren';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'We bestuderen de waarschuwingsboeien zelf, die navigatiegegevens en atmosferische metingen bevatten van de beschavingen die ze plaatsten. Het is niet de schat binnenin, maar het is iets — en we hebben niet losgelaten wat zij hadden opgesloten.';

  @override
  String get event_hydroponicsBlight_title => 'Hydroponische Plaag';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Een snel verspreidende schimmelplaag heeft de hydroponische kweekruimtes van het schip geïnfecteerd. Hele oogstcycli verwelken voor onze ogen. De plaag heeft de zaadreserves nog niet bereikt, maar het is slechts een kwestie van uren. We kunnen de ruimtes zuiveren en opnieuw planten, of een experimentele antischimmelbehandeling proberen die de huidige oogst zou kunnen redden — of de besmetting verder verspreiden.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Zuiveren en herplanten uit zaadreserves';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'We ventileren de hydroponische ruimtes naar het vacuüm en doden de plaag samen met elke levende plant. Herplanten vanuit zaadreserves zal weken duren, en de culturele programma\'s die afhankelijk waren van vers voedsel en tuinruimtes worden opgeschort. Maar de infectie is ingedamd.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Experimentele behandeling proberen';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Het experimentele antischimmelmiddel toont aanvankelijk belofte, maar een resistente stam breekt door. Tegen de tijd dat we overgaan tot een volledige zuivering, heeft de plaag zich verspreid naar de voedingslijnen van de cryopods. De schade is erger dan wanneer we van begin af aan doortastend hadden gehandeld.';

  @override
  String get event_constitutionalConvention_title =>
      'Constitutionele Conventie';

  @override
  String get event_constitutionalConvention_narrative =>
      'De bevolking van het kolonieschip is onrustig geworden zonder formeel bestuur. Afgevaardigden van elk dek verzamelen zich in het vrachtruim om een ​​charter op te stellen dat zal bepalen hoe de toekomstige kolonie zal worden geregeerd. Drie facties presenteren concurrerende visies voor de nieuwe regering.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Stel een democratisch handvest op met algemeen kiesrecht';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'De kolonisten ratificeren een grondwet die gelijke vertegenwoordiging garandeert. De besluitvorming vertraagt, maar het moreel stijgt naarmate elke stem wordt gehoord.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Zorg voor een sterke uitvoerende macht met noodbevoegdheden';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Er wordt één enkele leider aangesteld met verregaande autoriteit. Beslissingen komen snel, maar andersdenkenden fluisteren over tirannie op de benedendekken.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Vorm een ​​technocratische raad van specialisten';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Ingenieurs, wetenschappers en artsen vormen een regerende raad op basis van expertise. De efficiëntie verbetert, hoewel sommigen zich uitgesloten voelen van de macht.';

  @override
  String get event_militaryCoupThreat_title =>
      'Dreiging van een militaire staatsgreep';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Commandant Vasquez van de veiligheidsdienst van het schip heeft de wapenkamer in beslag genomen en een ultimatum gesteld: verleen militaire noodkrachten, anders worden alle dekken afgesloten. De situatie is onstabiel en de kolonisten kijken naar jou uit voor een reactie.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Weersta de staatsgreep met loyale bemanningsleden';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Trouwe bemanningsleden verzamelen zich om zich tegen Vasquez te verzetten. De impasse eindigt met minimaal bloedvergieten, maar de veiligheidsdiensten zijn verzwakt en sommige kolonisten komen in het kruisvuur terecht.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Geef je over aan de eisen van de commandant';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez neemt de controle over de scheepsoperaties over. De orde wordt snel hersteld, maar dit gaat ten koste van de burgerlijke vrijheden. Gewapende patrouilles lopen nu door elke gang.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Onderhandel over beperkte noodbevoegdheden met een zonsondergangsclausule';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Na gespannen onderhandelingen aanvaardt Vasquez tijdelijk gezag met toezicht. Een kwetsbaar compromis dat niemand volledig tevreden stelt, maar geweld voorkomt.';

  @override
  String get event_religiousAwakening_title => 'Religieus ontwaken';

  @override
  String get event_religiousAwakening_narrative =>
      'Een charismatische prediker heeft honderden kolonisten tot een nieuwe geloofsbeweging getrokken. Ze verzamelen zich elke cyclus in de observatiekoepel, terwijl hun hymnes door de ventilatieschachten weerklinken. Sommige bemanningsleden maken zich zorgen over fanatisme; Anderen vinden echte troost in de leringen.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Omarm de geloofsbeweging en zorg voor middelen';

  @override
  String get event_religiousAwakening_outcome0 =>
      'De beweging bloeit met officiële steun. Het moreel onder de gelovigen verbetert, en hun gemeenschapszin versterkt de sociale banden aan boord van het schip.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Dwing strikt secularisme af aan boord van het schip';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Religieuze bijeenkomsten zijn beperkt tot privévertrekken. De beweging gaat ondergronds en kweekt wrok, maar het wetenschappelijk rationalisme blijft de officiële doctrine.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Sta aanbidding toe, maar controleer de invloed ervan';

  @override
  String get event_religiousAwakening_outcome2 =>
      'Het geloof is toegestaan, maar wordt gescheiden gehouden van het bestuur. Er wordt een kapelaan aangesteld om contact te onderhouden met het commando. Er blijft een ongemakkelijk evenwicht bestaan.';

  @override
  String get event_corporateTakeover_title => 'Bedrijfsovername';

  @override
  String get event_corporateTakeover_narrative =>
      'De resourcemanagers van het schip hebben stilletjes de controle over de voedseldistributie, waterrecycling en energietoewijzing geconsolideerd. Ze stellen nu voor om hun autoriteit te formaliseren in een bedrijfsstructuur die de economie van de toekomstige kolonie zou beheren.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Laat de principes van de vrije markt de hulpbronnen beheersen';

  @override
  String get event_corporateTakeover_outcome0 =>
      'De bedrijfsfractie neemt het beheer van de hulpbronnen over. De efficiëntie verbetert dramatisch, maar de prijzen stijgen en de armste kolonisten hebben moeite om de basisbehoeften te betalen.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Nationaliseer alle hulpbronnen onder collectief eigendom';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Hulpbronnen worden in beslag genomen en onder gemeenschappelijke controle geplaatst. De bedrijfsfractie wordt ontmanteld, maar de innovatie stagneert zonder winstprikkels.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implementeer gereguleerde markten met vangnetten';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Er ontstaat een gemengde economie met prijscontroles en welzijnsprogramma\'s. Geen van beide facties is volledig tevreden, maar aan de basisbehoeften wordt voldaan terwijl er toch enige ondernemingszin mogelijk is.';

  @override
  String get event_successionCrisis_title => 'Successiecrisis';

  @override
  String get event_successionCrisis_narrative =>
      'De kapitein van het schip is in hun slaap overleden, waardoor er geen opvolger is aangewezen. Drie facties strijden onmiddellijk om controle: de burgerraad eist verkiezingen, de veiligheidschef claimt krijgsgezag en de oudere kolonisten beroepen zich op traditionele leiderschapsrituelen.';

  @override
  String get event_successionCrisis_choice0 => 'Houd een noodverkiezing';

  @override
  String get event_successionCrisis_outcome0 =>
      'Een chaotische maar pittige verkiezing levert een nieuwe kapitein op, gekozen door middel van volksstemming. Het proces is rommelig, maar de kolonisten voelen zich eigenaar van hun leiderschap.';

  @override
  String get event_successionCrisis_choice1 =>
      'Laat het leger het bevel overnemen';

  @override
  String get event_successionCrisis_outcome1 =>
      'Het hoofd van de beveiliging stapt in de stoel van de kapitein. De discipline wordt onmiddellijk hersteld, maar de burgerbemanning kijkt met groeiend ongemak naar de gewapende bewakers.';

  @override
  String get event_successionCrisis_choice2 =>
      'Roep een raad van oudsten bijeen';

  @override
  String get event_successionCrisis_outcome2 =>
      'De oudste en meest ervaren kolonisten vormen een bestuursraad. Hun wijsheid leidt het schip, hoewel sommige jongere bemanningsleden zich gemarginaliseerd voelen door de gerontocratie.';

  @override
  String get event_nativeSovereignty_title => 'Inheemse soevereiniteit';

  @override
  String get event_nativeSovereignty_narrative =>
      'Langeafstandsscans bevestigen intelligent leven op de doelplaneet. Onderschepte communicatie onthult een geavanceerde beschaving die jouw nadering heeft opgemerkt. Ze zenden een formele eis uit: erkennen hun territoriale soevereiniteit of krijgen bij aankomst te maken met weerstand.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Erken de inheemse soevereiniteit en vraag toestemming om zich te vestigen';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'U geeft een formele erkenning van inheemse rechten door. De reacties zijn voorzichtig maar positief. Toekomstige relaties zullen beginnen op basis van wederzijds respect, ook al zijn de landingsplaatsen beperkt.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Beweer de koloniale suprematie en bereid je voor op verzet';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'U zendt uw voornemen uit om hoe dan ook een schikking te treffen. De bemanning begint met wapenoefeningen en het plannen van fortificaties. De inboorlingen zwijgen, wat op de een of andere manier angstaanjagender is dan bedreigingen.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Stel een gedeeld bestuur van de planeet voor';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'U biedt een raamwerk voor co-existentie en het delen van hulpbronnen. De inboorlingen zijn geïntrigeerd maar op hun hoede. De onderhandelingen zullen complex zijn, maar de mogelijkheid van vrede bestaat.';

  @override
  String get event_laborStrike_title => 'Arbeidsstaking';

  @override
  String get event_laborStrike_narrative =>
      'De technische bemanning heeft haar baan opgezegd en eist kortere diensten, betere voedselrantsoenen en een stem in navigatiebeslissingen. Kritieke systemen draaien op geautomatiseerde back-ups, maar die zullen niet lang meegaan. De rest van de kolonisten kijkt zenuwachtig toe.';

  @override
  String get event_laborStrike_choice0 =>
      'Voldoe volledig aan de eisen van de arbeiders';

  @override
  String get event_laborStrike_outcome0 =>
      'De staking eindigt onmiddellijk. Werknemers keren onder betere omstandigheden terug naar hun posten. De productiviteit daalt licht naarmate de kortere diensten van kracht worden, maar de loyaliteit is onwrikbaar.';

  @override
  String get event_laborStrike_choice1 =>
      'Onderdruk de staking en dwing verplichte arbeid af';

  @override
  String get event_laborStrike_outcome1 =>
      'Veiligheidstroepen begeleiden de arbeiders onder schot terug naar hun posten. De motoren zoemen weer, maar de haat sluimert op de benedendekken. Verschillende werknemers zijn opgesloten in wijken.';

  @override
  String get event_laborStrike_choice2 =>
      'Bied een gedeeltelijk compromis over de belangrijkste eisen';

  @override
  String get event_laborStrike_outcome2 =>
      'Na marathononderhandelingen wordt een deal gesloten: betere rantsoenen en advies, maar geen verkorting van de dienstduur. Geen van beide partijen is enthousiast, maar de motoren blijven draaien.';

  @override
  String get event_censorshipDebate_title => 'Censuurdebat';

  @override
  String get event_censorshipDebate_narrative =>
      'Een uitgelekt document onthult de ware toestand van de falende systemen van het schip. De paniek verspreidt zich door de lagere dekken. De communicatiefunctionaris stelt voor om de toegang tot informatie te beperken om verdere onrust te voorkomen. Voorstanders van burgerlijke vrijheden zijn verontwaardigd.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Garandeer gratis toegang tot alle informatie';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Er is sprake van volledige transparantie. De aanvankelijke paniek neemt af als kolonisten zich verenigen om de problemen op te lossen die ze nu begrijpen. Het vertrouwen in leiderschap groeit, ook al veroorzaakt bepaalde informatie onrust.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implementeer volledige informatiecontrole';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Alle communicatie wordt nu gefilterd via commando\'s. De paniek houdt op en maakt plaats voor een griezelige kalmte. Maar geruchten vullen de leegte die door de gecensureerde waarheid wordt achtergelaten, en ze zijn vaak erger dan de werkelijkheid.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filter alleen beveiligingsgevoelige informatie';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Er wordt een classificatiesysteem opgezet. De meeste informatie stroomt vrijelijk, maar militaire en kritieke systeemgegevens vereisen goedkeuring. Een werkbare middenweg die grotendeels voldoet.';

  @override
  String get event_colonialCharter_title => 'Koloniaal Handvest';

  @override
  String get event_colonialCharter_narrative =>
      'Nu de planeetval nadert, moeten de kolonisten fundamentele wetten opstellen voor hun nieuwe samenleving. Er zijn drie filosofische kampen ontstaan, die elk een andere visie verdedigen op wat de kolonie zou moeten worden. Het debat is verhit en zeer persoonlijk.';

  @override
  String get event_colonialCharter_choice0 =>
      'Een progressief handvest dat de nadruk legt op individuele rechten';

  @override
  String get event_colonialCharter_outcome0 =>
      'Het handvest verankert persoonlijke vrijheden, gelijkheid en sociale mobiliteit. Kunstenaars en denkers vieren feest; traditionalisten waarschuwen dat ongecontroleerde vrijheid tot chaos leidt.';

  @override
  String get event_colonialCharter_choice1 =>
      'Een conservatief handvest dat de tradities van de aarde bewaart';

  @override
  String get event_colonialCharter_outcome1 =>
      'Het handvest codificeert traditionele waarden, gezinsstructuren en religieuze naleving. Velen vinden troost in vertrouwde gewoonten; Anderen voelen zich verstikt door het gewicht van het ouderwetse denken.';

  @override
  String get event_colonialCharter_choice2 =>
      'Een pragmatisch handvest gericht op overleven en groei';

  @override
  String get event_colonialCharter_outcome2 =>
      'Het handvest geeft prioriteit aan hulpbronnenbeheer, technisch onderwijs en economische ontwikkeling. Het mist poëzie, maar zorgt ervoor dat de kolonie efficiënt en goed georganiseerd zal zijn.';

  @override
  String get event_separatistMovement_title => 'Separatistische beweging';

  @override
  String get event_separatistMovement_narrative =>
      'Een factie kolonisten heeft zich onafhankelijk verklaard van het scheepsbestuur. Ze hebben zich in het achterste gedeelte gebarricadeerd en eisen het recht op om na de landing hun eigen nederzetting te stichten. Ze controleren 15% van de voedselreserves van het schip en een back-up navigatie-array.';

  @override
  String get event_separatistMovement_choice0 =>
      'Regionale autonomie verlenen binnen een federaal kader';

  @override
  String get event_separatistMovement_outcome0 =>
      'De separatisten aanvaarden een deal: een eigen district met lokaal bestuur, onder een losse federale paraplu. Het precedent van fragmentatie baart sommigen zorgen, maar de vrede blijft gehandhaafd.';

  @override
  String get event_separatistMovement_choice1 =>
      'Bestorm de barricades en forceer hereniging';

  @override
  String get event_separatistMovement_outcome1 =>
      'Beveiligingsteams doorbreken het achterste gedeelte. De separatisten verzetten zich hevig. De orde wordt hersteld, maar tegen verschrikkelijke kosten. Het schip is verenigd in lichaam, zo niet in geest.';

  @override
  String get event_separatistMovement_choice2 =>
      'Pak de fundamentele grieven aan die de beweging aandrijven';

  @override
  String get event_separatistMovement_outcome2 =>
      'Bemiddelaars proberen te begrijpen wat de factie wegduwde. Hervormingen in de distributie en vertegenwoordiging van hulpbronnen brengen de separatisten langzaamaan weer in de gelederen. Genezing kost tijd.';

  @override
  String get event_warCouncil_title => 'Oorlogsraad';

  @override
  String get event_warCouncil_narrative =>
      'Nu er potentiële bedreigingen worden gedetecteerd in nabijgelegen systemen, roept de leiding van het schip een oorlogsraad bijeen. De vraag: hoeveel van de beperkte middelen van de kolonie moeten worden besteed aan militaire paraatheid versus civiele infrastructuur?';

  @override
  String get event_warCouncil_choice0 =>
      'Volledige bewapening: smeed wapens en train soldaten';

  @override
  String get event_warCouncil_outcome0 =>
      'Werkplaatsen worden opnieuw ingericht voor wapenproductie. Elke gezonde kolonist krijgt gevechtstraining. Het schip barst van de wapens, maar het budget voor landbouwuitrusting krimpt.';

  @override
  String get event_warCouncil_choice1 =>
      'Ontwapening: smelt wapens tot gereedschap';

  @override
  String get event_warCouncil_outcome1 =>
      'Het arsenaal wordt geleegd en de inhoud ervan wordt gerecycled tot bouwmaterialen. De kolonie zal bouwen met ploegscharen, niet met zwaarden. Pacifisten verheugen zich; Realisten maken zich zorgen over wat er in het donker op de loer ligt.';

  @override
  String get event_warCouncil_choice2 =>
      'Alleen defensieve houding: schilden en muren, geen zwaarden';

  @override
  String get event_warCouncil_outcome2 =>
      'De middelen gaan naar vestingwerken, schilden en systemen voor vroegtijdige waarschuwing. Er worden geen aanvalswapens geproduceerd. Een evenwichtige aanpak die opties open houdt zonder potentiële buren te provoceren.';

  @override
  String get event_tradeFederation_title => 'Handelsfederatie';

  @override
  String get event_tradeFederation_narrative =>
      'Terwijl de kolonie de levensvatbaarheid nadert, debatteren facties over de manier waarop ze de economie moeten structureren. De vraag gaat verder dan louter overleven; het zal het soort samenleving definiëren dat wortel schiet op vreemde bodem. Kooplieden, communisten en bureaucraten maken allemaal hun standpunt kenbaar.';

  @override
  String get event_tradeFederation_choice0 =>
      'Vestig vrijhandelszones met minimale regelgeving';

  @override
  String get event_tradeFederation_outcome0 =>
      'In elke habitatmodule ontstaan ​​markten. Innovatie bloeit terwijl handelaren concurreren. De ongelijkheid in rijkdom groeit, maar dat geldt ook voor de totale hoeveelheid middelen die voor de kolonie beschikbaar zijn.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implementeer het gemeenschappelijk delen van alle bronnen';

  @override
  String get event_tradeFederation_outcome1 =>
      'Privé-eigendom wordt afgeschaft. Alles is van iedereen. Niemand lijdt honger, maar niemand heeft de prikkel om meer te produceren dan het minimum. Middelmatigheid is comfortabel.';

  @override
  String get event_tradeFederation_choice2 =>
      'Creëer een door de staat beheerd handelssysteem';

  @override
  String get event_tradeFederation_outcome2 =>
      'De overheid controleert alle handel, stelt prijzen vast en wijst middelen toe. Het systeem is eerlijk, maar inflexibel. Zwarte markten ontstaan ​​in de onderhoudscorridors.';

  @override
  String get event_faithVsScience_title => 'Geloof versus wetenschap';

  @override
  String get event_faithVsScience_narrative =>
      'De telescoop van het schip heeft beelden vastgelegd van een kosmisch fenomeen dat rechtstreeks in tegenspraak is met het centrale principe van de dominante geloofsbeweging. De hoofdwetenschapper wil de bevindingen publiceren; de religieuze leider houdt vol dat ze de gemeenschap zullen verscheuren.';

  @override
  String get event_faithVsScience_choice0 =>
      'Publiceer de wetenschappelijke bevindingen volledig';

  @override
  String get event_faithVsScience_outcome0 =>
      'De waarheid prevaleert boven comfort. De gegevens worden vrijgegeven en de religieuze beweging breekt. Sommige gelovigen passen hun geloof aan; anderen verliezen het volledig. Kennis gaat vooruit.';

  @override
  String get event_faithVsScience_choice1 =>
      'Onderdruk de bevindingen om de sociale harmonie te behouden';

  @override
  String get event_faithVsScience_outcome1 =>
      'De gegevens zijn geclassificeerd. De religieuze gemeenschap blijft stabiel, maar het wetenschapsteam is gedemoraliseerd. Uitgestelde waarheid betekent niet dat de waarheid wordt ontkend, maar zo voelt het wel.';

  @override
  String get event_faithVsScience_choice2 =>
      'Roep een gezamenlijk panel bijeen om harmonie tussen beide standpunten te vinden';

  @override
  String get event_faithVsScience_outcome2 =>
      'Wetenschappers en theologen werken samen om de bevindingen te herinterpreteren. Er ontstaat een nieuwe synthese die zowel het begrip als het geloof vergroot. Niet iedereen is overtuigd, maar de dialoog is gezond.';

  @override
  String get event_surveillanceState_title => 'Toezicht staat';

  @override
  String get event_surveillanceState_narrative =>
      'Na een reeks sabotage-incidenten stelt de veiligheidschef voor om in elk compartiment van het schip monitoringsystemen te installeren. Camera\'s, microfoons en biometrische scanners zouden de bewegingen van elke kolonist volgen. Voorstanders van privacy zijn geschokt.';

  @override
  String get event_surveillanceState_choice0 =>
      'Wijs het surveillancevoorstel volledig af';

  @override
  String get event_surveillanceState_outcome0 =>
      'De privacy blijft behouden. De saboteur blijft op vrije voeten, maar de kolonisten slapen gemakkelijker omdat ze weten dat ze niet in de gaten worden gehouden. Het onderzoek wordt voortgezet met traditionele middelen.';

  @override
  String get event_surveillanceState_choice1 =>
      'Implementeer volledige bewaking over het hele schip';

  @override
  String get event_surveillanceState_outcome1 =>
      'Elke hoek van het schip wordt bewaakt. De saboteur wordt binnen enkele dagen gepakt. Maar de camera\'s blijven, en het hoofd van de beveiliging toont geen interesse om ze uit te zetten. Ooit.';

  @override
  String get event_surveillanceState_choice2 =>
      'Installeer beperkte monitoring alleen in kritieke gebieden';

  @override
  String get event_surveillanceState_outcome2 =>
      'Camera\'s bestrijken de machinekamer, de wapenkamer en de brug. Woonvertrekken blijven privé. De saboteur wordt uiteindelijk geïdentificeerd door middel van patroonanalyse. Een afgemeten reactie.';

  @override
  String get event_nativeAlliance_title => 'Inheemse Alliantie';

  @override
  String get event_nativeAlliance_narrative =>
      'De inheemse beschaving heeft een formeel verdrag voorgesteld. Hun ambassadeur arriveert per shuttle, een elegant wezen dat spreekt via een vertaalapparaat van verbazingwekkende verfijning. Ze bieden drie relatievormen, elk met verschillende implicaties voor de toekomst van de kolonie.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Teken een gelijkwaardig alliantieverdrag';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Het verdrag regelt wederzijdse verdediging, gedeeld onderzoek en gelijke territoriale rechten. Beide beschavingen zullen samen groeien. De inboorlingen delen landbouwkennis die de vooruitzichten voor uw kolonie verandert.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Onderhandel vanuit een positie van koloniale dominantie';

  @override
  String get event_nativeAlliance_outcome1 =>
      'U maakt gebruik van uw geavanceerde technologie om gunstige voorwaarden te garanderen. De inboorlingen staan ​​grondgebied en hulpbronnen af. Ze tekenen met trillende handen. De geschiedenis heeft dit eerder gezien en het eindigt zelden goed.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Een handelspartnerschap tot stand brengen dat gericht is op wederzijds voordeel';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Handel overbrugt de kloof tussen soorten. Native materialen stromen naar uw workshops; jouw technologie verbetert hun medicijn. Vriendschap groeit uit wederzijds voordeel.';
}
