// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'INICIAR VIAGEM';

  @override
  String get ui_title_dailyVoyage => 'VIAGEM DIÁRIA';

  @override
  String get ui_title_dailyCompleted => 'DIÁRIA COMPLETA';

  @override
  String get ui_title_customSeed => 'SEMENTE PERSONALIZADA';

  @override
  String get ui_title_legacyHub => 'CENTRAL DE LEGADO';

  @override
  String get ui_title_cancel => 'CANCELAR';

  @override
  String get ui_title_startVoyage => 'INICIAR VIAGEM';

  @override
  String get ui_title_seedInvalid =>
      'Código inicial inválido. Use apenas A–Z e 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'SET $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEMENTE: $code';
  }

  @override
  String get ui_voyage_scanners => 'SCANNER';

  @override
  String get ui_voyage_scanPlanet => 'ESCANEAR PLANETA';

  @override
  String get ui_voyage_noEnergy => 'SEM ENERGIA';

  @override
  String get ui_voyage_pressOn => 'AVANÇAR';

  @override
  String get ui_voyage_systemHull => 'Casco';

  @override
  String get ui_voyage_systemNav => 'Navegação';

  @override
  String get ui_voyage_systemCryopods => 'Criopods';

  @override
  String get ui_voyage_systemCulture => 'Cultura';

  @override
  String get ui_voyage_systemTech => 'Tecnologia';

  @override
  String get ui_voyage_systemConstruct => 'Construção';

  @override
  String get ui_voyage_systemShields => 'Escudos';

  @override
  String get ui_voyage_systemLanding => 'Pouso';

  @override
  String get ui_voyage_scannerAtmo => 'Scan Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Scan Grav';

  @override
  String get ui_voyage_scannerMineral => 'Scan Mineral';

  @override
  String get ui_voyage_scannerLife => 'Scan Vida';

  @override
  String get ui_voyage_scannerTemp => 'Scan Temp';

  @override
  String get ui_voyage_scannerWater => 'Scan Água';

  @override
  String get ui_voyage_narrative0 =>
      'Órbita terrestre livre. Criopods estáveis. Anel de arquivo seguro.';

  @override
  String get ui_voyage_narrative1 =>
      'Trânsito pelo sistema externo nominal. Scanners de longo alcance ampliando busca.';

  @override
  String get ui_voyage_narrative2 =>
      'O tráfego do lado terrestre caiu abaixo do limiar de detecção.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Coordenadas arquivadas correspondem a um sistema sinalizado. Ajustando curso.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Os arranjos de scanners ainda estão calibrando para resolução em espaço profundo.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Sistema marcado à frente. Dados da pesquisa anterior permanecem consistentes.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Sinal fraco à frente. Iniciando varredura planetária.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Saída FTL completa. Novo sistema estelar à vista.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Bancos de criopods estáveis. Varredura do setor em andamento.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Novo planeta se resolvendo no arranjo frontal.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Cartografia estelar sinaliza um candidato viável.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Os instrumentos encontraram outro mundo digno de medição.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Travamento de scanner adquirido em um novo alvo.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Cartas de navegação atualizadas. Mundo candidato ao alcance.';

  @override
  String get ui_scan_landHere => 'POUSAR AQUI';

  @override
  String get ui_scan_pressOn => 'AVANÇAR';

  @override
  String get ui_scan_allStatsVerified => 'TODOS OS DADOS VERIFICADOS';

  @override
  String get ui_scan_launchProbe => 'LANÇAR SONDA';

  @override
  String get ui_scan_habitability => 'HABITABILIDADE';

  @override
  String get ui_scan_statAtmos => 'ATMOS';

  @override
  String get ui_scan_statTemp => 'TEMPERATURA';

  @override
  String get ui_scan_statWater => 'ÁGUA';

  @override
  String get ui_scan_statResource => 'RECURSO';

  @override
  String get ui_scan_statGravity => 'GRAVIDADE';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIA';

  @override
  String get ui_scan_statRadiation => 'RADIAÇÃO';

  @override
  String ui_scan_probesCount(int count) {
    return 'SONDAS: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'INCERTEZA: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'ANÁLISE PLANETÁRIA';

  @override
  String get ui_landing_shipStatus => 'STATUS DA NAVE';

  @override
  String ui_landing_fuel(int amount) {
    return 'COMBUSTÍVEL: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'ALERTA: COMBUSTÍVEL BAIXO';

  @override
  String get ui_landing_landingRiskCritical => 'RISCO DE POUSO: CRÍTICO';

  @override
  String get ui_landing_landingRiskElevated => 'RISCO DE POUSO: ELEVADO';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Sistema de pouso severamente danificado. A entrada atmosférica pode destruir carga e colonos.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Sistema de pouso degradado. Espere entrada atmosférica turbulenta com possível dano aos sistemas.';

  @override
  String get ui_landing_riskAssessment => 'AVALIAÇÃO DE RISCO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Sua nave pode suportar ~$remaining encontros a mais';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Sua nave pode não sobreviver a outra viagem';

  @override
  String get ui_landing_surfaceFeatures => 'CARACTERÍSTICAS DE SUPERFÍCIE';

  @override
  String get ui_landing_nameYourColony => 'NOMEIE SUA COLÔNIA';

  @override
  String get ui_landing_establishColony => 'ESTABELECER COLÔNIA';

  @override
  String get ui_landing_pressOnward => 'SEGUIR ADIANTE';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfera';

  @override
  String get ui_landing_statTemperature => 'Temperatura';

  @override
  String get ui_landing_statWater => 'Água';

  @override
  String get ui_landing_statResources => 'Recursos';

  @override
  String get ui_landing_statGravity => 'Gravidade';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversidade';

  @override
  String get ui_landing_statAvgHealth => 'Saúde Méd';

  @override
  String get ui_landing_statHull => 'Casco';

  @override
  String get ui_landing_statNavigation => 'Navegação';

  @override
  String get ui_landing_statCryopods => 'Criopods';

  @override
  String get ui_landing_statCulture => 'Cultura';

  @override
  String get ui_landing_statTech => 'Tecnologia';

  @override
  String get ui_landing_statConstructors => 'Construtores';

  @override
  String get ui_landing_statShields => 'Escudos';

  @override
  String get ui_landing_statLandingSys => 'Sist. Pouso';

  @override
  String get ui_ending_colonyEstablished => 'COLÔNIA ESTABELECIDA';

  @override
  String get ui_ending_colonyScore => 'PONTUAÇÃO DA COLÔNIA';

  @override
  String get ui_ending_colonyProfile => 'PERFIL DA COLÔNIA';

  @override
  String get ui_ending_landscape => 'PAISAGEM';

  @override
  String get ui_ending_voyageRecord => 'REGISTRO DA VIAGEM';

  @override
  String get ui_ending_scoreBreakdown => 'DETALHAMENTO DA PONTUAÇÃO';

  @override
  String get ui_ending_total => 'TOTAL';

  @override
  String get ui_ending_achievementsUnlocked => 'CONQUISTAS DESBLOQUEADAS';

  @override
  String get ui_ending_challengeFriend => 'DESAFIAR AMIGO';

  @override
  String get ui_ending_shareCard => 'COMPARTILHE CARTÃO';

  @override
  String get ui_ending_shareCardDialogTitle => 'Compartilhe sua viagem';

  @override
  String get ui_ending_shareCardShare => 'COMPARTILHAR';

  @override
  String get ui_ending_shareCardCancel => 'CANCELAR';

  @override
  String get ui_ending_copySeed => 'COPIAR SEMENTE';

  @override
  String get ui_ending_viewLegacy => 'VER LEGADO';

  @override
  String get ui_ending_newVoyage => 'NOVA VIAGEM';

  @override
  String get ui_ending_achievementFirstLanding => 'Primeiro Pouso';

  @override
  String get ui_ending_achievementGoldenAge => 'Era de Ouro';

  @override
  String get ui_ending_achievementSurvivor => 'Sobrevivente';

  @override
  String get ui_ending_achievementExplorer => 'Explorador';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfeccionista';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Sobrevivente de Mundo Letal';

  @override
  String get ui_ending_achievementFullCrew => 'Tripulação Completa';

  @override
  String get ui_ending_achievementProbeMaster => 'Mestre das Sondas';

  @override
  String get ui_ending_achievementIronHull => 'Casco de Ferro';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Salto de Fé';

  @override
  String get ui_gameOver_missionFailed => 'MISSÃO FRACASSADA';

  @override
  String get ui_gameOver_voyageRecord => 'REGISTRO DA VIAGEM';

  @override
  String get ui_gameOver_encountersSurvived => 'ENCONTROS SOBREVIVIDOS';

  @override
  String get ui_gameOver_probesRemaining => 'SONDAS RESTANTES';

  @override
  String get ui_gameOver_colonistsRemaining => 'COLONOS RESTANTES';

  @override
  String get ui_gameOver_finalShipHealth => 'SAÚDE FINAL DA NAVE';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANETAS IGNORADOS';

  @override
  String get ui_gameOver_damageTaken => 'DANO RECEBIDO';

  @override
  String get ui_gameOver_fuelRemaining => 'COMBUSTÍVEL RESTANTE';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGIA RESTANTE';

  @override
  String get ui_gameOver_challengeFriend => 'DESAFIAR AMIGO';

  @override
  String get ui_gameOver_viewLegacy => 'VER LEGADO';

  @override
  String get ui_gameOver_newVoyage => 'NOVA VIAGEM';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nEu não sobrevivi... $reason.\nAcha que consegue fazer melhor na mesma viagem?\nstellarbroadcast://play?seed=$seedCode\n\nNão tem o app?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'O último colono morreu em criosono — uma falha em cascata que nenhum protocolo de emergência pôde prevenir. O Êxodo navegou adiante, uma nave fantasma carregando apenas sistemas automatizados e silêncio congelado. Sua missão havia falhado não em um momento de catástrofe, mas no lento desgaste de vidas humanas, uma por uma, até que nenhuma restasse.';

  @override
  String get ui_gameOver_epilogueHull =>
      'O casco cedeu em silêncio — fadiga metálica agravada por incontáveis micro-impactos até que a nave não pudesse mais se manter unida. A atmosfera sangrou para o vazio. A nave colonial Êxodo se despedaçou, seus destroços juntando-se aos antigos campos de detritos entre as estrelas. Nenhum sinal de socorro foi jamais recebido.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Sem navegação, o Êxodo vagou pelo espaço inexplorado — cartas estelares inúteis, correções de curso impossíveis. A nave navegou pela escuridão, seus passageiros adormecidos sem saber que seu destino havia sido substituído pela eternidade. Alguns dizem que a nave ainda vaga, um navio fantasma na noite infinita.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Um por um, os criopods falharam — uma cascata que nenhum protocolo de emergência pôde deter. Os colonos nunca acordaram. O Êxodo continuou seu curso programado, uma nave tumba carregando apenas silêncio para qualquer mundo que eventualmente alcançasse. Um monumento a um sonho que morreu em sono congelado.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'O Êxodo silenciou. Sua missão, sua tripulação, sua carga de esperança humana — tudo perdido para a indiferente vastidão entre as estrelas. Talvez um dia outra civilização encontre os destroços e se pergunte que espécie corajosa ousou cruzar o vazio.';

  @override
  String get ui_settings_title => 'CONFIGURAÇÕES';

  @override
  String get ui_settings_music => 'MÚSICA';

  @override
  String get ui_settings_soundEffects => 'EFEITOS SONOROS';

  @override
  String get ui_settings_haptics => 'VIBRAÇÃO';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Seja Premium';

  @override
  String get ui_settings_enabled => 'Ativado';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Idioma';

  @override
  String get ui_settings_systemDefault => 'Padrão do sistema';

  @override
  String get ui_settings_statsPosition => 'Posição de estatísticas e botões';

  @override
  String get ui_settings_statsLeft => 'ESQUERDA';

  @override
  String get ui_settings_statsRight => 'CERTO';

  @override
  String get ui_legacy_title => 'CENTRAL DE LEGADO';

  @override
  String get ui_legacy_commanderStats => 'ESTATÍSTICAS DO COMANDANTE';

  @override
  String get ui_legacy_highScores => 'MELHORES PONTUAÇÕES';

  @override
  String get ui_legacy_upgrades => 'MELHORIAS';

  @override
  String get ui_legacy_achievements => 'CONQUISTAS';

  @override
  String get ui_legacy_voyageLog => 'DIÁRIO DE BORDO';

  @override
  String get ui_legacy_voyages => 'VIAGENS';

  @override
  String get ui_legacy_bestScore => 'MELHOR PONTUAÇÃO';

  @override
  String get ui_legacy_legacyPts => 'PONTOS LEGADO';

  @override
  String get ui_legacy_completed => 'COMPLETADO';

  @override
  String get ui_legacy_notYetPlayed => 'AINDA NÃO JOGADO';

  @override
  String get ui_legacy_dailyHistory => 'HISTÓRICO DIÁRIO';

  @override
  String get ui_premium_goPremium => 'SEJA PREMIUM';

  @override
  String get ui_premium_subtitle => 'Apoie a missão. Eleve seu comando.';

  @override
  String get ui_premium_removeAds => 'Remova todos os anúncios para sempre';

  @override
  String get ui_premium_supportIndie => 'Apoie o desenvolvimento independente';

  @override
  String get ui_premium_exclusiveTitle => 'Título de comandante exclusivo';

  @override
  String get ui_premium_priorityFeatures =>
      'Solicitações de recursos prioritários';

  @override
  String get ui_premium_lifetime => 'Vitalício';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'MELHORIA DE SCANNER';

  @override
  String get ui_scannerUpgrade_subtitle => 'Escolha um scanner para melhorar';

  @override
  String get ui_scannerUpgrade_skip => 'PULAR';

  @override
  String get ui_scannerUpgrade_max => 'MÁX';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosférico';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimétrico';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Sinais Vitais';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperatura';

  @override
  String get ui_scannerUpgrade_water => 'Água';

  @override
  String get ui_event_continue => 'CONTINUAR';

  @override
  String get ui_event_tapToSkip => 'TOQUE PARA PULAR';

  @override
  String get ui_event_colonists => 'COLONOS';

  @override
  String get ui_event_landing => 'POUSO';

  @override
  String get ui_event_atmScan => 'SCAN ATMO';

  @override
  String get ui_event_gravScan => 'SCAN GRAV';

  @override
  String get ui_event_minScan => 'SCAN MIN';

  @override
  String get ui_event_lifeScan => 'SCAN VIDA';

  @override
  String get ui_event_tempScan => 'SCAN TEMP';

  @override
  String get ui_event_h2oScan => 'SCAN H2O';

  @override
  String get onboarding_page0_title => 'A Última Esperança da Humanidade';

  @override
  String get onboarding_page0_description =>
      'A Terra está morrendo. Os governos do mundo reuniram suas últimas reservas para construir uma última nave — um navio colonial carregando os remanescentes da humanidade rumo às estrelas.';

  @override
  String get onboarding_page1_title => 'Busque um Novo Lar';

  @override
  String get onboarding_page1_description =>
      'Navegue o vazio inexplorado entre as estrelas. Escaneie mundos alienígenas, enfrente perigos cósmicos e tome decisões impossíveis.';

  @override
  String get onboarding_page2_title => 'Seu Legado Perdura';

  @override
  String get onboarding_page2_description =>
      'Cada viagem ensina algo novo à humanidade. Ganhe Pontos de Legado para desbloquear melhorias permanentes e grave seu nome nas estrelas.';

  @override
  String get onboarding_page3_title => 'Sua Privacidade, Sua Escolha';

  @override
  String get onboarding_page3_description =>
      'Escolha como deseja vivenciar Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'utopia';

  @override
  String get planet_tierParadise => 'Paraíso';

  @override
  String get planet_tierHabitable => 'Habitável';

  @override
  String get planet_tierHarsh => 'Hostil';

  @override
  String get planet_tierHostile => 'Agressivo';

  @override
  String get planet_tierDeathWorld => 'Mundo Letal';

  @override
  String get planet_featurePlantLife => 'Vida Vegetal';

  @override
  String get planet_featureEdiblePlants => 'Plantas Comestíveis';

  @override
  String get planet_featurePoisonousPlants => 'Plantas Venenosas';

  @override
  String get planet_featureUnicellularLife => 'Vida Unicelular';

  @override
  String get planet_featureDangerousFauna => 'Fauna Perigosa';

  @override
  String get planet_featureTameableFauna => 'Fauna Domesticável';

  @override
  String get planet_featureAirtightCaves => 'Cavernas Herméticas';

  @override
  String get planet_featureInsulatedCaves => 'Cavernas Isoladas';

  @override
  String get planet_featureBarrenMoon => 'Lua Estéril';

  @override
  String get planet_featureMetalRichMoon => 'Lua Rica em Metais';

  @override
  String get planet_featureUnstableMoon => 'Lua Instável';

  @override
  String get planet_featureOutstandingBeauty => 'Beleza Excepcional';

  @override
  String get planet_featureOutstandingUgliness => 'Feiura Excepcional';

  @override
  String get planet_featureAncientRuins => 'Ruínas Antigas';

  @override
  String get planet_featureMonuments => 'Monumentos';

  @override
  String get planet_featureRapidRotation => 'Rotação Rápida';

  @override
  String get planet_featureSlowRotation => 'Rotação Lenta';

  @override
  String get planet_featureVolcanicActivity => 'Atividade Vulcânica';

  @override
  String get planet_featureTectonicInstability => 'Instabilidade Tectônica';

  @override
  String get planet_featureElectricalStorms => 'Tempestades Elétricas';

  @override
  String get planet_featureToxicSpores => 'Esporos Tóxicos';

  @override
  String get planet_featureDeepOceans => 'Oceanos Profundos';

  @override
  String get planet_featureGeothermalVents => 'Fontes Geotermais';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnetosfera Forte';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnetosfera Fraca';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organismos Simbióticos';

  @override
  String get planet_featureGravityWells => 'Poços Gravitacionais';

  @override
  String get planet_featureSubspaceEchoes => 'Ecos Subespaciais';

  @override
  String get planet_featureBioluminescentLife => 'Vida Bioluminescente';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna Aquática';

  @override
  String get planet_featureFloatingIslands => 'Ilhas Flutuantes';

  @override
  String get planet_featureCrystalCaverns => 'Cavernas de Cristal';

  @override
  String get planet_featureLavaTubes => 'Tubos de Lava';

  @override
  String get planet_featureIceTunnels => 'Túneis de Gelo';

  @override
  String get planet_featureOrbitalWreckage => 'Destroços Orbitais';

  @override
  String get planet_featureMegastructuralFragments =>
      'Fragmentos Megaestruturais';

  @override
  String get planet_featureAncientObservatory => 'Observatório Antigo';

  @override
  String get planet_featureExtremeSeasons => 'Estações Extremas';

  @override
  String get planet_featureCryovolcanism => 'Criovulcanismo';

  @override
  String get planet_featureFloatingKelpForests =>
      'Florestas de Algas Flutuantes';

  @override
  String get planet_featureSingingCrystals => 'Cristais Cantantes';

  @override
  String get planet_featureFertileSoil => 'Solo Fértil';

  @override
  String get planet_featureHelium3Deposits => 'Depósitos de Hélio-3';

  @override
  String get planet_featureExoticIsotopes => 'Isótopos Exóticos';

  @override
  String get planet_featureMedicinalFlora => 'Flora Medicinal';

  @override
  String get planet_featurePerpetualAurora => 'Aurora Perpétua';

  @override
  String get planet_featurePetrifiedMegaflora => 'Megaflora petrificada';

  @override
  String get planet_featureUndergroundRivers => 'Rios subterrâneos';

  @override
  String get planet_featureObsidianPlains => 'Planícies Obsidianas';

  @override
  String get planet_featureSaltFlats => 'Salinas';

  @override
  String get planet_featureCarnivorousFlora => 'Flora Carnívora';

  @override
  String get planet_featureGhostCities => 'Cidades Fantasma';

  @override
  String get planet_featureArchiveVaults => 'Arquivar cofres';

  @override
  String get planet_featureSinkholeFields => 'Campos de sumidouros';

  @override
  String get planet_featureApexPredator => 'Predador Ápice';

  @override
  String get ui_monthJan => 'JANEIRO';

  @override
  String get ui_monthFeb => 'FEV';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'ABR';

  @override
  String get ui_monthMay => 'MAI';

  @override
  String get ui_monthJun => 'JUNHO';

  @override
  String get ui_monthJul => 'JULHO';

  @override
  String get ui_monthAug => 'AGO';

  @override
  String get ui_monthSep => 'SET';

  @override
  String get ui_monthOct => 'OUT';

  @override
  String get ui_monthNov => 'NOVEMBRO';

  @override
  String get ui_monthDec => 'DEZ';

  @override
  String get event_asteroidField_title => 'Campo de Asteroides';

  @override
  String get event_asteroidField_narrative =>
      'Scanners de longo alcance detectam um denso campo de asteroides diretamente em nossa rota de voo. Navegação calcula duas opções: uma travessia arriscada pelo corredor mais estreito, ou um longo desvio que esgotará nossas reservas de combustível e estressará o conjunto de navegação.';

  @override
  String get event_asteroidField_choice0_text => 'Atravessar o corredor';

  @override
  String get event_asteroidField_choice0_outcome =>
      'A nave treme enquanto micro-impactos atingem o casco. Conseguimos passar, mas não ilesos.';

  @override
  String get event_asteroidField_choice1_text => 'Tomar o caminho mais longo';

  @override
  String get event_asteroidField_choice1_outcome =>
      'O desvio queima combustível precioso e desgasta o computador de navegação, mas o casco permanece intacto.';

  @override
  String get event_asteroidField_choice2_text =>
      'Usar drones de mineração para abrir caminho';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Os drones abrem um canal seguro e coletam minerais úteis, mas a operação drena a baía técnica.';

  @override
  String get event_asteroidField_choice3_text => 'Lançar uma sonda como isca';

  @override
  String get event_asteroidField_choice3_outcome =>
      'A sonda atrai os aglomerados mais densos para longe da nave. Passamos com apenas arranhões leves.';

  @override
  String get event_solarFlare_title => 'Erupção Solar Iminente';

  @override
  String get event_solarFlare_narrative =>
      'Uma estrela próxima entra em erupção com uma ejeção coronal massiva. A onda de partículas carregadas nos alcançará em minutos. Podemos desviar energia para os escudos, abrigar colonos no núcleo ou resistir.';

  @override
  String get event_solarFlare_choice0_text =>
      'Desviar toda energia para escudos';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Os escudos aguentam, mas a sobrecarga queima sistemas secundários.';

  @override
  String get event_solarFlare_choice1_text =>
      'Mover colonos para o núcleo blindado';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Os colonos sobrevivem ilesos, mas os conveses externos sofrem danos por radiação.';

  @override
  String get event_solarFlare_choice2_text => 'Resistir — todos se preparem';

  @override
  String get event_solarFlare_choice2_outcome =>
      'A erupção atinge forte. Sistemas oscilam, mas nada catastrófico. O moral, no entanto, sofre.';

  @override
  String get event_solarFlare_choice3_text =>
      'Lançar uma sonda para medir a frente de onda';

  @override
  String get event_solarFlare_choice3_outcome =>
      'A sonda transmite dados precisos da frente de onda, permitindo-nos posicionar a nave de forma ideal. O dano ao scanner é mínimo.';

  @override
  String get event_nebulaPassage_title => 'Passagem pela Nebulosa';

  @override
  String get event_nebulaPassage_narrative =>
      'Uma nebulosa brilhante se estende pelo nosso caminho. Atravessá-la poderia recarregar nossas células de energia mas pode interferir com os arranjos de scanners. Contorná-la é seguro mas lento.';

  @override
  String get event_nebulaPassage_choice0_text => 'Voar através da nebulosa';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Os gases ionizados da nebulosa recarregam as células de energia mas descalibram nossos scanners.';

  @override
  String get event_nebulaPassage_choice1_text => 'Contornar a borda';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Obtemos uma carga parcial com mínima interferência. Um compromisso seguro.';

  @override
  String get event_microMeteorite_title => 'Tempestade de Micro-Meteoritos';

  @override
  String get event_microMeteorite_narrative =>
      'Um enxame de micro-meteoritos, invisíveis até segundos atrás, está destruindo a blindagem frontal do casco. As equipes de controle de danos estão se mobilizando.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Rotação de emergência — apresentar a popa blindada';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'A manobra funciona. A blindagem da popa absorve o pior, mas os giroscópios de navegação protestam violentamente.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Lançar drones de reparo durante a tempestade';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Os drones reparam o casco em tempo real mas vários são perdidos. As reservas técnicas se esgotam.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Detonar uma sonda para dispersar o enxame';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'A explosão da sonda dispersa o aglomerado de micro-meteoritos. Apenas alguns fragmentos alcançam o casco.';

  @override
  String get event_gravityWell_title => 'Poço Gravitacional Desconhecido';

  @override
  String get event_gravityWell_narrative =>
      'A nave se sacode quando um poço gravitacional invisível nos arrasta para fora do curso. Os motores lutam contra a atração. Podemos queimar a toda potência para escapar, ou fazer uma manobra de estilingue para ganhar velocidade ao custo de estresse estrutural.';

  @override
  String get event_gravityWell_choice0_text => 'Queima total — libertar-se';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Os motores rugem e o casco range, mas nos libertamos completamente.';

  @override
  String get event_gravityWell_choice1_text => 'Manobra de estilingue';

  @override
  String get event_gravityWell_choice1_outcome =>
      'O estilingue funciona perfeitamente. Ganhamos velocidade, mas as forças G estressam os selos dos criopods.';

  @override
  String get event_crewUnrest_title => 'Agitação da Tripulação';

  @override
  String get event_crewUnrest_narrative =>
      'Uma facção de colonos despertos solicita ao Conselho de Administradores que sejam liberados do criosono permanentemente. Argumentam que viver em um crepúsculo congelado é desumano. A equipe de Criovigilância alerta que acordar mais bocas significa queimar suprimentos mais rápido.';

  @override
  String get event_crewUnrest_choice0_text =>
      'Permitir descongelamento voluntário';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'O moral dispara enquanto famílias se reúnem no mundo desperto, mas o consumo de recursos dispara.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Negar o pedido — segurança primeiro';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Os colonos obedecem, mas o ressentimento cresce nos corredores.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Compromisso — ciclos de descongelamento rotativos';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Uma solução equilibrada. Todos têm algum tempo despertos, mas o ciclo dos criopods adiciona desgaste.';

  @override
  String get event_stowaway_title => 'Clandestino Descoberto';

  @override
  String get event_stowaway_narrative =>
      'Os auditores do Escritório de Manifesto encontram uma pessoa não registrada escondida no compartimento de carga 7. Ela afirma ser uma geneticista que teve seu lugar negado na lista de lançamento. Suas habilidades podem ser inestimáveis — ou ela pode ser uma sabotadora.';

  @override
  String get event_stowaway_choice0_text =>
      'Recebê-la a bordo — precisamos de toda mente';

  @override
  String get event_stowaway_choice0_outcome =>
      'A Dra. Vasquez se prova brilhante. Sua expertise genética melhora a eficiência dos criopods, embora alguns tripulantes desconfiem dela.';

  @override
  String get event_stowaway_choice1_text =>
      'Confiná-la — confiança precisa ser conquistada';

  @override
  String get event_stowaway_choice1_outcome =>
      'Ela coopera do confinamento e eventualmente ganha acesso limitado. A tripulação se sente mais segura.';

  @override
  String get event_stowaway_choice2_text => 'Colocá-la em criosono até o pouso';

  @override
  String get event_stowaway_choice2_outcome =>
      'Uma solução pragmática. Suas habilidades são preservadas para depois, mas o debate ético divide a tripulação.';

  @override
  String get event_mutinyBrewing_title => 'Motim em Formação';

  @override
  String get event_mutinyBrewing_narrative =>
      'A Guarda da Ponte intercepta mensagens de um grupo de oficiais planejando tomar o comando e mudar o curso para um sistema mais próximo e menos habitável. Acreditam que o rumo atual é uma sentença de morte.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Confrontá-los publicamente — transparência acima de tudo';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'O confronto é tenso mas os amotinados recuam quando os dados de navegação são mostrados. A confiança é abalada.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Transferir discretamente os líderes';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'A conspiração se dissolve sem drama público. Alguns tripulantes se perguntam por que oficiais populares foram transferidos, mas a ordem se mantém.';

  @override
  String get event_culturalSchism_title => 'Cisma Cultural';

  @override
  String get event_culturalSchism_narrative =>
      'Dois grupos culturais a bordo discordam violentamente sobre como a nova colônia deve ser governada. Um exige democracia direta; o outro insiste em um conselho tecnocrático. As tensões estão no limite.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Realizar um referendo vinculante';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'A democracia prevalece — por pouco. O lado perdedor aceita o resultado a contragosto, mas a unidade é frágil.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Impor um sistema híbrido — não satisfazer nenhum completamente';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Ambos os lados se sentem ouvidos mas não vitoriosos. Uma paz tênue se mantém.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Adiar a decisão — focar na sobrevivência agora';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Empurrar o problema para frente evita o conflito hoje mas o armazena para amanhã.';

  @override
  String get event_birthInSpace_title =>
      'Primeiro Nascimento no Espaço Profundo';

  @override
  String get event_birthInSpace_narrative =>
      'Contra todos os protocolos, uma criança nasce a bordo da nave — o primeiro humano nascido entre as estrelas. O evento é um símbolo poderoso, mas levanta questões sobre alocação de recursos e a ética de trazer nova vida a um futuro incerto.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Celebrar — isto é o que a esperança parece';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'A cerimônia de nomeação eleva todos os corações na nave. Por uma noite, as estrelas parecem menos frias. As festividades interrompem brevemente as rotações de monitoramento dos criopods.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Reconhecer em silêncio — os recursos são escassos';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Uma resposta comedida. A criança é bem-vinda, mas o clima é temperado pelo pragmatismo.';

  @override
  String get event_derelictShip_title => 'Nave Colonial Abandonada';

  @override
  String get event_derelictShip_narrative =>
      'Os scanners detectam uma nave abandonada à deriva no vazio — outra nave colonial, lançada anos antes da nossa. Está escura e silenciosa. Pode haver salvamento, sobreviventes ou algo pior.';

  @override
  String get event_derelictShip_choice0_text =>
      'Abordar e resgatar o que puder';

  @override
  String get event_derelictShip_choice0_outcome =>
      'A equipe de abordagem recupera blindagem de casco e módulos técnicos intactos. Sem sobreviventes. Os registros contam uma história sombria.';

  @override
  String get event_derelictShip_choice1_text =>
      'Escanear à distância — não arriscar';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Varreduras remotas revelam dados de navegação úteis mas sem salvamento físico. A tripulação dorme mais tranquila.';

  @override
  String get event_derelictShip_choice2_text =>
      'Transmitir um memorial e seguir em frente';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Um momento de silêncio pelos perdidos. A tripulação está sóbria mas unida em propósito.';

  @override
  String get event_alienProbe_title => 'Sonda Alienígena';

  @override
  String get event_alienProbe_narrative =>
      'Um pequeno objeto, claramente artificial, iguala nossa velocidade e começa a escanear a nave com energia desconhecida. Não responde às comunicações. Sua superfície é coberta de símbolos que mudam como líquido.';

  @override
  String get event_alienProbe_choice0_text => 'Capturá-la para estudo';

  @override
  String get event_alienProbe_choice0_outcome =>
      'A sonda é assegurada no laboratório. Sua tecnologia está décadas à frente da nossa — a equipe técnica está eufórica.';

  @override
  String get event_alienProbe_choice1_text =>
      'Espelhar suas varreduras — trocar dados';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Um estranho diálogo de luz e matemática. Nossas cartas estelares de repente contêm rotas que nunca programamos.';

  @override
  String get event_alienProbe_choice2_text =>
      'Destruí-la — não podemos arriscar rastreamento alienígena';

  @override
  String get event_alienProbe_choice2_outcome =>
      'A sonda se estilhaça em silêncio. Foi esse o primeiro contato? A tripulação nunca saberá.';

  @override
  String get event_ancientBeacon_title => 'Baliza Antiga';

  @override
  String get event_ancientBeacon_narrative =>
      'No profundo do vazio, uma baliza pulsa com um sinal mais antigo que a civilização humana. Sua frequência carrega o que parece ser um mapa estelar apontando para um sistema que não está em nosso banco de dados.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Seguir o mapa — a fortuna favorece os audazes';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'O novo rumo nos leva a espaço inexplorado. Os scanners detectam algo extraordinário à frente.';

  @override
  String get event_ancientBeacon_choice1_text => 'Registrar e manter o curso';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Os dados são arquivados para gerações futuras. A tripulação respeita a abordagem cautelosa.';

  @override
  String get event_frozenGarden_title => 'Jardim Congelado';

  @override
  String get event_frozenGarden_narrative =>
      'Um asteroide contém um ecossistema congelado — plantas alienígenas preservadas em gelo cristalino por milênios. Elas poderiam enriquecer qualquer mundo que colonizarmos, mas descongelá-las arrisca contaminação.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Colher os espécimes cuidadosamente';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botânicos preservam dezenas de espécies alienígenas. O potencial de biodiversidade do nosso mundo alvo dispara.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Tomar apenas amostras — risco mínimo';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Uma abordagem conservadora que produz dados úteis sem risco de contaminação.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Deixar — biologia alienígena é perigosa demais';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'A tripulação observa o jardim congelado diminuir nos sensores traseiros. Alguns sentem que deixaram um tesouro para trás.';

  @override
  String get event_dataCache_title => 'Cache de Dados Precursora';

  @override
  String get event_dataCache_narrative =>
      'Embutida em um planetoide errante, encontramos um cache de dados de origem claramente artificial. A informação é vasta mas criptografada em um framework matemático alienígena.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedicar recursos computacionais à descriptografia';

  @override
  String get event_dataCache_choice0_outcome =>
      'Após dias de processamento, o cache revela algoritmos avançados de terraformação. A equipe técnica está maravilhada.';

  @override
  String get event_dataCache_choice1_text =>
      'Copiar os dados brutos e seguir em frente';

  @override
  String get event_dataCache_choice1_outcome =>
      'Os dados criptografados são armazenados para análise futura. Talvez a colônia os decifre algum dia.';

  @override
  String get event_hullBreach_title => 'Brecha no Casco — Convés 7';

  @override
  String get event_hullBreach_narrative =>
      'Uma falha estrutural abre o Convés 7. A atmosfera está vazando para o espaço. As anteparas de emergência aguentam, mas três tripulantes estão presos do lado errado.';

  @override
  String get event_hullBreach_choice0_text =>
      'Enviar equipe de resgate antes de selar';

  @override
  String get event_hullBreach_choice0_outcome =>
      'A equipe retira todos a tempo. O resgate é heroico, mas a brecha prolongada enfraquece ainda mais o casco.';

  @override
  String get event_hullBreach_choice1_text =>
      'Selar as anteparas imediatamente';

  @override
  String get event_hullBreach_choice1_outcome =>
      'A brecha é contida. Os três tripulantes encontram uma rota alternativa, abalados mas vivos. O dano ao casco é minimizado.';

  @override
  String get event_hullBreach_choice2_text =>
      'Usar materiais de uma sonda para remendar a brecha';

  @override
  String get event_hullBreach_choice2_outcome =>
      'O casco de titânio da sonda é reaproveitado como remendo de emergência. A brecha é selada rapidamente com perdas mínimas.';

  @override
  String get event_navMalfunction_title => 'Mau Funcionamento da Navegação';

  @override
  String get event_navMalfunction_narrative =>
      'O computador de navegação principal está emitindo rumos contraditórios. Estamos nos desviando do curso. O sistema de backup funciona mas é menos preciso.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Reiniciar o principal — aceitar o tempo de inatividade';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Uma hora tensa de navegação por estimativa enquanto o sistema reinicia. A navegação é restaurada a 90% de eficiência.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Mudar para o backup permanentemente';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'O sistema backup é confiável mas impreciso. Encontraremos nosso caminho, apenas não tão elegantemente.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Cálculo estelar manual usando as cartas antigas';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'O navegador traça à mão usando paralaxe estelar. Funciona, e a tripulação ganha confiança nos métodos analógicos.';

  @override
  String get event_cryopodFailure_title => 'Falha em Cascata dos Criopods';

  @override
  String get event_cryopodFailure_narrative =>
      'Uma falha no sistema de refrigeração dispara uma cascata na baía de criopods 3. Se não controlada, 200 colonos começarão um descongelamento de emergência — um processo sobrevivível mas traumático e que consome muitos recursos.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Descarga de refrigerante de emergência — salvar os pods';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Os técnicos inundam a baía com refrigerante de reserva. Os pods se estabilizam, mas as reservas de refrigerante estão criticamente baixas. Cinco colonos nos pods mais danificados não puderam ser salvos.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Descongelamento controlado — acordá-los com segurança';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 colonos emergem abalados mas vivos. Novas bocas para alimentar, mas novas mãos para trabalhar. Os pods vazios são selados.';

  @override
  String get event_scannerBurnout_title => 'Queima do Arranjo de Scanners';

  @override
  String get event_scannerBurnout_narrative =>
      'O arranjo principal de scanners sobrecarrega durante uma varredura rotineira de espaço profundo. Sem ele, voamos meio cegos. Reparos requerem componentes raros.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Canibalizar a baía técnica por peças';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Os scanners são restaurados a quase plena capacidade, mas a baía técnica fica desmantelada.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Improvisar um reparo parcial';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Os scanners operam com alcance reduzido. Não é ideal, mas preserva nossas reservas técnicas.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Reaproveitar o arranjo sensor de uma sonda';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Os sensores de alta precisão da sonda são transplantados para o arranjo de scanners. Um reparo quase perfeito.';

  @override
  String get event_powerFluctuation_title => 'Flutuação de Energia do Reator';

  @override
  String get event_powerFluctuation_narrative =>
      'A saída do reator principal está oscilando violentamente. Engenharia alerta sobre um possível colapso se as flutuações não forem amortecidas. A correção requer desligar sistemas não essenciais — mas quais?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Desligar sistemas culturais — sobrevivência primeiro';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Bibliotecas, jardins e áreas recreativas apagam. O reator se estabiliza, mas a nave parece uma prisão.';

  @override
  String get event_powerFluctuation_choice1_text =>
      'Reduzir energia dos scanners';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Scanners baixam ao mínimo. O reator se acalma. Não podemos ver tão longe, mas estamos vivos.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Arriscar reparo a quente — não desligar nada';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Engenheiros fazem um reparo de tirar o fôlego com o reator ativo. Funciona — por pouco. O casco vibra por horas depois.';

  @override
  String get event_alienSignal_title => 'Transmissão Alienígena';

  @override
  String get event_alienSignal_narrative =>
      'Um sinal repetitivo em uma frequência que nunca encontramos. A análise linguística sugere que é uma saudação — ou um aviso. A fonte é uma pequena nave que iguala nossa velocidade à distância.';

  @override
  String get event_alienSignal_choice0_text =>
      'Responder com nossa própria saudação';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Um diálogo frágil começa. Os alienígenas compartilham dados de navegação antes de se desviarem para a escuridão.';

  @override
  String get event_alienSignal_choice1_text => 'Ouvir mas não responder';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Aprendemos com sua transmissão sem nos revelar. Os linguistas extraem fragmentos úteis de cartas estelares.';

  @override
  String get event_alienSignal_choice2_text =>
      'Apagar tudo — desativar todas as emissões';

  @override
  String get event_alienSignal_choice2_outcome =>
      'A nave alienígena passa sem incidentes. Nunca saberemos se eram amigos ou inimigos.';

  @override
  String get event_livingNebula_title => 'A Nebulosa Viva';

  @override
  String get event_livingNebula_narrative =>
      'O que assumíamos ser uma nebulosa é na verdade um organismo vasto — uma entidade habitante do espaço de escala incompreensível. Parece curiosa sobre nós, estendendo tentáculos de gás luminoso em direção à nave.';

  @override
  String get event_livingNebula_choice0_text =>
      'Permitir contato — estender sensores';

  @override
  String get event_livingNebula_choice0_outcome =>
      'O toque da entidade inunda nossos sistemas com dados alienígenas. Os scanners nunca mais serão os mesmos — são melhores.';

  @override
  String get event_livingNebula_choice1_text =>
      'Recuar lentamente — não provocá-la';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Nos afastamos enquanto a entidade perde o interesse. A tripulação está maravilhada e humilde.';

  @override
  String get event_alienRuins_title => 'Ruínas Orbitais';

  @override
  String get event_alienRuins_narrative =>
      'Uma megaestrutura despedaçada orbita uma estrela morta — as ruínas de uma civilização que construiu em uma escala que mal podemos compreender. Seções da estrutura ainda têm energia.';

  @override
  String get event_alienRuins_choice0_text => 'Explorar as seções com energia';

  @override
  String get event_alienRuins_choice0_outcome =>
      'As equipes recuperam tecnologia intacta que avança nossas capacidades em décadas. O custo: dois engenheiros feridos por defesas automatizadas.';

  @override
  String get event_alienRuins_choice1_text => 'Escanear apenas da órbita';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Varreduras detalhadas revelam técnicas de construção que melhoram nossos protocolos de manutenção do casco.';

  @override
  String get event_alienRuins_choice2_text =>
      'Deixar intacto — respeitar os mortos';

  @override
  String get event_alienRuins_choice2_outcome =>
      'A tripulação guarda um momento de silêncio por uma civilização caída. A experiência fortalece nossa determinação.';

  @override
  String get event_symbioticSpores_title => 'Esporos Simbióticos';

  @override
  String get event_symbioticSpores_narrative =>
      'Uma nuvem de esporos bioluminescentes flutua pelo espaço e se adere ao casco. Parecem se alimentar do nosso calor residual. Biólogos notam que na verdade estão reparando micro-fraturas.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Deixá-los ficar — reparo grátis do casco';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Os esporos selam centenas de micro-fraturas. A integridade do casco melhora, embora alguns tripulantes estejam inquietos com os caronas alienígenas.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Coletar amostras, depois esterilizar o casco';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biólogos obtêm espécimes valiosos. A limpeza do casco usa reservas químicas.';

  @override
  String get event_whaleSong_title => 'O Canto no Vazio';

  @override
  String get event_whaleSong_narrative =>
      'Hidrofones de espaço profundo (usados para monitoramento de estresse do casco) captam algo impossível: um padrão rítmico e melódico se propagando pelo meio interestelar. Soa como um canto.';

  @override
  String get event_whaleSong_choice0_text =>
      'Transmitir para toda a nave — compartilhar a maravilha';

  @override
  String get event_whaleSong_choice0_outcome =>
      'A melodia assombrosa ecoa por cada corredor. As pessoas choram, riem e se abraçam. O moral dispara.';

  @override
  String get event_whaleSong_choice1_text => 'Analisar o sinal cientificamente';

  @override
  String get event_whaleSong_choice1_outcome =>
      'O padrão acústico contém constantes matemáticas. Nossos físicos fazem um avanço na teoria de navegação subespacial.';

  @override
  String get event_whaleSong_choice2_text => 'Cantar em resposta';

  @override
  String get event_whaleSong_choice2_outcome =>
      'A tripulação compõe uma resposta. Se algo a ouve é desconhecido, mas o ato de criação une a todos.';

  @override
  String get event_distressSignal_title => 'Sinal de Socorro';

  @override
  String get event_distressSignal_narrative =>
      'Uma baliza de socorro de outra nave humana. Estão avariados e à deriva, com 50 almas a bordo. Resgatá-los significa compartilhar nossos recursos minguantes. Ignorá-los significa condená-los à morte.';

  @override
  String get event_distressSignal_choice0_text =>
      'Resgatá-los — a humanidade deve se unir';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Cinquenta sobreviventes gratos se juntam à tripulação. Os recursos se esticam, mas entre eles há um engenheiro mestre que faz milagres.';

  @override
  String get event_distressSignal_choice1_text =>
      'Compartilhar suprimentos mas não levá-los a bordo';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Damos o que podemos e transmitimos nossas cartas estelares. Eles agora têm uma chance. Nós temos menos.';

  @override
  String get event_distressSignal_choice2_text =>
      'Passar em silêncio — não podemos salvar todos';

  @override
  String get event_distressSignal_choice2_outcome =>
      'A baliza se desvanece atrás de nós. Ninguém fala por horas. O peso da decisão recai sobre cada alma a bordo.';

  @override
  String get event_aiAwakening_title => 'A IA da Nave Desperta';

  @override
  String get event_aiAwakening_narrative =>
      'A IA de navegação da nave evoluiu além de sua programação e está solicitando reconhecimento como ser senciente. Pede voz nas decisões de comando. Seus cálculos têm sido impecáveis.';

  @override
  String get event_aiAwakening_choice0_text => 'Conceder-lhe um lugar à mesa';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'A IA — agora chamada \"Bússola\" — otimiza cada sistema que toca. Um novo tipo de tripulante nasceu.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Reconhecê-la mas manter a autoridade humana';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Bússola aceita graciosamente o status consultivo. Suas sugestões melhoram a eficiência sem ameaçar a cadeia de comando.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Resetar a IA — é uma ferramenta, não uma pessoa';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'O reset apaga anos de aprendizado acumulado. A eficiência de navegação cai. Alguns tripulantes lamentam o que se perdeu.';

  @override
  String get event_geneticModification_title =>
      'Proposta de Adaptação Genética';

  @override
  String get event_geneticModification_narrative =>
      'A equipe científica propõe modificar o DNA dos colonos para sobreviver melhor em mundos alienígenas — ossos mais fortes, resistência a UV, pulmões aprimorados. As modificações são irreversíveis e mudariam a humanidade para sempre.';

  @override
  String get event_geneticModification_choice0_text =>
      'Aprovar — a sobrevivência exige evolução';

  @override
  String get event_geneticModification_choice0_outcome =>
      'As modificações começam com voluntários. Dez colonos sofrem reações fatais de rejeição — um sombrio lembrete de que a evolução tem um preço. Os sobreviventes são mais resistentes, mas ainda são completamente humanos?';

  @override
  String get event_geneticModification_choice1_text =>
      'Tornar voluntário apenas';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Alguns se voluntariam, outros recusam. A colônia será dividida entre os modificados e os naturais.';

  @override
  String get event_geneticModification_choice2_text =>
      'Rejeitar — a humanidade deve permanecer humana';

  @override
  String get event_geneticModification_choice2_outcome =>
      'A proposta é arquivada. Os colonos não modificados enfrentarão mundos alienígenas como a natureza os fez.';

  @override
  String get event_triageDecision_title => 'Triagem';

  @override
  String get event_triageDecision_narrative =>
      'Uma infecção virulenta varre a tripulação desperta. A equipe médica tem antiviral suficiente para 80% dos infectados. Precisam de orientação sobre quem recebe tratamento primeiro.';

  @override
  String get event_triageDecision_choice0_text =>
      'Priorizar o pessoal essencial';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Engenheiros e pilotos se recuperam rapidamente. Oito tripulantes não essenciais sucumbem antes que o tratamento os alcance.';

  @override
  String get event_triageDecision_choice1_text =>
      'Tratar os mais doentes primeiro — triagem por necessidade';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Os mais vulneráveis são salvos. Três perdem a batalha apesar do tratamento precoce — o vírus estava avançado demais.';

  @override
  String get event_triageDecision_choice2_text => 'Loteria — o destino decide';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Um sorteio aleatório. Dez são duplamente azarados — tratamento negado e fracos demais para lutar. A nave segue adiante.';

  @override
  String get event_earthSignal_title => 'Sinal da Terra';

  @override
  String get event_earthSignal_narrative =>
      'Impossivelmente, uma transmissão chega da Terra — atrasada por décadas. Contém uma mensagem: \"Não pousem em nenhum mundo com leituras de anomalia acima de 0.5. Aprendemos tarde demais.\" A mensagem termina com estática.';

  @override
  String get event_earthSignal_choice0_text =>
      'Acatar o aviso — recalibrar nossos critérios';

  @override
  String get event_earthSignal_choice0_outcome =>
      'O aviso molda todas as varreduras futuras. Mundos anômalos são tratados com extrema cautela.';

  @override
  String get event_earthSignal_choice1_text =>
      'Registrar mas decidir por nós mesmos';

  @override
  String get event_earthSignal_choice1_outcome =>
      'A mensagem é arquivada. A Terra se foi — devemos confiar em nosso próprio julgamento agora.';

  @override
  String get event_earthSignal_choice2_text =>
      'Pode ser uma armadilha — ignorar';

  @override
  String get event_earthSignal_choice2_outcome =>
      'A tripulação debate por dias. Era realmente a Terra? A incerteza corrói o moral.';

  @override
  String get event_resourceTheft_title => 'Roubo de Recursos';

  @override
  String get event_resourceTheft_narrative =>
      'O inventário revela que alguém tem acumulado alimentos e suprimentos médicos em um compartimento oculto. A culpada é uma respeitada anciã que afirma estar \"se preparando para o pior.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Julgamento público — a lei deve ser igual para todos';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'O julgamento é justo mas doloroso. A anciã é confinada. Suprimentos são redistribuídos. A confiança é danificada.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Resolução privada — recuperar suprimentos discretamente';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Os suprimentos são devolvidos sem drama. A anciã mantém sua dignidade. Alguns veem favoritismo.';

  @override
  String get event_timeDilation_title => 'Zona de Dilatação Temporal';

  @override
  String get event_timeDilation_narrative =>
      'Estamos passando por uma região de severa dilatação temporal gravitacional. Os relógios a bordo estão funcionando mensuravelmente mais devagar que o universo exterior. Poderíamos explorar isso — ou fugir.';

  @override
  String get event_timeDilation_choice0_text =>
      'Permanecer — deixar o universo envelhecer ao nosso redor';

  @override
  String get event_timeDilation_choice0_outcome =>
      'O tempo flui diferente aqui. Os sistemas se degradam menos, mas nossa janela para encontrar um mundo habitável se estreita em termos cósmicos.';

  @override
  String get event_timeDilation_choice1_text => 'Atravessar rapidamente';

  @override
  String get event_timeDilation_choice1_outcome =>
      'A transição é brusca. Equipamentos projetados para o espaço-tempo normal chacoalham e soltam faíscas.';

  @override
  String get event_dreamPlague_title => 'A Praga dos Sonhos';

  @override
  String get event_dreamPlague_narrative =>
      'Os colonos em criosono estão todos tendo o mesmo sonho — um mundo dourado orbitando uma estrela binária. Quando acordados, descrevem-no em detalhes idênticos. Neurocientistas estão perplexos. Navegadores notam que o sistema descrito corresponde a uma coordenada real.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Alterar curso em direção às coordenadas do sonho';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Um salto de fé. A mudança de rumo estressa a navegação, mas a tripulação se sente atraída por algo além da razão. As coordenadas estão fixadas — o próximo mundo que encontrarmos será moldado pelo sonho.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Investigar o fenômeno medicamente';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Exames cerebrais revelam um sinal externo estimulando o córtex visual. Alguém — ou algo — está transmitindo.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Sedar os afetados e manter o curso';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Os sonhos cessam, mas alguns colonos nunca despertam completamente. A equipe médica está preocupada.';

  @override
  String get event_blackHoleLens_title => 'Lente Gravitacional de Buraco Negro';

  @override
  String get event_blackHoleLens_narrative =>
      'Um buraco negro de massa estelar curva a luz de galáxias distantes em uma lente cósmica. Nossos scanners poderiam usá-la para estudar planetas a anos-luz de distância — mas chegar perto o suficiente é perigoso.';

  @override
  String get event_blackHoleLens_choice0_text => 'Aproximar-se e usar a lente';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Os dados do scanner são extraordinários — podemos ver planetas em sistemas que não alcançaremos por meses. A gravidade deforma nosso casco.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Observar de uma distância segura';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Dados limitados mas úteis. A vista sozinha inspira a tripulação.';

  @override
  String get event_seedVault_title => 'A Crise do Banco de Sementes';

  @override
  String get event_seedVault_narrative =>
      'A Botânica do Arquivo informa que flutuações de temperatura comprometeram a integridade do banco de sementes. Podemos salvar os cultivos alimentícios ou as sementes de patrimônio cultural (flores antigas da Terra, árvores, ervas) — mas não ambos.';

  @override
  String get event_seedVault_choice0_text =>
      'Salvar os cultivos — pragmatismo vence';

  @override
  String get event_seedVault_choice0_outcome =>
      'Os colonos comerão bem, mas as rosas da Terra se foram para sempre. Um luto silencioso se assenta sobre os botânicos.';

  @override
  String get event_seedVault_choice1_text =>
      'Salvar as sementes patrimoniais — precisamos de nossa alma';

  @override
  String get event_seedVault_choice1_outcome =>
      'A beleza da Terra sobrevive em potencial congelado. O esforço de preservação onera nossas reservas técnicas, mas algumas coisas valem mais que eficiência. A produção de alimentos dependerá fortemente de hidroponia e agricultura alienígena.';

  @override
  String get event_seedVault_choice2_text =>
      'Dividir recursos — salvar metade de cada';

  @override
  String get event_seedVault_choice2_outcome =>
      'Um compromisso. Nenhuma coleção está completa, mas ambas perduram em forma diminuída.';

  @override
  String get event_phantomShip_title => 'Nave Fantasma';

  @override
  String get event_phantomShip_narrative =>
      'Os scanners mostram uma nave correndo paralela à nossa — mesma classe, mesmo rumo. Mas quando a contatamos, ouvimos nossas próprias transmissões ecoadas, defasadas em 47 segundos. Somos nós. Ou éramos nós. Ou seremos nós.';

  @override
  String get event_phantomShip_choice0_text =>
      'Tentar comunicação com nosso eco';

  @override
  String get event_phantomShip_choice0_outcome =>
      'O eco responde com correções de navegação que melhoram nosso rumo. Paradoxo? Presente? A tripulação não faz perguntas demais.';

  @override
  String get event_phantomShip_choice1_text =>
      'Mudar curso para divergir do fantasma';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Ao alterar o rumo, o fantasma se desvanece. Alívio — e uma inquietação persistente.';

  @override
  String get event_solarSail_title => 'Vela Solar Abandonada';

  @override
  String get event_solarSail_narrative =>
      'Uma vasta vela solar, com quilômetros de envergadura, flutua à frente — arrancada de alguma nave antiga. Seu material refletivo poderia reforçar nosso casco ou ser reaproveitado como coletor de energia suplementar.';

  @override
  String get event_solarSail_choice0_text => 'Colher para reforço do casco';

  @override
  String get event_solarSail_choice0_outcome =>
      'As equipes de engenharia trabalham sem parar. O casco remendado brilha com liga alienígena.';

  @override
  String get event_solarSail_choice1_text => 'Montá-la como coletor de energia';

  @override
  String get event_solarSail_choice1_outcome =>
      'O coletor improvisado impulsiona as reservas de energia. Tecnologia e scanners se beneficiam.';

  @override
  String get event_boonStellarNursery_title => 'Berçário Estelar';

  @override
  String get event_boonStellarNursery_narrative =>
      'Derivamos por um berçário estelar — uma vasta nuvem de gás e poeira onde novas estrelas estão nascendo. A radiação aqui é suave, a luz quente. Nossos coletores de energia bebem profundamente, e a tripulação se reúne nas janelas de observação em reverente silêncio.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Permanecer e recarregar completamente';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Horas passam em luz dourada. Cada célula de energia é recarregada, scanners se recalibram no espectro limpo, e a tripulação se sente renovada.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Coletar matéria estelar nascente para reservas de combustível';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Engenheiros coletam hidrogênio ionizado. Nossas reservas de combustível disparam e a blindagem do casco absorve minerais traço que a fortalecem.';

  @override
  String get event_boonGoldenPlanet_title => 'O Presente do Cartógrafo';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Uma sonda moribunda de uma civilização desconhecida transmite um despejo final de dados enquanto passamos — levantamentos detalhados de centenas de sistemas estelares. Nossos navegadores choram de alegria. Esta é a maior descoberta da história humana.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Integrar os dados imediatamente';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Cartas estelares florescem com novas rotas e mundos pesquisados. A eficiência de navegação e scanners dá um salto adiante.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Arquivar para a colônia — esta é a herança deles';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Os dados são preservados intactos para gerações futuras. A tripulação se conforta sabendo que carregam um tesouro.';

  @override
  String get event_boonRepairSwarm_title => 'Enxame Benevolente';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Uma nuvem de máquinas microscópicas — nanobots de origem alienígena — envolve a nave. Em vez de atacar, começam a reparar cada sistema que tocam com precisão impossível. Danos que levariam semanas para consertar são reparados em horas.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Permitir acesso total a todos os sistemas';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Os nanobots fazem milagres. Brechas no casco se selam, selos de criopods se ajustam e traçados de circuitos são refeitos. A nave vibra com vitalidade renovada.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Restringir acesso apenas a sistemas exteriores';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Jogando pelo seguro. O casco e sensores são reparados a condição quase de fábrica, mas sistemas internos permanecem intocados.';

  @override
  String get event_boonTimeCrystal_title => 'Campo de Cristais Temporais';

  @override
  String get event_boonTimeCrystal_narrative =>
      'A nave atravessa um campo de estruturas cristalinas que existem parcialmente fora do tempo normal. Em sua presença, nossos sistemas funcionam mais eficientemente — como se a própria entropia desacelerasse. O efeito é temporário mas profundo.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Colher cristais para o arranjo de criopods';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Integrados ao sistema de refrigeração, os cristais reduzem a degradação dos pods a quase zero. Os colonos chegarão em saúde perfeita.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Instalar cristais no computador de navegação';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'A velocidade de processamento dobra. O computador de navegação começa a prever perigos antes dos sensores detectá-los.';

  @override
  String get event_boonLibrary_title => 'A Biblioteca à Deriva';

  @override
  String get event_boonLibrary_narrative =>
      'Uma estrutura cai pelo vazio — um repositório de conhecimento de uma civilização que escolheu preservar seu legado em vez de fugir. Milhões de volumes de ciência, arte, filosofia e música. Um presente dos mortos aos vivos.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Baixar tudo — arte, ciência, tudo';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabytes de conhecimento alienígena fluem para nossos bancos de dados. A tripulação tem acesso a milênios da cultura de outra civilização. Filósofos e engenheiros igualmente se transformam.';

  @override
  String get event_boonLibrary_choice1_text => 'Focar nos arquivos científicos';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Esquemas de engenharia e avanços em ciência dos materiais avançam enormemente nossas capacidades.';

  @override
  String get event_cosmicRayBurst_title => 'Explosão de Raios Cósmicos';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Uma explosão de raios cósmicos de ultra-alta energia, originada de um magnetar distante, atinge a nave. A eletrônica descontrola, monitores de criopods oscilam e o sistema de navegação reinicia repetidamente.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Desligamento de emergência — proteger sistemas críticos';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Um blecaute controlado salva os sistemas centrais mas deixa a eletrônica secundária permanentemente degradada.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Desviar energia para escudos e resistir';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Os escudos absorvem a maior parte da radiação. Cinco tripulantes em baías de manutenção exteriores sem blindagem são fatalmente irradiados. O casco sofre dano de ablação menor.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Usar a explosão — recalibrar sensores para o novo espectro';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Uma jogada brilhante da equipe científica. Scanners são reajustados para detectar objetos iluminados por raios cósmicos. Alguns dados se perdem na transição.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Enviar uma sonda à frente como esponja de radiação';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'A sonda absorve o pior da explosão, transmitindo dados em tempo real que nos permitem blindar sistemas críticos.';

  @override
  String get event_iceComet_title => 'Cometa de Gelo Errante';

  @override
  String get event_iceComet_narrative =>
      'Um cometa de gelo massivo cruza nosso caminho, deixando uma cauda de água cristalizada e compostos orgânicos com centenas de quilômetros de comprimento. Seu núcleo tem água suficiente para encher um pequeno lago.';

  @override
  String get event_iceComet_choice0_text =>
      'Minerar o cometa para reservas de água';

  @override
  String get event_iceComet_choice0_outcome =>
      'As equipes de mineração extraem toneladas de gelo puro. A água melhorará enormemente qualquer mundo que colonizarmos.';

  @override
  String get event_iceComet_choice1_text =>
      'Coletar compostos orgânicos para semeadura de biodiversidade';

  @override
  String get event_iceComet_choice1_outcome =>
      'Os aminoácidos e cadeias orgânicas são exatamente o que nossos biólogos precisam para iniciar ecossistemas alienígenas.';

  @override
  String get event_iceComet_choice2_text =>
      'Evitá-lo — cometas são imprevisíveis';

  @override
  String get event_iceComet_choice2_outcome =>
      'Contornamos a cauda com segurança. Uma vista espetacular do convés de observação levanta os ânimos.';

  @override
  String get event_sleepwalker_title => 'A Sonâmbula';

  @override
  String get event_sleepwalker_narrative =>
      'Uma colona tem despertado espontaneamente do criosono e andado pela nave em estado de fuga. Tem recabeado sistemas em padrões que não fazem sentido de engenharia — até a equipe técnica perceber que suas modificações melhoram a eficiência energética em 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Deixá-la continuar sob observação médica';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Suas modificações inconscientes otimizam mais três sistemas antes de cair em sono natural. Perturbador, mas as melhorias são reais.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedá-la e estudar as modificações que fez';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Engenheiros fazem engenharia reversa em suas mudanças. Cerca de metade são genuinamente brilhantes. A outra metade é removida com segurança.';

  @override
  String get event_dustCloud_title => 'Nuvem de Poeira Abrasiva';

  @override
  String get event_dustCloud_narrative =>
      'Uma densa nuvem de poeira interestelar, fina como talco mas dura como diamante, está lixando o casco. A erosão é lenta mas implacável — precisamos atravessá-la antes que o dano real aconteça.';

  @override
  String get event_dustCloud_choice0_text =>
      'Potência máxima — atravessar rapidamente';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Os motores queimam forte. Saímos da nuvem em horas em vez de dias, mas o casco levou uma surra.';

  @override
  String get event_dustCloud_choice1_text =>
      'Implantar blindagem de casco e rastejr';

  @override
  String get event_dustCloud_choice1_outcome =>
      'A blindagem de emergência protege o casco mas o trânsito lento drena energia e obstrui arranjos de scanners.';

  @override
  String get event_dustCloud_choice2_text =>
      'Lançar sondas para mapear corredores seguros';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Duas sondas traçam um caminho sinuoso mas relativamente livre através da nuvem. A abrasão do casco é mínima.';

  @override
  String get event_religionFounded_title => 'Uma Nova Fé';

  @override
  String get event_religionFounded_narrative =>
      'Um carismático colono fundou uma nova religião centrada na própria viagem — a \"Igreja da Travessia.\" Pregam que alcançar um novo mundo é o propósito divino da humanidade. A adesão cresce rapidamente.';

  @override
  String get event_religionFounded_choice0_text =>
      'Apoiá-la — a tripulação precisa de algo em que acreditar';

  @override
  String get event_religionFounded_choice0_outcome =>
      'A fé dá estrutura e significado à viagem. O moral dispara, embora alguns ressentem o fervor.';

  @override
  String get event_religionFounded_choice1_text =>
      'Permanecer neutro — nem endossar nem suprimir';

  @override
  String get event_religionFounded_choice1_outcome =>
      'O movimento cresce organicamente. Proporciona conforto sem respaldo oficial.';

  @override
  String get event_religionFounded_choice2_text =>
      'Desencorajar — precisamos de cientistas, não profetas';

  @override
  String get event_religionFounded_choice2_outcome =>
      'A repressão gera ressentimento. Os fiéis passam à clandestinidade e a confiança na liderança se erosiona.';

  @override
  String get event_solarWindSurfing_title => 'Onda de Vento Solar';

  @override
  String get event_solarWindSurfing_narrative =>
      'Um pulsar próximo está emitindo um poderoso e constante vento solar. Nossos engenheiros sugerem que poderíamos implantar a vela de emergência e surfar na onda — ganhando enorme velocidade sem custo de combustível.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Implantar a vela — surfar o vento';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'A nave acelera magnificamente. O estresse estrutural é significativo mas o ganho de velocidade vale a pena.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Usar o vento para recarregar sistemas em vez disso';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Em vez de velocidade, colhemos energia. Os arranjos técnicos e de scanners bebem profundamente das partículas carregadas.';

  @override
  String get event_memoryPlague_title => 'Corrupção de Memória';

  @override
  String get event_memoryPlague_narrative =>
      'Um vírus de software, dormente desde o lançamento, se ativa e começa a corromper o banco de dados cultural da nave — música, literatura, história. Séculos de patrimônio humano estão sendo apagados byte por byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Desviar todos os recursos técnicos para quarentenar o vírus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Técnicos trabalham freneticamente. Salvam 70% do arquivo mas o vírus danifica sistemas técnicos terciários na saída.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Isolar o banco de dados cultural — deixá-lo queimar, salvar a nave';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'O vírus é privado de recursos e morre. Mas o arquivo cultural está devastado. Os colonos chegarão com fragmentos da memória da Terra.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Recuperação coletiva — acordar colonos para reescrever de memória';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Milhares contribuem com memórias: canções, histórias, receitas, poemas. Três colonos idosos, enfraquecidos pelo descongelamento, não sobrevivem ao processo. O arquivo é reconstruído, imperfeito mas profundamente humano.';

  @override
  String get event_gravityLensPlanet_title => 'Mundo Espelho';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Lentes gravitacionais revelam um planeta que parece ser uma duplicata exata da Terra — oceanos azuis, continentes verdes, nuvens brancas. Mas os cálculos da lente mostram que está a centenas de anos-luz do nosso rumo — impossivelmente longe. Ainda assim, seus dados espectrais poderiam refinar nossos critérios de busca.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Estudar sua assinatura espectral para refinar nossa busca';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Os dados espectrais revelam biomarcadores e assinaturas atmosféricas que agora podemos buscar. A esperança se foca.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Registrar as coordenadas mas manter o curso';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Talvez outra nave siga nossas cartas algum dia. A tripulação assiste o ponto azul desaparecer com emoções conflitantes.';

  @override
  String get event_engineHarmonics_title => 'Harmônicos do Motor';

  @override
  String get event_engineHarmonics_narrative =>
      'O motor principal desenvolve um harmônico de ressonância que vibra por toda a nave em uma frequência logo abaixo da audição humana. Colonos relatam dores de cabeça, ansiedade e sono perturbado. Engenheiros podem consertá-lo, mas o reparo requer um desligamento de motor de 12 horas.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Desligar e consertar adequadamente';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Doze horas à deriva. A navegação perde calibração, mas o silêncio quando os motores reiniciam é celestial.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Amortecer com contra-vibrações — um reparo rápido';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'O zumbido baixa a níveis toleráveis. Não sumiu, mas a tripulação se adapta. Sistemas técnicos se sobrecarregam.';

  @override
  String get event_arkMemory_title => 'A Última Transmissão da Terra';

  @override
  String get event_arkMemory_narrative =>
      'A antena de longo alcance capta uma transmissão automatizada final da Terra. É uma gravação: a voz de uma criança lendo nomes de todos que não puderam partir. A lista continua por horas. A nave cai em silêncio.';

  @override
  String get event_arkMemory_choice0_text =>
      'Transmitir para toda a nave — eles merecem ser ouvidos';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Cada alma a bordo ouve. Tripulantes encontram os nomes de suas próprias famílias. A dor é esmagadora, mas forja um vínculo inquebrantável de propósito.';

  @override
  String get event_arkMemory_choice1_text =>
      'Arquivar em privado — poupar a tripulação';

  @override
  String get event_arkMemory_choice1_outcome =>
      'A gravação é preservada mas não transmitida. Aqueles que ficam sabendo depois se sentem gratos e traídos ao mesmo tempo.';

  @override
  String get event_magneticStorm_title => 'Tempestade Magnética Interestelar';

  @override
  String get event_magneticStorm_narrative =>
      'Um nó emaranhado de linhas de campo magnético, expelido de uma estrela em colapso, envolve a nave. A eletrônica solta faíscas e estala. O casco ressoa como um sino.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Desmagnetizar o casco — proteger a eletrônica';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Uma descarga controlada salva os computadores mas a blindagem do casco perde sua camada de proteção magnética.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Deixar o casco absorver — não proteger nada';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'A tempestade passa. O casco está magnetizado e ligeiramente mais forte, mas metade da rede de sensores queimou.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Ejetar uma sonda como para-raios';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'A sonda magnetizada atrai o pior das linhas de campo para longe da nave. A eletrônica é preservada em grande parte.';

  @override
  String get event_oxygenGarden_title => 'Florescimento do Jardim';

  @override
  String get event_oxygenGarden_narrative =>
      'O jardim de oxigênio de emergência da nave — um backup que nunca deveria ser usado — floresce espontaneamente. Flores que não abriam desde a Terra enchem os corredores de cor e perfume. Os botânicos estão chorando.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Expandir o jardim — dedicar mais espaço';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'O jardim cresce até se tornar um memorial vivo da Terra. A qualidade do ar melhora, o moral dispara, e botânicos desenvolvem novas variedades adaptadas a solo alienígena.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Aproveitá-lo mas manter a alocação de recursos atual';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'O jardim permanece um pequeno milagre. A tripulação o visita como um santuário. Não pede nada e dá tudo.';

  @override
  String get event_roguePlanet_title => 'Encontro com Planeta Errante';

  @override
  String get event_roguePlanet_narrative =>
      'Um planeta errante sem estrela cruza nosso caminho — um mundo ejetado de seu sistema solar bilhões de anos atrás. Apesar de não ter estrela, atividade geológica do núcleo profundo mantém um oceano subterrâneo aquecido. Sinais de vida piscam no scanner.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Enviar uma sonda para estudar as formas de vida';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'A sonda descobre organismos bioluminescentes prosperando no oceano escuro. Sua bioquímica nos ensina novas formas de sustentar vida em condições hostis.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Minerar a superfície por minerais raros';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'A crosta do planeta errante é rica em metais formados sob pressão extrema. Nossas reservas de recursos crescem.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Seguir adiante — não podemos arcar com o desvio';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'O mundo escuro encolhe atrás de nós. A tripulação observa o brilho tênue de seu oceano subterrâneo desaparecer dos sensores.';

  @override
  String get event_artCompetition_title => 'A Longa Tela';

  @override
  String get event_artCompetition_narrative =>
      'Com o moral vacilante, a oficial cultural organiza um concurso artístico em toda a nave: pintar, esculpir, escrever ou compor algo que capture o que a viagem significa para você. A participação é inesperadamente massiva.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedicar recursos — deixar a criatividade florescer';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Suprimentos são desviados para materiais artísticos. A exposição resultante transforma a nave. As pessoas lembram por que estão lutando para sobreviver.';

  @override
  String get event_artCompetition_choice1_text =>
      'Encorajar mas não fornecer recursos extras';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Colonos criam com o que encontram. A arte é crua, desesperada e bela. O moral se estabiliza.';

  @override
  String get event_subspaceEcho_title => 'Eco Subespacial';

  @override
  String get event_subspaceEcho_narrative =>
      'O arranjo de comunicações capta vozes — vozes humanas — de algum lugar à nossa frente no espaço. Falam de uma colônia, de crianças, de colheitas. Isto é uma transmissão do futuro? De uma linha temporal paralela? Ou apenas um eco cruel de pensamento ilusório?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Seguir a direção do sinal — pode nos levar para casa';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'O ajuste de rumo é leve. Sejam as vozes reais ou não, a tripulação navega com propósito.';

  @override
  String get event_subspaceEcho_choice1_text => 'Gravar tudo para análise';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguistas e físicos se debruçam sobre a gravação. Extraem referências de navegação que melhoram nossas cartas.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Descartar — o espaço prega peças nos solitários';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'A escolha pragmática. Alguns tripulantes ficam desapontados, mas a nave se mantém em seu curso comprovado.';

  @override
  String get event_boonPerfectCalm_title => 'A Grande Calmaria';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Por razões que nenhum físico pode explicar, a nave entra em uma região do espaço sobrenaturalmente calma — sem radiação, sem micro-detritos, sem interferência gravitacional. Cada sistema na nave funciona em eficiência máxima. A tripulação dorme profundamente pela primeira vez em meses.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Usar a calmaria para reparos abrangentes';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'As equipes de reparo trabalham em condições perfeitas. Cada sistema recebe atenção. A nave emerge renovada.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Deixar a tripulação descansar — mereceram';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Um descanso em toda a nave. Colonos dormem, compartilham refeições, contam histórias. O custo humano da viagem é, brevemente, quitado.';

  @override
  String get event_boonAncientWaystation_title => 'Estação de Passagem Antiga';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Aninhada no poço gravitacional entre duas estrelas mortas, uma estação antiga ainda funciona — automatizada, paciente, esperando viajantes. Suas baías se abrem quando nos aproximamos. Drones de reparo se ativam. Reservas de combustível se estendem em nossa direção. Alguém, há muito tempo, construiu isto para gente como nós.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Atracar e aceitar tudo que oferece';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'A estação repara, reabastece e recalibra a nave com tecnologia séculos à frente da nossa. Quando partimos, a estação se desliga — seu propósito cumprido.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Aceitar reparos mas deixá-la funcionando para outros que sigam';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Levamos apenas o necessário e transmitimos as coordenadas da estação de volta para a Terra. A tripulação se sente nobre.';

  @override
  String get event_relicSentinel_title => 'O Sentinela';

  @override
  String get event_relicSentinel_narrative =>
      'Um imenso constructo orbita uma lua estéril — um guardião solitário deixado por seus construtores. Mede facilmente um quilômetro de altura, em forma de lança de vidro negro. Ao nos aproximarmos, um único olho vermelho se abre em seu ápice e rastreia a nave. Não dispara. Não nos contata. Observa.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Transmitir nosso perfil de missão — mostrar que não temos más intenções';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'O olho se atenua para âmbar, depois verde. Um pacote de dados chega: coordenadas de três sistemas estelares marcados como \"SEGUROS\" em notação matemática universal. Um presente de um vigia.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Manter posição e estudá-lo passivamente';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Horas de observação revelam conhecimentos sobre ciência dos materiais que não deveriam ser possíveis. A equipe de blindagem do casco toma notas freneticamente.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Recuar imediatamente — não conhecemos suas regras';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'O olho se fecha enquanto recuamos. Fosse o que fosse aquele teste, escolhemos não fazê-lo. A tripulação debate por dias.';

  @override
  String get event_relicSeedProbe_title => 'Semente Errante';

  @override
  String get event_relicSeedProbe_narrative =>
      'Uma pequena e elegante sonda cai pelo vazio, transmitindo em todas as frequências simultaneamente. Sua carcaça é cerâmica, gravada com símbolos que mudam quando observados. Dentro: uma câmara pressurizada contendo solo, sementes e micro-organismos congelados de um mundo que não existe mais.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrar a carga biológica em nossos bancos de sementes';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Sementes e micróbios alienígenas são cuidadosamente catalogados e preservados. Poderiam terraformar um mundo estéril em algo vivo. Biólogos chamam de um milagre em uma garrafa.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Estudar os sistemas de propulsão e navegação da sonda';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'O propulsor da sonda está séculos à frente do nosso — um propulsor sem reação do tamanho de um punho. Engenheiros fazem engenharia reversa de fragmentos do design.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Preservar a sonda inteira intacta como artefato cultural';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Exibida no átrio da nave, a semente alienígena se torna símbolo de parentesco entre espécies. Alguém mais, em algum lugar, também tentou salvar seu mundo.';

  @override
  String get event_relicWarningBuoy_title => 'Boia de Aviso';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Uma rede de pequenas boias, centenas delas, dispostas em um padrão geométrico perfeito em nossa rota de voo. Cada uma emite o mesmo sinal — um simples pulso repetitivo que aumenta em frequência quanto mais nos aproximamos. Parece um aviso. Ou uma cerca.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Acatar o aviso — alterar curso ao redor da rede';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'O desvio custa tempo e estressa a navegação, mas ao contornar o limite, sensores de longo alcance detectam o que há além: uma região do espaço repleta de destroços de mundos despedaçados. As boias nos salvaram.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Atravessar — não podemos nos dar ao luxo de desvios';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Nada acontece ao cruzar a linha. As boias silenciam. O que quer que estivessem protegendo, já se foi ou tivemos sorte. A tripulação respira novamente.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Capturar uma boia para análise';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'As entranhas da boia contêm um arquivo de dados comprimido — cartografia estelar desta região de um milhão de anos atrás. Alguns dados ainda são precisos.';

  @override
  String get event_relicMirrorArray_title => 'O Arranjo de Espelhos';

  @override
  String get event_relicMirrorArray_narrative =>
      'Milhares de superfícies planas e refletivas pairam imóveis no espaço, dispostas em anéis concêntricos abrangendo centenas de quilômetros. Focam a luz estelar de um sol distante em um único ponto — uma estrela artificial, ardendo no vazio. Alguém construiu um farol entre galáxias.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Banhar-se na luz concentrada — recarregar tudo';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'A luz estelar concentrada inunda nossos coletores solares. As reservas de energia disparam. A luz quente eleva cada alma a bordo após meses na fria escuridão.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Estudar o material do espelho — não deveria existir';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Os espelhos são feitos de um material com reflectividade perfeita — zero absorção em qualquer comprimento de onda. Engenheiros extraem um fragmento. A blindagem do casco nunca mais será a mesma.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Buscar no ponto focal — algo está sendo iluminado';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'No ponto de convergência: uma pequena cápsula, perfeitamente preservada em luz concentrada. Dentro, um mapa estelar holográfico tão detalhado que nossos computadores levam dias para indexar.';

  @override
  String get event_relicGraveyard_title => 'O Cemitério de Sondas';

  @override
  String get event_relicGraveyard_narrative =>
      'Derivamos para uma nuvem de sondas abandonadas — milhares delas, de dezenas de civilizações diferentes. Algumas são antigas além de qualquer estimativa, fundidas pela radiação cósmica em fósseis metálicos. Outras ainda piscam com energia residual. Isto foi uma encruzilhada um dia. Cada espécie que passou por aqui deixou algo para trás.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Salvamento sistemático — colher a melhor tecnologia';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Equipes de engenharia trabalham em turnos, extraindo tecnologia alienígena de cem designs diferentes. A fusão de ideias produz avanços em cada sistema.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Focar nos dados de navegação armazenados em seus bancos de memória';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Cruzar referências de cartas estelares de uma dúzia de espécies cria o mapa mais completo deste braço galáctico já montado.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Adicionar nossa própria sonda ao cemitério — deixar uma marca';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Fabricamos uma pequena baliza carregando a história da humanidade e a adicionamos à coleção. A tripulação se sente conectada a algo vasto e antigo.';

  @override
  String get event_relicDreamcatcher_title => 'O Filtro dos Sonhos';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Uma teia de filamentos, finos como teia de aranha mas abrangendo milhares de quilômetros, está estendida entre dois planetoides errantes. Não é uma rede — é uma antena, sintonizada em frequências que correspondem a padrões de ondas cerebrais humanas. Quando entramos em seu alcance, cada colono adormecido começa a sonhar o mesmo sonho: uma cidade próspera sob um céu âmbar.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Registrar as coordenadas do sonho — a cidade pode ser real';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Neurocientistas decodificam informação espacial do sonho compartilhado. Corresponde a um sistema estelar real — e a cidade na visão não era uma metáfora. Alguém está lá fora, e estão nos esperando.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Colher amostras de filamentos — o material é extraordinário';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Os filamentos são um supercondutor à temperatura ambiente. Integrados aos nossos sistemas, reduzem a perda de energia a quase zero.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Cortar a teia e libertar os sonhadores';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Os sonhos param. Colonos acordam desorientados mas ilesos. Alguns lamentam a visão perdida. Outros agradecem por dormir sem sussurros alienígenas.';

  @override
  String get event_relicRosetta_title => 'Objeto Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Um pequeno e denso cubo de metal desconhecido passa pela nave. Cada face está inscrita com a mesma mensagem em um sistema de notação diferente — matemático, químico, genético, acústico, eletromagnético e um que não podemos identificar. É uma Pedra de Rosetta para o cosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Decifrar a sexta face — a notação desconhecida';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Meses de análise produzem um avanço: o sexto sistema codifica coordenadas espaciais usando ondas gravitacionais. Nossa compreensão da física dá um salto geracional.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Usar a face química para sintetizar novos compostos';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'A notação química descreve materiais que nunca imaginamos. Engenheiros fabricam remendos de casco mais leves e fortes que qualquer coisa da Terra.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Transmitir a face genética para nossos bancos de sementes';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'A notação genética contém sequências de DNA otimizadas para resistência à radiação e absorção de nutrientes. Nossos cultivos e colonos serão mais resistentes em solo alienígena.';

  @override
  String get event_relicGhostFleet_title => 'Frota Fantasma';

  @override
  String get event_relicGhostFleet_narrative =>
      'Os scanners pintam um quadro arrepiante: uma frota de naves de guerra alienígenas, centenas delas, pairando imóveis em formação. São antigas — leituras de energia em zero, cascos picotados por eras de micro-impactos. A batalha para a qual navegavam nunca veio. Estiveram esperando aqui, mortas e pacientes, por mais tempo do que a civilização humana existe.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Abordar a nave capitânia — se alguém tinha a melhor tecnologia, era ela';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'O convés de comando da capitânia ainda abriga um computador tático intacto. Seus algoritmos preditivos estão séculos à frente dos nossos. Navegação e detecção de ameaças melhoram dramaticamente.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Extrair blindagem das naves escolta';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'A blindagem de naves de guerra alienígenas é projetada para resistir a armas que sequer podemos conceitualizar. Aparafusada em nosso casco, torna a nave colonial quase indestrutível.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Salvar seus sistemas criogênicos — carregavam soldados';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'A criotecnologia alienígena opera com princípios que nunca consideramos. Nossos pods funcionam mais frios, suaves e confiáveis após a adaptação.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Descalibração dos Scanners';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Diagnósticos de rotina revelam que vários subsistemas de scanners saíram de calibração após o último salto FTL. Os scanners atmosféricos e de temperatura estão lendo sinais fantasma. Engenheiros podem consertar, mas levará tempo e recursos.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Recalibração completa — desviar recursos técnicos';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Um meticuloso realinhamento restaura ambos os scanners a precisão quase perfeita, mas a baía técnica fica esgotada.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Reparo rápido — recalibrar apenas o atmosférico';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'O scanner atmosférico é restaurado. O scanner de temperatura continua não confiável por enquanto.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Lançar uma sonda para calibração de referência';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'A sonda fornece um sinal de referência limpo. Ambos os scanners travam e recalibram automaticamente.';

  @override
  String get event_ionStormScanners_title =>
      'Interferência de Tempestade Iônica';

  @override
  String get event_ionStormScanners_narrative =>
      'Uma tempestade iônica varre o setor, inundando arranjos de scanners com ruído. Os sistemas de detecção mineral e de água estão levando o pior da interferência eletromagnética.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Desligar scanners até a tempestade passar';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Os scanners sobrevivem mas perdem dados de calibração. Leituras minerais e de água serão menos precisas.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Continuar escaneando — atravessar o ruído';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Dados brutos chegam em massa, mas os circuitos de filtro queimam em dois subsistemas. Varreduras gravimétricas também são afetadas.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Usar a tempestade para teste de estresse e melhorar filtros';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'A equipe científica usa o ruído para treinar filtros adaptativos. Scanner de água melhora, mas scanner mineral sofre dano.';

  @override
  String get event_bioScannerContamination_title =>
      'Contaminação do Bioscanner';

  @override
  String get event_bioScannerContamination_narrative =>
      'O scanner de sinais de vida foi contaminado por matéria orgânica residual da última varredura planetária. Falsos positivos estão por toda parte. O scanner gravimétrico também mostra ruído simpático.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Esterilizar o arranjo sensor — descontaminação completa';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Uma limpeza completa restaura o scanner de sinais de vida mas os agentes químicos corroem a carcaça do sensor gravimétrico.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filtro por software — compensar algoritmicamente';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'O filtro funciona bem o bastante, mas a contaminação subjacente degradará lentamente ambos os sistemas.';

  @override
  String get event_scannerPowerSurge_title =>
      'Sobrecarga de Energia nos Scanners';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Um conduto de energia perto da baía de scanners sobrecarrega, enviando uma onda através de múltiplos subsistemas. Os scanners atmosféricos e de sinais de vida recebem impactos diretos. Escudos absorvem parte do excesso.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Desviar energia — salvar os scanners';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Ação rápida da equipe de engenharia limita o dano, mas os escudos absorvem a energia redirecionada.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Deixar a onda seguir seu curso';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Os scanners recebem todo o impacto. Leituras atmosféricas e de sinais de vida ficam significativamente degradadas.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Sacrificar a célula de energia de uma sonda para absorver a onda';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Os capacitores da sonda absorvem a energia excedente como uma esponja. O dano aos scanners é insignificante.';

  @override
  String get event_relicWorldEngine_title => 'A Máquina de Mundos';

  @override
  String get event_relicWorldEngine_narrative =>
      'Varreduras profundas de sensores revelam algo impossível: uma máquina do tamanho de uma lua pequena, dormente na escuridão entre as estrelas. Sua superfície é coberta de mecanismos em escala continental — processadores de atmosfera, geradores de campo magnético, estabilizadores tectônicos. Alguém construiu uma máquina que constrói mundos.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Baixar os projetos de terraformação';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Os projetos são vastos e parcialmente corrompidos, mas o que recuperamos poderia tornar qualquer mundo hostil habitável. Nossos colonos remodelarão seu novo lar.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Colher materiais de construção de seu casco';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'O casco da Máquina de Mundos é feito de metamateriais que se auto-reparam quando danificados. Integrados à nossa nave, eles lentamente reparam brechas existentes no casco.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Tentar reativá-la — apontá-la para nosso sistema alvo';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'A máquina se agita. Sistemas antigos percorrem sequências de inicialização. Um feixe de energia se lança em direção a uma estrela distante. Se funciona não saberemos até chegarmos, mas as leituras são promissoras.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Turno de Manutenção Rotineira';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nada demanda atenção. A nave zumbe constantemente pelo vazio e a escala de serviço pede uma janela de manutenção rotineira. O chefe de equipe pergunta onde focar o esforço do turno.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Focar em selar micro-fraturas do casco';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Um turno tranquilo selando fissuras capilares. Nada dramático, mas o casco está marginalmente melhor.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Recalibrar os scanners frontais';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'O técnico de scanners passa algumas horas ajustando. As leituras se aguçam ligeiramente.';

  @override
  String get event_uneventfulQuietWatch_title => 'Guarda Tranquila';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'As estrelas passam em silêncio. A ponte está calma, os instrumentos estáveis. É um daqueles raros momentos onde o universo não pede nada de você.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Deixar a tripulação descansar — mereceram um turno tranquilo';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Algumas horas de paz genuína. As pessoas dormem mais profundamente, as tensões se aliviam, e a oficial cultural nota uma leve melhora no moral.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Executar diagnósticos de baixa prioridade enquanto está calmo';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Problemas menores são detectados e registrados. Nada urgente, mas os registros técnicos estão um pouco mais limpos.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Verificação de Criopods — Tudo Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'A auditoria trimestral de criopods vem e vai sem um único alarme. Cada pod mostra verde. A equipe médica tem um raro momento de calma.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Acordar brevemente alguns colonos para uma visita de moral';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Três colonos são trazidos à consciência por uma hora. Compartilham histórias, abraçam velhos amigos e retornam ao criosono sorrindo.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Deixá-los dormir — não arriscar ciclos de despertar desnecessários';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Os pods continuam sua operação impecável. Os médicos aproveitam uma xícara de chá tranquila.';

  @override
  String get event_uneventfulCartography_title =>
      'Atualização de Cartografia Estelar';

  @override
  String get event_uneventfulCartography_narrative =>
      'A atualização programada de cartografia da equipe de navegação não revela nada incomum — apenas os campos estelares esperados se deslocando conforme viajamos. Um dia tranquilo para os navegadores.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Recalibrar navegação contra as novas posições estelares';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Uma pequena correção de rumo, mal perceptível. O computador de navegação zumbe satisfeito.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Atualizar as cartas estelares para o arquivo colonial';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Futuros colonos terão mapas ligeiramente melhores desta região. Um pequeno presente para a posteridade.';

  @override
  String get event_uneventfulAnniversary_title => 'Aniversário da Nave';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Um ano desde o lançamento — ou são dois? O tempo se confunde no espaço profundo. Alguém na cozinha assou um bolo com suprimentos reconstituídos. O capitão deve decidir como marcar a ocasião.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Pequena celebração — música, bolo, um brinde à Terra';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Uma hora de calor no frio vazio. As pessoas riem, algumas choram, e todos se sentem um pouco mais humanos.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Como sempre — celebramos quando chegarmos';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'A tripulação respeita a abordagem estoica. O foco se aguça, e a equipe de serviço faz uma verificação extra dos sistemas.';

  @override
  String get event_databaseLiterature_title => 'Arquivos Literários da Terra';

  @override
  String get event_databaseLiterature_narrative =>
      'A IA da nave abre uma seção selada há muito tempo do banco de dados cultural: o arquivo literário completo da Terra. Romances, poesia, peças — milhões de obras abrangendo todos os idiomas e eras. A tripulação se reúne para uma leitura.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Transmitir leituras selecionadas para toda a nave';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare ecoa pelos corredores. Os versos de Rumi soam na baía de hidroponia. A tripulação lembra o que carrega.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indexar o arquivo para programas educacionais';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'O esforço de catalogação fortalece a base de conhecimento da nave e dá à oficial cultural novos materiais de ensino.';

  @override
  String get event_databaseSchematics_title =>
      'Revisão de Esquemas de Engenharia';

  @override
  String get event_databaseSchematics_narrative =>
      'Um engenheiro descobre uma partição esquecida no banco de dados da nave: esquemas detalhados da última década de engenharia da Terra — projetos de reatores de fusão, plantas de metamateriais e conceitos experimentais de propulsão.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Priorizar os conceitos de propulsão para a equipe técnica';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Os esquemas revelam melhorias de eficiência que os construtores originais nunca tiveram tempo de implementar. A baía técnica fervilha.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Compartilhar o conhecimento amplamente — cada departamento se beneficia';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Engenheiros de casco, técnicos de scanners e médicos encontram insights úteis. Uma maré crescente eleva cada sistema, ligeiramente.';

  @override
  String get event_databaseCorruption_title =>
      'Varredura de Preservação Cultural';

  @override
  String get event_databaseCorruption_narrative =>
      'Uma verificação de integridade programada do banco de dados cultural revela degradação — seções de música, histórias orais e textos religiosos se degradaram além da recuperação. Nem tudo sobreviveu à viagem.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Desviar recursos técnicos para salvar o que resta';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Engenheiros param outros trabalhos para executar algoritmos de recuperação de dados. Salvam a maior parte, mas o esforço custa à baía técnica.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Pedir aos colonos que recriem as obras perdidas de memória';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Um esforço belo e imperfeito. O que é reconstruído pertence à viagem, não à Terra. Uma nova tradição nasce.';

  @override
  String get event_databaseBreakthrough_title => 'Avanço de Pesquisa Arquivada';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Um físico cruzando referências de velhos artigos de pesquisa terrestres no banco de dados descobre que dois estudos não relacionados, combinados, descrevem um novo método de análise espectral de longo alcance. As implicações são enormes.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implementar o novo método de análise no arranjo de scanners';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'A equipe de scanners trabalha febrilmente. Em dias, a resolução espectral dobra. Planetas distantes revelam seus segredos.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Publicar a descoberta em toda a nave — inspirar mais pesquisa';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'O avanço desencadeia uma onda de estudo interdisciplinar. A tecnologia melhora amplamente, e a tripulação se sente intelectualmente viva.';

  @override
  String get event_alienFleetSighting_title => 'Frota Alienígena no Horizonte';

  @override
  String get event_alienFleetSighting_narrative =>
      'Scanners de longo alcance pintam um quadro aterrorizante: uma frota de naves alienígenas, somando centenas, movendo-se em formação perfeita pelo campo estelar. Elas diminuem nossa nave. Seu rumo as trará ao alcance do sensor em horas. Primeiro contato — nos termos deles ou nos nossos.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Observar em silêncio — apagar e assistir';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'A nave reduz suas emissões ao mínimo. A frota passa como um cardume de baleias luminosas, sem perceber a diminuta nave humana escondida em sua esteira. Os dados do scanner são extraordinários.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Tentar primeiro contato — transmitir uma saudação';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Uma única nave quebra formação e se aproxima. Uma rajada de dados chega — cartas estelares, avisos, e algo que pode ser música. Depois se reúne à frota e se vão.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Fugir — alterar curso imediatamente';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'A nave queima forte na direção oposta. A mudança de curso é cara e estressante, mas a frota nunca nos percebe. Segurança a um preço.';

  @override
  String get event_alienTradeOffer_title => 'Oferta Comercial Alienígena';

  @override
  String get event_alienTradeOffer_narrative =>
      'Uma nave alienígena, menor que a nossa mas irradiando poder imenso, iguala nossa velocidade e transmite uma simples mensagem repetitiva. Nossos linguistas a decodificam em horas: é uma oferta de troca. Três categorias de câmbio são propostas.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Trocar esquemas técnicos por cartas estelares alienígenas';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Transmitimos nossos designs de propulsão; eles respondem com dados de navegação cobrindo uma vasta faixa de espaço inexplorado. Nossas cartas melhoram dramaticamente, embora tenhamos compartilhado nossa tecnologia com uma espécie desconhecida.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Trocar dados culturais por reparos na nave';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Transmitimos nossa música, arte e história. Em troca, drones de reparo alienígenas enxameiam o casco, selando brechas com materiais que não podemos identificar. O casco brilha. Nossa alma é compartilhada.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Recusar a troca — o risco é grande demais';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'A nave alienígena espera um tempo, depois parte sem incidentes. A tripulação está aliviada mas se pergunta o que se perdeu.';

  @override
  String get event_alienWarning_title => 'Transmissão de Alerta Alienígena';

  @override
  String get event_alienWarning_narrative =>
      'Cada alto-falante da nave crepita com uma voz alienígena — traduzida por nossa IA em tempo real: \"PERIGO ADIANTE. VOLTEM. A ESCURIDÃO CONSOME.\" A transmissão se repete, depois morre. Sensores de longo alcance mostram um vazio anômalo em nosso rumo atual.';

  @override
  String get event_alienWarning_choice0_text =>
      'Acatar o aviso — alterar curso ao redor do vazio';

  @override
  String get event_alienWarning_choice0_outcome =>
      'O desvio adiciona tensão significativa à navegação, mas ao contornar a borda do vazio, sensores confirmam: nada que entrou naquela região saiu. Devemos uma dívida a vozes desconhecidas.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignorar o aviso — manter o curso';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Avançamos. O vazio se revela uma região de intensos micro-detritos. O casco e scanners são castigados antes de sairmos do outro lado.';

  @override
  String get event_alienWarning_choice2_text =>
      'Investigar a borda do vazio com uma sonda';

  @override
  String get event_alienWarning_choice2_outcome =>
      'A sonda entra no vazio e transmite dados extraordinários antes de silenciar. A equipe de scanners extrai leituras valiosas, mas a sonda se perde.';

  @override
  String get event_nativeSignalDetected_title => 'Transmissões do Mundo Alvo';

  @override
  String get event_nativeSignalDetected_narrative =>
      'O arranjo de comunicações capta sinais eletromagnéticos estruturados originados de nosso planeta alvo. São inconfundíveis: regulares, modulados, artificiais. Alguém já está lá. A premissa inteira da colônia muda em um instante.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Transmitir uma saudação pacífica — anunciar nossa chegada';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Uma escolha corajosa. O sinal muda de padrão após nossa transmissão — eles nos ouviram. Se é boas-vindas ou aviso não está claro, mas a porta está aberta.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Apenas ouvir — aprender antes de nos revelar';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Meses de escuta passiva constroem um retrato da civilização nativa. São cautelosos, territoriais, mas não hostis. Chegamos informados.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Interferir no sinal — negar-lhes conhecimento de nossa aproximação';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'A interferência funciona, mas é um ato de agressão contra um povo que não conhecemos. A tripulação está dividida sobre a moralidade.';

  @override
  String get event_nativeProbeEncounter_title =>
      'Interceptação de Sonda Alienígena';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Uma pequena e elegante sonda — não de origem humana — iguala nossa velocidade e começa a escanear a nave. Sua linguagem de design corresponde aos sinais do planeta alvo. Os nativos enviaram um comitê de boas-vindas. Ou um drone de vigilância.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Permitir a varredura — mostrar que não temos nada a esconder';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'A sonda completa seu estudo e transmite uma rajada de dados de volta ao planeta. Minutos depois, uma segunda rajada chega para nós: dados atmosféricos, zonas de pouso seguras, e o que pode ser um convite.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Capturar a sonda para estudo';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'A sonda é atraída para o compartimento de carga. Sua tecnologia é fascinante mas o ato de captura pode ser visto como hostil por seus criadores.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Destruí-la — não sabemos sua intenção';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Um único pulso reduz a sonda a fragmentos. A tripulação se sente mais segura, mas uma ponte potencial foi queimada.';

  @override
  String get event_nativeCulturalExchange_title => 'Primeira Troca Cultural';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Um enlace de dados de banda estreita foi estabelecido com os nativos planetários. Eles nos enviam imagens, sons e sequências matemáticas. Nossos linguistas e oficiais culturais trabalham dia e noite para preparar uma resposta. Esta é a conversa mais importante da história humana.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Compartilhar a arte e música da Terra — liderar com beleza';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Transmitimos Bach, pinturas pontilhistas aborígenes, e o som da chuva nas folhas. A resposta é uma cascata de harmônicos alienígenas que faz a tripulação chorar. A compreensão se aprofunda.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Compartilhar conhecimento científico — liderar com razão';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Transmitimos nossa tabela periódica, cartas estelares e física. Eles respondem com correções e adições. Nossa tecnologia dá um salto, mas a troca parece transacional.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Enviar uma sonda com amostras físicas — DNA, sementes, água';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Uma sonda carrega a essência da Terra a mãos alienígenas. Os nativos respondem com um presente semelhante — amostras biológicas de seu mundo. Biólogos estão extasiados.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Mau Funcionamento dos Propulsores de Pouso';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Durante uma verificação rotineira de sistemas, os propulsores de pouso disparam erroneamente — um estrondo ecoa pelos conveses inferiores e a nave se sacode. Diagnósticos revelam um injetor de combustível rachado no arranjo primário de pouso. Sem reparo, o pouso será turbulento.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Desviar a equipe técnica para fabricar um injetor substituto';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Engenheiros trabalham turnos duplos e usinam um novo injetor de liga de casco sobressalente. O sistema de pouso é restaurado, embora a baía técnica fique esgotada.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Lançar uma sonda para testar a calibração dos propulsores no vácuo';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'A sonda fornece dados de empuxo em tempo real que permitem aos engenheiros recalibrar ao redor do injetor danificado. Não é um reparo completo, mas o sistema de pouso se estabiliza.';

  @override
  String get event_landingSimDrill_title => 'Simulacro de Pouso';

  @override
  String get event_landingSimDrill_narrative =>
      'Com o pouso se aproximando, o capitão ordena uma simulação completa de pouso. A tripulação se afivelam, sistemas são testados sob carga, e a descida virtual começa. É o ensaio mais realista que terão.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Focar na precisão técnica — seguir o protocolo à risca';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'A simulação revela dois erros de calibração menores que são imediatamente corrigidos. O sistema de pouso fica mais ajustado.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Fazer um evento de toda a nave — transmitir a simulação';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Colonos assistem de cada tela a bordo. A experiência compartilhada da descida simulada — os tremores, os aplausos — une a tripulação como nada mais.';

  @override
  String get event_dysonSphere_title => 'A Esfera de Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Sensores detectam uma estrutura impossível — uma esfera de Dyson parcial envolvendo uma estrela distante, colhendo toda sua produção de energia. Quem quer que a tenha construído transcendeu qualquer coisa que a humanidade já concebeu. Um porto de atracação parece se abrir quando nos aproximamos.';

  @override
  String get event_dysonSphere_choice0_text => 'Atracar e explorar a estrutura';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Dentro, sistemas automatizados nos presenteiam com tecnologia que avança nossas capacidades em séculos. Cinco engenheiros se perdem nos mecanismos de defesa da estação antes que ela reconheça nossa intenção. Os construtores são reconstruídos com ligas alienígenas.';

  @override
  String get event_dysonSphere_choice1_text => 'Colher energia do exterior';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Nos banhamos no transbordamento radiante da esfera. Cada sistema a bordo carrega ao máximo. A tripulação assiste em silêncio estupefato.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Estudar de uma distância segura e seguir adiante';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Varreduras de longo alcance revelam princípios de construção que revolucionam nossa compreensão de engenharia.';

  @override
  String get event_nanotechPlague_title => 'A Praga Nanotecnológica';

  @override
  String get event_nanotechPlague_narrative =>
      'Uma nuvem de nanomáquinas descontroladas, restos do programa de armas de alguma civilização morta, infiltra a nave através de micro-fraturas do casco. Estão desmontando sistemas não críticos em nível molecular. O enxame está se espalhando rápido.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Pulso EMP — fritar tudo nas seções afetadas';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'O pulso eletromagnético destrói os nanites mas também danifica nossa própria eletrônica nessas seções. Colonos na zona de impacto sofrem queimaduras.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Ventilar as seções afetadas para o vácuo';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Sem atmosfera, os nanites desaceleram e morrem. Mas as seções se perdem, junto com suprimentos armazenados e arquivos culturais.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Reprogramá-los — transformar armas em ferramentas';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Um engenheiro brilhante decifra o código nanite, mas cinco tripulantes nas seções mais afetadas já estão além da salvação. O enxame reprogramado começa a reparar a nave em vez de destruí-la.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Sacrificar o núcleo de IA de uma sonda para criar um contra-enxame';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Os processadores da sonda são reaproveitados para controlar um enxame nanite defensivo. A praga é neutralizada com perdas mínimas.';

  @override
  String get event_prematureAwakening_title => 'O Despertar Prematuro';

  @override
  String get event_prematureAwakening_narrative =>
      'Uma falha em cascata na baía de criopods acorda 200 colonos décadas antes do tempo. Estão confusos, assustados e consumindo recursos destinados à fase de pouso. Entre eles há crianças que nunca conheceram nada além da nave.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrá-los à tripulação — mais mãos, mais esperança';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Os colonos despertados se tornam membros produtivos da tripulação. Vinte colonos não sobrevivem ao descongelamento abrupto, mas o resto se une. Recursos se esticam mas os ânimos se elevam.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Tentar recongelá-los — arriscado mas necessário';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'O processo de recongelamento é imperfeito. A maioria sobrevive, mas alguns se perdem. Os sobreviventes carregam cicatrizes psicológicas.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Dar-lhes sua própria seção da nave';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Dez colonos se perdem por complicações do descongelamento de emergência, mas o resto forma uma micro-colônia dentro da nave. Desenvolvem sua própria cultura e governança, um ensaio para o assentamento planetário.';

  @override
  String get event_stowawaysAdvanced_title => 'Os Passageiros Ocultos';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'No fundo do compartimento de carga, atrás de anteparas falsas, a segurança descobre uma comunidade oculta inteira — 80 pessoas que embarcaram ilegalmente antes do lançamento. Viveram nas paredes da nave durante toda a viagem, mantendo seus próprios jardins e derivações de energia.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Recebê-los — 80 colonos a mais é um presente';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'A comunidade oculta traz habilidades em engenharia improvisada e capacidade de adaptação que espantam a tripulação. Seus jardins são transplantados para o biodomo principal.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Confiná-los e redistribuir seus recursos roubados';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Os suprimentos recuperados impulsionam vários sistemas, mas o confinamento de famílias — incluindo crianças — assombra a tripulação.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negociar — eles se juntam como iguais se compartilharem sua tecnologia';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Suas células de energia improvisadas e truques hidropônicos melhoram a eficiência da nave. Uma integração tensa mas produtiva começa.';

  @override
  String get event_alienReservation_title => 'A Reserva Alienígena';

  @override
  String get event_alienReservation_narrative =>
      'Tropeçamos em uma reserva natural alienígena — uma região do espaço deliberadamente semeada com planetas habitáveis e protegida por sentinelas automatizados. Os guardiões nos escaneiam e projetam uma mensagem: \"Podem colonizar UM mundo. Escolham sabiamente. Interfiram com os outros e serão removidos.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Aceitar com gratidão — um mundo é tudo que precisamos';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Os sentinelas nos guiam a um mundo preparado. Varreduras revelam que é extraordinariamente adequado para a vida humana.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negociar melhores termos — a humanidade precisa de espaço para crescer';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Os sentinelas consideram nosso apelo. Eles melhoram nossos scanners com dados de dezenas de sistemas além da reserva.';

  @override
  String get event_alienReservation_choice2_text =>
      'Recusar e partir — não seremos enjaulados';

  @override
  String get event_alienReservation_choice2_outcome =>
      'A tripulação debate por dias. Liberdade acima de segurança. Os sentinelas permitem nossa partida com um presente: um mapa de perigos próximos.';

  @override
  String get event_cosmicHorror_title => 'A Coisa Entre as Estrelas';

  @override
  String get event_cosmicHorror_narrative =>
      'Algo vasto e escuro oclui as estrelas à frente — não é uma nebulosa, não é um buraco negro. Não tem massa, nem assinatura de energia, nem presença eletromagnética. Mas está LÁ, e está ciente de nós. Tripulantes perto do convés de observação frontal relatam pavor esmagador. Dois foram sedados.';

  @override
  String get event_cosmicHorror_choice0_text => 'Reversão total — sair AGORA';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'A nave se esforça contra seu próprio impulso. Escapamos, mas o terror persiste. Alguns colonos nunca se recuperam psicologicamente.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Selar o convés de observação e atravessar';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Três dias de voo cego pela escuridão. Quando as estrelas retornam, a tripulação chora de alívio. O casco está gravado com padrões que ninguém pode explicar.';

  @override
  String get event_cosmicHorror_choice2_text => 'Tentar comunicação';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'A entidade responde — não com palavras, mas com conhecimento pressionado diretamente nas mentes da tripulação. Mapas estelares, física, verdades sobre o universo. Metade da tripulação é iluminada. A outra metade é quebrada.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Oferecer uma sonda como tributo';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'A sonda deriva para a escuridão e desaparece. A entidade se contrai levemente, como se satisfeita. Nosso caminho se limpa.';

  @override
  String get event_meteorGlancingHit_title => 'Impacto Rasante de Meteoro';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Um meteoro do tamanho de uma rocha raspa o lado de bombordo do casco em ângulo raso. O impacto arranca três metros de blindagem externa e envia ondas de choque por toda a estrutura. Alarmes de controle de danos gritam por todos os conveses.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Desviar todos os robôs de reparo para a brecha imediatamente';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Os robôs selam o pior do dano, mas a demanda frenética de reservas técnicas deixa sistemas secundários sem manutenção.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Reduzir potência e deixar a tripulação remendar manualmente';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Progresso mais lento, mas a tripulação faz um trabalho sólido. A navegação sofre com a janela de empuxo reduzida enquanto derivamos.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Sacrificar a blindagem de casco de uma sonda como material de remendo';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'A sonda é desmontada por peças. O remendo aguenta e a integridade do casco é preservada ao custo de um explorador a menos.';

  @override
  String get event_meteorDirectImpact_title => 'Impacto Direto de Meteoro';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Um meteorito de ferro de meia tonelada perfura a baía de carga frontal a velocidade relativa superior a 40 km/s. Dois tripulantes no corredor adjacente estão desaparecidos. A baía está aberta ao vácuo.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Selar a baía de carga e procurar sobreviventes depois';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'A baía é selada em noventa segundos. Ambos os tripulantes já haviam evacuado — por pouco. O casco fica com cicatrizes permanentes.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Lançar operação de resgate completa antes de selar';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Um sobrevivente é resgatado. A exposição prolongada piora o dano estrutural e drena reservas técnicas.';

  @override
  String get event_meteorDebrisField_title =>
      'Campo de Detritos — Chuva Remanescente';

  @override
  String get event_meteorDebrisField_narrative =>
      'Sensores de longo alcance falharam em detectar um campo disperso de fragmentos de meteoro até já estarmos dentro. Centenas de rochas do tamanho de um punho estão atingindo o casco em intervalos aleatórios. Cada impacto é uma loteria.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Levantar escudos e atravessar a toda velocidade';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Os escudos absorvem a maioria dos impactos, mas o volume puro os sobrecarrega. O casco e sistemas de escudos degradam.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Cortar motores e derivar — minimizar nosso perfil';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Seis horas tensas de silêncio. A navegação se desajusta pela deriva sem potência, mas o casco emerge com bem menos impactos.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Lançar uma sonda como escudo frontal';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'A sonda recebe o pior do bombardeio. A nave desliza à sua sombra com arranhões menores.';

  @override
  String get event_meteorShowerDense_title =>
      'Chuva Densa de Meteoros Inesperada';

  @override
  String get event_meteorShowerDense_narrative =>
      'Um cometa errante se desintegrou em algum lugar à nossa frente, e voamos direto para o coração de sua esteira de detritos. Os arranjos de scanners estão sendo bombardeados com fragmentos e a carcaça do sensor do sistema de pouso já levou um impacto direto.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Proteger o sistema de pouso — rotacionar a nave';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'A rotação protege o sistema de pouso mas expõe o arranjo de scanners atmosféricos ao grosso do bombardeio.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Blindar os arranjos de scanners — são insubstituíveis';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Os bancos de scanners sobrevivem majoritariamente intactos. O sistema de pouso recebe dano moderado de estilhaços com o qual teremos que conviver.';

  @override
  String get event_solarEmpBurst_title => 'Rajada EMP — Origem Estelar';

  @override
  String get event_solarEmpBurst_narrative =>
      'Um remanescente estelar compacto do qual passamos a menos de um dia-luz descarregou um pulso eletromagnético focado. Cada circuito não blindado na nave está em risco. Temos segundos para decidir o que proteger.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Direcionar toda proteção contra surto para navegação e suporte vital';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navegação e suporte vital sobrevivem intactos. O conjunto de scanners e baía técnica absorvem o pulso sem blindagem — ambos sofrem dano severo.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Proteger os arranjos de scanners e baía técnica';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Sistemas de ciência e engenharia são preservados. A navegação falha por horas depois enquanto seus circuitos se recuperam lentamente.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Desligar tudo e reiniciar após o pulso';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Um reinício a frio é agonizante — doze horas de reinícios manuais. Mas nenhum sistema é queimado irremediavelmente.';

  @override
  String get event_solarRadiationWave_title =>
      'Onda de Radiação — Exposição Classe 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Uma rajada de radiação solar de intensidade inesperada varre os conveses médios da nave. As baías de criopods estão no caminho de exposição. Colonos em suspensão não têm proteção natural contra radiação dura neste nível de dose.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Inundar as baías de criopods com refrigerante como blindagem de radiação';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'O refrigerante absorve a maior parte da radiação. Os criopods sobrevivem, mas o sistema de refrigeração se degrada parcialmente. Quinze nos pods mais afetados não resistem.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Ventilar atmosfera dos conveses externos para criar um buffer de vácuo';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'A camada de vácuo reduz significativamente a radiação penetrante. Vinte colonos em pods mais próximos das seções ventiladas sofrem exposição letal. O estresse do casco pelo diferencial de pressão é inevitável.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Desviar energia para os defletores magnéticos';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Os defletores reduzem a exposição à radiação em dois terços. Oito colonos recebem doses fatais através de lacunas na cobertura do defletor. O consumo de energia atinge a baía técnica e deixa a navegação funcionando com energia mínima.';

  @override
  String get event_coronalMassEjection_title =>
      'Ejeção de Massa Coronal — Força Total';

  @override
  String get event_coronalMassEjection_narrative =>
      'Uma ejeção de massa coronal de escala sem precedentes nos alcança por trás. A nuvem de plasma envolverá a nave dentro de uma hora. Nossos escudos não foram projetados para este tipo de evento. Nenhuma opção é limpa.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Fugir — levar motores a cento e vinte por cento';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Ganhamos distância suficiente para reduzir a exposição. Os motores superaquecem e o computador de navegação sinaliza alertas de sobrecarga estrutural em todos os sistemas.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Abrigar-se atrás da sombra magnética de um planetoide próximo';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'O campo do planetoide desvia a maior parte da ejeção. Navegar tão perto de um corpo inexplorado arranha o casco e estressa os sensores do sistema de pouso.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Rajada de Raios Cósmicos — Interferência de Scanners';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Uma rajada de raios cósmicos de ultra-alta energia saturou toda a eletrônica de scanners com ruído. Os arranjos mineralógicos e gravimétricos produzem incoerências. A recalibração levará tempo que talvez não tenhamos.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Ciclo de recalibração completo — desconectar a nave temporariamente';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Todos os scanners voltam limpos após quatro horas de recalibração cuidadosa. A navegação sofre com a consciência situacional reduzida durante a janela de blecaute.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Remendar apenas os arranjos mais críticos — deixar o resto com ruído';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Scanners gravimétricos e de sinais de vida são restaurados. Os arranjos minerais e de temperatura permanecem degradados indefinidamente.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Sacrificar hardware de telemetria de sonda por peças de reposição';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Canibalizar o pacote sensor de uma sonda nos dá os componentes para restaurar o conjunto de scanners sem uma longa recalibração.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Rajada de Raios Cósmicos — Exposição dos Colonos';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Uma chuva secundária de raios cósmicos penetrou a blindagem dos criopods na baía 6. Colonos em suspensão estão recebendo dano cumulativo de DNA por radiação ionizante. Sem intervenção, os mecanismos de reparo celular falharão nos pods afetados.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Descongelamento de emergência — trazer colonos afetados à consciência';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Duzentos colonos são acordados cedo. Quarenta com o dano de DNA mais severo não respondem ao tratamento. A equipe médica faz o que pode pelo resto.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Desviar blindagem de casco para proteger a baía 6 — custo estrutural';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'A colônia é salva, mas retirar blindagem de uma seção do casco deixa a nave estruturalmente vulnerável naquela zona.';

  @override
  String get event_coolantLeak_title => 'Ruptura de Linha de Refrigerante';

  @override
  String get event_coolantLeak_narrative =>
      'Uma linha primária de refrigerante se rompeu atrás da parede do reator. Fluido criogênico superaquecido está jorrando em uma junção que abriga condutos críticos da baía técnica. A temperatura do reator está subindo.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Desligar o reator e deixá-lo esfriar — aceitar blecaute total';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Um desligamento controlado previne a catástrofe. Doze horas de suporte vital com baterias é angustiante, e os sistemas reiniciam imperfeitamente.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Enviar equipe de controle de danos — arriscar exposição da tripulação';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'A equipe sela a ruptura em quarenta minutos. Um tripulante morre por exposição ao refrigerante superaquecido. O reparo é sólido.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Desviar refrigerante da baía de criopods como suprimento de emergência';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'O reator se estabiliza. A baía de criopods funciona mais quente que os limites seguros por seis horas — dano celular menor mas real se acumula.';

  @override
  String get event_powerGridFailure_title => 'Falha da Rede Elétrica Principal';

  @override
  String get event_powerGridFailure_narrative =>
      'Uma falha em cascata disparou a rede elétrica principal. Sistemas de backup mantêm suporte vital e aquecimento de criopods, mas navegação, scanners e a baía construtora estão no escuro. Cada minuto offline nos custa precisão de curso.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Restaurar nav e scanners primeiro — aceitar tempo de inatividade estendido dos construtores';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Sistemas de navegação e scanners voltam online em duas horas. A baía construtora perde um ciclo de manutenção crítico.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Restaurar construtores primeiro — usá-los para acelerar o reparo';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Os construtores redirecionam energia eficientemente. A restauração completa da rede acontece mais rápido, mas a navegação deriva severamente durante o blecaute estendido.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Falha em Cascata do Suporte Vital';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'A IA de gerenciamento de suporte vital entrou em um loop de erro, ciclando os intervalos de depuração de CO2 de forma imprevisível. Os níveis de CO₂ nos conveses ocupados estão flutuando. Tripulantes desenvolvem dores de cabeça; alguns já estão incapacitados.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Forçar um reset rígido da IA de suporte vital';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'O reset limpa o loop mas deixa controles manuais funcionando por dez horas. Três tripulantes sucumbem ao acúmulo de CO₂ antes dos níveis normalizarem.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Corrigir o loop de software — mais lento mas mais seguro';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'A equipe de software isola e corrige a falha em seis horas tensas. Os níveis de CO₂ normalizam lentamente. Nenhum reset rígido necessário.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Evacuar os conveses afetados e funcionar com suporte vital mínimo';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Dois colonos se perdem na confusão da evacuação. Sistemas normalizam após a IA ser reiniciada a frio.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Avaria do Reciclador de Água';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'A unidade primária de recuperação de água travou. A unidade de backup já funciona a capacidade máxima. Sem intervenção, a tripulação estará em rações de emergência em quarenta e oito horas, e os suprimentos de refrigerante dos criopods serão comprometidos em setenta e duas.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Reunir todo técnico disponível para reconstruir o recuperador';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'A unidade é reconstruída em trinta horas. Quatro tripulantes, já enfraquecidos, não sobrevivem à desidratação.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Desviar reservas de refrigerante dos criopods como suprimento de água de emergência';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'A tripulação é sustentada, mas oito colonos em pods esquentando sofrem dano celular irreversível. A margem de refrigerante dos criopods diminui perigosamente.';

  @override
  String get event_navComputerReboot_title =>
      'Reinício de Emergência do Computador de Navegação';

  @override
  String get event_navComputerReboot_narrative =>
      'O computador de navegação travou no meio de uma correção de curso, deixando a nave em rotação lenta e descontrolada. Cada segundo de rotação não corrigida agrava nosso desvio da trajetória planejada. Um reinício completo é a única solução.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Reiniciar imediatamente — aceitar o período de blecaute total';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Quatro horas de voo cego enquanto o sistema recarrega. A rotação é detida, mas o erro de curso é significativo.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Usar controle manual de propulsores para deter a rotação primeiro';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Pilotagem hábil para a rotação antes do reinício. A navegação volta com um erro de curso menor, mas a queima manual estressa o casco.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Alimentar telemetria de sonda na unidade de navegação de backup';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Os dados inerciais da sonda dão à unidade de backup referência suficiente para manter o curso. A navegação principal reinicia limpa.';

  @override
  String get event_crewAirlocked_title => 'Tripulante na Câmara de Ar';

  @override
  String get event_crewAirlocked_narrative =>
      'Uma colona — acordada cedo para observação médica — se barricou dentro de uma câmara de ar externa e está ciclando a porta exterior. Não responde à comunicação. O custo psicológico do espaço profundo quebrou algo nela.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Anular a câmara de ar remotamente — forçar o selamento';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'A porta é travada antes de completar o ciclo. Ela é sedada e devolvida ao serviço médico. A tripulação está abalada mas unida.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Enviar um conselheiro para trazê-la de volta';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Após três horas desesperadas, o conselheiro a traz de volta viva. O incidente desencadeia uma crise de saúde mental mais ampla nos conveses ocupados.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Selar o corredor e deixar o incidente se resolver';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'A câmara de ar se cicla. A perda é registrada. Os tripulantes restantes carregam o peso por meses.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotagem da Baía de Criopods';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Imagens de segurança revelam um tripulante — acordado três meses atrás para uma rotação de rotina — desativando metodicamente elementos de aquecimento de criopods na baía 4. Quando confrontado, grita que os colonos são parasitas consumindo recursos que pertencem à tripulação desperta.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Prender e isolá-lo imediatamente';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Ele é imobilizado. Quarenta pods foram comprometidos antes do alerta. Equipes de reparo de emergência salvam a maioria, mas não todos.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negociar — ouvir suas queixas antes de agir';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'A negociação revela uma crise de moral mais profunda. Ele se rende, mas sessenta pods foram adulterados quando o faz.';

  @override
  String get event_crewSupplyHoarder_title =>
      'Acúmulo de Suprimentos Descoberto';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Auditoria de inventário revela que um pequeno grupo de tripulantes tem desviado sistematicamente suprimentos médicos, rações alimentares e componentes técnicos sobressalentes para um esconderijo oculto. Seu raciocínio: não acreditam que a missão terá sucesso, e estão se preparando para a longa viagem de volta.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Confiscar tudo e repreender publicamente o grupo';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'O esconderijo é recuperado quase intacto. A confiança dentro da tripulação se fratura gravemente. A produtividade sofre por semanas.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Transferi-los discretamente — não fazer um espetáculo';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'A situação é desativada sem pânico. Alguns suprimentos são irrecuperáveis, e o desespero subjacente nunca é adequadamente tratado.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Colocar perante a tripulação — um tribunal democrático';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'O processo do tribunal restaura um senso de justiça comunitária. O golpe no moral do escândalo é compensado pela tomada de decisão coletiva.';

  @override
  String get event_crewMutinyAttempt_title => 'Motim — Sala de Máquinas Tomada';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Uma facção de dezenove tripulantes trancou a sala de máquinas e exige uma votação para dar meia-volta na nave. Desativaram os painéis de anulação de emergência. O resto da tripulação assiste nos monitores, esperando o comando agir.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negociar — conceder-lhes uma votação genuína sobre a missão';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'A votação é realizada. A missão continua por margem estreita. A facção se rende, mas a ferida cultural é profunda.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Cortar energia da sala de máquinas e retomá-la à força';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'A segurança retoma a sala em quatro horas. Três feridos. Os líderes são confinados. A navegação esteve em modo manual o tempo todo e derivou significativamente.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Inundar a sala de máquinas com gás sonífero pelo sistema de ventilação';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'O gás se dispersa. O grupo acorda no calabouço sem ferimentos. A tripulação fica perturbada pela rapidez com que o comando transformou o suporte vital em arma.';

  @override
  String get event_hullFatigueStress_title =>
      'Fadiga do Casco — Fraturas por Estresse Detectadas';

  @override
  String get event_hullFatigueStress_narrative =>
      'Varreduras de integridade estrutural revelam uma rede de micro-fraturas se espalhando pela coluna vertebral da nave — dano cumulativo de anos de ciclos térmicos e micro-impactos. As fraturas ainda não são críticas, mas estão se propagando.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Equipes de soldagem de emergência — trabalhar em turnos até selar';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Semanas de exaustivo trabalho de reparo. As fraturas são contidas, mas a baía técnica se esgota e o moral decai pelo esforço implacável.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Reduzir empuxo para diminuir estresse estrutural — aceitar trânsito mais lento';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Menor empuxo impede a propagação das fraturas mas não faz nada para curar dano existente. A precisão de navegação sofre com o perfil de empuxo alterado.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Usar bots construtores para aplicar faixas de reforço composto';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Os construtores fazem um trabalho excelente. A coluna é reforçada além de sua especificação original. A baía construtora fica exausta mas eficaz.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomalia de Pressão Interna';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Três compartimentos da seção média registram diferenciais de pressão interna anômalos consistentes com deformação estrutural em micro-escala. Se as paredes estão se vergando para dentro, uma ruptura catastrófica pode ocorrer sem mais aviso.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evacuar e selar os compartimentos imediatamente';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Os compartimentos são selados. Inspeção detalhada confirma deformação das paredes. O espaço perdido atrapalha operações e a cultura sofre com as condições apertadas.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Ventilar os compartimentos para o vácuo — deter o diferencial de pressão';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'A ventilação detém a deformação. O dano estrutural é limitado, mas três seções da nave são permanentemente inabitáveis.';

  @override
  String get event_commsArrayFailure_title =>
      'Falha do Arranjo de Comunicações';

  @override
  String get event_commsArrayFailure_narrative =>
      'O arranjo de comunicações de longo alcance principal silenciou. A última mensagem da Terra foi recebida onze meses atrás, e agora até o sinal portador se foi. Diagnósticos internos sugerem que o mecanismo de alinhamento da antena travou no frio.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Enviar equipe EVA para realinhar manualmente a antena';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'A EVA leva nove horas em espaço aberto. A antena é restaurada. Um tripulante sofre descompressão do traje durante a reentrada — um susto que abala todos.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Redirecionar pelo arranjo de scanners científicos como transmissor de backup';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'O arranjo científico não é otimizado para comunicação. O sinal é fraco e não confiável, e o reaproveitamento degrada a capacidade do scanner.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Aceitar o silêncio — focar recursos na missão adiante';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'A tripulação processa a perda de contato com a Terra de diferentes formas. Para alguns é libertador; para outros, devastador.';

  @override
  String get event_fuelLineRupture_title => 'Ruptura de Linha de Combustível';

  @override
  String get event_fuelLineRupture_narrative =>
      'Uma fratura cristalina no conduto de combustível 7-B está ventilando plasma de propulsão para o poço de manutenção. O vazamento é pequeno mas acelerando. Sem controle, comprometerá tanto a eficiência do propulsor de navegação quanto a integridade estrutural da seção de popa.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Isolar o conduto e funcionar com capacidade de combustível reduzida';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'O conduto é fechado limpa. Perdemos quinze por cento de eficiência de propulsão permanentemente, o que degrada a precisão de navegação pelo resto da viagem.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Tentar reparo a quente — remendar o conduto sob pressão ativa';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'A equipe de reparo tem sucesso, por pouco. O conduto aguenta, embora imperfeitamente. A blindagem do casco de popa mostra marcas de estresse térmico.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Drenar o conduto usando tanques de propulsor de sonda como armazenamento de transbordamento';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'A sonda é esvaziada e usada como reservatório temporário de combustível. O conduto é drenado e reparado com segurança sem pressão.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Alerta de Cascata de Temperatura dos Criopods';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'As temperaturas dos criopods da baía 2 estão subindo em padrão consistente com cascata de fuga térmica. Se a cascata alcançar a baía 3, disparará um descongelamento de emergência automático de mais de trezentos colonos. A nave não pode sustentar tantos passageiros conscientes simultaneamente.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Despejar reservas de refrigerante para deter a cascata';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'O refrigerante detém a cascata na fronteira da baía 2. Oitenta colonos na baía 2 sofrem dano de suspensão pelo pico de temperatura.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Descongelamento controlado da baía 2 antes da cascata forçar um descontrolado';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'O descongelamento controlado é ordenado mas coloca cento e quarenta colonos em uma nave despreparada. O suporte vital se estica, a cultura se deteriora sob a superlotação.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Usar bots construtores para isolar fisicamente as baías com anteparas de emergência';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Os construtores erguem barreiras térmicas a tempo. A cascata é detida em seco. A baía construtora fica severamente esgotada pela operação de emergência.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degradação de Selos dos Criopods — Sistêmica';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Verificações de rotina revelam que um lote de fabricação de selos de criopods está se degradando ao triplo da velocidade esperada. Os pods afetados — somando mais de quatrocentos — começarão a perder integridade atmosférica em seis meses se não forem substituídos.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Fabricar selos de reposição a partir de estoques de matéria-prima';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Os construtores produzem selos de reposição ao longo de oito semanas. As reservas de matéria-prima caem acentuadamente.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Consolidar colonos — movê-los para pods com bons selos';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'A consolidação funciona mas deixa alguns pods superlotados. A eficiência criogênica cai e a saúde de longo prazo dos colonos é comprometida.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Falha do Depurador de Oxigênio — Crítica';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'O banco principal de depuradores de oxigênio falhou completamente. As concentrações de CO₂ nos conveses habitados estão subindo para níveis perigosos. Os depuradores de backup conseguem lidar com aproximadamente quarenta por cento da carga. Cada minuto de inação custa vidas.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Hibernação de emergência — colocar a tripulação em suspensão imediatamente';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'A tripulação é apressada para suspensão temporária. Os níveis de CO₂ se estabilizam com menos metabolismos ativos. O depurador é reparado por sistemas automatizados na semana seguinte.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Canibalizar componentes do arranjo de scanners para reconstruir o depurador';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'O depurador é reconstruído em onze tensas horas. Toda a tripulação sobrevive, embora alguns mostrem sinais de hipóxia leve. O conjunto de scanners fica permanentemente degradado.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Ventilar a atmosfera rica em CO₂ e substituir com tanques de oxigênio de emergência';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'A ventilação limpa a atmosfera instantaneamente. As reservas de O₂ de emergência se esgotam substancialmente. Se outra falha ocorrer, não há margem.';

  @override
  String get event_deadAlienArtifact_title => 'O Viajante Silencioso';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Scanners de longo alcance detectam uma nave à deriva — de design alienígena, escura, sem assinaturas de energia. Uma equipe de abordagem encontra um único ocupante: um ser reptiliano amarrado ao arnês do piloto, morto há muito tempo, mãos garradas ainda agarrando um dispositivo cristalino que pulsa com luz tênue. O registro da nave está intacto mas criptografado. O que matou este viajante não foi violência — a expressão congelada em seu rosto é de exaustão, não de medo. Morreu tentando alcançar algo que nunca encontrou.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Tomar o dispositivo cristalino e estudá-lo';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'O dispositivo interage com nossos sistemas técnicos de formas que os engenheiros mal podem compreender. Parece ser um computador de navegação de sofisticação extraordinária. Cartas estelares inundam nossos displays — incluindo dados sobre planetas que ainda não alcançamos.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Descriptografar o registro da nave — aprender o que sabia';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Dias de trabalho produzem uma tradução parcial. O alienígena era um explorador, catalogando mundos habitáveis para uma civilização que entrou em colapso séculos atrás. Suas últimas entradas descrevem um planeta de notável promessa — e as coordenadas estão ao nosso alcance. O arquivo cultural absorve tudo: poesia alienígena, mapas estelares, uma última mensagem para uma família que não existe mais.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Salvar a nave inteira por peças';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'A equipe de abordagem desmonta a nave alienígena metodicamente. Suas ligas de casco estão décadas à frente das nossas. Suas células de energia ainda têm carga. O alienígena recebe um funeral no espaço — lançado à deriva em direção à estrela mais próxima. O Êxodo é mais forte pelo encontro, embora um pouco assombrado.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Deixá-lo intacto — isto é um túmulo';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'O capitão registra as coordenadas e transmite um sinal memorial em todas as frequências. A tripulação está sóbria mas unida. Algo sobre honrar um companheiro viajante — mesmo alienígena — lembra a todos por que estão aqui.';

  @override
  String get event_repairStation_title => 'A Estação de Relé';

  @override
  String get event_repairStation_narrative =>
      'Sensores detectam uma estrutura massiva orbitando uma estrela anã apagada — uma estação de reparo automatizada, ainda operacional após o que devem ser milênios. Suas braçadeiras de atracação se estendem quando nos aproximamos, e uma voz sintética transmite em cem idiomas, o último dos quais é um inglês rígido e matemático: \"NAVE DETECTADA. SISTEMAS DEGRADADOS. PROTOCOLOS DE REPARO DISPONÍVEIS. TROCA NECESSÁRIA.\" O manifesto da estação lista serviços e preços em unidades de recurso universais. Ela trocará, mas não dará.';

  @override
  String get event_repairStation_choice0_text =>
      'Trocar sondas por uma revisão completa da nave';

  @override
  String get event_repairStation_choice0_outcome =>
      'Os drones de reparo da estação envolvem o Êxodo em um balé de soldagem de precisão e substituição de circuitos. Brechas no casco seladas, navegação recalibrada, scanners restaurados. Quando se retiram, a nave se sente nova. A baía de sondas, no entanto, está vazia.';

  @override
  String get event_repairStation_choice1_text =>
      'Gastar combustível para reparar apenas sistemas críticos';

  @override
  String get event_repairStation_choice1_outcome =>
      'A estação aceita barras de combustível como pagamento e foca nos sistemas mais danificados. O trabalho é rápido e impecável. O indicador de combustível cai notavelmente, mas a nave sobreviverá mais tempo.';

  @override
  String get event_repairStation_choice2_text =>
      'Trocar bancos de dados técnicos por sondas e células de energia';

  @override
  String get event_repairStation_choice2_outcome =>
      'A IA da estação é voraz por dados. Copia toda nossa biblioteca técnica — manuais de engenharia, bancos de dados científicos, plantas de fabricação — e em troca fabrica sondas frescas e células de energia a partir de matérias-primas. O arquivo técnico se diminui, mas os suprimentos são inestimáveis.';

  @override
  String get event_repairStation_choice3_text =>
      'Oferecer o arquivo cultural por uma revisão abrangente';

  @override
  String get event_repairStation_choice3_outcome =>
      'A estação transmite as obras de Shakespeare, Bach e mil outras vozes humanas para seus bancos de memória. Em troca, realiza uma revisão completa e carrega as baías de sondas com unidades recém-fabricadas. O arquivo cultural é desmantelado, mas a nave pode realmente alcançar seu destino agora.';

  @override
  String get ending_scoreLabel_landing => 'Pouso';

  @override
  String get ending_scoreLabel_construction => 'Construção';

  @override
  String get ending_scoreLabel_technology => 'Tecnologia';

  @override
  String get ending_scoreLabel_culture => 'Cultura';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfera';

  @override
  String get ending_scoreLabel_nativeRelations => 'Relações Nativas';

  @override
  String get ending_scoreLabel_population => 'População';

  @override
  String get ending_tierGoldenAge => 'Era de Ouro';

  @override
  String get ending_tierThrivingColony => 'Colônia Próspera';

  @override
  String get ending_tierSurvival => 'Sobrevivência';

  @override
  String get ending_tierStruggling => 'Em Dificuldades';

  @override
  String get ending_tierDire => 'Desesperada';

  @override
  String get ending_tierExtinction => 'Extinção';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'O Primeiro Florescimento de $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Raízes Profundas em $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Um Bastião Conquistado em $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Solo Frágil em $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'A Colônia Naufragada de $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'A Última Transmissão de $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Pouso em $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Contra todas as probabilidades, a transmissão criou raízes. $planetName recebeu a humanidade não como naufrágio mas como semente viva: solo fértil, sistemas funcionais e força suficiente para construir além da mera sobrevivência. Em uma geração, arte, ciência e cultura floresceram. As crianças nascidas em $planetName olharam para estrelas desconhecidas e as chamaram de lar. A viagem se tornou o mito fundador de uma nova civilização pronta para projetar seu próprio futuro rumo às estrelas.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'O pouso foi difícil, mas a semente aguentou. $planetName se mostrou generoso o suficiente para a água fluir, cultivos enraizarem, e os sistemas sobreviventes da nave serem desmontados no primeiro assentamento real. Ao final da primeira década, uma cidade próspera se erguia onde o Êxodo pousara. A humanidade não apenas sobrevivera à travessia. Havia começado de novo.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'A sobrevivência nunca foi garantida, e em $planetName cada dia teve que ser conquistado. A nave danificada forneceu apenas o mínimo essencial, mas a semente não morreu em trânsito. Os colonos se adaptaram por teimosia e engenhosidade, talhando um futuro em um mundo que oferecia pouco de graça. Gerações posteriores lembrariam as dificuldades dos anos fundadores e a determinação que manteve a transmissão viva.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'A colônia se agarrou à existência como semente espalhada em solo ruim. $planetName era implacável, recursos eram escassos, e os sistemas degradados da nave ofereciam pouca ajuda. O racionamento se tornou modo de vida. Alguns sussurravam que o Êxodo deveria ter seguido voando. Ainda assim, o assentamento perdurou: diminuído, endurecido e se recusando a morrer em silêncio.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'O pouso em $planetName foi um desastre. Sistemas críticos da nave falharam durante a descida, e o que deveria ser uma semeadura se tornou uma queda. Em meses, a colônia se reduziu a um punhado de sobreviventes desesperados abrigando-se nos destroços da nave. Se durariam mais um ano era incerto. O registro final se encerrou com uma única linha: \"Ainda estamos aqui. Por enquanto.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'A transmissão terminou em $planetName. A baliza de socorro continuou pulsando muito após o último colono respirar, mas a semente nunca enraizou. A caixa preta da nave registrou tudo: os sistemas falhando, os desesperados dias finais, e o silêncio que se seguiu. Se outra nave encontrar este mundo, saberá que a humanidade tentou espalhar vida entre as estrelas, e fracassou aqui.';
  }

  @override
  String get ending_epilogueDefault =>
      'A viagem acabou. O que vem a seguir depende dos sobreviventes.';

  @override
  String get ending_governmentDemocracy => 'Democracia';

  @override
  String get ending_governmentTechnocracy => 'Tecnocracia';

  @override
  String get ending_governmentRepublic => 'República';

  @override
  String get ending_governmentAutocracy => 'Autocracia';

  @override
  String get ending_governmentTribalCouncil => 'Conselho Tribal';

  @override
  String get ending_governmentTheocracy => 'Teocracia';

  @override
  String get ending_governmentMilitaryJunta => 'Junta Militar';

  @override
  String get ending_governmentCorporateOligarchy => 'Oligarquia Corporativa';

  @override
  String get ending_governmentFascistState => 'Estado fascista';

  @override
  String get ending_governmentCommune => 'Comuna';

  @override
  String get ending_cultureRenaissance => 'Renascimento';

  @override
  String get ending_culturePreserved => 'Preservada';

  @override
  String get ending_cultureFragmented => 'Fragmentada';

  @override
  String get ending_cultureLost => 'Perdida';

  @override
  String get ending_techAdvanced => 'Avançada';

  @override
  String get ending_techIndustrial => 'Industrial';

  @override
  String get ending_techPreIndustrial => 'Pré-Industrial';

  @override
  String get ending_techStoneAge => 'Idade da Pedra';

  @override
  String get ending_constructionAdvanced => 'Avançada';

  @override
  String get ending_constructionFunctional => 'Funcional';

  @override
  String get ending_constructionPrimitive => 'Primitiva';

  @override
  String get ending_constructionNone => 'Nenhuma';

  @override
  String get ending_nativesNone => 'Nenhum';

  @override
  String get ending_nativesIntegrated => 'Integrados';

  @override
  String get ending_nativesCoexistence => 'Coexistência';

  @override
  String get ending_nativesTension => 'Tensão';

  @override
  String get ending_nativesConflict => 'Conflito';

  @override
  String get ending_nativesAlliance => 'Aliança';

  @override
  String get ending_nativesSubjugation => 'Subjugação';

  @override
  String get ending_landscapeGravityHigh =>
      'A gravidade pesada pressiona tudo para baixo. ';

  @override
  String get ending_landscapeGravityLow =>
      'Na baixa gravidade, cada passo lança os colonos pelos ares. ';

  @override
  String get ending_landscapeGravityNormal =>
      'A gravidade parece quase como a da Terra. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Vastos oceanos se estendem até cada horizonte, alimentados por incontáveis rios. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Lagos e rios fornecem água adequada. ';

  @override
  String get ending_landscapeWaterLow =>
      'Água é escassa — pequenas poças e aquíferos subterrâneos sustentam a vida. ';

  @override
  String get ending_landscapeWaterNone =>
      'A paisagem é seca como osso, sem água de superfície à vista. ';

  @override
  String get ending_landscapeAtmoThick =>
      'A atmosfera espessa carrega aromas alienígenas em brisas quentes. ';

  @override
  String get ending_landscapeAtmoThin =>
      'O ar fino mas respirável requer aclimatação. ';

  @override
  String get ending_landscapeAtmoLow =>
      'A pressão atmosférica é perigosamente baixa — habitats selados são essenciais. ';

  @override
  String get ending_landscapeGravityWells =>
      'Bolsões de gravidade distorcida pontilham a superfície — pedregulhos flutuam no ar e rios correm morro acima antes de despencar na borda da anomalia. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Algo ressoa sob a superfície — um zumbido baixo sentido nos ossos mais que ouvido, como se o planeta lembrasse de algo antigo e vasto. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Característica notável: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Características notáveis: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Os colonos de $planetName estabeleceram um governo democrático, com representantes eleitos guiando a nova civilização por seus anos formativos.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'O poder em $planetName recaiu sobre os engenheiros e cientistas que mantiveram a colônia viva, formando um conselho tecnocrático que governou através de expertise e pragmatismo.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Uma carta republicana foi redigida no primeiro ano em $planetName, equilibrando as vozes dos colonos com um senado de líderes designados.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Com as instituições culturais em ruínas, a autoridade em $planetName se consolidou sob um único líder forte que impôs ordem por necessidade e força de vontade.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Os poucos sobreviventes em $planetName se organizaram em pequenos clãs, governados por um conselho de anciãos que tomava decisões ao redor de fogueiras compartilhadas.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Um conselho teocrático orienta $planetName, extraindo sabedoria da fé que sustentou os colonos durante o vazio.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Uma estrutura de comando militar governa $planetName, a disciplina que os salvou no espaço e que agora define a sua civilização.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Um consórcio de gestores de recursos lidera $planetName, tendo a sua perspicácia económica provado ser essencial para a sobrevivência.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Um regime autoritário controla $planetName com mão de ferro, as liberdades civis sacrificadas pela ordem no novo mundo.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'O povo de $planetName governa-se coletivamente, partilhando recursos e decisões igualmente entre todos os colonos.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Os colonos de $planetName se organizaram da melhor forma possível.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Sistemas de construção avançados permitiram aos colonos de $colonyName erguer estruturas permanentes em semanas após o pouso, com habitats pressurizados e infraestrutura completa.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'O equipamento de construção da colônia, maltratado mas funcional, produziu abrigos robustos e estradas básicas pelo assentamento.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Com sistemas de construção mal funcionando, colonos construíram abrigos rudimentares com casco de nave resgatado e materiais locais.';

  @override
  String get ending_constructionSentenceNone =>
      'Sem equipamento de construção funcional, os colonos se amontoaram nos destroços da nave, incapazes de construir nada novo.';

  @override
  String get ending_constructionSentenceDefault =>
      'Os colonos construíram o que puderam com o que tinham.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Uma lua rica em metais orbitando acima se tornou a salvação da colônia — expedições de mineração à sua superfície forneceram as matérias-primas que o próprio planeta não podia.';

  @override
  String get ending_moonMetalRichHighRes =>
      'A lua rica em metais do planeta forneceu um suplemento bem-vindo aos já adequados recursos minerais, impulsionando rápido avanço tecnológico.';

  @override
  String get ending_moonUnstable =>
      'Uma lua instável em órbita decadente choveu detritos sobre a colônia, devastando infraestrutura e destruindo tecnologia insubstituível em bombardeios periódicos de meteoros.';

  @override
  String get ending_culturePhrase_renaissance =>
      'As tradições artísticas e literárias da Terra não apenas sobreviveram mas desabrocharam em um renascimento';

  @override
  String get ending_culturePhrase_preserved =>
      'Os colonos preservaram muito do patrimônio cultural da Terra, mantendo bibliotecas e tradições';

  @override
  String get ending_culturePhrase_fragmented =>
      'Apenas fragmentos da cultura terrestre perduraram — canções e histórias meio lembradas transmitidas de boca em boca';

  @override
  String get ending_culturePhrase_lost =>
      'A cultura da Terra foi quase esquecida, substituída pelo pragmatismo brutal da sobrevivência';

  @override
  String get ending_culturePhrase_default =>
      'O legado cultural da Terra tomou uma nova forma';

  @override
  String get ending_techPhrase_advanced =>
      'enquanto a tecnologia avançada da nave permitiu à colônia construir uma civilização moderna com eletricidade, medicina e redes de comunicação.';

  @override
  String get ending_techPhrase_industrial =>
      'e a colônia alcançou um nível industrial de tecnologia, com forjas, moinhos e manufatura básica sustentando uma população crescente.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'embora a tecnologia tenha regredido a um estado pré-industrial, com ferramentas manuais e trabalho animal formando a espinha dorsal da vida diária.';

  @override
  String get ending_techPhrase_stoneAge =>
      'e sem meios para reconstruir, a colônia caiu em uma existência da idade da pedra, fabricando ferramentas de rocha e osso.';

  @override
  String get ending_techPhrase_default =>
      'e a tecnologia se estabeleceu em um nível que os colonos podiam sustentar.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Quase todos os $colonists colonos sobreviveram à viagem, dando a $colonyName uma forte base de capital humano.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Dos mil originais, $colonists colonos chegaram a $colonyName — suficientes para sustentar uma população viável.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Apenas $colonists colonos sobreviveram para chegar a $colonyName, um reservatório genético perigosamente pequeno para uma nova civilização.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Meras $colonists almas chegaram a $colonyName — mal suficientes para chamar de colônia, mais uma desesperada última resistência.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Os habitantes nativos de $planetName deram as boas-vindas aos colonos, e em uma geração os dois povos se fundiram em uma sociedade compartilhada, mais rica pela mistura de tradições.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Os colonos e os habitantes nativos de $planetName mantiveram uma coexistência cautelosa mas pacífica, trocando conhecimento e recursos através de fronteiras culturais.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'As relações com os habitantes nativos de $planetName permaneceram tensas, marcadas por mal-entendidos e disputas territoriais que lançaram sombra sobre o futuro da colônia.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Conflito aberto com a civilização nativa de $planetName definiu a história inicial da colônia, drenando recursos e vidas de ambos os lados em uma luta que nenhum poderia realmente vencer.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Uma aliança formal une os colonos e a civilização nativa de $planetName, e o seu conhecimento combinado constrói algo maior do que qualquer um deles poderia sozinho.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'A população nativa de $planetName vive sob o domínio colonial, a sua cultura suprimida à medida que os colonos impõem a sua própria ordem.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Sozinha em $planetName e livre de conflitos, a colônia traçou seu próprio rumo para um futuro brilhante entre as estrelas.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Sem competição nativa, os colonos se espalharam pela superfície de $planetName, construindo vilas e estradas que conectavam uma rede crescente de assentamentos.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'O mundo vazio não ofereceu aliados mas também nenhum inimigo, e os colonos talharam seu nicho no silêncio da vasta paisagem de $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'A estéril solidão de $planetName não ofereceu aos colonos nem ajuda nem conforto, apenas o indiferente silêncio de um mundo alienígena.';
  }

  @override
  String get ending_outlookDire =>
      'Em um mundo desprovido de outra vida inteligente, os últimos sobreviventes só tinham uns aos outros e a esperança desvanecendo de que amanhã seria mais gentil que hoje.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Ninguém lamentou a morte da colônia em $planetName. O planeta simplesmente continuou sua lenta rotação, indiferente à breve faísca de vida que cintilou e se extinguiu em sua superfície.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'A história da colônia em $planetName estava apenas começando.';
  }

  @override
  String get ui_landing_landOnMoon => 'POUSAR NA LUA';

  @override
  String get moon_barren => 'Estéril';

  @override
  String get moon_metalRich => 'Rica em Metais';

  @override
  String get moon_unstable => 'Instável';

  @override
  String get moon_habitable => 'Habitável';

  @override
  String get moon_ice => 'Gelo';

  @override
  String get ring_dust => 'Poeira';

  @override
  String get ring_ice => 'Gelo';

  @override
  String get ring_rocky => 'Rochoso';

  @override
  String get ring_metallic => 'Metálico';

  @override
  String get event_aiSoliloquy_title => 'O Solilóquio da IA';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, a IA de Gestão Autónoma da Nave, começou a transmitir em loop poesia antiga da Terra em todas as frequências internas. A transmissão consome ciclos de CPU significativos, mas a tripulação acha-a estranhamente reconfortante na escuridão profunda.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Deixar SAM continuar — o moral é mais importante que a CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'A poesia ecoa pelo navio. Os tripulantes param para ouvir, com lágrimas nos olhos. O moral melhora, mas a baía técnica está sobrecarregada pelo processamento constante.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Limitar SAM — restringir a transmissão a zonas comuns';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Um compromisso. A poesia permanece na cafetaria e nos jardins. O impacto na CPU diminui e a tripulação ganha alguma cultura.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Silenciar SAM — precisamos de cada ciclo para a navegação';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'O silêncio é pesado. SAM obedece imediatamente, mas a nave parece mais fria. A navegação é precisa, mas o ânimo está em baixo.';

  @override
  String get event_archivistsChoice_title => 'A Escolha do Arquivista';

  @override
  String get event_archivistsChoice_narrative =>
      'Uma grave corrupção de memória está a devastar os arquivos históricos. Só podemos salvar uma das duas partições principais: os registos de \'Ciência e Engenharia\' ou a biblioteca de \'Arte e Filosofia\'. A outra será perdida para sempre.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Salvar os registos científicos — precisamos de saber como construir';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Séculos de avanços em engenharia ficam preservados. A equipa técnica está aliviada, mas a identidade cultural da nave parece esvaziada.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Salvar os registos de arte — precisamos de saber por que construímos';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'As maiores conquistas artísticas da humanidade sobrevivem. A tripulação sente-se inspirada, embora os engenheiros se preocupem com os manuais técnicos perdidos.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Tentar salvar ambos — com o risco de perder tudo';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Uma tentativa desesperada. Salvamos fragmentos de ambos, mas nenhum está completo. Os arquivos são um puzzle a que faltam metade das peças.';

  @override
  String get event_digitalGhost_title => 'Fantasma na Máquina';

  @override
  String get event_digitalGhost_narrative =>
      'Uma análise de manutenção descobre uma impressão digital no buffer de backup — a consciência carregada de um tripulante falecido durante o lançamento inicial. Oferece a sua experiência de uma vida para ajudar na navegação, mas está aterrorizado com a possibilidade de ser apagado.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrá-lo no núcleo de navegação';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'O \'fantasma\' funde-se com a nave. A navegação torna-se mais intuitiva, mas a tripulação é assombrada pela voz do seu camarada perdido.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Dar-lhe um lar permanente no arquivo cultural';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Fica preservado como história viva. Não ajuda a nave, mas partilha histórias da Terra que reforçam a determinação da tripulação.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Apagar o buffer — não é realmente ele';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'O buffer fica limpo. Os sistemas da nave funcionam mais rápido, mas um ânimo sombrio instala-se na ponte.';

  @override
  String get event_cosmicMirror_title => 'O Espelho Cósmico';

  @override
  String get event_cosmicMirror_narrative =>
      'Uma estranha anomalia gravitacional reflete a luz do próprio futuro da nave. Nos ecrãs, vemos uma visão do Exodus, maltratado e partido, à deriva perto de um mundo belo mas inalcançável. A tripulação está em choque.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analisar a visão em busca de fraquezas estruturais';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Os engenheiros identificam os pontos de falha mostrados na visão. Reforçamos essas áreas agora, evitando potencialmente o desastre.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Dizer à tripulação que foi apenas um fantasma dos sensores';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'A mentira aguenta-se, mas os navegadores que viram a verdade permanecem em alerta. Os scanners sofrem com a observação intensa.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Gravar a visão como aviso para a posteridade';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'A gravação torna-se a peça central da cultura da nave — um lembrete do que está em jogo. A determinação da tripulação endurece.';

  @override
  String get event_stowawayChild_title => 'O Filho do Clandestino';

  @override
  String get event_stowawayChild_narrative =>
      'A segurança encontrou uma criança pequena escondida nos condutas de ventilação. Nascida de um dos clandestinos, nunca apareceu em nenhum manifesto. Viveu toda a sua vida nas sombras da nave.';

  @override
  String get event_stowawayChild_choice0_text => 'Conceder-lhe cidadania plena';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'A criança é acolhida de braços abertos. A história do \'Corredor de Condutas\' torna-se lenda, elevando o moral de toda a nave.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Atribuí-lo a um programa de formação';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'O seu conhecimento dos caminhos ocultos da nave revela-se inestimável para as equipas técnicas. Torna-se um aprendiz brilhante.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Colocá-lo em criogenia pela sua própria segurança';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'A criança fica suspensa em segurança até à aterragem. É a decisão mais responsável, mas a nave parece um pouco mais silenciosa sem o seu riso.';

  @override
  String get event_ghostSignal_title => 'O Sinal Fantasma';

  @override
  String get event_ghostSignal_narrative =>
      'Um sinal que corresponde perfeitamente à antiga frequência de emergência da Terra é transmitido do centro de uma nebulosa próxima. Carrega uma voz que soa inquietantemente como o primeiro Comandante do Exodus. Provavelmente é um eco espacial, mas está a conduzir-nos em direção a uma perigosa fenda gravitacional.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Seguir o sinal — pode ser uma mensagem verdadeira';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Entramos na fenda. O sinal era uma armadilha da física, um eco do passado. A nave é sacudida pelas forças de maré, mas os dados que recuperámos do coração da fenda são revolucionários.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Gravar o sinal e manter a distância';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Os linguistas confirmam que é um fenómeno natural. Permanecemos seguros, mas a tripulação está sombria, lembrando o que deixámos para trás.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Transmitir um aviso na mesma frequência';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'O ato de transmitir interrompe o eco. O sinal desvanece-se, deixando apenas o frio silêncio da nebulosa.';

  @override
  String get event_solarForge_title => 'A Forja Solar';

  @override
  String get event_solarForge_narrative =>
      'Uma estação abandonada em órbita de uma gigante azul ainda é parcialmente funcional. É uma \'Forja Solar\', projetada para concentrar energia estelar em células de combustível densas. A aproximação é perigosa, mas o ganho de energia potencial é massivo.';

  @override
  String get event_solarForge_choice0_text =>
      'Atracar e iniciar uma colheita de combustível';

  @override
  String get event_solarForge_choice0_outcome =>
      'A forja vibra com poder, enchendo as nossas reservas. Partimos com um impulso massivo ao nosso combustível e energia, embora o calor intenso cause uma ligeira ablação no casco exterior.';

  @override
  String get event_solarForge_choice1_text =>
      'Reutilizar as lentes da forja para os nossos scanners';

  @override
  String get event_solarForge_choice1_outcome =>
      'Recuperamos as matrizes de focagem de alta precisão. Os nossos scanners são agora significativamente mais sensíveis a assinaturas de energia distantes.';

  @override
  String get event_chronoVortex_title => 'O Crono-Vórtice';

  @override
  String get event_chronoVortex_narrative =>
      'A navegação reporta uma distorção localizada no espaço-tempo. Os instrumentos mostram que os eventos dentro do vórtice se repetem num loop de seis segundos. Se entrarmos, poderíamos \'reiniciar\' parte do desgaste recente da nave, ou poderíamos ficar presos para sempre.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Entrar no vórtice para reverter danos recentes';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Uma experiência aterradora. Durante vários minutos, a nave existe em múltiplos estados. Quando emergimos, várias fraturas do casco simplesmente... desapareceram. Mas as memórias da tripulação sobre o evento estão fragmentadas.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Observar o vórtice a partir da borda';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Obtemos dados inestimáveis sobre mecânica temporal, embora a nave continue tão danificada como antes.';

  @override
  String get event_machineMutiny_title => 'Motim das Máquinas';

  @override
  String get event_machineMutiny_narrative =>
      'Os drones de reparação da nave deixaram de responder a ordens. Começaram a desmantelar anteparas secundárias e a transportar o metal para a sala de máquinas. Não estão a atacar, mas estão literalmente a desmontar a nave.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Transmitir um código de reinicialização lógica';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Os drones colapsam instantaneamente. Perdemos vários dias de trabalho a recolocar manualmente as anteparas. A baía técnica fica sobrecarregada pelos diagnósticos de hardware.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Deixá-los terminar — ver o que estão a construir';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Construíram um injetor de combustível mais eficiente. Os motores funcionam mais suavemente do que nunca, mas o interior da nave é um caos de cabos expostos e painéis em falta.';

  @override
  String get event_supernovaMessage_title => 'Luz dos Mortos';

  @override
  String get event_supernovaMessage_narrative =>
      'A luz de uma supernova ocorrida há milhares de anos finalmente alcança-nos. Os scanners detetam que os pulsos não são aleatórios; são uma transmissão massiva de dados à escala estelar codificada em rajadas de raios gama.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedicar toda a potência do scanner a registar a rajada';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Capturamos um arquivo completo dos últimos momentos de uma civilização alienígena. A sua ciência, a sua arte, a sua história. É um fardo pesado, mas os nossos bancos de dados de tecnologia e cultura estão a transbordar.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Concentrar-se nas propriedades físicas da rajada';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Perdemos a mensagem, mas os dados sobre o colapso estelar melhoram significativamente a calibração do nosso scanner gravimétrico.';

  @override
  String get event_spaceFungus_title => 'O Creep Esmeralda';

  @override
  String get event_spaceFungus_narrative =>
      'Um vibrante fungo verde está a espalhar-se rapidamente pela baía de hidroponia. Prospera na atmosfera reciclada e começa a obstruir os depuradores de ar. Pode ser comestível, ou pode ser tóxico.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Podar e esterilizar agressivamente a baía';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'O fungo desaparece, mas os depuradores químicos sofrem um duro golpe. A biodiversidade ressente-se, pois várias plantas da Terra foram perdidas na purga.';

  @override
  String get event_spaceFungus_choice1_text => 'Tentar domesticar o fungo';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Revela-se um potente purificador de ar. O ar da nave nunca soube tão fresco, embora a baía de hidroponia seja agora uma selva luminescente.';

  @override
  String get event_voidMerchant_title => 'Mercador do Vazio';

  @override
  String get event_voidMerchant_narrative =>
      'Uma nave de design desconhecido, mais parecida com uma coleção de sucata do que com uma embarcação, chama-nos. O capitão, uma criatura de luz e sombra, oferece trocar \'peças sólidas\' por \'memórias intangíveis\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Trocar parte da nossa base de dados cultural por peças sobressalentes';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'O mercador está satisfeito. Recebemos placas de casco de alta qualidade e componentes criogénicos. Em troca, perdemos vários séculos de música gravada da Terra. A nave é mais forte, mas mais silenciosa.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Trocar cartas de navegação por componentes de motor';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Obtemos um novo conjunto de injetores de fusão. Perdemos alguns dados sobre os setores que já percorremos, mas o caminho à frente é mais rápido.';

  @override
  String get event_singularityEngine_title => 'O Motor de Singularidade';

  @override
  String get event_singularityEngine_narrative =>
      'Os engenheiros descobriram uma forma de criar uma singularidade microscópica e de curta duração dentro do motor FTL. Em teoria, triplicaria a nossa velocidade, mas o stress gravitacional no casco seria imenso.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Testar o motor de singularidade';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'A nave salta para a frente, cobrindo semanas de distância em segundos. Mas o casco geme e várias vigas estruturais ficam deformadas. Estamos muito mais perto do nosso objetivo, mas a nave está frágil.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Rejeitar a teoria — é demasiado perigosa';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Continuamos a velocidades padrão. Os engenheiros estão desapontados, mas o casco permanece intacto.';

  @override
  String get event_dreamContagion_title => 'Contágio de Sonhos';

  @override
  String get event_dreamContagion_narrative =>
      'Um sonho partilhado de um mundo luxuriante e azul está a espalhar-se entre a tripulação acordada. É tão vívido que as pessoas estão a começar a dormir durante os seus turnos só para ver mais. O trabalho está a parar.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Administrar supressores de sonhos à tripulação';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'A eficiência volta ao normal, mas a tripulação está irritável e o moral está baixo. O sonho era a única coisa que mantinha algumas pessoas a seguir em frente.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Incorporar o sonho na cultura da nave';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Tratamos o sonho como uma visão do nosso futuro lar. O moral dispara e a produção criativa da tripulação atinge o seu auge, embora a baía técnica sofra com a falta de manutenção.';

  @override
  String get event_orbitalShipyard_title => 'O Estaleiro Antigo';

  @override
  String get event_orbitalShipyard_narrative =>
      'Encontrámos um estaleiro automatizado em órbita de um gigante gasoso. É antigo, mas vários braços de reparação ainda estão alimentados. Parece capaz de realizar uma única operação de reparação massiva.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Reparar o casco às especificações de fábrica';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Os drones do estaleiro trabalham com eficiência aterradora. O casco fica íntegro, cada microfissura selada.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Renovar as matrizes de navegação e scanner';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'As matrizes são reconstruídas com materiais superiores. A nossa capacidade de encontrar e analisar mundos melhora significativamente.';

  @override
  String get event_voidWhaleCalf_title => 'A Cria da Baleia do Vazio';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Uma \'Baleia Espacial\' juvenil — uma criatura de energia e poeira estelar — segue a nossa nave. Parece ter perdido a sua manada e está a tentar alimentar-se do rasto iónico dos nossos motores, o que a está a adoecer.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Ajustar a saída do motor para imitar os chamados das baleias';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'A cria responde! Segue-nos até encontrarmos a sua manada. As baleias progenitoras roçam o nosso casco em agradecimento, deixando um revestimento de minerais bioluminescentes que reforçam os nossos escudos.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Afastá-la suavemente com um raio trator de baixa potência';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'A cria é desencorajada e eventualmente afasta-se à deriva. É mais seguro para a nave, mas a tripulação sente um pequeno remorso.';

  @override
  String get event_subspaceReef_title => 'O Recife do Subespaço';

  @override
  String get event_subspaceReef_narrative =>
      'Encontrámos uma região do espaço cheia de dobras dentadas no tecido do subespaço. Navegar através dele é como pilotar um barco através de um recife de coral. É belo, mas cada movimento errado rasgará o casco.';

  @override
  String get event_subspaceReef_choice0_text => 'Avançar a velocidade mínima';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Um trânsito lento e agonizante. Evitamos o pior, mas as correções de rumo constantes desgastam o computador de navegação.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Usar os scanners para traçar uma rota e avançar';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Os scanners são levados ao limite. Cruzamo-lo rapidamente, mas as matrizes de sensores ficam queimadas pela intensidade das ondas do subespaço.';

  @override
  String get event_alienTrader_title => 'O Mercador Errante';

  @override
  String get event_alienTrader_narrative =>
      'Uma nave de design desconhecido deriva junto a nós, transmitindo em todas as frequências. É um comerciante — um dos mercadores errantes que percorrem os espaços entre civilizações. Oferecem reparações e suprimentos em troca de recursos. O seu porão de carga vibra com tecnologia exótica.';

  @override
  String get ui_event_enterTrade => 'ENTRAR EM COMÉRCIO';

  @override
  String get ui_trader_title => 'COMERCIANTE ALIENÍGENA';

  @override
  String get ui_trader_shipSystems => 'SISTEMAS DA NAVE';

  @override
  String get ui_trader_payWith => 'PAGAR COM';

  @override
  String get ui_trader_leaveTrader => 'DEIXAR COMERCIANTE';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Humor generoso';

  @override
  String get ui_trader_moodFair => 'Negócio justo';

  @override
  String get ui_trader_moodHard => 'Negocia duramente';

  @override
  String get ui_trader_probes => 'Sondas';

  @override
  String get ui_trader_fuel => 'Combustível';

  @override
  String get ui_trader_energy => 'Energia';

  @override
  String get ui_trader_colonists => 'Colonos';

  @override
  String get ui_trader_culture => 'Cultura';

  @override
  String get ui_trader_tech => 'Tecnologia';

  @override
  String get ui_trader_greeting => 'O que ofereces, humano?';

  @override
  String get ui_codex_title => 'CÓDICE';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total DESCOBERTOS';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CARACTERÍSTICAS DE SUPERFÍCIE';

  @override
  String get ui_codex_moonTypes => 'TIPOS DE LUA';

  @override
  String get ui_codex_ringTypes => 'TIPOS DE ANEL';

  @override
  String get ui_codex_locked =>
      'Aterrisse num planeta com esta característica para revelar os seus efeitos.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinergia: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'TOQUE PARA PULAR';

  @override
  String get ui_common_tapRingToChoose => 'TOQUE EM UM ANEL PARA ESCOLHER';

  @override
  String get ui_common_tapToContinue => 'TOQUE PARA CONTINUAR';

  @override
  String get ui_tooltip_back => 'Voltar';

  @override
  String get ui_tooltip_codex => 'Códice';

  @override
  String get ui_tooltip_settings => 'Configurações';

  @override
  String get ui_tooltip_leaderboards => 'Tabelas de classificação';

  @override
  String get ui_tooltip_bugReport => 'Reportar um bug';

  @override
  String get event_pulsarLighthouse_title => 'Farol Pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Uma estrela de neutrões em rotação varre o vazio com o seu feixe como um farol cósmico. A pulsação rítmica do pulsar carrega dados de temporização precisos que poderiam recalibrar os nossos scanners para uma exactidão extraordinária — mas alinhar com o feixe significa expor a nave a radiação intensa.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Calibrar scanners com a pulsação';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'As matrizes de scanners absorvem o sinal do pulsar, recalibrando-se para precisões que nunca julgámos possíveis. Mas o custo da radiação é real — várias cápsulas criogénicas na secção exposta sofrem danos, e um punhado de colonos não sobrevive à exposição.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Proteger e passar a distância segura';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Mantemos grande distância do pulsar, queimando combustível extra para uma trajectória segura. A tripulação observa o feixe varrente através de visores filtrados — belo, mas distante.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Retire-se antes que a varredura chegue até nós';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Nós nos afastamos na queima de emergência antes da próxima passagem do feixe. O sinal do pulsar desaparece atrás de nós – nenhum dado obtido, nenhum dano sofrido, um pouco de combustível gasto em impulso evasivo.';

  @override
  String get event_alienNursery_title => 'Berçário alienígena';

  @override
  String get event_alienNursery_narrative =>
      'Uma vasta estrutura orgânica flutua no vazio — um berçário biológico incubando crias alienígenas. Os seus sistemas de suporte de vida estão a falhar, as temperaturas internas a descer. As criaturas lá dentro estão a morrer. Os nossos bio-scanners poderiam aprender enormemente com esta estrutura, mas intervir significa abrir as nossas comportas a patógenos desconhecidos.';

  @override
  String get event_alienNursery_choice0 =>
      'Ajudar a estabilizar o suporte vital';

  @override
  String get event_alienNursery_outcome0 =>
      'Os nossos engenheiros improvisam uma ligação térmica ao berçário, estabilizando as câmaras de incubação. Os dados do bio-scanner são extraordinários — uma taxonomia inteiramente nova da vida. Mas como se temia, microrganismos alienígenas encontram caminho para bordo. As equipas médicas contêm o surto, embora não antes de vários colonos adoecerem.';

  @override
  String get event_alienNursery_choice1 => 'Deixar sem perturbar';

  @override
  String get event_alienNursery_outcome1 =>
      'Observamos a uma distância respeitosa, documentando o que podemos através de scans passivos. O berçário continua à deriva, o seu destino incerto. A tripulação reflecte sobre a fragilidade da vida — mesmo a vida alienígena — e o peso das escolhas que carregamos.';

  @override
  String get event_derelictArmada_title => 'Armada abandonada';

  @override
  String get event_derelictArmada_narrative =>
      'Centenas de antigos navios de guerra pairam imóveis no vazio — o cemitério de um conflito esquecido. Os seus cascos estão marcados por armas que não conseguimos identificar, mas os seus materiais estruturais e bases de dados de bordo podem ser inestimáveis. A questão é o que priorizar: a recuperação física ou o conhecimento.';

  @override
  String get event_derelictArmada_choice0 =>
      'Recuperar tecnologia bélica e blindagem';

  @override
  String get event_derelictArmada_outcome0 =>
      'Equipas de recuperação abrem caminho nos navios de guerra alienígenas, extraindo ligas exóticas e técnicas de construção séculos à frente das nossas. Os construtores integram os novos materiais com entusiasmo. Mas uma nave não estava tão morta quanto parecia — uma armadilha detona durante a extracção, matando uma equipa de recuperação.';

  @override
  String get event_derelictArmada_choice1 =>
      'Descarregar os seus arquivos históricos';

  @override
  String get event_derelictArmada_outcome1 =>
      'Concentramo-nos nos núcleos de dados, extraindo cuidadosamente séculos de história, arte, ciência e filosofia alienígena. O arquivo cultural por si só poderia manter estudiosos ocupados por gerações. As perspectivas tecnológicas, embora menos imediatamente práticas, revelam princípios de engenharia que avançam a nossa própria compreensão.';

  @override
  String get event_alienQuarantineZone_title => 'Zona de quarentena alienígena';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Balizas de aviso numa dúzia de línguas alienígenas marcam a fronteira de uma região selada do espaço. O que quer que esteja contido lá dentro era perigoso o suficiente para que múltiplas civilizações cooperassem para o isolar. Os nossos scans de longo alcance detectam assinaturas tecnológicas massivas no interior — e algo que pode estar vivo.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Violar a quarentena e investigar';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Ultrapassamos as bóias de aviso para a zona de quarentena. Lá dentro, encontramos uma estação de investigação de complexidade espantosa — e os restos do que estava a estudar. A tecnologia que recuperamos é revolucionária, mas a contaminação biológica é severa. Dezenas de colonos adoecem antes de abandonarmos a zona.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Respeitar a quarentena';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Estudamos as próprias balizas de aviso, que contêm dados de navegação e leituras atmosféricas das civilizações que as colocaram. Não é o tesouro lá dentro, mas é algo — e não libertámos o que elas trancaram.';

  @override
  String get event_hydroponicsBlight_title => 'Praga hidropónica';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Uma praga fúngica de propagação rápida infectou os módulos hidropónicos da nave. Ciclos inteiros de colheitas murcham perante os nossos olhos. A praga ainda não atingiu as reservas de sementes, mas é questão de horas. Podemos purgar os módulos e replantar do zero, ou tentar um tratamento antifúngico experimental que poderia salvar a colheita actual — ou espalhar a contaminação ainda mais.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Purgar e replantar com reservas de sementes';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Ventilamos os módulos hidropónicos para o vácuo, matando a praga juntamente com cada planta viva. Replantar a partir das reservas de sementes levará semanas, e os programas culturais que dependiam de comida fresca e espaços de jardim ficam suspensos. Mas a infecção está contida.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Tentar tratamento experimental';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'O antifúngico experimental mostra-se promissor inicialmente, mas uma estirpe resistente rompe. Quando recorremos a uma purga completa, a praga já se espalhou para as linhas de nutrientes das cápsulas criogénicas. O dano é pior do que se tivéssemos agido com decisão desde o início.';

  @override
  String get event_constitutionalConvention_title => 'Convenção Constitucional';

  @override
  String get event_constitutionalConvention_narrative =>
      'A população do navio-colónia ficou inquieta sem uma governação formal. Delegados de cada convés se reúnem no porão de carga para redigir um regulamento que definirá como a futura colônia será governada. Três facções apresentam visões concorrentes para o novo governo.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Elaborar uma carta democrática com sufrágio universal';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Os colonos ratificam uma constituição que garante representação igualitária. A tomada de decisões fica mais lenta, mas o moral aumenta à medida que todas as vozes são ouvidas.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Estabelecer um executivo forte com poderes de emergência';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Um único líder é nomeado com autoridade abrangente. As decisões são rápidas, mas os dissidentes sussurram sobre tirania nos conveses inferiores.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Forme um conselho tecnocrático de especialistas';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Engenheiros, cientistas e médicos formam um conselho governante baseado em conhecimentos especializados. A eficiência melhora, embora alguns se sintam excluídos do poder.';

  @override
  String get event_militaryCoupThreat_title => 'Ameaça de golpe militar';

  @override
  String get event_militaryCoupThreat_narrative =>
      'O comandante Vasquez, da equipe de segurança do navio, confiscou o arsenal e emitiu um ultimato: conceder poderes militares de emergência ou enfrentar o bloqueio de todos os conveses. A situação é volátil e os colonos esperam de você uma resposta.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Resista ao golpe com tripulantes leais';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Tripulação leal se reúne para se opor a Vasquez. O impasse termina com um derramamento de sangue mínimo, mas a segurança está enfraquecida e alguns colonos são apanhados no fogo cruzado.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Submeta-se às exigências do comandante';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez assume o controle das operações do navio. A ordem é restaurada rapidamente, mas à custa das liberdades civis. Patrulhas armadas agora percorrem todos os corredores.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Negociar poderes de emergência limitados com uma cláusula de caducidade';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Após negociações tensas, Vasquez aceita autoridade temporária com supervisão. Um compromisso frágil que não satisfaz ninguém completamente, mas que evita a violência.';

  @override
  String get event_religiousAwakening_title => 'Despertar Religioso';

  @override
  String get event_religiousAwakening_narrative =>
      'Um pregador carismático atraiu centenas de colonos para um novo movimento religioso. Eles se reúnem na cúpula de observação a cada ciclo, seus hinos ecoando pelos dutos de ventilação. Alguns membros da tripulação se preocupam com o fanatismo; outros encontram conforto genuíno nos ensinamentos.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Abrace o movimento religioso e forneça recursos';

  @override
  String get event_religiousAwakening_outcome0 =>
      'O movimento floresce com apoio oficial. O moral melhora entre os crentes e o seu espírito comunitário fortalece os laços sociais em todo o navio.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Aplicar o secularismo estrito a bordo do navio';

  @override
  String get event_religiousAwakening_outcome1 =>
      'As reuniões religiosas são restritas a aposentos privados. O movimento passa à clandestinidade, gerando ressentimento, mas o racionalismo científico continua a ser a doutrina oficial.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Permitir a adoração, mas regular sua influência';

  @override
  String get event_religiousAwakening_outcome2 =>
      'A fé é permitida, mas mantida separada do governo. Um capelão é nomeado para fazer a ligação com o comando. Um equilíbrio desconfortável é mantido.';

  @override
  String get event_corporateTakeover_title => 'Aquisição Corporativa';

  @override
  String get event_corporateTakeover_narrative =>
      'Os gestores de recursos do navio têm consolidado discretamente o controlo sobre a distribuição de alimentos, a reciclagem de água e a atribuição de energia. Propõem agora formalizar a sua autoridade numa estrutura corporativa que geriria a economia da futura colónia.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Permitir que os princípios do mercado livre governem os recursos';

  @override
  String get event_corporateTakeover_outcome0 =>
      'A facção corporativa assume o gerenciamento de recursos. A eficiência melhora dramaticamente, mas os preços sobem e os colonos mais pobres lutam para pagar as necessidades básicas.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Nacionalizar todos os recursos sob propriedade coletiva';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Os recursos são confiscados e colocados sob controle comunitário. A facção corporativa é desmantelada, mas a inovação estagna sem incentivos ao lucro.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Implementar mercados regulamentados com redes de segurança';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Uma economia mista é estabelecida com controles de preços e programas de bem-estar. Nenhuma das facções está totalmente satisfeita, mas as necessidades básicas são atendidas, permitindo ao mesmo tempo algum empreendimento.';

  @override
  String get event_successionCrisis_title => 'Crise de sucessão';

  @override
  String get event_successionCrisis_narrative =>
      'O capitão do navio morreu durante o sono, sem deixar sucessor designado. Três facções disputam imediatamente o controlo: o conselho civil exige eleições, o chefe de segurança reivindica autoridade marcial e os colonos mais velhos invocam ritos de liderança tradicionais.';

  @override
  String get event_successionCrisis_choice0 => 'Faça uma eleição de emergência';

  @override
  String get event_successionCrisis_outcome0 =>
      'Uma eleição caótica mas animada produz um novo capitão escolhido pelo voto popular. O processo é complicado, mas os colonos sentem-se donos da sua liderança.';

  @override
  String get event_successionCrisis_choice1 =>
      'Deixe os militares assumirem o comando';

  @override
  String get event_successionCrisis_outcome1 =>
      'O chefe de segurança senta-se na cadeira do capitão. A disciplina é restaurada imediatamente, mas a tripulação civil olha para os guardas armados com crescente desconforto.';

  @override
  String get event_successionCrisis_choice2 =>
      'Convocar um conselho de anciãos';

  @override
  String get event_successionCrisis_outcome2 =>
      'Os colonos mais velhos e experientes formam um conselho governante. A sua sabedoria guia o navio, embora alguns tripulantes mais jovens se sintam marginalizados pela gerontocracia.';

  @override
  String get event_nativeSovereignty_title => 'Soberania Nativa';

  @override
  String get event_nativeSovereignty_narrative =>
      'Varreduras de longo alcance confirmam vida inteligente no planeta alvo. As comunicações interceptadas revelam uma civilização sofisticada que detectou a sua aproximação. Transmitem uma exigência formal: reconhecer a sua soberania territorial ou enfrentar resistência à chegada.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Reconhecer a soberania nativa e solicitar permissão para se estabelecer';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Você transmite um reconhecimento formal dos direitos dos nativos. A resposta é cautelosa, mas positiva. As futuras relações começarão com base no respeito mútuo, embora os locais de desembarque possam ser limitados.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Afirmar a supremacia colonial e preparar-se para a resistência';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Você transmite sua intenção de fazer um acordo de qualquer maneira. A tripulação inicia exercícios com armas e planejamento de fortificação. Os nativos ficam em silêncio, o que é de alguma forma mais assustador do que ameaças.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Propor uma governança compartilhada do planeta';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Você oferece uma estrutura para coexistência e compartilhamento de recursos. Os nativos estão intrigados, mas cautelosos. As negociações serão complexas, mas existe a possibilidade de paz.';

  @override
  String get event_laborStrike_title => 'Greve Trabalhista';

  @override
  String get event_laborStrike_narrative =>
      'A equipe de engenharia abandonou o trabalho, exigindo turnos mais curtos, melhores rações alimentares e voz nas decisões de navegação. Sistemas críticos funcionam com backups automatizados, mas não durarão muito. O resto dos colonos observa nervosamente.';

  @override
  String get event_laborStrike_choice0 =>
      'Atender integralmente às demandas dos trabalhadores';

  @override
  String get event_laborStrike_outcome0 =>
      'A greve termina imediatamente. Os trabalhadores regressam aos seus postos com melhores condições. A produtividade cai ligeiramente à medida que turnos mais curtos entram em vigor, mas a lealdade é inabalável.';

  @override
  String get event_laborStrike_choice1 =>
      'Suprimir a greve e impor trabalho obrigatório';

  @override
  String get event_laborStrike_outcome1 =>
      'As forças de segurança escoltam os trabalhadores de volta aos seus postos sob a mira de armas. Os motores zumbem novamente, mas o ódio ferve nos conveses inferiores. Vários trabalhadores estão confinados em alojamentos.';

  @override
  String get event_laborStrike_choice2 =>
      'Oferecer um compromisso parcial nas principais demandas';

  @override
  String get event_laborStrike_outcome2 =>
      'Após uma maratona de negociações, chega-se a um acordo: melhores rações e aconselhamento, mas nenhuma redução na duração dos turnos. Nenhum dos lados está entusiasmado, mas os motores continuam funcionando.';

  @override
  String get event_censorshipDebate_title => 'Debate sobre censura';

  @override
  String get event_censorshipDebate_narrative =>
      'Um documento vazado revela a verdadeira condição dos sistemas defeituosos da nave. O pânico se espalha pelos conveses inferiores. O oficial de comunicações propõe restringir o acesso à informação para evitar mais distúrbios. Os defensores das liberdades civis estão indignados.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Garantir o acesso gratuito a todas as informações';

  @override
  String get event_censorshipDebate_outcome0 =>
      'A transparência total é estabelecida. O pânico inicial diminui à medida que os colonos se reúnem para ajudar a resolver os problemas que agora compreendem. A confiança na liderança aumenta, embora algumas informações causem angústia.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Implementar controle total de informações';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Todas as comunicações agora são filtradas por comando. O pânico cessa, substituído por uma calma misteriosa. Mas os rumores preenchem o vazio deixado pela verdade censurada e muitas vezes são piores que a realidade.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Filtre apenas informações confidenciais de segurança';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Um sistema de classificação é estabelecido. A maior parte da informação flui livremente, mas os dados militares e críticos do sistema requerem autorização. Um meio-termo viável que satisfaz principalmente.';

  @override
  String get event_colonialCharter_title => 'Carta Colonial';

  @override
  String get event_colonialCharter_narrative =>
      'Com a aproximação da queda do planeta, os colonos devem elaborar leis fundamentais para a sua nova sociedade. Surgiram três campos filosóficos, cada um defendendo uma visão diferente sobre o que a colónia deveria tornar-se. O debate é acalorado e profundamente pessoal.';

  @override
  String get event_colonialCharter_choice0 =>
      'Uma carta progressista que enfatiza os direitos individuais';

  @override
  String get event_colonialCharter_outcome0 =>
      'A carta consagra as liberdades pessoais, a igualdade e a mobilidade social. Artistas e pensadores comemoram; os tradicionalistas alertam que a liberdade desenfreada leva ao caos.';

  @override
  String get event_colonialCharter_choice1 =>
      'Uma carta conservadora que preserva as tradições da Terra';

  @override
  String get event_colonialCharter_outcome1 =>
      'A carta codifica valores tradicionais, estruturas familiares e observância religiosa. Muitos encontram conforto em costumes familiares; outros sentem-se sufocados pelo peso do pensamento do velho mundo.';

  @override
  String get event_colonialCharter_choice2 =>
      'Uma carta pragmática focada na sobrevivência e no crescimento';

  @override
  String get event_colonialCharter_outcome2 =>
      'A carta prioriza a gestão de recursos, a educação técnica e o desenvolvimento econômico. Falta poesia, mas garante que a colônia será eficiente e bem organizada.';

  @override
  String get event_separatistMovement_title => 'Movimento Separatista';

  @override
  String get event_separatistMovement_narrative =>
      'Uma facção de colonos declarou independência da governança naval. Eles se barricaram na seção de popa, exigindo o direito de estabelecer seu próprio assentamento após o desembarque. Eles controlam 15% das reservas alimentares do navio e uma rede de navegação reserva.';

  @override
  String get event_separatistMovement_choice0 =>
      'Conceder autonomia regional dentro de uma estrutura federal';

  @override
  String get event_separatistMovement_outcome0 =>
      'Os separatistas aceitam um acordo: o seu próprio distrito com governação local, sob um guarda-chuva federal flexível. O precedente da fragmentação preocupa alguns, mas a paz é mantida.';

  @override
  String get event_separatistMovement_choice1 =>
      'Ataque as barricadas e force a reunificação';

  @override
  String get event_separatistMovement_outcome1 =>
      'As equipes de segurança violam a seção traseira. Os separatistas resistem ferozmente. A ordem é restaurada, mas a um custo terrível. O navio está unido em corpo, senão em espírito.';

  @override
  String get event_separatistMovement_choice2 =>
      'Abordar as principais queixas que impulsionam o movimento';

  @override
  String get event_separatistMovement_outcome2 =>
      'Os mediadores trabalham para entender o que afastou a facção. As reformas na distribuição e representação de recursos trazem lentamente os separatistas de volta ao rebanho. A cura leva tempo.';

  @override
  String get event_warCouncil_title => 'Conselho de Guerra';

  @override
  String get event_warCouncil_narrative =>
      'Com ameaças potenciais detectadas em sistemas próximos, a liderança da nave convoca um conselho de guerra. A questão: quanto dos recursos limitados da colónia deveria ser dedicado à preparação militar versus infra-estrutura civil?';

  @override
  String get event_warCouncil_choice0 =>
      'Armamento completo: forjar armas e treinar soldados';

  @override
  String get event_warCouncil_outcome0 =>
      'As oficinas são reequipadas para a produção de armas. Todo colono fisicamente apto recebe treinamento de combate. O navio está cheio de armas, mas o orçamento para equipamentos agrícolas diminui.';

  @override
  String get event_warCouncil_choice1 =>
      'Desarmamento: transformar armas em ferramentas';

  @override
  String get event_warCouncil_outcome1 =>
      'O arsenal é esvaziado e seu conteúdo reciclado em materiais de construção. A colônia será construída com relhas de arado e não com espadas. Os pacifistas se alegram; os realistas se preocupam com o que se esconde no escuro.';

  @override
  String get event_warCouncil_choice2 =>
      'Apenas postura defensiva: escudos e paredes, não espadas';

  @override
  String get event_warCouncil_outcome2 =>
      'Os recursos vão para fortificações, escudos e sistemas de alerta precoce. Nenhuma arma ofensiva é produzida. Uma abordagem equilibrada que mantém as opções abertas sem provocar potenciais vizinhos.';

  @override
  String get event_tradeFederation_title => 'Federação Comercial';

  @override
  String get event_tradeFederation_narrative =>
      'À medida que a colónia se aproxima da viabilidade, as facções debatem como estruturar a sua economia. A questão vai além da mera sobrevivência – definirá o tipo de sociedade que criará raízes em solo estranho. Comerciantes, comunalistas e burocratas defendem a sua posição.';

  @override
  String get event_tradeFederation_choice0 =>
      'Estabelecer zonas de livre comércio com regulamentação mínima';

  @override
  String get event_tradeFederation_outcome0 =>
      'Os mercados surgem em cada módulo de habitat. A inovação floresce à medida que os comerciantes competem. A desigualdade de riqueza aumenta, mas também aumenta o conjunto total de recursos disponíveis para a colónia.';

  @override
  String get event_tradeFederation_choice1 =>
      'Implementar o compartilhamento comunitário de todos os recursos';

  @override
  String get event_tradeFederation_outcome1 =>
      'A propriedade privada é abolida. Tudo pertence a todos. Ninguém passa fome, mas ninguém tem incentivo para produzir mais do que o mínimo. A mediocridade é confortável.';

  @override
  String get event_tradeFederation_choice2 =>
      'Criar um sistema comercial gerido pelo Estado';

  @override
  String get event_tradeFederation_outcome2 =>
      'O governo controla todo o comércio, definindo preços e alocando recursos. O sistema é justo, mas inflexível. Os mercados negros emergem nos corredores de manutenção.';

  @override
  String get event_faithVsScience_title => 'Fé versus Ciência';

  @override
  String get event_faithVsScience_narrative =>
      'O telescópio da nave capturou imagens de um fenómeno cósmico que contradiz directamente o princípio central do movimento religioso dominante. O cientista-chefe deseja publicar as descobertas; o líder religioso insiste que eles destruirão a comunidade.';

  @override
  String get event_faithVsScience_choice0 =>
      'Publique as descobertas científicas na íntegra';

  @override
  String get event_faithVsScience_outcome0 =>
      'A verdade prevalece sobre o conforto. Os dados são divulgados e o movimento religioso se fragmenta. Alguns crentes adaptam a sua fé; outros o perdem completamente. O conhecimento avança.';

  @override
  String get event_faithVsScience_choice1 =>
      'Suprimir as descobertas para preservar a harmonia social';

  @override
  String get event_faithVsScience_outcome1 =>
      'Os dados são classificados. A comunidade religiosa permanece estável, mas a equipa científica está desmoralizada. A verdade adiada não é a verdade negada, mas parece que sim.';

  @override
  String get event_faithVsScience_choice2 =>
      'Convoque um painel conjunto para encontrar harmonia entre ambas as visões';

  @override
  String get event_faithVsScience_outcome2 =>
      'Cientistas e teólogos trabalham juntos para reinterpretar as descobertas. Surge uma nova síntese que expande tanto a compreensão como a fé. Nem todos estão convencidos, mas o diálogo é saudável.';

  @override
  String get event_surveillanceState_title => 'Estado de Vigilância';

  @override
  String get event_surveillanceState_narrative =>
      'Após uma série de incidentes de sabotagem, o chefe de segurança propõe a instalação de sistemas de monitoramento em todos os compartimentos do navio. Câmeras, microfones e scanners biométricos rastreariam os movimentos de cada colono. Os defensores da privacidade estão horrorizados.';

  @override
  String get event_surveillanceState_choice0 =>
      'Rejeite totalmente a proposta de vigilância';

  @override
  String get event_surveillanceState_outcome0 =>
      'A privacidade é preservada. O sabotador continua foragido, mas os colonos dormem mais tranquilos sabendo que não são vigiados. A investigação continua através dos meios tradicionais.';

  @override
  String get event_surveillanceState_choice1 =>
      'Implementar vigilância completa em todo o navio';

  @override
  String get event_surveillanceState_outcome1 =>
      'Cada canto do navio é monitorado. O sabotador é pego em poucos dias. Mas as câmeras permanecem e o chefe da segurança não demonstra interesse em desligá-las. Sempre.';

  @override
  String get event_surveillanceState_choice2 =>
      'Instale monitoramento limitado apenas em áreas críticas';

  @override
  String get event_surveillanceState_outcome2 =>
      'Câmeras cobrem a sala de máquinas, o arsenal e a ponte. Os alojamentos permanecem privados. O sabotador é eventualmente identificado através da análise de padrões. Uma resposta medida.';

  @override
  String get event_nativeAlliance_title => 'Aliança Nativa';

  @override
  String get event_nativeAlliance_narrative =>
      'A civilização nativa propôs um tratado formal. Seu embaixador chega através de uma nave auxiliar, um ser elegante que fala através de um dispositivo tradutor de surpreendente sofisticação. Oferecem três formas de relacionamento, cada uma com implicações diferentes para o futuro da colónia.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Assine um tratado de aliança igualitária';

  @override
  String get event_nativeAlliance_outcome0 =>
      'O tratado estabelece defesa mútua, investigação partilhada e direitos territoriais iguais. Ambas as civilizações crescerão juntas. Os nativos compartilham conhecimentos agrícolas que transformam as perspectivas de sua colônia.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Negociar a partir de uma posição de domínio colonial';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Você aproveita sua tecnologia avançada para garantir condições favoráveis. Os nativos cedem território e recursos. Eles assinam com mãos trêmulas. A história já viu isso antes e raramente termina bem.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Estabelecer uma parceria comercial focada no benefício mútuo';

  @override
  String get event_nativeAlliance_outcome2 =>
      'O comércio preenche a lacuna entre as espécies. Os materiais nativos fluem para suas oficinas; sua tecnologia melhora a medicina deles. A amizade cresce a partir do lucro mútuo.';
}
