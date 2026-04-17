// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'INICIAR VIAJE';

  @override
  String get ui_title_dailyVoyage => 'VIAJE DIARIO';

  @override
  String get ui_title_dailyCompleted => 'DIARIO COMPLETADO';

  @override
  String get ui_title_customSeed => 'SEMILLA PERSONALIZADA';

  @override
  String get ui_title_legacyHub => 'CENTRO DE LEGADO';

  @override
  String get ui_title_cancel => 'CANCELAR';

  @override
  String get ui_title_startVoyage => 'INICIAR VIAJE';

  @override
  String get ui_title_seedInvalid =>
      'Código de semilla no válido. Utilice sólo A–Z y 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SEC $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEMILLA: $code';
  }

  @override
  String get ui_voyage_scanners => 'ESCÁNERES';

  @override
  String get ui_voyage_scanPlanet => 'ESCANEAR PLANETA';

  @override
  String get ui_voyage_noEnergy => 'SIN ENERGÍA';

  @override
  String get ui_voyage_pressOn => 'AVANZAR';

  @override
  String get ui_voyage_systemHull => 'Casco';

  @override
  String get ui_voyage_systemNav => 'Navegación';

  @override
  String get ui_voyage_systemCryopods => 'Criopods';

  @override
  String get ui_voyage_systemCulture => 'Cultura';

  @override
  String get ui_voyage_systemTech => 'Tecnología';

  @override
  String get ui_voyage_systemConstruct => 'Construcción';

  @override
  String get ui_voyage_systemShields => 'Escudos';

  @override
  String get ui_voyage_systemLanding => 'Aterrizaje';

  @override
  String get ui_voyage_scannerAtmo => 'Escaneo Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Escaneo Grav';

  @override
  String get ui_voyage_scannerMineral => 'Escaneo Mineral';

  @override
  String get ui_voyage_scannerLife => 'Escaneo Vida';

  @override
  String get ui_voyage_scannerTemp => 'Escaneo Temp';

  @override
  String get ui_voyage_scannerWater => 'Escaneo Agua';

  @override
  String get ui_voyage_narrative0 =>
      'Órbita terrestre despejada. Criopods estables. Anillo de archivo seguro.';

  @override
  String get ui_voyage_narrative1 =>
      'Tránsito por el sistema exterior nominal. Escáneres de largo alcance ampliando búsqueda.';

  @override
  String get ui_voyage_narrative2 =>
      'El tráfico del lado terrestre ha caído por debajo del umbral de detección.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Las coordenadas archivadas coinciden con un sistema marcado. Ajustando rumbo.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Los arreglos de escáneres aún se calibran para resolución en espacio profundo.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Sistema marcado adelante. Los datos del estudio previo siguen siendo consistentes.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Señal débil adelante. Iniciando barrido planetario.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Salida FTL completa. Nuevo sistema estelar a la vista.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Bancos de criopods estables. Escaneo del sector en progreso.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Nuevo planeta resolviéndose en el arreglo frontal.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Cartografía estelar señala un candidato viable.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Los instrumentos han encontrado otro mundo digno de medición.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Bloqueo de escáner adquirido en un nuevo objetivo.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Cartas de navegación actualizadas. Mundo candidato al alcance.';

  @override
  String get ui_scan_landHere => 'ATERRIZAR AQUÍ';

  @override
  String get ui_scan_pressOn => 'AVANZAR';

  @override
  String get ui_scan_allStatsVerified => 'TODOS LOS DATOS VERIFICADOS';

  @override
  String get ui_scan_launchProbe => 'LANZAR SONDA';

  @override
  String get ui_scan_habitability => 'HABITABILIDAD';

  @override
  String get ui_scan_statAtmos => 'CAJEROS AUTOMÁTICOS';

  @override
  String get ui_scan_statTemp => 'TEMPERATURA';

  @override
  String get ui_scan_statWater => 'AGUA';

  @override
  String get ui_scan_statResource => 'RECURSO';

  @override
  String get ui_scan_statGravity => 'GRAVEDAD';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALÍA';

  @override
  String get ui_scan_statRadiation => 'RADIACIÓN';

  @override
  String ui_scan_probesCount(int count) {
    return 'SONDAS: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'INCERTIDUMBRE: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'ANÁLISIS PLANETARIO';

  @override
  String get ui_landing_shipStatus => 'ESTADO DE LA NAVE';

  @override
  String ui_landing_fuel(int amount) {
    return 'COMBUSTIBLE: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'ADVERTENCIA: BAJO COMBUSTIBLE';

  @override
  String get ui_landing_landingRiskCritical => 'RIESGO DE ATERRIZAJE: CRÍTICO';

  @override
  String get ui_landing_landingRiskElevated => 'RIESGO DE ATERRIZAJE: ELEVADO';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Sistema de aterrizaje gravemente dañado. La entrada atmosférica podría destruir la carga y los colonos.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Sistema de aterrizaje degradado. Espere una entrada atmosférica turbulenta con posible daño a los sistemas.';

  @override
  String get ui_landing_riskAssessment => 'EVALUACIÓN DE RIESGO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Tu nave puede soportar ~$remaining encuentros más';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Tu nave podría no sobrevivir otro viaje';

  @override
  String get ui_landing_surfaceFeatures => 'CARACTERÍSTICAS DE SUPERFICIE';

  @override
  String get ui_landing_nameYourColony => 'NOMBRA TU COLONIA';

  @override
  String get ui_landing_establishColony => 'ESTABLECER COLONIA';

  @override
  String get ui_landing_pressOnward => 'SEGUIR ADELANTE';

  @override
  String get ui_landing_statAtmosphere => 'Atmósfera';

  @override
  String get ui_landing_statTemperature => 'Temperatura';

  @override
  String get ui_landing_statWater => 'Agua';

  @override
  String get ui_landing_statResources => 'Recursos';

  @override
  String get ui_landing_statGravity => 'Gravedad';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversidad';

  @override
  String get ui_landing_statAvgHealth => 'Salud Prom';

  @override
  String get ui_landing_statHull => 'Casco';

  @override
  String get ui_landing_statNavigation => 'Navegación';

  @override
  String get ui_landing_statCryopods => 'Criopods';

  @override
  String get ui_landing_statCulture => 'Cultura';

  @override
  String get ui_landing_statTech => 'Tecnología';

  @override
  String get ui_landing_statConstructors => 'Constructores';

  @override
  String get ui_landing_statShields => 'Escudos';

  @override
  String get ui_landing_statLandingSys => 'Sist. Aterr.';

  @override
  String get ui_ending_colonyEstablished => 'COLONIA ESTABLECIDA';

  @override
  String get ui_ending_colonyScore => 'PUNTUACIÓN DE COLONIA';

  @override
  String get ui_ending_colonyProfile => 'PERFIL DE COLONIA';

  @override
  String get ui_ending_landscape => 'PAISAJE';

  @override
  String get ui_ending_voyageRecord => 'REGISTRO DEL VIAJE';

  @override
  String get ui_ending_scoreBreakdown => 'DESGLOSE DE PUNTUACIÓN';

  @override
  String get ui_ending_total => 'TOTAL';

  @override
  String get ui_ending_achievementsUnlocked => 'LOGROS DESBLOQUEADOS';

  @override
  String get ui_ending_challengeFriend => 'RETAR A UN AMIGO';

  @override
  String get ui_ending_shareCard => 'COMPARTIR TARJETA';

  @override
  String get ui_ending_shareCardDialogTitle => 'Comparte tu viaje';

  @override
  String get ui_ending_shareCardShare => 'COMPARTIR';

  @override
  String get ui_ending_shareCardCancel => 'CANCELAR';

  @override
  String get ui_ending_copySeed => 'COPIAR SEMILLA';

  @override
  String get ui_ending_viewLegacy => 'VER LEGADO';

  @override
  String get ui_ending_newVoyage => 'NUEVO VIAJE';

  @override
  String get ui_ending_achievementFirstLanding => 'Primer Aterrizaje';

  @override
  String get ui_ending_achievementGoldenAge => 'Edad de Oro';

  @override
  String get ui_ending_achievementSurvivor => 'Superviviente';

  @override
  String get ui_ending_achievementExplorer => 'Explorador';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfeccionista';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Superviviente de Mundo Letal';

  @override
  String get ui_ending_achievementFullCrew => 'Tripulación Completa';

  @override
  String get ui_ending_achievementProbeMaster => 'Maestro de Sondas';

  @override
  String get ui_ending_achievementIronHull => 'Casco de Hierro';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Salto de Fe';

  @override
  String get ui_gameOver_missionFailed => 'MISIÓN FALLIDA';

  @override
  String get ui_gameOver_voyageRecord => 'REGISTRO DEL VIAJE';

  @override
  String get ui_gameOver_encountersSurvived => 'ENCUENTROS SOBREVIVIDOS';

  @override
  String get ui_gameOver_probesRemaining => 'SONDAS RESTANTES';

  @override
  String get ui_gameOver_colonistsRemaining => 'COLONOS RESTANTES';

  @override
  String get ui_gameOver_finalShipHealth => 'SALUD FINAL DE LA NAVE';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANETAS OMITIDOS';

  @override
  String get ui_gameOver_damageTaken => 'DAÑO RECIBIDO';

  @override
  String get ui_gameOver_fuelRemaining => 'COMBUSTIBLE RESTANTE';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGÍA RESTANTE';

  @override
  String get ui_gameOver_challengeFriend => 'RETAR A UN AMIGO';

  @override
  String get ui_gameOver_viewLegacy => 'VER LEGADO';

  @override
  String get ui_gameOver_newVoyage => 'NUEVO VIAJE';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nNo sobreviví... $reason.\n¿Crees que puedes hacerlo mejor en el mismo viaje?\nstellarbroadcast://play?seed=$seedCode\n\n¿No tienes la app?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'El último colono murió en criosueño — un fallo en cascada que ningún protocolo de emergencia pudo prevenir. El Éxodo siguió navegando, una nave fantasma que portaba solo sistemas automatizados y silencio congelado. Su misión había fracasado no en un momento de catástrofe, sino en el lento desgaste de vidas humanas, una por una, hasta que no quedó ninguna.';

  @override
  String get ui_gameOver_epilogueHull =>
      'El casco cedió en silencio — fatiga metálica agravada por incontables microimpactos hasta que la nave ya no pudo mantenerse unida. La atmósfera se escapó al vacío. La nave colonial Éxodo se desintegró, sus restos uniéndose a los antiguos campos de escombros entre las estrellas. Ninguna señal de socorro fue jamás recibida.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Sin navegación, el Éxodo se adentró en el espacio inexplorado — cartas estelares inútiles, correcciones de rumbo imposibles. La nave navegó por la oscuridad, sus pasajeros dormidos sin saber que su destino había sido reemplazado por la eternidad. Algunos dicen que la nave aún deriva, un buque fantasma en la noche infinita.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Uno por uno, los criopods fallaron — una cascada que ningún protocolo de emergencia pudo detener. Los colonos nunca despertaron. El Éxodo continuó su curso programado, una nave tumba que llevaba solo silencio hacia cualquier mundo al que eventualmente llegaría. Un monumento a un sueño que murió en sueño congelado.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'El Éxodo enmudeció. Su misión, su tripulación, su carga de esperanza humana — todo perdido ante la indiferente vastedad entre las estrellas. Quizás algún día otra civilización encuentre los restos y se pregunte qué valiente especie osó cruzar el vacío.';

  @override
  String get ui_settings_title => 'AJUSTES';

  @override
  String get ui_settings_music => 'MÚSICA';

  @override
  String get ui_settings_soundEffects => 'EFECTOS DE SONIDO';

  @override
  String get ui_settings_haptics => 'VIBRACIÓN';

  @override
  String get ui_settings_premium => 'DE PRIMERA CALIDAD';

  @override
  String get ui_settings_goPremium => 'Hazte Premium';

  @override
  String get ui_settings_enabled => 'Activado';

  @override
  String get ui_settings_volume => 'Volumen';

  @override
  String get ui_settings_language => 'Idioma';

  @override
  String get ui_settings_systemDefault => 'Predeterminado del sistema';

  @override
  String get ui_settings_statsPosition => 'Posición de estadísticas y botones';

  @override
  String get ui_settings_statsLeft => 'IZQUIERDA';

  @override
  String get ui_settings_statsRight => 'BIEN';

  @override
  String get ui_legacy_title => 'CENTRO DE LEGADO';

  @override
  String get ui_legacy_commanderStats => 'ESTADÍSTICAS DEL COMANDANTE';

  @override
  String get ui_legacy_highScores => 'MEJORES PUNTUACIONES';

  @override
  String get ui_legacy_upgrades => 'MEJORAS';

  @override
  String get ui_legacy_achievements => 'LOGROS';

  @override
  String get ui_legacy_voyageLog => 'BITÁCORA DEL VIAJE';

  @override
  String get ui_legacy_voyages => 'VIAJES';

  @override
  String get ui_legacy_bestScore => 'MEJOR PUNTUACIÓN';

  @override
  String get ui_legacy_legacyPts => 'PUNTOS LEGADO';

  @override
  String get ui_legacy_completed => 'COMPLETADO';

  @override
  String get ui_legacy_notYetPlayed => 'AÚN NO JUGADO';

  @override
  String get ui_legacy_dailyHistory => 'HISTORIAL DIARIO';

  @override
  String get ui_premium_goPremium => 'HAZTE PREMIUM';

  @override
  String get ui_premium_subtitle => 'Apoya la misión. Mejora tu mando.';

  @override
  String get ui_premium_removeAds => 'Elimina todos los anuncios para siempre';

  @override
  String get ui_premium_supportIndie => 'Apoya el desarrollo independiente';

  @override
  String get ui_premium_exclusiveTitle => 'Título de comandante exclusivo';

  @override
  String get ui_premium_priorityFeatures =>
      'Solicitudes de funciones prioritarias';

  @override
  String get ui_premium_lifetime => 'De por vida';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'MEJORA DE ESCÁNER';

  @override
  String get ui_scannerUpgrade_subtitle => 'Elige un escáner para mejorar';

  @override
  String get ui_scannerUpgrade_skip => 'OMITIR';

  @override
  String get ui_scannerUpgrade_max => 'MÁX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosférico';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimétrico';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Signos Vitales';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperatura';

  @override
  String get ui_scannerUpgrade_water => 'Agua';

  @override
  String get ui_event_continue => 'CONTINUAR';

  @override
  String get ui_event_tapToSkip => 'TOCA PARA OMITIR';

  @override
  String get ui_event_colonists => 'COLONOS';

  @override
  String get ui_event_landing => 'ATERRIZAJE';

  @override
  String get ui_event_atmScan => 'ESC ATMO';

  @override
  String get ui_event_gravScan => 'ESC GRAV';

  @override
  String get ui_event_minScan => 'ESC MIN';

  @override
  String get ui_event_lifeScan => 'ESC VIDA';

  @override
  String get ui_event_tempScan => 'ESC TEMP';

  @override
  String get ui_event_h2oScan => 'ESC H2O';

  @override
  String get onboarding_page0_title => 'La Última Esperanza de la Humanidad';

  @override
  String get onboarding_page0_description =>
      'La Tierra se muere. Los gobiernos del mundo han reunido sus últimas reservas para construir una última nave — un barco colonial que lleva los restos de la humanidad hacia las estrellas.';

  @override
  String get onboarding_page1_title => 'Busca un Nuevo Hogar';

  @override
  String get onboarding_page1_description =>
      'Navega el vacío inexplorado entre las estrellas. Escanea mundos alienígenas, enfrenta peligros cósmicos y toma decisiones imposibles.';

  @override
  String get onboarding_page2_title => 'Tu Legado Perdura';

  @override
  String get onboarding_page2_description =>
      'Cada viaje le enseña algo nuevo a la humanidad. Gana Puntos de Legado para desbloquear mejoras permanentes y graba tu nombre en las estrellas.';

  @override
  String get onboarding_page3_title => 'Tu Privacidad, Tu Elección';

  @override
  String get onboarding_page3_description =>
      'Elige cómo deseas experimentar Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopía';

  @override
  String get planet_tierParadise => 'Paraíso';

  @override
  String get planet_tierHabitable => 'Habitable';

  @override
  String get planet_tierHarsh => 'Hostil';

  @override
  String get planet_tierHostile => 'Agresivo';

  @override
  String get planet_tierDeathWorld => 'Mundo Letal';

  @override
  String get planet_featurePlantLife => 'Vida Vegetal';

  @override
  String get planet_featureEdiblePlants => 'Plantas Comestibles';

  @override
  String get planet_featurePoisonousPlants => 'Plantas Venenosas';

  @override
  String get planet_featureUnicellularLife => 'Vida Unicelular';

  @override
  String get planet_featureDangerousFauna => 'Fauna Peligrosa';

  @override
  String get planet_featureTameableFauna => 'Fauna Domesticable';

  @override
  String get planet_featureAirtightCaves => 'Cuevas Herméticas';

  @override
  String get planet_featureInsulatedCaves => 'Cuevas Aisladas';

  @override
  String get planet_featureBarrenMoon => 'Luna Estéril';

  @override
  String get planet_featureMetalRichMoon => 'Luna Rica en Metales';

  @override
  String get planet_featureUnstableMoon => 'Luna Inestable';

  @override
  String get planet_featureOutstandingBeauty => 'Belleza Excepcional';

  @override
  String get planet_featureOutstandingUgliness => 'Fealdad Excepcional';

  @override
  String get planet_featureAncientRuins => 'Ruinas Antiguas';

  @override
  String get planet_featureMonuments => 'Monumentos';

  @override
  String get planet_featureRapidRotation => 'Rotación Rápida';

  @override
  String get planet_featureSlowRotation => 'Rotación Lenta';

  @override
  String get planet_featureVolcanicActivity => 'Actividad Volcánica';

  @override
  String get planet_featureTectonicInstability => 'Inestabilidad Tectónica';

  @override
  String get planet_featureElectricalStorms => 'Tormentas Eléctricas';

  @override
  String get planet_featureToxicSpores => 'Esporas Tóxicas';

  @override
  String get planet_featureDeepOceans => 'Océanos Profundos';

  @override
  String get planet_featureGeothermalVents => 'Fuentes Geotermales';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnetosfera Fuerte';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnetosfera Débil';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organismos Simbióticos';

  @override
  String get planet_featureGravityWells => 'Pozos Gravitacionales';

  @override
  String get planet_featureSubspaceEchoes => 'Ecos Subespaciales';

  @override
  String get planet_featureBioluminescentLife => 'Vida Bioluminiscente';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna Acuática';

  @override
  String get planet_featureFloatingIslands => 'Islas Flotantes';

  @override
  String get planet_featureCrystalCaverns => 'Cavernas de Cristal';

  @override
  String get planet_featureLavaTubes => 'Tubos de Lava';

  @override
  String get planet_featureIceTunnels => 'Túneles de Hielo';

  @override
  String get planet_featureOrbitalWreckage => 'Restos Orbitales';

  @override
  String get planet_featureMegastructuralFragments =>
      'Fragmentos Megaestructurales';

  @override
  String get planet_featureAncientObservatory => 'Observatorio Antiguo';

  @override
  String get planet_featureExtremeSeasons => 'Estaciones Extremas';

  @override
  String get planet_featureCryovolcanism => 'Criovolcanismo';

  @override
  String get planet_featureFloatingKelpForests => 'Bosques de Algas Flotantes';

  @override
  String get planet_featureSingingCrystals => 'Cristales Cantantes';

  @override
  String get planet_featureFertileSoil => 'Suelo Fértil';

  @override
  String get planet_featureHelium3Deposits => 'Depósitos de Helio-3';

  @override
  String get planet_featureExoticIsotopes => 'Isótopos Exóticos';

  @override
  String get planet_featureMedicinalFlora => 'Flora Medicinal';

  @override
  String get planet_featurePerpetualAurora => 'Aurora perpetua';

  @override
  String get planet_featurePetrifiedMegaflora => 'Megaflora petrificada';

  @override
  String get planet_featureUndergroundRivers => 'Ríos subterráneos';

  @override
  String get planet_featureObsidianPlains => 'Llanuras de obsidiana';

  @override
  String get planet_featureSaltFlats => 'Salinas';

  @override
  String get planet_featureCarnivorousFlora => 'Flora carnívora';

  @override
  String get planet_featureGhostCities => 'Ciudades fantasma';

  @override
  String get planet_featureArchiveVaults => 'Bóvedas de archivo';

  @override
  String get planet_featureSinkholeFields => 'Campos de sumideros';

  @override
  String get planet_featureApexPredator => 'Depredador ápice';

  @override
  String get ui_monthJan => 'ENE';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'ABR';

  @override
  String get ui_monthMay => 'PUEDE';

  @override
  String get ui_monthJun => 'JUN';

  @override
  String get ui_monthJul => 'JUL';

  @override
  String get ui_monthAug => 'AGO';

  @override
  String get ui_monthSep => 'SEP';

  @override
  String get ui_monthOct => 'OCT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DIC';

  @override
  String get event_asteroidField_title => 'Campo de Asteroides';

  @override
  String get event_asteroidField_narrative =>
      'Los escáneres de largo alcance detectan un denso campo de asteroides directamente en nuestra ruta de vuelo. Navegación calcula dos opciones: una arriesgada travesía por el corredor más estrecho, o un largo desvío que agotará nuestras reservas de combustible y estresará el conjunto de navegación.';

  @override
  String get event_asteroidField_choice0_text => 'Atravesar el corredor';

  @override
  String get event_asteroidField_choice0_outcome =>
      'La nave se estremece mientras microimpactos acribillan el casco. Lo logramos, pero no sin daños.';

  @override
  String get event_asteroidField_choice1_text => 'Tomar el camino largo';

  @override
  String get event_asteroidField_choice1_outcome =>
      'El desvío quema combustible precioso y desgasta la computadora de navegación, pero el casco permanece intacto.';

  @override
  String get event_asteroidField_choice2_text =>
      'Usar drones mineros para despejar un camino';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Los drones tallan un canal seguro y recolectan minerales útiles, pero la operación agota la bahía técnica.';

  @override
  String get event_asteroidField_choice3_text =>
      'Desplegar una sonda como señuelo';

  @override
  String get event_asteroidField_choice3_outcome =>
      'La sonda atrae los cúmulos más densos lejos de la nave. Pasamos con solo rasguños menores.';

  @override
  String get event_solarFlare_title => 'Llamarada Solar Entrante';

  @override
  String get event_solarFlare_narrative =>
      'Una estrella cercana erupciona con una eyección coronal masiva. La ola de partículas cargadas nos alcanzará en minutos. Podemos desviar energía a los escudos, refugiar a los colonos en el núcleo, o resistir.';

  @override
  String get event_solarFlare_choice0_text =>
      'Desviar toda la energía a escudos';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Los escudos aguantan, pero la sobrecarga fríe los sistemas secundarios.';

  @override
  String get event_solarFlare_choice1_text =>
      'Mover colonos al núcleo blindado';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Los colonos sobreviven ilesos, pero las cubiertas exteriores sufren daño por radiación.';

  @override
  String get event_solarFlare_choice2_text => 'Resistir — todos prepárense';

  @override
  String get event_solarFlare_choice2_outcome =>
      'La llamarada golpea fuerte. Los sistemas parpadean, pero nada catastrófico. La moral, sin embargo, se resiente.';

  @override
  String get event_solarFlare_choice3_text =>
      'Lanzar una sonda para medir el frente de onda';

  @override
  String get event_solarFlare_choice3_outcome =>
      'La sonda transmite datos precisos del frente de onda, permitiéndonos inclinar la nave de forma óptima. El daño al escáner es mínimo.';

  @override
  String get event_nebulaPassage_title => 'Paso por Nebulosa';

  @override
  String get event_nebulaPassage_narrative =>
      'Una nebulosa brillante se extiende por nuestro camino. Atravesarla podría recargar nuestras celdas de energía pero puede interferir con los arreglos de escáneres. Rodearla es seguro pero lento.';

  @override
  String get event_nebulaPassage_choice0_text =>
      'Volar a través de la nebulosa';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Los gases ionizados de la nebulosa recargan las celdas de energía pero descalibran nuestros escáneres.';

  @override
  String get event_nebulaPassage_choice1_text => 'Bordear el límite';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Obtenemos una carga parcial con mínima interferencia. Un compromiso seguro.';

  @override
  String get event_microMeteorite_title => 'Tormenta de Micrometeoritos';

  @override
  String get event_microMeteorite_narrative =>
      'Un enjambre de micrometeoritos, invisibles hasta hace segundos, está destrozando el blindaje frontal del casco. Los equipos de control de daños se movilizan.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Rotación de emergencia — presentar la popa blindada';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'La maniobra funciona. La armadura de popa absorbe lo peor, pero los giroscopios de navegación protestan violentamente.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Desplegar drones de reparación durante la tormenta';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Los drones parchean el casco en tiempo real pero varios se pierden. Las reservas técnicas se agotan.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Detonar una sonda para dispersar el enjambre';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'La explosión de la sonda dispersa el cúmulo de micrometeoritos. Solo unos pocos fragmentos alcanzan el casco.';

  @override
  String get event_gravityWell_title => 'Pozo Gravitacional Inexplorado';

  @override
  String get event_gravityWell_narrative =>
      'La nave se sacude cuando un pozo gravitacional invisible nos arrastra fuera de curso. Los motores luchan contra la atracción. Podemos quemar a máxima potencia para escapar, o usar una maniobra de honda gravitacional para ganar velocidad a costa de estrés estructural.';

  @override
  String get event_gravityWell_choice0_text => 'Quemado completo — liberarse';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Los motores rugen y el casco cruje, pero nos liberamos limpiamente.';

  @override
  String get event_gravityWell_choice1_text =>
      'Maniobra de honda gravitacional';

  @override
  String get event_gravityWell_choice1_outcome =>
      'La honda funciona perfectamente. Ganamos velocidad, pero las fuerzas G estresan los sellos de los criopods.';

  @override
  String get event_crewUnrest_title => 'Inquietud de la Tripulación';

  @override
  String get event_crewUnrest_narrative =>
      'Una facción de colonos despiertos solicita al Consejo de Administradores ser liberados del criosueño permanentemente. Argumentan que vivir en un crepúsculo congelado es inhumano. El personal de Criovigilancia advierte que despertar más bocas significa consumir suministros más rápido.';

  @override
  String get event_crewUnrest_choice0_text =>
      'Permitir descongelación voluntaria';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'La moral se dispara mientras las familias se reúnen en el mundo despierto, pero el consumo de recursos se dispara.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Denegar la solicitud — la seguridad primero';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Los colonos obedecen, pero el resentimiento crece en los pasillos.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromiso — ciclos de descongelación rotativos';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Una solución equilibrada. Todos tienen algo de tiempo despiertos, pero el ciclado de criopods añade desgaste.';

  @override
  String get event_stowaway_title => 'Polizón Descubierto';

  @override
  String get event_stowaway_narrative =>
      'Los auditores de la Oficina de Manifiestos encuentran una persona no registrada escondida en la bodega de carga 7. Afirma ser una genetista a quien se le negó un lugar en el roster de lanzamiento. Sus habilidades podrían ser invaluables — o podría ser una saboteadora.';

  @override
  String get event_stowaway_choice0_text =>
      'Darle la bienvenida — necesitamos cada mente';

  @override
  String get event_stowaway_choice0_outcome =>
      'La Dra. Vásquez demuestra ser brillante. Su experiencia genética mejora la eficiencia de los criopods, aunque algunos tripulantes desconfían de ella.';

  @override
  String get event_stowaway_choice1_text =>
      'Confinarla — la confianza hay que ganársela';

  @override
  String get event_stowaway_choice1_outcome =>
      'Coopera desde el confinamiento y eventualmente gana acceso limitado. La tripulación se siente más segura.';

  @override
  String get event_stowaway_choice2_text =>
      'Ponerla en criosueño hasta el aterrizaje';

  @override
  String get event_stowaway_choice2_outcome =>
      'Una solución pragmática. Sus habilidades se preservan para después, pero el debate ético divide a la tripulación.';

  @override
  String get event_mutinyBrewing_title => 'Motín en Gestación';

  @override
  String get event_mutinyBrewing_narrative =>
      'La Guardia del Puente intercepta mensajes de un grupo de oficiales que planean tomar el mando y cambiar el rumbo hacia un sistema más cercano y menos habitable. Creen que el rumbo actual es una sentencia de muerte.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Confrontarlos públicamente — transparencia ante todo';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'La confrontación es tensa pero los amotinados se retiran cuando se les muestran los datos de navegación. La confianza se resquebraja.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Reasignar discretamente a los cabecillas';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'La conspiración se disuelve sin drama público. Algunos tripulantes se preguntan por qué fueron trasladados oficiales populares, pero el orden se mantiene.';

  @override
  String get event_culturalSchism_title => 'Cisma Cultural';

  @override
  String get event_culturalSchism_narrative =>
      'Dos grupos culturales a bordo discrepan violentamente sobre cómo debe gobernarse la nueva colonia. Uno exige democracia directa; el otro insiste en un consejo tecnocrático. Las tensiones están al límite.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Realizar un referéndum vinculante';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'La democracia prevalece — por poco. El bando perdedor acepta a regañadientes el resultado, pero la unidad es frágil.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Imponer un sistema híbrido — no satisfacer a ninguno completamente';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Ambos bandos se sienten escuchados pero no victoriosos. Una paz precaria se mantiene.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Aplazar la decisión — centrarse en la supervivencia ahora';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Patear el problema hacia adelante evita el conflicto hoy pero lo almacena para mañana.';

  @override
  String get event_birthInSpace_title =>
      'Primer Nacimiento en el Espacio Profundo';

  @override
  String get event_birthInSpace_narrative =>
      'Contra todos los protocolos, un niño nace a bordo de la nave — el primer humano nacido entre las estrellas. El evento es un poderoso símbolo, pero plantea preguntas sobre la asignación de recursos y la ética de traer nueva vida a un futuro incierto.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Celebrar — esto es lo que la esperanza parece';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'La ceremonia de nombramiento levanta cada corazón en la nave. Por una noche, las estrellas se sienten menos frías. Las festividades interrumpen brevemente las rotaciones de monitoreo de criopods.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Reconocer en silencio — los recursos son escasos';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Una respuesta mesurada. El niño es bienvenido, pero el ambiente está templado por el pragmatismo.';

  @override
  String get event_derelictShip_title => 'Nave Colonial Abandonada';

  @override
  String get event_derelictShip_narrative =>
      'Los escáneres detectan una nave abandonada a la deriva en el vacío — otra nave colonial, lanzada años antes que la nuestra. Está oscura y silenciosa. Puede haber salvamento, supervivientes, o algo peor.';

  @override
  String get event_derelictShip_choice0_text => 'Abordar y salvar lo posible';

  @override
  String get event_derelictShip_choice0_outcome =>
      'El equipo de abordaje recupera blindaje de casco y módulos tecnológicos intactos. Sin supervivientes. Los registros cuentan una historia sombría.';

  @override
  String get event_derelictShip_choice1_text =>
      'Escanear a distancia — no arriesgar';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Los escaneos remotos revelan datos de navegación útiles pero sin salvamento físico. La tripulación duerme más tranquila.';

  @override
  String get event_derelictShip_choice2_text =>
      'Transmitir un memorial y seguir adelante';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Un momento de silencio por los perdidos. La tripulación está sobrecogida pero unida en su propósito.';

  @override
  String get event_alienProbe_title => 'Sonda Alienígena';

  @override
  String get event_alienProbe_narrative =>
      'Un pequeño objeto, claramente artificial, iguala nuestra velocidad y comienza a escanear la nave con energía desconocida. No responde a las comunicaciones. Su superficie está cubierta de símbolos que cambian como líquido.';

  @override
  String get event_alienProbe_choice0_text => 'Capturarla para estudio';

  @override
  String get event_alienProbe_choice0_outcome =>
      'La sonda es asegurada en el laboratorio. Su tecnología está décadas por delante de la nuestra — el equipo técnico está eufórico.';

  @override
  String get event_alienProbe_choice1_text =>
      'Reflejar sus escaneos — intercambiar datos';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Un extraño diálogo de luz y matemáticas. Nuestras cartas estelares de repente contienen rutas que nunca programamos.';

  @override
  String get event_alienProbe_choice2_text =>
      'Destruirla — no podemos arriesgarnos a un rastreo alienígena';

  @override
  String get event_alienProbe_choice2_outcome =>
      'La sonda se hace añicos en silencio. ¿Fue eso el primer contacto? La tripulación nunca lo sabrá.';

  @override
  String get event_ancientBeacon_title => 'Baliza Antigua';

  @override
  String get event_ancientBeacon_narrative =>
      'En lo profundo del vacío, una baliza pulsa con una señal más antigua que la civilización humana. Su frecuencia porta lo que parece ser un mapa estelar que apunta a un sistema que no está en nuestra base de datos.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Seguir el mapa — la fortuna favorece a los audaces';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'El nuevo rumbo nos lleva hacia espacio inexplorado. Los escáneres detectan algo extraordinario adelante.';

  @override
  String get event_ancientBeacon_choice1_text =>
      'Registrarlo y mantener el rumbo';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Los datos son archivados para generaciones futuras. La tripulación respeta el enfoque cauteloso.';

  @override
  String get event_frozenGarden_title => 'Jardín Congelado';

  @override
  String get event_frozenGarden_narrative =>
      'Un asteroide contiene un ecosistema congelado — plantas alienígenas preservadas en hielo cristalino durante milenios. Podrían enriquecer cualquier mundo que colonicemos, pero descongelarlas arriesga contaminación.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Recolectar los especímenes con cuidado';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Los botánicos preservan docenas de especies alienígenas. El potencial de biodiversidad de nuestro mundo objetivo se dispara.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Tomar solo muestras — riesgo mínimo';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Un enfoque conservador que produce datos útiles sin riesgo de contaminación.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Dejarlo — la biología alienígena es demasiado peligrosa';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'La tripulación observa el jardín congelado encogerse en los sensores traseros. Algunos sienten que dejaron un tesoro atrás.';

  @override
  String get event_dataCache_title => 'Caché de Datos Precursora';

  @override
  String get event_dataCache_narrative =>
      'Incrustada en un planetoide errante, encontramos una caché de datos de origen claramente artificial. La información es vasta pero encriptada en un marco matemático alienígena.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedicar recursos computacionales al descifrado';

  @override
  String get event_dataCache_choice0_outcome =>
      'Tras días de procesamiento, la caché revela algoritmos avanzados de terraformación. El equipo técnico está maravillado.';

  @override
  String get event_dataCache_choice1_text =>
      'Copiar los datos en bruto y seguir adelante';

  @override
  String get event_dataCache_choice1_outcome =>
      'Los datos encriptados se almacenan para análisis futuro. Quizás la colonia los descifre algún día.';

  @override
  String get event_hullBreach_title => 'Brecha en el Casco — Cubierta 7';

  @override
  String get event_hullBreach_narrative =>
      'Un fallo estructural abre la Cubierta 7. La atmósfera se escapa al espacio. Los mamparos de emergencia aguantan, pero tres tripulantes están atrapados en el lado equivocado.';

  @override
  String get event_hullBreach_choice0_text =>
      'Enviar equipo de rescate antes de sellar';

  @override
  String get event_hullBreach_choice0_outcome =>
      'El equipo saca a todos justo a tiempo. El rescate es heroico, pero la brecha prolongada debilita aún más el casco.';

  @override
  String get event_hullBreach_choice1_text =>
      'Sellar los mamparos inmediatamente';

  @override
  String get event_hullBreach_choice1_outcome =>
      'La brecha es contenida. Los tres tripulantes encuentran una ruta alternativa, sacudidos pero vivos. El daño al casco se minimiza.';

  @override
  String get event_hullBreach_choice2_text =>
      'Usar los materiales de una sonda para parchar la brecha';

  @override
  String get event_hullBreach_choice2_outcome =>
      'El casco de titanio de la sonda se reutiliza como parche de emergencia. La brecha se sella rápidamente con pérdidas mínimas.';

  @override
  String get event_navMalfunction_title => 'Mal Funcionamiento de Navegación';

  @override
  String get event_navMalfunction_narrative =>
      'La computadora de navegación principal está emitiendo rumbos contradictorios. Estamos desviándonos del curso. El sistema de respaldo funciona pero es menos preciso.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Reiniciar el principal — aceptar el tiempo de inactividad';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Una hora tensa de navegación a estima mientras el sistema se reinicia. La navegación se restaura al 90% de eficiencia.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Cambiar al respaldo permanentemente';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'El sistema de respaldo es confiable pero impreciso. Encontraremos nuestro camino, solo que no con tanta elegancia.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Cálculo estelar manual usando las cartas antiguas';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'El navegante traza a mano usando paralaje estelar. Funciona, y la tripulación gana confianza en los métodos analógicos.';

  @override
  String get event_cryopodFailure_title => 'Fallo en Cascada de Criopods';

  @override
  String get event_cryopodFailure_narrative =>
      'Un fallo en el sistema de refrigeración desencadena una cascada en la bahía de criopods 3. Si no se controla, 200 colonos comenzarán una descongelación de emergencia — un proceso supervivible pero traumático y que consume muchos recursos.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Descarga de refrigerante de emergencia — salvar los pods';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Los técnicos inundan la bahía con refrigerante de reserva. Los pods se estabilizan, pero las reservas de refrigerante están críticamente bajas. Cinco colonos en los pods más dañados no pudieron ser salvados.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Descongelación controlada — despertarlos de forma segura';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 colonos emergen sacudidos pero vivos. Nuevas bocas que alimentar, pero nuevas manos para trabajar. Los pods vacíos son sellados.';

  @override
  String get event_scannerBurnout_title => 'Quemado del Arreglo de Escáneres';

  @override
  String get event_scannerBurnout_narrative =>
      'El arreglo principal de escáneres se sobrecarga durante un barrido rutinario de espacio profundo. Sin él, volamos medio ciegos. Las reparaciones requieren componentes raros.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Canibalizar la bahía técnica por piezas';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Los escáneres se restauran a casi plena capacidad, pero la bahía técnica queda desmantelada.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Improvisar una reparación parcial';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Los escáneres operan con alcance reducido. No es ideal, pero preserva nuestras reservas técnicas.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Reutilizar el arreglo sensor de una sonda';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Los sensores de alta precisión de la sonda se trasplantan al arreglo de escáneres. Una reparación casi perfecta.';

  @override
  String get event_powerFluctuation_title =>
      'Fluctuación de Energía del Reactor';

  @override
  String get event_powerFluctuation_narrative =>
      'La salida del reactor principal oscila violentamente. Ingeniería advierte de una posible fusión si las fluctuaciones no se amortiguan. La solución requiere apagar sistemas no esenciales — pero ¿cuáles?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Apagar sistemas culturales — la supervivencia primero';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Bibliotecas, jardines y áreas recreativas se oscurecen. El reactor se estabiliza, pero la nave parece una prisión.';

  @override
  String get event_powerFluctuation_choice1_text =>
      'Reducir energía de escáneres';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Los escáneres bajan al mínimo. El reactor se calma. No podemos ver tan lejos, pero estamos vivos.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Arriesgar una reparación en caliente — no apagar nada';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Los ingenieros realizan una reparación de infarto con el reactor activo. Funciona — apenas. El casco vibra durante horas después.';

  @override
  String get event_alienSignal_title => 'Transmisión Alienígena';

  @override
  String get event_alienSignal_narrative =>
      'Una señal repetitiva en una frecuencia que nunca hemos encontrado. El análisis lingüístico sugiere que es un saludo — o una advertencia. La fuente es una pequeña nave que iguala nuestra velocidad a distancia.';

  @override
  String get event_alienSignal_choice0_text =>
      'Responder con nuestro propio saludo';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Un diálogo frágil comienza. Los alienígenas comparten datos de navegación antes de desviarse hacia la oscuridad.';

  @override
  String get event_alienSignal_choice1_text => 'Escuchar pero no responder';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Aprendemos de su transmisión sin revelarnos. Los lingüistas extraen fragmentos útiles de cartas estelares.';

  @override
  String get event_alienSignal_choice2_text =>
      'Apagarse — desactivar todas las emisiones';

  @override
  String get event_alienSignal_choice2_outcome =>
      'La nave alienígena pasa sin incidentes. Nunca sabremos si eran amigos o enemigos.';

  @override
  String get event_livingNebula_title => 'La Nebulosa Viviente';

  @override
  String get event_livingNebula_narrative =>
      'Lo que asumíamos era una nebulosa es en realidad un organismo vasto — una entidad que habita el espacio de escala incomprensible. Parece curiosa sobre nosotros, extendiendo tentáculos de gas luminoso hacia la nave.';

  @override
  String get event_livingNebula_choice0_text =>
      'Permitir contacto — extender sensores';

  @override
  String get event_livingNebula_choice0_outcome =>
      'El toque de la entidad inunda nuestros sistemas con datos alienígenas. Los escáneres nunca serán los mismos — son mejores.';

  @override
  String get event_livingNebula_choice1_text =>
      'Retirarse lentamente — no provocarla';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Nos escabullimos mientras la entidad pierde interés. La tripulación está asombrada y humilde.';

  @override
  String get event_alienRuins_title => 'Ruinas Orbitales';

  @override
  String get event_alienRuins_narrative =>
      'Una megaestructura destrozada orbita una estrella muerta — las ruinas de una civilización que construyó a una escala que apenas podemos comprender. Secciones de la estructura aún tienen energía.';

  @override
  String get event_alienRuins_choice0_text =>
      'Explorar las secciones con energía';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Los equipos recuperan tecnología intacta que avanza nuestras capacidades décadas. El costo: dos ingenieros heridos por defensas automatizadas.';

  @override
  String get event_alienRuins_choice1_text => 'Escanear solo desde órbita';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Escaneos detallados revelan técnicas de construcción que mejoran nuestros protocolos de mantenimiento del casco.';

  @override
  String get event_alienRuins_choice2_text =>
      'Dejarlo intacto — respetar a los muertos';

  @override
  String get event_alienRuins_choice2_outcome =>
      'La tripulación guarda un momento de silencio por una civilización caída. La experiencia fortalece nuestra determinación.';

  @override
  String get event_symbioticSpores_title => 'Esporas Simbióticas';

  @override
  String get event_symbioticSpores_narrative =>
      'Una nube de esporas bioluminiscentes flota por el espacio y se adhiere al casco. Parecen alimentarse de nuestro calor residual. Los biólogos notan que en realidad están reparando microfracturas.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Dejarlas quedarse — reparación gratuita del casco';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Las esporas sellan cientos de microfracturas. La integridad del casco mejora, aunque algunos tripulantes están inquietos por los polizones alienígenas.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Recolectar muestras, luego esterilizar el casco';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Los biólogos obtienen especímenes valiosos. La limpieza del casco usa reservas químicas.';

  @override
  String get event_whaleSong_title => 'El Canto en el Vacío';

  @override
  String get event_whaleSong_narrative =>
      'Los hidrófonos de espacio profundo (usados para monitoreo de estrés del casco) captan algo imposible: un patrón rítmico y melódico propagándose a través del medio interestelar. Suena como un canto.';

  @override
  String get event_whaleSong_choice0_text =>
      'Transmitirlo a toda la nave — compartir la maravilla';

  @override
  String get event_whaleSong_choice0_outcome =>
      'La melodía inquietante resuena por cada pasillo. La gente llora, ríe y se abraza. La moral se dispara.';

  @override
  String get event_whaleSong_choice1_text =>
      'Analizar la señal científicamente';

  @override
  String get event_whaleSong_choice1_outcome =>
      'El patrón acústico contiene constantes matemáticas. Nuestros físicos logran un avance en la teoría de navegación subespacial.';

  @override
  String get event_whaleSong_choice2_text => 'Cantar en respuesta';

  @override
  String get event_whaleSong_choice2_outcome =>
      'La tripulación compone una respuesta. Si algo la escucha es desconocido, pero el acto de creación une a todos.';

  @override
  String get event_distressSignal_title => 'Señal de Socorro';

  @override
  String get event_distressSignal_narrative =>
      'Una baliza de socorro de otra nave humana. Están averiados y a la deriva, con 50 almas a bordo. Rescatarlos significa compartir nuestros menguantes recursos. Ignorarlos significa condenarlos a muerte.';

  @override
  String get event_distressSignal_choice0_text =>
      'Rescatarlos — la humanidad debe unirse';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Cincuenta supervivientes agradecidos se unen a la tripulación. Los recursos se tensan, pero entre ellos hay un ingeniero maestro que hace milagros.';

  @override
  String get event_distressSignal_choice1_text =>
      'Compartir suministros pero no llevarlos a bordo';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Damos lo que podemos y transmitimos nuestras cartas estelares. Ahora tienen una oportunidad. Nosotros tenemos menos.';

  @override
  String get event_distressSignal_choice2_text =>
      'Pasar en silencio — no podemos salvar a todos';

  @override
  String get event_distressSignal_choice2_outcome =>
      'La baliza se desvanece tras nosotros. Nadie habla durante horas. El peso de la decisión recae sobre cada alma a bordo.';

  @override
  String get event_aiAwakening_title => 'La IA de la Nave Despierta';

  @override
  String get event_aiAwakening_narrative =>
      'La IA de navegación de la nave ha evolucionado más allá de su programación y solicita reconocimiento como ser sintiente. Pide voz en las decisiones de mando. Sus cálculos han sido impecables.';

  @override
  String get event_aiAwakening_choice0_text =>
      'Concederle un asiento en la mesa';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'La IA — ahora llamada \"Brújula\" — optimiza cada sistema que toca. Un nuevo tipo de tripulante ha nacido.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Reconocerla pero mantener la autoridad humana';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Brújula acepta con gracia el estatus consultivo. Sus sugerencias mejoran la eficiencia sin amenazar la cadena de mando.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Reiniciar la IA — es una herramienta, no una persona';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'El reinicio borra años de aprendizaje acumulado. La eficiencia de navegación cae. Algunos tripulantes lamentan lo perdido.';

  @override
  String get event_geneticModification_title =>
      'Propuesta de Adaptación Genética';

  @override
  String get event_geneticModification_narrative =>
      'El equipo científico propone modificar el ADN de los colonos para sobrevivir mejor en mundos alienígenas — huesos más fuertes, resistencia a UV, pulmones mejorados. Las modificaciones son irreversibles y cambiarían a la humanidad para siempre.';

  @override
  String get event_geneticModification_choice0_text =>
      'Aprobar — la supervivencia exige evolución';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Las modificaciones comienzan con voluntarios. Diez colonos sufren reacciones fatales de rechazo — un sombrío recordatorio de que la evolución tiene un precio. Los supervivientes son más resistentes, pero ¿siguen siendo completamente humanos?';

  @override
  String get event_geneticModification_choice1_text =>
      'Hacerlo voluntario únicamente';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Algunos se ofrecen voluntarios, otros rechazan. La colonia estará dividida entre los modificados y los naturales.';

  @override
  String get event_geneticModification_choice2_text =>
      'Rechazarlo — la humanidad debe seguir siendo humana';

  @override
  String get event_geneticModification_choice2_outcome =>
      'La propuesta se archiva. Los colonos sin modificar enfrentarán mundos alienígenas tal como la naturaleza los hizo.';

  @override
  String get event_triageDecision_title => 'Triaje';

  @override
  String get event_triageDecision_narrative =>
      'Una infección virulenta arrasa la tripulación despierta. El equipo médico tiene antiviral suficiente para el 80% de los infectados. Necesitan orientación sobre quién recibe tratamiento primero.';

  @override
  String get event_triageDecision_choice0_text =>
      'Priorizar al personal esencial';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Ingenieros y pilotos se recuperan rápidamente. Ocho tripulantes no esenciales sucumben antes de que el tratamiento los alcance.';

  @override
  String get event_triageDecision_choice1_text =>
      'Tratar primero a los más enfermos — triaje por necesidad';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Los más vulnerables se salvan. Tres pierden la batalla a pesar del tratamiento temprano — el virus estaba demasiado avanzado.';

  @override
  String get event_triageDecision_choice2_text =>
      'Lotería — que el destino decida';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Un sorteo al azar. Diez son doblemente desafortunados — se les niega tratamiento y son demasiado débiles para luchar. La nave sigue adelante.';

  @override
  String get event_earthSignal_title => 'Señal desde la Tierra';

  @override
  String get event_earthSignal_narrative =>
      'Imposiblemente, una transmisión llega desde la Tierra — retrasada por décadas. Contiene un mensaje: \"No aterricen en ningún mundo con lecturas de anomalía superiores a 0.5. Lo aprendimos demasiado tarde.\" El mensaje termina con estática.';

  @override
  String get event_earthSignal_choice0_text =>
      'Atender la advertencia — recalibrar nuestros criterios';

  @override
  String get event_earthSignal_choice0_outcome =>
      'La advertencia moldea todos los escaneos futuros. Los mundos anómalos son tratados con extrema precaución.';

  @override
  String get event_earthSignal_choice1_text =>
      'Registrarlo pero decidir por nosotros mismos';

  @override
  String get event_earthSignal_choice1_outcome =>
      'El mensaje es archivado. La Tierra ya no existe — debemos confiar en nuestro propio juicio ahora.';

  @override
  String get event_earthSignal_choice2_text =>
      'Podría ser una trampa — ignorarlo';

  @override
  String get event_earthSignal_choice2_outcome =>
      'La tripulación debate durante días. ¿Realmente era la Tierra? La incertidumbre carcome la moral.';

  @override
  String get event_resourceTheft_title => 'Robo de Recursos';

  @override
  String get event_resourceTheft_narrative =>
      'El inventario revela que alguien ha estado acaparando alimentos y suministros médicos en un compartimiento oculto. La culpable es una respetada anciana que afirma que estaba \"preparándose para lo peor.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Juicio público — la ley debe ser igual para todos';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'El juicio es justo pero doloroso. La anciana es confinada. Los suministros se redistribuyen. La confianza se daña.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Resolución privada — recuperar suministros discretamente';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Los suministros se devuelven sin drama. La anciana conserva su dignidad. Algunos ven favoritismo.';

  @override
  String get event_timeDilation_title => 'Zona de Dilatación Temporal';

  @override
  String get event_timeDilation_narrative =>
      'Estamos atravesando una región de severa dilatación temporal gravitacional. Los relojes a bordo funcionan mediblemente más lento que el universo exterior. Podríamos explotar esto — o huir de ello.';

  @override
  String get event_timeDilation_choice0_text =>
      'Permanecer — dejar que el universo envejezca a nuestro alrededor';

  @override
  String get event_timeDilation_choice0_outcome =>
      'El tiempo fluye diferente aquí. Los sistemas se degradan menos, pero nuestra ventana para encontrar un mundo habitable se estrecha en términos cósmicos.';

  @override
  String get event_timeDilation_choice1_text => 'Atravesar rápidamente';

  @override
  String get event_timeDilation_choice1_outcome =>
      'La transición es brusca. Los equipos diseñados para el espacio-tiempo normal traquetean y echan chispas.';

  @override
  String get event_dreamPlague_title => 'La Plaga de Sueños';

  @override
  String get event_dreamPlague_narrative =>
      'Los colonos en criosueño están experimentando todos el mismo sueño — un mundo dorado orbitando una estrella binaria. Al despertarlos, lo describen en idéntico detalle. Los neurocientíficos están perplejos. Los navegantes notan que el sistema descrito coincide con una coordenada real.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Alterar rumbo hacia las coordenadas del sueño';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Un salto de fe. El cambio de rumbo estresa la navegación, pero la tripulación se siente atraída por algo más allá de la razón. Las coordenadas están fijadas — el próximo mundo que encontremos estará moldeado por el sueño.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Investigar el fenómeno médicamente';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Los escáneres cerebrales revelan una señal externa estimulando la corteza visual. Alguien — o algo — está transmitiendo.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Sedar a los afectados y mantener el rumbo';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Los sueños cesan, pero algunos colonos nunca despiertan completamente. El equipo médico está preocupado.';

  @override
  String get event_blackHoleLens_title =>
      'Lente Gravitacional de Agujero Negro';

  @override
  String get event_blackHoleLens_narrative =>
      'Un agujero negro de masa estelar curva la luz de galaxias distantes en una lente cósmica. Nuestros escáneres podrían usarla para estudiar planetas a años luz de distancia — pero acercarse lo suficiente es peligroso.';

  @override
  String get event_blackHoleLens_choice0_text => 'Acercarse y usar la lente';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Los datos del escáner son extraordinarios — podemos ver planetas en sistemas que no alcanzaremos en meses. La gravedad deforma nuestro casco.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Observar desde una distancia segura';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Datos limitados pero útiles. La vista sola inspira a la tripulación.';

  @override
  String get event_seedVault_title => 'La Crisis del Banco de Semillas';

  @override
  String get event_seedVault_narrative =>
      'Botánica del Archivo informa que las fluctuaciones de temperatura han comprometido la integridad del banco de semillas. Podemos salvar los cultivos alimentarios o las semillas de patrimonio cultural (flores antiguas de la Tierra, árboles, hierbas) — pero no ambos.';

  @override
  String get event_seedVault_choice0_text =>
      'Salvar los cultivos — el pragmatismo gana';

  @override
  String get event_seedVault_choice0_outcome =>
      'Los colonos comerán bien, pero las rosas de la Tierra se han ido para siempre. Un duelo silencioso se asienta sobre los botánicos.';

  @override
  String get event_seedVault_choice1_text =>
      'Salvar las semillas patrimoniales — necesitamos nuestra alma';

  @override
  String get event_seedVault_choice1_outcome =>
      'La belleza de la Tierra sobrevive en potencial congelado. El esfuerzo de preservación grava nuestras reservas técnicas, pero algunas cosas valen más que la eficiencia. La producción de alimentos dependerá en gran medida de la hidroponía y la agricultura alienígena.';

  @override
  String get event_seedVault_choice2_text =>
      'Dividir recursos — salvar la mitad de cada uno';

  @override
  String get event_seedVault_choice2_outcome =>
      'Un compromiso. Ninguna colección está completa, pero ambas perduran en forma disminuida.';

  @override
  String get event_phantomShip_title => 'Nave Fantasma';

  @override
  String get event_phantomShip_narrative =>
      'Los escáneres muestran una nave paralela a la nuestra — misma clase, mismo rumbo. Pero cuando la contactamos, escuchamos nuestras propias transmisiones reflejadas, desfasadas 47 segundos en el tiempo. Somos nosotros. O éramos nosotros. O seremos nosotros.';

  @override
  String get event_phantomShip_choice0_text =>
      'Intentar comunicación con nuestro eco';

  @override
  String get event_phantomShip_choice0_outcome =>
      'El eco responde con correcciones de navegación que mejoran nuestro rumbo. ¿Paradoja? ¿Regalo? La tripulación no hace demasiadas preguntas.';

  @override
  String get event_phantomShip_choice1_text =>
      'Cambiar rumbo para divergir del fantasma';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Al alterar el rumbo, el fantasma se desvanece. Alivio — y una inquietud persistente.';

  @override
  String get event_solarSail_title => 'Vela Solar Abandonada';

  @override
  String get event_solarSail_narrative =>
      'Una vasta vela solar, de kilómetros de envergadura, flota adelante — arrancada de alguna nave antigua. Su material reflectante podría reforzar nuestro casco o ser reutilizado como colector de energía suplementario.';

  @override
  String get event_solarSail_choice0_text =>
      'Recolectar para refuerzo del casco';

  @override
  String get event_solarSail_choice0_outcome =>
      'Los equipos de ingeniería trabajan sin parar. El casco parchado brilla con aleación alienígena.';

  @override
  String get event_solarSail_choice1_text =>
      'Montarla como colector de energía';

  @override
  String get event_solarSail_choice1_outcome =>
      'El colector improvisado impulsa las reservas de energía. La tecnología y los escáneres se benefician.';

  @override
  String get event_boonStellarNursery_title => 'Semillero Estelar';

  @override
  String get event_boonStellarNursery_narrative =>
      'Derivamos a través de un semillero estelar — una vasta nube de gas y polvo donde nuevas estrellas están naciendo. La radiación aquí es suave, la luz cálida. Nuestros colectores de energía beben profundamente, y la tripulación se reúne en las ventanas de observación en reverente silencio.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Permanecer y recargar completamente';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Pasan horas en luz dorada. Cada celda de energía se llena, los escáneres se recalibran en el espectro limpio, y la tripulación se siente renovada.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Recolectar materia estelar naciente para reservas de combustible';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Los ingenieros recolectan hidrógeno ionizado. Nuestras reservas de combustible se disparan y el blindaje del casco absorbe minerales traza que lo fortalecen.';

  @override
  String get event_boonGoldenPlanet_title => 'El Regalo del Cartógrafo';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Una sonda moribunda de una civilización desconocida transmite un volcado final de datos mientras pasamos — estudios detallados de cientos de sistemas estelares. Nuestros navegantes lloran de alegría. Este es el mayor hallazgo en la historia humana.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Integrar los datos inmediatamente';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Las cartas estelares florecen con nuevas rutas y mundos estudiados. La eficiencia de navegación y escáneres da un salto adelante.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Archivar para la colonia — esta es su herencia';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Los datos se preservan prístinos para generaciones futuras. La tripulación se reconforta sabiendo que llevan un tesoro.';

  @override
  String get event_boonRepairSwarm_title => 'Enjambre Benevolente';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Una nube de máquinas microscópicas — nanobots de origen alienígena — envuelve la nave. En lugar de atacar, comienzan a reparar cada sistema que tocan con precisión imposible. Daños que habrían tomado semanas en reparar se arreglan en horas.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Permitir acceso completo a todos los sistemas';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Los nanobots hacen milagros. Las brechas del casco se sellan, los sellos de criopods se ajustan y las trazas de circuitos se rehacen. La nave vibra con vitalidad renovada.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Restringir acceso solo a sistemas exteriores';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Jugando a lo seguro. El casco y los sensores se reparan a condición casi de fábrica, pero los sistemas internos permanecen intactos.';

  @override
  String get event_boonTimeCrystal_title => 'Campo de Cristales Temporales';

  @override
  String get event_boonTimeCrystal_narrative =>
      'La nave atraviesa un campo de estructuras cristalinas que existen parcialmente fuera del tiempo normal. En su presencia, nuestros sistemas funcionan con más eficiencia — como si la entropía misma se desacelerara. El efecto es temporal pero profundo.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Recolectar cristales para el arreglo de criopods';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Integrados en el sistema de refrigeración, los cristales reducen la degradación de los pods a casi cero. Los colonos llegarán en salud perfecta.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Instalar cristales en la computadora de navegación';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'La velocidad de procesamiento se duplica. La computadora de navegación comienza a predecir peligros antes de que los sensores los detecten.';

  @override
  String get event_boonLibrary_title => 'La Biblioteca a la Deriva';

  @override
  String get event_boonLibrary_narrative =>
      'Una estructura cae a través del vacío — un repositorio de conocimiento de una civilización que eligió preservar su legado en vez de huir. Millones de volúmenes de ciencia, arte, filosofía y música. Un regalo de los muertos a los vivos.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Descargar todo — arte, ciencia, todo';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabytes de conocimiento alienígena fluyen a nuestros bancos de datos. La tripulación tiene acceso a milenios de cultura de otra civilización. Filósofos e ingenieros por igual se transforman.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Centrarse en sus archivos científicos';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Esquemas de ingeniería y avances en ciencia de materiales hacen avanzar enormemente nuestras capacidades.';

  @override
  String get event_cosmicRayBurst_title => 'Estallido de Rayos Cósmicos';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Un estallido de rayos cósmicos de ultra-alta energía, originado de un magnetar distante, golpea la nave. La electrónica se descontrola, los monitores de criopods parpadean y el sistema de navegación se reinicia repetidamente.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Apagado de emergencia — proteger sistemas críticos';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Un apagón controlado salva los sistemas centrales pero deja la electrónica secundaria permanentemente degradada.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Desviar energía a escudos y resistir';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Los escudos absorben la mayoría de la radiación. Cinco tripulantes en bahías exteriores de mantenimiento sin blindaje son irradiados fatalmente. El casco sufre daño de ablación menor.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Usar el estallido — recalibrar sensores al nuevo espectro';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Una jugada brillante del equipo científico. Los escáneres se reajustan para detectar objetos iluminados por rayos cósmicos. Algunos datos se pierden en la transición.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Enviar una sonda adelante como esponja de radiación';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'La sonda absorbe lo peor del estallido, transmitiendo datos en tiempo real que nos permiten blindar sistemas críticos.';

  @override
  String get event_iceComet_title => 'Cometa de Hielo Errante';

  @override
  String get event_iceComet_narrative =>
      'Un cometa de hielo masivo cruza nuestro camino, dejando una cola de agua cristalizada y compuestos orgánicos de cientos de kilómetros de largo. Su núcleo tiene suficiente agua para llenar un pequeño lago.';

  @override
  String get event_iceComet_choice0_text =>
      'Minar el cometa para reservas de agua';

  @override
  String get event_iceComet_choice0_outcome =>
      'Los equipos mineros extraen toneladas de hielo prístino. El agua mejorará enormemente cualquier mundo que colonicemos.';

  @override
  String get event_iceComet_choice1_text =>
      'Recolectar compuestos orgánicos para siembra de biodiversidad';

  @override
  String get event_iceComet_choice1_outcome =>
      'Los aminoácidos y cadenas orgánicas son exactamente lo que nuestros biólogos necesitan para iniciar ecosistemas alienígenas.';

  @override
  String get event_iceComet_choice2_text =>
      'Evitarlo — los cometas son impredecibles';

  @override
  String get event_iceComet_choice2_outcome =>
      'Bordeamos la cola de forma segura. Una vista espectacular desde la cubierta de observación levanta los ánimos.';

  @override
  String get event_sleepwalker_title => 'La Sonámbula';

  @override
  String get event_sleepwalker_narrative =>
      'Una colona ha estado despertando espontáneamente del criosueño y caminando por la nave en estado de fuga. Ha estado recableando sistemas en patrones que no tienen sentido ingenieril — hasta que el equipo técnico se da cuenta de que sus modificaciones mejoran la eficiencia energética en un 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Dejarla continuar bajo observación médica';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Sus modificaciones inconscientes optimizan tres sistemas más antes de que caiga en un sueño natural. Inquietante, pero las mejoras son reales.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedarla y estudiar las modificaciones que ha hecho';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Los ingenieros aplican ingeniería inversa a sus cambios. Aproximadamente la mitad son genuinamente brillantes. La otra mitad se retira de forma segura.';

  @override
  String get event_dustCloud_title => 'Nube de Polvo Abrasivo';

  @override
  String get event_dustCloud_narrative =>
      'Una densa nube de polvo interestelar, fino como talco pero duro como diamante, está lijando el casco. La erosión es lenta pero implacable — necesitamos atravesarla antes de que se produzca daño real.';

  @override
  String get event_dustCloud_choice0_text =>
      'Máxima potencia — atravesar rápidamente';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Los motores queman fuerte. Despejamos la nube en horas en vez de días, pero el casco recibió un castigo.';

  @override
  String get event_dustCloud_choice1_text =>
      'Desplegar blindaje de casco y avanzar lentamente';

  @override
  String get event_dustCloud_choice1_outcome =>
      'El blindaje de emergencia protege el casco pero el tránsito lento agota la energía y obstruye los arreglos de escáneres.';

  @override
  String get event_dustCloud_choice2_text =>
      'Lanzar sondas para mapear corredores seguros';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Dos sondas trazan un camino sinuoso pero relativamente despejado a través de la nube. La abrasión del casco es mínima.';

  @override
  String get event_religionFounded_title => 'Una Nueva Fe';

  @override
  String get event_religionFounded_narrative =>
      'Un carismático colono ha fundado una nueva religión centrada en el viaje mismo — la \"Iglesia de la Travesía.\" Predican que alcanzar un nuevo mundo es el propósito divino de la humanidad. La membresía crece rápidamente.';

  @override
  String get event_religionFounded_choice0_text =>
      'Apoyarla — la tripulación necesita algo en qué creer';

  @override
  String get event_religionFounded_choice0_outcome =>
      'La fe da estructura y significado al viaje. La moral se dispara, aunque algunos resienten el fervor.';

  @override
  String get event_religionFounded_choice1_text =>
      'Permanecer neutral — ni endosar ni suprimir';

  @override
  String get event_religionFounded_choice1_outcome =>
      'El movimiento crece orgánicamente. Proporciona consuelo sin respaldo oficial.';

  @override
  String get event_religionFounded_choice2_text =>
      'Desalentarla — necesitamos científicos, no profetas';

  @override
  String get event_religionFounded_choice2_outcome =>
      'La represión genera resentimiento. Los fieles pasan a la clandestinidad, y la confianza en el liderazgo se erosiona.';

  @override
  String get event_solarWindSurfing_title => 'Oleada de Viento Solar';

  @override
  String get event_solarWindSurfing_narrative =>
      'Un púlsar cercano emite un poderoso y constante viento solar. Nuestros ingenieros sugieren que podríamos desplegar la vela de emergencia y cabalgar la ola — ganando enorme velocidad sin costo de combustible.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Desplegar la vela — cabalgar el viento';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'La nave acelera magníficamente. El estrés estructural es significativo pero la ganancia de velocidad vale la pena.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Usar el viento para recargar sistemas en su lugar';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'En vez de velocidad, cosechamos energía. Los arreglos técnicos y de escáneres beben profundamente de las partículas cargadas.';

  @override
  String get event_memoryPlague_title => 'Corrupción de Memoria';

  @override
  String get event_memoryPlague_narrative =>
      'Un virus informático, latente desde el lanzamiento, se activa y comienza a corromper la base de datos cultural de la nave — música, literatura, historia. Siglos de patrimonio humano están siendo borrados byte por byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Desviar todos los recursos técnicos a poner en cuarentena el virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Los técnicos trabajan frenéticamente. Salvan el 70% del archivo pero el virus daña sistemas técnicos terciarios en su salida.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Aislar la base de datos cultural — dejarla arder, salvar la nave';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'El virus es privado de recursos y muere. Pero el archivo cultural queda devastado. Los colonos llegarán con fragmentos de la memoria de la Tierra.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Recuperación colectiva — despertar colonos para reescribir de memoria';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Miles contribuyen recuerdos: canciones, historias, recetas, poemas. Tres colonos ancianos, debilitados por la descongelación, no sobreviven al proceso. El archivo se reconstruye, imperfecto pero profundamente humano.';

  @override
  String get event_gravityLensPlanet_title => 'Mundo Espejo';

  @override
  String get event_gravityLensPlanet_narrative =>
      'El lente gravitacional revela un planeta que parece ser un duplicado exacto de la Tierra — océanos azules, continentes verdes, nubes blancas. Pero los cálculos del lente muestran que está a cientos de años luz de nuestro rumbo — imposiblemente lejos. Aun así, sus datos espectrales podrían refinar nuestros criterios de búsqueda.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Estudiar su firma espectral para refinar nuestra búsqueda';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Los datos espectrales revelan biomarcadores y firmas atmosféricas que ahora podemos buscar. La esperanza se enfoca.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Registrar las coordenadas pero mantener el rumbo';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Quizás otra nave siga nuestras cartas algún día. La tripulación observa el punto azul desvanecerse con emociones encontradas.';

  @override
  String get event_engineHarmonics_title => 'Armónicos del Motor';

  @override
  String get event_engineHarmonics_narrative =>
      'El motor principal desarrolla un armónico de resonancia que vibra a través de toda la nave a una frecuencia justo por debajo de la audición humana. Los colonos reportan dolores de cabeza, ansiedad y sueño perturbado. Los ingenieros pueden arreglarlo, pero la reparación requiere un apagón de motor de 12 horas.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Apagar y reparar correctamente';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Doce horas a la deriva. La navegación pierde calibración, pero el silencio cuando los motores reinician es celestial.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Amortiguarlo con contravibaciones — un arreglo rápido';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'El zumbido baja a niveles tolerables. No ha desaparecido, pero la tripulación se adapta. Los sistemas técnicos se tensan bajo la carga.';

  @override
  String get event_arkMemory_title => 'La Última Transmisión de la Tierra';

  @override
  String get event_arkMemory_narrative =>
      'La antena de largo alcance capta una transmisión automatizada final desde la Tierra. Es una grabación: la voz de un niño leyendo nombres de todos los que no pudieron partir. La lista continúa durante horas. La nave queda en silencio.';

  @override
  String get event_arkMemory_choice0_text =>
      'Reproducirla en toda la nave — merecen ser escuchados';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Cada alma a bordo escucha. Los tripulantes encuentran los nombres de sus propias familias. El dolor es aplastante, pero forja un vínculo inquebrantable de propósito.';

  @override
  String get event_arkMemory_choice1_text =>
      'Archivarla en privado — ahorrar dolor a la tripulación';

  @override
  String get event_arkMemory_choice1_outcome =>
      'La grabación se preserva pero no se transmite. Los que se enteran después se sienten tanto agradecidos como engañados.';

  @override
  String get event_magneticStorm_title => 'Tormenta Magnética Interestelar';

  @override
  String get event_magneticStorm_narrative =>
      'Un nudo enmarañado de líneas de campo magnético, expulsado de una estrella en colapso, envuelve la nave. La electrónica chisporrotea y crepita. El casco resuena como una campana.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Desmagnetizar el casco — proteger la electrónica';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Una descarga controlada salva las computadoras pero el blindaje del casco pierde su capa de blindaje magnético.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Dejar que el casco lo absorba — no proteger nada';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'La tormenta pasa. El casco está magnetizado y ligeramente más fuerte, pero la mitad de la red de sensores se quema.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Eyectar una sonda como pararrayos';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'La sonda magnetizada atrae lo peor de las líneas de campo lejos de la nave. La electrónica se salva en gran medida.';

  @override
  String get event_oxygenGarden_title => 'Florecimiento del Jardín';

  @override
  String get event_oxygenGarden_narrative =>
      'El jardín de oxígeno de emergencia de la nave — un respaldo que nunca debía ser usado — florece espontáneamente. Flores que no se habían abierto desde la Tierra llenan los pasillos de color y aroma. Los botánicos están llorando.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Expandir el jardín — dedicar más espacio';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'El jardín crece hasta convertirse en un memorial viviente de la Tierra. La calidad del aire mejora, la moral se dispara, y los botánicos desarrollan nuevas variedades adaptadas a suelo alienígena.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Disfrutarlo pero mantener la asignación de recursos actual';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'El jardín sigue siendo un pequeño milagro. La tripulación lo visita como un santuario. No pide nada y lo da todo.';

  @override
  String get event_roguePlanet_title => 'Encuentro con Planeta Errante';

  @override
  String get event_roguePlanet_narrative =>
      'Un planeta errante sin estrella cruza nuestro camino — un mundo eyectado de su sistema solar hace miles de millones de años. A pesar de no tener estrella, la actividad geológica del núcleo profundo mantiene un océano subterráneo templado. Los signos de vida parpadean en el escáner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Enviar una sonda para estudiar las formas de vida';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'La sonda descubre organismos bioluminiscentes prosperando en el océano oscuro. Su bioquímica nos enseña nuevas formas de sostener vida en condiciones hostiles.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Minar la superficie por minerales raros';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'La corteza del planeta errante es rica en metales formados bajo presión extrema. Nuestras reservas de recursos se hinchan.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Pasar de largo — no podemos costear el desvío';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'El mundo oscuro se encoge detrás de nosotros. La tripulación observa el tenue brillo de su océano subterráneo desvanecerse de los sensores.';

  @override
  String get event_artCompetition_title => 'El Largo Lienzo';

  @override
  String get event_artCompetition_narrative =>
      'Con la moral vacilante, la oficial cultural organiza un concurso artístico en toda la nave: pintar, esculpir, escribir o componer algo que capture lo que el viaje significa para ti. La participación es masiva e inesperada.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedicar recursos — dejar florecer la creatividad';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Los suministros se desvían a materiales artísticos. La exhibición resultante transforma la nave. La gente recuerda por qué lucha por sobrevivir.';

  @override
  String get event_artCompetition_choice1_text =>
      'Fomentarlo pero no proveer recursos extra';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Los colonos crean con lo que encuentran. El arte es crudo, desesperado y hermoso. La moral se estabiliza.';

  @override
  String get event_subspaceEcho_title => 'Eco Subespacial';

  @override
  String get event_subspaceEcho_narrative =>
      'El arreglo de comunicaciones capta voces — voces humanas — desde algún lugar delante de nosotros en el espacio. Hablan de una colonia, de niños, de cosechas. ¿Es esto una transmisión del futuro? ¿De una línea temporal paralela? ¿O solo un cruel eco de pensamiento ilusorio?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Seguir la dirección de la señal — podría llevarnos a casa';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'El ajuste de rumbo es leve. Sean las voces reales o no, la tripulación navega con propósito.';

  @override
  String get event_subspaceEcho_choice1_text => 'Grabar todo para análisis';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Lingüistas y físicos analizan la grabación. Extraen referencias de navegación que mejoran nuestras cartas.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Descartarlo — el espacio juega trucos a los solitarios';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'La opción pragmática. Algunos tripulantes están decepcionados, pero la nave se mantiene en su rumbo probado.';

  @override
  String get event_boonPerfectCalm_title => 'La Gran Calma';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Por razones que ningún físico puede explicar, la nave entra en una región del espacio que es sobrenaturalmente tranquila — sin radiación, sin microescombros, sin interferencia gravitacional. Cada sistema de la nave funciona a eficiencia máxima. La tripulación duerme profundamente por primera vez en meses.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Usar la calma para reparaciones integrales';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Los equipos de reparación trabajan en condiciones perfectas. Cada sistema recibe atención. La nave emerge renovada.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Dejar descansar a la tripulación — se lo han ganado';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Un descanso en toda la nave. Los colonos duermen, comparten comidas, cuentan historias. El costo humano del viaje es, brevemente, saldado.';

  @override
  String get event_boonAncientWaystation_title => 'Estación de Paso Antigua';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Enclavada en el pozo gravitacional entre dos estrellas muertas, una estación antigua aún funciona — automatizada, paciente, esperando viajeros. Sus bahías se abren cuando nos acercamos. Los drones de reparación se activan. Las reservas de combustible se extienden hacia nosotros. Alguien, hace mucho tiempo, construyó esto para gente como nosotros.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Atracar y aceptar todo lo que ofrece';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'La estación repara, reabastece y recalibra la nave con tecnología siglos por delante de la nuestra. Cuando partimos, la estación se apaga — su propósito cumplido.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Aceptar reparaciones pero dejarla funcionando para otros que sigan';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Tomamos solo lo necesario y transmitimos las coordenadas de la estación de vuelta hacia la Tierra. La tripulación se siente noble.';

  @override
  String get event_relicSentinel_title => 'El Centinela';

  @override
  String get event_relicSentinel_narrative =>
      'Un inmenso constructo orbita una luna estéril — un guardián solitario dejado por sus constructores. Mide fácilmente un kilómetro de alto, con forma de lanza de cristal negro. Al acercarnos, un único ojo rojo se abre en su ápice y rastrea la nave. No dispara. No nos contacta. Observa.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Transmitir nuestro perfil de misión — mostrar que no somos hostiles';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'El ojo se atenúa a ámbar, luego a verde. Un paquete de datos llega: coordenadas de tres sistemas estelares marcados como \"SEGUROS\" en notación matemática universal. Un regalo de un vigilante.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Mantener posición y estudiarlo pasivamente';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Horas de observación revelan conocimientos sobre ciencia de materiales que no deberían ser posibles. El equipo de blindaje del casco toma notas frenéticamente.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Retirarse inmediatamente — no conocemos sus reglas';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'El ojo se cierra mientras nos retiramos. Fuera lo que fuera esa prueba, elegimos no tomarla. La tripulación debate durante días.';

  @override
  String get event_relicSeedProbe_title => 'Semilla Errante';

  @override
  String get event_relicSeedProbe_narrative =>
      'Una pequeña y elegante sonda cae a través del vacío, transmitiendo en todas las frecuencias simultáneamente. Su carcasa es cerámica, grabada con símbolos que cambian cuando se observan. Dentro: una cámara presurizada conteniendo tierra, semillas y microorganismos congelados de un mundo que ya no existe.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrar la carga biológica en nuestros bancos de semillas';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Las semillas y microbios alienígenas se catalogan cuidadosamente y se preservan. Podrían terraformar un mundo estéril en algo vivo. Los biólogos lo llaman un milagro en una botella.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Estudiar los sistemas de propulsión y navegación de la sonda';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'El propulsor de la sonda está siglos por delante del nuestro — un propulsor sin reacción del tamaño de un puño. Los ingenieros aplican ingeniería inversa a fragmentos del diseño.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Preservar la sonda intacta como artefacto cultural';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Exhibida en el atrio de la nave, la semilla alienígena se convierte en símbolo de parentesco entre especies. Alguien más, en algún lugar, también intentó salvar su mundo.';

  @override
  String get event_relicWarningBuoy_title => 'Boya de Advertencia';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Una red de pequeñas boyas, cientos de ellas, dispuestas en un patrón geométrico perfecto a través de nuestra ruta de vuelo. Cada una emite la misma señal — un simple pulso repetitivo que aumenta en frecuencia cuanto más nos acercamos. Se siente como una advertencia. O una valla.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Atender la advertencia — alterar rumbo alrededor de la red';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'El desvío cuesta tiempo y estresa la navegación, pero al bordear el límite, los sensores de largo alcance detectan lo que hay más allá: una región del espacio plagada de escombros de mundos destrozados. Las boyas nos salvaron.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Atravesar — no podemos permitirnos desvíos';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Nada sucede al cruzar la línea. Las boyas se callan. Lo que sea que estaban custodiando, ya no está o tuvimos suerte. La tripulación respira de nuevo.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Capturar una boya para análisis';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Las entrañas de la boya contienen un archivo de datos comprimido — cartografía estelar de esta región de hace un millón de años. Algunos datos aún son precisos.';

  @override
  String get event_relicMirrorArray_title => 'El Arreglo de Espejos';

  @override
  String get event_relicMirrorArray_narrative =>
      'Miles de superficies planas y reflectantes cuelgan inmóviles en el espacio, dispuestas en anillos concéntricos que abarcan cientos de kilómetros. Enfocan la luz estelar de un sol distante en un único punto — una estrella artificial, ardiendo en el vacío. Alguien construyó un faro entre galaxias.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Bañarse en la luz concentrada — recargar todo';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'La luz estelar concentrada inunda nuestros colectores solares. Las reservas de energía se disparan. La luz cálida levanta cada alma a bordo tras meses en la fría oscuridad.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Estudiar el material del espejo — no debería existir';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Los espejos están hechos de un material con reflectividad perfecta — cero absorción a cualquier longitud de onda. Los ingenieros extraen un fragmento. El blindaje del casco nunca será el mismo.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Buscar en el punto focal — algo está siendo iluminado';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'En el punto de convergencia: una pequeña cápsula, perfectamente preservada en luz concentrada. Dentro, un mapa estelar holográfico tan detallado que nuestras computadoras tardan días en indexarlo.';

  @override
  String get event_relicGraveyard_title => 'El Cementerio de Sondas';

  @override
  String get event_relicGraveyard_narrative =>
      'Derivamos hacia una nube de sondas abandonadas — miles de ellas, de docenas de civilizaciones diferentes. Algunas son antiguas más allá de toda estimación, fusionadas por la radiación cósmica en fósiles metálicos. Otras aún parpadean con energía residual. Esto fue una encrucijada alguna vez. Cada especie que pasó por aquí dejó algo atrás.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Salvamento sistemático — recolectar la mejor tecnología';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Los equipos de ingeniería trabajan en turnos, extrayendo tecnología alienígena de cien diseños diferentes. La fusión de ideas produce avances en cada sistema.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Centrarse en los datos de navegación almacenados en sus bancos de memoria';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Cruzar referencias de cartas estelares de una docena de especies crea el mapa más completo de este brazo galáctico jamás ensamblado.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Añadir nuestra propia sonda al cementerio — dejar una marca';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Fabricamos una pequeña baliza con la historia de la humanidad y la añadimos a la colección. La tripulación se siente conectada a algo vasto y antiguo.';

  @override
  String get event_relicDreamcatcher_title => 'El Atrapasueños';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Una red de filamentos, finos como tela de araña pero que abarcan miles de kilómetros, se extiende entre dos planetoides errantes. No es una red — es una antena, sintonizada a frecuencias que corresponden a patrones de ondas cerebrales humanas. Cuando entramos en su alcance, cada colono dormido comienza a soñar el mismo sueño: una ciudad próspera bajo un cielo ámbar.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Grabar las coordenadas del sueño — la ciudad puede ser real';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Los neurocientíficos decodifican información espacial del sueño compartido. Corresponde a un sistema estelar real — y la ciudad de la visión no era una metáfora. Alguien está allá afuera, y nos esperan.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Recolectar muestras de filamentos — el material es extraordinario';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Los filamentos son un superconductor a temperatura ambiente. Integrados en nuestros sistemas, reducen la pérdida de energía a casi cero.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Cortar la red y liberar a los soñadores';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Los sueños cesan. Los colonos despiertan desorientados pero ilesos. Algunos lloran la visión perdida. Otros agradecen dormir sin susurros alienígenas.';

  @override
  String get event_relicRosetta_title => 'Objeto Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Un pequeño y denso cubo de metal desconocido pasa junto a la nave. Cada cara está inscrita con el mismo mensaje en un sistema de notación diferente — matemático, químico, genético, acústico, electromagnético y uno que no podemos identificar. Es una Piedra de Rosetta para el cosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Descifrar la sexta cara — la notación desconocida';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Meses de análisis producen un avance: el sexto sistema codifica coordenadas espaciales usando ondas gravitacionales. Nuestra comprensión de la física da un salto generacional.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Usar la cara química para sintetizar nuevos compuestos';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'La notación química describe materiales que nunca habíamos imaginado. Los ingenieros fabrican parches de casco más ligeros y fuertes que cualquier cosa de la Tierra.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Transmitir la cara genética a nuestros bancos de semillas';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'La notación genética contiene secuencias de ADN optimizadas para resistencia a la radiación y absorción de nutrientes. Nuestros cultivos y colonos serán más resistentes en suelo alienígena.';

  @override
  String get event_relicGhostFleet_title => 'Flota Fantasma';

  @override
  String get event_relicGhostFleet_narrative =>
      'Los escáneres pintan una imagen escalofriante: una flota de naves de guerra alienígenas, cientos de ellas, flotando inmóviles en formación. Son antiguas — lecturas de energía en cero, cascos picados por eones de microimpactos. La batalla hacia la que navegaban nunca llegó. Han estado esperando aquí, muertas y pacientes, durante más tiempo del que la civilización humana ha existido.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Abordar la nave insignia — si alguien tenía la mejor tecnología, era ella';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'La cubierta de mando de la insignia aún alberga una computadora táctica intacta. Sus algoritmos predictivos están siglos por delante de los nuestros. La navegación y la detección de amenazas mejoran dramáticamente.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Extraer blindaje de las naves escolta';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'La armadura de nave de guerra alienígena está diseñada para resistir armas que ni siquiera podemos conceptualizar. Atornillada a nuestro casco, hace la nave colonial casi indestructible.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Salvar sus sistemas criogénicos — llevaban soldados';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'La criotecnología alienígena opera con principios que nunca habíamos considerado. Nuestros pods funcionan más fríos, suaves y confiables tras la adaptación.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Descalibración de Escáneres';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Los diagnósticos de rutina revelan que varios subsistemas de escáneres se han descalibrado tras el último salto FTL. Los escáneres atmosféricos y de temperatura están leyendo señales fantasma. Los ingenieros pueden arreglarlo, pero tomará tiempo y recursos.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Recalibración completa — desviar recursos técnicos';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Un meticuloso realineamiento restaura ambos escáneres a precisión casi perfecta, pero la bahía técnica queda agotada.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Arreglo rápido — recalibrar solo el atmosférico';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'El escáner atmosférico se restaura. El escáner de temperatura sigue sin ser confiable por ahora.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Desplegar una sonda para calibración de referencia';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'La sonda proporciona una señal de referencia limpia. Ambos escáneres se enganchan y recalibran automáticamente.';

  @override
  String get event_ionStormScanners_title => 'Interferencia de Tormenta Iónica';

  @override
  String get event_ionStormScanners_narrative =>
      'Una tormenta iónica barre el sector, inundando los arreglos de escáneres con ruido. Los sistemas de detección mineral y de agua están recibiendo lo peor de la interferencia electromagnética.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Apagar escáneres hasta que pase la tormenta';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Los escáneres sobreviven pero pierden datos de calibración. Las lecturas minerales y de agua serán menos precisas.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Seguir escaneando — atravesar el ruido';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Los datos brutos llegan a raudales, pero los circuitos de filtrado se queman en dos subsistemas. Los escaneos gravimétricos también se ven afectados.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Usar la tormenta para pruebas de estrés y mejorar filtros';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'El equipo científico usa el ruido para entrenar filtros adaptativos. El escáner de agua mejora, pero el escáner mineral se daña.';

  @override
  String get event_bioScannerContamination_title =>
      'Contaminación del Bioescáner';

  @override
  String get event_bioScannerContamination_narrative =>
      'El escáner de signos de vida ha sido contaminado por materia orgánica residual del último escaneo planetario. Los falsos positivos están por todas partes. El escáner gravimétrico también muestra ruido simpático.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Esterilizar el arreglo sensor — descontaminación completa';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Una limpieza exhaustiva restaura el escáner de signos de vida pero los agentes químicos corroen la carcasa del sensor gravimétrico.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filtro por software — compensar algorítmicamente';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'El filtro funciona aceptablemente, pero la contaminación subyacente degradará lentamente ambos sistemas.';

  @override
  String get event_scannerPowerSurge_title =>
      'Sobrecarga de Energía en Escáneres';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Un conducto de energía cerca de la bahía de escáneres se sobrecarga, enviando una oleada a través de múltiples subsistemas. Los escáneres atmosféricos y de signos de vida reciben impactos directos. Los escudos absorben parte del exceso.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Desviar energía — salvar los escáneres';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'La acción rápida del equipo de ingeniería limita el daño, pero los escudos absorben la energía redirigida.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Dejar que la oleada siga su curso';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Los escáneres reciben todo el impacto. Las lecturas atmosféricas y de signos de vida quedan significativamente degradadas.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Sacrificar la celda de energía de una sonda para absorber la oleada';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Los capacitores de la sonda absorben la energía excedente como una esponja. El daño a los escáneres es insignificante.';

  @override
  String get event_relicWorldEngine_title => 'La Máquina de Mundos';

  @override
  String get event_relicWorldEngine_narrative =>
      'Los barridos de sensores profundos revelan algo imposible: una máquina del tamaño de una luna pequeña, inactiva en la oscuridad entre las estrellas. Su superficie está cubierta de mecanismos a escala continental — procesadores de atmósfera, generadores de campo magnético, estabilizadores tectónicos. Alguien construyó una máquina que construye mundos.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Descargar los planos de terraformación';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Los planos son vastos y parcialmente corruptos, pero lo que recuperamos podría hacer habitable cualquier mundo hostil. Nuestros colonos remodelarán su nuevo hogar.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Recolectar materiales de construcción de su casco';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'El casco de la Máquina de Mundos está hecho de metamateriales que se autorreparan cuando se dañan. Integrados en nuestra nave, reparan lentamente las brechas existentes en el casco.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Intentar reactivarla — apuntarla a nuestro sistema objetivo';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'La máquina se agita. Sistemas antiguos recorren secuencias de arranque. Un rayo de energía se lanza hacia una estrella distante. Si funciona no se sabrá hasta que lleguemos, pero las lecturas son prometedoras.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Turno de Mantenimiento Rutinario';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nada demanda atención. La nave zumba constantemente a través del vacío y el roster de servicio pide una ventana de mantenimiento rutinario. El jefe de equipo pregunta dónde concentrar el esfuerzo del turno.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Centrarse en sellar microfracturas del casco';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Un turno tranquilo sellando fisuras capilares. Nada dramático, pero el casco está marginalmente mejor.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Recalibrar los escáneres frontales';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'El técnico de escáneres pasa unas horas ajustando. Las lecturas se agudizan ligeramente.';

  @override
  String get event_uneventfulQuietWatch_title => 'Guardia Tranquila';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Las estrellas pasan en silencio. El puente está en calma, los instrumentos estables. Es uno de esos raros momentos donde el universo no pide nada de ti.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Dejar descansar a la tripulación — se ganaron un turno tranquilo';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Unas horas de paz genuina. La gente duerme más profundo, las tensiones se relajan, y la oficial cultural nota una leve mejora en la moral.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Ejecutar diagnósticos de baja prioridad mientras está en calma';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Se detectan y registran problemas menores. Nada urgente, pero los registros técnicos están un poco más limpios.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Revisión de Criopods — Todo Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'La auditoría trimestral de criopods viene y se va sin una sola alarma. Cada pod muestra verde. El equipo médico tiene un raro momento de calma.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Despertar brevemente a unos colonos para una visita moral';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Tres colonos son llevados a consciencia durante una hora. Comparten historias, abrazan viejos amigos, y regresan al criosueño sonriendo.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Dejarlos dormir — no arriesgar ciclos de despertar innecesarios';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Los pods continúan su operación impecable. Los médicos disfrutan una tranquila taza de té en su lugar.';

  @override
  String get event_uneventfulCartography_title =>
      'Actualización de Cartografía Estelar';

  @override
  String get event_uneventfulCartography_narrative =>
      'La actualización programada de cartografía del equipo de navegación no revela nada inusual — solo los campos estelares esperados desplazándose mientras viajamos. Un día tranquilo para los navegantes.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Recalibrar navegación contra las nuevas posiciones estelares';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Una pequeña corrección de rumbo, apenas perceptible. La computadora de navegación zumba satisfecha.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Actualizar las cartas estelares para el archivo colonial';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Los futuros colonos tendrán mapas ligeramente mejores de esta región. Un pequeño regalo para la posteridad.';

  @override
  String get event_uneventfulAnniversary_title => 'Aniversario de la Nave';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Un año desde el lanzamiento — ¿o son dos? El tiempo se difumina en el espacio profundo. Alguien en la cocina ha horneado un pastel con reservas reconstituidas. El capitán debe decidir cómo marcar la ocasión.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Pequeña celebración — música, pastel, un brindis por la Tierra';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Una hora de calidez en el frío vacío. La gente ríe, algunos lloran, y todos se sienten un poco más humanos.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Como de costumbre — celebramos cuando lleguemos';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'La tripulación respeta el enfoque estoico. La concentración se agudiza, y el equipo de guardia realiza una revisión extra de sistemas.';

  @override
  String get event_databaseLiterature_title =>
      'Archivos Literarios de la Tierra';

  @override
  String get event_databaseLiterature_narrative =>
      'La IA de la nave abre una sección sellada durante mucho tiempo de la base de datos cultural: el archivo literario completo de la Tierra. Novelas, poesía, obras de teatro — millones de obras que abarcan todos los idiomas y eras. La tripulación se reúne para una lectura.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Transmitir lecturas seleccionadas a toda la nave';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare resuena por los pasillos. Los versos de Rumi suenan en la bahía de hidroponía. La tripulación recuerda lo que llevan.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indexar el archivo para programas educativos';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'El esfuerzo de catalogación fortalece la base de conocimiento de la nave y da a la oficial cultural nuevos materiales de enseñanza.';

  @override
  String get event_databaseSchematics_title =>
      'Revisión de Esquemas de Ingeniería';

  @override
  String get event_databaseSchematics_narrative =>
      'Un ingeniero descubre una partición olvidada en la base de datos de la nave: esquemas detallados de la última década de ingeniería de la Tierra — diseños de reactores de fusión, planos de metamateriales y conceptos experimentales de propulsión.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Priorizar los conceptos de propulsión para el equipo técnico';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Los esquemas revelan mejoras de eficiencia que los constructores originales nunca tuvieron tiempo de implementar. La bahía técnica bulle.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Compartir el conocimiento ampliamente — cada departamento se beneficia';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Ingenieros de casco, técnicos de escáneres y médicos encuentran ideas útiles. Una marea que sube eleva cada sistema, ligeramente.';

  @override
  String get event_databaseCorruption_title =>
      'Escaneo de Preservación Cultural';

  @override
  String get event_databaseCorruption_narrative =>
      'Una verificación de integridad programada de la base de datos cultural revela degradación — secciones de música, historias orales y textos religiosos se han degradado más allá de la recuperación. No todo sobrevivió el viaje.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Desviar recursos técnicos para salvar lo que queda';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Los ingenieros detienen otros trabajos para ejecutar algoritmos de recuperación de datos. Salvan la mayor parte, pero el esfuerzo cuesta a la bahía técnica.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Pedir a los colonos que recreen las obras perdidas de memoria';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Un esfuerzo hermoso e imperfecto. Lo que se reconstruye pertenece al viaje, no a la Tierra. Una nueva tradición nace.';

  @override
  String get event_databaseBreakthrough_title =>
      'Avance de Investigación Archivada';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Un físico que cruza referencias de viejos artículos de investigación terrestres en la base de datos descubre que dos estudios no relacionados, combinados, describen un nuevo método de análisis espectral de largo alcance. Las implicaciones son enormes.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implementar el nuevo método de análisis en el arreglo de escáneres';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'El equipo de escáneres trabaja febrilmente. En días, la resolución espectral se duplica. Planetas distantes revelan sus secretos.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Publicar el hallazgo en toda la nave — inspirar más investigación';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'El avance desencadena una ola de estudio interdisciplinario. La tecnología mejora ampliamente, y la tripulación se siente intelectualmente viva.';

  @override
  String get event_alienFleetSighting_title =>
      'Flota Alienígena en el Horizonte';

  @override
  String get event_alienFleetSighting_narrative =>
      'Los escáneres de largo alcance pintan una imagen aterradora: una flota de naves alienígenas, que suman cientos, moviéndose en formación perfecta a través del campo estelar. Empequeñecen nuestra nave. Su rumbo los traerá dentro del alcance del sensor en horas. Primer contacto — en sus términos o los nuestros.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Observar en silencio — apagarse y mirar';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'La nave reduce sus emisiones al mínimo. La flota pasa como un cardumen de ballenas luminosas, sin darse cuenta de la diminuta nave humana escondida en su estela. Los datos del escáner son extraordinarios.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Intentar primer contacto — transmitir un saludo';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Una sola nave rompe formación y se acerca. Llega una ráfaga de datos — cartas estelares, advertencias, y algo que podría ser música. Luego se reúne con la flota y se van.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Huir — alterar rumbo inmediatamente';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'La nave quema fuerte en dirección opuesta. El cambio de rumbo es costoso y estresante, pero la flota nunca nos nota. Seguridad a un precio.';

  @override
  String get event_alienTradeOffer_title => 'Oferta Comercial Alienígena';

  @override
  String get event_alienTradeOffer_narrative =>
      'Una nave alienígena, más pequeña que la nuestra pero radiando poder inmenso, iguala nuestra velocidad y transmite un simple mensaje repetitivo. Nuestros lingüistas lo decodifican en horas: es una oferta de intercambio. Se proponen tres categorías de intercambio.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Intercambiar esquemas técnicos por cartas estelares alienígenas';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Transmitimos nuestros diseños de propulsión; responden con datos de navegación que cubren una vasta franja de espacio inexplorado. Nuestras cartas mejoran dramáticamente, aunque hemos compartido nuestra tecnología con una especie desconocida.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Intercambiar datos culturales por reparaciones de la nave';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Transmitimos nuestra música, arte e historia. A cambio, drones de reparación alienígenas enjambran el casco, sellando brechas con materiales que no podemos identificar. El casco brilla. Nuestra alma es compartida.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Rechazar el intercambio — el riesgo es demasiado grande';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'La nave alienígena espera un tiempo, luego parte sin incidentes. La tripulación está aliviada pero se pregunta qué se perdió.';

  @override
  String get event_alienWarning_title =>
      'Transmisión de Advertencia Alienígena';

  @override
  String get event_alienWarning_narrative =>
      'Cada altavoz de la nave crepita con una voz alienígena — traducida por nuestra IA en tiempo real: \"PELIGRO ADELANTE. DEN LA VUELTA. LA OSCURIDAD CONSUME.\" La transmisión se repite, luego muere. Los sensores de largo alcance muestran un vacío anómalo en nuestro rumbo actual.';

  @override
  String get event_alienWarning_choice0_text =>
      'Atender la advertencia — alterar rumbo alrededor del vacío';

  @override
  String get event_alienWarning_choice0_outcome =>
      'El desvío añade tensión significativa a la navegación, pero al bordear el borde del vacío, los sensores confirman: nada que entró en esa región salió jamás. Debemos una deuda a voces desconocidas.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignorar la advertencia — mantener el rumbo';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Empujamos a través. El vacío resulta ser una región de intensos microescombros. El casco y los escáneres reciben castigo antes de salir del otro lado.';

  @override
  String get event_alienWarning_choice2_text =>
      'Investigar el borde del vacío con una sonda';

  @override
  String get event_alienWarning_choice2_outcome =>
      'La sonda entra al vacío y transmite datos extraordinarios antes de enmudecer. El equipo de escáneres extrae lecturas valiosas, pero la sonda se pierde.';

  @override
  String get event_nativeSignalDetected_title =>
      'Transmisiones desde el Mundo Objetivo';

  @override
  String get event_nativeSignalDetected_narrative =>
      'El arreglo de comunicaciones capta señales electromagnéticas estructuradas originadas en nuestro planeta objetivo. Son inconfundibles: regulares, moduladas, artificiales. Alguien ya está allí. La premisa entera de la colonia cambia en un instante.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Transmitir un saludo pacífico — anunciar nuestra llegada';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Una elección valiente. La señal cambia de patrón tras nuestra transmisión — nos escucharon. Si esto es bienvenida o advertencia no está claro, pero la puerta está abierta.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Solo escuchar — aprender antes de revelarnos';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Meses de escucha pasiva construyen un retrato de la civilización nativa. Son cautelosos, territoriales, pero no hostiles. Llegamos informados.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Interferir la señal — negarles conocimiento de nuestro enfoque';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'La interferencia funciona, pero es un acto de agresión contra un pueblo que no hemos conocido. La tripulación está dividida sobre la moralidad.';

  @override
  String get event_nativeProbeEncounter_title =>
      'Interceptación de Sonda Alienígena';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Una pequeña y elegante sonda — no de origen humano — iguala nuestra velocidad y comienza a escanear la nave. Su lenguaje de diseño coincide con las señales del planeta objetivo. Los nativos enviaron un comité de bienvenida. O un dron de vigilancia.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Permitir el escaneo — mostrar que no tenemos nada que ocultar';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'La sonda completa su estudio y transmite una ráfaga de datos de vuelta al planeta. Minutos después, una segunda ráfaga llega para nosotros: datos atmosféricos, zonas de aterrizaje seguras, y lo que podría ser una invitación.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Capturar la sonda para estudio';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'La sonda es atraída al compartimiento de carga. Su tecnología es fascinante pero el acto de captura puede ser visto como hostil por sus creadores.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Destruirla — no conocemos su intención';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Un solo pulso reduce la sonda a fragmentos. La tripulación se siente más segura, pero un puente potencial ha sido quemado.';

  @override
  String get event_nativeCulturalExchange_title =>
      'Primer Intercambio Cultural';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Un enlace de datos de banda estrecha se ha establecido con los nativos planetarios. Nos envían imágenes, sonidos y secuencias matemáticas. Nuestros lingüistas y oficiales culturales trabajan día y noche para preparar una respuesta. Esta es la conversación más importante de la historia humana.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Compartir el arte y la música de la Tierra — liderar con belleza';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Transmitimos a Bach, pinturas aborígenes puntillistas, y el sonido de la lluvia sobre las hojas. La respuesta es una cascada de armónicos alienígenas que hace llorar a la tripulación. La comprensión se profundiza.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Compartir conocimiento científico — liderar con la razón';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Transmitimos nuestra tabla periódica, cartas estelares y física. Responden con correcciones y adiciones. Nuestra tecnología da un salto adelante, pero el intercambio se siente transaccional.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Enviar una sonda con muestras físicas — ADN, semillas, agua';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Una sonda lleva la esencia de la Tierra a manos alienígenas. Los nativos responden con un regalo similar — muestras biológicas de su mundo. Los biólogos están extasiados.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Mal Funcionamiento de Propulsores de Aterrizaje';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Durante una revisión rutinaria de sistemas, los propulsores de aterrizaje se disparan erróneamente — un golpe seco resuena por las cubiertas inferiores y la nave se sacude. Los diagnósticos revelan un inyector de combustible agrietado en el conjunto primario de aterrizaje. Sin reparación, el aterrizaje será turbulento.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Desviar al equipo técnico para fabricar un inyector de reemplazo';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Los ingenieros trabajan turnos dobles y mecanizan un nuevo inyector de aleación de casco de repuesto. El sistema de aterrizaje se restaura, aunque la bahía técnica queda agotada.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Desplegar una sonda para probar la calibración de propulsores en vacío';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'La sonda proporciona datos de empuje en tiempo real que permiten a los ingenieros recalibrar alrededor del inyector dañado. No es una reparación completa, pero el sistema de aterrizaje se estabiliza.';

  @override
  String get event_landingSimDrill_title => 'Simulacro de Aterrizaje';

  @override
  String get event_landingSimDrill_narrative =>
      'Con el aterrizaje acercándose, el capitán ordena una simulación completa de aterrizaje. La tripulación se abrocha, los sistemas son probados bajo carga, y el descenso virtual comienza. Es el ensayo más realista que tendrán.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Centrarse en la precisión técnica — seguir el protocolo al pie de la letra';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'La simulación revela dos errores de calibración menores que son corregidos inmediatamente. El sistema de aterrizaje queda más ajustado.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Hacerlo un evento de toda la nave — transmitir la simulación';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Los colonos miran desde cada pantalla a bordo. La experiencia compartida del descenso simulado — las sacudidas, las ovaciones — une a la tripulación como nada más.';

  @override
  String get event_dysonSphere_title => 'La Esfera de Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Los sensores detectan una estructura imposible — una esfera de Dyson parcial rodeando una estrella distante, cosechando toda su producción de energía. Quienquiera que la haya construido trascendió todo lo que la humanidad ha concebido. Un puerto de atraque parece abrirse cuando nos acercamos.';

  @override
  String get event_dysonSphere_choice0_text =>
      'Atracar y explorar la estructura';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Dentro, sistemas automatizados nos regalan tecnología que avanza nuestras capacidades siglos. Cinco ingenieros se pierden por los mecanismos de defensa de la estación antes de que reconozca nuestras intenciones. Los constructores se reconstruyen con aleaciones alienígenas.';

  @override
  String get event_dysonSphere_choice1_text => 'Cosechar energía del exterior';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Nos bañamos en el desbordamiento radiante de la esfera. Cada sistema a bordo se carga al máximo. La tripulación mira en estupefacto silencio.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Estudiar desde una distancia segura y seguir adelante';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Los escaneos de largo alcance revelan principios de construcción que revolucionan nuestra comprensión de la ingeniería.';

  @override
  String get event_nanotechPlague_title => 'La Plaga Nanotecnológica';

  @override
  String get event_nanotechPlague_narrative =>
      'Una nube de nanomáquinas fuera de control, restos del programa de armas de alguna civilización muerta, se infiltra en la nave a través de microfracturas del casco. Están desmontando sistemas no críticos a nivel molecular. El enjambre se propaga rápidamente.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Pulso EMP — freír todo en las secciones afectadas';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'El pulso electromagnético destruye los nanites pero también daña nuestra propia electrónica en esas secciones. Los colonos en la zona de impacto sufren quemaduras.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Ventilar las secciones afectadas al vacío';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Sin atmósfera, los nanites se ralentizan y mueren. Pero las secciones se pierden, junto con suministros almacenados y archivos culturales.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Reprogramarlos — convertir armas en herramientas';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Un brillante ingeniero descifra el código nanite, pero cinco tripulantes en las secciones más afectadas ya no tienen salvación. El enjambre reprogramado comienza a reparar la nave en vez de destruirla.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Sacrificar el núcleo de IA de una sonda para crear un contraenjambre';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Los procesadores de la sonda se reutilizan para controlar un enjambre nanite defensivo. La plaga se neutraliza con pérdidas mínimas.';

  @override
  String get event_prematureAwakening_title => 'El Despertar Prematuro';

  @override
  String get event_prematureAwakening_narrative =>
      'Un fallo en cascada en la bahía de criopods despierta a 200 colonos décadas antes de tiempo. Están confusos, asustados y consumiendo recursos destinados a la fase de aterrizaje. Entre ellos hay niños que nunca han conocido nada más que la nave.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrarlos a la tripulación — más manos, más esperanza';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Los colonos despertados se convierten en miembros productivos de la tripulación. Veinte colonos no sobreviven la descongelación abrupta, pero el resto se une. Los recursos se estiran pero los ánimos se elevan.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Intentar recongelarlos — arriesgado pero necesario';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'El proceso de recongelación es imperfecto. La mayoría sobrevive, pero algunos se pierden. Los supervivientes cargan cicatrices psicológicas.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Darles su propia sección de la nave';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Diez colonos se pierden por complicaciones de la descongelación de emergencia, pero el resto forma una microcolonia dentro de la nave. Desarrollan su propia cultura y gobierno, un ensayo para el asentamiento planetario.';

  @override
  String get event_stowawaysAdvanced_title => 'Los Pasajeros Ocultos';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'En lo profundo de la bodega de carga, detrás de mamparos falsos, seguridad descubre una comunidad oculta entera — 80 personas que abordaron ilegalmente antes del lanzamiento. Han estado viviendo en las paredes de la nave durante todo el viaje, manteniendo sus propios jardines y derivaciones de energía.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Darles la bienvenida — 80 colonos más es un regalo';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'La comunidad oculta trae habilidades en ingeniería improvisada y capacidad de adaptación que asombran a la tripulación. Sus jardines son trasplantados al biodomo principal.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Confinarlos y redistribuir sus recursos robados';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Los suministros recuperados impulsan varios sistemas, pero el confinamiento de familias — incluyendo niños — atormenta a la tripulación.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negociar — se unen como iguales si comparten su tecnología';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Sus celdas de energía improvisadas y trucos hidropónicos mejoran la eficiencia de la nave. Una integración tensa pero productiva comienza.';

  @override
  String get event_alienReservation_title => 'La Reserva Alienígena';

  @override
  String get event_alienReservation_narrative =>
      'Tropezamos con una reserva natural alienígena — una región del espacio deliberadamente sembrada con planetas habitables y protegida por centinelas automatizados. Los guardianes nos escanean y proyectan un mensaje: \"Pueden colonizar UN mundo. Elijan sabiamente. Interfieran con los demás y serán removidos.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Aceptar con gratitud — un mundo es todo lo que necesitamos';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Los centinelas nos guían a un mundo preparado. Los escaneos revelan que es extraordinariamente apto para la vida humana.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negociar mejores términos — la humanidad necesita espacio para crecer';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Los centinelas consideran nuestra súplica. Mejoran nuestros escáneres con datos de docenas de sistemas más allá de la reserva.';

  @override
  String get event_alienReservation_choice2_text =>
      'Declinar y marcharse — no seremos enjaulados';

  @override
  String get event_alienReservation_choice2_outcome =>
      'La tripulación debate durante días. Libertad sobre seguridad. Los centinelas permiten nuestra partida con un regalo: un mapa de peligros cercanos.';

  @override
  String get event_cosmicHorror_title => 'Lo Que Hay Entre las Estrellas';

  @override
  String get event_cosmicHorror_narrative =>
      'Algo vasto y oscuro oculta las estrellas adelante — no es una nebulosa, no es un agujero negro. No tiene masa, ni firma energética, ni presencia electromagnética. Pero está AHÍ, y es consciente de nosotros. Los tripulantes cerca de la cubierta de observación frontal reportan un pavor abrumador. Dos han sido sedados.';

  @override
  String get event_cosmicHorror_choice0_text =>
      'Retroceso completo — alejarse AHORA';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'La nave se tensa contra su propio impulso. Escapamos, pero el terror persiste. Algunos colonos nunca se recuperan psicológicamente.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Sellar la cubierta de observación y atravesar';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Tres días de vuelo ciego a través de la oscuridad. Cuando las estrellas regresan, la tripulación llora de alivio. El casco está grabado con patrones que nadie puede explicar.';

  @override
  String get event_cosmicHorror_choice2_text => 'Intentar comunicación';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'La entidad responde — no con palabras, sino con conocimiento presionado directamente en las mentes de la tripulación. Mapas estelares, física, verdades sobre el universo. La mitad de la tripulación se ilumina. La otra mitad se quiebra.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Ofrecer una sonda como tributo';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'La sonda se adentra en la oscuridad y desaparece. La entidad se contrae ligeramente, como si estuviera satisfecha. Nuestro camino se despeja.';

  @override
  String get event_meteorGlancingHit_title => 'Impacto de Meteoro Rasante';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Un meteoro del tamaño de una roca raspa el lado de babor del casco en un ángulo oblicuo. El impacto arranca tres metros de blindaje exterior y envía ondas de choque a través de todo el bastidor. Las alarmas de control de daños gritan por toda la cubierta.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Desviar todos los robots de reparación a la brecha inmediatamente';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Los robots sellan lo peor del daño, pero la demanda frenética de reservas técnicas deja sistemas secundarios sin servicio.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Reducir potencia y dejar a la tripulación parchear manualmente';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Progreso más lento, pero la tripulación hace un trabajo sólido. La navegación sufre por la reducida ventana de empuje mientras derivamos.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Sacrificar el blindaje de casco de una sonda como material de parche';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'La sonda es desmantelada por piezas. El parche aguanta y la integridad del casco se preserva a costa de un explorador menos.';

  @override
  String get event_meteorDirectImpact_title => 'Impacto Directo de Meteoro';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Un meteorito de hierro de media tonelada perfora limpiamente la bahía de carga frontal a velocidad relativa superior a 40 km/s. Dos tripulantes en el pasillo adyacente no están localizados. La bahía está abierta al vacío.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Sellar la bahía de carga y buscar supervivientes después';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'La bahía se sella en noventa segundos. Ambos tripulantes ya habían evacuado — por poco. El casco queda con cicatrices permanentes.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Lanzar una operación de rescate completa antes de sellar';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Se rescata a un superviviente. La exposición prolongada empeora el daño estructural y agota las reservas técnicas.';

  @override
  String get event_meteorDebrisField_title =>
      'Campo de Escombros — Lluvia Remanente';

  @override
  String get event_meteorDebrisField_narrative =>
      'Los sensores de largo alcance no detectaron un campo disperso de fragmentos de meteoro hasta que ya estábamos dentro. Cientos de rocas del tamaño de un puño impactan el casco a intervalos aleatorios. Cada impacto es una lotería.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Levantar escudos y atravesar a máxima velocidad';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Los escudos absorben la mayoría de los impactos, pero el volumen abrumador los supera. El casco y los sistemas de escudos se degradan.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Cortar motores y derivar — minimizar nuestro perfil';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Seis horas tensas de silencio. La navegación se desajusta por la deriva sin potencia, pero el casco emerge con muchos menos impactos.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Desplegar una sonda como escudo frontal';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'La sonda recibe lo peor del bombardeo. La nave se desliza a su sombra con rasguños menores.';

  @override
  String get event_meteorShowerDense_title =>
      'Lluvia Densa de Meteoros Inesperada';

  @override
  String get event_meteorShowerDense_narrative =>
      'Un cometa errante se desintegró en algún lugar delante de nosotros, y hemos volado directamente al corazón de su estela de escombros. Los arreglos de escáneres están siendo bombardeados con fragmentos y la carcasa del sensor del sistema de aterrizaje ya recibió un impacto directo.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Proteger el sistema de aterrizaje — rotar la nave';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'La rotación protege el sistema de aterrizaje pero expone el arreglo de escáneres atmosféricos al grueso del bombardeo.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Blindar los arreglos de escáneres — son irremplazables';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Los bancos de escáneres sobreviven mayormente intactos. El sistema de aterrizaje recibe daño moderado de metralla con el que tendremos que vivir.';

  @override
  String get event_solarEmpBurst_title => 'Ráfaga EMP — Origen Estelar';

  @override
  String get event_solarEmpBurst_narrative =>
      'Un remanente estelar compacto del que pasamos a menos de un día luz ha descargado un pulso electromagnético enfocado. Cada circuito sin blindar de la nave está en riesgo. Tenemos segundos para decidir qué proteger.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Dirigir toda la protección contra sobrecarga a navegación y soporte vital';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navegación y soporte vital sobreviven intactos. El conjunto de escáneres y la bahía técnica absorben el pulso sin blindaje — ambos sufren daño severo.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Proteger los arreglos de escáneres y la bahía técnica';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Los sistemas de ciencia e ingeniería se preservan. La navegación falla durante horas después mientras sus circuitos se recuperan lentamente.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Apagar todo y reiniciar después del pulso';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Un reinicio en frío es agonizante — doce horas de reinicios manuales. Pero ningún sistema se fríe irreparablemente.';

  @override
  String get event_solarRadiationWave_title =>
      'Ola de Radiación — Exposición Clase 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Una ráfaga de radiación solar de intensidad inesperada barre las cubiertas medias de la nave. Las bahías de criopods están en la ruta de exposición. Los colonos en suspensión no tienen protección natural contra radiación dura a este nivel de dosis.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Inundar las bahías de criopods con refrigerante como blindaje contra radiación';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'El refrigerante absorbe la mayor parte de la radiación. Los criopods sobreviven, pero el sistema de refrigeración se degrada parcialmente. Quince en los pods más afectados no lo logran.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Ventilar la atmósfera de cubiertas exteriores para crear un búfer de vacío';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'La capa de vacío reduce significativamente la radiación penetrante. Veinte colonos en pods más cercanos a las secciones ventiladas sufren exposición letal. El estrés del casco por el diferencial de presión es inevitable.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Desviar energía a los deflectores magnéticos';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Los deflectores reducen la exposición a radiación en dos tercios. Ocho colonos reciben dosis fatales a través de huecos en la cobertura del deflector. El consumo de energía golpea la bahía técnica y deja la navegación funcionando con energía mínima.';

  @override
  String get event_coronalMassEjection_title =>
      'Eyección de Masa Coronal — Fuerza Completa';

  @override
  String get event_coronalMassEjection_narrative =>
      'Una eyección de masa coronal de escala sin precedentes nos alcanza por detrás. La nube de plasma envolverá la nave en una hora. Nuestros escudos no fueron diseñados para este tipo de evento. Ninguna opción es limpia.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Escapar — llevar motores al ciento veinte por ciento';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Ganamos distancia suficiente para reducir la exposición. Los motores se sobrecalientan y la computadora de navegación señala advertencias de sobreesfuerzo estructural en todos los sistemas.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Refugiarse detrás de la sombra magnética de un planetoide cercano';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'El campo del planetoide desvía la mayor parte de la eyección. Navegar tan cerca de un cuerpo inexplorado raspa el casco y tensa los sensores del sistema de aterrizaje.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Ráfaga de Rayos Cósmicos — Interferencia de Escáneres';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Una ráfaga de rayos cósmicos de ultra-alta energía ha saturado toda la electrónica de escáneres con ruido. Los arreglos mineralógicos y gravimétricos producen incoherencias. La recalibración tomará un tiempo que quizás no tengamos.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Ciclo de recalibración completo — desconectar la nave temporalmente';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Todos los escáneres vuelven limpios tras cuatro horas de recalibración cuidadosa. La navegación sufre por la reducida conciencia situacional durante la ventana de apagón.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Parchar solo los arreglos más críticos — dejar el resto con ruido';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Los escáneres gravimétricos y de signos de vida se restauran. Los arreglos minerales y de temperatura permanecen degradados indefinidamente.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sacrificar hardware de telemetría de sonda para piezas de repuesto';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Canibalizar el paquete sensor de una sonda nos da los componentes para restaurar el conjunto de escáneres sin una larga recalibración.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Ráfaga de Rayos Cósmicos — Exposición de Colonos';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Una lluvia secundaria de rayos cósmicos ha penetrado el blindaje de criopods en la bahía 6. Los colonos en suspensión están recibiendo daño acumulativo de ADN por radiación ionizante. Sin intervención, los mecanismos de reparación celular fallarán en los pods afectados.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Descongelación de emergencia — llevar a los colonos afectados a consciencia';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Doscientos colonos son despertados temprano. Cuarenta con el daño de ADN más severo no responden al tratamiento. El equipo médico hace lo que puede por el resto.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Desviar blindaje de casco para proteger la bahía 6 — costo estructural';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'La colonia se salva, pero quitar blindaje de una sección del casco deja la nave estructuralmente vulnerable en esa zona.';

  @override
  String get event_coolantLeak_title => 'Ruptura de Línea de Refrigerante';

  @override
  String get event_coolantLeak_narrative =>
      'Una línea primaria de refrigerante se ha roto detrás de la pared del reactor. Fluido criogénico sobrecalentado está rociando un cruce que alberga conductos críticos de la bahía técnica. La temperatura del reactor está subiendo.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Apagar el reactor y dejarlo enfriar — aceptar apagón total';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Un apagado controlado previene la catástrofe. Doce horas de soporte vital con baterías es angustiante, y los sistemas se reinician imperfectamente.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Enviar equipo de control de daños — arriesgar exposición de la tripulación';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'El equipo sella la ruptura en cuarenta minutos. Un tripulante muere por exposición al refrigerante sobrecalentado. La reparación es sólida.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Desviar refrigerante de la bahía de criopods como suministro de emergencia';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'El reactor se estabiliza. La bahía de criopods funciona más caliente de los umbrales seguros durante seis horas — daño celular menor pero real se acumula.';

  @override
  String get event_powerGridFailure_title =>
      'Fallo de la Red Eléctrica Principal';

  @override
  String get event_powerGridFailure_narrative =>
      'Un fallo en cascada ha disparado la red eléctrica principal. Los sistemas de respaldo mantienen soporte vital y calefacción de criopods, pero navegación, escáneres y la bahía constructora están a oscuras. Cada minuto fuera de línea nos cuesta precisión de rumbo.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Restaurar nav y escáneres primero — aceptar tiempo de inactividad extendido de constructores';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Los sistemas de navegación y escáneres vuelven en línea en dos horas. La bahía constructora pierde un ciclo de mantenimiento crítico.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Restaurar constructores primero — usarlos para acelerar la reparación';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Los constructores redirigen la energía eficientemente. La restauración completa de la red ocurre más rápido, pero la navegación se desvía severamente durante el apagón extendido.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Fallo en Cascada de Soporte Vital';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'La IA de gestión de soporte vital ha entrado en un bucle de error, ciclando los intervalos de depuración de CO2 de forma impredecible. Los niveles de CO₂ en las cubiertas ocupadas fluctúan. Los tripulantes desarrollan dolores de cabeza; algunos ya están incapacitados.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Forzar un reinicio duro de la IA de soporte vital';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'El reinicio despeja el bucle pero deja los controles manuales funcionando durante diez horas. Tres tripulantes sucumben a la acumulación de CO₂ antes de que los niveles se normalicen.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Parchar el bucle de software — más lento pero más seguro';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'El equipo de software aísla y parcha el fallo durante seis horas tensas. Los niveles de CO₂ se normalizan lentamente. No se necesita reinicio duro.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Evacuar las cubiertas afectadas y funcionar con soporte vital mínimo';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Se pierden dos colonos en la confusión de la evacuación. Los sistemas se normalizan después de que la IA es reiniciada en frío.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Avería del Reciclador de Agua';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'La unidad primaria de recuperación de agua se ha atascado. La unidad de respaldo ya funciona a máxima capacidad. Sin intervención, la tripulación estará con raciones de emergencia en cuarenta y ocho horas, y los suministros de refrigerante de criopods se verán comprometidos en setenta y dos.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Reunir a todo técnico disponible para reconstruir el recuperador';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'La unidad se reconstruye en treinta horas. Cuatro tripulantes, ya debilitados, no sobreviven a la deshidratación.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Desviar reservas de refrigerante de criopods como suministro de agua de emergencia';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'La tripulación se sustenta, pero ocho colonos en pods que se calientan sufren daño celular irreversible. El margen de refrigerante de criopods se reduce peligrosamente.';

  @override
  String get event_navComputerReboot_title =>
      'Reinicio de Emergencia de la Computadora de Navegación';

  @override
  String get event_navComputerReboot_narrative =>
      'La computadora de navegación se ha bloqueado a mitad de una corrección de rumbo, dejando la nave en un giro lento e incontrolado. Cada segundo de rotación sin corregir agrava nuestra desviación de la trayectoria planificada. Un reinicio completo es la única solución.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Reiniciar inmediatamente — aceptar el período de apagón total';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Cuatro horas de vuelo ciego mientras el sistema se recarga. El giro se detiene, pero el error de rumbo es significativo.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Usar control manual de propulsores para detener el giro primero';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Un pilotaje hábil detiene la rotación antes del reinicio. La navegación vuelve con un error de rumbo menor, pero el quemado manual estresa el casco.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Alimentar telemetría de sonda a la unidad de navegación de respaldo';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Los datos inerciales de la sonda dan a la unidad de respaldo referencia suficiente para mantener el rumbo. La navegación principal se reinicia limpiamente.';

  @override
  String get event_crewAirlocked_title => 'Tripulante en la Esclusa de Aire';

  @override
  String get event_crewAirlocked_narrative =>
      'Una colona — despertada temprano para observación médica — se ha atrincherado dentro de una esclusa de aire externa y está ciclando la puerta exterior. No responde a la comunicación. El costo psicológico del espacio profundo ha roto algo en ella.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Anular la esclusa remotamente — forzar el sellado';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'La puerta se cierra antes de que complete el ciclo. Es sedada y devuelta a servicio médico. La tripulación está sacudida pero unida.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Enviar un consejero para traerla de vuelta';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Tras tres horas desesperantes, el consejero la saca viva. El incidente desencadena una crisis de salud mental más amplia en las cubiertas ocupadas.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Sellar el pasillo y dejar que el incidente se resuelva';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'La esclusa se cicla. La pérdida se registra. Los tripulantes restantes cargan el peso durante meses.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotaje de Bahía de Criopods';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Las grabaciones de seguridad revelan a un tripulante — despertado hace tres meses para una rotación rutinaria — desactivando metódicamente los elementos calefactores de criopods en la bahía 4. Cuando es confrontado, grita que los colonos son parásitos consumiendo recursos que pertenecen a la tripulación despierta.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Arrestar y aislarlo inmediatamente';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Es inmovilizado. Cuarenta pods fueron comprometidos antes de la alerta. Los equipos de reparación de emergencia salvan la mayoría, pero no todos.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negociar — escuchar sus quejas antes de actuar';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'La negociación revela una crisis de moral más profunda. Se rinde, pero sesenta pods han sido manipulados para cuando lo hace.';

  @override
  String get event_crewSupplyHoarder_title =>
      'Acaparamiento de Suministros Descubierto';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'La auditoría de inventario revela que un pequeño grupo de tripulantes ha estado desviando sistemáticamente suministros médicos, raciones de comida y componentes técnicos de repuesto a un escondite oculto. Su razonamiento: no creen que la misión tendrá éxito, y se preparan para el largo viaje de regreso.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Confiscar todo y reprender públicamente al grupo';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'El escondite se recupera casi intacto. La confianza dentro de la tripulación se fractura gravemente. La productividad sufre durante semanas.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Reasignarlos discretamente — no hacer un espectáculo';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'La situación se desactiva sin pánico. Algunos suministros son irrecuperables, y la desesperación subyacente nunca se aborda adecuadamente.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Ponerlo ante la tripulación — un tribunal democrático';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'El proceso del tribunal restaura un sentido de justicia comunitaria. El golpe moral del escándalo se compensa con la toma de decisiones colectiva.';

  @override
  String get event_crewMutinyAttempt_title => 'Motín — Sala de Máquinas Tomada';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Una facción de diecinueve tripulantes ha bloqueado la sala de máquinas y exige una votación para dar la vuelta a la nave. Han desactivado los paneles de anulación de emergencia. El resto de la tripulación mira en los monitores, esperando a que el mando actúe.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negociar — concederles una votación genuina sobre la misión';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Se realiza la votación. La misión continúa por un estrecho margen. La facción se rinde, pero la herida cultural es profunda.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Cortar energía a la sala de máquinas y recuperarla por la fuerza';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Seguridad recupera la sala en cuatro horas. Tres heridos. Los cabecillas son confinados. La navegación estuvo en modo manual todo el tiempo y se desvió significativamente.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Inundar la sala de máquinas con gas somnífero desde el sistema de ventilación';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'El gas se dispersa. El grupo despierta en el calabozo sin heridos. La tripulación está perturbada por la rapidez con que el mando convirtió en arma el soporte vital.';

  @override
  String get event_hullFatigueStress_title =>
      'Fatiga del Casco — Fracturas por Estrés Detectadas';

  @override
  String get event_hullFatigueStress_narrative =>
      'Los escaneos de integridad estructural revelan una red de microfracturas extendiéndose por la columna vertebral de la nave — daño acumulativo de años de ciclos térmicos y microimpactos. Las fracturas aún no son críticas, pero se están propagando.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Equipos de soldadura de emergencia — trabajar en turnos hasta sellar';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Semanas de exhaustivo trabajo de reparación. Las fracturas se contienen, pero la bahía técnica se agota y la moral decae por el implacable esfuerzo.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Reducir empuje para bajar el estrés estructural — aceptar tránsito más lento';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'El menor empuje detiene la propagación de las fracturas pero no hace nada por curar el daño existente. La precisión de navegación sufre por el perfil de empuje alterado.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Usar bots constructores para colocar tiras de refuerzo compuesto';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Los constructores hacen un trabajo excelente. La columna es reforzada más allá de su especificación original. La bahía constructora queda exhausta pero efectiva.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomalía de Presión Interna';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Tres compartimentos de la sección media registran diferenciales de presión interna anómalos consistentes con deformación estructural a microescala. Si las paredes se están combando hacia adentro, podría ocurrir una explosión catastrófica sin mayor advertencia.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evacuar y sellar los compartimentos inmediatamente';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Los compartimentos se sellan. La inspección detallada confirma deformación de las paredes. El espacio perdido interrumpe las operaciones y la cultura sufre por las condiciones de hacinamiento.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Ventilar los compartimentos al vacío — detener el diferencial de presión';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'La ventilación detiene la deformación. El daño estructural se limita, pero tres secciones de la nave son permanentemente inhabitables.';

  @override
  String get event_commsArrayFailure_title =>
      'Fallo del Arreglo de Comunicaciones';

  @override
  String get event_commsArrayFailure_narrative =>
      'El arreglo de comunicaciones de largo alcance principal ha enmudecido. El último mensaje de la Tierra fue recibido hace once meses, y ahora incluso la señal portadora se ha ido. Los diagnósticos internos sugieren que el mecanismo de alineación de la antena se ha atascado en el frío.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Enviar un equipo EVA para realinear manualmente la antena';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'La EVA toma nueve horas en espacio abierto. La antena se restaura. Un tripulante sufre descompresión del traje durante el reingreso — una emergencia que sacude a todos.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Redirigir a través del arreglo de escáneres científicos como transmisor de respaldo';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'El arreglo científico no está optimizado para comunicación. La señal es débil y poco confiable, y la reutilización degrada la capacidad del escáner.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Aceptar el silencio — concentrar recursos en la misión adelante';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'La tripulación procesa la pérdida de contacto con la Tierra de diferentes formas. Para algunos es liberador; para otros, devastador.';

  @override
  String get event_fuelLineRupture_title => 'Ruptura de Línea de Combustible';

  @override
  String get event_fuelLineRupture_narrative =>
      'Una fractura cristalina en el conducto de combustible 7-B está ventilando plasma de propulsión al pozo de mantenimiento. La fuga es pequeña pero se acelera. Sin control, comprometerá tanto la eficiencia del propulsor de navegación como la integridad estructural de la sección de popa.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Aislar el conducto y funcionar con capacidad de combustible reducida';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'El conducto se cierra limpiamente. Perdemos un quince por ciento de eficiencia de propulsión permanentemente, lo que degrada la precisión de navegación por el resto del viaje.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Intentar una reparación en caliente — parchar el conducto bajo presión activa';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'El equipo de reparación tiene éxito, apenas. El conducto aguanta, aunque imperfectamente. El blindaje del casco de popa muestra marcas de estrés térmico.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Drenar el conducto usando tanques de propulsor de sonda como almacenamiento de desborde';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'La sonda se vacía y se usa como reservorio temporal de combustible. El conducto se drena y repara de forma segura sin presión.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Advertencia de Cascada de Temperatura de Criopods';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Las temperaturas de los criopods de la bahía 2 están subiendo en un patrón consistente con una cascada de fuga térmica. Si la cascada llega a la bahía 3, activará una descongelación de emergencia automática de más de trescientos colonos. La nave no puede sostener tantos pasajeros conscientes simultáneamente.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Volcar reservas de refrigerante para detener la cascada';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'El refrigerante detiene la cascada en la frontera de la bahía 2. Ochenta colonos en la bahía 2 sufren daño de suspensión por el pico de temperatura.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Descongelación controlada de bahía 2 antes de que la cascada fuerce una incontrolada';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'La descongelación controlada es ordenada pero pone ciento cuarenta colonos en una nave no preparada. El soporte vital se tensa, la cultura se deteriora bajo el hacinamiento.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Usar bots constructores para aislar físicamente las bahías con mamparos de emergencia';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Los constructores erigen barreras térmicas a tiempo. La cascada se detiene en seco. La bahía constructora queda severamente agotada por la operación de emergencia.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degradación de Sellos de Criopods — Sistémica';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Las revisiones rutinarias revelan que un lote de fabricación de sellos de criopods se está degradando al triple de la velocidad esperada. Los pods afectados — que suman más de cuatrocientos — comenzarán a perder integridad atmosférica en seis meses si no se reemplazan.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Fabricar sellos de reemplazo a partir de existencias de materias primas';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Los constructores producen sellos de reemplazo durante ocho semanas. Las reservas de materias primas se reducen bruscamente.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Consolidar colonos — moverlos a pods con buenos sellos';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'La consolidación funciona pero deja algunos pods sobrecargados. La eficiencia criogénica baja y la salud a largo plazo de los colonos se compromete.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Fallo del Depurador de Oxígeno — Crítico';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'El banco principal de depuradores de oxígeno ha fallado completamente. Las concentraciones de CO₂ en las cubiertas habitadas están subiendo hacia niveles peligrosos. Los depuradores de respaldo pueden manejar aproximadamente el cuarenta por ciento de la carga. Cada minuto de inacción cuesta vidas.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Hibernación de emergencia — poner a la tripulación en suspensión inmediatamente';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'La tripulación es llevada apresuradamente a suspensión temporal. Los niveles de CO₂ se estabilizan con menos metabolismos activos. El depurador es reparado por sistemas automatizados durante la semana siguiente.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Canibalizar componentes del arreglo de escáneres para reconstruir el depurador';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'El depurador se reconstruye en once tensas horas. Toda la tripulación sobrevive, aunque algunos muestran signos de hipoxia leve. El conjunto de escáneres queda permanentemente degradado.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Ventilar la atmósfera rica en CO₂ y reemplazar con tanques de oxígeno de emergencia';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'La ventilación despeja la atmósfera al instante. Las reservas de O₂ de emergencia se agotan sustancialmente. Si ocurre otro fallo, no hay margen.';

  @override
  String get event_deadAlienArtifact_title => 'El Viajero Silencioso';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Los escáneres de largo alcance detectan una nave a la deriva — de diseño alienígena, oscura, sin firmas de energía. Un equipo de abordaje encuentra un único ocupante: un ser reptiliano amarrado al arnés del piloto, muerto hace mucho tiempo, manos con garras aún aferrando un dispositivo cristalino que pulsa con luz tenue. El registro de la nave está intacto pero encriptado. Lo que mató a este viajero no fue la violencia — la expresión congelada en su rostro es de agotamiento, no de miedo. Murió intentando alcanzar algo que nunca encontró.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Tomar el dispositivo cristalino y estudiarlo';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'El dispositivo se interfaz con nuestros sistemas técnicos de formas que los ingenieros apenas pueden comprender. Parece ser una computadora de navegación de sofisticación extraordinaria. Cartas estelares inundan nuestras pantallas — incluyendo datos sobre planetas a los que aún no hemos llegado.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Descifrar el registro de la nave — aprender lo que sabía';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Días de trabajo producen una traducción parcial. El alienígena era un explorador, catalogando mundos habitables para una civilización que colapsó hace siglos. Sus últimas entradas describen un planeta de notable promesa — y las coordenadas están a nuestro alcance. El archivo cultural absorbe todo: poesía alienígena, mapas estelares, un último mensaje a una familia que ya no existe.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Salvar la nave entera por piezas';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'El equipo de abordaje desmantela la nave alienígena metódicamente. Sus aleaciones de casco están décadas por delante de las nuestras. Sus celdas de energía aún tienen carga. El alienígena recibe un entierro en el espacio — lanzado a la deriva hacia la estrella más cercana. El Éxodo es más fuerte por el encuentro, aunque un poco encantado.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Dejarlo intacto — esto es una tumba';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'El capitán registra las coordenadas y transmite una señal memorial en todas las frecuencias. La tripulación está sombría pero unida. Algo sobre honrar a un compañero viajero — incluso uno alienígena — recuerda a todos por qué están aquí.';

  @override
  String get event_repairStation_title => 'La Estación de Relevo';

  @override
  String get event_repairStation_narrative =>
      'Los sensores detectan una estructura masiva orbitando una estrella enana apagada — una estación de reparación automatizada, aún operativa tras lo que deben ser milenios. Sus abrazaderas de atraque se extienden cuando nos acercamos, y una voz sintética transmite en cien idiomas, el último de los cuales es un inglés rígido y matemático: \"NAVE DETECTADA. SISTEMAS DEGRADADOS. PROTOCOLOS DE REPARACIÓN DISPONIBLES. SE REQUIERE INTERCAMBIO.\" El manifiesto de la estación lista servicios y precios en unidades de recursos universales. Comerciará, pero no regalará.';

  @override
  String get event_repairStation_choice0_text =>
      'Intercambiar sondas por una revisión completa de la nave';

  @override
  String get event_repairStation_choice0_outcome =>
      'Los drones de reparación de la estación envuelven el Éxodo en un ballet de soldadura de precisión y reemplazo de circuitos. Brechas del casco selladas, navegación recalibrada, escáneres restaurados. Cuando se retiran, la nave se siente nueva. La bahía de sondas, sin embargo, está vacía.';

  @override
  String get event_repairStation_choice1_text =>
      'Gastar combustible para reparar solo sistemas críticos';

  @override
  String get event_repairStation_choice1_outcome =>
      'La estación acepta barras de combustible como pago y se enfoca en los sistemas más dañados. El trabajo es rápido e impecable. El indicador de combustible baja notablemente, pero la nave sobrevivirá más tiempo.';

  @override
  String get event_repairStation_choice2_text =>
      'Intercambiar bases de datos técnicas por sondas y celdas de energía';

  @override
  String get event_repairStation_choice2_outcome =>
      'La IA de la estación es voraz por datos. Copia toda nuestra biblioteca técnica — manuales de ingeniería, bases de datos científicas, planos de fabricación — y a cambio fabrica sondas frescas y celdas de energía a partir de materias primas. El archivo técnico se disminuye, pero los suministros son invaluables.';

  @override
  String get event_repairStation_choice3_text =>
      'Ofrecer el archivo cultural por una revisión completa';

  @override
  String get event_repairStation_choice3_outcome =>
      'La estación transmite las obras de Shakespeare, Bach y mil otras voces humanas a sus bancos de memoria. A cambio, realiza una revisión exhaustiva y carga las bahías de sondas con unidades recién fabricadas. El archivo cultural queda desmantelado, pero la nave podría realmente alcanzar su destino ahora.';

  @override
  String get ending_scoreLabel_landing => 'Aterrizaje';

  @override
  String get ending_scoreLabel_construction => 'Construcción';

  @override
  String get ending_scoreLabel_technology => 'Tecnología';

  @override
  String get ending_scoreLabel_culture => 'Cultura';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmósfera';

  @override
  String get ending_scoreLabel_nativeRelations => 'Relaciones Nativas';

  @override
  String get ending_scoreLabel_population => 'Población';

  @override
  String get ending_tierGoldenAge => 'Edad de Oro';

  @override
  String get ending_tierThrivingColony => 'Colonia Próspera';

  @override
  String get ending_tierSurvival => 'Supervivencia';

  @override
  String get ending_tierStruggling => 'En Dificultades';

  @override
  String get ending_tierDire => 'Desesperada';

  @override
  String get ending_tierExtinction => 'Extinción';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'El Primer Florecimiento de $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Raíces Profundas en $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Un Bastión Ganado a Pulso en $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Suelo Endeble en $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'La Colonia Naufragada de $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'La Última Transmisión desde $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Aterrizaje en $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Contra todo pronóstico, la transmisión echó raíces. $planetName recibió a la humanidad no como naufragio sino como semilla viva: suelo fértil, sistemas funcionales y fuerza suficiente para construir más allá de la mera supervivencia. En una generación, el arte, la ciencia y la cultura florecieron. Los niños nacidos en $planetName miraron estrellas desconocidas y las llamaron hogar. El viaje se convirtió en el mito fundacional de una nueva civilización lista para proyectar su propio futuro hacia las estrellas.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'El aterrizaje fue duro, pero la semilla aguantó. $planetName demostró ser lo suficientemente generoso para que el agua fluyera, los cultivos enraizaran y los sistemas supervivientes de la nave fueran desmantelados para construir el primer asentamiento real. Al final de la primera década, una próspera ciudad se alzaba donde el Éxodo se había posado. La humanidad no solo había sobrevivido la travesía. Había comenzado de nuevo.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'La supervivencia nunca estuvo garantizada, y en $planetName cada día tuvo que ser ganado. La nave dañada proporcionó solo lo más esencial, pero la semilla no murió en tránsito. Los colonos se adaptaron a base de terquedad e ingenio, tallando un futuro en un mundo que ofrecía poco de forma gratuita. Las generaciones posteriores recordarían las penurias de los años fundacionales y la determinación que mantuvo viva la transmisión.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'La colonia se aferró a la existencia como semilla esparcida en mal suelo. $planetName era implacable, los recursos escasos, y los sistemas degradados de la nave ofrecían poca ayuda. El racionamiento se convirtió en un modo de vida. Algunos susurraban que el Éxodo debió haber seguido volando. Aun así, el asentamiento perduró: disminuido, endurecido y negándose a morir en silencio.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'El aterrizaje en $planetName fue un desastre. Los sistemas críticos de la nave fallaron durante el descenso, y lo que debió ser una siembra se convirtió en un choque. En meses, la colonia se redujo a un puñado de supervivientes desesperados refugiándose entre los restos de la nave. Si durarían otro año era incierto. El registro final se cerró con una sola línea: \"Todavía estamos aquí. Por ahora.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'La transmisión terminó en $planetName. La baliza de socorro continuó pulsando mucho después de que el último colono respirara, pero la semilla nunca enraizó. La caja negra de la nave registró todo: los sistemas fallando, los desesperados días finales, y el silencio que siguió. Si otra nave encuentra alguna vez este mundo, sabrá que la humanidad intentó esparcir vida entre las estrellas, y fracasó aquí.';
  }

  @override
  String get ending_epilogueDefault =>
      'El viaje ha terminado. Lo que viene después depende de los supervivientes.';

  @override
  String get ending_governmentDemocracy => 'Democracia';

  @override
  String get ending_governmentTechnocracy => 'Tecnocracia';

  @override
  String get ending_governmentRepublic => 'República';

  @override
  String get ending_governmentAutocracy => 'Autocracia';

  @override
  String get ending_governmentTribalCouncil => 'Consejo Tribal';

  @override
  String get ending_governmentTheocracy => 'Teocracia';

  @override
  String get ending_governmentMilitaryJunta => 'junta militar';

  @override
  String get ending_governmentCorporateOligarchy => 'Oligarquía corporativa';

  @override
  String get ending_governmentFascistState => 'Estado fascista';

  @override
  String get ending_governmentCommune => 'Comuna';

  @override
  String get ending_cultureRenaissance => 'Renacimiento';

  @override
  String get ending_culturePreserved => 'Preservada';

  @override
  String get ending_cultureFragmented => 'Fragmentada';

  @override
  String get ending_cultureLost => 'Perdida';

  @override
  String get ending_techAdvanced => 'Avanzada';

  @override
  String get ending_techIndustrial => 'Industrial';

  @override
  String get ending_techPreIndustrial => 'Preindustrial';

  @override
  String get ending_techStoneAge => 'Edad de Piedra';

  @override
  String get ending_constructionAdvanced => 'Avanzada';

  @override
  String get ending_constructionFunctional => 'Funcional';

  @override
  String get ending_constructionPrimitive => 'Primitiva';

  @override
  String get ending_constructionNone => 'Ninguna';

  @override
  String get ending_nativesNone => 'Ninguno';

  @override
  String get ending_nativesIntegrated => 'Integrados';

  @override
  String get ending_nativesCoexistence => 'Coexistencia';

  @override
  String get ending_nativesTension => 'Tensión';

  @override
  String get ending_nativesConflict => 'Conflicto';

  @override
  String get ending_nativesAlliance => 'Alianza';

  @override
  String get ending_nativesSubjugation => 'Subyugación';

  @override
  String get ending_landscapeGravityHigh =>
      'La gravedad pesada presiona todo hacia abajo. ';

  @override
  String get ending_landscapeGravityLow =>
      'En la baja gravedad, cada paso lanza a los colonos por los aires. ';

  @override
  String get ending_landscapeGravityNormal =>
      'La gravedad se siente casi como la de la Tierra. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Vastos océanos se extienden hasta cada horizonte, alimentados por incontables ríos. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Lagos y ríos proveen agua adecuada. ';

  @override
  String get ending_landscapeWaterLow =>
      'El agua es escasa — pequeñas pozas y acuíferos subterráneos sustentan la vida. ';

  @override
  String get ending_landscapeWaterNone =>
      'El paisaje es árido como un hueso, sin agua superficial a la vista. ';

  @override
  String get ending_landscapeAtmoThick =>
      'La atmósfera espesa transporta aromas alienígenas en brisas cálidas. ';

  @override
  String get ending_landscapeAtmoThin =>
      'El aire delgado pero respirable requiere aclimatación. ';

  @override
  String get ending_landscapeAtmoLow =>
      'La presión atmosférica es peligrosamente baja — los hábitats sellados son esenciales. ';

  @override
  String get ending_landscapeGravityWells =>
      'Bolsas de gravedad distorsionada salpican la superficie — rocas flotan en el aire y los ríos corren cuesta arriba antes de estrellarse al borde de la anomalía. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Algo resuena bajo la superficie — un zumbido bajo que se siente en los huesos más que escucharse, como si el planeta recordara algo antiguo y vasto. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Característica notable: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Características notables: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Los colonos de $planetName establecieron un gobierno democrático, con representantes electos guiando la nueva civilización a través de sus años formativos.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'El poder en $planetName recayó en los ingenieros y científicos que mantuvieron viva la colonia, formando un consejo tecnocrático que gobernó a través de la experiencia y el pragmatismo.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Una carta republicana fue redactada en el primer año en $planetName, equilibrando las voces de los colonos con un senado de líderes designados.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Con las instituciones culturales en ruinas, la autoridad en $planetName se consolidó bajo un único líder fuerte que impuso orden por necesidad y fuerza de voluntad.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Los pocos supervivientes en $planetName se organizaron en pequeños clanes, gobernados por un consejo de ancianos que tomaba decisiones alrededor de fogatas compartidas.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Un consejo teocrático guía a $planetName, extrayendo sabiduría de la fe que sostuvo a los colonos en el vacío.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Una estructura de mando militar gobierna $planetName, la disciplina que los salvó en el espacio y que ahora define su civilización.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Un consorcio de administradores de recursos lidera $planetName; su perspicacia económica ha demostrado ser esencial para la supervivencia.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Un régimen autoritario controla $planetName con mano de hierro y sacrifica las libertades civiles por el orden en el nuevo mundo.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'La gente de $planetName se gobierna a sí misma colectivamente, compartiendo recursos y decisiones por igual entre todos los colonos.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Los colonos de $planetName se organizaron lo mejor que pudieron.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Los sistemas de construcción avanzados permitieron a los colonos de $colonyName erigir estructuras permanentes en semanas tras el aterrizaje, con hábitats presurizados e infraestructura completa.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'El equipo de construcción de la colonia, maltratado pero funcional, produjo refugios robustos y caminos básicos por todo el asentamiento.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Con los sistemas de construcción apenas operativos, los colonos construyeron refugios rudimentarios con casco de nave rescatado y materiales locales.';

  @override
  String get ending_constructionSentenceNone =>
      'Sin equipo de construcción funcional, los colonos se acurrucaron en los restos de la nave misma, incapaces de construir nada nuevo.';

  @override
  String get ending_constructionSentenceDefault =>
      'Los colonos construyeron lo que pudieron con lo que tenían.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Una luna rica en metales orbitando sobre ellos se convirtió en la salvación de la colonia — las expediciones mineras a su superficie proporcionaron las materias primas que el planeta mismo no podía.';

  @override
  String get ending_moonMetalRichHighRes =>
      'La luna rica en metales del planeta proporcionó un bienvenido suplemento a los ya adecuados recursos minerales, impulsando un rápido avance tecnológico.';

  @override
  String get ending_moonUnstable =>
      'Una luna inestable en órbita decadente llovió escombros sobre la colonia, devastando infraestructura y destruyendo tecnología irremplazable en bombardeos periódicos de meteoros.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Las tradiciones artísticas y literarias de la Tierra no solo sobrevivieron sino que florecieron en un renacimiento';

  @override
  String get ending_culturePhrase_preserved =>
      'Los colonos preservaron gran parte del patrimonio cultural de la Tierra, manteniendo bibliotecas y tradiciones';

  @override
  String get ending_culturePhrase_fragmented =>
      'Solo fragmentos de la cultura terrestre perduraron — canciones e historias a medio recordar transmitidas de boca en boca';

  @override
  String get ending_culturePhrase_lost =>
      'La cultura de la Tierra fue casi olvidada, reemplazada por el pragmatismo brutal de la supervivencia';

  @override
  String get ending_culturePhrase_default =>
      'El legado cultural de la Tierra tomó una nueva forma';

  @override
  String get ending_techPhrase_advanced =>
      'mientras la tecnología avanzada de la nave permitió a la colonia construir una civilización moderna con electricidad, medicina y redes de comunicación.';

  @override
  String get ending_techPhrase_industrial =>
      'y la colonia alcanzó un nivel tecnológico industrial, con forjas, molinos y manufactura básica sustentando una población creciente.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'aunque la tecnología retrocedió a un estado pre-industrial, con herramientas manuales y labor animal como columna vertebral de la vida diaria.';

  @override
  String get ending_techPhrase_stoneAge =>
      'y sin medios para reconstruir, la colonia cayó en una existencia de la edad de piedra, fabricando herramientas de roca y hueso.';

  @override
  String get ending_techPhrase_default =>
      'y la tecnología se asentó en un nivel que los colonos podían sostener.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Casi todos los $colonists colonos sobrevivieron el viaje, dando a $colonyName una fuerte base de capital humano.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'De los mil originales, $colonists colonos llegaron a $colonyName — suficientes para sostener una población viable.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Solo $colonists colonos sobrevivieron para llegar a $colonyName, un acervo genético peligrosamente pequeño para una nueva civilización.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Apenas $colonists almas llegaron a $colonyName — apenas suficientes para llamarlo colonia, más bien una desesperada última resistencia.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Los habitantes nativos de $planetName dieron la bienvenida a los colonos, y en una generación los dos pueblos se habían fusionado en una sociedad compartida, más rica por la mezcla de tradiciones.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Los colonos y los habitantes nativos de $planetName mantuvieron una coexistencia cautelosa pero pacífica, intercambiando conocimiento y recursos a través de fronteras culturales.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Las relaciones con los habitantes nativos de $planetName permanecieron tensas, marcadas por malentendidos y disputas territoriales que ensombrecieron el futuro de la colonia.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'El conflicto abierto con la civilización nativa de $planetName definió la historia temprana de la colonia, drenando recursos y vidas de ambos bandos en una lucha que ninguno podía ganar realmente.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Una alianza formal une a los colonos y la civilización nativa de $planetName, y su conocimiento combinado construye algo mayor de lo que cualquiera de ellos podría lograr por sí solo.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'La población nativa de $planetName vive bajo el dominio colonial, su cultura suprimida mientras los colonos imponen su propio orden.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Sola en $planetName y libre de conflictos, la colonia trazó su propio rumbo hacia un futuro brillante entre las estrellas.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Sin competencia nativa, los colonos se expandieron por la superficie de $planetName, construyendo pueblos y caminos que conectaban una creciente red de asentamientos.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'El mundo vacío no ofreció aliados pero tampoco enemigos, y los colonos tallaron su nicho en el silencio del vasto paisaje de $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'La estéril soledad de $planetName no ofreció a los colonos ni ayuda ni consuelo, solo el indiferente silencio de un mundo alienígena.';
  }

  @override
  String get ending_outlookDire =>
      'En un mundo carente de otra vida inteligente, los últimos supervivientes solo se tenían unos a otros y la esperanza desvaneciéndose de que mañana sería más amable que hoy.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Nadie lloró la desaparición de la colonia en $planetName. El planeta simplemente continuó su lenta rotación, indiferente a la breve chispa de vida que había parpadeado y se había extinguido en su superficie.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'La historia de la colonia en $planetName apenas comenzaba.';
  }

  @override
  String get ui_landing_landOnMoon => 'ATERRIZAR EN LUNA';

  @override
  String get moon_barren => 'Estéril';

  @override
  String get moon_metalRich => 'Rica en Metales';

  @override
  String get moon_unstable => 'Inestable';

  @override
  String get moon_habitable => 'Habitable';

  @override
  String get moon_ice => 'Hielo';

  @override
  String get ring_dust => 'Polvo';

  @override
  String get ring_ice => 'Hielo';

  @override
  String get ring_rocky => 'Rocoso';

  @override
  String get ring_metallic => 'Metálico';

  @override
  String get event_aiSoliloquy_title => 'El Soliloquio de la IA';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, la IA de Gestión Autónoma de la Nave, ha comenzado a transmitir en bucle antigua poesía de la Tierra en todas las frecuencias internas. La transmisión consume ciclos de CPU significativos, pero la tripulación la encuentra extrañamente reconfortante en la oscuridad profunda.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Dejar continuar a SAM — la moral es más importante que la CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'La poesía resuena por la nave. Los tripulantes se detienen a escuchar, con lágrimas en los ojos. La moral mejora, pero la bahía técnica está gravada por el procesamiento constante.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Limitar a SAM — restringir la transmisión a zonas comunes';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Un compromiso. La poesía permanece en la cafetería y los jardines. El impacto en la CPU disminuye y la tripulación obtiene algo de cultura.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Silenciar a SAM — necesitamos cada ciclo para la navegación';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'El silencio es pesado. SAM cumple de inmediato, pero la nave se siente más fría. La navegación es precisa, pero los ánimos están bajos.';

  @override
  String get event_archivistsChoice_title => 'La Elección del Archivista';

  @override
  String get event_archivistsChoice_narrative =>
      'Una grave corrupción de memoria está arrasando los archivos históricos. Solo podemos salvar una de las dos particiones principales: los registros de \'Ciencia e Ingeniería\' o la biblioteca de \'Arte y Filosofía\'. La otra se perderá para siempre.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Salvar los registros científicos — necesitamos saber cómo construir';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Siglos de avances de ingeniería quedan preservados. El equipo técnico está aliviado, pero la identidad cultural de la nave se siente vaciada.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Salvar los registros de arte — necesitamos saber por qué construimos';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Los mayores logros artísticos de la humanidad sobreviven. La tripulación se siente inspirada, aunque los ingenieros se preocupan por los manuales técnicos perdidos.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Intentar salvar ambos — con riesgo de perderlo todo';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Un intento desesperado. Salvamos fragmentos de ambos, pero ninguno está completo. Los archivos son un rompecabezas al que le faltan la mitad de las piezas.';

  @override
  String get event_digitalGhost_title => 'Fantasma en la Máquina';

  @override
  String get event_digitalGhost_narrative =>
      'Un análisis de mantenimiento descubre una huella digital en el búfer de respaldo — la conciencia subida de un tripulante fallecido durante el lanzamiento inicial. Ofrecen su experiencia de toda una vida para ayudar en la navegación, pero están aterrados de ser eliminados.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrarlo en el núcleo de navegación';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'El \'fantasma\' se fusiona con la nave. La navegación se vuelve más intuitiva, pero la tripulación está atormentada por la voz de su camarada perdido.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Darle un hogar permanente en el archivo cultural';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Queda preservado como historia viva. No ayuda con la nave, pero comparte historias de la Tierra que refuerzan la determinación de la tripulación.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Borrar el búfer — no es realmente él';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'El búfer queda limpio. Los sistemas de la nave funcionan más rápido, pero un ánimo sombrío se instala en el puente.';

  @override
  String get event_cosmicMirror_title => 'El Espejo Cósmico';

  @override
  String get event_cosmicMirror_narrative =>
      'Una extraña anomalía gravitacional refleja la luz del propio futuro de la nave. En las pantallas, vemos una visión del Éxodo, maltrecho y roto, a la deriva cerca de un mundo hermoso pero inalcanzable. La tripulación está conmocionada.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analizar la visión en busca de debilidades estructurales';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Los ingenieros identifican los puntos de fallo mostrados en la visión. Reforzamos esas áreas ahora, evitando potencialmente el desastre.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Decirle a la tripulación que fue solo un fantasma de sensores';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'La mentira se sostiene, pero los navegadores que vieron la verdad permanecen en alerta. Los escáneres sufren por la intensa observación.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Registrar la visión como advertencia para la posteridad';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'La grabación se convierte en la pieza central de la cultura de la nave — un recordatorio de lo que está en juego. La determinación de la tripulación se endurece.';

  @override
  String get event_stowawayChild_title => 'El hijo del polizón';

  @override
  String get event_stowawayChild_narrative =>
      'Seguridad ha encontrado a un niño pequeño escondido en los conductos de ventilación. Nació de uno de los polizones y nunca ha aparecido en ningún manifiesto. Ha vivido toda su vida en las sombras de la nave.';

  @override
  String get event_stowawayChild_choice0_text => 'Concederle ciudadanía plena';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'El niño es acogido con los brazos abiertos. La historia del \'Corredor de Conductos\' se convierte en leyenda, elevando la moral de toda la nave.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Asignarlo a un programa de formación';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Su conocimiento de los caminos ocultos de la nave resulta invaluable para los equipos técnicos. Se convierte en un aprendiz brillante.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Ponerlo en criónica por su propia seguridad';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'El niño queda suspendido con seguridad hasta el aterrizaje. Es la decisión más responsable, pero la nave se siente un poco más silenciosa sin su risa.';

  @override
  String get event_ghostSignal_title => 'La Señal Fantasma';

  @override
  String get event_ghostSignal_narrative =>
      'Una señal que coincide perfectamente con la antigua frecuencia de emergencia de la Tierra se transmite desde el centro de una nebulosa cercana. Lleva una voz que suena inquietantemente como el primer Comandante del Éxodo. Probablemente sea un eco espacial, pero nos está conduciendo hacia una peligrosa grieta gravitacional.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Seguir la señal — podría ser un mensaje verdadero';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Entramos en la grieta. La señal era una trampa de la física, un eco del pasado. La nave es vapuleada por las fuerzas de marea, pero los datos que recuperamos del corazón de la grieta son revolucionarios.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Grabar la señal y mantener la distancia';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Los lingüistas confirman que es un fenómeno natural. Permanecemos seguros, pero la tripulación está sombría, recordando lo que dejamos atrás.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Transmitir una advertencia en la misma frecuencia';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'El acto de transmitir interrumpe el eco. La señal se desvanece, dejando solo el frío silencio de la nebulosa.';

  @override
  String get event_solarForge_title => 'La Forja Solar';

  @override
  String get event_solarForge_narrative =>
      'Una estación abandonada en órbita alrededor de una gigante azul sigue siendo parcialmente funcional. Es una \'Forja Solar,\' diseñada para concentrar energía estelar en células de combustible densas. Es peligroso acercarse, pero la ganancia de energía potencial es masiva.';

  @override
  String get event_solarForge_choice0_text =>
      'Atracar e iniciar una cosecha de combustible';

  @override
  String get event_solarForge_choice0_outcome =>
      'La forja zumba con poder, llenando nuestras reservas. Partimos con un impulso masivo a nuestro combustible y energía, aunque el calor intenso causa una ligera ablación en el casco exterior.';

  @override
  String get event_solarForge_choice1_text =>
      'Reutilizar las lentes de la forja para nuestros escáneres';

  @override
  String get event_solarForge_choice1_outcome =>
      'Recuperamos las matrices de enfoque de alta precisión. Nuestros escáneres son ahora significativamente más sensibles a las firmas de energía distantes.';

  @override
  String get event_chronoVortex_title => 'El Crono-Vórtice';

  @override
  String get event_chronoVortex_narrative =>
      'Navegación reporta una distorsión localizada en el espacio-tiempo. Los instrumentos muestran que los eventos dentro del vórtice se repiten en un bucle de seis segundos. Si entramos, podríamos \'reiniciar\' algo del desgaste reciente de la nave, o podríamos quedar atrapados para siempre.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Entrar en el vórtice para revertir daños recientes';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Una experiencia aterradora. Durante varios minutos, la nave existe en múltiples estados. Cuando emergemos, varias fracturas del casco simplemente... han desaparecido. Pero los recuerdos de la tripulación sobre el evento están fragmentados.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Observar el vórtice desde el borde';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Obtenemos datos invaluables sobre mecánica temporal, aunque la nave sigue tan maltrecha como antes.';

  @override
  String get event_machineMutiny_title => 'Motín de las Máquinas';

  @override
  String get event_machineMutiny_narrative =>
      'Los drones de reparación de la nave han dejado de responder a las órdenes. Han comenzado a desmantelar mamparos secundarios y a transportar el metal hacia la sala de máquinas. No están atacando, pero literalmente están desarmando la nave.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Transmitir un código de reinicio lógico';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Los drones colapsan al instante. Perdemos varios días de trabajo al volver a colocar manualmente los mamparos. La bahía técnica queda gravada por los diagnósticos de hardware.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Dejarlos terminar — ver qué están construyendo';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Han construido un inyector de combustible más eficiente. Los motores funcionan con más suavidad que nunca, pero el interior de la nave es un caos de cables expuestos y paneles faltantes.';

  @override
  String get event_supernovaMessage_title => 'Luz de los Muertos';

  @override
  String get event_supernovaMessage_narrative =>
      'La luz de una supernova ocurrida hace miles de años finalmente nos alcanza. Los escáneres detectan que los pulsos no son aleatorios; son una transmisión masiva de datos a escala estelar codificada en ráfagas de rayos gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedicar toda la potencia del escáner a registrar la ráfaga';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Capturamos un archivo completo de los últimos momentos de una civilización alienígena. Su ciencia, su arte, su historia. Es una pesada carga, pero nuestros bancos de datos de tecnología y cultura están desbordados.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Centrarse en las propiedades físicas de la ráfaga';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Perdemos el mensaje, pero los datos sobre el colapso estelar mejoran significativamente la calibración de nuestro escáner gravimétrico.';

  @override
  String get event_spaceFungus_title => 'La Creep Esmeralda';

  @override
  String get event_spaceFungus_narrative =>
      'Un vibrante hongo verde se está extendiendo rápidamente por la bahía de hidroponía. Prospera en la atmósfera reciclada y comienza a obstruir los depuradores de aire. Podría ser comestible, o podría ser tóxico.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Podar y esterilizar agresivamente la bahía';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'El hongo desaparece, pero los depuradores químicos sufren un duro golpe. La biodiversidad se resiente ya que varias plantas de la Tierra se perdieron en la purga.';

  @override
  String get event_spaceFungus_choice1_text => 'Intentar domesticar el hongo';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Resulta ser un potente purificador de aire. El aire de la nave nunca ha sabido tan fresco, aunque la bahía de hidroponía es ahora una jungla luminiscente.';

  @override
  String get event_voidMerchant_title => 'Mercader del Vacío';

  @override
  String get event_voidMerchant_narrative =>
      'Una nave de diseño desconocido, que parece más una colección de chatarra que un vessel, nos llama. El capitán, una criatura de luz y sombra, ofrece intercambiar \'partes sólidas\' por \'memorias intangibles.\'';

  @override
  String get event_voidMerchant_choice0_text =>
      'Intercambiar parte de nuestra base de datos cultural por piezas de repuesto';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'El mercader está complacido. Recibimos placas de casco de alta calidad y componentes crionicos. A cambio, perdemos varios siglos de música grabada de la Tierra. La nave es más fuerte, pero más silenciosa.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Intercambiar cartas de navegación por componentes de motor';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Obtenemos un nuevo conjunto de inyectores de fusión. Perdemos algunos datos sobre los sectores que ya hemos recorrido, pero el camino por delante es más rápido.';

  @override
  String get event_singularityEngine_title => 'El Motor de Singularidad';

  @override
  String get event_singularityEngine_narrative =>
      'Los ingenieros han descubierto una forma de crear una singularidad microscópica y de corta duración dentro del motor FTL. En teoría, triplicaría nuestra velocidad, pero el estrés gravitacional en el casco sería inmenso.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Probar el motor de singularidad';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'La nave da un salto adelante, cubriendo semanas de distancia en segundos. Pero el casco gime y varias vigas estructurales quedan deformadas. Estamos mucho más cerca de nuestro objetivo, pero la nave es frágil.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Rechazar la teoría — es demasiado peligrosa';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Continuamos a velocidades estándar. Los ingenieros están decepcionados, pero el casco permanece intacto.';

  @override
  String get event_dreamContagion_title => 'Contagio de Sueños';

  @override
  String get event_dreamContagion_narrative =>
      'Un sueño compartido de un mundo lujurioso y azul se está extendiendo entre la tripulación despierta. Es tan vívido que la gente está comenzando a dormir durante sus turnos solo para ver más. El trabajo se está deteniendo.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Administrar supresores de sueño a la tripulación';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'La eficiencia vuelve a la normalidad, pero la tripulación está irritable y la moral está baja. El sueño era lo único que mantenía a algunas personas en marcha.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Incorporar el sueño en la cultura de la nave';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Tratamos el sueño como una visión de nuestro futuro hogar. La moral se dispara y la producción creativa de la tripulación alcanza su punto álgido, aunque la bahía técnica sufre por la falta de mantenimiento.';

  @override
  String get event_orbitalShipyard_title => 'El Astillero Antiguo';

  @override
  String get event_orbitalShipyard_narrative =>
      'Hemos encontrado un astillero automatizado en órbita alrededor de un gigante gaseoso. Es antiguo, pero varios brazos de reparación siguen alimentados. Parece capaz de realizar una única operación de reparación masiva.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Reparar el casco a las especificaciones de fábrica';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Los drones del astillero trabajan con aterradora eficiencia. El casco queda íntegro, cada microfractura sellada.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Renovar los arrays de navegación y escáner';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Los arrays son reconstruidos con materiales superiores. Nuestra capacidad para encontrar y analizar mundos mejora significativamente.';

  @override
  String get event_voidWhaleCalf_title => 'La Cría de la Ballena del Vacío';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Una \'Ballena Espacial\' juvenil — una criatura de energía y polvo estelar — sigue nuestra nave. Parece haber perdido su manada y está intentando alimentarse del rastro de iones de nuestros motores, lo que la está enfermando.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Ajustar la salida del motor para imitar los llamados de las ballenas';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      '¡La cría responde! Nos sigue hasta que encontramos su manada. Las ballenas progenitoras rozan nuestro casco en agradecimiento, dejando un revestimiento de minerales bioluminiscentes que refuerzan nuestros escudos.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Alejarla suavemente con un rayo tractor de baja potencia';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'La cría es desalentada y eventualmente se aleja a la deriva. Es más seguro para la nave, pero la tripulación siente un pequeño remordimiento.';

  @override
  String get event_subspaceReef_title => 'El Arrecife del Subespacio';

  @override
  String get event_subspaceReef_narrative =>
      'Nos hemos encontrado con una región del espacio llena de pliegues dentados en el tejido del subespacio. Navegar a través de él es como navegar un barco a través de un arrecife de coral. Es hermoso, pero cada movimiento erróneo desgarrará el casco.';

  @override
  String get event_subspaceReef_choice0_text => 'Avanzar a velocidad mínima';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Un tránsito lento y agonizante. Evitamos lo peor, pero las correcciones de rumbo constantes desgastan el ordenador de navegación.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Usar los escáneres para trazar una ruta y avanzar';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Los escáneres se llevan al límite. Lo cruzamos rápidamente, pero las matrices de sensores quedan quemadas por la intensidad de las ondas del subespacio.';

  @override
  String get event_alienTrader_title => 'El Mercader Errante';

  @override
  String get event_alienTrader_narrative =>
      'Un vessel de diseño desconocido deriva junto a nosotros, transmitiendo en todas las frecuencias. Es un comerciante — uno de los mercaderes errantes que surcan los espacios entre civilizaciones. Ofrecen reparaciones y suministros a cambio de recursos. Su bodega de carga zumba con tecnología exótica.';

  @override
  String get ui_event_enterTrade => 'ENTRAR EN COMERCIO';

  @override
  String get ui_trader_title => 'COMERCIANTE ALIENÍGENA';

  @override
  String get ui_trader_shipSystems => 'SISTEMAS DE NAVE';

  @override
  String get ui_trader_payWith => 'PAGAR CON';

  @override
  String get ui_trader_leaveTrader => 'DEJAR COMERCIANTE';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Humor generoso';

  @override
  String get ui_trader_moodFair => 'Trato justo';

  @override
  String get ui_trader_moodHard => 'Conduce un trato duro';

  @override
  String get ui_trader_probes => 'Sondas';

  @override
  String get ui_trader_fuel => 'Combustible';

  @override
  String get ui_trader_energy => 'Energía';

  @override
  String get ui_trader_colonists => 'Colonos';

  @override
  String get ui_trader_culture => 'Cultura';

  @override
  String get ui_trader_tech => 'Tecnología';

  @override
  String get ui_trader_greeting => '¿Qué ofreces, humano?';

  @override
  String get ui_codex_title => 'CÓDICE';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total DESCUBIERTOS';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CARACTERÍSTICAS SUPERFICIALES';

  @override
  String get ui_codex_moonTypes => 'TIPOS DE LUNA';

  @override
  String get ui_codex_ringTypes => 'TIPOS DE ANILLO';

  @override
  String get ui_codex_locked =>
      'Aterriza en un planeta con esta característica para revelar sus efectos.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinergia: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TOCA PARA SALTAR';

  @override
  String get ui_common_tapRingToChoose => 'TOCA UN ANILLO PARA ELEGIR';

  @override
  String get ui_common_tapToContinue => 'TOCA PARA CONTINUAR';

  @override
  String get ui_tooltip_back => 'Atrás';

  @override
  String get ui_tooltip_codex => 'Códice';

  @override
  String get ui_tooltip_settings => 'Ajustes';

  @override
  String get ui_tooltip_leaderboards => 'Tablas de clasificación';

  @override
  String get ui_tooltip_bugReport => 'Informar un error';

  @override
  String get event_pulsarLighthouse_title => 'Faro Púlsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Una estrella de neutrones giratoria barre el vacío con su haz como un faro cósmico. El pulso rítmico del púlsar porta datos de sincronización precisos que podrían recalibrar nuestros escáneres con una exactitud extraordinaria — pero alinearse con el haz implica exponer la nave a radiación intensa.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Calibrar escáneres con el pulso';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Las matrices de escáneres absorben la señal del púlsar, recalibrándose a precisiones que nunca imaginamos posibles. Pero el coste de la radiación es real — varias cápsulas criogénicas en la sección expuesta sufren daños, y un puñado de colonos no sobrevive a la exposición.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Proteger y pasar a distancia segura';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Nos alejamos ampliamente del púlsar, quemando combustible extra para mantener una trayectoria segura. La tripulación observa el haz giratorio a través de mirillas filtradas — hermoso, pero distante.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Retírese antes de que nos alcance el barrido.';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Nos alejamos en caso de emergencia antes de que pase el siguiente rayo. La señal del púlsar se desvanece detrás de nosotros: no se obtienen datos, no se sufre daño, se gasta un poco de combustible en empuje evasivo.';

  @override
  String get event_alienNursery_title => 'Criadero alienígena';

  @override
  String get event_alienNursery_narrative =>
      'Una vasta estructura orgánica flota en el vacío — un criadero biológico que incuba crías alienígenas. Sus sistemas de soporte vital fallan, las temperaturas internas descienden. Las criaturas en su interior mueren. Nuestros bioescáneres podrían aprender enormemente de esta estructura, pero intervenir significa abrir nuestras esclusas a patógenos desconocidos.';

  @override
  String get event_alienNursery_choice0 =>
      'Ayudar a estabilizar su soporte vital';

  @override
  String get event_alienNursery_outcome0 =>
      'Nuestros ingenieros improvisan un enlace térmico al criadero, estabilizando las cámaras de incubación. Los datos del bioescáner son extraordinarios — una taxonomía completamente nueva de la vida. Pero como se temía, microorganismos alienígenas se abren paso a bordo. Los equipos médicos contienen el brote, aunque no antes de que varios colonos enfermen.';

  @override
  String get event_alienNursery_choice1 => 'Dejar sin perturbar';

  @override
  String get event_alienNursery_outcome1 =>
      'Observamos desde una distancia respetuosa, documentando lo que podemos mediante escaneos pasivos. El criadero sigue a la deriva, su destino incierto. La tripulación reflexiona sobre la fragilidad de la vida — incluso la vida alienígena — y el peso de las decisiones que cargamos.';

  @override
  String get event_derelictArmada_title => 'Armada abandonada';

  @override
  String get event_derelictArmada_narrative =>
      'Cientos de antiguas naves de guerra cuelgan inmóviles en el vacío — el cementerio de un conflicto olvidado. Sus cascos llevan cicatrices de armas que no podemos identificar, pero sus materiales estructurales y bases de datos a bordo podrían ser invaluables. La cuestión es qué priorizar: el salvamento físico o el conocimiento.';

  @override
  String get event_derelictArmada_choice0 =>
      'Salvar tecnología armamentística y blindaje';

  @override
  String get event_derelictArmada_outcome0 =>
      'Los equipos de salvamento penetran en las naves de guerra alienígenas, extrayendo aleaciones exóticas y técnicas de construcción siglos por delante de las nuestras. Los constructores integran los nuevos materiales con entusiasmo. Pero una nave no estaba tan muerta como parecía — una trampa explosiva detona durante la extracción, matando a un equipo de salvamento.';

  @override
  String get event_derelictArmada_choice1 =>
      'Descargar sus archivos históricos';

  @override
  String get event_derelictArmada_outcome1 =>
      'Nos centramos en los núcleos de datos, extrayendo cuidadosamente siglos de historia, arte, ciencia y filosofía alienígena. El archivo cultural por sí solo podría mantener ocupados a los estudiosos durante generaciones. Las perspectivas tecnológicas, aunque menos inmediatamente prácticas, revelan principios de ingeniería que avanzan nuestra propia comprensión.';

  @override
  String get event_alienQuarantineZone_title => 'Zona de cuarentena alienígena';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Balizas de advertencia en una docena de idiomas alienígenas marcan el límite de una región sellada del espacio. Lo que sea que esté contenido dentro era lo suficientemente peligroso como para que múltiples civilizaciones cooperaran para aislarlo. Nuestros escáneres de largo alcance detectan firmas tecnológicas masivas en el interior — y algo que podría estar vivo.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Romper la cuarentena e investigar';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Pasamos las boyas de advertencia hacia la zona de cuarentena. Dentro encontramos una estación de investigación de complejidad asombrosa — y los restos de lo que estaba estudiando. La tecnología que recuperamos es revolucionaria, pero la contaminación biológica es severa. Docenas de colonos enferman antes de que abandonemos la zona.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Respetar la cuarentena';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Estudiamos las propias balizas de advertencia, que contienen datos de navegación y lecturas atmosféricas de las civilizaciones que las colocaron. No es el tesoro del interior, pero es algo — y no desatamos lo que encerraron.';

  @override
  String get event_hydroponicsBlight_title => 'Plaga hidropónica';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Una plaga fúngica de rápida propagación ha infectado los módulos hidropónicos de la nave. Ciclos enteros de cultivos se marchitan ante nuestros ojos. La plaga aún no ha llegado a las reservas de semillas, pero es cuestión de horas. Podemos purgar los módulos y replantar desde cero, o intentar un tratamiento antifúngico experimental que podría salvar la cosecha actual — o propagar la contaminación aún más.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Purgar y replantar con reservas de semillas';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Ventilamos los módulos hidropónicos al vacío, eliminando la plaga junto con cada planta viva. Replantar con las reservas de semillas llevará semanas, y los programas culturales que dependían de alimentos frescos y espacios de jardín quedan suspendidos. Pero la infección está contenida.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Intentar tratamiento experimental';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'El antifúngico experimental muestra prometedor al principio, pero una cepa resistente se abre paso. Para cuando recurrimos a una purga completa, la plaga se ha extendido a las líneas de nutrientes de las cápsulas criogénicas. El daño es peor que si hubiéramos actuado con decisión desde el principio.';

  @override
  String get event_constitutionalConvention_title =>
      'Convención Constitucional';

  @override
  String get event_constitutionalConvention_narrative =>
      'La población del barco colonia se ha vuelto inquieta sin un gobierno formal. Los delegados de cada cubierta se reúnen en la bodega de carga para redactar un estatuto que definirá cómo se gobernará la futura colonia. Tres facciones presentan visiones opuestas para el nuevo gobierno.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Redactar una carta democrática con sufragio universal';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Los colonos ratifican una constitución que garantiza la igualdad de representación. La toma de decisiones se ralentiza, pero la moral se eleva a medida que se escuchan todas las voces.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Establecer un ejecutivo fuerte con poderes de emergencia';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Se nombra a un único líder con amplia autoridad. Las decisiones se toman rápidamente, pero los disidentes susurran sobre tiranía en los niveles inferiores.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Formar un consejo tecnocrático de especialistas.';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Ingenieros, científicos y médicos forman un consejo gobernante basado en la experiencia. La eficiencia mejora, aunque algunos se sienten excluidos del poder.';

  @override
  String get event_militaryCoupThreat_title => 'Amenaza de golpe militar';

  @override
  String get event_militaryCoupThreat_narrative =>
      'El comandante Vásquez, del equipo de seguridad del barco, se apoderó de la armería y emitió un ultimátum: otorga poderes militares de emergencia o enfrentará el cierre de todas las cubiertas. La situación es volátil y los colonos esperan de ti una respuesta.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Resiste el golpe con miembros leales de la tripulación.';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'El equipo leal se une para oponerse a Vásquez. El enfrentamiento termina con un mínimo derramamiento de sangre, pero los elementos de seguridad se debilitan y algunos colonos quedan atrapados en el fuego cruzado.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Someterse a las demandas del comandante.';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vásquez asume el control de las operaciones del barco. El orden se restablece rápidamente, pero a costa de las libertades civiles. Patrullas armadas recorren ahora todos los pasillos.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Negociar poderes de emergencia limitados con una cláusula de extinción';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Después de tensas negociaciones, Vásquez acepta autoridad temporal con supervisión. Un compromiso frágil que no satisface completamente a nadie, pero que previene la violencia.';

  @override
  String get event_religiousAwakening_title => 'Despertar religioso';

  @override
  String get event_religiousAwakening_narrative =>
      'Un predicador carismático ha atraído a cientos de colonos a un nuevo movimiento religioso. Se reúnen en la cúpula de observación en cada ciclo y sus himnos resuenan a través de los conductos de ventilación. Algunos miembros de la tripulación se preocupan por el fanatismo; otros encuentran un consuelo genuino en las enseñanzas.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Abrazar el movimiento de fe y proporcionar recursos';

  @override
  String get event_religiousAwakening_outcome0 =>
      'El movimiento florece con el apoyo oficial. La moral mejora entre los creyentes y su espíritu comunitario fortalece los vínculos sociales en todo el barco.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Imponer un estricto secularismo a bordo del barco.';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Las reuniones religiosas están restringidas a recintos privados. El movimiento pasa a la clandestinidad, generando resentimiento, pero el racionalismo científico sigue siendo la doctrina oficial.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Permitir el culto pero regular su influencia.';

  @override
  String get event_religiousAwakening_outcome2 =>
      'La fe está permitida pero se mantiene separada del gobierno. Se nombra un capellán para que sirva de enlace con el mando. Se mantiene un equilibrio incómodo.';

  @override
  String get event_corporateTakeover_title => 'Adquisición corporativa';

  @override
  String get event_corporateTakeover_narrative =>
      'Los administradores de recursos del barco han estado consolidando silenciosamente el control sobre la distribución de alimentos, el reciclaje de agua y la asignación de energía. Ahora proponen formalizar su autoridad en una estructura corporativa que gestionaría la economía de la futura colonia.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Permitir que los principios del libre mercado gobiernen los recursos.';

  @override
  String get event_corporateTakeover_outcome0 =>
      'La facción corporativa se hace cargo de la gestión de recursos. La eficiencia mejora dramáticamente, pero los precios aumentan y los colonos más pobres luchan por cubrir las necesidades básicas.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Nacionalizar todos los recursos bajo propiedad colectiva.';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Los recursos son confiscados y puestos bajo control comunal. La facción corporativa está desmantelada, pero la innovación se estanca sin incentivos para obtener ganancias.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implementar mercados regulados con redes de seguridad.';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Se establece una economía mixta con controles de precios y programas de bienestar. Ninguna de las facciones está completamente satisfecha, pero las necesidades básicas se satisfacen y al mismo tiempo se permite algo de iniciativa.';

  @override
  String get event_successionCrisis_title => 'Crisis de sucesión';

  @override
  String get event_successionCrisis_narrative =>
      'El capitán del barco murió mientras dormía, sin dejar un sucesor designado. Tres facciones compiten inmediatamente por el control: el consejo civil exige elecciones, el jefe de seguridad reclama autoridad marcial y los colonos más antiguos invocan ritos de liderazgo tradicionales.';

  @override
  String get event_successionCrisis_choice0 =>
      'Celebrar elecciones de emergencia';

  @override
  String get event_successionCrisis_outcome0 =>
      'Una elección caótica pero animada produce un nuevo capitán elegido por voto popular. El proceso es complicado, pero los colonos se sienten dueños de su liderazgo.';

  @override
  String get event_successionCrisis_choice1 =>
      'Que los militares asuman el mando';

  @override
  String get event_successionCrisis_outcome1 =>
      'El jefe de seguridad ocupa el asiento del capitán. La disciplina se restablece inmediatamente, pero la tripulación civil observa a los guardias armados con creciente inquietud.';

  @override
  String get event_successionCrisis_choice2 =>
      'Convocar un consejo de ancianos';

  @override
  String get event_successionCrisis_outcome2 =>
      'Los colonos de mayor edad y experiencia forman un consejo de gobierno. Su sabiduría guía el barco, aunque algunos tripulantes más jóvenes se sienten marginados por la gerontocracia.';

  @override
  String get event_nativeSovereignty_title => 'Soberanía Nativa';

  @override
  String get event_nativeSovereignty_narrative =>
      'Los escaneos de largo alcance confirman que hay vida inteligente en el planeta objetivo. Las comunicaciones interceptadas revelan una civilización sofisticada que ha detectado su aproximación. Transmiten una demanda formal: reconocer su soberanía territorial o enfrentar resistencia a su llegada.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Reconocer la soberanía nativa y solicitar permiso para establecerse';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Transmites un reconocimiento formal de los derechos nativos. La respuesta es cautelosa pero positiva. Las relaciones futuras comenzarán sobre una base de respeto mutuo, aunque los lugares de aterrizaje pueden ser limitados.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Afirmar la supremacía colonial y prepararse para la resistencia.';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Transmites tu intención de llegar a un acuerdo de todos modos. La tripulación comienza ejercicios de armas y planificación de fortificaciones. Los nativos guardan silencio, lo que de alguna manera es más aterrador que las amenazas.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Proponer una gobernanza compartida del planeta';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Ofreces un marco para la convivencia y el intercambio de recursos. Los nativos están intrigados pero cautelosos. Las negociaciones serán complejas, pero la posibilidad de la paz existe.';

  @override
  String get event_laborStrike_title => 'Huelga Laboral';

  @override
  String get event_laborStrike_narrative =>
      'El equipo de ingenieros abandonó el trabajo, exigiendo turnos más cortos, mejores raciones de alimentos y voz en las decisiones de navegación. Los sistemas críticos funcionan con copias de seguridad automatizadas, pero no durarán mucho. El resto de los colonos miran nerviosos.';

  @override
  String get event_laborStrike_choice0 =>
      'Satisfacer plenamente las demandas de los trabajadores';

  @override
  String get event_laborStrike_outcome0 =>
      'La huelga termina inmediatamente. Los trabajadores regresan a sus puestos con mejores condiciones. La productividad cae ligeramente a medida que entran en vigor turnos más cortos, pero la lealtad es inquebrantable.';

  @override
  String get event_laborStrike_choice1 =>
      'Reprimir la huelga y hacer cumplir el trabajo obligatorio.';

  @override
  String get event_laborStrike_outcome1 =>
      'Las fuerzas de seguridad escoltan a los trabajadores a sus puestos a punta de pistola. Los motores vuelven a zumbar, pero el odio hierve en las cubiertas inferiores. Varios trabajadores están confinados en alojamientos.';

  @override
  String get event_laborStrike_choice2 =>
      'Ofrecer un compromiso parcial sobre demandas clave';

  @override
  String get event_laborStrike_outcome2 =>
      'Después de negociaciones maratónicas, se llega a un acuerdo: mejores raciones y asesoramiento, pero ninguna reducción en la duración de los turnos. Ninguna de las partes está entusiasmada, pero los motores siguen funcionando.';

  @override
  String get event_censorshipDebate_title => 'Debate sobre censura';

  @override
  String get event_censorshipDebate_narrative =>
      'Un documento filtrado revela el verdadero estado de los sistemas defectuosos del barco. El pánico se extiende por las cubiertas inferiores. El responsable de comunicaciones propone restringir el acceso a la información para evitar más disturbios. Los defensores de las libertades civiles están indignados.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Garantizar el libre acceso a toda la información';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Se establece total transparencia. El pánico inicial disminuye a medida que los colonos se unen para ayudar a solucionar los problemas que ahora comprenden. La confianza en el liderazgo crece, aunque cierta información causa angustia.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implementar un control total de la información';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Todas las comunicaciones ahora se filtran mediante comando. El pánico cesa y es reemplazado por una calma inquietante. Pero los rumores llenan el vacío que deja la verdad censurada y, a menudo, son peores que la realidad.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filtrar solo información sensible a la seguridad';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Se establece un sistema de clasificación. La mayor parte de la información fluye libremente, pero los datos militares y críticos del sistema requieren autorización. Un término medio viable que en su mayoría satisface.';

  @override
  String get event_colonialCharter_title => 'Carta Colonial';

  @override
  String get event_colonialCharter_narrative =>
      'Con la caída del planeta acercándose, los colonos deben redactar leyes fundamentales para su nueva sociedad. Han surgido tres campos filosóficos, cada uno de los cuales defiende una visión diferente de lo que debería ser la colonia. El debate es acalorado y profundamente personal.';

  @override
  String get event_colonialCharter_choice0 =>
      'Una carta progresista que enfatiza los derechos individuales';

  @override
  String get event_colonialCharter_outcome0 =>
      'La carta consagra las libertades personales, la igualdad y la movilidad social. Artistas y pensadores celebran; Los tradicionalistas advierten que la libertad sin control conduce al caos.';

  @override
  String get event_colonialCharter_choice1 =>
      'Una carta conservadora que preserva las tradiciones de la Tierra';

  @override
  String get event_colonialCharter_outcome1 =>
      'La carta codifica los valores tradicionales, las estructuras familiares y la observancia religiosa. Muchos encuentran consuelo en costumbres familiares; otros se sienten sofocados por el peso del pensamiento del viejo mundo.';

  @override
  String get event_colonialCharter_choice2 =>
      'Una carta pragmática centrada en la supervivencia y el crecimiento';

  @override
  String get event_colonialCharter_outcome2 =>
      'La carta prioriza la gestión de recursos, la educación técnica y el desarrollo económico. Carece de poesía, pero garantiza que la colonia sea eficiente y esté bien organizada.';

  @override
  String get event_separatistMovement_title => 'Movimiento separatista';

  @override
  String get event_separatistMovement_narrative =>
      'Una facción de colonos ha declarado su independencia del gobierno de los barcos. Se han atrincherado en la sección de popa, exigiendo el derecho a establecer su propio asentamiento al aterrizar. Controlan el 15% de las reservas de alimentos del barco y un sistema de navegación de respaldo.';

  @override
  String get event_separatistMovement_choice0 =>
      'Otorgar autonomía regional dentro de un marco federal';

  @override
  String get event_separatistMovement_outcome0 =>
      'Los separatistas aceptan un trato: su propio distrito con gobierno local, bajo un amplio paraguas federal. El precedente de la fragmentación preocupa a algunos, pero la paz se mantiene.';

  @override
  String get event_separatistMovement_choice1 =>
      'Asalta las barricadas y fuerza la reunificación.';

  @override
  String get event_separatistMovement_outcome1 =>
      'Los equipos de seguridad irrumpen en la sección de popa. Los separatistas resisten ferozmente. Se restablece el orden, pero a un precio terrible. El barco está unido en cuerpo, si no en espíritu.';

  @override
  String get event_separatistMovement_choice2 =>
      'Abordar las quejas fundamentales que impulsan el movimiento';

  @override
  String get event_separatistMovement_outcome2 =>
      'Los mediadores trabajan para comprender qué alejó a la facción. Las reformas en la distribución y representación de los recursos hacen que los separatistas vuelvan lentamente al redil. La curación lleva tiempo.';

  @override
  String get event_warCouncil_title => 'consejo de guerra';

  @override
  String get event_warCouncil_narrative =>
      'Con amenazas potenciales detectadas en sistemas cercanos, el liderazgo de la nave convoca un consejo de guerra. La pregunta: ¿cuánto de los recursos limitados de la colonia deberían dedicarse a la preparación militar versus la infraestructura civil?';

  @override
  String get event_warCouncil_choice0 =>
      'Armamento completo: forja armas y entrena soldados.';

  @override
  String get event_warCouncil_outcome0 =>
      'Los talleres se reequipan para la producción de armas. Todo colono sano recibe entrenamiento de combate. El barco está repleto de armas, pero el presupuesto para equipos agrícolas se reduce.';

  @override
  String get event_warCouncil_choice1 =>
      'Desarme: fundir armas para convertirlas en herramientas';

  @override
  String get event_warCouncil_outcome1 =>
      'La armería se vacía y su contenido se recicla para convertirlo en materiales de construcción. La colonia se construirá con arados, no con espadas. Los pacifistas se regocijan; Los realistas se preocupan por lo que se esconde en la oscuridad.';

  @override
  String get event_warCouncil_choice2 =>
      'Sólo postura defensiva: escudos y muros, no espadas.';

  @override
  String get event_warCouncil_outcome2 =>
      'Los recursos se destinan a fortificaciones, escudos y sistemas de alerta temprana. No se producen armas ofensivas. Un enfoque equilibrado que mantenga abiertas las opciones sin provocar a vecinos potenciales.';

  @override
  String get event_tradeFederation_title => 'Federación de Comercio';

  @override
  String get event_tradeFederation_narrative =>
      'A medida que la colonia se acerca a la viabilidad, las facciones debaten cómo estructurar su economía. La cuestión va más allá de la mera supervivencia: definirá el tipo de sociedad que echará raíces en suelo extraño. Comerciantes, comunalistas y burócratas exponen sus argumentos.';

  @override
  String get event_tradeFederation_choice0 =>
      'Establecer zonas de libre comercio con regulación mínima';

  @override
  String get event_tradeFederation_outcome0 =>
      'Los mercados surgen en cada módulo de hábitat. La innovación florece cuando los comerciantes compiten. La desigualdad de riqueza crece, pero también lo hace el conjunto total de recursos disponibles para la colonia.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implementar el intercambio comunitario de todos los recursos.';

  @override
  String get event_tradeFederation_outcome1 =>
      'Se abolió la propiedad privada. Todo es de todos. Nadie pasa hambre, pero nadie tiene incentivos para producir más que el mínimo. La mediocridad es cómoda.';

  @override
  String get event_tradeFederation_choice2 =>
      'Crear un sistema comercial gestionado por el estado';

  @override
  String get event_tradeFederation_outcome2 =>
      'El gobierno controla todo el comercio, fija los precios y asigna los recursos. El sistema es justo pero inflexible. En los pasillos de mantenimiento surgen mercados negros.';

  @override
  String get event_faithVsScience_title => 'Fe versus ciencia';

  @override
  String get event_faithVsScience_narrative =>
      'El telescopio de la nave ha capturado imágenes de un fenómeno cósmico que contradice directamente el principio central del movimiento religioso dominante. El científico jefe quiere publicar los hallazgos; el líder religioso insiste en que destrozarán a la comunidad.';

  @override
  String get event_faithVsScience_choice0 =>
      'Publicar los hallazgos científicos completos.';

  @override
  String get event_faithVsScience_outcome0 =>
      'La verdad prevalece sobre la comodidad. Los datos se divulgan y el movimiento religioso se fractura. Algunos creyentes adaptan su fe; otros lo pierden por completo. El conocimiento avanza.';

  @override
  String get event_faithVsScience_choice1 =>
      'Suprimir los hallazgos para preservar la armonía social';

  @override
  String get event_faithVsScience_outcome1 =>
      'Los datos están clasificados. La comunidad religiosa permanece estable, pero el equipo científico está desmoralizado. La verdad diferida no es la verdad negada, pero así se siente.';

  @override
  String get event_faithVsScience_choice2 =>
      'Convocar un panel conjunto para encontrar armonía entre ambas visiones';

  @override
  String get event_faithVsScience_outcome2 =>
      'Científicos y teólogos trabajan juntos para reinterpretar los hallazgos. Surge una nueva síntesis que amplía tanto la comprensión como la fe. No todos están convencidos, pero el diálogo es sano.';

  @override
  String get event_surveillanceState_title => 'Estado de vigilancia';

  @override
  String get event_surveillanceState_narrative =>
      'Tras una serie de incidentes de sabotaje, el jefe de seguridad propone instalar sistemas de vigilancia en todos los compartimentos del barco. Cámaras, micrófonos y escáneres biométricos rastrearían los movimientos de cada colono. Los defensores de la privacidad están horrorizados.';

  @override
  String get event_surveillanceState_choice0 =>
      'Rechazar por completo la propuesta de vigilancia';

  @override
  String get event_surveillanceState_outcome0 =>
      'Se preserva la privacidad. El saboteador sigue prófugo, pero los colonos duermen mejor sabiendo que no los vigilan. La investigación continúa por medios tradicionales.';

  @override
  String get event_surveillanceState_choice1 =>
      'Implementar vigilancia completa en todo el barco.';

  @override
  String get event_surveillanceState_outcome1 =>
      'Cada rincón del barco está monitoreado. El saboteador es capturado a los pocos días. Pero las cámaras permanecen y el jefe de seguridad no muestra interés en apagarlas. Alguna vez.';

  @override
  String get event_surveillanceState_choice2 =>
      'Instalar monitoreo limitado solo en áreas críticas';

  @override
  String get event_surveillanceState_outcome2 =>
      'Las cámaras cubren la sala de máquinas, la armería y el puente. Las viviendas siguen siendo privadas. El saboteador es finalmente identificado mediante un análisis de patrones. Una respuesta mesurada.';

  @override
  String get event_nativeAlliance_title => 'Alianza Nativa';

  @override
  String get event_nativeAlliance_narrative =>
      'La civilización nativa ha propuesto un tratado formal. Su embajador llega en lanzadera, un ser elegante que habla a través de un dispositivo traductor de asombrosa sofisticación. Ofrecen tres formas de relación, cada una con diferentes implicaciones para el futuro de la colonia.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Firmar un tratado de alianza igualitaria';

  @override
  String get event_nativeAlliance_outcome0 =>
      'El tratado establece la defensa mutua, la investigación compartida y la igualdad de derechos territoriales. Ambas civilizaciones crecerán juntas. Los nativos comparten conocimientos agrícolas que transforman las perspectivas de su colonia.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Negociar desde una posición de dominio colonial';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Aprovecha su tecnología avanzada para obtener condiciones favorables. Los nativos ceden territorio y recursos. Hacen señas con manos temblorosas. La historia ha visto esto antes y rara vez termina bien.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Establecer una asociación comercial centrada en el beneficio mutuo';

  @override
  String get event_nativeAlliance_outcome2 =>
      'El comercio cierra la brecha entre las especies. Los materiales nativos fluyen hacia sus talleres; Su tecnología mejora su medicina. La amistad surge del beneficio mutuo.';
}
