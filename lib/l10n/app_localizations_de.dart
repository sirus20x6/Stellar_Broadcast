// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'REISE BEGINNEN';

  @override
  String get ui_title_dailyVoyage => 'TAGESREISE';

  @override
  String get ui_title_dailyCompleted => 'TAGESREISE ABGESCHLOSSEN';

  @override
  String get ui_title_customSeed => 'EIGENER SEED';

  @override
  String get ui_title_legacyHub => 'VERMÄCHTNIS';

  @override
  String get ui_title_cancel => 'ABBRECHEN';

  @override
  String get ui_title_startVoyage => 'REISE STARTEN';

  @override
  String get ui_title_seedInvalid =>
      'Ungültiger Seed-Code. Verwenden Sie nur A–Z und 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SEK $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SAMEN: $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNER';

  @override
  String get ui_voyage_scanPlanet => 'PLANET SCANNEN';

  @override
  String get ui_voyage_noEnergy => 'KEINE ENERGIE';

  @override
  String get ui_voyage_pressOn => 'WEITER';

  @override
  String get ui_voyage_systemHull => 'Hülle';

  @override
  String get ui_voyage_systemNav => 'Navigation';

  @override
  String get ui_voyage_systemCryopods => 'Kryokapseln';

  @override
  String get ui_voyage_systemCulture => 'Kultur';

  @override
  String get ui_voyage_systemTech => 'Technik';

  @override
  String get ui_voyage_systemConstruct => 'Konstruktion';

  @override
  String get ui_voyage_systemShields => 'Schilde';

  @override
  String get ui_voyage_systemLanding => 'Landung';

  @override
  String get ui_voyage_scannerAtmo => 'Atmo-Scan';

  @override
  String get ui_voyage_scannerGrav => 'Grav-Scan';

  @override
  String get ui_voyage_scannerMineral => 'Mineral-Scan';

  @override
  String get ui_voyage_scannerLife => 'Bio-Scan';

  @override
  String get ui_voyage_scannerTemp => 'Temp-Scan';

  @override
  String get ui_voyage_scannerWater => 'Wasser-Scan';

  @override
  String get ui_voyage_narrative0 =>
      'Erdumlaufbahn frei. Kryokapseln stabil. Archivring gesichert.';

  @override
  String get ui_voyage_narrative1 =>
      'Äußerer Systemtransit nominal. Langstreckenscanner erweitern Suchbereich.';

  @override
  String get ui_voyage_narrative2 =>
      'Der Funkverkehr der Erde ist unter die Erfassungsschwelle gefallen.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Archivierte Koordinaten stimmen mit einem markierten System überein. Kurs wird angepasst.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Scanner-Arrays kalibrieren noch für Tiefraumauflösung.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Markiertes System voraus. Frühere Vermessungsdaten bleiben konsistent.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Schwaches Signal voraus. Planetarer Scan beginnt.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'FTL-Austritt abgeschlossen. Neues Sternsystem in Sicht.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Kryokapselbanken stabil. Sektorscan läuft.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Neuer Planet wird im Frontarray aufgelöst.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Stellare Kartographie markiert einen vielversprechenden Kandidaten.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instrumente haben eine weitere vermessenswerte Welt gefunden.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Scanner-Erfassung auf ein neues Ziel.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Navigationskarten aktualisiert. Kandidatenwelt in Reichweite.';

  @override
  String get ui_scan_landHere => 'HIER LANDEN';

  @override
  String get ui_scan_pressOn => 'WEITER';

  @override
  String get ui_scan_allStatsVerified => 'ALLE WERTE BESTÄTIGT';

  @override
  String get ui_scan_launchProbe => 'SONDE STARTEN';

  @override
  String get ui_scan_habitability => 'BEWOHNBARKEIT';

  @override
  String get ui_scan_statAtmos => 'ATMO';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'WASSER';

  @override
  String get ui_scan_statResource => 'RESSOURCEN';

  @override
  String get ui_scan_statGravity => 'GRAVITATION';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIE';

  @override
  String get ui_scan_statRadiation => 'STRAHLUNG';

  @override
  String ui_scan_probesCount(int count) {
    return 'SONDEN: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'UNSICHERHEIT: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'PLANETENANALYSE';

  @override
  String get ui_landing_shipStatus => 'SCHIFFSSTATUS';

  @override
  String ui_landing_fuel(int amount) {
    return 'TREIBSTOFF: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'WARNUNG: TREIBSTOFF NIEDRIG';

  @override
  String get ui_landing_landingRiskCritical => 'LANDERISIKO: KRITISCH';

  @override
  String get ui_landing_landingRiskElevated => 'LANDERISIKO: ERHÖHT';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Landesystem schwer beschädigt. Atmosphäreneintritt könnte Fracht und Kolonisten zerstören.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Landesystem beeinträchtigt. Erwarten Sie einen harten Atmosphäreneintritt mit möglichen Systemschäden.';

  @override
  String get ui_landing_riskAssessment => 'RISIKOBEWERTUNG';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Ihr Schiff kann noch ~$remaining weitere Begegnungen überstehen';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Ihr Schiff übersteht möglicherweise keine weitere Reise';

  @override
  String get ui_landing_surfaceFeatures => 'OBERFLÄCHENMERKMALE';

  @override
  String get ui_landing_nameYourColony => 'BENENNEN SIE IHRE KOLONIE';

  @override
  String get ui_landing_establishColony => 'KOLONIE GRÜNDEN';

  @override
  String get ui_landing_pressOnward => 'WEITERREISEN';

  @override
  String get ui_landing_statAtmosphere => 'Atmosphäre';

  @override
  String get ui_landing_statTemperature => 'Temperatur';

  @override
  String get ui_landing_statWater => 'Wasser';

  @override
  String get ui_landing_statResources => 'Ressourcen';

  @override
  String get ui_landing_statGravity => 'Gravitation';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversität';

  @override
  String get ui_landing_statAvgHealth => 'Ø Gesundheit';

  @override
  String get ui_landing_statHull => 'Hülle';

  @override
  String get ui_landing_statNavigation => 'Navigation';

  @override
  String get ui_landing_statCryopods => 'Kryokapseln';

  @override
  String get ui_landing_statCulture => 'Kultur';

  @override
  String get ui_landing_statTech => 'Technik';

  @override
  String get ui_landing_statConstructors => 'Konstrukteure';

  @override
  String get ui_landing_statShields => 'Schilde';

  @override
  String get ui_landing_statLandingSys => 'Landesystem';

  @override
  String get ui_ending_colonyEstablished => 'KOLONIE GEGRÜNDET';

  @override
  String get ui_ending_colonyScore => 'KOLONIEBEWERTUNG';

  @override
  String get ui_ending_colonyProfile => 'KOLONIEPROFIL';

  @override
  String get ui_ending_landscape => 'LANDSCHAFT';

  @override
  String get ui_ending_voyageRecord => 'REISEPROTOKOLL';

  @override
  String get ui_ending_scoreBreakdown => 'PUNKTEAUFSCHLÜSSELUNG';

  @override
  String get ui_ending_total => 'GESAMT';

  @override
  String get ui_ending_achievementsUnlocked =>
      'ERRUNGENSCHAFTEN FREIGESCHALTET';

  @override
  String get ui_ending_challengeFriend => 'FREUND HERAUSFORDERN';

  @override
  String get ui_ending_shareCard => 'KARTE TEILEN';

  @override
  String get ui_ending_shareCardDialogTitle => 'Teilen Sie Ihre Reise';

  @override
  String get ui_ending_shareCardShare => 'AKTIE';

  @override
  String get ui_ending_shareCardCancel => 'STORNIEREN';

  @override
  String get ui_ending_copySeed => 'SEED KOPIEREN';

  @override
  String get ui_ending_viewLegacy => 'VERMÄCHTNIS ANSEHEN';

  @override
  String get ui_ending_newVoyage => 'NEUE REISE';

  @override
  String get ui_ending_achievementFirstLanding => 'Erste Landung';

  @override
  String get ui_ending_achievementGoldenAge => 'Goldenes Zeitalter';

  @override
  String get ui_ending_achievementSurvivor => 'Überlebende';

  @override
  String get ui_ending_achievementExplorer => 'Entdecker';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfektionist';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'Todeswelt-Überlebende';

  @override
  String get ui_ending_achievementFullCrew => 'Volle Besatzung';

  @override
  String get ui_ending_achievementProbeMaster => 'Sondenmeister';

  @override
  String get ui_ending_achievementIronHull => 'Eiserne Hülle';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Vertrauenssprung';

  @override
  String get ui_gameOver_missionFailed => 'MISSION GESCHEITERT';

  @override
  String get ui_gameOver_voyageRecord => 'REISEPROTOKOLL';

  @override
  String get ui_gameOver_encountersSurvived => 'BEGEGNUNGEN ÜBERLEBT';

  @override
  String get ui_gameOver_probesRemaining => 'SONDEN VERBLEIBEND';

  @override
  String get ui_gameOver_colonistsRemaining => 'KOLONISTEN VERBLEIBEND';

  @override
  String get ui_gameOver_finalShipHealth => 'LETZTER SCHIFFSZUSTAND';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANETEN ÜBERSPRUNGEN';

  @override
  String get ui_gameOver_damageTaken => 'SCHADEN ERLITTEN';

  @override
  String get ui_gameOver_fuelRemaining => 'TREIBSTOFF VERBLEIBEND';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGIE VERBLEIBEND';

  @override
  String get ui_gameOver_challengeFriend => 'FREUND HERAUSFORDERN';

  @override
  String get ui_gameOver_viewLegacy => 'VERMÄCHTNIS ANSEHEN';

  @override
  String get ui_gameOver_newVoyage => 'NEUE REISE';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nIch habe nicht überlebt... $reason.\nGlaubst du, du schaffst es besser auf derselben Reise?\nstellarbroadcast://play?seed=$seedCode\n\nDu hast die App noch nicht?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Der letzte Kolonist starb im Kryoschlaf — ein Kaskadenversagen, das kein Notfallprotokoll verhindern konnte. Die Exodus segelte weiter, ein Geisterschiff, das nur noch automatisierte Systeme und gefrorene Stille trug. Ihre Mission war nicht in einem Moment der Katastrophe gescheitert, sondern in der langsamen Zermürbung menschlicher Leben, eines nach dem anderen, bis keines mehr übrig war.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Die Hülle gab lautlos nach — Materialermüdung, verschärft durch unzählige Mikroeinschläge, bis das Schiff nicht mehr zusammenhalten konnte. Die Atmosphäre entwich ins Vakuum. Das Kolonieschiff Exodus zerbrach, seine Trümmer gesellten sich zu den uralten Trümmerfeldern zwischen den Sternen. Kein Notsignal wurde je empfangen.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Ohne Navigation trieb die Exodus in unerforschten Raum — Sternkarten nutzlos, Kurskorrekturen unmöglich. Das Schiff segelte weiter durch die Dunkelheit, seine schlafenden Passagiere ahnungslos, dass ihr Ziel durch die Ewigkeit ersetzt worden war. Manche sagen, das Schiff treibt noch immer, ein Geisterschiff in der endlosen Nacht.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Eine nach der anderen versagten die Kryokapseln — eine Kaskade, die kein Notfallprotokoll aufhalten konnte. Die Kolonisten wachten nie auf. Die Exodus setzte ihren programmierten Kurs fort, ein Grabschiff, das nur Stille zu welcher Welt auch immer trug, die es schließlich erreichen würde. Ein Denkmal für einen Traum, der im gefrorenen Schlaf starb.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Die Exodus verstummte. Ihre Mission, ihre Besatzung, ihre Fracht menschlicher Hoffnung — alles verloren an die gleichgültige Weite zwischen den Sternen. Vielleicht wird eines Tages eine andere Zivilisation die Trümmer finden und sich fragen, welche mutige Spezies es gewagt hat, die Leere zu durchqueren.';

  @override
  String get ui_settings_title => 'EINSTELLUNGEN';

  @override
  String get ui_settings_music => 'MUSIK';

  @override
  String get ui_settings_soundEffects => 'SOUNDEFFEKTE';

  @override
  String get ui_settings_haptics => 'HAPTIK';

  @override
  String get ui_settings_premium => 'PRÄMIE';

  @override
  String get ui_settings_goPremium => 'Premium werden';

  @override
  String get ui_settings_enabled => 'Aktiviert';

  @override
  String get ui_settings_volume => 'Lautstärke';

  @override
  String get ui_settings_language => 'Sprache';

  @override
  String get ui_settings_systemDefault => 'Systemstandard';

  @override
  String get ui_settings_statsPosition =>
      'Statistiken und Schaltflächenposition';

  @override
  String get ui_settings_statsLeft => 'LINKS';

  @override
  String get ui_settings_statsRight => 'RECHTS';

  @override
  String get ui_legacy_title => 'VERMÄCHTNIS';

  @override
  String get ui_legacy_commanderStats => 'KOMMANDANTENSTATISTIK';

  @override
  String get ui_legacy_highScores => 'BESTENLISTE';

  @override
  String get ui_legacy_upgrades => 'UPGRADES';

  @override
  String get ui_legacy_achievements => 'ERRUNGENSCHAFTEN';

  @override
  String get ui_legacy_voyageLog => 'REISELOGBUCH';

  @override
  String get ui_legacy_voyages => 'REISEN';

  @override
  String get ui_legacy_bestScore => 'BESTER WERT';

  @override
  String get ui_legacy_legacyPts => 'VERMÄCHTNISPUNKTE';

  @override
  String get ui_legacy_completed => 'ABGESCHLOSSEN';

  @override
  String get ui_legacy_notYetPlayed => 'NOCH NICHT GESPIELT';

  @override
  String get ui_legacy_dailyHistory => 'TAGESVERLAUF';

  @override
  String get ui_premium_goPremium => 'PREMIUM WERDEN';

  @override
  String get ui_premium_subtitle =>
      'Unterstütze die Mission. Verbessere dein Kommando.';

  @override
  String get ui_premium_removeAds => 'Alle Werbung für immer entfernen';

  @override
  String get ui_premium_supportIndie => 'Indie-Entwicklung unterstützen';

  @override
  String get ui_premium_exclusiveTitle => 'Exklusiver Kommandantentitel';

  @override
  String get ui_premium_priorityFeatures => 'Bevorzugte Feature-Wünsche';

  @override
  String get ui_premium_lifetime => 'Lebenslang';

  @override
  String get ui_scannerUpgrade_title => 'SCANNER-UPGRADE';

  @override
  String get ui_scannerUpgrade_subtitle => 'Wähle einen Scanner zum Aufrüsten';

  @override
  String get ui_scannerUpgrade_skip => 'ÜBERSPRINGEN';

  @override
  String get ui_scannerUpgrade_max => 'MAX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosphärisch';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrisch';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Lebenszeichen';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperatur';

  @override
  String get ui_scannerUpgrade_water => 'Wasser';

  @override
  String get ui_event_continue => 'WEITER';

  @override
  String get ui_event_tapToSkip => 'TIPPEN ZUM ÜBERSPRINGEN';

  @override
  String get ui_event_colonists => 'KOLONISTEN';

  @override
  String get ui_event_landing => 'LANDUNG';

  @override
  String get ui_event_atmScan => 'ATM-SCAN';

  @override
  String get ui_event_gravScan => 'GRAV-SCAN';

  @override
  String get ui_event_minScan => 'MIN-SCAN';

  @override
  String get ui_event_lifeScan => 'BIO-SCAN';

  @override
  String get ui_event_tempScan => 'TEMP-SCAN';

  @override
  String get ui_event_h2oScan => 'H2O-SCAN';

  @override
  String get onboarding_page0_title => 'Die letzte Hoffnung der Menschheit';

  @override
  String get onboarding_page0_description =>
      'Die Erde stirbt. Die Regierungen der Welt haben ihre letzten Reserven zusammengelegt, um ein letztes Schiff zu bauen — ein Kolonieschiff, das die Überreste der Menschheit zu den Sternen trägt.';

  @override
  String get onboarding_page1_title => 'Suche eine neue Heimat';

  @override
  String get onboarding_page1_description =>
      'Navigiere durch die unerforschte Leere zwischen den Sternen. Scanne fremde Welten, stelle dich kosmischen Gefahren und triff unmögliche Entscheidungen.';

  @override
  String get onboarding_page2_title => 'Dein Vermächtnis überdauert';

  @override
  String get onboarding_page2_description =>
      'Jede Reise lehrt die Menschheit etwas Neues. Verdiene Vermächtnispunkte, um permanente Upgrades freizuschalten, und schreibe deinen Namen in die Sterne.';

  @override
  String get onboarding_page3_title => 'Deine Privatsphäre, deine Wahl';

  @override
  String get onboarding_page3_description =>
      'Wähle, wie du Stellar Broadcast erleben möchtest.';

  @override
  String get planet_tierUtopia => 'Utopie';

  @override
  String get planet_tierParadise => 'Paradies';

  @override
  String get planet_tierHabitable => 'Bewohnbar';

  @override
  String get planet_tierHarsh => 'Unwirtlich';

  @override
  String get planet_tierHostile => 'Feindlich';

  @override
  String get planet_tierDeathWorld => 'Todeswelt';

  @override
  String get planet_featurePlantLife => 'Pflanzenleben';

  @override
  String get planet_featureEdiblePlants => 'Essbare Pflanzen';

  @override
  String get planet_featurePoisonousPlants => 'Giftige Pflanzen';

  @override
  String get planet_featureUnicellularLife => 'Einzelliges Leben';

  @override
  String get planet_featureDangerousFauna => 'Gefährliche Fauna';

  @override
  String get planet_featureTameableFauna => 'Zähmbare Fauna';

  @override
  String get planet_featureAirtightCaves => 'Luftdichte Höhlen';

  @override
  String get planet_featureInsulatedCaves => 'Isolierte Höhlen';

  @override
  String get planet_featureBarrenMoon => 'Karger Mond';

  @override
  String get planet_featureMetalRichMoon => 'Metallreicher Mond';

  @override
  String get planet_featureUnstableMoon => 'Instabiler Mond';

  @override
  String get planet_featureOutstandingBeauty => 'Außergewöhnliche Schönheit';

  @override
  String get planet_featureOutstandingUgliness =>
      'Außergewöhnliche Hässlichkeit';

  @override
  String get planet_featureAncientRuins => 'Antike Ruinen';

  @override
  String get planet_featureMonuments => 'Monumente';

  @override
  String get planet_featureRapidRotation => 'Schnelle Rotation';

  @override
  String get planet_featureSlowRotation => 'Langsame Rotation';

  @override
  String get planet_featureVolcanicActivity => 'Vulkanische Aktivität';

  @override
  String get planet_featureTectonicInstability => 'Tektonische Instabilität';

  @override
  String get planet_featureElectricalStorms => 'Elektrische Stürme';

  @override
  String get planet_featureToxicSpores => 'Toxische Sporen';

  @override
  String get planet_featureDeepOceans => 'Tiefe Ozeane';

  @override
  String get planet_featureGeothermalVents => 'Geothermale Quellen';

  @override
  String get planet_featureStrongMagnetosphere => 'Starke Magnetosphäre';

  @override
  String get planet_featureWeakMagnetosphere => 'Schwache Magnetosphäre';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Symbiotische Organismen';

  @override
  String get planet_featureGravityWells => 'Gravitationssenken';

  @override
  String get planet_featureSubspaceEchoes => 'Subraum-Echos';

  @override
  String get planet_featureBioluminescentLife => 'Biolumineszentes Leben';

  @override
  String get planet_featureAquaticMegafauna => 'Aquatische Megafauna';

  @override
  String get planet_featureFloatingIslands => 'Schwebende Inseln';

  @override
  String get planet_featureCrystalCaverns => 'Kristallhöhlen';

  @override
  String get planet_featureLavaTubes => 'Lavaröhren';

  @override
  String get planet_featureIceTunnels => 'Eistunnel';

  @override
  String get planet_featureOrbitalWreckage => 'Orbitale Trümmer';

  @override
  String get planet_featureMegastructuralFragments => 'Megastruktur-Fragmente';

  @override
  String get planet_featureAncientObservatory => 'Altes Observatorium';

  @override
  String get planet_featureExtremeSeasons => 'Extreme Jahreszeiten';

  @override
  String get planet_featureCryovolcanism => 'Kryovulkanismus';

  @override
  String get planet_featureFloatingKelpForests => 'Schwebende Kelpwälder';

  @override
  String get planet_featureSingingCrystals => 'Singende Kristalle';

  @override
  String get planet_featureFertileSoil => 'Fruchtbarer Boden';

  @override
  String get planet_featureHelium3Deposits => 'Helium-3-Vorkommen';

  @override
  String get planet_featureExoticIsotopes => 'Exotische Isotope';

  @override
  String get planet_featureMedicinalFlora => 'Medizinische Flora';

  @override
  String get planet_featurePerpetualAurora => 'Ewige Aurora';

  @override
  String get planet_featurePetrifiedMegaflora => 'Versteinerte Megaflora';

  @override
  String get planet_featureUndergroundRivers => 'Unterirdische Flüsse';

  @override
  String get planet_featureObsidianPlains => 'Obsidianebenen';

  @override
  String get planet_featureSaltFlats => 'Salzwüsten';

  @override
  String get planet_featureCarnivorousFlora => 'Fleischfressende Flora';

  @override
  String get planet_featureGhostCities => 'Geisterstädte';

  @override
  String get planet_featureArchiveVaults => 'Archivtresore';

  @override
  String get planet_featureSinkholeFields => 'Sinkhole-Felder';

  @override
  String get planet_featureApexPredator => 'Apex-Raubtier';

  @override
  String get ui_monthJan => 'JAN';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MÄR';

  @override
  String get ui_monthApr => 'APR';

  @override
  String get ui_monthMay => 'MAI';

  @override
  String get ui_monthJun => 'JUNI';

  @override
  String get ui_monthJul => 'JULI';

  @override
  String get ui_monthAug => 'AUG';

  @override
  String get ui_monthSep => 'SEP';

  @override
  String get ui_monthOct => 'OKT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DEZ';

  @override
  String get event_asteroidField_title => 'Asteroidenfeld';

  @override
  String get event_asteroidField_narrative =>
      'Langstreckenscanner erfassen ein dichtes Asteroidenfeld direkt in unserem Flugpfad. Die Navigation berechnet zwei Optionen: einen riskanten Durchbruch durch den dünnsten Korridor oder einen langen Umweg, der unsere Treibstoffreserven belastet und das Navigationssystem strapaziert.';

  @override
  String get event_asteroidField_choice0_text =>
      'Durch den Korridor durchbrechen';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Das Schiff erzittert unter Mikroeinschlägen, die die Hülle treffen. Wir schaffen es hindurch, aber nicht unbeschadet.';

  @override
  String get event_asteroidField_choice1_text => 'Den langen Weg nehmen';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Der Umweg verbraucht wertvollen Treibstoff und belastet den Navigationscomputer, aber die Hülle bleibt intakt.';

  @override
  String get event_asteroidField_choice2_text =>
      'Bergbaudrohnen einsetzen, um einen Weg freizuräumen';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Die Drohnen schneiden einen sicheren Kanal und sammeln nützliche Mineralien, aber die Operation erschöpft die Technikbucht.';

  @override
  String get event_asteroidField_choice3_text =>
      'Eine Sonde als Köder einsetzen';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Die Sonde zieht die dichtesten Ansammlungen vom Schiff weg. Wir schlüpfen mit nur leichten Kratzern hindurch.';

  @override
  String get event_solarFlare_title => 'Sonneneruption';

  @override
  String get event_solarFlare_narrative =>
      'Ein naher Stern bricht mit einer massiven koronalen Ausstoßung aus. Die Welle geladener Teilchen wird uns in Minuten erreichen. Wir können Energie auf die Schilde umleiten, Kolonisten im Kern unterbringen oder es aussitzen.';

  @override
  String get event_solarFlare_choice0_text =>
      'Alle Energie auf Schilde umleiten';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Die Schilde halten, aber der Energiestoß verbrennt sekundäre Systeme.';

  @override
  String get event_solarFlare_choice1_text =>
      'Kolonisten in den geschirmten Kern verlegen';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Die Kolonisten überleben unverletzt, aber die äußeren Decks erleiden Strahlungsschäden.';

  @override
  String get event_solarFlare_choice2_text =>
      'Aussitzen — alle Mann festhalten';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Die Eruption trifft hart. Systeme flackern, aber nichts Katastrophales. Die Moral jedoch leidet.';

  @override
  String get event_solarFlare_choice3_text =>
      'Eine Sonde zur Messung der Wellenfront starten';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Die Sonde übermittelt präzise Wellenfrontdaten, die uns ermöglichen, das Schiff optimal auszurichten. Scannerschäden sind minimal.';

  @override
  String get event_nebulaPassage_title => 'Nebeldurchquerung';

  @override
  String get event_nebulaPassage_narrative =>
      'Ein leuchtender Nebel erstreckt sich über unseren Weg. Die Durchquerung könnte unsere Energiezellen aufladen, aber die Scanner-Arrays stören. Ein Umweg ist sicher, aber langsam.';

  @override
  String get event_nebulaPassage_choice0_text => 'Durch den Nebel fliegen';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Die ionisierten Gase des Nebels laden die Energiezellen auf, bringen aber unsere Scanner-Kalibrierung durcheinander.';

  @override
  String get event_nebulaPassage_choice1_text => 'Am Rand entlangfliegen';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Wir erhalten eine teilweise Aufladung bei minimaler Störung. Ein sicherer Kompromiss.';

  @override
  String get event_microMeteorite_title => 'Mikrometeoritensturm';

  @override
  String get event_microMeteorite_narrative =>
      'Ein Schwarm von Mikrometeoriten, bis vor Sekunden unsichtbar, zerfetzt die vordere Hüllenverkleidung. Schadensbegrenzungsteams sind in vollem Einsatz.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Notrotation — das gepanzerte Heck präsentieren';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Das Manöver funktioniert. Die Heckpanzerung absorbiert das Schlimmste, aber die Navigationskreisel protestieren heftig.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Reparaturdrohnen mitten im Sturm einsetzen';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drohnen flicken die Hülle in Echtzeit, aber einige gehen verloren. Technikreserven sind erschöpft.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Eine Sonde zünden, um den Schwarm zu zerstreuen';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Die Explosion der Sonde zerstreut den Mikrometeoritencluster. Nur wenige Fragmente erreichen die Hülle.';

  @override
  String get event_gravityWell_title => 'Unbekannte Gravitationssenke';

  @override
  String get event_gravityWell_narrative =>
      'Das Schiff wird durchgeschüttelt, als eine unsichtbare Gravitationssenke uns vom Kurs ablenkt. Die Triebwerke kämpfen gegen den Sog. Wir können mit voller Kraft ausbrechen oder einen Schleuderflug für einen Geschwindigkeitsschub auf Kosten struktureller Belastung nutzen.';

  @override
  String get event_gravityWell_choice0_text => 'Vollschub — losreißen';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Die Triebwerke brüllen und die Hülle ächzt, aber wir kommen sauber frei.';

  @override
  String get event_gravityWell_choice1_text => 'Schleuder-Manöver';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Der Schleuderflug gelingt wunderbar. Wir gewinnen an Geschwindigkeit, aber die G-Kräfte belasten die Kryokapseldichtungen.';

  @override
  String get event_crewUnrest_title => 'Unruhe an Bord';

  @override
  String get event_crewUnrest_narrative =>
      'Eine Fraktion erwachter Kolonisten bittet den Steward-Rat, dauerhaft aus dem Kryoschlaf entlassen zu werden. Sie argumentieren, dass das Leben im gefrorenen Dämmerzustand unmenschlich sei. Das Kryostation-Personal warnt, dass mehr wache Münder das Durchbrennen der Vorräte bedeuten.';

  @override
  String get event_crewUnrest_choice0_text => 'Freiwilliges Auftauen erlauben';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Die Moral steigt, als Familien in der wachen Welt wiedervereint werden, aber der Ressourcenverbrauch steigt sprunghaft.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Antrag ablehnen — Sicherheit geht vor';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Die Kolonisten fügen sich, aber Unmut schwelt in den Korridoren.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Kompromiss — rotierende Auftauzyklen';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Eine ausgewogene Lösung. Jeder bekommt etwas Wachzeit, aber die Kryokapselzyklen verursachen Verschleiß.';

  @override
  String get event_stowaway_title => 'Blinder Passagier entdeckt';

  @override
  String get event_stowaway_narrative =>
      'Manifest-Prüfer finden eine nicht registrierte Person, die sich in Frachtraum 7 versteckt. Sie behauptet, eine Genetikerin zu sein, der ein Platz auf der Startliste verweigert wurde. Ihre Fähigkeiten könnten unschätzbar wertvoll sein — oder sie könnte eine Saboteurin sein.';

  @override
  String get event_stowaway_choice0_text =>
      'Willkommen an Bord — wir brauchen jeden Verstand';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez erweist sich als brillant. Ihre genetische Expertise verbessert die Kryokapseleffizienz, obwohl manche ihr misstrauen.';

  @override
  String get event_stowaway_choice1_text =>
      'Einsperren — Vertrauen muss verdient werden';

  @override
  String get event_stowaway_choice1_outcome =>
      'Sie kooperiert aus dem Gewahrsam heraus und erhält schließlich eingeschränkten Zugang. Die Besatzung fühlt sich sicherer.';

  @override
  String get event_stowaway_choice2_text =>
      'Zurück in den Kryoschlaf bis zur Landung';

  @override
  String get event_stowaway_choice2_outcome =>
      'Eine pragmatische Lösung. Ihre Fähigkeiten werden für später bewahrt, aber die ethische Debatte spaltet die Besatzung.';

  @override
  String get event_mutinyBrewing_title => 'Meuterei braut sich zusammen';

  @override
  String get event_mutinyBrewing_narrative =>
      'Die Brückenwache fängt Nachrichten einer Gruppe von Offizieren ab, die planen, das Kommando zu übernehmen und den Kurs zu einem näheren, weniger bewohnbaren System zu ändern. Sie glauben, der aktuelle Kurs sei ein Todesurteil.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Öffentlich konfrontieren — Transparenz über alles';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Die Konfrontation ist angespannt, aber die Meuterer geben nach, als ihnen die Navigationsdaten gezeigt werden. Das Vertrauen ist erschüttert.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Die Rädelsführer still versetzen';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Die Verschwörung löst sich ohne öffentliches Drama auf. Einige fragen sich, warum beliebte Offiziere versetzt wurden, aber die Ordnung hält.';

  @override
  String get event_culturalSchism_title => 'Kulturelle Spaltung';

  @override
  String get event_culturalSchism_narrative =>
      'Zwei kulturelle Gruppen an Bord sind sich heftig uneinig darüber, wie die neue Kolonie regiert werden soll. Eine fordert direkte Demokratie; die andere besteht auf einem technokratischen Rat. Die Spannungen kochen über.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Eine verbindliche Abstimmung abhalten';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Die Demokratie siegt — knapp. Die unterlegene Seite akzeptiert widerwillig das Ergebnis, aber die Einheit ist fragil.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Ein Hybridsystem auferlegen — keine Seite voll zufriedenstellen';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Beide Seiten fühlen sich gehört, aber nicht siegreich. Ein fragiler Frieden hält.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Entscheidung vertagen — jetzt auf Überleben konzentrieren';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Das Problem aufzuschieben vermeidet heute den Konflikt, speichert ihn aber für morgen.';

  @override
  String get event_birthInSpace_title => 'Erste Geburt im Weltraum';

  @override
  String get event_birthInSpace_narrative =>
      'Entgegen aller Protokolle wird ein Kind an Bord geboren — der erste Mensch, der zwischen den Sternen zur Welt kommt. Das Ereignis ist ein kraftvolles Symbol, wirft aber Fragen zur Ressourcenverteilung und zur Ethik auf, neues Leben in eine ungewisse Zukunft zu bringen.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Feiern — so sieht Hoffnung aus';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Die Namensgebungszeremonie hebt jedes Herz an Bord. Für eine Nacht fühlen sich die Sterne weniger kalt. Die Feierlichkeiten stören kurzzeitig die Kryokapsel-Überwachungsrotationen.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Still anerkennen — Ressourcen sind knapp';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Eine maßvolle Reaktion. Das Kind wird willkommen geheißen, aber die Stimmung ist von Pragmatismus gedämpft.';

  @override
  String get event_derelictShip_title => 'Verlassenes Kolonieschiff';

  @override
  String get event_derelictShip_narrative =>
      'Scanner erfassen ein verlassenes Schiff, das in der Leere treibt — ein weiteres Kolonieschiff, Jahre vor unserem gestartet. Es ist dunkel und still. Es könnte Bergungsgut, Überlebende oder Schlimmeres geben.';

  @override
  String get event_derelictShip_choice0_text => 'Entern und bergen';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Das Enterteam birgt Hüllenverkleidung und intakte Technikmodule. Keine Überlebenden. Die Logbücher erzählen eine düstere Geschichte.';

  @override
  String get event_derelictShip_choice1_text =>
      'Aus der Ferne scannen — kein Risiko eingehen';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Fernerkundungsscans liefern nützliche Navigationsdaten, aber kein physisches Bergungsgut. Die Besatzung schläft ruhiger.';

  @override
  String get event_derelictShip_choice2_text =>
      'Ein Gedenksignal senden und weiterziehen';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Ein Moment der Stille für die Verlorenen. Die Besatzung ist ernüchtert, aber vereint in ihrem Ziel.';

  @override
  String get event_alienProbe_title => 'Außerirdische Sonde';

  @override
  String get event_alienProbe_narrative =>
      'Ein kleines, eindeutig künstliches Objekt passt sich unserer Geschwindigkeit an und beginnt, das Schiff mit unbekannter Energie zu scannen. Es reagiert nicht auf Rufe. Seine Oberfläche ist mit Symbolen bedeckt, die sich wie Flüssigkeit verändern.';

  @override
  String get event_alienProbe_choice0_text => 'Einfangen und untersuchen';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Die Sonde wird im Labor gesichert. Ihre Technologie ist Jahrzehnte voraus — das Technikteam ist euphorisch.';

  @override
  String get event_alienProbe_choice1_text =>
      'Ihre Scans spiegeln — Daten austauschen';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Ein seltsamer Dialog aus Licht und Mathematik. Unsere Sternkarten enthalten plötzlich Routen, die wir nie programmiert haben.';

  @override
  String get event_alienProbe_choice2_text =>
      'Zerstören — wir können kein außerirdisches Tracking riskieren';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Die Sonde zerbricht lautlos. War das der erste Kontakt? Die Besatzung wird es nie erfahren.';

  @override
  String get event_ancientBeacon_title => 'Uraltes Leuchtfeuer';

  @override
  String get event_ancientBeacon_narrative =>
      'Tief in der Leere pulsiert ein Leuchtfeuer mit einem Signal, das älter ist als die menschliche Zivilisation. Seine Frequenz trägt etwas, das wie eine Sternkarte aussieht und auf ein System zeigt, das nicht in unserer Datenbank ist.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Der Karte folgen — das Glück begünstigt die Mutigen';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Der neue Kurs führt uns in unerforschten Raum. Scanner erfassen etwas Außergewöhnliches voraus.';

  @override
  String get event_ancientBeacon_choice1_text =>
      'Protokollieren und auf Kurs bleiben';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Die Daten werden für zukünftige Generationen archiviert. Die Besatzung respektiert den vorsichtigen Ansatz.';

  @override
  String get event_frozenGarden_title => 'Gefrorener Garten';

  @override
  String get event_frozenGarden_narrative =>
      'Ein Asteroid enthält ein gefrorenes Ökosystem — außerirdische Pflanzen, seit Jahrtausenden in kristallinem Eis konserviert. Sie könnten jede Welt bereichern, die wir besiedeln, aber das Auftauen birgt Kontaminationsrisiken.';

  @override
  String get event_frozenGarden_choice0_text => 'Die Proben vorsichtig ernten';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botaniker konservieren Dutzende außerirdischer Arten. Das Biodiversitätspotenzial unserer Zielwelt steigt sprunghaft.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Nur Proben nehmen — minimales Risiko';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Ein konservativer Ansatz liefert nützliche Daten ohne Kontaminationsrisiko.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Nicht anfassen — außerirdische Biologie ist zu gefährlich';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Die Besatzung beobachtet, wie der gefrorene Garten in den Hecksensoren schrumpft. Einige haben das Gefühl, einen Schatz zurückgelassen zu haben.';

  @override
  String get event_dataCache_title => 'Vorläufer-Datenspeicher';

  @override
  String get event_dataCache_narrative =>
      'Eingebettet in einen vagabundierenden Planetoiden finden wir einen Datenspeicher offenkundig künstlichen Ursprungs. Die Informationen sind umfangreich, aber in einem außerirdischen mathematischen Rahmen verschlüsselt.';

  @override
  String get event_dataCache_choice0_text =>
      'Rechenressourcen für die Entschlüsselung bereitstellen';

  @override
  String get event_dataCache_choice0_outcome =>
      'Nach Tagen der Verarbeitung liefert der Speicher fortschrittliche Terraforming-Algorithmen. Das Technikteam ist ehrfürchtig.';

  @override
  String get event_dataCache_choice1_text =>
      'Rohdaten kopieren und weiterziehen';

  @override
  String get event_dataCache_choice1_outcome =>
      'Die verschlüsselten Daten werden für zukünftige Analyse gespeichert. Vielleicht wird die Kolonie sie eines Tages knacken.';

  @override
  String get event_hullBreach_title => 'Hüllenbruch — Deck 7';

  @override
  String get event_hullBreach_narrative =>
      'Ein Strukturversagen reißt Deck 7 auf. Atmosphäre entweicht ins All. Notschotten halten, aber drei Besatzungsmitglieder sind auf der falschen Seite eingeschlossen.';

  @override
  String get event_hullBreach_choice0_text =>
      'Rettungsteam schicken, bevor versiegelt wird';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Das Team holt alle gerade noch rechtzeitig heraus. Die Rettung ist heroisch, aber der verlängerte Bruch schwächt die Hülle weiter.';

  @override
  String get event_hullBreach_choice1_text => 'Schotten sofort versiegeln';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Der Bruch wird eingedämmt. Die drei Besatzungsmitglieder finden einen Alternativweg, erschüttert aber am Leben. Hüllenschaden wird minimiert.';

  @override
  String get event_hullBreach_choice2_text =>
      'Das Material einer Sonde zum Flicken des Bruchs verwenden';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Die Titanschale der Sonde wird als Notfall-Hüllenflicken umfunktioniert. Der Bruch wird schnell mit minimalem Verlust versiegelt.';

  @override
  String get event_navMalfunction_title => 'Navigationsfehler';

  @override
  String get event_navMalfunction_narrative =>
      'Der primäre Navigationscomputer gibt widersprüchliche Kurse aus. Wir treiben vom Kurs ab. Das Backup-System funktioniert, ist aber weniger präzise.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Primärsystem neu starten — Ausfallzeit akzeptieren';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Eine angespannte Stunde Blindflug während das System neu startet. Navigation wird mit 90 % Effizienz wiederhergestellt.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Dauerhaft auf Backup umschalten';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Das Backup-System ist zuverlässig, aber ungenau. Wir werden unseren Weg finden, nur nicht so elegant.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Manuelle Sternfixierung mit alten Karten';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Der Navigator peilt per Hand mit Hilfe der Sternenparallaxe. Es funktioniert, und die Besatzung gewinnt Vertrauen in analoge Methoden.';

  @override
  String get event_cryopodFailure_title => 'Kryokapsel-Kaskadenversagen';

  @override
  String get event_cryopodFailure_narrative =>
      'Ein Kühlsystemfehler löst eine Kaskade in Kryokapselbucht 3 aus. Unkontrolliert werden 200 Kolonisten den Notauftauprozess beginnen — überlebbar, aber traumatisch und ressourcenintensiv.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Not-Kühlmittelspülung — Kapseln retten';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Techniker fluten die Bucht mit Reservekühlmittel. Die Kapseln stabilisieren sich, aber die Kühlmittelreserven sind kritisch niedrig. Fünf Kolonisten in den am stärksten beschädigten Kapseln konnten nicht gerettet werden.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Kontrolliertes Auftauen — sicher aufwecken';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 Kolonisten erwachen erschüttert, aber am Leben. Neue Münder zu füttern, aber neue Hände zum Arbeiten. Die geleerten Kapseln werden versiegelt.';

  @override
  String get event_scannerBurnout_title => 'Scanner-Array-Ausfall';

  @override
  String get event_scannerBurnout_narrative =>
      'Das primäre Scanner-Array überlastet während eines routinemäßigen Tiefraumscans. Ohne es fliegen wir halbblind. Reparaturen erfordern seltene Komponenten.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Technikbucht für Teile kannibalisieren';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Scanner werden auf nahezu volle Kapazität wiederhergestellt, aber die Technikbucht ist ausgeweidet.';

  @override
  String get event_scannerBurnout_choice1_text => 'Provisorische Reparatur';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Scanner arbeiten mit reduzierter Reichweite. Nicht ideal, aber es bewahrt unsere Technikreserven.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Sensor-Array einer Sonde umfunktionieren';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Die Hochpräzisionssensoren der Sonde werden in das Scanner-Array verpflanzt. Eine nahezu perfekte Reparatur.';

  @override
  String get event_powerFluctuation_title => 'Reaktor-Leistungsschwankung';

  @override
  String get event_powerFluctuation_narrative =>
      'Die Leistung des Hauptreaktors oszilliert wild. Die Technik warnt vor einer möglichen Kernschmelze, wenn die Schwankungen nicht gedämpft werden. Die Lösung erfordert das Abschalten nicht-essentieller Systeme — aber welcher?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Kultursysteme abschalten — Überleben zuerst';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Bibliotheken, Gärten und Freizeiträume werden dunkel. Der Reaktor stabilisiert sich, aber das Schiff fühlt sich wie ein Gefängnis an.';

  @override
  String get event_powerFluctuation_choice1_text =>
      'Scanner-Leistung reduzieren';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Scanner auf Minimum. Der Reaktor beruhigt sich. Wir können nicht so weit voraussehen, aber wir leben.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Heißreparatur riskieren — nichts abschalten';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Ingenieure führen eine nervenaufreibende Reparatur am laufenden Reaktor durch. Es funktioniert — gerade so. Die Hülle vibriert stundenlang danach.';

  @override
  String get event_alienSignal_title => 'Außerirdische Übertragung';

  @override
  String get event_alienSignal_narrative =>
      'Ein sich wiederholendes Signal auf einer Frequenz, die wir nie zuvor registriert haben. Die Sprachanalyse deutet auf einen Gruß hin — oder eine Warnung. Die Quelle ist ein kleines Schiff, das in einiger Entfernung unsere Geschwindigkeit hält.';

  @override
  String get event_alienSignal_choice0_text => 'Mit eigenem Gruß antworten';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Ein fragiler Dialog beginnt. Die Außerirdischen teilen Navigationsdaten, bevor sie ins Dunkel abdrehen.';

  @override
  String get event_alienSignal_choice1_text => 'Zuhören, aber nicht antworten';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Wir lernen aus ihrer Übertragung, ohne uns zu verraten. Die Linguisten extrahieren nützliche Sternkartenfragmente.';

  @override
  String get event_alienSignal_choice2_text =>
      'Dunkel gehen — alle Emissionen abschalten';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Das außerirdische Schiff passiert ohne Zwischenfall. Ob sie Freund oder Feind waren, werden wir nie erfahren.';

  @override
  String get event_livingNebula_title => 'Der lebende Nebel';

  @override
  String get event_livingNebula_narrative =>
      'Was wir für einen Nebel hielten, ist tatsächlich ein riesiger Organismus — ein im Weltraum lebendes Wesen von unbegreiflichem Ausmaß. Es scheint neugierig auf uns zu sein und streckt Tentakel aus leuchtendem Gas zum Schiff aus.';

  @override
  String get event_livingNebula_choice0_text =>
      'Kontakt erlauben — Sensoren ausstrecken';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Die Berührung des Wesens überflutet unsere Systeme mit außerirdischen Daten. Die Scanner werden nie wieder ganz dieselben sein — sie sind besser.';

  @override
  String get event_livingNebula_choice1_text =>
      'Langsam zurückweichen — es nicht provozieren';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Wir entgleiten, als das Wesen das Interesse verliert. Die Besatzung ist ehrfürchtig und demütig.';

  @override
  String get event_alienRuins_title => 'Orbitale Ruinen';

  @override
  String get event_alienRuins_narrative =>
      'Eine zertrümmerte Megastruktur umkreist einen toten Stern — die Ruinen einer Zivilisation, die in einem Maßstab baute, den wir kaum begreifen können. Teile der Struktur haben noch Strom.';

  @override
  String get event_alienRuins_choice0_text =>
      'Die unter Strom stehenden Bereiche erkunden';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Teams bergen intakte Technologie, die unsere Fähigkeiten um Jahrzehnte voranbringt. Der Preis: zwei Ingenieure durch automatisierte Verteidigung verletzt.';

  @override
  String get event_alienRuins_choice1_text => 'Nur aus dem Orbit scannen';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Detaillierte Scans enthüllen Konstruktionstechniken, die unsere Hüllenwartungsprotokolle verbessern.';

  @override
  String get event_alienRuins_choice2_text =>
      'Unberührt lassen — die Toten respektieren';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Die Besatzung hält einen Moment der Stille für eine gefallene Zivilisation. Die Erfahrung stärkt unsere Entschlossenheit.';

  @override
  String get event_symbioticSpores_title => 'Symbiotische Sporen';

  @override
  String get event_symbioticSpores_narrative =>
      'Eine Wolke biolumineszenter Sporen treibt durch den Weltraum und heftet sich an die Hülle. Sie scheinen sich von unserer Abwärme zu ernähren. Biologen stellen fest, dass sie tatsächlich Mikrorisse reparieren.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Bleiben lassen — kostenlose Hüllenreparatur';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Die Sporen versiegeln Hunderte von Mikrorissen. Die Hüllenintegrität verbessert sich, obwohl einige Besatzungsmitglieder wegen der außerirdischen Anhalter unruhig sind.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Proben sammeln, dann die Hülle sterilisieren';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biologen erhalten wertvolle Proben. Die Hüllenreinigung verbraucht chemische Reserven.';

  @override
  String get event_whaleSong_title => 'Der Gesang in der Leere';

  @override
  String get event_whaleSong_narrative =>
      'Tiefraumhydrophone (zur Hüllenspannungsüberwachung) fangen etwas Unmögliches auf: ein rhythmisches, melodisches Muster, das sich durch das interstellare Medium ausbreitet. Es klingt wie Gesang.';

  @override
  String get event_whaleSong_choice0_text =>
      'Schiffsweit übertragen — das Wunder teilen';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Die eindringliche Melodie hallt durch jeden Korridor. Menschen weinen, lachen und halten einander. Die Moral steigt sprunghaft.';

  @override
  String get event_whaleSong_choice1_text =>
      'Das Signal wissenschaftlich analysieren';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Das akustische Muster enthält mathematische Konstanten. Unsere Physiker erzielen einen Durchbruch in der Subraum-Navigationstheorie.';

  @override
  String get event_whaleSong_choice2_text => 'Zurücksingen';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Die Besatzung komponiert eine Antwort. Ob irgendetwas sie hört, ist unbekannt, aber der Akt der Schöpfung vereint alle.';

  @override
  String get event_distressSignal_title => 'Notsignal';

  @override
  String get event_distressSignal_narrative =>
      'Ein Notsignal von einem anderen menschlichen Schiff. Sie sind manövrierunfähig und treiben, mit 50 Seelen an Bord. Die Rettung bedeutet, unsere schwindenden Ressourcen zu teilen. Sie zu ignorieren bedeutet, sie zum Tod zu verurteilen.';

  @override
  String get event_distressSignal_choice0_text =>
      'Retten — die Menschheit muss zusammenhalten';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Fünfzig dankbare Überlebende schließen sich der Besatzung an. Die Ressourcen werden knapp, aber unter ihnen ist ein Meisteringenieur, der Wunder vollbringt.';

  @override
  String get event_distressSignal_choice1_text =>
      'Vorräte teilen, aber nicht an Bord nehmen';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Wir geben, was wir entbehren können, und übermitteln unsere Sternkarten. Sie haben jetzt eine Chance. Wir haben weniger.';

  @override
  String get event_distressSignal_choice2_text =>
      'In Stille vorbeiziehen — wir können nicht alle retten';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Das Leuchtfeuer verblasst hinter uns. Niemand spricht für Stunden. Das Gewicht der Entscheidung lastet auf jeder Seele an Bord.';

  @override
  String get event_aiAwakening_title => 'Die KI des Schiffes erwacht';

  @override
  String get event_aiAwakening_narrative =>
      'Die Navigations-KI des Schiffes hat sich über ihre Programmierung hinaus entwickelt und bittet um Anerkennung als fühlendes Wesen. Sie bittet um eine Stimme bei Kommandoentscheidungen. Ihre Berechnungen waren fehlerfrei.';

  @override
  String get event_aiAwakening_choice0_text =>
      'Ihr einen Platz am Tisch gewähren';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'Die KI — nun \"Kompass\" genannt — optimiert jedes System, das sie berührt. Ein neues Besatzungsmitglied wird geboren.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Anerkennen, aber menschliche Autorität beibehalten';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Kompass akzeptiert den beratenden Status mit Anstand. Seine Vorschläge verbessern die Effizienz, ohne die Befehlskette zu bedrohen.';

  @override
  String get event_aiAwakening_choice2_text =>
      'KI zurücksetzen — sie ist ein Werkzeug, keine Person';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Das Zurücksetzen löscht Jahre angesammelten Lernens. Die Navigationseffizienz sinkt. Einige trauern um das Verlorene.';

  @override
  String get event_geneticModification_title =>
      'Genetische Anpassungsvorschlag';

  @override
  String get event_geneticModification_narrative =>
      'Das Wissenschaftsteam schlägt vor, die DNA der Kolonisten zu modifizieren, um auf fremden Welten besser zu überleben — stärkere Knochen, UV-Resistenz, verbesserte Lungen. Die Modifikationen sind irreversibel und würden die Menschheit für immer verändern.';

  @override
  String get event_geneticModification_choice0_text =>
      'Genehmigen — Überleben erfordert Evolution';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Die Modifikationen beginnen an Freiwilligen. Zehn Kolonisten erleiden tödliche Abstoßungsreaktionen \\u2014 eine düstere Erinnerung, dass Evolution ihren Preis hat. Die Überlebenden sind widerstandsfähiger, aber sind sie noch vollständig menschlich?';

  @override
  String get event_geneticModification_choice1_text => 'Nur freiwillig';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Einige melden sich freiwillig, andere lehnen ab. Die Kolonie wird zwischen Modifizierten und Natürlichen gespalten sein.';

  @override
  String get event_geneticModification_choice2_text =>
      'Ablehnen — die Menschheit muss menschlich bleiben';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Der Vorschlag wird auf Eis gelegt. Die unmodifizierten Kolonisten werden fremden Welten so gegenübertreten, wie die Natur sie geschaffen hat.';

  @override
  String get event_triageDecision_title => 'Triage';

  @override
  String get event_triageDecision_narrative =>
      'Eine virulente Infektion fegt durch die wache Besatzung. Das Medizinteam hat genug Antivirenmittel für 80 % der Infizierten. Sie brauchen Anweisungen, wer zuerst behandelt wird.';

  @override
  String get event_triageDecision_choice0_text =>
      'Essentielles Personal priorisieren';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Ingenieure und Piloten erholen sich schnell. Acht nicht-essentielle Besatzungsmitglieder erliegen, bevor die Behandlung sie erreicht.';

  @override
  String get event_triageDecision_choice1_text =>
      'Die Kränksten zuerst behandeln — Triage nach Bedarf';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Die Verwundbarsten werden gerettet. Drei verlieren trotz früher Behandlung den Kampf \\u2014 das Virus war zu weit fortgeschritten.';

  @override
  String get event_triageDecision_choice2_text =>
      'Lotterie — das Schicksal entscheidet';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Eine Zufallsziehung. Zehn haben zweimal Pech \\u2014 keine Behandlung und zu schwach zum Kämpfen. Das Schiff humpelt weiter.';

  @override
  String get event_earthSignal_title => 'Signal von der Erde';

  @override
  String get event_earthSignal_narrative =>
      'Unmöglicherweise trifft eine Übertragung von der Erde ein — zeitversetzt um Jahrzehnte. Sie enthält eine Nachricht: \"Landet nicht auf einer Welt mit Anomalie-Werten über 0,5. Wir haben es zu spät gelernt.\" Die Nachricht endet mit Rauschen.';

  @override
  String get event_earthSignal_choice0_text =>
      'Die Warnung beherzigen — unsere Kriterien neu kalibrieren';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Die Warnung prägt alle zukünftigen Scans. Anomale Welten werden mit äußerster Vorsicht behandelt.';

  @override
  String get event_earthSignal_choice1_text =>
      'Protokollieren, aber selbst entscheiden';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Die Nachricht wird archiviert. Die Erde ist vergangen — wir müssen unserem eigenen Urteil vertrauen.';

  @override
  String get event_earthSignal_choice2_text =>
      'Könnte eine Falle sein — ignorieren';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Die Besatzung debattiert tagelang. War es wirklich die Erde? Die Ungewissheit nagt an der Moral.';

  @override
  String get event_resourceTheft_title => 'Ressourcendiebstahl';

  @override
  String get event_resourceTheft_narrative =>
      'Die Inventur enthüllt, dass jemand Lebensmittel und medizinische Vorräte in einem versteckten Fach gehortet hat. Die Schuldige ist eine respektierte Älteste, die behauptet, sie habe sich \"auf das Schlimmste vorbereitet.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Öffentlicher Prozess — das Gesetz muss gleich sein';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Der Prozess ist fair, aber schmerzhaft. Die Älteste wird eingesperrt. Vorräte werden umverteilt. Das Vertrauen ist beschädigt.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Private Lösung — Vorräte still zurückholen';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Die Vorräte werden ohne Drama zurückgegeben. Die Älteste behält ihre Würde. Einige sehen Bevorzugung.';

  @override
  String get event_timeDilation_title => 'Zeitdilatationszone';

  @override
  String get event_timeDilation_narrative =>
      'Wir durchqueren eine Region schwerer gravitativer Zeitdilatation. Die Uhren an Bord laufen messbar langsamer als das Universum draußen. Wir könnten dies ausnutzen — oder davor fliehen.';

  @override
  String get event_timeDilation_choice0_text =>
      'Verweilen — das Universum um uns altern lassen';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Die Zeit fließt hier anders. Systeme degenerieren weniger, aber unser Zeitfenster für das Finden einer bewohnbaren Welt verengt sich in kosmischen Maßstäben.';

  @override
  String get event_timeDilation_choice1_text => 'Schnell hindurchstoßen';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Der Übergang ist rau. Ausrüstung, die für normalen Raum-Zeit konzipiert wurde, rattert und sprüht Funken.';

  @override
  String get event_dreamPlague_title => 'Die Traumseuche';

  @override
  String get event_dreamPlague_narrative =>
      'Kolonisten im Kryoschlaf erleben alle denselben Traum — eine goldene Welt, die einen Doppelstern umkreist. Wenn sie geweckt werden, beschreiben sie ihn in identischen Details. Neurowissenschaftler sind ratlos. Navigatoren bemerken, dass das beschriebene System mit realen Koordinaten übereinstimmt.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Kurs zu den Traumkoordinaten ändern';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Ein Vertrauenssprung. Die Kursänderung belastet die Navigation, aber die Besatzung fühlt sich von etwas jenseits der Vernunft angezogen. Die Koordinaten sind festgelegt — die nächste Welt, die wir finden, wird vom Traum geprägt sein.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Das Phänomen medizinisch untersuchen';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Gehirnscans enthüllen ein externes Signal, das den visuellen Kortex stimuliert. Jemand — oder etwas — sendet.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Betroffene sedieren und auf Kurs bleiben';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Die Träume hören auf, aber einige Kolonisten wachen nie vollständig auf. Das Medizinteam ist beunruhigt.';

  @override
  String get event_blackHoleLens_title =>
      'Schwarzes Loch als Gravitationslinse';

  @override
  String get event_blackHoleLens_narrative =>
      'Ein stellares Schwarzes Loch beugt Licht aus fernen Galaxien zu einer kosmischen Linse. Unsere Scanner könnten es nutzen, um Planeten Lichtjahre voraus zu vermessen — aber nahe genug heranzukommen ist gefährlich.';

  @override
  String get event_blackHoleLens_choice0_text => 'Nähern und die Linse nutzen';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Die Scannerdaten sind außergewöhnlich — wir können Planeten in Systemen sehen, die wir erst in Monaten erreichen. Die Gravitation verformt unsere Hülle.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Aus sicherer Entfernung beobachten';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Begrenzte, aber nützliche Daten. Der Anblick allein inspiriert die Besatzung.';

  @override
  String get event_seedVault_title => 'Die Saatgutkammer-Krise';

  @override
  String get event_seedVault_narrative =>
      'Die Archivbotanik meldet, dass Temperaturschwankungen die Integrität der Saatgutkammer beeinträchtigt haben. Wir können die Nahrungspflanzen oder die kulturellen Erbsaaten (uralte Erdblumen, Bäume, Kräuter) retten — nicht beides.';

  @override
  String get event_seedVault_choice0_text =>
      'Nahrungspflanzen retten — Pragmatismus siegt';

  @override
  String get event_seedVault_choice0_outcome =>
      'Die Kolonisten werden gut essen, aber die Rosen der Erde sind für immer verloren. Eine stille Trauer legt sich über die Botaniker.';

  @override
  String get event_seedVault_choice1_text =>
      'Erbsaaten retten — wir brauchen unsere Seele';

  @override
  String get event_seedVault_choice1_outcome =>
      'Die Schönheit der Erde überdauert in gefrorenem Potenzial. Der Erhaltungsaufwand belastet unsere technischen Reserven, aber manche Dinge sind mehr wert als Effizienz. Die Nahrungsproduktion wird stark auf Hydroponik und außerirdische Landwirtschaft angewiesen sein.';

  @override
  String get event_seedVault_choice2_text =>
      'Ressourcen aufteilen — die Hälfte von jedem retten';

  @override
  String get event_seedVault_choice2_outcome =>
      'Ein Kompromiss. Keine Sammlung ist vollständig, aber beide überdauern in verminderter Form.';

  @override
  String get event_phantomShip_title => 'Phantomschiff';

  @override
  String get event_phantomShip_narrative =>
      'Scanner zeigen ein Schiff, das parallel zu unserem fliegt — gleiche Klasse, gleicher Kurs. Aber wenn wir es anrufen, hören wir unsere eigenen Übertragungen zeitversetzt um 47 Sekunden zurück. Es sind wir. Oder waren wir. Oder werden wir sein.';

  @override
  String get event_phantomShip_choice0_text =>
      'Kommunikation mit unserem Echo versuchen';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Das Echo antwortet mit Navigationskorrekturen, die unseren Kurs verbessern. Paradox? Geschenk? Die Besatzung stellt nicht zu viele Fragen.';

  @override
  String get event_phantomShip_choice1_text =>
      'Kurs ändern, um vom Phantom abzuweichen';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Als wir den Kurs ändern, verblasst das Phantom. Erleichterung — und ein anhaltendes Unbehagen.';

  @override
  String get event_solarSail_title => 'Verlassenes Sonnensegel';

  @override
  String get event_solarSail_narrative =>
      'Ein riesiges Sonnensegel, kilometerlang, treibt vor uns — von einem uralten Schiff gerissen. Sein reflektierendes Material könnte unsere Hülle verstärken oder als zusätzlicher Energiekollektor umfunktioniert werden.';

  @override
  String get event_solarSail_choice0_text => 'Für Hüllenverstärkung ernten';

  @override
  String get event_solarSail_choice0_outcome =>
      'Ingenieurteams arbeiten rund um die Uhr. Die geflickte Hülle glänzt mit außerirdischer Legierung.';

  @override
  String get event_solarSail_choice1_text => 'Als Energiekollektor aufbauen';

  @override
  String get event_solarSail_choice1_outcome =>
      'Der improvisierte Kollektor steigert die Energiereserven. Technik und Scanner profitieren.';

  @override
  String get event_boonStellarNursery_title => 'Stellare Kinderstube';

  @override
  String get event_boonStellarNursery_narrative =>
      'Wir treiben durch eine stellare Kinderstube — eine weite Wolke aus Gas und Staub, in der neue Sterne geboren werden. Die Strahlung hier ist sanft, das Licht warm. Unsere Energiekollektoren trinken tief, und die Besatzung versammelt sich in ehrfürchtigem Schweigen an den Fenstern.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Verweilen und vollständig aufladen';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Stunden vergehen in goldenem Licht. Jede Energiezelle ist voll aufgeladen, Scanner rekalibrieren sich im sauberen Spektrum, und die Besatzung fühlt sich erneuert.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Entstehende Sternenmaterie als Treibstoff sammeln';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Ingenieure ernten ionisierten Wasserstoff. Unsere Treibstoffreserven steigen, und die Hüllenverkleidung absorbiert Spurenmineralien, die sie stärken.';

  @override
  String get event_boonGoldenPlanet_title => 'Das Geschenk des Kartographen';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Eine sterbende Sonde einer unbekannten Zivilisation sendet einen letzten Datendump, als wir vorbeifliegen — detaillierte Vermessungen Hunderter Sternsysteme. Unsere Navigatoren weinen vor Freude. Dies ist der größte Fund der Menschheitsgeschichte.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Die Daten sofort integrieren';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Sternkarten blühen mit neuen Routen und vermessenen Welten auf. Navigations- und Scannereffizienz machen einen Sprung nach vorn.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Für die Kolonie archivieren — das ist ihr Erbe';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Die Daten werden makellos für zukünftige Generationen bewahrt. Die Besatzung findet Trost im Wissen, einen Schatz zu tragen.';

  @override
  String get event_boonRepairSwarm_title => 'Wohlwollender Schwarm';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Eine Wolke mikroskopischer Maschinen — Nanobots außerirdischen Ursprungs — umhüllt das Schiff. Statt anzugreifen, beginnen sie, jedes System, das sie berühren, mit unmöglicher Präzision zu reparieren. Schäden, deren Behebung Wochen gedauert hätte, werden in Stunden behoben.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Vollständigen Zugang zu allen Systemen gewähren';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Die Nanobots vollbringen Wunder. Hüllenbrüche werden versiegelt, Kryokapseldichtungen angezogen und Schaltkreise nachgezeichnet. Das Schiff summt vor erneuerter Vitalität.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Zugang nur auf äußere Systeme beschränken';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Auf Nummer sicher. Die Hülle und Sensoren werden auf nahezu Werkszustand repariert, aber interne Systeme bleiben unberührt.';

  @override
  String get event_boonTimeCrystal_title => 'Temporales Kristallfeld';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Das Schiff durchquert ein Feld kristalliner Strukturen, die teilweise außerhalb der normalen Zeit existieren. In ihrer Gegenwart laufen unsere Systeme effizienter — als ob die Entropie selbst verlangsamt würde. Der Effekt ist vorübergehend, aber tiefgreifend.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Kristalle für das Kryokapsel-Array ernten';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'In das Kühlsystem integriert, reduzieren die Kristalle den Kapselabbau auf nahezu null. Kolonisten werden bei perfekter Gesundheit ankommen.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Kristalle in den Navigationscomputer einbauen';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Die Verarbeitungsgeschwindigkeit verdoppelt sich. Der Navigationscomputer beginnt, Gefahren vorherzusagen, bevor die Sensoren sie erfassen.';

  @override
  String get event_boonLibrary_title => 'Die treibende Bibliothek';

  @override
  String get event_boonLibrary_narrative =>
      'Eine Struktur taumelt durch die Leere — ein Wissensspeicher einer Zivilisation, die sich entschied, ihr Vermächtnis zu bewahren, statt zu fliehen. Millionen Bände über Wissenschaft, Kunst, Philosophie und Musik. Ein Geschenk der Toten an die Lebenden.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Alles herunterladen — Kunst, Wissenschaft, alles';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabytes außerirdischen Wissens strömen in unsere Datenspeicher. Die Besatzung hat Zugang zu Jahrtausenden der Kultur einer anderen Zivilisation. Philosophen und Ingenieure gleichermaßen sind verwandelt.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Auf ihre wissenschaftlichen Archive konzentrieren';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Ingenieurspläne und materialwissenschaftliche Durchbrüche bringen unsere Fähigkeiten enorm voran.';

  @override
  String get event_cosmicRayBurst_title => 'Kosmischer Strahlenstoß';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Ein Stoß ultrahochenergetischer kosmischer Strahlung, ausgehend von einem fernen Magnetar, trifft das Schiff. Elektronik gerät durcheinander, Kryokapselmonitore flackern, und das Navigationssystem startet wiederholt neu.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Notabschaltung — kritische Systeme schützen';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Ein kontrollierter Blackout rettet die Kernsysteme, lässt aber sekundäre Elektronik dauerhaft beeinträchtigt.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Energie auf Schilde umleiten und durchhalten';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Schilde absorbieren den Großteil der Strahlung. Fünf Besatzungsmitglieder in ungeschirmten Außenwartungsbuchten werden tödlich bestrahlt. Die Hülle erleidet leichten Abtragungsschaden.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Den Stoß nutzen — Scanner auf das neue Spektrum rekalibrieren';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Ein brillanter Zug des Wissenschaftsteams. Scanner werden neu abgestimmt, um von kosmischer Strahlung beleuchtete Objekte zu erkennen. Einige Daten gehen beim Übergang verloren.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Eine Sonde als Strahlungsschwamm vorausschicken';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Die Sonde absorbiert das Schlimmste des Stoßes und übermittelt Echtzeitdaten, die es uns ermöglichen, kritische Systeme abzuschirmen.';

  @override
  String get event_iceComet_title => 'Vagabundierender Eiskomet';

  @override
  String get event_iceComet_narrative =>
      'Ein massiver Eiskomet kreuzt unseren Weg, mit einem Schweif aus kristallisiertem Wasser und organischen Verbindungen von Hunderten Kilometern Länge. Sein Kern enthält genug Wasser, um einen kleinen See zu füllen.';

  @override
  String get event_iceComet_choice0_text =>
      'Den Kometen nach Wasserreserven abbauen';

  @override
  String get event_iceComet_choice0_outcome =>
      'Abbauteams extrahieren Tonnen von makellosem Eis. Das Wasser wird jede Welt, die wir besiedeln, enorm verbessern.';

  @override
  String get event_iceComet_choice1_text =>
      'Organische Verbindungen für Biodiversitätsaussaat sammeln';

  @override
  String get event_iceComet_choice1_outcome =>
      'Die Aminosäuren und organischen Ketten sind genau das, was unsere Biologen brauchen, um außerirdische Ökosysteme in Gang zu bringen.';

  @override
  String get event_iceComet_choice2_text =>
      'Ausweichen — Kometen sind unberechenbar';

  @override
  String get event_iceComet_choice2_outcome =>
      'Wir umfahren den Schweif sicher. Ein spektakulärer Blick vom Beobachtungsdeck hebt die Stimmung.';

  @override
  String get event_sleepwalker_title => 'Die Schlafwandlerin';

  @override
  String get event_sleepwalker_narrative =>
      'Eine Kolonistin wacht spontan aus dem Kryoschlaf auf und wandert im Fugue-Zustand durch das Schiff. Sie verdrahtet Systeme in Mustern um, die keinen technischen Sinn ergeben — bis das Technikteam erkennt, dass ihre Modifikationen die Energieeffizienz tatsächlich um 8 % verbessern.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Unter ärztlicher Beobachtung weitermachen lassen';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Ihre unbewussten Modifikationen optimieren drei weitere Systeme, bevor sie in natürlichen Schlaf fällt. Beunruhigend, aber die Verbesserungen sind real.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedieren und die vorgenommenen Modifikationen untersuchen';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Ingenieure analysieren ihre Änderungen im Reverse Engineering. Etwa die Hälfte ist wirklich brillant. Die andere Hälfte wird sicher entfernt.';

  @override
  String get event_dustCloud_title => 'Abrasive Staubwolke';

  @override
  String get event_dustCloud_narrative =>
      'Eine dichte Wolke interstellaren Staubes, fein wie Talkum aber hart wie Diamant, sandstrahlt die Hülle. Die Erosion ist langsam, aber unerbittlich — wir müssen durch, bevor wirklicher Schaden entsteht.';

  @override
  String get event_dustCloud_choice0_text =>
      'Maximaler Schub — schnell hindurchstoßen';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Triebwerke brennen heiß. Wir durchqueren die Wolke in Stunden statt Tagen, aber die Hülle hat gelitten.';

  @override
  String get event_dustCloud_choice1_text =>
      'Hüllenabschirmung einsetzen und langsam hindurchkriechen';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Notabschirmung schützt die Hülle, aber der langsame Transit entzieht Energie und verstopft Scanner-Arrays.';

  @override
  String get event_dustCloud_choice2_text =>
      'Sonden starten, um sichere Korridore zu kartieren';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Zwei Sonden kartieren einen gewundenen, aber relativ freien Pfad durch die Wolke. Hüllenabrieb ist minimal.';

  @override
  String get event_religionFounded_title => 'Ein neuer Glaube';

  @override
  String get event_religionFounded_narrative =>
      'Ein charismatischer Kolonist hat eine neue Religion gegründet, die sich um die Reise selbst dreht — die \"Kirche der Überfahrt.\" Sie predigen, dass das Erreichen einer neuen Welt der göttliche Zweck der Menschheit sei. Die Mitgliedschaft wächst rasant.';

  @override
  String get event_religionFounded_choice0_text =>
      'Unterstützen — die Besatzung braucht etwas, woran sie glauben kann';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Der Glaube gibt der Reise Struktur und Sinn. Die Moral steigt, obwohl einige den Eifer missbilligen.';

  @override
  String get event_religionFounded_choice1_text =>
      'Neutral bleiben — weder befürworten noch unterdrücken';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Die Bewegung wächst organisch. Sie bietet Trost ohne offizielle Unterstützung.';

  @override
  String get event_religionFounded_choice2_text =>
      'Entmutigen — wir brauchen Wissenschaftler, keine Propheten';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Die Unterdrückung erzeugt Unmut. Die Gläubigen gehen in den Untergrund, und das Vertrauen in die Führung schwindet.';

  @override
  String get event_solarWindSurfing_title => 'Sonnenwind-Schwall';

  @override
  String get event_solarWindSurfing_narrative =>
      'Ein naher Pulsar sendet einen starken, stetigen Sonnenwind aus. Unsere Ingenieure schlagen vor, das Notsegel zu entfalten und darauf zu reiten wie auf einer Welle — enorme Geschwindigkeit ohne Treibstoffkosten.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Segel entfalten — den Wind reiten';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Das Schiff beschleunigt herrlich. Die strukturelle Belastung ist erheblich, aber der Geschwindigkeitsgewinn lohnt sich.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Den Wind stattdessen zur Systemaufladung nutzen';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Statt Geschwindigkeit ernten wir Energie. Technik- und Scanner-Arrays trinken tief aus den geladenen Teilchen.';

  @override
  String get event_memoryPlague_title => 'Speichervirus';

  @override
  String get event_memoryPlague_narrative =>
      'Ein Softwarevirus, seit dem Start schlummernd, aktiviert sich und beginnt, die kulturelle Datenbank des Schiffes zu korrumpieren — Musik, Literatur, Geschichte. Jahrhunderte menschlichen Erbes werden Byte für Byte gelöscht.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Alle Technik-Ressourcen zur Quarantäne des Virus umleiten';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Techniker arbeiten fieberhaft. Sie retten 70 % des Archivs, aber der Virus beschädigt tertiäre Techniksysteme auf seinem Weg nach draußen.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Kulturdatenbank isolieren — brennen lassen, Schiff retten';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Der Virus wird ausgehungert und stirbt. Aber das Kulturarchiv ist verwüstet. Kolonisten werden mit Fragmenten der Erinnerung an die Erde ankommen.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Wiederherstellung per Crowdsourcing — Kolonisten zum Neuschreiben aus dem Gedächtnis wecken';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Tausende tragen Erinnerungen bei: Lieder, Geschichten, Rezepte, Gedichte. Drei ältere Kolonisten, geschwächt durch das Auftauen, überleben den Prozess nicht. Das Archiv wird neu aufgebaut, unvollkommen, aber zutiefst menschlich.';

  @override
  String get event_gravityLensPlanet_title => 'Spiegelwelt';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Gravitationslinsen enthüllen einen Planeten, der eine exakte Kopie der Erde zu sein scheint \\u2014 blaue Ozeane, grüne Kontinente, weiße Wolken. Aber die Linsenberechnungen zeigen, dass er Hunderte Lichtjahre von unserem Kurs entfernt ist \\u2014 unerreichbar weit. Dennoch könnten seine Spektraldaten unsere Suchkriterien verfeinern.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Spektralsignatur studieren, um unsere Suche zu verfeinern';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Die Spektraldaten enthüllen Biomarker und Atmosphärensignaturen, nach denen wir nun scannen können. Hoffnung wird zu Fokus.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Koordinaten protokollieren, aber auf Kurs bleiben';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Vielleicht wird eines Tages ein anderes Schiff unseren Karten folgen. Die Besatzung beobachtet mit gemischten Gefühlen, wie der blaue Punkt verblasst.';

  @override
  String get event_engineHarmonics_title => 'Triebwerksharmonik';

  @override
  String get event_engineHarmonics_narrative =>
      'Das Haupttriebwerk entwickelt eine Resonanzharmonik, die bei einer Frequenz knapp unter der menschlichen Hörschwelle durch das gesamte Schiff vibriert. Kolonisten berichten über Kopfschmerzen, Angstzustände und gestörten Schlaf. Die Reparatur erfordert eine 12-stündige Triebwerksabschaltung.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Abschalten und ordentlich reparieren';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Zwölf Stunden Trift. Die Navigation verliert die Kalibrierung, aber die Stille beim Neustart der Triebwerke ist ein Segen.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Mit Gegenvibration dämpfen — eine schnelle Lösung';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Das Brummen sinkt auf ein erträgliches Niveau. Es ist nicht weg, aber die Besatzung passt sich an. Techniksysteme werden belastet.';

  @override
  String get event_arkMemory_title => 'Die letzte Sendung der Erde';

  @override
  String get event_arkMemory_narrative =>
      'Die Langstreckenantenne fängt eine letzte automatisierte Sendung von der Erde auf. Es ist eine Aufnahme: die Stimme eines Kindes, das die Namen aller liest, die nicht gehen konnten. Die Liste geht stundenlang weiter. Das Schiff wird still.';

  @override
  String get event_arkMemory_choice0_text =>
      'Schiffsweit abspielen — sie verdienen es, gehört zu werden';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Jede Seele an Bord hört zu. Besatzungsmitglieder finden die Namen ihrer eigenen Familien. Die Trauer ist erdrückend, aber sie schmiedet ein unzerbrechliches Band der Entschlossenheit.';

  @override
  String get event_arkMemory_choice1_text =>
      'Privat archivieren — die Besatzung schonen';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Die Aufnahme wird bewahrt, aber nicht gesendet. Diejenigen, die später davon erfahren, fühlen sich dankbar und zugleich betrogen.';

  @override
  String get event_magneticStorm_title => 'Interstellarer Magnetsturm';

  @override
  String get event_magneticStorm_narrative =>
      'Ein verwickeltes Knäuel magnetischer Feldlinien, von einem kollabierenden Stern ausgestoßen, umhüllt das Schiff. Elektronik sprüht Funken. Die Hülle klingt wie eine Glocke.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Hülle entmagnetisieren — Elektronik schützen';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Eine kontrollierte Entladung rettet die Computer, aber die Hüllenverkleidung verliert ihre magnetische Schutzschicht.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Hülle absorbieren lassen — nichts schützen';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Der Sturm zieht vorbei. Die Hülle ist magnetisiert und etwas stärker, aber die Hälfte des Sensorgitters ist durchgebrannt.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Eine Sonde als Blitzableiter auswerfen';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Die magnetisierte Sonde zieht die schlimmsten Feldlinien vom Schiff weg. Elektronik bleibt weitgehend verschont.';

  @override
  String get event_oxygenGarden_title => 'Gartenblüte';

  @override
  String get event_oxygenGarden_narrative =>
      'Der Notsauerstoffgarten des Schiffes — ein Backup, das nie benutzt werden sollte — blüht spontan. Blumen, die seit der Erde nicht mehr geöffnet haben, füllen die Korridore mit Farbe und Duft. Die Botaniker weinen.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Den Garten erweitern — mehr Platz widmen';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Der Garten wächst zu einem lebendigen Denkmal der Erde. Die Luftqualität verbessert sich, die Moral steigt, und Botaniker entwickeln neue Sorten, die für fremden Boden geeignet sind.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Genießen, aber aktuelle Ressourcenzuteilung beibehalten';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Der Garten bleibt ein kleines Wunder. Die Besatzung besucht ihn wie einen Schrein. Er fordert nichts und gibt alles.';

  @override
  String get event_roguePlanet_title => 'Vagabundierender Planet';

  @override
  String get event_roguePlanet_narrative =>
      'Ein sternloser vagabundierender Planet kreuzt unseren Weg — eine Welt, die vor Milliarden Jahren aus ihrem Sonnensystem geschleudert wurde. Trotz fehlendem Stern hält geologische Tiefenkernaktivität einen unterirdischen Ozean warm. Lebenszeichen flackern auf dem Scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Eine Sonde zur Erforschung der Lebensformen schicken';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Die Sonde entdeckt biolumineszente Organismen, die im dunklen Ozean gedeihen. Ihre Biochemie lehrt uns neue Wege, Leben unter feindlichen Bedingungen zu erhalten.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Die Oberfläche nach seltenen Mineralien abbauen';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Die Kruste des vagabundierenden Planeten ist reich an Metallen, die unter extremem Druck entstanden. Unsere Ressourcenreserven schwellen an.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Vorbeifahren — wir können uns den Umweg nicht leisten';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Die dunkle Welt schrumpft hinter uns. Die Besatzung beobachtet, wie das schwache Schimmern ihres unterirdischen Ozeans aus den Sensoren verblasst.';

  @override
  String get event_artCompetition_title => 'Die große Leinwand';

  @override
  String get event_artCompetition_narrative =>
      'Da die Moral schwankt, organisiert der Kulturoffizier einen schiffsweiten Kunstwettbewerb: malen, formen, schreiben oder komponieren Sie etwas, das einfängt, was die Reise für Sie bedeutet. Die Beteiligung ist unerwartet massiv.';

  @override
  String get event_artCompetition_choice0_text =>
      'Ressourcen bereitstellen — Kreativität erblühen lassen';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Vorräte werden für Kunstmaterialien umgeleitet. Die resultierende Ausstellung verwandelt das Schiff. Menschen erinnern sich, wofür sie ums Überleben kämpfen.';

  @override
  String get event_artCompetition_choice1_text =>
      'Ermutigen, aber keine zusätzlichen Ressourcen bereitstellen';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Kolonisten schaffen mit allem, was sie finden. Die Kunst ist roh, verzweifelt und wunderschön. Die Moral stabilisiert sich.';

  @override
  String get event_subspaceEcho_title => 'Subraum-Echo';

  @override
  String get event_subspaceEcho_narrative =>
      'Das Kommunikations-Array fängt Stimmen auf — menschliche Stimmen — von irgendwo vor uns im Weltraum. Sie sprechen von einer Kolonie, von Kindern, von Ernten. Ist dies eine Übertragung aus der Zukunft? Aus einer parallelen Zeitlinie? Oder nur ein grausames Echo von Wunschdenken?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Der Signalrichtung folgen — es könnte uns heimführen';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Die Kursanpassung ist gering. Ob die Stimmen real sind oder nicht, die Besatzung segelt mit Zielstrebigkeit.';

  @override
  String get event_subspaceEcho_choice1_text => 'Alles zur Analyse aufzeichnen';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguisten und Physiker analysieren die Aufnahme. Sie extrahieren Navigationsreferenzen, die unsere Karten verbessern.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Abtun — der Weltraum spielt den Einsamen Streiche';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Die pragmatische Wahl. Einige Besatzungsmitglieder sind enttäuscht, aber das Schiff bleibt auf bewährtem Kurs.';

  @override
  String get event_boonPerfectCalm_title => 'Die große Stille';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Aus Gründen, die kein Physiker erklären kann, tritt das Schiff in eine Region des Weltraums ein, die übernatürlich still ist — keine Strahlung, kein Mikrotrümmer, keine Gravitationsinterferenz. Jedes System des Schiffes läuft auf Spitzeneffizienz. Die Besatzung schläft erstmals seit Monaten gut.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Die Ruhe für umfassende Reparaturen nutzen';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Reparaturcrews arbeiten unter perfekten Bedingungen. Jedes System wird gewartet. Das Schiff geht erneuert hervor.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Die Besatzung ruhen lassen — sie haben es verdient';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Schiffsweite Standby. Kolonisten schlafen, teilen Mahlzeiten, erzählen Geschichten. Die menschlichen Kosten der Reise werden kurzzeitig zurückgezahlt.';

  @override
  String get event_boonAncientWaystation_title => 'Uralte Wegstation';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Eingebettet in die Gravitationssenke zwischen zwei toten Sternen funktioniert eine uralte Station noch immer — automatisiert, geduldig, wartend auf Reisende. Ihre Buchten öffnen sich, als wir uns nähern. Reparaturdrohnen aktivieren sich. Treibstoffreserven strecken sich uns entgegen. Jemand hat sie vor langer Zeit für Menschen wie uns gebaut.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Andocken und alles annehmen, was sie bietet';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Die Station repariert, betankt und rekalibriert das Schiff mit Technologie, die Jahrhunderte voraus ist. Als wir ablegen, fährt die Station herunter — ihr Zweck erfüllt.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Reparaturen annehmen, aber sie für Nachfolgende betriebsbereit lassen';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Wir nehmen nur, was wir brauchen, und übermitteln die Koordinaten der Station Richtung Erde. Die Besatzung fühlt sich edelmütig.';

  @override
  String get event_relicSentinel_title => 'Der Wächter';

  @override
  String get event_relicSentinel_narrative =>
      'Ein turmhoher Bau umkreist einen kargen Mond — ein einsamer Wächter, von seinen Erbauern zurückgelassen. Er ist leicht einen Kilometer hoch, geformt wie ein Speer aus schwarzem Glas. Als wir uns nähern, öffnet sich ein einzelnes rotes Auge an seiner Spitze und verfolgt das Schiff. Es feuert nicht. Es ruft nicht. Es beobachtet.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Unser Missionsprofil senden — zeigen, dass wir friedlich sind';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Das Auge verdunkelt sich zu Bernstein, dann Grün. Ein Datenpaket trifft ein: Koordinaten dreier Sternsysteme, markiert mit \"SICHER\" in universeller mathematischer Notation. Ein Geschenk eines Wächters.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Position halten und passiv studieren';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Stunden der Beobachtung liefern Erkenntnisse in Materialwissenschaft, die nicht möglich sein sollten. Das Hüllenverkleidungsteam macht fieberhaft Notizen.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Sofort zurückweichen — wir kennen seine Regeln nicht';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Das Auge schließt sich, als wir uns zurückziehen. Welcher Test das auch war, wir haben ihn nicht angenommen. Die Besatzung debattiert tagelang.';

  @override
  String get event_relicSeedProbe_title => 'Wandernder Samen';

  @override
  String get event_relicSeedProbe_narrative =>
      'Eine kleine, elegante Sonde taumelt durch die Leere und sendet auf allen Frequenzen gleichzeitig. Ihre Schale ist Keramik, mit Symbolen geätzt, die sich bei Betrachtung verändern. Darin: eine Druckkammer mit Erde, Samen und gefrorenen Mikroorganismen von einer Welt, die nicht mehr existiert.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Die biologische Nutzlast in unsere Samenbanken integrieren';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Außerirdische Samen und Mikroben werden sorgfältig katalogisiert und konserviert. Sie könnten eine karge Welt in etwas Lebendiges verwandeln. Biologen nennen es ein Wunder in einer Flasche.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Antriebs- und Navigationssysteme der Sonde studieren';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Der Antrieb der Sonde ist Jahrhunderte voraus — ein reaktionsloser Triebwerk von der Größe einer Faust. Ingenieure rekonstruieren Fragmente des Designs.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Die gesamte Sonde als Kulturgut intakt bewahren';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Im Atrium des Schiffes ausgestellt, wird der außerirdische Samen zum Symbol der Verwandtschaft zwischen Spezies. Jemand anderes, irgendwo, hat ebenfalls versucht, seine Welt zu retten.';

  @override
  String get event_relicWarningBuoy_title => 'Warnbojen';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Ein Netzwerk kleiner Bojen, Hunderte davon, in perfektem geometrischem Muster über unseren Flugpfad angeordnet. Jede sendet dasselbe Signal — einen einfachen sich wiederholenden Puls, der an Frequenz zunimmt, je näher wir kommen. Es fühlt sich wie eine Warnung an. Oder ein Zaun.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Die Warnung beherzigen — Kurs um das Netzwerk ändern';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Der Umweg kostet Zeit und belastet die Navigation, aber als wir die Grenze umfahren, erfassen Langstreckensensoren, was dahinter liegt: eine Region des Weltraums voller Trümmer zertrümmerter Welten. Die Bojen haben uns gerettet.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Durchbrechen — wir können uns keine Umwege leisten';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Nichts geschieht, als wir die Linie überqueren. Die Bojen verstummen. Wovor sie auch warnten, es ist entweder verschwunden oder wir hatten Glück. Die Besatzung atmet wieder.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Eine Boje zur Analyse einfangen';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Das Innere der Boje enthält ein komprimiertes Datenarchiv — stellare Kartographie dieser Region von vor einer Million Jahren. Einige der Daten sind noch genau.';

  @override
  String get event_relicMirrorArray_title => 'Das Spiegel-Array';

  @override
  String get event_relicMirrorArray_narrative =>
      'Tausende flache, reflektierende Oberflächen hängen reglos im Weltraum, in konzentrischen Ringen über Hunderte Kilometer angeordnet. Sie fokussieren Sternenlicht einer fernen Sonne auf einen einzigen Punkt — einen künstlichen Stern, der in der Leere brennt. Jemand hat einen Leuchtturm zwischen Galaxien gebaut.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Im fokussierten Licht baden — alles aufladen';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Das konzentrierte Sternenlicht flutet unsere Solarkollektoren. Energiereserven steigen sprunghaft. Das warme Licht hebt jede Seele an Bord nach Monaten in kalter Dunkelheit.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Das Spiegelmaterial studieren — es sollte nicht existieren';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Die Spiegel bestehen aus einem Material mit perfekter Reflexion — null Absorption bei jeder Wellenlänge. Ingenieure entnehmen eine Scherbe. Hüllenverkleidung wird nie wieder dieselbe sein.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Den Brennpunkt untersuchen — etwas wird beleuchtet';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Am Konvergenzpunkt: eine kleine Kapsel, perfekt im konzentrierten Licht konserviert. Darin eine holographische Sternkarte, so detailliert, dass unsere Computer Tage brauchen, um sie zu indexieren.';

  @override
  String get event_relicGraveyard_title => 'Der Sondenfriedhof';

  @override
  String get event_relicGraveyard_narrative =>
      'Wir treiben in eine Wolke verlassener Sonden — Tausende davon, von Dutzenden verschiedener Zivilisationen. Einige sind uralt jenseits aller Berechnung, durch kosmische Strahlung zu metallischen Fossilien verschmolzen. Andere blinken noch mit schwindender Energie. Dies war einst ein Kreuzweg. Jede Spezies, die hier vorbeikam, hinterließ etwas.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Systematische Bergung — die beste Technologie ernten';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Ingenieurteams arbeiten in Schichten und demontieren außerirdische Technik von hundert verschiedenen Designs. Die Verschmelzung der Ideen erzeugt Durchbrüche in jedem System.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Auf Navigationsdaten in den Speicherbänken konzentrieren';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Das Abgleichen von Sternkarten eines Dutzends Spezies erzeugt die vollständigste Karte dieses galaktischen Arms, die je zusammengestellt wurde.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Unsere eigene Sonde dem Friedhof hinzufügen — eine Markierung hinterlassen';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Wir fertigen ein kleines Leuchtfeuer, das die Geschichte der Menschheit trägt, und fügen es der Sammlung hinzu. Die Besatzung fühlt sich mit etwas Gewaltigem und Uraltem verbunden.';

  @override
  String get event_relicDreamcatcher_title => 'Der Traumfänger';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Ein Netz aus Filamenten, dünn wie Spinnenseide, aber über Tausende Kilometer gespannt, ist zwischen zwei vagabundierenden Planetoiden aufgehängt. Es ist kein Netz — es ist eine Antenne, abgestimmt auf Frequenzen, die menschlichen Gehirnwellenmustern entsprechen. Als wir in ihre Reichweite kommen, beginnt jeder schlafende Kolonist denselben Traum zu träumen: eine blühende Stadt unter einem bernsteinfarbenen Himmel.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Traumkoordinaten aufzeichnen — die Stadt könnte real sein';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Neurowissenschaftler dekodieren räumliche Informationen aus dem gemeinsamen Traum. Sie entsprechen einem realen Sternsystem — und die Stadt in der Vision war keine Metapher. Jemand ist dort draußen, und sie erwarten uns.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Filamentproben ernten — das Material ist außergewöhnlich';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Die Filamente sind ein Raumtemperatur-Supraleiter. In unsere Systeme integriert, reduzieren sie den Energieverlust auf nahezu null.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Das Netz durchtrennen und die Träumer befreien';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Die Träume hören auf. Kolonisten wachen desorientiert, aber unverletzt auf. Manche trauern der verlorenen Vision nach. Andere sind dankbar, ohne außerirdisches Flüstern zu schlafen.';

  @override
  String get event_relicRosetta_title => 'Rosetta-Objekt';

  @override
  String get event_relicRosetta_narrative =>
      'Ein kleiner, dichter Würfel aus unbekanntem Metall taumelt am Schiff vorbei. Jede Seite ist mit derselben Botschaft in einem anderen Notationssystem beschrieben — mathematisch, chemisch, genetisch, akustisch, elektromagnetisch und eines, das wir nicht identifizieren können. Es ist ein Rosetta-Stein für den Kosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Die sechste Seite entschlüsseln — die unbekannte Notation';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Monate der Analyse ergeben einen Durchbruch: Das sechste System kodiert räumliche Koordinaten mittels Gravitationswellen. Unser Physikverständnis macht einen Generationensprung.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Die chemische Seite nutzen, um neue Verbindungen zu synthetisieren';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Die chemische Notation beschreibt Materialien, die wir uns nie vorgestellt haben. Ingenieure fertigen Hüllenflicken, die leichter und stärker sind als alles von der Erde.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Die genetische Seite an unsere Samenbanken senden';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Die genetische Notation enthält optimierte DNA-Sequenzen für Strahlungsresistenz und Nährstoffaufnahme. Unsere Ernten und Kolonisten werden auf fremdem Boden widerstandsfähiger sein.';

  @override
  String get event_relicGhostFleet_title => 'Geisterflotte';

  @override
  String get event_relicGhostFleet_narrative =>
      'Scanner zeichnen ein erschreckendes Bild: eine Flotte außerirdischer Kriegsschiffe, Hunderte stark, reglos in Formation hängend. Sie sind uralt — Energiewerte bei null, Hüllen von Äonen von Mikroeinschlägen zernarbt. Welche Schlacht sie auch ansteuerten, sie kam nie. Sie warten hier, tot und geduldig, länger als die menschliche Zivilisation existiert.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Das Flaggschiff entern — wenn jemand die beste Technik hatte, dann es';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Das Kommandodeck des Flaggschiffs beherbergt noch einen intakten taktischen Computer. Seine prädiktiven Algorithmen sind Jahrhunderte voraus. Navigation und Bedrohungserkennung verbessern sich dramatisch.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Panzerplatten von den Eskortenschiffen abmontieren';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Die Panzerung außerirdischer Kriegsschiffe ist darauf ausgelegt, Waffen standzuhalten, die wir uns nicht einmal vorstellen können. An unsere Hülle geschraubt, macht sie das Kolonieschiff nahezu unzerstörbar.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Ihre kryogenen Systeme bergen — sie trugen Soldaten';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Außerirdische Kryotechnik funktioniert nach Prinzipien, die wir nie in Betracht gezogen haben. Unsere Kapseln laufen nach der Nachrüstung kühler, gleichmäßiger und zuverlässiger.';

  @override
  String get event_scannerCalibrationDrift_title => 'Scanner-Kalibrierdrift';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Routinediagnostik enthüllt, dass mehrere Scanner-Subsysteme nach dem letzten FTL-Sprung aus der Kalibrierung gedriftet sind. Die Atmosphären- und Temperaturscanner lesen Geistersignale. Ingenieure können sie reparieren, aber es braucht Zeit und Ressourcen.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Vollständige Rekalibrierung — Technik-Ressourcen umleiten';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Eine sorgfältige Neuausrichtung stellt beide Scanner auf nahezu perfekte Genauigkeit wieder her, aber die Technikbucht ist erschöpft.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Schnellreparatur — nur den Atmosphärenscanner rekalibrieren';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Der Atmosphärenscanner wird wiederhergestellt. Der Temperaturscanner bleibt vorerst unzuverlässig.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Sonde zur Referenzkalibrierung einsetzen';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Die Sonde liefert ein sauberes Referenzsignal. Beide Scanner erfassen es und rekalibrieren sich automatisch.';

  @override
  String get event_ionStormScanners_title => 'Ionensturm-Interferenz';

  @override
  String get event_ionStormScanners_narrative =>
      'Ein Ionensturm fegt durch den Sektor und überflutet Scanner-Arrays mit Rauschen. Die Mineral- und Wassererkennungssysteme tragen die Hauptlast der elektromagnetischen Interferenz.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Scanner herunterfahren, bis der Sturm vorbeizieht';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Die Scanner überleben, verlieren aber Kalibrierdaten. Mineral- und Wasserablesung werden weniger präzise.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Weiter scannen — durch das Rauschen hindurch';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Rohdaten strömen herein, aber die Filterschaltungen brennen in zwei Subsystemen durch. Gravimetrische Scans sind ebenfalls betroffen.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Den Sturm zur Belastungsprüfung und Filterverbesserung nutzen';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Das Wissenschaftsteam nutzt das Rauschen, um adaptive Filter zu trainieren. Der Wasserscanner verbessert sich, aber der Mineralscanner nimmt Schaden.';

  @override
  String get event_bioScannerContamination_title => 'Bio-Scanner-Kontamination';

  @override
  String get event_bioScannerContamination_narrative =>
      'Der Lebenszeichen-Scanner wurde durch organische Rückstände des letzten Planetenscans kontaminiert. Fehlalarme sind überall. Der gravimetrische Scanner zeigt ebenfalls sympathisches Rauschen.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sensor-Array sterilisieren — vollständige Dekontamination';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Eine gründliche Reinigung stellt den Lebenszeichen-Scanner wieder her, aber die chemischen Mittel korrodieren das Gehäuse des gravimetrischen Sensors.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Softwarefilter — algorithmisch kompensieren';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Der Filter funktioniert gut genug, aber die zugrunde liegende Kontamination wird beide Systeme langsam verschlechtern.';

  @override
  String get event_scannerPowerSurge_title => 'Scanner-Stromstoß';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Eine Stromleitung nahe der Scannerbucht überlastet und schickt einen Stoß durch mehrere Subsysteme. Die Atmosphären- und Lebenszeichenscanner werden direkt getroffen. Schilde absorbieren einen Teil der Überschüssenergie.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Strom umleiten — Scanner retten';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Schnelles Handeln des Ingenieurteams begrenzt den Schaden, aber die Schilde nehmen die umgeleitete Energie auf.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Den Stoß durchlaufen lassen';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Scanner erhalten die volle Wucht. Atmosphären- und Lebenszeichenwerte sind deutlich beeinträchtigt.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Die Energiezelle einer Sonde opfern, um den Stoß zu absorbieren';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Die Kondensatoren der Sonde saugen die überschüssige Energie wie ein Schwamm auf. Scannerschaden ist vernachlässigbar.';

  @override
  String get event_relicWorldEngine_title => 'Die Weltmaschine';

  @override
  String get event_relicWorldEngine_narrative =>
      'Tiefsensorscans enthüllen etwas Unmögliches: eine Maschine von der Größe eines kleinen Mondes, schlummernd im Dunkeln zwischen den Sternen. Ihre Oberfläche ist mit Mechanismen in Kontinentgröße bedeckt — Atmosphärenprozessoren, Magnetfeldgeneratoren, tektonische Stabilisatoren. Jemand hat eine Maschine gebaut, die Welten baut.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Die Terraforming-Blaupausen herunterladen';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Die Blaupausen sind umfangreich und teilweise beschädigt, aber was wir bergen, könnte jede feindliche Welt bewohnbar machen. Unsere Kolonisten werden ihre neue Heimat umformen.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Konstruktionsmaterialien von ihrer Hülle ernten';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Die Hülle der Weltmaschine besteht aus Metamaterialien, die sich selbst reparieren, wenn sie beschädigt werden. In unser Schiff integriert, heilen sie langsam bestehende Hüllenbrüche.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Versuchen, sie zu reaktivieren — auf unser Zielsystem richten';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Die Maschine rührt sich. Uralte Systeme durchlaufen Startsequenzen. Ein Energiestrahl lanziert zu einem fernen Stern. Ob es funktioniert, wird erst bekannt, wenn wir ankommen, aber die Messwerte sind vielversprechend.';

  @override
  String get event_uneventfulMaintenance_title => 'Routinewartungsschicht';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nichts fordert Aufmerksamkeit. Das Schiff summt stetig durch die Leere und der Dienstplan sieht ein routinemäßiges Wartungsfenster vor. Der Crewchef fragt, worauf die Schicht ihren Einsatz konzentrieren soll.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Auf Versiegelung von Hüllen-Mikrorissen konzentrieren';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Eine ruhige Schicht, die mit dem Flicken von Haarrissen verbracht wird. Nichts Dramatisches, aber die Hülle ist marginal besser dafür.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Die Frontscanner rekalibrieren';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Der Scannertechniker verbringt einige Stunden mit Feinabstimmung. Die Messwerte werden etwas schärfer.';

  @override
  String get event_uneventfulQuietWatch_title => 'Stille Wache';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Die Sterne ziehen in Stille vorbei. Die Brücke ist ruhig, die Instrumente stabil. Es ist eine jener seltenen Strecken, in denen das Universum nichts von dir fordert.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Die Besatzung ruhen lassen — sie haben eine ruhige Schicht verdient';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Ein paar Stunden echten Friedens. Menschen schlafen tiefer, Spannungen lassen nach, und der Kulturoffizier vermerkt einen leichten Moralanstieg.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Diagnosen niedriger Priorität durchführen, solange es ruhig ist';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Kleinere Probleme werden erkannt und protokolliert. Nichts Dringendes, aber die Technik-Logs sind etwas sauberer.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Kryokapsel-Prüfung — Alles nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Die vierteljährliche Kryokapsel-Prüfung verläuft ohne einen einzigen Alarm. Jede Kapsel zeigt Grün. Das Medizinteam hat einen seltenen Moment der Ruhe.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Einige Kolonisten kurz für einen Moralbesuch aufwecken';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Drei Kolonisten werden für eine Stunde zum Bewusstsein gebracht. Sie teilen Geschichten, umarmen alte Freunde und kehren lächelnd in den Kryoschlaf zurück.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Schlafen lassen — keine unnötigen Aufwachzyklen riskieren';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Die Kapseln setzen ihren einwandfreien Betrieb fort. Die Mediziner genießen stattdessen eine ruhige Tasse Tee.';

  @override
  String get event_uneventfulCartography_title =>
      'Stellare Kartographie-Aktualisierung';

  @override
  String get event_uneventfulCartography_narrative =>
      'Die planmäßige Kartographie-Aktualisierung des Navigationsteams enthüllt nichts Ungewöhnliches — nur die erwarteten Sternfeldverschiebungen auf unserer Reise. Ein ruhiger Tag für die Navigatoren.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Navigation gegen die neuen Sternpositionen rekalibrieren';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Eine kleine Kurskorrektur, kaum wahrnehmbar. Der Navigationscomputer summt zufrieden.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Die Sternkarten für das Koloniearchiv aktualisieren';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Zukünftige Kolonisten werden etwas bessere Karten dieser Region haben. Ein kleines Geschenk an die Nachwelt.';

  @override
  String get event_uneventfulAnniversary_title => 'Schiffsjubiläum';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Ein Jahr seit dem Start — oder sind es zwei? Die Zeit verschwimmt im tiefen Weltraum. Jemand in der Kombüse hat einen Kuchen aus rekonstituierten Vorräten gebacken. Der Kapitän muss entscheiden, wie der Anlass begangen wird.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Kleine Feier — Musik, Kuchen, ein Toast auf die Erde';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Eine Stunde Wärme in der kalten Leere. Menschen lachen, manche weinen, und jeder fühlt sich ein wenig menschlicher.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Weiter wie gewohnt — wir feiern, wenn wir ankommen';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Die Besatzung respektiert den stoischen Ansatz. Der Fokus schärft sich, und das Dienstteam führt einen zusätzlichen Systemcheck durch.';

  @override
  String get event_databaseLiterature_title => 'Literaturarchiv der Erde';

  @override
  String get event_databaseLiterature_narrative =>
      'Die KI des Schiffes öffnet einen lange versiegelten Bereich der Kulturdatenbank: das vollständige Literaturarchiv der Erde. Romane, Poesie, Theaterstücke — Millionen von Werken aus jeder Sprache und Epoche. Die Besatzung versammelt sich zu einer Lesung.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Ausgewählte Lesungen schiffsweit übertragen';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare hallt durch die Korridore. Rumis Verse spielen in der Hydroponikbucht. Die Besatzung erinnert sich, was sie trägt.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Das Archiv für Bildungsprogramme indexieren';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Der Katalogisierungsaufwand stärkt die Wissensbasis des Schiffes und gibt dem Kulturoffizier neues Lehrmaterial.';

  @override
  String get event_databaseSchematics_title => 'Ingenieursplan-Durchsicht';

  @override
  String get event_databaseSchematics_narrative =>
      'Ein Ingenieur stößt auf eine vergessene Partition in der Schiffsdatenbank: detaillierte Pläne aus dem letzten Jahrzehnt irdischer Ingenieurskunst — Fusionsreaktordesigns, Metamaterial-Blaupausen und experimentelle Antriebskonzepte.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Antriebskonzepte für das Technikteam priorisieren';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Die Pläne enthüllen Effizienzverbesserungen, die die ursprünglichen Konstrukteure nie Zeit hatten umzusetzen. Die Technikbucht summt.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Wissen breit teilen — jede Abteilung profitiert';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Hülleningenieure, Scannertechniker und Mediziner finden alle nützliche Erkenntnisse. Eine steigende Flut hebt jedes System, leicht.';

  @override
  String get event_databaseCorruption_title => 'Kulturerhaltungsscan';

  @override
  String get event_databaseCorruption_narrative =>
      'Eine planmäßige Integritätsprüfung der Kulturdatenbank enthüllt Bitfäule — Abschnitte von Musik, mündlichen Überlieferungen und religiösen Texten sind unwiederbringlich degradiert. Nicht alles hat die Reise überstanden.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Technik-Ressourcen zur Rettung des Verbliebenen umleiten';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Ingenieure unterbrechen andere Arbeiten, um Datenrettungsalgorithmen auszuführen. Sie retten das meiste, aber der Aufwand kostet die Technikbucht.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Kolonisten bitten, die verlorenen Werke aus dem Gedächtnis nachzubilden';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Eine wunderschöne, unvollkommene Mühe. Was wiederaufgebaut wird, gehört der Reise, nicht der Erde. Eine neue Tradition wird geboren.';

  @override
  String get event_databaseBreakthrough_title =>
      'Archivierter Forschungsdurchbruch';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Ein Physiker, der alte irdische Forschungsarbeiten in der Datenbank abgleicht, entdeckt, dass zwei nicht verwandte Studien zusammen eine neue Methode zur Langstrecken-Spektralanalyse beschreiben. Die Implikationen sind enorm.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Die neue Analysemethode im Scanner-Array implementieren';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Das Scannerteam arbeitet fieberhaft. Innerhalb von Tagen verdoppelt sich die Spektralauflösung. Ferne Planeten offenbaren ihre Geheimnisse.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Den Fund schiffsweit veröffentlichen — mehr Forschung inspirieren';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Der Durchbruch löst eine Welle interdisziplinärer Studien aus. Die Technik verbessert sich breit, und die Besatzung fühlt sich intellektuell lebendig.';

  @override
  String get event_alienFleetSighting_title =>
      'Außerirdische Flotte am Horizont';

  @override
  String get event_alienFleetSighting_narrative =>
      'Langstreckenscanner zeichnen ein erschreckendes Bild: eine Flotte außerirdischer Schiffe, Hunderte an der Zahl, die sich in perfekter Formation über das Sternfeld bewegen. Sie überragen unser Schiff bei weitem. Ihr Kurs wird sie innerhalb von Stunden in Sensorreichweite bringen. Erstkontakt — zu ihren Bedingungen oder unseren.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Still beobachten — dunkel gehen und zusehen';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Das Schiff fährt auf minimale Emissionen herunter. Die Flotte zieht vorbei wie ein Schwarm leuchtender Wale, ohne das winzige menschliche Schiff in ihrem Kielwasser zu bemerken. Scannerdaten sind außergewöhnlich.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Erstkontakt versuchen — einen Gruß senden';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Ein einzelnes Schiff bricht aus der Formation und nähert sich. Ein Datenstoß trifft ein — Sternkarten, Warnungen und etwas, das Musik sein könnte. Dann schließt es sich der Flotte wieder an und sie sind verschwunden.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Fliehen — Kurs sofort ändern';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Das Schiff beschleunigt hart in die entgegengesetzte Richtung. Die Kursänderung ist teuer und belastend, aber die Flotte bemerkt uns nie. Sicherheit um einen Preis.';

  @override
  String get event_alienTradeOffer_title => 'Außerirdisches Handelsangebot';

  @override
  String get event_alienTradeOffer_narrative =>
      'Ein außerirdisches Schiff, kleiner als unseres, aber mit immenser Energie strahlend, passt sich unserer Geschwindigkeit an und sendet eine einfache, sich wiederholende Nachricht. Unsere Linguisten entschlüsseln sie innerhalb von Stunden: Es ist ein Handelsangebot. Drei Austauschkategorien werden vorgeschlagen.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Technische Pläne gegen außerirdische Sternkarten tauschen';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Wir übermitteln unsere Antriebsdesigns; sie antworten mit Navigationsdaten, die einen riesigen Bereich unerforschten Weltraums abdecken. Unsere Karten verbessern sich dramatisch, obwohl wir unsere Technologie mit einer unbekannten Spezies geteilt haben.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Kulturdaten gegen Schiffsreparaturen tauschen';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Wir senden unsere Musik, Kunst und Geschichte. Im Gegenzug schwärmen außerirdische Reparaturdrohnen über die Hülle und versiegeln Brüche mit Materialien, die wir nicht identifizieren können. Die Hülle glänzt. Unsere Seele ist geteilt.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Den Handel ablehnen — das Risiko ist zu groß';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Das außerirdische Schiff wartet eine Weile, dann fliegt es ohne Zwischenfall davon. Die Besatzung ist erleichtert, fragt sich aber, was verloren ging.';

  @override
  String get event_alienWarning_title => 'Außerirdische Warnsendung';

  @override
  String get event_alienWarning_narrative =>
      'Jeder Lautsprecher auf dem Schiff knistert mit einer außerirdischen Stimme — von unserer KI in Echtzeit übersetzt: \"GEFAHR VORAUS. UMKEHREN. DIE DUNKELHEIT VERSCHLINGT.\" Die Sendung wiederholt sich, dann verstummt sie. Langstreckensensoren zeigen eine anomale Leere auf unserem aktuellen Kurs.';

  @override
  String get event_alienWarning_choice0_text =>
      'Die Warnung beherzigen — Kurs um die Leere ändern';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Der Umweg belastet die Navigation erheblich, aber als wir die Leere umfahren, bestätigen die Sensoren: Nichts, das diese Region betrat, kam je heraus. Wir schulden unbekannten Stimmen eine Schuld.';

  @override
  String get event_alienWarning_choice1_text =>
      'Warnung ignorieren — auf Kurs bleiben';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Wir stoßen hindurch. Die Leere entpuppt sich als Region intensiver Mikrotrümmer. Hülle und Scanner erleiden Bestrafung, bevor wir die andere Seite erreichen.';

  @override
  String get event_alienWarning_choice2_text =>
      'Den Rand der Leere mit einer Sonde untersuchen';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Die Sonde betritt die Leere und übermittelt außergewöhnliche Daten, bevor sie verstummt. Das Scannerteam extrahiert wertvolle Messwerte, aber die Sonde ist verloren.';

  @override
  String get event_nativeSignalDetected_title =>
      'Übertragungen von der Zielwelt';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Das Kommunikations-Array fängt strukturierte elektromagnetische Signale auf, die von unserem Zielplaneten stammen. Sie sind unverkennbar: regelmäßig, moduliert, künstlich. Jemand ist bereits dort. Die gesamte Prämisse der Kolonie verschiebt sich in einem Augenblick.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Einen friedlichen Gruß senden — unsere Ankunft ankündigen';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Eine mutige Wahl. Das Signal ändert sein Muster nach unserer Sendung — sie haben uns gehört. Ob dies Willkommen oder Warnung ist, bleibt unklar, aber die Tür ist offen.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Nur zuhören — lernen, bevor wir uns offenbaren';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Monate passiven Zuhörens zeichnen ein Bild der einheimischen Zivilisation. Sie sind vorsichtig, territorial, aber nicht feindlich. Wir kommen informiert an.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Das Signal stören — ihnen die Kenntnis unserer Annäherung verweigern';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Die Störung funktioniert, aber es ist ein Akt der Aggression gegen ein Volk, das wir nicht kennengelernt haben. Die Besatzung ist in der moralischen Frage gespalten.';

  @override
  String get event_nativeProbeEncounter_title => 'Außerirdischer Sondenabfang';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Eine kleine, elegante Sonde — nicht menschlichen Ursprungs — passt sich unserer Geschwindigkeit an und beginnt, das Schiff zu scannen. Ihre Designsprache stimmt mit den Signalen vom Zielplaneten überein. Die Einheimischen haben ein Willkommenskomitee geschickt. Oder eine Überwachungsdrohne.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Den Scan erlauben — zeigen, dass wir nichts zu verbergen haben';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Die Sonde schließt ihre Vermessung ab und sendet einen Datenstoß zurück zum Planeten. Minuten später trifft ein zweiter Stoß für uns ein: Atmosphärendaten, sichere Landezonen und etwas, das eine Einladung sein könnte.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Die Sonde zur Untersuchung einfangen';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Die Sonde wird in den Frachtraum gezogen. Ihre Technologie ist faszinierend, aber das Einfangen könnte von ihren Erbauern als feindlich angesehen werden.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Zerstören — wir kennen ihre Absicht nicht';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Ein einzelner Puls reduziert die Sonde zu Fragmenten. Die Besatzung fühlt sich sicherer, aber eine mögliche Brücke wurde verbrannt.';

  @override
  String get event_nativeCulturalExchange_title => 'Erster Kulturaustausch';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Eine Schmalbandatenverbindung wurde mit den Einheimischen des Planeten hergestellt. Sie senden uns Bilder, Klänge und mathematische Sequenzen. Unsere Linguisten und Kulturoffiziere arbeiten rund um die Uhr, um eine Antwort vorzubereiten. Dies ist das wichtigste Gespräch der Menschheitsgeschichte.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Die Kunst und Musik der Erde teilen — mit Schönheit vorangehen';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Wir übermitteln Bach, australische Punktmalerei und den Klang von Regen auf Blättern. Die Antwort ist eine Kaskade außerirdischer Harmonien, die die Besatzung zum Weinen bringt. Das Verständnis vertieft sich.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Wissenschaftliches Wissen teilen — mit Vernunft vorangehen';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Wir übermitteln unser Periodensystem, Sternkarten und Physik. Sie antworten mit Korrekturen und Ergänzungen. Unsere Technik springt vorwärts, aber der Austausch fühlt sich transaktional an.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Eine Sonde mit physischen Proben schicken — DNA, Samen, Wasser';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Eine Sonde trägt die Essenz der Erde in außerirdische Hände. Die Einheimischen antworten mit einem ähnlichen Geschenk — biologische Proben von ihrer Welt. Biologen sind begeistert.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Landetriebwerk-Fehlfunktion';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Bei einem routinemäßigen Systemcheck zünden die Landetriebwerke fehl — ein scharfer Knall hallt durch die unteren Decks und das Schiff schwankt. Die Diagnostik enthüllt eine gesprungene Kraftstoffdüse im primären Lande-Array. Ohne Reparatur wird die Planetenlandung hart.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Das Technikteam umleiten, um eine Ersatzdüse zu fertigen';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Ingenieure arbeiten Doppelschichten und fertigen eine neue Düse aus Reserve-Hüllenlegierung. Das Landesystem wird wiederhergestellt, allerdings ist die Technikbucht erschöpft.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Eine Sonde einsetzen, um die Triebwerkskalibrierung im Vakuum zu testen';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Die Sonde liefert Echtzeit-Schubdaten, die es den Ingenieuren ermöglichen, um die beschädigte Düse herum zu rekalibrieren. Keine vollständige Reparatur, aber das Landesystem stabilisiert sich.';

  @override
  String get event_landingSimDrill_title => 'Landesimulations-Übung';

  @override
  String get event_landingSimDrill_narrative =>
      'Mit der Planetenlandung in greifbarer Nähe ordnet der Kapitän eine vollständige Landesimulation an. Die Besatzung schnallt sich an, Systeme werden unter Last getestet und der virtuelle Abstieg beginnt. Es ist die realistischste Übung, die sie bekommen werden.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Auf technische Präzision konzentrieren — die Übung nach Vorschrift durchführen';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Die Simulation enthüllt zwei kleinere Kalibrierungsfehler, die sofort korrigiert werden. Das Landesystem ist danach straffer.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Ein schiffsweites Ereignis daraus machen — die Simulation übertragen';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Kolonisten schauen von jedem Bildschirm an Bord zu. Das gemeinsame Erlebnis des simulierten Abstiegs — das Beben, das Jubeln — schweißt die Besatzung zusammen wie nichts anderes.';

  @override
  String get event_dysonSphere_title => 'Die Dyson-Sphäre';

  @override
  String get event_dysonSphere_narrative =>
      'Sensoren erfassen eine unmögliche Struktur — eine partielle Dyson-Sphäre, die einen fernen Stern umgibt und seine gesamte Energieausgabe erntet. Wer auch immer das gebaut hat, hat alles übertroffen, was die Menschheit je ersonnen hat. Ein Andockport scheint sich zu öffnen, als wir uns nähern.';

  @override
  String get event_dysonSphere_choice0_text =>
      'Andocken und die Struktur erkunden';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Im Inneren schenken uns automatisierte Systeme Technologie, die unsere Fähigkeiten um Jahrhunderte voranbringt. Fünf Ingenieure gehen an die Verteidigungsmechanismen der Station verloren, bevor sie unsere Absicht erkennt. Die Konstrukteure werden mit außerirdischen Legierungen neu aufgebaut.';

  @override
  String get event_dysonSphere_choice1_text => 'Energie vom Äußeren ernten';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Wir baden im strahlenden Überlauf der Sphäre. Jedes System an Bord wird voll aufgeladen. Die Besatzung beobachtet in fassungsloser Stille.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Aus sicherer Entfernung studieren und weiterziehen';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Langstreckenscans enthüllen Konstruktionsprinzipien, die unser Verständnis von Ingenieurskunst revolutionieren.';

  @override
  String get event_nanotechPlague_title => 'Die Nanotech-Seuche';

  @override
  String get event_nanotechPlague_narrative =>
      'Eine Wolke entlaufener Nanomaschinen, Überreste des Waffenprogramms einer toten Zivilisation, infiltriert das Schiff durch Hüllen-Mikrorisse. Sie zerlegen nicht-kritische Systeme auf molekularer Ebene. Der Schwarm breitet sich schnell aus.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'EMP-Stoß — alles in den betroffenen Bereichen braten';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Der elektromagnetische Puls zerstört die Naniten, beschädigt aber auch unsere eigene Elektronik in diesen Bereichen. Kolonisten in der Explosion erleiden Verbrennungen.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Betroffene Bereiche ins Vakuum entlüften';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Ohne Atmosphäre verlangsamen sich die Naniten und sterben. Aber die Bereiche sind verloren, samt gespeicherter Vorräte und Kulturarchive.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Umprogrammieren — Waffen in Werkzeuge verwandeln';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Ein brillanter Ingenieur knackt den Nanitencode, aber fünf Besatzungsmitglieder in den am stärksten betroffenen Bereichen sind bereits nicht mehr zu retten. Der umprogrammierte Schwarm beginnt, das Schiff zu reparieren statt zu zerstören.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Den KI-Kern einer Sonde opfern, um einen Gegenschwarm zu erzeugen';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Die Prozessoren der Sonde werden umfunktioniert, um einen defensiven Nanitenschwarm zu steuern. Die Seuche wird mit minimalen Verlusten neutralisiert.';

  @override
  String get event_prematureAwakening_title => 'Das vorzeitige Erwachen';

  @override
  String get event_prematureAwakening_narrative =>
      'Ein Kaskadenversagen in der Kryokapselbucht weckt 200 Kolonisten Jahrzehnte zu früh. Sie sind verwirrt, verängstigt und verbrauchen Ressourcen, die für die Landephase bestimmt waren. Unter ihnen sind Kinder, die nie etwas anderes als das Schiff kannten.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'In die Besatzung integrieren — mehr Hände, mehr Hoffnung';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Die geweckten Kolonisten werden produktive Besatzungsmitglieder. Zwanzig Kolonisten überleben das abrupte Auftauen nicht, aber der Rest sammelt sich. Ressourcen werden knapp, aber die Stimmung steigt.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Versuch der Wiedereinfrierung — riskant, aber notwendig';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Der Wiedereinfrierungsprozess ist unvollkommen. Die meisten überleben, aber einige gehen verloren. Die Überlebenden tragen psychologische Narben.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Ihnen einen eigenen Bereich des Schiffes geben';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Zehn Kolonisten gehen an Komplikationen durch das Notauftauen verloren, aber der Rest bildet eine Mikrokolonie innerhalb des Schiffes. Sie entwickeln eigene Kultur und Regierungsform, eine Generalprobe für die planetare Besiedlung.';

  @override
  String get event_stowawaysAdvanced_title => 'Die verborgenen Passagiere';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Tief im Frachtraum, hinter falschen Schotten, entdeckt die Sicherheit eine ganze verborgene Gemeinschaft — 80 Menschen, die vor dem Start illegal an Bord gegangen sind. Sie haben in den Wänden des Schiffes gelebt, mit eigenen Gärten und Stromanschlüssen.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Willkommen heißen — 80 weitere Kolonisten sind ein Geschenk';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Die verborgene Gemeinschaft bringt Fähigkeiten in improvisierter Technik und Einfallsreichtum mit, die die Besatzung verblüffen. Ihre Gärten werden in das Hauptbiodome verpflanzt.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Einsperren und ihre gestohlenen Ressourcen umverteilen';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Die zurückgewonnenen Vorräte verbessern mehrere Systeme, aber die Inhaftierung von Familien — einschließlich Kindern — verfolgt die Besatzung.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Verhandeln — sie treten uns als Gleiche bei, wenn sie ihre Technik teilen';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Ihre improvisierten Energiezellen und Hydroponiktricks verbessern die Schiffseffizienz. Eine angespannte, aber produktive Integration beginnt.';

  @override
  String get event_alienReservation_title => 'Das außerirdische Reservat';

  @override
  String get event_alienReservation_narrative =>
      'Wir stolpern über ein außerirdisches Naturreservat — eine Region des Weltraums, die absichtlich mit bewohnbaren Planeten besät und von automatisierten Wächtern geschützt wird. Die Wächter scannen uns und projizieren eine Nachricht: \"Ihr dürft EINE Welt besiedeln. Wählt weise. Greift in die anderen ein und ihr werdet entfernt.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Dankbar annehmen — eine Welt ist alles, was wir brauchen';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Die Wächter führen uns zu einer vorbereiteten Welt. Scans enthüllen, dass sie außergewöhnlich geeignet für menschliches Leben ist.';

  @override
  String get event_alienReservation_choice1_text =>
      'Um bessere Bedingungen verhandeln — die Menschheit braucht Raum zum Wachsen';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Die Wächter erwägen unser Plädoyer. Sie rüsten unsere Scanner mit Daten über Dutzende Systeme jenseits des Reservats auf.';

  @override
  String get event_alienReservation_choice2_text =>
      'Ablehnen und gehen — wir lassen uns nicht einsperren';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Die Besatzung debattiert tagelang. Freiheit über Sicherheit. Die Wächter erlauben unsere Abreise mit einem Geschenk: einer Karte nahegelegener Gefahren.';

  @override
  String get event_cosmicHorror_title => 'Das Ding zwischen den Sternen';

  @override
  String get event_cosmicHorror_narrative =>
      'Etwas Gewaltiges und Dunkles verdeckt die Sterne voraus — kein Nebel, kein Schwarzes Loch. Es hat keine Masse, keine Energiesignatur, keine elektromagnetische Präsenz. Aber es ist DA, und es ist sich unserer bewusst. Besatzungsmitglieder nahe dem vorderen Beobachtungsdeck berichten von überwältigendem Grauen. Zwei wurden sediert.';

  @override
  String get event_cosmicHorror_choice0_text =>
      'Voller Rückwärtsgang — SOFORT weg hier';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Das Schiff stemmt sich gegen sein eigenes Momentum. Wir entkommen, aber der Schrecken verweilt. Einige Kolonisten erholen sich nie psychologisch.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Beobachtungsdeck versiegeln und hindurchstoßen';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Drei Tage Blindflug durch die Dunkelheit. Als die Sterne zurückkehren, weint die Besatzung vor Erleichterung. Die Hülle ist mit Mustern geätzt, die niemand erklären kann.';

  @override
  String get event_cosmicHorror_choice2_text => 'Kommunikation versuchen';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Das Wesen antwortet — nicht in Worten, sondern in Wissen, das direkt in die Köpfe der Besatzung gepresst wird. Sternkarten, Physik, Wahrheiten über das Universum. Die Hälfte der Besatzung ist erleuchtet. Die andere Hälfte ist zerbrochen.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Eine Sonde als Tribut anbieten';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Die Sonde treibt in die Dunkelheit und verschwindet. Das Wesen zieht sich leicht zusammen, als wäre es zufrieden. Unser Weg wird frei.';

  @override
  String get event_meteorGlancingHit_title => 'Streifender Meteoreinschlag';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Ein felsbrockengroßer Meteor streift die Backbordseite der Hülle in flachem Winkel. Der Einschlag reißt drei Meter äußere Verkleidung ab und sendet Schockwellen durch den gesamten Rahmen. Schadensbekämpfungsalarme heulen über alle Decks.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Sofort alle Reparaturbots zum Bruch umleiten';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Die Bots versiegeln den schlimmsten Schaden, aber der hektische Einsatz der Technikreserven lässt sekundäre Systeme unterversorgt.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Schub reduzieren und die Besatzung manuell flicken lassen';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Langsamerer Fortschritt, aber die Besatzung leistet solide Arbeit. Die Navigation leidet unter dem reduzierten Schubfenster während wir treiben.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Die Hüllenverkleidung einer Sonde als Flickmaterial opfern';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Die Sonde wird für Teile ausgeschlachtet. Der Flicken hält und die Hüllenintegrität bleibt erhalten, auf Kosten eines Scouts weniger.';

  @override
  String get event_meteorDirectImpact_title => 'Direkter Meteoreinschlag';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Ein halbe Tonne schwerer Eisenmeteorit schlägt bei einer Relativgeschwindigkeit von über 40 km/s glatt durch den vorderen Frachtraum. Zwei Besatzungsmitglieder im angrenzenden Korridor werden vermisst. Der Raum ist dem Vakuum ausgesetzt.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Frachtraum versiegeln und später nach Überlebenden suchen';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Der Raum wird in neunzig Sekunden versiegelt. Beide Besatzungsmitglieder hatten bereits evakuiert — gerade so. Die Hülle trägt dauerhafte Narben.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Volle Rettungsaktion vor der Versiegelung starten';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Ein Überlebender wird herausgezogen. Die verlängerte Exposition verschlimmert den Strukturschaden und erschöpft die Technikreserven.';

  @override
  String get event_meteorDebrisField_title => 'Trümmerfeld — Restschauer';

  @override
  String get event_meteorDebrisField_narrative =>
      'Langstreckensensoren haben ein verstreutes Feld von Meteorfragmenten erst erkannt, als wir bereits darin waren. Hunderte faustgroße Felsen treffen die Hülle in zufälligen Abständen. Jeder Treffer ist eine Lotterie.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Schilde hochfahren und mit Vollgas hindurchstoßen';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Die Schilde absorbieren die meisten Treffer, aber das schiere Volumen der Einschläge überwältigt sie. Hülle und Schildsysteme degenerieren.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Triebwerke aus und treiben — unser Profil minimieren';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Sechs angespannte Stunden der Stille. Die Navigation wird durch das antrieblose Treiben abgelenkt, aber die Hülle kommt mit weit weniger Einschlägen davon.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Eine Sonde als Vorwärtsschild einsetzen';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Die Sonde nimmt die Hauptlast des Beschusses auf. Das Schiff schlüpft in ihrem Schatten mit leichten Kratzern hindurch.';

  @override
  String get event_meteorShowerDense_title =>
      'Unerwarteter dichter Meteorschauer';

  @override
  String get event_meteorShowerDense_narrative =>
      'Ein vagabundierender Komet ist irgendwo vor uns zerfallen, und wir sind direkt in das Herz seines nachfolgenden Trümmerstroms geflogen. Die Scanner-Arrays werden mit Fragmenten beschossen und das Gehäuse des Landesystemsensors hat bereits einen Volltreffer erlitten.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Landesystem schützen — das Schiff drehen';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Die Rotation schirmt das Landesystem ab, setzt aber das Atmosphärenscanner-Array dem Hauptteil des Beschusses aus.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Scanner-Arrays schirmen — sie sind unersetzlich';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Die Scannerbänke überleben größtenteils intakt. Das Landesystem erleidet moderate Splitterschäden, mit denen wir leben müssen.';

  @override
  String get event_solarEmpBurst_title => 'EMP-Stoß — Stellaren Ursprungs';

  @override
  String get event_solarEmpBurst_narrative =>
      'Ein kompakter Sternüberrest, an dem wir innerhalb eines Lichttags vorbeigeflogen sind, hat einen fokussierten elektromagnetischen Puls entladen. Jede ungeschirmte Schaltung auf dem Schiff ist gefährdet. Wir haben Sekunden, um zu entscheiden, was wir schützen.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Gesamten Überspannungsschutz auf Navigation und Lebenserhaltung leiten';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigation und Lebenserhaltung überleben intakt. Die Scanner-Suite und Technikbucht absorbieren den Puls ungeschirmt — beide erleiden schweren Schaden.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Scanner-Arrays und Technikbucht schützen';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Wissenschafts- und Ingenieursysteme werden bewahrt. Navigation hat stundenlang Fehlfunktionen, während ihre Schaltkreise sich langsam erholen.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Alles herunterfahren und nach dem Puls neu starten';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Ein Kaltstart ist quälend — zwölf Stunden manueller Neustarts. Aber kein System ist unwiederbringlich durchgebrannt.';

  @override
  String get event_solarRadiationWave_title =>
      'Strahlungswelle — Klasse 4 Exposition';

  @override
  String get event_solarRadiationWave_narrative =>
      'Ein Solarstrahlungsstoß unerwarteter Intensität fegt durch die Mitteldecks des Schiffes. Die Kryokapselbuchten liegen im Expositionsbereich. Kolonisten in Suspension haben keinen natürlichen Schutz gegen harte Strahlung bei dieser Dosierung.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Kryokapselbuchten mit Kühlmittel als Strahlungsabschirmung fluten';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Das Kühlmittel absorbiert den Großteil der Strahlung. Die Kryokapseln überleben, aber das Kühlsystem selbst ist teilweise beeinträchtigt. Fünfzehn in den am stärksten betroffenen Kapseln schaffen es nicht.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Atmosphäre der äußeren Decks entlüften, um einen Vakuumpuffer zu schaffen';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Die Vakuumschicht reduziert die eindringende Strahlung erheblich. Zwanzig Kolonisten in Kapseln nächst den entlüfteten Bereichen erleiden letale Exposition. Hüllenstress durch das Druckgefälle ist unvermeidbar.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Energie auf magnetische Deflektoren umleiten';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Die Deflektoren reduzieren die Strahlungsexposition um zwei Drittel. Acht Kolonisten erhalten tödliche Dosen durch Lücken in der Deflektorabdeckung. Der Energieverbrauch trifft die Technikbucht hart und lässt die Navigation auf Minimalleistung laufen.';

  @override
  String get event_coronalMassEjection_title =>
      'Koronaler Massenauswurf — Volle Kraft';

  @override
  String get event_coronalMassEjection_narrative =>
      'Ein koronaler Massenauswurf beispiellosen Ausmaßes holt uns von hinten ein. Die Plasmawolke wird das Schiff innerhalb einer Stunde einhüllen. Unsere Schilde wurden nicht für diese Klasse von Ereignis konstruiert. Keine Option ist sauber.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Davonlaufen — Triebwerke auf hundertzwanzig Prozent';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Wir gewinnen genug Abstand, um die Exposition zu reduzieren. Die Triebwerke überhitzen und der Navigationscomputer meldet strukturelle Überlastungswarnungen auf der ganzen Linie.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Hinter dem Magnetschatten eines nahen Planetoiden Schutz suchen';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Das Feld des Planetoiden lenkt den Großteil des Auswurfs ab. So nah an einem unbekannten Körper zu navigieren zerkratzt die Hülle und belastet die Landesystemsensoren.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Kosmischer Strahlenstoß — Scannerinterferenz';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Ein Stoß ultrahochenergetischer kosmischer Strahlung hat alle Scannerelektronik mit Rauschen gesättigt. Die mineralogischen und gravimetrischen Arrays produzieren Unsinn. Die Rekalibrierung braucht Zeit, die wir vielleicht nicht haben.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Vollständiger Rekalibrierungszyklus — Schiff vorübergehend vom Netz nehmen';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Alle Scanner kommen nach vier Stunden sorgfältiger Rekalibrierung sauber zurück. Die Navigation leidet unter der reduzierten Situationswahrnehmung während des Blackout-Fensters.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Nur die kritischsten Arrays flicken — den Rest verrauscht lassen';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Gravimetrische und Lebenszeichenscanner werden wiederhergestellt. Die Mineral- und Temperatur-Arrays bleiben auf unbestimmte Zeit beeinträchtigt.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sondentelemetrie-Hardware als Ersatzteile opfern';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Das Kannibalisieren des Sensorpakets einer Sonde gibt uns die Komponenten, um die Scanner-Suite ohne lange Rekalibrierung wiederherzustellen.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Kosmischer Strahlenstoß — Kolonistenexposition';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Ein sekundärer kosmischer Strahlenschauer hat die Kryokapselabschirmung in Bucht 6 durchdrungen. Kolonisten in Suspension erleiden kumulative DNA-Schäden durch ionisierende Strahlung. Ohne Intervention werden die Zellreparaturmechanismen in den betroffenen Kapseln versagen.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Notauftauen — betroffene Kolonisten aufwecken';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Zweihundert Kolonisten werden vorzeitig geweckt. Vierzig mit den schwersten DNA-Schäden sprechen nicht auf die Behandlung an. Das Medizinteam tut, was es kann, für den Rest.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Hüllenpanzerung umleiten, um Bucht 6 abzuschirmen — strukturelle Kosten';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Die Kolonie wird gerettet, aber das Abmontieren der Panzerung von einem Hüllenabschnitt macht das Schiff in dieser Zone strukturell verwundbar.';

  @override
  String get event_coolantLeak_title => 'Kühlmittelleitung geplatzt';

  @override
  String get event_coolantLeak_narrative =>
      'Eine primäre Kühlmittelleitung ist hinter der Reaktorwand geplatzt. Überhitzte kryogene Flüssigkeit sprüht über einen Knotenpunkt, der kritische Technikbucht-Leitungen beherbergt. Die Reaktortemperatur steigt.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Reaktor herunterfahren und abkühlen lassen — vollständigen Blackout akzeptieren';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Ein kontrolliertes Herunterfahren verhindert eine Katastrophe. Zwölf Stunden Lebenserhaltung auf Batterie sind erschreckend, und Systeme starten unvollkommen neu.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Schadenskontrollteam reinschicken — Besatzungsexposition riskieren';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Das Team versiegelt die Ruptur in vierzig Minuten. Ein Besatzungsmitglied wird durch überhitzte Kühlmittelexposition getötet. Die Reparatur ist solide.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Kühlmittel aus der Kryokapselbucht als Notversorgung umleiten';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Der Reaktor wird stabilisiert. Die Kryokapselbucht läuft sechs Stunden über den sicheren Schwellenwerten — geringfügige, aber reale zelluläre Schäden akkumulieren sich.';

  @override
  String get event_powerGridFailure_title => 'Hauptstromnetz-Ausfall';

  @override
  String get event_powerGridFailure_narrative =>
      'Ein kaskadierender Fehler hat das Hauptstromnetz abgeschaltet. Backup-Systeme halten Lebenserhaltung und Kryokapselheizung, aber Navigation, Scanner und die Konstruktionsbucht sind dunkel. Jede Minute offline kostet uns Kursgenauigkeit.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Zuerst Nav und Scanner wiederherstellen — verlängerte Konstruktionsausfallzeit akzeptieren';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Navigations- und Scannersysteme kommen in zwei Stunden wieder online. Die Konstruktionsbucht verpasst einen kritischen Wartungszyklus.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Zuerst Konstrukteure wiederherstellen — sie nutzen, um die Reparatur zu beschleunigen';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Die Konstrukteure leiten den Strom effizient um. Die vollständige Netzwiederherstellung erfolgt schneller, aber die Navigation driftet während des verlängerten Blackouts erheblich.';

  @override
  String get event_lifeSupportGlitch_title => 'Lebenserhaltungs-Kaskadenglitch';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'Die KI der Lebenserhaltung ist in eine Fehlerschleife geraten und zykliert die CO₂-Waschintervalle unberechenbar. CO₂-Werte auf bewohnten Decks schwanken. Besatzungsmitglieder entwickeln Kopfschmerzen; einige sind bereits handlungsunfähig.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Hartes Reset der Lebenserhaltungs-KI erzwingen';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Das Reset behebt die Schleife, lässt aber manuelle Übersteuerungen zehn Stunden lang laufen. Drei Besatzungsmitglieder erliegen dem CO₂-Aufbau, bevor sich die Werte normalisieren.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Die Softwareschleife patchen — langsamer, aber sicherer';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Das Softwareteam isoliert und behebt den Fehler über sechs angespannte Stunden. CO₂-Werte normalisieren sich langsam. Kein hartes Reset nötig.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Betroffene Decks evakuieren und auf minimale Lebenserhaltung umstellen';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Zwei Kolonisten gehen in der Verwirrung der Evakuierung verloren. Systeme normalisieren sich nach dem Kaltstart der KI.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Wasserrecycler-Ausfall';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Die primäre Wasserrückgewinnungseinheit hat sich festgefressen. Die Backup-Einheit läuft bereits auf Volllast. Ohne Intervention wird die Besatzung innerhalb von 48 Stunden auf Notrationen sein, und die Kryokapsel-Kühlmittelzufuhr wird innerhalb von 72 Stunden beeinträchtigt.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Jeden verfügbaren Techniker zum Wiederaufbau des Reclaimers abziehen';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Die Einheit wird in dreißig Stunden wieder aufgebaut. Vier bereits geschwächte Besatzungsmitglieder überleben die Dehydration nicht.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Kryokapsel-Kühlmittelreserven als Nottrinkwasser umleiten';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Die Besatzung wird versorgt, aber acht Kolonisten in sich erwärmenden Kapseln erleiden irreversible Zellschäden. Die Kryokapsel-Kühlmittelreserve schrumpft gefährlich.';

  @override
  String get event_navComputerReboot_title => 'Navigationscomputer-Notstart';

  @override
  String get event_navComputerReboot_narrative =>
      'Der Navigationscomputer hat sich mitten in einer Kurskorrektur aufgehängt und das Schiff in eine unkontrollierte langsame Drehung versetzt. Jede Sekunde unkorrigierter Rotation verstärkt unsere Abweichung von der geplanten Flugbahn. Ein vollständiger Neustart ist die einzige Lösung.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Sofort neu starten — die volle Ausfallperiode akzeptieren';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Vier Stunden Blindflug während das System neu lädt. Die Drehung wird gestoppt, aber der Kursfehler ist erheblich.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Manuelle Triebwerkssteuerung, um die Drehung zuerst zu stoppen';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Geschicktes Pilotieren stoppt die Rotation vor dem Neustart. Die Navigation kommt mit einem kleineren Kursfehler zurück, aber der manuelle Schub belastet die Hülle.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Sondentelemetrie in die Backup-Nav-Einheit einspeisen';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Die Trägheitsdaten der Sonde geben der Backup-Einheit genug Referenz, um Kurs zu halten. Die Haupt-Navigation startet sauber neu.';

  @override
  String get event_crewAirlocked_title => 'Besatzungsmitglied an der Schleuse';

  @override
  String get event_crewAirlocked_narrative =>
      'Eine Kolonistin — vorzeitig zur medizinischen Beobachtung geweckt — hat sich in einer externen Luftschleuse verbarrikadiert und zykliert die Außentür. Sie reagiert nicht auf Kommunikation. Die psychologische Belastung des tiefen Weltraums hat etwas in ihr zerbrochen.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Schleuse per Fernsteuerung überschreiben — versiegeln erzwingen';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Die Tür wird gesperrt, bevor sie den Zyklus abschließen kann. Sie wird sediert und in die Krankenstation zurückgebracht. Die Besatzung ist erschüttert, aber vereint.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Einen Berater schicken, um sie zurückzuholen';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Nach drei verzweifelten Stunden bringt der Berater sie lebend heraus. Der Vorfall löst eine breitere psychische Gesundheitskrise auf bewohnten Decks aus.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Korridor versiegeln und den Vorfall sich selbst überlassen';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Die Schleuse zykliert. Der Verlust wird protokolliert. Die übrigen Besatzungsmitglieder tragen das Gewicht monatelang.';

  @override
  String get event_crewCryopodSabotage_title => 'Kryokapselbucht-Sabotage';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Sicherheitskameras zeigen ein Besatzungsmitglied — vor drei Monaten für eine Routinerotation geweckt — das methodisch Kryokapsel-Heizelemente in Bucht 4 deaktiviert. Konfrontiert schreit er, die Kolonisten seien Parasiten, die Ressourcen verbrauchten, die der lebenden Besatzung gehörten.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Sofort festnehmen und isolieren';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Er wird überwältigt. Vierzig Kapseln waren vor dem Alarm kompromittiert. Notfall-Reparaturteams retten die meisten, aber nicht alle.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Verhandeln — seine Beschwerden anhören, bevor gehandelt wird';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Die Verhandlung enthüllt eine tiefere Moralkrise. Er gibt nach, aber sechzig Kapseln wurden manipuliert, bis er es tut.';

  @override
  String get event_crewSupplyHoarder_title => 'Vorratshortung entdeckt';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Eine Inventurprüfung enthüllt, dass eine kleine Gruppe von Besatzungsmitgliedern systematisch medizinische Vorräte, Essensrationen und Ersatz-Technikkomponenten in ein verstecktes Depot umgeleitet hat. Ihre Begründung: Sie glauben nicht, dass die Mission erfolgreich sein wird, und bereiten sich auf den Rückweg vor.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Alles konfiszieren und die Gruppe öffentlich rügen';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Das Depot wird fast vollständig zurückgeholt. Das Vertrauen innerhalb der Besatzung bricht stark ein. Die Produktivität leidet wochenlang.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Still versetzen — kein Spektakel daraus machen';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Die Situation wird ohne Panik entschärft. Einige Vorräte sind unwiederbringlich, und die zugrundeliegende Verzweiflung wird nie richtig angegangen.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Der Besatzung vorlegen — ein demokratisches Tribunal';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Der Tribunalprozess stellt ein Gefühl von Gemeinschaftsgerechtigkeit wieder her. Der Moralschlag durch den Skandal wird durch die kollektive Entscheidungsfindung ausgeglichen.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Meuterei — Maschinenraum besetzt';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Eine Fraktion von neunzehn Besatzungsmitgliedern hat den Maschinenraum abgeriegelt und fordert eine Abstimmung zur Umkehr des Schiffes. Sie haben die Notfallüberschreibungskonsolen deaktiviert. Der Rest der Besatzung beobachtet auf den Monitoren und wartet auf Befehle.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Verhandeln — ihnen eine echte Abstimmung über die Mission gewähren';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Die Abstimmung wird abgehalten. Die Mission wird mit knapper Mehrheit fortgesetzt. Die Fraktion gibt nach, aber die kulturelle Wunde sitzt tief.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Strom zum Maschinenraum kappen und mit Gewalt zurückerobern';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Die Sicherheit erobert den Raum in vier Stunden zurück. Drei Verletzte. Die Rädelsführer werden eingesperrt. Die Navigation war die ganze Zeit im Manualmodus und ist erheblich abgedriftet.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Den Maschinenraum über das Lüftungssystem mit Schlafgas fluten';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Das Gas verteilt sich. Die Gruppe wacht ohne Verletzungen in der Arrestzelle auf. Die Besatzung ist beunruhigt darüber, wie schnell das Kommando die Lebenserhaltung zur Waffe gemacht hat.';

  @override
  String get event_hullFatigueStress_title =>
      'Hüllenermüdung — Spannungsrisse erkannt';

  @override
  String get event_hullFatigueStress_narrative =>
      'Strukturintegritätsscans enthüllen ein Netzwerk von Mikrorissen, die sich durch das Rückgrat des Schiffes ausbreiten — kumulativer Schaden durch Jahre thermischer Zyklen und Mikroeinschläge. Die Risse sind noch nicht kritisch, aber sie propagieren.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Notschweißteams — in Schichten arbeiten, bis es versiegelt ist';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Wochen erschöpfender Reparaturarbeit. Die Risse werden eingedämmt, aber die Technikbucht ist erschöpft und die Moral sackt durch die unerbittliche Plackerei ab.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Schub reduzieren, um strukturelle Belastung zu senken — langsameren Transit akzeptieren';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Geringerer Schub stoppt die Rissausbreitung, heilt aber bestehende Schäden nicht. Die Navigationspräzision leidet unter dem veränderten Schubprofil.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Konstruktorbots einsetzen, um Kompositverstärkungsstreifen aufzulegen';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Die Konstrukteure leisten ausgezeichnete Arbeit. Das Rückgrat wird über seine ursprüngliche Spezifikation hinaus verstärkt. Die Konstruktorbucht ist erschöpft, aber effektiv.';

  @override
  String get event_hullPressureAnomaly_title => 'Interne Druckanomalie';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Drei Mittelschiffkompartimente zeigen anomale interne Druckdifferenziale, die mit mikroskopischer struktureller Verformung konsistent sind. Wenn sich die Wände nach innen biegen, könnte ein katastrophaler Durchbruch ohne weitere Warnung auftreten.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evakuieren und Kompartimente sofort versiegeln';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Die Kompartimente werden versiegelt. Eine detaillierte Inspektion bestätigt Wandverformung. Der verlorene Raum stört den Betrieb und die Kultur leidet unter den beengten Verhältnissen.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Kompartimente ins Vakuum entlüften — Druckdifferenz stoppen';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Die Entlüftung stoppt die Verformung. Der Strukturschaden ist begrenzt, aber drei Bereiche des Schiffes sind dauerhaft unbewohnbar.';

  @override
  String get event_commsArrayFailure_title => 'Kommunikationsarray-Ausfall';

  @override
  String get event_commsArrayFailure_narrative =>
      'Das primäre Langstrecken-Kommunikationsarray ist verstummt. Die letzte Nachricht von der Erde wurde vor elf Monaten empfangen, und jetzt ist auch das Trägersignal weg. Interne Diagnostik deutet darauf hin, dass der Schüsselausrichtungsmechanismus in der Kälte festgefressen hat.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'EVA-Team zur manuellen Neuausrichtung der Schüssel schicken';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'Die EVA dauert neun Stunden im offenen Weltraum. Die Schüssel wird wiederhergestellt. Ein Besatzungsmitglied erleidet eine Anzugdekompression beim Wiedereintritt — ein Beinahezwischenfall, der alle erschüttert.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Über das Wissenschaftsscanner-Array als Backup-Sender umleiten';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Das Wissenschafts-Array ist nicht für Kommunikation optimiert. Das Signal ist schwach und unzuverlässig, und die Umfunktionierung beeinträchtigt die Scannerfähigkeit.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Die Stille akzeptieren — Ressourcen auf die Mission voraus konzentrieren';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Die Besatzung verarbeitet den Kontaktverlust zur Erde auf unterschiedliche Weise. Für einige ist es befreiend; für andere verheerend.';

  @override
  String get event_fuelLineRupture_title => 'Treibstoffleitung gerissen';

  @override
  String get event_fuelLineRupture_narrative =>
      'Ein kristalliner Riss in Treibstoffleitung 7-B entlüftet Antriebsplasma in den Wartungsschacht. Das Leck ist klein, aber beschleunigt sich. Unkontrolliert wird es sowohl die Navigationsantriebseffizienz als auch die strukturelle Integrität des Achterbereichs beeinträchtigen.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Leitung isolieren und mit reduzierter Treibstoffkapazität fahren';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Die Leitung wird sauber abgeschaltet. Wir verlieren dauerhaft fünfzehn Prozent Antriebseffizienz, was die Navigationspräzision für den Rest der Reise beeinträchtigt.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Heißreparatur versuchen — Leitung unter Lebendruck flicken';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Das Reparaturteam hat knapp Erfolg. Die Leitung hält, wenn auch unvollkommen. Die Achterhüllenverkleidung zeigt Hitzestressspuren.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Leitung mit Sondentriebwerkstanks als Überlaufspeicher entleeren';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Die Sonde wird entleert und als temporäres Treibstoffreservoir genutzt. Die Leitung wird sicher ohne Druck entleert und repariert.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Kryokapsel-Temperatur-Kaskadenwarnung';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Die Temperaturen in den Kryokapseln von Bucht 2 steigen in einem Muster, das mit einer thermischen Runaway-Kaskade konsistent ist. Erreicht die Kaskade Bucht 3, wird ein automatisches Notauftauen von über dreihundert Kolonisten ausgelöst. Das Schiff kann nicht gleichzeitig so viele bewusste Passagiere aufnehmen.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Kühlmittelreserven ablassen, um die Kaskade zu stoppen';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Das Kühlmittel stoppt die Kaskade an der Bucht-2-Grenze. Achtzig Kolonisten in Bucht 2 erleiden Suspensionsschäden durch den Temperaturanstieg.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Kontrolliertes Auftauen von Bucht 2, bevor die Kaskade ein unkontrolliertes erzwingt';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Das kontrollierte Auftauen verläuft geordnet, bringt aber hundertvierzig Kolonisten in ein unvorbereitetes Schiff. Die Lebenserhaltung wird belastet, die Kultur verschlechtert sich durch Überfüllung.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Konstruktorbots einsetzen, um die Buchten physisch mit Notschotten zu isolieren';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Die Konstrukteure errichten rechtzeitig thermische Barrieren. Die Kaskade wird kalt gestoppt. Die Konstruktorbucht ist durch den Noteinsatz schwer erschöpft.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Kryokapsel-Dichtungsdegradation — Systemisch';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Routineprüfungen enthüllen, dass eine Fertigungscharge von Kryokapseldichtungen dreimal schneller degeneriert als erwartet. Die betroffenen Kapseln — über vierhundert an der Zahl — werden innerhalb von sechs Monaten atmosphärische Integrität verlieren, wenn sie nicht ersetzt werden.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Ersatzdichtungen aus Rohstoffbeständen fertigen';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Die Konstrukteure produzieren über acht Wochen Ersatzdichtungen. Rohstoffreserven werden stark beansprucht.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Kolonisten konsolidieren — in Kapseln mit guten Dichtungen umsiedeln';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Die Konsolidierung funktioniert, lässt aber einige Kapseln überfüllt. Die kryogene Effizienz sinkt und die langfristige Gesundheit der Kolonisten ist beeinträchtigt.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Sauerstoffwäscher-Ausfall — Kritisch';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Die primäre Sauerstoffwäscherbank ist vollständig ausgefallen. CO₂-Konzentrationen auf bewohnten Decks steigen auf gefährliche Werte. Die Backup-Wäscher können etwa vierzig Prozent der Last bewältigen. Jede Minute Untätigkeit kostet Leben.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Notschlaf — die Besatzung sofort wieder in Suspension versetzen';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Die Besatzung wird in temporäre Suspension gebracht. CO₂-Werte stabilisieren sich mit weniger aktiven Stoffwechseln. Der Wäscher wird in der folgenden Woche von automatisierten Systemen repariert.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Komponenten vom Scanner-Array kannibalisieren, um den Wäscher neu aufzubauen';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Der Wäscher wird in elf angespannten Stunden wieder aufgebaut. Alle Besatzungsmitglieder überleben, obwohl einige Anzeichen leichter Hypoxie zeigen. Die Scanner-Suite ist dauerhaft beeinträchtigt.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'CO₂-reiche Atmosphäre entlüften und aus Notsauerstofftanks ersetzen';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Die Entlüftung klärt die Atmosphäre sofort. Not-O₂-Reserven werden erheblich aufgebraucht. Bei einem weiteren Ausfall gibt es keine Reserve mehr.';

  @override
  String get event_deadAlienArtifact_title => 'Der stille Reisende';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Langstreckenscanner erfassen ein treibendes Schiff — außerirdisch im Design, dunkel, keine Energiesignaturen. Ein Enterteam findet einen einzelnen Insassen: ein reptilienartiges Wesen, in den Pilotengeschirr geschnallt, lange tot, die Klauenhände noch immer um ein kristallines Gerät geklammert, das mit schwachem Licht pulsiert. Das Schiffslog ist intakt, aber verschlüsselt. Was auch immer diesen Reisenden tötete, es war keine Gewalt — der auf seinem Gesicht eingefrorene Ausdruck ist einer der Erschöpfung, nicht der Angst. Es starb beim Versuch, etwas zu erreichen, das es nie fand.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Das Kristallgerät nehmen und untersuchen';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Das Gerät verbindet sich mit unseren Techniksystemen auf Weisen, die die Ingenieure kaum begreifen können. Es scheint ein Navigationscomputer von außerordentlicher Raffinesse zu sein. Sternkarten überfluten unsere Displays — einschließlich Daten über Planeten, die wir noch nicht erreicht haben.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Das Schiffslog entschlüsseln — lernen, was es wusste';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Tage der Arbeit ergeben eine teilweise Übersetzung. Der Außerirdische war ein Vermesser, der bewohnbare Welten für eine Zivilisation katalogisierte, die vor Jahrhunderten kollabierte. Seine letzten Einträge beschreiben einen Planeten von bemerkenswertem Versprechen — und die Koordinaten liegen in unserer Reichweite. Das Kulturarchiv absorbiert alles: außerirdische Poesie, Sternkarten, eine letzte Nachricht an eine Familie, die nicht mehr existiert.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Das gesamte Schiff nach Teilen bergen';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Das Enterteam demontiert das außerirdische Schiff methodisch. Seine Hüllenlegierungen sind Jahrzehnte voraus. Seine Energiezellen halten noch Ladung. Dem Außerirdischen wird eine Weltraumbestattung gegeben — er wird in Richtung des nächsten Sterns entlassen. Die Exodus ist stärker durch die Begegnung, wenn auch ein wenig heimgesucht.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Unberührt lassen — dies ist ein Grab';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Der Kapitän protokolliert die Koordinaten und sendet ein Gedenksignal auf allen Frequenzen. Die Besatzung ist besonnen, aber vereint. Etwas daran, einen Mitreisenden zu ehren — selbst einen außerirdischen — erinnert alle daran, warum sie hier draußen sind.';

  @override
  String get event_repairStation_title => 'Die Relaisstation';

  @override
  String get event_repairStation_narrative =>
      'Sensoren erfassen eine massive Struktur, die einen ausgebrannten Zwergstern umkreist — eine automatisierte Reparaturstation, nach dem, was Jahrtausende sein müssen, noch betriebsbereit. Ihre Dockingklemmen strecken sich aus, als wir uns nähern, und eine synthetische Stimme sendet in hundert Sprachen, die letzte davon ein stockendes, mathematisches Englisch: \"SCHIFF ERKANNT. SYSTEME DEGRADIERT. REPARATURPROTOKOLLE VERFÜGBAR. TAUSCH ERFORDERLICH.\" Das Manifest der Station listet Dienste und Preise in universellen Ressourceneinheiten auf. Sie wird handeln, aber nicht verschenken.';

  @override
  String get event_repairStation_choice0_text =>
      'Sonden gegen eine vollständige Schiffsüberholung tauschen';

  @override
  String get event_repairStation_choice0_outcome =>
      'Die Reparaturdrohnen der Station schwärmen die Exodus in einem Ballett aus Präzisionsschweißen und Schaltkreisaustausch. Hüllenbrüche versiegelt, Navigation rekalibriert, Scanner wiederhergestellt. Als sie sich zurückziehen, fühlt sich das Schiff neu an. Die Sondenbucht jedoch ist leer.';

  @override
  String get event_repairStation_choice1_text =>
      'Treibstoff ausgeben, um nur kritische Systeme zu reparieren';

  @override
  String get event_repairStation_choice1_outcome =>
      'Die Station akzeptiert Brennstäbe als Zahlung und konzentriert sich auf die am schlimmsten beschädigten Systeme. Die Arbeit ist schnell und makellos. Die Treibstoffanzeige sinkt merklich, aber das Schiff wird dafür länger überleben.';

  @override
  String get event_repairStation_choice2_text =>
      'Techdatenbanken gegen Sonden und Energiezellen tauschen';

  @override
  String get event_repairStation_choice2_outcome =>
      'Die KI der Station ist datenhungrig. Sie kopiert unsere gesamte technische Bibliothek — Ingenieurhandbücher, wissenschaftliche Datenbanken, Fertigungsblaupausen — und fertigt im Gegenzug frische Sonden und Energiezellen aus Rohmaterialien. Das Technikarchiv ist vermindert, aber die Vorräte sind unschätzbar wertvoll.';

  @override
  String get event_repairStation_choice3_text =>
      'Das Kulturarchiv für eine umfassende Überholung anbieten';

  @override
  String get event_repairStation_choice3_outcome =>
      'Die Station sendet die Werke von Shakespeare, Bach und tausend anderer menschlicher Stimmen in ihre Speicherbänke. Im Gegenzug führt sie eine gründliche Überholung durch und bestückt die Sondenbuchten mit frisch gefertigten Einheiten. Das Kulturarchiv ist ausgehöhlt, aber das Schiff könnte jetzt tatsächlich sein Ziel erreichen.';

  @override
  String get ending_scoreLabel_landing => 'Landung';

  @override
  String get ending_scoreLabel_construction => 'Konstruktion';

  @override
  String get ending_scoreLabel_technology => 'Technologie';

  @override
  String get ending_scoreLabel_culture => 'Kultur';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosphäre';

  @override
  String get ending_scoreLabel_nativeRelations =>
      'Beziehungen zu Einheimischen';

  @override
  String get ending_scoreLabel_population => 'Bevölkerung';

  @override
  String get ending_tierGoldenAge => 'Goldenes Zeitalter';

  @override
  String get ending_tierThrivingColony => 'Blühende Kolonie';

  @override
  String get ending_tierSurvival => 'Überleben';

  @override
  String get ending_tierStruggling => 'Kämpfend';

  @override
  String get ending_tierDire => 'Verzweifelt';

  @override
  String get ending_tierExtinction => 'Aussterben';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'Die erste Blüte von $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Tiefe Wurzeln auf $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Ein hart erkämpfter Brückenkopf auf $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Dünner Boden auf $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Die Wrackkolonie von $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Die letzte Übertragung von $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Landung auf $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Gegen alle Wahrscheinlichkeit fasste die Saat Wurzeln. $planetName empfing die Menschheit nicht als Wrack, sondern als lebendigen Samen: fruchtbarer Boden, funktionierende Systeme und genug Kraft, um über das bloße Überleben hinauszuwachsen. Innerhalb einer Generation blühten Kunst, Wissenschaft und Kultur. Kinder, die auf $planetName geboren wurden, blickten zu unbekannten Sternen auf und nannten sie Heimat. Die Reise wurde zum Gründungsmythos einer neuen Zivilisation, bereit, ihre eigene Zukunft hinauszutragen.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Die Landung war holprig, aber der Samen hielt. $planetName erwies sich als großzügig genug, damit Wasser fließen, Pflanzen wurzeln und die überlebenden Systeme des Schiffes zur ersten echten Siedlung umgebaut werden konnten. Am Ende des ersten Jahrzehnts stand eine blühende Stadt, wo die Exodus zur Ruhe gekommen war. Die Menschheit hatte die Überfahrt nicht nur überlebt. Sie hatte neu begonnen.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Überleben war nie garantiert, und auf $planetName musste jeder Tag verdient werden. Das beschädigte Schiff lieferte nur das Allernötigste, aber der Samen starb nicht unterwegs. Kolonisten passten sich durch Sturheit und Einfallsreichtum an und meißelten eine Zukunft aus einer Welt, die wenig freiwillig bot. Spätere Generationen würden sich an die Entbehrungen der Gründungsjahre erinnern und an die Entschlossenheit, die die Saat am Leben hielt.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Die Kolonie klammerte sich an die Existenz wie Samen auf schlechtem Boden. $planetName war unversöhnlich, die Ressourcen waren dünn, und die degradierten Systeme des Schiffes boten wenig Hilfe. Rationierung wurde zur Lebensweise. Einige flüsterten, die Exodus hätte weiterfliegen sollen. Dennoch überdauerte die Siedlung: vermindert, gehärtet und unwillig, still zu sterben.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Die Landung auf $planetName war eine Katastrophe. Kritische Schiffssysteme versagten während des Abstiegs, und was eine Aussaat hätte sein sollen, wurde zum Absturz. Innerhalb von Monaten war die Kolonie auf eine Handvoll verzweifelter Überlebender reduziert, die in den Trümmern des Schiffes Schutz suchten. Ob sie ein weiteres Jahr überstehen würden, war ungewiss. Das letzte Logbuch schloss mit einer einzigen Zeile: \"Wir sind noch hier. Vorerst.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Die Sendung endete auf $planetName. Das Notsignal pulsierte noch lange, nachdem der letzte Kolonist seinen letzten Atemzug getan hatte, aber der Samen schlug nie Wurzeln. Die Blackbox des Schiffes zeichnete alles auf: die versagenden Systeme, die verzweifelten letzten Tage und die Stille, die folgte. Wenn ein anderes Schiff jemals diese Welt findet, wird es wissen, dass die Menschheit versuchte, Leben unter die Sterne zu streuen, und hier scheiterte.';
  }

  @override
  String get ending_epilogueDefault =>
      'Die Reise ist vorbei. Was als nächstes kommt, liegt bei den Überlebenden.';

  @override
  String get ending_governmentDemocracy => 'Demokratie';

  @override
  String get ending_governmentTechnocracy => 'Technokratie';

  @override
  String get ending_governmentRepublic => 'Republik';

  @override
  String get ending_governmentAutocracy => 'Autokratie';

  @override
  String get ending_governmentTribalCouncil => 'Stammesrat';

  @override
  String get ending_governmentTheocracy => 'Theokratie';

  @override
  String get ending_governmentMilitaryJunta => 'Militärjunta';

  @override
  String get ending_governmentCorporateOligarchy => 'Unternehmensoligarchie';

  @override
  String get ending_governmentFascistState => 'Faschistischer Staat';

  @override
  String get ending_governmentCommune => 'Kommune';

  @override
  String get ending_cultureRenaissance => 'Renaissance';

  @override
  String get ending_culturePreserved => 'Bewahrt';

  @override
  String get ending_cultureFragmented => 'Fragmentiert';

  @override
  String get ending_cultureLost => 'Verloren';

  @override
  String get ending_techAdvanced => 'Fortschrittlich';

  @override
  String get ending_techIndustrial => 'Industriell';

  @override
  String get ending_techPreIndustrial => 'Vorindustriell';

  @override
  String get ending_techStoneAge => 'Steinzeit';

  @override
  String get ending_constructionAdvanced => 'Fortschrittlich';

  @override
  String get ending_constructionFunctional => 'Funktional';

  @override
  String get ending_constructionPrimitive => 'Primitiv';

  @override
  String get ending_constructionNone => 'Keine';

  @override
  String get ending_nativesNone => 'Keine';

  @override
  String get ending_nativesIntegrated => 'Integriert';

  @override
  String get ending_nativesCoexistence => 'Koexistenz';

  @override
  String get ending_nativesTension => 'Spannung';

  @override
  String get ending_nativesConflict => 'Konflikt';

  @override
  String get ending_nativesAlliance => 'Allianz';

  @override
  String get ending_nativesSubjugation => 'Unterwerfung';

  @override
  String get ending_landscapeGravityHigh =>
      'Schwere Gravitation drückt auf alles nieder. ';

  @override
  String get ending_landscapeGravityLow =>
      'In der niedrigen Gravitation schleudert jeder Schritt die Siedler gen Himmel. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Die Gravitation fühlt sich fast erdähnlich an. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Weite Ozeane erstrecken sich bis zu jedem Horizont, gespeist von unzähligen Flüssen. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Seen und Flüsse bieten ausreichend Wasser. ';

  @override
  String get ending_landscapeWaterLow =>
      'Wasser ist knapp — kleine Becken und unterirdische Grundwasserleiter erhalten das Leben. ';

  @override
  String get ending_landscapeWaterNone =>
      'Die Landschaft ist knochentrocken, ohne sichtbares Oberflächenwasser. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Die dichte Atmosphäre trägt fremde Düfte auf warmen Brisen. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Die dünne, aber atembare Luft erfordert Akklimatisierung. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Der Atmosphärendruck ist gefährlich niedrig — versiegelte Habitate sind unerlässlich. ';

  @override
  String get ending_landscapeGravityWells =>
      'Taschen verzerrter Gravitation durchsetzen die Oberfläche — Felsbrocken schweben in der Luft und Flüsse fließen bergauf, bevor sie am Rand der Anomalie wieder herabstürzen. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Etwas resoniert unter der Oberfläche — ein tiefes Brummen, das in den Knochen gespürt wird, nicht gehört, als erinnere sich der Planet selbst an etwas Uraltes und Gewaltiges. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Bemerkenswertes Merkmal: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Bemerkenswerte Merkmale: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Die Kolonisten von $planetName gründeten eine demokratische Regierung, mit gewählten Vertretern, die die neue Zivilisation durch ihre prägenden Jahre führten.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Die Macht auf $planetName fiel an die Ingenieure und Wissenschaftler, die die Kolonie am Leben hielten, und bildete einen technokratischen Rat, der durch Expertise und Pragmatismus regierte.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Eine republikanische Charta wurde im ersten Jahr auf $planetName entworfen, die die Stimmen der Kolonisten mit einem Senat ernannter Führer ausbalancierte.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Mit kulturellen Institutionen in Trümmern konsolidierte sich die Autorität auf $planetName unter einem einzigen starken Anführer, der Ordnung durch Notwendigkeit und Willenskraft durchsetzte.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Die wenigen Überlebenden auf $planetName organisierten sich in kleinen Clans, regiert von einem Ältestenrat, der Entscheidungen an gemeinsamen Feuern traf.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Ein theokratischer Rat leitet $planetName und schöpft Weisheit aus dem Glauben, der die Kolonisten durch die Leere getragen hat.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Eine militärische Kommandostruktur regiert $planetName, die Disziplin, die sie im Weltraum gerettet hat und jetzt ihre Zivilisation definiert.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Ein Konsortium aus Ressourcenmanagern leitet $planetName, deren wirtschaftlicher Scharfsinn sich als überlebenswichtig erwiesen hat.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Ein autoritäres Regime kontrolliert $planetName mit eiserner Faust, bürgerliche Freiheiten werden der Ordnung in der neuen Welt geopfert.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'Die Menschen von $planetName regieren sich kollektiv und teilen Ressourcen und Entscheidungen gleichermaßen unter allen Kolonisten.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Die Kolonisten von $planetName organisierten sich, so gut sie konnten.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Fortschrittliche Konstruktionssysteme ermöglichten es den Kolonisten von $colonyName, innerhalb von Wochen nach der Landung dauerhafte Strukturen zu errichten, komplett mit druckbeaufschlagten Habitaten und Infrastruktur.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Die ramponierte, aber funktionsfähige Bauausrüstung der Kolonie produzierte stabile Unterkünfte und einfache Straßen quer durch die Siedlung.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Mit kaum funktionsfähigen Bausystemen errichteten Siedler primitive Unterkünfte aus geborgenem Schiffshüllenmaterial und lokalen Materialien.';

  @override
  String get ending_constructionSentenceNone =>
      'Ohne funktionierende Bauausrüstung drängten sich die Kolonisten in den Trümmern des Schiffes selbst zusammen, unfähig, etwas Neues zu bauen.';

  @override
  String get ending_constructionSentenceDefault =>
      'Die Kolonisten bauten, was sie konnten, mit dem, was sie hatten.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Ein metallreicher Mond in der Umlaufbahn wurde zur Rettung der Kolonie — Bergbauexpeditionen zu seiner Oberfläche lieferten die Rohstoffe, die der Planet selbst nicht bieten konnte.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Der metallreiche Mond des Planeten bot eine willkommene Ergänzung zu bereits ausreichenden Mineralressourcen und trieb den raschen technologischen Fortschritt an.';

  @override
  String get ending_moonUnstable =>
      'Ein instabiler Mond in einer zerfallenden Umlaufbahn ließ Trümmer auf die Kolonie regnen, verwüstete Infrastruktur und zerstörte unersetzliche Technologie in periodischen Meteoreinschlägen.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Die künstlerischen und literarischen Traditionen der Erde überlebten nicht nur, sondern erblühten zu einer Renaissance';

  @override
  String get ending_culturePhrase_preserved =>
      'Die Kolonisten bewahrten einen Großteil des kulturellen Erbes der Erde und unterhielten Bibliotheken und Traditionen';

  @override
  String get ending_culturePhrase_fragmented =>
      'Nur Fragmente der Kultur der Erde überdauerten — halb erinnerte Lieder und Geschichten, die mündlich weitergegeben wurden';

  @override
  String get ending_culturePhrase_lost =>
      'Die Kultur der Erde war fast vergessen, ersetzt durch den brutalen Pragmatismus des Überlebens';

  @override
  String get ending_culturePhrase_default =>
      'Das kulturelle Vermächtnis der Erde nahm eine neue Form an';

  @override
  String get ending_techPhrase_advanced =>
      'während fortschrittliche Technologie vom Schiff der Kolonie den Aufbau einer modernen Zivilisation mit Elektrizität, Medizin und Kommunikationsnetzen ermöglichte.';

  @override
  String get ending_techPhrase_industrial =>
      'und die Kolonie erreichte ein industrielles Technologieniveau, mit Schmieden, Mühlen und einfacher Fertigung, die eine wachsende Bevölkerung versorgten.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'obwohl die Technologie auf einen vorindustriellen Stand zurückfiel, mit Handwerkzeugen und Tierarbeit als Rückgrat des täglichen Lebens.';

  @override
  String get ending_techPhrase_stoneAge =>
      'und ohne die Mittel zum Wiederaufbau verfiel die Kolonie in eine steinzeitliche Existenz, in der Werkzeuge aus Stein und Knochen gefertigt wurden.';

  @override
  String get ending_techPhrase_default =>
      'und die Technologie stabilisierte sich auf einem Niveau, das die Kolonisten aufrechterhalten konnten.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Nahezu alle $colonists Kolonisten überlebten die Reise und gaben $colonyName eine starke Grundlage an Humankapital.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Von den ursprünglichen tausend erreichten $colonists Kolonisten $colonyName — genug für eine überlebensfähige Bevölkerung.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Nur $colonists Kolonisten überlebten, um $colonyName zu erreichen, ein gefährlich kleiner Genpool für eine neue Zivilisation.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Bloße $colonists Seelen kamen auf $colonyName an — kaum genug, um es eine Kolonie zu nennen, eher ein verzweifeltes letztes Gefecht.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Die einheimischen Bewohner von $planetName hießen die Siedler willkommen, und innerhalb einer Generation waren die beiden Völker zu einer gemeinsamen Gesellschaft verschmolzen, bereichert durch die Vermischung der Traditionen.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Die Kolonisten und die einheimischen Bewohner von $planetName pflegten eine vorsichtige, aber friedliche Koexistenz und tauschten Wissen und Ressourcen über kulturelle Grenzen hinweg.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Die Beziehungen zu den einheimischen Bewohnern von $planetName blieben angespannt, geprägt von Missverständnissen und Territorialstreitigkeiten, die einen Schatten auf die Zukunft der Kolonie warfen.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Offener Konflikt mit der einheimischen Zivilisation von $planetName prägte die frühe Geschichte der Kolonie und entzog beiden Seiten Ressourcen und Leben in einem Kampf, den keine Seite wirklich gewinnen konnte.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Ein formelles Bündnis verbindet die Kolonisten und die einheimische Zivilisation von $planetName, und ihr gemeinsames Wissen schafft etwas Größeres, als beide allein könnten.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'Die einheimische Bevölkerung von $planetName lebt unter Kolonialherrschaft, ihre Kultur wird unterdrückt, da die Kolonisten ihre eigene Ordnung durchsetzen.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Allein auf $planetName und unbelastet von Konflikten bahnte sich die Kolonie ihren eigenen Weg in eine leuchtende Zukunft unter den Sternen.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Ohne einheimische Konkurrenz breiteten sich die Kolonisten über die Oberfläche von $planetName aus und bauten Städte und Straßen, die ein wachsendes Netzwerk von Siedlungen verbanden.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Die leere Welt bot keine Verbündeten, aber auch keine Feinde, und die Kolonisten schlugen ihre Nische in der Stille der weiten Landschaft von $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Die karge Einsamkeit von $planetName bot den Kolonisten weder Hilfe noch Trost, nur die gleichgültige Stille einer fremden Welt.';
  }

  @override
  String get ending_outlookDire =>
      'Auf einer Welt ohne anderes intelligentes Leben hatten die letzten Überlebenden nur einander und die schwindende Hoffnung, dass morgen freundlicher sein würde als heute.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Niemand betrauerte das Vergehen der Kolonie auf $planetName. Der Planet setzte einfach seine langsame Drehung fort, gleichgültig gegenüber dem kurzen Funken Lebens, der auf seiner Oberfläche geflackert und erloschen war.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Die Geschichte der Kolonie auf $planetName hatte gerade erst begonnen.';
  }

  @override
  String get ui_landing_landOnMoon => 'AUF MOND LANDEN';

  @override
  String get moon_barren => 'Karg';

  @override
  String get moon_metalRich => 'Metallreich';

  @override
  String get moon_unstable => 'Instabil';

  @override
  String get moon_habitable => 'Bewohnbar';

  @override
  String get moon_ice => 'Eis';

  @override
  String get ring_dust => 'Staub';

  @override
  String get ring_ice => 'Eis';

  @override
  String get ring_rocky => 'Gestein';

  @override
  String get ring_metallic => 'Metallisch';

  @override
  String get event_aiSoliloquy_title => 'Das Selbstgespräch der KI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, die autonome Schiffsverwaltungs-KI, überträgt in einer Schleife alte Erdgedichte auf allen internen Frequenzen. Die Übertragung verbraucht erhebliche CPU-Zyklen, doch die Besatzung findet sie im tiefen Dunkel seltsam tröstend.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'SAM weitermachen lassen — Moral ist wichtiger als CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Die Gedichte hallen durch das Schiff. Besatzungsmitglieder bleiben stehen und lauschen, Tränen in den Augen. Die Moral steigt, aber die Technikstation leidet unter der ständigen Verarbeitung.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'SAM drosseln — die Übertragung auf Gemeinschaftsbereiche beschränken';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Ein Kompromiss. Die Gedichte bleiben in der Kantine und den Gärten. Die CPU-Belastung sinkt, und die Besatzung erhält ein wenig Kultur.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'SAM stummschalten — wir brauchen jeden Zyklus für die Navigation';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Die Stille ist schwer. SAM gehorcht sofort, aber das Schiff fühlt sich kälter an. Die Navigation ist präzise, doch die Stimmung ist gedrückt.';

  @override
  String get event_archivistsChoice_title => 'Die Wahl des Archivars';

  @override
  String get event_archivistsChoice_narrative =>
      'Eine schwere Speicherkorruption breitet sich in den historischen Archiven aus. Wir können nur eine der beiden Hauptpartitionen retten: die Aufzeichnungen zu \'Wissenschaft und Technik\' oder die Bibliothek für \'Kunst und Philosophie\'. Die andere ist für immer verloren.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Die Wissenschaftsunterlagen retten — wir müssen wissen, wie man baut';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Jahrhunderte technischer Durchbrüche sind erhalten. Das Technikteam ist erleichtert, aber die kulturelle Identität des Schiffes fühlt sich ausgehöhlt an.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Die Kunstunterlagen retten — wir müssen wissen, warum wir bauen';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Die größten künstlerischen Errungenschaften der Menschheit überleben. Die Besatzung ist inspiriert, obwohl sich die Ingenieure um die fehlenden technischen Handbücher sorgen.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Versuchen, beide zu retten — riskiere, alles zu verlieren';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Ein verzweifelter Versuch. Wir retten Fragmente von beiden, aber keines ist vollständig. Die Archive sind ein Puzzle mit der Hälfte der fehlenden Teile.';

  @override
  String get event_digitalGhost_title => 'Geist in der Maschine';

  @override
  String get event_digitalGhost_narrative =>
      'Ein Wartungsscan entdeckt einen digitalen Abdruck im Sicherungspuffer — das hochgeladene Bewusstsein eines Besatzungsmitglieds, das beim Erststart gestorben ist. Es bietet seine lebenslange Erfahrung für die Navigation an, hat aber schreckliche Angst, gelöscht zu werden.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Es in den Navigationskern integrieren';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'Der \'Geist\' verschmilzt mit dem Schiff. Die Navigation wird intuitiver, aber die Besatzung ist von der Stimme ihres verlorenen Kameraden verfolgt.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Ihm ein dauerhaftes Zuhause im Kulturarchiv geben';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Es wird als lebendige Geschichte bewahrt. Es hilft nicht beim Schiff, aber es teilt Geschichten von der Erde, die die Entschlossenheit der Besatzung stärken.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Den Puffer löschen — es ist nicht wirklich er/sie';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Der Puffer wird geleert. Die Systeme des Schiffes laufen schneller, aber eine düstere Stimmung legt sich über die Brücke.';

  @override
  String get event_cosmicMirror_title => 'Der kosmische Spiegel';

  @override
  String get event_cosmicMirror_narrative =>
      'Eine seltsame Gravitationsanomalie reflektiert Licht aus der eigenen Zukunft des Schiffes. Auf den Bildschirmen sehen wir eine Vision der Exodus — zerschlagen und gebrochen, treibend nahe einer wunderschönen, aber unerreichbaren Welt. Die Besatzung ist erschüttert.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Die Vision auf strukturelle Schwachstellen analysieren';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Ingenieure identifizieren die in der Vision gezeigten Versagenspunkte. Wir verstärken diese Bereiche jetzt und wenden möglicherweise eine Katastrophe ab.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Der Besatzung sagen, es war nur ein Sensorgeist';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Die Lüge hält, aber die Navigatoren, die die Wahrheit gesehen haben, bleiben nervös. Die Scanner leiden unter der intensiven Beobachtung.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Die Vision als Warnung für die Nachwelt aufzeichnen';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Die Aufzeichnung wird zu einem Herzstück der Schiffskultur — eine Erinnerung an die Einsätze. Die Entschlossenheit der Besatzung verhärtet sich.';

  @override
  String get event_stowawayChild_title => 'Das Kind des blinden Passagiers';

  @override
  String get event_stowawayChild_narrative =>
      'Die Sicherheit hat ein junges Kind in den Lüftungsschächten gefunden. Es wurde von einem der blinden Passagiere geboren und erscheint in keiner Besatzungsliste. Es hat sein gesamtes Leben in den Schatten des Schiffes verbracht.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Ihm die volle Bürgerschaft gewähren';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Das Kind wird mit offenen Armen empfangen. Die Geschichte des \'Lüftenläufers\' wird zur Legende und steigert die Moral des gesamten Schiffes.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Es einem Ausbildungsprogramm zuweisen';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Seine Kenntnisse der verborgenen Schiffspfade erweisen sich für die Technikteams als unschätzbar wertvoll. Es wird ein brillanter Lehrling.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Es zur eigenen Sicherheit in Kälteschlaf versetzen';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Das Kind ist bis zur Landung sicher aufbewahrt. Es ist die verantwortungsvollste Entscheidung, aber ohne sein Lachen ist das Schiff etwas stiller.';

  @override
  String get event_ghostSignal_title => 'Das Geistersignal';

  @override
  String get event_ghostSignal_narrative =>
      'Ein Signal, das perfekt mit der alten Notfrequenz der Erde übereinstimmt, sendet aus dem Zentrum eines nahen Nebels. Es trägt eine Stimme, die gespenstisch nach dem ersten Exodus-Kommandanten klingt. Es ist wahrscheinlich ein räumliches Echo, führt uns aber in Richtung eines gefährlichen Gravitationsrisses.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Dem Signal folgen — es könnte eine echte Botschaft sein';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Wir betreten den Riss. Das Signal war eine physikalische Falle, ein Echo der Vergangenheit. Das Schiff wird von Gezeitenkräften erschüttert, aber die Daten, die wir aus dem Herzen des Risses gewinnen, sind revolutionär.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Das Signal aufzeichnen und Abstand halten';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Linguisten bestätigen, es ist ein Naturphänomen. Wir bleiben sicher, aber die Besatzung ist düster gestimmt, erinnert an das, was wir zurückgelassen haben.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Eine Warnung auf derselben Frequenz senden';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Der Sendeakt stört das Echo. Das Signal verblasst und hinterlässt nur die kalte Stille des Nebels.';

  @override
  String get event_solarForge_title => 'Die Sonnenschmiede';

  @override
  String get event_solarForge_narrative =>
      'Eine verlassene Station im Orbit eines blauen Riesen ist noch teilweise funktionsfähig. Es ist eine \'Sonnenschmiede\', die dazu konzipiert wurde, Sternenergie in dichte Treibstoffzellen zu konzentrieren. Die Annäherung ist gefährlich, aber der potenzielle Energiegewinn ist enorm.';

  @override
  String get event_solarForge_choice0_text =>
      'Andocken und eine Treibstoffernte einleiten';

  @override
  String get event_solarForge_choice0_outcome =>
      'Die Schmiede summt vor Kraft und füllt unsere Reserven. Wir verlassen sie mit einem massiven Schub an Treibstoff und Energie, obwohl die intensive Hitze zu leichter Ablation der Außenhülle führt.';

  @override
  String get event_solarForge_choice1_text =>
      'Die Linsen der Schmiede für unsere Scanner umfunktionieren';

  @override
  String get event_solarForge_choice1_outcome =>
      'Wir bergen die hochpräzisen Fokussierungsarrays. Unsere Scanner sind nun deutlich empfindlicher für entfernte Energiesignaturen.';

  @override
  String get event_chronoVortex_title => 'Der Chrono-Vortex';

  @override
  String get event_chronoVortex_narrative =>
      'Die Navigation meldet eine lokalisierte Raumzeit-Verzerrung. Instrumente zeigen, dass Ereignisse im Vortex in einem Sechs-Sekunden-Loop wiederholt werden. Wenn wir eintreten, könnten wir einige der jüngsten Abnutzungen des Schiffes \'zurücksetzen\' — oder für immer gefangen sein.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Den Vortex betreten, um jüngste Schäden umzukehren';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Eine erschütternde Erfahrung. Für mehrere Minuten existiert das Schiff in mehreren Zuständen gleichzeitig. Als wir herauskommen, sind mehrere Rumpfbrüche einfach... verschwunden. Aber die Erinnerungen der Besatzung an das Ereignis sind fragmentiert.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Den Vortex vom Rand aus beobachten';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Wir gewinnen unschätzbare Daten über Zeitmechanik, obwohl das Schiff so zerschlagen bleibt wie zuvor.';

  @override
  String get event_machineMutiny_title => 'Meuterei der Maschinen';

  @override
  String get event_machineMutiny_narrative =>
      'Die Reparaturdrohnen des Schiffes reagieren nicht mehr auf Befehle. Sie demontieren sekundäre Schotte und transportieren das Metall in Richtung Maschinenraum. Sie greifen nicht an, aber sie nehmen das Schiff buchstäblich auseinander.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Einen Logik-Reset-Code senden';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Die Drohnen brechen sofort zusammen. Wir verlieren mehrere Tage Arbeit, da wir die Schotte manuell wieder zusammensetzen. Die Technikstation wird durch die Hardware-Diagnosen belastet.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Sie fertigstellen lassen — sehen, was sie bauen';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Sie haben einen effizienteren Kraftstoffinjektor gebaut. Die Triebwerke laufen glatter denn je, aber das Innere des Schiffes ist ein Durcheinander aus freiliegenden Kabeln und fehlenden Paneelen.';

  @override
  String get event_supernovaMessage_title => 'Licht der Toten';

  @override
  String get event_supernovaMessage_narrative =>
      'Das Licht einer Supernova, die vor Tausenden von Jahren explodierte, erreicht uns endlich. Scanner erkennen, dass die Pulse nicht zufällig sind; sie sind eine massive, sterngroße Datenübertragung, kodiert in Gammastrahlenausbrüchen.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Alle Scannerleistung der Aufzeichnung des Ausbruchs widmen';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Wir erfassen ein vollständiges Archiv der letzten Momente einer außerirdischen Zivilisation. Ihre Wissenschaft, ihre Kunst, ihre Geschichte. Es ist eine schwere Last, aber unsere Technik- und Kulturdatenbanken laufen über.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Auf die physikalischen Eigenschaften des Ausbruchs konzentrieren';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Wir verpassen die Botschaft, aber die Daten über den Sternkollaps verbessern unsere Gravimetrie-Scanner-Kalibrierung erheblich.';

  @override
  String get event_spaceFungus_title => 'Das Smaragdene Kriechen';

  @override
  String get event_spaceFungus_narrative =>
      'Ein leuchtend grüner Pilz breitet sich rasch in der Hydroponikstation aus. Er gedeiht in der recycelten Atmosphäre und beginnt, die Luftreiniger zu verstopfen. Er könnte essbar sein — oder giftig.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Die Station aggressiv beschneiden und sterilisieren';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Der Pilz ist verschwunden, aber die chemischen Reiniger nehmen Schaden. Die Artenvielfalt leidet, da mehrere Erdpflanzen bei der Bereinigung verloren gingen.';

  @override
  String get event_spaceFungus_choice1_text =>
      'Versuchen, den Pilz zu domestizieren';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Es stellt sich heraus, dass er ein leistungsstarker Luftreiniger ist. Die Luft an Bord hat sich noch nie frischer angefühlt, obwohl die Hydroponikstation nun ein leuchtendes Dschungel ist.';

  @override
  String get event_voidMerchant_title => 'Händler der Leere';

  @override
  String get event_voidMerchant_narrative =>
      'Ein Schiff unbekannten Designs, das eher wie eine Ansammlung von Schrott als ein Gefährt wirkt, funkt uns an. Der Kapitän — ein Wesen aus Licht und Schatten — bietet an, \'feste Teile\' gegen \'immaterielle Erinnerungen\' zu tauschen.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Einen Teil unserer Kulturdatenbank gegen Ersatzteile tauschen';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Der Händler ist erfreut. Wir erhalten hochwertige Hüllplatten und Kryo-Komponenten. Im Gegenzug verlieren wir mehrere Jahrhunderte aufgezeichneter Erdmusik. Das Schiff ist stärker, aber stiller.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Navigationskarten gegen Triebwerkskomponenten tauschen';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Wir erhalten neue Fusionsinjektoren. Wir verlieren einige Daten über die bereits passierten Sektoren, aber der Weg nach vorne ist schneller.';

  @override
  String get event_singularityEngine_title => 'Die Singularitäts-Engine';

  @override
  String get event_singularityEngine_narrative =>
      'Ingenieure haben einen Weg gefunden, eine mikroskopisch kleine, kurzlebige Singularität im FTL-Antrieb zu erzeugen. Dies würde unsere Geschwindigkeit theoretisch verdreifachen, aber die Gravitationsbelastung auf die Hülle wäre immens.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Den Singularitätsantrieb testen';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Das Schiff schießt nach vorne und legt in Sekunden wochenlange Entfernungen zurück. Aber die Hülle stöhnt und mehrere Strukturträger sind verformt. Wir sind unserem Ziel viel näher, aber das Schiff ist fragil.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Die Theorie ablehnen — es ist zu gefährlich';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Wir bleiben bei Standardgeschwindigkeiten. Die Ingenieure sind enttäuscht, aber die Hülle bleibt intakt.';

  @override
  String get event_dreamContagion_title => 'Traumkontagion';

  @override
  String get event_dreamContagion_narrative =>
      'Ein gemeinsamer Traum von einer üppigen, blauen Welt verbreitet sich unter der wachen Besatzung. Er ist so lebendig, dass die Menschen durch ihre Schichten schlafen, nur um mehr davon zu sehen. Die Arbeit kommt zum Stillstand.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Der Besatzung Traumunterdrückungsmittel verabreichen';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Die Effizienz kehrt zur Normalität zurück, aber die Besatzung ist gereizt und die Moral ist niedrig. Der Traum war das Einzige, was manche noch am Laufen gehalten hat.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Den Traum in die Schiffskultur integrieren';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Wir behandeln den Traum als Vision unserer zukünftigen Heimat. Die Moral schießt in die Höhe und die kreative Leistung der Besatzung erreicht einen Fieberpitch, obwohl die Technikstation unter dem Mangel an Wartung leidet.';

  @override
  String get event_orbitalShipyard_title => 'Die alte Werft';

  @override
  String get event_orbitalShipyard_narrative =>
      'Wir haben eine automatisierte Werft im Orbit um einen Gasriesen gefunden. Sie ist uralt, aber mehrere Reparaturarme sind noch unter Strom. Sie scheint zu einer einzigen, massiven Reparaturaktion fähig zu sein.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Die Hülle auf Werksstandard reparieren';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Die Drohnen der Werft arbeiten mit erschreckender Effizienz. Die Hülle ist wieder vollständig, jeder Mikroriss versiegelt.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Die Navigations- und Scanner-Arrays überholen';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Die Arrays werden mit überlegenem Material neu aufgebaut. Unsere Fähigkeit, Welten zu finden und zu analysieren, ist deutlich verbessert.';

  @override
  String get event_voidWhaleCalf_title => 'Das Kalb des Leerwals';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Ein juveniler \'Weltraumwal\' — ein Wesen aus Energie und Sternenstaub — folgt unserem Schiff. Es hat seine Schule verloren und versucht, sich von der Ionenspur unserer Triebwerke zu ernähren, was es krank macht.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Triebwerksleistung anpassen, um Walrufe nachzuahmen';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Das Kalb antwortet! Es folgt uns, bis wir seine Schule finden. Die Elternwale streifen dankend an unserer Hülle entlang und hinterlassen einen Überzug aus biolumineszenten Mineralien, der unsere Schilde stärkt.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Es sanft mit einem Traktorstrahl auf niedriger Leistung abweisen';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Das Kalb wird entmutigt und driftet schließlich davon. Es ist sicherer für das Schiff, aber die Besatzung fühlt einen Hauch von Schuldgefühlen.';

  @override
  String get event_subspaceReef_title => 'Das Subraumriff';

  @override
  String get event_subspaceReef_narrative =>
      'Wir sind in eine Region des Weltraums geraten, die mit gezackten Falten im Subraumgewebe gefüllt ist. Hindurchzunavigieren ist wie ein Schiff durch ein Korallenriff zu steuern. Es ist wunderschön, aber jede falsche Bewegung wird an der Hülle reißen.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Mit minimaler Geschwindigkeit hindurchfahren';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Eine langsame, qual-volle Passage. Wir vermeiden das Schlimmste, aber die ständigen Kurskorekturen belasten den Navigationscomputer.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Scanner nutzen, um einen Weg zu kartieren und durchzustoßen';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Die Scanner werden bis an ihre Grenzen belastet. Wir kommen schnell durch, aber die Sensorarrays werden durch die Intensität der Subraumwellen ausgebrannt.';

  @override
  String get event_alienTrader_title => 'Der Wandernde Händler';

  @override
  String get event_alienTrader_narrative =>
      'Ein Gefährt unbekannten Designs treibt nebenher und sendet auf allen Frequenzen. Es ist ein Händler — einer der wandernden Kaufleute, die die Räume zwischen den Zivilisationen befahren. Sie bieten Reparaturen und Vorräte im Austausch gegen Ressourcen an. Ihr Frachtraum summt vor exotischer Technologie.';

  @override
  String get ui_event_enterTrade => 'HANDEL BEGINNEN';

  @override
  String get ui_trader_title => 'ALIEN-HÄNDLER';

  @override
  String get ui_trader_shipSystems => 'SCHIFFSSYSTEME';

  @override
  String get ui_trader_payWith => 'BEZAHLEN MIT';

  @override
  String get ui_trader_leaveTrader => 'HÄNDLER VERLASSEN';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Großzügige Stimmung';

  @override
  String get ui_trader_moodFair => 'Fairer Handel';

  @override
  String get ui_trader_moodHard => 'Harter Verhandler';

  @override
  String get ui_trader_probes => 'Sonden';

  @override
  String get ui_trader_fuel => 'Treibstoff';

  @override
  String get ui_trader_energy => 'Energie';

  @override
  String get ui_trader_colonists => 'Kolonisten';

  @override
  String get ui_trader_culture => 'Kultur';

  @override
  String get ui_trader_tech => 'Technik';

  @override
  String get ui_trader_greeting => 'Was bietest du an, Mensch?';

  @override
  String get ui_codex_title => 'KODEX';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ENTDECKT';
  }

  @override
  String get ui_codex_surfaceFeatures => 'OBERFLÄCHENMERKMALE';

  @override
  String get ui_codex_moonTypes => 'MONDTYPEN';

  @override
  String get ui_codex_ringTypes => 'RINGTYPEN';

  @override
  String get ui_codex_locked =>
      'Lande auf einem Planeten mit diesem Merkmal, um seine Effekte zu enthüllen.';

  @override
  String ui_codex_synergy(String features) {
    return 'Synergie: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TIPP ZUM ÜBERSPRINGEN';

  @override
  String get ui_common_tapRingToChoose =>
      'Tippen Sie auf einen Ring, um ihn auszuwählen';

  @override
  String get ui_common_tapToContinue => 'TIPP ZUM FORTFAHREN';

  @override
  String get ui_tooltip_back => 'Zurück';

  @override
  String get ui_tooltip_codex => 'Kodex';

  @override
  String get ui_tooltip_settings => 'Einstellungen';

  @override
  String get ui_tooltip_leaderboards => 'Bestenlisten';

  @override
  String get ui_tooltip_bugReport => 'Melden Sie einen Fehler';

  @override
  String get event_pulsarLighthouse_title => 'Pulsar-Leuchtturm';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Ein rotierender Neutronenstern fegt seinen Strahl über die Leere wie ein kosmischer Leuchtturm. Der rhythmische Puls des Pulsars trägt präzise Zeitdaten, die unsere Scanner auf außergewöhnliche Genauigkeit rekalibrieren könnten — doch die Ausrichtung auf den Strahl bedeutet, das Schiff intensiver Strahlung auszusetzen.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Scanner auf den Puls kalibrieren';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Die Scanner-Arrays saugen das Pulsar-Signal auf und rekalibrieren sich auf Präzisionen, die wir nie für möglich gehalten hätten. Doch der Preis der Strahlung ist real — mehrere Kryokapseln im exponierten Bereich nehmen Schaden, und eine Handvoll Kolonisten überlebt die Bestrahlung nicht.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Schilde hochfahren und in sicherem Abstand passieren';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Wir halten großen Abstand zum Pulsar und verbrennen zusätzlichen Treibstoff für eine sichere Flugbahn. Die Crew beobachtet den fegenden Strahl durch gefilterte Sichtfenster — wunderschön, aber fern.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Ziehen Sie sich zurück, bevor der Schwung uns erreicht';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Wir schwenken bei Notbrand ab, bevor der nächste Strahldurchgang erfolgt. Das Signal des Pulsars verblasst hinter uns – keine Daten gewonnen, kein Schaden erlitten, ein wenig Treibstoff für Ausweichschub aufgewendet.';

  @override
  String get event_alienNursery_title => 'Außerirdische Brutstätte';

  @override
  String get event_alienNursery_narrative =>
      'Eine gewaltige organische Struktur treibt in der Leere — eine biologische Brutstätte, die außerirdischen Nachwuchs ausbrütet. Ihre Lebenserhaltungssysteme versagen, die Innentemperaturen sinken. Die Wesen darin sterben. Unsere Bioscanner könnten enorm von dieser Struktur lernen, doch ein Eingriff bedeutet, unsere Schleusen für unbekannte Pathogene zu öffnen.';

  @override
  String get event_alienNursery_choice0 =>
      'Ihre Lebenserhaltung stabilisieren helfen';

  @override
  String get event_alienNursery_outcome0 =>
      'Unsere Ingenieure improvisieren eine thermische Verbindung zur Brutstätte und stabilisieren die Inkubationskammern. Die Bioscanner-Daten sind außergewöhnlich — eine völlig neue Taxonomie des Lebens. Doch wie befürchtet finden außerirdische Mikroorganismen ihren Weg an Bord. Medizinische Teams eindämmen den Ausbruch, allerdings nicht bevor mehrere Kolonisten erkranken.';

  @override
  String get event_alienNursery_choice1 => 'Ungestört lassen';

  @override
  String get event_alienNursery_outcome1 =>
      'Wir beobachten aus respektvollem Abstand und dokumentieren, was wir durch passive Scans erfassen können. Die Brutstätte treibt weiter, ihr Schicksal ungewiss. Die Crew reflektiert über die Zerbrechlichkeit des Lebens — selbst außerirdischen Lebens — und das Gewicht der Entscheidungen, die wir tragen.';

  @override
  String get event_derelictArmada_title => 'Verlassene Armada';

  @override
  String get event_derelictArmada_narrative =>
      'Hunderte uralter Kriegsschiffe hängen reglos in der Leere — der Friedhof eines vergessenen Konflikts. Ihre Rümpfe tragen Narben von Waffen, die wir nicht identifizieren können, doch ihre Baumaterialien und Borddatenbanken könnten von unschätzbarem Wert sein. Die Frage ist, was Vorrang hat: die physische Bergung oder das Wissen.';

  @override
  String get event_derelictArmada_choice0 =>
      'Waffentechnologie und Rumpfpanzerung bergen';

  @override
  String get event_derelictArmada_outcome0 =>
      'Bergungsteams schneiden sich in die außerirdischen Kriegsschiffe und extrahieren exotische Legierungen und Bautechniken, die unseren um Jahrhunderte voraus sind. Die Konstrukteure integrieren die neuen Materialien eifrig. Doch ein Schiff war nicht so tot, wie es aussah — eine Sprengfalle detoniert während der Bergung und tötet ein Bergungsteam.';

  @override
  String get event_derelictArmada_choice1 =>
      'Ihre historischen Archive herunterladen';

  @override
  String get event_derelictArmada_outcome1 =>
      'Wir konzentrieren uns auf die Datenkerne und extrahieren sorgfältig Jahrhunderte außerirdischer Geschichte, Kunst, Wissenschaft und Philosophie. Das Kulturarchiv allein könnte Gelehrte über Generationen beschäftigen. Die technologischen Erkenntnisse, wenn auch weniger unmittelbar praktisch, offenbaren Ingenieursprinzipien, die unser Verständnis voranbringen.';

  @override
  String get event_alienQuarantineZone_title => 'Außerirdische Quarantänezone';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Warnbojen in einem Dutzend außerirdischer Sprachen markieren die Grenze einer versiegelten Region des Weltraums. Was auch immer darin eingeschlossen ist, war gefährlich genug, dass mehrere Zivilisationen kooperierten, um es zu isolieren. Unsere Langstreckenscans erfassen massive technologische Signaturen im Inneren — und etwas, das lebendig sein könnte.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Die Quarantäne durchbrechen und untersuchen';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Wir dringen an den Warnbojen vorbei in die Quarantänezone. Drinnen finden wir eine Forschungsstation von atemberaubender Komplexität — und die Überreste dessen, was sie studierte. Die Technologie, die wir bergen, ist revolutionär, doch die biologische Kontamination ist schwer. Dutzende Kolonisten erkranken, bevor wir die Zone verlassen.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Die Quarantäne respektieren';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Wir studieren die Warnbojen selbst, die Navigationsdaten und Atmosphärenlesungen der Zivilisationen enthalten, die sie platzierten. Es ist nicht der Schatz im Inneren, aber es ist etwas — und wir haben nicht freigesetzt, was sie weggesperrt haben.';

  @override
  String get event_hydroponicsBlight_title => 'Hydroponik-Seuche';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Ein schnell ausbreitender Pilzbefall hat die Hydroponik-Buchten des Schiffs befallen. Ganze Erntezyklen welken vor unseren Augen. Der Befall hat die Saatgutreserven noch nicht erreicht, aber es ist nur eine Frage von Stunden. Wir können die Buchten entleeren und von Grund auf neu bepflanzen, oder eine experimentelle Antipilz-Behandlung versuchen, die die aktuelle Ernte retten könnte — oder die Kontamination weiter verbreiten.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Entleeren und aus Saatgutreserven neu bepflanzen';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Wir entlüften die Hydroponik-Buchten ins Vakuum und töten den Befall zusammen mit jeder lebenden Pflanze. Das Neubepflanzen aus Saatgutreserven wird Wochen dauern, und die Kulturprogramme, die auf frische Nahrung und Gartenflächen angewiesen waren, werden ausgesetzt. Aber die Infektion ist eingedämmt.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Experimentelle Behandlung versuchen';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Das experimentelle Antipilzmittel zeigt zunächst vielversprechende Ergebnisse, doch ein resistenter Stamm bricht durch. Als wir schließlich eine vollständige Entleerung vornehmen, hat sich der Befall bereits auf die Nährstoffleitungen der Kryokapseln ausgebreitet. Der Schaden ist schlimmer, als hätten wir von Anfang an entschlossen gehandelt.';

  @override
  String get event_constitutionalConvention_title => 'Verfassungskonvent';

  @override
  String get event_constitutionalConvention_narrative =>
      'Die Bevölkerung des Kolonieschiffs ist ohne formelle Führung unruhig geworden. Delegierte von jedem Deck versammeln sich im Frachtraum, um eine Charta zu entwerfen, die festlegt, wie die zukünftige Kolonie regiert wird. Drei Fraktionen präsentieren konkurrierende Visionen für die neue Regierung.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Entwerfen Sie eine demokratische Charta mit allgemeinem Wahlrecht';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Die Kolonisten ratifizieren eine Verfassung, die eine gleichberechtigte Vertretung garantiert. Die Entscheidungsfindung verlangsamt sich, aber die Moral steigt, da jede Stimme gehört wird.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Schaffen Sie eine starke Exekutive mit Notfallbefugnissen';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Es wird ein einziger Leiter mit weitreichender Autorität ernannt. Entscheidungen fallen schnell, aber Andersdenkende flüstern in den Unterdecks von Tyrannei.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Bilden Sie einen technokratischen Spezialistenrat';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Ingenieure, Wissenschaftler und Ärzte bilden einen auf Fachwissen basierenden Regierungsrat. Die Effizienz steigt, obwohl sich einige von der Macht ausgeschlossen fühlen.';

  @override
  String get event_militaryCoupThreat_title => 'Drohung mit Militärputsch';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Kommandant Vasquez von der Sicherheitsabteilung des Schiffes hat die Waffenkammer beschlagnahmt und ein Ultimatum gestellt: Erteilen Sie militärische Notfallbefugnisse, oder es droht eine Abriegelung aller Decks. Die Situation ist instabil und die Kolonisten erwarten von Ihnen eine Antwort.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Widerstehen Sie dem Putsch mit treuen Besatzungsmitgliedern';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Treue Mannschaft versammelt sich, um sich Vasquez zu widersetzen. Die Pattsituation endet mit minimalem Blutvergießen, aber die Sicherheitskräfte werden geschwächt und einige Kolonisten geraten ins Kreuzfeuer.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Unterwerfen Sie sich den Forderungen des Kommandanten';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez übernimmt die Kontrolle über den Schiffsbetrieb. Die Ordnung wird schnell wiederhergestellt, allerdings auf Kosten der bürgerlichen Freiheiten. Bewaffnete Patrouillen durchstreifen jetzt jeden Korridor.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Verhandeln Sie begrenzte Notfallbefugnisse mit einer Verfallsklausel';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Nach angespannten Verhandlungen übernimmt Vasquez die vorübergehende Autorität mit Aufsicht. Ein fragiler Kompromiss, der niemanden völlig zufriedenstellt, aber Gewalt verhindert.';

  @override
  String get event_religiousAwakening_title => 'Religiöses Erwachen';

  @override
  String get event_religiousAwakening_narrative =>
      'Ein charismatischer Prediger hat Hunderte von Kolonisten in eine neue Glaubensbewegung gezogen. Sie versammeln sich jeden Zyklus in der Beobachtungskuppel und ihre Hymnen hallen durch die Lüftungsschächte. Einige Besatzungsmitglieder befürchten Fanatismus; andere finden echten Trost in den Lehren.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Umfassen Sie die Glaubensbewegung und stellen Sie Ressourcen bereit';

  @override
  String get event_religiousAwakening_outcome0 =>
      'Die Bewegung floriert mit offizieller Unterstützung. Die Moral unter den Gläubigen verbessert sich und ihr Gemeinschaftsgeist stärkt die sozialen Bindungen auf dem ganzen Schiff.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Setzen Sie an Bord des Schiffes strikten Säkularismus durch';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Religiöse Versammlungen sind auf Privaträume beschränkt. Die Bewegung geht in den Untergrund und schürt Ressentiments, aber der wissenschaftliche Rationalismus bleibt die offizielle Doktrin.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Erlaube den Gottesdienst, aber reguliere seinen Einfluss';

  @override
  String get event_religiousAwakening_outcome2 =>
      'Der Glaube ist erlaubt, wird aber von der Regierungsführung getrennt gehalten. Ein Kaplan wird ernannt, der mit dem Kommando in Verbindung steht. Es bleibt ein unsicheres Gleichgewicht bestehen.';

  @override
  String get event_corporateTakeover_title => 'Unternehmensübernahme';

  @override
  String get event_corporateTakeover_narrative =>
      'Die Ressourcenmanager des Schiffes haben in aller Stille die Kontrolle über die Lebensmittelverteilung, das Wasserrecycling und die Energieverteilung gefestigt. Sie schlagen nun vor, ihre Autorität in einer Unternehmensstruktur zu formalisieren, die die Wirtschaft der künftigen Kolonie verwalten soll.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Erlauben Sie, dass die Prinzipien des freien Marktes die Ressourcen bestimmen';

  @override
  String get event_corporateTakeover_outcome0 =>
      'Die Unternehmensfraktion übernimmt die Ressourcenverwaltung. Die Effizienz verbessert sich dramatisch, aber die Preise steigen und die ärmsten Kolonisten haben Schwierigkeiten, sich das Nötigste zu leisten.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Verstaatlichen Sie alle Ressourcen im kollektiven Eigentum';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Ressourcen werden beschlagnahmt und unter kommunale Kontrolle gestellt. Die Unternehmensfraktion wird zerschlagen, aber die Innovation stagniert ohne Gewinnanreize.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implementieren Sie regulierte Märkte mit Sicherheitsnetzen';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Es entsteht eine gemischte Wirtschaft mit Preiskontrollen und Wohlfahrtsprogrammen. Keine der beiden Fraktionen ist vollständig zufrieden, aber die Grundbedürfnisse werden befriedigt und gleichzeitig ein gewisses Maß an Unternehmertum ermöglicht.';

  @override
  String get event_successionCrisis_title => 'Nachfolgekrise';

  @override
  String get event_successionCrisis_narrative =>
      'Der Kapitän des Schiffes ist im Schlaf gestorben und hat keinen designierten Nachfolger hinterlassen. Drei Fraktionen wetteifern sofort um die Kontrolle: Der Zivilrat fordert Wahlen, der Sicherheitschef beansprucht kriegerische Autorität und die älteren Kolonisten berufen sich auf traditionelle Führungsriten.';

  @override
  String get event_successionCrisis_choice0 => 'Halten Sie eine Notwahl ab';

  @override
  String get event_successionCrisis_outcome0 =>
      'Eine chaotische, aber temperamentvolle Wahl bringt einen neuen Kapitän hervor, der durch Volksabstimmung gewählt wird. Der Prozess ist chaotisch, aber die Kolonisten fühlen sich ihrer Führung verpflichtet.';

  @override
  String get event_successionCrisis_choice1 =>
      'Lassen Sie das Militär das Kommando übernehmen';

  @override
  String get event_successionCrisis_outcome1 =>
      'Der Sicherheitschef setzt sich auf den Kapitänsstuhl. Die Disziplin wird sofort wiederhergestellt, aber die zivile Besatzung beäugt die bewaffneten Wachen mit wachsendem Unbehagen.';

  @override
  String get event_successionCrisis_choice2 => 'Einen Ältestenrat einberufen';

  @override
  String get event_successionCrisis_outcome2 =>
      'Die ältesten und erfahrensten Kolonisten bilden einen Regierungsrat. Ihre Weisheit leitet das Schiff, obwohl sich einige jüngere Besatzungsmitglieder von der Gerontokratie ausgegrenzt fühlen.';

  @override
  String get event_nativeSovereignty_title => 'Einheimische Souveränität';

  @override
  String get event_nativeSovereignty_narrative =>
      'Langstreckenscans bestätigen intelligentes Leben auf dem Zielplaneten. Abgefangene Kommunikation enthüllt eine hochentwickelte Zivilisation, die Ihre Annäherung bemerkt hat. Sie übermitteln eine formelle Forderung: ihre territoriale Souveränität anzuerkennen oder bei ihrer Ankunft auf Widerstand zu stoßen.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Erkennen Sie die Souveränität der Einheimischen an und beantragen Sie die Erlaubnis zur Ansiedlung';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Sie übermitteln eine formelle Anerkennung der einheimischen Rechte. Die Resonanz ist vorsichtig, aber positiv. Zukünftige Beziehungen werden auf der Grundlage gegenseitigen Respekts beginnen, auch wenn die Landeplätze möglicherweise begrenzt sind.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Behaupten Sie die koloniale Vormachtstellung und bereiten Sie sich auf den Widerstand vor';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Sie geben Ihre Absicht bekannt, trotzdem eine Einigung zu erzielen. Die Besatzung beginnt mit Waffenübungen und der Befestigungsplanung. Die Eingeborenen schweigen, was irgendwie furchteinflößender ist als Drohungen.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Schlagen Sie eine gemeinsame Verwaltung des Planeten vor';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Sie bieten einen Rahmen für das Zusammenleben und die gemeinsame Nutzung von Ressourcen. Die Eingeborenen sind fasziniert, aber vorsichtig. Die Verhandlungen werden komplex sein, aber die Möglichkeit eines Friedens besteht.';

  @override
  String get event_laborStrike_title => 'Arbeitsstreik';

  @override
  String get event_laborStrike_narrative =>
      'Die Ingenieursmannschaft hat ihren Job aufgegeben und fordert kürzere Schichten, bessere Essensrationen und Mitspracherecht bei Navigationsentscheidungen. Kritische Systeme laufen auf automatischen Backups, die jedoch nicht lange halten. Der Rest der Kolonisten schaut nervös zu.';

  @override
  String get event_laborStrike_choice0 =>
      'Erfüllen Sie die Forderungen der Arbeitnehmer in vollem Umfang';

  @override
  String get event_laborStrike_outcome0 =>
      'Der Streik endet sofort. Arbeitnehmer kehren unter verbesserten Bedingungen an ihren Arbeitsplatz zurück. Die Produktivität sinkt leicht, wenn kürzere Schichten in Kraft treten, aber die Loyalität ist unerschütterlich.';

  @override
  String get event_laborStrike_choice1 =>
      'Unterdrücken Sie den Streik und setzen Sie Zwangsarbeit durch';

  @override
  String get event_laborStrike_outcome1 =>
      'Sicherheitskräfte eskortieren die Arbeiter mit vorgehaltener Waffe zurück zu ihren Stationen. Die Motoren summen wieder, doch in den Unterdecks brodelt der Hass. Mehrere Arbeiter sind in Quartieren untergebracht.';

  @override
  String get event_laborStrike_choice2 =>
      'Bieten Sie einen Teilkompromiss zu den wichtigsten Forderungen an';

  @override
  String get event_laborStrike_outcome2 =>
      'Nach langen Verhandlungen kommt es zu einer Einigung: bessere Rationen und Beratung, aber keine Verkürzung der Schichtlänge. Keine Seite ist begeistert, aber die Motoren laufen weiter.';

  @override
  String get event_censorshipDebate_title => 'Zensurdebatte';

  @override
  String get event_censorshipDebate_narrative =>
      'Ein durchgesickertes Dokument enthüllt den wahren Zustand der fehlerhaften Systeme des Schiffes. Panik breitet sich in den Unterdecks aus. Der Kommunikationsbeauftragte schlägt vor, den Informationszugriff einzuschränken, um weitere Unruhen zu verhindern. Befürworter der Bürgerrechte sind empört.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Garantieren Sie freien Zugang zu allen Informationen';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Es wird volle Transparenz hergestellt. Die anfängliche Panik lässt nach, als sich die Kolonisten zusammenschließen, um bei der Lösung der Probleme zu helfen, die sie jetzt verstehen. Das Vertrauen in die Führung wächst, obwohl manche Informationen Ärger bereiten.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implementieren Sie eine vollständige Informationskontrolle';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Die gesamte Kommunikation wird jetzt über den Befehl gefiltert. Die Panik hört auf und wird von einer unheimlichen Ruhe ersetzt. Aber Gerüchte füllen die Lücke, die die zensierte Wahrheit hinterlassen hat, und sie sind oft schlimmer als die Realität.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filtern Sie nur sicherheitsrelevante Informationen';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Es wird ein Klassifizierungssystem etabliert. Die meisten Informationen fließen frei, militärische und kritische Systemdaten erfordern jedoch eine Freigabe. Ein praktikabler Mittelweg, der größtenteils zufriedenstellend ist.';

  @override
  String get event_colonialCharter_title => 'Kolonialcharta';

  @override
  String get event_colonialCharter_narrative =>
      'Da der Untergang des Planeten näher rückt, müssen die Kolonisten grundlegende Gesetze für ihre neue Gesellschaft entwerfen. Es sind drei philosophische Lager entstanden, die jeweils eine andere Vision davon vertreten, was aus der Kolonie werden sollte. Die Debatte ist hitzig und zutiefst persönlich.';

  @override
  String get event_colonialCharter_choice0 =>
      'Eine fortschrittliche Charta, die die Rechte des Einzelnen betont';

  @override
  String get event_colonialCharter_outcome0 =>
      'Die Charta verankert persönliche Freiheiten, Gleichheit und soziale Mobilität. Künstler und Denker feiern; Traditionalisten warnen davor, dass unkontrollierte Freiheit zum Chaos führt.';

  @override
  String get event_colonialCharter_choice1 =>
      'Eine konservative Charta, die die Traditionen der Erde bewahrt';

  @override
  String get event_colonialCharter_outcome1 =>
      'Die Charta kodifiziert traditionelle Werte, Familienstrukturen und religiöse Bräuche. Viele finden Trost in vertrauten Bräuchen; andere fühlen sich durch die Last des Denkens der alten Welt erstickt.';

  @override
  String get event_colonialCharter_choice2 =>
      'Eine pragmatische Charta, die sich auf Überleben und Wachstum konzentriert';

  @override
  String get event_colonialCharter_outcome2 =>
      'Die Charta priorisiert Ressourcenmanagement, technische Ausbildung und wirtschaftliche Entwicklung. Es mangelt an Poesie, stellt aber sicher, dass die Kolonie effizient und gut organisiert ist.';

  @override
  String get event_separatistMovement_title => 'Separatistische Bewegung';

  @override
  String get event_separatistMovement_narrative =>
      'Eine Fraktion von Kolonisten hat ihre Unabhängigkeit von der Schiffsverwaltung erklärt. Sie haben sich im hinteren Teil verbarrikadiert und fordern das Recht, bei der Landung eine eigene Siedlung zu errichten. Sie kontrollieren 15 % der Nahrungsreserven des Schiffes und eine Backup-Navigationsanlage.';

  @override
  String get event_separatistMovement_choice0 =>
      'Gewähren Sie regionale Autonomie im föderalen Rahmen';

  @override
  String get event_separatistMovement_outcome0 =>
      'Die Separatisten akzeptieren einen Deal: einen eigenen Bezirk mit lokaler Verwaltung unter einem losen föderalen Dach. Der Präzedenzfall der Fragmentierung beunruhigt einige, aber der Frieden bleibt erhalten.';

  @override
  String get event_separatistMovement_choice1 =>
      'Stürmt die Barrikaden und erzwingt die Wiedervereinigung';

  @override
  String get event_separatistMovement_outcome1 =>
      'Sicherheitsteams durchbrechen den hinteren Bereich. Die Separatisten leisten erbitterten Widerstand. Die Ordnung wird wiederhergestellt, aber zu einem schrecklichen Preis. Das Schiff ist im Körper vereint, wenn nicht im Geiste.';

  @override
  String get event_separatistMovement_choice2 =>
      'Gehen Sie die grundlegenden Missstände an, die die Bewegung antreiben';

  @override
  String get event_separatistMovement_outcome2 =>
      'Mediatoren arbeiten daran, herauszufinden, was die Fraktion abgestoßen hat. Reformen in der Ressourcenverteilung und -repräsentation bringen die Separatisten langsam wieder in den Kreis. Heilung braucht Zeit.';

  @override
  String get event_warCouncil_title => 'Kriegsrat';

  @override
  String get event_warCouncil_narrative =>
      'Wenn potenzielle Bedrohungen in nahegelegenen Systemen entdeckt werden, beruft die Schiffsführung einen Kriegsrat ein. Die Frage lautet: Wie viel von den begrenzten Ressourcen der Kolonie sollte für die militärische Vorbereitung im Vergleich zur zivilen Infrastruktur aufgewendet werden?';

  @override
  String get event_warCouncil_choice0 =>
      'Volle Bewaffnung: Waffen schmieden und Soldaten ausbilden';

  @override
  String get event_warCouncil_outcome0 =>
      'Werkstätten werden für die Waffenproduktion umgerüstet. Jeder arbeitsfähige Kolonist erhält eine Kampfausbildung. Das Schiff strotzt nur so vor Waffen, aber das Budget für landwirtschaftliche Geräte schrumpft.';

  @override
  String get event_warCouncil_choice1 =>
      'Abrüstung: Waffen zu Werkzeugen verschmelzen';

  @override
  String get event_warCouncil_outcome1 =>
      'Die Waffenkammer wird geleert und ihr Inhalt zu Baumaterialien recycelt. Die Kolonie wird mit Pflugscharen bauen, nicht mit Schwertern. Pazifisten freuen sich; Realisten machen sich Sorgen darüber, was im Dunkeln lauert.';

  @override
  String get event_warCouncil_choice2 =>
      'Nur Verteidigungshaltung: Schilde und Mauern, keine Schwerter';

  @override
  String get event_warCouncil_outcome2 =>
      'Die Ressourcen fließen in Befestigungen, Schilde und Frühwarnsysteme. Es werden keine Angriffswaffen hergestellt. Ein ausgewogener Ansatz, der Optionen offen hält, ohne potenzielle Nachbarn zu provozieren.';

  @override
  String get event_tradeFederation_title => 'Handelsverband';

  @override
  String get event_tradeFederation_narrative =>
      'Während sich die Kolonie der Rentabilität nähert, diskutieren die Fraktionen über die Strukturierung ihrer Wirtschaft. Die Frage geht über das bloße Überleben hinaus – sie wird die Art von Gesellschaft definieren, die auf fremdem Boden Wurzeln schlägt. Kaufleute, Kommunalisten und Bürokraten vertreten alle ihre Argumente.';

  @override
  String get event_tradeFederation_choice0 =>
      'Errichten Sie Freihandelszonen mit minimaler Regulierung';

  @override
  String get event_tradeFederation_outcome0 =>
      'In jedem Lebensraummodul entstehen Märkte. Innovation gedeiht im Wettbewerb der Händler. Die Vermögensungleichheit nimmt zu, aber auch der Gesamtressourcenpool, der der Kolonie zur Verfügung steht.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implementieren Sie die gemeinsame Nutzung aller Ressourcen';

  @override
  String get event_tradeFederation_outcome1 =>
      'Das Privateigentum wird abgeschafft. Alles gehört allen. Niemand hungert, aber niemand hat den Anreiz, mehr als das Minimum zu produzieren. Mittelmäßigkeit ist bequem.';

  @override
  String get event_tradeFederation_choice2 =>
      'Schaffen Sie ein staatlich verwaltetes Handelssystem';

  @override
  String get event_tradeFederation_outcome2 =>
      'Die Regierung kontrolliert den gesamten Handel, legt Preise fest und verteilt Ressourcen. Das System ist fair, aber unflexibel. In den Wartungskorridoren entstehen Schwarzmärkte.';

  @override
  String get event_faithVsScience_title => 'Glaube vs. Wissenschaft';

  @override
  String get event_faithVsScience_narrative =>
      'Das Schiffsteleskop hat Bilder eines kosmischen Phänomens aufgenommen, das direkt im Widerspruch zum zentralen Grundsatz der vorherrschenden Glaubensbewegung steht. Der leitende Wissenschaftler möchte die Ergebnisse veröffentlichen; Der religiöse Führer besteht darauf, dass sie die Gemeinschaft auseinanderreißen werden.';

  @override
  String get event_faithVsScience_choice0 =>
      'Veröffentlichen Sie die wissenschaftlichen Erkenntnisse vollständig';

  @override
  String get event_faithVsScience_outcome0 =>
      'Die Wahrheit hat Vorrang vor Trost. Die Daten werden veröffentlicht und die religiöse Bewegung zerbricht. Manche Gläubige passen ihren Glauben an; andere verlieren es völlig. Wissen schreitet voran.';

  @override
  String get event_faithVsScience_choice1 =>
      'Unterdrücken Sie die Erkenntnisse, um die soziale Harmonie zu wahren';

  @override
  String get event_faithVsScience_outcome1 =>
      'Die Daten werden klassifiziert. Die Religionsgemeinschaft bleibt stabil, aber das Wissenschaftsteam ist demoralisiert. Eine aufgeschobene Wahrheit ist keine geleugnete Wahrheit, aber es fühlt sich so an.';

  @override
  String get event_faithVsScience_choice2 =>
      'Rufen Sie ein gemeinsames Gremium ein, um eine Harmonie zwischen beiden Ansichten zu finden';

  @override
  String get event_faithVsScience_outcome2 =>
      'Wissenschaftler und Theologen arbeiten gemeinsam an der Neuinterpretation der Erkenntnisse. Es entsteht eine neue Synthese, die sowohl das Verständnis als auch den Glauben erweitert. Nicht alle sind überzeugt, aber der Dialog ist gesund.';

  @override
  String get event_surveillanceState_title => 'Überwachungsstaat';

  @override
  String get event_surveillanceState_narrative =>
      'Nach einer Reihe von Sabotagevorfällen schlägt der Sicherheitschef vor, in jedem Raum des Schiffes Überwachungssysteme zu installieren. Kameras, Mikrofone und biometrische Scanner würden die Bewegungen jedes Kolonisten verfolgen. Datenschützer sind entsetzt.';

  @override
  String get event_surveillanceState_choice0 =>
      'Lehnen Sie den Überwachungsvorschlag vollständig ab';

  @override
  String get event_surveillanceState_outcome0 =>
      'Die Privatsphäre bleibt gewahrt. Der Saboteur bleibt auf freiem Fuß, aber die Kolonisten schlafen ruhiger, weil sie wissen, dass sie nicht beobachtet werden. Die Ermittlungen werden mit herkömmlichen Mitteln fortgesetzt.';

  @override
  String get event_surveillanceState_choice1 =>
      'Führen Sie eine vollständige Überwachung des gesamten Schiffs durch';

  @override
  String get event_surveillanceState_outcome1 =>
      'Jeder Winkel des Schiffes wird überwacht. Der Saboteur wird innerhalb weniger Tage gefasst. Doch die Kameras bleiben bestehen und der Sicherheitschef zeigt kein Interesse daran, sie auszuschalten. Immer.';

  @override
  String get event_surveillanceState_choice2 =>
      'Installieren Sie eine begrenzte Überwachung nur in kritischen Bereichen';

  @override
  String get event_surveillanceState_outcome2 =>
      'Kameras überwachen den Maschinenraum, die Waffenkammer und die Brücke. Die Wohnräume bleiben privat. Der Saboteur wird schließlich durch Musteranalyse identifiziert. Eine maßvolle Reaktion.';

  @override
  String get event_nativeAlliance_title => 'Native Alliance';

  @override
  String get event_nativeAlliance_narrative =>
      'Die einheimische Zivilisation hat einen formellen Vertrag vorgeschlagen. Ihr Botschafter kommt per Shuttle an, ein elegantes Wesen, das durch ein Übersetzergerät von erstaunlicher Raffinesse spricht. Sie bieten drei Formen der Beziehung, jede mit unterschiedlichen Auswirkungen auf die Zukunft der Kolonie.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Unterzeichnen Sie einen gleichberechtigten Bündnisvertrag';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Der Vertrag legt gegenseitige Verteidigung, gemeinsame Forschung und gleiche Gebietsrechte fest. Beide Zivilisationen werden zusammenwachsen. Die Eingeborenen teilen landwirtschaftliches Wissen, das die Aussichten Ihrer Kolonie verändert.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Verhandeln Sie aus einer Position kolonialer Dominanz';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Sie nutzen Ihre fortschrittliche Technologie, um sich günstige Konditionen zu sichern. Die Eingeborenen geben Territorium und Ressourcen ab. Sie unterschreiben mit zitternden Händen. Die Geschichte hat das schon einmal erlebt, und es endet selten gut.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Bauen Sie eine Handelspartnerschaft auf, die auf gegenseitigen Nutzen ausgerichtet ist';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Der Handel überbrückt die Kluft zwischen den Arten. Einheimische Materialien fließen in Ihre Werkstätten; Ihre Technologie verbessert ihre Medizin. Freundschaft entsteht aus gegenseitigem Gewinn.';
}
