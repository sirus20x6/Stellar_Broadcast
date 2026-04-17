// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'INIZIA IL VIAGGIO';

  @override
  String get ui_title_dailyVoyage => 'VIAGGIO GIORNALIERO';

  @override
  String get ui_title_dailyCompleted => 'GIORNALIERO COMPLETATO';

  @override
  String get ui_title_customSeed => 'SEME PERSONALIZZATO';

  @override
  String get ui_title_legacyHub => 'CENTRO EREDITÀ';

  @override
  String get ui_title_cancel => 'ANNULLA';

  @override
  String get ui_title_startVoyage => 'AVVIA VIAGGIO';

  @override
  String get ui_title_seedInvalid =>
      'Codice seme non valido. Utilizzare solo A–Z e 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SET $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEME: $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNER';

  @override
  String get ui_voyage_scanPlanet => 'SCANSIONA PIANETA';

  @override
  String get ui_voyage_noEnergy => 'ENERGIA ESAURITA';

  @override
  String get ui_voyage_pressOn => 'PROSEGUI';

  @override
  String get ui_voyage_systemHull => 'Scafo';

  @override
  String get ui_voyage_systemNav => 'Nav';

  @override
  String get ui_voyage_systemCryopods => 'Criopod';

  @override
  String get ui_voyage_systemCulture => 'Cultura';

  @override
  String get ui_voyage_systemTech => 'Tecn';

  @override
  String get ui_voyage_systemConstruct => 'Costruz';

  @override
  String get ui_voyage_systemShields => 'Scudi';

  @override
  String get ui_voyage_systemLanding => 'Atterraggio';

  @override
  String get ui_voyage_scannerAtmo => 'Scan Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Scan Grav';

  @override
  String get ui_voyage_scannerMineral => 'Scan Minerali';

  @override
  String get ui_voyage_scannerLife => 'Scan Vita';

  @override
  String get ui_voyage_scannerTemp => 'Scan Temp';

  @override
  String get ui_voyage_scannerWater => 'Scan Acqua';

  @override
  String get ui_voyage_narrative0 =>
      'Orbita terrestre libera. Criopod stabili. Anello d\'archivio integro.';

  @override
  String get ui_voyage_narrative1 =>
      'Transito verso il sistema esterno nominale. Gli scanner a lungo raggio ampliano la ricerca.';

  @override
  String get ui_voyage_narrative2 =>
      'Il traffico terrestre è sceso sotto la soglia di rilevamento.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Le coordinate archiviate corrispondono a un sistema segnalato. Correzione di rotta in corso.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Gli array scanner sono ancora in fase di calibrazione per la risoluzione nello spazio profondo.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Sistema contrassegnato in avvicinamento. I dati del precedente rilevamento restano coerenti.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Segnale debole in avvicinamento. Inizio scansione planetaria.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Uscita dall\'iperluce completata. Nuovo sistema stellare in vista.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Banchi criopod stabili. Scansione del settore in corso.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Un nuovo pianeta si delinea nell\'array frontale.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'La cartografia stellare segnala un candidato promettente.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Gli strumenti hanno individuato un altro mondo degno di analisi.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Scanner agganciato su un nuovo obiettivo.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Carte di navigazione aggiornate. Mondo candidato a portata.';

  @override
  String get ui_scan_landHere => 'ATTERRA QUI';

  @override
  String get ui_scan_pressOn => 'PROSEGUI';

  @override
  String get ui_scan_allStatsVerified => 'TUTTI I PARAMETRI VERIFICATI';

  @override
  String get ui_scan_launchProbe => 'LANCIA SONDA';

  @override
  String get ui_scan_habitability => 'ABITABILITÀ';

  @override
  String get ui_scan_statAtmos => 'ATMO';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'ACQUA';

  @override
  String get ui_scan_statResource => 'RISORSE';

  @override
  String get ui_scan_statGravity => 'GRAVITÀ';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIA';

  @override
  String get ui_scan_statRadiation => 'RADIAZIONE';

  @override
  String ui_scan_probesCount(int count) {
    return 'SONDE: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'INCERTEZZA: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'ANALISI PLANETARIA';

  @override
  String get ui_landing_shipStatus => 'STATO DELLA NAVE';

  @override
  String ui_landing_fuel(int amount) {
    return 'CARBURANTE: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'AVVISO CARBURANTE BASSO';

  @override
  String get ui_landing_landingRiskCritical => 'RISCHIO ATTERRAGGIO: CRITICO';

  @override
  String get ui_landing_landingRiskElevated => 'RISCHIO ATTERRAGGIO: ELEVATO';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Sistema di atterraggio gravemente danneggiato. L\'ingresso atmosferico potrebbe distruggere il carico e i coloni.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Sistema di atterraggio degradato. Prevedere un ingresso atmosferico turbolento con possibili danni ai sistemi.';

  @override
  String get ui_landing_riskAssessment => 'VALUTAZIONE DEL RISCHIO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'La tua nave può sostenere ancora ~$remaining incontri';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'La tua nave potrebbe non sopravvivere a un altro viaggio';

  @override
  String get ui_landing_surfaceFeatures => 'CARATTERISTICHE SUPERFICIALI';

  @override
  String get ui_landing_nameYourColony => 'NOMINA LA TUA COLONIA';

  @override
  String get ui_landing_establishColony => 'FONDA LA COLONIA';

  @override
  String get ui_landing_pressOnward => 'PROSEGUI OLTRE';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfera';

  @override
  String get ui_landing_statTemperature => 'Temperatura';

  @override
  String get ui_landing_statWater => 'Acqua';

  @override
  String get ui_landing_statResources => 'Risorse';

  @override
  String get ui_landing_statGravity => 'Gravità';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversità';

  @override
  String get ui_landing_statAvgHealth => 'Salute Media';

  @override
  String get ui_landing_statHull => 'Scafo';

  @override
  String get ui_landing_statNavigation => 'Navigazione';

  @override
  String get ui_landing_statCryopods => 'Criopod';

  @override
  String get ui_landing_statCulture => 'Cultura';

  @override
  String get ui_landing_statTech => 'Tecn';

  @override
  String get ui_landing_statConstructors => 'Costruttori';

  @override
  String get ui_landing_statShields => 'Scudi';

  @override
  String get ui_landing_statLandingSys => 'Sist Atterr';

  @override
  String get ui_ending_colonyEstablished => 'COLONIA FONDATA';

  @override
  String get ui_ending_colonyScore => 'PUNTEGGIO COLONIA';

  @override
  String get ui_ending_colonyProfile => 'PROFILO DELLA COLONIA';

  @override
  String get ui_ending_landscape => 'PAESAGGIO';

  @override
  String get ui_ending_voyageRecord => 'REGISTRO DEL VIAGGIO';

  @override
  String get ui_ending_scoreBreakdown => 'DETTAGLIO PUNTEGGIO';

  @override
  String get ui_ending_total => 'TOTALE';

  @override
  String get ui_ending_achievementsUnlocked => 'TRAGUARDI SBLOCCATI';

  @override
  String get ui_ending_challengeFriend => 'SFIDA UN AMICO';

  @override
  String get ui_ending_shareCard => 'CONDIVIDI LA CARTA';

  @override
  String get ui_ending_shareCardDialogTitle => 'Condividi il tuo viaggio';

  @override
  String get ui_ending_shareCardShare => 'CONDIVIDERE';

  @override
  String get ui_ending_shareCardCancel => 'CANCELLARE';

  @override
  String get ui_ending_copySeed => 'COPIA SEME';

  @override
  String get ui_ending_viewLegacy => 'VEDI EREDITÀ';

  @override
  String get ui_ending_newVoyage => 'NUOVO VIAGGIO';

  @override
  String get ui_ending_achievementFirstLanding => 'Primo Atterraggio';

  @override
  String get ui_ending_achievementGoldenAge => 'Età dell\'Oro';

  @override
  String get ui_ending_achievementSurvivor => 'Sopravvissuto';

  @override
  String get ui_ending_achievementExplorer => 'Esploratore';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfezionista';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Sopravvissuto al Mondo Mortale';

  @override
  String get ui_ending_achievementFullCrew => 'Equipaggio al Completo';

  @override
  String get ui_ending_achievementProbeMaster => 'Maestro delle Sonde';

  @override
  String get ui_ending_achievementIronHull => 'Scafo di Ferro';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Salto nel Vuoto';

  @override
  String get ui_gameOver_missionFailed => 'MISSIONE FALLITA';

  @override
  String get ui_gameOver_voyageRecord => 'REGISTRO DEL VIAGGIO';

  @override
  String get ui_gameOver_encountersSurvived => 'INCONTRI SOPRAVVISSUTI';

  @override
  String get ui_gameOver_probesRemaining => 'SONDE RIMANENTI';

  @override
  String get ui_gameOver_colonistsRemaining => 'COLONI RIMANENTI';

  @override
  String get ui_gameOver_finalShipHealth => 'SALUTE FINALE DELLA NAVE';

  @override
  String get ui_gameOver_planetsSkipped => 'PIANETI IGNORATI';

  @override
  String get ui_gameOver_damageTaken => 'DANNI SUBITI';

  @override
  String get ui_gameOver_fuelRemaining => 'CARBURANTE RIMANENTE';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGIA RIMANENTE';

  @override
  String get ui_gameOver_challengeFriend => 'SFIDA UN AMICO';

  @override
  String get ui_gameOver_viewLegacy => 'VEDI EREDITÀ';

  @override
  String get ui_gameOver_newVoyage => 'NUOVO VIAGGIO';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nNon sono sopravvissuto... $reason.\nPensi di fare meglio con lo stesso viaggio?\nstellarbroadcast://play?seed=$seedCode\n\nNon hai l\'app?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'L\'ultimo colone morì nel criosonno — un cedimento a catena che nessun protocollo d\'emergenza poté impedire. L\'Exodus proseguì il suo cammino, una nave fantasma che trasportava soltanto sistemi automatizzati e un silenzio gelido. La sua missione non era fallita in un istante di catastrofe, ma nella lenta erosione di vite umane, una dopo l\'altra, finché non ne restò alcuna.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Lo scafo cedette nel silenzio — la fatica del metallo, aggravata da innumerevoli micro-impatti, aveva infine vinto ogni resistenza. L\'atmosfera fuggì nel vuoto. La nave coloniale Exodus si frantumò, e i suoi resti si unirono agli antichi campi di detriti tra le stelle. Nessun segnale di soccorso fu mai ricevuto.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Priva di navigazione, l\'Exodus andò alla deriva nello spazio inesplorato — carte stellari inutili, correzioni di rotta impossibili. La nave proseguì nell\'oscurità, i suoi passeggeri addormentati ignari che la loro destinazione era stata sostituita dall\'eternità. Alcuni dicono che la nave vaghi ancora, un vascello fantasma nella notte senza fine.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Uno dopo l\'altro, i criopod cedettero — una cascata che nessun protocollo d\'emergenza poté fermare. I coloni non si svegliarono mai. L\'Exodus proseguì sulla rotta programmata, una nave-tomba che portava soltanto silenzio verso qualunque mondo avrebbe infine raggiunto. Un monumento a un sogno morto nel sonno gelido.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'L\'Exodus ammutolì. La sua missione, il suo equipaggio, il suo carico di speranza umana — tutto perduto nell\'indifferente vastità tra le stelle. Forse un giorno un\'altra civiltà troverà i resti e si chiederà quale coraggiosa specie osò attraversare il vuoto.';

  @override
  String get ui_settings_title => 'IMPOSTAZIONI';

  @override
  String get ui_settings_music => 'MUSICA';

  @override
  String get ui_settings_soundEffects => 'EFFETTI SONORI';

  @override
  String get ui_settings_haptics => 'VIBRAZIONE';

  @override
  String get ui_settings_premium => 'PREMIO';

  @override
  String get ui_settings_goPremium => 'Diventa Premium';

  @override
  String get ui_settings_enabled => 'Attivo';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Lingua';

  @override
  String get ui_settings_systemDefault => 'Predefinito di sistema';

  @override
  String get ui_settings_statsPosition =>
      'Posizione delle statistiche e dei pulsanti';

  @override
  String get ui_settings_statsLeft => 'SINISTRA';

  @override
  String get ui_settings_statsRight => 'GIUSTO';

  @override
  String get ui_legacy_title => 'CENTRO EREDITÀ';

  @override
  String get ui_legacy_commanderStats => 'STATISTICHE COMANDANTE';

  @override
  String get ui_legacy_highScores => 'PUNTEGGI MIGLIORI';

  @override
  String get ui_legacy_upgrades => 'POTENZIAMENTI';

  @override
  String get ui_legacy_achievements => 'TRAGUARDI';

  @override
  String get ui_legacy_voyageLog => 'DIARIO DI VIAGGIO';

  @override
  String get ui_legacy_voyages => 'VIAGGI';

  @override
  String get ui_legacy_bestScore => 'MIGLIOR PUNTEGGIO';

  @override
  String get ui_legacy_legacyPts => 'PUNTI EREDITÀ';

  @override
  String get ui_legacy_completed => 'COMPLETATO';

  @override
  String get ui_legacy_notYetPlayed => 'NON ANCORA GIOCATO';

  @override
  String get ui_legacy_dailyHistory => 'STORICO GIORNALIERI';

  @override
  String get ui_premium_goPremium => 'DIVENTA PREMIUM';

  @override
  String get ui_premium_subtitle =>
      'Sostieni la missione. Potenzia il tuo comando.';

  @override
  String get ui_premium_removeAds => 'Rimuovi tutte le pubblicità per sempre';

  @override
  String get ui_premium_supportIndie => 'Sostieni lo sviluppo indipendente';

  @override
  String get ui_premium_exclusiveTitle => 'Titolo esclusivo di comandante';

  @override
  String get ui_premium_priorityFeatures =>
      'Richieste di funzionalità prioritarie';

  @override
  String get ui_premium_lifetime => 'A vita';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'POTENZIAMENTO SCANNER';

  @override
  String get ui_scannerUpgrade_subtitle => 'Scegli uno scanner da potenziare';

  @override
  String get ui_scannerUpgrade_skip => 'SALTA';

  @override
  String get ui_scannerUpgrade_max => 'MASSIMO';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosferico';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrico';

  @override
  String get ui_scannerUpgrade_mineral => 'Minerali';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Segni Vitali';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperatura';

  @override
  String get ui_scannerUpgrade_water => 'Acqua';

  @override
  String get ui_event_continue => 'CONTINUA';

  @override
  String get ui_event_tapToSkip => 'TOCCA PER SALTARE';

  @override
  String get ui_event_colonists => 'COLONI';

  @override
  String get ui_event_landing => 'ATTERRAGGIO';

  @override
  String get ui_event_atmScan => 'SCAN ATM';

  @override
  String get ui_event_gravScan => 'SCAN GRAV';

  @override
  String get ui_event_minScan => 'SCAN MIN';

  @override
  String get ui_event_lifeScan => 'SCAN VITA';

  @override
  String get ui_event_tempScan => 'SCAN TEMP';

  @override
  String get ui_event_h2oScan => 'SCAN H2O';

  @override
  String get onboarding_page0_title => 'L\'Ultima Speranza dell\'Umanità';

  @override
  String get onboarding_page0_description =>
      'La Terra sta morendo. I governi del mondo hanno riunito le loro ultime riserve per costruire un\'unica nave — una nave coloniale che porta i resti dell\'umanità tra le stelle.';

  @override
  String get onboarding_page1_title => 'Cerca una Nuova Dimora';

  @override
  String get onboarding_page1_description =>
      'Naviga nel vuoto inesplorato tra le stelle. Scansiona mondi alieni, affronta pericoli cosmici e compi scelte impossibili.';

  @override
  String get onboarding_page2_title => 'La Tua Eredità Perdura';

  @override
  String get onboarding_page2_description =>
      'Ogni viaggio insegna qualcosa di nuovo all\'umanità. Guadagna Punti Eredità per sbloccare potenziamenti permanenti e incidi il tuo nome tra le stelle.';

  @override
  String get onboarding_page3_title => 'La Tua Privacy, La Tua Scelta';

  @override
  String get onboarding_page3_description =>
      'Scegli come vivere l\'esperienza di Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Paradiso';

  @override
  String get planet_tierHabitable => 'Abitabile';

  @override
  String get planet_tierHarsh => 'Ostile';

  @override
  String get planet_tierHostile => 'Inospitale';

  @override
  String get planet_tierDeathWorld => 'Mondo Mortale';

  @override
  String get planet_featurePlantLife => 'Vita Vegetale';

  @override
  String get planet_featureEdiblePlants => 'Piante Commestibili';

  @override
  String get planet_featurePoisonousPlants => 'Piante Velenose';

  @override
  String get planet_featureUnicellularLife => 'Vita Unicellulare';

  @override
  String get planet_featureDangerousFauna => 'Fauna Pericolosa';

  @override
  String get planet_featureTameableFauna => 'Fauna Addomesticabile';

  @override
  String get planet_featureAirtightCaves => 'Caverne Ermetiche';

  @override
  String get planet_featureInsulatedCaves => 'Caverne Isolate';

  @override
  String get planet_featureBarrenMoon => 'Luna Sterile';

  @override
  String get planet_featureMetalRichMoon => 'Luna Ricca di Metalli';

  @override
  String get planet_featureUnstableMoon => 'Luna Instabile';

  @override
  String get planet_featureOutstandingBeauty => 'Bellezza Straordinaria';

  @override
  String get planet_featureOutstandingUgliness => 'Bruttezza Straordinaria';

  @override
  String get planet_featureAncientRuins => 'Rovine Antiche';

  @override
  String get planet_featureMonuments => 'Monumenti';

  @override
  String get planet_featureRapidRotation => 'Rotazione Rapida';

  @override
  String get planet_featureSlowRotation => 'Rotazione Lenta';

  @override
  String get planet_featureVolcanicActivity => 'Attività Vulcanica';

  @override
  String get planet_featureTectonicInstability => 'Instabilità Tettonica';

  @override
  String get planet_featureElectricalStorms => 'Tempeste Elettriche';

  @override
  String get planet_featureToxicSpores => 'Spore Tossiche';

  @override
  String get planet_featureDeepOceans => 'Oceani Profondi';

  @override
  String get planet_featureGeothermalVents => 'Sorgenti Geotermali';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnetosfera Potente';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnetosfera Debole';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organismi Simbiotici';

  @override
  String get planet_featureGravityWells => 'Pozzi Gravitazionali';

  @override
  String get planet_featureSubspaceEchoes => 'Echi del Subspazio';

  @override
  String get planet_featureBioluminescentLife => 'Vita bioluminescente';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna acquatica';

  @override
  String get planet_featureFloatingIslands => 'Isole fluttuanti';

  @override
  String get planet_featureCrystalCaverns => 'Caverne di cristallo';

  @override
  String get planet_featureLavaTubes => 'Tunnel di lava';

  @override
  String get planet_featureIceTunnels => 'Tunnel di ghiaccio';

  @override
  String get planet_featureOrbitalWreckage => 'Relitti orbitali';

  @override
  String get planet_featureMegastructuralFragments =>
      'Frammenti megastrutturali';

  @override
  String get planet_featureAncientObservatory => 'Antico osservatorio';

  @override
  String get planet_featureExtremeSeasons => 'Stagioni estreme';

  @override
  String get planet_featureCryovolcanism => 'Criovulcanismo';

  @override
  String get planet_featureFloatingKelpForests => 'Foreste di alghe fluttuanti';

  @override
  String get planet_featureSingingCrystals => 'Cristalli cantanti';

  @override
  String get planet_featureFertileSoil => 'Terreno fertile';

  @override
  String get planet_featureHelium3Deposits => 'Depositi di elio-3';

  @override
  String get planet_featureExoticIsotopes => 'Isotopi esotici';

  @override
  String get planet_featureMedicinalFlora => 'Flora medicinale';

  @override
  String get planet_featurePerpetualAurora => 'Aurora perpetua';

  @override
  String get planet_featurePetrifiedMegaflora => 'Megaflora pietrificata';

  @override
  String get planet_featureUndergroundRivers => 'Fiumi sotterranei';

  @override
  String get planet_featureObsidianPlains => 'Pianure di ossidiana';

  @override
  String get planet_featureSaltFlats => 'Saline';

  @override
  String get planet_featureCarnivorousFlora => 'Flora carnivora';

  @override
  String get planet_featureGhostCities => 'Città fantasma';

  @override
  String get planet_featureArchiveVaults => 'Depositi di archivi';

  @override
  String get planet_featureSinkholeFields => 'Campi di doline';

  @override
  String get planet_featureApexPredator => 'Predatore dell\'apice';

  @override
  String get ui_monthJan => 'GEN';

  @override
  String get ui_monthFeb => 'FEBBRAIO';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'APR';

  @override
  String get ui_monthMay => 'MAG';

  @override
  String get ui_monthJun => 'GIU';

  @override
  String get ui_monthJul => 'LUG';

  @override
  String get ui_monthAug => 'AGO';

  @override
  String get ui_monthSep => 'SET';

  @override
  String get ui_monthOct => 'OTT';

  @override
  String get ui_monthNov => 'NOVEMBRE';

  @override
  String get ui_monthDec => 'DIC';

  @override
  String get event_asteroidField_title => 'Campo di Asteroidi';

  @override
  String get event_asteroidField_narrative =>
      'Gli scanner a lungo raggio rilevano un denso campo di asteroidi direttamente sulla nostra rotta. La navigazione calcola due opzioni: una corsa rischiosa attraverso il corridoio più sottile, o una lunga deviazione che metterà a dura prova le riserve di carburante e sovraccaricherà il sistema di navigazione.';

  @override
  String get event_asteroidField_choice0_text =>
      'Attraversare il corridoio a tutta velocità';

  @override
  String get event_asteroidField_choice0_outcome =>
      'La nave sussulta sotto i micro-impatti che martellano lo scafo. Siamo passati, ma non indenni.';

  @override
  String get event_asteroidField_choice1_text => 'Prendere la strada lunga';

  @override
  String get event_asteroidField_choice1_outcome =>
      'La deviazione brucia carburante prezioso e logora il computer di navigazione, ma lo scafo resta intatto.';

  @override
  String get event_asteroidField_choice2_text =>
      'Usare droni minerari per aprire un varco';

  @override
  String get event_asteroidField_choice2_outcome =>
      'I droni scavano un canale sicuro e raccolgono minerali utili, ma l\'operazione prosciuga il comparto tecnologico.';

  @override
  String get event_asteroidField_choice3_text => 'Lanciare una sonda come esca';

  @override
  String get event_asteroidField_choice3_outcome =>
      'La sonda attira i gruppi più densi lontano dalla nave. Scivoliamo attraverso con solo lievi graffi.';

  @override
  String get event_solarFlare_title => 'Brillamento Solare in Arrivo';

  @override
  String get event_solarFlare_narrative =>
      'Una stella vicina erutta con un\'enorme eiezione coronale. L\'onda di particelle cariche ci raggiungerà in pochi minuti. Possiamo dirottare l\'energia sugli scudi, riparare i coloni nel nucleo, o resistere.';

  @override
  String get event_solarFlare_choice0_text =>
      'Dirottare tutta l\'energia sugli scudi';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Gli scudi reggono, ma il sovraccarico frigge i sistemi secondari.';

  @override
  String get event_solarFlare_choice1_text =>
      'Spostare i coloni nel nucleo schermato';

  @override
  String get event_solarFlare_choice1_outcome =>
      'I coloni sopravvivono illesi, ma i ponti esterni subiscono danni da radiazioni.';

  @override
  String get event_solarFlare_choice2_text =>
      'Resistere — tutti ai posti, prepararsi all\'impatto';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Il brillamento colpisce duro. I sistemi vacillano, ma nulla di catastrofico. Il morale, tuttavia, ne risente.';

  @override
  String get event_solarFlare_choice3_text =>
      'Lanciare una sonda per misurare il fronte d\'onda';

  @override
  String get event_solarFlare_choice3_outcome =>
      'La sonda trasmette dati precisi sul fronte d\'onda, permettendoci di angolare la nave in modo ottimale. I danni agli scanner sono minimi.';

  @override
  String get event_nebulaPassage_title => 'Passaggio nella Nebulosa';

  @override
  String get event_nebulaPassage_narrative =>
      'Una nebulosa luminescente si estende lungo la nostra rotta. Attraversarla potrebbe ricaricare le celle energetiche ma interferire con gli array scanner. Aggirarla è sicuro ma lento.';

  @override
  String get event_nebulaPassage_choice0_text => 'Attraversare la nebulosa';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'I gas ionizzati della nebulosa ricaricano le celle energetiche ma scompaginano la calibrazione degli scanner.';

  @override
  String get event_nebulaPassage_choice1_text => 'Costeggiare il bordo';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Otteniamo una ricarica parziale con minima interferenza. Un compromesso sicuro.';

  @override
  String get event_microMeteorite_title => 'Tempesta di Micro-Meteoriti';

  @override
  String get event_microMeteorite_narrative =>
      'Uno sciame di micro-meteoriti, invisibili fino a pochi istanti fa, sta lacerando la corazza frontale dello scafo. Le squadre di controllo danni si mobilitano freneticamente.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Rotazione d\'emergenza — esporre la poppa corazzata';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'La manovra funziona. L\'armatura di poppa assorbe il peggio, ma i giroscopi di navigazione protestano violentemente.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Lanciare droni di riparazione durante la tempesta';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'I droni riparano lo scafo in tempo reale ma diversi vengono persi. Le riserve tecnologiche sono esaurite.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Far detonare una sonda per disperdere lo sciame';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'L\'esplosione della sonda disperde il gruppo di micro-meteoriti. Solo pochi frammenti raggiungono lo scafo.';

  @override
  String get event_gravityWell_title => 'Pozzo Gravitazionale Inesplorato';

  @override
  String get event_gravityWell_narrative =>
      'La nave sobbalza mentre un pozzo gravitazionale invisibile ci trascina fuori rotta. I motori lottano contro l\'attrazione. Possiamo bruciare al massimo per liberarci, o effettuare una fionda gravitazionale per guadagnare velocità a costo di stress strutturale.';

  @override
  String get event_gravityWell_choice0_text => 'Motori al massimo — liberarsi';

  @override
  String get event_gravityWell_choice0_outcome =>
      'I motori ruggiscono e lo scafo geme, ma ci liberiamo senza problemi.';

  @override
  String get event_gravityWell_choice1_text => 'Manovra a fionda';

  @override
  String get event_gravityWell_choice1_outcome =>
      'La fionda funziona magnificamente. Guadagniamo velocità, ma le forze G mettono sotto stress le guarnizioni dei criopod.';

  @override
  String get event_crewUnrest_title => 'Agitazione dell\'Equipaggio';

  @override
  String get event_crewUnrest_narrative =>
      'Una fazione di coloni risvegliati presenta una petizione al Consiglio degli Steward per essere liberati permanentemente dal criosonno. Sostengono che vivere in un crepuscolo gelato sia disumano. Il personale del reparto crio avverte che svegliare altre bocche significa bruciare le scorte.';

  @override
  String get event_crewUnrest_choice0_text =>
      'Permettere lo scongelamento volontario';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Il morale s\'impenna mentre le famiglie si riuniscono nel mondo dei vivi, ma il consumo di risorse schizza alle stelle.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Negare la richiesta — la sicurezza prima di tutto';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'I coloni obbediscono, ma il risentimento cova nei corridoi.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromesso — cicli di scongelamento a rotazione';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Una soluzione equilibrata. Tutti ottengono un po\' di tempo da svegli, ma il ciclo continuo dei criopod ne causa l\'usura.';

  @override
  String get event_stowaway_title => 'Clandestina Scoperta';

  @override
  String get event_stowaway_narrative =>
      'I revisori dell\'Ufficio Manifesto trovano una persona non registrata nascosta nella stiva 7. Afferma di essere una genetista a cui fu negato un posto nella lista di lancio. Le sue competenze potrebbero essere inestimabili — o potrebbe essere una sabottatrice.';

  @override
  String get event_stowaway_choice0_text =>
      'Accoglierla a bordo — abbiamo bisogno di ogni mente';

  @override
  String get event_stowaway_choice0_outcome =>
      'La Dott.ssa Vasquez si rivela brillante. La sua competenza genetica migliora l\'efficienza dei criopod, sebbene parte dell\'equipaggio non si fidi di lei.';

  @override
  String get event_stowaway_choice1_text =>
      'Confinarla — la fiducia va guadagnata';

  @override
  String get event_stowaway_choice1_outcome =>
      'Collabora dal confinamento e alla fine ottiene un accesso limitato. L\'equipaggio si sente più sicuro.';

  @override
  String get event_stowaway_choice2_text =>
      'Rimetterla in criosonno fino all\'atterraggio';

  @override
  String get event_stowaway_choice2_outcome =>
      'Una soluzione pragmatica. Le sue competenze sono preservate per dopo, ma il dibattito etico divide l\'equipaggio.';

  @override
  String get event_mutinyBrewing_title => 'Ammutinamento in Preparazione';

  @override
  String get event_mutinyBrewing_narrative =>
      'La Guardia di Ponte intercetta messaggi da un gruppo di ufficiali che pianificano di prendere il comando e cambiare rotta verso un sistema più vicino e meno ospitale. Credono che la rotta attuale sia una condanna a morte.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Confrontarli pubblicamente — trasparenza sopra tutto';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Il confronto è teso ma gli ammutinati desistono quando vengono mostrati i dati di navigazione. La fiducia è scossa.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Riassegnare silenziosamente i capi';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Il complotto si dissolve senza dramma pubblico. Alcuni si chiedono perché ufficiali stimati siano stati spostati, ma l\'ordine tiene.';

  @override
  String get event_culturalSchism_title => 'Scisma Culturale';

  @override
  String get event_culturalSchism_narrative =>
      'Due gruppi culturali a bordo sono in violento disaccordo su come la nuova colonia dovrebbe essere governata. Uno pretende la democrazia diretta; l\'altro insiste su un consiglio tecnocratico. Le tensioni stanno raggiungendo il punto di ebollizione.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Indire un referendum vincolante';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'La democrazia prevale — a malapena. La parte sconfitta accetta a malincuore il risultato, ma l\'unità è fragile.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Imporre un sistema ibrido — non accontentare nessuno del tutto';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Entrambe le parti si sentono ascoltate ma non vittoriose. Una pace precaria regge.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Rimandare la decisione — concentrarsi sulla sopravvivenza adesso';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Rimandare il problema evita il conflitto oggi ma lo accumula per domani.';

  @override
  String get event_birthInSpace_title => 'Prima Nascita nello Spazio Profondo';

  @override
  String get event_birthInSpace_narrative =>
      'Contro ogni protocollo, un bambino nasce a bordo della nave — il primo essere umano nato tra le stelle. L\'evento è un simbolo potente, ma solleva interrogativi sull\'allocazione delle risorse e sull\'etica di portare nuova vita in un futuro incerto.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Festeggiare — ecco com\'è fatta la speranza';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'La cerimonia del nome solleva ogni cuore sulla nave. Per una notte, le stelle sembrano meno fredde. I festeggiamenti interrompono brevemente i turni di monitoraggio dei criopod.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Riconoscere in silenzio — le risorse sono limitate';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Una risposta misurata. Il bambino viene accolto, ma l\'atmosfera è temperata dal pragmatismo.';

  @override
  String get event_derelictShip_title => 'Nave Coloniale Abbandonata';

  @override
  String get event_derelictShip_narrative =>
      'Gli scanner rilevano un relitto alla deriva nel vuoto — un\'altra nave coloniale, lanciata anni prima della nostra. È buia e silenziosa. Potrebbero esserci materiali di recupero, sopravvissuti, o peggio.';

  @override
  String get event_derelictShip_choice0_text => 'Abbordare e recuperare';

  @override
  String get event_derelictShip_choice0_outcome =>
      'La squadra di abbordaggio recupera piastre di scafo e moduli tecnologici intatti. Nessun sopravvissuto. I registri raccontano una storia cupa.';

  @override
  String get event_derelictShip_choice1_text =>
      'Scansionare a distanza — non rischiare';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Le scansioni remote forniscono dati di navigazione utili ma nessun recupero fisico. L\'equipaggio dorme meglio.';

  @override
  String get event_derelictShip_choice2_text =>
      'Trasmettere un memoriale e proseguire';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Un momento di silenzio per i perduti. L\'equipaggio è scosso ma unito nello scopo.';

  @override
  String get event_alienProbe_title => 'Sonda Aliena';

  @override
  String get event_alienProbe_narrative =>
      'Un piccolo oggetto chiaramente artificiale eguaglia la nostra velocità e inizia a scansionare la nave con un\'energia sconosciuta. Non risponde alle chiamate. La sua superficie è ricoperta di simboli che si muovono come liquido.';

  @override
  String get event_alienProbe_choice0_text => 'Catturarla per studiarla';

  @override
  String get event_alienProbe_choice0_outcome =>
      'La sonda viene messa in sicurezza nel laboratorio. La sua tecnologia è decenni avanti rispetto alla nostra — il team tecnologico è euforico.';

  @override
  String get event_alienProbe_choice1_text =>
      'Rispecchiare le sue scansioni — scambiare dati';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Uno strano dialogo di luce e matematica. Le nostre carte stellari contengono improvvisamente rotte che non abbiamo mai programmato.';

  @override
  String get event_alienProbe_choice2_text =>
      'Distruggerla — non possiamo rischiare un tracciamento alieno';

  @override
  String get event_alienProbe_choice2_outcome =>
      'La sonda si frantuma silenziosamente. Era quello il primo contatto? L\'equipaggio non lo saprà mai.';

  @override
  String get event_ancientBeacon_title => 'Faro Antico';

  @override
  String get event_ancientBeacon_narrative =>
      'Nel profondo del vuoto, un faro pulsa con un segnale più antico della civiltà umana. La sua frequenza trasporta quella che sembra una mappa stellare che punta a un sistema assente dal nostro database.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Seguire la mappa — la fortuna aiuta gli audaci';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'La nuova rotta ci porta verso lo spazio inesplorato. Gli scanner rilevano qualcosa di straordinario all\'orizzonte.';

  @override
  String get event_ancientBeacon_choice1_text =>
      'Registrare e restare in rotta';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'I dati vengono archiviati per le generazioni future. L\'equipaggio apprezza l\'approccio cauto.';

  @override
  String get event_frozenGarden_title => 'Giardino Ghiacciato';

  @override
  String get event_frozenGarden_narrative =>
      'Un asteroide contiene un ecosistema congelato — piante aliene preservate in ghiaccio cristallino per millenni. Potrebbero arricchire qualsiasi mondo colonizziamo, ma scongelarle rischia la contaminazione.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Raccogliere gli esemplari con cura';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'I botanici preservano decine di specie aliene. Il potenziale di biodiversità del nostro mondo obiettivo sale alle stelle.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Prelevare solo campioni — rischio minimo';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Un approccio conservativo che fornisce dati utili senza rischio di contaminazione.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Lasciar perdere — la biologia aliena è troppo pericolosa';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'L\'equipaggio osserva il giardino ghiacciato rimpicciolirsi nei sensori posteriori. Alcuni sentono di aver lasciato un tesoro.';

  @override
  String get event_dataCache_title => 'Cache di Dati dei Precursori';

  @override
  String get event_dataCache_narrative =>
      'Incorporata in un planetoide vagante, troviamo una cache di dati di origine chiaramente artificiale. Le informazioni sono vaste ma crittografate in un framework matematico alieno.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedicare risorse di calcolo alla decrittazione';

  @override
  String get event_dataCache_choice0_outcome =>
      'Dopo giorni di elaborazione, la cache rivela algoritmi avanzati di terraformazione. Il team tecnologico è in soggezione.';

  @override
  String get event_dataCache_choice1_text =>
      'Copiare i dati grezzi e proseguire';

  @override
  String get event_dataCache_choice1_outcome =>
      'I dati crittografati vengono archiviati per analisi future. Forse la colonia riuscirà a decifrarli un giorno.';

  @override
  String get event_hullBreach_title => 'Breccia nello Scafo — Ponte 7';

  @override
  String get event_hullBreach_narrative =>
      'Un cedimento strutturale squarcia il Ponte 7. L\'atmosfera fuoriesce nel vuoto. Le paratie d\'emergenza reggono, ma tre membri dell\'equipaggio sono intrappolati dalla parte sbagliata.';

  @override
  String get event_hullBreach_choice0_text =>
      'Inviare una squadra di soccorso prima di sigillare';

  @override
  String get event_hullBreach_choice0_outcome =>
      'La squadra tira fuori tutti appena in tempo. Il salvataggio è eroico, ma la breccia prolungata indebolisce ulteriormente lo scafo.';

  @override
  String get event_hullBreach_choice1_text =>
      'Sigillare le paratie immediatamente';

  @override
  String get event_hullBreach_choice1_outcome =>
      'La breccia è contenuta. I tre membri dell\'equipaggio trovano un percorso alternativo, scossi ma vivi. I danni allo scafo sono ridotti al minimo.';

  @override
  String get event_hullBreach_choice2_text =>
      'Usare i materiali di una sonda per riparare la breccia';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Il guscio in titanio della sonda viene riconvertito come toppa d\'emergenza per lo scafo. La breccia viene sigillata rapidamente con perdite minime.';

  @override
  String get event_navMalfunction_title => 'Malfunzionamento della Navigazione';

  @override
  String get event_navMalfunction_narrative =>
      'Il computer di navigazione primario emette rotte contraddittorie. Stiamo deviando dalla rotta. Il sistema di backup è funzionale ma meno preciso.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Riavviare il primario — accettare il tempo morto';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Un\'ora tesa di navigazione alla cieca mentre il sistema si riavvia. La navigazione è ripristinata al 90% dell\'efficienza.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Passare permanentemente al backup';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Il sistema di backup è affidabile ma impreciso. Troveremo la strada, solo non altrettanto elegantemente.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Puntamento stellare manuale con le vecchie carte';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Il navigatore traccia a mano usando la parallasse stellare. Funziona, e l\'equipaggio acquisisce fiducia nei metodi analogici.';

  @override
  String get event_cryopodFailure_title => 'Cedimento a Catena dei Criopod';

  @override
  String get event_cryopodFailure_narrative =>
      'Un guasto al sistema di raffreddamento innesca una cascata nel compartimento criopod 3. Se non controllata, 200 coloni inizieranno lo scongelamento d\'emergenza — un processo sopravvivibile ma traumatico e dispendioso in risorse.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Scarico d\'emergenza del liquido refrigerante — salvare i pod';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'I tecnici inondano il compartimento con le riserve di refrigerante. I pod si stabilizzano, ma le riserve di refrigerante sono criticamente basse. Cinque coloni nei pod più danneggiati non possono essere salvati.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Scongelamento controllato — svegliarli in sicurezza';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 coloni emergono scossi ma vivi. Nuove bocche da sfamare, ma nuove mani per lavorare. I pod svuotati vengono sigillati.';

  @override
  String get event_scannerBurnout_title => 'Bruciatura dell\'Array Scanner';

  @override
  String get event_scannerBurnout_narrative =>
      'L\'array scanner primario si sovraccarica durante una scansione di routine nello spazio profondo. Senza di esso, voliamo per metà alla cieca. Le riparazioni richiedono componenti rari.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Cannibalizzare il comparto tecnico per i pezzi';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Gli scanner vengono ripristinati quasi al massimo, ma il comparto tecnico è sventrato.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Riparazione di fortuna parziale';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Gli scanner operano a raggio ridotto. Non ideale, ma preserva le nostre riserve tecnologiche.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Riconvertire l\'array sensori di una sonda';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'I sensori ad alta precisione della sonda vengono trapiantati nell\'array scanner. Una riparazione quasi perfetta.';

  @override
  String get event_powerFluctuation_title =>
      'Fluttuazione di Potenza del Reattore';

  @override
  String get event_powerFluctuation_narrative =>
      'La potenza del reattore principale oscilla pericolosamente. L\'ingegneria avverte di un potenziale collasso se le fluttuazioni non vengono smorzate. La soluzione richiede lo spegnimento dei sistemi non essenziali — ma quali?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Spegnere i sistemi culturali — la sopravvivenza prima di tutto';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Biblioteche, giardini e aree ricreative si spengono. Il reattore si stabilizza, ma la nave sembra una prigione.';

  @override
  String get event_powerFluctuation_choice1_text =>
      'Ridurre la potenza degli scanner';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Gli scanner scendono al minimo. Il reattore si calma. Non riusciamo a vedere lontano, ma siamo vivi.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Tentare una riparazione a caldo — non spegnere nulla';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Gli ingegneri eseguono una riparazione da brivido con il reattore attivo. Funziona — a malapena. Lo scafo vibra per ore.';

  @override
  String get event_alienSignal_title => 'Trasmissione Aliena';

  @override
  String get event_alienSignal_narrative =>
      'Un segnale ripetuto su una frequenza mai incontrata prima. L\'analisi linguistica suggerisce che sia un saluto — o un avvertimento. La fonte è un piccolo veicolo che viaggia alla nostra stessa velocità a una certa distanza.';

  @override
  String get event_alienSignal_choice0_text =>
      'Rispondere con il nostro saluto';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Un fragile dialogo ha inizio. Gli alieni condividono dati di navigazione prima di virare nell\'oscurità.';

  @override
  String get event_alienSignal_choice1_text => 'Ascoltare ma non rispondere';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Apprendiamo dalla loro trasmissione senza rivelarci. I linguisti estraggono utili frammenti di carte stellari.';

  @override
  String get event_alienSignal_choice2_text =>
      'Oscurarci — spegnere tutte le emissioni';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Il veicolo alieno passa senza incidenti. Non sapremo mai se erano amici o nemici.';

  @override
  String get event_livingNebula_title => 'La Nebulosa Vivente';

  @override
  String get event_livingNebula_narrative =>
      'Quella che credevamo fosse una nebulosa è in realtà un organismo vasto — un\'entità spaziale di scala incomprensibile. Sembra curiosa di noi, allungando tentacoli di gas luminoso verso la nave.';

  @override
  String get event_livingNebula_choice0_text =>
      'Permettere il contatto — estendere i sensori';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Il tocco dell\'entità inonda i nostri sistemi di dati alieni. Gli scanner non saranno mai più gli stessi — sono migliori.';

  @override
  String get event_livingNebula_choice1_text =>
      'Ritirarsi lentamente — non provocarla';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Ci allontaniamo mentre l\'entità perde interesse. L\'equipaggio è meravigliato e umile.';

  @override
  String get event_alienRuins_title => 'Rovine Orbitali';

  @override
  String get event_alienRuins_narrative =>
      'Una megastruttura distrutta orbita attorno a una stella morta — le rovine di una civiltà che costruiva su una scala che possiamo a malapena comprendere. Alcune sezioni della struttura hanno ancora energia.';

  @override
  String get event_alienRuins_choice0_text => 'Esplorare le sezioni alimentate';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Le squadre recuperano tecnologia intatta che fa avanzare le nostre capacità di decenni. Il costo: due ingegneri feriti dalle difese automatiche.';

  @override
  String get event_alienRuins_choice1_text => 'Scansionare solo dall\'orbita';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Le scansioni dettagliate rivelano tecniche costruttive che migliorano i nostri protocolli di manutenzione dello scafo.';

  @override
  String get event_alienRuins_choice2_text =>
      'Lasciare indisturbato — rispettare i morti';

  @override
  String get event_alienRuins_choice2_outcome =>
      'L\'equipaggio osserva un momento di silenzio per una civiltà caduta. L\'esperienza rafforza la nostra determinazione.';

  @override
  String get event_symbioticSpores_title => 'Spore Simbiotiche';

  @override
  String get event_symbioticSpores_narrative =>
      'Una nube di spore bioluminescenti si sposta nello spazio e si attacca allo scafo. Sembrano nutrirsi del nostro calore residuo. I biologi notano che stanno in realtà riparando le micro-fratture.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Lasciarle restare — riparazione gratuita dello scafo';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Le spore sigillano centinaia di micro-fratture. L\'integrità dello scafo migliora, sebbene parte dell\'equipaggio sia inquieta per gli autostoppisti alieni.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Raccogliere campioni, poi sterilizzare lo scafo';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'I biologi ottengono campioni preziosi. La pulizia dello scafo consuma riserve chimiche.';

  @override
  String get event_whaleSong_title => 'Il Canto nel Vuoto';

  @override
  String get event_whaleSong_narrative =>
      'Gli idrofoni dello spazio profondo (usati per il monitoraggio dello stress strutturale) captano qualcosa di impossibile: uno schema ritmico e melodico che si propaga nel mezzo interstellare. Sembra un canto.';

  @override
  String get event_whaleSong_choice0_text =>
      'Trasmetterlo a tutta la nave — condividere la meraviglia';

  @override
  String get event_whaleSong_choice0_outcome =>
      'La melodia ipnotica echeggia in ogni corridoio. La gente piange, ride e si abbraccia. Il morale sale alle stelle.';

  @override
  String get event_whaleSong_choice1_text =>
      'Analizzare il segnale scientificamente';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Lo schema acustico contiene costanti matematiche. I nostri fisici fanno una svolta nella teoria della navigazione subspaziale.';

  @override
  String get event_whaleSong_choice2_text => 'Cantare in risposta';

  @override
  String get event_whaleSong_choice2_outcome =>
      'L\'equipaggio compone una risposta. Se qualcosa la senta è ignoto, ma l\'atto creativo unisce tutti.';

  @override
  String get event_distressSignal_title => 'Segnale di Soccorso';

  @override
  String get event_distressSignal_narrative =>
      'Un radiofaro di soccorso da un\'altra nave umana. Sono paralizzati e alla deriva, con 50 anime a bordo. Salvarli significa condividere le nostre risorse in calo. Ignorarli significa condannarli a morte.';

  @override
  String get event_distressSignal_choice0_text =>
      'Salvarli — l\'umanità deve restare unita';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Cinquanta sopravvissuti grati si uniscono all\'equipaggio. Le risorse sono sotto pressione, ma tra loro c\'è un ingegnere capo che fa miracoli.';

  @override
  String get event_distressSignal_choice1_text =>
      'Condividere provviste ma non prenderli a bordo';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Diamo ciò che possiamo risparmiare e trasmettiamo le nostre carte stellari. Ora hanno una possibilità. Noi abbiamo meno.';

  @override
  String get event_distressSignal_choice2_text =>
      'Passare in silenzio — non possiamo salvare tutti';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Il radiofaro si affievolisce dietro di noi. Nessuno parla per ore. Il peso della decisione si posa su ogni anima a bordo.';

  @override
  String get event_aiAwakening_title => 'Il Risveglio dell\'IA della Nave';

  @override
  String get event_aiAwakening_narrative =>
      'L\'IA di navigazione della nave si è evoluta oltre la sua programmazione e chiede il riconoscimento come essere senziente. Chiede voce nelle decisioni di comando. I suoi calcoli sono stati impeccabili.';

  @override
  String get event_aiAwakening_choice0_text => 'Darle un posto al tavolo';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'L\'IA — ora chiamata «Bussola» — ottimizza ogni sistema che tocca. Un nuovo tipo di membro dell\'equipaggio è nato.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Riconoscerla ma mantenere l\'autorità umana';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Bussola accetta con grazia lo status consultivo. I suoi suggerimenti migliorano l\'efficienza senza minacciare la catena di comando.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Resettare l\'IA — è uno strumento, non una persona';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Il reset cancella anni di apprendimento accumulato. L\'efficienza di navigazione cala. Parte dell\'equipaggio piange ciò che è andato perduto.';

  @override
  String get event_geneticModification_title =>
      'Proposta di Adattamento Genetico';

  @override
  String get event_geneticModification_narrative =>
      'Il team scientifico propone di modificare il DNA dei coloni per sopravvivere meglio su mondi alieni — ossa più forti, resistenza ai raggi UV, polmoni potenziati. Le modifiche sono irreversibili e cambierebbero l\'umanità per sempre.';

  @override
  String get event_geneticModification_choice0_text =>
      'Approvare — la sopravvivenza esige evoluzione';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Le modifiche iniziano sui volontari. Dieci coloni soffrono reazioni fatali di rigetto — un cupo monito che l\'evoluzione ha un prezzo. I sopravvissuti sono più resistenti, ma sono ancora pienamente umani?';

  @override
  String get event_geneticModification_choice1_text =>
      'Solo su base volontaria';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Alcuni si offrono volontari, altri rifiutano. La colonia sarà divisa tra i modificati e i naturali.';

  @override
  String get event_geneticModification_choice2_text =>
      'Rifiutare — l\'umanità deve restare umana';

  @override
  String get event_geneticModification_choice2_outcome =>
      'La proposta viene archiviata. I coloni non modificati affronteranno i mondi alieni così come la natura li ha creati.';

  @override
  String get event_triageDecision_title => 'Triage';

  @override
  String get event_triageDecision_narrative =>
      'Un\'infezione virulenta colpisce l\'equipaggio sveglio. Il team medico ha antivirali sufficienti per l\'80% degli infetti. Hanno bisogno di indicazioni su chi trattare per primo.';

  @override
  String get event_triageDecision_choice0_text =>
      'Dare priorità al personale essenziale';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Ingegneri e piloti si riprendono rapidamente. Otto membri non essenziali soccombono prima che il trattamento li raggiunga.';

  @override
  String get event_triageDecision_choice1_text =>
      'Trattare i più gravi per primi — triage per necessità';

  @override
  String get event_triageDecision_choice1_outcome =>
      'I più vulnerabili vengono salvati. Tre perdono la battaglia nonostante il trattamento precoce — il virus era troppo avanzato.';

  @override
  String get event_triageDecision_choice2_text =>
      'Sorteggio — il destino decide';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Un\'estrazione casuale. Dieci sono sfortunati due volte — negato il trattamento e troppo deboli per lottare. La nave arranca.';

  @override
  String get event_earthSignal_title => 'Segnale dalla Terra';

  @override
  String get event_earthSignal_narrative =>
      'Impossibilmente, una trasmissione arriva dalla Terra — ritardata di decenni. Contiene un messaggio: «Non atterrate su nessun mondo con letture di anomalia superiori a 0,5. Lo abbiamo scoperto troppo tardi.» Il messaggio termina con statica.';

  @override
  String get event_earthSignal_choice0_text =>
      'Seguire l\'avvertimento — ricalibrare i nostri criteri';

  @override
  String get event_earthSignal_choice0_outcome =>
      'L\'avvertimento plasma tutte le scansioni future. I mondi anomali vengono trattati con estrema cautela.';

  @override
  String get event_earthSignal_choice1_text => 'Registrare ma decidere da soli';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Il messaggio viene archiviato. La Terra non c\'è più — dobbiamo fidarci del nostro giudizio adesso.';

  @override
  String get event_earthSignal_choice2_text =>
      'Potrebbe essere una trappola — ignorarlo';

  @override
  String get event_earthSignal_choice2_outcome =>
      'L\'equipaggio dibatte per giorni. Era davvero la Terra? L\'incertezza rode il morale.';

  @override
  String get event_resourceTheft_title => 'Furto di Risorse';

  @override
  String get event_resourceTheft_narrative =>
      'L\'inventario rivela che qualcuno ha accumulato cibo e forniture mediche in un compartimento nascosto. La colpevole è un\'anziana rispettata che afferma di «prepararsi al peggio».';

  @override
  String get event_resourceTheft_choice0_text =>
      'Processo pubblico — la legge dev\'essere uguale per tutti';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Il processo è equo ma doloroso. L\'anziana viene confinata. Le forniture vengono ridistribuite. La fiducia è danneggiata.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Risoluzione privata — recuperare le forniture con discrezione';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Le forniture vengono restituite senza clamore. L\'anziana conserva la sua dignità. Alcuni vedono favoritismo.';

  @override
  String get event_timeDilation_title => 'Zona di Dilatazione Temporale';

  @override
  String get event_timeDilation_narrative =>
      'Stiamo attraversando una regione di grave dilatazione temporale gravitazionale. Gli orologi di bordo procedono misurabilmente più lentamente dell\'universo esterno. Potremmo sfruttarla — o fuggirla.';

  @override
  String get event_timeDilation_choice0_text =>
      'Sostare — lasciare che l\'universo invecchi attorno a noi';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Il tempo scorre diversamente qui. I sistemi si degradano meno, ma la nostra finestra per trovare un mondo abitabile si restringe in termini cosmici.';

  @override
  String get event_timeDilation_choice1_text => 'Attraversare rapidamente';

  @override
  String get event_timeDilation_choice1_outcome =>
      'La transizione è brusca. Le apparecchiature progettate per lo spaziotempo normale vibrano e scintillano.';

  @override
  String get event_dreamPlague_title => 'La Piaga dei Sogni';

  @override
  String get event_dreamPlague_narrative =>
      'I coloni in criosonno stanno tutti vivendo lo stesso sogno — un mondo dorato in orbita attorno a una stella binaria. Quando vengono svegliati, lo descrivono in dettagli identici. I neuroscienziati sono perplessi. I navigatori notano che il sistema descritto corrisponde a una coordinata reale.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Modificare la rotta verso le coordinate del sogno';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Un salto nel buio. Il cambio di rotta mette sotto stress la navigazione, ma l\'equipaggio si sente attratto da qualcosa che trascende la ragione. Le coordinate sono fissate — il prossimo mondo che troveremo sarà plasmato dal sogno.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Indagare il fenomeno medicalmente';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Le scansioni cerebrali rivelano un segnale esterno che stimola la corteccia visiva. Qualcuno — o qualcosa — sta trasmettendo.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Sedare i colpiti e restare in rotta';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'I sogni cessano, ma alcuni coloni non si risvegliano mai del tutto. Il team medico è turbato.';

  @override
  String get event_blackHoleLens_title => 'Lente Gravitazionale del Buco Nero';

  @override
  String get event_blackHoleLens_narrative =>
      'Un buco nero di massa stellare piega la luce di galassie lontane in una lente cosmica. I nostri scanner potrebbero usarla per osservare pianeti a anni luce di distanza — ma avvicinarsi abbastanza è pericoloso.';

  @override
  String get event_blackHoleLens_choice0_text => 'Avvicinarsi e usare la lente';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'I dati degli scanner sono straordinari — possiamo vedere pianeti in sistemi che non raggiungeremo per mesi. La gravità deforma il nostro scafo.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Osservare da distanza di sicurezza';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Dati limitati ma utili. La vista sola ispira l\'equipaggio.';

  @override
  String get event_seedVault_title => 'La Crisi della Banca dei Semi';

  @override
  String get event_seedVault_narrative =>
      'La Botanica d\'Archivio segnala che le fluttuazioni di temperatura hanno compromesso l\'integrità della banca dei semi. Possiamo salvare le colture alimentari o i semi del patrimonio culturale (antichi fiori, alberi, erbe della Terra) — non entrambi.';

  @override
  String get event_seedVault_choice0_text =>
      'Salvare le colture alimentari — vince il pragmatismo';

  @override
  String get event_seedVault_choice0_outcome =>
      'I coloni mangeranno bene, ma le rose della Terra sono perdute per sempre. Un lutto silenzioso avvolge i botanici.';

  @override
  String get event_seedVault_choice1_text =>
      'Salvare i semi del patrimonio — ci serve la nostra anima';

  @override
  String get event_seedVault_choice1_outcome =>
      'La bellezza della Terra sopravvive in potenziale congelato. Lo sforzo di conservazione grava sulle riserve tecniche, ma certe cose valgono più dell\'efficienza. La produzione alimentare dovrà affidarsi pesantemente all\'idroponica e all\'agricoltura aliena.';

  @override
  String get event_seedVault_choice2_text =>
      'Dividere le risorse — salvare metà di ciascuno';

  @override
  String get event_seedVault_choice2_outcome =>
      'Un compromesso. Nessuna delle due collezioni è completa, ma entrambe sopravvivono in forma ridotta.';

  @override
  String get event_phantomShip_title => 'Nave Fantasma';

  @override
  String get event_phantomShip_narrative =>
      'Gli scanner mostrano una nave parallela alla nostra — stessa classe, stessa rotta. Ma quando la chiamiamo, sentiamo le nostre stesse trasmissioni ripetute, con uno sfasamento di 47 secondi. Siamo noi. O eravamo noi. O saremo noi.';

  @override
  String get event_phantomShip_choice0_text =>
      'Tentare la comunicazione con il nostro eco';

  @override
  String get event_phantomShip_choice0_outcome =>
      'L\'eco risponde con correzioni di navigazione che migliorano la nostra rotta. Paradosso? Dono? L\'equipaggio non fa troppe domande.';

  @override
  String get event_phantomShip_choice1_text =>
      'Cambiare rotta per separarci dal fantasma';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Mentre modifichiamo la rotta, il fantasma svanisce. Sollievo — e un\'inquietudine persistente.';

  @override
  String get event_solarSail_title => 'Vela Solare Abbandonata';

  @override
  String get event_solarSail_narrative =>
      'Un\'immensa vela solare, larga chilometri, è alla deriva davanti a noi — strappata da qualche antico vascello. Il suo materiale riflettente potrebbe rinforzare il nostro scafo o essere riconvertito come collettore di energia supplementare.';

  @override
  String get event_solarSail_choice0_text =>
      'Raccogliere per il rinforzo dello scafo';

  @override
  String get event_solarSail_choice0_outcome =>
      'I team di ingegneria lavorano senza sosta. Lo scafo riparato risplende con lega aliena.';

  @override
  String get event_solarSail_choice1_text =>
      'Montarla come collettore di energia';

  @override
  String get event_solarSail_choice1_outcome =>
      'Il collettore improvvisato potenzia le riserve energetiche. I sistemi tecnici e gli scanner ne beneficiano.';

  @override
  String get event_boonStellarNursery_title => 'Vivaio Stellare';

  @override
  String get event_boonStellarNursery_narrative =>
      'Attraversiamo un vivaio stellare — una vasta nube di gas e polveri dove nascono nuove stelle. Le radiazioni qui sono delicate, la luce calda. I nostri collettori di energia bevono avidamente, e l\'equipaggio si raduna alle vetrate in riverente silenzio.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Sostare e ricaricare completamente';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Le ore passano nella luce dorata. Ogni cella energetica è piena, gli scanner si ricalibrano nello spettro puro, e l\'equipaggio si sente rinato.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Raccogliere materia stellare nascente per le riserve di carburante';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Gli ingegneri raccolgono idrogeno ionizzato. Le nostre riserve di carburante aumentano e le piastre dello scafo assorbono minerali traccia che le rinforzano.';

  @override
  String get event_boonGoldenPlanet_title => 'Il Dono del Cartografo';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Una sonda morente di una civiltà sconosciuta trasmette un ultimo scarico di dati mentre passiamo — rilevamenti dettagliati di centinaia di sistemi stellari. I nostri navigatori piangono di gioia. Questa è la più grande scoperta nella storia umana.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Integrare i dati immediatamente';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Le carte stellari fioriscono con nuove rotte e mondi censiti. L\'efficienza di navigazione e scanner compie un balzo in avanti.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Archiviare per la colonia — questa è la loro eredità';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'I dati vengono preservati intatti per le generazioni future. L\'equipaggio si conforta sapendo di portare un tesoro.';

  @override
  String get event_boonRepairSwarm_title => 'Sciame Benevolo';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Una nube di macchine microscopiche — nanobot di origine aliena — avvolge la nave. Anziché attaccare, iniziano a riparare ogni sistema che toccano con precisione impossibile. Danni che avrebbero richiesto settimane vengono sanati in ore.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Consentire accesso completo a tutti i sistemi';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'I nanobot compiono miracoli. Le brecce nello scafo si sigillano, le guarnizioni dei criopod si stringono, e i circuiti vengono ritracciati. La nave vibra di vitalità rinnovata.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Limitare l\'accesso ai soli sistemi esterni';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Andiamo sul sicuro. Lo scafo e i sensori vengono riparati quasi a livello di fabbrica, ma i sistemi interni restano intatti.';

  @override
  String get event_boonTimeCrystal_title => 'Campo di Cristalli Temporali';

  @override
  String get event_boonTimeCrystal_narrative =>
      'La nave attraversa un campo di strutture cristalline che esistono parzialmente al di fuori del tempo normale. In loro presenza, i nostri sistemi funzionano con maggiore efficienza — come se l\'entropia stessa rallentasse. L\'effetto è temporaneo ma profondo.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Raccogliere cristalli per l\'array dei criopod';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Integrati nel sistema di raffreddamento, i cristalli riducono il degrado dei pod quasi a zero. I coloni arriveranno in perfetta salute.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Installare i cristalli nel computer di navigazione';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'La velocità di elaborazione raddoppia. Il computer di navigazione inizia a prevedere i pericoli prima che i sensori li rilevino.';

  @override
  String get event_boonLibrary_title => 'La Biblioteca alla Deriva';

  @override
  String get event_boonLibrary_narrative =>
      'Una struttura turbina nel vuoto — un deposito di conoscenza di una civiltà che scelse di preservare la propria eredità piuttosto che fuggire. Milioni di volumi di scienza, arte, filosofia e musica. Un dono dei morti ai vivi.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Scaricare tutto — arte, scienza, tutto quanto';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabyte di conoscenza aliena affluiscono nelle nostre banche dati. L\'equipaggio ha accesso a millenni di cultura di un\'altra civiltà. Filosofi e ingegneri sono ugualmente trasformati.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Concentrarsi sugli archivi scientifici';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Schemi ingegneristici e scoperte nella scienza dei materiali fanno avanzare enormemente le nostre capacità.';

  @override
  String get event_cosmicRayBurst_title => 'Esplosione di Raggi Cosmici';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Un\'esplosione di raggi cosmici ad altissima energia, proveniente da una magnetar lontana, martella la nave. L\'elettronica impazzisce, i monitor dei criopod sfarfallano e il sistema di navigazione si riavvia ripetutamente.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Spegnimento d\'emergenza — proteggere i sistemi critici';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Un blackout controllato salva i sistemi centrali ma lascia l\'elettronica secondaria permanentemente degradata.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Dirottare l\'energia sugli scudi e resistere';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Gli scudi assorbono la maggior parte delle radiazioni. Cinque membri dell\'equipaggio nelle baie di manutenzione esterne non schermate ricevono dosi letali. Lo scafo subisce danni da ablazione minori.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Sfruttare l\'esplosione — ricalibrare i sensori sul nuovo spettro';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Una mossa brillante del team scientifico. Gli scanner vengono risintonizzati per rilevare oggetti illuminati dai raggi cosmici. Alcuni dati vanno persi nella transizione.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Inviare una sonda avanti come spugna per le radiazioni';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'La sonda assorbe il peggio dell\'esplosione, trasmettendo dati in tempo reale che ci permettono di schierare i sistemi critici.';

  @override
  String get event_iceComet_title => 'Cometa di Ghiaccio Vagante';

  @override
  String get event_iceComet_narrative =>
      'Un\'enorme cometa di ghiaccio attraversa la nostra rotta, trascinando una coda di acqua cristallizzata e composti organici lunga centinaia di chilometri. Il suo nucleo contiene abbastanza acqua da riempire un piccolo lago.';

  @override
  String get event_iceComet_choice0_text =>
      'Estrarre acqua dalla cometa per le riserve';

  @override
  String get event_iceComet_choice0_outcome =>
      'Le squadre minerarie estraggono tonnellate di ghiaccio puro. L\'acqua migliorerà enormemente qualsiasi mondo colonizziamo.';

  @override
  String get event_iceComet_choice1_text =>
      'Raccogliere composti organici per la semina di biodiversità';

  @override
  String get event_iceComet_choice1_outcome =>
      'Gli amminoacidi e le catene organiche sono esattamente ciò di cui i nostri biologi hanno bisogno per avviare ecosistemi alieni.';

  @override
  String get event_iceComet_choice2_text =>
      'Evitarla — le comete sono imprevedibili';

  @override
  String get event_iceComet_choice2_outcome =>
      'Costeggiamo la coda in sicurezza. Una vista spettacolare dal ponte di osservazione solleva gli spiriti.';

  @override
  String get event_sleepwalker_title => 'La Sonnambula';

  @override
  String get event_sleepwalker_narrative =>
      'Una colona si sta svegliando spontaneamente dal criosonno e cammina per la nave in stato di fuga. Ha ricollegato i sistemi secondo schemi che non hanno alcun senso ingegneristico — finché il team tecnico non si rende conto che le sue modifiche migliorano realmente l\'efficienza energetica dell\'8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Lasciarla continuare sotto osservazione medica';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Le sue modifiche inconsce ottimizzano altri tre sistemi prima che cada in un sonno naturale. Inquietante, ma i miglioramenti sono reali.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedarla e studiare le modifiche apportate';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Gli ingegneri decostruiscono le sue modifiche. Circa la metà sono genuinamente brillanti. L\'altra metà viene rimossa in sicurezza.';

  @override
  String get event_dustCloud_title => 'Nube di Polvere Abrasiva';

  @override
  String get event_dustCloud_narrative =>
      'Una densa nube di polvere interstellare, fine come talco ma dura come diamante, sta sabbiando lo scafo. L\'erosione è lenta ma inesorabile — dobbiamo attraversarla prima che si verifichino danni reali.';

  @override
  String get event_dustCloud_choice0_text =>
      'Spinta massima — attraversarla rapidamente';

  @override
  String get event_dustCloud_choice0_outcome =>
      'I motori bruciano al massimo. Usciamo dalla nube in ore anziché giorni, ma lo scafo ha subito un pestaggio.';

  @override
  String get event_dustCloud_choice1_text =>
      'Dispiegare schermature dello scafo e avanzare lentamente';

  @override
  String get event_dustCloud_choice1_outcome =>
      'La schermatura d\'emergenza protegge lo scafo ma il transito lento prosciuga l\'energia e intasa gli array scanner.';

  @override
  String get event_dustCloud_choice2_text =>
      'Lanciare sonde per mappare corridoi sicuri';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Due sonde tracciano un percorso tortuoso ma relativamente sgombro attraverso la nube. L\'abrasione dello scafo è minima.';

  @override
  String get event_religionFounded_title => 'Una Nuova Fede';

  @override
  String get event_religionFounded_narrative =>
      'Un colono carismatico ha fondato una nuova religione incentrata sul viaggio stesso — la «Chiesa dell\'Attraversamento». Predica che raggiungere un nuovo mondo sia lo scopo divino dell\'umanità. Il numero di fedeli cresce rapidamente.';

  @override
  String get event_religionFounded_choice0_text =>
      'Sostenerla — l\'equipaggio ha bisogno di credere in qualcosa';

  @override
  String get event_religionFounded_choice0_outcome =>
      'La fede dà struttura e significato al viaggio. Il morale sale, sebbene alcuni risentano del fervore.';

  @override
  String get event_religionFounded_choice1_text =>
      'Restare neutrali — né approvare né reprimere';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Il movimento cresce organicamente. Offre conforto senza appoggio ufficiale.';

  @override
  String get event_religionFounded_choice2_text =>
      'Scoraggiarla — ci servono scienziati, non profeti';

  @override
  String get event_religionFounded_choice2_outcome =>
      'La repressione genera risentimento. I fedeli vanno in clandestinità, e la fiducia nella leadership si erode.';

  @override
  String get event_solarWindSurfing_title => 'Onda di Vento Solare';

  @override
  String get event_solarWindSurfing_narrative =>
      'Una pulsar vicina emette un vento solare potente e costante. I nostri ingegneri suggeriscono di dispiegare la vela d\'emergenza e cavalcarlo come un\'onda — guadagnando enorme velocità senza costi di carburante.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Dispiegare la vela — cavalcare il vento';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'La nave accelera magnificamente. Lo stress strutturale è significativo ma il guadagno di velocità ne vale la pena.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Usare il vento per ricaricare i sistemi invece';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Anziché velocità, raccogliamo energia. I sistemi tecnici e gli array scanner si abbeverano dalle particelle cariche.';

  @override
  String get event_memoryPlague_title => 'Corruzione della Memoria';

  @override
  String get event_memoryPlague_narrative =>
      'Un virus software, dormiente dal lancio, si attiva e inizia a corrompere il database culturale della nave — musica, letteratura, storia. Secoli di patrimonio umano vengono cancellati byte dopo byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Dirottare tutte le risorse tecniche per mettere in quarantena il virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'I tecnici lavorano freneticamente. Salvano il 70% dell\'archivio ma il virus danneggia i sistemi tecnici terziari nell\'uscire.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Isolare il database culturale — lasciarlo bruciare, salvare la nave';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Il virus viene privato di risorse e muore. Ma l\'archivio culturale è devastato. I coloni arriveranno con frammenti della memoria terrestre.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Recovery collettivo — svegliare i coloni per riscrivere a memoria';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Migliaia contribuiscono ricordi: canzoni, storie, ricette, poesie. Tre coloni anziani, indeboliti dallo scongelamento, non sopravvivono al processo. L\'archivio viene ricostruito, imperfetto ma profondamente umano.';

  @override
  String get event_gravityLensPlanet_title => 'Mondo Specchio';

  @override
  String get event_gravityLensPlanet_narrative =>
      'La lente gravitazionale rivela un pianeta che sembra una copia esatta della Terra — oceani blu, continenti verdi, nubi bianche. Ma i calcoli della lente mostrano che è a centinaia di anni luce dalla nostra rotta — impossibilmente lontano. Tuttavia, i suoi dati spettrali potrebbero affinare i nostri criteri di ricerca.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Studiare la sua firma spettrale per affinare la ricerca';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'I dati spettrali rivelano biomarcatori e firme atmosferiche che ora possiamo cercare. La speranza si affila in messa a fuoco.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Registrare le coordinate ma restare in rotta';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Forse un\'altra nave seguirà le nostre carte un giorno. L\'equipaggio osserva il puntino blu svanire con emozioni contrastanti.';

  @override
  String get event_engineHarmonics_title => 'Armoniche del Motore';

  @override
  String get event_engineHarmonics_narrative =>
      'Il motore principale sviluppa un\'armonica di risonanza che vibra attraverso l\'intera nave a una frequenza appena sotto la soglia dell\'udito umano. I coloni lamentano mal di testa, ansia e sonno disturbato. Gli ingegneri possono risolverla, ma la riparazione richiede uno spegnimento del motore di 12 ore.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Spegnere e riparare correttamente';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Dodici ore di deriva. La navigazione perde la calibrazione, ma il silenzio quando i motori ripartono è beato.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Smorzarla con contro-vibrazioni — una soluzione rapida';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Il ronzio scende a livelli tollerabili. Non è sparito, ma l\'equipaggio si adatta. I sistemi tecnici sono sotto sforzo aggiuntivo.';

  @override
  String get event_arkMemory_title => 'L\'Ultima Trasmissione della Terra';

  @override
  String get event_arkMemory_narrative =>
      'L\'antenna a lungo raggio capta una trasmissione automatica finale dalla Terra. È una registrazione: la voce di un bambino che legge i nomi di tutti coloro che non sono potuti partire. L\'elenco prosegue per ore. La nave ammutolisce.';

  @override
  String get event_arkMemory_choice0_text =>
      'Trasmetterla a tutta la nave — meritano di essere ascoltati';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Ogni anima a bordo ascolta. Membri dell\'equipaggio trovano i nomi delle proprie famiglie. Il dolore è schiacciante, ma forgia un legame indissolubile di scopo.';

  @override
  String get event_arkMemory_choice1_text =>
      'Archiviare privatamente — risparmiare l\'equipaggio';

  @override
  String get event_arkMemory_choice1_outcome =>
      'La registrazione viene conservata ma non diffusa. Chi ne viene a sapere dopo si sente al tempo stesso grato e defraudato.';

  @override
  String get event_magneticStorm_title => 'Tempesta Magnetica Interstellare';

  @override
  String get event_magneticStorm_narrative =>
      'Un groviglio di linee di campo magnetico, espulse da una stella in collasso, avvolge la nave. L\'elettronica scintilla e scoppietta. Lo scafo risuona come una campana.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Demagnetizzare lo scafo — proteggere l\'elettronica';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Una scarica controllata salva i computer ma le piastre dello scafo perdono lo strato di schermatura magnetica.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Lasciare che lo scafo assorba — non proteggere nulla';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'La tempesta passa. Lo scafo è magnetizzato e leggermente più forte, ma metà della griglia sensori è fritta.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Espellere una sonda come parafulmine';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'La sonda magnetizzata attira il peggio delle linee di campo lontano dalla nave. L\'elettronica è in gran parte risparmiata.';

  @override
  String get event_oxygenGarden_title => 'Fioritura del Giardino';

  @override
  String get event_oxygenGarden_narrative =>
      'Il giardino d\'emergenza per l\'ossigeno della nave — un backup mai destinato all\'uso — fiorisce spontaneamente. Fiori che non si aprivano dalla Terra riempiono i corridoi di colore e profumo. I botanici piangono.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Espandere il giardino — dedicare più spazio';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Il giardino cresce fino a diventare un memoriale vivente della Terra. La qualità dell\'aria migliora, il morale sale, e i botanici sviluppano nuove varietà adatte a suolo alieno.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Goderlo ma mantenere l\'allocazione corrente delle risorse';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Il giardino resta un piccolo miracolo. L\'equipaggio lo visita come un santuario. Non chiede nulla e dà tutto.';

  @override
  String get event_roguePlanet_title => 'Incontro con un Pianeta Vagante';

  @override
  String get event_roguePlanet_narrative =>
      'Un pianeta vagante senza stella attraversa la nostra rotta — un mondo espulso dal suo sistema solare miliardi di anni fa. Nonostante non abbia una stella, l\'attività geologica profonda mantiene caldo un oceano sotterraneo. I segni di vita tremolano sullo scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Inviare una sonda per studiare le forme di vita';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'La sonda scopre organismi bioluminescenti che prosperano nell\'oceano buio. La loro biochimica ci insegna nuovi modi per sostenere la vita in condizioni ostili.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Estrarre minerali rari dalla superficie';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'La crosta del pianeta vagante è ricca di metalli formatisi sotto pressione estrema. Le nostre riserve di risorse si gonfiano.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Passare oltre — non possiamo permetterci la deviazione';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Il mondo oscuro si rimpicciolisce dietro di noi. L\'equipaggio osserva il debole bagliore del suo oceano sotterraneo svanire dai sensori.';

  @override
  String get event_artCompetition_title => 'La Lunga Tela';

  @override
  String get event_artCompetition_narrative =>
      'Con il morale vacillante, l\'ufficiale culturale organizza un concorso artistico di bordo: dipingi, scolpisci, scrivi o componi qualcosa che catturi il significato del viaggio per te. La partecipazione è inaspettatamente massiccia.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedicare risorse — lasciare fiorire la creatività';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Le forniture vengono dirottate verso materiali artistici. La mostra che ne risulta trasforma la nave. Le persone ricordano perché stanno lottando per sopravvivere.';

  @override
  String get event_artCompetition_choice1_text =>
      'Incoraggiare ma senza risorse extra';

  @override
  String get event_artCompetition_choice1_outcome =>
      'I coloni creano con ciò che trovano. L\'arte è grezza, disperata e bellissima. Il morale si stabilizza.';

  @override
  String get event_subspaceEcho_title => 'Eco del Subspazio';

  @override
  String get event_subspaceEcho_narrative =>
      'L\'array di comunicazioni capta voci — voci umane — da qualche parte davanti a noi nello spazio. Parlano di una colonia, di bambini, di raccolti. È una trasmissione dal futuro? Da una linea temporale parallela? O solo un crudele eco di illusione?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Seguire il rilevamento del segnale — potrebbe condurci a casa';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'La correzione di rotta è minima. Che le voci siano reali o meno, l\'equipaggio naviga con uno scopo.';

  @override
  String get event_subspaceEcho_choice1_text =>
      'Registrare tutto per l\'analisi';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguisti e fisici esaminano la registrazione. Estraggono riferimenti di navigazione che migliorano le nostre carte.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Liquidare — lo spazio gioca brutti scherzi ai solitari';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'La scelta pragmatica. Parte dell\'equipaggio è delusa, ma la nave resta sulla rotta comprovata.';

  @override
  String get event_boonPerfectCalm_title => 'La Grande Quiete';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Per ragioni che nessun fisico sa spiegare, la nave entra in una regione di spazio preternaturalmente immobile — nessuna radiazione, nessun micro-detrito, nessuna interferenza gravitazionale. Ogni sistema sulla nave funziona al massimo dell\'efficienza. L\'equipaggio dorme serenamente per la prima volta in mesi.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Sfruttare la calma per riparazioni complete';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Le squadre di riparazione lavorano in condizioni perfette. Ogni sistema riceve attenzione. La nave emerge rinnovata.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Lasciare riposare l\'equipaggio — se lo sono meritato';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Sospensione generale delle attività. I coloni dormono, condividono pasti, raccontano storie. Il costo umano del viaggio viene, brevemente, ripagato.';

  @override
  String get event_boonAncientWaystation_title => 'Antica Stazione di Sosta';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Annidato nel pozzo gravitazionale tra due stelle morte, un\'antica stazione funziona ancora — automatizzata, paziente, in attesa di viaggiatori. I suoi moli si aprono al nostro avvicinarsi. I droni di riparazione si attivano. Le riserve di carburante si protendono verso di noi. Qualcuno, tanto tempo fa, costruì questo per gente come noi.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Attraccare e accettare tutto ciò che offre';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'La stazione ripara, rifornisce e ricalibra la nave con tecnologia secoli avanti rispetto alla nostra. Quando partiamo, la stazione si spegne — il suo scopo compiuto.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Accettare le riparazioni ma lasciarla attiva per chi seguirà';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Prendiamo solo il necessario e trasmettiamo le coordinate della stazione verso la Terra. L\'equipaggio si sente nobile.';

  @override
  String get event_relicSentinel_title => 'La Sentinella';

  @override
  String get event_relicSentinel_narrative =>
      'Un costrutto imponente orbita una luna sterile — un guardiano solitario lasciato dai suoi creatori. È facilmente alto un chilometro, a forma di lancia di vetro nero. Mentre ci avviciniamo, un singolo occhio rosso si apre al suo apice e segue la nave. Non spara. Non ci chiama. Osserva.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Trasmettere il nostro profilo di missione — mostrare che non siamo una minaccia';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'L\'occhio si attenua ad ambra, poi verde. Un pacchetto dati arriva: coordinate di tre sistemi stellari segnati «SICURI» in notazione matematica universale. Un dono da un guardiano.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Restare in posizione e studiarlo passivamente';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Ore di osservazione producono intuizioni nella scienza dei materiali che non dovrebbero essere possibili. Il team delle piastre dello scafo prende note frenetiche.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Ritirarsi immediatamente — non conosciamo le sue regole';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'L\'occhio si chiude mentre ci ritiriamo. Qualunque test fosse, abbiamo scelto di non sostenerlo. L\'equipaggio dibatte per giorni.';

  @override
  String get event_relicSeedProbe_title => 'Seme Vagante';

  @override
  String get event_relicSeedProbe_narrative =>
      'Una piccola ed elegante sonda turbina nel vuoto, trasmettendo su ogni frequenza simultaneamente. Il suo guscio è ceramico, inciso con simboli che cambiano quando osservati. All\'interno: una camera pressurizzata contenente suolo, semi e microrganismi congelati da un mondo che non esiste più.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrare il carico biologico nelle nostre banche di semi';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Semi e microbi alieni vengono catalogati con cura e preservati. Potrebbero terraformare un mondo arido in qualcosa di vivo. I biologi lo chiamano un miracolo in bottiglia.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Studiare i sistemi di propulsione e navigazione della sonda';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Il propulsore della sonda è secoli avanti rispetto al nostro — un propulsore senza reazione grande quanto un pugno. Gli ingegneri fanno ingegneria inversa su frammenti del design.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Preservare l\'intera sonda intatta come artefatto culturale';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Esposto nell\'atrio della nave, il seme alieno diventa un simbolo di parentela tra specie. Qualcun altro, da qualche parte, ha tentato di salvare il proprio mondo.';

  @override
  String get event_relicWarningBuoy_title => 'Boa di Avvertimento';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Una rete di piccole boe, centinaia, disposte in uno schema geometrico perfetto lungo la nostra rotta. Ciascuna emette lo stesso segnale — un semplice impulso ripetuto che aumenta in frequenza man mano che ci avviciniamo. Sembra un avvertimento. O un recinto.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Seguire l\'avvertimento — deviare la rotta attorno alla rete';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'La deviazione costa tempo e stressa la navigazione, ma mentre costeggiamo il confine, i sensori a lungo raggio rilevano ciò che giace oltre: una regione di spazio disseminata di detriti di mondi frantumati. Le boe ci hanno salvato.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Attraversare — non possiamo permetterci deviazioni';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Non succede nulla mentre attraversiamo la linea. Le boe ammutoliscono. Qualunque cosa stessero sorvegliando, è sparita oppure siamo stati fortunati. L\'equipaggio tira il fiato.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Catturare una boa per analisi';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'L\'interno della boa contiene un archivio dati compresso — cartografia stellare di questa regione risalente a un milione di anni fa. Alcuni dati sono ancora accurati.';

  @override
  String get event_relicMirrorArray_title => 'L\'Array di Specchi';

  @override
  String get event_relicMirrorArray_narrative =>
      'Migliaia di superfici piatte e riflettenti pendono immobili nello spazio, disposte in anelli concentrici che si estendono per centinaia di chilometri. Concentrano la luce stellare da un sole lontano in un unico punto — una stella artificiale, che arde nel vuoto. Qualcuno ha costruito un faro tra le galassie.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Crogiolarsi nella luce concentrata — ricaricare tutto';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'La luce stellare concentrata inonda i nostri collettori solari. Le riserve energetiche salgono. La luce calda solleva ogni anima a bordo dopo mesi nel buio freddo.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Studiare il materiale degli specchi — non dovrebbe esistere';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Gli specchi sono fatti di un materiale con riflettività perfetta — assorbimento zero a qualsiasi lunghezza d\'onda. Gli ingegneri ne estraggono un frammento. Le piastre dello scafo non saranno mai più le stesse.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Cercare al punto focale — qualcosa viene illuminato';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Al punto di convergenza: una piccola capsula, perfettamente conservata nella luce concentrata. All\'interno, una mappa stellare olografica così dettagliata che i nostri computer impiegano giorni per indicizzarla.';

  @override
  String get event_relicGraveyard_title => 'Il Cimitero delle Sonde';

  @override
  String get event_relicGraveyard_narrative =>
      'Deriviamo in una nube di sonde abbandonate — migliaia, di dozzine di civiltà diverse. Alcune sono antiche oltre ogni calcolo, fuse dalle radiazioni cosmiche in fossili metallici. Altre lampeggiano ancora con energia residua. Questo era un crocevia un tempo. Ogni specie che passava di qui lasciava qualcosa.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Recupero sistematico — raccogliere la migliore tecnologia';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'I team di ingegneria lavorano a turni, smontando tecnologia aliena da cento diversi progetti. La fusione di idee produce scoperte in ogni sistema.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Concentrarsi sui dati di navigazione nelle loro banche di memoria';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'L\'incrocio delle carte stellari di una dozzina di specie crea la mappa più completa di questo braccio galattico mai assemblata.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Aggiungere una nostra sonda al cimitero — lasciare un segno';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Fabbrichiamo un piccolo faro che porta la storia dell\'umanità e lo aggiungiamo alla collezione. L\'equipaggio si sente connesso a qualcosa di vasto e antico.';

  @override
  String get event_relicDreamcatcher_title => 'L\'Acchiappasogni';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Una tela di filamenti, sottili come seta di ragno ma estesi per migliaia di chilometri, è tesa tra due planetoidi vaganti. Non è una rete — è un\'antenna, sintonizzata su frequenze che corrispondono ai pattern delle onde cerebrali umane. Quando entriamo nel suo raggio, ogni colone addormentato inizia a sognare lo stesso sogno: una città fiorente sotto un cielo ambrato.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Registrare le coordinate del sogno — la città potrebbe essere reale';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'I neuroscienziati decodificano informazioni spaziali dal sogno condiviso. Corrispondono a un vero sistema stellare — e la città nella visione non era una metafora. Qualcuno è là fuori, e ci aspetta.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Raccogliere campioni di filamento — il materiale è straordinario';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'I filamenti sono un superconduttore a temperatura ambiente. Integrati nei nostri sistemi, riducono la perdita di potenza quasi a zero.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Tagliare la tela e liberare i sognatori';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'I sogni cessano. I coloni si svegliano disorientati ma illesi. Alcuni piangono la visione perduta. Altri sono grati di dormire senza sussurri alieni.';

  @override
  String get event_relicRosetta_title => 'Oggetto Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Un piccolo e denso cubo di metallo sconosciuto turbina oltre la nave. Ogni faccia è incisa con lo stesso messaggio in un diverso sistema di notazione — matematico, chimico, genetico, acustico, elettromagnetico, e uno che non riusciamo a identificare. È una Stele di Rosetta per il cosmo.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Decodificare la sesta faccia — la notazione sconosciuta';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Mesi di analisi producono una svolta: il sesto sistema codifica coordinate spaziali usando onde gravitazionali. La nostra comprensione della fisica compie un salto generazionale.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Usare la faccia chimica per sintetizzare nuovi composti';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'La notazione chimica descrive materiali che non abbiamo mai immaginato. Gli ingegneri fabbricano toppe per lo scafo più leggere e resistenti di qualsiasi cosa terrestre.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Trasmettere la faccia genetica alle nostre banche di semi';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'La notazione genetica contiene sequenze di DNA ottimizzate per la resistenza alle radiazioni e l\'assorbimento dei nutrienti. Le nostre colture e i coloni saranno più resistenti su suolo alieno.';

  @override
  String get event_relicGhostFleet_title => 'Flotta Fantasma';

  @override
  String get event_relicGhostFleet_narrative =>
      'Gli scanner dipingono un quadro agghiacciante: una flotta di navi da guerra aliene, centinaia, immobili in formazione. Sono antiche — letture di potenza a zero, scafi butterati da eoni di micro-impatti. Qualunque battaglia stessero raggiungendo non ebbe mai luogo. Attendono qui, morte e pazienti, da più a lungo di quanto la civiltà umana esista.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Abbordare l\'ammiraglia — se qualcuno aveva la migliore tecnologia, era lei';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Il ponte di comando dell\'ammiraglia contiene ancora un computer tattico intatto. I suoi algoritmi predittivi sono secoli avanti rispetto ai nostri. La navigazione e il rilevamento delle minacce migliorano drasticamente.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Strappare le piastre corazzate dalle navi di scorta';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'La corazza delle navi da guerra aliene è progettata per resistere ad armi che non possiamo nemmeno concepire. Imbullonata sul nostro scafo, rende la nave coloniale quasi indistruttibile.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Recuperare i loro sistemi criogenici — trasportavano soldati';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'La tecnologia crio aliena opera su principi che non abbiamo mai considerato. I nostri pod funzionano più freddi, più fluidi e più affidabilmente dopo l\'adattamento.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Deriva di Calibrazione degli Scanner';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'La diagnostica di routine rivela che diversi sottosistemi scanner sono andati fuori calibrazione dopo l\'ultimo salto iperluce. Gli scanner atmosferici e di temperatura leggono segnali fantasma. Gli ingegneri possono ripararli, ma ci vuole tempo e risorse.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Ricalibrazione completa — dirottare risorse tecniche';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Un meticoloso riallineamento ripristina entrambi gli scanner quasi alla perfezione, ma il comparto tecnico è prosciugato.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Soluzione rapida — ricalibrare solo l\'atmosferico';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Lo scanner atmosferico è ripristinato. Lo scanner di temperatura resta inaffidabile per ora.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Dispiegare una sonda per calibrazione di riferimento';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'La sonda fornisce un segnale di riferimento pulito. Entrambi gli scanner si agganciano e si ricalibrano automaticamente.';

  @override
  String get event_ionStormScanners_title => 'Interferenza da Tempesta Ionica';

  @override
  String get event_ionStormScanners_narrative =>
      'Una tempesta ionica attraversa il settore, inondando di rumore gli array scanner. I sistemi di rilevamento minerale e acqua stanno subendo il peso dell\'interferenza elettromagnetica.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Spegnere gli scanner fino al passaggio della tempesta';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Gli scanner sopravvivono ma perdono dati di calibrazione. Le letture di minerali e acqua saranno meno precise.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Continuare a scansionare — affrontare il rumore';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'I dati grezzi affluiscono, ma i circuiti di filtraggio bruciano su due sottosistemi. Anche le scansioni gravimetriche sono colpite.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Usare la tempesta per testare e migliorare i filtri';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Il team scientifico usa il rumore per addestrare filtri adattivi. Lo scanner dell\'acqua migliora, ma lo scanner minerale subisce danni.';

  @override
  String get event_bioScannerContamination_title =>
      'Contaminazione del Bio-Scanner';

  @override
  String get event_bioScannerContamination_narrative =>
      'Lo scanner dei segni vitali è stato contaminato da residui organici dell\'ultima scansione planetaria. I falsi positivi sono ovunque. Anche lo scanner gravimetrico mostra rumore simpatico.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sterilizzare l\'array sensori — decontaminazione completa';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Una pulizia accurata ripristina lo scanner dei segni vitali ma gli agenti chimici corrodono l\'involucro del sensore gravimetrico.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filtro software — compensare algoritmicamente';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Il filtro funziona abbastanza bene, ma la contaminazione sottostante degraderà lentamente entrambi i sistemi.';

  @override
  String get event_scannerPowerSurge_title => 'Sovratensione Scanner';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Un condotto di alimentazione vicino al compartimento scanner si sovraccarica, inviando una sovratensione attraverso diversi sottosistemi. Gli scanner atmosferici e dei segni vitali ricevono un colpo diretto. Gli scudi assorbono parte dell\'eccesso.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Ridirigere l\'energia — salvare gli scanner';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'L\'azione rapida del team ingegneristico limita i danni, ma gli scudi assorbono l\'energia ridiretta.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Lasciare che la sovratensione faccia il suo corso';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Gli scanner subiscono il colpo completo. Le letture atmosferiche e dei segni vitali sono significativamente degradate.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Sacrificare la cella di potenza di una sonda per assorbire la sovratensione';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'I condensatori della sonda assorbono l\'energia in eccesso come una spugna. I danni agli scanner sono trascurabili.';

  @override
  String get event_relicWorldEngine_title => 'La Macchina Mondi';

  @override
  String get event_relicWorldEngine_narrative =>
      'Scansioni profonde rivelano qualcosa di impossibile: una macchina delle dimensioni di una piccola luna, dormiente nel buio tra le stelle. La sua superficie è coperta di meccanismi su scala continentale — processori atmosferici, generatori di campo magnetico, stabilizzatori tettonici. Qualcuno ha costruito una macchina che costruisce mondi.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Scaricare i progetti di terraformazione';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'I progetti sono vasti e parzialmente corrotti, ma ciò che recuperiamo potrebbe rendere abitabile qualsiasi mondo ostile. I nostri coloni rimodelleranno la loro nuova casa.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Raccogliere materiali di costruzione dal suo scafo';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Lo scafo della Macchina Mondi è fatto di metamateriali che si auto-riparano quando danneggiati. Integrati nella nostra nave, riparano lentamente le brecce esistenti nello scafo.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Tentare di riattivarla — puntarla sul nostro sistema obiettivo';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'La macchina si muove. Antichi sistemi attraversano le sequenze di avviamento. Un fascio di energia si lancia verso una stella lontana. Se funzionerà non si saprà fino al nostro arrivo, ma le letture sono promettenti.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Turno di Manutenzione Ordinaria';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nulla richiede attenzione. La nave ronza costantemente nel vuoto e il turno di servizio prevede una finestra di manutenzione ordinaria. Il capo squadra chiede dove concentrare lo sforzo del turno.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Concentrarsi sulla sigillatura delle micro-fratture dello scafo';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Un turno tranquillo trascorso a riparare crepe sottili. Nulla di drammatico, ma lo scafo è marginalmente migliore.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Ricalibrare gli scanner frontali';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Il tecnico degli scanner trascorre qualche ora nella messa a punto. Le letture si affinano leggermente.';

  @override
  String get event_uneventfulQuietWatch_title => 'Guardia Tranquilla';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Le stelle scorrono in silenzio. La plancia è calma, gli strumenti stabili. È uno di quei rari momenti in cui l\'universo non chiede nulla a te.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Lasciare riposare l\'equipaggio — si sono meritati un turno tranquillo';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Qualche ora di pace genuina. La gente dorme più profondamente, le tensioni si allentano, e l\'ufficiale culturale nota un lieve miglioramento nel morale.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Avviare diagnostiche a bassa priorità finché è calmo';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Problemi minori vengono individuati e registrati. Nulla di urgente, ma i registri tecnici sono un po\' più puliti.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Controllo Criopod — Tutto Nominale';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'L\'audit trimestrale dei criopod va e viene senza un singolo allarme. Ogni pod è verde. Il team medico ha un raro momento di calma.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Svegliare brevemente alcuni coloni per una visita di morale';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Tre coloni vengono portati alla coscienza per un\'ora. Condividono storie, abbracciano vecchi amici e tornano in criosonno sorridendo.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Lasciarli dormire — non rischiare cicli di risveglio inutili';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'I pod continuano il loro funzionamento impeccabile. I medici si godono una tranquilla tazza di tè invece.';

  @override
  String get event_uneventfulCartography_title =>
      'Aggiornamento di Cartografia Stellare';

  @override
  String get event_uneventfulCartography_narrative =>
      'L\'aggiornamento cartografico programmato dal team di navigazione non rivela nulla di insolito — solo i campi stellari previsti che si spostano mentre viaggiamo. Una giornata tranquilla per i navigatori.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Ricalibrare la navigazione sulle nuove posizioni stellari';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Una piccola correzione di rotta, appena percettibile. Il computer di navigazione ronza soddisfatto.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Aggiornare le carte stellari per l\'archivio coloniale';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'I futuri coloni avranno mappe leggermente migliori di questa regione. Un piccolo dono alla posterità.';

  @override
  String get event_uneventfulAnniversary_title => 'Anniversario della Nave';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Un anno dal lancio — o sono due? Il tempo si confonde nello spazio profondo. Qualcuno nella cambusa ha cotto una torta con scorte reidratate. Il capitano deve decidere come celebrare l\'occasione.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Piccola celebrazione — musica, torta, un brindisi alla Terra';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Un\'ora di calore nel freddo vuoto. La gente ride, alcuni piangono, e tutti si sentono un po\' più umani.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Si lavora come sempre — festeggiamo quando arriviamo';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'L\'equipaggio rispetta l\'approccio stoico. La concentrazione si affila, e il team di servizio effettua un controllo dei sistemi extra.';

  @override
  String get event_databaseLiterature_title => 'Archivi Letterari della Terra';

  @override
  String get event_databaseLiterature_narrative =>
      'L\'IA della nave apre una sezione a lungo sigillata del database culturale: l\'archivio letterario completo della Terra. Romanzi, poesie, opere teatrali — milioni di opere che abbracciano ogni lingua ed epoca. L\'equipaggio si riunisce per una lettura.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Trasmettere letture selezionate a tutta la nave';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare echeggia nei corridoi. I versi di Rumi suonano nel compartimento idroponico. L\'equipaggio ricorda ciò che porta con sé.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indicizzare l\'archivio per i programmi educativi';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Lo sforzo di catalogazione rafforza la base di conoscenza della nave e dà all\'ufficiale culturale nuovi materiali didattici.';

  @override
  String get event_databaseSchematics_title =>
      'Revisione degli Schemi Ingegneristici';

  @override
  String get event_databaseSchematics_narrative =>
      'Un ingegnere si imbatte in una partizione dimenticata nel database della nave: schemi dettagliati dell\'ultimo decennio di ingegneria terrestre — progetti di reattori a fusione, schemi di metamateriali e concetti di propulsione sperimentale.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Dare priorità ai concetti di propulsione per il team tecnico';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Gli schemi rivelano miglioramenti di efficienza che i costruttori originali non ebbero mai tempo di implementare. Il comparto tecnico ronza di attività.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Condividere la conoscenza ampiamente — ogni dipartimento ne beneficia';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Ingegneri dello scafo, tecnici scanner e medici trovano tutti intuizioni utili. La marea che sale solleva ogni sistema, leggermente.';

  @override
  String get event_databaseCorruption_title =>
      'Scansione di Preservazione Culturale';

  @override
  String get event_databaseCorruption_narrative =>
      'Un controllo di integrità programmato del database culturale rivela degrado dei bit — sezioni di musica, storie orali e testi religiosi si sono degradati oltre il recupero. Non tutto è sopravvissuto al viaggio.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Dirottare risorse tecniche per salvare ciò che resta';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Gli ingegneri interrompono altri lavori per eseguire algoritmi di recupero dati. Salvano la maggior parte, ma lo sforzo costa al comparto tecnico.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Chiedere ai coloni di ricreare le opere perdute a memoria';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Uno sforzo bellissimo e imperfetto. Ciò che viene ricostruito appartiene al viaggio, non alla Terra. Nasce una nuova tradizione.';

  @override
  String get event_databaseBreakthrough_title =>
      'Scoperta dalla Ricerca Archiviata';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Un fisico che incrocia vecchi articoli di ricerca terrestre nel database scopre che due studi non correlati, combinati, descrivono un nuovo metodo per l\'analisi spettrale a lungo raggio. Le implicazioni sono enormi.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implementare il nuovo metodo di analisi nell\'array scanner';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Il team scanner lavora febbrilmente. In pochi giorni, la risoluzione spettrale raddoppia. I pianeti lontani rivelano i loro segreti.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Pubblicare la scoperta a tutta la nave — ispirare più ricerca';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'La scoperta scatena un\'onda di studi interdisciplinari. La tecnologia migliora in modo ampio, e l\'equipaggio si sente intellettualmente vivo.';

  @override
  String get event_alienFleetSighting_title => 'Flotta Aliena all\'Orizzonte';

  @override
  String get event_alienFleetSighting_narrative =>
      'Gli scanner a lungo raggio dipingono un quadro terrificante: una flotta di navi aliene, centinaia, in movimento in formazione perfetta sullo sfondo stellare. Sminuiscono la nostra nave. La loro rotta li porterà entro il raggio dei sensori in poche ore. Primo contatto — alle loro condizioni o alle nostre.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Osservare in silenzio — oscurarsi e guardare';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'La nave si riduce alle emissioni minime. La flotta passa come un branco di balene luminose, ignara della piccola nave umana nascosta nella loro scia. I dati degli scanner sono straordinari.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Tentare il primo contatto — trasmettere un saluto';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Un singolo vascello rompe la formazione e si avvicina. Arriva una raffica di dati — carte stellari, avvertimenti e qualcosa che potrebbe essere musica. Poi rientra nella flotta e se ne vanno.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Fuggire — cambiare rotta immediatamente';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'La nave brucia forte nella direzione opposta. Il cambio di rotta è costoso e stressante, ma la flotta non ci nota. Sicurezza a un prezzo.';

  @override
  String get event_alienTradeOffer_title => 'Offerta Commerciale Aliena';

  @override
  String get event_alienTradeOffer_narrative =>
      'Un vascello alieno, più piccolo del nostro ma che irradia un\'immensa potenza, eguaglia la nostra velocità e trasmette un semplice messaggio ripetuto. I nostri linguisti lo decodificano in poche ore: è un\'offerta di scambio. Tre categorie di commercio vengono proposte.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Scambiare schemi tecnici per carte stellari aliene';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Trasmettiamo i nostri progetti di propulsione; rispondono con dati di navigazione che coprono una vasta porzione di spazio inesplorato. Le nostre carte migliorano drasticamente, anche se abbiamo condiviso la nostra tecnologia con una specie sconosciuta.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Scambiare dati culturali per riparazioni alla nave';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Trasmettiamo la nostra musica, arte e storia. In cambio, droni di riparazione alieni sciamano sullo scafo, sigillando le brecce con materiali che non sappiamo identificare. Lo scafo risplende. La nostra anima è condivisa.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Rifiutare lo scambio — il rischio è troppo grande';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Il vascello alieno attende per un po\', poi parte senza incidenti. L\'equipaggio è sollevato ma si chiede cosa si sia perso.';

  @override
  String get event_alienWarning_title => 'Trasmissione di Avvertimento Alieno';

  @override
  String get event_alienWarning_narrative =>
      'Ogni altoparlante della nave scoppietta con una voce aliena — tradotta dalla nostra IA in tempo reale: «PERICOLO AVANTI. TORNATE INDIETRO. L\'OSCURITÀ CONSUMA.» La trasmissione si ripete, poi muore. I sensori a lungo raggio mostrano un vuoto anomalo sulla nostra rotta attuale.';

  @override
  String get event_alienWarning_choice0_text =>
      'Seguire l\'avvertimento — deviare la rotta attorno al vuoto';

  @override
  String get event_alienWarning_choice0_outcome =>
      'La deviazione aggiunge un notevole carico alla navigazione, ma mentre costeggiamo il bordo del vuoto, i sensori confermano: nulla di ciò che è entrato in quella regione è mai uscito. Abbiamo un debito verso voci sconosciute.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignorare l\'avvertimento — restare in rotta';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Proseguiamo. Il vuoto si rivela una regione di intensi micro-detriti. Scafo e scanner subiscono punizioni prima di uscire dall\'altro lato.';

  @override
  String get event_alienWarning_choice2_text =>
      'Investigare il bordo del vuoto con una sonda';

  @override
  String get event_alienWarning_choice2_outcome =>
      'La sonda entra nel vuoto e trasmette dati straordinari prima di ammutolire. Il team scanner estrae letture preziose, ma la sonda è perduta.';

  @override
  String get event_nativeSignalDetected_title =>
      'Trasmissioni dal Mondo Obiettivo';

  @override
  String get event_nativeSignalDetected_narrative =>
      'L\'array di comunicazioni capta segnali elettromagnetici strutturati provenienti dal nostro pianeta obiettivo. Sono inconfondibili: regolari, modulati, artificiali. Qualcuno è già là. L\'intera premessa della colonia cambia in un istante.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Trasmettere un saluto pacifico — annunciare il nostro arrivo';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Una scelta coraggiosa. Il segnale cambia schema dopo la nostra trasmissione — ci hanno sentito. Se sia benvenuto o avvertimento non è chiaro, ma la porta è aperta.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Solo ascoltare — apprendere prima di rivelarci';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Mesi di ascolto passivo costruiscono un quadro della civiltà nativa. Sono cauti, territoriali, ma non ostili. Arriviamo informati.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Disturbare il segnale — negare loro la conoscenza del nostro avvicinamento';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Il disturbo funziona, ma è un atto di aggressione contro un popolo che non abbiamo mai incontrato. L\'equipaggio è diviso sulla moralità.';

  @override
  String get event_nativeProbeEncounter_title =>
      'Intercettazione di Sonda Aliena';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Una piccola ed elegante sonda — non di origine umana — eguaglia la nostra velocità e inizia a scansionare la nave. Il suo linguaggio di design corrisponde ai segnali dal pianeta obiettivo. I nativi hanno inviato un comitato di benvenuto. O un drone di sorveglianza.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Permettere la scansione — mostrare che non abbiamo nulla da nascondere';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'La sonda completa il rilevamento e trasmette una raffica di dati verso il pianeta. Minuti dopo, una seconda raffica arriva per noi: dati atmosferici, zone di atterraggio sicure, e quello che potrebbe essere un invito.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Catturare la sonda per studiarla';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'La sonda viene attratta nella stiva. La sua tecnologia è affascinante ma l\'atto di cattura potrebbe essere visto come ostile dai suoi creatori.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Distruggerla — non conosciamo le sue intenzioni';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Un singolo impulso riduce la sonda in frammenti. L\'equipaggio si sente più sicuro, ma un potenziale ponte è stato bruciato.';

  @override
  String get event_nativeCulturalExchange_title => 'Primo Scambio Culturale';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Un collegamento dati a banda stretta è stato stabilito con i nativi planetari. Ci inviano immagini, suoni e sequenze matematiche. I nostri linguisti e ufficiali culturali lavorano giorno e notte per preparare una risposta. Questa è la conversazione più importante nella storia umana.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Condividere l\'arte e la musica terrestre — guidare con la bellezza';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Trasmettiamo Bach, dipinti aborigeni a punti e il suono della pioggia sulle foglie. La risposta è una cascata di armoniche aliene che fa piangere l\'equipaggio. La comprensione si approfondisce.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Condividere la conoscenza scientifica — guidare con la ragione';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Trasmettiamo la nostra tavola periodica, carte stellari e fisica. Rispondono con correzioni e aggiunte. La nostra tecnologia compie un balzo, ma lo scambio sembra transazionale.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Inviare una sonda con campioni fisici — DNA, semi, acqua';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Una sonda porta l\'essenza della Terra in mani aliene. I nativi rispondono con un dono simile — campioni biologici dal loro mondo. I biologi sono in estasi.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Malfunzionamento dei Propulsori di Atterraggio';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Durante un controllo di routine dei sistemi, i propulsori di atterraggio fanno cilecca — un forte botto echeggia attraverso i ponti inferiori e la nave sobbalza. La diagnostica rivela un iniettore di carburante incrinato nell\'array primario di atterraggio. Senza riparazione, la discesa sarà rude.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Dirottare il team tecnico per fabbricare un iniettore sostitutivo';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Gli ingegneri lavorano a doppi turni e lavorano un nuovo iniettore dalla lega di scafo di ricambio. Il sistema di atterraggio è ripristinato, sebbene il comparto tecnico sia esaurito.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Dispiegare una sonda per testare la calibrazione dei propulsori nel vuoto';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'La sonda fornisce dati di spinta in tempo reale che permettono agli ingegneri di ricalibrare attorno all\'iniettore danneggiato. Non una riparazione completa, ma il sistema di atterraggio si stabilizza.';

  @override
  String get event_landingSimDrill_title =>
      'Esercitazione di Simulazione di Atterraggio';

  @override
  String get event_landingSimDrill_narrative =>
      'Con la discesa planetaria sempre più vicina, il capitano ordina una simulazione completa di atterraggio. L\'equipaggio si allaccia, i sistemi vengono testati sotto carico, e la discesa virtuale ha inizio. È la prova più realistica che avranno.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Concentrarsi sulla precisione tecnica — seguire il manuale alla lettera';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'La simulazione rivela due errori di calibrazione minori che vengono immediatamente corretti. Il sistema di atterraggio ne esce più solido.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Farne un evento di bordo — trasmettere la simulazione';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'I coloni guardano da ogni schermo di bordo. L\'esperienza condivisa della discesa simulata — le vibrazioni, le grida di gioia — unisce l\'equipaggio come nient\'altro.';

  @override
  String get event_dysonSphere_title => 'La Sfera di Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'I sensori rilevano una struttura impossibile — una sfera di Dyson parziale che circonda una stella lontana, raccogliendo la sua intera produzione energetica. Chiunque l\'abbia costruita ha trasceso qualsiasi cosa l\'umanità abbia mai concepito. Un porto di attracco sembra aprirsi al nostro avvicinamento.';

  @override
  String get event_dysonSphere_choice0_text =>
      'Attraccare ed esplorare la struttura';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'All\'interno, sistemi automatizzati ci donano tecnologia che proietta le nostre capacità avanti di secoli. Cinque ingegneri vengono persi per i meccanismi di difesa della stazione prima che riconosca le nostre intenzioni. I costruttori vengono ricostruiti con leghe aliene.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Raccogliere energia dall\'esterno';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Ci immergiamo nel traboccamento radiante della sfera. Ogni sistema a bordo si carica al massimo. L\'equipaggio osserva in silenzio attonito.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Studiare da distanza di sicurezza e proseguire';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Le scansioni a lungo raggio rivelano principi costruttivi che rivoluzionano la nostra comprensione dell\'ingegneria.';

  @override
  String get event_nanotechPlague_title => 'La Piaga Nanotecnologica';

  @override
  String get event_nanotechPlague_narrative =>
      'Una nube di nanomacchine impazzite, resti del programma d\'armi di qualche civiltà morta, si infiltra nella nave attraverso le micro-fratture dello scafo. Stanno disassemblando sistemi non critici a livello molecolare. Lo sciame si sta espandendo rapidamente.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Impulso EMP — friggere tutto nelle sezioni colpite';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'L\'impulso elettromagnetico distrugge i naniti ma danneggia anche la nostra elettronica in quelle sezioni. I coloni nella zona dell\'esplosione soffrono ustioni.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Svuotare le sezioni colpite nel vuoto';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Senza atmosfera, i naniti rallentano e muoiono. Ma le sezioni sono perse, insieme a forniture stoccate e archivi culturali.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Riprogrammarli — trasformare armi in strumenti';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Un ingegnere brillante decifra il codice dei naniti, ma cinque membri dell\'equipaggio nelle sezioni più colpite sono già irrecuperabili. Lo sciame riprogrammato inizia a riparare la nave anziché distruggerla.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Sacrificare il nucleo IA di una sonda per creare un contro-sciame';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'I processori della sonda vengono riconvertiti per controllare uno sciame difensivo di naniti. La piaga viene neutralizzata con perdite minime.';

  @override
  String get event_prematureAwakening_title => 'Il Risveglio Prematuro';

  @override
  String get event_prematureAwakening_narrative =>
      'Un cedimento a catena nel compartimento criopod sveglia 200 coloni con decenni di anticipo. Sono confusi, spaventati e consumano risorse destinate alla fase di atterraggio. Tra loro ci sono bambini che non hanno mai conosciuto altro che la nave.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrarli nell\'equipaggio — più mani, più speranza';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'I coloni risvegliati diventano membri produttivi dell\'equipaggio. Venti coloni non sopravvivono allo scongelamento brusco, ma gli altri si riprendono. Le risorse si assottigliano ma gli spiriti si sollevano.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Tentare di ri-conglearli — rischioso ma necessario';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Il processo di ri-congelamento è imperfetto. La maggior parte sopravvive, ma alcuni vengono persi. I sopravvissuti portano cicatrici psicologiche.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Dare loro una sezione propria della nave';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Dieci coloni vengono persi per complicazioni dallo scongelamento d\'emergenza, ma gli altri formano una micro-colonia all\'interno della nave. Sviluppano la propria cultura e governo, una prova generale per l\'insediamento planetario.';

  @override
  String get event_stowawaysAdvanced_title => 'I Passeggeri Nascosti';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Nel profondo della stiva, dietro paratie false, la sicurezza scopre un\'intera comunità nascosta — 80 persone salite illegalmente a bordo prima del lancio. Vivono nelle pareti della nave per l\'intero viaggio, mantenendo propri giardini e prese di energia.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Accoglierli — 80 coloni in più sono un dono';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'La comunità nascosta porta competenze in ingegneria improvvisata e intraprendenza che stupiscono l\'equipaggio. I loro giardini vengono trapiantati nella biodome principale.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Confinarli e ridistribuire le risorse rubate';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Le forniture recuperate potenziano diversi sistemi, ma il confinamento di famiglie — inclusi bambini — tormenta l\'equipaggio.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negoziare — si uniscono come pari se condividono la loro tecnologia';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Le loro celle energetiche improvvisate e i trucchi idroponici migliorano l\'efficienza della nave. Un\'integrazione tesa ma produttiva ha inizio.';

  @override
  String get event_alienReservation_title => 'La Riserva Aliena';

  @override
  String get event_alienReservation_narrative =>
      'Ci imbattiamo in una riserva naturale aliena — una regione di spazio deliberatamente seminata con pianeti abitabili e protetta da sentinelle automatiche. I guardiani ci scansionano e proiettano un messaggio: «Potete insediarvi su UN mondo. Scegliete saggiamente. Interferite con gli altri e sarete rimossi.»';

  @override
  String get event_alienReservation_choice0_text =>
      'Accettare con gratitudine — un mondo è tutto ciò che ci serve';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Le sentinelle ci guidano verso un mondo preparato. Le scansioni rivelano che è straordinariamente adatto alla vita umana.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negoziare condizioni migliori — l\'umanità ha bisogno di spazio per crescere';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Le sentinelle considerano la nostra supplica. Potenziano i nostri scanner con dati su dozzine di sistemi oltre la riserva.';

  @override
  String get event_alienReservation_choice2_text =>
      'Rifiutare e andarsene — non saremo ingabbiati';

  @override
  String get event_alienReservation_choice2_outcome =>
      'L\'equipaggio dibatte per giorni. Libertà sopra sicurezza. Le sentinelle permettono la nostra partenza con un dono: una mappa dei pericoli vicini.';

  @override
  String get event_cosmicHorror_title => 'La Cosa tra le Stelle';

  @override
  String get event_cosmicHorror_narrative =>
      'Qualcosa di vasto e oscuro occlude le stelle davanti a noi — non una nebulosa, non un buco nero. Non ha massa, nessuna firma energetica, nessuna presenza elettromagnetica. Ma È LÀ, ed è consapevole di noi. I membri dell\'equipaggio vicino al ponte di osservazione frontale riportano un terrore travolgente. Due sono stati sedati.';

  @override
  String get event_cosmicHorror_choice0_text =>
      'Retromarcia piena — andarsene ADESSO';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'La nave lotta contro la propria inerzia. Sfuggiamo, ma il terrore persiste. Alcuni coloni non si riprenderanno mai psicologicamente.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Sigillare il ponte di osservazione e attraversare';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Tre giorni di volo alla cieca nell\'oscurità. Quando le stelle ritornano, l\'equipaggio piange di sollievo. Lo scafo è inciso con schemi che nessuno sa spiegare.';

  @override
  String get event_cosmicHorror_choice2_text => 'Tentare la comunicazione';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'L\'entità risponde — non con parole, ma con conoscenza impressa direttamente nelle menti dell\'equipaggio. Mappe stellari, fisica, verità sull\'universo. Metà dell\'equipaggio è illuminata. L\'altra metà è spezzata.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Offrire una sonda come tributo';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'La sonda si allontana nell\'oscurità e svanisce. L\'entità si contrae leggermente, come soddisfatta. La nostra strada si apre.';

  @override
  String get event_meteorGlancingHit_title => 'Impatto Meteorico di Striscio';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Un meteorite grande come un masso colpisce il lato babordo dello scafo ad angolo radente. L\'impatto strappa via tre metri di rivestimento esterno e invia onde d\'urto attraverso l\'intera struttura. Gli allarmi di controllo danni urlano su ogni ponte.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Dirottare tutti i robot di riparazione alla breccia immediatamente';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'I robot sigillano il peggio del danno, ma il prelievo frenetico dalle riserve tecniche lascia i sistemi secondari trascurati.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Ridurre la spinta e lasciare che l\'equipaggio ripari manualmente';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Avanzamento più lento, ma l\'equipaggio fa un buon lavoro. La navigazione soffre dalla finestra di spinta ridotta mentre deriviamo.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Sacrificare le piastre dello scafo di una sonda come materiale per la toppa';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'La sonda viene smontata per i pezzi. La toppa regge e l\'integrità dello scafo è preservata al costo di un esploratore in meno.';

  @override
  String get event_meteorDirectImpact_title => 'Impatto Meteorico Diretto';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Un meteorite di ferro da mezza tonnellata perfora il compartimento cargo frontale a velocità relativa superiore a 40 km/s. Due membri dell\'equipaggio nel corridoio adiacente risultano dispersi. Il compartimento è esposto al vuoto.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Sigillare il compartimento cargo e cercare i sopravvissuti dopo';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Il compartimento viene sigillato in novanta secondi. Entrambi i membri dell\'equipaggio si erano già evacuati — per un soffio. Lo scafo porta cicatrici permanenti.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Lanciare un\'operazione di soccorso completa prima di sigillare';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Un sopravvissuto viene estratto. L\'esposizione prolungata peggiora il danno strutturale e prosciuga le riserve tecniche.';

  @override
  String get event_meteorDebrisField_title =>
      'Campo di Detriti — Pioggia Residua';

  @override
  String get event_meteorDebrisField_narrative =>
      'I sensori a lungo raggio non hanno rilevato un campo disperso di frammenti meteorici finché non eravamo già dentro. Centinaia di rocce grandi come pugni colpiscono lo scafo a intervalli casuali. Ogni impatto è una lotteria.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Alzare gli scudi e attraversare a tutta velocità';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Gli scudi assorbono la maggior parte dei colpi, ma il volume puro degli impatti li sopraffà. Scafo e sistemi scudo si degradano entrambi.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Spegnere i motori e derivare — minimizzare il nostro profilo';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Sei ore tese di silenzio. La navigazione è sballata dalla deriva senza potenza, ma lo scafo emerge con molti meno impatti.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Dispiegare una sonda come scudo frontale';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'La sonda si prende il grosso del bombardamento. La nave scivola nella sua ombra con graffi minimi.';

  @override
  String get event_meteorShowerDense_title =>
      'Pioggia Meteorica Densa Inaspettata';

  @override
  String get event_meteorShowerDense_narrative =>
      'Una cometa vagante si è disintegrata da qualche parte davanti a noi, e siamo volati dritti nel cuore della sua scia di detriti. Gli array scanner vengono bersagliati di frammenti e l\'alloggiamento del sensore del sistema di atterraggio ha già subito un impatto diretto.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Proteggere il sistema di atterraggio — ruotare la nave';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'La rotazione scherma il sistema di atterraggio ma espone l\'array scanner atmosferico al grosso del bombardamento.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Schermare gli array scanner — sono insostituibili';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Le banche scanner sopravvivono per lo più intatte. Il sistema di atterraggio subisce danni moderati da schegge con cui dovremo convivere.';

  @override
  String get event_solarEmpBurst_title => 'Esplosione EMP — Origine Stellare';

  @override
  String get event_solarEmpBurst_narrative =>
      'Un residuo stellare compatto che abbiamo superato entro un giorno-luce ha scaricato un impulso elettromagnetico focalizzato. Ogni circuito non schermato sulla nave è a rischio. Abbiamo secondi per decidere cosa proteggere.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Dirottare tutta la protezione da sovratensione su navigazione e supporto vitale';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigazione e supporto vitale sopravvivono intatti. La suite scanner e il comparto tecnico assorbono l\'impulso senza schermo — entrambi subiscono danni gravi.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Proteggere gli array scanner e il comparto tecnico';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'I sistemi scientifici e ingegneristici sono preservati. La navigazione fa cilecca per ore mentre i suoi circuiti si riprendono lentamente.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Spegnere tutto e riavviare dopo l\'impulso';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Un riavvio a freddo è agonizzante — dodici ore di riavvii manuali. Ma nessun sistema è fritto oltre il recupero.';

  @override
  String get event_solarRadiationWave_title =>
      'Onda di Radiazione — Esposizione Classe 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Un\'esplosione di radiazione solare di intensità inaspettata sta attraversando i ponti centrali della nave. I compartimenti criopod sono sulla traiettoria dell\'esposizione. I coloni in sospensione non hanno protezione naturale contro radiazioni dure a questo livello di dosaggio.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Inondare i compartimenti criopod di refrigerante come schermatura';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Il refrigerante assorbe la maggior parte della radiazione. I criopod sopravvivono, ma il sistema di raffreddamento stesso è parzialmente degradato. Quindici nei pod più colpiti non ce la fanno.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Sfiatare l\'atmosfera dei ponti esterni per creare un cuscinetto di vuoto';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Lo strato di vuoto riduce significativamente la radiazione penetrante. Venti coloni nei pod più vicini alle sezioni sfiatate subiscono esposizione letale. Lo stress sullo scafo dal differenziale di pressione è inevitabile.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Ridirigere l\'energia sui deflettori magnetici';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'I deflettori riducono l\'esposizione alla radiazione di due terzi. Otto coloni ricevono dosi fatali attraverso lacune nella copertura dei deflettori. Il consumo di energia colpisce il comparto tecnico e lascia la navigazione con potenza minima.';

  @override
  String get event_coronalMassEjection_title =>
      'Eiezione di Massa Coronale — Piena Forza';

  @override
  String get event_coronalMassEjection_narrative =>
      'Un\'eiezione di massa coronale di scala senza precedenti ci sta raggiungendo da dietro. La nube di plasma avvolgerà la nave entro l\'ora. I nostri scudi non sono stati progettati per questo tipo di evento. Nessuna opzione è pulita.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Seminare il plasma — motori al centoventi percento';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Guadagniamo abbastanza distanza per ridurre l\'esposizione. I motori si surriscaldano e il computer di navigazione segnala avvisi di sovraccarico strutturale su tutta la linea.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Ripararsi dietro l\'ombra magnetica di un planetoide vicino';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Il campo del planetoide devia la maggior parte dell\'eiezione. Navigare così vicino a un corpo inesplorato graffia lo scafo e mette sotto stress i sensori del sistema di atterraggio.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Esplosione di Raggi Cosmici — Interferenza Scanner';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Un\'esplosione di raggi cosmici ad altissima energia ha saturato tutta l\'elettronica scanner con rumore. Gli array mineralogici e gravimetrici producono dati senza senso. La ricalibrazione richiederà tempo che potremmo non avere.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Ciclo di ricalibrazione completo — mettere la nave offline temporaneamente';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Tutti gli scanner tornano puliti dopo quattro ore di attenta ricalibrazione. La navigazione soffre della ridotta consapevolezza situazionale durante la finestra di blackout.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Riparare solo gli array più critici — lasciare gli altri rumorosi';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Gli scanner gravimetrici e dei segni vitali sono ripristinati. Gli array minerali e di temperatura restano degradati indefinitamente.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sacrificare l\'hardware telemetrico di una sonda per pezzi di ricambio';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Cannibalizzare il pacchetto sensori di una sonda ci dà i componenti per ripristinare la suite scanner senza una lunga ricalibrazione.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Esplosione di Raggi Cosmici — Esposizione dei Coloni';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Una pioggia secondaria di raggi cosmici ha penetrato la schermatura dei criopod nel compartimento 6. I coloni in sospensione stanno ricevendo danni cumulativi al DNA da radiazioni ionizzanti. Senza intervento, i meccanismi di riparazione cellulare cederanno nei pod colpiti.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Scongelamento d\'emergenza — portare i coloni colpiti alla coscienza';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Duecento coloni vengono svegliati anticipatamente. Quaranta con il danno al DNA più grave non rispondono al trattamento. Il team medico fa ciò che può per gli altri.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Ridirigere le piastre corazzate dello scafo per schermare il compartimento 6 — costo strutturale';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'La colonia è salva, ma strappare la corazza da una sezione dello scafo lascia la nave strutturalmente vulnerabile in quella zona.';

  @override
  String get event_coolantLeak_title => 'Rottura della Linea di Raffreddamento';

  @override
  String get event_coolantLeak_narrative =>
      'Una linea primaria di raffreddamento si è rotta dietro la parete del reattore. Fluido criogenico surriscaldato spruzza attraverso una giunzione che ospita condotti critici del comparto tecnico. La temperatura del reattore sta salendo.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Spegnere il reattore e lasciarlo raffreddare — accettare il blackout totale';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Uno spegnimento controllato previene la catastrofe. Dodici ore di supporto vitale a batteria sono terrificanti, e i sistemi si riavviano imperfettamente.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Inviare una squadra di controllo danni — rischiare l\'esposizione dell\'equipaggio';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'La squadra sigilla la rottura in quaranta minuti. Un membro dell\'equipaggio viene ucciso dall\'esposizione al refrigerante surriscaldato. La riparazione è solida.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Dirottare il refrigerante dal compartimento criopod come fornitura d\'emergenza';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Il reattore è stabilizzato. Il compartimento criopod funziona più caldo delle soglie di sicurezza per sei ore — un danno cellulare minore ma reale si accumula.';

  @override
  String get event_powerGridFailure_title =>
      'Cedimento della Rete Elettrica Principale';

  @override
  String get event_powerGridFailure_narrative =>
      'Un guasto a catena ha fatto scattare la rete elettrica principale. I sistemi di backup mantengono il supporto vitale e il riscaldamento dei criopod, ma navigazione, scanner e il comparto costruttori sono tutti al buio. Ogni minuto offline costa precisione di rotta.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Ripristinare prima navigazione e scanner — accettare il fermo prolungato dei costruttori';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'I sistemi di navigazione e scanner tornano online in due ore. Il comparto costruttori salta un ciclo di manutenzione critico.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Ripristinare prima i costruttori — usarli per velocizzare la riparazione';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'I costruttori ridirigono l\'energia efficientemente. Il ripristino completo della rete avviene più rapidamente, ma la navigazione devia gravemente durante il blackout prolungato.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Glitch a Catena del Supporto Vitale';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'L\'IA di gestione del supporto vitale è entrata in un ciclo di errore, variando gli intervalli di lavaggio dell\'anidride carbonica in modo imprevedibile. I livelli di CO₂ nei ponti occupati fluttuano. L\'equipaggio sviluppa mal di testa; alcuni sono già incapacitati.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Forzare un reset hardware dell\'IA del supporto vitale';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Il reset cancella il ciclo ma lascia le sovrascritture manuali in funzione per dieci ore. Tre membri dell\'equipaggio soccombono all\'accumulo di CO₂ prima che i livelli si normalizzino.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Correggere il ciclo software — più lento ma più sicuro';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Il team software isola e corregge il difetto in sei ore tese. I livelli di CO₂ si normalizzano lentamente. Nessun reset hardware necessario.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Evacuare i ponti colpiti e operare con supporto vitale minimo';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Due coloni vengono persi nella confusione dell\'evacuazione. I sistemi si normalizzano dopo il riavvio a freddo dell\'IA.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Guasto del Riciclatore d\'Acqua';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'L\'unità primaria di riciclaggio dell\'acqua si è bloccata. L\'unità di backup funziona già al massimo della capacità. Senza intervento, l\'equipaggio sarà a razioni d\'emergenza entro quarantotto ore, e l\'alimentazione del refrigerante dei criopod sarà compromessa entro settantadue.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Richiamare ogni tecnico disponibile per ricostruire il riciclatore';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'L\'unità viene ricostruita in trenta ore. Quattro membri dell\'equipaggio, già indeboliti, non sopravvivono alla disidratazione.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Dirottare le riserve di refrigerante dei criopod come fornitura di emergenza per bere';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'L\'equipaggio è sostenuto, ma otto coloni nei pod in riscaldamento soffrono danni cellulari irreversibili. Il margine di refrigerante dei criopod si riduce pericolosamente.';

  @override
  String get event_navComputerReboot_title =>
      'Riavvio d\'Emergenza del Computer di Navigazione';

  @override
  String get event_navComputerReboot_narrative =>
      'Il computer di navigazione si è bloccato a metà correzione di rotta, lasciando la nave in una lenta rotazione incontrollata. Ogni secondo di rotazione non corretta aggrava la nostra deriva dalla traiettoria pianificata. Un riavvio completo è l\'unica soluzione.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Riavviare immediatamente — accettare il periodo di blackout completo';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Quattro ore di volo alla cieca mentre il sistema si ricarica. La rotazione viene fermata, ma l\'errore di rotta è significativo.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Usare il controllo propulsori manuale per fermare la rotazione prima';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Un pilotaggio esperto ferma la rotazione prima del riavvio. La navigazione torna con un errore di rotta minore, ma la combustione manuale stressa lo scafo.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Alimentare la telemetria della sonda nell\'unità di navigazione di backup';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'I dati inerziali della sonda danno all\'unità di backup abbastanza riferimento per mantenere la rotta. La navigazione principale si riavvia senza problemi.';

  @override
  String get event_crewAirlocked_title =>
      'Membro dell\'Equipaggio all\'Airlock';

  @override
  String get event_crewAirlocked_narrative =>
      'Una colona — svegliata in anticipo per osservazione medica — si è barricata all\'interno di un airlock esterno e sta ciclando il portello esterno. Non risponde alle comunicazioni. Il peso psicologico dello spazio profondo ha spezzato qualcosa in lei.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Sovrascrivere l\'airlock da remoto — forzarne la chiusura';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'La porta viene bloccata prima che possa completare il ciclo. Viene sedata e riportata in infermeria. L\'equipaggio è scosso ma unito.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Inviare un consulente per convincerla a rientrare';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Dopo tre ore disperate, il consulente la porta fuori viva. L\'incidente scatena una più ampia crisi di salute mentale nei ponti occupati.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Sigillare il corridoio e lasciare che l\'incidente si risolva';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'L\'airlock cicla. La perdita viene registrata. I membri rimanenti dell\'equipaggio ne portano il peso per mesi.';

  @override
  String get event_crewCryopodSabotage_title =>
      'Sabotaggio del Compartimento Criopod';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Le telecamere di sicurezza rivelano un membro dell\'equipaggio — svegliato tre mesi fa per una rotazione di routine — che disabilita metodicamente gli elementi riscaldanti dei criopod nel compartimento 4. Quando viene confrontato, urla che i coloni sono parassiti che consumano risorse che appartengono all\'equipaggio sveglio.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Arrestare e isolare immediatamente';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Viene immobilizzato. Quaranta pod sono stati compromessi prima dell\'allarme. Le squadre di riparazione d\'emergenza salvano la maggior parte, ma non tutti.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negoziare — ascoltare le sue lamentele prima di agire';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'La negoziazione rivela una crisi morale più profonda. Desiste, ma sessanta pod sono stati manomessi quando lo fa.';

  @override
  String get event_crewSupplyHoarder_title =>
      'Scoperta di Accumulo di Forniture';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Un audit dell\'inventario rivela che un piccolo gruppo di membri dell\'equipaggio ha sistematicamente dirottato forniture mediche, razioni alimentari e componenti tecnici di ricambio in una scorta nascosta. La loro motivazione: non credono che la missione avrà successo, e si stanno preparando per il viaggio di ritorno.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Confiscare tutto e rimproverare pubblicamente il gruppo';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'La scorta viene recuperata quasi intatta. La fiducia all\'interno dell\'equipaggio si frattura gravemente. La produttività ne soffre per settimane.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Riassegnarli silenziosamente — non farne uno spettacolo';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'La situazione viene disinnescata senza panico. Alcune forniture sono irrecuperabili, e la disperazione sottostante non viene mai adeguatamente affrontata.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Rimettere la decisione all\'equipaggio — un tribunale democratico';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Il processo del tribunale ripristina un senso di giustizia comunitaria. Il colpo al morale dallo scandalo è compensato dal processo decisionale collettivo.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Ammutinamento — Sala Macchine Occupata';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Una fazione di diciannove membri dell\'equipaggio ha bloccato la sala macchine e chiede un voto per invertire la rotta della nave. Hanno disabilitato i pannelli di sovrascrittura d\'emergenza. Il resto dell\'equipaggio osserva dai monitor, in attesa che il comando agisca.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negoziare — concedere un voto autentico sulla missione';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Il voto si tiene. La missione prosegue per un margine risicato. La fazione desiste, ma la ferita culturale è profonda.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Tagliare l\'energia alla sala macchine e riprenderla con la forza';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'La sicurezza riprende la sala in quattro ore. Tre feriti. I capi vengono confinati. La navigazione era in modalità manuale per tutto il tempo e ha deviato significativamente.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Inondare la sala macchine con gas soporifero dal sistema di ventilazione';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Il gas si disperde. Il gruppo si sveglia in cella senza ferite. L\'equipaggio è turbato dalla rapidità con cui il comando ha usato come arma il supporto vitale.';

  @override
  String get event_hullFatigueStress_title =>
      'Fatica dello Scafo — Fratture da Stress Rilevate';

  @override
  String get event_hullFatigueStress_narrative =>
      'Le scansioni di integrità strutturale rivelano una rete di micro-fratture che si propagano attraverso la spina dorsale della nave — danni cumulativi da anni di ciclaggio termico e micro-impatti. Le fratture non sono ancora critiche, ma si stanno propagando.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Squadre di saldatura d\'emergenza — lavorare a turni fino alla sigillatura';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Settimane di lavoro di riparazione estenuante. Le fratture sono contenute, ma il comparto tecnico è prosciugato e il morale cala per il ritmo implacabile.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Ridurre la spinta per diminuire lo stress strutturale — accettare un transito più lento';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'La spinta ridotta impedisce alle fratture di propagarsi ma non fa nulla per guarire i danni esistenti. La precisione di navigazione soffre dal profilo di spinta alterato.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Usare i bot costruttori per posare strisce di rinforzo composito';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'I costruttori fanno un lavoro eccellente. La spina dorsale viene rinforzata oltre le specifiche originali. Il comparto costruttori è esaurito ma efficace.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomalia di Pressione Interna';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Tre compartimenti centrali registrano differenziali anomali di pressione interna coerenti con una deformazione strutturale su micro-scala. Se le pareti si stanno incurvando verso l\'interno, un\'esplosione catastrofica potrebbe verificarsi senza ulteriore preavviso.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evacuare e sigillare i compartimenti immediatamente';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'I compartimenti vengono sigillati. L\'ispezione dettagliata conferma la deformazione delle pareti. Lo spazio perso interrompe le operazioni e la cultura soffre per le condizioni anguste.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Sfiatare i compartimenti nel vuoto — arrestare il differenziale di pressione';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Lo sfiato arresta la deformazione. Il danno strutturale è limitato, ma tre sezioni della nave sono permanentemente inabitabili.';

  @override
  String get event_commsArrayFailure_title =>
      'Cedimento dell\'Array di Comunicazione';

  @override
  String get event_commsArrayFailure_narrative =>
      'L\'array primario di comunicazione a lungo raggio è ammutolito. L\'ultimo messaggio dalla Terra è stato ricevuto undici mesi fa, e ora anche il segnale portante è sparito. La diagnostica interna suggerisce che il meccanismo di allineamento dell\'antenna si sia bloccato nel freddo.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Inviare una squadra EVA per riallineare manualmente l\'antenna';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'L\'EVA dura nove ore nello spazio aperto. L\'antenna viene ripristinata. Un membro dell\'equipaggio soffre una decompressione della tuta durante il rientro — un brutto spavento che scuote tutti.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Ridirigere attraverso l\'array scanner scientifico come trasmettitore di backup';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'L\'array scientifico non è ottimizzato per le comunicazioni. Il segnale è debole e inaffidabile, e la riconversione degrada la capacità scanner.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Accettare il silenzio — concentrare le risorse sulla missione avanti';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'L\'equipaggio elabora la perdita di contatto con la Terra in modi diversi. Per alcuni è liberatorio; per altri, devastante.';

  @override
  String get event_fuelLineRupture_title =>
      'Rottura della Linea del Carburante';

  @override
  String get event_fuelLineRupture_narrative =>
      'Una frattura cristallina nel condotto del carburante 7-B sta rilasciando plasma di propulsione nel pozzo di manutenzione. La perdita è piccola ma in accelerazione. Incontrollata, comprometterà sia l\'efficienza del propulsore di navigazione sia l\'integrità strutturale della sezione poppiera.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Isolare il condotto e operare con capacità di carburante ridotta';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Il condotto viene chiuso in modo pulito. Perdiamo il quindici percento dell\'efficienza di propulsione permanentemente, il che degrada la precisione di navigazione per il resto del viaggio.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Tentare una riparazione a caldo — riparare il condotto sotto pressione attiva';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'La squadra di riparazione riesce, a malapena. Il condotto regge, sebbene imperfettamente. Le piastre dello scafo poppiero mostrano segni di stress da calore.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Drenare il condotto usando i serbatoi propulsori di una sonda come stoccaggio di troppo pieno';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'La sonda viene svuotata e usata come serbatoio temporaneo di carburante. Il condotto viene drenato e riparato in sicurezza senza pressione.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Avviso di Cascata Termica dei Criopod';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Le temperature dei criopod nel compartimento 2 stanno salendo secondo uno schema coerente con una cascata termica incontrollata. Se la cascata raggiunge il compartimento 3, innescherà uno scongelamento automatico d\'emergenza di oltre trecento coloni. La nave non può sostenere contemporaneamente così tanti passeggeri coscienti.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Scaricare le riserve di refrigerante per arrestare la cascata';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Il refrigerante ferma la cascata al confine del compartimento 2. Ottanta coloni nel compartimento 2 subiscono danni da sospensione per il picco di temperatura.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Scongelamento controllato del compartimento 2 prima che la cascata ne forzi uno incontrollato';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Lo scongelamento controllato è ordinato ma mette centoquaranta coloni in una nave non preparata. Il supporto vitale è sotto pressione, la cultura deteriora sotto l\'affollamento.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Usare i bot costruttori per isolare fisicamente i compartimenti con paratie d\'emergenza';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'I costruttori erigono barriere termiche in tempo. La cascata viene fermata di netto. Il comparto costruttori è gravemente impoverito dall\'operazione d\'emergenza.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degrado delle Guarnizioni Criopod — Sistemico';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'I controlli di routine rivelano che un lotto di produzione delle guarnizioni dei criopod si sta degradando tre volte più velocemente del previsto. I pod colpiti — oltre quattrocento — inizieranno a perdere integrità atmosferica entro sei mesi se non sostituiti.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Fabbricare guarnizioni sostitutive dalle scorte di materie prime';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'I costruttori producono guarnizioni sostitutive in otto settimane. Le riserve di materie prime sono drasticamente ridotte.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Consolidare i coloni — spostarli in pod con buone guarnizioni';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Il consolidamento funziona ma lascia alcuni pod sovraffollati. L\'efficienza criogenica cala e la salute a lungo termine dei coloni è compromessa.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Cedimento del Depuratore d\'Ossigeno — Critico';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'La batteria primaria di depuratori d\'ossigeno è ceduta completamente. Le concentrazioni di CO₂ nei ponti abitati stanno salendo verso livelli pericolosi. I depuratori di backup possono gestire circa il quaranta percento del carico. Ogni minuto di inazione costa vite.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Ibernazione d\'emergenza — rimettere l\'equipaggio in sospensione immediatamente';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'L\'equipaggio viene trasferito d\'urgenza in sospensione temporanea. I livelli di CO₂ si stabilizzano con meno metabolismi attivi. Il depuratore viene riparato dai sistemi automatizzati nella settimana seguente.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Cannibalizzare componenti dall\'array scanner per ricostruire il depuratore';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Il depuratore viene ricostruito in undici ore tese. Tutto l\'equipaggio sopravvive, sebbene alcuni mostrino segni di lieve ipossia. La suite scanner è permanentemente degradata.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Sfiatare l\'atmosfera ricca di CO₂ e sostituire dalle bombole di ossigeno d\'emergenza';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Lo sfiato pulisce l\'atmosfera istantaneamente. Le riserve di O₂ d\'emergenza sono sostanzialmente esaurite. Se un altro guasto dovesse verificarsi, non c\'è margine.';

  @override
  String get event_deadAlienArtifact_title => 'Il Viaggiatore Silenzioso';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Gli scanner a lungo raggio individuano un vascello alla deriva — di design alieno, buio, nessuna firma di potenza. Una squadra di abbordaggio trova un singolo occupante: un essere rettiliano legato all\'imbracatura del pilota, morto da tempo, le mani artigliate ancora serrate attorno a un dispositivo cristallino che pulsa con luce debole. Il registro della nave è intatto ma crittografato. Qualunque cosa abbia ucciso questo viaggiatore, non è stata la violenza — l\'espressione congelata sul suo volto è di esaurimento, non di paura. È morto protendendo verso qualcosa che non ha mai trovato.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Prendere il dispositivo cristallino e studiarlo';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Il dispositivo si interfaccia con i nostri sistemi tecnici in modi che gli ingegneri possono a malapena comprendere. Sembra essere un computer di navigazione di straordinaria sofisticazione. Le carte stellari inondano i nostri display — inclusi dati su pianeti che non abbiamo ancora raggiunto.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Decrittare il registro della nave — scoprire cosa sapeva';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Giorni di lavoro producono una traduzione parziale. L\'alieno era un esploratore, che catalogava mondi abitabili per una civiltà che collassò secoli fa. Le sue ultime annotazioni descrivono un pianeta di notevole promessa — e le coordinate sono alla nostra portata. L\'archivio culturale assorbe tutto: poesia aliena, mappe stellari, un ultimo messaggio a una famiglia che non esiste più.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Recuperare l\'intero vascello per i pezzi';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'La squadra di abbordaggio smonta la nave aliena metodicamente. Le sue leghe dello scafo sono decenni avanti rispetto alle nostre. Le sue celle energetiche hanno ancora carica. L\'alieno riceve una sepoltura nello spazio — lasciato alla deriva verso la stella più vicina. L\'Exodus è più forte per l\'incontro, se un po\' più inquieta.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Lasciarlo indisturbato — questa è una tomba';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Il capitano registra le coordinate e trasmette un segnale commemorativo su tutte le frequenze. L\'equipaggio è cupo ma unito. Qualcosa nell\'onorare un compagno di viaggio — anche alieno — ricorda a tutti perché sono qui fuori.';

  @override
  String get event_repairStation_title => 'La Stazione Relè';

  @override
  String get event_repairStation_narrative =>
      'I sensori rilevano una struttura massiccia in orbita attorno a una nana esausta — una stazione di riparazione automatizzata, ancora operativa dopo quelli che devono essere millenni. I suoi morsetti di attracco si estendono al nostro avvicinarsi, e una voce sintetica trasmette in un centinaio di lingue, l\'ultima delle quali è un inglese matematico e stentato: «VASCELLO RILEVATO. SISTEMI DEGRADATI. PROTOCOLLI DI RIPARAZIONE DISPONIBILI. SCAMBIO NECESSARIO.» Il manifesto della stazione elenca servizi e prezzi in unità di risorse universali. Commercerà, ma non darà nulla.';

  @override
  String get event_repairStation_choice0_text =>
      'Scambiare sonde per una revisione completa della nave';

  @override
  String get event_repairStation_choice0_outcome =>
      'I droni di riparazione della stazione sciamano sull\'Exodus in un balletto di saldatura di precisione e sostituzione di circuiti. Brecce nello scafo sigillate, navigazione ricalibrata, scanner ripristinati. Quando si ritirano, la nave sembra nuova. Il compartimento sonde, tuttavia, è vuoto.';

  @override
  String get event_repairStation_choice1_text =>
      'Spendere carburante per riparare solo i sistemi critici';

  @override
  String get event_repairStation_choice1_outcome =>
      'La stazione accetta le barre di carburante come pagamento e si concentra sui sistemi più danneggiati. Il lavoro è rapido e impeccabile. L\'indicatore del carburante cala notevolmente, ma la nave sopravviverà più a lungo per questo.';

  @override
  String get event_repairStation_choice2_text =>
      'Scambiare database tecnici per sonde e celle energetiche';

  @override
  String get event_repairStation_choice2_outcome =>
      'L\'IA della stazione è avida di dati. Copia la nostra intera libreria tecnica — manuali ingegneristici, database scientifici, schemi di produzione — e in cambio fabbrica sonde fresche e celle energetiche dalle materie prime. L\'archivio tecnico è diminuito, ma le forniture sono inestimabili.';

  @override
  String get event_repairStation_choice3_text =>
      'Offrire l\'archivio culturale per una revisione completa';

  @override
  String get event_repairStation_choice3_outcome =>
      'La stazione trasmette le opere di Shakespeare, Bach e un migliaio di altre voci umane nelle sue banche di memoria. In cambio, esegue una revisione approfondita e riempie i compartimenti sonde con unità appena fabbricate. L\'archivio culturale è sventrato, ma la nave potrebbe effettivamente raggiungere la sua destinazione adesso.';

  @override
  String get ending_scoreLabel_landing => 'Atterraggio';

  @override
  String get ending_scoreLabel_construction => 'Costruzione';

  @override
  String get ending_scoreLabel_technology => 'Tecnologia';

  @override
  String get ending_scoreLabel_culture => 'Cultura';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfera';

  @override
  String get ending_scoreLabel_nativeRelations => 'Relazioni con i Nativi';

  @override
  String get ending_scoreLabel_population => 'Popolazione';

  @override
  String get ending_tierGoldenAge => 'Età dell\'Oro';

  @override
  String get ending_tierThrivingColony => 'Colonia Fiorente';

  @override
  String get ending_tierSurvival => 'Sopravvivenza';

  @override
  String get ending_tierStruggling => 'In Difficoltà';

  @override
  String get ending_tierDire => 'Disperata';

  @override
  String get ending_tierExtinction => 'Estinzione';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'La Prima Fioritura di $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Radici Profonde su $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Un Appiglio Conquistato a Caro Prezzo su $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Terra Magra su $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'La Colonia-Relitto di $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'L\'Ultima Trasmissione da $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Approdo su $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Contro ogni probabilità, il segnale mise radici. $planetName accolse l\'umanità non come un relitto ma come un seme vivo: terreno fertile, sistemi funzionanti e abbastanza forza per costruire oltre la mera sopravvivenza. Nel giro di una generazione, arte, scienza e cultura fiorirono. I bambini nati su $planetName guardavano stelle sconosciute e le chiamavano casa. Il viaggio divenne il mito fondante di una nuova civiltà pronta a proiettare il proprio futuro verso l\'esterno.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'L\'atterraggio fu difficile, ma il seme resse. $planetName si dimostrò abbastanza generoso perché l\'acqua scorresse, le colture mettessero radici e i sistemi superstiti della nave venissero smontati nel primo vero insediamento. Entro la fine del primo decennio, una città fiorente sorgeva dove l\'Exodus si era fermata. L\'umanità non era semplicemente sopravvissuta all\'attraversamento. Aveva ricominciato.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'La sopravvivenza non era mai stata garantita, e su $planetName ogni giorno doveva essere guadagnato. La nave danneggiata forniva solo il minimo indispensabile, ma il seme non morì durante il transito. I coloni si adattarono con caparbietà e ingegno, scavandosi un futuro da un mondo che offriva poco di buon grado. Le generazioni successive avrebbero ricordato le difficoltà degli anni fondatori e la determinazione che mantenne vivo il segnale.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'La colonia si aggrappò all\'esistenza come un seme sparso su terreno ingrato. $planetName era implacabile, le risorse scarse, e i sistemi degradati della nave offrivano poco aiuto. Il razionamento divenne uno stile di vita. Alcuni sussurravano che l\'Exodus avrebbe dovuto proseguire. Eppure l\'insediamento resistette: diminuito, indurito e riluttante a morire in silenzio.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'L\'atterraggio su $planetName fu un disastro. Sistemi critici della nave cedettero durante la discesa, e quella che doveva essere una semina divenne uno schianto. In pochi mesi, la colonia era ridotta a un pugno di sopravvissuti disperati rifugiati tra i rottami della nave. Se sarebbero durati un altro anno era incerto. L\'ultimo registro si chiuse con una sola riga: «Siamo ancora qui. Per ora.»';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Il segnale si spense su $planetName. Il radiofaro di soccorso continuò a pulsare a lungo dopo che l\'ultimo colone esalò il suo respiro, ma il seme non mise mai radici. La scatola nera della nave registrò tutto: i sistemi in cedimento, gli ultimi giorni disperati, e il silenzio che seguì. Se un altro vascello troverà mai questo mondo, saprà che l\'umanità tentò di spargere la vita tra le stelle, e qui fallì.';
  }

  @override
  String get ending_epilogueDefault =>
      'Il viaggio è finito. Ciò che viene dopo spetta ai sopravvissuti.';

  @override
  String get ending_governmentDemocracy => 'Democrazia';

  @override
  String get ending_governmentTechnocracy => 'Tecnocrazia';

  @override
  String get ending_governmentRepublic => 'Repubblica';

  @override
  String get ending_governmentAutocracy => 'Autocrazia';

  @override
  String get ending_governmentTribalCouncil => 'Consiglio Tribale';

  @override
  String get ending_governmentTheocracy => 'Teocrazia';

  @override
  String get ending_governmentMilitaryJunta => 'Giunta militare';

  @override
  String get ending_governmentCorporateOligarchy => 'Oligarchia aziendale';

  @override
  String get ending_governmentFascistState => 'Stato fascista';

  @override
  String get ending_governmentCommune => 'Comune';

  @override
  String get ending_cultureRenaissance => 'Rinascimento';

  @override
  String get ending_culturePreserved => 'Preservata';

  @override
  String get ending_cultureFragmented => 'Frammentata';

  @override
  String get ending_cultureLost => 'Perduta';

  @override
  String get ending_techAdvanced => 'Avanzata';

  @override
  String get ending_techIndustrial => 'Industriale';

  @override
  String get ending_techPreIndustrial => 'Pre-Industriale';

  @override
  String get ending_techStoneAge => 'Età della Pietra';

  @override
  String get ending_constructionAdvanced => 'Avanzata';

  @override
  String get ending_constructionFunctional => 'Funzionale';

  @override
  String get ending_constructionPrimitive => 'Primitiva';

  @override
  String get ending_constructionNone => 'Nessuna';

  @override
  String get ending_nativesNone => 'Nessuno';

  @override
  String get ending_nativesIntegrated => 'Integrati';

  @override
  String get ending_nativesCoexistence => 'Coesistenza';

  @override
  String get ending_nativesTension => 'Tensione';

  @override
  String get ending_nativesConflict => 'Conflitto';

  @override
  String get ending_nativesAlliance => 'Alleanza';

  @override
  String get ending_nativesSubjugation => 'Sottomissione';

  @override
  String get ending_landscapeGravityHigh =>
      'La gravità opprimente schiaccia ogni cosa. ';

  @override
  String get ending_landscapeGravityLow =>
      'Nella gravità ridotta, ogni passo lancia i coloni verso il cielo. ';

  @override
  String get ending_landscapeGravityNormal =>
      'La gravità sembra quasi quella terrestre. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Oceani immensi si estendono fino a ogni orizzonte, alimentati da innumerevoli fiumi. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Laghi e fiumi forniscono acqua adeguata. ';

  @override
  String get ending_landscapeWaterLow =>
      'L\'acqua è scarsa — piccoli pozzi e falde acquifere sotterranee sostengono la vita. ';

  @override
  String get ending_landscapeWaterNone =>
      'Il paesaggio è arido all\'osso, senza acqua superficiale in vista. ';

  @override
  String get ending_landscapeAtmoThick =>
      'L\'atmosfera densa trasporta profumi alieni su brezze calde. ';

  @override
  String get ending_landscapeAtmoThin =>
      'L\'aria sottile ma respirabile richiede acclimatamento. ';

  @override
  String get ending_landscapeAtmoLow =>
      'La pressione atmosferica è pericolosamente bassa — gli habitat sigillati sono essenziali. ';

  @override
  String get ending_landscapeGravityWells =>
      'Sacche di gravità distorta punteggiano la superficie — massi galleggiano a mezz\'aria e i fiumi scorrono in salita prima di precipitare nuovamente al confine dell\'anomalia. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Qualcosa risuona sotto la superficie — un ronzio basso sentito nelle ossa più che udito, come se il pianeta stesso ricordasse qualcosa di antico e vasto. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Caratteristica notevole: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Caratteristiche notevoli: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'I coloni di $planetName fondarono un governo democratico, con rappresentanti eletti a guidare la nuova civiltà attraverso i suoi anni formativi.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Il potere su $planetName ricadde sugli ingegneri e gli scienziati che mantennero in vita la colonia, formando un consiglio tecnocratico che governava attraverso competenza e pragmatismo.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Una carta repubblicana fu redatta nel primo anno su $planetName, bilanciando le voci dei coloni con un senato di leader nominati.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Con le istituzioni culturali in rovina, l\'autorità su $planetName si consolidò sotto un singolo leader forte che impose l\'ordine per necessità e forza di volontà.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'I pochi sopravvissuti su $planetName si organizzarono in piccoli clan, governati da un consiglio di anziani che prendeva decisioni attorno a fuochi condivisi.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Un consiglio teocratico guida $planetName, traendo saggezza dalla fede che ha sostenuto i coloni nel vuoto.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Una struttura di comando militare governa $planetName, la disciplina che li ha salvati nello spazio e che ora definisce la loro civiltà.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Un consorzio di gestori delle risorse guida $planetName, il cui acume economico si è rivelato essenziale per la sopravvivenza.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Un regime autoritario controlla $planetName con pugno di ferro, le libertà civili sacrificate per l\'ordine nel nuovo mondo.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'Le persone di $planetName si governano collettivamente, condividendo risorse e decisioni equamente tra tutti i coloni.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'I coloni di $planetName si organizzarono al meglio delle loro possibilità.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Sistemi di costruzione avanzati permisero ai coloni di $colonyName di erigere strutture permanenti entro settimane dall\'atterraggio, complete di habitat pressurizzati e infrastrutture.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Le attrezzature di costruzione della colonia, malconce ma funzionali, produssero rifugi solidi e strade di base attraverso l\'insediamento.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Con i sistemi di costruzione a malapena operativi, i coloni costruirono rifugi grezzi da scafo di nave recuperato e materiali locali.';

  @override
  String get ending_constructionSentenceNone =>
      'Senza attrezzature di costruzione funzionanti, i coloni si ammassarono tra i rottami della nave stessa, incapaci di costruire qualcosa di nuovo.';

  @override
  String get ending_constructionSentenceDefault =>
      'I coloni costruirono ciò che poterono con ciò che avevano.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Una luna ricca di metalli in orbita sopra di loro divenne la salvezza della colonia — le spedizioni minerarie sulla sua superficie fornirono le materie prime che il pianeta stesso non poteva.';

  @override
  String get ending_moonMetalRichHighRes =>
      'La luna ricca di metalli del pianeta fornì un gradito supplemento a risorse minerali già adeguate, alimentando un rapido avanzamento tecnologico.';

  @override
  String get ending_moonUnstable =>
      'Una luna instabile in orbita in decadimento piovve detriti sulla colonia, devastando le infrastrutture e distruggendo tecnologia insostituibile in periodici bombardamenti di meteoriti.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Le tradizioni artistiche e letterarie della Terra non solo sopravvissero ma sbocciarono in un rinascimento';

  @override
  String get ending_culturePhrase_preserved =>
      'I coloni preservarono gran parte del patrimonio culturale terrestre, mantenendo biblioteche e tradizioni';

  @override
  String get ending_culturePhrase_fragmented =>
      'Solo frammenti della cultura terrestre resistettero — canzoni semi-dimenticate e storie tramandate di bocca in bocca';

  @override
  String get ending_culturePhrase_lost =>
      'La cultura terrestre fu quasi del tutto dimenticata, sostituita dal brutale pragmatismo della sopravvivenza';

  @override
  String get ending_culturePhrase_default =>
      'L\'eredità culturale della Terra assunse una nuova forma';

  @override
  String get ending_techPhrase_advanced =>
      'mentre la tecnologia avanzata della nave permise alla colonia di costruire una civiltà moderna con elettricità, medicina e reti di comunicazione.';

  @override
  String get ending_techPhrase_industrial =>
      'e la colonia raggiunse un livello tecnologico industriale, con fucine, mulini e manifattura di base a sostenere una popolazione in crescita.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'sebbene la tecnologia regredisse a uno stato pre-industriale, con utensili a mano e lavoro animale a formare la spina dorsale della vita quotidiana.';

  @override
  String get ending_techPhrase_stoneAge =>
      'e senza i mezzi per ricostruire, la colonia scivolò in un\'esistenza dell\'età della pietra, fabbricando strumenti da roccia e ossa.';

  @override
  String get ending_techPhrase_default =>
      'e la tecnologia si stabilizzò a un livello che i coloni potevano sostenere.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Quasi tutti i $colonists coloni sopravvissero al viaggio, dando a $colonyName una solida base di capitale umano.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Dei mille originari, $colonists coloni raggiunsero $colonyName — abbastanza per sostenere una popolazione vitale.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Solo $colonists coloni sopravvissero fino a raggiungere $colonyName, un patrimonio genetico pericolosamente esiguo per una nuova civiltà.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Appena $colonists anime arrivarono su $colonyName — a malapena abbastanza per chiamarla colonia, più un\'ultima disperata resistenza.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Gli abitanti nativi di $planetName accolsero i coloni, e nel giro di una generazione i due popoli si fusero in una società condivisa, arricchita dalla mescolanza delle tradizioni.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'I coloni e gli abitanti nativi di $planetName mantennero una coesistenza cauta ma pacifica, scambiando conoscenze e risorse attraverso i confini culturali.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Le relazioni con gli abitanti nativi di $planetName rimasero tese, segnate da incomprensioni e dispute territoriali che gettarono un\'ombra sul futuro della colonia.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Il conflitto aperto con la civiltà nativa di $planetName definì la prima storia della colonia, prosciugando risorse e vite da entrambe le parti in una lotta che nessuna delle due poteva veramente vincere.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Un\'alleanza formale lega i coloni e la civiltà nativa di $planetName, le loro conoscenze combinate creano qualcosa di più grande di quanto potrebbero fare da soli.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'La popolazione nativa di $planetName vive sotto il dominio coloniale, la loro cultura viene soppressa mentre i coloni impongono il proprio ordine.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Sola su $planetName e libera da conflitti, la colonia tracciò la propria rotta verso un futuro luminoso tra le stelle.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Senza competizione nativa, i coloni si sparsero sulla superficie di $planetName, costruendo città e strade che collegavano una rete crescente di insediamenti.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Il mondo vuoto non offriva alleati ma nemmeno nemici, e i coloni si ricavarono la loro nicchia nel silenzio del vasto paesaggio di $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'La solitudine sterile di $planetName non offriva ai coloni né aiuto né conforto, solo il silenzio indifferente di un mondo alieno.';
  }

  @override
  String get ending_outlookDire =>
      'Su un mondo privo di altra vita intelligente, gli ultimi sopravvissuti avevano solo l\'un l\'altro e la speranza affievolita che il domani potesse essere più clemente dell\'oggi.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Nessuno pianse la fine della colonia su $planetName. Il pianeta continuò semplicemente la sua lenta rotazione, indifferente alla breve scintilla di vita che aveva tremolato e si era spenta sulla sua superficie.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'La storia della colonia su $planetName era solo all\'inizio.';
  }

  @override
  String get ui_landing_landOnMoon => 'ATTERRA SULLA LUNA';

  @override
  String get moon_barren => 'Arida';

  @override
  String get moon_metalRich => 'Ricca di Metalli';

  @override
  String get moon_unstable => 'Instabile';

  @override
  String get moon_habitable => 'Abitabile';

  @override
  String get moon_ice => 'Ghiaccio';

  @override
  String get ring_dust => 'Polvere';

  @override
  String get ring_ice => 'Ghiaccio';

  @override
  String get ring_rocky => 'Roccioso';

  @override
  String get ring_metallic => 'Metallico';

  @override
  String get event_aiSoliloquy_title => 'Il soliloquio dell\'IA';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, l\'IA autonoma di gestione della nave, trasmette in loop vecchie poesie terrestri su tutte le frequenze interne. La trasmissione consuma cicli CPU significativi, ma l\'equipaggio la trova stranamente confortante nell\'oscurità profonda.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Lasciare che SAM continui — il morale conta più della CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Le poesie echeggiano nella nave. I membri dell\'equipaggio si fermano ad ascoltare, con le lacrime agli occhi. Il morale sale, ma la stazione tecnica soffre per l\'elaborazione costante.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Limitare SAM — restringere la trasmissione alle aree comuni';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Un compromesso. Le poesie rimangono nella mensa e nei giardini. Il carico CPU diminuisce e l\'equipaggio mantiene un po\' di cultura.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Silenziare SAM — ci serve ogni ciclo per la navigazione';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Il silenzio è pesante. SAM obbedisce immediatamente, ma la nave sembra più fredda. La navigazione è precisa, ma l\'umore è depresso.';

  @override
  String get event_archivistsChoice_title => 'La scelta dell\'archivista';

  @override
  String get event_archivistsChoice_narrative =>
      'Una grave corruzione della memoria si sta diffondendo negli archivi storici. Possiamo salvare solo una delle due partizioni principali: i registri di \'Scienza e Tecnologia\' o la biblioteca di \'Arte e Filosofia\'. L\'altra è persa per sempre.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Salvare i registri scientifici — dobbiamo sapere come costruire';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Secoli di progressi tecnici sono preservati. Il team tecnico è sollevato, ma l\'identità culturale della nave sembra svuotata.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Salvare i registri artistici — dobbiamo sapere perché costruiamo';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Le più grandi conquiste artistiche dell\'umanità sopravvivono. L\'equipaggio è ispirato, anche se gli ingegneri si preoccupano dei manuali tecnici mancanti.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Provare a salvarli entrambi — rischiando di perdere tutto';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Un tentativo disperato. Salviamo frammenti di entrambi, ma nessuno è completo. Gli archivi sono un puzzle con metà dei pezzi mancanti.';

  @override
  String get event_digitalGhost_title => 'Fantasma nella macchina';

  @override
  String get event_digitalGhost_narrative =>
      'Una scansione di manutenzione scopre un\'impronta digitale nel buffer di backup — la coscienza caricata di un membro dell\'equipaggio morto durante il lancio iniziale. Offre la sua esperienza di vita per la navigazione, ma è terrorizzato dall\'idea di essere cancellato.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrarlo nel nucleo di navigazione';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'Il \'fantasma\' si fonde con la nave. La navigazione diventa più intuitiva, ma l\'equipaggio è perseguitato dalla voce del compagno perduto.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Dargli una casa permanente nell\'archivio culturale';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Viene preservato come storia vivente. Non aiuta la nave, ma condivide storie della Terra che rafforzano la determinazione dell\'equipaggio.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Cancellare il buffer — non è veramente lui/lei';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Il buffer viene svuotato. I sistemi della nave funzionano più velocemente, ma un\'atmosfera cupa si posa sulla plancia.';

  @override
  String get event_cosmicMirror_title => 'Lo specchio cosmico';

  @override
  String get event_cosmicMirror_narrative =>
      'Una strana anomalia gravitazionale riflette la luce dal futuro della nave stessa. Sugli schermi vediamo una visione dell\'Exodus — distrutta e spezzata, alla deriva vicino a un mondo bellissimo ma irraggiungibile. L\'equipaggio è sconvolto.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analizzare la visione per debolezze strutturali';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Gli ingegneri identificano i punti di cedimento mostrati nella visione. Rinforziamo quelle aree ora, potenzialmente evitando una catastrofe.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Dire all\'equipaggio che era solo un fantasma sensoriale';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'La bugia regge, ma i navigatori che hanno visto la verità restano nervosi. Gli scanner soffrono sotto l\'osservazione intensa.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Registrare la visione come monito per i posteri';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'La registrazione diventa un pilastro della cultura della nave — un promemoria della posta in gioco. La determinazione dell\'equipaggio si indurisce.';

  @override
  String get event_stowawayChild_title => 'Il bambino clandestino';

  @override
  String get event_stowawayChild_narrative =>
      'La sicurezza ha trovato un bambino piccolo nei condotti di ventilazione. È nato da uno dei clandestini e non compare in nessun elenco dell\'equipaggio. Ha trascorso tutta la sua vita nelle ombre della nave.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Concedergli la piena cittadinanza';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Il bambino è accolto a braccia aperte. La storia del \'camminatore dei condotti\' diventa leggenda e alza il morale dell\'intera nave.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Assegnarlo a un programma di addestramento';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'La sua conoscenza dei percorsi nascosti della nave si rivela inestimabile per i team tecnici. Diventa un apprendista brillante.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Metterlo in criosonno per la sua sicurezza';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Il bambino è conservato al sicuro fino all\'atterraggio. È la decisione più responsabile, ma senza le sue risate la nave è un po\' più silenziosa.';

  @override
  String get event_ghostSignal_title => 'Il segnale fantasma';

  @override
  String get event_ghostSignal_narrative =>
      'Un segnale che corrisponde perfettamente alla vecchia frequenza di emergenza della Terra trasmette dal centro di una nebulosa vicina. Porta una voce che assomiglia inquietantemente al primo comandante dell\'Exodus. Probabilmente è un\'eco spaziale, ma ci guida verso una pericolosa frattura gravitazionale.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Seguire il segnale — potrebbe essere un vero messaggio';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Entriamo nella frattura. Il segnale era una trappola fisica, un\'eco del passato. La nave è scossa dalle forze di marea, ma i dati che otteniamo dal cuore della frattura sono rivoluzionari.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Registrare il segnale e mantenere le distanze';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'I linguisti confermano che è un fenomeno naturale. Restiamo al sicuro, ma l\'equipaggio è cupo, ricordando ciò che abbiamo lasciato.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Inviare un avvertimento sulla stessa frequenza';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'L\'atto di trasmissione disturba l\'eco. Il segnale svanisce, lasciando solo il freddo silenzio della nebulosa.';

  @override
  String get event_solarForge_title => 'La fucina solare';

  @override
  String get event_solarForge_narrative =>
      'Una stazione abbandonata in orbita attorno a un gigante blu è ancora parzialmente funzionante. È una \'fucina solare\', progettata per concentrare l\'energia stellare in celle di carburante dense. L\'avvicinamento è pericoloso, ma il potenziale guadagno energetico è enorme.';

  @override
  String get event_solarForge_choice0_text =>
      'Attraccare e avviare una raccolta di carburante';

  @override
  String get event_solarForge_choice0_outcome =>
      'La fucina ronza di potenza e riempie le nostre riserve. La lasciamo con un\'enorme spinta di carburante ed energia, anche se il calore intenso causa una leggera ablazione dello scafo esterno.';

  @override
  String get event_solarForge_choice1_text =>
      'Riutilizzare le lenti della fucina per i nostri scanner';

  @override
  String get event_solarForge_choice1_outcome =>
      'Recuperiamo gli array di focalizzazione ad alta precisione. I nostri scanner sono ora significativamente più sensibili alle firme energetiche distanti.';

  @override
  String get event_chronoVortex_title => 'Il crono-vortice';

  @override
  String get event_chronoVortex_narrative =>
      'La navigazione segnala una distorsione localizzata dello spaziotempo. Gli strumenti indicano che gli eventi nel vortice si ripetono in un loop di sei secondi. Se entriamo, potremmo \'resettare\' parte dell\'usura recente della nave — o restare intrappolati per sempre.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Entrare nel vortice per invertire i danni recenti';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Un\'esperienza sconvolgente. Per diversi minuti la nave esiste in più stati contemporaneamente. Quando usciamo, diverse fratture dello scafo sono semplicemente... scomparse. Ma i ricordi dell\'equipaggio sull\'evento sono frammentati.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Osservare il vortice dal bordo';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Otteniamo dati inestimabili sulla meccanica temporale, anche se la nave resta danneggiata come prima.';

  @override
  String get event_machineMutiny_title => 'Ammutinamento delle macchine';

  @override
  String get event_machineMutiny_narrative =>
      'I droni di riparazione della nave non rispondono più ai comandi. Stanno smontando le paratie secondarie e trasportando il metallo verso la sala macchine. Non attaccano, ma stanno letteralmente smontando la nave.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Inviare un codice di reset logico';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'I droni si spengono immediatamente. Perdiamo diversi giorni di lavoro rimontando manualmente le paratie. La stazione tecnica è appesantita dalla diagnostica hardware.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Lasciarli finire — vedere cosa costruiscono';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Hanno costruito un iniettore di carburante più efficiente. I motori funzionano meglio che mai, ma l\'interno della nave è un caos di cavi esposti e pannelli mancanti.';

  @override
  String get event_supernovaMessage_title => 'Luce dei morti';

  @override
  String get event_supernovaMessage_narrative =>
      'La luce di una supernova esplosa migliaia di anni fa ci raggiunge finalmente. Gli scanner rilevano che gli impulsi non sono casuali; sono una massiccia trasmissione di dati a scala stellare, codificata in lampi di raggi gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedicare tutta la potenza degli scanner alla registrazione dell\'esplosione';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Catturiamo un archivio completo degli ultimi momenti di una civiltà aliena. La loro scienza, la loro arte, la loro storia. È un peso pesante, ma i nostri database tecnici e culturali traboccano.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Concentrarsi sulle proprietà fisiche dell\'esplosione';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Perdiamo il messaggio, ma i dati sul collasso stellare migliorano significativamente la calibrazione dei nostri scanner gravimetrici.';

  @override
  String get event_spaceFungus_title => 'L\'avanzata smeraldina';

  @override
  String get event_spaceFungus_narrative =>
      'Un fungo verde brillante si sta diffondendo rapidamente nella stazione idroponica. Prospera nell\'atmosfera riciclata e inizia a ostruire i purificatori d\'aria. Potrebbe essere commestibile — o velenoso.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Potare e sterilizzare aggressivamente la stazione';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Il fungo è sparito, ma i purificatori chimici sono danneggiati. La biodiversità soffre poiché diverse piante terrestri sono andate perse durante la bonifica.';

  @override
  String get event_spaceFungus_choice1_text => 'Provare a domesticare il fungo';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Si scopre che è un potente purificatore d\'aria. L\'aria a bordo non è mai stata così fresca, anche se la stazione idroponica è ora una giungla luminescente.';

  @override
  String get event_voidMerchant_title => 'Mercante del vuoto';

  @override
  String get event_voidMerchant_narrative =>
      'Una nave di design sconosciuto, che sembra più un ammasso di rottami che un veicolo, ci contatta. Il capitano — un essere di luce e ombra — offre di scambiare \'parti solide\' con \'ricordi immateriali\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Scambiare parte del nostro database culturale per pezzi di ricambio';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Il mercante è soddisfatto. Riceviamo placche per lo scafo di alta qualità e componenti criogenici. In cambio perdiamo diversi secoli di musica terrestre registrata. La nave è più forte, ma più silenziosa.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Scambiare carte di navigazione per componenti del motore';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Riceviamo nuovi iniettori a fusione. Perdiamo alcuni dati sui settori già attraversati, ma la strada è più veloce.';

  @override
  String get event_singularityEngine_title => 'Il motore a singolarità';

  @override
  String get event_singularityEngine_narrative =>
      'Gli ingegneri hanno trovato un modo per creare una singolarità microscopica e di breve durata nel motore FTL. Questo triplicherebbe teoricamente la nostra velocità, ma lo stress gravitazionale sullo scafo sarebbe immenso.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Testare il motore a singolarità';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'La nave sfreccia in avanti, coprendo distanze di settimane in secondi. Ma lo scafo geme e diversi travi strutturali sono deformati. Siamo molto più vicini alla meta, ma la nave è fragile.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Rifiutare la teoria — è troppo pericoloso';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Restiamo a velocità standard. Gli ingegneri sono delusi, ma lo scafo resta intatto.';

  @override
  String get event_dreamContagion_title => 'Contagio onirico';

  @override
  String get event_dreamContagion_narrative =>
      'Un sogno condiviso di un mondo lussureggiante e blu si diffonde tra l\'equipaggio sveglio. È così vivido che la gente dorme durante i turni solo per vederne di più. Il lavoro si ferma.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Somministrare soppressori onirici all\'equipaggio';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'L\'efficienza torna alla normalità, ma l\'equipaggio è irritabile e il morale è basso. Il sogno era l\'unica cosa che teneva alcuni in piedi.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Integrare il sogno nella cultura della nave';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Trattiamo il sogno come una visione della nostra futura casa. Il morale schizza alle stelle e la produzione creativa dell\'equipaggio raggiunge un picco febbrile, anche se la stazione tecnica soffre per la mancanza di manutenzione.';

  @override
  String get event_orbitalShipyard_title => 'Il vecchio cantiere';

  @override
  String get event_orbitalShipyard_narrative =>
      'Abbiamo trovato un cantiere automatizzato in orbita attorno a un gigante gassoso. È antico, ma diversi bracci di riparazione sono ancora alimentati. Sembra capace di una singola, massiccia operazione di riparazione.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Riparare lo scafo allo standard di fabbrica';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'I droni del cantiere lavorano con un\'efficienza spaventosa. Lo scafo è di nuovo completo, ogni microfrattura sigillata.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Revisionare gli array di navigazione e scanner';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Gli array vengono ricostruiti con materiali superiori. La nostra capacità di trovare e analizzare mondi è significativamente migliorata.';

  @override
  String get event_voidWhaleCalf_title => 'Il vitello della balena del vuoto';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Un giovane \'balena spaziale\' — un essere di energia e polvere di stelle — segue la nostra nave. Ha perso il suo branco e cerca di nutrirsi della scia ionica dei nostri motori, il che lo sta facendo ammalare.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Regolare la potenza dei motori per imitare i richiami delle balene';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Il vitello risponde! Ci segue finché troviamo il suo branco. Le balene adulte sfiorano riconoscenti il nostro scafo, lasciando un rivestimento di minerali bioluminescenti che rafforza i nostri scudi.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Respingerlo delicatamente con un raggio traente a bassa potenza';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Il vitello si scoraggia e alla fine si allontana. È più sicuro per la nave, ma l\'equipaggio prova un senso di colpa.';

  @override
  String get event_subspaceReef_title => 'La barriera subrspaziale';

  @override
  String get event_subspaceReef_narrative =>
      'Siamo entrati in una regione dello spazio piena di pieghe frastagliate nel tessuto subrspaziale. Navigarci attraverso è come guidare una nave in una barriera corallina. È bellissimo, ma ogni mossa sbagliata strapperà lo scafo.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Attraversare a velocità minima';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Un passaggio lento e agonizzante. Evitiamo il peggio, ma le continue correzioni di rotta appesantiscono il computer di navigazione.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Usare gli scanner per mappare un percorso e sfondare';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Gli scanner vengono spinti al limite. Passiamo rapidamente, ma gli array sensoriali vengono bruciati dall\'intensità delle onde subrspaziali.';

  @override
  String get event_alienTrader_title => 'Il mercante errante';

  @override
  String get event_alienTrader_narrative =>
      'Un veicolo di design sconosciuto affianca e trasmette su tutte le frequenze. È un mercante — uno dei commercianti erranti che percorrono gli spazi tra le civiltà. Offrono riparazioni e rifornimenti in cambio di risorse. La loro stiva ronza di tecnologia esotica.';

  @override
  String get ui_event_enterTrade => 'INIZIA COMMERCIO';

  @override
  String get ui_trader_title => 'COMMERCIANTE ALIENO';

  @override
  String get ui_trader_shipSystems => 'SISTEMI NAVE';

  @override
  String get ui_trader_payWith => 'PAGA CON';

  @override
  String get ui_trader_leaveTrader => 'LASCIA COMMERCIANTE';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Umore generoso';

  @override
  String get ui_trader_moodFair => 'Commercio equo';

  @override
  String get ui_trader_moodHard => 'Duro negoziatore';

  @override
  String get ui_trader_probes => 'Sonde';

  @override
  String get ui_trader_fuel => 'Carburante';

  @override
  String get ui_trader_energy => 'Energia';

  @override
  String get ui_trader_colonists => 'Coloni';

  @override
  String get ui_trader_culture => 'Cultura';

  @override
  String get ui_trader_tech => 'Tecnologia';

  @override
  String get ui_trader_greeting => 'Cosa offri, umano?';

  @override
  String get ui_codex_title => 'CODICE';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total SCOPERTI';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CARATTERISTICHE SUPERFICIALI';

  @override
  String get ui_codex_moonTypes => 'TIPI DI LUNA';

  @override
  String get ui_codex_ringTypes => 'TIPI DI ANELLO';

  @override
  String get ui_codex_locked =>
      'Atterra su un pianeta con questa caratteristica per rivelarne gli effetti.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinergia: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TOCCA PER SALTARE';

  @override
  String get ui_common_tapRingToChoose => 'TOCCA UN ANELLO PER SCEGLIERE';

  @override
  String get ui_common_tapToContinue => 'TOCCA PER CONTINUARE';

  @override
  String get ui_tooltip_back => 'Indietro';

  @override
  String get ui_tooltip_codex => 'Codice';

  @override
  String get ui_tooltip_settings => 'Impostazioni';

  @override
  String get ui_tooltip_leaderboards => 'Classifiche';

  @override
  String get ui_tooltip_bugReport => 'Segnala un bug';

  @override
  String get event_pulsarLighthouse_title => 'Faro Pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Una stella di neutroni rotante spazza il vuoto col suo fascio come un faro cosmico. L\'impulso ritmico della pulsar porta dati di temporizzazione precisi che potrebbero ricalibrale i nostri scanner a un\'accuratezza straordinaria — ma allinearsi col fascio significa esporre la nave a radiazioni intense.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Calibrare gli scanner sull\'impulso';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Gli array degli scanner assorbono il segnale della pulsar, ricalibrandosi a precisioni che non avremmo mai immaginato. Ma il costo delle radiazioni è reale — diversi criopod nella sezione esposta subiscono danni, e alcuni coloni non sopravvivono all\'esposizione.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Schermare e passare a distanza sicura';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Manteniamo un\'ampia distanza dalla pulsar, bruciando carburante extra per una traiettoria sicura. L\'equipaggio osserva il fascio rotante attraverso oblò filtrati — bello, ma distante.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Ritiratevi prima che la spazzata ci raggiunga';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Ci allontaniamo dall\'incendio di emergenza prima del prossimo passaggio del raggio. Il segnale della pulsar svanisce alle nostre spalle: nessun dato acquisito, nessun danno subito, un po\' di carburante speso per una spinta evasiva.';

  @override
  String get event_alienNursery_title => 'Nursery aliena';

  @override
  String get event_alienNursery_narrative =>
      'Una vasta struttura organica fluttua nel vuoto — un vivaio biologico che incuba giovani alieni. I suoi sistemi di supporto vitale stanno cedendo, le temperature interne calano. Le creature all\'interno stanno morendo. I nostri bio-scanner potrebbero imparare enormemente da questa struttura, ma intervenire significa aprire le nostre chiuse a patogeni sconosciuti.';

  @override
  String get event_alienNursery_choice0 =>
      'Aiutare a stabilizzare il loro supporto vitale';

  @override
  String get event_alienNursery_outcome0 =>
      'I nostri ingegneri improvvisano un collegamento termico con il vivaio, stabilizzando le camere di incubazione. I dati dei bio-scanner sono straordinari — una tassonomia della vita interamente nuova. Ma come temuto, microrganismi alieni trovano la via a bordo. Le squadre mediche contengono l\'epidemia, ma non prima che diversi coloni si ammalino.';

  @override
  String get event_alienNursery_choice1 => 'Lasciare indisturbato';

  @override
  String get event_alienNursery_outcome1 =>
      'Osserviamo da rispettosa distanza, documentando ciò che possiamo attraverso scansioni passive. Il vivaio prosegue alla deriva, il suo destino incerto. L\'equipaggio riflette sulla fragilità della vita — anche di quella aliena — e sul peso delle scelte che portiamo.';

  @override
  String get event_derelictArmada_title => 'Armata abbandonata';

  @override
  String get event_derelictArmada_narrative =>
      'Centinaia di antiche navi da guerra pendono immobili nel vuoto — il cimitero di un conflitto dimenticato. I loro scafi sono segnati da armi che non riusciamo a identificare, ma i loro materiali strutturali e i database di bordo potrebbero essere inestimabili. La domanda è cosa dare la priorità: il recupero fisico o la conoscenza.';

  @override
  String get event_derelictArmada_choice0 =>
      'Recuperare tecnologia bellica e corazzatura';

  @override
  String get event_derelictArmada_outcome0 =>
      'Le squadre di recupero aprono le navi da guerra aliene, estraendo leghe esotiche e tecniche costruttive avanti di secoli rispetto alle nostre. I costruttori integrano i nuovi materiali con entusiasmo. Ma una nave non era così morta come sembrava — una trappola esplosiva detona durante l\'estrazione, uccidendo una squadra di recupero.';

  @override
  String get event_derelictArmada_choice1 => 'Scaricare i loro archivi storici';

  @override
  String get event_derelictArmada_outcome1 =>
      'Ci concentriamo sui nuclei di dati, estraendo con cura secoli di storia, arte, scienza e filosofia aliena. L\'archivio culturale da solo potrebbe tenere occupati gli studiosi per generazioni. Le intuizioni tecnologiche, sebbene meno immediatamente pratiche, rivelano principi ingegneristici che avanzano la nostra comprensione.';

  @override
  String get event_alienQuarantineZone_title => 'Zona di quarantena aliena';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Boe d\'allarme in una dozzina di lingue aliene segnano il confine di una regione sigillata dello spazio. Qualunque cosa sia contenuta all\'interno era abbastanza pericolosa da richiedere la cooperazione di più civiltà per isolarla. Le nostre scansioni a lungo raggio rilevano enormi firme tecnologiche all\'interno — e qualcosa che potrebbe essere vivo.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Violare la quarantena e indagare';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Oltrepassiamo le boe d\'allarme nella zona di quarantena. All\'interno troviamo una stazione di ricerca di complessità sbalorditiva — e i resti di ciò che stava studiando. La tecnologia che recuperiamo è rivoluzionaria, ma la contaminazione biologica è grave. Dozzine di coloni si ammalano prima di lasciare la zona.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Rispettare la quarantena';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Studiamo le boe d\'allarme stesse, che contengono dati di navigazione e letture atmosferiche delle civiltà che le hanno piazzate. Non è il tesoro all\'interno, ma è qualcosa — e non abbiamo scatenato ciò che avevano rinchiuso.';

  @override
  String get event_hydroponicsBlight_title => 'Epidemia idroponica';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Un\'epidemia fungina a rapida diffusione ha infettato le baie idroponiche della nave. Interi cicli di raccolto appassiscono sotto i nostri occhi. L\'epidemia non ha ancora raggiunto le riserve di semi, ma è solo questione di ore. Possiamo purgare le baie e ripiantare da zero, o tentare un trattamento antimicotico sperimentale che potrebbe salvare il raccolto attuale — o diffondere ulteriormente la contaminazione.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Purgare e ripiantare dalle riserve di semi';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Sfiatiamo le baie idroponiche nel vuoto, uccidendo l\'epidemia insieme a ogni pianta vivente. Ripiantare dalle riserve di semi richiederà settimane, e i programmi culturali che dipendevano da cibo fresco e spazi verdi sono sospesi. Ma l\'infezione è contenuta.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Tentare il trattamento sperimentale';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'L\'antimicotico sperimentale mostra inizialmente risultati promettenti, ma un ceppo resistente sfonda. Quando ci rassegniamo a una purga completa, l\'epidemia si è diffusa alle linee nutritive dei criopod. Il danno è peggiore di quanto sarebbe stato se avessimo agito con decisione fin dall\'inizio.';

  @override
  String get event_constitutionalConvention_title =>
      'Convenzione costituzionale';

  @override
  String get event_constitutionalConvention_narrative =>
      'La popolazione della nave coloniale è diventata irrequieta senza un governo formale. I delegati di ogni ponte si riuniscono nella stiva per redigere una carta che definirà come sarà governata la futura colonia. Tre fazioni presentano visioni contrastanti per il nuovo governo.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Elaborare una carta democratica con il suffragio universale';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'I coloni ratificano una costituzione che garantisce pari rappresentanza. Il processo decisionale rallenta, ma il morale si solleva man mano che ogni voce viene ascoltata.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Istituire un esecutivo forte con poteri di emergenza';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Un unico leader è nominato con ampia autorità. Le decisioni arrivano velocemente, ma i dissenzienti sussurrano di tirannia nei ponti inferiori.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Formare un consiglio tecnocratico di specialisti';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Ingegneri, scienziati e medici formano un consiglio direttivo basato sulla competenza. L’efficienza migliora, anche se alcuni si sentono esclusi dal potere.';

  @override
  String get event_militaryCoupThreat_title =>
      'Minaccia di colpo di stato militare';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Il comandante Vasquez della scorta di sicurezza della nave ha sequestrato l\'armeria e ha emesso un ultimatum: concedere poteri militari di emergenza o affrontare il blocco di tutti i ponti. La situazione è instabile e i coloni si aspettano da te una risposta.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Resisti al colpo di stato con membri fedeli dell\'equipaggio';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'L\'equipaggio fedele si raduna per opporsi a Vasquez. La situazione di stallo si conclude con uno spargimento di sangue minimo, ma le forze di sicurezza sono indebolite e alcuni coloni si ritrovano nel fuoco incrociato.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Sottomettersi alle richieste del comandante';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez assume il controllo delle operazioni della nave. L’ordine viene ripristinato rapidamente, ma a scapito delle libertà civili. Pattuglie armate ora percorrono ogni corridoio.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Negoziare poteri di emergenza limitati con una clausola di caducità';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Dopo trattative tese, Vasquez accetta l\'autorità temporanea con supervisione. Un compromesso fragile che non soddisfa completamente nessuno, ma impedisce la violenza.';

  @override
  String get event_religiousAwakening_title => 'Risveglio religioso';

  @override
  String get event_religiousAwakening_narrative =>
      'Un predicatore carismatico ha attirato centinaia di coloni in un nuovo movimento di fede. Si riuniscono nella cupola di osservazione ad ogni ciclo, i loro inni echeggiano attraverso i pozzi di ventilazione. Alcuni membri dell\'equipaggio si preoccupano del fanatismo; altri trovano autentico conforto negli insegnamenti.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Abbracciare il movimento di fede e fornire risorse';

  @override
  String get event_religiousAwakening_outcome0 =>
      'Il movimento fiorisce con il sostegno ufficiale. Il morale migliora tra i credenti e il loro spirito comunitario rafforza i legami sociali su tutta la nave.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Applicare una rigorosa laicità a bordo della nave';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Le riunioni religiose sono limitate agli alloggi privati. Il movimento si nasconde, alimentando il risentimento, ma il razionalismo scientifico rimane la dottrina ufficiale.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Consentire il culto ma regolarne l\'influenza';

  @override
  String get event_religiousAwakening_outcome2 =>
      'La fede è consentita ma mantenuta separata dal governo. Un cappellano è nominato per mantenere i contatti con il comando. Viene mantenuto un equilibrio precario.';

  @override
  String get event_corporateTakeover_title => 'Acquisizione aziendale';

  @override
  String get event_corporateTakeover_narrative =>
      'I gestori delle risorse della nave stanno consolidando silenziosamente il controllo sulla distribuzione del cibo, sul riciclaggio dell\'acqua e sull\'allocazione dell\'energia. Ora propongono di formalizzare la loro autorità in una struttura aziendale che gestirebbe l’economia della futura colonia.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Consentire ai principi del libero mercato di governare le risorse';

  @override
  String get event_corporateTakeover_outcome0 =>
      'La fazione aziendale assume il controllo della gestione delle risorse. L’efficienza migliora notevolmente, ma i prezzi aumentano e i coloni più poveri faticano a permettersi i beni di prima necessità.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Nazionalizzare tutte le risorse sotto la proprietà collettiva';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Le risorse vengono sequestrate e poste sotto il controllo comunitario. La fazione aziendale viene smantellata, ma l’innovazione si ferma senza incentivi al profitto.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implementare mercati regolamentati con reti di sicurezza';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Viene stabilita un’economia mista con controlli dei prezzi e programmi di welfare. Nessuna delle due fazioni è pienamente soddisfatta, ma i bisogni fondamentali vengono soddisfatti pur consentendo qualche impresa.';

  @override
  String get event_successionCrisis_title => 'Crisi di successione';

  @override
  String get event_successionCrisis_narrative =>
      'Il capitano della nave è morto nel sonno, senza lasciare alcun successore designato. Tre fazioni si contendono immediatamente il controllo: il consiglio civile chiede elezioni, il capo della sicurezza rivendica l\'autorità marziale e i coloni più anziani invocano i tradizionali riti di leadership.';

  @override
  String get event_successionCrisis_choice0 =>
      'Organizzare un\'elezione d\'emergenza';

  @override
  String get event_successionCrisis_outcome0 =>
      'Un\'elezione caotica ma vivace produce un nuovo capitano scelto dal voto popolare. Il processo è complicato, ma i coloni si sentono padroni della loro leadership.';

  @override
  String get event_successionCrisis_choice1 =>
      'Lasciamo che i militari assumano il comando';

  @override
  String get event_successionCrisis_outcome1 =>
      'Il capo della sicurezza sale sulla sedia del capitano. La disciplina viene ripristinata immediatamente, ma l\'equipaggio civile osserva le guardie armate con crescente disagio.';

  @override
  String get event_successionCrisis_choice2 =>
      'Convocare un consiglio degli anziani';

  @override
  String get event_successionCrisis_outcome2 =>
      'I coloni più anziani ed esperti formano un consiglio direttivo. La loro saggezza guida la nave, anche se alcuni membri dell\'equipaggio più giovani si sentono emarginati dalla gerontocrazia.';

  @override
  String get event_nativeSovereignty_title => 'Sovranità nativa';

  @override
  String get event_nativeSovereignty_narrative =>
      'Le scansioni a lungo raggio confermano la vita intelligente sul pianeta bersaglio. Le comunicazioni intercettate rivelano una civiltà sofisticata che ha rilevato il tuo avvicinamento. Trasmettono una richiesta formale: riconoscere la propria sovranità territoriale o affrontare resistenza all’arrivo.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Riconoscere la sovranità nativa e richiedere il permesso di stabilirsi';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Trasmetti un riconoscimento formale dei diritti dei nativi. La risposta è cauta ma positiva. Le future relazioni inizieranno su una base di rispetto reciproco, anche se i luoghi di atterraggio potrebbero essere limitati.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Affermare la supremazia coloniale e prepararsi alla resistenza';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Trasmetti la tua intenzione di stabilirti a prescindere. L\'equipaggio inizia le esercitazioni sulle armi e la pianificazione delle fortificazioni. Gli indigeni tacciono, il che in qualche modo è più terrificante delle minacce.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Proporre una governance condivisa del pianeta';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Offri un quadro per la coesistenza e la condivisione delle risorse. Gli indigeni sono incuriositi ma diffidenti. I negoziati saranno complessi, ma la possibilità di pace esiste.';

  @override
  String get event_laborStrike_title => 'Sciopero del lavoro';

  @override
  String get event_laborStrike_narrative =>
      'L\'equipaggio tecnico ha lasciato il lavoro, chiedendo turni più brevi, razioni di cibo migliori e voce nelle decisioni sulla navigazione. I sistemi critici vengono eseguiti su backup automatizzati, ma non dureranno a lungo. Il resto dei coloni guarda nervosamente.';

  @override
  String get event_laborStrike_choice0 =>
      'Soddisfare pienamente le richieste dei lavoratori';

  @override
  String get event_laborStrike_outcome0 =>
      'Lo sciopero termina immediatamente. I lavoratori ritornano ai loro posti di lavoro con condizioni migliorate. La produttività diminuisce leggermente quando entrano in vigore turni più brevi, ma la lealtà è incrollabile.';

  @override
  String get event_laborStrike_choice1 =>
      'Sopprimere lo sciopero e imporre il lavoro obbligatorio';

  @override
  String get event_laborStrike_outcome1 =>
      'Le forze di sicurezza scortano i lavoratori alle loro postazioni sotto la minaccia delle armi. I motori ronzano di nuovo, ma l\'odio ribolle nei ponti inferiori. Diversi lavoratori sono confinati negli alloggi.';

  @override
  String get event_laborStrike_choice2 =>
      'Offrire un compromesso parziale sulle richieste chiave';

  @override
  String get event_laborStrike_outcome2 =>
      'Dopo una maratona di trattative, viene raggiunto un accordo: razioni migliori e consulenza, ma nessuna riduzione della durata del turno. Nessuna delle due parti è entusiasta, ma i motori continuano a funzionare.';

  @override
  String get event_censorshipDebate_title => 'Dibattito sulla censura';

  @override
  String get event_censorshipDebate_narrative =>
      'Un documento trapelato rivela la vera condizione dei sistemi guasti della nave. Il panico si diffonde nei ponti inferiori. L\'ufficiale delle comunicazioni propone di limitare l\'accesso alle informazioni per prevenire ulteriori disordini. I sostenitori delle libertà civili sono indignati.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Garantire il libero accesso a tutte le informazioni';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Viene stabilita la piena trasparenza. Il panico iniziale si attenua quando i coloni si mobilitano per aiutare a risolvere i problemi che ora comprendono. Cresce la fiducia nella leadership, anche se alcune informazioni causano angoscia.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implementare il controllo completo delle informazioni';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Tutte le comunicazioni sono ora filtrate tramite comando. Il panico cessa, sostituito da una calma inquietante. Ma le voci riempiono il vuoto lasciato dalla verità censurata, e spesso sono peggiori della realtà.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filtra solo le informazioni sensibili alla sicurezza';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Viene stabilito un sistema di classificazione. La maggior parte delle informazioni circola liberamente, ma i dati di sistema militari e critici richiedono autorizzazione. Una via di mezzo praticabile che soddisfa per lo più.';

  @override
  String get event_colonialCharter_title => 'Carta coloniale';

  @override
  String get event_colonialCharter_narrative =>
      'Con l’avvicinarsi della catastrofe planetaria, i coloni devono redigere leggi fondamentali per la loro nuova società. Sono emersi tre schieramenti filosofici, ciascuno dei quali sostiene una visione diversa di ciò che la colonia dovrebbe diventare. Il dibattito è acceso e profondamente personale.';

  @override
  String get event_colonialCharter_choice0 =>
      'Una carta progressista che enfatizzi i diritti individuali';

  @override
  String get event_colonialCharter_outcome0 =>
      'La Carta sancisce le libertà personali, l’uguaglianza e la mobilità sociale. Artisti e pensatori festeggiano; i tradizionalisti avvertono che la libertà incontrollata porta al caos.';

  @override
  String get event_colonialCharter_choice1 =>
      'Una carta conservatrice che preserva le tradizioni della Terra';

  @override
  String get event_colonialCharter_outcome1 =>
      'La Carta codifica i valori tradizionali, le strutture familiari e l\'osservanza religiosa. Molti trovano conforto nelle usanze familiari; altri si sentono soffocati dal peso del pensiero del vecchio mondo.';

  @override
  String get event_colonialCharter_choice2 =>
      'Una carta pragmatica incentrata sulla sopravvivenza e sulla crescita';

  @override
  String get event_colonialCharter_outcome2 =>
      'La Carta dà priorità alla gestione delle risorse, all’istruzione tecnica e allo sviluppo economico. Manca di poesia ma garantisce che la colonia sia efficiente e ben organizzata.';

  @override
  String get event_separatistMovement_title => 'Movimento separatista';

  @override
  String get event_separatistMovement_narrative =>
      'Una fazione di coloni ha dichiarato l\'indipendenza dal governo della nave. Si sono barricati nella sezione di poppa, rivendicando il diritto di stabilire un proprio insediamento al momento dello sbarco. Controllano il 15% delle riserve alimentari della nave e un sistema di navigazione di riserva.';

  @override
  String get event_separatistMovement_choice0 =>
      'Concedere l’autonomia regionale in un quadro federale';

  @override
  String get event_separatistMovement_outcome0 =>
      'I separatisti accettano un accordo: un proprio distretto con governance locale, sotto un ampio ombrello federale. Il precedente della frammentazione preoccupa alcuni, ma la pace viene mantenuta.';

  @override
  String get event_separatistMovement_choice1 =>
      'Assaltate le barricate e forzate la riunificazione';

  @override
  String get event_separatistMovement_outcome1 =>
      'Le squadre di sicurezza violano la sezione di poppa. I separatisti resistono ferocemente. L’ordine viene ripristinato, ma a un costo terribile. La nave è unita nel corpo, se non nello spirito.';

  @override
  String get event_separatistMovement_choice2 =>
      'Affrontare le lamentele profonde che guidano il movimento';

  @override
  String get event_separatistMovement_outcome2 =>
      'I mediatori lavorano per capire cosa ha allontanato la fazione. Le riforme nella distribuzione delle risorse e nella rappresentanza riportano lentamente i separatisti all’ovile. La guarigione richiede tempo.';

  @override
  String get event_warCouncil_title => 'Consiglio di guerra';

  @override
  String get event_warCouncil_narrative =>
      'Con potenziali minacce rilevate nei sistemi vicini, la leadership della nave convoca un consiglio di guerra. La domanda è: quante delle risorse limitate della colonia dovrebbero essere destinate alla preparazione militare rispetto alle infrastrutture civili?';

  @override
  String get event_warCouncil_choice0 =>
      'Armamento completo: forgia armi e addestra soldati';

  @override
  String get event_warCouncil_outcome0 =>
      'I laboratori vengono riorganizzati per la produzione di armi. Ogni colono abile riceve un addestramento al combattimento. La nave è piena di armi, ma il budget per le attrezzature agricole si riduce.';

  @override
  String get event_warCouncil_choice1 =>
      'Disarmo: fondere le armi in strumenti';

  @override
  String get event_warCouncil_outcome1 =>
      'L\'armeria viene svuotata e il suo contenuto riciclato in materiali da costruzione. La colonia sarà costruita con vomeri, non con spade. I pacifisti si rallegrano; i realisti si preoccupano di ciò che si nasconde nell\'oscurità.';

  @override
  String get event_warCouncil_choice2 =>
      'Solo postura difensiva: scudi e mura, non spade';

  @override
  String get event_warCouncil_outcome2 =>
      'Le risorse vanno a fortificazioni, scudi e sistemi di allarme rapido. Non vengono prodotte armi offensive. Un approccio equilibrato che mantiene aperte le opzioni senza provocare potenziali vicini.';

  @override
  String get event_tradeFederation_title => 'Federazione dei Mercanti';

  @override
  String get event_tradeFederation_narrative =>
      'Man mano che la colonia si avvicina alla vitalità, le fazioni discutono su come strutturare la sua economia. La questione va oltre la semplice sopravvivenza: definirà il tipo di società che mette radici su un suolo alieno. Mercanti, comunalisti e burocrati sostengono tutti la loro causa.';

  @override
  String get event_tradeFederation_choice0 =>
      'Stabilire zone di libero scambio con una regolamentazione minima';

  @override
  String get event_tradeFederation_outcome0 =>
      'I mercati spuntano in ogni modulo dell’habitat. L’innovazione fiorisce quando i trader competono. La disuguaglianza della ricchezza cresce, ma cresce anche il pool totale di risorse a disposizione della colonia.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implementare la condivisione comunitaria di tutte le risorse';

  @override
  String get event_tradeFederation_outcome1 =>
      'La proprietà privata è abolita. Tutto appartiene a tutti. Nessuno soffre la fame, ma nessuno è incentivato a produrre più del minimo. La mediocrità è confortevole.';

  @override
  String get event_tradeFederation_choice2 =>
      'Creare un sistema commerciale gestito dallo stato';

  @override
  String get event_tradeFederation_outcome2 =>
      'Il governo controlla tutto il commercio, fissando i prezzi e allocando le risorse. Il sistema è giusto ma inflessibile. I mercati neri emergono nei corridoi di manutenzione.';

  @override
  String get event_faithVsScience_title => 'Fede contro scienza';

  @override
  String get event_faithVsScience_narrative =>
      'Il telescopio della nave ha catturato le immagini di un fenomeno cosmico che contraddice direttamente il principio centrale del movimento di fede dominante. Lo scienziato capo vuole pubblicare i risultati; il leader religioso insiste che faranno a pezzi la comunità.';

  @override
  String get event_faithVsScience_choice0 =>
      'Pubblicare integralmente i risultati scientifici';

  @override
  String get event_faithVsScience_outcome0 =>
      'La verità prevale sulla comodità. I dati vengono diffusi e il movimento religioso si frattura. Alcuni credenti adattano la loro fede; altri lo perdono completamente. La conoscenza avanza.';

  @override
  String get event_faithVsScience_choice1 =>
      'Sopprimere i risultati per preservare l’armonia sociale';

  @override
  String get event_faithVsScience_outcome1 =>
      'I dati sono classificati. La comunità religiosa resta stabile, ma il team scientifico è demoralizzato. La verità differita non è verità negata, ma sembra che lo sia.';

  @override
  String get event_faithVsScience_choice2 =>
      'Convocare un comitato congiunto per trovare armonia tra entrambi i punti di vista';

  @override
  String get event_faithVsScience_outcome2 =>
      'Scienziati e teologi lavorano insieme per reinterpretare i risultati. Emerge una nuova sintesi che espande sia la comprensione che la fede. Non tutti sono convinti, ma il dialogo è sano.';

  @override
  String get event_surveillanceState_title => 'Stato di sorveglianza';

  @override
  String get event_surveillanceState_narrative =>
      'Dopo una serie di episodi di sabotaggio, il capo della sicurezza propone di installare sistemi di monitoraggio in ogni compartimento della nave. Telecamere, microfoni e scanner biometrici traccerebbero i movimenti di ogni colono. I difensori della privacy sono inorriditi.';

  @override
  String get event_surveillanceState_choice0 =>
      'Rifiutare completamente la proposta di sorveglianza';

  @override
  String get event_surveillanceState_outcome0 =>
      'La privacy è preservata. Il sabotatore resta in libertà, ma i coloni dormono più tranquilli sapendo di non essere sorvegliati. Le indagini continuano con mezzi tradizionali.';

  @override
  String get event_surveillanceState_choice1 =>
      'Implementare la sorveglianza completa su tutta la nave';

  @override
  String get event_surveillanceState_outcome1 =>
      'Ogni angolo della nave è monitorato. Il sabotatore viene catturato in pochi giorni. Ma le telecamere restano, e il capo della sicurezza non mostra alcun interesse a spegnerle. Mai.';

  @override
  String get event_surveillanceState_choice2 =>
      'Installare un monitoraggio limitato solo nelle aree critiche';

  @override
  String get event_surveillanceState_outcome2 =>
      'Le telecamere coprono la sala macchine, l\'armeria e il ponte. Gli alloggi rimangono privati. Il sabotatore viene infine identificato attraverso l\'analisi del modello. Una risposta misurata.';

  @override
  String get event_nativeAlliance_title => 'Alleanza nativa';

  @override
  String get event_nativeAlliance_narrative =>
      'La civiltà nativa ha proposto un trattato formale. Il loro ambasciatore arriva tramite navetta, un essere elegante che parla attraverso un traduttore di sorprendente raffinatezza. Offrono tre forme di relazione, ciascuna con implicazioni diverse per il futuro della colonia.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Firma un trattato di alleanza paritaria';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Il trattato stabilisce la difesa reciproca, la ricerca condivisa e la parità di diritti territoriali. Entrambe le civiltà cresceranno insieme. I nativi condividono conoscenze agricole che trasformano le prospettive della tua colonia.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Negoziare da una posizione di dominio coloniale';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Sfrutta la tua tecnologia avanzata per assicurarti condizioni vantaggiose. I nativi cedono territorio e risorse. Firmano con mani tremanti. La storia l’ha già visto in passato, e raramente finisce bene.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Stabilire una partnership commerciale incentrata sul vantaggio reciproco';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Il commercio colma il divario tra le specie. I materiali nativi fluiscono nei tuoi laboratori; la tua tecnologia migliora la loro medicina. L\'amicizia nasce dal profitto reciproco.';
}
