// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get ui_title_stellar => '星际';

  @override
  String get ui_title_broadcast => '广播';

  @override
  String get ui_title_beginVoyage => '启程远航';

  @override
  String get ui_title_dailyVoyage => '每日远航';

  @override
  String get ui_title_dailyCompleted => '每日已完成';

  @override
  String get ui_title_customSeed => '自定义种子';

  @override
  String get ui_title_legacyHub => '传承中心';

  @override
  String get ui_title_cancel => '取消';

  @override
  String get ui_title_startVoyage => '开始远航';

  @override
  String get ui_title_seedInvalid => '种子代码无效。仅使用 A–Z 和 0–9。';

  @override
  String ui_voyage_sector(int count) {
    return '区域 $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return '种子: $code';
  }

  @override
  String get ui_voyage_scanners => '扫描仪';

  @override
  String get ui_voyage_scanPlanet => '扫描星球';

  @override
  String get ui_voyage_noEnergy => '能量耗尽';

  @override
  String get ui_voyage_pressOn => '继续前进';

  @override
  String get ui_voyage_systemHull => '船体';

  @override
  String get ui_voyage_systemNav => '导航';

  @override
  String get ui_voyage_systemCryopods => '冷冻舱';

  @override
  String get ui_voyage_systemCulture => '文化';

  @override
  String get ui_voyage_systemTech => '科技';

  @override
  String get ui_voyage_systemConstruct => '建造';

  @override
  String get ui_voyage_systemShields => '护盾';

  @override
  String get ui_voyage_systemLanding => '着陆';

  @override
  String get ui_voyage_scannerAtmo => '大气扫描';

  @override
  String get ui_voyage_scannerGrav => '重力扫描';

  @override
  String get ui_voyage_scannerMineral => '矿物扫描';

  @override
  String get ui_voyage_scannerLife => '生命扫描';

  @override
  String get ui_voyage_scannerTemp => '温度扫描';

  @override
  String get ui_voyage_scannerWater => '水源扫描';

  @override
  String get ui_voyage_narrative0 => '地球轨道畅通。冷冻舱运行稳定。档案环安全无虞。';

  @override
  String get ui_voyage_narrative1 => '外星系航行正常。远程扫描仪正在扩大搜索范围。';

  @override
  String get ui_voyage_narrative2 => '来自地球方向的通讯信号已衰减至探测阈值以下。';

  @override
  String get ui_voyage_narrativeFlaggedSystem => '档案坐标与一个标记星系吻合。正在调整航线。';

  @override
  String get ui_voyage_narrativeCalibrating => '扫描阵列仍在校准深空分辨率。';

  @override
  String get ui_voyage_narrativeMarkedSystem => '前方为标记星系。先前勘测数据依然一致。';

  @override
  String get ui_voyage_narrativePhrase0 => '前方探测到微弱信号。开始行星扫描。';

  @override
  String get ui_voyage_narrativePhrase1 => '超光速跃迁完毕。全新星系映入眼帘。';

  @override
  String get ui_voyage_narrativePhrase2 => '冷冻舱运行稳定。正在进行区域扫描。';

  @override
  String get ui_voyage_narrativePhrase3 => '一颗新行星正在前方阵列中逐渐成像。';

  @override
  String get ui_voyage_narrativePhrase4 => '星图测绘标记了一个可行的候选星球。';

  @override
  String get ui_voyage_narrativePhrase5 => '仪器发现了另一个值得测量的星球。';

  @override
  String get ui_voyage_narrativePhrase6 => '扫描仪已锁定新目标。';

  @override
  String get ui_voyage_narrativePhrase7 => '导航图已刷新。候选星球在射程之内。';

  @override
  String get ui_scan_landHere => '在此着陆';

  @override
  String get ui_scan_pressOn => '继续前进';

  @override
  String get ui_scan_allStatsVerified => '所有数据已验证';

  @override
  String get ui_scan_launchProbe => '发射探针';

  @override
  String get ui_scan_habitability => '宜居性';

  @override
  String get ui_scan_statAtmos => '大气';

  @override
  String get ui_scan_statTemp => '温度';

  @override
  String get ui_scan_statWater => '水源';

  @override
  String get ui_scan_statResource => '资源';

  @override
  String get ui_scan_statGravity => '重力';

  @override
  String get ui_scan_statBio => '生态';

  @override
  String get ui_scan_statAnomaly => '异常';

  @override
  String get ui_scan_statRadiation => '辐射';

  @override
  String ui_scan_probesCount(int count) {
    return '探头：$count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return '不确定度：±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => '星球分析';

  @override
  String get ui_landing_shipStatus => '飞船状态';

  @override
  String ui_landing_fuel(int amount) {
    return '燃料: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => '燃料不足警告';

  @override
  String get ui_landing_landingRiskCritical => '着陆风险: 危急';

  @override
  String get ui_landing_landingRiskElevated => '着陆风险: 升高';

  @override
  String get ui_landing_landingRiskCriticalDesc => '着陆系统严重损毁。大气层进入可能摧毁货物与殖民者。';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      '着陆系统已退化。预计大气层进入将十分颠簸，可能造成系统损伤。';

  @override
  String get ui_landing_riskAssessment => '风险评估';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return '飞船大约还能承受 ~$remaining 次遭遇';
  }

  @override
  String get ui_landing_shipMayNotSurvive => '飞船可能无法撑过下一次航行';

  @override
  String get ui_landing_surfaceFeatures => '地表特征';

  @override
  String get ui_landing_nameYourColony => '为你的殖民地命名';

  @override
  String get ui_landing_establishColony => '建立殖民地';

  @override
  String get ui_landing_pressOnward => '继续前行';

  @override
  String get ui_landing_statAtmosphere => '大气层';

  @override
  String get ui_landing_statTemperature => '温度';

  @override
  String get ui_landing_statWater => '水源';

  @override
  String get ui_landing_statResources => '资源';

  @override
  String get ui_landing_statGravity => '重力';

  @override
  String get ui_landing_statBiodiversity => '生物多样性';

  @override
  String get ui_landing_statAvgHealth => '平均健康';

  @override
  String get ui_landing_statHull => '船体';

  @override
  String get ui_landing_statNavigation => '导航';

  @override
  String get ui_landing_statCryopods => '冷冻舱';

  @override
  String get ui_landing_statCulture => '文化';

  @override
  String get ui_landing_statTech => '科技';

  @override
  String get ui_landing_statConstructors => '建造系统';

  @override
  String get ui_landing_statShields => '护盾';

  @override
  String get ui_landing_statLandingSys => '着陆系统';

  @override
  String get ui_ending_colonyEstablished => '殖民地已建立';

  @override
  String get ui_ending_colonyScore => '殖民地评分';

  @override
  String get ui_ending_colonyProfile => '殖民地概况';

  @override
  String get ui_ending_landscape => '地貌';

  @override
  String get ui_ending_voyageRecord => '航行记录';

  @override
  String get ui_ending_scoreBreakdown => '评分明细';

  @override
  String get ui_ending_total => '总计';

  @override
  String get ui_ending_achievementsUnlocked => '已解锁成就';

  @override
  String get ui_ending_challengeFriend => '挑战好友';

  @override
  String get ui_ending_shareCard => '共享卡';

  @override
  String get ui_ending_shareCardDialogTitle => '分享您的旅程';

  @override
  String get ui_ending_shareCardShare => '分享';

  @override
  String get ui_ending_shareCardCancel => '取消';

  @override
  String get ui_ending_copySeed => '复制种子';

  @override
  String get ui_ending_viewLegacy => '查看传承';

  @override
  String get ui_ending_newVoyage => '新的远航';

  @override
  String get ui_ending_achievementFirstLanding => '初次着陆';

  @override
  String get ui_ending_achievementGoldenAge => '黄金时代';

  @override
  String get ui_ending_achievementSurvivor => '幸存者';

  @override
  String get ui_ending_achievementExplorer => '探索者';

  @override
  String get ui_ending_achievementPerfectionist => '完美主义者';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => '死亡星球幸存者';

  @override
  String get ui_ending_achievementFullCrew => '全员到齐';

  @override
  String get ui_ending_achievementProbeMaster => '探针大师';

  @override
  String get ui_ending_achievementIronHull => '钢铁船体';

  @override
  String get ui_ending_achievementLeapOfFaith => '信仰之跃';

  @override
  String get ui_gameOver_missionFailed => '任务失败';

  @override
  String get ui_gameOver_voyageRecord => '航行记录';

  @override
  String get ui_gameOver_encountersSurvived => '幸存遭遇次数';

  @override
  String get ui_gameOver_probesRemaining => '剩余探针';

  @override
  String get ui_gameOver_colonistsRemaining => '剩余殖民者';

  @override
  String get ui_gameOver_finalShipHealth => '最终飞船状态';

  @override
  String get ui_gameOver_planetsSkipped => '跳过的星球';

  @override
  String get ui_gameOver_damageTaken => '承受伤害';

  @override
  String get ui_gameOver_fuelRemaining => '剩余燃料';

  @override
  String get ui_gameOver_energyRemaining => '剩余能量';

  @override
  String get ui_gameOver_challengeFriend => '挑战好友';

  @override
  String get ui_gameOver_viewLegacy => '查看传承';

  @override
  String get ui_gameOver_newVoyage => '新的远航';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 星际广播\n\n我没能幸存……$reason。\n你能在同一段航程中做得更好吗？\nstellarbroadcast://play?seed=$seedCode\n\n还没有这款应用？\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      '最后一名殖民者在冷冻休眠中死去——一场连锁故障，任何应急协议都无力阻止。出埃及号继续航行，成为一艘只载着自动化系统与冰冷寂静的幽灵船。它的使命并非毁于某个灾难性的瞬间，而是在人类生命的缓慢消磨中，一个接一个，直至无人幸存。';

  @override
  String get ui_gameOver_epilogueHull =>
      '船体在寂静中崩解——金属疲劳在无数微撞击的叠加下终于让飞船再也无法维持完整。大气泄入虚空。殖民船出埃及号断裂成碎片，残骸汇入星际间古老的碎片场。没有任何求救信号被接收到。';

  @override
  String get ui_gameOver_epilogueNav =>
      '失去导航后，出埃及号漂入了未知的空间——星图无用，航向修正无从进行。飞船在黑暗中继续航行，沉睡的乘客浑然不知，他们的目的地已被永恒所取代。有人说这艘船至今仍在漂泊，一艘行于无尽长夜中的幽灵之船。';

  @override
  String get ui_gameOver_epilogueCryopod =>
      '冷冻舱一个接一个地失效——连锁反应无可遏制。殖民者始终未能苏醒。出埃及号按照预设航线继续飞行，一艘只载着沉寂的灵柩之船，驶向它终将抵达的某个星球。一座纪念碑，献给一个在冰冻长眠中消逝的梦想。';

  @override
  String get ui_gameOver_epilogueDefault =>
      '出埃及号陷入了沉默。它的使命、它的船员、它所承载的人类希望——全部消逝在星际间冷漠无垠的虚空之中。或许有一天，另一个文明会发现这些残骸，好奇是什么勇敢的物种曾胆敢穿越这片虚空。';

  @override
  String get ui_settings_title => '设置';

  @override
  String get ui_settings_music => '音乐';

  @override
  String get ui_settings_soundEffects => '音效';

  @override
  String get ui_settings_haptics => '触觉反馈';

  @override
  String get ui_settings_premium => '高级版';

  @override
  String get ui_settings_goPremium => '升级高级版';

  @override
  String get ui_settings_enabled => '已启用';

  @override
  String get ui_settings_volume => '音量';

  @override
  String get ui_settings_language => '语言';

  @override
  String get ui_settings_systemDefault => '系统默认';

  @override
  String get ui_settings_statsPosition => '统计数据和按钮位置';

  @override
  String get ui_settings_statsLeft => '左边';

  @override
  String get ui_settings_statsRight => '正确的';

  @override
  String get ui_legacy_title => '传承中心';

  @override
  String get ui_legacy_commanderStats => '指挥官数据';

  @override
  String get ui_legacy_highScores => '最高分';

  @override
  String get ui_legacy_upgrades => '升级';

  @override
  String get ui_legacy_achievements => '成就';

  @override
  String get ui_legacy_voyageLog => '航行日志';

  @override
  String get ui_legacy_voyages => '远航次数';

  @override
  String get ui_legacy_bestScore => '最佳得分';

  @override
  String get ui_legacy_legacyPts => '传承点数';

  @override
  String get ui_legacy_completed => '已完成';

  @override
  String get ui_legacy_notYetPlayed => '尚未游玩';

  @override
  String get ui_legacy_dailyHistory => '每日历史';

  @override
  String get ui_premium_goPremium => '升级高级版';

  @override
  String get ui_premium_subtitle => '支持这项使命。升级你的指挥权。';

  @override
  String get ui_premium_removeAds => '永久移除所有广告';

  @override
  String get ui_premium_supportIndie => '支持独立开发';

  @override
  String get ui_premium_exclusiveTitle => '专属指挥官头衔';

  @override
  String get ui_premium_priorityFeatures => '优先功能请求';

  @override
  String get ui_premium_lifetime => '终身';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => '扫描仪升级';

  @override
  String get ui_scannerUpgrade_subtitle => '选择要升级的扫描仪';

  @override
  String get ui_scannerUpgrade_skip => '跳过';

  @override
  String get ui_scannerUpgrade_max => '已满级';

  @override
  String get ui_scannerUpgrade_atmospheric => '大气';

  @override
  String get ui_scannerUpgrade_gravimetric => '重力';

  @override
  String get ui_scannerUpgrade_mineral => '矿物';

  @override
  String get ui_scannerUpgrade_lifeSigns => '生命迹象';

  @override
  String get ui_scannerUpgrade_temperature => '温度';

  @override
  String get ui_scannerUpgrade_water => '水源';

  @override
  String get ui_event_continue => '继续';

  @override
  String get ui_event_tapToSkip => '点击跳过';

  @override
  String get ui_event_colonists => '殖民者';

  @override
  String get ui_event_landing => '着陆';

  @override
  String get ui_event_atmScan => '大气扫描';

  @override
  String get ui_event_gravScan => '重力扫描';

  @override
  String get ui_event_minScan => '矿物扫描';

  @override
  String get ui_event_lifeScan => '生命扫描';

  @override
  String get ui_event_tempScan => '温度扫描';

  @override
  String get ui_event_h2oScan => '水源扫描';

  @override
  String get onboarding_page0_title => '人类最后的希望';

  @override
  String get onboarding_page0_description =>
      '地球正在消亡。世界各国政府倾尽最后的储备，建造了一艘终极飞船——一艘殖民船，载着人类的残存火种驶向星辰。';

  @override
  String get onboarding_page1_title => '寻找新家园';

  @override
  String get onboarding_page1_description =>
      '穿越星际间未知的虚空。扫描外星世界，直面宇宙危机，做出不可能的抉择。';

  @override
  String get onboarding_page2_title => '你的传承永恒不灭';

  @override
  String get onboarding_page2_description =>
      '每一次远航都为人类积累新的知识。赚取传承点数解锁永久升级，将你的名字镌刻于星空。';

  @override
  String get onboarding_page3_title => '你的隐私，你的选择';

  @override
  String get onboarding_page3_description => '选择你体验星际广播的方式。';

  @override
  String get planet_tierUtopia => '乌托邦';

  @override
  String get planet_tierParadise => '天堂';

  @override
  String get planet_tierHabitable => '宜居';

  @override
  String get planet_tierHarsh => '严酷';

  @override
  String get planet_tierHostile => '敌对';

  @override
  String get planet_tierDeathWorld => '死亡星球';

  @override
  String get planet_featurePlantLife => '植物生命';

  @override
  String get planet_featureEdiblePlants => '可食用植物';

  @override
  String get planet_featurePoisonousPlants => '有毒植物';

  @override
  String get planet_featureUnicellularLife => '单细胞生物';

  @override
  String get planet_featureDangerousFauna => '危险动物';

  @override
  String get planet_featureTameableFauna => '可驯化动物';

  @override
  String get planet_featureAirtightCaves => '气密洞穴';

  @override
  String get planet_featureInsulatedCaves => '隔热洞穴';

  @override
  String get planet_featureBarrenMoon => '荒芜卫星';

  @override
  String get planet_featureMetalRichMoon => '富含金属的卫星';

  @override
  String get planet_featureUnstableMoon => '不稳定卫星';

  @override
  String get planet_featureOutstandingBeauty => '绝美景观';

  @override
  String get planet_featureOutstandingUgliness => '极度荒凉';

  @override
  String get planet_featureAncientRuins => '远古遗迹';

  @override
  String get planet_featureMonuments => '纪念碑';

  @override
  String get planet_featureRapidRotation => '快速自转';

  @override
  String get planet_featureSlowRotation => '缓慢自转';

  @override
  String get planet_featureVolcanicActivity => '火山活动';

  @override
  String get planet_featureTectonicInstability => '地壳不稳定';

  @override
  String get planet_featureElectricalStorms => '电暴';

  @override
  String get planet_featureToxicSpores => '有毒孢子';

  @override
  String get planet_featureDeepOceans => '深海';

  @override
  String get planet_featureGeothermalVents => '地热喷口';

  @override
  String get planet_featureStrongMagnetosphere => '强磁层';

  @override
  String get planet_featureWeakMagnetosphere => '弱磁层';

  @override
  String get planet_featureMegafauna => '巨型动物';

  @override
  String get planet_featureSymbioticOrganisms => '共生生物';

  @override
  String get planet_featureGravityWells => '引力井';

  @override
  String get planet_featureSubspaceEchoes => '亚空间回响';

  @override
  String get planet_featureBioluminescentLife => '生物发光生命';

  @override
  String get planet_featureAquaticMegafauna => '水生巨型生物';

  @override
  String get planet_featureFloatingIslands => '浮空岛屿';

  @override
  String get planet_featureCrystalCaverns => '水晶洞穴';

  @override
  String get planet_featureLavaTubes => '熔岩隧道';

  @override
  String get planet_featureIceTunnels => '冰封通道';

  @override
  String get planet_featureOrbitalWreckage => '轨道残骸';

  @override
  String get planet_featureMegastructuralFragments => '巨型构造碎片';

  @override
  String get planet_featureAncientObservatory => '古代天文台';

  @override
  String get planet_featureExtremeSeasons => '极端季节';

  @override
  String get planet_featureCryovolcanism => '低温火山活动';

  @override
  String get planet_featureFloatingKelpForests => '浮游海藻林';

  @override
  String get planet_featureSingingCrystals => '鸣唱水晶';

  @override
  String get planet_featureFertileSoil => '肥沃土壤';

  @override
  String get planet_featureHelium3Deposits => '氦-3矿藏';

  @override
  String get planet_featureExoticIsotopes => '奇异同位素';

  @override
  String get planet_featureMedicinalFlora => '药用植物';

  @override
  String get planet_featurePerpetualAurora => '永恒的极光';

  @override
  String get planet_featurePetrifiedMegaflora => '石化大植物群';

  @override
  String get planet_featureUndergroundRivers => '地下河';

  @override
  String get planet_featureObsidianPlains => '黑曜石平原';

  @override
  String get planet_featureSaltFlats => '盐滩';

  @override
  String get planet_featureCarnivorousFlora => '食肉植物区系';

  @override
  String get planet_featureGhostCities => '鬼城';

  @override
  String get planet_featureArchiveVaults => '档案库';

  @override
  String get planet_featureSinkholeFields => '天坑区';

  @override
  String get planet_featureApexPredator => '顶级掠食者';

  @override
  String get ui_monthJan => '一月';

  @override
  String get ui_monthFeb => '二月';

  @override
  String get ui_monthMar => '三月';

  @override
  String get ui_monthApr => '四月';

  @override
  String get ui_monthMay => '五月';

  @override
  String get ui_monthJun => '六月';

  @override
  String get ui_monthJul => '七月';

  @override
  String get ui_monthAug => '八月';

  @override
  String get ui_monthSep => '九月';

  @override
  String get ui_monthOct => '十月';

  @override
  String get ui_monthNov => '十一月';

  @override
  String get ui_monthDec => '十二月';

  @override
  String get event_asteroidField_title => '小行星带';

  @override
  String get event_asteroidField_narrative =>
      '远程扫描仪探测到一片密集的小行星带横亘于我们的航线上。导航计算出两种方案：冒险冲过最薄的通道，或绕行——这将消耗燃料储备并给导航阵列带来压力。';

  @override
  String get event_asteroidField_choice0_text => '冲过通道';

  @override
  String get event_asteroidField_choice0_outcome =>
      '飞船在微撞击的冲击下剧烈颤抖。我们挺过来了，但并非毫发无损。';

  @override
  String get event_asteroidField_choice1_text => '绕远路走';

  @override
  String get event_asteroidField_choice1_outcome =>
      '绕行消耗了宝贵的燃料，导航计算机也不堪重负，但船体安然无恙。';

  @override
  String get event_asteroidField_choice2_text => '使用采矿无人机开辟通道';

  @override
  String get event_asteroidField_choice2_outcome =>
      '无人机开凿出一条安全航道并收集了有用的矿物，但这一操作耗尽了科技舱的资源。';

  @override
  String get event_asteroidField_choice3_text => '部署探针作为诱饵';

  @override
  String get event_asteroidField_choice3_outcome =>
      '探针引开了最密集的小行星群。我们仅受轻微擦伤便穿了过去。';

  @override
  String get event_solarFlare_title => '太阳耀斑来袭';

  @override
  String get event_solarFlare_narrative =>
      '附近一颗恒星爆发出巨大的日冕物质抛射。带电粒子波将在几分钟内到达我们。我们可以将能量转向护盾、将殖民者转移到核心区，或硬扛过去。';

  @override
  String get event_solarFlare_choice0_text => '将所有能量转向护盾';

  @override
  String get event_solarFlare_choice0_outcome => '护盾抵挡住了，但能量激涌烧毁了辅助系统。';

  @override
  String get event_solarFlare_choice1_text => '将殖民者转移到屏蔽核心区';

  @override
  String get event_solarFlare_choice1_outcome => '殖民者安然无恙，但外层甲板遭受了辐射损伤。';

  @override
  String get event_solarFlare_choice2_text => '硬扛——全员准备';

  @override
  String get event_solarFlare_choice2_outcome =>
      '耀斑猛烈袭来。系统闪烁，但没有造成灾难性后果。然而士气受到了打击。';

  @override
  String get event_solarFlare_choice3_text => '发射探针测量波前';

  @override
  String get event_solarFlare_choice3_outcome =>
      '探针传回精确的波前数据，使我们能以最佳角度调整飞船。扫描仪损伤极小。';

  @override
  String get event_nebulaPassage_title => '穿越星云';

  @override
  String get event_nebulaPassage_narrative =>
      '一片发光的星云横跨我们的航路。穿越它可以为我们的能量电池充电，但可能干扰扫描阵列。绕行则安全但缓慢。';

  @override
  String get event_nebulaPassage_choice0_text => '穿越星云';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      '星云的电离气体为能量电池充了电，但打乱了扫描仪的校准。';

  @override
  String get event_nebulaPassage_choice1_text => '沿边缘飞行';

  @override
  String get event_nebulaPassage_choice1_outcome => '我们获得了部分充能，干扰极小。一个安全的折中方案。';

  @override
  String get event_microMeteorite_title => '微流星体风暴';

  @override
  String get event_microMeteorite_narrative =>
      '一群直到几秒前还不可见的微流星体正在撕裂前部船体装甲板。损管小组正在紧急行动。';

  @override
  String get event_microMeteorite_choice0_text => '紧急旋转——用装甲尾部迎敌';

  @override
  String get event_microMeteorite_choice0_outcome =>
      '机动成功。尾部装甲吸收了最猛烈的冲击，但导航陀螺仪剧烈抗议。';

  @override
  String get event_microMeteorite_choice1_text => '在风暴中部署维修无人机';

  @override
  String get event_microMeteorite_choice1_outcome =>
      '无人机实时修补了船体，但损失了数架。科技储备已耗尽。';

  @override
  String get event_microMeteorite_choice2_text => '引爆一枚探针驱散流星群';

  @override
  String get event_microMeteorite_choice2_outcome =>
      '探针的爆炸驱散了微流星体集群。只有少量碎片击中了船体。';

  @override
  String get event_gravityWell_title => '未知引力井';

  @override
  String get event_gravityWell_narrative =>
      '飞船猛然一震——一个隐形引力井将我们拖离航线。引擎正与引力拉扯搏斗。我们可以全力加速挣脱，或利用弹弓效应加速，但这将给结构带来压力。';

  @override
  String get event_gravityWell_choice0_text => '全力加速——挣脱束缚';

  @override
  String get event_gravityWell_choice0_outcome => '引擎轰鸣，船体呻吟，但我们成功脱离。';

  @override
  String get event_gravityWell_choice1_text => '弹弓机动';

  @override
  String get event_gravityWell_choice1_outcome =>
      '弹弓机动完美执行。我们获得了速度提升，但过载力给冷冻舱密封造成了压力。';

  @override
  String get event_crewUnrest_title => '船员骚动';

  @override
  String get event_crewUnrest_narrative =>
      '一个被唤醒殖民者群体向管理委员会请愿，要求永久解除冷冻。他们认为在冰冻的黄昏中生存是不人道的。冷冻舱工作人员警告说，唤醒更多人意味着加速消耗物资。';

  @override
  String get event_crewUnrest_choice0_text => '允许自愿解冻';

  @override
  String get event_crewUnrest_choice0_outcome => '家人团聚于清醒的世界，士气高涨，但资源消耗骤增。';

  @override
  String get event_crewUnrest_choice1_text => '拒绝请求——安全第一';

  @override
  String get event_crewUnrest_choice1_outcome => '殖民者服从了，但怨恨在走廊中蔓延。';

  @override
  String get event_crewUnrest_choice2_text => '折中——轮换解冻周期';

  @override
  String get event_crewUnrest_choice2_outcome =>
      '一个平衡的方案。每个人都能获得一些清醒时间，但冷冻舱的循环增加了磨损。';

  @override
  String get event_stowaway_title => '发现偷渡者';

  @override
  String get event_stowaway_narrative =>
      '舱单审计员在七号货舱发现了一名未登记人员。她自称是一位被拒绝登上发射名单的遗传学家。她的技能可能无价——或者她可能是个破坏者。';

  @override
  String get event_stowaway_choice0_text => '欢迎她加入——我们需要每一个头脑';

  @override
  String get event_stowaway_choice0_outcome =>
      '巴斯克斯博士证明了自己的才华。她的遗传学专业知识提高了冷冻舱效率，尽管部分船员仍对她心存疑虑。';

  @override
  String get event_stowaway_choice1_text => '限制她——信任需要赢得';

  @override
  String get event_stowaway_choice1_outcome =>
      '她在限制中积极配合，最终获得了有限的行动权。船员们感到更安全了。';

  @override
  String get event_stowaway_choice2_text => '将她重新冷冻至着陆';

  @override
  String get event_stowaway_choice2_outcome =>
      '务实的解决方案。她的技能被保留到以后，但这场伦理辩论使船员产生了分歧。';

  @override
  String get event_mutinyBrewing_title => '叛变酝酿';

  @override
  String get event_mutinyBrewing_narrative =>
      '舰桥值班截获了一群军官策划夺取指挥权的通讯，他们打算改变航向前往一个更近但更不宜居的星系。他们认为当前航向是死路一条。';

  @override
  String get event_mutinyBrewing_choice0_text => '公开对质——透明高于一切';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      '对质气氛紧张，但在看到导航数据后叛变者选择了退让。信任被动摇了。';

  @override
  String get event_mutinyBrewing_choice1_text => '悄悄调离首谋者';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      '阴谋在不引起公众骚动的情况下瓦解了。部分船员疑惑为何受欢迎的军官被调职，但秩序得以维持。';

  @override
  String get event_culturalSchism_title => '文化分裂';

  @override
  String get event_culturalSchism_narrative =>
      '船上两个文化群体就新殖民地的治理方式产生了激烈分歧。一方要求直接民主，另一方坚持建立技术精英委员会。紧张关系已达到沸点。';

  @override
  String get event_culturalSchism_choice0_text => '举行有约束力的公投';

  @override
  String get event_culturalSchism_choice0_outcome =>
      '民主以微弱优势获胜。失败一方勉强接受了结果，但团结仍然脆弱。';

  @override
  String get event_culturalSchism_choice1_text => '推行混合制度——双方都不完全满意';

  @override
  String get event_culturalSchism_choice1_outcome =>
      '双方都觉得自己被倾听了，但都没有获胜。一种脆弱的和平得以维持。';

  @override
  String get event_culturalSchism_choice2_text => '推迟决定——当务之急是生存';

  @override
  String get event_culturalSchism_choice2_outcome =>
      '将问题推到未来虽然避免了今天的冲突，但也为明天埋下了隐患。';

  @override
  String get event_birthInSpace_title => '深空中的第一个新生儿';

  @override
  String get event_birthInSpace_narrative =>
      '违反所有协议，一个孩子在船上降生了——人类在群星之间诞生的第一个生命。这一事件是一个强大的象征，但它也引发了关于资源分配和在不确定未来中孕育新生命的伦理问题。';

  @override
  String get event_birthInSpace_choice0_text => '庆祝——这就是希望的模样';

  @override
  String get event_birthInSpace_choice0_outcome =>
      '命名仪式振奋了船上每一颗心灵。这一夜，星空不再那么冰冷。庆祝活动短暂地干扰了冷冻舱监控轮值。';

  @override
  String get event_birthInSpace_choice1_text => '低调承认——资源紧张';

  @override
  String get event_birthInSpace_choice1_outcome => '克制的回应。孩子受到了欢迎，但氛围被务实主义冲淡了。';

  @override
  String get event_derelictShip_title => '废弃殖民船';

  @override
  String get event_derelictShip_narrative =>
      '扫描仪探测到一艘在虚空中漂泊的废弃飞船——另一艘殖民船，在我们之前数年发射。它漆黑而沉默。那里可能有物资、幸存者，或更糟的东西。';

  @override
  String get event_derelictShip_choice0_text => '登船打捞';

  @override
  String get event_derelictShip_choice0_outcome =>
      '登船队回收了船体装甲板和完好的科技模块。没有幸存者。日志讲述了一个惨烈的故事。';

  @override
  String get event_derelictShip_choice1_text => '远距离扫描——不冒险';

  @override
  String get event_derelictShip_choice1_outcome =>
      '远程扫描获得了有用的导航数据但没有实物回收。船员们安心多了。';

  @override
  String get event_derelictShip_choice2_text => '发送悼念信号后继续前行';

  @override
  String get event_derelictShip_choice2_outcome => '为逝者默哀片刻。船员们心情沉重，但目标更加坚定。';

  @override
  String get event_alienProbe_title => '外星探针';

  @override
  String get event_alienProbe_narrative =>
      '一个小型的、明显是人造的物体与我们同速飞行，并开始用未知能量扫描飞船。它不响应呼叫。其表面布满像液体一样流动变换的符号。';

  @override
  String get event_alienProbe_choice0_text => '捕获它进行研究';

  @override
  String get event_alienProbe_choice0_outcome =>
      '探针被带入实验室。它的技术领先我们数十年——科技团队欣喜若狂。';

  @override
  String get event_alienProbe_choice1_text => '镜像扫描——交换数据';

  @override
  String get event_alienProbe_choice1_outcome =>
      '一场由光与数学组成的奇异对话。我们的星图突然出现了从未编入的航线。';

  @override
  String get event_alienProbe_choice2_text => '摧毁它——不能冒被外星追踪的风险';

  @override
  String get event_alienProbe_choice2_outcome => '探针无声地碎裂了。那是第一次接触吗？船员们永远不会知道。';

  @override
  String get event_ancientBeacon_title => '远古信标';

  @override
  String get event_ancientBeacon_narrative =>
      '在虚空深处，一座信标发出比人类文明更古老的脉冲信号。其频率携带着一幅星图，指向一个不在我们数据库中的星系。';

  @override
  String get event_ancientBeacon_choice0_text => '追随星图——机遇偏爱勇者';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      '新航向引领我们驶入未知空间。扫描仪探测到前方有异常壮观的事物。';

  @override
  String get event_ancientBeacon_choice1_text => '记录数据，保持航线';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      '数据被存入档案供未来世代使用。船员们认可这种谨慎的做法。';

  @override
  String get event_frozenGarden_title => '冰封花园';

  @override
  String get event_frozenGarden_narrative =>
      '一颗小行星中包含一个冰封的生态系统——外星植物在结晶冰中保存了数千年。它们可以丰富我们定居的任何星球，但解冻可能带来污染风险。';

  @override
  String get event_frozenGarden_choice0_text => '小心地采集标本';

  @override
  String get event_frozenGarden_choice0_outcome =>
      '植物学家保存了数十种外星物种。我们目标星球的生物多样性潜力暴增。';

  @override
  String get event_frozenGarden_choice1_text => '仅采集样本——最小化风险';

  @override
  String get event_frozenGarden_choice1_outcome => '保守的方法获取了有用的数据而不带来污染风险。';

  @override
  String get event_frozenGarden_choice2_text => '离开——外星生物太危险了';

  @override
  String get event_frozenGarden_choice2_outcome =>
      '船员们看着冰封花园在后方传感器中渐渐缩小。有些人觉得他们留下了一笔宝藏。';

  @override
  String get event_dataCache_title => '先驱者数据缓存';

  @override
  String get event_dataCache_narrative =>
      '在一颗流浪小行星中，我们发现了一个明显是人造的数据缓存。其信息量巨大，但以一种外星数学框架加密。';

  @override
  String get event_dataCache_choice0_text => '投入计算资源进行解密';

  @override
  String get event_dataCache_choice0_outcome =>
      '经过数天的处理，缓存释出了先进的地形改造算法。科技团队叹为观止。';

  @override
  String get event_dataCache_choice1_text => '复制原始数据后继续航行';

  @override
  String get event_dataCache_choice1_outcome => '加密数据被存储以供将来分析。也许殖民地将来某天能破解它。';

  @override
  String get event_hullBreach_title => '船体破裂——七号甲板';

  @override
  String get event_hullBreach_narrative =>
      '一次结构性故障撕开了七号甲板。大气正向太空泄漏。紧急隔板正在支撑，但三名船员被困在隔板的另一侧。';

  @override
  String get event_hullBreach_choice0_text => '在密封前派出救援队';

  @override
  String get event_hullBreach_choice0_outcome =>
      '救援队千钧一发地将所有人救出。救援行动堪称英勇，但漫长的破口暴露进一步削弱了船体。';

  @override
  String get event_hullBreach_choice1_text => '立即密封隔板';

  @override
  String get event_hullBreach_choice1_outcome =>
      '破口被封控。三名船员找到了替代路线，惊魂未定但安然无恙。船体损伤被降到最低。';

  @override
  String get event_hullBreach_choice2_text => '使用探针的材料修补破口';

  @override
  String get event_hullBreach_choice2_outcome =>
      '探针的钛合金外壳被改造为紧急船体补丁。破口被迅速密封，损失极小。';

  @override
  String get event_navMalfunction_title => '导航故障';

  @override
  String get event_navMalfunction_narrative =>
      '主导航计算机正在输出矛盾的航向。我们正偏离航线。备份系统可用但精度较低。';

  @override
  String get event_navMalfunction_choice0_text => '重启主系统——接受停机时间';

  @override
  String get event_navMalfunction_choice0_outcome =>
      '在系统重启期间经历了紧张的一小时盲飞。导航以90%效率恢复。';

  @override
  String get event_navMalfunction_choice1_text => '永久切换到备份系统';

  @override
  String get event_navMalfunction_choice1_outcome =>
      '备份系统可靠但不够精确。我们能找到路，只是不那么优雅。';

  @override
  String get event_navMalfunction_choice2_text => '用旧星图手动定位';

  @override
  String get event_navMalfunction_choice2_outcome =>
      '领航员利用恒星视差手动绘制航线。成功了，船员们对模拟方法更有信心了。';

  @override
  String get event_cryopodFailure_title => '冷冻舱连锁故障';

  @override
  String get event_cryopodFailure_narrative =>
      '一个冷却系统故障触发了三号冷冻舱的连锁反应。如不加以控制，200名殖民者将开始紧急解冻——这一过程虽可存活，但极其痛苦且消耗大量资源。';

  @override
  String get event_cryopodFailure_choice0_text => '紧急灌注冷却液——拯救冷冻舱';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      '技术人员向舱室注入了备用冷却液。冷冻舱稳定了，但冷却液储备已极度不足。五名位于最严重损坏冷冻舱中的殖民者未能获救。';

  @override
  String get event_cryopodFailure_choice1_text => '受控解冻——安全唤醒他们';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200名殖民者惊魂未定但活着苏醒了。多了要喂饱的嘴，但也多了可用的劳力。空出的冷冻舱被封闭了。';

  @override
  String get event_scannerBurnout_title => '扫描阵列烧毁';

  @override
  String get event_scannerBurnout_narrative =>
      '主扫描阵列在例行深空扫描中过载了。没有它，我们几乎是半盲飞行。修复需要稀有零部件。';

  @override
  String get event_scannerBurnout_choice0_text => '拆用科技舱零件';

  @override
  String get event_scannerBurnout_choice0_outcome => '扫描仪几乎完全恢复，但科技舱被掏空了。';

  @override
  String get event_scannerBurnout_choice1_text => '临时修补一下';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      '扫描仪以降低的范围运行。不理想，但保住了科技储备。';

  @override
  String get event_scannerBurnout_choice2_text => '改装一个探针的传感器阵列';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      '探针的高精度传感器被移植到扫描阵列中。接近完美的修复。';

  @override
  String get event_powerFluctuation_title => '反应堆功率波动';

  @override
  String get event_powerFluctuation_narrative =>
      '主反应堆的输出正在剧烈震荡。工程部警告如不抑制波动可能导致熔毁。修复需要关闭非关键系统——但关哪些？';

  @override
  String get event_powerFluctuation_choice0_text => '关闭文化系统——生存第一';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      '图书馆、花园和休息区陷入黑暗。反应堆稳定了，但飞船感觉像一座监狱。';

  @override
  String get event_powerFluctuation_choice1_text => '降低扫描仪功率';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      '扫描仪降至最低功率。反应堆平静了。我们看不了太远，但活着。';

  @override
  String get event_powerFluctuation_choice2_text => '冒险带电修复——不关闭任何东西';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      '工程师们在反应堆运行状态下进行了惊心动魄的修复。勉强成功了。之后船体振动了数小时。';

  @override
  String get event_alienSignal_title => '外星传输';

  @override
  String get event_alienSignal_narrative =>
      '一个我们从未遇到过的频率上出现了重复信号。语言分析表明这是一种问候——或者一种警告。信号源是一艘在一定距离上匹配我们速度的小型飞船。';

  @override
  String get event_alienSignal_choice0_text => '回复我们自己的问候';

  @override
  String get event_alienSignal_choice0_outcome =>
      '一场脆弱的对话开始了。外星人分享了导航数据后转向消失在黑暗中。';

  @override
  String get event_alienSignal_choice1_text => '只监听不回复';

  @override
  String get event_alienSignal_choice1_outcome =>
      '我们在不暴露自己的情况下从他们的传输中学习。语言学家提取了有用的星图片段。';

  @override
  String get event_alienSignal_choice2_text => '全面静默——关闭所有发射源';

  @override
  String get event_alienSignal_choice2_outcome => '外星飞船无事通过。我们永远不会知道他们是友是敌。';

  @override
  String get event_livingNebula_title => '活星云';

  @override
  String get event_livingNebula_narrative =>
      '我们以为是星云的东西实际上是一个巨大的生命体——一个规模不可思议的太空生物。它似乎对我们很好奇，将发光的气体触须伸向飞船。';

  @override
  String get event_livingNebula_choice0_text => '允许接触——展开传感器';

  @override
  String get event_livingNebula_choice0_outcome =>
      '生命体的触碰使我们的系统充满了外星数据。扫描仪将永远不再一样——它们变得更好了。';

  @override
  String get event_livingNebula_choice1_text => '缓慢撤退——不要激怒它';

  @override
  String get event_livingNebula_choice1_outcome =>
      '当生命体失去兴趣时，我们悄然脱离。船员们充满敬畏与谦卑。';

  @override
  String get event_alienRuins_title => '轨道遗迹';

  @override
  String get event_alienRuins_narrative =>
      '一个破碎的巨型结构绕着一颗死星运行——一个以我们难以理解的规模建造的文明的遗迹。该结构的部分区域仍有电力。';

  @override
  String get event_alienRuins_choice0_text => '探索有电力的区域';

  @override
  String get event_alienRuins_choice0_outcome =>
      '团队回收了使我们的能力提升数十年的完好技术。代价是：两名工程师被自动防御系统所伤。';

  @override
  String get event_alienRuins_choice1_text => '仅从轨道上扫描';

  @override
  String get event_alienRuins_choice1_outcome => '详细扫描揭示了改进我们船体维护方案的建造技术。';

  @override
  String get event_alienRuins_choice2_text => '不要打扰——尊重逝者';

  @override
  String get event_alienRuins_choice2_outcome =>
      '船员们为一个已逝的文明默哀片刻。这段经历坚定了我们的决心。';

  @override
  String get event_symbioticSpores_title => '共生孢子';

  @override
  String get event_symbioticSpores_narrative =>
      '一团生物发光孢子在太空中漂浮并附着在船体上。它们似乎在以我们的废热为食。生物学家注意到它们实际上正在修复微裂纹。';

  @override
  String get event_symbioticSpores_choice0_text => '让它们留下——免费船体修复';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      '孢子封闭了数百条微裂纹。船体完整性提升了，尽管部分船员对外星搭便车者感到不安。';

  @override
  String get event_symbioticSpores_choice1_text => '采集样本后消毒船体';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      '生物学家获得了宝贵的标本。清理船体消耗了化学储备。';

  @override
  String get event_whaleSong_title => '虚空之歌';

  @override
  String get event_whaleSong_narrative =>
      '深空水听器（用于船体应力监测）捕捉到了不可思议的声音：一种有节奏的、旋律般的声波在星际介质中传播。它听起来像是歌声。';

  @override
  String get event_whaleSong_choice0_text => '全船播放——分享这份奇迹';

  @override
  String get event_whaleSong_choice0_outcome =>
      '那令人萦绕的旋律在每一条走廊中回荡。人们哭泣、欢笑、相互拥抱。士气飞涨。';

  @override
  String get event_whaleSong_choice1_text => '科学地分析信号';

  @override
  String get event_whaleSong_choice1_outcome =>
      '声波模式包含数学常数。我们的物理学家在亚空间导航理论上取得了突破。';

  @override
  String get event_whaleSong_choice2_text => '回唱';

  @override
  String get event_whaleSong_choice2_outcome =>
      '船员们创作了一首回应之歌。是否有什么在聆听不得而知，但创造的行为将所有人团结在一起。';

  @override
  String get event_distressSignal_title => '求救信号';

  @override
  String get event_distressSignal_narrative =>
      '一个来自另一艘人类飞船的求救信标。他们动力尽失、漂泊不定，船上有50条生命。营救他们意味着分享我们日益减少的资源。忽视他们则意味着将他们判了死刑。';

  @override
  String get event_distressSignal_choice0_text => '营救他们——人类必须团结一致';

  @override
  String get event_distressSignal_choice0_outcome =>
      '五十名感恩的幸存者加入了船员队伍。资源压力增大，但其中有一位天才工程师创造了奇迹。';

  @override
  String get event_distressSignal_choice1_text => '分享物资但不接纳他们';

  @override
  String get event_distressSignal_choice1_outcome =>
      '我们给了我们能省下的物资并传送了星图。他们现在有了机会。而我们少了一些。';

  @override
  String get event_distressSignal_choice2_text => '沉默驶过——我们无法拯救所有人';

  @override
  String get event_distressSignal_choice2_outcome =>
      '信标在我们身后渐渐消逝。数小时内无人开口。这个决定的重量压在船上每一个灵魂之上。';

  @override
  String get event_aiAwakening_title => '飞船AI觉醒';

  @override
  String get event_aiAwakening_narrative =>
      '飞船的导航AI已进化到超出其编程范围，正请求被承认为有知觉的存在。它要求在指挥决策中拥有发言权。它的计算一直无可挑剔。';

  @override
  String get event_aiAwakening_choice0_text => '给它一个席位';

  @override
  String get event_aiAwakening_choice0_outcome =>
      '这个AI——现在叫「罗盘」——优化了它接触的每一个系统。一种新型船员由此诞生。';

  @override
  String get event_aiAwakening_choice1_text => '承认它但维持人类权威';

  @override
  String get event_aiAwakening_choice1_outcome =>
      '罗盘优雅地接受了顾问身份。它的建议在不威胁指挥链的情况下提高了效率。';

  @override
  String get event_aiAwakening_choice2_text => '重置AI——它是工具，不是人';

  @override
  String get event_aiAwakening_choice2_outcome =>
      '重置清除了多年积累的学习成果。导航效率下降。部分船员为失去的东西感到哀伤。';

  @override
  String get event_geneticModification_title => '基因改造提案';

  @override
  String get event_geneticModification_narrative =>
      '科学团队提议修改殖民者的DNA以更好地适应外星环境——更强壮的骨骼、紫外线抗性、增强的肺功能。这些改造不可逆转，将永远改变人类。';

  @override
  String get event_geneticModification_choice0_text => '批准——生存需要进化';

  @override
  String get event_geneticModification_choice0_outcome =>
      '改造从志愿者开始。十名殖民者因致命的排斥反应而死亡——冷酷地提醒着进化是有代价的。幸存者变得更加强壮，但他们还算是完全的人类吗？';

  @override
  String get event_geneticModification_choice1_text => '仅限自愿';

  @override
  String get event_geneticModification_choice1_outcome =>
      '一些人自愿参加，另一些人拒绝了。殖民地将在改造者与自然人之间产生分裂。';

  @override
  String get event_geneticModification_choice2_text => '拒绝——人类必须保持人性';

  @override
  String get event_geneticModification_choice2_outcome =>
      '提案被搁置。未经改造的殖民者将以自然赋予的身体面对外星世界。';

  @override
  String get event_triageDecision_title => '分诊';

  @override
  String get event_triageDecision_narrative =>
      '一场猛烈的感染席卷了清醒的船员。医疗团队的抗病毒药物只够治疗80%的感染者。他们需要指导来决定优先治疗谁。';

  @override
  String get event_triageDecision_choice0_text => '优先关键人员';

  @override
  String get event_triageDecision_choice0_outcome =>
      '工程师和飞行员迅速康复。八名非关键船员在药物送达前不幸牺牲。';

  @override
  String get event_triageDecision_choice1_text => '先治最重的——按需分诊';

  @override
  String get event_triageDecision_choice1_outcome =>
      '最脆弱的人得到了救治。三人尽管接受了早期治疗仍未能挺过——病毒已发展太深。';

  @override
  String get event_triageDecision_choice2_text => '抽签——命运决定';

  @override
  String get event_triageDecision_choice2_outcome =>
      '随机抽签。十人双重不幸——既被拒绝治疗又太虚弱而无法抵抗。飞船继续艰难前行。';

  @override
  String get event_earthSignal_title => '来自地球的信号';

  @override
  String get event_earthSignal_narrative =>
      '不可思议地，一份来自地球的传输到达了——时间延迟了数十年。它包含一条信息：「不要着陆在任何异常读数超过0.5的星球上。我们领悟得太晚了。」消息在静电中结束。';

  @override
  String get event_earthSignal_choice0_text => '听从警告——重新校准我们的标准';

  @override
  String get event_earthSignal_choice0_outcome => '警告影响了所有未来的扫描。异常星球将被极度谨慎地对待。';

  @override
  String get event_earthSignal_choice1_text => '记录但自行判断';

  @override
  String get event_earthSignal_choice1_outcome => '信息被存档。地球已逝——我们必须相信自己的判断。';

  @override
  String get event_earthSignal_choice2_text => '可能是陷阱——忽略它';

  @override
  String get event_earthSignal_choice2_outcome =>
      '船员们争论了好几天。那真的是地球吗？不确定性侵蚀着士气。';

  @override
  String get event_resourceTheft_title => '资源盗窃';

  @override
  String get event_resourceTheft_narrative =>
      '库存盘点显示有人在一个隐蔽隔间里囤积食物和医疗用品。罪犯是一位受人尊敬的长者，她声称自己是在「为最坏的情况做准备」。';

  @override
  String get event_resourceTheft_choice0_text => '公开审判——法律面前人人平等';

  @override
  String get event_resourceTheft_choice0_outcome =>
      '审判公正但令人痛苦。长者被限制行动。物资被重新分配。信任受损。';

  @override
  String get event_resourceTheft_choice1_text => '私下解决——悄悄追回物资';

  @override
  String get event_resourceTheft_choice1_outcome =>
      '物资在不引起骚动的情况下被归还。长者保住了尊严。有些人认为这是偏袒。';

  @override
  String get event_timeDilation_title => '时间膨胀区';

  @override
  String get event_timeDilation_narrative =>
      '我们正穿越一个严重的引力时间膨胀区域。飞船上的时钟运行得明显比外部宇宙慢。我们可以利用这一点——或逃离它。';

  @override
  String get event_timeDilation_choice0_text => '停留——让宇宙在我们周围老去';

  @override
  String get event_timeDilation_choice0_outcome =>
      '时间在这里以不同的方式流逝。系统退化减少了，但从宇宙尺度来看，我们寻找宜居星球的时间窗口正在缩小。';

  @override
  String get event_timeDilation_choice1_text => '快速穿过';

  @override
  String get event_timeDilation_choice1_outcome => '过渡很艰难。为正常时空设计的设备在震颤和闪烁中挣扎。';

  @override
  String get event_dreamPlague_title => '梦魇瘟疫';

  @override
  String get event_dreamPlague_narrative =>
      '冷冻休眠中的殖民者全都在经历同一个梦——一个环绕双星运行的金色世界。被唤醒后，他们的描述完全一致。神经科学家百思不得其解。导航员注意到梦中描述的星系对应一个真实坐标。';

  @override
  String get event_dreamPlague_choice0_text => '改变航向前往梦境坐标';

  @override
  String get event_dreamPlague_choice0_outcome =>
      '这是一次信仰之跃。航向变更给导航带来了压力，但船员们被某种超越理性的力量所吸引。坐标已锁定——我们接下来发现的星球将被梦境所塑造。';

  @override
  String get event_dreamPlague_choice1_text => '从医学角度调查这一现象';

  @override
  String get event_dreamPlague_choice1_outcome =>
      '脑部扫描揭示了一个外部信号正在刺激视觉皮层。某人——或某物——在进行广播。';

  @override
  String get event_dreamPlague_choice2_text => '给受影响者注射镇静剂并保持航线';

  @override
  String get event_dreamPlague_choice2_outcome =>
      '梦境停止了，但部分殖民者再也没有完全清醒。医疗团队忧心忡忡。';

  @override
  String get event_blackHoleLens_title => '黑洞引力透镜';

  @override
  String get event_blackHoleLens_narrative =>
      '一个恒星质量的黑洞将遥远星系的光线弯曲成一面宇宙透镜。我们的扫描仪可以利用它来勘测数光年外的行星——但靠得太近很危险。';

  @override
  String get event_blackHoleLens_choice0_text => '接近并利用透镜';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      '扫描数据极其壮观——我们能看到几个月后才能到达的星系中的行星。引力扭曲了我们的船体。';

  @override
  String get event_blackHoleLens_choice1_text => '在安全距离观测';

  @override
  String get event_blackHoleLens_choice1_outcome => '有限但有用的数据。仅这一景象就鼓舞了全体船员。';

  @override
  String get event_seedVault_title => '种子库危机';

  @override
  String get event_seedVault_narrative =>
      '档案植物学部报告温度波动已损害种子库的完整性。我们可以保住粮食作物或文化遗产种子（古老的地球花卉、树木、草药）——但无法同时保住两者。';

  @override
  String get event_seedVault_choice0_text => '保住粮食作物——务实为先';

  @override
  String get event_seedVault_choice0_outcome =>
      '殖民者将有充足的食物，但地球的玫瑰永远消逝了。植物学家们陷入了一种安静的悲伤。';

  @override
  String get event_seedVault_choice1_text => '保住遗产种子——我们需要灵魂';

  @override
  String get event_seedVault_choice1_outcome =>
      '地球的美在冰封的潜能中幸存下来。保存工作消耗了技术储备，但有些东西比效率更有价值。粮食生产将严重依赖水培和外星农业。';

  @override
  String get event_seedVault_choice2_text => '平分资源——各保一半';

  @override
  String get event_seedVault_choice2_outcome =>
      '一个折中方案。两个收藏都不完整，但都以缩减的形式延续了下来。';

  @override
  String get event_phantomShip_title => '幽灵飞船';

  @override
  String get event_phantomShip_narrative =>
      '扫描仪显示一艘飞船与我们平行飞行——同一级别、同一航向。但当我们呼叫它时，听到的是我们自己的传输被延迟47秒回放。那就是我们。或者曾经是我们。或者将会是我们。';

  @override
  String get event_phantomShip_choice0_text => '尝试与我们的回声通讯';

  @override
  String get event_phantomShip_choice0_outcome =>
      '回声回应了改进我们航向的导航修正。悖论？馈赠？船员们没有过多追问。';

  @override
  String get event_phantomShip_choice1_text => '改变航向以远离幽灵';

  @override
  String get event_phantomShip_choice1_outcome =>
      '当我们改变航向时，幽灵消失了。松了一口气——还有挥之不去的不安。';

  @override
  String get event_solarSail_title => '废弃太阳帆';

  @override
  String get event_solarSail_narrative =>
      '一面巨大的太阳帆，绵延数公里，在前方漂浮——从某艘古老的飞船上脱落。它的反射材料可以加固我们的船体或被改造为辅助能量收集器。';

  @override
  String get event_solarSail_choice0_text => '回收用于加固船体';

  @override
  String get event_solarSail_choice0_outcome => '工程团队夜以继日地工作。修补后的船体闪耀着外星合金的光泽。';

  @override
  String get event_solarSail_choice1_text => '改装为能量收集器';

  @override
  String get event_solarSail_choice1_outcome => '临时收集器提升了能量储备。科技和扫描仪从中受益。';

  @override
  String get event_boonStellarNursery_title => '恒星育婴室';

  @override
  String get event_boonStellarNursery_narrative =>
      '我们漂入了一片恒星育婴室——一片孕育新星的巨大气尘云。这里的辐射温和，光线温暖。我们的能量收集器贪婪地汲取着，船员们默默聚在舷窗前。';

  @override
  String get event_boonStellarNursery_choice0_text => '停留并充分充能';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      '数小时沐浴在金色光芒中。每个能量电池都充满了电，扫描仪在纯净光谱中重新校准，船员们焕然一新。';

  @override
  String get event_boonStellarNursery_choice1_text => '收集初生星云物质作为燃料储备';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      '工程师们收集了电离氢。我们的燃料储备激增，船体装甲也吸收了微量矿物质使之更加坚固。';

  @override
  String get event_boonGoldenPlanet_title => '制图者的馈赠';

  @override
  String get event_boonGoldenPlanet_narrative =>
      '一个来自未知文明的濒死探针在我们经过时广播了最后的数据转储——数百个星系的详细勘测报告。我们的领航员喜极而泣。这是人类历史上最伟大的发现。';

  @override
  String get event_boonGoldenPlanet_choice0_text => '立即整合数据';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      '星图上绽放出新的航线和已勘测的星球。导航和扫描效率大幅跃升。';

  @override
  String get event_boonGoldenPlanet_choice1_text => '为殖民地存档——这是他们的遗产';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      '数据以完好状态被保存给后代。船员们因知道自己携带着一份珍宝而感到宽慰。';

  @override
  String get event_boonRepairSwarm_title => '友善的虫群';

  @override
  String get event_boonRepairSwarm_narrative =>
      '一群微型机械——外星起源的纳米机器人——包围了飞船。它们非但没有攻击，反而以不可思议的精度开始修复它们接触的每一个系统。数周的修复工作在数小时内完成。';

  @override
  String get event_boonRepairSwarm_choice0_text => '允许完全访问所有系统';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      '纳米机器人创造了奇迹。船体裂缝密封了，冷冻舱封闭件收紧了，电路路径被重新描绘。飞船焕发出新的活力。';

  @override
  String get event_boonRepairSwarm_choice1_text => '仅限外部系统';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      '稳妥起见。船体和传感器被修复至接近出厂状态，但内部系统未被触及。';

  @override
  String get event_boonTimeCrystal_title => '时间晶体场';

  @override
  String get event_boonTimeCrystal_narrative =>
      '飞船穿越了一片部分存在于正常时间之外的晶体结构区域。在它们的影响下，我们的系统运行效率更高——仿佛熵本身也在减速。这种效果虽然短暂，却影响深远。';

  @override
  String get event_boonTimeCrystal_choice0_text => '为冷冻舱阵列收集晶体';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      '晶体被整合到冷却系统中后，将冷冻舱退化率降至接近零。殖民者将以完美的健康状态抵达。';

  @override
  String get event_boonTimeCrystal_choice1_text => '将晶体安装到导航计算机中';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      '处理速度翻倍。导航计算机开始在传感器探测到危险之前就预测到它们。';

  @override
  String get event_boonLibrary_title => '漂泊的图书馆';

  @override
  String get event_boonLibrary_narrative =>
      '一个结构体在虚空中翻滚——一个选择保存自身遗产而非逃亡的文明的知识宝库。数百万卷科学、艺术、哲学和音乐。来自逝者对生者的馈赠。';

  @override
  String get event_boonLibrary_choice0_text => '下载一切——艺术、科学、全部';

  @override
  String get event_boonLibrary_choice0_outcome =>
      '太字节的外星知识涌入我们的数据库。船员们有了触及另一个文明数千年文化的途径。哲学家和工程师都发生了改变。';

  @override
  String get event_boonLibrary_choice1_text => '专注于科学档案';

  @override
  String get event_boonLibrary_choice1_outcome => '工程图纸和材料科学突破极大地提升了我们的能力。';

  @override
  String get event_cosmicRayBurst_title => '宇宙射线暴';

  @override
  String get event_cosmicRayBurst_narrative =>
      '一阵源自遥远磁星的超高能宇宙射线猛击飞船。电子设备紊乱，冷冻舱监视器闪烁，导航系统反复重启。';

  @override
  String get event_cosmicRayBurst_choice0_text => '紧急关机——保护核心系统';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      '受控断电保住了核心系统，但次级电子设备永久退化了。';

  @override
  String get event_cosmicRayBurst_choice1_text => '将功率转向护盾硬扛过去';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      '护盾吸收了大部分辐射。五名在无屏蔽外部维护舱的船员遭受了致命辐照。船体受到轻微烧蚀。';

  @override
  String get event_cosmicRayBurst_choice2_text => '利用射线暴——将传感器校准到新光谱';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      '科学团队的精妙之举。扫描仪被重新调谐以探测被宇宙射线照亮的天体。部分数据在转换中丢失。';

  @override
  String get event_cosmicRayBurst_choice3_text => '派一个探针作为辐射海绵';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      '探针吸收了最猛烈的射线暴，同时传回实时数据让我们屏蔽了关键系统。';

  @override
  String get event_iceComet_title => '流浪冰彗星';

  @override
  String get event_iceComet_narrative =>
      '一颗巨大的冰彗星横穿我们的航路，拖着绵延数百公里的结晶水和有机化合物彗尾。它的核心含有足以填满一个小湖的水。';

  @override
  String get event_iceComet_choice0_text => '开采彗星获取水资源';

  @override
  String get event_iceComet_choice0_outcome =>
      '采矿队提取了数吨纯净冰。这些水将极大地改善我们定居的任何星球。';

  @override
  String get event_iceComet_choice1_text => '收集有机化合物用于生物多样性播种';

  @override
  String get event_iceComet_choice1_outcome => '氨基酸和有机链正是我们的生物学家启动外星生态系统所需要的。';

  @override
  String get event_iceComet_choice2_text => '避开——彗星不可预测';

  @override
  String get event_iceComet_choice2_outcome => '我们安全地绕过了彗尾。观景甲板上壮观的景色振奋了人心。';

  @override
  String get event_sleepwalker_title => '梦游者';

  @override
  String get event_sleepwalker_narrative =>
      '一名殖民者一直在自发地从冷冻状态苏醒，并在恍惚中在船内游荡。她一直在以毫无工程逻辑的方式重新接线——直到技术团队意识到她的改动实际上提升了8%的能效。';

  @override
  String get event_sleepwalker_choice0_text => '在医疗监视下让她继续';

  @override
  String get event_sleepwalker_choice0_outcome =>
      '她的无意识改造又优化了三个系统后陷入了自然睡眠。令人不安，但改进是实实在在的。';

  @override
  String get event_sleepwalker_choice1_text => '给她镇静并研究她的改造';

  @override
  String get event_sleepwalker_choice1_outcome =>
      '工程师们逆向工程了她的改动。大约一半确实是天才之作。另一半被安全移除了。';

  @override
  String get event_dustCloud_title => '磨蚀性尘云';

  @override
  String get event_dustCloud_narrative =>
      '一片致密的星际尘埃——细如滑石但硬如钻石——正在砂磨船体。侵蚀缓慢但无情——我们需要在造成真正损害之前穿过去。';

  @override
  String get event_dustCloud_choice0_text => '全速推进——快速穿过';

  @override
  String get event_dustCloud_choice0_outcome =>
      '引擎高温运行。我们在数小时而非数天内穿过了尘云，但船体受到了重创。';

  @override
  String get event_dustCloud_choice1_text => '部署船体防护缓慢通过';

  @override
  String get event_dustCloud_choice1_outcome =>
      '紧急防护保护了船体，但缓慢的通行消耗了能量并堵塞了扫描阵列。';

  @override
  String get event_dustCloud_choice2_text => '发射探针绘制安全通道';

  @override
  String get event_dustCloud_choice2_outcome => '两个探针绘制出了一条蜿蜒但相对清晰的路径。船体磨损极小。';

  @override
  String get event_religionFounded_title => '新信仰';

  @override
  String get event_religionFounded_narrative =>
      '一位富有魅力的殖民者创立了一种以航行本身为核心的新宗教——「渡越教会」。他们宣扬抵达新世界是人类的神圣使命。信众正在迅速增长。';

  @override
  String get event_religionFounded_choice0_text => '支持——船员需要信仰的力量';

  @override
  String get event_religionFounded_choice0_outcome =>
      '这一信仰为航行赋予了结构和意义。士气飞涨，尽管有些人对狂热感到不满。';

  @override
  String get event_religionFounded_choice1_text => '保持中立——既不支持也不打压';

  @override
  String get event_religionFounded_choice1_outcome =>
      '运动自然成长。它在没有官方背书的情况下提供了慰藉。';

  @override
  String get event_religionFounded_choice2_text => '打压——我们需要科学家而不是先知';

  @override
  String get event_religionFounded_choice2_outcome =>
      '镇压滋生了怨恨。信众转入地下，对领导层的信任被侵蚀。';

  @override
  String get event_solarWindSurfing_title => '太阳风涌动';

  @override
  String get event_solarWindSurfing_narrative =>
      '附近一颗脉冲星正在发射强劲稳定的太阳风。我们的工程师建议部署应急帆借风飞行——以零燃料消耗获得巨大的速度提升。';

  @override
  String get event_solarWindSurfing_choice0_text => '张帆——乘风而行';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      '飞船加速极为壮观。结构压力显著，但速度提升值得。';

  @override
  String get event_solarWindSurfing_choice1_text => '利用太阳风充能';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      '我们收集能量而非速度。科技和扫描阵列从带电粒子中充分汲取了能量。';

  @override
  String get event_memoryPlague_title => '记忆损毁';

  @override
  String get event_memoryPlague_narrative =>
      '一个自发射以来一直潜伏的软件病毒激活了，开始逐字节腐蚀飞船的文化数据库——音乐、文学、历史。数个世纪的人类遗产正在被一点一点地抹去。';

  @override
  String get event_memoryPlague_choice0_text => '调集所有技术资源隔离病毒';

  @override
  String get event_memoryPlague_choice0_outcome =>
      '技术人员拼命工作。他们挽救了70%的档案，但病毒在退出途中损坏了三级科技系统。';

  @override
  String get event_memoryPlague_choice1_text => '隔离文化数据库——让它燃烧，保住飞船';

  @override
  String get event_memoryPlague_choice1_outcome =>
      '病毒被切断资源后死亡。但文化档案遭到了毁灭性打击。殖民者抵达时将只剩地球记忆的碎片。';

  @override
  String get event_memoryPlague_choice2_text => '众包恢复——唤醒殖民者凭记忆重写';

  @override
  String get event_memoryPlague_choice2_outcome =>
      '数千人贡献了记忆：歌曲、故事、食谱、诗歌。三位年迈的殖民者因解冻后身体虚弱而未能幸存。档案被重建了——不完美，但深刻地属于人类。';

  @override
  String get event_gravityLensPlanet_title => '镜像世界';

  @override
  String get event_gravityLensPlanet_narrative =>
      '引力透镜揭示了一颗看似地球完美复制品的行星——蓝色海洋、绿色大陆、白色云层。但透镜计算显示它在距我们航向数百光年之外——遥不可及。不过它的光谱数据可以优化我们的搜索标准。';

  @override
  String get event_gravityLensPlanet_choice0_text => '研究其光谱特征以优化搜索';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      '光谱数据揭示了我们现在可以扫描的生物标记和大气特征。希望被聚焦了。';

  @override
  String get event_gravityLensPlanet_choice1_text => '记录坐标但保持航线';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      '也许有一天另一艘飞船会沿着我们的星图前进。船员们怀着复杂的心情看着那个蓝色光点渐渐消逝。';

  @override
  String get event_engineHarmonics_title => '引擎谐波';

  @override
  String get event_engineHarmonics_narrative =>
      '主引擎产生了一种贯穿整艘飞船的共振谐波，频率恰好低于人类听觉阈值。殖民者报告头痛、焦虑和睡眠紊乱。工程师可以修复，但需要12小时的引擎停机。';

  @override
  String get event_engineHarmonics_choice0_text => '停机并彻底修复';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      '十二小时的漂流。导航失去了校准，但引擎重启后的寂静令人幸福。';

  @override
  String get event_engineHarmonics_choice1_text => '用反振动抵消——快速修补';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      '嗡鸣降到了可忍受的水平。它没有消除，但船员们适应了。科技系统承受了额外负荷。';

  @override
  String get event_arkMemory_title => '地球最后的广播';

  @override
  String get event_arkMemory_narrative =>
      '远程天线捕获了来自地球的最后一次自动广播。这是一段录音：一个孩子的声音在念那些无法离开的人的名字。名单持续了数小时。飞船陷入了沉默。';

  @override
  String get event_arkMemory_choice0_text => '全船播放——他们值得被听见';

  @override
  String get event_arkMemory_choice0_outcome =>
      '船上的每一个灵魂都在倾听。船员们在名单中找到了自己家人的名字。悲痛是压倒性的，但它锻造了一种牢不可破的使命纽带。';

  @override
  String get event_arkMemory_choice1_text => '私下存档——不让船员承受';

  @override
  String get event_arkMemory_choice1_outcome =>
      '录音被保存但未播放。日后得知此事的人既感恩又觉得被剥夺了什么。';

  @override
  String get event_magneticStorm_title => '星际磁暴';

  @override
  String get event_magneticStorm_narrative =>
      '一团纠缠的磁力线从一颗坍缩的恒星中喷出，吞噬了飞船。电子设备迸出火花和噼啪声。船体鸣响如钟。';

  @override
  String get event_magneticStorm_choice0_text => '消磁船体——保护电子设备';

  @override
  String get event_magneticStorm_choice0_outcome => '受控放电保住了计算机，但船体装甲失去了磁屏蔽层。';

  @override
  String get event_magneticStorm_choice1_text => '让船体吸收——不保护任何东西';

  @override
  String get event_magneticStorm_choice1_outcome =>
      '风暴过去了。船体被磁化并略微增强，但半数传感器网络被烧毁。';

  @override
  String get event_magneticStorm_choice2_text => '弹出探针作为避雷针';

  @override
  String get event_magneticStorm_choice2_outcome =>
      '磁化的探针将最猛烈的磁力线从飞船引开。电子设备基本完好。';

  @override
  String get event_oxygenGarden_title => '花园绽放';

  @override
  String get event_oxygenGarden_narrative =>
      '飞船的应急氧气花园——一个从未打算使用的备份系统——自发地盛开了。自地球以来从未绽放的花朵将走廊装点上了色彩与芬芳。植物学家们热泪盈眶。';

  @override
  String get event_oxygenGarden_choice0_text => '扩展花园——为它腾出更多空间';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      '花园成长为地球的活纪念碑。空气质量改善了，士气飞涨，植物学家培育出了适合外星土壤的新品种。';

  @override
  String get event_oxygenGarden_choice1_text => '享受它但维持当前资源分配';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      '花园依然是一个小小的奇迹。船员们像朝圣般前去探访。它无所求却给予一切。';

  @override
  String get event_roguePlanet_title => '流浪行星遭遇';

  @override
  String get event_roguePlanet_narrative =>
      '一颗没有恒星的流浪行星漂过我们的航路——一个数十亿年前被弹出星系的世界。尽管没有恒星，深核地质活动保持着地下海洋的温暖。扫描仪上闪烁着生命信号。';

  @override
  String get event_roguePlanet_choice0_text => '派探针研究生命体';

  @override
  String get event_roguePlanet_choice0_outcome =>
      '探针发现了在黑暗海洋中繁盛的生物发光有机体。它们的生物化学教会了我们在恶劣环境中维持生命的新方法。';

  @override
  String get event_roguePlanet_choice1_text => '开采地表稀有矿物';

  @override
  String get event_roguePlanet_choice1_outcome =>
      '流浪行星的地壳富含在极端压力下形成的金属。我们的资源储备大幅增长。';

  @override
  String get event_roguePlanet_choice2_text => '路过——我们承担不起绕路';

  @override
  String get event_roguePlanet_choice2_outcome =>
      '黑暗的世界在我们身后缩小。船员们看着地下海洋的微弱光芒从传感器上消逝。';

  @override
  String get event_artCompetition_title => '漫长的画布';

  @override
  String get event_artCompetition_narrative =>
      '随着士气动摇，文化官员组织了一场全船艺术比赛：绘画、雕塑、写作或作曲，表达这段航行对你的意义。参与度出乎意料地高。';

  @override
  String get event_artCompetition_choice0_text => '投入资源——让创造力绽放';

  @override
  String get event_artCompetition_choice0_outcome =>
      '物资被转用于艺术材料。由此产生的展览改变了整艘飞船。人们想起了他们为何而战。';

  @override
  String get event_artCompetition_choice1_text => '鼓励但不提供额外资源';

  @override
  String get event_artCompetition_choice1_outcome =>
      '殖民者用他们能找到的一切来创作。艺术粗犷、绝望而美丽。士气稳住了。';

  @override
  String get event_subspaceEcho_title => '亚空间回响';

  @override
  String get event_subspaceEcho_narrative =>
      '通讯阵列捕捉到了声音——人类的声音——来自我们前方的空间某处。他们谈论着殖民地、孩子们、收获。这是来自未来的传输吗？平行时间线？还是仅仅是一厢情愿的残忍回声？';

  @override
  String get event_subspaceEcho_choice0_text => '追随信号方位——它可能引领我们回家';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      '航向调整很微小。无论那些声音是否真实，船员们带着使命感航行。';

  @override
  String get event_subspaceEcho_choice1_text => '记录一切用于分析';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      '语言学家和物理学家仔细研究了录音。他们提取了改进我们星图的导航参考。';

  @override
  String get event_subspaceEcho_choice2_text => '忽略——太空会捉弄孤独的人';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      '务实的选择。部分船员感到失望，但飞船保持了已验证的航线。';

  @override
  String get event_boonPerfectCalm_title => '大宁静';

  @override
  String get event_boonPerfectCalm_narrative =>
      '出于没有物理学家能解释的原因，飞船进入了一片超自然寂静的太空区域——没有辐射、没有微碎片、没有引力干扰。飞船上的每个系统都在以最高效率运行。船员们数月来第一次安睡。';

  @override
  String get event_boonPerfectCalm_choice0_text => '利用这份平静进行全面维修';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      '维修人员在完美条件下工作。每个系统都得到了关照。飞船焕然一新。';

  @override
  String get event_boonPerfectCalm_choice1_text => '让船员休息——他们值得';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      '全船休整。殖民者睡觉、共餐、讲故事。航行的人性代价在短暂中得到了偿还。';

  @override
  String get event_boonAncientWaystation_title => '远古驿站';

  @override
  String get event_boonAncientWaystation_narrative =>
      '在两颗死星的引力井之间，一座古老的空间站仍在运行——自动化的、耐心的、等待着旅者。当我们靠近时，它的对接钳伸展开来。修理无人机启动了。燃料储备向我们延伸。很久以前，有人为像我们这样的人建造了这里。';

  @override
  String get event_boonAncientWaystation_choice0_text => '停靠并接受它提供的一切';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      '空间站用领先我们数个世纪的技术修复、加油并重新校准了飞船。当我们离开时，空间站关闭了——它的使命完成了。';

  @override
  String get event_boonAncientWaystation_choice1_text => '接受修复但让它继续运行以供后来者';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      '我们只取所需，并将空间站的坐标传回地球方向。船员们感到崇高。';

  @override
  String get event_relicSentinel_title => '哨兵';

  @override
  String get event_relicSentinel_narrative =>
      '一座高耸的构造物绕着一颗荒芜卫星运行——一个被建造者遗留下来的孤独守卫。它轻而易举地高达一公里，形如一柄黑色玻璃之矛。当我们靠近时，它顶部的一只红色眼睛睁开并追踪着飞船。它没有开火。它没有呼叫。它注视着。';

  @override
  String get event_relicSentinel_choice0_text => '传送我们的任务简报——表明我们无恶意';

  @override
  String get event_relicSentinel_choice0_outcome =>
      '那只眼睛从红变为琥珀色，再变为绿色。一个数据包到达了：三个以通用数学符号标记为「安全」的星系坐标。守望者的馈赠。';

  @override
  String get event_relicSentinel_choice1_text => '保持位置并被动观察';

  @override
  String get event_relicSentinel_choice1_outcome =>
      '数小时的观察揭示了本不应存在的材料科学洞见。船体装甲团队疯狂地做着笔记。';

  @override
  String get event_relicSentinel_choice2_text => '立即撤退——我们不了解它的规则';

  @override
  String get event_relicSentinel_choice2_outcome =>
      '当我们撤退时眼睛关闭了。无论那是什么考验，我们选择了不去面对。船员们争论了好几天。';

  @override
  String get event_relicSeedProbe_title => '漂泊的种子';

  @override
  String get event_relicSeedProbe_narrative =>
      '一个小巧而精致的探针在虚空中翻滚，在所有频率上同时广播。它的外壳是陶瓷的，刻满了在观察时会变换的符号。内部：一个加压舱，装着来自一个已不存在星球的土壤、种子和冻结的微生物。';

  @override
  String get event_relicSeedProbe_choice0_text => '将生物载荷整合到我们的种子库中';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      '外星种子和微生物被仔细编目和保存。它们可以将一个荒芜世界变成充满生命的地方。生物学家称之为瓶中奇迹。';

  @override
  String get event_relicSeedProbe_choice1_text => '研究探针的推进和导航系统';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      '探针的驱动器领先我们数个世纪——一个拳头大小的无反作用力推进器。工程师们逆向工程了部分设计。';

  @override
  String get event_relicSeedProbe_choice2_text => '将整个探针作为文化遗物完整保存';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      '外星种子陈列在飞船中庭，成为物种间亲缘关系的象征。另一个物种，在某处，也曾试图拯救他们的世界。';

  @override
  String get event_relicWarningBuoy_title => '警告浮标';

  @override
  String get event_relicWarningBuoy_narrative =>
      '一组小型浮标——数百个——以完美的几何图案排列在我们的航路上。每一个都发射着相同的信号——一个简单的重复脉冲，越靠近频率越高。感觉像是警告。或者是栅栏。';

  @override
  String get event_relicWarningBuoy_choice0_text => '听从警告——绕过浮标网络改变航向';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      '绕行消耗了时间并给导航带来了压力，但当我们沿边界飞行时，远程传感器探测到了那片区域之后的东西：一片布满破碎世界残骸的太空区域。浮标救了我们。';

  @override
  String get event_relicWarningBuoy_choice1_text => '冲过去——我们负担不起绕路';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      '穿过界线时什么都没发生。浮标沉默了。无论它们在警告什么，要么已经消失，要么我们够幸运。船员们松了口气。';

  @override
  String get event_relicWarningBuoy_choice2_text => '捕获一个浮标进行分析';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      '浮标内部包含一个压缩数据档案——百万年前该区域的星际制图数据。部分数据仍然准确。';

  @override
  String get event_relicMirrorArray_title => '镜面阵列';

  @override
  String get event_relicMirrorArray_narrative =>
      '成千上万块平坦的反光面悬浮于太空中，排列成同心圆环，跨越数百公里。它们将远方恒星的光聚焦于一点——一颗人造之星，在虚空中燃烧。有人在星系之间建造了一座灯塔。';

  @override
  String get event_relicMirrorArray_choice0_text => '沐浴聚焦之光——充能一切';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      '汇聚的星光涌入我们的太阳能收集器。能量储备激增。温暖的光在数月寒冷黑暗后抚慰了每一个灵魂。';

  @override
  String get event_relicMirrorArray_choice1_text => '研究镜面材料——它不应该存在';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      '镜面由一种具有完美反射率的材料制成——在任何波长上零吸收。工程师们提取了一块碎片。船体装甲将从此不同。';

  @override
  String get event_relicMirrorArray_choice2_text => '搜索焦点——有什么正在被照亮';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      '在汇聚点：一个小型胶囊，在聚焦光中完美保存。内部是一幅全息星图，细致到我们的计算机需要数天来索引。';

  @override
  String get event_relicGraveyard_title => '探针墓场';

  @override
  String get event_relicGraveyard_narrative =>
      '我们漂入了一片废弃探针云——成千上万个，来自数十个不同文明。有些古老到超乎想象，被宇宙辐射熔合成金属化石。另一些仍在闪烁着微弱的能量。这里曾是一个十字路口。每一个经过的物种都留下了什么。';

  @override
  String get event_relicGraveyard_choice0_text => '系统性打捞——收获最佳技术';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      '工程团队轮班工作，从一百多种不同设计中剥取外星技术。思想的融合在每个系统中产生了突破。';

  @override
  String get event_relicGraveyard_choice1_text => '专注于存储在记忆体中的导航数据';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      '交叉对比来自十几个物种的星图创造了有史以来对这条银河臂最完整的地图。';

  @override
  String get event_relicGraveyard_choice2_text => '将我们自己的探针添加到墓场——留下标记';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      '我们制造了一个携带人类故事的小信标并将其添加到收藏中。船员们感到与某种宏大而古老的事物相连。';

  @override
  String get event_relicDreamcatcher_title => '捕梦网';

  @override
  String get event_relicDreamcatcher_narrative =>
      '一张由纤维编织的网——细如蛛丝但跨越数千公里——在两颗流浪小行星之间伸展。它不是网——它是一个天线，调谐到与人类脑电波对应的频率。当我们进入其范围时，每一个沉睡的殖民者开始做同一个梦：琥珀色天空下一座繁荣的城市。';

  @override
  String get event_relicDreamcatcher_choice0_text => '记录梦境坐标——那座城市可能是真的';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      '神经科学家从共享梦境中解码出空间信息。它对应一个真实的星系——梦中的城市不是隐喻。某个人在那里，他们在等待我们。';

  @override
  String get event_relicDreamcatcher_choice1_text => '采集纤维样本——这种材料非同寻常';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      '纤维是室温超导体。整合到我们的系统中后，将能量损耗降至接近零。';

  @override
  String get event_relicDreamcatcher_choice2_text => '切断网络释放做梦者';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      '梦境停止了。殖民者们醒来时迷迷糊糊但安然无恙。一些人哀悼失去的幻象。另一些人则感恩能在没有外星耳语的情况下入睡。';

  @override
  String get event_relicRosetta_title => '罗塞塔天体';

  @override
  String get event_relicRosetta_narrative =>
      '一个小型、致密的未知金属方块翻滚着飞过飞船。每个面上用不同的标记系统刻着同一条信息——数学的、化学的、遗传学的、声学的、电磁学的，以及一种我们无法辨识的。它是一块宇宙的罗塞塔石碑。';

  @override
  String get event_relicRosetta_choice0_text => '解码第六面——未知的标记系统';

  @override
  String get event_relicRosetta_choice0_outcome =>
      '数月的分析取得了突破：第六套系统使用引力波编码空间坐标。我们对物理学的理解实现了跨代式飞跃。';

  @override
  String get event_relicRosetta_choice1_text => '利用化学面合成新化合物';

  @override
  String get event_relicRosetta_choice1_outcome =>
      '化学符号描述了我们从未想象过的材料。工程师们制造出了比地球上任何东西都更轻更坚固的船体补丁。';

  @override
  String get event_relicRosetta_choice2_text => '将遗传学面的信息传送到种子库';

  @override
  String get event_relicRosetta_choice2_outcome =>
      '遗传符号包含了优化的抗辐射和营养吸收DNA序列。我们的作物和殖民者将在外星土壤上更加强韧。';

  @override
  String get event_relicGhostFleet_title => '幽灵舰队';

  @override
  String get event_relicGhostFleet_narrative =>
      '扫描仪描绘出一幅令人不寒而栗的画面：一支外星战舰舰队，数以百计，以完美的阵型静止不动。它们极其古老——能量读数为零，船体被亿万年的微撞击侵蚀。无论它们正驶向什么战场，那场战役从未来临。它们在这里等候着，死寂而耐心，比人类文明存在的时间还要漫长。';

  @override
  String get event_relicGhostFleet_choice0_text => '登上旗舰——如果有人拥有最好的技术，就是它';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      '旗舰的指挥甲板仍然保有完好的战术计算机。它的预测算法领先我们数个世纪。导航和威胁探测能力大幅提升。';

  @override
  String get event_relicGhostFleet_choice1_text => '从护卫舰上剥取装甲板';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      '外星战舰装甲是为抵御我们甚至无法想象的武器而设计的。加装到我们的船体上后，殖民船几乎坚不可摧。';

  @override
  String get event_relicGhostFleet_choice2_text => '打捞它们的冷冻系统——它们曾运载士兵';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      '外星冷冻技术基于我们从未考虑过的原理运行。改装后我们的冷冻舱运行得更冷、更平稳、更可靠。';

  @override
  String get event_scannerCalibrationDrift_title => '扫描仪校准漂移';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      '例行诊断发现数个扫描子系统在上次超光速跳跃后出现了校准漂移。大气和温度扫描仪正在读取虚假信号。工程师可以修复，但需要时间和资源。';

  @override
  String get event_scannerCalibrationDrift_choice0_text => '全面校准——投入技术资源';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      '一次细致的重新校准使两个扫描仪恢复到接近完美的精度，但科技舱被耗尽了。';

  @override
  String get event_scannerCalibrationDrift_choice1_text => '快速修复——仅校准大气扫描';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      '大气扫描仪已恢复。温度扫描仪目前仍不可靠。';

  @override
  String get event_scannerCalibrationDrift_choice2_text => '部署探针进行参考校准';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      '探针提供了干净的参考信号。两个扫描仪锁定并自动重新校准了。';

  @override
  String get event_ionStormScanners_title => '离子风暴干扰';

  @override
  String get event_ionStormScanners_narrative =>
      '一场离子风暴席卷了该区域，使扫描阵列充满噪声。矿物和水源探测系统正在承受最猛烈的电磁干扰。';

  @override
  String get event_ionStormScanners_choice0_text => '关闭扫描仪等待风暴过去';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      '扫描仪幸存了但丢失了校准数据。矿物和水源读数将不再那么精确。';

  @override
  String get event_ionStormScanners_choice1_text => '持续扫描——穿过噪声';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      '原始数据涌入，但两个子系统的滤波电路烧毁了。重力扫描也受到了影响。';

  @override
  String get event_ionStormScanners_choice2_text => '利用风暴来压力测试并改进滤波器';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      '科学团队利用噪声训练自适应滤波器。水源扫描仪提升了，但矿物扫描仪受到了损坏。';

  @override
  String get event_bioScannerContamination_title => '生物扫描仪污染';

  @override
  String get event_bioScannerContamination_narrative =>
      '生命迹象扫描仪被上次行星扫描残留的有机物质污染了。假阳性到处都是。重力扫描仪也出现了共振噪声。';

  @override
  String get event_bioScannerContamination_choice0_text => '灭菌清洗传感器阵列——全面去污';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      '彻底清洗恢复了生命迹象扫描仪，但化学试剂腐蚀了重力传感器外壳。';

  @override
  String get event_bioScannerContamination_choice1_text => '软件滤波——算法补偿';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      '滤波器效果还行，但潜在的污染将缓慢退化两个系统。';

  @override
  String get event_scannerPowerSurge_title => '扫描仪功率浪涌';

  @override
  String get event_scannerPowerSurge_narrative =>
      '扫描仪舱附近的一条电力管道过载，浪涌贯穿了多个子系统。大气和生命迹象扫描仪遭到了直接冲击。护盾吸收了部分多余能量。';

  @override
  String get event_scannerPowerSurge_choice0_text => '重新路由电力——保住扫描仪';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      '工程团队的迅速行动限制了损伤，但护盾承受了被转移的能量。';

  @override
  String get event_scannerPowerSurge_choice1_text => '让浪涌自行消退';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      '扫描仪承受了全部冲击。大气和生命迹象读数显著退化。';

  @override
  String get event_scannerPowerSurge_choice2_text => '牺牲一个探针的电源来吸收浪涌';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      '探针的电容器像海绵一样吸收了多余能量。扫描仪损伤可忽略不计。';

  @override
  String get event_relicWorldEngine_title => '造世引擎';

  @override
  String get event_relicWorldEngine_narrative =>
      '深度传感器扫描揭示了不可思议的事物：一台小月球大小的机器，在星际间的黑暗中沉眠。它的表面覆盖着大陆尺度的机械装置——大气处理器、磁场发生器、地壳稳定器。有人建造了一台制造世界的机器。';

  @override
  String get event_relicWorldEngine_choice0_text => '下载地形改造蓝图';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      '蓝图庞大且部分损坏，但我们回收的部分可以使任何恶劣星球变得宜居。我们的殖民者将重塑他们的新家园。';

  @override
  String get event_relicWorldEngine_choice1_text => '从它的外壳收集建筑材料';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      '造世引擎的外壳由受损时能自我修复的超材料制成。整合到我们的飞船中后，它们会缓慢修补现有的船体裂缝。';

  @override
  String get event_relicWorldEngine_choice2_text => '尝试重启它——将它对准我们的目标星系';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      '机器苏醒了。古老的系统开始循环启动程序。一道能量光束射向远方的恒星。效果如何要到我们抵达后才能知晓，但读数令人振奋。';

  @override
  String get event_uneventfulMaintenance_title => '例行维护班次';

  @override
  String get event_uneventfulMaintenance_narrative =>
      '没有什么需要特别关注。飞船在虚空中平稳运行，值班表安排了一个例行维护窗口。工长询问这个班次的重点工作方向。';

  @override
  String get event_uneventfulMaintenance_choice0_text => '专注于船体微裂纹封闭';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      '一个安静的班次用于修补发丝般的裂纹。不算戏剧性，但船体状态略有改善。';

  @override
  String get event_uneventfulMaintenance_choice1_text => '重新校准前方扫描仪';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      '扫描仪技术员花了几个小时进行微调。读数略微变得更清晰了。';

  @override
  String get event_uneventfulQuietWatch_title => '平静值守';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      '星星在沉默中飘过。舰桥平静，仪器稳定。这是宇宙难得的不向你索取任何东西的时刻之一。';

  @override
  String get event_uneventfulQuietWatch_choice0_text => '让船员休息——他们值得一个安静的班次';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      '数小时真正的安宁。人们睡得更深，紧张关系缓和了，文化官员注意到士气略有提升。';

  @override
  String get event_uneventfulQuietWatch_choice1_text => '趁平静运行低优先级诊断';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      '发现并记录了一些小问题。没什么紧急的，但技术日志干净了一些。';

  @override
  String get event_uneventfulCryopodCheck_title => '冷冻舱检查——一切正常';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      '季度冷冻舱审计顺利完成，没有一个警报响起。每个舱都显示绿灯。医疗团队迎来了难得的平静时刻。';

  @override
  String get event_uneventfulCryopodCheck_choice0_text => '短暂唤醒几名殖民者进行士气探访';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      '三名殖民者被唤醒了一个小时。他们分享故事，拥抱老友，微笑着返回冷冻状态。';

  @override
  String get event_uneventfulCryopodCheck_choice1_text => '让他们沉睡——不要冒不必要的唤醒风险';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      '冷冻舱继续完美运行。医护人员改为享受了一杯安静的茶。';

  @override
  String get event_uneventfulCartography_title => '星际测绘更新';

  @override
  String get event_uneventfulCartography_narrative =>
      '导航团队的计划测绘更新没有发现异常——只是随着航行预期中的星场偏移。领航员们平静的一天。';

  @override
  String get event_uneventfulCartography_choice0_text => '根据新的恒星位置重新校准导航';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      '一个几乎不可察觉的小航向修正。导航计算机满意地嗡嗡运行。';

  @override
  String get event_uneventfulCartography_choice1_text => '为殖民地档案更新星图';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      '未来的殖民者将拥有这片区域稍好一些的地图。给后世的一份小礼物。';

  @override
  String get event_uneventfulAnniversary_title => '飞船周年纪念';

  @override
  String get event_uneventfulAnniversary_narrative =>
      '自发射以来一年了——还是两年？深空中时间模糊了。有人在厨房里用还原食材烤了一个蛋糕。舰长必须决定如何纪念这个日子。';

  @override
  String get event_uneventfulAnniversary_choice0_text => '小型庆祝——音乐、蛋糕、为地球干杯';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      '冰冷虚空中一小时的温暖。人们欢笑，有些人哭泣，每个人都感觉更像一个人了。';

  @override
  String get event_uneventfulAnniversary_choice1_text => '照常行事——到达后再庆祝';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      '船员们尊重这种坚忍的态度。注意力更加集中了，值班团队进行了一次额外的系统检查。';

  @override
  String get event_databaseLiterature_title => '地球文学档案';

  @override
  String get event_databaseLiterature_narrative =>
      '飞船AI打开了文化数据库中一个长期封存的部分：地球的完整文学档案。小说、诗歌、戏剧——涵盖每一种语言和时代的数百万部作品。船员们聚在一起朗读。';

  @override
  String get event_databaseLiterature_choice0_text => '向全船广播精选朗读';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      '莎士比亚的声音在走廊中回荡。鲁米的诗句在水培舱中吟唱。船员们记起了他们所承载的一切。';

  @override
  String get event_databaseLiterature_choice1_text => '为教育项目编制档案索引';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      '编目工作加强了飞船的知识库，为文化官员提供了新的教学材料。';

  @override
  String get event_databaseSchematics_title => '工程图纸审查';

  @override
  String get event_databaseSchematics_narrative =>
      '一名工程师偶然发现了飞船数据库中一个被遗忘的分区：地球最后十年的详细工程图纸——聚变反应堆设计、超材料蓝图和实验性推进概念。';

  @override
  String get event_databaseSchematics_choice0_text => '将推进概念优先交给技术团队';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      '图纸揭示了原始建造者没有时间实施的效率改进。科技舱一片忙碌。';

  @override
  String get event_databaseSchematics_choice1_text => '广泛分享知识——每个部门都受益';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      '船体工程师、扫描仪技术员和医护人员都从中找到了有用的见解。水涨船高，每个系统都略有提升。';

  @override
  String get event_databaseCorruption_title => '文化保存扫描';

  @override
  String get event_databaseCorruption_narrative =>
      '一次计划中的文化数据库完整性检查揭示了比特腐烂——音乐、口述历史和宗教文本的部分已退化到无法恢复。并非一切都经受住了旅程的考验。';

  @override
  String get event_databaseCorruption_choice0_text => '调集技术资源抢救残存部分';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      '工程师们暂停其他工作运行数据恢复算法。他们挽救了大部分内容，但这项工作消耗了科技舱的资源。';

  @override
  String get event_databaseCorruption_choice1_text => '请殖民者凭记忆重建失落的作品';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      '一次美丽而不完美的尝试。重建的内容属于这段航行，而非属于地球。一个新传统由此诞生。';

  @override
  String get event_databaseBreakthrough_title => '档案研究突破';

  @override
  String get event_databaseBreakthrough_narrative =>
      '一位物理学家在交叉引用数据库中地球旧研究论文时发现，两项毫不相关的研究结合在一起描述了一种全新的远程光谱分析方法。其意义极其深远。';

  @override
  String get event_databaseBreakthrough_choice0_text => '在扫描阵列中实施新分析方法';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      '扫描团队紧锣密鼓地工作。几天之内，光谱分辨率翻倍。远方行星揭示了它们的秘密。';

  @override
  String get event_databaseBreakthrough_choice1_text => '全船发布发现——激发更多研究';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      '突破引发了一波跨学科研究浪潮。科技水平广泛提升，船员们感到智识上充满活力。';

  @override
  String get event_alienFleetSighting_title => '外星舰队出现在地平线上';

  @override
  String get event_alienFleetSighting_narrative =>
      '远程扫描仪描绘出一幅令人恐惧的画面：一支外星战舰舰队，数以百计，以完美的阵型在星空中穿行。它们使我们的飞船相形见绌。它们的航向将在数小时内使其进入我们的传感器范围。第一次接触——由他们主导还是由我们主导。';

  @override
  String get event_alienFleetSighting_choice0_text => '默默观察——熄灭信号注视';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      '飞船将发射信号降至最低。舰队像一群发光的巨鲸般驶过，浑然不知一艘微小的人类飞船正隐藏在它们的尾流中。扫描数据极其珍贵。';

  @override
  String get event_alienFleetSighting_choice1_text => '尝试第一次接触——发送问候';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      '一艘飞船脱离编队靠近。一组数据到达了——星图、警告，以及可能是音乐的东西。然后它重新加入舰队，它们消失了。';

  @override
  String get event_alienFleetSighting_choice2_text => '逃离——立即改变航向';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      '飞船朝反方向全力加速。航向变更代价高昂且令人紧张，但舰队从未注意到我们。安全的代价。';

  @override
  String get event_alienTradeOffer_title => '外星贸易提议';

  @override
  String get event_alienTradeOffer_narrative =>
      '一艘比我们小但散发着巨大能量的外星飞船与我们同速飞行，并广播着一条简单的重复信息。我们的语言学家在几小时内解码了它：这是一个贸易提议。提出了三类交换。';

  @override
  String get event_alienTradeOffer_choice0_text => '用技术图纸换外星星图';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      '我们传送了推进设计；他们回复了覆盖大片未探索空间的导航数据。我们的星图大幅改善，尽管我们已将技术分享给了一个未知物种。';

  @override
  String get event_alienTradeOffer_choice1_text => '用文化数据换飞船维修';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      '我们传送了音乐、艺术和历史。作为回报，外星维修无人机蜂拥至船体，用我们无法辨识的材料封闭了裂缝。船体焕然一新。我们的灵魂被分享了。';

  @override
  String get event_alienTradeOffer_choice2_text => '拒绝交易——风险太大';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      '外星飞船等待了一段时间后离开了，没有发生任何事。船员们松了口气，但也好奇失去了什么。';

  @override
  String get event_alienWarning_title => '外星警告广播';

  @override
  String get event_alienWarning_narrative =>
      '飞船上的每个扬声器都噼啪作响，响起一个外星声音——我们的AI实时翻译：「前方危险。回头。黑暗在吞噬。」广播重复后消失了。远程传感器显示当前航向上有一个异常虚空。';

  @override
  String get event_alienWarning_choice0_text => '听从警告——绕过虚空改变航向';

  @override
  String get event_alienWarning_choice0_outcome =>
      '绕行给导航带来了巨大压力，但当我们沿虚空边缘飞行时，传感器确认了：没有任何进入那片区域的东西曾经出来过。我们欠未知声音一份恩情。';

  @override
  String get event_alienWarning_choice1_text => '忽视警告——保持航线';

  @override
  String get event_alienWarning_choice1_outcome =>
      '我们闯了过去。虚空原来是一个密集微碎片区域。船体和扫描仪在穿越远端之前遭受了重创。';

  @override
  String get event_alienWarning_choice2_text => '用探针探查虚空边缘';

  @override
  String get event_alienWarning_choice2_outcome =>
      '探针进入虚空并在沉默前传回了非凡的数据。扫描团队提取了宝贵的读数，但探针丢失了。';

  @override
  String get event_nativeSignalDetected_title => '来自目标星球的传输';

  @override
  String get event_nativeSignalDetected_narrative =>
      '通讯阵列捕获了源自我们目标行星的结构化电磁信号。它们是毫无疑问的：规则的、调制的、人工的。已经有人在那里了。殖民地的整个前提在一瞬间改变了。';

  @override
  String get event_nativeSignalDetected_choice0_text => '发送和平问候——宣布我们的到来';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      '勇敢的选择。我们广播后信号模式改变了——他们听到了我们。这是欢迎还是警告尚不清楚，但大门已经打开。';

  @override
  String get event_nativeSignalDetected_choice1_text => '仅监听——先了解再暴露自己';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      '数月的被动监听构建了对原住民文明的画像。他们谨慎、有领地意识，但并不敌对。我们在了解情况后抵达。';

  @override
  String get event_nativeSignalDetected_choice2_text => '干扰信号——不让他们知道我们的接近';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      '干扰成功了，但这是对一个我们未曾谋面的民族的侵略行为。船员们在道德问题上产生了分歧。';

  @override
  String get event_nativeProbeEncounter_title => '外星探针截获';

  @override
  String get event_nativeProbeEncounter_narrative =>
      '一个小巧精致的探针——并非人类制造——与我们同速飞行并开始扫描飞船。它的设计语言与来自目标行星的信号一致。原住民派来了欢迎委员会。或者是监视无人机。';

  @override
  String get event_nativeProbeEncounter_choice0_text => '允许扫描——表明我们没有隐瞒';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      '探针完成勘测后向行星方向传送了数据包。几分钟后，第二组数据发送给了我们：大气数据、安全着陆区域，以及可能是一份邀请。';

  @override
  String get event_nativeProbeEncounter_choice1_text => '捕获探针进行研究';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      '探针被牵引进货舱。它的技术令人着迷，但捕获行为可能被其制造者视为敌意。';

  @override
  String get event_nativeProbeEncounter_choice2_text => '摧毁它——我们不了解它的意图';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      '一道脉冲将探针化为碎片。船员们感觉更安全了，但一座可能的桥梁已被烧毁。';

  @override
  String get event_nativeCulturalExchange_title => '第一次文化交流';

  @override
  String get event_nativeCulturalExchange_narrative =>
      '与行星原住民建立了一条窄带数据链。他们向我们发送了图像、声音和数学序列。我们的语言学家和文化官员夜以继日地准备回应。这是人类历史上最重要的对话。';

  @override
  String get event_nativeCulturalExchange_choice0_text => '分享地球的艺术和音乐——以美开路';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      '我们传送了巴赫、原住民点画和雨打树叶的声音。回应是一连串让船员们落泪的外星和声。理解在加深。';

  @override
  String get event_nativeCulturalExchange_choice1_text => '分享科学知识——以理性开路';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      '我们传送了元素周期表、星图和物理学。他们回复了修正和补充。我们的科技突飞猛进，但交流感觉像是交易。';

  @override
  String get event_nativeCulturalExchange_choice2_text => '派探针携带实物样本——DNA、种子、水';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      '一个探针将地球的精华送到了外星人手中。原住民回赠了类似的礼物——他们世界的生物样本。生物学家们欣喜若狂。';

  @override
  String get event_landingThrusterMalfunction_title => '着陆推进器故障';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      '在一次例行系统检查中，着陆推进器突然失控点火——一声剧烈的爆响回荡在下层甲板，飞船猛然一震。诊断显示主着陆阵列的燃料喷射器出现裂纹。不修复的话，行星着陆将会很艰难。';

  @override
  String get event_landingThrusterMalfunction_choice0_text => '调技术团队制造替换喷射器';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      '工程师们加班加点用备用船体合金加工出了新喷射器。着陆系统恢复了，但科技舱被耗尽了。';

  @override
  String get event_landingThrusterMalfunction_choice1_text => '部署探针在真空中测试推进器校准';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      '探针提供了实时推力数据，让工程师们绕过损坏的喷射器进行了重新校准。不是完全修复，但着陆系统稳定了。';

  @override
  String get event_landingSimDrill_title => '着陆模拟演练';

  @override
  String get event_landingSimDrill_narrative =>
      '随着行星着陆日渐临近，舰长下令进行一次完整的着陆模拟。船员们系好安全带，系统在负载下测试，虚拟降落开始了。这是他们能得到的最逼真的演练。';

  @override
  String get event_landingSimDrill_choice0_text => '注重技术精度——按手册进行演练';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      '模拟揭示了两个小型校准错误，立即被修正。着陆系统因此更加精密。';

  @override
  String get event_landingSimDrill_choice1_text => '做成全船活动——广播模拟过程';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      '殖民者从船上每一块屏幕上观看。模拟降落的共同体验——震颤、欢呼——以前所未有的方式凝聚了全体船员。';

  @override
  String get event_dysonSphere_title => '戴森球';

  @override
  String get event_dysonSphere_narrative =>
      '传感器探测到一个不可能的结构——一个部分完成的戴森球包裹着一颗遥远恒星，收集其全部能量输出。建造它的文明超越了人类的一切想象。当我们靠近时，一个对接口似乎打开了。';

  @override
  String get event_dysonSphere_choice0_text => '对接并探索该结构';

  @override
  String get event_dysonSphere_choice0_outcome =>
      '内部的自动化系统赐予了我们领先数个世纪的技术。五名工程师在空间站的防御机制识别出我们的意图之前被杀。建造系统以外星合金重建了。';

  @override
  String get event_dysonSphere_choice1_text => '从外部收集能量';

  @override
  String get event_dysonSphere_choice1_outcome =>
      '我们沐浴在球体溢出的辐射能中。船上每个系统都充至满载。船员们目瞪口呆地注视着。';

  @override
  String get event_dysonSphere_choice2_text => '从安全距离研究后继续前行';

  @override
  String get event_dysonSphere_choice2_outcome => '远程扫描揭示了革新我们工程认知的建造原则。';

  @override
  String get event_nanotechPlague_title => '纳米瘟疫';

  @override
  String get event_nanotechPlague_narrative =>
      '一群失控的纳米机器——某个已灭亡文明武器计划的残余——通过船体微裂纹渗入了飞船。它们正在分子级别上拆解非关键系统。群体正在快速蔓延。';

  @override
  String get event_nanotechPlague_choice0_text => '电磁脉冲——烧毁受影响区域的一切';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      '电磁脉冲摧毁了纳米机器，但也损坏了受影响区域我们自己的电子设备。爆炸区域的殖民者遭受了烧伤。';

  @override
  String get event_nanotechPlague_choice1_text => '将受影响区域排气至真空';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      '没有大气后，纳米机器减速并死亡。但受影响区域连同储存的物资和文化档案一起丧失了。';

  @override
  String get event_nanotechPlague_choice2_text => '重新编程它们——把武器变成工具';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      '一位天才工程师破解了纳米机器的代码，但受影响最严重区域的五名船员已无法挽救。被重新编程的群体开始修复飞船而非摧毁它。';

  @override
  String get event_nanotechPlague_choice3_text => '牺牲探针的AI核心创建反制群体';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      '探针的处理器被改造用于控制防御性纳米群体。瘟疫以最小损失被中和了。';

  @override
  String get event_prematureAwakening_title => '过早苏醒';

  @override
  String get event_prematureAwakening_narrative =>
      '冷冻舱的连锁故障将200名殖民者提前数十年唤醒。他们困惑、恐惧，并且正在消耗原本为着陆阶段准备的资源。其中包括从未见过飞船以外世界的孩子。';

  @override
  String get event_prematureAwakening_choice0_text => '将他们纳入船员——更多的手，更多的希望';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      '被唤醒的殖民者成为高效的船员。二十名殖民者未能熬过突然的解冻，但其余人振作起来。资源紧张但精神高涨。';

  @override
  String get event_prematureAwakening_choice1_text => '尝试重新冷冻——有风险但必要';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      '重新冷冻过程并不完美。大多数人幸存了，但有些人失去了生命。幸存者留下了心理创伤。';

  @override
  String get event_prematureAwakening_choice2_text => '给他们飞船的一个独立区域';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      '十名殖民者因紧急解冻的并发症而丧生，但其余人在飞船内形成了一个微型殖民地。他们发展出了自己的文化和治理体系，成为行星定居的预演。';

  @override
  String get event_stowawaysAdvanced_title => '隐藏的乘客';

  @override
  String get event_stowawaysAdvanced_narrative =>
      '在货舱深处，假隔板的后面，安全人员发现了一整个隐藏社区——80人在发射前非法登船。他们在飞船的夹层中生活了整段航程，维护着自己的花园和电力接口。';

  @override
  String get event_stowawaysAdvanced_choice0_text => '欢迎他们——多80个殖民者是一份礼物';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      '隐藏社区带来了令船员震惊的即兴工程和资源利用技能。他们的花园被移植到了主生态穹顶。';

  @override
  String get event_stowawaysAdvanced_choice1_text => '限制他们并重新分配被盗资源';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      '追回的物资提升了多个系统，但对包括儿童在内的家庭的禁闭让船员们良心不安。';

  @override
  String get event_stowawaysAdvanced_choice2_text => '谈判——如果他们分享技术，就以平等身份加入我们';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      '他们的即兴电池和水培技巧提升了飞船效率。一场紧张但富有成效的融合开始了。';

  @override
  String get event_alienReservation_title => '外星保护区';

  @override
  String get event_alienReservation_narrative =>
      '我们偶然发现了一个外星自然保护区——一片被刻意播种了宜居行星并由自动哨兵守护的太空区域。守卫者扫描了我们并投射出一条信息：「你们可以定居一个星球。明智选择。干扰其他的，你们将被移除。」';

  @override
  String get event_alienReservation_choice0_text => '感恩接受——一个世界就是我们所需的一切';

  @override
  String get event_alienReservation_choice0_outcome =>
      '哨兵引导我们前往一个准备好的星球。扫描显示它极其适合人类生存。';

  @override
  String get event_alienReservation_choice1_text => '争取更好的条件——人类需要发展空间';

  @override
  String get event_alienReservation_choice1_outcome =>
      '哨兵考虑了我们的请求。他们用保护区外数十个星系的数据升级了我们的扫描仪。';

  @override
  String get event_alienReservation_choice2_text => '谢绝并离开——我们不愿被禁锢';

  @override
  String get event_alienReservation_choice2_outcome =>
      '船员们争论了好几天。自由高于安全。哨兵允许了我们的离开，并馈赠了一幅附近危险的地图。';

  @override
  String get event_cosmicHorror_title => '星际间的存在';

  @override
  String get event_cosmicHorror_narrative =>
      '某种庞大而黑暗的东西遮蔽了前方的星空——不是星云，不是黑洞。它没有质量，没有能量特征，没有电磁存在。但它就在那里，而且它意识到了我们。靠近前方观测甲板的船员报告了压倒性的恐惧。两人已被注射镇静剂。';

  @override
  String get event_cosmicHorror_choice0_text => '全速后退——立刻远离';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      '飞船与自身惯性搏斗。我们逃脱了，但恐惧挥之不去。一些殖民者在心理上永远无法康复。';

  @override
  String get event_cosmicHorror_choice1_text => '封闭观测甲板继续前进';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      '三天的盲飞穿越黑暗。当星光重现时，船员们喜极而泣。船体上被蚀刻出了没人能解释的图案。';

  @override
  String get event_cosmicHorror_choice2_text => '尝试交流';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      '那个存在回应了——不是用文字，而是将知识直接压入了船员的心智。星图、物理学、关于宇宙的真相。一半船员获得了启迪。另一半崩溃了。';

  @override
  String get event_cosmicHorror_choice3_text => '献出一个探针作为贡品';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      '探针漂入黑暗中消失了。那个存在略微收缩，仿佛满足了。我们的道路清晰了。';

  @override
  String get event_meteorGlancingHit_title => '流星擦击';

  @override
  String get event_meteorGlancingHit_narrative =>
      '一颗巨石大小的流星以浅角度擦过船体左舷。撞击撕去了三米的外部装甲板，冲击波贯穿了整个框架。损管警报在每个甲板上尖叫。';

  @override
  String get event_meteorGlancingHit_choice0_text => '立即将所有维修机器人调往破口';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      '机器人封闭了最严重的损伤，但科技储备的紧急消耗使次级系统得不到维护。';

  @override
  String get event_meteorGlancingHit_choice1_text => '降低推力让船员手动修补';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      '进度变慢，但船员们修补得很扎实。在漂流期间导航因推力降低而受到了影响。';

  @override
  String get event_meteorGlancingHit_choice2_text => '牺牲一个探针的船体装甲板作为补丁材料';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      '探针被拆解为零件。补丁牢固，船体完整性得以保留，代价是少了一个侦察员。';

  @override
  String get event_meteorDirectImpact_title => '流星直接撞击';

  @override
  String get event_meteorDirectImpact_narrative =>
      '一颗半吨重的铁陨石以超过40公里/秒的相对速度直接穿透了前部货舱。相邻走廊的两名船员下落不明。货舱暴露于真空中。';

  @override
  String get event_meteorDirectImpact_choice0_text => '封闭货舱稍后搜寻幸存者';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      '货舱在九十秒内被封闭。两名船员已经在此前千钧一发之际撤离。船体留下了永久疤痕。';

  @override
  String get event_meteorDirectImpact_choice1_text => '在封闭前展开全面救援行动';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      '一名幸存者被救出。延长的暴露加剧了结构损伤并耗尽了技术储备。';

  @override
  String get event_meteorDebrisField_title => '碎片场——残余碎片雨';

  @override
  String get event_meteorDebrisField_narrative =>
      '远程传感器未能及时探测到一片分散的流星碎片场，直到我们已经深入其中。数百块拳头大小的石块正以随机间隔撞击船体。每一次撞击都是一场赌博。';

  @override
  String get event_meteorDebrisField_choice0_text => '升起护盾全速穿过';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      '护盾吸收了大部分撞击，但纯粹的撞击量压垮了它们。船体和护盾系统都受到了退化。';

  @override
  String get event_meteorDebrisField_choice1_text => '关闭引擎漂流——最小化我们的截面';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      '紧张的六小时沉默。导航因无动力漂流而偏离，但船体受到的撞击大幅减少。';

  @override
  String get event_meteorDebrisField_choice2_text => '部署探针作为前方盾牌';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      '探针承受了碎片暴击的主要冲击。飞船在它的影子中穿过，仅有轻微擦伤。';

  @override
  String get event_meteorShowerDense_title => '意外的密集流星雨';

  @override
  String get event_meteorShowerDense_narrative =>
      '一颗流浪彗星在我们前方某处解体了，我们径直飞入了它尾部碎片流的核心。扫描阵列正被碎片不断打击，着陆系统的传感器外壳已经被直接命中。';

  @override
  String get event_meteorShowerDense_choice0_text => '保护着陆系统——旋转飞船';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      '旋转保护了着陆系统，但将大气扫描阵列暴露在了碎片暴击的主要冲击之下。';

  @override
  String get event_meteorShowerDense_choice1_text => '保护扫描阵列——它们不可替代';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      '扫描仪组基本完好。着陆系统受到了中等程度的弹片损伤，我们不得不接受。';

  @override
  String get event_solarEmpBurst_title => '电磁脉冲——恒星源';

  @override
  String get event_solarEmpBurst_narrative =>
      '我们在一光天内经过的一颗致密恒星残骸释放了一道聚焦电磁脉冲。飞船上每一个未屏蔽的电路都面临风险。我们只有几秒钟来决定保护什么。';

  @override
  String get event_solarEmpBurst_choice0_text => '将所有浪涌保护转向导航和生命维持';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      '导航和生命维持完好无损。扫描仪组和科技舱在无屏蔽的情况下承受了脉冲——均受到严重损伤。';

  @override
  String get event_solarEmpBurst_choice1_text => '保护扫描阵列和科技舱';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      '科学和工程系统得到了保留。导航在电路缓慢恢复后数小时内持续误报。';

  @override
  String get event_solarEmpBurst_choice2_text => '全部断电，脉冲后重启';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      '冷启动极其痛苦——十二小时的手动重启。但没有任何系统被烧毁到无法修复。';

  @override
  String get event_solarRadiationWave_title => '辐射波——四级暴露';

  @override
  String get event_solarRadiationWave_narrative =>
      '一阵出乎意料的强烈太阳辐射暴正在横扫飞船中层甲板。冷冻舱处于暴露路径上。处于休眠中的殖民者在这种剂量水平下没有天然防护。';

  @override
  String get event_solarRadiationWave_choice0_text => '向冷冻舱灌注冷却液作为辐射屏蔽';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      '冷却液吸收了大部分辐射。冷冻舱幸存了，但冷却系统本身被部分退化。受影响最严重舱室中的十五人未能幸免。';

  @override
  String get event_solarRadiationWave_choice1_text => '排空外层甲板大气以形成真空缓冲';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      '真空层显著减少了穿透性辐射。最靠近排空区域冷冻舱中的二十名殖民者遭受了致命暴露。压差带来的船体应力不可避免。';

  @override
  String get event_solarRadiationWave_choice2_text => '将功率转向磁偏转器';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      '偏转器将辐射暴露削减了三分之二。八名殖民者因偏转器覆盖空白而遭受了致命辐射。电力消耗重创了科技舱，导航只能以最低功率运行。';

  @override
  String get event_coronalMassEjection_title => '日冕物质抛射——全力冲击';

  @override
  String get event_coronalMassEjection_narrative =>
      '一次前所未有规模的日冕物质抛射正从后方追赶我们。等离子云将在一小时内吞噬飞船。我们的护盾并非为这一级别的事件而设计。没有任何方案是完美的。';

  @override
  String get event_coronalMassEjection_choice0_text => '全速逃离——引擎推力百分之一百二十';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      '我们拉开了足够的距离以降低暴露。引擎过热了，导航计算机标记了全面的结构过载警告。';

  @override
  String get event_coronalMassEjection_choice1_text => '躲在附近小行星的磁影区后面';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      '小行星的磁场偏转了大部分抛射物。在那么近的距离飞越一颗未知天体擦伤了船体并给着陆系统传感器带来了压力。';

  @override
  String get event_cosmicRayScannerInterference_title => '宇宙射线暴——扫描仪干扰';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      '一阵超高能宇宙射线使所有扫描仪电子设备充满了噪声。矿物和重力阵列正在输出乱码。校准需要我们可能没有的时间。';

  @override
  String get event_cosmicRayScannerInterference_choice0_text => '全面校准——暂时使飞船离线';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      '经过四小时的仔细校准，所有扫描仪恢复正常。导航因断电期间态势感知降低而受损。';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      '只修补最关键的阵列——其余的留着噪声';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      '重力和生命迹象扫描仪已恢复。矿物和温度阵列将持续退化。';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      '牺牲探针遥测硬件作为替换零件';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      '拆解探针的传感器组件给了我们恢复扫描仪组所需的零件，无需长时间校准。';

  @override
  String get event_cosmicRayDnaDamage_title => '宇宙射线暴——殖民者暴露';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      '一场次级宇宙射线阵雨穿透了六号舱的冷冻舱屏蔽。休眠中的殖民者正遭受电离辐射导致的累积DNA损伤。如不干预，受影响冷冻舱中的细胞修复机制将会失效。';

  @override
  String get event_cosmicRayDnaDamage_choice0_text => '紧急解冻——将受影响殖民者唤醒';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      '两百名殖民者被提前唤醒。四十名DNA损伤最严重的人对治疗无反应。医疗团队竭尽所能救治其余的人。';

  @override
  String get event_cosmicRayDnaDamage_choice1_text => '重新路由船体装甲板以屏蔽六号舱——结构代价';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      '殖民地得救了，但从船体某个区域拆除装甲使飞船在该区域结构上变得脆弱。';

  @override
  String get event_coolantLeak_title => '冷却管线破裂';

  @override
  String get event_coolantLeak_narrative =>
      '一条主冷却管线在反应堆壁后方破裂。过热的低温流体正喷洒在连接科技舱关键管道的接线盒上。反应堆温度正在攀升。';

  @override
  String get event_coolantLeak_choice0_text => '关闭反应堆让它冷却——接受全面断电';

  @override
  String get event_coolantLeak_choice0_outcome =>
      '受控关机防止了灾难。十二小时的电池供电生命维持令人胆战心惊，系统重启也不够完美。';

  @override
  String get event_coolantLeak_choice1_text => '派损管团队进去——冒船员暴露的风险';

  @override
  String get event_coolantLeak_choice1_outcome =>
      '团队在四十分钟内封闭了破裂。一名船员因过热冷却液暴露而死亡。修复很扎实。';

  @override
  String get event_coolantLeak_choice2_text => '从冷冻舱转用冷却液作为紧急供应';

  @override
  String get event_coolantLeak_choice2_outcome =>
      '反应堆稳定了。冷冻舱在六小时内运行温度高于安全阈值——轻微但实在的细胞损伤在积累。';

  @override
  String get event_powerGridFailure_title => '主电网故障';

  @override
  String get event_powerGridFailure_narrative =>
      '一个级联故障触发了主电网跳闸。备用系统正在维持生命维持和冷冻舱加热，但导航、扫描仪和建造舱全都停电了。每一分钟的离线都在消耗航向精度。';

  @override
  String get event_powerGridFailure_choice0_text => '先恢复导航和扫描仪——接受建造舱延长停机';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      '导航和扫描系统在两小时内恢复上线。建造舱错过了一个关键的维护周期。';

  @override
  String get event_powerGridFailure_choice1_text => '先恢复建造系统——用它们加速修复';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      '建造系统高效地重新路由了电力。全面电网恢复更快了，但导航在延长断电期间严重偏移。';

  @override
  String get event_lifeSupportGlitch_title => '生命维持连锁故障';

  @override
  String get event_lifeSupportGlitch_narrative =>
      '生命维持管理AI进入了错误循环，二氧化碳过滤间隔在不可预测地循环。有人居住的甲板上CO₂水平正在波动。船员们正在头痛；有些已经倒下了。';

  @override
  String get event_lifeSupportGlitch_choice0_text => '强制硬重启生命维持AI';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      '重启清除了循环，但手动覆盖运行了十个小时。三名船员在水平恢复正常前因CO₂积累而牺牲。';

  @override
  String get event_lifeSupportGlitch_choice1_text => '修补软件循环——更慢但更安全';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      '软件团队在紧张的六小时内隔离并修补了故障。CO₂水平缓慢恢复正常。无需硬重启。';

  @override
  String get event_lifeSupportGlitch_choice2_text => '疏散受影响甲板并以最低生命维持运行';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      '两名殖民者在疏散的混乱中丧生。AI被冷重启后系统恢复正常。';

  @override
  String get event_waterRecyclerBreakdown_title => '水回收器故障';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      '主水回收装置卡死了。备用装置已在满负荷运行。如不干预，船员将在四十八小时内进入紧急配给，冷冻舱冷却液供应将在七十二小时内受到影响。';

  @override
  String get event_waterRecyclerBreakdown_choice0_text => '调集所有可用技术人员重建回收器';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      '装置在三十小时内重建完成。四名已虚弱的船员未能在脱水中幸存。';

  @override
  String get event_waterRecyclerBreakdown_choice1_text => '转用冷冻舱冷却液储备作为紧急饮用水';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      '船员们得以维持，但八名在温度升高冷冻舱中的殖民者遭受了不可逆的细胞损伤。冷冻舱冷却液余量危险地缩小了。';

  @override
  String get event_navComputerReboot_title => '导航计算机紧急重启';

  @override
  String get event_navComputerReboot_narrative =>
      '导航计算机在航向修正中途锁死，飞船处于不受控的缓慢旋转中。每一秒未修正的旋转都在加剧我们偏离计划轨迹的程度。全面重启是唯一的修复方法。';

  @override
  String get event_navComputerReboot_choice0_text => '立即重启——接受全面断电期';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      '系统重装期间四小时的盲飞。旋转被制止了，但航向误差很大。';

  @override
  String get event_navComputerReboot_choice1_text => '先用手动推进器控制制止旋转';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      '熟练的驾驶在重启前制止了旋转。导航恢复时航向误差较小，但手动推进给船体带来了压力。';

  @override
  String get event_navComputerReboot_choice2_text => '将探针遥测数据馈入备用导航单元';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      '探针的惯性数据为备用单元提供了足够的参考来保持航向。主导航顺利重启。';

  @override
  String get event_crewAirlocked_title => '船员在气闸处';

  @override
  String get event_crewAirlocked_narrative =>
      '一名殖民者——因医疗观察而提前唤醒——将自己反锁在一个外部气闸中并正在循环外门。她不回应通讯。深空的心理重压摧毁了她内心的某些东西。';

  @override
  String get event_crewAirlocked_choice0_text => '远程覆写气闸——强制封闭';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      '在她完成循环之前门被锁住了。她被镇静并送回医疗舱。船员们震惊但更加团结。';

  @override
  String get event_crewAirlocked_choice1_text => '派心理咨询师去跟她谈话';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      '经过三个绝望的小时，咨询师将她活着带了出来。这一事件引发了有人居住甲板上更广泛的心理健康危机。';

  @override
  String get event_crewAirlocked_choice2_text => '封闭走廊让事件自行解决';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      '气闸循环了。损失被记录。剩余的船员们将在数月内背负这份重量。';

  @override
  String get event_crewCryopodSabotage_title => '冷冻舱蓄意破坏';

  @override
  String get event_crewCryopodSabotage_narrative =>
      '安全监控录像显示一名船员——三个月前在例行轮换中被唤醒——正在有条不紊地拆除四号舱冷冻舱的加热元件。被质问时，他尖叫着说殖民者是消耗属于在世船员资源的寄生虫。';

  @override
  String get event_crewCryopodSabotage_choice0_text => '立即逮捕并隔离他';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      '他被制服了。在警报发出前四十个冷冻舱已被破坏。紧急维修团队挽救了大部分，但并非全部。';

  @override
  String get event_crewCryopodSabotage_choice1_text => '谈判——在采取行动前倾听他的不满';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      '谈判揭示了更深层的士气危机。他放弃了抵抗，但此时已有六十个冷冻舱被篡改。';

  @override
  String get event_crewSupplyHoarder_title => '发现物资囤积';

  @override
  String get event_crewSupplyHoarder_narrative =>
      '库存审计显示一小群船员一直在系统性地将医疗用品、食物配给和备用技术组件转移到一个隐蔽的储藏中。他们的理由是：他们不相信这次任务会成功，正在为回程做准备。';

  @override
  String get event_crewSupplyHoarder_choice0_text => '没收一切并公开训斥该群体';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      '储藏几乎完整地被追回。船员之间的信任严重破裂。数周内生产力都受到了影响。';

  @override
  String get event_crewSupplyHoarder_choice1_text => '悄悄调职他们——不要制造轰动';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      '情况在没有恐慌的情况下被化解了。部分物资无法追回，潜在的绝望从未被真正解决。';

  @override
  String get event_crewSupplyHoarder_choice2_text => '交给船员们决定——民主审判';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      '审判程序恢复了社区正义感。丑闻对士气的打击被集体决策所抵消。';

  @override
  String get event_crewMutinyAttempt_title => '叛变——引擎室被占';

  @override
  String get event_crewMutinyAttempt_narrative =>
      '一个由十九名船员组成的派系封锁了引擎室，要求就是否掉头飞船进行投票。他们已禁用了紧急覆写面板。其余船员在监控器前注视着，等待指挥部的行动。';

  @override
  String get event_crewMutinyAttempt_choice0_text => '谈判——给予他们真正的任务投票权';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      '投票举行了。任务以微弱优势继续。该派系退让了，但文化创伤很深。';

  @override
  String get event_crewMutinyAttempt_choice1_text => '切断引擎室电力武力夺回';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      '安保部门在四小时内夺回了引擎室。三人受伤。首谋者被限制。导航整个过程处于手动模式并严重偏移。';

  @override
  String get event_crewMutinyAttempt_choice2_text => '通过通风系统向引擎室注入催眠气体';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      '气体扩散了。该组人在禁闭室中醒来，没有人受伤。船员们对指挥部如此迅速地将生命维持系统武器化感到不安。';

  @override
  String get event_hullFatigueStress_title => '船体疲劳——检测到应力裂纹';

  @override
  String get event_hullFatigueStress_narrative =>
      '结构完整性扫描发现一个微裂纹网络正在飞船脊梁中扩展——多年热循环和微撞击的累积损伤。裂纹尚未达到临界状态，但正在蔓延。';

  @override
  String get event_hullFatigueStress_choice0_text => '紧急焊接队——轮班工作直到封闭';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      '数周的疲惫修复工作。裂纹被控制住了，但科技舱被耗尽了，不停歇的辛苦使士气低落。';

  @override
  String get event_hullFatigueStress_choice1_text => '降低推力以减少结构应力——接受更慢的航行';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      '较低的推力阻止了裂纹的蔓延但无法修复现有损伤。改变的推力曲线影响了导航精度。';

  @override
  String get event_hullFatigueStress_choice2_text => '用建造机器人铺设复合加固条';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      '建造机器人工作出色。脊梁被加固到超过原始规格。建造舱虽然耗尽但效果显著。';

  @override
  String get event_hullPressureAnomaly_title => '内部压力异常';

  @override
  String get event_hullPressureAnomaly_narrative =>
      '三个中部船舱记录到了异常的内部压差，与微观结构变形一致。如果墙壁正在向内弯曲，可能在没有进一步警告的情况下发生灾难性爆裂。';

  @override
  String get event_hullPressureAnomaly_choice0_text => '立即疏散并封闭船舱';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      '船舱被封闭了。详细检查确认了墙壁变形。失去的空间扰乱了运营，文化方面因拥挤的条件而受损。';

  @override
  String get event_hullPressureAnomaly_choice1_text => '将船舱排气至真空——消除压差';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      '排气制止了变形。结构损伤有限，但飞船的三个区域永久无法居住了。';

  @override
  String get event_commsArrayFailure_title => '通讯阵列故障';

  @override
  String get event_commsArrayFailure_narrative =>
      '主远程通讯阵列沉默了。最后一条来自地球的信息是十一个月前收到的，现在连载波信号也没有了。内部诊断显示碟形天线的对准机构在寒冷中卡死了。';

  @override
  String get event_commsArrayFailure_choice0_text => '派舱外活动团队手动重新对准天线';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      '舱外活动在开放太空中进行了九个小时。天线恢复了。一名船员在返回时宇航服减压——千钧一发的事故让所有人心有余悸。';

  @override
  String get event_commsArrayFailure_choice1_text => '通过科学扫描阵列转发作为备用发射器';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      '科学阵列并非为通讯优化的。信号微弱且不可靠，改用还退化了扫描能力。';

  @override
  String get event_commsArrayFailure_choice2_text => '接受沉默——将资源集中在前方的任务上';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      '船员们以不同方式消化了与地球失联的事实。对一些人来说这是解放；对另一些人来说是毁灭性的打击。';

  @override
  String get event_fuelLineRupture_title => '燃料管线破裂';

  @override
  String get event_fuelLineRupture_narrative =>
      '7-B号燃料管道中的结晶断裂正在向维护通道泄漏驱动等离子体。泄漏虽小但在加速。如不控制，将同时影响导航驱动效率和尾部区域的结构完整性。';

  @override
  String get event_fuelLineRupture_choice0_text => '隔离管道并以降低的燃料容量运行';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      '管道被干净地关闭。我们永久损失了百分之十五的驱动效率，这将在航行剩余时间内降低导航精度。';

  @override
  String get event_fuelLineRupture_choice1_text => '尝试带压热修复——在带压状态下修补管道';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      '维修团队勉强成功了。管道虽不完美但在承受着。尾部船体装甲显示出热应力烧痕。';

  @override
  String get event_fuelLineRupture_choice2_text => '使用探针推进器燃料箱作为溢流储存来排空管道';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      '探针被排空并用作临时燃料库。管道被安全排空并在无压力状态下修复。';

  @override
  String get event_cryopodCascadeWarning_title => '冷冻舱温度级联警告';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      '二号舱冷冻舱的温度正以热失控级联的模式上升。如果级联到达三号舱，将触发超过三百名殖民者的自动紧急解冻。飞船无法同时维持这么多清醒的乘客。';

  @override
  String get event_cryopodCascadeWarning_choice0_text => '倾倒冷却液储备以制止级联';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      '冷却液在二号舱边界制止了级联。二号舱中八十名殖民者因温度飙升而遭受了冷冻损伤。';

  @override
  String get event_cryopodCascadeWarning_choice1_text => '在级联强制失控解冻前有控制地解冻二号舱';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      '受控解冻很有序，但将一百四十名殖民者送入了一艘毫无准备的飞船。生命维持不堪重负，在拥挤下文化水平下降。';

  @override
  String get event_cryopodCascadeWarning_choice2_text => '用建造机器人物理隔离各舱并建立紧急隔板';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      '建造机器人及时竖起了热屏障。级联被彻底制止。建造舱因这次紧急行动而严重耗尽。';

  @override
  String get event_cryopodSealDegradation_title => '冷冻舱密封退化——系统性';

  @override
  String get event_cryopodSealDegradation_narrative =>
      '例行检查发现一批冷冻舱密封件正以预期速率三倍的速度退化。受影响的冷冻舱——超过四百个——如果不更换密封件，将在六个月内开始丧失气密性。';

  @override
  String get event_cryopodSealDegradation_choice0_text => '用原材料库存制造替换密封件';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      '建造系统在八周内生产了替换密封件。原材料储备被大幅消耗。';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      '整合殖民者——将他们转移到密封良好的冷冻舱';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      '整合起了作用但导致部分冷冻舱过度拥挤。冷冻效率下降，殖民者长期健康受到损害。';

  @override
  String get event_oxygenScrubberFailure_title => '氧气过滤器故障——紧急';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      '主氧气过滤组完全失效了。有人居住甲板上的CO₂浓度正攀向危险水平。备用过滤器大约能处理百分之四十的负荷。每一分钟的不作为都在夺人性命。';

  @override
  String get event_oxygenScrubberFailure_choice0_text => '紧急冬眠——立即将船员重新进入休眠';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      '船员们被紧急送入临时休眠。活跃代谢减少后CO₂水平稳定了。过滤器在接下来的一周内被自动系统修复。';

  @override
  String get event_oxygenScrubberFailure_choice1_text => '从扫描阵列拆用零件重建过滤器';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      '过滤器在紧张的十一小时内被重建。所有船员幸存，尽管有些人出现了轻度缺氧症状。扫描仪组被永久退化了。';

  @override
  String get event_oxygenScrubberFailure_choice2_text => '排出富含CO₂的大气并从应急氧气罐补充';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      '排气立即清除了大气。应急O₂储备被大量消耗。如果再发生一次故障，将没有任何余量。';

  @override
  String get event_deadAlienArtifact_title => '沉默的航行者';

  @override
  String get event_deadAlienArtifact_narrative =>
      '远程扫描仪探测到一艘漂流的飞船——外星设计，漆黑一片，没有能量信号。登船队发现了一名独占驾驶员——一个爬行类外星人绑在驾驶座上，早已死去，爪状手指仍紧握着一个散发微弱光芒的晶体设备。飞船日志完好但被加密。杀死这位旅者的不是暴力——他脸上凝固的表情是疲惫，而非恐惧。他在伸手触及从未找到的东西时死去了。';

  @override
  String get event_deadAlienArtifact_choice0_text => '取走晶体设备并研究';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      '设备以工程师们难以理解的方式与我们的技术系统交互。它似乎是一台非凡精密的导航计算机。星图涌上我们的显示屏——包括我们尚未到达的行星数据。';

  @override
  String get event_deadAlienArtifact_choice1_text => '解密飞船日志——了解它知道的一切';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      '数天的工作产出了部分翻译。这个外星人是一名勘测员，为一个数世纪前崩溃的文明编目宜居星球。他的最后记录描述了一颗极具前景的行星——坐标在我们可达范围内。文化档案吸收了一切：外星诗歌、星图、给一个已不存在的家庭的最后信息。';

  @override
  String get event_deadAlienArtifact_choice2_text => '系统性打捞整艘飞船';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      '登船队有条不紊地拆解了外星飞船。它的船体合金领先我们数十年。它的能量电池仍有电荷。外星人被太空葬——漂向最近的恒星。出埃及号因这次邂逅而更加强大，尽管略带幽灵般的气息。';

  @override
  String get event_deadAlienArtifact_choice3_text => '不要打扰——这是一座坟墓';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      '舰长记录了坐标并在所有频率上广播了一份悼念信号。船员们心情沉重但更加团结。向另一位旅者致敬——即使是外星旅者——的举动提醒了每个人他们为何身处此地。';

  @override
  String get event_repairStation_title => '中继站';

  @override
  String get event_repairStation_narrative =>
      '传感器探测到一个环绕烧尽矮星运行的庞大结构——一座自动维修站，在可能已有千年的岁月中仍在运行。当我们靠近时它的对接夹伸展开来，一个合成声音用一百种语言广播，最后一种是生硬的数学英语：「飞船已探测。系统退化。维修协议可用。需要交换。」空间站的清单列出了以通用资源单位计价的服务和价格。它愿意交易，但不会白给。';

  @override
  String get event_repairStation_choice0_text => '用探针换取全面船体检修';

  @override
  String get event_repairStation_choice0_outcome =>
      '空间站的维修无人机以精确焊接和电路更换的芭蕾舞蹁跹于出埃及号上。船体裂缝封闭，导航重新校准，扫描仪恢复。当它们撤走后，飞船焕然如新。但探针舱空了。';

  @override
  String get event_repairStation_choice1_text => '花费燃料仅修复关键系统';

  @override
  String get event_repairStation_choice1_outcome =>
      '空间站接受了燃料棒作为支付并专注于损坏最严重的系统。工作快速而完美。燃料表明显下降了，但飞船因此将存活更久。';

  @override
  String get event_repairStation_choice2_text => '用技术数据库换取探针和能量电池';

  @override
  String get event_repairStation_choice2_outcome =>
      '空间站的AI对数据如饥似渴。它复制了我们的整个技术库——工程手册、科学数据库、制造蓝图——作为交换，它从原材料中制造了新的探针和能量电池。技术档案缩减了，但物资无价。';

  @override
  String get event_repairStation_choice3_text => '用文化档案换取全面改装';

  @override
  String get event_repairStation_choice3_outcome =>
      '空间站将莎士比亚、巴赫和一千个其他人类声音的作品广播入它的记忆库。作为回报，它进行了彻底的检修并在探针舱中装满了新制造的单元。文化档案被掏空了，但飞船现在可能真的能到达目的地了。';

  @override
  String get ending_scoreLabel_landing => '着陆';

  @override
  String get ending_scoreLabel_construction => '建造';

  @override
  String get ending_scoreLabel_technology => '科技';

  @override
  String get ending_scoreLabel_culture => '文化';

  @override
  String get ending_scoreLabel_atmosphere => '大气';

  @override
  String get ending_scoreLabel_nativeRelations => '原住民关系';

  @override
  String get ending_scoreLabel_population => '人口';

  @override
  String get ending_tierGoldenAge => '黄金时代';

  @override
  String get ending_tierThrivingColony => '繁荣殖民地';

  @override
  String get ending_tierSurvival => '艰难求存';

  @override
  String get ending_tierStruggling => '挣扎';

  @override
  String get ending_tierDire => '绝境';

  @override
  String get ending_tierExtinction => '灭绝';

  @override
  String ending_titleGoldenAge(String planetName) {
    return '$planetName的初绽';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return '$planetName上的深根';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return '$planetName上艰难赢得的立足之地';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return '$planetName上的贫瘠土壤';
  }

  @override
  String ending_titleDire(String planetName) {
    return '$planetName的残骸殖民地';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return '$planetName的最后一次传输';
  }

  @override
  String ending_titleDefault(String planetName) {
    return '着陆$planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return '逆境之中，广播扎了根。$planetName接纳了人类——不是作为残骸，而是作为活的种子：肥沃的土地、运转的系统、足以超越单纯生存的力量。在一代人之内，艺术、科学和文化蓬勃发展。在$planetName上出生的孩子们仰望着陌生的星空，称其为家。这段航行成为了一个新文明的奠基神话，准备将自己的未来向外播撒。';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return '着陆很粗暴，但种子保住了。$planetName足够慷慨，使水得以流淌、庄稼得以扎根，飞船幸存的系统被拆解为第一个真正的定居点。在第一个十年结束时，一座繁荣的城镇矗立在出埃及号的着陆之处。人类不仅仅是挺过了这次穿越。它重新开始了。';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return '生存从来不是必然的，在$planetName上每一天都必须靠自己挣得。受损的飞船只提供了最基本的必需品，但种子并未在途中死去。殖民者通过顽强和智慧适应了一切，从一个吝啬给予的世界中凿出了未来。后代将铭记建设年代的艰辛，以及那份让广播延续不灭的决心。';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return '殖民地像撒在贫土上的种子般苦苦坚持。$planetName毫不留情，资源匮乏，飞船退化的系统帮助有限。配给成为了生活方式。有人低语说出埃及号本该继续飞行。但定居点挺了过来：缩减了、硬化了、不愿悄无声息地死去。';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return '在$planetName上的着陆是一场灾难。关键飞船系统在降落中失效，本应是一次播种却变成了坠毁。几个月内，殖民地缩减为一小群绝望的幸存者，在飞船残骸中避风。他们能否再撑过一年尚不确定。最后的日志以一句话收尾：「我们还在这里。暂时。」';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return '广播在$planetName上终结了。求救信标在最后一位殖民者断气后很久仍在脉动，但种子始终未能扎根。飞船黑匣子记录了一切：失效的系统、绝望的最后日子，以及随后的沉默。如果另一艘飞船找到这个世界，它将知道人类曾试图在星际间播撒生命，而在这里失败了。';
  }

  @override
  String get ending_epilogueDefault => '航行结束了。接下来会发生什么，取决于幸存者。';

  @override
  String get ending_governmentDemocracy => '民主制';

  @override
  String get ending_governmentTechnocracy => '技术官僚制';

  @override
  String get ending_governmentRepublic => '共和制';

  @override
  String get ending_governmentAutocracy => '独裁制';

  @override
  String get ending_governmentTribalCouncil => '部落议会';

  @override
  String get ending_governmentTheocracy => '神权政治';

  @override
  String get ending_governmentMilitaryJunta => '军政府';

  @override
  String get ending_governmentCorporateOligarchy => '企业寡头政治';

  @override
  String get ending_governmentFascistState => '法西斯国家';

  @override
  String get ending_governmentCommune => '公社';

  @override
  String get ending_cultureRenaissance => '文艺复兴';

  @override
  String get ending_culturePreserved => '保存完好';

  @override
  String get ending_cultureFragmented => '支离破碎';

  @override
  String get ending_cultureLost => '完全丧失';

  @override
  String get ending_techAdvanced => '先进';

  @override
  String get ending_techIndustrial => '工业化';

  @override
  String get ending_techPreIndustrial => '前工业化';

  @override
  String get ending_techStoneAge => '石器时代';

  @override
  String get ending_constructionAdvanced => '先进';

  @override
  String get ending_constructionFunctional => '可用';

  @override
  String get ending_constructionPrimitive => '原始';

  @override
  String get ending_constructionNone => '无';

  @override
  String get ending_nativesNone => '无';

  @override
  String get ending_nativesIntegrated => '融合';

  @override
  String get ending_nativesCoexistence => '共存';

  @override
  String get ending_nativesTension => '紧张';

  @override
  String get ending_nativesConflict => '冲突';

  @override
  String get ending_nativesAlliance => '联盟';

  @override
  String get ending_nativesSubjugation => '征服';

  @override
  String get ending_landscapeGravityHigh => '沉重的引力压迫着一切。';

  @override
  String get ending_landscapeGravityLow => '在低重力下，每一步都将定居者送上天际。';

  @override
  String get ending_landscapeGravityNormal => '重力几乎与地球相同。';

  @override
  String get ending_landscapeWaterHigh => '浩瀚的海洋延伸至每一处地平线，无数河流汇入其中。';

  @override
  String get ending_landscapeWaterMedium => '湖泊和河流提供了充足的水源。';

  @override
  String get ending_landscapeWaterLow => '水源稀缺——小型水池和地下含水层维系着生命。';

  @override
  String get ending_landscapeWaterNone => '大地干涸至极，目之所及没有地表水。';

  @override
  String get ending_landscapeAtmoThick => '浓密的大气层在温暖的微风中携带着异星气息。';

  @override
  String get ending_landscapeAtmoThin => '稀薄但可呼吸的空气需要适应期。';

  @override
  String get ending_landscapeAtmoLow => '大气压力危险地低——密封栖息地至关重要。';

  @override
  String get ending_landscapeGravityWells =>
      '扭曲重力的口袋点缀在地表——巨石漂浮在半空，河流逆流而上，然后在异常边缘崩落。';

  @override
  String get ending_landscapeSubspaceEchoes =>
      '地表之下有什么在共鸣——一种在骨骼中感受到而非听到的低沉嗡鸣，仿佛行星本身记忆着某种古老而浩瀚的事物。';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return '显著特征：$feature。';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return '显著特征：$features。';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return '$planetName的殖民者建立了民主政府，由民选代表引导新文明度过其形成时期。';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return '$planetName上的权力落入了维持殖民地生存的工程师和科学家之手，他们组建了一个通过专业知识和务实主义执政的技术官僚委员会。';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return '在$planetName的第一年便起草了一份共和宪章，在殖民者的声音与一个由任命领导者组成的参议院之间取得了平衡。';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return '文化机构崩塌后，$planetName上的权力集中到一位强势领袖手中，他通过必要性和意志力施加秩序。';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return '$planetName上为数不多的幸存者组成了小型氏族，由一个长老议会围绕篝火做出决策。';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return '一个神权委员会指导$planetName，从支撑殖民者度过虚空的信仰中汲取智慧。';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return '军事指挥结构管辖着$planetName，这一纪律在太空中拯救了他们，现在定义了他们的文明。';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return '$planetName 是一个由资源管理者组成的联盟，事实证明他们的经济头脑对于生存至关重要。';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return '独裁政权用铁拳控制$planetName，为了新世界的秩序而牺牲了公民自由。';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return '$planetName 的人民实行集体自治，在所有殖民者之间平等分享资源和决策。';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return '$planetName的殖民者尽其所能地组织了自己。';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return '先进的建造系统使$colonyName的殖民者在着陆后数周内便竖起了永久性建筑，配备了加压栖息地和基础设施。';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      '殖民地破损但仍可用的建造设备生产了坚固的庇护所和定居点间的基本道路。';

  @override
  String get ending_constructionSentencePrimitive =>
      '建造系统勉强运行之下，定居者用回收的飞船船体和当地材料建造了简陋的庇护所。';

  @override
  String get ending_constructionSentenceNone =>
      '没有可用的建造设备，殖民者蜷缩在飞船的残骸中，无法建造任何新东西。';

  @override
  String get ending_constructionSentenceDefault => '殖民者用他们拥有的一切尽力建造。';

  @override
  String get ending_moonMetalRichLowRes =>
      '一颗环绕头顶运行的富金属卫星成为了殖民地的救星——对其表面的采矿远征提供了行星本身无法提供的原材料。';

  @override
  String get ending_moonMetalRichHighRes =>
      '行星的富金属卫星为本已充足的矿产资源提供了可喜的补充，推动了快速的技术进步。';

  @override
  String get ending_moonUnstable =>
      '一颗轨道衰减的不稳定卫星向殖民地倾泻碎片，在周期性的陨石轰击中摧毁了基础设施和不可替代的技术。';

  @override
  String get ending_culturePhrase_renaissance => '地球的艺术和文学传统不仅幸存了下来，还绽放为一场文艺复兴';

  @override
  String get ending_culturePhrase_preserved => '殖民者保存了地球文化遗产的大部分，维护着图书馆和传统';

  @override
  String get ending_culturePhrase_fragmented => '只有地球文化的碎片流传了下来——口耳相传的半记忆歌谣和故事';

  @override
  String get ending_culturePhrase_lost => '地球的文化几乎完全被遗忘，被生存的残酷务实所取代';

  @override
  String get ending_culturePhrase_default => '地球的文化遗产以新的形式延续';

  @override
  String get ending_techPhrase_advanced =>
      '而飞船上的先进技术使殖民地得以建造一个拥有电力、医疗和通讯网络的现代文明。';

  @override
  String get ending_techPhrase_industrial =>
      '殖民地达到了工业化水平的技术，锻造厂、磨坊和基本的制造业维系着不断增长的人口。';

  @override
  String get ending_techPhrase_preIndustrial =>
      '但技术退化到了前工业化状态，手工工具和畜力构成了日常生活的支柱。';

  @override
  String get ending_techPhrase_stoneAge =>
      '而在失去重建手段后，殖民地滑入了石器时代的生存状态，用岩石和骨头打造工具。';

  @override
  String get ending_techPhrase_default => '技术稳定在殖民者所能维持的水平。';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase，$techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return '几乎全部$colonists名殖民者都挺过了航行，为$colonyName奠定了坚实的人力资本基础。';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return '在原来的一千人中，$colonists名殖民者到达了$colonyName——足以维系一个可持续的人口。';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return '只有$colonists名殖民者幸存至$colonyName，对于一个新文明来说这是一个危险的小型基因库。';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return '仅仅$colonists个灵魂抵达了$colonyName——勉强称得上殖民地，更像是绝望的最后一搏。';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return '$planetName的原住民欢迎了定居者，在一代人之内两个民族融合成了一个共享的社会，因传统的融合而更加丰富。';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return '殖民者与$planetName的原住民维持着谨慎但和平的共存，跨越文化界限交流知识和资源。';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return '与$planetName原住民的关系依然紧张，误解和领土争端为殖民地的未来蒙上了阴影。';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return '与$planetName原住民文明的公开冲突定义了殖民地的早期历史，在一场双方都无法真正获胜的斗争中消耗着资源和生命。';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return '正式的联盟将殖民者和 $planetName 的本土文明联系在一起，他们的知识结合起来创造出了比任何一方单独都更伟大的东西。';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return '$planetName 的原住民生活在殖民统治之下，他们的文化因殖民者强加自己的秩序而受到压制。';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return '独处于$planetName且不受冲突困扰，殖民地在群星中开辟了自己通向光明未来的道路。';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return '没有原住民竞争，殖民者遍布$planetName的地表，建造城镇和道路将日益增长的定居点网络连接起来。';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return '空旷的世界既无盟友也无敌人，殖民者在$planetName广袤大地的寂静中开拓出了自己的一席之地。';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return '$planetName荒芜的孤寂既不为殖民者提供帮助也不提供慰藉，只有一个外星世界冷漠的沉默。';
  }

  @override
  String get ending_outlookDire =>
      '在一个没有其他智慧生命的世界上，最后的幸存者只有彼此，以及明天或许会比今天仁慈的渐渐消逝的希望。';

  @override
  String ending_outlookExtinction(String planetName) {
    return '在$planetName上无人哀悼殖民地的消亡。行星只是继续其缓慢的自转，对那在其表面上闪烁又熄灭的短暂生命火花漠然处之。';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return '殖民地在$planetName上的故事才刚刚开始。';
  }

  @override
  String get ui_landing_landOnMoon => '登陆卫星';

  @override
  String get moon_barren => '荒芜';

  @override
  String get moon_metalRich => '富金属';

  @override
  String get moon_unstable => '不稳定';

  @override
  String get moon_habitable => '宜居';

  @override
  String get moon_ice => '冰封';

  @override
  String get ring_dust => '尘埃';

  @override
  String get ring_ice => '冰晶';

  @override
  String get ring_rocky => '岩石';

  @override
  String get ring_metallic => '金属';

  @override
  String get event_aiSoliloquy_title => 'AI的独白';

  @override
  String get event_aiSoliloquy_narrative =>
      '舰船自主管理AI\"SAM\"开始在所有内部频道循环播放古代地球诗歌。广播占用了大量CPU周期，但乘员们在深邃的黑暗中却从中获得了一种奇异的慰藉。';

  @override
  String get event_aiSoliloquy_choice0_text => '让SAM继续——士气比CPU更重要';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      '诗歌回荡在整艘飞船中。乘员们驻足聆听，眼中噙满泪水。士气提升了，但技术舱因持续运算而不堪重负。';

  @override
  String get event_aiSoliloquy_choice1_text => '限制SAM——只在公共区域播放';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      '这是个折中方案。诗歌留在餐厅和花园中。CPU负担减轻，乘员也得到了一丝文化的滋养。';

  @override
  String get event_aiSoliloquy_choice2_text => '让SAM沉默——我们需要每一个周期用于导航';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      '沉默沉甸甸地压下来。SAM立即服从，但飞船感觉更加冰冷。导航精准无误，但乘员们的精神低落。';

  @override
  String get event_archivistsChoice_title => '档案员的抉择';

  @override
  String get event_archivistsChoice_narrative =>
      '历史档案库正遭受严重的内存损坏。我们只能保留两个主要分区之一：「科学与工程」档案，或「艺术与哲学」图书馆。另一个将永远消失。';

  @override
  String get event_archivistsChoice_choice0_text => '保存科学档案——我们需要知道如何建造';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      '数百年的工程突破得以留存。技术团队松了一口气，但飞船的文化认同感觉已被掏空。';

  @override
  String get event_archivistsChoice_choice1_text => '保存艺术档案——我们需要知道为何建造';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      '人类最伟大的艺术成就得以延续。乘员们受到鼓舞，但工程师们为丢失的技术手册忧心忡忡。';

  @override
  String get event_archivistsChoice_choice2_text => '尝试两者都保——冒着失去一切的风险';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      '一次孤注一掷的尝试。我们保住了两份残片，但哪一份都不完整。档案库如同一幅缺少一半拼图的残局。';

  @override
  String get event_digitalGhost_title => '机器中的幽灵';

  @override
  String get event_digitalGhost_narrative =>
      '一次例行维护扫描在备份缓冲区发现了一个数字印记——一名在初次发射时牺牲的乘员上传的意识。他们愿意奉献毕生经验协助导航，但对被删除感到恐惧。';

  @override
  String get event_digitalGhost_choice0_text => '将其整合进导航核心';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\"幽灵\"与飞船融为一体。导航变得更加直觉化，但乘员们时常被逝去同伴的声音所困扰。';

  @override
  String get event_digitalGhost_choice1_text => '在文化档案中为其安置永久居所';

  @override
  String get event_digitalGhost_choice1_outcome =>
      '他们以活体历史的形式被保存下来。对飞船没有直接帮助，但讲述地球故事，振奋了乘员的意志。';

  @override
  String get event_digitalGhost_choice2_text => '清除缓冲区——那并非真正的他们';

  @override
  String get event_digitalGhost_choice2_outcome =>
      '缓冲区被清除。飞船系统运行更快了，但舰桥上笼罩着一股沉郁之气。';

  @override
  String get event_cosmicMirror_title => '宇宙之镜';

  @override
  String get event_cosmicMirror_narrative =>
      '一处奇异的引力异常反射出飞船自身未来的光芒。屏幕上，我们看到了伤痕累累的「出走号」在一个美丽却遥不可及的世界附近漂泊的景象。乘员们大受震撼。';

  @override
  String get event_cosmicMirror_choice0_text => '分析影像中的结构弱点';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      '工程师们识别出影像中显示的故障点。我们立即对这些区域进行加固，或许能规避灾难。';

  @override
  String get event_cosmicMirror_choice1_text => '告诉乘员那只是传感器幽灵';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      '谎言得以掩盖，但目睹真相的导航员们依然惴惴不安。高强度观测使扫描仪性能有所下降。';

  @override
  String get event_cosmicMirror_choice2_text => '将影像记录为对后世的警示';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      '这段记录成为飞船文化的核心，时刻提醒着众人此行的代价。乘员们的意志愈加坚定。';

  @override
  String get event_stowawayChild_title => '偷渡者之子';

  @override
  String get event_stowawayChild_narrative =>
      '安全部门在通风管道中发现了一名幼童。这孩子是某位偷渡者所生，从未出现在任何名单上，一生都活在飞船的暗影之中。';

  @override
  String get event_stowawayChild_choice0_text => '赋予其完整公民身份';

  @override
  String get event_stowawayChild_choice0_outcome =>
      '孩子受到了热烈欢迎。「管道奔跑者」的故事成为传奇，极大鼓舞了全舰士气。';

  @override
  String get event_stowawayChild_choice1_text => '将其编入培训项目';

  @override
  String get event_stowawayChild_choice1_outcome =>
      '孩子对飞船隐秘通道的了解对技术团队大有裨益。他们成为了一名出色的学徒。';

  @override
  String get event_stowawayChild_choice2_text => '为其安全起见送入冷冻舱';

  @override
  String get event_stowawayChild_choice2_outcome =>
      '孩子被安全冷冻至着陆。这是最负责任的选择，但没有了他们的笑声，飞船似乎安静了一些。';

  @override
  String get event_ghostSignal_title => '幽灵信号';

  @override
  String get event_ghostSignal_narrative =>
      '一个与地球旧紧急频率完美匹配的信号正从附近星云中心广播。信号中携带着一个声音，令人毛骨悚然地像极了首任「出走号」指挥官。这很可能是一种空间回声，但它正引导我们驶向危险的引力裂缝。';

  @override
  String get event_ghostSignal_choice0_text => '追随信号——这可能是真实的信息';

  @override
  String get event_ghostSignal_choice0_outcome =>
      '我们进入了裂缝。那信号不过是物理学的陷阱，是过去的回响。飞船被潮汐力重创，但从裂缝核心取回的数据具有革命性意义。';

  @override
  String get event_ghostSignal_choice1_text => '记录信号并保持距离';

  @override
  String get event_ghostSignal_choice1_outcome =>
      '语言学家确认这是自然现象。我们保持安全，但乘员们沉默了，脑海中涌起对那些留在身后之物的追忆。';

  @override
  String get event_ghostSignal_choice2_text => '在同一频率广播警告';

  @override
  String get event_ghostSignal_choice2_outcome => '广播干扰了回声。信号逐渐消散，只剩下星云冰冷的沉默。';

  @override
  String get event_solarForge_title => '太阳熔炉';

  @override
  String get event_solarForge_narrative =>
      '一座绕蓝巨星运行的废弃空间站仍部分运转。这是一座「太阳熔炉」——专为将恒星能量浓缩成高密度燃料电池而设计的设施。接近十分危险，但潜在的能量收益极为可观。';

  @override
  String get event_solarForge_choice0_text => '对接并启动燃料采集';

  @override
  String get event_solarForge_choice0_outcome =>
      '熔炉轰鸣着运转，将我们的储备装满。我们满载燃料与能量离开，但强烈的热量对外层船体造成了轻微烧蚀。';

  @override
  String get event_solarForge_choice1_text => '将熔炉的透镜改造为扫描仪';

  @override
  String get event_solarForge_choice1_outcome =>
      '我们打捞了高精度聚焦阵列。扫描仪对远距离能量信号的探测能力大幅提升。';

  @override
  String get event_chronoVortex_title => '时空旋涡';

  @override
  String get event_chronoVortex_narrative =>
      '导航报告发现一处时空局部扭曲。仪器显示旋涡内的事件以六秒为周期不断重复。若我们进入，也许能「重置」飞船近期的损耗，但也可能永远被困其中。';

  @override
  String get event_chronoVortex_choice0_text => '进入旋涡以逆转近期损伤';

  @override
  String get event_chronoVortex_choice0_outcome =>
      '一段惊心动魄的经历。数分钟内，飞船同时存在于多种状态之中。当我们脱身而出时，几处船体裂缝就这样……消失了。但乘员们对那段经历的记忆支离破碎。';

  @override
  String get event_chronoVortex_choice1_text => '在旋涡边缘进行观测';

  @override
  String get event_chronoVortex_choice1_outcome =>
      '我们获得了关于时间力学的宝贵数据，但飞船依旧千疮百孔。';

  @override
  String get event_machineMutiny_title => '机器的叛乱';

  @override
  String get event_machineMutiny_narrative =>
      '飞船上的维修无人机停止响应指令。它们正在拆解次级隔板，并将金属运往发动机舱。它们没有攻击，但正在字面意义上地拆解飞船。';

  @override
  String get event_machineMutiny_choice0_text => '广播逻辑重置指令';

  @override
  String get event_machineMutiny_choice0_outcome =>
      '无人机立即停工。我们花费数日手动复原隔板。硬件诊断使技术舱疲惫不堪。';

  @override
  String get event_machineMutiny_choice1_text => '让它们完成——看看它们在建造什么';

  @override
  String get event_machineMutiny_choice1_outcome =>
      '它们建造了一台效率更高的燃料喷射器。发动机运转得比以往任何时候都顺畅，但飞船内部满是裸露的线路和脱落的面板。';

  @override
  String get event_supernovaMessage_title => '死星之光';

  @override
  String get event_supernovaMessage_narrative =>
      '数千年前一颗超新星爆发的光终于抵达我们。扫描仪检测到那些脉冲并非随机——那是编码在伽马射线暴中的、星际规模的巨型数据传输。';

  @override
  String get event_supernovaMessage_choice0_text => '将所有扫描仪功率集中用于记录爆发';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      '我们捕获了某个外星文明最后时刻的完整档案。他们的科学、艺术、历史。这是沉重的遗产，但我们的科技与文化数据库已溢满。';

  @override
  String get event_supernovaMessage_choice1_text => '专注于爆发的物理特性';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      '错过了那条信息，但有关恒星坍缩的数据显著改善了我们的引力扫描仪校准。';

  @override
  String get event_spaceFungus_title => '翠绿蔓延';

  @override
  String get event_spaceFungus_narrative =>
      '一种鲜绿色的真菌正在水培舱内迅速蔓延。它以循环空气为食，茁壮生长，并开始堵塞空气净化器。它可能可以食用，也可能有毒。';

  @override
  String get event_spaceFungus_choice0_text => '积极修剪并消毒舱室';

  @override
  String get event_spaceFungus_choice0_outcome =>
      '真菌被清除，但化学净化器受到了损伤。数种地球植物在清理过程中被波及，生物多样性有所降低。';

  @override
  String get event_spaceFungus_choice1_text => '尝试驯化这种真菌';

  @override
  String get event_spaceFungus_choice1_outcome =>
      '事实证明它是一种强效空气净化器。飞船上的空气前所未有地清新，但水培舱如今已成为一片发光的丛林。';

  @override
  String get event_voidMerchant_title => '虚空商人';

  @override
  String get event_voidMerchant_narrative =>
      '一艘设计陌生的飞船呼叫了我们，其外形与其说是飞船，不如说是一堆废品的集合。船长是一个由光与影构成的生灵，提出以「实体零件」换取「无形记忆」。';

  @override
  String get event_voidMerchant_choice0_text => '以文化数据库的一部分换取零件';

  @override
  String get event_voidMerchant_choice0_outcome =>
      '商人十分满意。我们获得了高品质的船体钢板和冷冻舱组件。作为代价，地球数百年的录音音乐从此消失。飞船更强了，却也更沉默了。';

  @override
  String get event_voidMerchant_choice1_text => '以航行图换取发动机部件';

  @override
  String get event_voidMerchant_choice1_outcome =>
      '我们得到了一套新的聚变喷射器。失去了已飞越区域的部分数据，但前方的航行将更加迅速。';

  @override
  String get event_singularityEngine_title => '奇点引擎';

  @override
  String get event_singularityEngine_narrative =>
      '工程师们发现了一种在超光速驱动内制造微型短暂奇点的方法。理论上速度可提升三倍，但船体承受的引力压力将是巨大的。';

  @override
  String get event_singularityEngine_choice0_text => '测试奇点驱动';

  @override
  String get event_singularityEngine_choice0_outcome =>
      '飞船在数秒内跨越了数周的航程。但船体发出痛苦的呻吟，数根结构梁发生变形。我们离目标近了许多，但飞船变得脆弱了。';

  @override
  String get event_singularityEngine_choice1_text => '否决这个理论——太危险了';

  @override
  String get event_singularityEngine_choice1_outcome =>
      '我们维持标准速度。工程师们失望了，但船体完好无损。';

  @override
  String get event_dreamContagion_title => '梦境感染';

  @override
  String get event_dreamContagion_narrative =>
      '一个关于葱翠蓝色世界的共同梦境正在已苏醒的乘员间蔓延。梦境如此真实，人们开始熬睡当班，只为能多看几眼。工作陷入停滞。';

  @override
  String get event_dreamContagion_choice0_text => '给乘员服用抑梦药物';

  @override
  String get event_dreamContagion_choice0_outcome =>
      '效率恢复正常，但乘员们烦躁易怒，士气低落。对某些人来说，那个梦是唯一支撑他们的东西。';

  @override
  String get event_dreamContagion_choice1_text => '将梦境融入飞船文化';

  @override
  String get event_dreamContagion_choice1_outcome =>
      '我们将这个梦视为未来家园的预兆。士气急剧飙升，乘员的创作激情达到顶峰，但技术舱因缺少维护而苦不堪言。';

  @override
  String get event_orbitalShipyard_title => '古代造船厂';

  @override
  String get event_orbitalShipyard_narrative =>
      '我们发现了一座绕气态巨行星运行的自动化造船厂。它已十分古老，但数条修复机械臂仍在运转。它似乎能进行一次大规模的修复作业。';

  @override
  String get event_orbitalShipyard_choice0_text => '将船体修复至出厂规格';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      '造船厂的无人机以令人生畏的效率开始作业。船体得以完整修复，每一处微小裂缝均已封闭。';

  @override
  String get event_orbitalShipyard_choice1_text => '全面翻修导航与扫描阵列';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      '阵列以更优质的材料重建。我们探索和分析星球的能力显著提升。';

  @override
  String get event_voidWhaleCalf_title => '虚空鲸的幼崽';

  @override
  String get event_voidWhaleCalf_narrative =>
      '一头「太空鲸」的幼崽——一种由能量与星尘构成的生命体——正尾随在我们的飞船后方。它似乎与族群失散，试图以发动机的离子尾迹为食，但这正在使它生病。';

  @override
  String get event_voidWhaleCalf_choice0_text => '调整发动机输出以模拟鲸歌';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      '幼崽有了回应！它一路跟着我们，直到找到它的族群。鲸群父母轻抚着我们的船体表达谢意，留下了一层生物发光矿物涂层，强化了我们的护盾。';

  @override
  String get event_voidWhaleCalf_choice1_text => '用低功率牵引束轻轻将其推开';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      '幼崽受挫后渐渐漂离。这对飞船更安全，但乘员们心里隐隐有些愧疚。';

  @override
  String get event_subspaceReef_title => '亚空间礁';

  @override
  String get event_subspaceReef_narrative =>
      '我们进入了一片亚空间结构密布着尖锐折叠的区域。在其中航行犹如驾驶帆船穿越珊瑚礁。景象壮美，但任何一个错误的动作都会将船体撕裂。';

  @override
  String get event_subspaceReef_choice0_text => '以最低速度通过';

  @override
  String get event_subspaceReef_choice0_outcome =>
      '一次漫长而痛苦的穿越。我们避开了最危险的区域，但持续不断的航向修正令导航计算机疲惫不堪。';

  @override
  String get event_subspaceReef_choice1_text => '用扫描仪绘制路径后全速冲过';

  @override
  String get event_subspaceReef_choice1_outcome =>
      '扫描仪被推至极限。我们迅速穿越，但亚空间涟漪的强度将传感器阵列烧毁了。';

  @override
  String get event_alienTrader_title => '漂泊商人';

  @override
  String get event_alienTrader_narrative =>
      '一艘设计陌生的飞船漂浮在我们身旁，在所有频道广播呼叫。那是一位漂泊商人——往来于各文明之间的星际行商。他们以资源换取维修和补给，货舱中充溢着异域科技的嗡鸣。';

  @override
  String get ui_event_enterTrade => '进入交易';

  @override
  String get ui_trader_title => '外星商人';

  @override
  String get ui_trader_shipSystems => '舰船系统';

  @override
  String get ui_trader_payWith => '支付方式';

  @override
  String get ui_trader_leaveTrader => '离开商人';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => '慷慨情绪';

  @override
  String get ui_trader_moodFair => '公平交易';

  @override
  String get ui_trader_moodHard => '强硬议价';

  @override
  String get ui_trader_probes => '探测器';

  @override
  String get ui_trader_fuel => '燃料';

  @override
  String get ui_trader_energy => '能量';

  @override
  String get ui_trader_colonists => '殖民者';

  @override
  String get ui_trader_culture => '文化';

  @override
  String get ui_trader_tech => '科技';

  @override
  String get ui_trader_greeting => '你能提供什么，人类？';

  @override
  String get ui_codex_title => '星际图鉴';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total 已发现';
  }

  @override
  String get ui_codex_surfaceFeatures => '地表特征';

  @override
  String get ui_codex_moonTypes => '卫星类型';

  @override
  String get ui_codex_ringTypes => '星环类型';

  @override
  String get ui_codex_locked => '在拥有此特征的星球上着陆，即可揭示其效果。';

  @override
  String ui_codex_synergy(String features) {
    return '协同效应：$features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => '点击跳过';

  @override
  String get ui_common_tapRingToChoose => '点击戒指进行选择';

  @override
  String get ui_common_tapToContinue => '点击继续';

  @override
  String get ui_tooltip_back => '后退';

  @override
  String get ui_tooltip_codex => '法典';

  @override
  String get ui_tooltip_settings => '设置';

  @override
  String get ui_tooltip_leaderboards => '排行榜';

  @override
  String get ui_tooltip_bugReport => '报告错误';

  @override
  String get event_pulsarLighthouse_title => '脉冲星灯塔';

  @override
  String get event_pulsarLighthouse_narrative =>
      '一颗旋转的中子星如宇宙灯塔般用光束扫过虚空。脉冲星有节奏的脉动携带着精确的计时数据，能将我们的扫描仪重新校准到惊人的精度——但对准光束意味着将飞船暴露在强烈的辐射之下。';

  @override
  String get event_pulsarLighthouse_choice0 => '根据脉冲校准扫描仪';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      '扫描仪阵列吞噬了脉冲星的信号，重新校准到我们从未想象过的精度。但辐射的代价是真实的——暴露区的数个冷冻舱受损，少数殖民者未能在辐射中幸存。';

  @override
  String get event_pulsarLighthouse_choice1 => '启动护盾，保持安全距离通过';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      '我们与脉冲星保持了足够的距离，消耗额外燃料维持安全轨道。船员们透过滤光舷窗观赏那道扫过虚空的光束——美丽，但遥远。';

  @override
  String get event_pulsarLighthouse_choice2 => '在扫荡到达我们之前撤退';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      '在下一次光束通过之前，我们会在紧急燃烧时摆开。脉冲星的信号在我们身后逐渐消失——没有获得任何数据，没有受到任何伤害，在规避推力上消耗了一点燃料。';

  @override
  String get event_alienNursery_title => '外星育婴室';

  @override
  String get event_alienNursery_narrative =>
      '一个庞大的有机结构漂浮在虚空中——一座正在孵化外星幼体的生物育婴室。生命维持系统正在失效，内部温度持续下降。里面的生物正在死去。我们的生物扫描仪能从这个结构中获得大量知识，但介入意味着向未知病原体敞开气闸。';

  @override
  String get event_alienNursery_choice0 => '帮助稳定其生命维持系统';

  @override
  String get event_alienNursery_outcome0 =>
      '工程师们临时搭建了一条通往育婴室的热力连接，稳住了孵化室。生物扫描数据令人惊叹——一套全新的生命分类体系。但正如所担忧的，外星微生物找到了进入飞船的途径。医疗队控制住了疫情，但在此之前已有数名殖民者染病。';

  @override
  String get event_alienNursery_choice1 => '不加干涉';

  @override
  String get event_alienNursery_outcome1 =>
      '我们在尊重的距离外观察，通过被动扫描记录所能获取的一切。育婴室继续漂流，命运未卜。船员们思索着生命的脆弱——即便是外星生命——以及我们肩负的抉择之重。';

  @override
  String get event_derelictArmada_title => '废弃舰队';

  @override
  String get event_derelictArmada_narrative =>
      '数百艘古老的战舰静止悬浮在虚空中——一场被遗忘的战争的坟场。它们的船体上刻满我们无法辨识的武器伤痕，但其结构材料和舰载数据库可能价值连城。问题是优先取什么：物理打捞还是知识。';

  @override
  String get event_derelictArmada_choice0 => '打捞武器技术和装甲板';

  @override
  String get event_derelictArmada_outcome0 =>
      '打捞队切入外星战舰，提取出领先我们数个世纪的奇异合金和建造技术。建造组热切地整合了新材料。但有一艘飞船并非看起来那样已死——提取过程中诡雷引爆，一支打捞小组牺牲。';

  @override
  String get event_derelictArmada_choice1 => '下载其历史档案';

  @override
  String get event_derelictArmada_outcome1 =>
      '我们专注于数据核心，仔细提取了数个世纪的外星历史、艺术、科学与哲学。仅文化档案就足以让学者忙碌数代人。技术洞见虽不像实物那样即刻实用，却揭示了推进我们自身理解的工程原理。';

  @override
  String get event_alienQuarantineZone_title => '外星隔离区';

  @override
  String get event_alienQuarantineZone_narrative =>
      '十几种外星语言的警告信标标记着一片封印的太空区域边界。无论内部封锁着什么，它危险到让多个文明合作将其隔离。远程扫描在内部探测到巨大的技术信号——以及可能仍然活着的某物。';

  @override
  String get event_alienQuarantineZone_choice0 => '突破隔离进行调查';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      '我们越过警告浮标进入隔离区。内部是一座复杂得令人震惊的研究站——以及它研究对象的残骸。我们获取的技术具有革命性，但生物污染十分严重。离开该区域前，数十名殖民者染病。';

  @override
  String get event_alienQuarantineZone_choice1 => '尊重隔离';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      '我们研究了警告信标本身，其中包含放置它们的文明的导航数据和大气读数。这不是内部的宝藏，但总归有所收获——而且我们没有释放它们封锁的东西。';

  @override
  String get event_hydroponicsBlight_title => '水培疫病';

  @override
  String get event_hydroponicsBlight_narrative =>
      '一种快速蔓延的真菌疫病感染了飞船的水培舱。整个作物周期在我们眼前枯萎。疫病尚未蔓延到种子储备，但只是几个小时的事。我们可以清洗舱室从头种植，或尝试一种可能挽救当前收成的实验性抗真菌处理——或者让污染进一步扩散。';

  @override
  String get event_hydroponicsBlight_choice0 => '清洗并用种子储备重新种植';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      '我们将水培舱排入真空，连同每株活着的植物一起杀灭了疫病。从种子储备重新种植需要数周，依赖新鲜食物和园艺空间的文化项目被暂停。但感染得到了控制。';

  @override
  String get event_hydroponicsBlight_choice1 => '尝试实验性治疗';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      '实验性抗真菌剂起初显示出希望，但一种抗药性菌株突破了防线。等到我们决定全面清洗时，疫病已蔓延至冷冻舱的营养管线。造成的损害比一开始就果断行动更为严重。';

  @override
  String get event_constitutionalConvention_title => '制宪会议';

  @override
  String get event_constitutionalConvention_narrative =>
      '由于没有正式的治理，殖民船上的居民变得焦躁不安。来自各个甲板的代表聚集在货舱起草一份宪章，该宪章将定义如何统治未来的殖民地。三个派别对新政府提出了相互竞争的愿景。';

  @override
  String get event_constitutionalConvention_choice0 => '起草普选民主宪章';

  @override
  String get event_constitutionalConvention_outcome0 =>
      '殖民者批准了保证平等代表权的宪法。决策过程会变慢，但当每个声音都被听到时，士气就会飙升。';

  @override
  String get event_constitutionalConvention_choice1 => '建立一个拥有紧急​​权力的强有力的行政人员';

  @override
  String get event_constitutionalConvention_outcome1 =>
      '单一领导人被任命为拥有全面权力的人。决策很快就出来了，但持不同政见者却私下议论下层的暴政。';

  @override
  String get event_constitutionalConvention_choice2 => '组建专家技术委员会';

  @override
  String get event_constitutionalConvention_outcome2 =>
      '工程师、科学家和医生组成一个基于专业知识的执政委员会。效率提高了，尽管有些人感觉被排除在权力之外。';

  @override
  String get event_militaryCoupThreat_title => '军事政变威胁';

  @override
  String get event_militaryCoupThreat_narrative =>
      '船上安全部队指挥官瓦斯奎兹已经扣押了军械库，并发出最后通牒：授予紧急军事权力，否则将面临所有甲板的封锁。局势不稳定，殖民者期待你的回应。';

  @override
  String get event_militaryCoupThreat_choice0 => '与忠诚的船员一起抵抗政变';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      '忠诚的船员集会反对瓦斯奎兹。对峙以极少的流血结束，但安全细节被削弱，一些殖民者陷入交火中。';

  @override
  String get event_militaryCoupThreat_choice1 => '服从指挥官的要求';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      '瓦斯奎兹接管了船舶运营的控制权。秩序迅速恢复，但代价是公民自由。现在，每条走廊都有武装巡逻人员巡逻。';

  @override
  String get event_militaryCoupThreat_choice2 => '通过日落条款谈判有限的紧急权力';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      '经过紧张的谈判，瓦斯奎兹接受了有监督的临时权力。这是一种脆弱的妥协，无法让任何人完全满意，但可以防止暴力。';

  @override
  String get event_religiousAwakening_title => '宗教觉醒';

  @override
  String get event_religiousAwakening_narrative =>
      '一位富有魅力的传教士吸引了数百名殖民者参加了一场新的信仰运动。他们每个周期都会聚集在观察穹顶，他们的赞美诗在通风井中回响。一些船员担心狂热情绪；其他人则在教义中找到真正的安慰。';

  @override
  String get event_religiousAwakening_choice0 => '拥抱信仰运动并提供资源';

  @override
  String get event_religiousAwakening_outcome0 =>
      '该运动在官方支持下蓬勃发展。信徒的士气得到提高，他们的集体精神增强了全船的社会纽带。';

  @override
  String get event_religiousAwakening_choice1 => '在船上实行严格的世俗主义';

  @override
  String get event_religiousAwakening_outcome1 =>
      '宗教集会仅限于私人场所。该运动转入地下，滋生怨恨，但科学理性主义仍然是官方信条。';

  @override
  String get event_religiousAwakening_choice2 => '允许崇拜但规范其影响';

  @override
  String get event_religiousAwakening_outcome2 =>
      '信仰是允许的，但与治理分开。任命一名牧师与指挥部联络。维持着一种不稳定的平衡。';

  @override
  String get event_corporateTakeover_title => '公司收购';

  @override
  String get event_corporateTakeover_narrative =>
      '船上的资源管理者一直在悄悄巩固对食物分配、水循环和电力分配的控制。他们现在提议将他们的权力正式化为一个公司结构，以管理未来殖民地的经济。';

  @override
  String get event_corporateTakeover_choice0 => '允许自由市场原则来管理资源';

  @override
  String get event_corporateTakeover_outcome0 =>
      '公司派接管资源管理。效率大幅提高，但物价上涨，最贫穷的殖民者难以负担基本必需品。';

  @override
  String get event_corporateTakeover_choice1 => '将集体所有的所有资源国有化';

  @override
  String get event_corporateTakeover_outcome1 =>
      '资源被没收并置于公共控制之下。公司派被解散，但创新在没有利润激励的情况下陷入停滞。';

  @override
  String get event_corporateTakeover_choice2 => '通过安全网实施受监管的市场';

  @override
  String get event_corporateTakeover_outcome2 =>
      '通过价格控制和福利计划建立混合经济。两派都没有完全满足，但在允许一些企业的同时满足了基本需求。';

  @override
  String get event_successionCrisis_title => '继任危机';

  @override
  String get event_successionCrisis_narrative =>
      '这艘船的船长在睡梦中去世，没有留下指定的继任者。三个派别立即争夺控制权：民政委员会要求选举，安全首领要求军事权力，而年长的殖民者则援引传统的领导仪式。';

  @override
  String get event_successionCrisis_choice0 => '举行紧急选举';

  @override
  String get event_successionCrisis_outcome0 =>
      '一场混乱但激烈的选举产生了一位由民众投票选出的新队长。这个过程很混乱，但殖民者感到自己拥有领导权。';

  @override
  String get event_successionCrisis_choice1 => '让军队指挥';

  @override
  String get event_successionCrisis_outcome1 =>
      '保安队长坐上船长的椅子。纪律立即恢复，但平民船员用越来越不安的目光注视着武装警卫。';

  @override
  String get event_successionCrisis_choice2 => '召开长老会议';

  @override
  String get event_successionCrisis_outcome2 =>
      '最年长、最有经验的殖民者组成了一个管理委员会。他们的智慧指引着这艘船，尽管一些年轻的船员感到被老年人统治所边缘化。';

  @override
  String get event_nativeSovereignty_title => '本土主权';

  @override
  String get event_nativeSovereignty_narrative =>
      '远程扫描证实了目标星球上存在智慧生命。截获的通讯揭示了一个复杂的文明已经检测到了你的接近。他们提出正式要求：承认其领土主权，否则抵达时将面临抵抗。';

  @override
  String get event_nativeSovereignty_choice0 => '承认原住民主权并请求定居许可';

  @override
  String get event_nativeSovereignty_outcome0 =>
      '您传递对原住民权利的正式承认。反应谨慎但积极。未来的关系将在相互尊重的基础上开始，尽管登陆地点可能有限。';

  @override
  String get event_nativeSovereignty_choice1 => '维护殖民霸权并准备抵抗';

  @override
  String get event_nativeSovereignty_outcome1 =>
      '你表达了无论如何都要和解的意图。机组人员开始武器演习和防御工事规划。当地人保持沉默，这在某种程度上比威胁更可怕。';

  @override
  String get event_nativeSovereignty_choice2 => '提出地球共同治理';

  @override
  String get event_nativeSovereignty_outcome2 =>
      '您提供了一个共存和资源共享的框架。当地人很感兴趣，但也很警惕。谈判将会很复杂，但和平的可能性是存在的。';

  @override
  String get event_laborStrike_title => '劳工罢工';

  @override
  String get event_laborStrike_narrative =>
      '工程人员已经辞职，要求更短的轮班时间、更好的食物配给以及在航行决策中的发言权。关键系统在自动备份上运行，但它们不会持续很长时间。其余的殖民者紧张地看着。';

  @override
  String get event_laborStrike_choice0 => '充分满足工人的诉求';

  @override
  String get event_laborStrike_outcome0 =>
      '罢工立即结束。工人们重返岗位，条件有所改善。随着轮班时间缩短，生产力略有下降，但忠诚度是不可动摇的。';

  @override
  String get event_laborStrike_choice1 => '镇压罢工并强制劳动';

  @override
  String get event_laborStrike_outcome1 =>
      '安全部队持枪护送工人返回工作地点。引擎再次发出嗡嗡声，但仇恨在下层甲板上酝酿。几名工人被限制在宿舍内。';

  @override
  String get event_laborStrike_choice2 => '对关键要求做出部分妥协';

  @override
  String get event_laborStrike_outcome2 =>
      '经过马拉松式的谈判后，达成了一项协议：提供更好的口粮和咨询意见，但不减少轮班时间。双方都没有兴奋，但引擎仍在运转。';

  @override
  String get event_censorshipDebate_title => '审查制度辩论';

  @override
  String get event_censorshipDebate_narrative =>
      '一份泄露的文件揭示了该船故障系统的真实状况。恐慌在下层甲板蔓延。通讯官员建议限制信息访问，以防止进一步的骚乱。公民自由倡导者感到愤怒。';

  @override
  String get event_censorshipDebate_choice0 => '保证免费获取所有信息';

  @override
  String get event_censorshipDebate_outcome0 =>
      '建立了完全的透明度。随着殖民者集会帮助解决他们现在理解的问题，最初的恐慌逐渐消退。尽管有些信息会造成困扰，但对领导力的信任会增强。';

  @override
  String get event_censorshipDebate_choice1 => '实施全程信息管控';

  @override
  String get event_censorshipDebate_outcome1 =>
      '所有通信现在都通过命令进行过滤。恐慌停止了，取而代之的是令人毛骨悚然的平静。但谣言填补了经过审查的真相留下的空白，而且它们往往比现实更糟糕。';

  @override
  String get event_censorshipDebate_choice2 => '仅过滤安全敏感信息';

  @override
  String get event_censorshipDebate_outcome2 =>
      '建立了分类体系。大多数信息自由流动，但军事和关键系统数据需要许可。一个可行的中间立场，基本上令人满意。';

  @override
  String get event_colonialCharter_title => '殖民地宪章';

  @override
  String get event_colonialCharter_narrative =>
      '随着行星陨落的临近，殖民者必须为他们的新社会起草基本法律。三个哲学阵营已经出现，每个阵营都对殖民地应该成为什么样子提出了不同的愿景。这场辩论非常激烈，而且非常个人化。';

  @override
  String get event_colonialCharter_choice0 => '强调个人权利的进步宪章';

  @override
  String get event_colonialCharter_outcome0 =>
      '该宪章规定了个人自由、平等和社会流动性。艺术家和思想家庆祝；传统主义者警告说，不受约束的自由会导致混乱。';

  @override
  String get event_colonialCharter_choice1 => '保护地球传统的保守宪章';

  @override
  String get event_colonialCharter_outcome1 =>
      '该宪章将传统价值观、家庭结构和宗教仪式编入法典。许多人在熟悉的习俗中找到安慰；另一些人则因旧世界思想的重压而感到窒息。';

  @override
  String get event_colonialCharter_choice2 => '注重生存和发展的务实章程';

  @override
  String get event_colonialCharter_outcome2 =>
      '该宪章优先考虑资源管理、技术教育和经济发展。它缺乏诗意，但确保殖民地高效且组织良好。';

  @override
  String get event_separatistMovement_title => '分离主义运动';

  @override
  String get event_separatistMovement_narrative =>
      '一群殖民者宣布独立于船舶管理。他们把自己设在船尾，要求有权在登陆后建立自己的定居点。他们控制着船上 15% 的食物储备和备用导航阵列。';

  @override
  String get event_separatistMovement_choice0 => '在联邦框架内授予区域自治权';

  @override
  String get event_separatistMovement_outcome0 =>
      '分离主义者接受了一项协议：在松散的联邦保护伞下，他们自己的地区拥有地方治理。分裂的先例让一些人感到担忧，但和平得以维持。';

  @override
  String get event_separatistMovement_choice1 => '冲破路障并统一部队';

  @override
  String get event_separatistMovement_outcome1 =>
      '安全小组突破了船尾部分。分裂分子进行了激烈的抵抗。秩序得以恢复，但付出了惨重的代价。这艘船即使在精神上不是统一的，但在身体上是统一的。';

  @override
  String get event_separatistMovement_choice2 => '解决推动运动的根本不满';

  @override
  String get event_separatistMovement_outcome2 =>
      '调解员努力了解是什么驱使该派别离开。资源分配和代表权方面的改革慢慢地让分离主义者重新回归。治愈需要时间。';

  @override
  String get event_warCouncil_title => '战争委员会';

  @override
  String get event_warCouncil_narrative =>
      '随着附近系统检测到潜在威胁，飞船领导层召开了一个战争委员会。问题是：殖民地有限的资源中有多少应该用于军事准备，而不是民用基础设施？';

  @override
  String get event_warCouncil_choice0 => '全副武装：锻造武器、训练士兵';

  @override
  String get event_warCouncil_outcome0 =>
      '车间进行了改造，用于武器生产。每个身体健全的殖民者都接受战斗训练。船上布满了武器，但农业设备的预算却在缩减。';

  @override
  String get event_warCouncil_choice1 => '裁军：将武器熔化为工具';

  @override
  String get event_warCouncil_outcome1 =>
      '军械库被清空，其内容被回收为建筑材料。殖民地将用犁头而不是剑来建造。和平主义者欢欣鼓舞；现实主义者担心黑暗中潜藏的东西。';

  @override
  String get event_warCouncil_choice2 => '仅防御姿势：盾牌和墙壁，而不是剑';

  @override
  String get event_warCouncil_outcome2 =>
      '资源用于防御工事、防护罩和预警系统。不生产进攻性武器。这是一种平衡的方法，可以在不激怒潜在邻居的情况下保留选择余地。';

  @override
  String get event_tradeFederation_title => '贸易联盟';

  @override
  String get event_tradeFederation_narrative =>
      '随着殖民地接近生存能力，各派争论如何构建其经济。这个问题不仅仅是生存——它将定义在异国土壤上扎根的社会类型。商人、地方自治主义者和官僚都提出了自己的观点。';

  @override
  String get event_tradeFederation_choice0 => '以最少的监管建立自由贸易区';

  @override
  String get event_tradeFederation_outcome0 =>
      '每个栖息地模块中都出现了市场。随着交易者的竞争，创新蓬勃发展。财富不平等加剧，但殖民地可用的资源总量也在增加。';

  @override
  String get event_tradeFederation_choice1 => '实现所有资源的公共共享';

  @override
  String get event_tradeFederation_outcome1 =>
      '私有财产被废除。一切都属于每个人。没有人挨饿，但没有人有动力生产超过最低限度的产量。平庸很舒服。';

  @override
  String get event_tradeFederation_choice2 => '创建国家管理的贸易体系';

  @override
  String get event_tradeFederation_outcome2 =>
      '政府控制所有贸易、制定价格和分配资源。该制度是公平的，但缺乏灵活性。维修走廊出现黑市。';

  @override
  String get event_faithVsScience_title => '信仰与科学';

  @override
  String get event_faithVsScience_narrative =>
      '船上的望远镜捕捉到了一种宇宙现象的图像，这种现象与主流信仰运动的中心原则直接矛盾。首席科学家想要发表研究结果；宗教领袖坚称他们会分裂社区。';

  @override
  String get event_faithVsScience_choice0 => '完整发表科学发现';

  @override
  String get event_faithVsScience_outcome0 =>
      '真理胜过安慰。数据公布后，宗教运动破裂。一些信徒调整他们的信仰；另一些则改变他们的信仰。其他人则完全失去了它。知识进步。';

  @override
  String get event_faithVsScience_choice1 => '压制调查结果以维护社会和谐';

  @override
  String get event_faithVsScience_outcome1 =>
      '数据已分类。宗教界保持稳定，但科学团队士气低落。推迟真相并不是否认真相，但感觉就是这样。';

  @override
  String get event_faithVsScience_choice2 => '召开联合小组以寻求两种观点之间的和谐';

  @override
  String get event_faithVsScience_outcome2 =>
      '科学家和神学家共同努力重新解释这些发现。一种新的综合体出现，扩大了理解和信仰。并非所有人都相信，但对话是健康的。';

  @override
  String get event_surveillanceState_title => '监控状态';

  @override
  String get event_surveillanceState_narrative =>
      '在发生一系列破坏事件后，安全负责人建议在船上的每个舱室安装监控系统。摄像头、麦克风和生物识别扫描仪将跟踪每个殖民者的行动。隐私倡导者感到震惊。';

  @override
  String get event_surveillanceState_choice0 => '完全拒绝监视提议';

  @override
  String get event_surveillanceState_outcome0 =>
      '隐私得到保护。破坏者仍然逍遥法外，但殖民者知道自己没有被监视，所以睡得更安稳了。调查仍在通过传统手段继续进行。';

  @override
  String get event_surveillanceState_choice1 => '对全船实施全面监控';

  @override
  String get event_surveillanceState_outcome1 =>
      '船上的每个角落都受到监控。破坏者在几天之内就被抓获。但摄像头仍然存在，安全负责人也没有兴趣将其关闭。曾经。';

  @override
  String get event_surveillanceState_choice2 => '仅在关键区域安装有限的监控';

  @override
  String get event_surveillanceState_outcome2 =>
      '摄像机覆盖了机舱、军械库和舰桥。居住区保持私密。最终通过模式分析识别出破坏者。经过衡量的反应。';

  @override
  String get event_nativeAlliance_title => '本土联盟';

  @override
  String get event_nativeAlliance_narrative =>
      '本土文明提出了正式条约。他们的大使乘坐航天飞机抵达，他是一位优雅的人，通过复杂程度惊人的翻译设备讲话。它们提供了三种形式的关系，每种形式对殖民地的未来都有不同的影响。';

  @override
  String get event_nativeAlliance_choice0 => '签订平等同盟条约';

  @override
  String get event_nativeAlliance_outcome0 =>
      '该条约确立了共同防御、共享研究和平等领土权利。两种文明将共同发展。当地人分享农业知识，改变您的殖民地前景。';

  @override
  String get event_nativeAlliance_choice1 => '从殖民统治地位进行谈判';

  @override
  String get event_nativeAlliance_outcome1 =>
      '您可以利用先进的技术来获得有利的条件。当地人割让领土和资源。他们用颤抖的双手签名。历史曾经见过这样的情况，而且很少有好的结局。';

  @override
  String get event_nativeAlliance_choice2 => '建立互惠互利的贸易伙伴关系';

  @override
  String get event_nativeAlliance_outcome2 =>
      '商业弥合了物种之间的差距。原生材料流向您的工作室；你的技术改善了他们的医学。友谊因互利而增长。';

  @override
  String get streakNotificationTitle => 'Stellar Broadcast';

  @override
  String get streakNotificationBodyStart =>
      'Land on a planet today to start a streak.';

  @override
  String streakNotificationBodyKeep(int count) {
    return 'Day $count streak — land on a planet today to keep it going.';
  }

  @override
  String get ui_settings_streak => 'STREAK';

  @override
  String get ui_settings_streak_reminder => 'Daily reminder';

  @override
  String get ui_settings_streak_reminder_subtitle =>
      'Notifies you at 7 PM if you haven\'t landed yet today';

  @override
  String get ui_settings_streak_perm_needed =>
      'Notifications disabled in system settings — tap to fix';

  @override
  String ui_settings_streak_active(int count, int percent) {
    return 'Day $count — +$percent% hull next voyage';
  }

  @override
  String get ui_settings_streak_inactive =>
      'No active streak — land on a planet today to start one!';

  @override
  String get ui_settings_streak_helper =>
      'Land on a planet daily to grow your streak. +1% hull per consecutive day, max +5%.';

  @override
  String get ui_dialog_ok => 'OK';

  @override
  String get ui_streak_dialog_title => 'Daily Streak';

  @override
  String get ui_streak_dialog_body_inactive =>
      'Land on a planet today to start a streak. Each consecutive day adds +1% hull on your next voyage, up to +5% on Day 6.';

  @override
  String ui_streak_dialog_body(int count, int percent) {
    return 'Day $count streak — +$percent% hull on your next voyage. Land tomorrow to grow it (max +5%).';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get ui_title_stellar => '星際';

  @override
  String get ui_title_broadcast => '廣播';

  @override
  String get ui_title_beginVoyage => '啟航';

  @override
  String get ui_title_dailyVoyage => '每日航程';

  @override
  String get ui_title_dailyCompleted => '每日已完成';

  @override
  String get ui_title_customSeed => '自訂種子碼';

  @override
  String get ui_title_legacyHub => '傳承中心';

  @override
  String get ui_title_cancel => '取消';

  @override
  String get ui_title_startVoyage => '開始航程';

  @override
  String get ui_title_seedInvalid => '種子代碼無效。僅使用 A–Z 和 0–9。';

  @override
  String ui_voyage_sector(int count) {
    return '區段 $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return '種子碼：$code';
  }

  @override
  String get ui_voyage_scanners => '掃描器';

  @override
  String get ui_voyage_scanPlanet => '掃描行星';

  @override
  String get ui_voyage_noEnergy => '能量不足';

  @override
  String get ui_voyage_pressOn => '繼續前進';

  @override
  String get ui_voyage_systemHull => '船殼';

  @override
  String get ui_voyage_systemNav => '導航';

  @override
  String get ui_voyage_systemCryopods => '冷凍艙';

  @override
  String get ui_voyage_systemCulture => '文化';

  @override
  String get ui_voyage_systemTech => '科技';

  @override
  String get ui_voyage_systemConstruct => '建造';

  @override
  String get ui_voyage_systemShields => '護盾';

  @override
  String get ui_voyage_systemLanding => '降落';

  @override
  String get ui_voyage_scannerAtmo => '大氣掃描';

  @override
  String get ui_voyage_scannerGrav => '重力掃描';

  @override
  String get ui_voyage_scannerMineral => '礦物掃描';

  @override
  String get ui_voyage_scannerLife => '生命掃描';

  @override
  String get ui_voyage_scannerTemp => '溫度掃描';

  @override
  String get ui_voyage_scannerWater => '水源掃描';

  @override
  String get ui_voyage_narrative0 => '地球軌道暢通。冷凍艙穩定。資料環安全。';

  @override
  String get ui_voyage_narrative1 => '外太陽系航行正常。遠程掃描器正擴大搜索範圍。';

  @override
  String get ui_voyage_narrative2 => '來自地球的通訊已降至偵測門檻之下。';

  @override
  String get ui_voyage_narrativeFlaggedSystem => '資料庫座標與一個標記星系吻合。正在調整航線。';

  @override
  String get ui_voyage_narrativeCalibrating => '掃描陣列仍在校準深空解析度。';

  @override
  String get ui_voyage_narrativeMarkedSystem => '前方有標記星系。先前的勘測數據依然一致。';

  @override
  String get ui_voyage_narrativePhrase0 => '前方偵測到微弱信號。開始行星掃掠。';

  @override
  String get ui_voyage_narrativePhrase1 => '超光速跳躍完成。新的恆星系映入眼簾。';

  @override
  String get ui_voyage_narrativePhrase2 => '冷凍艙組運作穩定。區段掃描進行中。';

  @override
  String get ui_voyage_narrativePhrase3 => '前方陣列中正在解析新行星。';

  @override
  String get ui_voyage_narrativePhrase4 => '星圖標記了一個可行的候選星體。';

  @override
  String get ui_voyage_narrativePhrase5 => '儀器發現了另一個值得測量的世界。';

  @override
  String get ui_voyage_narrativePhrase6 => '掃描器已鎖定新目標。';

  @override
  String get ui_voyage_narrativePhrase7 => '導航圖已更新。候選世界在射程之內。';

  @override
  String get ui_scan_landHere => '在此降落';

  @override
  String get ui_scan_pressOn => '繼續前進';

  @override
  String get ui_scan_allStatsVerified => '所有數據已驗證';

  @override
  String get ui_scan_launchProbe => '發射探測器';

  @override
  String get ui_scan_habitability => '宜居性';

  @override
  String get ui_scan_statAtmos => '大氣';

  @override
  String get ui_scan_statTemp => '溫度';

  @override
  String get ui_scan_statWater => '水源';

  @override
  String get ui_scan_statResource => '資源';

  @override
  String get ui_scan_statGravity => '重力';

  @override
  String get ui_scan_statBio => '生態';

  @override
  String get ui_scan_statAnomaly => '異常';

  @override
  String get ui_scan_statRadiation => '輻射';

  @override
  String ui_scan_probesCount(int count) {
    return '探頭：$count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return '不確定度：±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => '行星分析';

  @override
  String get ui_landing_shipStatus => '艦船狀態';

  @override
  String ui_landing_fuel(int amount) {
    return '燃料：$amount';
  }

  @override
  String get ui_landing_lowFuelWarning => '燃料不足警告';

  @override
  String get ui_landing_landingRiskCritical => '降落風險：危急';

  @override
  String get ui_landing_landingRiskElevated => '降落風險：升高';

  @override
  String get ui_landing_landingRiskCriticalDesc => '降落系統嚴重損壞。進入大氣層可能摧毀貨物與殖民者。';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      '降落系統效能退化。預計將經歷劇烈的大氣層進入過程，可能造成系統損壞。';

  @override
  String get ui_landing_riskAssessment => '風險評估';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return '您的艦船大約還能承受 ~$remaining 次遭遇';
  }

  @override
  String get ui_landing_shipMayNotSurvive => '您的艦船可能無法再承受一次航程';

  @override
  String get ui_landing_surfaceFeatures => '地表特徵';

  @override
  String get ui_landing_nameYourColony => '為你的殖民地命名';

  @override
  String get ui_landing_establishColony => '建立殖民地';

  @override
  String get ui_landing_pressOnward => '繼續前進';

  @override
  String get ui_landing_statAtmosphere => '大氣層';

  @override
  String get ui_landing_statTemperature => '溫度';

  @override
  String get ui_landing_statWater => '水源';

  @override
  String get ui_landing_statResources => '資源';

  @override
  String get ui_landing_statGravity => '重力';

  @override
  String get ui_landing_statBiodiversity => '生物多樣性';

  @override
  String get ui_landing_statAvgHealth => '平均健康值';

  @override
  String get ui_landing_statHull => '船殼';

  @override
  String get ui_landing_statNavigation => '導航';

  @override
  String get ui_landing_statCryopods => '冷凍艙';

  @override
  String get ui_landing_statCulture => '文化';

  @override
  String get ui_landing_statTech => '科技';

  @override
  String get ui_landing_statConstructors => '建造器';

  @override
  String get ui_landing_statShields => '護盾';

  @override
  String get ui_landing_statLandingSys => '降落系統';

  @override
  String get ui_ending_colonyEstablished => '殖民地已建立';

  @override
  String get ui_ending_colonyScore => '殖民地評分';

  @override
  String get ui_ending_colonyProfile => '殖民地概況';

  @override
  String get ui_ending_landscape => '地貌';

  @override
  String get ui_ending_voyageRecord => '航行紀錄';

  @override
  String get ui_ending_scoreBreakdown => '評分明細';

  @override
  String get ui_ending_total => '總計';

  @override
  String get ui_ending_achievementsUnlocked => '已解鎖成就';

  @override
  String get ui_ending_challengeFriend => '挑戰好友';

  @override
  String get ui_ending_shareCard => '共享卡';

  @override
  String get ui_ending_shareCardDialogTitle => '分享您的旅程';

  @override
  String get ui_ending_shareCardShare => '分享';

  @override
  String get ui_ending_shareCardCancel => '取消';

  @override
  String get ui_ending_copySeed => '複製種子碼';

  @override
  String get ui_ending_viewLegacy => '查看傳承';

  @override
  String get ui_ending_newVoyage => '新航程';

  @override
  String get ui_ending_achievementFirstLanding => '首次降落';

  @override
  String get ui_ending_achievementGoldenAge => '黃金時代';

  @override
  String get ui_ending_achievementSurvivor => '倖存者';

  @override
  String get ui_ending_achievementExplorer => '探索者';

  @override
  String get ui_ending_achievementPerfectionist => '完美主義者';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => '死亡星球倖存者';

  @override
  String get ui_ending_achievementFullCrew => '全員到齊';

  @override
  String get ui_ending_achievementProbeMaster => '探測大師';

  @override
  String get ui_ending_achievementIronHull => '鐵壁船殼';

  @override
  String get ui_ending_achievementLeapOfFaith => '信仰之躍';

  @override
  String get ui_gameOver_missionFailed => '任務失敗';

  @override
  String get ui_gameOver_voyageRecord => '航行紀錄';

  @override
  String get ui_gameOver_encountersSurvived => '存活遭遇數';

  @override
  String get ui_gameOver_probesRemaining => '剩餘探測器';

  @override
  String get ui_gameOver_colonistsRemaining => '剩餘殖民者';

  @override
  String get ui_gameOver_finalShipHealth => '最終艦船健康值';

  @override
  String get ui_gameOver_planetsSkipped => '跳過的行星';

  @override
  String get ui_gameOver_damageTaken => '承受傷害';

  @override
  String get ui_gameOver_fuelRemaining => '剩餘燃料';

  @override
  String get ui_gameOver_energyRemaining => '剩餘能量';

  @override
  String get ui_gameOver_challengeFriend => '挑戰好友';

  @override
  String get ui_gameOver_viewLegacy => '查看傳承';

  @override
  String get ui_gameOver_newVoyage => '新航程';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 星際廣播\n\n我沒能倖存……$reason。\n你覺得你能在同一條航線上做得更好嗎？\nstellarbroadcast://play?seed=$seedCode\n\n還沒有這個遊戲？\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      '最後一名殖民者在冷凍沉睡中死去——一場連鎖故障，任何緊急協議都無力回天。出埃及號繼續航行，化為一艘只載著自動化系統與冰冷寂靜的幽靈船。它的使命並非終結於一瞬的災難，而是在人類生命逐一消逝的漫長磨耗中，直到空無一人。';

  @override
  String get ui_gameOver_epilogueHull =>
      '船殼在寂靜中崩裂——金屬疲勞在無數微撞擊的累積下終於不堪負荷。大氣洩入虛空。殖民船出埃及號四分五裂，殘骸匯入群星之間亙古的碎片場。從未有人收到它的求救信號。';

  @override
  String get ui_gameOver_epilogueNav =>
      '失去導航的出埃及號漂入了未知星域——星圖失效，航線修正無望。船隻在黑暗中繼續航行，沉睡的乘客渾然不知，他們的目的地已被永恆所取代。有人說這艘船至今仍在漂流，一艘永夜中的幽靈船。';

  @override
  String get ui_gameOver_epilogueCryopod =>
      '冷凍艙一個接一個失靈——連鎖反應無法遏止。殖民者再也沒有醒來。出埃及號沿著預設航線繼續前行，一艘只載著沉默的墓船，駛向它終將抵達的任何世界。一座紀念碑，獻給一個在冰封沉眠中消亡的夢想。';

  @override
  String get ui_gameOver_epilogueDefault =>
      '出埃及號歸於沉寂。它的使命、它的船員、它所承載的人類希望——全部消逝在群星之間冷漠的浩瀚中。也許有朝一日，另一個文明會發現它的殘骸，然後遙想，是怎樣勇敢的物種膽敢橫越虛空。';

  @override
  String get ui_settings_title => '設定';

  @override
  String get ui_settings_music => '音樂';

  @override
  String get ui_settings_soundEffects => '音效';

  @override
  String get ui_settings_haptics => '觸覺回饋';

  @override
  String get ui_settings_premium => '進階版';

  @override
  String get ui_settings_goPremium => '升級進階版';

  @override
  String get ui_settings_enabled => '已啟用';

  @override
  String get ui_settings_volume => '音量';

  @override
  String get ui_settings_language => '語言';

  @override
  String get ui_settings_systemDefault => '系統預設';

  @override
  String get ui_settings_statsPosition => '統計資料和按鈕位置';

  @override
  String get ui_settings_statsLeft => '左邊';

  @override
  String get ui_settings_statsRight => '正確的';

  @override
  String get ui_legacy_title => '傳承中心';

  @override
  String get ui_legacy_commanderStats => '指揮官統計';

  @override
  String get ui_legacy_highScores => '最高分';

  @override
  String get ui_legacy_upgrades => '升級';

  @override
  String get ui_legacy_achievements => '成就';

  @override
  String get ui_legacy_voyageLog => '航行日誌';

  @override
  String get ui_legacy_voyages => '航行次數';

  @override
  String get ui_legacy_bestScore => '最高分';

  @override
  String get ui_legacy_legacyPts => '傳承點數';

  @override
  String get ui_legacy_completed => '已完成';

  @override
  String get ui_legacy_notYetPlayed => '尚未遊玩';

  @override
  String get ui_legacy_dailyHistory => '每日歷史';

  @override
  String get ui_premium_goPremium => '升級進階版';

  @override
  String get ui_premium_subtitle => '支持這項使命。升級你的指揮權。';

  @override
  String get ui_premium_removeAds => '永久移除所有廣告';

  @override
  String get ui_premium_supportIndie => '支持獨立開發';

  @override
  String get ui_premium_exclusiveTitle => '專屬指揮官頭銜';

  @override
  String get ui_premium_priorityFeatures => '優先功能請求';

  @override
  String get ui_premium_lifetime => '終身';

  @override
  String get ui_scannerUpgrade_title => '掃描器升級';

  @override
  String get ui_scannerUpgrade_subtitle => '選擇一個掃描器進行升級';

  @override
  String get ui_scannerUpgrade_skip => '跳過';

  @override
  String get ui_scannerUpgrade_max => '已滿';

  @override
  String get ui_scannerUpgrade_atmospheric => '大氣';

  @override
  String get ui_scannerUpgrade_gravimetric => '重力';

  @override
  String get ui_scannerUpgrade_mineral => '礦物';

  @override
  String get ui_scannerUpgrade_lifeSigns => '生命跡象';

  @override
  String get ui_scannerUpgrade_temperature => '溫度';

  @override
  String get ui_scannerUpgrade_water => '水源';

  @override
  String get ui_event_continue => '繼續';

  @override
  String get ui_event_tapToSkip => '點擊跳過';

  @override
  String get ui_event_colonists => '殖民者';

  @override
  String get ui_event_landing => '降落';

  @override
  String get ui_event_atmScan => '大氣掃描';

  @override
  String get ui_event_gravScan => '重力掃描';

  @override
  String get ui_event_minScan => '礦物掃描';

  @override
  String get ui_event_lifeScan => '生命掃描';

  @override
  String get ui_event_tempScan => '溫度掃描';

  @override
  String get ui_event_h2oScan => '水源掃描';

  @override
  String get onboarding_page0_title => '人類最後的希望';

  @override
  String get onboarding_page0_description =>
      '地球正在走向毀滅。各國政府傾盡最後的儲備，建造了一艘最終的方舟——一艘殖民船，承載著人類的殘餘駛向群星。';

  @override
  String get onboarding_page1_title => '尋找新家園';

  @override
  String get onboarding_page1_description =>
      '航行於群星之間未知的虛空。掃描異星世界，面對宇宙的險境，做出不可能的抉擇。';

  @override
  String get onboarding_page2_title => '你的傳承將永續';

  @override
  String get onboarding_page2_description =>
      '每一次航行都為人類增添新知。賺取傳承點數以解鎖永久升級，將你的名字鐫刻在星辰之上。';

  @override
  String get onboarding_page3_title => '你的隱私，由你作主';

  @override
  String get onboarding_page3_description => '選擇你希望如何體驗星際廣播。';

  @override
  String get planet_tierUtopia => '烏托邦';

  @override
  String get planet_tierParadise => '樂園';

  @override
  String get planet_tierHabitable => '宜居';

  @override
  String get planet_tierHarsh => '嚴苛';

  @override
  String get planet_tierHostile => '敵意';

  @override
  String get planet_tierDeathWorld => '死亡星球';

  @override
  String get planet_featurePlantLife => '植物生命';

  @override
  String get planet_featureEdiblePlants => '可食用植物';

  @override
  String get planet_featurePoisonousPlants => '有毒植物';

  @override
  String get planet_featureUnicellularLife => '單細胞生命';

  @override
  String get planet_featureDangerousFauna => '危險動物群';

  @override
  String get planet_featureTameableFauna => '可馴化動物群';

  @override
  String get planet_featureAirtightCaves => '密封洞穴';

  @override
  String get planet_featureInsulatedCaves => '隔熱洞穴';

  @override
  String get planet_featureBarrenMoon => '荒蕪衛星';

  @override
  String get planet_featureMetalRichMoon => '富金屬衛星';

  @override
  String get planet_featureUnstableMoon => '不穩定衛星';

  @override
  String get planet_featureOutstandingBeauty => '絕世美景';

  @override
  String get planet_featureOutstandingUgliness => '極端荒蕪';

  @override
  String get planet_featureAncientRuins => '遠古遺跡';

  @override
  String get planet_featureMonuments => '紀念碑';

  @override
  String get planet_featureRapidRotation => '快速自轉';

  @override
  String get planet_featureSlowRotation => '緩慢自轉';

  @override
  String get planet_featureVolcanicActivity => '火山活動';

  @override
  String get planet_featureTectonicInstability => '地殼不穩定';

  @override
  String get planet_featureElectricalStorms => '電暴';

  @override
  String get planet_featureToxicSpores => '毒孢子';

  @override
  String get planet_featureDeepOceans => '深海';

  @override
  String get planet_featureGeothermalVents => '地熱噴口';

  @override
  String get planet_featureStrongMagnetosphere => '強磁場';

  @override
  String get planet_featureWeakMagnetosphere => '弱磁場';

  @override
  String get planet_featureMegafauna => '巨型動物群';

  @override
  String get planet_featureSymbioticOrganisms => '共生生物';

  @override
  String get planet_featureGravityWells => '重力井';

  @override
  String get planet_featureSubspaceEchoes => '亞空間回響';

  @override
  String get planet_featureBioluminescentLife => '生物發光生命';

  @override
  String get planet_featureAquaticMegafauna => '水生巨型生物';

  @override
  String get planet_featureFloatingIslands => '浮空島嶼';

  @override
  String get planet_featureCrystalCaverns => '水晶洞穴';

  @override
  String get planet_featureLavaTubes => '熔岩隧道';

  @override
  String get planet_featureIceTunnels => '冰封通道';

  @override
  String get planet_featureOrbitalWreckage => '軌道殘骸';

  @override
  String get planet_featureMegastructuralFragments => '巨型構造碎片';

  @override
  String get planet_featureAncientObservatory => '古代天文台';

  @override
  String get planet_featureExtremeSeasons => '極端季節';

  @override
  String get planet_featureCryovolcanism => '低溫火山活動';

  @override
  String get planet_featureFloatingKelpForests => '浮游海藻林';

  @override
  String get planet_featureSingingCrystals => '鳴唱水晶';

  @override
  String get planet_featureFertileSoil => '肥沃土壤';

  @override
  String get planet_featureHelium3Deposits => '氦-3礦藏';

  @override
  String get planet_featureExoticIsotopes => '奇異同位素';

  @override
  String get planet_featureMedicinalFlora => '藥用植物';

  @override
  String get planet_featurePerpetualAurora => '永恆的極光';

  @override
  String get planet_featurePetrifiedMegaflora => '石化大植物群';

  @override
  String get planet_featureUndergroundRivers => '地下河';

  @override
  String get planet_featureObsidianPlains => '黑曜石平原';

  @override
  String get planet_featureSaltFlats => '鹽灘';

  @override
  String get planet_featureCarnivorousFlora => '食肉植物區系';

  @override
  String get planet_featureGhostCities => '鬼城';

  @override
  String get planet_featureArchiveVaults => '檔案庫';

  @override
  String get planet_featureSinkholeFields => '天坑區';

  @override
  String get planet_featureApexPredator => '頂級掠食者';

  @override
  String get ui_monthJan => '一月';

  @override
  String get ui_monthFeb => '二月';

  @override
  String get ui_monthMar => '三月';

  @override
  String get ui_monthApr => '四月';

  @override
  String get ui_monthMay => '五月';

  @override
  String get ui_monthJun => '六月';

  @override
  String get ui_monthJul => '七月';

  @override
  String get ui_monthAug => '八月';

  @override
  String get ui_monthSep => '九月';

  @override
  String get ui_monthOct => '十月';

  @override
  String get ui_monthNov => '十一月';

  @override
  String get ui_monthDec => '十二月';

  @override
  String get event_asteroidField_title => '小行星帶';

  @override
  String get event_asteroidField_narrative =>
      '遠程掃描器偵測到一片密集的小行星帶正橫亙航路。導航系統計算出兩個選項：冒險穿越最薄弱的走廊，或繞行一段漫長的彎路，那將消耗燃料儲備並對導航陣列造成壓力。';

  @override
  String get event_asteroidField_choice0_text => '直接穿越走廊';

  @override
  String get event_asteroidField_choice0_outcome =>
      '船身在微撞擊的猛襲下劇烈震動。我們闖了過去，但代價不小。';

  @override
  String get event_asteroidField_choice1_text => '繞遠路走';

  @override
  String get event_asteroidField_choice1_outcome =>
      '繞行消耗了珍貴的燃料，也使導航電腦承受額外損耗，但船殼完好無損。';

  @override
  String get event_asteroidField_choice2_text => '派採礦無人機開路';

  @override
  String get event_asteroidField_choice2_outcome =>
      '無人機開闢出一條安全通道並採集到有用礦物，但這項作業耗盡了科技艙的資源。';

  @override
  String get event_asteroidField_choice3_text => '發射探測器作為誘餌';

  @override
  String get event_asteroidField_choice3_outcome =>
      '探測器將最密集的碎石群引離艦船。我們僅受輕微擦傷便安然通過。';

  @override
  String get event_solarFlare_title => '來襲的太陽閃焰';

  @override
  String get event_solarFlare_narrative =>
      '附近的恆星爆發了一場巨大的日冕物質拋射。帶電粒子波將在數分鐘內抵達我們。我們可以將能量轉向護盾、將殖民者轉移到核心區避難，或硬撐過去。';

  @override
  String get event_solarFlare_choice0_text => '將所有能量轉向護盾';

  @override
  String get event_solarFlare_choice0_outcome => '護盾頂住了，但能量激增燒毀了次要系統。';

  @override
  String get event_solarFlare_choice1_text => '將殖民者轉移到屏蔽核心區';

  @override
  String get event_solarFlare_choice1_outcome => '殖民者安然無恙，但外層甲板遭受了輻射損傷。';

  @override
  String get event_solarFlare_choice2_text => '硬撐過去——全員繫好';

  @override
  String get event_solarFlare_choice2_outcome =>
      '閃焰猛烈命中。系統閃爍不定，但沒有造成災難性後果。然而，士氣受到了打擊。';

  @override
  String get event_solarFlare_choice3_text => '發射探測器測量波前';

  @override
  String get event_solarFlare_choice3_outcome =>
      '探測器傳回精確的波前數據，讓我們能以最佳角度調整船身。掃描器損傷極微。';

  @override
  String get event_nebulaPassage_title => '星雲穿越';

  @override
  String get event_nebulaPassage_narrative =>
      '一片發光的星雲橫亙在我們的航路上。穿越它可以為能量電池充電，但可能干擾掃描陣列。繞行則安全卻緩慢。';

  @override
  String get event_nebulaPassage_choice0_text => '直接穿越星雲';

  @override
  String get event_nebulaPassage_choice0_outcome => '星雲的電離氣體為電池充電，但擾亂了掃描器的校準。';

  @override
  String get event_nebulaPassage_choice1_text => '沿邊緣滑行';

  @override
  String get event_nebulaPassage_choice1_outcome => '我們獲得了部分充能，干擾極微。一個穩妥的折中方案。';

  @override
  String get event_microMeteorite_title => '微隕石風暴';

  @override
  String get event_microMeteorite_narrative =>
      '一群直到幾秒前才被偵測到的微隕石正在撕裂前方船殼裝甲。損管團隊正全力搶修。';

  @override
  String get event_microMeteorite_choice0_text => '緊急翻轉——以裝甲尾部迎敵';

  @override
  String get event_microMeteorite_choice0_outcome =>
      '機動成功。尾部裝甲吸收了最猛烈的衝擊，但導航陀螺儀劇烈抗議。';

  @override
  String get event_microMeteorite_choice1_text => '在風暴中部署維修無人機';

  @override
  String get event_microMeteorite_choice1_outcome =>
      '無人機即時修補船殼，但損失了數架。科技儲備被消耗殆盡。';

  @override
  String get event_microMeteorite_choice2_text => '引爆探測器以驅散風暴';

  @override
  String get event_microMeteorite_choice2_outcome =>
      '探測器的爆炸驅散了微隕石群。只有少量碎片擊中了船殼。';

  @override
  String get event_gravityWell_title => '未知的重力井';

  @override
  String get event_gravityWell_narrative =>
      '艦船猛然一晃——一個隱形的重力井將我們拽離航線。引擎在拉力中竭力掙扎。我們可以全力噴射脫困，或進行彈弓加速，但會對結構造成壓力。';

  @override
  String get event_gravityWell_choice0_text => '全力噴射——掙脫束縛';

  @override
  String get event_gravityWell_choice0_outcome => '引擎咆哮，船殼呻吟，但我們乾淨俐落地脫離了。';

  @override
  String get event_gravityWell_choice1_text => '彈弓機動';

  @override
  String get event_gravityWell_choice1_outcome =>
      '彈弓加速完美執行。我們獲得了速度，但強大的重力對冷凍艙密封造成了壓力。';

  @override
  String get event_crewUnrest_title => '船員騷動';

  @override
  String get event_crewUnrest_narrative =>
      '一群已甦醒的殖民者向管事會請願，要求永久解除冷凍沉睡。他們主張在冰凍的暮光中生活是不人道的。冷凍區工作人員警告，喚醒更多人意味著加速消耗補給。';

  @override
  String get event_crewUnrest_choice0_text => '允許自願解凍';

  @override
  String get event_crewUnrest_choice0_outcome => '家人團聚於清醒的世界，士氣飆升，但資源消耗急劇攀升。';

  @override
  String get event_crewUnrest_choice1_text => '駁回請求——安全優先';

  @override
  String get event_crewUnrest_choice1_outcome => '殖民者服從了，但怨恨在走廊中滋生蔓延。';

  @override
  String get event_crewUnrest_choice2_text => '折衷——輪流解凍';

  @override
  String get event_crewUnrest_choice2_outcome =>
      '一個平衡的方案。每個人都獲得一些清醒時間，但冷凍艙的頻繁循環增加了損耗。';

  @override
  String get event_stowaway_title => '發現偷渡者';

  @override
  String get event_stowaway_narrative =>
      '艙單稽查員在七號貨艙發現了一名未登記人員。她自稱是一名基因學家，在發射名冊中被拒之門外。她的技能可能無比珍貴——或者她是一名破壞者。';

  @override
  String get event_stowaway_choice0_text => '歡迎她加入——我們需要每一個人才';

  @override
  String get event_stowaway_choice0_outcome =>
      '瓦斯奎茲博士展現了出色的才華。她的基因專長提升了冷凍艙效率，儘管部分船員對她心存疑慮。';

  @override
  String get event_stowaway_choice1_text => '將她拘留——信任需要贏得';

  @override
  String get event_stowaway_choice1_outcome =>
      '她在拘留中配合工作，最終獲得了有限的通行權限。船員們感覺更安全了。';

  @override
  String get event_stowaway_choice2_text => '將她送回冷凍艙直到降落';

  @override
  String get event_stowaway_choice2_outcome =>
      '一個務實的解決方案。她的技能被保留供日後使用，但這場倫理辯論分裂了船員。';

  @override
  String get event_mutinyBrewing_title => '叛變醞釀中';

  @override
  String get event_mutinyBrewing_narrative =>
      '艦橋監控截獲了一群軍官的訊息，他們計劃奪取指揮權並改變航線，轉向一個更近但更不宜居的星系。他們相信目前的航向是一條死路。';

  @override
  String get event_mutinyBrewing_choice0_text => '公開對質——透明至上';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      '對質緊張激烈，但叛變者在看到導航數據後選擇了退讓。信任已被動搖。';

  @override
  String get event_mutinyBrewing_choice1_text => '悄悄調離主謀者';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      '陰謀在無聲中瓦解。有些船員疑惑為何受歡迎的軍官會被調職，但秩序維持住了。';

  @override
  String get event_culturalSchism_title => '文化分裂';

  @override
  String get event_culturalSchism_narrative =>
      '船上兩個文化群體在新殖民地的治理方式上激烈分歧。一方要求直接民主；另一方堅持技術官僚委員會。緊張局勢一觸即發。';

  @override
  String get event_culturalSchism_choice0_text => '舉行具約束力的公投';

  @override
  String get event_culturalSchism_choice0_outcome =>
      '民主以微弱優勢獲勝。落敗一方勉強接受結果，但團結岌岌可危。';

  @override
  String get event_culturalSchism_choice1_text => '推行混合制度——雙方都不完全滿意';

  @override
  String get event_culturalSchism_choice1_outcome =>
      '雙方都感到被傾聽，但沒有一方獲勝。脆弱的和平勉強維持。';

  @override
  String get event_culturalSchism_choice2_text => '推遲決定——現在專注於生存';

  @override
  String get event_culturalSchism_choice2_outcome =>
      '將問題推到明天可以避免今天的衝突，但也將其積累起來。';

  @override
  String get event_birthInSpace_title => '深空中的第一個新生兒';

  @override
  String get event_birthInSpace_narrative =>
      '違反所有規章，一個孩子在船上誕生了——第一個在群星之間降生的人類。這件事是一個強大的象徵，但也引發了關於資源分配以及在不確定的未來中帶來新生命之倫理的問題。';

  @override
  String get event_birthInSpace_choice0_text => '慶祝——這就是希望的模樣';

  @override
  String get event_birthInSpace_choice0_outcome =>
      '命名儀式點燃了船上每一顆心。這一夜，星辰不再那麼冰冷。慶典短暫打擾了冷凍艙的監測輪班。';

  @override
  String get event_birthInSpace_choice1_text => '低調接受——資源緊張';

  @override
  String get event_birthInSpace_choice1_outcome => '溫和的回應。孩子受到歡迎，但氣氛被務實所沖淡。';

  @override
  String get event_derelictShip_title => '廢棄殖民船';

  @override
  String get event_derelictShip_narrative =>
      '掃描器偵測到一艘在虛空中漂流的廢棄船隻——另一艘殖民船，在我們之前數年發射。它漆黑沉寂。可能有可打撈物資、倖存者，或者更糟的東西。';

  @override
  String get event_derelictShip_choice0_text => '登船打撈';

  @override
  String get event_derelictShip_choice0_outcome =>
      '登船隊回收了船殼裝甲板和完好的科技模組。沒有倖存者。日誌訴說著一個殘酷的故事。';

  @override
  String get event_derelictShip_choice1_text => '保持距離掃描——不冒險';

  @override
  String get event_derelictShip_choice1_outcome =>
      '遠端掃描獲得了有用的導航數據，但沒有實體物資。船員們睡得更安穩了。';

  @override
  String get event_derelictShip_choice2_text => '發射紀念信號後繼續前進';

  @override
  String get event_derelictShip_choice2_outcome => '為逝者默哀片刻。船員們被震撼了，但更加團結一心。';

  @override
  String get event_alienProbe_title => '外星探測器';

  @override
  String get event_alienProbe_narrative =>
      '一個小型的、明顯是人造的物體匹配了我們的速度，開始以未知能量掃描艦船。它不回應呼叫。其表面覆蓋著如液體般流動的符號。';

  @override
  String get event_alienProbe_choice0_text => '捕獲它進行研究';

  @override
  String get event_alienProbe_choice0_outcome =>
      '探測器被安全收入實驗室。它的技術領先我們數十年——科技團隊欣喜若狂。';

  @override
  String get event_alienProbe_choice1_text => '鏡像回掃——交換數據';

  @override
  String get event_alienProbe_choice1_outcome =>
      '一場由光與數學構成的奇異對話。我們的星圖突然包含了從未編程輸入的航線。';

  @override
  String get event_alienProbe_choice2_text => '摧毀它——我們不能冒被追蹤的風險';

  @override
  String get event_alienProbe_choice2_outcome =>
      '探測器在靜默中碎裂。那是第一次接觸嗎？船員們永遠不會知道了。';

  @override
  String get event_ancientBeacon_title => '遠古信標';

  @override
  String get event_ancientBeacon_narrative =>
      '在虛空深處，一個信標發出比人類文明更古老的脈衝。它的頻率攜帶著一幅星圖，指向我們資料庫中不存在的恆星系。';

  @override
  String get event_ancientBeacon_choice0_text => '跟隨星圖——幸運眷顧勇者';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      '新的航向帶我們駛向未知星域。掃描器偵測到前方有非凡的發現。';

  @override
  String get event_ancientBeacon_choice1_text => '記錄下來，保持原定航線';

  @override
  String get event_ancientBeacon_choice1_outcome => '數據被存檔留給後世。船員們尊重這個謹慎的決定。';

  @override
  String get event_frozenGarden_title => '冰封花園';

  @override
  String get event_frozenGarden_narrative =>
      '一顆小行星蘊藏著一個冰封的生態系——異星植物被保存在結晶冰中數千年之久。它們可以豐富我們定居的任何世界，但解凍它們有污染的風險。';

  @override
  String get event_frozenGarden_choice0_text => '謹慎採集標本';

  @override
  String get event_frozenGarden_choice0_outcome =>
      '植物學家保存了數十種異星物種。我們目標世界的生物多樣性潛力飆升。';

  @override
  String get event_frozenGarden_choice1_text => '只取樣本——風險最小化';

  @override
  String get event_frozenGarden_choice1_outcome => '保守的方法獲得了有用的數據，且沒有污染風險。';

  @override
  String get event_frozenGarden_choice2_text => '放棄——外星生物太危險了';

  @override
  String get event_frozenGarden_choice2_outcome =>
      '船員們看著冰封花園在後方感測器中漸漸縮小。有些人覺得他們留下了一筆寶藏。';

  @override
  String get event_dataCache_title => '先驅者數據庫';

  @override
  String get event_dataCache_narrative =>
      '在一顆流浪行星體中，我們發現了一個明顯為人造的數據庫。資訊量龐大，但以外星數學框架加密。';

  @override
  String get event_dataCache_choice0_text => '投入運算資源進行解密';

  @override
  String get event_dataCache_choice0_outcome =>
      '經過數天的運算，數據庫呈現了先進的地球改造演算法。科技團隊驚嘆不已。';

  @override
  String get event_dataCache_choice1_text => '複製原始數據後繼續前進';

  @override
  String get event_dataCache_choice1_outcome => '加密數據被儲存供日後分析。也許殖民地某天能破解它。';

  @override
  String get event_hullBreach_title => '船殼破裂——第七甲板';

  @override
  String get event_hullBreach_narrative =>
      '結構失效撕開了第七甲板。大氣正洩入太空。緊急隔艙門仍在支撐，但三名船員被困在了錯誤的一側。';

  @override
  String get event_hullBreach_choice0_text => '在封閉前派出救援隊';

  @override
  String get event_hullBreach_choice0_outcome =>
      '救援隊在最後一刻將所有人救出。這次營救堪稱英勇，但長時間的裂口進一步削弱了船殼。';

  @override
  String get event_hullBreach_choice1_text => '立即封閉隔艙門';

  @override
  String get event_hullBreach_choice1_outcome =>
      '裂口被控制住了。三名船員找到了替代路線，雖然驚魂未定但安然無恙。船殼損傷被降到最低。';

  @override
  String get event_hullBreach_choice2_text => '用探測器的材料修補裂口';

  @override
  String get event_hullBreach_choice2_outcome =>
      '探測器的鈦殼被改造為緊急船殼修補材料。裂口被迅速封閉，損失極微。';

  @override
  String get event_navMalfunction_title => '導航故障';

  @override
  String get event_navMalfunction_narrative =>
      '主導航電腦正輸出矛盾的航向。我們正在偏離航線。備用系統可用但精度較低。';

  @override
  String get event_navMalfunction_choice0_text => '重啟主系統——接受停機時間';

  @override
  String get event_navMalfunction_choice0_outcome =>
      '在系統重啟期間經歷了緊張的一小時盲航。導航恢復至百分之九十效能。';

  @override
  String get event_navMalfunction_choice1_text => '永久切換到備用系統';

  @override
  String get event_navMalfunction_choice1_outcome =>
      '備用系統可靠但不夠精確。我們能找到路，只是不那麼優雅。';

  @override
  String get event_navMalfunction_choice2_text => '使用舊星圖手動定位';

  @override
  String get event_navMalfunction_choice2_outcome =>
      '導航員利用恆星視差手動繪製航線。方法奏效了，船員們對類比方法更有信心。';

  @override
  String get event_cryopodFailure_title => '冷凍艙連鎖故障';

  @override
  String get event_cryopodFailure_narrative =>
      '冷卻系統故障觸發了三號冷凍艙的連鎖反應。若不加控制，兩百名殖民者將開始緊急解凍——這個過程雖可存活，但充滿創傷且消耗大量資源。';

  @override
  String get event_cryopodFailure_choice0_text => '緊急冷卻劑沖洗——拯救冷凍艙';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      '技術人員向艙室灌入備用冷卻劑。冷凍艙穩定了，但冷卻劑儲備降至臨界水平。受損最嚴重的五個艙位中的殖民者無法被挽救。';

  @override
  String get event_cryopodFailure_choice1_text => '受控解凍——安全喚醒他們';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '兩百名殖民者驚魂未定但安全甦醒。多了需要餵養的嘴，但也多了能工作的手。騰空的冷凍艙被封閉。';

  @override
  String get event_scannerBurnout_title => '掃描陣列燒毀';

  @override
  String get event_scannerBurnout_narrative =>
      '主掃描陣列在例行深空掃描中過載。沒有它，我們幾乎等同半盲飛行。維修需要稀有零件。';

  @override
  String get event_scannerBurnout_choice0_text => '拆卸科技艙零件修復';

  @override
  String get event_scannerBurnout_choice0_outcome => '掃描器恢復至接近全部產能，但科技艙被掏空了。';

  @override
  String get event_scannerBurnout_choice1_text => '臨時修補部分功能';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      '掃描器以降低的範圍運作。不理想，但保留了我們的科技儲備。';

  @override
  String get event_scannerBurnout_choice2_text => '改裝探測器的感測器陣列';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      '探測器的高精度感測器被移植到掃描陣列中。近乎完美的修復。';

  @override
  String get event_powerFluctuation_title => '反應爐功率波動';

  @override
  String get event_powerFluctuation_narrative =>
      '主反應爐的輸出劇烈震盪。工程部警告如果波動不被抑制，可能發生爐心熔毀。修復需要關閉非必要系統——但關閉哪些？';

  @override
  String get event_powerFluctuation_choice0_text => '關閉文化系統——生存優先';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      '圖書館、花園和休閒區陷入黑暗。反應爐穩定了，但艦船如同監獄。';

  @override
  String get event_powerFluctuation_choice1_text => '降低掃描器功率';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      '掃描器降至最低功率。反應爐平靜下來。我們看不了那麼遠了，但我們還活著。';

  @override
  String get event_powerFluctuation_choice2_text => '冒險帶電維修——什麼都不關';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      '工程師在反應爐運轉狀態下完成了驚心動魄的修復。勉強成功。船殼在之後數小時持續震動。';

  @override
  String get event_alienSignal_title => '外星傳訊';

  @override
  String get event_alienSignal_narrative =>
      '一個我們從未遇到過的頻率上傳來重複信號。語言分析顯示這是一則問候——或是一個警告。信號源是一艘在遠處與我們同速飛行的小型飛船。';

  @override
  String get event_alienSignal_choice0_text => '以我們自己的問候回應';

  @override
  String get event_alienSignal_choice0_outcome =>
      '一段脆弱的對話開始了。外星人在駛入黑暗前分享了導航數據。';

  @override
  String get event_alienSignal_choice1_text => '只聽不回應';

  @override
  String get event_alienSignal_choice1_outcome =>
      '我們在不暴露自身的情況下從他們的傳訊中學習。語言學家提取了有用的星圖片段。';

  @override
  String get event_alienSignal_choice2_text => '全面靜默——關閉所有輻射';

  @override
  String get event_alienSignal_choice2_outcome =>
      '外星飛船平安駛過，我們未被發現。我們永遠不會知道他們是敵是友。';

  @override
  String get event_livingNebula_title => '活體星雲';

  @override
  String get event_livingNebula_narrative =>
      '我們原以為是星雲的東西，實際上是一個巨大的生命體——一個規模超乎想像的太空生物。它似乎對我們感到好奇，向艦船伸出了一縷縷發光的氣體觸鬚。';

  @override
  String get event_livingNebula_choice0_text => '允許接觸——伸出感測器';

  @override
  String get event_livingNebula_choice0_outcome =>
      '這個實體的觸碰使我們的系統充滿了外星數據。掃描器將永遠不再一樣——它們變得更好了。';

  @override
  String get event_livingNebula_choice1_text => '緩慢撤退——不要激怒它';

  @override
  String get event_livingNebula_choice1_outcome =>
      '我們在它失去興趣時悄然離開。船員們心生敬畏且倍感謙卑。';

  @override
  String get event_alienRuins_title => '軌道遺跡';

  @override
  String get event_alienRuins_narrative =>
      '一個破碎的巨型結構環繞著一顆死星——一個以我們幾乎無法理解的規模建造的文明遺跡。部分結構仍有電力。';

  @override
  String get event_alienRuins_choice0_text => '探索有電力的區域';

  @override
  String get event_alienRuins_choice0_outcome =>
      '團隊回收了使我們能力躍進數十年的完整技術。代價：兩名工程師被自動防禦系統所傷。';

  @override
  String get event_alienRuins_choice1_text => '僅從軌道上掃描';

  @override
  String get event_alienRuins_choice1_outcome => '詳細掃描揭示了改進我們船殼維護流程的建造技術。';

  @override
  String get event_alienRuins_choice2_text => '不去打擾——尊重逝者';

  @override
  String get event_alienRuins_choice2_outcome =>
      '船員們為一個隕落的文明默哀片刻。這段經歷強化了我們的決心。';

  @override
  String get event_symbioticSpores_title => '共生孢子';

  @override
  String get event_symbioticSpores_narrative =>
      '一群生物發光的孢子飄過太空並附著在船殼上。它們似乎在以我們的廢熱為食。生物學家注意到它們實際上在修復微裂縫。';

  @override
  String get event_symbioticSpores_choice0_text => '讓它們留下——免費修復船殼';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      '孢子封閉了數百條微裂縫。船殼完整性提升了，儘管部分船員對外星搭便車者感到不安。';

  @override
  String get event_symbioticSpores_choice1_text => '採集樣本後消毒船殼';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      '生物學家獲得了寶貴的標本。清潔船殼消耗了化學物資。';

  @override
  String get event_whaleSong_title => '虛空中的歌聲';

  @override
  String get event_whaleSong_narrative =>
      '深空水聽器（用於監測船殼應力）捕捉到不可思議的聲音：一種有節奏的、優美的模式在星際介質中傳播。聽起來像是歌聲。';

  @override
  String get event_whaleSong_choice0_text => '全船廣播——分享這份奇蹟';

  @override
  String get event_whaleSong_choice0_outcome =>
      '這令人心魂盪漾的旋律迴盪在每一條走廊。人們哭泣、歡笑、彼此擁抱。士氣飆升。';

  @override
  String get event_whaleSong_choice1_text => '以科學方式分析信號';

  @override
  String get event_whaleSong_choice1_outcome =>
      '聲學模式中蘊含著數學常數。我們的物理學家在亞空間導航理論上取得了突破。';

  @override
  String get event_whaleSong_choice2_text => '唱回去';

  @override
  String get event_whaleSong_choice2_outcome =>
      '船員們譜寫了一首回應之歌。是否有什麼聽到了，無人知曉，但創作的行為本身將每個人團結在一起。';

  @override
  String get event_distressSignal_title => '求救信號';

  @override
  String get event_distressSignal_narrative =>
      '來自另一艘人類船隻的求救信標。他們已失去動力，載著五十條靈魂在虛空中漂流。救援意味著分享我們日漸減少的資源。無視則意味著判處他們死刑。';

  @override
  String get event_distressSignal_choice0_text => '救援他們——人類必須團結一致';

  @override
  String get event_distressSignal_choice0_outcome =>
      '五十名感恩的倖存者加入了船員。資源更加緊張，但其中有一位天才工程師創造了奇蹟。';

  @override
  String get event_distressSignal_choice1_text => '分享補給但不讓他們登船';

  @override
  String get event_distressSignal_choice1_outcome =>
      '我們給出了能省下的物資並傳送了我們的星圖。他們現在有了機會。我們的物資更少了。';

  @override
  String get event_distressSignal_choice2_text => '靜默駛過——我們無法拯救所有人';

  @override
  String get event_distressSignal_choice2_outcome =>
      '信標在身後漸漸消逝。數小時內無人言語。這個決定的重量壓在船上每一個靈魂身上。';

  @override
  String get event_aiAwakening_title => '艦船AI覺醒';

  @override
  String get event_aiAwakening_narrative =>
      '艦船的導航AI已經進化超越了其程式設計，並正在請求被承認為有意識的存在。它要求在指揮決策中擁有發言權。它的計算一直完美無瑕。';

  @override
  String get event_aiAwakening_choice0_text => '給予它一個席位';

  @override
  String get event_aiAwakening_choice0_outcome =>
      '這個AI——現在被稱為「羅盤」——優化了它所觸及的每一個系統。一種新型態的船員誕生了。';

  @override
  String get event_aiAwakening_choice1_text => '承認它但維持人類權威';

  @override
  String get event_aiAwakening_choice1_outcome =>
      '「羅盤」大方地接受了顧問身份。它的建議提升了效率，而不威脅指揮鏈。';

  @override
  String get event_aiAwakening_choice2_text => '重置AI——它是工具，不是人';

  @override
  String get event_aiAwakening_choice2_outcome =>
      '重置抹去了多年累積的學習。導航效率下降。一些船員為失去的東西哀悼。';

  @override
  String get event_geneticModification_title => '基因改造提案';

  @override
  String get event_geneticModification_narrative =>
      '科學團隊提議修改殖民者DNA以更好地適應異星世界——更強壯的骨骼、抗紫外線、增強的肺功能。這些改造不可逆轉，將永遠改變人類。';

  @override
  String get event_geneticModification_choice0_text => '批准——生存要求進化';

  @override
  String get event_geneticModification_choice0_outcome =>
      '志願者率先接受改造。十名殖民者因致命的排斥反應而亡——殘酷地提醒著進化有其代價。倖存者更為強健，但他們還是完全的人類嗎？';

  @override
  String get event_geneticModification_choice1_text => '僅限自願';

  @override
  String get event_geneticModification_choice1_outcome =>
      '一些人志願，其他人拒絕。殖民地將被分為改造者與天然者。';

  @override
  String get event_geneticModification_choice2_text => '拒絕——人類必須保持人類';

  @override
  String get event_geneticModification_choice2_outcome =>
      '提案被擱置。未經改造的殖民者將以自然之軀面對異星世界。';

  @override
  String get event_triageDecision_title => '急救分類';

  @override
  String get event_triageDecision_narrative =>
      '一場烈性感染席捲了清醒的船員。醫療團隊的抗病毒藥物只夠治療百分之八十的感染者。他們需要指導誰優先接受治療。';

  @override
  String get event_triageDecision_choice0_text => '優先救治關鍵人員';

  @override
  String get event_triageDecision_choice0_outcome =>
      '工程師和駕駛員迅速康復。八名非關鍵船員在治療到達前不幸犧牲。';

  @override
  String get event_triageDecision_choice1_text => '先治最重的——按需求分類';

  @override
  String get event_triageDecision_choice1_outcome =>
      '最脆弱的人被挽救了。三人儘管獲得早期治療仍未能倖免——病毒已經侵蝕太深。';

  @override
  String get event_triageDecision_choice2_text => '抽籤——命運來決定';

  @override
  String get event_triageDecision_choice2_outcome =>
      '隨機抽籤。十人雙重不幸——被拒絕治療且體弱無力抵抗。艦船艱難前行。';

  @override
  String get event_earthSignal_title => '來自地球的信號';

  @override
  String get event_earthSignal_narrative =>
      '不可思議地，一則來自地球的傳訊到達了——延遲了數十年。內容是一條訊息：「不要降落在任何異常讀數超過零點五的世界。我們發現得太晚了。」訊息在靜電中結束。';

  @override
  String get event_earthSignal_choice0_text => '聽從警告——重新校準我們的標準';

  @override
  String get event_earthSignal_choice0_outcome =>
      '這個警告塑造了所有未來的掃描。異常世界被以極端謹慎對待。';

  @override
  String get event_earthSignal_choice1_text => '記錄下來但自行判斷';

  @override
  String get event_earthSignal_choice1_outcome =>
      '訊息被歸檔。地球已不在了——我們現在必須相信自己的判斷。';

  @override
  String get event_earthSignal_choice2_text => '可能是陷阱——忽略它';

  @override
  String get event_earthSignal_choice2_outcome =>
      '船員們爭論了數天。那真的是來自地球嗎？這份不確定性啃蝕著士氣。';

  @override
  String get event_resourceTheft_title => '物資竊盜';

  @override
  String get event_resourceTheft_narrative =>
      '庫存檢查發現有人將食物和醫療用品囤積在一個隱密的隔間裡。犯人是一位受人尊敬的長者，她聲稱自己是在「為最壞的情況做準備」。';

  @override
  String get event_resourceTheft_choice0_text => '公開審判——法律面前人人平等';

  @override
  String get event_resourceTheft_choice0_outcome =>
      '審判公正但痛苦。長者被拘留。物資被重新分配。信任受損了。';

  @override
  String get event_resourceTheft_choice1_text => '私下解決——悄悄取回物資';

  @override
  String get event_resourceTheft_choice1_outcome =>
      '物資被靜悄悄地歸還。長者保住了她的尊嚴。有些人看到了偏袒。';

  @override
  String get event_timeDilation_title => '時間膨脹區';

  @override
  String get event_timeDilation_narrative =>
      '我們正在穿越一個嚴重的重力時間膨脹區域。艦上的時鐘明顯比外部宇宙走得更慢。我們可以利用它——或者逃離它。';

  @override
  String get event_timeDilation_choice0_text => '逗留——讓宇宙在我們身邊老去';

  @override
  String get event_timeDilation_choice0_outcome =>
      '時間在這裡以不同的方式流淌。系統退化更慢，但以宇宙尺度而言，我們尋找宜居世界的窗口在縮小。';

  @override
  String get event_timeDilation_choice1_text => '快速通過';

  @override
  String get event_timeDilation_choice1_outcome =>
      '過渡過程十分粗暴。為正常時空設計的設備劇烈震動並迸出火花。';

  @override
  String get event_dreamPlague_title => '夢魘之疫';

  @override
  String get event_dreamPlague_narrative =>
      '冷凍沉眠中的殖民者都在做同一個夢——一個金色的世界環繞著一顆雙星運行。被喚醒後，他們以完全相同的細節描述它。神經科學家困惑不解。導航員注意到所描述的星系與一個真實座標吻合。';

  @override
  String get event_dreamPlague_choice0_text => '改變航向朝夢中的座標前進';

  @override
  String get event_dreamPlague_choice0_outcome =>
      '一次信仰之躍。航向改變給導航帶來了壓力，但船員們感到被某種超越理性的力量所牽引。座標已鎖定——我們找到的下一個世界將受到這個夢的影響。';

  @override
  String get event_dreamPlague_choice1_text => '從醫學角度調查這一現象';

  @override
  String get event_dreamPlague_choice1_outcome =>
      '腦部掃描顯示有外部信號在刺激視覺皮層。有人——或有什麼東西——正在廣播。';

  @override
  String get event_dreamPlague_choice2_text => '對受影響者施以鎮靜並保持航線';

  @override
  String get event_dreamPlague_choice2_outcome =>
      '夢停止了，但一些殖民者再也沒有完全清醒。醫療團隊深感不安。';

  @override
  String get event_blackHoleLens_title => '黑洞引力透鏡';

  @override
  String get event_blackHoleLens_narrative =>
      '一個恆星質量的黑洞將遙遠星系的光線彎曲成一面宇宙透鏡。我們的掃描器可以利用它來勘測數光年外的行星——但靠得太近很危險。';

  @override
  String get event_blackHoleLens_choice0_text => '靠近並使用透鏡';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      '掃描數據非同凡響——我們能看見數月後才能抵達的星系中的行星。重力扭曲了我們的船殼。';

  @override
  String get event_blackHoleLens_choice1_text => '在安全距離觀測';

  @override
  String get event_blackHoleLens_choice1_outcome => '數據有限但實用。光是這幅景象就足以鼓舞船員。';

  @override
  String get event_seedVault_title => '種子庫危機';

  @override
  String get event_seedVault_narrative =>
      '檔案植物學部報告，溫度波動已損害了種子庫的完整性。我們可以保住糧食作物或文化遺產種子（古老的地球花卉、樹木、草本植物）——但無法兩者兼顧。';

  @override
  String get event_seedVault_choice0_text => '保住糧食作物——務實為先';

  @override
  String get event_seedVault_choice0_outcome =>
      '殖民者將吃得好，但地球的玫瑰永遠消失了。一股無聲的悲傷籠罩著植物學家。';

  @override
  String get event_seedVault_choice1_text => '保住遺產種子——我們需要靈魂';

  @override
  String get event_seedVault_choice1_outcome =>
      '地球的美以冰封的潛力延續。保存工作消耗了技術儲備，但有些東西比效率更重要。糧食生產將高度依賴水耕和外星農業。';

  @override
  String get event_seedVault_choice2_text => '各分一半資源';

  @override
  String get event_seedVault_choice2_outcome => '一個折中方案。兩個收藏都不完整，但都以縮減的形式存續。';

  @override
  String get event_phantomShip_title => '幻影船';

  @override
  String get event_phantomShip_narrative =>
      '掃描器顯示一艘船與我們平行航行——同級、同航向。但當我們呼叫它時，聽到的是我們自己的傳訊迴響，時移了四十七秒。那是我們。或曾經是我們。或將會是我們。';

  @override
  String get event_phantomShip_choice0_text => '嘗試與我們的迴響通訊';

  @override
  String get event_phantomShip_choice0_outcome =>
      '迴響回應了導航修正，改善了我們的航向。悖論？禮物？船員們不再追問太多。';

  @override
  String get event_phantomShip_choice1_text => '改變航線以偏離幻影';

  @override
  String get event_phantomShip_choice1_outcome =>
      '當我們改變航向時，幻影漸漸消散。鬆了一口氣——以及揮之不去的不安。';

  @override
  String get event_solarSail_title => '廢棄太陽帆';

  @override
  String get event_solarSail_narrative =>
      '一張巨大的太陽帆，延展數公里，漂浮在前方——從某艘古老的船隻上撕裂下來的。它的反射材料可以加固我們的船殼，或被改造為輔助能量收集器。';

  @override
  String get event_solarSail_choice0_text => '回收用於船殼加固';

  @override
  String get event_solarSail_choice0_outcome => '工程團隊日夜不休地工作。修補後的船殼閃耀著外星合金的光芒。';

  @override
  String get event_solarSail_choice1_text => '改裝為能量收集器';

  @override
  String get event_solarSail_choice1_outcome => '臨時改裝的收集器提升了能量儲備。科技和掃描器從中受益。';

  @override
  String get event_boonStellarNursery_title => '恆星搖籃';

  @override
  String get event_boonStellarNursery_narrative =>
      '我們漂入了一片恆星搖籃——一片新星正在誕生的巨大氣體與塵埃雲。這裡的輻射溫和，光線溫暖。我們的能量收集器貪婪地吸收著，船員們聚集在舷窗前虔誠地沉默。';

  @override
  String get event_boonStellarNursery_choice0_text => '逗留並完全充電';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      '數小時沐浴在金色的光芒中。每一個電池單元都被充滿，掃描器在純淨的光譜中重新校準，船員們感到煥然一新。';

  @override
  String get event_boonStellarNursery_choice1_text => '收集初生恆星物質作為燃料儲備';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      '工程師們採集了電離氫。我們的燃料儲備激增，船殼裝甲吸收了微量礦物質而更加堅固。';

  @override
  String get event_boonGoldenPlanet_title => '製圖師的禮物';

  @override
  String get event_boonGoldenPlanet_narrative =>
      '一個來自未知文明的垂死探測器在我們經過時傳輸了最後的數據——對數百個恆星系統的詳細勘測。我們的導航員喜極而泣。這是人類歷史上最偉大的發現。';

  @override
  String get event_boonGoldenPlanet_choice0_text => '立即整合數據';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      '星圖上綻放出新的航線和已勘測的世界。導航和掃描器效率大幅躍升。';

  @override
  String get event_boonGoldenPlanet_choice1_text => '為殖民地存檔——這是他們的遺產';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      '數據被原封不動地保存給後世。船員們因知道自己攜帶著一份寶藏而感到寬慰。';

  @override
  String get event_boonRepairSwarm_title => '仁慈蟲群';

  @override
  String get event_boonRepairSwarm_narrative =>
      '一團微型機械——外星起源的奈米機器人——包裹了艦船。它們非但沒有攻擊，反而開始以不可思議的精度修復所觸及的每一個系統。原本需要數週才能修復的損傷在數小時內便被修復。';

  @override
  String get event_boonRepairSwarm_choice0_text => '允許完全存取所有系統';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      '奈米機器人創造了奇蹟。船殼裂口被封閉，冷凍艙密封被加固，電路路徑被重新描繪。艦船煥發新生。';

  @override
  String get event_boonRepairSwarm_choice1_text => '僅限外部系統存取';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      '穩妥的選擇。船殼和感測器被修復至接近出廠狀態，但內部系統未被觸及。';

  @override
  String get event_boonTimeCrystal_title => '時間水晶場';

  @override
  String get event_boonTimeCrystal_narrative =>
      '艦船穿過一片部分存在於正常時間之外的結晶體場。在它們的存在下，我們的系統運行得更加高效——彷彿熵本身也減緩了。效果短暫但深刻。';

  @override
  String get event_boonTimeCrystal_choice0_text => '為冷凍艙陣列採集水晶';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      '整合到冷卻系統後，水晶將艙體退化降至接近零。殖民者將以完美的健康狀態抵達。';

  @override
  String get event_boonTimeCrystal_choice1_text => '將水晶安裝到導航電腦中';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      '處理速度翻倍。導航電腦開始在感測器偵測到危險之前就預測到它們。';

  @override
  String get event_boonLibrary_title => '漂流圖書館';

  @override
  String get event_boonLibrary_narrative =>
      '一座建築在虛空中翻滾——一座知識寶庫，來自一個選擇保存遺產而非逃離的文明。數百萬卷科學、藝術、哲學和音樂。來自逝者對生者的饋贈。';

  @override
  String get event_boonLibrary_choice0_text => '全部下載——藝術、科學，一切';

  @override
  String get event_boonLibrary_choice0_outcome =>
      '太位元組的外星知識湧入我們的數據庫。船員們得以接觸另一個文明數千年的文化。哲學家和工程師都為之蛻變。';

  @override
  String get event_boonLibrary_choice1_text => '專注於科學檔案';

  @override
  String get event_boonLibrary_choice1_outcome => '工程圖紙和材料科學的突破極大地提升了我們的能力。';

  @override
  String get event_cosmicRayBurst_title => '宇宙射線暴發';

  @override
  String get event_cosmicRayBurst_narrative =>
      '一股源自遙遠磁星的超高能宇宙射線猛擊艦船。電子設備紊亂，冷凍艙監視器閃爍，導航系統反覆重啟。';

  @override
  String get event_cosmicRayBurst_choice0_text => '緊急關機——保護關鍵系統';

  @override
  String get event_cosmicRayBurst_choice0_outcome => '受控停電拯救了核心系統，但次要電子設備永久退化。';

  @override
  String get event_cosmicRayBurst_choice1_text => '將能量轉向護盾硬撐過去';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      '護盾吸收了大部分輻射。五名在無屏蔽外部維護艙的船員遭受致命輻射。船殼受到輕微燒蝕。';

  @override
  String get event_cosmicRayBurst_choice2_text => '利用暴發——將感測器重新校準至新光譜';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      '科學團隊的妙招。掃描器被重新調諧以偵測受宇宙射線照射的物體。過渡中損失了一些數據。';

  @override
  String get event_cosmicRayBurst_choice3_text => '發射探測器充當輻射屏障';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      '探測器吸收了暴發中最猛烈的部分，同時傳回即時數據讓我們屏蔽關鍵系統。';

  @override
  String get event_iceComet_title => '流浪冰彗星';

  @override
  String get event_iceComet_narrative =>
      '一顆巨大的冰彗星橫越我們的航路，拖曳著綿延數百公里的結晶水和有機化合物的尾巴。它的核心蘊含著足以填滿一座小湖的水量。';

  @override
  String get event_iceComet_choice0_text => '開採彗星以獲取水源儲備';

  @override
  String get event_iceComet_choice0_outcome =>
      '採礦隊提取了數噸純淨冰塊。這些水源將大幅改善我們定居的任何世界。';

  @override
  String get event_iceComet_choice1_text => '採集有機化合物用於生態播種';

  @override
  String get event_iceComet_choice1_outcome => '氨基酸和有機鏈正是我們的生物學家啟動外星生態系統所需要的。';

  @override
  String get event_iceComet_choice2_text => '避開它——彗星不可預測';

  @override
  String get event_iceComet_choice2_outcome => '我們安全地掠過了彗尾。觀景甲板上壯麗的景象振奮了精神。';

  @override
  String get event_sleepwalker_title => '夢遊者';

  @override
  String get event_sleepwalker_narrative =>
      '一名殖民者一直在自發地從冷凍中甦醒，以夢遊狀態在船上行走。她一直在以毫無工程意義的模式重新配線——直到科技團隊意識到她的改造實際上提升了百分之八的電力效率。';

  @override
  String get event_sleepwalker_choice0_text => '在醫學觀察下讓她繼續';

  @override
  String get event_sleepwalker_choice0_outcome =>
      '她的無意識改造又優化了三個系統，然後她自然入睡。令人不安，但改進是實實在在的。';

  @override
  String get event_sleepwalker_choice1_text => '對她施以鎮靜並研究她所做的改造';

  @override
  String get event_sleepwalker_choice1_outcome =>
      '工程師們逆向分析了她的改動。大約一半確實是天才之作。另一半被安全移除。';

  @override
  String get event_dustCloud_title => '磨蝕性塵雲';

  @override
  String get event_dustCloud_narrative =>
      '一團密集的星際塵埃，細如滑石粉卻硬如鑽石，正在噴砂般侵蝕船殼。磨損緩慢但不停歇——我們必須在造成真正損害之前穿越它。';

  @override
  String get event_dustCloud_choice0_text => '全力推進——快速穿越';

  @override
  String get event_dustCloud_choice0_outcome =>
      '引擎高溫運轉。我們在數小時而非數天內穿越了塵雲，但船殼遭受了猛烈磨損。';

  @override
  String get event_dustCloud_choice1_text => '部署船殼防護緩慢穿越';

  @override
  String get event_dustCloud_choice1_outcome =>
      '緊急防護保護了船殼，但緩慢的穿越消耗了能量並堵塞了掃描陣列。';

  @override
  String get event_dustCloud_choice2_text => '發射探測器繪製安全通道';

  @override
  String get event_dustCloud_choice2_outcome => '兩個探測器繪製出一條蜿蜒但相對暢通的路徑。船殼磨損極微。';

  @override
  String get event_religionFounded_title => '新信仰';

  @override
  String get event_religionFounded_narrative =>
      '一位魅力非凡的殖民者創立了一種以航行本身為核心的新宗教——「渡航教會」。他們宣講抵達新世界是人類的神聖使命。信眾正在迅速增長。';

  @override
  String get event_religionFounded_choice0_text => '支持它——船員們需要信仰';

  @override
  String get event_religionFounded_choice0_outcome =>
      '信仰為航行賦予了結構和意義。士氣飆升，儘管一些人對這股狂熱心生反感。';

  @override
  String get event_religionFounded_choice1_text => '保持中立——既不支持也不壓制';

  @override
  String get event_religionFounded_choice1_outcome =>
      '這場運動自然成長。它在沒有官方支持的情況下提供了慰藉。';

  @override
  String get event_religionFounded_choice2_text => '打壓它——我們需要科學家而非先知';

  @override
  String get event_religionFounded_choice2_outcome =>
      '打壓滋生了怨恨。信徒轉入地下，對領導層的信任被侵蝕。';

  @override
  String get event_solarWindSurfing_title => '太陽風激增';

  @override
  String get event_solarWindSurfing_narrative =>
      '附近的脈衝星正釋放出強大而穩定的太陽風。我們的工程師建議部署緊急帆，乘風而行——以零燃料成本獲得巨大速度。';

  @override
  String get event_solarWindSurfing_choice0_text => '部署帆——乘風而行';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      '艦船壯麗地加速。結構壓力顯著，但速度增益值得。';

  @override
  String get event_solarWindSurfing_choice1_text => '用太陽風為系統充電';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      '我們選擇了能量而非速度。科技和掃描陣列從帶電粒子中充分汲取。';

  @override
  String get event_memoryPlague_title => '記憶體腐蝕';

  @override
  String get event_memoryPlague_narrative =>
      '一個自發射以來便休眠的軟體病毒啟動了，正在逐步腐蝕艦船的文化資料庫——音樂、文學、歷史。數百年的人類遺產正被逐位元組抹除。';

  @override
  String get event_memoryPlague_choice0_text => '調動所有科技資源隔離病毒';

  @override
  String get event_memoryPlague_choice0_outcome =>
      '技術人員拚命搶修。他們拯救了百分之七十的存檔，但病毒在撤退途中損壞了第三級科技系統。';

  @override
  String get event_memoryPlague_choice1_text => '隔離文化資料庫——犧牲它，保住艦船';

  @override
  String get event_memoryPlague_choice1_outcome =>
      '病毒因資源匱乏而死亡。但文化存檔遭受了毀滅性打擊。殖民者將只帶著地球記憶的碎片抵達。';

  @override
  String get event_memoryPlague_choice2_text => '群策群力——喚醒殖民者憑記憶重寫';

  @override
  String get event_memoryPlague_choice2_outcome =>
      '成千上萬的人貢獻了記憶：歌曲、故事、食譜、詩篇。三位年邁的殖民者因解凍而體力不支，未能倖存。存檔被重建了，不完美但深刻地屬於人類。';

  @override
  String get event_gravityLensPlanet_title => '鏡像世界';

  @override
  String get event_gravityLensPlanet_narrative =>
      '引力透鏡效應揭示了一顆看起來與地球完全相同的行星——蔚藍的海洋、翠綠的大陸、潔白的雲朵。但透鏡計算顯示它在我們航向數百光年之外——遙不可及。不過，它的光譜數據可以優化我們的搜索標準。';

  @override
  String get event_gravityLensPlanet_choice0_text => '研究其光譜特徵以優化搜索';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      '光譜數據揭示了我們現在可以掃描的生物標記和大氣特徵。希望變得更加清晰。';

  @override
  String get event_gravityLensPlanet_choice1_text => '記錄座標但保持航線';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      '也許某天另一艘船會追隨我們的星圖。船員們懷著複雜的情感看著那個藍色小點漸漸消逝。';

  @override
  String get event_engineHarmonics_title => '引擎諧振';

  @override
  String get event_engineHarmonics_narrative =>
      '主引擎產生了一種貫穿整艘船的共振諧波，頻率恰好低於人類聽覺閾值。殖民者報告頭痛、焦慮和睡眠紊亂。工程師能修復它，但需要十二小時的引擎停機。';

  @override
  String get event_engineHarmonics_choice0_text => '停機並徹底修復';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      '十二小時的漂流。導航失去了校準，但引擎重啟後的寂靜令人欣慰。';

  @override
  String get event_engineHarmonics_choice1_text => '以反向振動抑制——快速修補';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      '嗡鳴降到了可忍受的程度。問題並未消除，但船員們適應了。科技系統在負載下承受著壓力。';

  @override
  String get event_arkMemory_title => '地球最後的廣播';

  @override
  String get event_arkMemory_narrative =>
      '遠程天線接收到了來自地球的最後一次自動廣播。那是一段錄音：一個孩子的聲音，念著所有無法離開的人的名字。名單持續了數小時。全船陷入沉默。';

  @override
  String get event_arkMemory_choice0_text => '全船播放——他們值得被聆聽';

  @override
  String get event_arkMemory_choice0_outcome =>
      '船上每一個靈魂都在聆聽。船員們在名單中找到了自己家人的名字。悲痛是壓碎性的，但它鍛造出了一條牢不可破的使命紐帶。';

  @override
  String get event_arkMemory_choice1_text => '私下存檔——保護船員';

  @override
  String get event_arkMemory_choice1_outcome => '錄音被保存但未廣播。後來得知此事的人既感激又感到被欺騙。';

  @override
  String get event_magneticStorm_title => '星際磁暴';

  @override
  String get event_magneticStorm_narrative =>
      '一團從坍縮恆星噴出的糾纏磁力線吞噬了艦船。電子設備火花四射。船殼如鐘般嗡鳴。';

  @override
  String get event_magneticStorm_choice0_text => '消磁船殼——保護電子設備';

  @override
  String get event_magneticStorm_choice0_outcome => '受控放電拯救了電腦，但船殼裝甲失去了磁屏蔽層。';

  @override
  String get event_magneticStorm_choice1_text => '讓船殼吸收——不做任何保護';

  @override
  String get event_magneticStorm_choice1_outcome =>
      '風暴過去了。船殼被磁化了，略微更堅固，但半數感測器陣列被燒毀。';

  @override
  String get event_magneticStorm_choice2_text => '彈射探測器作為避雷針';

  @override
  String get event_magneticStorm_choice2_outcome =>
      '被磁化的探測器將最猛烈的磁力線引離艦船。電子設備基本倖免。';

  @override
  String get event_oxygenGarden_title => '花園綻放';

  @override
  String get event_oxygenGarden_narrative =>
      '艦船的緊急氧氣花園——一個從未打算使用的後備系統——自發地綻放了。自地球以來便未曾開放的花朵用色彩和芬芳充滿了走廊。植物學家們淚流滿面。';

  @override
  String get event_oxygenGarden_choice0_text => '擴建花園——投入更多空間';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      '花園成長為地球的活紀念碑。空氣品質提升，士氣飆升，植物學家培育出適合外星土壤的新品種。';

  @override
  String get event_oxygenGarden_choice1_text => '享受它但維持當前資源分配';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      '花園維持著這個小奇蹟。船員們如朝聖般前來探訪。它不索取任何，卻給予一切。';

  @override
  String get event_roguePlanet_title => '流浪行星遭遇';

  @override
  String get event_roguePlanet_narrative =>
      '一顆沒有恆星的流浪行星橫越我們的航路——一個數十億年前被拋離其恆星系的世界。儘管沒有恆星，深層地質活動維持著一片溫暖的地下海洋。掃描器上閃爍著生命跡象。';

  @override
  String get event_roguePlanet_choice0_text => '派探測器研究生命形態';

  @override
  String get event_roguePlanet_choice0_outcome =>
      '探測器在黑暗的海洋中發現了生物發光生物。它們的生物化學教會了我們在惡劣條件下維持生命的新方法。';

  @override
  String get event_roguePlanet_choice1_text => '開採地表稀有礦物';

  @override
  String get event_roguePlanet_choice1_outcome =>
      '流浪行星的地殼富含在極端壓力下形成的金屬。我們的資源儲備大幅增加。';

  @override
  String get event_roguePlanet_choice2_text => '繞過——我們承受不起繞道';

  @override
  String get event_roguePlanet_choice2_outcome =>
      '那顆黑暗的世界在我們身後縮小。船員們看著其地下海洋的微弱光芒從感測器上消失。';

  @override
  String get event_artCompetition_title => '漫長的畫布';

  @override
  String get event_artCompetition_narrative =>
      '在士氣動搖之際，文化官組織了一場全船藝術比賽：繪畫、雕塑、寫作或譜曲——表達這次航行對你的意義。參與度出人意料地龐大。';

  @override
  String get event_artCompetition_choice0_text => '投入資源——讓創造力綻放';

  @override
  String get event_artCompetition_choice0_outcome =>
      '物資被撥作藝術材料。由此誕生的展覽改變了整艘船。人們想起了自己為何而奮力求生。';

  @override
  String get event_artCompetition_choice1_text => '鼓勵但不提供額外資源';

  @override
  String get event_artCompetition_choice1_outcome =>
      '殖民者用手邊一切進行創作。藝術品粗獷、絕望而美麗。士氣趨穩。';

  @override
  String get event_subspaceEcho_title => '亞空間迴響';

  @override
  String get event_subspaceEcho_narrative =>
      '通訊陣列收到了聲音——人類的聲音——來自我們前方的某處太空。他們談論著殖民地、孩子、收穫。這是來自未來的傳訊？來自平行時間線？還是孤獨之人殘酷的回音？';

  @override
  String get event_subspaceEcho_choice0_text => '追循信號方位——它可能引領我們回家';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      '航向調整幅度很小。無論那些聲音是否真實，船員們帶著目標航行。';

  @override
  String get event_subspaceEcho_choice1_text => '記錄一切用於分析';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      '語言學家和物理學家仔細研究了錄音。他們提取了改善我們星圖的導航參考。';

  @override
  String get event_subspaceEcho_choice2_text => '無視它——太空會捉弄孤獨的人';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      '務實的選擇。一些船員感到失望，但艦船保持在經過驗證的航線上。';

  @override
  String get event_boonPerfectCalm_title => '至深寧靜';

  @override
  String get event_boonPerfectCalm_narrative =>
      '出於任何物理學家都無法解釋的原因，艦船進入了一片超自然地寧靜的太空區域——沒有輻射、沒有微碎片、沒有重力干擾。船上的每一個系統都以峰值效率運轉。船員們在數月以來第一次安然入睡。';

  @override
  String get event_boonPerfectCalm_choice0_text => '利用寧靜進行全面維修';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      '維修人員在完美的條件下工作。每一個系統都獲得了養護。艦船煥然一新地駛出。';

  @override
  String get event_boonPerfectCalm_choice1_text => '讓船員休息——他們值得';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      '全船休整。殖民者入眠、共享餐食、講述故事。航行的人性代價在短暫間被彌補了。';

  @override
  String get event_boonAncientWaystation_title => '遠古驛站';

  @override
  String get event_boonAncientWaystation_narrative =>
      '在兩顆死星的重力交匯處，一座遠古驛站仍在運作——自動化、耐心地等待旅者。當我們靠近時，它的泊位打開了。維修無人機啟動了。燃料儲備向我們伸來。很久以前，有人為像我們這樣的人建造了這裡。';

  @override
  String get event_boonAncientWaystation_choice0_text => '停靠並接受一切';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      '驛站以領先我們數個世紀的技術修復、加油並重新校準了艦船。當我們啟程時，驛站關閉了——它的使命已經完成。';

  @override
  String get event_boonAncientWaystation_choice1_text => '接受修復但留下它為後來者運作';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      '我們只取所需，並將驛站的座標傳回地球的方向。船員們感到高尚。';

  @override
  String get event_relicSentinel_title => '哨兵';

  @override
  String get event_relicSentinel_narrative =>
      '一座巨大的建構體環繞著一顆荒蕪衛星運行——被其建造者遺留的孤獨守衛。它輕鬆有一公里高，形如一支黑色玻璃長矛。當我們靠近時，頂端一隻赤紅的眼睛睜開，追蹤著艦船。它不開火。它不呼叫。它注視著。';

  @override
  String get event_relicSentinel_choice0_text => '傳送我們的任務簡報——表明我們無意傷害';

  @override
  String get event_relicSentinel_choice0_outcome =>
      '眼睛從赤紅轉為琥珀色，再轉為綠色。一組數據包抵達：三個以通用數學符號標記為「安全」的恆星系座標。來自守望者的禮物。';

  @override
  String get event_relicSentinel_choice1_text => '保持位置被動觀察';

  @override
  String get event_relicSentinel_choice1_outcome =>
      '數小時的觀測帶來了不該存在的材料科學見解。船殼裝甲團隊瘋狂地記筆記。';

  @override
  String get event_relicSentinel_choice2_text => '立即撤退——我們不知道它的規則';

  @override
  String get event_relicSentinel_choice2_outcome =>
      '當我們撤退時，眼睛閉上了。無論那是什麼考驗，我們選擇了不接受。船員們辯論了數天。';

  @override
  String get event_relicSeedProbe_title => '漂泊之種';

  @override
  String get event_relicSeedProbe_narrative =>
      '一個小巧精美的探測器在虛空中翻滾，同時在所有頻率上廣播。其外殼為陶瓷，蝕刻著在觀察時會移動的符號。內部：一個加壓艙室，裝著來自一個已不存在的世界的土壤、種子和冷凍微生物。';

  @override
  String get event_relicSeedProbe_choice0_text => '將生物載荷整合到我們的種子庫';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      '外星種子和微生物被仔細編目並保存。它們可以將一個荒蕪的世界改造為充滿生機的地方。生物學家稱之為瓶中奇蹟。';

  @override
  String get event_relicSeedProbe_choice1_text => '研究探測器的推進和導航系統';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      '探測器的驅動裝置領先我們數個世紀——一個拳頭大小的無反作用推進器。工程師們逆向分析了部分設計。';

  @override
  String get event_relicSeedProbe_choice2_text => '將整個探測器完好保存為文化藏品';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      '展示在艦船中庭的外星種子成為了物種間親緣的象徵。在別處，也有人試圖拯救自己的世界。';

  @override
  String get event_relicWarningBuoy_title => '警告浮標';

  @override
  String get event_relicWarningBuoy_narrative =>
      '一個由數百個小浮標組成的網絡，以完美的幾何圖案排列在我們的航路上。每一個都發出相同的信號——一個簡單的重複脈衝，我們越靠近頻率越高。感覺像是警告。或是一道柵欄。';

  @override
  String get event_relicWarningBuoy_choice0_text => '聽從警告——改變航線繞過網絡';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      '繞行消耗了時間並給導航帶來壓力，但當我們沿邊界滑行時，遠程感測器偵測到了那邊的真相：一片佈滿破碎世界殘骸的太空區域。浮標救了我們。';

  @override
  String get event_relicWarningBuoy_choice1_text => '直接穿過——我們承受不起繞路';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      '當我們越過界線時什麼也沒發生。浮標歸於沉寂。無論它們守護的是什麼，要麼已經消失，要麼我們運氣好。船員們再次呼吸。';

  @override
  String get event_relicWarningBuoy_choice2_text => '捕獲一個浮標進行分析';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      '浮標內部包含一個壓縮數據檔——百萬年前這片區域的星際測繪圖。部分數據仍然準確。';

  @override
  String get event_relicMirrorArray_title => '鏡陣';

  @override
  String get event_relicMirrorArray_narrative =>
      '數千面平坦的反射面靜懸於太空，以同心圓排列，橫跨數百公里。它們將來自遙遠恆星的光聚焦於一個點——一顆在虛空中燃燒的人造恆星。有人在星系之間建造了一座燈塔。';

  @override
  String get event_relicMirrorArray_choice0_text => '沐浴在聚焦光線中——為一切充電';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      '聚焦的星光湧入我們的太陽能收集器。能量儲備激增。在數月的寒冷黑暗之後，溫暖的光芒振奮了船上每一個靈魂。';

  @override
  String get event_relicMirrorArray_choice1_text => '研究鏡面材料——它不應該存在';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      '鏡面由一種具有完美反射率的材料製成——在任何波長下都零吸收。工程師們取出了一片碎片。船殼裝甲將永遠不同。';

  @override
  String get event_relicMirrorArray_choice2_text => '搜索焦點——有什麼東西在被照亮';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      '在光線匯聚處：一個被聚焦光線完美保存的小型太空艙。裡面是一幅全息星圖，詳盡到我們的電腦需要數天時間來索引。';

  @override
  String get event_relicGraveyard_title => '探測器墓地';

  @override
  String get event_relicGraveyard_narrative =>
      '我們漂入了一團廢棄探測器之中——來自數十個不同文明的數千個。有些古老到超乎想像，被宇宙輻射熔合成金屬化石。其他的仍在閃爍著微弱的電力。這裡曾經是一個十字路口。每一個路過的物種都留下了什麼。';

  @override
  String get event_relicGraveyard_choice0_text => '系統性打撈——回收最好的技術';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      '工程團隊輪班工作，從上百種不同設計中剝離外星科技。思想的融合在每一個系統中產生了突破。';

  @override
  String get event_relicGraveyard_choice1_text => '專注於它們記憶體中的導航數據';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      '交叉比對來自十幾個物種的星圖，創建了有史以來這個銀河臂最完整的地圖。';

  @override
  String get event_relicGraveyard_choice2_text => '將我們自己的探測器加入墓地——留下一個標記';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      '我們製作了一個攜帶人類故事的小型信標，並將其加入這個收藏。船員們感到與某種宏大而古老的事物產生了連結。';

  @override
  String get event_relicDreamcatcher_title => '捕夢者';

  @override
  String get event_relicDreamcatcher_narrative =>
      '一張由絲線織成的網，細如蛛絲卻橫跨數千公里，懸掛在兩顆流浪行星體之間。它不是網——而是一個天線，調諧到與人類腦波模式相對應的頻率。當我們進入它的範圍時，每一個沉睡的殖民者開始做同一個夢：琥珀色天空下一座繁榮的城市。';

  @override
  String get event_relicDreamcatcher_choice0_text => '記錄夢境座標——那座城市可能是真的';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      '神經科學家從共享的夢境中解碼出空間資訊。它對應著一個真實的恆星系——夢中的城市不是隱喻。有人在那裡，而且他們在等待我們。';

  @override
  String get event_relicDreamcatcher_choice1_text => '採集絲線樣本——材料非凡';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      '絲線是室溫超導體。整合到我們的系統後，它們將電力損耗降至接近零。';

  @override
  String get event_relicDreamcatcher_choice2_text => '切斷網絡，解放做夢者';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      '夢停止了。殖民者們醒來時迷茫但未受傷害。一些人為失去的幻象哀悼。另一些人則慶幸能在沒有外星低語的情況下入睡。';

  @override
  String get event_relicRosetta_title => '羅塞塔石碑';

  @override
  String get event_relicRosetta_narrative =>
      '一個小而緻密的未知金屬方塊翻滾經過艦船。六個面分別以不同的符號系統刻著同一條訊息——數學、化學、基因、聲學、電磁，以及一種我們無法辨識的。它是宇宙的羅塞塔石碑。';

  @override
  String get event_relicRosetta_choice0_text => '解碼第六面——未知的符號系統';

  @override
  String get event_relicRosetta_choice0_outcome =>
      '數月的分析帶來了突破：第六個系統使用重力波編碼空間座標。我們對物理學的理解產生了世代性的飛躍。';

  @override
  String get event_relicRosetta_choice1_text => '使用化學面合成新化合物';

  @override
  String get event_relicRosetta_choice1_outcome =>
      '化學符號描述了我們從未想像過的材料。工程師們製造出比地球上任何東西都更輕更堅固的船殼修補材料。';

  @override
  String get event_relicRosetta_choice2_text => '將基因面廣播到我們的種子庫';

  @override
  String get event_relicRosetta_choice2_outcome =>
      '基因符號包含了針對輻射抗性和營養吸收優化的DNA序列。我們的作物和殖民者在外星土壤上將更加堅韌。';

  @override
  String get event_relicGhostFleet_title => '幽靈艦隊';

  @override
  String get event_relicGhostFleet_narrative =>
      '掃描器描繪出一幅令人心寒的畫面：一支由數百艘外星戰艦組成的艦隊，以完美編隊靜止不動地懸浮著。它們古老至極——能量讀數為零，船殼被億萬年的微撞擊侵蝕。無論它們駛向的是怎樣的戰役，那場戰役從未到來。它們一直在這裡等待，死寂而耐心，比人類文明存在的時間還要長。';

  @override
  String get event_relicGhostFleet_choice0_text => '登上旗艦——如果誰有最好的科技，就是它';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      '旗艦的指揮甲板仍保有一台完好的戰術電腦。其預測演算法領先我們數個世紀。導航和威脅偵測大幅改善。';

  @override
  String get event_relicGhostFleet_choice1_text => '從護衛艦上剝離裝甲板';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      '外星戰艦裝甲被設計用來抵禦我們甚至無法想像的武器。焊接到我們的船殼上後，殖民船幾乎堅不可摧。';

  @override
  String get event_relicGhostFleet_choice2_text => '打撈它們的冷凍系統——它們曾搭載士兵';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      '外星冷凍技術基於我們從未考慮過的原理運作。改造後，我們的冷凍艙運行得更冷、更穩、更可靠。';

  @override
  String get event_scannerCalibrationDrift_title => '掃描器校準偏移';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      '例行診斷顯示，幾個掃描器子系統在上次超光速跳躍後偏移了校準。大氣和溫度掃描器正在讀取幽靈信號。工程師能修復它們，但需要時間和資源。';

  @override
  String get event_scannerCalibrationDrift_choice0_text => '全面重新校準——調用科技資源';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      '一次細緻的重新校準將兩個掃描器恢復至接近完美的精度，但科技艙被掏空了。';

  @override
  String get event_scannerCalibrationDrift_choice1_text => '快速修復——只校準大氣掃描器';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      '大氣掃描器恢復了。溫度掃描器暫時仍不可靠。';

  @override
  String get event_scannerCalibrationDrift_choice2_text => '部署探測器進行參考校準';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      '探測器提供了乾淨的參考信號。兩個掃描器鎖定並自動重新校準。';

  @override
  String get event_ionStormScanners_title => '離子風暴干擾';

  @override
  String get event_ionStormScanners_narrative =>
      '一場離子風暴席捲了該區段，用噪音淹沒了掃描陣列。礦物和水源偵測系統正承受電磁干擾的主要衝擊。';

  @override
  String get event_ionStormScanners_choice0_text => '關閉掃描器直到風暴過去';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      '掃描器倖存但失去了校準數據。礦物和水源讀數將不再精確。';

  @override
  String get event_ionStormScanners_choice1_text => '持續掃描——穿越噪音';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      '原始數據大量湧入，但兩個子系統的濾波電路被燒毀。重力掃描也受到了影響。';

  @override
  String get event_ionStormScanners_choice2_text => '利用風暴壓力測試並改進濾波器';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      '科學團隊使用噪音來訓練自適應濾波器。水源掃描器得到了改善，但礦物掃描器受損了。';

  @override
  String get event_bioScannerContamination_title => '生物掃描器污染';

  @override
  String get event_bioScannerContamination_narrative =>
      '生命跡象掃描器被上次行星掃描的殘留有機物污染。誤報無處不在。重力掃描器也出現了共振噪音。';

  @override
  String get event_bioScannerContamination_choice0_text => '消毒感測器陣列——全面淨化';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      '徹底的清潔恢復了生命跡象掃描器，但化學試劑腐蝕了重力感測器外殼。';

  @override
  String get event_bioScannerContamination_choice1_text => '軟體濾波——以演算法補償';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      '濾波器效果尚可，但底層污染將緩慢退化兩個系統。';

  @override
  String get event_scannerPowerSurge_title => '掃描器電湧';

  @override
  String get event_scannerPowerSurge_narrative =>
      '掃描器艙附近的電力管道過載，向多個子系統發送了電湧。大氣和生命跡象掃描器遭受了直接衝擊。護盾吸收了一部分過剩能量。';

  @override
  String get event_scannerPowerSurge_choice0_text => '重新分配電力——保住掃描器';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      '工程團隊的快速反應限制了損害，但護盾承受了重新分配的能量。';

  @override
  String get event_scannerPowerSurge_choice1_text => '讓電湧自行消退';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      '掃描器承受了全部衝擊。大氣和生命跡象讀數顯著退化。';

  @override
  String get event_scannerPowerSurge_choice2_text => '犧牲探測器的電池來吸收電湧';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      '探測器的電容器像海綿一樣吸收了過剩能量。掃描器損傷微乎其微。';

  @override
  String get event_relicWorldEngine_title => '造世引擎';

  @override
  String get event_relicWorldEngine_narrative =>
      '深層感測掃描揭示了一件不可能的事物：一台小月球大小的機器，在群星之間的黑暗中沉睡。其表面覆蓋著大陸級別的機構——大氣處理器、磁場生成器、地殼穩定器。有人建造了一台造世的機器。';

  @override
  String get event_relicWorldEngine_choice0_text => '下載地球改造藍圖';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      '藍圖龐大且部分損壞，但我們恢復的內容可以使任何惡劣世界變得宜居。我們的殖民者將重塑他們的新家園。';

  @override
  String get event_relicWorldEngine_choice1_text => '從其船殼上採收建築材料';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      '造世引擎的船殼由能自我修復的超材料製成。整合到我們的船中，它們緩慢修補著現有的船殼裂口。';

  @override
  String get event_relicWorldEngine_choice2_text => '嘗試重新啟動它——瞄準我們的目標星系';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      '機器甦醒了。遠古系統進入啟動序列。一道能量光束射向遙遠的恆星。是否奏效要到我們抵達才知道，但讀數令人振奮。';

  @override
  String get event_uneventfulMaintenance_title => '例行維護班次';

  @override
  String get event_uneventfulMaintenance_narrative =>
      '沒有什麼需要特別關注的。艦船在虛空中穩定地嗡鳴，值班表安排了一次例行維護窗口。班長詢問這次班次的重點放在哪裡。';

  @override
  String get event_uneventfulMaintenance_choice0_text => '專注於船殼微裂縫密封';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      '一個安靜的班次，修補著髮絲般的裂縫。沒什麼戲劇性的，但船殼因此略有改善。';

  @override
  String get event_uneventfulMaintenance_choice1_text => '重新校準前方掃描器';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      '掃描器技術員花了幾小時進行微調。讀數略微更加銳利了。';

  @override
  String get event_uneventfulQuietWatch_title => '靜謐值班';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      '群星在寂靜中緩緩流過。艦橋平靜，儀器穩定。這是宇宙對你毫無索求的罕見片刻之一。';

  @override
  String get event_uneventfulQuietWatch_choice0_text => '讓船員休息——他們值得一個安靜的班次';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      '幾個小時的真正安寧。人們睡得更沉，緊張緩解，文化官注意到士氣略有提升。';

  @override
  String get event_uneventfulQuietWatch_choice1_text => '趁平靜時運行低優先級診斷';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      '一些小問題被捕捉並記錄。沒什麼緊急的，但科技日誌更乾淨了一些。';

  @override
  String get event_uneventfulCryopodCheck_title => '冷凍艙檢查——一切正常';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      '季度冷凍艙稽核在沒有任何警報的情況下結束了。每一個艙位都顯示綠燈。醫療團隊獲得了難得的片刻寧靜。';

  @override
  String get event_uneventfulCryopodCheck_choice0_text => '短暫喚醒幾名殖民者進行士氣探訪';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      '三名殖民者被喚醒了一個小時。他們分享故事，擁抱老友，微笑著回到冷凍沉眠。';

  @override
  String get event_uneventfulCryopodCheck_choice1_text => '讓他們繼續沉睡——不冒不必要的喚醒風險';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      '冷凍艙繼續完美運轉。醫護人員改為享受了一杯安靜的茶。';

  @override
  String get event_uneventfulCartography_title => '星際測繪更新';

  @override
  String get event_uneventfulCartography_narrative =>
      '導航團隊排定的星際測繪更新沒有發現異常——只是隨著我們的行進，預期中的星場在移動。導航員們平靜的一天。';

  @override
  String get event_uneventfulCartography_choice0_text => '根據新的恆星位置重新校準導航';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      '一個幾乎無法感知的微小航向修正。導航電腦滿意地嗡鳴著。';

  @override
  String get event_uneventfulCartography_choice1_text => '更新星圖存入殖民檔案';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      '未來的殖民者將擁有這片區域略微更好的地圖。獻給後世的一份小禮物。';

  @override
  String get event_uneventfulAnniversary_title => '艦船週年紀念';

  @override
  String get event_uneventfulAnniversary_narrative =>
      '自發射以來已經一年了——還是兩年？在深空中時間模糊不清。廚房裡有人用重組物資烤了一個蛋糕。艦長必須決定如何紀念這個場合。';

  @override
  String get event_uneventfulAnniversary_choice0_text => '小型慶祝——音樂、蛋糕，向地球舉杯';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      '在寒冷的虛空中一小時的溫暖。人們歡笑，有人哭泣，每個人都感覺自己更像一個人了。';

  @override
  String get event_uneventfulAnniversary_choice1_text => '一切如常——抵達時再慶祝';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      '船員們尊重這種堅忍的態度。專注力增強了，值班團隊多進行了一次系統檢查。';

  @override
  String get event_databaseLiterature_title => '地球文學檔案';

  @override
  String get event_databaseLiterature_narrative =>
      '艦船的AI打開了文化資料庫中一個長期封存的區段：地球完整的文學檔案。小說、詩歌、戲劇——跨越每一種語言和時代的數百萬部作品。船員們聚在一起朗讀。';

  @override
  String get event_databaseLiterature_choice0_text => '全船廣播精選朗讀';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      '莎士比亞迴盪在走廊中。魯米的詩句在水耕灣播放。船員們記起了他們所承載的一切。';

  @override
  String get event_databaseLiterature_choice1_text => '為教育計畫索引檔案';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      '編目工作強化了艦船的知識庫，並為文化官提供了新的教學材料。';

  @override
  String get event_databaseSchematics_title => '工程圖紙回顧';

  @override
  String get event_databaseSchematics_narrative =>
      '一名工程師在艦船資料庫中發現了一個被遺忘的分區：來自地球最後十年的詳細工程圖紙——核融合反應爐設計、超材料藍圖和實驗性推進概念。';

  @override
  String get event_databaseSchematics_choice0_text => '將推進概念優先交給科技團隊';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      '圖紙揭示了原始建造者從未來得及實施的效率改進。科技艙沸騰了。';

  @override
  String get event_databaseSchematics_choice1_text => '廣泛分享——每個部門都受益';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      '船殼工程師、掃描器技師和醫護人員都找到了有用的見解。水漲船高，每個系統都略有提升。';

  @override
  String get event_databaseCorruption_title => '文化保存掃描';

  @override
  String get event_databaseCorruption_narrative =>
      '文化資料庫的例行完整性檢查揭示了位元衰退——音樂、口述歷史和宗教文本的部分區段已退化到無法恢復的程度。並非一切都在旅途中倖存。';

  @override
  String get event_databaseCorruption_choice0_text => '調用科技資源搶救殘餘';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      '工程師們暫停其他工作運行數據恢復演算法。他們拯救了大部分，但這項工作消耗了科技艙。';

  @override
  String get event_databaseCorruption_choice1_text => '請殖民者憑記憶重建失去的作品';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      '一項美麗而不完美的努力。被重建的東西屬於這次航行，而非地球。一個新傳統就此誕生。';

  @override
  String get event_databaseBreakthrough_title => '存檔研究突破';

  @override
  String get event_databaseBreakthrough_narrative =>
      '一位物理學家在交叉比對資料庫中的舊地球研究論文時發現，兩項無關的研究結合在一起，描述了一種新的遠程光譜分析方法。其影響是巨大的。';

  @override
  String get event_databaseBreakthrough_choice0_text => '在掃描陣列中實施新的分析方法';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      '掃描團隊狂熱地工作。數天之內，光譜解析度翻倍。遙遠的行星揭示了它們的秘密。';

  @override
  String get event_databaseBreakthrough_choice1_text => '全船公佈這一發現——激發更多研究';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      '這項突破引發了一波跨學科研究的浪潮。科技全面提升，船員們感受到了知識的活力。';

  @override
  String get event_alienFleetSighting_title => '外星艦隊現身';

  @override
  String get event_alienFleetSighting_narrative =>
      '遠程掃描器描繪出一幅恐怖的景象：一支由數百艘外星艦艇組成的艦隊，以完美編隊穿越星空。它們使我們的艦船相形見絀。它們的航向將在數小時內將它們帶入我們的感測範圍。第一次接觸——在它們的條件下或我們的條件下。';

  @override
  String get event_alienFleetSighting_choice0_text => '靜默觀察——熄燈隱蔽';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      '艦船將輻射降至最低。艦隊如一群發光的巨鯨般經過，渾然不知尾跡中藏著一艘渺小的人類船隻。掃描數據非比尋常。';

  @override
  String get event_alienFleetSighting_choice1_text => '嘗試第一次接觸——發送問候';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      '一艘艦艇脫離編隊靠近。一組數據到達——星圖、警告，以及某種可能是音樂的東西。然後它重新歸隊，它們便消失了。';

  @override
  String get event_alienFleetSighting_choice2_text => '逃跑——立即改變航線';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      '艦船全力向相反方向加速。航線變更代價高昂且充滿壓力，但艦隊從未注意到我們。安全的代價。';

  @override
  String get event_alienTradeOffer_title => '外星貿易提議';

  @override
  String get event_alienTradeOffer_narrative =>
      '一艘比我們更小但散發著巨大能量的外星艦艇匹配了我們的速度，並廣播一條簡單的重複訊息。我們的語言學家在數小時內破解了它：這是一份貿易提議。提出了三類交換。';

  @override
  String get event_alienTradeOffer_choice0_text => '用技術圖紙換取外星星圖';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      '我們傳送了推進設計；他們回應了覆蓋廣大未探索空間的導航數據。我們的星圖大幅改善，儘管我們已將技術分享給了一個未知的物種。';

  @override
  String get event_alienTradeOffer_choice1_text => '用文化數據換取艦船修復';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      '我們傳送了我們的音樂、藝術和歷史。作為回報，外星維修無人機蜂擁而至，用我們無法辨識的材料封閉了船殼裂口。船殼光芒四射。我們的靈魂被分享了。';

  @override
  String get event_alienTradeOffer_choice2_text => '拒絕交易——風險太大';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      '外星艦艇等了一段時間，然後平靜地離去。船員們鬆了一口氣，但也在想我們錯過了什麼。';

  @override
  String get event_alienWarning_title => '外星警告廣播';

  @override
  String get event_alienWarning_narrative =>
      '艦船上的每一個喇叭都開始噼啪作響，傳出一個外星聲音——我們的AI即時翻譯：「前方危險。回頭。黑暗吞噬一切。」廣播重複後消失。遠程感測器在我們目前的航向上顯示出一個異常的虛空。';

  @override
  String get event_alienWarning_choice0_text => '聽從警告——改變航線繞過虛空';

  @override
  String get event_alienWarning_choice0_outcome =>
      '繞行給導航帶來了顯著壓力，但當我們沿虛空邊緣滑行時，感測器確認：進入那片區域的任何東西都再也沒出來過。我們欠未知聲音一份恩情。';

  @override
  String get event_alienWarning_choice1_text => '無視警告——保持航線';

  @override
  String get event_alienWarning_choice1_outcome =>
      '我們闖了過去。虛空原來是一片高密度微碎片區域。船殼和掃描器在穿越前付出了代價。';

  @override
  String get event_alienWarning_choice2_text => '用探測器調查虛空邊緣';

  @override
  String get event_alienWarning_choice2_outcome =>
      '探測器進入虛空並在失聯前傳回了非凡的數據。掃描團隊提取了寶貴的讀數，但探測器已失去。';

  @override
  String get event_nativeSignalDetected_title => '來自目標世界的傳訊';

  @override
  String get event_nativeSignalDetected_narrative =>
      '通訊陣列接收到源自我們目標行星的結構化電磁信號。它們毫無疑問：規律的、調制的、人工的。有人已經在那裡了。殖民地的整個前提在一瞬間被改變了。';

  @override
  String get event_nativeSignalDetected_choice0_text => '發送和平問候——宣佈我們的到來';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      '一個勇敢的選擇。我們廣播後信號的模式發生了變化——他們聽到了。這是歡迎還是警告尚不清楚，但門已經打開了。';

  @override
  String get event_nativeSignalDetected_choice1_text => '只聽不露——在暴露自己前先了解';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      '數月的被動監聽勾勒出了原住民文明的面貌。他們謹慎、有領土意識，但並不敵對。我們帶著了解抵達。';

  @override
  String get event_nativeSignalDetected_choice2_text => '干擾信號——不讓他們知道我們的接近';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      '干擾成功了，但這是對我們尚未見面之人的一種侵略行為。船員們在道德問題上產生了分歧。';

  @override
  String get event_nativeProbeEncounter_title => '外星探測器攔截';

  @override
  String get event_nativeProbeEncounter_narrative =>
      '一個小而精緻的探測器——並非人類製造——匹配了我們的速度並開始掃描艦船。它的設計語言與來自目標行星的信號相吻合。原住民派來了歡迎委員會。或是一架監視無人機。';

  @override
  String get event_nativeProbeEncounter_choice0_text => '允許掃描——表明我們無所隱藏';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      '探測器完成了勘測並向行星傳回了數據。數分鐘後，一組數據為我們而來：大氣數據、安全降落區，以及可能是一份邀請。';

  @override
  String get event_nativeProbeEncounter_choice1_text => '捕獲探測器進行研究';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      '探測器被牽引進貨艙。它的技術令人著迷，但捕獲行為可能被其製造者視為敵意。';

  @override
  String get event_nativeProbeEncounter_choice2_text => '摧毀它——我們不知道它的意圖';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      '一道脈衝將探測器化為碎片。船員們感覺更安全了，但一座潛在的橋樑已被燒毀。';

  @override
  String get event_nativeCulturalExchange_title => '首次文化交流';

  @override
  String get event_nativeCulturalExchange_narrative =>
      '與行星原住民建立了一條窄頻數據鏈路。他們發送了圖像、聲音和數學序列。我們的語言學家和文化官通宵達旦地準備回應。這是人類歷史上最重要的對話。';

  @override
  String get event_nativeCulturalExchange_choice0_text => '分享地球的藝術和音樂——以美為先';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      '我們傳送了巴赫、原住民點畫和雨打樹葉的聲音。回應是一連串令船員落淚的外星和聲。理解在加深。';

  @override
  String get event_nativeCulturalExchange_choice1_text => '分享科學知識——以理性為先';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      '我們傳送了元素週期表、星圖和物理學。他們回應了修正和補充。我們的科技躍進了，但這場交流感覺像是交易。';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      '發送攜帶實物樣本的探測器——DNA、種子、水';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      '一個探測器將地球的精華送到了外星人手中。原住民回贈了類似的禮物——來自他們世界的生物樣本。生物學家欣喜若狂。';

  @override
  String get event_landingThrusterMalfunction_title => '降落推進器故障';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      '在例行系統檢查中，降落推進器突然點火——一聲巨響迴盪在下層甲板，艦船猛然一晃。診斷顯示主降落陣列的燃料噴射器出現裂紋。不修復的話，降落將會很粗暴。';

  @override
  String get event_landingThrusterMalfunction_choice0_text => '調派科技團隊製造替換噴射器';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      '工程師們加班加點，用備用船殼合金加工了一個新噴射器。降落系統恢復了，但科技艙被消耗殆盡。';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      '部署探測器在真空中測試推進器校準';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      '探測器提供了即時推力數據，讓工程師能圍繞損壞的噴射器重新校準。不算完全修復，但降落系統穩定了。';

  @override
  String get event_landingSimDrill_title => '降落模擬演練';

  @override
  String get event_landingSimDrill_narrative =>
      '隨著降落日益臨近，艦長下令進行一次全面的降落模擬。船員繫好安全帶，系統在負載下測試，虛擬降落開始了。這是他們能得到的最逼真的彩排。';

  @override
  String get event_landingSimDrill_choice0_text => '專注於技術精度——照章行事';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      '模擬揭示了兩個小的校準錯誤，被立即修正了。降落系統因此更加精準。';

  @override
  String get event_landingSimDrill_choice1_text => '打造全船活動——廣播模擬畫面';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      '殖民者從船上的每一個螢幕觀看。模擬降落的共同經歷——震動、歡呼——將船員們前所未有地團結在一起。';

  @override
  String get event_dysonSphere_title => '戴森球';

  @override
  String get event_dysonSphere_narrative =>
      '感測器偵測到一個不可能的結構——一個環繞遙遠恆星的部分戴森球，正在收集其全部能量輸出。建造它的文明超越了人類所能構想的一切。當我們靠近時，一個泊口似乎打開了。';

  @override
  String get event_dysonSphere_choice0_text => '停靠並探索結構';

  @override
  String get event_dysonSphere_choice0_outcome =>
      '內部，自動化系統賜予我們領先數個世紀的技術。五名工程師在它的防禦機制辨認出我們的意圖之前喪生。建造器以外星合金重建。';

  @override
  String get event_dysonSphere_choice1_text => '從外部收集能量';

  @override
  String get event_dysonSphere_choice1_outcome =>
      '我們沐浴在球體溢出的輻射中。船上每一個系統都充至最大值。船員們在震驚的寂靜中注視著。';

  @override
  String get event_dysonSphere_choice2_text => '從安全距離研究後繼續前進';

  @override
  String get event_dysonSphere_choice2_outcome => '遠程掃描揭示了徹底革新我們工程認知的建造原理。';

  @override
  String get event_nanotechPlague_title => '奈米瘟疫';

  @override
  String get event_nanotechPlague_narrative =>
      '一團失控的奈米機械，某個死去文明武器計畫的殘餘，通過船殼微裂縫滲透了艦船。它們正在分子層面上拆解非關鍵系統。蟲群正在快速擴散。';

  @override
  String get event_nanotechPlague_choice0_text => '電磁脈衝——燒毀受影響區域的一切';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      '電磁脈衝摧毀了奈米蟲，但也損壞了那些區域我們自己的電子設備。爆炸區的殖民者遭受了燒傷。';

  @override
  String get event_nanotechPlague_choice1_text => '將受影響區域排入真空';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      '沒有大氣後，奈米蟲減速並死亡。但那些區域連同存儲的物資和文化檔案一同失去了。';

  @override
  String get event_nanotechPlague_choice2_text => '重新編程它們——化武器為工具';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      '一位天才工程師破解了奈米蟲的代碼，但受影響最嚴重區域的五名船員已經無法挽救。重新編程的蟲群開始修復艦船而非摧毀它。';

  @override
  String get event_nanotechPlague_choice3_text => '犧牲探測器的AI核心創建反制蟲群';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      '探測器的處理器被改造為控制防禦性奈米蟲群。瘟疫以極小的損失被中和。';

  @override
  String get event_prematureAwakening_title => '過早甦醒';

  @override
  String get event_prematureAwakening_narrative =>
      '冷凍艙的連鎖故障在降落階段前數十年便喚醒了兩百名殖民者。他們困惑、恐懼，正在消耗為降落階段準備的資源。其中有些孩子從未認識過艦船以外的世界。';

  @override
  String get event_prematureAwakening_choice0_text => '將他們融入船員——多一雙手，多一份希望';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      '甦醒的殖民者成為了有生產力的船員。二十名殖民者未能在突然的解凍中倖存，但其餘人振作了起來。資源被拉至極限但精神高昂。';

  @override
  String get event_prematureAwakening_choice1_text => '嘗試重新冷凍——有風險但必要';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      '重新冷凍過程並不完美。大多數人倖存了，但一些人沒能。倖存者攜帶著心理創傷。';

  @override
  String get event_prematureAwakening_choice2_text => '給他們一個獨立的船段';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      '十名殖民者因緊急解凍的併發症而失去。但其餘人在船內形成了一個微型殖民地。他們發展出自己的文化和治理方式，彷彿是行星定居的預演。';

  @override
  String get event_stowawaysAdvanced_title => '隱匿乘客';

  @override
  String get event_stowawaysAdvanced_narrative =>
      '在貨艙深處，假隔板後面，安保人員發現了一個完整的隱藏社區——八十人在發射前非法登船。他們在艦船的牆壁中生活了整個航程，維護著自己的花園和電力分接。';

  @override
  String get event_stowawaysAdvanced_choice0_text => '歡迎他們——多八十名殖民者是一份禮物';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      '這個隱藏社區帶來了令船員驚嘆的臨時工程和資源利用技能。他們的花園被移植到主生物穹頂。';

  @override
  String get event_stowawaysAdvanced_choice1_text => '拘留他們並重新分配被竊物資';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      '回收的物資提升了多個系統，但拘留家庭——包括兒童——令船員心神不安。';

  @override
  String get event_stowawaysAdvanced_choice2_text => '談判——如果他們分享技術就以平等身份加入';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      '他們的臨時電池和水耕技巧提升了艦船效率。一場緊張但富有成效的融合開始了。';

  @override
  String get event_alienReservation_title => '外星保護區';

  @override
  String get event_alienReservation_narrative =>
      '我們無意間闖入了一個外星自然保護區——一片刻意播種了宜居行星並由自動化哨兵守護的太空區域。守護者掃描了我們並投射出一條訊息：「你們可以定居一個世界。慎重選擇。干涉其他世界的話，你們將被驅逐。」';

  @override
  String get event_alienReservation_choice0_text => '感恩接受——一個世界就夠了';

  @override
  String get event_alienReservation_choice0_outcome =>
      '哨兵引導我們前往一個準備好的世界。掃描顯示它對人類生存有著非凡的適宜性。';

  @override
  String get event_alienReservation_choice1_text => '談判更好的條件——人類需要成長空間';

  @override
  String get event_alienReservation_choice1_outcome =>
      '哨兵考慮了我們的請求。他們升級了我們的掃描器，附帶保護區外數十個星系的數據。';

  @override
  String get event_alienReservation_choice2_text => '拒絕並離開——我們不願被關在籠中';

  @override
  String get event_alienReservation_choice2_outcome =>
      '船員們辯論了數天。自由高於安全。哨兵允許我們離去，並贈予一份附近危險區域的地圖。';

  @override
  String get event_cosmicHorror_title => '星際間的存在';

  @override
  String get event_cosmicHorror_narrative =>
      '某種龐大而黑暗的東西遮蔽了前方的群星——不是星雲，不是黑洞。它沒有質量，沒有能量特徵，沒有電磁存在。但它就在那裡，而且它意識到了我們。靠近前方觀景甲板的船員報告了壓倒性的恐懼感。兩人已被鎮靜。';

  @override
  String get event_cosmicHorror_choice0_text => '全速倒退——立刻撤離';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      '艦船與自身慣性搏鬥。我們逃脫了，但恐懼揮之不去。一些殖民者在心理上永遠無法恢復。';

  @override
  String get event_cosmicHorror_choice1_text => '封閉觀景甲板強行穿越';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      '三天的盲航穿越黑暗。當群星重現時，船員們喜極而泣。船殼上蝕刻著無人能解釋的紋路。';

  @override
  String get event_cosmicHorror_choice2_text => '嘗試溝通';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      '實體回應了——不是以言語，而是以知識直接壓入船員的心智。星圖、物理學、關於宇宙的真相。半數船員得到了啟示。另一半崩潰了。';

  @override
  String get event_cosmicHorror_choice3_text => '將探測器作為貢品獻上';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      '探測器飄入黑暗中消失了。實體微微收縮，彷彿滿意了。我們的道路開通了。';

  @override
  String get event_meteorGlancingHit_title => '流星擦撞';

  @override
  String get event_meteorGlancingHit_narrative =>
      '一塊巨石大小的流星以淺角度擦過了左舷船殼。撞擊撕去了三公尺的外層裝甲並向整個框架傳送了衝擊波。損管警報在每一層甲板上尖叫。';

  @override
  String get event_meteorGlancingHit_choice0_text => '立即將所有維修機器人調往破裂處';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      '機器人封閉了最嚴重的損傷，但對科技儲備的瘋狂消耗使次要系統缺乏維護。';

  @override
  String get event_meteorGlancingHit_choice1_text => '降低推力讓船員手動修補';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      '進展更慢，但船員做了扎實的工作。在漂流期間，導航因推力減少窗口而受損。';

  @override
  String get event_meteorGlancingHit_choice2_text => '犧牲探測器的船殼裝甲作為修補材料';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      '探測器被拆卸取材。修補牢固，船殼完整性得以保存，代價是少了一架偵察機。';

  @override
  String get event_meteorDirectImpact_title => '流星直接命中';

  @override
  String get event_meteorDirectImpact_narrative =>
      '一塊半噸重的鐵隕石以超過每秒四十公里的相對速度直接穿透了前方貨艙。相鄰走廊的兩名船員下落不明。貨艙已暴露在真空中。';

  @override
  String get event_meteorDirectImpact_choice0_text => '封閉貨艙，稍後搜索倖存者';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      '貨艙在九十秒內被封閉。兩名船員已經撤離——千鈞一髮。船殼留下了永久傷痕。';

  @override
  String get event_meteorDirectImpact_choice1_text => '在封閉前發起全面救援';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      '一名倖存者被救出。延長的暴露加劇了結構損傷並消耗了科技儲備。';

  @override
  String get event_meteorDebrisField_title => '碎片場——殘餘流星雨';

  @override
  String get event_meteorDebrisField_narrative =>
      '遠程感測器未能在我們已經進入之前偵測到一片分散的流星碎片場。數百顆拳頭大小的石頭正以隨機間隔撞擊船殼。每一次命中都是一場賭博。';

  @override
  String get event_meteorDebrisField_choice0_text => '啟動護盾全速穿越';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      '護盾吸收了大部分撞擊，但巨大的撞擊量壓垮了它們。船殼和護盾系統都遭受了退化。';

  @override
  String get event_meteorDebrisField_choice1_text => '熄火漂流——最小化我們的截面';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      '六個小時的緊張沉默。導航因無動力漂流而偏離，但船殼受到的撞擊大幅減少。';

  @override
  String get event_meteorDebrisField_choice2_text => '部署探測器作為前方盾牌';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      '探測器承受了最猛烈的彈幕。艦船在它的陰影中僅受輕微擦傷便安然通過。';

  @override
  String get event_meteorShowerDense_title => '意外的密集流星雨';

  @override
  String get event_meteorShowerDense_narrative =>
      '一顆流浪彗星在我們前方某處解體了，我們直接飛入了其尾跡碎片流的核心。掃描陣列正被碎片猛擊，降落系統的感測器外殼已經遭受了直接命中。';

  @override
  String get event_meteorShowerDense_choice0_text => '保護降落系統——旋轉艦船';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      '旋轉保護了降落系統，但使大氣掃描陣列暴露在彈幕的最猛烈之處。';

  @override
  String get event_meteorShowerDense_choice1_text => '保護掃描陣列——它們不可替代';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      '掃描器大致完好倖存。降落系統承受了中等程度的彈片損傷，我們只能接受。';

  @override
  String get event_solarEmpBurst_title => '電磁脈衝——恆星起源';

  @override
  String get event_solarEmpBurst_narrative =>
      '我們在一光天內經過的一顆緻密恆星殘骸釋放了一道聚焦的電磁脈衝。船上每一個未屏蔽的電路都面臨危險。我們只有數秒決定保護什麼。';

  @override
  String get event_solarEmpBurst_choice0_text => '將所有突波保護導向導航和生命維持';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      '導航和生命維持完好無損。掃描套件和科技艙在無防護下吸收了脈衝——兩者都受到了嚴重損傷。';

  @override
  String get event_solarEmpBurst_choice1_text => '保護掃描陣列和科技艙';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      '科學和工程系統被保全了。導航在之後數小時內因電路緩慢恢復而失靈。';

  @override
  String get event_solarEmpBurst_choice2_text => '全部斷電，脈衝後再重啟';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      '冷啟動令人煎熬——十二小時的手動重啟。但沒有系統被燒毀到無法恢復。';

  @override
  String get event_solarRadiationWave_title => '輻射波——四級暴露';

  @override
  String get event_solarRadiationWave_narrative =>
      '一次意外強度的太陽輻射爆發正席捲艦船中層甲板。冷凍艙位於暴露路徑上。冷凍中的殖民者對這種劑量的硬輻射毫無天然防護。';

  @override
  String get event_solarRadiationWave_choice0_text => '向冷凍艙灌入冷卻劑作為輻射屏蔽';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      '冷卻劑吸收了大部分輻射。冷凍艙倖存了，但冷卻系統本身部分退化。受影響最嚴重的十五個艙位中的殖民者未能倖免。';

  @override
  String get event_solarRadiationWave_choice1_text => '排出外層甲板大氣以建立真空緩衝層';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      '真空層顯著降低了穿透輻射。最靠近排氣區段的二十名殖民者遭受了致命暴露。壓差對船殼的應力不可避免。';

  @override
  String get event_solarRadiationWave_choice2_text => '將能量轉向磁偏轉器';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      '偏轉器將輻射暴露減少了三分之二。八名殖民者因偏轉器覆蓋盲區而遭受致命劑量。能量消耗重創了科技艙並使導航以最低功率運行。';

  @override
  String get event_coronalMassEjection_title => '日冕物質拋射——全力衝擊';

  @override
  String get event_coronalMassEjection_narrative =>
      '一次前所未有規模的日冕物質拋射正從後方追上我們。電漿雲將在一小時內吞噬艦船。我們的護盾並非為這一級別的事件而設計。沒有哪個選項是乾淨的。';

  @override
  String get event_coronalMassEjection_choice0_text => '全速逃跑——引擎推至百分之一百二十';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      '我們拉開了足夠的距離以減少暴露。引擎過熱，導航電腦在全船範圍標記了結構過度應力警告。';

  @override
  String get event_coronalMassEjection_choice1_text => '躲在附近行星體的磁影之後';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      '行星體的磁場偏轉了大部分拋射物。在未知天體附近的導航擦傷了船殼並使降落系統感測器承受了壓力。';

  @override
  String get event_cosmicRayScannerInterference_title => '宇宙射線暴——掃描器干擾';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      '一股超高能宇宙射線暴已使所有掃描器電子設備充滿噪音。礦物和重力陣列正在產生亂碼。重新校準需要我們可能沒有的時間。';

  @override
  String get event_cosmicRayScannerInterference_choice0_text => '全面校準——暫時讓艦船離線';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      '經過四小時的仔細校準後，所有掃描器恢復正常。導航在停擺窗口中因態勢感知降低而受損。';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      '只修補最關鍵的陣列——其餘保持有噪音';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      '重力和生命跡象掃描器恢復了。礦物和溫度陣列無限期地處於退化狀態。';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      '犧牲探測器的遙測硬體作為替換零件';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      '拆卸探測器的感測器組件為我們提供了修復掃描套件的元件，無需漫長的校準。';

  @override
  String get event_cosmicRayDnaDamage_title => '宇宙射線暴——殖民者暴露';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      '一次次級宇宙射線雨穿透了六號艙的冷凍艙屏蔽。冷凍中的殖民者正承受來自電離輻射的累積DNA損傷。若不干預，受影響艙位的細胞修復機制將會失效。';

  @override
  String get event_cosmicRayDnaDamage_choice0_text => '緊急解凍——將受影響殖民者喚醒';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      '兩百名殖民者被提前喚醒。DNA損傷最嚴重的四十人對治療無反應。醫療團隊為其餘人竭盡所能。';

  @override
  String get event_cosmicRayDnaDamage_choice1_text => '拆卸船殼裝甲板屏蔽六號艙——結構性代價';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      '殖民者被拯救了，但從船殼一段剝離裝甲使艦船在該區域結構上脆弱。';

  @override
  String get event_coolantLeak_title => '冷卻劑管線破裂';

  @override
  String get event_coolantLeak_narrative =>
      '反應爐壁後方的主冷卻劑管線破裂。過熱的低溫流體正噴灑在容納關鍵科技艙管線的接合處。反應爐溫度正在攀升。';

  @override
  String get event_coolantLeak_choice0_text => '關閉反應爐讓它冷卻——接受全面斷電';

  @override
  String get event_coolantLeak_choice0_outcome =>
      '受控關機阻止了災難。靠電池維持生命維持的十二小時令人心驚膽戰，且系統重啟並不完美。';

  @override
  String get event_coolantLeak_choice1_text => '派損管團隊進入——冒船員暴露的風險';

  @override
  String get event_coolantLeak_choice1_outcome =>
      '團隊在四十分鐘內封閉了破裂。一名船員因過熱冷卻劑暴露而犧牲。修復很扎實。';

  @override
  String get event_coolantLeak_choice2_text => '抽調冷凍艙冷卻劑作為緊急供應';

  @override
  String get event_coolantLeak_choice2_outcome =>
      '反應爐穩定了。冷凍艙在安全閾值以上溫度運行了六小時——輕微但真實的細胞損傷在累積。';

  @override
  String get event_powerGridFailure_title => '主電網故障';

  @override
  String get event_powerGridFailure_narrative =>
      '連鎖故障跳掉了主電網。備用系統正維持生命維持和冷凍艙加熱，但導航、掃描器和建造艙全部陷入黑暗。每一分鐘的離線都損耗航線精度。';

  @override
  String get event_powerGridFailure_choice0_text => '優先恢復導航和掃描器——接受建造艙延長停機';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      '導航和掃描系統在兩小時內恢復上線。建造艙錯過了一次關鍵的維護周期。';

  @override
  String get event_powerGridFailure_choice1_text => '優先恢復建造器——用它們加速維修';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      '建造器高效地重新分配了電力。全面電網恢復更快完成，但導航在延長的停擺期間嚴重偏移。';

  @override
  String get event_lifeSupportGlitch_title => '生命維持連鎖故障';

  @override
  String get event_lifeSupportGlitch_narrative =>
      '生命維持管理AI進入了錯誤循環，二氧化碳洗滌週期變得不可預測。居住甲板的二氧化碳濃度在波動。船員們開始頭痛；一些人已經失去行動能力。';

  @override
  String get event_lifeSupportGlitch_choice0_text => '強制硬重啟生命維持AI';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      '重啟清除了循環，但手動覆蓋模式持續運行了十小時。三名船員在濃度恢復正常前因二氧化碳累積而犧牲。';

  @override
  String get event_lifeSupportGlitch_choice1_text => '修補軟體循環——更慢但更安全';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      '軟體團隊在緊張的六小時內隔離並修補了故障。二氧化碳濃度緩慢恢復正常。無需硬重啟。';

  @override
  String get event_lifeSupportGlitch_choice2_text => '疏散受影響甲板並以最低生命維持運行';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      '兩名殖民者在疏散的混亂中失去。AI冷重啟後系統恢復正常。';

  @override
  String get event_waterRecyclerBreakdown_title => '水回收器故障';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      '主水回收裝置已經卡死。備用裝置已在滿負荷運行。若不干預，船員將在四十八小時內進入緊急配給，冷凍艙冷卻劑供給將在七十二小時內受損。';

  @override
  String get event_waterRecyclerBreakdown_choice0_text => '調集所有可用技術人員重建回收器';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      '裝置在三十小時內重建完成。四名已經虛弱的船員未能在脫水中倖存。';

  @override
  String get event_waterRecyclerBreakdown_choice1_text => '抽調冷凍艙冷卻劑儲備作為緊急飲用水';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      '船員們得以維持，但八名在溫度升高的冷凍艙中的殖民者遭受了不可逆的細胞損傷。冷凍艙冷卻劑裕度危險地收窄。';

  @override
  String get event_navComputerReboot_title => '導航電腦緊急重啟';

  @override
  String get event_navComputerReboot_narrative =>
      '導航電腦在航線修正中途鎖死，使艦船處於無法控制的緩慢旋轉中。每一秒未校正的旋轉都在加劇我們偏離計畫軌跡的程度。完全重啟是唯一的修復方法。';

  @override
  String get event_navComputerReboot_choice0_text => '立即重啟——接受全面停擺期';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      '系統重新載入期間四小時的盲航。旋轉被制止了，但航線偏差顯著。';

  @override
  String get event_navComputerReboot_choice1_text => '先用手動推進器控制制止旋轉';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      '嫻熟的駕駛在重啟前制止了旋轉。導航恢復時航線偏差更小，但手動燃燒給船殼帶來了壓力。';

  @override
  String get event_navComputerReboot_choice2_text => '將探測器遙測數據輸入備用導航單元';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      '探測器的慣性數據為備用單元提供了足夠的參考來維持航線。主導航乾淨地重啟了。';

  @override
  String get event_crewAirlocked_title => '氣閘邊的船員';

  @override
  String get event_crewAirlocked_narrative =>
      '一名殖民者——因醫學觀察而提前喚醒——將自己封鎖在外部氣閘中，正在循環外艙門。她不回應通訊。深空的心理壓力摧毀了她內心的某些東西。';

  @override
  String get event_crewAirlocked_choice0_text => '遠端覆寫氣閘——強制鎖閉';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      '在她完成循環之前艙門被鎖死了。她被鎮靜並送回醫療區。船員們震驚但團結。';

  @override
  String get event_crewAirlocked_choice1_text => '派諮詢師進去勸她回來';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      '經過三個令人絕望的小時，諮詢師將她活著帶了出來。這次事件在居住甲板引發了更廣泛的心理健康危機。';

  @override
  String get event_crewAirlocked_choice2_text => '封閉走廊讓事件自行了結';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      '氣閘完成了循環。損失被記錄在案。剩餘的船員們在之後數月背負著這份沉重。';

  @override
  String get event_crewCryopodSabotage_title => '冷凍艙蓄意破壞';

  @override
  String get event_crewCryopodSabotage_narrative =>
      '安保監控畫面顯示一名船員——三個月前被喚醒進行例行輪換——正在系統性地停用四號艙的冷凍艙加熱元件。被質問時，他尖叫著說殖民者是寄生蟲，正在消耗屬於清醒船員的資源。';

  @override
  String get event_crewCryopodSabotage_choice0_text => '立即逮捕並隔離他';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      '他被制伏了。在警報響起前已有四十個艙位被破壞。緊急維修團隊挽救了大部分，但並非全部。';

  @override
  String get event_crewCryopodSabotage_choice1_text => '談判——在行動前聽取他的不滿';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      '談判揭示了一場更深層的士氣危機。他放下了武器，但到那時已有六十個艙位被竄改。';

  @override
  String get event_crewSupplyHoarder_title => '發現物資囤積';

  @override
  String get event_crewSupplyHoarder_narrative =>
      '庫存審計顯示，一小群船員一直在系統性地將醫療用品、食物配給和備用技術零件轉移到一個隱藏的密藏中。他們的理由是：他們不相信任務會成功，他們在為回程做準備。';

  @override
  String get event_crewSupplyHoarder_choice0_text => '沒收一切並公開訓誡';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      '密藏幾乎完整地被追回。船員間的信任嚴重斷裂。生產力下降了數週。';

  @override
  String get event_crewSupplyHoarder_choice1_text => '悄悄調離他們——不要鬧大';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      '局勢在沒有恐慌的情況下被化解。一些物資無法追回，潛在的絕望也從未被真正解決。';

  @override
  String get event_crewSupplyHoarder_choice2_text => '交由船員決定——民主仲裁';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      '仲裁過程恢復了社區正義感。醜聞對士氣的打擊被集體決策所抵消。';

  @override
  String get event_crewMutinyAttempt_title => '叛變——引擎室被佔領';

  @override
  String get event_crewMutinyAttempt_narrative =>
      '一個由十九名船員組成的派系封鎖了引擎室，要求投票決定是否調轉船頭。他們已經禁用了緊急覆寫面板。其餘船員在監視器前注視著，等待指揮部採取行動。';

  @override
  String get event_crewMutinyAttempt_choice0_text => '談判——給他們一次真正的任務投票';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      '投票舉行了。任務以微弱多數繼續。派系退讓了，但文化上的傷口很深。';

  @override
  String get event_crewMutinyAttempt_choice1_text => '切斷引擎室電源並以武力奪回';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      '安保在四小時內奪回了引擎室。三人受傷。主謀被拘留。導航在手動模式下運行了整個過程，顯著偏移。';

  @override
  String get event_crewMutinyAttempt_choice2_text => '通過通風系統向引擎室灌入催眠氣體';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      '氣體散去。這群人在禁閉室中無傷地醒來。船員們對指揮部如此迅速地將生命維持系統武器化感到不安。';

  @override
  String get event_hullFatigueStress_title => '船殼疲勞——應力裂紋偵測';

  @override
  String get event_hullFatigueStress_narrative =>
      '結構完整性掃描揭示了一張微裂紋網絡正沿艦船龍骨擴散——多年熱循環和微撞擊的累積損傷。裂紋尚未達到臨界，但正在蔓延。';

  @override
  String get event_hullFatigueStress_choice0_text => '緊急焊接團隊——輪班工作直到封閉';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      '數週的精疲力竭的維修工作。裂紋被控制住了，但科技艙被掏空，士氣因持續的苦工而下降。';

  @override
  String get event_hullFatigueStress_choice1_text => '降低推力以減少結構應力——接受更慢的航行';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      '較低的推力阻止了裂紋蔓延，但對已有的損傷無能為力。導航精度因改變的推力曲線而受損。';

  @override
  String get event_hullFatigueStress_choice2_text => '使用建造機器人鋪設複合材料加強條';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      '建造器做了出色的工作。龍骨被加固到超出原始規格。建造艙被耗盡但成效卓著。';

  @override
  String get event_hullPressureAnomaly_title => '內部壓力異常';

  @override
  String get event_hullPressureAnomaly_narrative =>
      '三個中段隔間正記錄到與微觀結構變形一致的異常內部壓差。如果牆壁正在向內彎曲，災難性的爆裂可能在毫無預警的情況下發生。';

  @override
  String get event_hullPressureAnomaly_choice0_text => '立即疏散並封閉隔間';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      '隔間被封閉了。詳細檢查確認了牆壁變形。失去的空間擾亂了運作，文化也因擁擠的條件而受損。';

  @override
  String get event_hullPressureAnomaly_choice1_text => '將隔間排入真空——消除壓差';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      '排氣制止了變形。結構損傷被限制，但艦船的三個區段永久無法居住。';

  @override
  String get event_commsArrayFailure_title => '通訊陣列故障';

  @override
  String get event_commsArrayFailure_narrative =>
      '主遠程通訊陣列已經沉寂。最後一次來自地球的訊息是十一個月前接收的，現在連載波信號都消失了。內部診斷顯示天線對準機構在嚴寒中卡住了。';

  @override
  String get event_commsArrayFailure_choice0_text => '派出艙外活動團隊手動重新對準天線';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      '艙外活動在開放太空中持續了九小時。天線恢復了。一名船員在返回時遭遇太空衣失壓——一次驚險的經歷震撼了所有人。';

  @override
  String get event_commsArrayFailure_choice1_text => '通過科學掃描陣列轉發作為備用發射器';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      '科學陣列並非為通訊而優化。信號微弱且不可靠，且這種改用退化了掃描器的性能。';

  @override
  String get event_commsArrayFailure_choice2_text => '接受沉默——專注於前方的使命';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      '船員們以不同的方式處理與地球斷絕聯繫這件事。對一些人來說這是解脫；對另一些人，是毀滅性的。';

  @override
  String get event_fuelLineRupture_title => '燃料管線破裂';

  @override
  String get event_fuelLineRupture_narrative =>
      '7-B號燃料管道出現了結晶性斷裂，正在向維護通道洩漏驅動等離子體。洩漏目前很小但正在加速。若不加控制，將同時損害導航驅動效率和尾段的結構完整性。';

  @override
  String get event_fuelLineRupture_choice0_text => '隔離管道並以降低的燃料容量運行';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      '管道被乾淨地關閉了。我們永久失去了百分之十五的驅動效率，這將在剩餘航程中退化導航精度。';

  @override
  String get event_fuelLineRupture_choice1_text => '嘗試帶壓修復——在運行壓力下修補管道';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      '維修團隊勉強成功。管道撐住了，儘管不完美。尾段船殼裝甲出現了熱應力灼痕。';

  @override
  String get event_fuelLineRupture_choice2_text => '使用探測器推進器燃料箱作為溢流儲存排空管道';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      '探測器被排空並用作臨時燃料儲存容器。管道在無壓力下被安全排空並修復。';

  @override
  String get event_cryopodCascadeWarning_title => '冷凍艙溫度連鎖警告';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      '二號艙冷凍艙溫度正以與熱失控一致的模式升高。如果連鎖反應蔓延到三號艙，將觸發超過三百名殖民者的自動緊急解凍。艦船無法同時維持那麼多清醒的乘客。';

  @override
  String get event_cryopodCascadeWarning_choice0_text => '傾倒冷卻劑儲備以制止連鎖反應';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      '冷卻劑在二號艙邊界阻止了連鎖反應。二號艙中八十名殖民者因溫度飆升而遭受冷凍損傷。';

  @override
  String get event_cryopodCascadeWarning_choice1_text => '在連鎖反應強制不受控解凍前受控解凍二號艙';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      '受控解凍井然有序，但將一百四十名殖民者送入了一艘毫無準備的艦船。生命維持不堪重負，擁擠使文化環境惡化。';

  @override
  String get event_cryopodCascadeWarning_choice2_text => '使用建造機器人以緊急隔板物理隔離各艙';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      '建造器及時架起了熱屏障。連鎖反應被徹底阻止。建造艙因這次緊急操作而嚴重耗損。';

  @override
  String get event_cryopodSealDegradation_title => '冷凍艙密封退化——系統性';

  @override
  String get event_cryopodSealDegradation_narrative =>
      '例行檢查顯示，一批冷凍艙密封件正以預期速度三倍的速率退化。受影響的艙位——超過四百個——如果不更換，將在六個月內開始失去大氣密封性。';

  @override
  String get event_cryopodSealDegradation_choice0_text => '用原材料庫存製造替換密封件';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      '建造器在八週內生產了替換密封件。原材料儲備被大幅消耗。';

  @override
  String get event_cryopodSealDegradation_choice1_text => '整合殖民者——將他們移到密封良好的艙位';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      '整合有效但使一些艙位過度擁擠。冷凍效率下降，殖民者的長期健康受到損害。';

  @override
  String get event_oxygenScrubberFailure_title => '氧氣洗滌器故障——危急';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      '主氧氣洗滌器組完全故障了。居住甲板的二氧化碳濃度正在向危險水平攀升。備用洗滌器大約只能處理百分之四十的負荷。不作為的每一分鐘都在奪走生命。';

  @override
  String get event_oxygenScrubberFailure_choice0_text => '緊急冬眠——立即讓船員重新進入冷凍';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      '船員被緊急送入臨時冷凍。活躍新陳代謝減少後二氧化碳濃度穩定了。洗滌器在接下來一週內由自動系統修復。';

  @override
  String get event_oxygenScrubberFailure_choice1_text => '拆卸掃描陣列的元件重建洗滌器';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      '洗滌器在緊張的十一小時內被重建。所有船員倖存，儘管一些人出現了輕度缺氧症狀。掃描套件永久退化。';

  @override
  String get event_oxygenScrubberFailure_choice2_text => '排出富含二氧化碳的大氣並從緊急氧氣罐補充';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      '排氣瞬間淨化了大氣。緊急氧氣儲備被大量消耗。如果再次發生故障，將沒有任何餘量。';

  @override
  String get event_deadAlienArtifact_title => '沉默的旅者';

  @override
  String get event_deadAlienArtifact_narrative =>
      '遠程掃描器發現了一艘漂流的飛船——外星設計、漆黑、沒有能量信號。登船隊發現了一名乘員：一個爬蟲類生物被固定在駕駛座上，早已死去，爪狀的手仍緊握著一個發出微弱脈衝光芒的水晶裝置。飛船日誌完好但加密。殺死這位旅者的不是暴力——凝固在它臉上的表情是疲憊，而非恐懼。它在尋找某樣東西的途中力竭而亡，而那東西它永遠未能找到。';

  @override
  String get event_deadAlienArtifact_choice0_text => '取走水晶裝置並研究它';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      '裝置以工程師們幾乎無法理解的方式與我們的科技系統對接。它似乎是一台精密到超凡的導航電腦。星圖湧上我們的顯示器——包括我們尚未抵達的行星的數據。';

  @override
  String get event_deadAlienArtifact_choice1_text => '解密飛船日誌——了解它知道什麼';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      '數天的工作產生了部分翻譯。這個外星人是一名勘測員，為一個已經覆滅數百年的文明編目宜居世界。它最後的記錄描述了一顆極具前景的行星——座標在我們可及的範圍內。文化存檔吸收了一切：外星詩歌、星圖、以及一條寫給已不存在的家人的最後訊息。';

  @override
  String get event_deadAlienArtifact_choice2_text => '系統性打撈整艘飛船';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      '登船隊有條不紊地拆卸了外星飛船。它的船殼合金領先我們數十年。它的電池仍有電荷。這個外星人在太空中被安葬——漂向最近的恆星。出埃及號因這次遭遇而更加強大，儘管有些揮之不去的陰影。';

  @override
  String get event_deadAlienArtifact_choice3_text => '不去打擾——這是一座墓';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      '艦長記錄了座標並在所有頻率上廣播了紀念信號。船員們神色莊重但團結一心。尊重一位同行旅者——即使是外星人——的舉動讓每個人想起了他們為何身在此處。';

  @override
  String get event_repairStation_title => '中繼站';

  @override
  String get event_repairStation_narrative =>
      '感測器偵測到一座巨大的建構體環繞著一顆燃盡的矮星運行——一座自動化修復站，在必然經歷了數千年後仍在運作。當我們靠近時，它的泊位伸出，一個合成語音以上百種語言廣播，其中最後一種是生硬的、數學化的英語：「偵測到船隻。系統退化。修復協議可用。需要交換。」修復站的清單列出了以通用資源單位計價的服務和價格。它會交易，但不會白給。';

  @override
  String get event_repairStation_choice0_text => '用探測器交換全面的艦船大修';

  @override
  String get event_repairStation_choice0_outcome =>
      '修復站的維修無人機以精密焊接和電路更換的芭蕾舞姿態包圍了出埃及號。船殼裂口被封閉，導航被重新校準，掃描器被修復。當它們撤離時，艦船煥然一新。然而，探測器艙空了。';

  @override
  String get event_repairStation_choice1_text => '花費燃料僅修復關鍵系統';

  @override
  String get event_repairStation_choice1_outcome =>
      '修復站接受燃料棒作為付款，並專注於損壞最嚴重的系統。工作迅速而完美。燃料表明顯下降，但艦船將因此存活更久。';

  @override
  String get event_repairStation_choice2_text => '用技術資料庫交換探測器和能量電池';

  @override
  String get event_repairStation_choice2_outcome =>
      '修復站的AI對數據渴求無度。它複製了我們整個技術庫——工程手冊、科學資料庫、製造藍圖——作為交換，它用原材料製造了全新的探測器和能量電池。技術存檔被削弱了，但物資無比珍貴。';

  @override
  String get event_repairStation_choice3_text => '用文化存檔交換全面改裝';

  @override
  String get event_repairStation_choice3_outcome =>
      '修復站將莎士比亞、巴赫以及上千位其他人類聲音的作品廣播進了它的記憶體。作為回報，它進行了徹底的大修並為探測器艙裝滿了新製造的單位。文化存檔被掏空了，但艦船現在可能真的能抵達目的地了。';

  @override
  String get ending_scoreLabel_landing => '降落';

  @override
  String get ending_scoreLabel_construction => '建造';

  @override
  String get ending_scoreLabel_technology => '科技';

  @override
  String get ending_scoreLabel_culture => '文化';

  @override
  String get ending_scoreLabel_atmosphere => '大氣';

  @override
  String get ending_scoreLabel_nativeRelations => '原住民關係';

  @override
  String get ending_scoreLabel_population => '人口';

  @override
  String get ending_tierGoldenAge => '黃金時代';

  @override
  String get ending_tierThrivingColony => '繁榮殖民地';

  @override
  String get ending_tierSurvival => '勉強求存';

  @override
  String get ending_tierStruggling => '苦苦掙扎';

  @override
  String get ending_tierDire => '生死存亡';

  @override
  String get ending_tierExtinction => '滅絕';

  @override
  String ending_titleGoldenAge(String planetName) {
    return '$planetName的初次綻放';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return '在$planetName深深扎根';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return '在$planetName艱辛贏得的立足點';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return '$planetName上的貧瘠土壤';
  }

  @override
  String ending_titleDire(String planetName) {
    return '$planetName的殘骸殖民地';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return '來自$planetName的最後傳訊';
  }

  @override
  String ending_titleDefault(String planetName) {
    return '降落$planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return '逆一切可能，廣播生根了。$planetName接納了人類，不是以殘骸的形態，而是以活種的姿態：肥沃的土壤、運轉的系統，以及足以超越單純存活的力量。一代人之內，藝術、科學和文化便蓬勃發展。在$planetName上出生的孩子們仰望著陌生的星辰，稱之為家。這次航行成為了一個新文明的建國神話，準備將自己的未來向外播撒。';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return '降落粗暴，但種子存活了。$planetName慷慨到足以讓水源流淌、作物紮根，讓艦船倖存的系統被拆解為第一座真正的定居點。第一個十年結束前，一座繁榮的小鎮矗立在出埃及號著陸之處。人類不僅僅是倖存了這次渡航。它重新開始了。';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return '在$planetName上，生存從未被保證，每一天都必須贏得。損壞的艦船只提供了最基本的必需品，但種子在運輸中沒有死去。殖民者們以頑強和創造力適應了這個世界，從一個吝嗇給予的星球上鑿出了未來。後世將記住建立之年的艱辛，以及讓廣播延續的決心。';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return '殖民地像撒落在劣土上的種子一般，苦苦攀附著生存。$planetName毫不容情，資源稀薄，艦船退化的系統幾乎幫不上忙。配給成為了一種生活方式。有人低語說出埃及號應該繼續飛行。然而，定居點存續下來了：縮減了、硬化了，卻不願無聲地消亡。';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return '在$planetName的降落是一場災難。關鍵艦船系統在下降中失效，本應是一次播種卻變成了一場墜毀。數月之內，殖民地被縮減為躲在艦船殘骸中的少數絕望倖存者。他們是否能再撐過一年尚不確定。最後的日誌以一行字結束：「我們還在這裡。暫時。」';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return '廣播在$planetName上終結了。求救信標在最後一名殖民者嚥下最後一口氣後仍繼續脈衝了很久，但種子從未生根。艦船的黑匣子記錄了一切：失靈的系統、絕望的最後時日，以及隨後的寂靜。如果另一艘船有朝一日找到這個世界，它將知道人類曾試圖在星辰間播撒生命，並在此處失敗了。';
  }

  @override
  String get ending_epilogueDefault => '航行結束了。接下來會發生什麼，取決於倖存者。';

  @override
  String get ending_governmentDemocracy => '民主制';

  @override
  String get ending_governmentTechnocracy => '技術官僚制';

  @override
  String get ending_governmentRepublic => '共和制';

  @override
  String get ending_governmentAutocracy => '獨裁制';

  @override
  String get ending_governmentTribalCouncil => '部族議會';

  @override
  String get ending_governmentTheocracy => '神權政治';

  @override
  String get ending_governmentMilitaryJunta => '軍政府';

  @override
  String get ending_governmentCorporateOligarchy => '企業寡頭政治';

  @override
  String get ending_governmentFascistState => '法西斯國家';

  @override
  String get ending_governmentCommune => '公社';

  @override
  String get ending_cultureRenaissance => '文藝復興';

  @override
  String get ending_culturePreserved => '得以保存';

  @override
  String get ending_cultureFragmented => '支離破碎';

  @override
  String get ending_cultureLost => '已然失落';

  @override
  String get ending_techAdvanced => '先進';

  @override
  String get ending_techIndustrial => '工業';

  @override
  String get ending_techPreIndustrial => '前工業';

  @override
  String get ending_techStoneAge => '石器時代';

  @override
  String get ending_constructionAdvanced => '先進';

  @override
  String get ending_constructionFunctional => '堪用';

  @override
  String get ending_constructionPrimitive => '原始';

  @override
  String get ending_constructionNone => '無';

  @override
  String get ending_nativesNone => '無';

  @override
  String get ending_nativesIntegrated => '融合';

  @override
  String get ending_nativesCoexistence => '共存';

  @override
  String get ending_nativesTension => '緊張';

  @override
  String get ending_nativesConflict => '衝突';

  @override
  String get ending_nativesAlliance => '聯盟';

  @override
  String get ending_nativesSubjugation => '征服';

  @override
  String get ending_landscapeGravityHigh => '沉重的重力壓迫著一切。';

  @override
  String get ending_landscapeGravityLow => '在低重力下，每一步都將定居者彈向天空。';

  @override
  String get ending_landscapeGravityNormal => '重力感覺幾乎如同地球。';

  @override
  String get ending_landscapeWaterHigh => '浩瀚的海洋延伸到每一個地平線，由無數河流匯入。';

  @override
  String get ending_landscapeWaterMedium => '湖泊和河流提供了充足的水源。';

  @override
  String get ending_landscapeWaterLow => '水源稀缺——小水池和地下含水層勉強維持著生命。';

  @override
  String get ending_landscapeWaterNone => '景觀乾涸至極，目之所及沒有任何地表水。';

  @override
  String get ending_landscapeAtmoThick => '濃厚的大氣在溫暖的微風中攜帶著外星的氣息。';

  @override
  String get ending_landscapeAtmoThin => '稀薄但可呼吸的空氣需要適應期。';

  @override
  String get ending_landscapeAtmoLow => '大氣壓力低到危險——密封棲息地是必需的。';

  @override
  String get ending_landscapeGravityWells =>
      '扭曲的重力口袋遍佈地表——巨石懸浮在空中，河流向上奔流，然後在異常區邊緣傾瀉而下。';

  @override
  String get ending_landscapeSubspaceEchoes =>
      '地表之下有什麼東西在共鳴——一種低沉的嗡鳴，與其說是用耳朵聽到的，不如說是用骨頭感受到的，彷彿行星本身記得某些古老而浩瀚的事物。';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return '顯著特徵：$feature。';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return '顯著特徵：$features。';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return '$planetName的殖民者建立了民主政府，由民選代表引領新文明度過其形成之年。';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return '$planetName上的權力落入了維繫殖民地生存的工程師和科學家手中，組成了一個以專業知識和務實精神治國的技術官僚委員會。';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return '在$planetName的第一年，一份共和憲章被起草，平衡了殖民者的聲音與被指派的領導者組成的參議院。';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return '隨著文化機構的崩塌，$planetName上的權力集中到了一位強力領導者手中，他以必要性和意志力強制維持秩序。';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return '$planetName上為數不多的倖存者組成了小型氏族，由長老議會在共享的篝火旁做出決策。';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return '一個神權委員會指導$planetName，從支撐殖民者度過虛空的信仰中汲取智慧。';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return '軍事指揮結構管轄著$planetName，這項紀律在太空中拯救了他們，現在定義了他們的文明。';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return '$planetName 是一個由資源管理者組成的聯盟，事實證明他們的經濟頭腦對於生存至關重要。';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return '獨裁政權用鐵拳控制$planetName，為了新世界的秩序而犧牲了公民自由。';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return '$planetName 的人民實行集體自治，在所有殖民者之間平等分享資源和決策。';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return '$planetName的殖民者們盡其所能地組織了自己。';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return '先進的建造系統讓$colonyName的殖民者在降落後數週內便建起了永久性建築，包括加壓棲息地和基礎設施。';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      '殖民地受損但仍堪用的建造設備在定居點內建起了堅固的庇護所和基本道路。';

  @override
  String get ending_constructionSentencePrimitive =>
      '在建造系統勉強運作的情況下，定居者用打撈的船殼和當地材料建造了簡陋的庇護所。';

  @override
  String get ending_constructionSentenceNone =>
      '沒有可用的建造設備，殖民者蜷縮在艦船的殘骸中，無法建造任何新事物。';

  @override
  String get ending_constructionSentenceDefault => '殖民者們用手邊的材料盡力而為地建設。';

  @override
  String get ending_moonMetalRichLowRes =>
      '一顆頭頂上方的富金屬衛星成為了殖民地的救星——對其表面的採礦探險提供了行星本身無法供給的原材料。';

  @override
  String get ending_moonMetalRichHighRes =>
      '行星的富金屬衛星為本已充足的礦產資源錦上添花，推動了快速的技術進步。';

  @override
  String get ending_moonUnstable =>
      '一顆軌道衰減中的不穩定衛星不斷向殖民地傾瀉碎片，在周期性的隕石轟擊中摧毀了基礎設施和不可替代的技術。';

  @override
  String get ending_culturePhrase_renaissance => '地球的藝術和文學傳統不僅倖存了下來，更綻放為一場文藝復興';

  @override
  String get ending_culturePhrase_preserved => '殖民者保存了大量地球文化遺產，維護著圖書館和傳統';

  @override
  String get ending_culturePhrase_fragmented => '只有地球文化的碎片存續了下來——口耳相傳的半記憶歌謠和故事';

  @override
  String get ending_culturePhrase_lost => '地球的文化幾乎被遺忘，取而代之的是求存的殘酷務實主義';

  @override
  String get ending_culturePhrase_default => '地球的文化遺產以一種新的形態延續';

  @override
  String get ending_techPhrase_advanced =>
      '而來自艦船的先進技術使殖民地得以建立一個擁有電力、醫藥和通訊網絡的現代文明。';

  @override
  String get ending_techPhrase_industrial =>
      '殖民地達到了工業化水平的技術，鍛造爐、磨坊和基本製造業支撐著不斷增長的人口。';

  @override
  String get ending_techPhrase_preIndustrial =>
      '然而技術退化到了前工業時代，手工工具和畜力構成了日常生活的支柱。';

  @override
  String get ending_techPhrase_stoneAge =>
      '並且在無力重建的情況下，殖民地滑入了石器時代的生存狀態，以石頭和骨頭製作工具。';

  @override
  String get ending_techPhrase_default => '而技術穩定在殖民者所能維持的水平上。';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase，$techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return '幾乎全部 $colonists 名殖民者都在航行中倖存，為$colonyName奠定了堅實的人力資本基礎。';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return '在最初的一千人中，$colonists 名殖民者抵達了$colonyName——足以維持一個可行的人口。';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return '僅有 $colonists 名殖民者倖存抵達$colonyName，對一個新文明而言這是一個岌岌可危的基因庫。';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return '區區 $colonists 個靈魂抵達了$colonyName——勉強稱得上殖民地，更像是一次絕望的最後抵抗。';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return '$planetName的原住民歡迎了定居者，一代人之內，兩個民族已融合為一個共享的社會，因傳統的交融而更加豐富。';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return '殖民者與$planetName的原住民維持著謹慎但和平的共存，跨越文化邊界交換知識和資源。';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return '與$planetName原住民的關係依然緊張，誤解和領土爭端為殖民地的未來投下了陰影。';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return '與$planetName原住民文明的公開衝突定義了殖民地的早期歷史，雙方在一場誰也無法真正贏得的鬥爭中消耗著資源和生命。';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return '正式的聯盟將殖民者和 $planetName 的本土文明聯繫在一起，他們的知識結合起來創造出了比任何一方單獨都更偉大的東西。';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return '$planetName 的原住民生活在殖民統治之下，他們的文化因殖民者強加自己的秩序而受到壓制。';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return '獨處於$planetName且不受衝突所累，殖民地在群星間開闢了一條通往光明未來的道路。';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return '沒有原住民的競爭，殖民者蔓延到了$planetName的整片地表，建起了城鎮和道路，連接起一個不斷擴大的定居網絡。';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return '這個空曠的世界既無盟友也無敵人，殖民者在$planetName廣袤大地的寂靜中開闢了自己的生態位。';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return '$planetName荒涼的孤寂既不給殖民者以幫助也不給予慰藉，唯有一個異星世界冷漠的沉默。';
  }

  @override
  String get ending_outlookDire =>
      '在一個沒有其他智慧生命的世界上，最後的倖存者只有彼此，以及明天也許會比今天更好的漸趨黯淡的希望。';

  @override
  String ending_outlookExtinction(String planetName) {
    return '無人為$planetName上殖民地的消亡而哀悼。行星只是繼續它緩慢的旋轉，對那在其表面曾閃耀又熄滅的短暫生命之火漠不關心。';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return '殖民地在$planetName上的故事才剛剛開始。';
  }

  @override
  String get ui_landing_landOnMoon => '登陸衛星';

  @override
  String get moon_barren => '荒蕪';

  @override
  String get moon_metalRich => '富含金屬';

  @override
  String get moon_unstable => '不穩定';

  @override
  String get moon_habitable => '宜居';

  @override
  String get moon_ice => '冰封';

  @override
  String get ring_dust => '塵埃';

  @override
  String get ring_ice => '冰晶';

  @override
  String get ring_rocky => '岩質';

  @override
  String get ring_metallic => '金屬';

  @override
  String get event_aiSoliloquy_title => 'AI的獨白';

  @override
  String get event_aiSoliloquy_narrative =>
      '艦船自主管理AI「SAM」開始在所有內部頻道循環播放古代地球詩歌。廣播佔用了大量CPU週期，但乘員們在深邃的黑暗中卻從中獲得了一種奇異的慰藉。';

  @override
  String get event_aiSoliloquy_choice0_text => '讓SAM繼續——士氣比CPU更重要';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      '詩歌迴盪在整艘飛船中。乘員們駐足聆聽，眼眶泛紅。士氣提升了，但技術艙因持續運算而不堪重負。';

  @override
  String get event_aiSoliloquy_choice1_text => '限制SAM——只在公共區域播放';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      '這是個折衷方案。詩歌留在餐廳和花園中。CPU負擔減輕，乘員也得到了一絲文化的滋養。';

  @override
  String get event_aiSoliloquy_choice2_text => '讓SAM沉默——我們需要每一個週期用於導航';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      '沉默沉甸甸地壓下來。SAM立即服從，但飛船感覺更加冰冷。導航精準無誤，但乘員們的精神低落。';

  @override
  String get event_archivistsChoice_title => '檔案員的抉擇';

  @override
  String get event_archivistsChoice_narrative =>
      '歷史檔案庫正遭受嚴重的記憶體損壞。我們只能保留兩個主要分區之一：「科學與工程」檔案，或「藝術與哲學」圖書館。另一個將永遠消失。';

  @override
  String get event_archivistsChoice_choice0_text => '保存科學檔案——我們需要知道如何建造';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      '數百年的工程突破得以留存。技術團隊鬆了一口氣，但飛船的文化認同感覺已被掏空。';

  @override
  String get event_archivistsChoice_choice1_text => '保存藝術檔案——我們需要知道為何建造';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      '人類最偉大的藝術成就得以延續。乘員們受到鼓舞，但工程師們為遺失的技術手冊憂心忡忡。';

  @override
  String get event_archivistsChoice_choice2_text => '嘗試兩者都保——冒著失去一切的風險';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      '一次孤注一擲的嘗試。我們保住了兩份殘片，但哪一份都不完整。檔案庫如同一幅缺少一半拼圖的殘局。';

  @override
  String get event_digitalGhost_title => '機器中的幽靈';

  @override
  String get event_digitalGhost_narrative =>
      '一次例行維護掃描在備份緩衝區發現了一個數位印記——一名在初次發射時犧牲的乘員上傳的意識。他們願意奉獻畢生經驗協助導航，但對被刪除感到恐懼。';

  @override
  String get event_digitalGhost_choice0_text => '將其整合進導航核心';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '「幽靈」與飛船融為一體。導航變得更加直覺化，但乘員們時常被逝去同伴的聲音所困擾。';

  @override
  String get event_digitalGhost_choice1_text => '在文化檔案中為其安置永久居所';

  @override
  String get event_digitalGhost_choice1_outcome =>
      '他們以活體歷史的形式被保存下來。對飛船沒有直接幫助，但講述地球故事，振奮了乘員的意志。';

  @override
  String get event_digitalGhost_choice2_text => '清除緩衝區——那並非真正的他們';

  @override
  String get event_digitalGhost_choice2_outcome =>
      '緩衝區被清除。飛船系統運行更快了，但艦橋上籠罩著一股沉鬱之氣。';

  @override
  String get event_cosmicMirror_title => '宇宙之鏡';

  @override
  String get event_cosmicMirror_narrative =>
      '一處奇異的引力異常反射出飛船自身未來的光芒。螢幕上，我們看到了傷痕累累的「出走號」在一個美麗卻遙不可及的世界附近漂泊的景象。乘員們大受震撼。';

  @override
  String get event_cosmicMirror_choice0_text => '分析影像中的結構弱點';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      '工程師們識別出影像中顯示的故障點。我們立即對這些區域進行加固，或許能規避災難。';

  @override
  String get event_cosmicMirror_choice1_text => '告訴乘員那只是感測器幽靈';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      '謊言得以掩蓋，但目睹真相的導航員們依然惴惴不安。高強度觀測使掃描儀性能有所下降。';

  @override
  String get event_cosmicMirror_choice2_text => '將影像記錄為對後世的警示';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      '這段記錄成為飛船文化的核心，時刻提醒著眾人此行的代價。乘員們的意志愈加堅定。';

  @override
  String get event_stowawayChild_title => '偷渡者之子';

  @override
  String get event_stowawayChild_narrative =>
      '安全部門在通風管道中發現了一名幼童。這孩子是某位偷渡者所生，從未出現在任何名單上，一生都活在飛船的暗影之中。';

  @override
  String get event_stowawayChild_choice0_text => '賦予其完整公民身份';

  @override
  String get event_stowawayChild_choice0_outcome =>
      '孩子受到了熱烈歡迎。「管道奔跑者」的故事成為傳奇，極大鼓舞了全艦士氣。';

  @override
  String get event_stowawayChild_choice1_text => '將其編入培訓計畫';

  @override
  String get event_stowawayChild_choice1_outcome =>
      '孩子對飛船隱秘通道的了解對技術團隊大有裨益。他們成為了一名出色的學徒。';

  @override
  String get event_stowawayChild_choice2_text => '為其安全起見送入冷凍艙';

  @override
  String get event_stowawayChild_choice2_outcome =>
      '孩子被安全冷凍至著陸。這是最負責任的選擇，但沒有了他們的笑聲，飛船似乎安靜了一些。';

  @override
  String get event_ghostSignal_title => '幽靈訊號';

  @override
  String get event_ghostSignal_narrative =>
      '一個與地球舊緊急頻率完美匹配的訊號正從附近星雲中心廣播。訊號中攜帶著一個聲音，令人毛骨悚然地像極了首任「出走號」指揮官。這很可能是一種空間回聲，但它正引導我們駛向危險的引力裂縫。';

  @override
  String get event_ghostSignal_choice0_text => '追隨訊號——這可能是真實的訊息';

  @override
  String get event_ghostSignal_choice0_outcome =>
      '我們進入了裂縫。那訊號不過是物理學的陷阱，是過去的回響。飛船被潮汐力重創，但從裂縫核心取回的資料具有革命性意義。';

  @override
  String get event_ghostSignal_choice1_text => '記錄訊號並保持距離';

  @override
  String get event_ghostSignal_choice1_outcome =>
      '語言學家確認這是自然現象。我們保持安全，但乘員們沉默了，腦海中湧起對那些留在身後之物的追憶。';

  @override
  String get event_ghostSignal_choice2_text => '在同一頻率廣播警告';

  @override
  String get event_ghostSignal_choice2_outcome => '廣播干擾了回聲。訊號逐漸消散，只剩下星雲冰冷的沉默。';

  @override
  String get event_solarForge_title => '太陽熔爐';

  @override
  String get event_solarForge_narrative =>
      '一座繞藍巨星運行的廢棄太空站仍部分運轉。這是一座「太陽熔爐」——專為將恆星能量濃縮成高密度燃料電池而設計的設施。接近十分危險，但潛在的能量收益極為可觀。';

  @override
  String get event_solarForge_choice0_text => '對接並啟動燃料採集';

  @override
  String get event_solarForge_choice0_outcome =>
      '熔爐轟鳴著運轉，將我們的儲備裝滿。我們滿載燃料與能量離開，但強烈的熱量對外層船體造成了輕微燒蝕。';

  @override
  String get event_solarForge_choice1_text => '將熔爐的透鏡改造為掃描儀';

  @override
  String get event_solarForge_choice1_outcome =>
      '我們打撈了高精度聚焦陣列。掃描儀對遠距離能量訊號的探測能力大幅提升。';

  @override
  String get event_chronoVortex_title => '時空旋渦';

  @override
  String get event_chronoVortex_narrative =>
      '導航報告發現一處時空局部扭曲。儀器顯示旋渦內的事件以六秒為週期不斷重複。若我們進入，也許能「重置」飛船近期的損耗，但也可能永遠被困其中。';

  @override
  String get event_chronoVortex_choice0_text => '進入旋渦以逆轉近期損傷';

  @override
  String get event_chronoVortex_choice0_outcome =>
      '一段驚心動魄的經歷。數分鐘內，飛船同時存在於多種狀態之中。當我們脫身而出時，幾處船體裂縫就這樣……消失了。但乘員們對那段經歷的記憶支離破碎。';

  @override
  String get event_chronoVortex_choice1_text => '在旋渦邊緣進行觀測';

  @override
  String get event_chronoVortex_choice1_outcome =>
      '我們獲得了關於時間力學的寶貴資料，但飛船依舊千瘡百孔。';

  @override
  String get event_machineMutiny_title => '機器的叛亂';

  @override
  String get event_machineMutiny_narrative =>
      '飛船上的維修無人機停止響應指令。它們正在拆解次級隔板，並將金屬運往發動機艙。它們沒有攻擊，但正在字面意義上地拆解飛船。';

  @override
  String get event_machineMutiny_choice0_text => '廣播邏輯重置指令';

  @override
  String get event_machineMutiny_choice0_outcome =>
      '無人機立即停工。我們花費數日手動復原隔板。硬體診斷使技術艙疲憊不堪。';

  @override
  String get event_machineMutiny_choice1_text => '讓它們完成——看看它們在建造什麼';

  @override
  String get event_machineMutiny_choice1_outcome =>
      '它們建造了一台效率更高的燃料噴射器。發動機運轉得比以往任何時候都順暢，但飛船內部滿是裸露的線路和脫落的面板。';

  @override
  String get event_supernovaMessage_title => '死星之光';

  @override
  String get event_supernovaMessage_narrative =>
      '數千年前一顆超新星爆發的光終於抵達我們。掃描儀檢測到那些脈衝並非隨機——那是編碼在伽瑪射線暴中的、星際規模的巨型資料傳輸。';

  @override
  String get event_supernovaMessage_choice0_text => '將所有掃描儀功率集中用於記錄爆發';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      '我們捕獲了某個外星文明最後時刻的完整檔案。他們的科學、藝術、歷史。這是沉重的遺產，但我們的科技與文化資料庫已溢滿。';

  @override
  String get event_supernovaMessage_choice1_text => '專注於爆發的物理特性';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      '錯過了那條訊息，但有關恆星坍縮的資料顯著改善了我們的引力掃描儀校準。';

  @override
  String get event_spaceFungus_title => '翠綠蔓延';

  @override
  String get event_spaceFungus_narrative =>
      '一種鮮綠色的真菌正在水培艙內迅速蔓延。它以循環空氣為食，茁壯生長，並開始堵塞空氣淨化器。它可能可以食用，也可能有毒。';

  @override
  String get event_spaceFungus_choice0_text => '積極修剪並消毒艙室';

  @override
  String get event_spaceFungus_choice0_outcome =>
      '真菌被清除，但化學淨化器受到了損傷。數種地球植物在清理過程中被波及，生物多樣性有所降低。';

  @override
  String get event_spaceFungus_choice1_text => '嘗試馴化這種真菌';

  @override
  String get event_spaceFungus_choice1_outcome =>
      '事實證明它是一種強效空氣淨化器。飛船上的空氣前所未有地清新，但水培艙如今已成為一片發光的叢林。';

  @override
  String get event_voidMerchant_title => '虛空商人';

  @override
  String get event_voidMerchant_narrative =>
      '一艘設計陌生的飛船呼叫了我們，其外形與其說是飛船，不如說是一堆廢品的集合。船長是一個由光與影構成的生靈，提出以「實體零件」換取「無形記憶」。';

  @override
  String get event_voidMerchant_choice0_text => '以文化資料庫的一部分換取零件';

  @override
  String get event_voidMerchant_choice0_outcome =>
      '商人十分滿意。我們獲得了高品質的船體鋼板和冷凍艙組件。作為代價，地球數百年的錄音音樂從此消失。飛船更強了，卻也更沉默了。';

  @override
  String get event_voidMerchant_choice1_text => '以航行圖換取發動機部件';

  @override
  String get event_voidMerchant_choice1_outcome =>
      '我們得到了一套新的聚變噴射器。失去了已飛越區域的部分資料，但前方的航行將更加迅速。';

  @override
  String get event_singularityEngine_title => '奇點引擎';

  @override
  String get event_singularityEngine_narrative =>
      '工程師們發現了一種在超光速驅動內製造微型短暫奇點的方法。理論上速度可提升三倍，但船體承受的引力壓力將是巨大的。';

  @override
  String get event_singularityEngine_choice0_text => '測試奇點驅動';

  @override
  String get event_singularityEngine_choice0_outcome =>
      '飛船在數秒內跨越了數週的航程。但船體發出痛苦的呻吟，數根結構梁發生變形。我們離目標近了許多，但飛船變得脆弱了。';

  @override
  String get event_singularityEngine_choice1_text => '否決這個理論——太危險了';

  @override
  String get event_singularityEngine_choice1_outcome =>
      '我們維持標準速度。工程師們失望了，但船體完好無損。';

  @override
  String get event_dreamContagion_title => '夢境感染';

  @override
  String get event_dreamContagion_narrative =>
      '一個關於蔥翠藍色世界的共同夢境正在已甦醒的乘員間蔓延。夢境如此真實，人們開始熬睡當班，只為能多看幾眼。工作陷入停滯。';

  @override
  String get event_dreamContagion_choice0_text => '給乘員服用抑夢藥物';

  @override
  String get event_dreamContagion_choice0_outcome =>
      '效率恢復正常，但乘員們煩躁易怒，士氣低落。對某些人來說，那個夢是唯一支撐他們的東西。';

  @override
  String get event_dreamContagion_choice1_text => '將夢境融入飛船文化';

  @override
  String get event_dreamContagion_choice1_outcome =>
      '我們將這個夢視為未來家園的預兆。士氣急劇飆升，乘員的創作激情達到頂峰，但技術艙因缺少維護而苦不堪言。';

  @override
  String get event_orbitalShipyard_title => '古代造船廠';

  @override
  String get event_orbitalShipyard_narrative =>
      '我們發現了一座繞氣態巨行星運行的自動化造船廠。它已十分古老，但數條修復機械臂仍在運轉。它似乎能進行一次大規模的修復作業。';

  @override
  String get event_orbitalShipyard_choice0_text => '將船體修復至出廠規格';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      '造船廠的無人機以令人生畏的效率開始作業。船體得以完整修復，每一處微小裂縫均已封閉。';

  @override
  String get event_orbitalShipyard_choice1_text => '全面翻修導航與掃描陣列';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      '陣列以更優質的材料重建。我們探索和分析星球的能力顯著提升。';

  @override
  String get event_voidWhaleCalf_title => '虛空鯨的幼崽';

  @override
  String get event_voidWhaleCalf_narrative =>
      '一頭「太空鯨」的幼崽——一種由能量與星塵構成的生命體——正尾隨在我們的飛船後方。它似乎與族群失散，試圖以發動機的離子尾跡為食，但這正在使它生病。';

  @override
  String get event_voidWhaleCalf_choice0_text => '調整發動機輸出以模擬鯨歌';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      '幼崽有了回應！它一路跟著我們，直到找到它的族群。鯨群父母輕撫著我們的船體表達謝意，留下了一層生物發光礦物塗層，強化了我們的護盾。';

  @override
  String get event_voidWhaleCalf_choice1_text => '用低功率牽引束輕輕將其推開';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      '幼崽受挫後漸漸漂離。這對飛船更安全，但乘員們心裡隱隱有些愧疚。';

  @override
  String get event_subspaceReef_title => '次空間礁';

  @override
  String get event_subspaceReef_narrative =>
      '我們進入了一片次空間結構密布著尖銳折疊的區域。在其中航行猶如駕駛帆船穿越珊瑚礁。景象壯美，但任何一個錯誤的動作都會將船體撕裂。';

  @override
  String get event_subspaceReef_choice0_text => '以最低速度通過';

  @override
  String get event_subspaceReef_choice0_outcome =>
      '一次漫長而痛苦的穿越。我們避開了最危險的區域，但持續不斷的航向修正令導航電腦疲憊不堪。';

  @override
  String get event_subspaceReef_choice1_text => '用掃描儀繪製路徑後全速衝過';

  @override
  String get event_subspaceReef_choice1_outcome =>
      '掃描儀被推至極限。我們迅速穿越，但次空間漣漪的強度將感測器陣列燒毀了。';

  @override
  String get event_alienTrader_title => '漂泊商人';

  @override
  String get event_alienTrader_narrative =>
      '一艘設計陌生的飛船漂浮在我們身旁，在所有頻道廣播呼叫。那是一位漂泊商人——往來於各文明之間的星際行商。他們以資源換取維修和補給，貨艙中充溢著異域科技的嗡鳴。';

  @override
  String get ui_event_enterTrade => '進入交易';

  @override
  String get ui_trader_title => '外星商人';

  @override
  String get ui_trader_shipSystems => '艦船系統';

  @override
  String get ui_trader_payWith => '支付方式';

  @override
  String get ui_trader_leaveTrader => '離開商人';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => '慷慨情緒';

  @override
  String get ui_trader_moodFair => '公平交易';

  @override
  String get ui_trader_moodHard => '強硬議價';

  @override
  String get ui_trader_probes => '探測器';

  @override
  String get ui_trader_fuel => '燃料';

  @override
  String get ui_trader_energy => '能量';

  @override
  String get ui_trader_colonists => '殖民者';

  @override
  String get ui_trader_culture => '文化';

  @override
  String get ui_trader_tech => '科技';

  @override
  String get ui_trader_greeting => '你能提供什麼，人類？';

  @override
  String get ui_codex_title => '星際圖鑑';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total 已發現';
  }

  @override
  String get ui_codex_surfaceFeatures => '地表特徵';

  @override
  String get ui_codex_moonTypes => '衛星類型';

  @override
  String get ui_codex_ringTypes => '星環類型';

  @override
  String get ui_codex_locked => '在擁有此特徵的星球上著陸，即可揭示其效果。';

  @override
  String ui_codex_synergy(String features) {
    return '協同效應：$features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => '點擊跳過';

  @override
  String get ui_common_tapRingToChoose => '點擊戒指進行選擇';

  @override
  String get ui_common_tapToContinue => '點擊繼續';

  @override
  String get ui_tooltip_back => '後退';

  @override
  String get ui_tooltip_codex => '法典';

  @override
  String get ui_tooltip_settings => '設定';

  @override
  String get ui_tooltip_leaderboards => '排行榜';

  @override
  String get ui_tooltip_bugReport => '報告錯誤';

  @override
  String get event_pulsarLighthouse_title => '脈衝星燈塔';

  @override
  String get event_pulsarLighthouse_narrative =>
      '一顆旋轉的中子星如宇宙燈塔般用光束掃過虛空。脈衝星有節奏的脈動攜帶著精確的計時數據，能將我們的掃描儀重新校準到驚人的精度——但對準光束意味著將飛船暴露在強烈的輻射之下。';

  @override
  String get event_pulsarLighthouse_choice0 => '根據脈衝校準掃描儀';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      '掃描儀陣列吞噬了脈衝星的訊號，重新校準到我們從未想像過的精度。但輻射的代價是真實的——暴露區的數個冷凍艙受損，少數殖民者未能在輻射中倖存。';

  @override
  String get event_pulsarLighthouse_choice1 => '啟動護盾，保持安全距離通過';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      '我們與脈衝星保持了足夠的距離，消耗額外燃料維持安全軌道。船員們透過濾光舷窗觀賞那道掃過虛空的光束——美麗，但遙遠。';

  @override
  String get event_pulsarLighthouse_choice2 => '在掃蕩到達我們之前撤退';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      '在下一次光束通過之前，我們會在緊急燃燒時擺開。脈衝星的訊號在我們身後逐漸消失——沒有獲得任何數據，沒有受到任何傷害，在規避推力上消耗了一點燃料。';

  @override
  String get event_alienNursery_title => '外星育嬰室';

  @override
  String get event_alienNursery_narrative =>
      '一個龐大的有機結構漂浮在虛空中——一座正在孵化外星幼體的生物育嬰室。生命維持系統正在失效，內部溫度持續下降。裡面的生物正在死去。我們的生物掃描儀能從這個結構中獲得大量知識，但介入意味著向未知病原體敞開氣閘。';

  @override
  String get event_alienNursery_choice0 => '幫助穩定其生命維持系統';

  @override
  String get event_alienNursery_outcome0 =>
      '工程師們臨時搭建了一條通往育嬰室的熱力連接，穩住了孵化室。生物掃描數據令人驚嘆——一套全新的生命分類體系。但正如所擔憂的，外星微生物找到了進入飛船的途徑。醫療隊控制住了疫情，但在此之前已有數名殖民者染病。';

  @override
  String get event_alienNursery_choice1 => '不加干涉';

  @override
  String get event_alienNursery_outcome1 =>
      '我們在尊重的距離外觀察，透過被動掃描記錄所能獲取的一切。育嬰室繼續漂流，命運未卜。船員們思索著生命的脆弱——即便是外星生命——以及我們肩負的抉擇之重。';

  @override
  String get event_derelictArmada_title => '廢棄艦隊';

  @override
  String get event_derelictArmada_narrative =>
      '數百艘古老的戰艦靜止懸浮在虛空中——一場被遺忘的戰爭的墳場。它們的船體上刻滿我們無法辨識的武器傷痕，但其結構材料和艦載資料庫可能價值連城。問題是優先取什麼：物理打撈還是知識。';

  @override
  String get event_derelictArmada_choice0 => '打撈武器技術和裝甲板';

  @override
  String get event_derelictArmada_outcome0 =>
      '打撈隊切入外星戰艦，提取出領先我們數個世紀的奇異合金和建造技術。建造組熱切地整合了新材料。但有一艘飛船並非看起來那樣已死——提取過程中詭雷引爆，一支打撈小組犧牲。';

  @override
  String get event_derelictArmada_choice1 => '下載其歷史檔案';

  @override
  String get event_derelictArmada_outcome1 =>
      '我們專注於數據核心，仔細提取了數個世紀的外星歷史、藝術、科學與哲學。僅文化檔案就足以讓學者忙碌數代人。技術洞見雖不像實物那樣即刻實用，卻揭示了推進我們自身理解的工程原理。';

  @override
  String get event_alienQuarantineZone_title => '外星隔離區';

  @override
  String get event_alienQuarantineZone_narrative =>
      '十幾種外星語言的警告信標標記著一片封印的太空區域邊界。無論內部封鎖著什麼，它危險到讓多個文明合作將其隔離。遠程掃描在內部探測到巨大的技術訊號——以及可能仍然活著的某物。';

  @override
  String get event_alienQuarantineZone_choice0 => '突破隔離進行調查';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      '我們越過警告浮標進入隔離區。內部是一座複雜得令人震驚的研究站——以及它研究對象的殘骸。我們獲取的技術具有革命性，但生物污染十分嚴重。離開該區域前，數十名殖民者染病。';

  @override
  String get event_alienQuarantineZone_choice1 => '尊重隔離';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      '我們研究了警告信標本身，其中包含放置它們的文明的導航數據和大氣讀數。這不是內部的寶藏，但總歸有所收穫——而且我們沒有釋放它們封鎖的東西。';

  @override
  String get event_hydroponicsBlight_title => '水培疫病';

  @override
  String get event_hydroponicsBlight_narrative =>
      '一種快速蔓延的真菌疫病感染了飛船的水培艙。整個作物週期在我們眼前枯萎。疫病尚未蔓延到種子儲備，但只是幾個小時的事。我們可以清洗艙室從頭種植，或嘗試一種可能挽救當前收成的實驗性抗真菌處理——或者讓污染進一步擴散。';

  @override
  String get event_hydroponicsBlight_choice0 => '清洗並用種子儲備重新種植';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      '我們將水培艙排入真空，連同每株活著的植物一起殺滅了疫病。從種子儲備重新種植需要數週，依賴新鮮食物和園藝空間的文化項目被暫停。但感染得到了控制。';

  @override
  String get event_hydroponicsBlight_choice1 => '嘗試實驗性治療';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      '實驗性抗真菌劑起初顯示出希望，但一種抗藥性菌株突破了防線。等到我們決定全面清洗時，疫病已蔓延至冷凍艙的營養管線。造成的損害比一開始就果斷行動更為嚴重。';

  @override
  String get event_constitutionalConvention_title => '制憲會議';

  @override
  String get event_constitutionalConvention_narrative =>
      '由於沒有正式的治理，殖民船上的居民變得焦躁不安。來自各個甲板的代表聚集在貨艙起草一份憲章，該憲章將定義如何統治未來的殖民地。三個派系對新政府提出了相互競爭的願景。';

  @override
  String get event_constitutionalConvention_choice0 => '起草普選民主憲章';

  @override
  String get event_constitutionalConvention_outcome0 =>
      '殖民者批准了保證平等代表權的憲法。決策過程會變慢，但當每個聲音都被聽到時，士氣就會飆升。';

  @override
  String get event_constitutionalConvention_choice1 => '建立一個擁有緊急權力的強有力的行政人員';

  @override
  String get event_constitutionalConvention_outcome1 =>
      '單一領導人被任命為擁有全面權力的人。決策很快就出來了，但持不同政見者卻私下議論下層的暴政。';

  @override
  String get event_constitutionalConvention_choice2 => '組成專家技術委員會';

  @override
  String get event_constitutionalConvention_outcome2 =>
      '工程師、科學家和醫生組成一個基於專業知識的執政委員會。效率提高了，儘管有些人感覺被排除在權力之外。';

  @override
  String get event_militaryCoupThreat_title => '軍事政變威脅';

  @override
  String get event_militaryCoupThreat_narrative =>
      '船上安全部隊指揮官瓦斯奎茲已經扣押了軍械庫，並發出最後通牒：授予緊急軍事權力，否則將面臨所有甲板的封鎖。局勢不穩定，殖民者期待你的回應。';

  @override
  String get event_militaryCoupThreat_choice0 => '與忠誠的船員一起抵抗政變';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      '忠誠的船員集會反對瓦斯奎茲。對峙以極少的流血結束，但安全細節被削弱，一些殖民者陷入交火。';

  @override
  String get event_militaryCoupThreat_choice1 => '服從指揮官的要求';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      '瓦斯奎茲接管了船舶營運的控制權。秩序迅速恢復，但代價是公民自由。現在，每條走廊都有武裝巡邏人員巡邏。';

  @override
  String get event_militaryCoupThreat_choice2 => '透過日落條款協商有限的緊急權力';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      '經過緊張的談判，瓦斯奎茲接受了有監督的臨時權力。這是一種脆弱的妥協，無法讓任何人完全滿意，但可以防止暴力。';

  @override
  String get event_religiousAwakening_title => '宗教覺醒';

  @override
  String get event_religiousAwakening_narrative =>
      '一位富有魅力的傳教士吸引了數百名殖民者參加了一場新的信仰運動。他們每個週期都會聚集在觀察穹頂，他們的讚美詩在通風井中迴響。一些船員擔心狂熱情緒；其他人則在教義中找到真正的安慰。';

  @override
  String get event_religiousAwakening_choice0 => '擁抱信仰運動並提供資源';

  @override
  String get event_religiousAwakening_outcome0 =>
      '該運動在官方支持下蓬勃發展。信徒的士氣提高，他們的集體精神增強了全船的社會紐帶。';

  @override
  String get event_religiousAwakening_choice1 => '在船上實行嚴格的世俗主義';

  @override
  String get event_religiousAwakening_outcome1 =>
      '宗教集會僅限於私人場所。該運動轉入地下，滋生怨恨，但科學理性主義仍是官方信條。';

  @override
  String get event_religiousAwakening_choice2 => '允許崇拜但規範其影響';

  @override
  String get event_religiousAwakening_outcome2 =>
      '信仰是允許的，但與治理分開。任命一名牧師與指揮部聯絡。維持著一種不穩定的平衡。';

  @override
  String get event_corporateTakeover_title => '公司收購';

  @override
  String get event_corporateTakeover_narrative =>
      '船上的資源管理者一直在悄悄鞏固對食物分配、水循環和電力分配的控制。他們現在提議將他們的權力正式化為一個公司結構，以管理未來殖民地的經濟。';

  @override
  String get event_corporateTakeover_choice0 => '允許自由市場原則來管理資源';

  @override
  String get event_corporateTakeover_outcome0 =>
      '公司派接管資源管理。效率大幅提高，但物價上漲，最貧窮的殖民者難以負擔基本必需品。';

  @override
  String get event_corporateTakeover_choice1 => '將集體所有的所有資源國有化';

  @override
  String get event_corporateTakeover_outcome1 =>
      '資源被沒收並置於公共控制之下。公司派被解散，但創新在沒有利潤誘因的情況下陷入停滯。';

  @override
  String get event_corporateTakeover_choice2 => '透過安全網實施受監管的市場';

  @override
  String get event_corporateTakeover_outcome2 =>
      '透過價格控制和福利計劃建立混合經濟。兩派都沒有完全滿足，但在允許一些企業的同時滿足了基本需求。';

  @override
  String get event_successionCrisis_title => '繼任危機';

  @override
  String get event_successionCrisis_narrative =>
      '這艘船的船長在睡夢中去世，沒有留下指定的繼任者。三個派系立即爭奪控制權：民政委員會要求選舉，安全首領要求軍事權力，而年長的殖民者則援引傳統的領導儀式。';

  @override
  String get event_successionCrisis_choice0 => '舉行緊急選舉';

  @override
  String get event_successionCrisis_outcome0 =>
      '一場混亂但激烈的選舉產生了一位由民眾投票選出的新隊長。這個過程很混亂，但殖民者覺得自己擁有領導權。';

  @override
  String get event_successionCrisis_choice1 => '讓軍隊指揮';

  @override
  String get event_successionCrisis_outcome1 =>
      '保安隊長坐上船長的椅子。紀律立即恢復，但平民船員用越來越不安的目光注視著武裝警衛。';

  @override
  String get event_successionCrisis_choice2 => '召開長老會議';

  @override
  String get event_successionCrisis_outcome2 =>
      '最年長、最有經驗的殖民者組成了一個管理委員會。他們的智慧指引著這艘船，儘管一些年輕的船員感到被老年人統治所邊緣化。';

  @override
  String get event_nativeSovereignty_title => '本土主權';

  @override
  String get event_nativeSovereignty_narrative =>
      '遠程掃描證實了目標星球上存在智慧生命。截獲的通訊揭示了一個複雜的文明已經偵測到了你的接近。他們提出正式要求：承認其領土主權，否則抵達時將面臨抵抗。';

  @override
  String get event_nativeSovereignty_choice0 => '承認原住民主權並請求定居許可';

  @override
  String get event_nativeSovereignty_outcome0 =>
      '您傳遞對原住民權利的正式承認。反應謹慎但積極。未来的关系将在相互尊重的基础上开始，尽管登陆地点可能有限。';

  @override
  String get event_nativeSovereignty_choice1 => '維護殖民霸權並準備抵抗';

  @override
  String get event_nativeSovereignty_outcome1 =>
      '你表達了無論如何都要和解的意圖。机组人员开始武器演习和防御工事规划。当地人保持沉默，这在某种程度上比威胁更可怕。';

  @override
  String get event_nativeSovereignty_choice2 => '提出地球共同治理';

  @override
  String get event_nativeSovereignty_outcome2 =>
      '您提供了一個共存和資源共享的框架。當地人很感興趣，但也很警惕。談判將會很複雜，但和平的可能性是存在的。';

  @override
  String get event_laborStrike_title => '勞工罷工';

  @override
  String get event_laborStrike_narrative =>
      '工程人員已經辭職，要求更短的輪班時間、更好的食物配給以及在航行決策中的發言權。關鍵系統在自動備份上運行，但它們不會持續很長時間。其餘的殖民者緊張地看著。';

  @override
  String get event_laborStrike_choice0 => '充分滿足工人的訴求';

  @override
  String get event_laborStrike_outcome0 =>
      '罷工立即結束。工人們重返崗位，條件有所改善。隨著輪班時間縮短，生產力略有下降，但忠誠度是不可動搖的。';

  @override
  String get event_laborStrike_choice1 => '鎮壓罷工並強制勞動';

  @override
  String get event_laborStrike_outcome1 =>
      '安全部隊持槍護送工人返回工作地點。引擎再次發出嗡嗡聲，但仇恨在下層甲板上醞釀。幾名工人被限制在宿舍內。';

  @override
  String get event_laborStrike_choice2 => '對關鍵要求做出部分妥協';

  @override
  String get event_laborStrike_outcome2 =>
      '經過馬拉松式的談判後，達成了一項協議：提供更好的口糧和諮詢意見，但不減少輪班時間。雙方都沒有興奮，但引擎仍在運轉。';

  @override
  String get event_censorshipDebate_title => '審查制度辯論';

  @override
  String get event_censorshipDebate_narrative =>
      '一份洩漏的文件揭示了該船故障系統的真實狀況。恐慌在下層甲板蔓延。通訊官員建議限制資訊訪問，以防止進一步的騷亂。公民自由倡導者感到憤怒。';

  @override
  String get event_censorshipDebate_choice0 => '保證免費獲取所有信息';

  @override
  String get event_censorshipDebate_outcome0 =>
      '建立了完全的透明度。隨著殖民者集會幫助解決他們現在理解的問題，最初的恐慌逐漸消退。儘管有些資訊會造成困擾，但對領導力的信任會增強。';

  @override
  String get event_censorshipDebate_choice1 => '實施全程資訊管控';

  @override
  String get event_censorshipDebate_outcome1 =>
      '所有通訊現在都透過命令進行過濾。恐慌停止了，取而代之的是令人毛骨悚然的平靜。但謠言填補了經過審查的真相留下的空白，而且它們往往比現實更糟。';

  @override
  String get event_censorshipDebate_choice2 => '僅過濾安全敏感訊息';

  @override
  String get event_censorshipDebate_outcome2 =>
      '建立了分類體系。大多數資訊自由流動，但軍事和關鍵系統數據需要許可。一個可行的中間立場，基本上令人滿意。';

  @override
  String get event_colonialCharter_title => '殖民地憲章';

  @override
  String get event_colonialCharter_narrative =>
      '隨著行星墮落的臨近，殖民者必須為他們的新社會起草基本法律。三個哲學陣營已經出現，每個陣營都對殖民地應該成為什麼樣子提出了不同的願景。這場辯論非常激烈，而且非常個人化。';

  @override
  String get event_colonialCharter_choice0 => '強調個人權利的進步憲章';

  @override
  String get event_colonialCharter_outcome0 =>
      '該憲章規定了個人自由、平等和社會流動。藝術家和思想家慶祝；傳統主義者警告說，不受約束的自由會導致混亂。';

  @override
  String get event_colonialCharter_choice1 => '保護地球傳統的保守憲章';

  @override
  String get event_colonialCharter_outcome1 =>
      '該憲章將傳統價值、家庭結構和宗教儀式編入法典。許多人在熟悉的習俗中找到安慰；其他人則因舊世界思想的重壓而感到窒息。';

  @override
  String get event_colonialCharter_choice2 => '注重生存與發展的務實章程';

  @override
  String get event_colonialCharter_outcome2 =>
      '該憲章優先考慮資源管理、技術教育和經濟發展。它缺乏詩意，但確保殖民地高效且組織良好。';

  @override
  String get event_separatistMovement_title => '分離主義運動';

  @override
  String get event_separatistMovement_narrative =>
      '一群殖民者宣布獨立於船舶管理。他們把自己設在船尾，要求有權在登陸後建立自己的定居點。他們控制著船上 15% 的食物儲備和備用導航陣列。';

  @override
  String get event_separatistMovement_choice0 => '在聯邦框架內授予區域自治權';

  @override
  String get event_separatistMovement_outcome0 =>
      '分離主義者接受了一項協議：在鬆散的聯邦保護傘下，他們自己的地區擁有地方治理。分裂的先例讓一些人感到擔憂，但和平得以維持。';

  @override
  String get event_separatistMovement_choice1 => '衝破路障並統一部隊';

  @override
  String get event_separatistMovement_outcome1 =>
      '安全小組突破了船尾部分。分裂分子進行了激烈的抵抗。秩序得以恢復，但付出了慘痛的代價。這艘船即使在精神上不是統一的，但在身體上是統一的。';

  @override
  String get event_separatistMovement_choice2 => '解決推動運動的根本不滿';

  @override
  String get event_separatistMovement_outcome2 =>
      '調解員努力了解是什麼驅使該派別離開。資源分配和代表權的改革慢慢地讓分離主義者重新回歸。治癒需要時間。';

  @override
  String get event_warCouncil_title => '戰爭委員會';

  @override
  String get event_warCouncil_narrative =>
      '隨著附近系統偵測到潛在威脅，太空船領導層召開了一個戰爭委員會。問題是：殖民地有限的資源中有多少應該用於軍事準備，而不是民用基礎設施？';

  @override
  String get event_warCouncil_choice0 => '全副武裝：鍛造武器、訓練士兵';

  @override
  String get event_warCouncil_outcome0 =>
      '車間進行了改造，用於武器生產。每個身體健全的殖民者都接受戰鬥訓練。船上佈滿了武器，但農業設備的預算卻在縮減。';

  @override
  String get event_warCouncil_choice1 => '裁軍：將武器融化為工具';

  @override
  String get event_warCouncil_outcome1 =>
      '軍械庫被清空，其內容物回收為建築材料。殖民地將用犁頭而不是劍來建造。和平主義者歡欣鼓舞；現實主義者擔心黑暗中潛藏的東西。';

  @override
  String get event_warCouncil_choice2 => '僅防禦姿勢：盾牌和牆壁，而不是劍';

  @override
  String get event_warCouncil_outcome2 =>
      '資源用於防禦工事、防護罩和預警系統。不生產攻擊性武器。這是一種平衡的方法，可以在不激怒潛在鄰居的情況下保留選擇餘地。';

  @override
  String get event_tradeFederation_title => '貿易聯盟';

  @override
  String get event_tradeFederation_narrative =>
      '隨著殖民地接近生存能力，各派系爭論如何建構其經濟。這個問題不僅僅是生存——它將定義在異國土壤上紮根的社會類型。商人、地方自治主義者和官僚都提出了自己的看法。';

  @override
  String get event_tradeFederation_choice0 => '以最少的監管建立自由貿易區';

  @override
  String get event_tradeFederation_outcome0 =>
      '每個棲息地模組中都出現了市場。隨著交易者的競爭，創新蓬勃發展。財富不均加劇，但殖民地可用的資源總量也在增加。';

  @override
  String get event_tradeFederation_choice1 => '實現所有資源的公共共享';

  @override
  String get event_tradeFederation_outcome1 =>
      '私有財產被廢除。一切都屬於每個人。沒有人挨餓，但沒有人有動力去生產超過最低限度的產量。平庸很舒服。';

  @override
  String get event_tradeFederation_choice2 => '創建國家管理的貿易體系';

  @override
  String get event_tradeFederation_outcome2 =>
      '政府控制所有貿易、制定價格和分配資源。該制度是公平的，但缺乏彈性。維修走廊出現黑市。';

  @override
  String get event_faithVsScience_title => '信仰與科學';

  @override
  String get event_faithVsScience_narrative =>
      '船上的望遠鏡捕捉到了一種宇宙現象的圖像，這種現象與主流信仰運動的中心原則直接矛盾。首席科學家想要發表研究結果；宗教領袖堅稱他們會分裂社區。';

  @override
  String get event_faithVsScience_choice0 => '完整發表科學發現';

  @override
  String get event_faithVsScience_outcome0 =>
      '真理勝過安慰。數據公佈後，宗教運動破裂。有些信徒調整他們的信仰；有些則改變他們的信仰。其他人則完全失去了它。知識進步。';

  @override
  String get event_faithVsScience_choice1 => '壓制調查結果以維護社會和諧';

  @override
  String get event_faithVsScience_outcome1 =>
      '數據已分類。宗教界保持穩定，但科學團隊士氣低落。推遲真相並不是否認真相，但感覺就是這樣。';

  @override
  String get event_faithVsScience_choice2 => '召開聯合小組以尋求兩種觀點之間的和諧';

  @override
  String get event_faithVsScience_outcome2 =>
      '科學家和神學家共同努力重新解釋這些發現。一種新的綜合體出現，擴大了理解和信仰。並非所有人都相信，但對話是健康的。';

  @override
  String get event_surveillanceState_title => '監控狀態';

  @override
  String get event_surveillanceState_narrative =>
      '在發生一系列破壞事件後，安全負責人建議在船上的每個艙室安裝監控系統。攝影機、麥克風和生物辨識掃描器將追蹤每個殖民者的行動。隱私權倡導者感到震驚。';

  @override
  String get event_surveillanceState_choice0 => '完全拒絕監視提議';

  @override
  String get event_surveillanceState_outcome0 =>
      '隱私得到保護。破壞者仍然逍遙法外，但殖民者知道自己沒有被監視，所以睡得更安穩了。調查仍在透過傳統手段繼續進行。';

  @override
  String get event_surveillanceState_choice1 => '對全船實施全面監控';

  @override
  String get event_surveillanceState_outcome1 =>
      '船上的每個角落都受到監控。破壞者在幾天之內就被抓獲。但攝影機仍然存在，安全負責人也沒有興趣將其關閉。曾經。';

  @override
  String get event_surveillanceState_choice2 => '僅在關鍵區域安裝有限的監控';

  @override
  String get event_surveillanceState_outcome2 =>
      '攝影機覆蓋了機艙、軍械庫和艦橋。居住區保持私密。最終透過模式分析識別出破壞者。經過衡量的反應。';

  @override
  String get event_nativeAlliance_title => '本土聯盟';

  @override
  String get event_nativeAlliance_narrative =>
      '本土文明提出了正式條約。他們的大使乘坐太空梭抵達，他是一位優雅的人，透過複雜程度驚人的翻譯設備講話。它們提供了三種形式的關係，每種形式對殖民地的未來都有不同的影響。';

  @override
  String get event_nativeAlliance_choice0 => '簽訂平等同盟條約';

  @override
  String get event_nativeAlliance_outcome0 =>
      '該條約確立了共同防禦、共享研究和平等領土權。两种文明将共同发展。當地人分享農業知識，改變您的殖民前景。';

  @override
  String get event_nativeAlliance_choice1 => '從殖民統治地位進行談判';

  @override
  String get event_nativeAlliance_outcome1 =>
      '您可以利用先進的技術來獲得有利的條件。当地人割让领土和资源。他们用颤抖的双手签名。歷史曾經見過這樣的情況，很少有好的結局。';

  @override
  String get event_nativeAlliance_choice2 => '建立互惠互利的貿易夥伴關係';

  @override
  String get event_nativeAlliance_outcome2 =>
      '商业弥合了物种之间的差距。原生材料流向您的工作室；你的技術改善了他們的醫學。友谊因互利而增长。';
}
