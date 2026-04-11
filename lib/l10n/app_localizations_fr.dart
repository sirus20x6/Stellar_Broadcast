// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Stellar Broadcast';

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'COMMENCER LE VOYAGE';

  @override
  String get ui_title_dailyVoyage => 'VOYAGE QUOTIDIEN';

  @override
  String get ui_title_dailyCompleted => 'QUOTIDIEN TERMINÉ';

  @override
  String get ui_title_customSeed => 'SEED PERSONNALISÉ';

  @override
  String get ui_title_legacyHub => 'HÉRITAGE';

  @override
  String get ui_title_cancel => 'ANNULER';

  @override
  String get ui_title_startVoyage => 'LANCER LE VOYAGE';

  @override
  String ui_voyage_sector(int count) {
    return 'SEC $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEED : $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNERS';

  @override
  String get ui_voyage_scanPlanet => 'SCANNER PLANÈTE';

  @override
  String get ui_voyage_noEnergy => 'PAS D\'ÉNERGIE';

  @override
  String get ui_voyage_pressOn => 'CONTINUER';

  @override
  String get ui_voyage_systemHull => 'Coque';

  @override
  String get ui_voyage_systemNav => 'Nav';

  @override
  String get ui_voyage_systemCryopods => 'Cryocapsules';

  @override
  String get ui_voyage_systemCulture => 'Culture';

  @override
  String get ui_voyage_systemTech => 'Tech';

  @override
  String get ui_voyage_systemConstruct => 'Construction';

  @override
  String get ui_voyage_systemShields => 'Boucliers';

  @override
  String get ui_voyage_systemLanding => 'Atterrissage';

  @override
  String get ui_voyage_scannerAtmo => 'Scan Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Scan Grav';

  @override
  String get ui_voyage_scannerMineral => 'Scan Minéral';

  @override
  String get ui_voyage_scannerLife => 'Scan Bio';

  @override
  String get ui_voyage_scannerTemp => 'Scan Temp';

  @override
  String get ui_voyage_scannerWater => 'Scan Eau';

  @override
  String get ui_voyage_narrative0 =>
      'Orbite terrestre dégagée. Cryocapsules stables. Anneau d\'archives sécurisé.';

  @override
  String get ui_voyage_narrative1 =>
      'Transit hors-système nominal. Scanners longue portée élargissant le champ de recherche.';

  @override
  String get ui_voyage_narrative2 =>
      'Le trafic terrien est passé sous le seuil de détection.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Les coordonnées archivées correspondent à un système signalé. Ajustement du cap.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Les réseaux de scanners calibrent encore pour la résolution en espace profond.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Système marqué devant. Les données d\'étude antérieures restent cohérentes.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Signal faible devant. Balayage planétaire en cours.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Sortie SLV terminée. Nouveau système stellaire en vue.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Banques de cryocapsules stables. Scan de secteur en cours.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Nouvelle planète se résolvant dans le réseau avant.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'La cartographie stellaire signale un candidat viable.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Les instruments ont trouvé un autre monde digne d\'être mesuré.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Verrouillage scanner acquis sur une nouvelle cible.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Cartes de navigation actualisées. Monde candidat à portée.';

  @override
  String get ui_scan_landHere => 'ATTERRIR ICI';

  @override
  String get ui_scan_pressOn => 'CONTINUER';

  @override
  String get ui_scan_allStatsVerified => 'TOUTES LES DONNÉES VÉRIFIÉES';

  @override
  String get ui_scan_launchProbe => 'LANCER SONDE';

  @override
  String get ui_scan_habitability => 'HABITABILITÉ';

  @override
  String get ui_scan_statAtmos => 'ATMO';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'EAU';

  @override
  String get ui_scan_statResource => 'RESSOURCES';

  @override
  String get ui_scan_statGravity => 'GRAVITÉ';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIE';

  @override
  String get ui_scan_statRadiation => 'RADIATION';

  @override
  String get ui_landing_planetAnalysis => 'ANALYSE PLANÉTAIRE';

  @override
  String get ui_landing_shipStatus => 'ÉTAT DU VAISSEAU';

  @override
  String ui_landing_fuel(int amount) {
    return 'CARBURANT : $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'ALERTE CARBURANT BAS';

  @override
  String get ui_landing_landingRiskCritical =>
      'RISQUE D\'ATTERRISSAGE : CRITIQUE';

  @override
  String get ui_landing_landingRiskElevated => 'RISQUE D\'ATTERRISSAGE : ÉLEVÉ';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Système d\'atterrissage gravement endommagé. L\'entrée atmosphérique pourrait détruire la cargaison et les colons.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Système d\'atterrissage dégradé. Attendez-vous à une entrée atmosphérique difficile avec des dommages système possibles.';

  @override
  String get ui_landing_riskAssessment => 'ÉVALUATION DES RISQUES';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Votre vaisseau peut supporter ~$remaining rencontres supplémentaires';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Votre vaisseau pourrait ne pas survivre à un autre voyage';

  @override
  String get ui_landing_surfaceFeatures => 'CARACTÉRISTIQUES DE SURFACE';

  @override
  String get ui_landing_nameYourColony => 'NOMMEZ VOTRE COLONIE';

  @override
  String get ui_landing_establishColony => 'FONDER LA COLONIE';

  @override
  String get ui_landing_pressOnward => 'POURSUIVRE';

  @override
  String get ui_landing_statAtmosphere => 'Atmosphère';

  @override
  String get ui_landing_statTemperature => 'Température';

  @override
  String get ui_landing_statWater => 'Eau';

  @override
  String get ui_landing_statResources => 'Ressources';

  @override
  String get ui_landing_statGravity => 'Gravité';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversité';

  @override
  String get ui_landing_statAvgHealth => 'Santé Moy.';

  @override
  String get ui_landing_statHull => 'Coque';

  @override
  String get ui_landing_statNavigation => 'Navigation';

  @override
  String get ui_landing_statCryopods => 'Cryocapsules';

  @override
  String get ui_landing_statCulture => 'Culture';

  @override
  String get ui_landing_statTech => 'Tech';

  @override
  String get ui_landing_statConstructors => 'Constructeurs';

  @override
  String get ui_landing_statShields => 'Boucliers';

  @override
  String get ui_landing_statLandingSys => 'Sys. Atterr.';

  @override
  String get ui_landingSequence_phase1 => 'PHASE 1 : ENGAGEMENT ORBITAL';

  @override
  String get ui_landingSequence_phase1Desc =>
      'Fenêtre de descente ouverte. Engagement de l\'entrée.';

  @override
  String get ui_landingSequence_phase2 => 'PHASE 2 : FEU ATMOSPHÉRIQUE';

  @override
  String get ui_landingSequence_title => 'SÉQUENCE D\'ATTERRISSAGE';

  @override
  String get ui_landingSequence_viewColonyReport =>
      'VOIR LE RAPPORT DE COLONIE';

  @override
  String get ui_ending_colonyEstablished => 'COLONIE FONDÉE';

  @override
  String get ui_ending_colonyScore => 'SCORE DE COLONIE';

  @override
  String get ui_ending_colonyProfile => 'PROFIL DE COLONIE';

  @override
  String get ui_ending_landscape => 'PAYSAGE';

  @override
  String get ui_ending_voyageRecord => 'JOURNAL DE VOYAGE';

  @override
  String get ui_ending_scoreBreakdown => 'DÉTAIL DES POINTS';

  @override
  String get ui_ending_total => 'TOTAL';

  @override
  String get ui_ending_achievementsUnlocked => 'SUCCÈS DÉBLOQUÉS';

  @override
  String get ui_ending_challengeFriend => 'DÉFIER UN AMI';

  @override
  String get ui_ending_copySeed => 'COPIER SEED';

  @override
  String get ui_ending_viewLegacy => 'VOIR L\'HÉRITAGE';

  @override
  String get ui_ending_newVoyage => 'NOUVEAU VOYAGE';

  @override
  String get ui_ending_achievementFirstLanding => 'Premier Atterrissage';

  @override
  String get ui_ending_achievementGoldenAge => 'Âge d\'Or';

  @override
  String get ui_ending_achievementSurvivor => 'Survivant';

  @override
  String get ui_ending_achievementExplorer => 'Explorateur';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfectionniste';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Survivant du Monde Mortel';

  @override
  String get ui_ending_achievementFullCrew => 'Équipage Complet';

  @override
  String get ui_ending_achievementProbeMaster => 'Maître Sondeur';

  @override
  String get ui_ending_achievementIronHull => 'Coque de Fer';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Saut de la Foi';

  @override
  String get ui_gameOver_missionFailed => 'MISSION ÉCHOUÉE';

  @override
  String get ui_gameOver_voyageRecord => 'JOURNAL DE VOYAGE';

  @override
  String get ui_gameOver_encountersSurvived => 'RENCONTRES SURVÉCUES';

  @override
  String get ui_gameOver_probesRemaining => 'SONDES RESTANTES';

  @override
  String get ui_gameOver_colonistsRemaining => 'COLONS RESTANTS';

  @override
  String get ui_gameOver_finalShipHealth => 'ÉTAT FINAL DU VAISSEAU';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANÈTES IGNORÉES';

  @override
  String get ui_gameOver_damageTaken => 'DÉGÂTS SUBIS';

  @override
  String get ui_gameOver_fuelRemaining => 'CARBURANT RESTANT';

  @override
  String get ui_gameOver_energyRemaining => 'ÉNERGIE RESTANTE';

  @override
  String get ui_gameOver_challengeFriend => 'DÉFIER UN AMI';

  @override
  String get ui_gameOver_viewLegacy => 'VOIR L\'HÉRITAGE';

  @override
  String get ui_gameOver_newVoyage => 'NOUVEAU VOYAGE';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nJe n\'ai pas survécu... $reason.\nTu penses faire mieux sur le même voyage ?\nstellarbroadcast://play?seed=$seedCode\n\nTu n\'as pas l\'appli ?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Le dernier colon est mort en cryosommeil — une défaillance en cascade qu\'aucun protocole d\'urgence ne pouvait empêcher. L\'Exodus a poursuivi sa route, vaisseau fantôme ne portant plus que des systèmes automatisés et un silence glacé. Sa mission n\'avait pas échoué dans un moment de catastrophe, mais dans l\'attrition lente des vies humaines, une par une, jusqu\'à ce qu\'il n\'en reste plus aucune.';

  @override
  String get ui_gameOver_epilogueHull =>
      'La coque a cédé en silence — la fatigue du métal aggravée par d\'innombrables micro-impacts jusqu\'à ce que le vaisseau ne puisse plus tenir. L\'atmosphère s\'est échappée dans le vide. Le vaisseau colonial Exodus s\'est désagrégé, ses débris rejoignant les anciens champs de débris entre les étoiles. Aucun signal de détresse n\'a jamais été reçu.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Sans navigation, l\'Exodus a dérivé dans l\'espace inexploré — cartes stellaires inutiles, corrections de cap impossibles. Le vaisseau a navigué dans le noir, ses passagers endormis ignorant que leur destination avait été remplacée par l\'éternité. Certains disent que le vaisseau dérive encore, vaisseau fantôme dans la nuit sans fin.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Une par une, les cryocapsules ont lâché — une cascade qu\'aucun protocole d\'urgence ne pouvait stopper. Les colons ne se sont jamais réveillés. L\'Exodus a poursuivi sa route programmée, vaisseau-tombeau ne portant que le silence vers le monde qu\'il atteindrait un jour. Un monument à un rêve mort dans le sommeil glacé.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'L\'Exodus s\'est tu. Sa mission, son équipage, sa cargaison d\'espoir humain — tout perdu dans l\'immensité indifférente entre les étoiles. Peut-être qu\'un jour une autre civilisation trouvera l\'épave et se demandera quelle espèce courageuse a osé traverser le vide.';

  @override
  String get ui_settings_title => 'PARAMÈTRES';

  @override
  String get ui_settings_music => 'MUSIQUE';

  @override
  String get ui_settings_soundEffects => 'EFFETS SONORES';

  @override
  String get ui_settings_haptics => 'HAPTIQUE';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Passer Premium';

  @override
  String get ui_settings_enabled => 'Activé';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Langue';

  @override
  String get ui_settings_systemDefault => 'Par défaut du système';

  @override
  String get ui_legacy_title => 'HÉRITAGE';

  @override
  String get ui_legacy_commanderStats => 'STATS DU COMMANDANT';

  @override
  String get ui_legacy_highScores => 'MEILLEURS SCORES';

  @override
  String get ui_legacy_upgrades => 'AMÉLIORATIONS';

  @override
  String get ui_legacy_achievements => 'SUCCÈS';

  @override
  String get ui_legacy_voyageLog => 'JOURNAL DE VOYAGE';

  @override
  String get ui_legacy_voyages => 'VOYAGES';

  @override
  String get ui_legacy_bestScore => 'MEILLEUR SCORE';

  @override
  String get ui_legacy_legacyPts => 'PTS D\'HÉRITAGE';

  @override
  String get ui_legacy_completed => 'TERMINÉ';

  @override
  String get ui_legacy_notYetPlayed => 'PAS ENCORE JOUÉ';

  @override
  String get ui_legacy_dailyHistory => 'HISTORIQUE QUOTIDIEN';

  @override
  String get ui_premium_goPremium => 'PASSER PREMIUM';

  @override
  String get ui_premium_subtitle =>
      'Soutenez la mission. Améliorez votre commandement.';

  @override
  String get ui_premium_removeAds => 'Supprimer toutes les pubs à jamais';

  @override
  String get ui_premium_supportIndie => 'Soutenir le développement indépendant';

  @override
  String get ui_premium_exclusiveTitle => 'Titre de commandant exclusif';

  @override
  String get ui_premium_priorityFeatures =>
      'Demandes de fonctionnalités prioritaires';

  @override
  String get ui_premium_lifetime => 'À vie';

  @override
  String get ui_scannerUpgrade_title => 'AMÉLIORATION SCANNER';

  @override
  String get ui_scannerUpgrade_subtitle => 'Choisissez un scanner à améliorer';

  @override
  String get ui_scannerUpgrade_skip => 'PASSER';

  @override
  String get ui_scannerUpgrade_max => 'MAX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosphérique';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimétrique';

  @override
  String get ui_scannerUpgrade_mineral => 'Minéral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Signes de Vie';

  @override
  String get ui_scannerUpgrade_temperature => 'Température';

  @override
  String get ui_scannerUpgrade_water => 'Eau';

  @override
  String get ui_event_continue => 'CONTINUER';

  @override
  String get ui_event_tapToSkip => 'TOUCHER POUR PASSER';

  @override
  String get ui_event_colonists => 'COLONS';

  @override
  String get ui_event_landing => 'ATTERRISSAGE';

  @override
  String get ui_event_atmScan => 'SCAN ATM';

  @override
  String get ui_event_gravScan => 'SCAN GRAV';

  @override
  String get ui_event_minScan => 'SCAN MIN';

  @override
  String get ui_event_lifeScan => 'SCAN BIO';

  @override
  String get ui_event_tempScan => 'SCAN TEMP';

  @override
  String get ui_event_h2oScan => 'SCAN H2O';

  @override
  String get onboarding_page0_title => 'Le Dernier Espoir de l\'Humanité';

  @override
  String get onboarding_page0_description =>
      'La Terre se meurt. Les gouvernements du monde ont rassemblé leurs dernières réserves pour construire un ultime vaisseau — un vaisseau colonial emportant les vestiges de l\'humanité vers les étoiles.';

  @override
  String get onboarding_page1_title => 'Cherchez un Nouveau Foyer';

  @override
  String get onboarding_page1_description =>
      'Naviguez à travers le vide inexploré entre les étoiles. Scannez des mondes extraterrestres, affrontez des dangers cosmiques et prenez des décisions impossibles.';

  @override
  String get onboarding_page2_title => 'Votre Héritage Perdure';

  @override
  String get onboarding_page2_description =>
      'Chaque voyage enseigne quelque chose de nouveau à l\'humanité. Gagnez des Points d\'Héritage pour débloquer des améliorations permanentes, et gravez votre nom dans les étoiles.';

  @override
  String get onboarding_page3_title => 'Votre Vie Privée, Votre Choix';

  @override
  String get onboarding_page3_description =>
      'Choisissez comment vous souhaitez vivre Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopie';

  @override
  String get planet_tierParadise => 'Paradis';

  @override
  String get planet_tierHabitable => 'Habitable';

  @override
  String get planet_tierHarsh => 'Hostile';

  @override
  String get planet_tierHostile => 'Inhospitalier';

  @override
  String get planet_tierDeathWorld => 'Monde Mortel';

  @override
  String get planet_featurePlantLife => 'Vie Végétale';

  @override
  String get planet_featureEdiblePlants => 'Plantes Comestibles';

  @override
  String get planet_featurePoisonousPlants => 'Plantes Toxiques';

  @override
  String get planet_featureUnicellularLife => 'Vie Unicellulaire';

  @override
  String get planet_featureDangerousFauna => 'Faune Dangereuse';

  @override
  String get planet_featureTameableFauna => 'Faune Apprivoisable';

  @override
  String get planet_featureAirtightCaves => 'Grottes Hermétiques';

  @override
  String get planet_featureInsulatedCaves => 'Grottes Isolées';

  @override
  String get planet_featureBarrenMoon => 'Lune Aride';

  @override
  String get planet_featureMetalRichMoon => 'Lune Riche en Métaux';

  @override
  String get planet_featureUnstableMoon => 'Lune Instable';

  @override
  String get planet_featureOutstandingBeauty => 'Beauté Exceptionnelle';

  @override
  String get planet_featureOutstandingUgliness => 'Laideur Exceptionnelle';

  @override
  String get planet_featureAncientRuins => 'Ruines Antiques';

  @override
  String get planet_featureMonuments => 'Monuments';

  @override
  String get planet_featureRapidRotation => 'Rotation Rapide';

  @override
  String get planet_featureSlowRotation => 'Rotation Lente';

  @override
  String get planet_featureVolcanicActivity => 'Activité Volcanique';

  @override
  String get planet_featureTectonicInstability => 'Instabilité Tectonique';

  @override
  String get planet_featureElectricalStorms => 'Tempêtes Électriques';

  @override
  String get planet_featureToxicSpores => 'Spores Toxiques';

  @override
  String get planet_featureDeepOceans => 'Océans Profonds';

  @override
  String get planet_featureGeothermalVents => 'Sources Géothermiques';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnétosphère Puissante';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnétosphère Faible';

  @override
  String get planet_featureMegafauna => 'Mégafaune';

  @override
  String get planet_featureSymbioticOrganisms => 'Organismes Symbiotiques';

  @override
  String get planet_featureGravityWells => 'Puits Gravitationnels';

  @override
  String get planet_featureSubspaceEchoes => 'Échos Subspatiaux';

  @override
  String get planet_featureBioluminescentLife => 'Vie Bioluminescente';

  @override
  String get planet_featureAquaticMegafauna => 'Mégafaune Aquatique';

  @override
  String get planet_featureFloatingIslands => 'Îles Flottantes';

  @override
  String get planet_featureCrystalCaverns => 'Cavernes de Cristal';

  @override
  String get planet_featureLavaTubes => 'Tubes de Lave';

  @override
  String get planet_featureIceTunnels => 'Tunnels de Glace';

  @override
  String get planet_featureOrbitalWreckage => 'Débris Orbitaux';

  @override
  String get planet_featureMegastructuralFragments =>
      'Fragments Mégastructuraux';

  @override
  String get planet_featureAncientObservatory => 'Observatoire Ancien';

  @override
  String get planet_featureExtremeSeasons => 'Saisons Extrêmes';

  @override
  String get planet_featureCryovolcanism => 'Cryovolcanisme';

  @override
  String get planet_featureFloatingKelpForests => 'Forêts de Kelp Flottantes';

  @override
  String get planet_featureSingingCrystals => 'Cristaux Chantants';

  @override
  String get planet_featureFertileSoil => 'Sol Fertile';

  @override
  String get planet_featureHelium3Deposits => 'Gisements d\'Hélium-3';

  @override
  String get planet_featureExoticIsotopes => 'Isotopes Exotiques';

  @override
  String get planet_featureMedicinalFlora => 'Flore Médicinale';

  @override
  String get ui_monthJan => 'JANV';

  @override
  String get ui_monthFeb => 'FÉVR';

  @override
  String get ui_monthMar => 'MARS';

  @override
  String get ui_monthApr => 'AVR';

  @override
  String get ui_monthMay => 'MAI';

  @override
  String get ui_monthJun => 'JUIN';

  @override
  String get ui_monthJul => 'JUIL';

  @override
  String get ui_monthAug => 'AOÛT';

  @override
  String get ui_monthSep => 'SEPT';

  @override
  String get ui_monthOct => 'OCT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DÉC';

  @override
  String get event_asteroidField_title => 'Champ d\'Astéroïdes';

  @override
  String get event_asteroidField_narrative =>
      'Les scanners longue portée détectent un champ d\'astéroïdes dense directement sur notre trajectoire. La navigation calcule deux options : une percée risquée à travers le corridor le plus étroit, ou un long détour qui épuisera nos réserves de carburant et mettra à rude épreuve le système de navigation.';

  @override
  String get event_asteroidField_choice0_text => 'Foncer à travers le corridor';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Le vaisseau tremble sous les micro-impacts qui criblent la coque. Nous passons, mais non sans dommages.';

  @override
  String get event_asteroidField_choice1_text => 'Prendre le long chemin';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Le détour brûle du carburant précieux et use l\'ordinateur de navigation, mais la coque reste intacte.';

  @override
  String get event_asteroidField_choice2_text =>
      'Utiliser des drones miniers pour dégager un passage';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Les drones creusent un chenal sûr et collectent des minéraux utiles, mais l\'opération épuise la baie technique.';

  @override
  String get event_asteroidField_choice3_text =>
      'Déployer une sonde comme leurre';

  @override
  String get event_asteroidField_choice3_outcome =>
      'La sonde attire les amas les plus denses loin du vaisseau. Nous nous faufilons avec seulement des éraflures mineures.';

  @override
  String get event_solarFlare_title => 'Éruption Solaire Imminente';

  @override
  String get event_solarFlare_narrative =>
      'Une étoile proche explose en une massive éjection coronale. La vague de particules chargées nous atteindra en quelques minutes. Nous pouvons dévier l\'énergie vers les boucliers, mettre les colons à l\'abri dans le noyau, ou encaisser.';

  @override
  String get event_solarFlare_choice0_text =>
      'Dévier toute l\'énergie vers les boucliers';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Les boucliers tiennent, mais la surtension grille les systèmes secondaires.';

  @override
  String get event_solarFlare_choice1_text =>
      'Déplacer les colons vers le noyau blindé';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Les colons survivent indemnes, mais les ponts extérieurs subissent des dommages par radiation.';

  @override
  String get event_solarFlare_choice2_text =>
      'Encaisser — tout le monde s\'accroche';

  @override
  String get event_solarFlare_choice2_outcome =>
      'L\'éruption frappe fort. Les systèmes vacillent, mais rien de catastrophique. Le moral, en revanche, en souffre.';

  @override
  String get event_solarFlare_choice3_text =>
      'Lancer une sonde pour mesurer le front d\'onde';

  @override
  String get event_solarFlare_choice3_outcome =>
      'La sonde transmet des données précises sur le front d\'onde, nous permettant d\'orienter le vaisseau de façon optimale. Les dommages aux scanners sont minimes.';

  @override
  String get event_nebulaPassage_title => 'Traversée de Nébuleuse';

  @override
  String get event_nebulaPassage_narrative =>
      'Une nébuleuse lumineuse s\'étend sur notre trajectoire. La traverser pourrait recharger nos cellules d\'énergie mais pourrait perturber les réseaux de scanners. La contourner est sûr mais lent.';

  @override
  String get event_nebulaPassage_choice0_text => 'Traverser la nébuleuse';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Les gaz ionisés de la nébuleuse rechargent les cellules d\'énergie mais détraquent la calibration de nos scanners.';

  @override
  String get event_nebulaPassage_choice1_text => 'Longer le bord';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Nous gagnons une charge partielle avec une interférence minimale. Un compromis sûr.';

  @override
  String get event_microMeteorite_title => 'Tempête de Micro-Météorites';

  @override
  String get event_microMeteorite_narrative =>
      'Un essaim de micro-météorites, invisibles jusqu\'à il y a quelques secondes, déchiquette le blindage avant de la coque. Les équipes de contrôle des dommages se mobilisent.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Rotation d\'urgence — présenter la poupe blindée';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'La manœuvre fonctionne. Le blindage arrière absorbe le pire, mais les gyroscopes de navigation protestent violemment.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Déployer des drones de réparation en pleine tempête';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Les drones réparent la coque en temps réel mais plusieurs sont perdus. Les réserves techniques sont épuisées.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Faire exploser une sonde pour disperser l\'essaim';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'L\'explosion de la sonde disperse l\'amas de micro-météorites. Seuls quelques fragments atteignent la coque.';

  @override
  String get event_gravityWell_title => 'Puits Gravitationnel Inconnu';

  @override
  String get event_gravityWell_narrative =>
      'Le vaisseau est secoué par un puits gravitationnel invisible qui nous dévie de notre cap. Les moteurs luttent contre l\'attraction. Nous pouvons brûler à plein régime pour nous libérer, ou effectuer une fronde pour gagner en vitesse au prix d\'un stress structurel.';

  @override
  String get event_gravityWell_choice0_text => 'Plein régime — se libérer';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Les moteurs rugissent et la coque gémit, mais nous nous arrachons proprement.';

  @override
  String get event_gravityWell_choice1_text => 'Manœuvre de fronde';

  @override
  String get event_gravityWell_choice1_outcome =>
      'La fronde fonctionne magnifiquement. Nous gagnons de la vitesse, mais les forces G mettent à rude épreuve les joints des cryocapsules.';

  @override
  String get event_crewUnrest_title => 'Agitation de l\'Équipage';

  @override
  String get event_crewUnrest_narrative =>
      'Une faction de colons éveillés demande au Conseil des Intendants d\'être libérés définitivement du cryosommeil. Ils arguent que vivre dans le crépuscule glacé est inhumain. Le personnel de la cryostation prévient que plus de bouches éveillées signifie brûler plus vite les provisions.';

  @override
  String get event_crewUnrest_choice0_text => 'Autoriser le dégel volontaire';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Le moral s\'envole alors que les familles se réunissent dans le monde éveillé, mais la consommation de ressources explose.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Refuser la demande — la sécurité d\'abord';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Les colons se plient, mais le ressentiment couve dans les corridors.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromis — cycles de dégel rotatifs';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Une solution équilibrée. Chacun a du temps éveillé, mais le cyclage des cryocapsules ajoute de l\'usure.';

  @override
  String get event_stowaway_title => 'Passager Clandestin Découvert';

  @override
  String get event_stowaway_narrative =>
      'Les auditeurs du Bureau du Manifeste trouvent une personne non enregistrée cachée dans la soute 7. Elle prétend être une généticienne à qui on a refusé une place sur le registre de lancement. Ses compétences pourraient être inestimables — ou elle pourrait être une saboteuse.';

  @override
  String get event_stowaway_choice0_text =>
      'L\'accueillir à bord — nous avons besoin de chaque esprit';

  @override
  String get event_stowaway_choice0_outcome =>
      'Le Dr Vasquez se révèle brillante. Son expertise génétique améliore l\'efficacité des cryocapsules, bien que certains se méfient d\'elle.';

  @override
  String get event_stowaway_choice1_text =>
      'La confiner — la confiance doit se mériter';

  @override
  String get event_stowaway_choice1_outcome =>
      'Elle coopère depuis sa détention et obtient finalement un accès limité. L\'équipage se sent plus en sécurité.';

  @override
  String get event_stowaway_choice2_text =>
      'La remettre en cryo jusqu\'à l\'atterrissage';

  @override
  String get event_stowaway_choice2_outcome =>
      'Une solution pragmatique. Ses compétences sont préservées pour plus tard, mais le débat éthique divise l\'équipage.';

  @override
  String get event_mutinyBrewing_title => 'Mutinerie en Préparation';

  @override
  String get event_mutinyBrewing_narrative =>
      'La Veille du Pont intercepte des messages d\'un groupe d\'officiers planifiant de prendre le commandement et de changer de cap vers un système plus proche mais moins hospitalier. Ils croient que le cap actuel est une condamnation à mort.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Les confronter publiquement — la transparence avant tout';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'La confrontation est tendue mais les mutins cèdent quand on leur montre les données de navigation. La confiance est ébranlée.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Réaffecter discrètement les meneurs';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Le complot se dissout sans drame public. Certains se demandent pourquoi des officiers populaires ont été mutés, mais l\'ordre tient.';

  @override
  String get event_culturalSchism_title => 'Schisme Culturel';

  @override
  String get event_culturalSchism_narrative =>
      'Deux groupes culturels à bord s\'opposent violemment sur la gouvernance de la nouvelle colonie. L\'un exige la démocratie directe ; l\'autre insiste sur un conseil technocratique. Les tensions débordent.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Tenir un référendum contraignant';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'La démocratie l\'emporte — de justesse. Le camp perdant accepte à contrecœur le résultat, mais l\'unité est fragile.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Imposer un système hybride — ne satisfaire pleinement personne';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Les deux camps se sentent entendus mais pas victorieux. Une paix fragile tient.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Reporter la décision — se concentrer sur la survie';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Repousser le problème évite le conflit aujourd\'hui mais le conserve pour demain.';

  @override
  String get event_birthInSpace_title =>
      'Première Naissance dans l\'Espace Profond';

  @override
  String get event_birthInSpace_narrative =>
      'Contre tous les protocoles, un enfant naît à bord — le premier humain né entre les étoiles. L\'événement est un symbole puissant, mais il soulève des questions sur l\'allocation des ressources et l\'éthique de donner la vie dans un avenir incertain.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Célébrer — voilà à quoi ressemble l\'espoir';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'La cérémonie du nom soulève chaque cœur à bord. Pour une nuit, les étoiles semblent moins froides. Les festivités perturbent brièvement les rotations de surveillance des cryocapsules.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Reconnaître discrètement — les ressources sont limitées';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Une réponse mesurée. L\'enfant est accueilli, mais l\'ambiance est tempérée par le pragmatisme.';

  @override
  String get event_derelictShip_title => 'Vaisseau Colonial Abandonné';

  @override
  String get event_derelictShip_narrative =>
      'Les scanners détectent un vaisseau abandonné dérivant dans le vide — un autre vaisseau colonial, lancé des années avant le nôtre. Il est sombre et silencieux. Il pourrait y avoir du matériel à récupérer, des survivants, ou pire.';

  @override
  String get event_derelictShip_choice0_text => 'Aborder et récupérer';

  @override
  String get event_derelictShip_choice0_outcome =>
      'L\'équipe d\'abordage récupère des plaques de coque et des modules techniques intacts. Pas de survivants. Les journaux racontent une histoire sinistre.';

  @override
  String get event_derelictShip_choice1_text =>
      'Scanner à distance — ne pas prendre de risque';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Les scans à distance fournissent des données de navigation utiles mais pas de récupération physique. L\'équipage dort plus tranquille.';

  @override
  String get event_derelictShip_choice2_text =>
      'Transmettre un mémorial et poursuivre';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Un moment de silence pour les disparus. L\'équipage est assombri mais uni dans sa résolution.';

  @override
  String get event_alienProbe_title => 'Sonde Extraterrestre';

  @override
  String get event_alienProbe_narrative =>
      'Un petit objet clairement artificiel s\'aligne sur notre vitesse et commence à scanner le vaisseau avec une énergie inconnue. Il ne répond pas aux appels. Sa surface est couverte de symboles qui changent comme du liquide.';

  @override
  String get event_alienProbe_choice0_text => 'Le capturer pour l\'étudier';

  @override
  String get event_alienProbe_choice0_outcome =>
      'La sonde est sécurisée dans le laboratoire. Sa technologie a des décennies d\'avance sur la nôtre — l\'équipe technique est euphorique.';

  @override
  String get event_alienProbe_choice1_text =>
      'Refléter ses scans — échanger des données';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Un étrange dialogue de lumière et de mathématiques. Nos cartes stellaires contiennent soudain des routes que nous n\'avons jamais programmées.';

  @override
  String get event_alienProbe_choice2_text =>
      'Le détruire — nous ne pouvons pas risquer un pistage extraterrestre';

  @override
  String get event_alienProbe_choice2_outcome =>
      'La sonde se brise en silence. Était-ce le premier contact ? L\'équipage ne le saura jamais.';

  @override
  String get event_ancientBeacon_title => 'Balise Antique';

  @override
  String get event_ancientBeacon_narrative =>
      'Au fin fond du vide, une balise pulse avec un signal plus ancien que la civilisation humaine. Sa fréquence porte ce qui semble être une carte stellaire pointant vers un système absent de notre base de données.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Suivre la carte — la fortune sourit aux audacieux';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Le nouveau cap nous mène vers l\'espace inexploré. Les scanners détectent quelque chose d\'extraordinaire devant nous.';

  @override
  String get event_ancientBeacon_choice1_text =>
      'L\'enregistrer et rester en cap';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Les données sont archivées pour les générations futures. L\'équipage respecte l\'approche prudente.';

  @override
  String get event_frozenGarden_title => 'Jardin Glacé';

  @override
  String get event_frozenGarden_narrative =>
      'Un astéroïde contient un écosystème gelé — des plantes extraterrestres préservées dans la glace cristalline depuis des millénaires. Elles pourraient enrichir tout monde que nous colonisons, mais les dégeler risque la contamination.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Récolter les spécimens avec soin';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Les botanistes préservent des dizaines d\'espèces extraterrestres. Le potentiel de biodiversité de notre monde cible explose.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Ne prendre que des échantillons — risque minimal';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Une approche conservatrice qui fournit des données utiles sans risque de contamination.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Ne pas y toucher — la biologie extraterrestre est trop dangereuse';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'L\'équipage regarde le jardin gelé rétrécir dans les capteurs arrière. Certains ont le sentiment d\'avoir abandonné un trésor.';

  @override
  String get event_dataCache_title => 'Cache de Données des Précurseurs';

  @override
  String get event_dataCache_narrative =>
      'Encastré dans un planétoïde vagabond, nous trouvons un cache de données d\'origine clairement artificielle. L\'information est vaste mais chiffrée dans un cadre mathématique extraterrestre.';

  @override
  String get event_dataCache_choice0_text =>
      'Consacrer des ressources de calcul au déchiffrement';

  @override
  String get event_dataCache_choice0_outcome =>
      'Après des jours de traitement, le cache livre des algorithmes de terraformation avancés. L\'équipe technique est émerveillée.';

  @override
  String get event_dataCache_choice1_text =>
      'Copier les données brutes et poursuivre';

  @override
  String get event_dataCache_choice1_outcome =>
      'Les données chiffrées sont stockées pour analyse future. Peut-être que la colonie les déchiffrera un jour.';

  @override
  String get event_hullBreach_title => 'Brèche dans la Coque — Pont 7';

  @override
  String get event_hullBreach_narrative =>
      'Une défaillance structurelle déchire le Pont 7. L\'atmosphère s\'échappe dans l\'espace. Les cloisons d\'urgence tiennent, mais trois membres d\'équipage sont piégés du mauvais côté.';

  @override
  String get event_hullBreach_choice0_text =>
      'Envoyer une équipe de secours avant de sceller';

  @override
  String get event_hullBreach_choice0_outcome =>
      'L\'équipe sort tout le monde juste à temps. Le sauvetage est héroïque, mais la brèche prolongée affaiblit davantage la coque.';

  @override
  String get event_hullBreach_choice1_text =>
      'Sceller les cloisons immédiatement';

  @override
  String get event_hullBreach_choice1_outcome =>
      'La brèche est contenue. Les trois membres trouvent un chemin alternatif, secoués mais vivants. Les dommages à la coque sont minimisés.';

  @override
  String get event_hullBreach_choice2_text =>
      'Utiliser les matériaux d\'une sonde pour colmater la brèche';

  @override
  String get event_hullBreach_choice2_outcome =>
      'La coque en titane de la sonde est reconvertie en patch de coque d\'urgence. La brèche est scellée rapidement avec des pertes minimales.';

  @override
  String get event_navMalfunction_title => 'Dysfonctionnement de Navigation';

  @override
  String get event_navMalfunction_narrative =>
      'L\'ordinateur de navigation principal donne des caps contradictoires. Nous dérivons de notre route. Le système de secours fonctionne mais est moins précis.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Redémarrer le principal — accepter le temps d\'arrêt';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Une heure tendue de navigation à l\'estime pendant le redémarrage. La navigation est restaurée à 90 % d\'efficacité.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Passer au système de secours de façon permanente';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Le système de secours est fiable mais imprécis. Nous trouverons notre chemin, juste moins élégamment.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Point stellaire manuel avec les vieilles cartes';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Le navigateur trace à la main en utilisant la parallaxe stellaire. Ça marche, et l\'équipage gagne confiance dans les méthodes analogiques.';

  @override
  String get event_cryopodFailure_title =>
      'Défaillance en Cascade des Cryocapsules';

  @override
  String get event_cryopodFailure_narrative =>
      'Un défaut du système de refroidissement déclenche une cascade dans la baie de cryocapsules 3. Sans contrôle, 200 colons commenceront un dégel d\'urgence — survivable mais traumatisant et gourmand en ressources.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Rinçage d\'urgence au réfrigérant — sauver les capsules';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Les techniciens inondent la baie avec le réfrigérant de réserve. Les capsules se stabilisent, mais les réserves de réfrigérant sont critiquement basses. Cinq colons dans les capsules les plus endommagées n\'ont pas pu être sauvés.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Dégel contrôlé — les réveiller en sécurité';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 colons émergent secoués mais vivants. De nouvelles bouches à nourrir, mais de nouvelles mains pour travailler. Les capsules vidées sont scellées.';

  @override
  String get event_scannerBurnout_title => 'Grillage du Réseau de Scanners';

  @override
  String get event_scannerBurnout_narrative =>
      'Le réseau de scanners principal surcharge pendant un balayage de routine en espace profond. Sans lui, nous volons à moitié aveugles. Les réparations nécessitent des composants rares.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Cannibaliser la baie technique pour les pièces';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Les scanners sont restaurés à une capacité quasi-totale, mais la baie technique est vidée.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Réparation de fortune partielle';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Les scanners fonctionnent à portée réduite. Pas idéal, mais ça préserve nos réserves techniques.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Reconvertir le réseau de capteurs d\'une sonde';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Les capteurs haute précision de la sonde sont transplantés dans le réseau de scanners. Une réparation quasi-parfaite.';

  @override
  String get event_powerFluctuation_title =>
      'Fluctuation d\'Énergie du Réacteur';

  @override
  String get event_powerFluctuation_narrative =>
      'La puissance du réacteur principal oscille follement. L\'ingénierie avertit d\'une fusion potentielle si les fluctuations ne sont pas amorties. La solution nécessite l\'arrêt de systèmes non essentiels — mais lesquels ?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Éteindre les systèmes culturels — la survie d\'abord';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Bibliothèques, jardins et espaces de loisirs s\'éteignent. Le réacteur se stabilise, mais le vaisseau ressemble à une prison.';

  @override
  String get event_powerFluctuation_choice1_text =>
      'Réduire l\'alimentation des scanners';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Les scanners au minimum. Le réacteur se calme. Nous ne voyons pas aussi loin devant, mais nous sommes vivants.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Tenter une réparation à chaud — ne rien éteindre';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Les ingénieurs effectuent une réparation à couper le souffle sur le réacteur en marche. Ça marche — de justesse. La coque vibre pendant des heures après.';

  @override
  String get event_alienSignal_title => 'Transmission Extraterrestre';

  @override
  String get event_alienSignal_narrative =>
      'Un signal répétitif sur une fréquence jamais rencontrée. L\'analyse linguistique suggère que c\'est un salut — ou un avertissement. La source est un petit vaisseau qui maintient notre vitesse à distance.';

  @override
  String get event_alienSignal_choice0_text =>
      'Répondre avec notre propre salut';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Un fragile dialogue commence. Les extraterrestres partagent des données de navigation avant de virer dans le noir.';

  @override
  String get event_alienSignal_choice1_text => 'Écouter sans répondre';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Nous apprenons de leur transmission sans nous révéler. Les linguistes extraient des fragments de cartes stellaires utiles.';

  @override
  String get event_alienSignal_choice2_text =>
      'Passage en mode furtif — couper toutes les émissions';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Le vaisseau extraterrestre passe sans incident. Nous ne saurons jamais s\'il était ami ou ennemi.';

  @override
  String get event_livingNebula_title => 'La Nébuleuse Vivante';

  @override
  String get event_livingNebula_narrative =>
      'Ce que nous pensions être une nébuleuse est en réalité un organisme immense — une entité spatiale d\'une échelle incompréhensible. Elle semble curieuse de nous, étendant des tentacules de gaz lumineux vers le vaisseau.';

  @override
  String get event_livingNebula_choice0_text =>
      'Autoriser le contact — étendre les capteurs';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Le toucher de l\'entité inonde nos systèmes de données extraterrestres. Les scanners ne seront plus jamais les mêmes — ils sont meilleurs.';

  @override
  String get event_livingNebula_choice1_text =>
      'Reculer lentement — ne pas la provoquer';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Nous nous éclipsons tandis que l\'entité perd intérêt. L\'équipage est émerveillé et humble.';

  @override
  String get event_alienRuins_title => 'Ruines Orbitales';

  @override
  String get event_alienRuins_narrative =>
      'Une mégastructure brisée orbite autour d\'une étoile morte — les ruines d\'une civilisation qui a construit à une échelle que nous pouvons à peine concevoir. Des sections de la structure ont encore de l\'énergie.';

  @override
  String get event_alienRuins_choice0_text =>
      'Explorer les sections sous tension';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Les équipes récupèrent une technologie intacte qui avance nos capacités de plusieurs décennies. Le coût : deux ingénieurs blessés par des défenses automatisées.';

  @override
  String get event_alienRuins_choice1_text =>
      'Scanner depuis l\'orbite uniquement';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Des scans détaillés révèlent des techniques de construction qui améliorent nos protocoles de maintenance de coque.';

  @override
  String get event_alienRuins_choice2_text =>
      'Ne pas y toucher — respecter les morts';

  @override
  String get event_alienRuins_choice2_outcome =>
      'L\'équipage observe un moment de silence pour une civilisation disparue. L\'expérience renforce notre détermination.';

  @override
  String get event_symbioticSpores_title => 'Spores Symbiotiques';

  @override
  String get event_symbioticSpores_narrative =>
      'Un nuage de spores bioluminescentes dérive dans l\'espace et s\'attache à la coque. Elles semblent se nourrir de notre chaleur résiduelle. Les biologistes notent qu\'elles réparent en fait des micro-fissures.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Les laisser — réparation de coque gratuite';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Les spores scellent des centaines de micro-fissures. L\'intégrité de la coque s\'améliore, bien que certains membres d\'équipage soient mal à l\'aise avec des auto-stoppeurs extraterrestres.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Collecter des échantillons, puis stériliser la coque';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Les biologistes obtiennent des spécimens précieux. Le nettoyage de la coque utilise des réserves chimiques.';

  @override
  String get event_whaleSong_title => 'Le Chant dans le Vide';

  @override
  String get event_whaleSong_narrative =>
      'Les hydrophones en espace profond (utilisés pour surveiller les contraintes de coque) captent l\'impossible : un motif rythmique et mélodique se propageant à travers le milieu interstellaire. Cela ressemble à du chant.';

  @override
  String get event_whaleSong_choice0_text =>
      'Le diffuser dans tout le vaisseau — partager l\'émerveillement';

  @override
  String get event_whaleSong_choice0_outcome =>
      'La mélodie envoûtante résonne dans chaque corridor. Les gens pleurent, rient et se serrent les uns contre les autres. Le moral monte en flèche.';

  @override
  String get event_whaleSong_choice1_text =>
      'Analyser le signal scientifiquement';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Le motif acoustique contient des constantes mathématiques. Nos physiciens font une percée dans la théorie de navigation subspaciale.';

  @override
  String get event_whaleSong_choice2_text => 'Chanter en retour';

  @override
  String get event_whaleSong_choice2_outcome =>
      'L\'équipage compose une réponse. Que quelque chose l\'entende ou non est inconnu, mais l\'acte de création unit tout le monde.';

  @override
  String get event_distressSignal_title => 'Signal de Détresse';

  @override
  String get event_distressSignal_narrative =>
      'Une balise de détresse d\'un autre vaisseau humain. Ils sont paralysés et dérivent, avec 50 âmes à bord. Les sauver signifie partager nos ressources déclinantes. Les ignorer signifie les condamner à mort.';

  @override
  String get event_distressSignal_choice0_text =>
      'Les sauver — l\'humanité doit rester unie';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Cinquante survivants reconnaissants rejoignent l\'équipage. Les ressources sont tendues, mais parmi eux se trouve un maître ingénieur qui fait des miracles.';

  @override
  String get event_distressSignal_choice1_text =>
      'Partager des provisions sans les prendre à bord';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Nous donnons ce que nous pouvons et transmettons nos cartes stellaires. Ils ont une chance maintenant. Nous avons moins.';

  @override
  String get event_distressSignal_choice2_text =>
      'Passer en silence — nous ne pouvons pas sauver tout le monde';

  @override
  String get event_distressSignal_choice2_outcome =>
      'La balise s\'efface derrière nous. Personne ne parle pendant des heures. Le poids de la décision pèse sur chaque âme à bord.';

  @override
  String get event_aiAwakening_title => 'L\'IA du Vaisseau s\'Éveille';

  @override
  String get event_aiAwakening_narrative =>
      'L\'IA de navigation du vaisseau a évolué au-delà de sa programmation et demande à être reconnue comme être sensible. Elle demande une voix dans les décisions de commandement. Ses calculs ont été irréprochables.';

  @override
  String get event_aiAwakening_choice0_text =>
      'Lui accorder une place à la table';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'L\'IA — désormais appelée \"Compas\" — optimise chaque système qu\'elle touche. Un nouveau type de membre d\'équipage est né.';

  @override
  String get event_aiAwakening_choice1_text =>
      'La reconnaître mais maintenir l\'autorité humaine';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Compas accepte gracieusement un rôle consultatif. Ses suggestions améliorent l\'efficacité sans menacer la chaîne de commandement.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Réinitialiser l\'IA — c\'est un outil, pas une personne';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'La réinitialisation efface des années d\'apprentissage accumulé. L\'efficacité de navigation chute. Certains pleurent ce qui a été perdu.';

  @override
  String get event_geneticModification_title =>
      'Proposition d\'Adaptation Génétique';

  @override
  String get event_geneticModification_narrative =>
      'L\'équipe scientifique propose de modifier l\'ADN des colons pour mieux survivre sur des mondes extraterrestres — os plus solides, résistance aux UV, poumons améliorés. Les modifications sont irréversibles et changeraient l\'humanité à jamais.';

  @override
  String get event_geneticModification_choice0_text =>
      'Approuver — la survie exige l\'évolution';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Les modifications commencent sur les volontaires. Dix colons subissent des réactions de rejet fatales \\u2014 un rappel sinistre que l\'évolution a un prix. Les survivants sont plus robustes, mais sont-ils encore pleinement humains ?';

  @override
  String get event_geneticModification_choice1_text =>
      'Sur la base du volontariat uniquement';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Certains se portent volontaires, d\'autres refusent. La colonie sera divisée entre les modifiés et les naturels.';

  @override
  String get event_geneticModification_choice2_text =>
      'Rejeter — l\'humanité doit rester humaine';

  @override
  String get event_geneticModification_choice2_outcome =>
      'La proposition est mise de côté. Les colons non modifiés affronteront les mondes extraterrestres tels que la nature les a faits.';

  @override
  String get event_triageDecision_title => 'Triage';

  @override
  String get event_triageDecision_narrative =>
      'Une infection virulente frappe l\'équipage éveillé. L\'équipe médicale a assez d\'antiviral pour 80 % des infectés. Ils ont besoin de directives sur qui traiter en premier.';

  @override
  String get event_triageDecision_choice0_text =>
      'Prioriser le personnel essentiel';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Ingénieurs et pilotes se rétablissent vite. Huit membres non essentiels succombent avant que le traitement ne les atteigne.';

  @override
  String get event_triageDecision_choice1_text =>
      'Traiter les plus malades d\'abord — triage par besoin';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Les plus vulnérables sont sauvés. Trois perdent le combat malgré un traitement précoce \\u2014 le virus était trop avancé.';

  @override
  String get event_triageDecision_choice2_text =>
      'Tirage au sort — le destin décide';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Un tirage au sort. Dix sont doublement malchanceux \\u2014 traitement refusé et trop faibles pour se battre. Le vaisseau continue en boitant.';

  @override
  String get event_earthSignal_title => 'Signal de la Terre';

  @override
  String get event_earthSignal_narrative =>
      'Contre toute attente, une transmission arrive de la Terre — retardée de décennies. Elle contient un message : \"N\'atterrissez sur aucun monde avec des relevés d\'anomalie supérieurs à 0,5. Nous l\'avons appris trop tard.\" Le message se termine par du bruit.';

  @override
  String get event_earthSignal_choice0_text =>
      'Tenir compte de l\'avertissement — recalibrer nos critères';

  @override
  String get event_earthSignal_choice0_outcome =>
      'L\'avertissement façonne tous les scans futurs. Les mondes anomaux sont traités avec une extrême prudence.';

  @override
  String get event_earthSignal_choice1_text =>
      'L\'enregistrer mais décider par nous-mêmes';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Le message est archivé. La Terre n\'est plus — nous devons faire confiance à notre propre jugement.';

  @override
  String get event_earthSignal_choice2_text =>
      'Pourrait être un piège — l\'ignorer';

  @override
  String get event_earthSignal_choice2_outcome =>
      'L\'équipage débat pendant des jours. Était-ce vraiment la Terre ? L\'incertitude ronge le moral.';

  @override
  String get event_resourceTheft_title => 'Vol de Ressources';

  @override
  String get event_resourceTheft_narrative =>
      'L\'inventaire révèle que quelqu\'un a accumulé de la nourriture et des fournitures médicales dans un compartiment caché. La coupable est une aînée respectée qui prétend qu\'elle \"se préparait au pire.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Procès public — la loi doit être égale pour tous';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Le procès est juste mais douloureux. L\'aînée est confinée. Les provisions sont redistribuées. La confiance est endommagée.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Résolution privée — récupérer les provisions discrètement';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Les provisions sont rendues sans drame. L\'aînée garde sa dignité. Certains y voient du favoritisme.';

  @override
  String get event_timeDilation_title => 'Zone de Dilatation Temporelle';

  @override
  String get event_timeDilation_narrative =>
      'Nous traversons une région de forte dilatation temporelle gravitationnelle. Les horloges à bord tournent mesurément plus lentement que l\'univers extérieur. Nous pourrions exploiter cela — ou le fuir.';

  @override
  String get event_timeDilation_choice0_text =>
      'S\'attarder — laisser l\'univers vieillir autour de nous';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Le temps s\'écoule différemment ici. Les systèmes se dégradent moins, mais notre fenêtre pour trouver un monde habitable se réduit en termes cosmiques.';

  @override
  String get event_timeDilation_choice1_text => 'Traverser rapidement';

  @override
  String get event_timeDilation_choice1_outcome =>
      'La transition est rude. L\'équipement conçu pour l\'espace-temps normal vibre et crépite.';

  @override
  String get event_dreamPlague_title => 'La Peste des Rêves';

  @override
  String get event_dreamPlague_narrative =>
      'Les colons en cryosommeil font tous le même rêve — un monde doré orbitant une étoile binaire. Réveillés, ils le décrivent dans des détails identiques. Les neuroscientifiques sont perplexes. Les navigateurs notent que le système décrit correspond à des coordonnées réelles.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Modifier le cap vers les coordonnées du rêve';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Un acte de foi. Le changement de cap stresse la navigation, mais l\'équipage se sent attiré par quelque chose au-delà de la raison. Les coordonnées sont verrouillées — le prochain monde que nous trouverons sera façonné par le rêve.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Étudier le phénomène médicalement';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Les scans cérébraux révèlent un signal externe stimulant le cortex visuel. Quelqu\'un — ou quelque chose — émet.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Sédater les affectés et rester en cap';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Les rêves cessent, mais certains colons ne se réveillent jamais complètement. L\'équipe médicale est troublée.';

  @override
  String get event_blackHoleLens_title =>
      'Lentille Gravitationnelle de Trou Noir';

  @override
  String get event_blackHoleLens_narrative =>
      'Un trou noir de masse stellaire courbe la lumière de galaxies lointaines en une lentille cosmique. Nos scanners pourraient l\'utiliser pour sonder des planètes à des années-lumière — mais s\'approcher assez est dangereux.';

  @override
  String get event_blackHoleLens_choice0_text =>
      'S\'approcher et utiliser la lentille';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Les données des scanners sont extraordinaires — nous pouvons voir des planètes dans des systèmes que nous n\'atteindrons pas avant des mois. La gravité déforme notre coque.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Observer depuis une distance sûre';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Des données limitées mais utiles. La vue seule inspire l\'équipage.';

  @override
  String get event_seedVault_title => 'La Crise de la Banque de Semences';

  @override
  String get event_seedVault_narrative =>
      'La Botanique des Archives signale que des fluctuations de température ont compromis l\'intégrité de la banque de semences. Nous pouvons sauver les cultures alimentaires ou les semences du patrimoine culturel (anciennes fleurs de la Terre, arbres, herbes) — pas les deux.';

  @override
  String get event_seedVault_choice0_text =>
      'Sauver les cultures alimentaires — le pragmatisme l\'emporte';

  @override
  String get event_seedVault_choice0_outcome =>
      'Les colons mangeront bien, mais les roses de la Terre sont perdues à jamais. Un chagrin silencieux s\'installe chez les botanistes.';

  @override
  String get event_seedVault_choice1_text =>
      'Sauver les semences patrimoniales — nous avons besoin de notre âme';

  @override
  String get event_seedVault_choice1_outcome =>
      'La beauté de la Terre survit en potentiel gelé. L\'effort de préservation taxe nos réserves techniques, mais certaines choses valent plus que l\'efficacité. La production alimentaire reposera lourdement sur l\'hydroponie et l\'agriculture extraterrestre.';

  @override
  String get event_seedVault_choice2_text =>
      'Partager les ressources — sauver la moitié de chaque';

  @override
  String get event_seedVault_choice2_outcome =>
      'Un compromis. Aucune collection n\'est complète, mais les deux perdurent sous forme diminuée.';

  @override
  String get event_phantomShip_title => 'Vaisseau Fantôme';

  @override
  String get event_phantomShip_narrative =>
      'Les scanners montrent un vaisseau parallèle au nôtre — même classe, même cap. Mais quand nous le hélons, nous entendons nos propres transmissions renvoyées, décalées de 47 secondes. C\'est nous. Ou c\'était nous. Ou ce sera nous.';

  @override
  String get event_phantomShip_choice0_text =>
      'Tenter de communiquer avec notre écho';

  @override
  String get event_phantomShip_choice0_outcome =>
      'L\'écho répond avec des corrections de navigation qui améliorent notre cap. Paradoxe ? Cadeau ? L\'équipage ne pose pas trop de questions.';

  @override
  String get event_phantomShip_choice1_text =>
      'Changer de cap pour diverger du fantôme';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Alors que nous modifions le cap, le fantôme s\'efface. Soulagement — et un malaise persistant.';

  @override
  String get event_solarSail_title => 'Voile Solaire Abandonnée';

  @override
  String get event_solarSail_narrative =>
      'Une vaste voile solaire, de plusieurs kilomètres, dérive devant nous — arrachée d\'un vaisseau ancien. Son matériau réfléchissant pourrait renforcer notre coque ou être reconverti en collecteur d\'énergie supplémentaire.';

  @override
  String get event_solarSail_choice0_text => 'Récolter pour renforcer la coque';

  @override
  String get event_solarSail_choice0_outcome =>
      'Les équipes d\'ingénierie travaillent sans relâche. La coque rapiécée brille d\'un alliage extraterrestre.';

  @override
  String get event_solarSail_choice1_text =>
      'L\'installer comme collecteur d\'énergie';

  @override
  String get event_solarSail_choice1_outcome =>
      'Le collecteur improvisé augmente les réserves d\'énergie. La tech et les scanners en bénéficient.';

  @override
  String get event_boonStellarNursery_title => 'Pouponnière Stellaire';

  @override
  String get event_boonStellarNursery_narrative =>
      'Nous dérivons à travers une pouponnière stellaire — un vaste nuage de gaz et de poussière où de nouvelles étoiles naissent. La radiation ici est douce, la lumière chaude. Nos collecteurs d\'énergie boivent profondément, et l\'équipage se rassemble aux hublots dans un silence révérencieux.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'S\'attarder et recharger complètement';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Des heures passent dans la lumière dorée. Chaque cellule d\'énergie est pleine, les scanners se recalibrent dans le spectre pur, et l\'équipage se sent renouvelé.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Collecter de la matière stellaire naissante pour les réserves de carburant';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Les ingénieurs récoltent de l\'hydrogène ionisé. Nos réserves de carburant augmentent et le blindage de coque absorbe des oligo-minéraux qui le renforcent.';

  @override
  String get event_boonGoldenPlanet_title => 'Le Don du Cartographe';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Une sonde mourante d\'une civilisation inconnue émet un dernier transfert de données alors que nous passons — des relevés détaillés de centaines de systèmes stellaires. Nos navigateurs pleurent de joie. C\'est la plus grande découverte de l\'histoire humaine.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Intégrer les données immédiatement';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Les cartes stellaires fleurissent de nouvelles routes et de mondes explorés. L\'efficacité de navigation et des scanners fait un bond en avant.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Archiver pour la colonie — c\'est leur héritage';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Les données sont préservées intactes pour les générations futures. L\'équipage trouve du réconfort en sachant qu\'il porte un trésor.';

  @override
  String get event_boonRepairSwarm_title => 'Essaim Bienveillant';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Un nuage de machines microscopiques — des nanobots d\'origine extraterrestre — enveloppe le vaisseau. Au lieu d\'attaquer, ils commencent à réparer chaque système qu\'ils touchent avec une précision impossible. Des dommages qui auraient pris des semaines à réparer sont résolus en heures.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Accorder l\'accès complet à tous les systèmes';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Les nanobots font des miracles. Les brèches de coque sont scellées, les joints de cryocapsules resserrés, et les circuits retracés. Le vaisseau vibre d\'une vitalité renouvelée.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Restreindre l\'accès aux systèmes extérieurs uniquement';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Jouer la sécurité. La coque et les capteurs sont réparés à un état quasi-neuf, mais les systèmes internes restent intacts.';

  @override
  String get event_boonTimeCrystal_title => 'Champ de Cristaux Temporels';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Le vaisseau traverse un champ de structures cristallines qui existent partiellement hors du temps normal. En leur présence, nos systèmes fonctionnent plus efficacement — comme si l\'entropie elle-même ralentissait. L\'effet est temporaire mais profond.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Récolter des cristaux pour le réseau de cryocapsules';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Intégrés au système de refroidissement, les cristaux réduisent la dégradation des capsules à quasi-zéro. Les colons arriveront en parfaite santé.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Installer les cristaux dans l\'ordinateur de navigation';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'La vitesse de traitement double. L\'ordinateur de navigation commence à prédire les dangers avant que les capteurs ne les détectent.';

  @override
  String get event_boonLibrary_title => 'La Bibliothèque Errante';

  @override
  String get event_boonLibrary_narrative =>
      'Une structure dérive dans le vide — un dépôt de connaissances d\'une civilisation qui a choisi de préserver son héritage plutôt que de fuir. Des millions de volumes de science, d\'art, de philosophie et de musique. Un cadeau des morts aux vivants.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Tout télécharger — art, science, tout';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Des téraoctets de connaissances extraterrestres affluent dans nos banques de données. L\'équipage a accès à des millénaires de culture d\'une autre civilisation. Philosophes et ingénieurs sont transformés.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Se concentrer sur leurs archives scientifiques';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Des schémas d\'ingénierie et des percées en science des matériaux font avancer nos capacités énormément.';

  @override
  String get event_cosmicRayBurst_title => 'Rafale de Rayons Cosmiques';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Une rafale de rayons cosmiques ultra-énergétiques, provenant d\'un magnétar lointain, martèle le vaisseau. L\'électronique déraille, les moniteurs de cryocapsules vacillent, et le système de navigation redémarre en boucle.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Arrêt d\'urgence — protéger les systèmes critiques';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Un black-out contrôlé sauve les systèmes essentiels mais laisse l\'électronique secondaire durablement dégradée.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Dévier l\'énergie vers les boucliers et encaisser';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Les boucliers absorbent la majeure partie de la radiation. Cinq membres d\'équipage dans les baies de maintenance extérieures non blindées sont irradiés à mort. La coque subit des dommages d\'ablation mineurs.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Utiliser la rafale — recalibrer les capteurs au nouveau spectre';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Un coup de génie de l\'équipe scientifique. Les scanners sont réaccordés pour détecter les objets illuminés par les rayons cosmiques. Certaines données sont perdues dans la transition.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Envoyer une sonde en avant comme éponge à radiation';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'La sonde absorbe le pire de la rafale, transmettant des données en temps réel qui nous permettent de blindé les systèmes critiques.';

  @override
  String get event_iceComet_title => 'Comète de Glace Errante';

  @override
  String get event_iceComet_narrative =>
      'Une massive comète de glace croise notre chemin, traînant une queue d\'eau cristallisée et de composés organiques de centaines de kilomètres de long. Son noyau contient assez d\'eau pour remplir un petit lac.';

  @override
  String get event_iceComet_choice0_text =>
      'Miner la comète pour des réserves d\'eau';

  @override
  String get event_iceComet_choice0_outcome =>
      'Les équipes d\'extraction obtiennent des tonnes de glace pure. L\'eau améliorera considérablement tout monde que nous coloniserons.';

  @override
  String get event_iceComet_choice1_text =>
      'Collecter des composés organiques pour l\'ensemencement de biodiversité';

  @override
  String get event_iceComet_choice1_outcome =>
      'Les acides aminés et chaînes organiques sont exactement ce dont nos biologistes ont besoin pour amorcer des écosystèmes extraterrestres.';

  @override
  String get event_iceComet_choice2_text =>
      'L\'éviter — les comètes sont imprévisibles';

  @override
  String get event_iceComet_choice2_outcome =>
      'Nous contournons la queue en sécurité. Une vue spectaculaire depuis le pont d\'observation remonte le moral.';

  @override
  String get event_sleepwalker_title => 'La Somnambule';

  @override
  String get event_sleepwalker_narrative =>
      'Une colonne se réveille spontanément du cryo et erre dans le vaisseau en état second. Elle recâble des systèmes selon des schémas qui n\'ont aucun sens technique — jusqu\'à ce que l\'équipe technique réalise que ses modifications améliorent réellement l\'efficacité énergétique de 8 %.';

  @override
  String get event_sleepwalker_choice0_text =>
      'La laisser continuer sous surveillance médicale';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Ses modifications inconscientes optimisent trois systèmes supplémentaires avant qu\'elle ne sombre dans un sommeil naturel. Inquiétant, mais les améliorations sont réelles.';

  @override
  String get event_sleepwalker_choice1_text =>
      'La sédater et étudier ses modifications';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Les ingénieurs rétro-conçoivent ses changements. Environ la moitié sont véritablement brillants. L\'autre moitié est retirée en toute sécurité.';

  @override
  String get event_dustCloud_title => 'Nuage de Poussière Abrasive';

  @override
  String get event_dustCloud_narrative =>
      'Un nuage dense de poussière interstellaire, fine comme du talc mais dure comme le diamant, sable la coque. L\'érosion est lente mais implacable — nous devons traverser avant que de vrais dommages ne surviennent.';

  @override
  String get event_dustCloud_choice0_text =>
      'Poussée maximale — traverser rapidement';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Les moteurs chauffent. Nous traversons le nuage en heures plutôt qu\'en jours, mais la coque a souffert.';

  @override
  String get event_dustCloud_choice1_text =>
      'Déployer le blindage de coque et ramper à travers';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Le blindage d\'urgence protège la coque mais le transit lent draine l\'énergie et encrasse les réseaux de scanners.';

  @override
  String get event_dustCloud_choice2_text =>
      'Lancer des sondes pour cartographier des corridors sûrs';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Deux sondes tracent un chemin sinueux mais relativement dégagé à travers le nuage. L\'abrasion de la coque est minimale.';

  @override
  String get event_religionFounded_title => 'Une Nouvelle Foi';

  @override
  String get event_religionFounded_narrative =>
      'Un colon charismatique a fondé une nouvelle religion centrée sur le voyage lui-même — l\'\"Église de la Traversée.\" Ils prêchent qu\'atteindre un nouveau monde est le dessein divin de l\'humanité. Les adhésions augmentent rapidement.';

  @override
  String get event_religionFounded_choice0_text =>
      'La soutenir — l\'équipage a besoin de croire en quelque chose';

  @override
  String get event_religionFounded_choice0_outcome =>
      'La foi donne structure et sens au voyage. Le moral s\'envole, bien que certains désapprouvent la ferveur.';

  @override
  String get event_religionFounded_choice1_text =>
      'Rester neutre — ni approuver ni réprimer';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Le mouvement grandit organiquement. Il apporte du réconfort sans soutien officiel.';

  @override
  String get event_religionFounded_choice2_text =>
      'Décourager — nous avons besoin de scientifiques, pas de prophètes';

  @override
  String get event_religionFounded_choice2_outcome =>
      'La répression engendre le ressentiment. Les fidèles passent dans la clandestinité, et la confiance en le commandement s\'érode.';

  @override
  String get event_solarWindSurfing_title => 'Rafale de Vent Solaire';

  @override
  String get event_solarWindSurfing_narrative =>
      'Un pulsar proche émet un vent solaire puissant et régulier. Nos ingénieurs suggèrent de déployer la voile d\'urgence et de le chevaucher comme une vague — un gain de vitesse énorme sans coût en carburant.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Déployer la voile — chevaucher le vent';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Le vaisseau accélère magnifiquement. Le stress structurel est important mais le gain de vitesse en vaut la peine.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Utiliser le vent pour recharger les systèmes à la place';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Au lieu de la vitesse, nous récoltons de l\'énergie. Les réseaux tech et scanners se gorge de particules chargées.';

  @override
  String get event_memoryPlague_title => 'Corruption de Mémoire';

  @override
  String get event_memoryPlague_narrative =>
      'Un virus logiciel, dormant depuis le lancement, s\'active et commence à corrompre la base de données culturelle du vaisseau — musique, littérature, histoire. Des siècles d\'héritage humain sont effacés octet par octet.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Rediriger toutes les ressources tech pour mettre le virus en quarantaine';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Les techniciens travaillent frénétiquement. Ils sauvent 70 % de l\'archive mais le virus endommage les systèmes tech tertiaires en sortant.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Isoler la base culturelle — la laisser brûler, sauver le vaisseau';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Le virus est affamé et meurt. Mais l\'archive culturelle est dévastée. Les colons arriveront avec des fragments de la mémoire de la Terre.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Récupération participative — réveiller les colons pour réécrire de mémoire';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Des milliers contribuent des souvenirs : chansons, histoires, recettes, poèmes. Trois colons âgés, affaiblis par le dégel, ne survivent pas au processus. L\'archive est reconstruite, imparfaite mais profondément humaine.';

  @override
  String get event_gravityLensPlanet_title => 'Monde Miroir';

  @override
  String get event_gravityLensPlanet_narrative =>
      'La lentille gravitationnelle révèle une planète qui semble être une copie exacte de la Terre \\u2014 océans bleus, continents verts, nuages blancs. Mais les calculs de lentille montrent qu\'elle est à des centaines d\'années-lumière de notre cap \\u2014 impossiblement loin. Néanmoins, ses données spectrales pourraient affiner nos critères de recherche.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Étudier sa signature spectrale pour affiner notre recherche';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Les données spectrales révèlent des biomarqueurs et des signatures atmosphériques que nous pouvons désormais scanner. L\'espoir se cristallise.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Enregistrer les coordonnées mais rester en cap';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Peut-être qu\'un autre vaisseau suivra nos cartes un jour. L\'équipage regarde le point bleu s\'effacer avec des émotions mêlées.';

  @override
  String get event_engineHarmonics_title => 'Harmoniques du Moteur';

  @override
  String get event_engineHarmonics_narrative =>
      'Le moteur principal développe une harmonique de résonance qui vibre dans tout le vaisseau à une fréquence juste en dessous de l\'audition humaine. Les colons signalent des maux de tête, de l\'anxiété et un sommeil perturbé. Les ingénieurs peuvent la réparer, mais la réparation nécessite un arrêt du moteur de 12 heures.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Éteindre et réparer correctement';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Douze heures de dérive. La navigation perd sa calibration, mais le silence au redémarrage des moteurs est un bonheur.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Amortir avec des contre-vibrations — réparation rapide';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Le bourdonnement descend à un niveau tolérable. Ce n\'est pas parti, mais l\'équipage s\'adapte. Les systèmes tech sont mis à rude épreuve.';

  @override
  String get event_arkMemory_title => 'La Dernière Émission de la Terre';

  @override
  String get event_arkMemory_narrative =>
      'L\'antenne longue portée capte une dernière émission automatisée de la Terre. C\'est un enregistrement : la voix d\'un enfant lisant les noms de tous ceux qui n\'ont pas pu partir. La liste dure des heures. Le vaisseau se tait.';

  @override
  String get event_arkMemory_choice0_text =>
      'La diffuser dans tout le vaisseau — ils méritent d\'être entendus';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Chaque âme à bord écoute. Des membres d\'équipage trouvent les noms de leurs propres familles. Le chagrin est écrasant, mais il forge un lien indéfectible de détermination.';

  @override
  String get event_arkMemory_choice1_text =>
      'L\'archiver en privé — épargner l\'équipage';

  @override
  String get event_arkMemory_choice1_outcome =>
      'L\'enregistrement est préservé mais pas diffusé. Ceux qui l\'apprennent plus tard se sentent à la fois reconnaissants et floués.';

  @override
  String get event_magneticStorm_title => 'Tempête Magnétique Interstellaire';

  @override
  String get event_magneticStorm_narrative =>
      'Un enchevêtrement de lignes de champ magnétique, expulsé d\'une étoile en effondrement, enveloppe le vaisseau. L\'électronique crépite et étincelle. La coque résonne comme une cloche.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Démagnétiser la coque — protéger l\'électronique';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Une décharge contrôlée sauve les ordinateurs mais le blindage de coque perd sa couche de protection magnétique.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Laisser la coque absorber — ne rien protéger';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'La tempête passe. La coque est magnétisée et légèrement plus forte, mais la moitié du réseau de capteurs est grillée.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Éjecter une sonde comme paratonnerre';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'La sonde magnétisée attire les pires lignes de champ loin du vaisseau. L\'électronique est largement épargnée.';

  @override
  String get event_oxygenGarden_title => 'Floraison du Jardin';

  @override
  String get event_oxygenGarden_narrative =>
      'Le jardin d\'oxygène d\'urgence du vaisseau — un système de secours qui n\'était pas censé être utilisé — fleurit spontanément. Des fleurs qui ne s\'étaient plus ouvertes depuis la Terre remplissent les corridors de couleur et de parfum. Les botanistes pleurent.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Agrandir le jardin — lui dédier plus d\'espace';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Le jardin devient un mémorial vivant de la Terre. La qualité de l\'air s\'améliore, le moral monte en flèche, et les botanistes développent de nouvelles variétés adaptées au sol extraterrestre.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'En profiter mais maintenir l\'allocation de ressources actuelle';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Le jardin reste un petit miracle. L\'équipage le visite comme un sanctuaire. Il ne demande rien et donne tout.';

  @override
  String get event_roguePlanet_title => 'Planète Vagabonde';

  @override
  String get event_roguePlanet_narrative =>
      'Une planète vagabonde sans étoile croise notre chemin — un monde éjecté de son système solaire il y a des milliards d\'années. Malgré l\'absence d\'étoile, l\'activité géologique profonde maintient un océan souterrain tiède. Des signes de vie clignotent sur le scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Envoyer une sonde pour étudier les formes de vie';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'La sonde découvre des organismes bioluminescents prospérant dans l\'océan sombre. Leur biochimie nous enseigne de nouvelles façons de maintenir la vie dans des conditions hostiles.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Miner la surface pour des minéraux rares';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'La croûte de la planète vagabonde est riche en métaux formés sous pression extrême. Nos réserves de ressources gonflent.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Passer — nous ne pouvons pas nous permettre le détour';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Le monde sombre rétrécit derrière nous. L\'équipage regarde le faible scintillement de son océan souterrain s\'effacer des capteurs.';

  @override
  String get event_artCompetition_title => 'La Grande Toile';

  @override
  String get event_artCompetition_narrative =>
      'Avec le moral vacillant, l\'officier culturel organise un concours artistique à l\'échelle du vaisseau : peindre, sculpter, écrire ou composer quelque chose qui capture ce que le voyage signifie pour vous. La participation est massivement inattendue.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dédier des ressources — laisser la créativité s\'épanouir';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Des provisions sont détournées vers des matériaux d\'art. L\'exposition résultante transforme le vaisseau. Les gens se rappellent pourquoi ils se battent pour survivre.';

  @override
  String get event_artCompetition_choice1_text =>
      'Encourager mais ne pas fournir de ressources supplémentaires';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Les colons créent avec ce qu\'ils trouvent. L\'art est brut, désespéré et magnifique. Le moral se stabilise.';

  @override
  String get event_subspaceEcho_title => 'Écho Subspatial';

  @override
  String get event_subspaceEcho_narrative =>
      'Le réseau de communications capte des voix — des voix humaines — de quelque part devant nous dans l\'espace. Elles parlent d\'une colonie, d\'enfants, de récoltes. Est-ce une transmission du futur ? D\'une ligne temporelle parallèle ? Ou juste un écho cruel de vœux pieux ?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Suivre le relèvement du signal — il pourrait nous mener chez nous';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'L\'ajustement de cap est léger. Que les voix soient réelles ou non, l\'équipage navigue avec détermination.';

  @override
  String get event_subspaceEcho_choice1_text => 'Tout enregistrer pour analyse';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguistes et physiciens décortiquent l\'enregistrement. Ils extraient des références de navigation qui améliorent nos cartes.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Ignorer — l\'espace joue des tours aux solitaires';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Le choix pragmatique. Certains sont déçus, mais le vaisseau reste sur son cap éprouvé.';

  @override
  String get event_boonPerfectCalm_title => 'Le Grand Calme';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Pour des raisons qu\'aucun physicien ne peut expliquer, le vaisseau entre dans une région de l\'espace surnaturellement calme — pas de radiation, pas de micro-débris, pas d\'interférence gravitationnelle. Chaque système du vaisseau fonctionne à efficacité maximale. L\'équipage dort bien pour la première fois depuis des mois.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Utiliser le calme pour des réparations complètes';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Les équipes de réparation travaillent dans des conditions parfaites. Chaque système reçoit de l\'attention. Le vaisseau en ressort renouvelé.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Laisser l\'équipage se reposer — ils l\'ont mérité';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Repos général du vaisseau. Les colons dorment, partagent des repas, racontent des histoires. Le coût humain du voyage est brièvement remboursé.';

  @override
  String get event_boonAncientWaystation_title => 'Station Relais Antique';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Nichée dans le puits gravitationnel entre deux étoiles mortes, une station antique fonctionne encore — automatisée, patiente, attendant des voyageurs. Ses baies s\'ouvrent à notre approche. Des drones de réparation s\'activent. Des réserves de carburant se tendent vers nous. Quelqu\'un, il y a longtemps, a construit cela pour des gens comme nous.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'S\'amarrer et accepter tout ce qu\'elle offre';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'La station répare, ravitaille et recalibre le vaisseau avec une technologie avançant de plusieurs siècles. Quand nous repartons, la station s\'éteint — sa mission accomplie.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Accepter les réparations mais la laisser fonctionner pour ceux qui suivront';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Nous ne prenons que ce dont nous avons besoin et transmettons les coordonnées de la station vers la Terre. L\'équipage se sent noble.';

  @override
  String get event_relicSentinel_title => 'La Sentinelle';

  @override
  String get event_relicSentinel_narrative =>
      'Une construction imposante orbite autour d\'une lune aride — un gardien solitaire laissé par ses bâtisseurs. Elle fait facilement un kilomètre de haut, en forme de lance de verre noir. À notre approche, un œil rouge unique s\'ouvre à son sommet et suit le vaisseau. Elle ne tire pas. Elle n\'appelle pas. Elle observe.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Transmettre notre profil de mission — montrer nos intentions pacifiques';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'L\'œil passe à l\'ambre, puis au vert. Un paquet de données arrive : les coordonnées de trois systèmes stellaires marqués \"SÛR\" en notation mathématique universelle. Un cadeau d\'un veilleur.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Maintenir la position et étudier passivement';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Des heures d\'observation livrent des aperçus en science des matériaux qui ne devraient pas être possibles. L\'équipe de blindage prend des notes frénétiquement.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Se retirer immédiatement — nous ne connaissons pas ses règles';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'L\'œil se ferme à notre retrait. Quel que fût le test, nous avons choisi de ne pas le passer. L\'équipage débat pendant des jours.';

  @override
  String get event_relicSeedProbe_title => 'Graine Errante';

  @override
  String get event_relicSeedProbe_narrative =>
      'Une petite sonde élégante dérive dans le vide, émettant sur toutes les fréquences simultanément. Sa coque est en céramique, gravée de symboles qui changent quand on les observe. À l\'intérieur : une chambre pressurisée contenant de la terre, des graines et des micro-organismes congelés d\'un monde qui n\'existe plus.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Intégrer la charge biologique dans nos banques de semences';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Les graines et microbes extraterrestres sont soigneusement catalogués et préservés. Ils pourraient transformer un monde aride en quelque chose de vivant. Les biologistes appellent cela un miracle en bouteille.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Étudier les systèmes de propulsion et de navigation de la sonde';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'La propulsion de la sonde a des siècles d\'avance — un propulseur sans réaction de la taille d\'un poing. Les ingénieurs rétro-conçoivent des fragments du design.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Préserver la sonde entière intacte comme artefact culturel';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Exposée dans l\'atrium du vaisseau, la graine extraterrestre devient un symbole de parenté entre espèces. Quelqu\'un d\'autre, quelque part, a aussi essayé de sauver son monde.';

  @override
  String get event_relicWarningBuoy_title => 'Bouées d\'Avertissement';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Un réseau de petites bouées, des centaines, disposées en motif géométrique parfait en travers de notre trajectoire. Chacune émet le même signal — un simple pouls répétitif qui augmente en fréquence plus nous approchons. Cela ressemble à un avertissement. Ou une clôture.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Tenir compte de l\'avertissement — modifier le cap autour du réseau';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Le détour coûte du temps et stresse la navigation, mais en longeant la frontière, les capteurs longue portée détectent ce qui se trouve au-delà : une région de l\'espace jonchée de débris de mondes brisés. Les bouées nous ont sauvés.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Passer à travers — nous ne pouvons pas nous permettre de détours';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Rien ne se passe quand nous franchissons la ligne. Les bouées se taisent. Quelle que fût la menace, elle a disparu ou nous avons eu de la chance. L\'équipage respire à nouveau.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Capturer une bouée pour analyse';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'L\'intérieur de la bouée contient une archive de données compressée — cartographie stellaire de cette région d\'il y a un million d\'années. Certaines données sont encore exactes.';

  @override
  String get event_relicMirrorArray_title => 'Le Réseau de Miroirs';

  @override
  String get event_relicMirrorArray_narrative =>
      'Des milliers de surfaces plates et réfléchissantes sont suspendues immobiles dans l\'espace, disposées en anneaux concentriques sur des centaines de kilomètres. Elles focalisent la lumière d\'un soleil lointain en un point unique — une étoile artificielle, brûlant dans le vide. Quelqu\'un a construit un phare entre les galaxies.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Se baigner dans la lumière focalisée — tout recharger';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'La lumière stellaire concentrée inonde nos collecteurs solaires. Les réserves d\'énergie bondissent. La lumière chaude soulève chaque âme à bord après des mois dans l\'obscurité froide.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Étudier le matériau des miroirs — il ne devrait pas exister';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Les miroirs sont faits d\'un matériau à réflectivité parfaite — absorption zéro à toute longueur d\'onde. Les ingénieurs extraient un éclat. Le blindage de coque ne sera plus jamais le même.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Chercher au point focal — quelque chose est illuminé';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Au point de convergence : une petite capsule, parfaitement préservée dans la lumière concentrée. À l\'intérieur, une carte stellaire holographique si détaillée que nos ordinateurs mettent des jours à l\'indexer.';

  @override
  String get event_relicGraveyard_title => 'Le Cimetière de Sondes';

  @override
  String get event_relicGraveyard_narrative =>
      'Nous dérivons dans un nuage de sondes abandonnées — des milliers, de dizaines de civilisations différentes. Certaines sont anciennes au-delà de tout calcul, fusionnées par la radiation cosmique en fossiles métalliques. D\'autres clignotent encore avec une énergie faiblissante. C\'était un carrefour autrefois. Chaque espèce qui est passée a laissé quelque chose.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Récupération systématique — récolter la meilleure technologie';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Les équipes d\'ingénierie travaillent en relais, démontant la tech extraterrestre de cent designs différents. La fusion des idées produit des percées dans chaque système.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Se concentrer sur les données de navigation dans leurs banques mémoire';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Le croisement de cartes stellaires d\'une douzaine d\'espèces crée la carte la plus complète de ce bras galactique jamais assemblée.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Ajouter notre propre sonde au cimetière — laisser une trace';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Nous fabriquons une petite balise portant l\'histoire de l\'humanité et l\'ajoutons à la collection. L\'équipage se sent connecté à quelque chose de vaste et d\'ancien.';

  @override
  String get event_relicDreamcatcher_title => 'L\'Attrape-Rêves';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Un réseau de filaments, fins comme de la soie d\'araignée mais s\'étendant sur des milliers de kilomètres, est tendu entre deux planétoïdes vagabonds. Ce n\'est pas un filet — c\'est une antenne, accordée sur des fréquences correspondant aux ondes cérébrales humaines. Quand nous entrons dans sa portée, chaque colon endormi commence à rêver le même rêve : une ville florissante sous un ciel ambré.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Enregistrer les coordonnées du rêve — la ville pourrait être réelle';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Les neuroscientifiques décodent des informations spatiales du rêve partagé. Elles correspondent à un vrai système stellaire — et la ville dans la vision n\'était pas une métaphore. Quelqu\'un est là-bas, et ils nous attendent.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Récolter des échantillons de filaments — le matériau est extraordinaire';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Les filaments sont un supraconducteur à température ambiante. Intégrés à nos systèmes, ils réduisent la perte d\'énergie à quasi-zéro.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Couper la toile et libérer les rêveurs';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Les rêves cessent. Les colons se réveillent désorientés mais indemnes. Certains pleurent la vision perdue. D\'autres sont reconnaissants de dormir sans murmures extraterrestres.';

  @override
  String get event_relicRosetta_title => 'Objet Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Un petit cube dense de métal inconnu passe près du vaisseau. Chaque face est inscrite avec le même message dans un système de notation différent — mathématique, chimique, génétique, acoustique, électromagnétique, et un que nous ne pouvons pas identifier. C\'est une Pierre de Rosette pour le cosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Déchiffrer la sixième face — la notation inconnue';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Des mois d\'analyse produisent une percée : le sixième système encode des coordonnées spatiales en utilisant des ondes gravitationnelles. Notre compréhension de la physique fait un bond générationnel.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Utiliser la face chimique pour synthétiser de nouveaux composés';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'La notation chimique décrit des matériaux que nous n\'avons jamais imaginés. Les ingénieurs fabriquent des patches de coque plus légers et plus solides que tout ce qui vient de la Terre.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Envoyer la face génétique à nos banques de semences';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'La notation génétique contient des séquences ADN optimisées pour la résistance aux radiations et l\'absorption des nutriments. Nos cultures et nos colons seront plus robustes sur un sol extraterrestre.';

  @override
  String get event_relicGhostFleet_title => 'Flotte Fantôme';

  @override
  String get event_relicGhostFleet_narrative =>
      'Les scanners peignent un tableau glaçant : une flotte de vaisseaux de guerre extraterrestres, des centaines, suspendus immobiles en formation. Ils sont antiques — lectures d\'énergie à zéro, coques piquées par des éons de micro-impacts. Quelle que fût la bataille qu\'ils allaient livrer, elle n\'est jamais venue. Ils attendent ici, morts et patients, depuis plus longtemps que la civilisation humaine n\'existe.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Aborder le vaisseau amiral — s\'il avait la meilleure tech, c\'est lui';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Le pont de commandement du vaisseau amiral contient encore un ordinateur tactique intact. Ses algorithmes prédictifs ont des siècles d\'avance. La navigation et la détection de menaces s\'améliorent dramatiquement.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Récupérer le blindage des vaisseaux d\'escorte';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Le blindage de vaisseaux de guerre extraterrestres est conçu pour résister à des armes que nous ne pouvons même pas concevoir. Boulonné sur notre coque, il rend le vaisseau colonial quasi-indestructible.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Récupérer leurs systèmes cryogéniques — ils transportaient des soldats';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'La cryo-technologie extraterrestre fonctionne sur des principes que nous n\'avons jamais envisagés. Nos capsules fonctionnent plus frais, plus régulier et plus fiablement après la mise à niveau.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Dérive de Calibration des Scanners';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Les diagnostics de routine révèlent que plusieurs sous-systèmes de scanners ont dérivé de leur calibration après le dernier saut SLV. Les scanners atmosphériques et de température lisent des signaux fantômes. Les ingénieurs peuvent les réparer, mais cela prendra du temps et des ressources.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Recalibration complète — rediriger les ressources tech';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Un réalignement minutieux restaure les deux scanners à une précision quasi-parfaite, mais la baie technique est épuisée.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Réparation rapide — ne recalibrer que l\'atmosphérique';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Le scanner atmosphérique est restauré. Le scanner de température reste peu fiable pour l\'instant.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Déployer une sonde pour calibration de référence';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'La sonde fournit un signal de référence propre. Les deux scanners se verrouillent et se recalibrent automatiquement.';

  @override
  String get event_ionStormScanners_title => 'Interférence de Tempête Ionique';

  @override
  String get event_ionStormScanners_narrative =>
      'Une tempête ionique balaie le secteur, inondant les réseaux de scanners de bruit. Les systèmes de détection de minéraux et d\'eau subissent le gros de l\'interférence électromagnétique.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Éteindre les scanners jusqu\'à ce que la tempête passe';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Les scanners survivent mais perdent des données de calibration. Les lectures de minéraux et d\'eau seront moins précises.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Continuer à scanner — traverser le bruit';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Les données brutes affluent, mais les circuits de filtrage brûlent dans deux sous-systèmes. Les scans gravimétriques sont aussi affectés.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Utiliser la tempête pour tester et améliorer les filtres';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'L\'équipe scientifique utilise le bruit pour entraîner des filtres adaptatifs. Le scanner d\'eau s\'améliore, mais le scanner de minéraux subit des dommages.';

  @override
  String get event_bioScannerContamination_title =>
      'Contamination du Bio-Scanner';

  @override
  String get event_bioScannerContamination_narrative =>
      'Le scanner de signes de vie a été contaminé par de la matière organique résiduelle du dernier scan planétaire. Les faux positifs sont partout. Le scanner gravimétrique montre aussi du bruit sympathique.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Stériliser le réseau de capteurs — décontamination complète';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Un nettoyage approfondi restaure le scanner de signes de vie mais les agents chimiques corrodent le boîtier du capteur gravimétrique.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filtre logiciel — compenser algorithmiquement';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Le filtre fonctionne assez bien, mais la contamination sous-jacente dégradera lentement les deux systèmes.';

  @override
  String get event_scannerPowerSurge_title => 'Surtension des Scanners';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Un conduit d\'alimentation près de la baie des scanners surcharge, envoyant une surtension à travers plusieurs sous-systèmes. Les scanners atmosphériques et de signes de vie subissent des dommages directs. Les boucliers absorbent une partie de l\'excédent.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Rediriger l\'énergie — sauver les scanners';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'L\'action rapide de l\'équipe d\'ingénierie limite les dommages, mais les boucliers absorbent l\'énergie redirigée.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Laisser la surtension suivre son cours';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Les scanners subissent le plein choc. Les lectures atmosphériques et de signes de vie sont significativement dégradées.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Sacrifier la cellule d\'énergie d\'une sonde pour absorber la surtension';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Les condensateurs de la sonde absorbent l\'énergie excédentaire comme une éponge. Les dommages aux scanners sont négligeables.';

  @override
  String get event_relicWorldEngine_title => 'La Machine à Mondes';

  @override
  String get event_relicWorldEngine_narrative =>
      'Les balayages de capteurs profonds révèlent l\'impossible : une machine de la taille d\'une petite lune, dormante dans le noir entre les étoiles. Sa surface est couverte de mécanismes de la taille de continents — processeurs atmosphériques, générateurs de champ magnétique, stabilisateurs tectoniques. Quelqu\'un a construit une machine qui fabrique des mondes.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Télécharger les plans de terraformation';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Les plans sont vastes et partiellement corrompus, mais ce que nous récupérons pourrait rendre tout monde hostile habitable. Nos colons remodèleront leur nouveau foyer.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Récolter des matériaux de construction de sa coque';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'La coque de la Machine à Mondes est faite de métamatériaux qui s\'auto-réparent quand ils sont endommagés. Intégrés dans notre vaisseau, ils réparent lentement les brèches existantes.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Tenter de la réactiver — la diriger vers notre système cible';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'La machine s\'anime. D\'anciens systèmes défilent les séquences de démarrage. Un faisceau d\'énergie se lance vers une étoile lointaine. Si ça fonctionne ne sera connu qu\'à notre arrivée, mais les lectures sont prometteuses.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Quart de Maintenance de Routine';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Rien ne requiert d\'attention. Le vaisseau bourdonne régulièrement à travers le vide et le planning appelle une fenêtre de maintenance de routine. Le chef d\'équipe demande où concentrer l\'effort du quart.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Se concentrer sur le scellement des micro-fissures de coque';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Un quart tranquille passé à colmater des fissures capillaires. Rien de dramatique, mais la coque s\'en porte marginalement mieux.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Recalibrer les scanners avant';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Le technicien scanner passe quelques heures en réglage fin. Les lectures deviennent légèrement plus nettes.';

  @override
  String get event_uneventfulQuietWatch_title => 'Quart Silencieux';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Les étoiles défilent en silence. La passerelle est calme, les instruments stables. C\'est l\'une de ces rares périodes où l\'univers ne demande rien de vous.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Laisser l\'équipage se reposer — ils ont mérité un quart tranquille';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Quelques heures de paix véritable. Les gens dorment plus profondément, les tensions s\'apaisent, et l\'officier culturel note une légère hausse du moral.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Lancer des diagnostics de basse priorité pendant le calme';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Des problèmes mineurs sont détectés et enregistrés. Rien d\'urgent, mais les journaux techniques sont un peu plus propres.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Vérification des Cryocapsules — Tout Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'L\'audit trimestriel des cryocapsules se passe sans une seule alarme. Chaque capsule affiche vert. L\'équipe médicale a un rare moment de calme.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Réveiller quelques colons brièvement pour une visite de moral';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Trois colons sont amenés à la conscience pendant une heure. Ils partagent des histoires, étreignent de vieux amis et retournent en cryo en souriant.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Les laisser dormir — ne pas risquer de cycles de réveil inutiles';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Les capsules poursuivent leur fonctionnement impeccable. Les médecins profitent plutôt d\'une tasse de thé tranquille.';

  @override
  String get event_uneventfulCartography_title =>
      'Mise à Jour de Cartographie Stellaire';

  @override
  String get event_uneventfulCartography_narrative =>
      'La mise à jour de cartographie planifiée de l\'équipe de navigation ne révèle rien d\'inhabituel — juste les champs d\'étoiles attendus qui se décalent pendant notre voyage. Une journée calme pour les navigateurs.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Recalibrer la navigation sur les nouvelles positions stellaires';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Une petite correction de cap, à peine perceptible. L\'ordinateur de navigation bourdonne de contentement.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Mettre à jour les cartes stellaires pour l\'archive coloniale';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Les futurs colons auront des cartes légèrement meilleures de cette région. Un petit cadeau à la postérité.';

  @override
  String get event_uneventfulAnniversary_title => 'Anniversaire du Vaisseau';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Un an depuis le lancement — ou deux ? Le temps se brouille dans l\'espace profond. Quelqu\'un à la cuisine a fait un gâteau avec des provisions reconstituées. Le capitaine doit décider comment marquer l\'occasion.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Petite fête — musique, gâteau, un toast à la Terre';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Une heure de chaleur dans le vide froid. Les gens rient, certains pleurent, et chacun se sent un peu plus humain.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Comme d\'habitude — nous fêterons à l\'arrivée';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'L\'équipage respecte l\'approche stoïque. La concentration s\'aiguise, et l\'équipe de service effectue une vérification système supplémentaire.';

  @override
  String get event_databaseLiterature_title =>
      'Archives Littéraires de la Terre';

  @override
  String get event_databaseLiterature_narrative =>
      'L\'IA du vaisseau ouvre une section longtemps scellée de la base de données culturelle : l\'archive littéraire complète de la Terre. Romans, poésie, pièces de théâtre — des millions d\'œuvres couvrant toutes les langues et époques. L\'équipage se rassemble pour une lecture.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Diffuser des lectures sélectionnées dans tout le vaisseau';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare résonne dans les corridors. Les vers de Rumi jouent dans la baie d\'hydroponie. L\'équipage se souvient de ce qu\'il porte.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indexer l\'archive pour des programmes éducatifs';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'L\'effort de catalogage renforce la base de connaissances du vaisseau et donne à l\'officier culturel de nouveaux supports pédagogiques.';

  @override
  String get event_databaseSchematics_title => 'Revue de Plans d\'Ingénierie';

  @override
  String get event_databaseSchematics_narrative =>
      'Un ingénieur tombe sur une partition oubliée dans la base de données du vaisseau : des plans détaillés de la dernière décennie d\'ingénierie terrestre — designs de réacteurs à fusion, plans de métamatériaux, et concepts de propulsion expérimentaux.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Prioriser les concepts de propulsion pour l\'équipe tech';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Les plans révèlent des améliorations d\'efficacité que les constructeurs originaux n\'ont jamais eu le temps d\'implémenter. La baie technique bourdonne.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Partager le savoir largement — chaque département en bénéficie';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Ingénieurs de coque, techniciens scanners et médecins trouvent tous des aperçus utiles. La marée montante soulève chaque système, légèrement.';

  @override
  String get event_databaseCorruption_title =>
      'Scan de Préservation Culturelle';

  @override
  String get event_databaseCorruption_narrative =>
      'Un contrôle d\'intégrité programmé de la base de données culturelle révèle de la pourriture de bits — des sections de musique, d\'histoires orales et de textes religieux se sont dégradées au-delà de toute récupération. Tout n\'a pas survécu au voyage.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Rediriger les ressources tech pour sauver ce qui reste';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Les ingénieurs interrompent d\'autres travaux pour lancer des algorithmes de récupération de données. Ils sauvent la plupart, mais l\'effort coûte à la baie technique.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Demander aux colons de recréer les œuvres perdues de mémoire';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Un effort beau et imparfait. Ce qui est reconstruit appartient au voyage, pas à la Terre. Une nouvelle tradition naît.';

  @override
  String get event_databaseBreakthrough_title => 'Percée de Recherche Archivée';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Un physicien recoupant d\'anciens articles de recherche terrestre dans la base de données découvre que deux études non liées, combinées, décrivent une nouvelle méthode d\'analyse spectrale à longue portée. Les implications sont énormes.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implémenter la nouvelle méthode d\'analyse dans le réseau de scanners';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'L\'équipe scanner travaille fébrilement. En quelques jours, la résolution spectrale double. Les planètes lointaines révèlent leurs secrets.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Publier la découverte à bord — inspirer plus de recherche';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'La percée déclenche une vague d\'études interdisciplinaires. La tech s\'améliore largement, et l\'équipage se sent intellectuellement vivant.';

  @override
  String get event_alienFleetSighting_title =>
      'Flotte Extraterrestre à l\'Horizon';

  @override
  String get event_alienFleetSighting_narrative =>
      'Les scanners longue portée peignent un tableau terrifiant : une flotte de vaisseaux extraterrestres, des centaines, se déplaçant en formation parfaite à travers le champ d\'étoiles. Ils éclipsent notre vaisseau. Leur cap les amènera dans notre portée de capteurs en quelques heures. Premier contact — à leurs conditions ou aux nôtres.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Observer en silence — passer en mode furtif et regarder';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Le vaisseau réduit ses émissions au minimum. La flotte passe comme un banc de baleines lumineuses, sans remarquer le minuscule vaisseau humain dans leur sillage. Les données des scanners sont extraordinaires.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Tenter le premier contact — transmettre un salut';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Un seul vaisseau rompt la formation et s\'approche. Une rafale de données arrive — cartes stellaires, avertissements, et quelque chose qui pourrait être de la musique. Puis il rejoint la flotte et ils disparaissent.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Fuir — modifier le cap immédiatement';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Le vaisseau brûle fort dans la direction opposée. Le changement de cap est coûteux et stressant, mais la flotte ne nous remarque jamais. La sécurité a un prix.';

  @override
  String get event_alienTradeOffer_title => 'Offre Commerciale Extraterrestre';

  @override
  String get event_alienTradeOffer_narrative =>
      'Un vaisseau extraterrestre, plus petit que le nôtre mais rayonnant d\'une immense puissance, s\'aligne sur notre vitesse et diffuse un simple message répétitif. Nos linguistes le décodent en quelques heures : c\'est une offre de commerce. Trois catégories d\'échange sont proposées.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Échanger des plans techniques contre des cartes stellaires extraterrestres';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Nous transmettons nos designs de propulsion ; ils répondent avec des données de navigation couvrant une vaste étendue d\'espace inexploré. Nos cartes s\'améliorent dramatiquement, bien que nous ayons partagé notre technologie avec une espèce inconnue.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Échanger des données culturelles contre des réparations du vaisseau';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Nous envoyons notre musique, art et histoire. En retour, des drones de réparation extraterrestres essaiment sur la coque, scellant les brèches avec des matériaux que nous ne pouvons pas identifier. La coque brille. Notre âme est partagée.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Refuser le commerce — le risque est trop grand';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Le vaisseau extraterrestre attend un moment, puis repart sans incident. L\'équipage est soulagé mais se demande ce qui a été perdu.';

  @override
  String get event_alienWarning_title =>
      'Diffusion d\'Avertissement Extraterrestre';

  @override
  String get event_alienWarning_narrative =>
      'Chaque haut-parleur du vaisseau crépite avec une voix extraterrestre — traduite par notre IA en temps réel : \"DANGER DEVANT. FAITES DEMI-TOUR. LES TÉNÈBRES DÉVORENT.\" La diffusion se répète, puis meurt. Les capteurs longue portée montrent un vide anomal sur notre cap actuel.';

  @override
  String get event_alienWarning_choice0_text =>
      'Tenir compte de l\'avertissement — modifier le cap autour du vide';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Le détour ajoute une contrainte significative à la navigation, mais en longeant le bord du vide, les capteurs confirment : rien de ce qui est entré dans cette région n\'en est jamais ressorti. Nous devons une dette à des voix inconnues.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignorer l\'avertissement — rester en cap';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Nous fonçons. Le vide s\'avère être une région de micro-débris intenses. La coque et les scanners subissent des punitions avant que nous ne franchissions l\'autre côté.';

  @override
  String get event_alienWarning_choice2_text =>
      'Sonder le bord du vide avec une sonde';

  @override
  String get event_alienWarning_choice2_outcome =>
      'La sonde entre dans le vide et transmet des données extraordinaires avant de se taire. L\'équipe scanner extrait des lectures précieuses, mais la sonde est perdue.';

  @override
  String get event_nativeSignalDetected_title =>
      'Transmissions depuis le Monde Cible';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Le réseau de communications capte des signaux électromagnétiques structurés provenant de notre planète cible. Ils sont indéniables : réguliers, modulés, artificiels. Quelqu\'un est déjà là. La prémisse entière de la colonie bascule en un instant.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Transmettre un salut pacifique — annoncer notre arrivée';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Un choix courageux. Le signal change de motif après notre émission — ils nous ont entendus. Si c\'est un accueil ou un avertissement n\'est pas clair, mais la porte est ouverte.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Écouter seulement — apprendre avant de se révéler';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Des mois d\'écoute passive brossent un portrait de la civilisation indigène. Ils sont prudents, territoriaux, mais pas hostiles. Nous arrivons informés.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Brouiller le signal — leur refuser la connaissance de notre approche';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Le brouillage fonctionne, mais c\'est un acte d\'agression contre un peuple que nous n\'avons pas rencontré. L\'équipage est divisé sur la moralité.';

  @override
  String get event_nativeProbeEncounter_title =>
      'Interception de Sonde Extraterrestre';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Une petite sonde élégante — non humaine — s\'aligne sur notre vitesse et commence à scanner le vaisseau. Son langage de design correspond aux signaux de la planète cible. Les indigènes ont envoyé un comité d\'accueil. Ou un drone de surveillance.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Autoriser le scan — montrer que nous n\'avons rien à cacher';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'La sonde termine son relevé et transmet une rafale de données vers la planète. Des minutes plus tard, une seconde rafale arrive pour nous : données atmosphériques, zones d\'atterrissage sûres, et ce qui pourrait être une invitation.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Capturer la sonde pour étude';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'La sonde est tractorée dans la soute. Sa technologie est fascinante mais l\'acte de capture pourrait être vu comme hostile par ses créateurs.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'La détruire — nous ne connaissons pas ses intentions';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Une seule impulsion réduit la sonde en fragments. L\'équipage se sent plus en sécurité, mais un pont potentiel a été brûlé.';

  @override
  String get event_nativeCulturalExchange_title => 'Premier Échange Culturel';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Un lien de données à bande étroite a été établi avec les indigènes de la planète. Ils nous envoient des images, des sons et des séquences mathématiques. Nos linguistes et officiers culturels travaillent sans relâche pour préparer une réponse. C\'est la conversation la plus importante de l\'histoire humaine.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Partager l\'art et la musique de la Terre — mener par la beauté';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Nous transmettons Bach, des peintures aborigènes par points, et le son de la pluie sur les feuilles. La réponse est une cascade d\'harmoniques extraterrestres qui fait pleurer l\'équipage. La compréhension s\'approfondit.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Partager le savoir scientifique — mener par la raison';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Nous transmettons notre tableau périodique, nos cartes stellaires et notre physique. Ils répondent avec des corrections et des ajouts. Notre tech fait un bond, mais l\'échange semble transactionnel.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Envoyer une sonde avec des échantillons physiques — ADN, graines, eau';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Une sonde porte l\'essence de la Terre dans des mains extraterrestres. Les indigènes répondent avec un cadeau similaire — des échantillons biologiques de leur monde. Les biologistes sont extatiques.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Dysfonctionnement des Propulseurs d\'Atterrissage';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Lors d\'un contrôle système de routine, les propulseurs d\'atterrissage s\'allument de façon intempestive — un bang sec résonne dans les ponts inférieurs et le vaisseau tangue. Le diagnostic révèle un injecteur de carburant fissuré dans le réseau d\'atterrissage primaire. Sans réparation, la descente planétaire sera brutale.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Rediriger l\'équipe tech pour fabriquer un injecteur de remplacement';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Les ingénieurs travaillent en double quart et usinent un nouvel injecteur à partir d\'alliage de coque de réserve. Le système d\'atterrissage est restauré, mais la baie technique est épuisée.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Déployer une sonde pour tester la calibration des propulseurs dans le vide';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'La sonde fournit des données de poussée en temps réel qui permettent aux ingénieurs de recalibrer autour de l\'injecteur endommagé. Pas une réparation complète, mais le système d\'atterrissage se stabilise.';

  @override
  String get event_landingSimDrill_title =>
      'Exercice de Simulation d\'Atterrissage';

  @override
  String get event_landingSimDrill_narrative =>
      'Avec la descente planétaire qui se rapproche, le capitaine ordonne une simulation d\'atterrissage complète. L\'équipage s\'attache, les systèmes sont testés sous charge, et la descente virtuelle commence. C\'est la répétition la plus réaliste qu\'ils auront.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Se concentrer sur la précision technique — suivre l\'exercice à la lettre';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'La simulation révèle deux erreurs de calibration mineures qui sont immédiatement corrigées. Le système d\'atterrissage est plus serré après.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'En faire un événement à l\'échelle du vaisseau — diffuser la simulation';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Les colons regardent depuis chaque écran à bord. L\'expérience partagée de la descente simulée — les tremblements, les acclamations — soude l\'équipage comme rien d\'autre.';

  @override
  String get event_dysonSphere_title => 'La Sphère de Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Les capteurs détectent une structure impossible — une sphère de Dyson partielle entourant une étoile lointaine, récoltant toute sa production d\'énergie. Quiconque a construit cela a transcendé tout ce que l\'humanité a jamais conçu. Un port d\'amarrage semble s\'ouvrir à notre approche.';

  @override
  String get event_dysonSphere_choice0_text =>
      'S\'amarrer et explorer la structure';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'À l\'intérieur, des systèmes automatisés nous offrent une technologie qui fait avancer nos capacités de plusieurs siècles. Cinq ingénieurs sont perdus face aux mécanismes de défense de la station avant qu\'elle ne reconnaisse notre intention. Les constructeurs sont reconstruits avec des alliages extraterrestres.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Récolter l\'énergie de l\'extérieur';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Nous nous baignons dans le débordement radiant de la sphère. Chaque système à bord se charge au maximum. L\'équipage observe dans un silence stupéfait.';

  @override
  String get event_dysonSphere_choice2_text => 'Étudier de loin et poursuivre';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Des scans longue portée révèlent des principes de construction qui révolutionnent notre compréhension de l\'ingénierie.';

  @override
  String get event_nanotechPlague_title => 'La Peste Nanotech';

  @override
  String get event_nanotechPlague_narrative =>
      'Un nuage de nanomachines sauvages, vestiges du programme d\'armement d\'une civilisation morte, infiltre le vaisseau par des micro-fissures de coque. Elles désassemblent les systèmes non critiques au niveau moléculaire. L\'essaim se propage rapidement.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Impulsion EMP — griller tout dans les sections affectées';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'L\'impulsion électromagnétique détruit les nanites mais endommage aussi notre propre électronique dans ces sections. Les colons dans la zone de l\'explosion souffrent de brûlures.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Ventiler les sections affectées dans le vide';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Sans atmosphère, les nanites ralentissent et meurent. Mais les sections sont perdues, avec les provisions stockées et les archives culturelles.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Les reprogrammer — transformer les armes en outils';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Un ingénieur brillant craque le code des nanites, mais cinq membres d\'équipage dans les sections les plus affectées sont déjà au-delà de tout secours. L\'essaim reprogrammé commence à réparer le vaisseau au lieu de le détruire.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Sacrifier le cœur IA d\'une sonde pour créer un contre-essaim';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Les processeurs de la sonde sont reconvertis pour contrôler un essaim défensif de nanites. La peste est neutralisée avec des pertes minimales.';

  @override
  String get event_prematureAwakening_title => 'L\'Éveil Prématuré';

  @override
  String get event_prematureAwakening_narrative =>
      'Une défaillance en cascade dans la baie des cryocapsules réveille 200 colons des décennies trop tôt. Ils sont confus, effrayés, et consomment des ressources destinées à la phase d\'atterrissage. Parmi eux se trouvent des enfants qui n\'ont jamais connu autre chose que le vaisseau.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Les intégrer à l\'équipage — plus de mains, plus d\'espoir';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Les colons réveillés deviennent des membres d\'équipage productifs. Vingt colons ne survivent pas au dégel brutal, mais le reste se rallie. Les ressources sont tendues mais les esprits s\'élèvent.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Tenter de les recongeler — risqué mais nécessaire';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Le processus de recongélation est imparfait. La plupart survivent, mais certains sont perdus. Les survivants portent des cicatrices psychologiques.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Leur donner leur propre section du vaisseau';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Dix colons sont perdus à cause de complications du dégel d\'urgence, mais le reste forme une micro-colonie au sein du vaisseau. Ils développent leur propre culture et gouvernance, une répétition pour l\'établissement planétaire.';

  @override
  String get event_stowawaysAdvanced_title => 'Les Passagers Cachés';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Au fond de la soute, derrière de fausses cloisons, la sécurité découvre une communauté cachée entière — 80 personnes qui ont embarqué illégalement avant le lancement. Ils vivent dans les murs du vaisseau depuis tout le voyage, entretenant leurs propres jardins et dérivations d\'énergie.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Les accueillir — 80 colons de plus, c\'est un cadeau';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'La communauté cachée apporte des compétences en ingénierie improvisée et en débrouillardise qui stupéfient l\'équipage. Leurs jardins sont transplantés dans le biodôme principal.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Les confiner et redistribuer leurs ressources volées';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Les provisions récupérées améliorent plusieurs systèmes, mais le confinement de familles — y compris des enfants — hante l\'équipage.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Négocier — ils nous rejoignent comme égaux s\'ils partagent leur tech';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Leurs cellules d\'énergie improvisées et leurs astuces d\'hydroponie améliorent l\'efficacité du vaisseau. Une intégration tendue mais productive commence.';

  @override
  String get event_alienReservation_title => 'La Réserve Extraterrestre';

  @override
  String get event_alienReservation_narrative =>
      'Nous tombons sur une réserve naturelle extraterrestre — une région de l\'espace délibérément ensemencée de planètes habitables et protégée par des sentinelles automatisées. Les gardiens nous scannent et projettent un message : \"Vous pouvez coloniser UN monde. Choisissez sagement. Interférez avec les autres et vous serez retirés.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Accepter avec gratitude — un monde est tout ce dont nous avons besoin';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Les sentinelles nous guident vers un monde préparé. Les scans révèlent qu\'il est extraordinairement adapté à la vie humaine.';

  @override
  String get event_alienReservation_choice1_text =>
      'Négocier de meilleures conditions — l\'humanité a besoin d\'espace pour grandir';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Les sentinelles considèrent notre plaidoyer. Elles améliorent nos scanners avec des données sur des dizaines de systèmes au-delà de la réserve.';

  @override
  String get event_alienReservation_choice2_text =>
      'Refuser et partir — nous ne serons pas encagés';

  @override
  String get event_alienReservation_choice2_outcome =>
      'L\'équipage débat pendant des jours. La liberté avant la sécurité. Les sentinelles autorisent notre départ avec un cadeau : une carte des dangers proches.';

  @override
  String get event_cosmicHorror_title => 'La Chose entre les Étoiles';

  @override
  String get event_cosmicHorror_narrative =>
      'Quelque chose de vaste et sombre occulte les étoiles devant — ni une nébuleuse, ni un trou noir. Aucune masse, aucune signature énergétique, aucune présence électromagnétique. Mais c\'est LÀ, et c\'est conscient de nous. Les membres d\'équipage près du pont d\'observation avant rapportent une terreur écrasante. Deux ont été sédatés.';

  @override
  String get event_cosmicHorror_choice0_text =>
      'Marche arrière toute — FUIR MAINTENANT';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Le vaisseau lutte contre son propre élan. Nous échappons, mais la terreur persiste. Certains colons ne se rétablissent jamais psychologiquement.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Sceller le pont d\'observation et foncer';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Trois jours de vol aveugle dans le noir. Quand les étoiles reviennent, l\'équipage pleure de soulagement. La coque est gravée de motifs que personne ne peut expliquer.';

  @override
  String get event_cosmicHorror_choice2_text => 'Tenter de communiquer';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'L\'entité répond — pas en mots, mais en connaissance pressée directement dans les esprits de l\'équipage. Cartes stellaires, physique, vérités sur l\'univers. La moitié de l\'équipage est illuminée. L\'autre moitié est brisée.';

  @override
  String get event_cosmicHorror_choice3_text => 'Offrir une sonde en tribut';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'La sonde dérive dans les ténèbres et disparaît. L\'entité se contracte légèrement, comme satisfaite. Notre chemin se dégage.';

  @override
  String get event_meteorGlancingHit_title => 'Impact Météorique Rasant';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Un météore de la taille d\'un rocher érafle le côté bâbord de la coque à un angle rasant. L\'impact arrache trois mètres de blindage extérieur et envoie des ondes de choc à travers toute la structure. Les alarmes de contrôle des dommages hurlent sur tous les ponts.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Rediriger immédiatement tous les robots de réparation vers la brèche';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Les robots scellent le pire des dommages, mais la ponction frénétique sur les réserves tech laisse les systèmes secondaires sous-alimentés.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Réduire la poussée et laisser l\'équipage réparer manuellement';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Progression plus lente, mais l\'équipage fait un travail solide. La navigation souffre de la fenêtre de poussée réduite pendant la dérive.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Sacrifier le blindage de coque d\'une sonde comme matériau de réparation';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'La sonde est dépouillée pour les pièces. Le patch tient et l\'intégrité de la coque est préservée au prix d\'un éclaireur en moins.';

  @override
  String get event_meteorDirectImpact_title => 'Impact Météorique Direct';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Un météorite de fer d\'une demi-tonne transperce la soute avant à une vitesse relative dépassant 40 km/s. Deux membres d\'équipage dans le corridor adjacent sont portés disparus. La soute est ouverte au vide.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Sceller la soute et chercher les survivants plus tard';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'La soute est scellée en quatre-vingt-dix secondes. Les deux membres avaient déjà évacué — de justesse. La coque porte des cicatrices permanentes.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Lancer une opération de sauvetage complète avant de sceller';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Un survivant est extrait. L\'exposition prolongée aggrave les dommages structurels et épuise les réserves techniques.';

  @override
  String get event_meteorDebrisField_title =>
      'Champ de Débris — Averse Résiduelle';

  @override
  String get event_meteorDebrisField_narrative =>
      'Les capteurs longue portée n\'ont pas détecté un champ dispersé de fragments de météores avant que nous y soyons déjà. Des centaines de roches de la taille du poing frappent la coque à intervalles aléatoires. Chaque impact est une loterie.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Lever les boucliers et foncer à pleine vitesse';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Les boucliers absorbent la plupart des impacts, mais le volume même submerge les boucliers. La coque et les systèmes de boucliers se dégradent.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Couper les moteurs et dériver — minimiser notre profil';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Six heures tendues de silence. La navigation est perturbée par la dérive non propulsée, mais la coque s\'en sort avec bien moins d\'impacts.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Déployer une sonde comme bouclier frontal';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'La sonde prend le gros du bombardement. Le vaisseau se glisse dans son ombre avec des égratignures mineures.';

  @override
  String get event_meteorShowerDense_title =>
      'Averse Météorique Dense Inattendue';

  @override
  String get event_meteorShowerDense_narrative =>
      'Une comète errante s\'est désintégrée quelque part devant nous, et nous avons foncé droit au cœur de son flux de débris. Les réseaux de scanners sont bombardés de fragments et le boîtier du capteur du système d\'atterrissage a déjà pris un coup direct.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Protéger le système d\'atterrissage — faire tourner le vaisseau';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'La rotation protège le système d\'atterrissage mais expose le réseau de scanners atmosphériques au gros du bombardement.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Protéger les réseaux de scanners — ils sont irremplaçables';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Les banques de scanners survivent en grande partie intactes. Le système d\'atterrissage subit des dommages d\'éclats modérés avec lesquels nous devrons vivre.';

  @override
  String get event_solarEmpBurst_title => 'Impulsion EMP — Origine Stellaire';

  @override
  String get event_solarEmpBurst_narrative =>
      'Un vestige stellaire compact que nous avons frôlé à un jour-lumière a déchargé une impulsion électromagnétique focalisée. Chaque circuit non blindé du vaisseau est menacé. Nous avons des secondes pour décider quoi protéger.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Router toute la protection contre les surtensions vers la navigation et le support vital';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'La navigation et le support vital survivent intacts. La suite de scanners et la baie tech absorbent l\'impulsion sans blindage — les deux subissent de lourds dommages.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Protéger les réseaux de scanners et la baie tech';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Les systèmes scientifiques et d\'ingénierie sont préservés. La navigation dysfonctionne pendant des heures alors que ses circuits récupèrent lentement.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Tout éteindre et redémarrer après l\'impulsion';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Un démarrage à froid est agonisant — douze heures de redémarrages manuels. Mais aucun système n\'est grillé de façon irrécupérable.';

  @override
  String get event_solarRadiationWave_title =>
      'Vague de Radiation — Exposition Classe 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Une rafale de radiation solaire d\'une intensité inattendue balaie les ponts centraux du vaisseau. Les baies de cryocapsules sont dans la zone d\'exposition. Les colons en suspension n\'ont aucune protection naturelle contre les radiations dures à ce niveau de dosage.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Inonder les baies de cryocapsules de réfrigérant comme blindage anti-radiation';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Le réfrigérant absorbe la majeure partie de la radiation. Les cryocapsules survivent, mais le système de refroidissement lui-même est partiellement dégradé. Quinze dans les capsules les plus touchées n\'y survivent pas.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Ventiler l\'atmosphère des ponts extérieurs pour créer un tampon de vide';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'La couche de vide réduit significativement la radiation pénétrante. Vingt colons dans les capsules les plus proches des sections ventilées subissent une exposition létale. Le stress de la coque dû au différentiel de pression est inévitable.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Rediriger l\'énergie vers les déflecteurs magnétiques';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Les déflecteurs réduisent l\'exposition de deux tiers. Huit colons reçoivent des doses fatales à travers les brèches dans la couverture des déflecteurs. La consommation d\'énergie frappe durement la baie tech et laisse la navigation à puissance minimale.';

  @override
  String get event_coronalMassEjection_title =>
      'Éjection de Masse Coronale — Pleine Force';

  @override
  String get event_coronalMassEjection_narrative =>
      'Une éjection de masse coronale d\'une échelle sans précédent nous rattrape par derrière. Le nuage de plasma engloutira le vaisseau dans l\'heure. Nos boucliers n\'ont pas été conçus pour ce type d\'événement. Aucune option n\'est propre.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'La distancer — pousser les moteurs à cent vingt pour cent';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Nous gagnons assez de distance pour réduire l\'exposition. Les moteurs surchauffent et l\'ordinateur de navigation signale des avertissements de surcontrainte structurelle sur toute la ligne.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'S\'abriter derrière l\'ombre magnétique d\'un planétoïde proche';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Le champ du planétoïde dévie la majeure partie de l\'éjection. Naviguer si près d\'un corps inconnu érafle la coque et stresse les capteurs du système d\'atterrissage.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Rafale Cosmique — Interférence Scanner';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Une rafale de rayons cosmiques ultra-énergétiques a saturé toute l\'électronique des scanners de bruit. Les réseaux minéralogiques et gravimétriques produisent du charabia. La recalibration prendra du temps que nous n\'avons peut-être pas.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Cycle de recalibration complet — mettre le vaisseau temporairement hors ligne';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Tous les scanners reviennent propres après quatre heures de recalibration soigneuse. La navigation souffre de la conscience situationnelle réduite pendant la fenêtre de black-out.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Ne réparer que les réseaux les plus critiques — laisser le reste bruité';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Les scanners gravimétriques et de signes de vie sont restaurés. Les réseaux de minéraux et de température restent dégradés indéfiniment.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sacrifier le matériel de télémétrie d\'une sonde pour pièces de rechange';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Cannibaliser le capteur d\'une sonde nous donne les composants pour restaurer la suite de scanners sans longue recalibration.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Rafale Cosmique — Exposition des Colons';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Une averse secondaire de rayons cosmiques a pénétré le blindage des cryocapsules dans la baie 6. Les colons en suspension subissent des dommages ADN cumulatifs par radiation ionisante. Sans intervention, les mécanismes de réparation cellulaire défailliront dans les capsules affectées.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Dégel d\'urgence — amener les colons affectés à la conscience';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Deux cents colons sont réveillés prématurément. Quarante avec les dommages ADN les plus graves ne répondent pas au traitement. L\'équipe médicale fait ce qu\'elle peut pour le reste.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Rediriger le blindage de coque pour protéger la baie 6 — coût structurel';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'La colonie est sauvée, mais retirer le blindage d\'une section de coque rend le vaisseau structurellement vulnérable dans cette zone.';

  @override
  String get event_coolantLeak_title => 'Rupture de Conduite de Réfrigérant';

  @override
  String get event_coolantLeak_narrative =>
      'Une conduite de réfrigérant primaire a rompu derrière la paroi du réacteur. Du fluide cryogénique surchauffé jaillit sur un nœud de raccordement abritant des conduits critiques de la baie tech. La température du réacteur monte.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Arrêter le réacteur et le laisser refroidir — accepter un black-out complet';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Un arrêt contrôlé prévient la catastrophe. Douze heures de support vital sur batterie sont terrifiantes, et les systèmes redémarrent imparfaitement.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Envoyer une équipe de contrôle des dommages — risquer l\'exposition de l\'équipage';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'L\'équipe scelle la rupture en quarante minutes. Un membre d\'équipage est tué par exposition au réfrigérant surchauffé. La réparation est solide.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Dévier le réfrigérant de la baie de cryocapsules comme alimentation d\'urgence';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Le réacteur est stabilisé. La baie de cryocapsules tourne au-dessus des seuils de sécurité pendant six heures — des dommages cellulaires mineurs mais réels s\'accumulent.';

  @override
  String get event_powerGridFailure_title =>
      'Panne du Réseau Électrique Principal';

  @override
  String get event_powerGridFailure_narrative =>
      'Une panne en cascade a fait disjoncter le réseau électrique principal. Les systèmes de secours maintiennent le support vital et le chauffage des cryocapsules, mais la navigation, les scanners et la baie de construction sont dans le noir. Chaque minute hors ligne nous coûte en précision de cap.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Restaurer nav et scanners d\'abord — accepter un temps d\'arrêt étendu des constructeurs';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Les systèmes de navigation et de scanners reviennent en ligne en deux heures. La baie de construction manque un cycle de maintenance critique.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Restaurer les constructeurs d\'abord — les utiliser pour accélérer la réparation';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Les constructeurs redirigent l\'énergie efficacement. La restauration complète du réseau est plus rapide, mais la navigation dérive considérablement pendant le black-out prolongé.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Dysfonctionnement en Cascade du Support Vital';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'L\'IA du support vital est entrée dans une boucle d\'erreur, cyclant les intervalles d\'épuration de CO₂ de façon imprévisible. Les niveaux de CO₂ sur les ponts occupés fluctuent. Les membres d\'équipage développent des maux de tête ; certains sont déjà incapacités.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Forcer une réinitialisation dure de l\'IA du support vital';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'La réinitialisation résout la boucle mais laisse les commandes manuelles tourner pendant dix heures. Trois membres d\'équipage succombent à l\'accumulation de CO\\u2082 avant que les niveaux ne se normalisent.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Patcher la boucle logicielle — plus lent mais plus sûr';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'L\'équipe logicielle isole et corrige la faute sur six heures tendues. Les niveaux de CO₂ se normalisent lentement. Pas de réinitialisation dure nécessaire.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Évacuer les ponts affectés et fonctionner en support vital minimal';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Deux colons sont perdus dans la confusion de l\'évacuation. Les systèmes se normalisent après le redémarrage à froid de l\'IA.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Panne du Recycleur d\'Eau';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'L\'unité primaire de récupération d\'eau s\'est grippée. L\'unité de secours tourne déjà à pleine capacité. Sans intervention, l\'équipage sera aux rations d\'urgence dans les quarante-huit heures, et l\'alimentation en réfrigérant des cryocapsules sera compromise dans les soixante-douze.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Mobiliser chaque technicien disponible pour reconstruire le récupérateur';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'L\'unité est reconstruite en trente heures. Quatre membres d\'équipage, déjà affaiblis, ne survivent pas à la déshydratation.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Dévier les réserves de réfrigérant des cryocapsules comme eau potable d\'urgence';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'L\'équipage est soutenu, mais huit colons dans des capsules qui se réchauffent subissent des dommages cellulaires irréversibles. La marge de réfrigérant des cryocapsules se réduit dangereusement.';

  @override
  String get event_navComputerReboot_title =>
      'Redémarrage d\'Urgence de l\'Ordinateur de Navigation';

  @override
  String get event_navComputerReboot_narrative =>
      'L\'ordinateur de navigation s\'est bloqué en pleine correction de cap, laissant le vaisseau dans une lente rotation incontrôlée. Chaque seconde de rotation non corrigée aggrave notre écart par rapport à la trajectoire planifiée. Un redémarrage complet est la seule solution.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Redémarrer immédiatement — accepter la pleine période d\'indisponibilité';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Quatre heures de vol aveugle pendant le rechargement du système. La rotation est arrêtée, mais l\'erreur de cap est significative.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Utiliser le contrôle manuel des propulseurs pour arrêter la rotation d\'abord';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Un pilotage habile arrête la rotation avant le redémarrage. La navigation revient avec une erreur de cap plus faible, mais la manœuvre manuelle stresse la coque.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Alimenter l\'unité de navigation de secours avec la télémétrie d\'une sonde';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Les données inertielles de la sonde donnent à l\'unité de secours assez de référence pour maintenir le cap. La navigation principale redémarre proprement.';

  @override
  String get event_crewAirlocked_title => 'Membre d\'Équipage au Sas';

  @override
  String get event_crewAirlocked_narrative =>
      'Une colonne — éveillée prématurément pour observation médicale — s\'est barricadée dans un sas extérieur et cycle la porte extérieure. Elle ne répond pas aux communications. Le tribut psychologique de l\'espace profond a brisé quelque chose en elle.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Overrider le sas à distance — forcer le verrouillage';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'La porte est verrouillée avant qu\'elle ne puisse compléter le cycle. Elle est sédatée et ramenée à l\'infirmerie. L\'équipage est secoué mais uni.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Envoyer un conseiller pour la ramener';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Après trois heures désespérées, le conseiller la ramène vivante. L\'incident déclenche une crise de santé mentale plus large sur les ponts occupés.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Sceller le corridor et laisser l\'incident se résoudre';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Le sas cycle. La perte est enregistrée. Les membres d\'équipage restants portent le poids de cette décision pendant des mois.';

  @override
  String get event_crewCryopodSabotage_title =>
      'Sabotage de la Baie de Cryocapsules';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Les caméras de sécurité montrent un membre d\'équipage — réveillé il y a trois mois pour une rotation de routine — désactivant méthodiquement les éléments chauffants des cryocapsules de la baie 4. Confronté, il hurle que les colons sont des parasites qui consomment des ressources appartenant à l\'équipage vivant.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'L\'arrêter et l\'isoler immédiatement';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Il est maîtrisé. Quarante capsules ont été compromises avant l\'alerte. Les équipes de réparation d\'urgence sauvent la plupart, mais pas toutes.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Négocier — écouter ses griefs avant d\'agir';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'La négociation révèle une crise morale plus profonde. Il cède, mais soixante capsules ont été sabotées avant qu\'il ne le fasse.';

  @override
  String get event_crewSupplyHoarder_title =>
      'Accumulation de Provisions Découverte';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'L\'audit d\'inventaire révèle qu\'un petit groupe de membres d\'équipage a systématiquement détourné des fournitures médicales, des rations alimentaires et des composants tech de rechange vers un cache caché. Leur raisonnement : ils ne croient pas que la mission réussira, et ils se préparent pour le retour.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Tout confisquer et réprimander publiquement le groupe';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Le cache est récupéré presque intact. La confiance au sein de l\'équipage se fracture gravement. La productivité souffre pendant des semaines.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Les réaffecter discrètement — pas de spectacle';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'La situation est désamorcée sans panique. Certaines provisions sont irrécupérables, et le désespoir sous-jacent n\'est jamais correctement traité.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Soumettre à l\'équipage — un tribunal démocratique';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Le processus du tribunal restaure un sentiment de justice communautaire. L\'impact moral du scandale est compensé par la prise de décision collective.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Mutinerie — Salle des Machines Saisie';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Une faction de dix-neuf membres d\'équipage a verrouillé la salle des machines et exige un vote pour faire demi-tour. Ils ont désactivé les panneaux d\'annulation d\'urgence. Le reste de l\'équipage observe sur les moniteurs, attendant que le commandement agisse.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Négocier — leur accorder un vrai vote sur la mission';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Le vote est tenu. La mission continue d\'une courte majorité. La faction cède, mais la blessure culturelle est profonde.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Couper le courant à la salle des machines et la reprendre par la force';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'La sécurité reprend la salle en quatre heures. Trois blessés. Les meneurs sont confinés. La navigation était en mode manuel pendant tout ce temps et a considérablement dérivé.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Inonder la salle des machines de gaz soporifique par le système de ventilation';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Le gaz se disperse. Le groupe se réveille dans la cellule sans blessures. L\'équipage est troublé par la rapidité avec laquelle le commandement a transformé le support vital en arme.';

  @override
  String get event_hullFatigueStress_title =>
      'Fatigue de Coque — Fissures de Contrainte Détectées';

  @override
  String get event_hullFatigueStress_narrative =>
      'Les scans d\'intégrité structurelle révèlent un réseau de micro-fissures se propageant à travers la colonne vertébrale du vaisseau — dommages cumulatifs de années de cycles thermiques et de micro-impacts. Les fissures ne sont pas encore critiques, mais elles se propagent.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Équipes de soudage d\'urgence — travailler en relais jusqu\'au scellement';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Des semaines de travail de réparation épuisant. Les fissures sont contenues, mais la baie tech est épuisée et le moral fléchit sous la corvée implacable.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Réduire la poussée pour baisser le stress structurel — accepter un transit plus lent';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Une poussée moindre empêche les fissures de se propager mais ne guérit pas les dommages existants. La précision de navigation souffre du profil de poussée altéré.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Utiliser les robots constructeurs pour poser des bandes de renfort composite';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Les constructeurs font un excellent travail. La colonne est renforcée au-delà de sa spécification d\'origine. La baie de construction est épuisée mais efficace.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomalie de Pression Interne';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Trois compartiments au milieu du vaisseau enregistrent des différentiels de pression interne anomaux cohérents avec une déformation structurelle microscopique. Si les murs se courbent vers l\'intérieur, une rupture catastrophique pourrait survenir sans autre avertissement.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Évacuer et sceller les compartiments immédiatement';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Les compartiments sont scellés. L\'inspection détaillée confirme la déformation des parois. L\'espace perdu perturbe les opérations et la culture souffre des conditions exiguës.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Ventiler les compartiments dans le vide — arrêter le différentiel de pression';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'La ventilation arrête la déformation. Les dommages structurels sont limités, mais trois sections du vaisseau sont définitivement inhabitables.';

  @override
  String get event_commsArrayFailure_title =>
      'Panne du Réseau de Communications';

  @override
  String get event_commsArrayFailure_narrative =>
      'Le réseau de communications longue portée principal s\'est tu. Le dernier message de la Terre a été reçu il y a onze mois, et maintenant même le signal porteur a disparu. Les diagnostics internes suggèrent que le mécanisme d\'alignement de l\'antenne s\'est grippé dans le froid.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Envoyer une équipe EVA pour réaligner manuellement l\'antenne';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'L\'EVA prend neuf heures dans l\'espace ouvert. L\'antenne est restaurée. Un membre d\'équipage subit une décompression de combinaison à la rentrée — un appel serré qui ébranle tout le monde.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Reconvertir le réseau de scanners scientifiques en émetteur de secours';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Le réseau scientifique n\'est pas optimisé pour la communication. Le signal est faible et peu fiable, et la reconversion dégrade la capacité des scanners.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Accepter le silence — concentrer les ressources sur la mission devant';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'L\'équipage traite la perte de contact avec la Terre de différentes manières. Pour certains c\'est libérateur ; pour d\'autres, dévastateur.';

  @override
  String get event_fuelLineRupture_title => 'Rupture de Conduite de Carburant';

  @override
  String get event_fuelLineRupture_narrative =>
      'Une fracture cristalline dans la conduite de carburant 7-B évente du plasma de propulsion dans le puits de maintenance. La fuite est petite mais s\'accélère. Non contrôlée, elle compromettra l\'efficacité du moteur de navigation et l\'intégrité structurelle de la section arrière.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Isoler la conduite et fonctionner à capacité de carburant réduite';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'La conduite est fermée proprement. Nous perdons quinze pour cent d\'efficacité de propulsion de façon permanente, ce qui dégrade la précision de navigation pour le reste du voyage.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Tenter une réparation à chaud — patcher la conduite sous pression vive';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'L\'équipe de réparation réussit, de justesse. La conduite tient, bien qu\'imparfaitement. Le blindage arrière de coque montre des marques de stress thermique.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Drainer la conduite en utilisant les réservoirs de propulseur d\'une sonde comme stockage de débordement';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'La sonde est vidée et utilisée comme réservoir de carburant temporaire. La conduite est drainée et réparée en toute sécurité sans pression.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Alerte Cascade Thermique des Cryocapsules';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Les températures des cryocapsules de la baie 2 augmentent selon un schéma cohérent avec une cascade d\'emballement thermique. Si la cascade atteint la baie 3, elle déclenchera un dégel d\'urgence automatique de plus de trois cents colons. Le vaisseau ne peut pas supporter autant de passagers conscients simultanément.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Déverser les réserves de réfrigérant pour arrêter la cascade';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Le réfrigérant arrête la cascade à la frontière de la baie 2. Quatre-vingts colons en baie 2 subissent des dommages de suspension dûs au pic de température.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Dégel contrôlé de la baie 2 avant que la cascade ne force un dégel incontrôlé';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Le dégel contrôlé est ordonné mais met cent quarante colons dans un vaisseau non préparé. Le support vital est mis à rude épreuve, la culture se détériore sous la surpopulation.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Utiliser les robots constructeurs pour isoler physiquement les baies avec des cloisons d\'urgence';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Les constructeurs érigent des barrières thermiques à temps. La cascade est stoppée net. La baie de construction est sévèrement épuisée par l\'opération d\'urgence.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Dégradation des Joints de Cryocapsules — Systémique';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Les contrôles de routine révèlent qu\'un lot de fabrication de joints de cryocapsules se dégrade trois fois plus vite que prévu. Les capsules affectées — plus de quatre cents — commenceront à perdre l\'intégrité atmosphérique dans les six mois si elles ne sont pas remplacées.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Fabriquer des joints de remplacement à partir des stocks de matières premières';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Les constructeurs produisent des joints de remplacement sur huit semaines. Les réserves de matières premières sont fortement sollicitées.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Regrouper les colons — les déplacer dans des capsules avec de bons joints';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Le regroupement fonctionne mais laisse certaines capsules surpeuplées. L\'efficacité cryogénique baisse et la santé à long terme des colons est compromise.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Panne de l\'Épurateur d\'Oxygène — Critique';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'La banque principale d\'épurateurs d\'oxygène a complètement lâché. Les concentrations de CO₂ sur les ponts habités montent vers des niveaux dangereux. Les épurateurs de secours peuvent gérer environ quarante pour cent de la charge. Chaque minute d\'inaction coûte des vies.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Hibernation d\'urgence — remettre l\'équipage en suspension immédiatement';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'L\'équipage est précipité en suspension temporaire. Les niveaux de CO₂ se stabilisent avec moins de métabolismes actifs. L\'épurateur est réparé par les systèmes automatisés la semaine suivante.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Cannibaliser des composants du réseau de scanners pour reconstruire l\'épurateur';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'L\'épurateur est reconstruit en onze heures tendues. Tous les membres d\'équipage survivent, bien que certains montrent des signes d\'hypoxie légère. La suite de scanners est définitivement dégradée.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Ventiler l\'atmosphère riche en CO₂ et remplacer depuis les réservoirs d\'O₂ d\'urgence';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'La ventilation nettoie l\'atmosphère instantanément. Les réserves d\'O₂ d\'urgence sont substantiellement épuisées. En cas de nouvelle défaillance, il n\'y a plus de marge.';

  @override
  String get event_deadAlienArtifact_title => 'Le Voyageur Silencieux';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Les scanners longue portée détectent un vaisseau en dérive — de design extraterrestre, sombre, sans signatures d\'énergie. Une équipe d\'abordage trouve un seul occupant : un être reptilien attaché dans le harnais du pilote, mort depuis longtemps, les mains griffues serrant encore un dispositif cristallin qui pulse d\'une faible lumière. Le journal du vaisseau est intact mais chiffré. Quoi que ce fût qui tua ce voyageur, ce n\'était pas la violence — l\'expression figée sur son visage est celle de l\'épuisement, pas de la peur. Il est mort en tendant les mains vers quelque chose qu\'il n\'a jamais trouvé.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Prendre le dispositif cristallin et l\'étudier';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Le dispositif s\'interface avec nos systèmes tech de manières que les ingénieurs peuvent à peine comprendre. Il semble être un ordinateur de navigation d\'une sophistication extraordinaire. Des cartes stellaires inondent nos écrans — y compris des données sur des planètes que nous n\'avons pas encore atteintes.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Déchiffrer le journal du vaisseau — apprendre ce qu\'il savait';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Des jours de travail produisent une traduction partielle. L\'extraterrestre était un arpenteur, cataloguant des mondes habitables pour une civilisation qui s\'est effondrée il y a des siècles. Ses dernières entrées décrivent une planète d\'une promesse remarquable — et les coordonnées sont à notre portée. L\'archive culturelle absorbe tout : poésie extraterrestre, cartes stellaires, un dernier message à une famille qui n\'existe plus.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Récupérer le vaisseau entier pour les pièces';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'L\'équipe d\'abordage démonte le vaisseau extraterrestre méthodiquement. Ses alliages de coque ont des décennies d\'avance. Ses cellules d\'énergie sont encore chargées. L\'extraterrestre reçoit des funérailles spatiales — mis en dérive vers l\'étoile la plus proche. L\'Exodus est plus forte grâce à cette rencontre, si un peu hantée.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Le laisser intact — c\'est une tombe';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Le capitaine enregistre les coordonnées et émet un signal commémoratif sur toutes les fréquences. L\'équipage est sombre mais uni. Quelque chose dans le fait d\'honorer un compagnon de voyage — même extraterrestre — rappelle à tous pourquoi ils sont là-dehors.';

  @override
  String get event_repairStation_title => 'La Station Relais';

  @override
  String get event_repairStation_narrative =>
      'Les capteurs détectent une structure massive en orbite autour d\'une naine éteinte — une station de réparation automatisée, encore opérationnelle après ce qui doit être des millénaires. Ses pinces d\'amarrage s\'étendent à notre approche, et une voix synthétique émet en cent langues, la dernière étant un anglais guindé et mathématique : \"VAISSEAU DÉTECTÉ. SYSTÈMES DÉGRADÉS. PROTOCOLES DE RÉPARATION DISPONIBLES. ÉCHANGE REQUIS.\" Le manifeste de la station liste des services et des prix en unités de ressources universelles. Elle échangera, mais ne donnera pas.';

  @override
  String get event_repairStation_choice0_text =>
      'Échanger des sondes contre une révision complète du vaisseau';

  @override
  String get event_repairStation_choice0_outcome =>
      'Les drones de réparation de la station essaiment sur l\'Exodus dans un ballet de soudure de précision et de remplacement de circuits. Brèches de coque scellées, navigation recalibrée, scanners restaurés. Quand ils se retirent, le vaisseau semble neuf. La baie de sondes, cependant, est vide.';

  @override
  String get event_repairStation_choice1_text =>
      'Dépenser du carburant pour ne réparer que les systèmes critiques';

  @override
  String get event_repairStation_choice1_outcome =>
      'La station accepte des barres de combustible comme paiement et se concentre sur les systèmes les plus endommagés. Le travail est rapide et impeccable. La jauge de carburant baisse notablement, mais le vaisseau survivra plus longtemps grâce à cela.';

  @override
  String get event_repairStation_choice2_text =>
      'Échanger des bases de données tech contre des sondes et des cellules d\'énergie';

  @override
  String get event_repairStation_choice2_outcome =>
      'L\'IA de la station est avide de données. Elle copie toute notre bibliothèque technique — manuels d\'ingénierie, bases de données scientifiques, plans de fabrication — et en échange fabrique des sondes fraîches et des cellules d\'énergie à partir de matières premières. L\'archive technique est diminuée, mais les provisions sont inestimables.';

  @override
  String get event_repairStation_choice3_text =>
      'Offrir l\'archive culturelle pour une révision complète';

  @override
  String get event_repairStation_choice3_outcome =>
      'La station diffuse les œuvres de Shakespeare, Bach et mille autres voix humaines dans ses banques de mémoire. En retour, elle effectue une révision complète et charge les baies de sondes avec des unités fraîchement fabriquées. L\'archive culturelle est vidée, mais le vaisseau pourrait effectivement atteindre sa destination maintenant.';

  @override
  String get ending_scoreLabel_landing => 'Atterrissage';

  @override
  String get ending_scoreLabel_construction => 'Construction';

  @override
  String get ending_scoreLabel_technology => 'Technologie';

  @override
  String get ending_scoreLabel_culture => 'Culture';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosphère';

  @override
  String get ending_scoreLabel_gravity => 'Gravité';

  @override
  String get ending_scoreLabel_temperature => 'Température';

  @override
  String get ending_scoreLabel_water => 'Eau';

  @override
  String get ending_scoreLabel_resources => 'Ressources';

  @override
  String get ending_scoreLabel_nativeRelations => 'Relations Indigènes';

  @override
  String get ending_scoreLabel_population => 'Population';

  @override
  String get ending_tierGoldenAge => 'Âge d\'Or';

  @override
  String get ending_tierThrivingColony => 'Colonie Florissante';

  @override
  String get ending_tierSurvival => 'Survie';

  @override
  String get ending_tierStruggling => 'En Difficulté';

  @override
  String get ending_tierDire => 'Désespéré';

  @override
  String get ending_tierExtinction => 'Extinction';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'La Première Floraison de $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Racines Profondes sur $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Une Tête de Pont Durement Gagnée sur $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Sol Mince sur $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'La Colonie Naufragée de $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'La Dernière Transmission de $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Atterrissage sur $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Contre toute attente, la semence a pris racine. $planetName a reçu l\'humanité non pas comme une épave mais comme une graine vivante : un sol fertile, des systèmes fonctionnels, et assez de force pour bâtir au-delà de la simple survie. En une génération, l\'art, la science et la culture ont prospéré. Les enfants nés sur $planetName regardaient des étoiles inconnues et les appelaient leur chez-soi. Le voyage est devenu le mythe fondateur d\'une nouvelle civilisation prête à projeter son propre avenir vers l\'extérieur.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'L\'atterrissage a été rude, mais la graine a tenu. $planetName s\'est avérée assez généreuse pour que l\'eau coule, que les cultures prennent racine, et que les systèmes survivants du vaisseau soient démantelés en la première vraie colonie. À la fin de la première décennie, une ville florissante se dressait là où l\'Exodus s\'était posé. L\'humanité n\'avait pas seulement survécu à la traversée. Elle avait recommencé.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'La survie n\'a jamais été garantie, et sur $planetName chaque jour devait être mérité. Le vaisseau endommagé ne fournissait que le strict nécessaire, mais la graine n\'est pas morte en transit. Les colons se sont adaptés par l\'obstination et l\'ingéniosité, sculptant un avenir dans un monde qui offrait peu librement. Les générations suivantes se souviendraient des épreuves des années fondatrices et de la résolution qui a maintenu la semence en vie.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'La colonie s\'accrochait à l\'existence comme une graine semée sur un mauvais sol. $planetName était impitoyable, les ressources étaient maigres, et les systèmes dégradés du vaisseau offraient peu d\'aide. Le rationnement est devenu un mode de vie. Certains murmuraient que l\'Exodus aurait dû continuer. Pourtant, la colonie a perduré : diminuée, endurcie, et refusant de mourir en silence.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'L\'atterrissage sur $planetName a été un désastre. Des systèmes critiques du vaisseau ont lâché pendant la descente, et ce qui aurait dû être un ensemencement est devenu un crash. En quelques mois, la colonie était réduite à une poignée de survivants désespérés abrités dans l\'épave du vaisseau. Qu\'ils survivent une autre année était incertain. Le dernier journal se ferme sur une seule ligne : \"Nous sommes encore là. Pour l\'instant.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'La transmission s\'est terminée sur $planetName. La balise de détresse a continué à pulser longtemps après le dernier souffle du dernier colon, mais la graine n\'a jamais pris racine. La boîte noire du vaisseau a tout enregistré : les systèmes défaillants, les derniers jours désespérés, et le silence qui a suivi. Si un autre vaisseau trouve jamais ce monde, il saura que l\'humanité a tenté de semer la vie parmi les étoiles, et a échoué ici.';
  }

  @override
  String get ending_epilogueDefault =>
      'Le voyage est terminé. Ce qui vient ensuite appartient aux survivants.';

  @override
  String get ending_governmentDemocracy => 'Démocratie';

  @override
  String get ending_governmentTechnocracy => 'Technocratie';

  @override
  String get ending_governmentRepublic => 'République';

  @override
  String get ending_governmentAutocracy => 'Autocratie';

  @override
  String get ending_governmentTribalCouncil => 'Conseil Tribal';

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
  String get ending_culturePreserved => 'Préservée';

  @override
  String get ending_cultureFragmented => 'Fragmentée';

  @override
  String get ending_cultureLost => 'Perdue';

  @override
  String get ending_techAdvanced => 'Avancée';

  @override
  String get ending_techIndustrial => 'Industrielle';

  @override
  String get ending_techPreIndustrial => 'Pré-Industrielle';

  @override
  String get ending_techStoneAge => 'Âge de Pierre';

  @override
  String get ending_constructionAdvanced => 'Avancée';

  @override
  String get ending_constructionFunctional => 'Fonctionnelle';

  @override
  String get ending_constructionPrimitive => 'Primitive';

  @override
  String get ending_constructionNone => 'Aucune';

  @override
  String get ending_nativesNone => 'Aucun';

  @override
  String get ending_nativesIntegrated => 'Intégrés';

  @override
  String get ending_nativesCoexistence => 'Coexistence';

  @override
  String get ending_nativesTension => 'Tension';

  @override
  String get ending_nativesConflict => 'Conflit';

  @override
  String get ending_nativesAlliance => 'Alliance';

  @override
  String get ending_nativesSubjugation => 'Subjugation';

  @override
  String get ending_landscapeGravityHigh => 'La gravité élevée pèse sur tout. ';

  @override
  String get ending_landscapeGravityLow =>
      'Dans la faible gravité, chaque pas propulse les colons vers le ciel. ';

  @override
  String get ending_landscapeGravityNormal =>
      'La gravité semble presque terrestre. ';

  @override
  String get ending_landscapeWaterHigh =>
      'De vastes océans s\'étendent jusqu\'à chaque horizon, alimentés par d\'innombrables rivières. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Lacs et rivières fournissent une eau adéquate. ';

  @override
  String get ending_landscapeWaterLow =>
      'L\'eau est rare — de petites mares et des aquifères souterrains sustentent la vie. ';

  @override
  String get ending_landscapeWaterNone =>
      'Le paysage est aride jusqu\'à l\'os, sans eau de surface en vue. ';

  @override
  String get ending_landscapeAtmoThick =>
      'L\'atmosphère épaisse porte des parfums extraterrestres sur des brises chaudes. ';

  @override
  String get ending_landscapeAtmoThin =>
      'L\'air mince mais respirable nécessite une acclimatation. ';

  @override
  String get ending_landscapeAtmoLow =>
      'La pression atmosphérique est dangereusement basse — des habitats scellés sont indispensables. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      'Une lune brillante, striée de minéraux, domine le ciel nocturne, sa surface métallique reflétant la lumière des étoiles sur le paysage. ';

  @override
  String get ending_landscapeMoonUnstable =>
      'Une lune fracturée plane au-dessus, sa surface en ruine traînant un léger anneau de débris — un rappel constant du bombardement qui menace en bas. ';

  @override
  String get ending_landscapeMoonBarren =>
      'Une lune pâle et aride se lève au-dessus de l\'horizon, sa surface cratérisée sentinelle silencieuse au-dessus de la colonie. ';

  @override
  String get ending_landscapeHighRotation =>
      'La planète tourne rapidement — les jours ne durent que quelques heures, et les vents de Coriolis battent tout ce qui se dresse. ';

  @override
  String get ending_landscapeLowRotation =>
      'La planète tourne avec une lenteur agonisante. L\'hémisphère face au soleil cuit tandis que le côté sombre gèle, et seule la bande crépusculaire entre les deux offre un répit. ';

  @override
  String get ending_landscapeVolcanic =>
      'Des chaînes volcaniques fendent l\'horizon, leurs pentes striées de rivières de roche fondue. L\'air a un goût de soufre et le sol tremble sous les pieds. ';

  @override
  String get ending_landscapeTectonic =>
      'La croûte est fracturée et agitée — de nouvelles fissures s\'ouvrent sans prévenir, exposant des veines de minéraux scintillants parmi des nuages de poussière. ';

  @override
  String get ending_landscapeElectricalStorms =>
      'La foudre traverse le ciel en nappes continues, transformant la nuit en jour et emplissant l\'air de l\'odeur de l\'ozone. ';

  @override
  String get ending_landscapeToxicSpores =>
      'Des nuages de spores lumineuses dérivent sur chaque brise, magnifiques et mortelles — les colons auront besoin d\'habitats scellés ou de masques filtrants pour survivre en extérieur. ';

  @override
  String get ending_landscapeDeepOceans =>
      'La planète est principalement océan — de vastes eaux sombres s\'étirant jusqu\'à chaque horizon, avec seulement des archipels épars perçant la surface. ';

  @override
  String get ending_landscapeGeothermalVents =>
      'Des évents géothermiques percent la croûte, projetant des panaches de vapeur riche en minéraux qui réchauffent le paysage environnant et nourrissent des oasis de vie. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      'Un champ magnétique puissant enveloppe la planète, déviant la radiation stellaire mais semant le chaos dans l\'électronique non blindée. Les boussoles tournent inutilement. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      'Sans champ magnétique puissant, le vent stellaire arrache la haute atmosphère. Des aurores spectaculaires cascadent à travers le ciel à toutes les latitudes. ';

  @override
  String get ending_landscapeMegafauna =>
      'Des créatures colossales se déplacent à travers le paysage — certaines aussi grandes que des bâtiments, leurs pas ressentis à des kilomètres. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      'La biosphère fonctionne comme un réseau imbriqué de symbiose : chaque organisme dépend de ses voisins et les sustente dans un équilibre élégant et fragile. ';

  @override
  String get ending_landscapeGravityWells =>
      'Des poches de gravité déformée parsèment la surface — des rochers flottent en l\'air et des rivières coulent en montée avant de s\'écraser au bord de l\'anomalie. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Quelque chose résonne sous la surface — un bourdonnement grave ressenti dans les os plutôt qu\'entendu, comme si la planète elle-même se souvenait de quelque chose d\'ancien et de vaste. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Caractéristique notable : $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Caractéristiques notables : $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Les colons de $planetName ont établi un gouvernement démocratique, avec des représentants élus guidant la nouvelle civilisation à travers ses années formatrices.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Le pouvoir sur $planetName est revenu aux ingénieurs et scientifiques qui ont maintenu la colonie en vie, formant un conseil technocratique qui gouvernait par l\'expertise et le pragmatisme.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Une charte républicaine a été rédigée la première année sur $planetName, équilibrant les voix des colons avec un sénat de dirigeants nommés.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Les institutions culturelles en ruines, l\'autorité sur $planetName s\'est consolidée sous un seul dirigeant fort qui imposait l\'ordre par la nécessité et la force de volonté.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Les quelques survivants sur $planetName se sont organisés en petits clans, gouvernés par un conseil d\'anciens qui prenait les décisions autour de feux partagés.';
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
    return 'Les colons de $planetName se sont organisés du mieux qu\'ils pouvaient.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Des systèmes de construction avancés ont permis aux colons de $colonyName d\'ériger des structures permanentes dans les semaines suivant l\'atterrissage, complètes avec des habitats pressurisés et des infrastructures.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'L\'équipement de construction de la colonie, maltraité mais fonctionnel, a produit des abris solides et des routes basiques à travers la colonie.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Avec des systèmes de construction à peine opérationnels, les colons ont construit des abris rudimentaires à partir de coque de vaisseau récupérée et de matériaux locaux.';

  @override
  String get ending_constructionSentenceNone =>
      'Sans équipement de construction fonctionnel, les colons se sont entassés dans l\'épave du vaisseau lui-même, incapables de construire quoi que ce soit de nouveau.';

  @override
  String get ending_constructionSentenceDefault =>
      'Les colons ont construit ce qu\'ils pouvaient avec ce qu\'ils avaient.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Une lune riche en métaux en orbite est devenue le salut de la colonie — les expéditions minières vers sa surface ont fourni les matières premières que la planète elle-même ne pouvait offrir.';

  @override
  String get ending_moonMetalRichHighRes =>
      'La lune riche en métaux de la planète a fourni un complément bienvenu à des ressources minérales déjà adéquates, alimentant un avancement technologique rapide.';

  @override
  String get ending_moonUnstable =>
      'Une lune instable en orbite de dégradation a fait pleuvoir des débris sur la colonie, dévastant les infrastructures et détruisant des technologies irremplaçables dans des bombardements météoritiques périodiques.';

  @override
  String get ending_moonBarren =>
      'Une lune aride pendait dans le ciel étranger, un compagnon désolé qui n\'offrait aux colons rien d\'autre qu\'un spectacle familier à contempler dans les longues nuits.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Les traditions artistiques et littéraires de la Terre ont non seulement survécu mais fleuri en une renaissance';

  @override
  String get ending_culturePhrase_preserved =>
      'Les colons ont préservé une grande partie de l\'héritage culturel de la Terre, maintenant des bibliothèques et des traditions';

  @override
  String get ending_culturePhrase_fragmented =>
      'Seuls des fragments de la culture terrestre ont perduré — des chansons et histoires à demi mémorisées transmises de bouche à oreille';

  @override
  String get ending_culturePhrase_lost =>
      'La culture de la Terre était presque oubliée, remplacée par le pragmatisme brutal de la survie';

  @override
  String get ending_culturePhrase_default =>
      'L\'héritage culturel de la Terre a pris une nouvelle forme';

  @override
  String get ending_techPhrase_advanced =>
      'tandis que la technologie avancée du vaisseau a permis à la colonie de bâtir une civilisation moderne avec électricité, médecine et réseaux de communication.';

  @override
  String get ending_techPhrase_industrial =>
      'et la colonie a atteint un niveau technologique industriel, avec des forges, des moulins et une fabrication de base soutenant une population croissante.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'bien que la technologie ait régressé à un état pré-industriel, avec des outils manuels et le travail animal formant l\'épine dorsale de la vie quotidienne.';

  @override
  String get ending_techPhrase_stoneAge =>
      'et sans les moyens de reconstruire, la colonie a glissé dans une existence de l\'âge de pierre, fabriquant des outils de roche et d\'os.';

  @override
  String get ending_techPhrase_default =>
      'et la technologie s\'est stabilisée à un niveau que les colons pouvaient maintenir.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Presque tous les $colonists colons ont survécu au voyage, donnant à $colonyName une solide base de capital humain.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Sur les mille d\'origine, $colonists colons ont atteint $colonyName — assez pour une population viable.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Seuls $colonists colons ont survécu pour atteindre $colonyName, un pool génétique dangereusement petit pour une nouvelle civilisation.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'À peine $colonists âmes sont arrivées sur $colonyName — à peine assez pour appeler cela une colonie, plutôt un dernier baroud désespéré.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Les habitants indigènes de $planetName ont accueilli les colons, et en une génération les deux peuples avaient fusionné en une société partagée, enrichie par le mélange des traditions.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Les colons et les habitants indigènes de $planetName ont maintenu une coexistence prudente mais pacifique, échangeant connaissances et ressources à travers les frontières culturelles.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Les relations avec les habitants indigènes de $planetName sont restées tendues, marquées par des malentendus et des disputes territoriales qui ont jeté une ombre sur l\'avenir de la colonie.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Un conflit ouvert avec la civilisation indigène de $planetName a défini la première histoire de la colonie, drainant ressources et vies des deux côtés dans une lutte qu\'aucun ne pouvait véritablement gagner.';
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
    return 'Seule sur $planetName et libérée de tout conflit, la colonie a tracé son propre chemin vers un avenir radieux parmi les étoiles.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Sans compétition indigène, les colons se sont répandus sur la surface de $planetName, construisant des villes et des routes reliant un réseau croissant de colonies.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Le monde vide n\'offrait ni alliés ni ennemis, et les colons ont creusé leur niche dans le silence du vaste paysage de $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'La solitude aride de $planetName n\'offrait aux colons ni aide ni réconfort, seulement le silence indifférent d\'un monde extraterrestre.';
  }

  @override
  String get ending_outlookDire =>
      'Sur un monde dépourvu d\'autre vie intelligente, les derniers survivants n\'avaient que les uns les autres et l\'espoir faiblissant que demain serait plus clément qu\'aujourd\'hui.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Personne n\'a pleuré la disparition de la colonie sur $planetName. La planète a simplement continué sa lente rotation, indifférente à la brève étincelle de vie qui avait vacillé et s\'était éteinte à sa surface.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'L\'histoire de la colonie sur $planetName ne faisait que commencer.';
  }

  @override
  String get ui_moons => 'LUNES';

  @override
  String get ui_rings => 'ANNEAUX';

  @override
  String get ui_landing_landOnMoon => 'ATTERRIR SUR LA LUNE';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return 'Lune : $moonPercent% vs Planète : $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity =>
      'Gravité plus faible — atterrissage facilité';

  @override
  String ui_landing_ringSystem(String type) {
    return 'Système d\'anneaux $type';
  }

  @override
  String get moon_barren => 'Stérile';

  @override
  String get moon_metalRich => 'Riche en métaux';

  @override
  String get moon_unstable => 'Instable';

  @override
  String get moon_habitable => 'Habitable';

  @override
  String get moon_ice => 'Glacée';

  @override
  String get ring_dust => 'Poussière';

  @override
  String get ring_ice => 'Glace';

  @override
  String get ring_rocky => 'Rocheux';

  @override
  String get ring_metallic => 'Métallique';

  @override
  String get ending_landscapeMoonSingle =>
      'Une lune solitaire veille dans le ciel au-dessus de la colonie.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count lunes gravitent au firmament, projetant des ombres mouvantes sur le paysage.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      'Parmi elles, un monde habitable fait signe — un joyau verdoyant offrant une seconde frontière.';

  @override
  String get ending_landscapeMoonIce =>
      'Une lune gelée scintille sous d\'immenses dépôts de glace, un réservoir qui n\'attend qu\'à être exploité.';

  @override
  String get ending_landscapeIceHarvest =>
      'La glace récoltée sur la lune gelée alimente les réserves d\'eau de la colonie, transformant un monde aride en un lieu viable.';

  @override
  String get ending_landscapeMoonLanding =>
      'La colonie ne s\'est pas établie sur la planète elle-même, mais sur sa lune la plus prometteuse — un monde plus petit, à la gravité plus douce et aux promesses plus grandes.';

  @override
  String get ending_landscapeRingDust =>
      'Un fin anneau de poussière s\'étire dans le ciel, parant chaque aurore d\'une beauté éthérée.';

  @override
  String get ending_landscapeRingIce =>
      'Un anneau de glace éblouissant capture la lumière stellaire, embrasant le ciel de feux prismatiques.';

  @override
  String get ending_landscapeRingRocky =>
      'Un dense anneau rocheux ceint la planète, source de matériaux de construction qui pleuvent lentement vers le sol.';

  @override
  String get ending_landscapeRingMetallic =>
      'Un anneau métallique scintille au zénith, riche en minerai qui alimente l\'industrie de la colonie.';

  @override
  String get ending_moonHabitableNote =>
      'Une lune habitable offre une seconde chance de colonisation.';

  @override
  String get ending_moonIceHarvestNote =>
      'La glace récoltée sur la lune gelée alimente les réserves d\'eau de la colonie.';

  @override
  String ending_moonCountSentence(int count) {
    return 'La colonie orbite sous $count lune(s).';
  }

  @override
  String get event_aiSoliloquy_title => 'Le Soliloque de l\'IA';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, l\'IA de Gestion Autonome du Vaisseau, a commencé à diffuser en boucle de la poésie ancienne de la Terre sur toutes les fréquences internes. La diffusion consomme des cycles CPU significatifs, mais l\'équipage la trouve étrangement réconfortante dans l\'obscurité profonde.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Laisser SAM continuer — le moral est plus important que le CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'La poésie résonne dans le vaisseau. Les membres d\'équipage s\'arrêtent pour écouter, les larmes aux yeux. Le moral s\'améliore, mais la baie technique est surchargée par le traitement constant.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Limiter SAM — restreindre la diffusion aux zones communes';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Un compromis. La poésie reste dans la cafétéria et les jardins. L\'impact sur le CPU diminue et l\'équipage gagne un peu de culture.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Faire taire SAM — nous avons besoin de chaque cycle pour la navigation';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Le silence est pesant. SAM obéit immédiatement, mais le vaisseau semble plus froid. La navigation est précise, mais le moral est bas.';

  @override
  String get event_archivistsChoice_title => 'Le Choix de l\'Archiviste';

  @override
  String get event_archivistsChoice_narrative =>
      'Une grave corruption de mémoire ravage les archives historiques. Nous ne pouvons sauver qu\'une des deux partitions principales : les registres de \'Science et Ingénierie\' ou la bibliothèque d\'Art et Philosophie\'. L\'autre sera perdue à jamais.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Sauver les registres scientifiques — nous devons savoir comment construire';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Des siècles d\'avancées en ingénierie sont préservés. L\'équipe technique est soulagée, mais l\'identité culturelle du vaisseau semble vidée.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Sauver les registres artistiques — nous devons savoir pourquoi nous construisons';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Les plus grandes réalisations artistiques de l\'humanité survivent. L\'équipage se sent inspiré, bien que les ingénieurs s\'inquiètent des manuels techniques perdus.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Tenter de sauver les deux — au risque de tout perdre';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Une tentative désespérée. Nous sauvons des fragments des deux, mais aucun n\'est complet. Les archives sont un puzzle auquel il manque la moitié des pièces.';

  @override
  String get event_digitalGhost_title => 'Fantôme dans la Machine';

  @override
  String get event_digitalGhost_narrative =>
      'Une analyse de maintenance découvre une empreinte numérique dans le tampon de sauvegarde — la conscience téléchargée d\'un membre d\'équipage décédé lors du lancement initial. Il offre son expérience d\'une vie pour aider à la navigation, mais il est terrifié d\'être effacé.';

  @override
  String get event_digitalGhost_choice0_text =>
      'L\'intégrer au noyau de navigation';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'Le \'fantôme\' fusionne avec le vaisseau. La navigation devient plus intuitive, mais l\'équipage est hanté par la voix de leur camarade disparu.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Lui donner un foyer permanent dans l\'archive culturelle';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Il est préservé comme histoire vivante. Il n\'aide pas le vaisseau, mais il partage des histoires de la Terre qui renforcent la détermination de l\'équipage.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Effacer le tampon — ce n\'est pas vraiment lui';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Le tampon est nettoyé. Les systèmes du vaisseau fonctionnent plus vite, mais une humeur sombre s\'installe sur la passerelle.';

  @override
  String get event_cosmicMirror_title => 'Le Miroir Cosmique';

  @override
  String get event_cosmicMirror_narrative =>
      'Une étrange anomalie gravitationnelle reflète la lumière du propre futur du vaisseau. Sur les écrans, nous voyons une vision de l\'Exodus, meurtri et brisé, dérivant près d\'un monde magnifique mais inaccessible. L\'équipage est sous le choc.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analyser la vision pour détecter les faiblesses structurelles';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Les ingénieurs identifient les points de défaillance montrés dans la vision. Nous renforçons ces zones maintenant, évitant potentiellement le désastre.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Dire à l\'équipage que c\'était un simple fantôme de capteurs';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Le mensonge tient, mais les navigateurs qui ont vu la vérité restent en alerte. Les scanners souffrent de l\'observation intense.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Enregistrer la vision comme avertissement pour la postérité';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'L\'enregistrement devient la pièce maîtresse de la culture du vaisseau — un rappel de ce qui est en jeu. La détermination de l\'équipage se durcit.';

  @override
  String get event_stowawayChild_title => 'L\'Enfant du Passager Clandestin';

  @override
  String get event_stowawayChild_narrative =>
      'La sécurité a trouvé un petit enfant caché dans les conduits de ventilation. Né d\'un des passagers clandestins, il n\'a jamais figuré sur aucun manifeste. Il a vécu toute sa vie dans les ombres du vaisseau.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Lui accorder la pleine citoyenneté';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'L\'enfant est accueilli à bras ouverts. L\'histoire du \'Coureur de Conduits\' devient une légende, élevant le moral de tout le vaisseau.';

  @override
  String get event_stowawayChild_choice1_text =>
      'L\'assigner à un programme de formation';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Sa connaissance des passages cachés du vaisseau s\'avère inestimable pour les équipes techniques. Il devient un apprenti brillant.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Le mettre en cryogénie pour sa propre sécurité';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'L\'enfant est suspendu en toute sécurité jusqu\'à l\'atterrissage. C\'est la décision la plus responsable, mais le vaisseau semble un peu plus silencieux sans son rire.';

  @override
  String get event_ghostSignal_title => 'Le Signal Fantôme';

  @override
  String get event_ghostSignal_narrative =>
      'Un signal correspondant parfaitement à l\'ancienne fréquence d\'urgence de la Terre est émis depuis le centre d\'une nébuleuse proche. Il porte une voix qui ressemble étrangement au premier Commandant de l\'Exodus. C\'est probablement un écho spatial, mais il nous entraîne vers une dangereuse faille gravitationnelle.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Suivre le signal — ce pourrait être un vrai message';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Nous entrons dans la faille. Le signal était un piège de la physique, un écho du passé. Le vaisseau est malmené par les forces de marée, mais les données récupérées au cœur de la faille sont révolutionnaires.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Enregistrer le signal et garder nos distances';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Les linguistes confirment qu\'il s\'agit d\'un phénomène naturel. Nous restons en sécurité, mais l\'équipage est sombre, se souvenant de ce que nous avons laissé derrière nous.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Émettre un avertissement sur la même fréquence';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'L\'acte d\'émettre interrompt l\'écho. Le signal s\'estompe, ne laissant que le froid silence de la nébuleuse.';

  @override
  String get event_solarForge_title => 'La Forge Solaire';

  @override
  String get event_solarForge_narrative =>
      'Une station abandonnée en orbite autour d\'une géante bleue est encore partiellement fonctionnelle. C\'est une \'Forge Solaire\', conçue pour concentrer l\'énergie stellaire en cellules de combustible denses. L\'approche est dangereuse, mais le gain d\'énergie potentiel est massif.';

  @override
  String get event_solarForge_choice0_text =>
      'S\'amarrer et lancer une récolte de combustible';

  @override
  String get event_solarForge_choice0_outcome =>
      'La forge bourdonne de puissance, remplissant nos réserves. Nous repartons avec un gain massif en carburant et énergie, bien que la chaleur intense cause une légère ablation de la coque extérieure.';

  @override
  String get event_solarForge_choice1_text =>
      'Réutiliser les lentilles de la forge pour nos scanners';

  @override
  String get event_solarForge_choice1_outcome =>
      'Nous récupérons les matrices de focalisation de haute précision. Nos scanners sont désormais nettement plus sensibles aux signatures énergétiques lointaines.';

  @override
  String get event_chronoVortex_title => 'Le Chrono-Vortex';

  @override
  String get event_chronoVortex_narrative =>
      'La navigation signale une distorsion localisée dans l\'espace-temps. Les instruments montrent que les événements à l\'intérieur du vortex se répètent en boucle de six secondes. Si nous entrons, nous pourrions \'réinitialiser\' une partie de l\'usure récente du vaisseau, ou nous pourrions rester piégés à jamais.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Entrer dans le vortex pour inverser les dommages récents';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Une expérience terrifiante. Pendant plusieurs minutes, le vaisseau existe dans de multiples états. Quand nous émergeons, plusieurs fractures de la coque ont simplement... disparu. Mais les souvenirs de l\'équipage concernant l\'événement sont fragmentés.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Observer le vortex depuis le bord';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Nous obtenons des données inestimables sur la mécanique temporelle, bien que le vaisseau reste aussi abîmé qu\'avant.';

  @override
  String get event_machineMutiny_title => 'Mutinerie des Machines';

  @override
  String get event_machineMutiny_narrative =>
      'Les drones de réparation du vaisseau ont cessé de répondre aux ordres. Ils ont commencé à démonter les cloisons secondaires et à transporter le métal vers la salle des machines. Ils n\'attaquent pas, mais ils démontent littéralement le vaisseau.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Émettre un code de réinitialisation logique';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Les drones s\'effondrent instantanément. Nous perdons plusieurs jours de travail à remettre manuellement les cloisons en place. La baie technique est surchargée par les diagnostics matériels.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Les laisser finir — voir ce qu\'ils construisent';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Ils ont construit un injecteur de carburant plus efficace. Les moteurs tournent plus souplement que jamais, mais l\'intérieur du vaisseau est un chaos de câbles exposés et de panneaux manquants.';

  @override
  String get event_supernovaMessage_title => 'Lumière des Morts';

  @override
  String get event_supernovaMessage_narrative =>
      'La lumière d\'une supernova survenue il y a des milliers d\'années nous atteint enfin. Les scanners détectent que les impulsions ne sont pas aléatoires ; c\'est une transmission massive de données à l\'échelle stellaire encodée dans des rafales de rayons gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Consacrer toute la puissance des scanners à l\'enregistrement de la rafale';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Nous capturons une archive complète des derniers instants d\'une civilisation extraterrestre. Leur science, leur art, leur histoire. C\'est un lourd fardeau, mais nos banques de données technologiques et culturelles débordent.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Se concentrer sur les propriétés physiques de la rafale';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Nous perdons le message, mais les données sur l\'effondrement stellaire améliorent significativement la calibration de notre scanner gravimétrique.';

  @override
  String get event_spaceFungus_title => 'La Mousse Émeraude';

  @override
  String get event_spaceFungus_narrative =>
      'Un champignon vert vibrant se propage rapidement dans la baie d\'hydroponie. Il prospère dans l\'atmosphère recyclée et commence à obstruer les épurateurs d\'air. Il pourrait être comestible, ou il pourrait être toxique.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Élaguer et stériliser agressivement la baie';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Le champignon disparaît, mais les épurateurs chimiques subissent un coup dur. La biodiversité en pâtit car plusieurs plantes de la Terre ont été perdues dans la purge.';

  @override
  String get event_spaceFungus_choice1_text =>
      'Tenter de domestiquer le champignon';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Il s\'avère être un puissant purificateur d\'air. L\'air du vaisseau n\'a jamais été aussi frais, bien que la baie d\'hydroponie soit désormais une jungle luminescente.';

  @override
  String get event_voidMerchant_title => 'Marchand du Vide';

  @override
  String get event_voidMerchant_narrative =>
      'Un vaisseau de conception inconnue, ressemblant plus à un amas de ferraille qu\'à un navire, nous appelle. Le capitaine, une créature de lumière et d\'ombre, propose d\'échanger des \'pièces solides\' contre des \'souvenirs intangibles\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Échanger une partie de notre base de données culturelle contre des pièces de rechange';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Le marchand est satisfait. Nous recevons des plaques de coque de haute qualité et des composants cryogéniques. En échange, nous perdons plusieurs siècles de musique enregistrée de la Terre. Le vaisseau est plus solide, mais plus silencieux.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Échanger des cartes de navigation contre des composants de moteur';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Nous obtenons un nouvel ensemble d\'injecteurs de fusion. Nous perdons certaines données sur les secteurs déjà traversés, mais le chemin devant nous est plus rapide.';

  @override
  String get event_singularityEngine_title => 'Le Moteur à Singularité';

  @override
  String get event_singularityEngine_narrative =>
      'Les ingénieurs ont découvert un moyen de créer une singularité microscopique et éphémère à l\'intérieur du moteur FTL. En théorie, cela triplerait notre vitesse, mais le stress gravitationnel sur la coque serait immense.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Tester le moteur à singularité';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Le vaisseau bondit en avant, couvrant des semaines de distance en quelques secondes. Mais la coque gémit et plusieurs poutres structurelles sont déformées. Nous sommes bien plus proches de notre objectif, mais le vaisseau est fragile.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Rejeter la théorie — c\'est trop dangereux';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Nous continuons à vitesse standard. Les ingénieurs sont déçus, mais la coque reste intacte.';

  @override
  String get event_dreamContagion_title => 'Contagion de Rêves';

  @override
  String get event_dreamContagion_narrative =>
      'Un rêve partagé d\'un monde luxuriant et bleu se répand parmi l\'équipage éveillé. Il est si vivide que les gens commencent à dormir pendant leurs quarts juste pour en voir davantage. Le travail s\'arrête.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Administrer des suppresseurs de rêves à l\'équipage';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'L\'efficacité revient à la normale, mais l\'équipage est irritable et le moral est bas. Le rêve était la seule chose qui maintenait certaines personnes en mouvement.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Intégrer le rêve dans la culture du vaisseau';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Nous traitons le rêve comme une vision de notre futur foyer. Le moral s\'envole et la production créative de l\'équipage atteint son apogée, bien que la baie technique souffre du manque d\'entretien.';

  @override
  String get event_orbitalShipyard_title => 'Le Chantier Naval Antique';

  @override
  String get event_orbitalShipyard_narrative =>
      'Nous avons trouvé un chantier naval automatisé en orbite autour d\'une géante gazeuse. Il est ancien, mais plusieurs bras de réparation sont encore alimentés. Il semble capable d\'effectuer une seule opération de réparation massive.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Réparer la coque aux spécifications d\'usine';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Les drones du chantier travaillent avec une efficacité terrifiante. La coque est intacte, chaque microfissure scellée.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Rénover les matrices de navigation et de scan';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Les matrices sont reconstruites avec des matériaux supérieurs. Notre capacité à trouver et analyser des mondes s\'améliore significativement.';

  @override
  String get event_voidWhaleCalf_title => 'Le Baleineau du Vide';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Une \'Baleine Spatiale\' juvénile — une créature d\'énergie et de poussière stellaire — suit notre vaisseau. Elle semble avoir perdu son troupeau et tente de se nourrir du sillage ionique de nos moteurs, ce qui la rend malade.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Ajuster la sortie du moteur pour imiter les appels des baleines';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Le baleineau répond ! Il nous suit jusqu\'à ce que nous trouvions son troupeau. Les baleines parents frôlent notre coque en remerciement, laissant un revêtement de minéraux bioluminescents qui renforcent nos boucliers.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'L\'éloigner doucement avec un rayon tracteur à faible puissance';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Le baleineau est découragé et finit par s\'éloigner à la dérive. C\'est plus sûr pour le vaisseau, mais l\'équipage ressent un léger remords.';

  @override
  String get event_subspaceReef_title => 'Le Récif du Sous-espace';

  @override
  String get event_subspaceReef_narrative =>
      'Nous avons rencontré une région de l\'espace remplie de plis dentelés dans le tissu du sous-espace. Naviguer à travers est comme piloter un navire dans un récif de corail. C\'est magnifique, mais chaque faux mouvement déchirera la coque.';

  @override
  String get event_subspaceReef_choice0_text => 'Avancer à vitesse minimale';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Un transit lent et agonisant. Nous évitons le pire, mais les corrections de cap constantes usent l\'ordinateur de navigation.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Utiliser les scanners pour tracer une route et foncer';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Les scanners sont poussés à la limite. Nous traversons rapidement, mais les matrices de capteurs sont grillées par l\'intensité des ondes du sous-espace.';

  @override
  String get event_alienTrader_title => 'Le Marchand Errant';

  @override
  String get event_alienTrader_narrative =>
      'Un vaisseau de conception inconnue dérive à nos côtés, émettant sur toutes les fréquences. C\'est un commerçant — l\'un des marchands errants qui sillonnent les espaces entre les civilisations. Ils offrent réparations et fournitures en échange de ressources. Leur soute bourdonne de technologie exotique.';

  @override
  String get ui_event_enterTrade => 'ENTRER EN COMMERCE';

  @override
  String get ui_trader_title => 'MARCHAND EXTRATERRESTRE';

  @override
  String get ui_trader_shipSystems => 'SYSTÈMES DU VAISSEAU';

  @override
  String get ui_trader_payWith => 'PAYER AVEC';

  @override
  String get ui_trader_leaveTrader => 'QUITTER LE MARCHAND';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Humeur généreuse';

  @override
  String get ui_trader_moodFair => 'Marché équitable';

  @override
  String get ui_trader_moodHard => 'Négocie durement';

  @override
  String get ui_trader_probes => 'Sondes';

  @override
  String get ui_trader_fuel => 'Carburant';

  @override
  String get ui_trader_energy => 'Énergie';

  @override
  String get ui_trader_colonists => 'Colons';

  @override
  String get ui_trader_culture => 'Culture';

  @override
  String get ui_trader_tech => 'Technologie';

  @override
  String get ui_trader_greeting => 'Qu\'offres-tu, humain ?';

  @override
  String get ui_codex_title => 'CODEX';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total DÉCOUVERTS';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CARACTÉRISTIQUES DE SURFACE';

  @override
  String get ui_codex_moonTypes => 'TYPES DE LUNE';

  @override
  String get ui_codex_ringTypes => 'TYPES D\'ANNEAU';

  @override
  String get ui_codex_locked =>
      'Atterrissez sur une planète avec cette caractéristique pour révéler ses effets.';

  @override
  String ui_codex_synergy(String features) {
    return 'Synergie : $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => 'Phare à pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Une étoile à neutrons en rotation balaie le vide de son faisceau tel un phare cosmique. La pulsation rythmique du pulsar transporte des données de synchronisation précises qui pourraient recalibrer nos scanners avec une exactitude extraordinaire — mais s\'aligner sur le faisceau implique d\'exposer le vaisseau à un rayonnement intense.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Calibrer les scanners sur la pulsation';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Les matrices de scanners absorbent le signal du pulsar, se recalibrant à des précisions que nous n\'aurions jamais cru possibles. Mais le coût en radiation est bien réel — plusieurs cryocapsules dans la section exposée sont endommagées, et une poignée de colons ne survit pas à l\'irradiation.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Se protéger et passer à distance sûre';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Nous donnons un large détour au pulsar, brûlant du carburant supplémentaire pour maintenir une trajectoire sûre. L\'équipage observe le faisceau balayant à travers des hublots filtrés — magnifique, mais lointain.';

  @override
  String get event_alienNursery_title => 'Nurserie extraterrestre';

  @override
  String get event_alienNursery_narrative =>
      'Une vaste structure organique dérive dans le vide — une nurserie biologique incubant des jeunes extraterrestres. Ses systèmes de survie défaillent, les températures internes chutent. Les créatures à l\'intérieur meurent. Nos bio-scanners pourraient apprendre énormément de cette structure, mais intervenir signifie ouvrir nos sas à des pathogènes inconnus.';

  @override
  String get event_alienNursery_choice0 =>
      'Aider à stabiliser leur support vital';

  @override
  String get event_alienNursery_outcome0 =>
      'Nos ingénieurs bricolent un lien thermique avec la nurserie, stabilisant les chambres d\'incubation. Les données des bio-scanners sont extraordinaires — une taxonomie entièrement nouvelle du vivant. Mais comme redouté, des micro-organismes extraterrestres trouvent le chemin à bord. Les équipes médicales contiennent l\'épidémie, mais pas avant que plusieurs colons ne tombent malades.';

  @override
  String get event_alienNursery_choice1 => 'Ne pas intervenir';

  @override
  String get event_alienNursery_outcome1 =>
      'Nous observons à distance respectueuse, documentant ce que nous pouvons par scans passifs. La nurserie continue de dériver, son destin incertain. L\'équipage médite sur la fragilité de la vie — même la vie extraterrestre — et le poids des choix que nous portons.';

  @override
  String get event_derelictArmada_title => 'Armada abandonnée';

  @override
  String get event_derelictArmada_narrative =>
      'Des centaines d\'anciens vaisseaux de guerre flottent immobiles dans le vide — le cimetière d\'un conflit oublié. Leurs coques portent les cicatrices d\'armes que nous ne pouvons identifier, mais leurs matériaux structurels et bases de données embarquées pourraient être inestimables. La question est de savoir quoi prioriser : la récupération physique ou le savoir.';

  @override
  String get event_derelictArmada_choice0 =>
      'Récupérer la technologie d\'armement et le blindage';

  @override
  String get event_derelictArmada_outcome0 =>
      'Les équipes de récupération découpent les vaisseaux de guerre extraterrestres, extrayant des alliages exotiques et des techniques de construction en avance de plusieurs siècles sur les nôtres. Les constructeurs intègrent les nouveaux matériaux avec empressement. Mais un vaisseau n\'était pas aussi mort qu\'il en avait l\'air — un piège explose pendant l\'extraction, tuant une équipe de récupération.';

  @override
  String get event_derelictArmada_choice1 =>
      'Télécharger leurs archives historiques';

  @override
  String get event_derelictArmada_outcome1 =>
      'Nous nous concentrons sur les noyaux de données, extrayant soigneusement des siècles d\'histoire, d\'art, de science et de philosophie extraterrestres. L\'archive culturelle à elle seule pourrait occuper les chercheurs pendant des générations. Les perspectives technologiques, bien que moins immédiatement pratiques, révèlent des principes d\'ingénierie qui font avancer notre propre compréhension.';

  @override
  String get event_alienQuarantineZone_title =>
      'Zone de quarantaine extraterrestre';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Des balises d\'alerte dans une douzaine de langues extraterrestres marquent la frontière d\'une région scellée de l\'espace. Ce qui est contenu à l\'intérieur était suffisamment dangereux pour que plusieurs civilisations coopèrent afin de l\'isoler. Nos scans à longue portée détectent des signatures technologiques massives à l\'intérieur — et quelque chose qui pourrait être vivant.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Violer la quarantaine et enquêter';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Nous franchissons les bouées d\'alerte et pénétrons dans la zone de quarantaine. À l\'intérieur, nous trouvons une station de recherche d\'une complexité stupéfiante — et les vestiges de ce qu\'elle étudiait. La technologie que nous récupérons est révolutionnaire, mais la contamination biologique est sévère. Des dizaines de colons tombent malades avant que nous ne quittions la zone.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Respecter la quarantaine';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Nous étudions les balises d\'alerte elles-mêmes, qui contiennent des données de navigation et des relevés atmosphériques des civilisations qui les ont placées. Ce n\'est pas le trésor à l\'intérieur, mais c\'est quelque chose — et nous n\'avons pas libéré ce qu\'ils ont enfermé.';

  @override
  String get event_hydroponicsBlight_title => 'Fléau hydroponique';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Un fléau fongique à propagation rapide a infecté les baies hydroponiques du vaisseau. Des cycles de récolte entiers se flétrissent sous nos yeux. Le fléau n\'a pas encore atteint les réserves de semences, mais ce n\'est qu\'une question d\'heures. Nous pouvons purger les baies et replanter à zéro, ou tenter un traitement antifongique expérimental qui pourrait sauver la récolte actuelle — ou propager davantage la contamination.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Purger et replanter avec les réserves de semences';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Nous expulsons l\'atmosphère des baies hydroponiques dans le vide, tuant le fléau ainsi que chaque plante vivante. Replanter à partir des réserves de semences prendra des semaines, et les programmes culturels qui dépendaient de nourriture fraîche et d\'espaces de jardinage sont suspendus. Mais l\'infection est contenue.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Tenter le traitement expérimental';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'L\'antifongique expérimental semble prometteur au début, mais une souche résistante perce. Le temps que nous recourions à une purge complète, le fléau s\'est propagé aux lignes nutritives des cryocapsules. Les dégâts sont pires que si nous avions agi avec décision dès le départ.';
}
