// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => '航海開始';

  @override
  String get ui_title_dailyVoyage => 'デイリー航海';

  @override
  String get ui_title_dailyCompleted => 'デイリー完了';

  @override
  String get ui_title_customSeed => 'カスタムシード';

  @override
  String get ui_title_legacyHub => '遺産ハブ';

  @override
  String get ui_title_cancel => 'キャンセル';

  @override
  String get ui_title_startVoyage => '航海開始';

  @override
  String get ui_title_seedInvalid => '無効なシードコードです。 A ～ Z と 0 ～ 9 のみを使用してください。';

  @override
  String ui_voyage_sector(int count) {
    return 'SEC $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'シード: $code';
  }

  @override
  String get ui_voyage_scanners => 'スキャナー';

  @override
  String get ui_voyage_scanPlanet => '惑星走査';

  @override
  String get ui_voyage_noEnergy => 'エネルギー不足';

  @override
  String get ui_voyage_pressOn => '前進';

  @override
  String get ui_voyage_systemHull => '船殻';

  @override
  String get ui_voyage_systemNav => '航法';

  @override
  String get ui_voyage_systemCryopods => '冷凍ポッド';

  @override
  String get ui_voyage_systemCulture => '文化';

  @override
  String get ui_voyage_systemTech => '技術';

  @override
  String get ui_voyage_systemConstruct => '建造';

  @override
  String get ui_voyage_systemShields => 'シールド';

  @override
  String get ui_voyage_systemLanding => '着陸';

  @override
  String get ui_voyage_scannerAtmo => '大気走査';

  @override
  String get ui_voyage_scannerGrav => '重力走査';

  @override
  String get ui_voyage_scannerMineral => '鉱物走査';

  @override
  String get ui_voyage_scannerLife => '生命走査';

  @override
  String get ui_voyage_scannerTemp => '温度走査';

  @override
  String get ui_voyage_scannerWater => '水源走査';

  @override
  String get ui_voyage_narrative0 => '地球軌道離脱完了。冷凍睡眠ポッド安定。アーカイブリング正常。';

  @override
  String get ui_voyage_narrative1 => '外惑星域通過中。長距離スキャナー、探索範囲拡大中。';

  @override
  String get ui_voyage_narrative2 => '地球圏の通信は検出閾値以下に減衰した。';

  @override
  String get ui_voyage_narrativeFlaggedSystem => 'アーカイブ座標がフラグ付き星系と一致。針路修正中。';

  @override
  String get ui_voyage_narrativeCalibrating => 'スキャナーアレイ、深宇宙解像度の較正中。';

  @override
  String get ui_voyage_narrativeMarkedSystem => 'マーク済み星系が前方に。過去の調査データとの整合性を確認。';

  @override
  String get ui_voyage_narrativePhrase0 => '微弱な信号を前方に検出。惑星探査を開始する。';

  @override
  String get ui_voyage_narrativePhrase1 => 'FTL離脱完了。新たな恒星系が視界に入った。';

  @override
  String get ui_voyage_narrativePhrase2 => '冷凍睡眠ポッド群安定。セクター走査進行中。';

  @override
  String get ui_voyage_narrativePhrase3 => '前方アレイに新たな惑星の像が結ばれつつある。';

  @override
  String get ui_voyage_narrativePhrase4 => '恒星図測部が有望な候補をフラグ付けした。';

  @override
  String get ui_voyage_narrativePhrase5 => '観測機器が、調査に値するもう一つの世界を発見した。';

  @override
  String get ui_voyage_narrativePhrase6 => 'スキャナーが新たなターゲットをロックした。';

  @override
  String get ui_voyage_narrativePhrase7 => '航行図更新完了。候補惑星が射程内にある。';

  @override
  String get ui_scan_landHere => 'ここに着陸';

  @override
  String get ui_scan_pressOn => '前進';

  @override
  String get ui_scan_allStatsVerified => '全データ検証完了';

  @override
  String get ui_scan_launchProbe => '探査機発射';

  @override
  String get ui_scan_habitability => '居住適性';

  @override
  String get ui_scan_statAtmos => '大気';

  @override
  String get ui_scan_statTemp => '温度';

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
  String get ui_scan_statRadiation => '放射線';

  @override
  String ui_scan_probesCount(int count) {
    return 'プローブ: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return '不確実性: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => '惑星分析';

  @override
  String get ui_landing_shipStatus => '船体状況';

  @override
  String ui_landing_fuel(int amount) {
    return '燃料: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => '燃料残量警告';

  @override
  String get ui_landing_landingRiskCritical => '着陸リスク: 危機的';

  @override
  String get ui_landing_landingRiskElevated => '着陸リスク: 上昇';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      '着陸システムが深刻な損傷を受けています。大気圏突入時に貨物と入植者が失われる可能性があります。';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      '着陸システムが劣化しています。大気圏突入時の衝撃とシステム損傷が予想されます。';

  @override
  String get ui_landing_riskAssessment => 'リスク評価';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'この船はあと約$remaining回の遭遇に耐えられます';
  }

  @override
  String get ui_landing_shipMayNotSurvive => 'この船は次の航海を生き延びられないかもしれません';

  @override
  String get ui_landing_surfaceFeatures => '地表特性';

  @override
  String get ui_landing_nameYourColony => 'コロニーに名前をつけよう';

  @override
  String get ui_landing_establishColony => 'コロニー設立';

  @override
  String get ui_landing_pressOnward => '先へ進む';

  @override
  String get ui_landing_statAtmosphere => '大気';

  @override
  String get ui_landing_statTemperature => '温度';

  @override
  String get ui_landing_statWater => '水源';

  @override
  String get ui_landing_statResources => '資源';

  @override
  String get ui_landing_statGravity => '重力';

  @override
  String get ui_landing_statBiodiversity => '生物多様性';

  @override
  String get ui_landing_statAvgHealth => '平均体力';

  @override
  String get ui_landing_statHull => '船殻';

  @override
  String get ui_landing_statNavigation => '航法';

  @override
  String get ui_landing_statCryopods => '冷凍ポッド';

  @override
  String get ui_landing_statCulture => '文化';

  @override
  String get ui_landing_statTech => '技術';

  @override
  String get ui_landing_statConstructors => '建造装置';

  @override
  String get ui_landing_statShields => 'シールド';

  @override
  String get ui_landing_statLandingSys => '着陸系統';

  @override
  String get ui_ending_colonyEstablished => 'コロニー設立';

  @override
  String get ui_ending_colonyScore => 'コロニースコア';

  @override
  String get ui_ending_colonyProfile => 'コロニープロフィール';

  @override
  String get ui_ending_landscape => '景観';

  @override
  String get ui_ending_voyageRecord => '航海記録';

  @override
  String get ui_ending_scoreBreakdown => 'スコア内訳';

  @override
  String get ui_ending_total => '合計';

  @override
  String get ui_ending_achievementsUnlocked => '達成した実績';

  @override
  String get ui_ending_challengeFriend => '友達に挑戦';

  @override
  String get ui_ending_shareCard => 'カードをシェアする';

  @override
  String get ui_ending_shareCardDialogTitle => 'あなたの航海を共有しましょう';

  @override
  String get ui_ending_shareCardShare => '共有';

  @override
  String get ui_ending_shareCardCancel => 'キャンセル';

  @override
  String get ui_ending_copySeed => 'シードをコピー';

  @override
  String get ui_ending_viewLegacy => '遺産を見る';

  @override
  String get ui_ending_newVoyage => '新たな航海';

  @override
  String get ui_ending_achievementFirstLanding => '初着陸';

  @override
  String get ui_ending_achievementGoldenAge => '黄金時代';

  @override
  String get ui_ending_achievementSurvivor => '生存者';

  @override
  String get ui_ending_achievementExplorer => '探検家';

  @override
  String get ui_ending_achievementPerfectionist => '完璧主義者';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => '死の惑星の生還者';

  @override
  String get ui_ending_achievementFullCrew => '全員生還';

  @override
  String get ui_ending_achievementProbeMaster => '探査機マスター';

  @override
  String get ui_ending_achievementIronHull => '鉄の船殻';

  @override
  String get ui_ending_achievementLeapOfFaith => '信仰の跳躍';

  @override
  String get ui_gameOver_missionFailed => '任務失敗';

  @override
  String get ui_gameOver_voyageRecord => '航海記録';

  @override
  String get ui_gameOver_encountersSurvived => '生存した遭遇数';

  @override
  String get ui_gameOver_probesRemaining => '残存探査機';

  @override
  String get ui_gameOver_colonistsRemaining => '残存入植者';

  @override
  String get ui_gameOver_finalShipHealth => '最終船体状態';

  @override
  String get ui_gameOver_planetsSkipped => '通過した惑星';

  @override
  String get ui_gameOver_damageTaken => '被害総量';

  @override
  String get ui_gameOver_fuelRemaining => '残存燃料';

  @override
  String get ui_gameOver_energyRemaining => '残存エネルギー';

  @override
  String get ui_gameOver_challengeFriend => '友達に挑戦';

  @override
  String get ui_gameOver_viewLegacy => '遺産を見る';

  @override
  String get ui_gameOver_newVoyage => '新たな航海';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\n生き延びられなかった… $reason。\n同じ航路でもっとうまくやれると思う？\nstellarbroadcast://play?seed=$seedCode\n\nアプリをお持ちでない方はこちら\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      '最後の入植者が冷凍睡眠の中で息を引き取った——いかなる緊急プロトコルも防ぎ得なかった連鎖障害だった。エクソダスは航行を続けた。自動システムと凍てついた沈黙だけを載せた幽霊船として。その使命が潰えたのは、大惨事の一瞬ではなく、一人また一人と命が消えていく緩慢な消耗の果てだった。';

  @override
  String get ui_gameOver_epilogueHull =>
      '船殻は静寂の中で崩壊した——金属疲労が無数の微小衝突によって蓄積し、ついに船体を保てなくなったのだ。大気が虚空へと流れ出した。植民船エクソダスは砕け散り、その残骸は星々の間に漂う太古の破片野に加わった。救難信号が受信されることは二度となかった。';

  @override
  String get ui_gameOver_epilogueNav =>
      '航法なしに、エクソダスは未知の宇宙へと漂流した——星図は無用となり、軌道修正は不可能だった。船は闇の中を航行し続け、眠る乗客たちは自分たちの目的地が永遠に置き換えられたことを知る由もなかった。今もなお船は漂っている、と言う者がいる。終わりなき夜の中の幽霊船として。';

  @override
  String get ui_gameOver_epilogueCryopod =>
      '冷凍睡眠ポッドは一つまた一つと機能を停止していった——いかなる緊急プロトコルも阻止できない連鎖だった。入植者たちは二度と目覚めることはなかった。エクソダスはプログラムされた航路を辿り続けた。やがて辿り着くであろう世界へ沈黙だけを運ぶ墓標船として。凍てついた眠りの中で果てた夢の記念碑として。';

  @override
  String get ui_gameOver_epilogueDefault =>
      'エクソダスは沈黙した。その使命も、乗組員も、人類の希望という積荷も——すべてが星々の間の無関心な広大さに呑まれた。いつの日か別の文明がこの残骸を見つけ、どんな勇敢な種族がこの虚空を渡ろうとしたのかと思いを馳せるかもしれない。';

  @override
  String get ui_settings_title => '設定';

  @override
  String get ui_settings_music => '音楽';

  @override
  String get ui_settings_soundEffects => '効果音';

  @override
  String get ui_settings_haptics => '振動';

  @override
  String get ui_settings_premium => 'プレミアム';

  @override
  String get ui_settings_goPremium => 'プレミアムへ';

  @override
  String get ui_settings_enabled => '有効';

  @override
  String get ui_settings_volume => '音量';

  @override
  String get ui_settings_language => '言語';

  @override
  String get ui_settings_systemDefault => 'システムのデフォルト';

  @override
  String get ui_settings_statsPosition => '統計とボタンの位置';

  @override
  String get ui_settings_statsLeft => '左';

  @override
  String get ui_settings_statsRight => '右';

  @override
  String get ui_legacy_title => '遺産ハブ';

  @override
  String get ui_legacy_commanderStats => '司令官統計';

  @override
  String get ui_legacy_highScores => 'ハイスコア';

  @override
  String get ui_legacy_upgrades => 'アップグレード';

  @override
  String get ui_legacy_achievements => '実績';

  @override
  String get ui_legacy_voyageLog => '航海記録';

  @override
  String get ui_legacy_voyages => '航海数';

  @override
  String get ui_legacy_bestScore => '最高得点';

  @override
  String get ui_legacy_legacyPts => '遺産ポイント';

  @override
  String get ui_legacy_completed => '完了';

  @override
  String get ui_legacy_notYetPlayed => '未プレイ';

  @override
  String get ui_legacy_dailyHistory => 'デイリー履歴';

  @override
  String get ui_premium_goPremium => 'プレミアムへ';

  @override
  String get ui_premium_subtitle => 'ミッションを支援し、指揮権をアップグレードしよう。';

  @override
  String get ui_premium_removeAds => 'すべての広告を永久に削除';

  @override
  String get ui_premium_supportIndie => 'インディー開発を支援';

  @override
  String get ui_premium_exclusiveTitle => '限定司令官称号';

  @override
  String get ui_premium_priorityFeatures => '優先機能リクエスト';

  @override
  String get ui_premium_lifetime => '永久版';

  @override
  String get ui_scannerUpgrade_title => 'スキャナー強化';

  @override
  String get ui_scannerUpgrade_subtitle => '強化するスキャナーを選択';

  @override
  String get ui_scannerUpgrade_skip => 'スキップ';

  @override
  String get ui_scannerUpgrade_max => '最大';

  @override
  String get ui_scannerUpgrade_atmospheric => '大気圏';

  @override
  String get ui_scannerUpgrade_gravimetric => '重力計測';

  @override
  String get ui_scannerUpgrade_mineral => '鉱物';

  @override
  String get ui_scannerUpgrade_lifeSigns => '生命徴候';

  @override
  String get ui_scannerUpgrade_temperature => '温度';

  @override
  String get ui_scannerUpgrade_water => '水源';

  @override
  String get ui_event_continue => '続行';

  @override
  String get ui_event_tapToSkip => 'タップでスキップ';

  @override
  String get ui_event_colonists => '入植者';

  @override
  String get ui_event_landing => '着陸';

  @override
  String get ui_event_atmScan => '大気走査';

  @override
  String get ui_event_gravScan => '重力走査';

  @override
  String get ui_event_minScan => '鉱物走査';

  @override
  String get ui_event_lifeScan => '生命走査';

  @override
  String get ui_event_tempScan => '温度走査';

  @override
  String get ui_event_h2oScan => '水源走査';

  @override
  String get onboarding_page0_title => '人類最後の希望';

  @override
  String get onboarding_page0_description =>
      '地球は死にゆく。世界各国の政府は最後の資源を結集し、ただ一隻の船を建造した——人類の残りを星々へと運ぶ植民船である。';

  @override
  String get onboarding_page1_title => '新たな故郷を求めて';

  @override
  String get onboarding_page1_description =>
      '星々の間の未知の虚空を航行せよ。異星の世界を走査し、宇宙の脅威に立ち向かい、不可能な選択を迫られる。';

  @override
  String get onboarding_page2_title => 'あなたの遺産は続く';

  @override
  String get onboarding_page2_description =>
      '航海のたびに人類は新たな知見を得る。遺産ポイントを獲得して恒久的なアップグレードを解放し、星々にその名を刻もう。';

  @override
  String get onboarding_page3_title => 'あなたのプライバシー、あなたの選択';

  @override
  String get onboarding_page3_description => 'ステラー・ブロードキャストの体験方法をお選びください。';

  @override
  String get planet_tierUtopia => '理想郷';

  @override
  String get planet_tierParadise => '楽園';

  @override
  String get planet_tierHabitable => '居住可能';

  @override
  String get planet_tierHarsh => '過酷';

  @override
  String get planet_tierHostile => '敵対的';

  @override
  String get planet_tierDeathWorld => '死の惑星';

  @override
  String get planet_featurePlantLife => '植物生態系';

  @override
  String get planet_featureEdiblePlants => '食用植物';

  @override
  String get planet_featurePoisonousPlants => '有毒植物';

  @override
  String get planet_featureUnicellularLife => '単細胞生物';

  @override
  String get planet_featureDangerousFauna => '危険動物相';

  @override
  String get planet_featureTameableFauna => '馴化可能動物相';

  @override
  String get planet_featureAirtightCaves => '気密洞窟';

  @override
  String get planet_featureInsulatedCaves => '断熱洞窟';

  @override
  String get planet_featureBarrenMoon => '不毛の月';

  @override
  String get planet_featureMetalRichMoon => '金属豊富な月';

  @override
  String get planet_featureUnstableMoon => '不安定な月';

  @override
  String get planet_featureOutstandingBeauty => '稀有な美しさ';

  @override
  String get planet_featureOutstandingUgliness => '稀有な醜さ';

  @override
  String get planet_featureAncientRuins => '古代遺跡';

  @override
  String get planet_featureMonuments => '記念碑';

  @override
  String get planet_featureRapidRotation => '高速自転';

  @override
  String get planet_featureSlowRotation => '低速自転';

  @override
  String get planet_featureVolcanicActivity => '火山活動';

  @override
  String get planet_featureTectonicInstability => '地殻不安定';

  @override
  String get planet_featureElectricalStorms => '電気嵐';

  @override
  String get planet_featureToxicSpores => '有毒胞子';

  @override
  String get planet_featureDeepOceans => '深海';

  @override
  String get planet_featureGeothermalVents => '地熱噴出孔';

  @override
  String get planet_featureStrongMagnetosphere => '強磁気圏';

  @override
  String get planet_featureWeakMagnetosphere => '弱磁気圏';

  @override
  String get planet_featureMegafauna => '巨大動物群';

  @override
  String get planet_featureSymbioticOrganisms => '共生生物';

  @override
  String get planet_featureGravityWells => '重力井戸';

  @override
  String get planet_featureSubspaceEchoes => '亜空間残響';

  @override
  String get planet_featureBioluminescentLife => '生物発光生命体';

  @override
  String get planet_featureAquaticMegafauna => '水棲巨大生物';

  @override
  String get planet_featureFloatingIslands => '浮遊島';

  @override
  String get planet_featureCrystalCaverns => '水晶洞窟';

  @override
  String get planet_featureLavaTubes => '溶岩チューブ';

  @override
  String get planet_featureIceTunnels => '氷のトンネル';

  @override
  String get planet_featureOrbitalWreckage => '軌道上残骸';

  @override
  String get planet_featureMegastructuralFragments => '巨大構造物の断片';

  @override
  String get planet_featureAncientObservatory => '古代観測所';

  @override
  String get planet_featureExtremeSeasons => '極端な季節';

  @override
  String get planet_featureCryovolcanism => '低温火山活動';

  @override
  String get planet_featureFloatingKelpForests => '浮遊ケルプ林';

  @override
  String get planet_featureSingingCrystals => '歌う水晶';

  @override
  String get planet_featureFertileSoil => '肥沃な土壌';

  @override
  String get planet_featureHelium3Deposits => 'ヘリウム3鉱床';

  @override
  String get planet_featureExoticIsotopes => '異種同位体';

  @override
  String get planet_featureMedicinalFlora => '薬用植物';

  @override
  String get planet_featurePerpetualAurora => 'パーペチュアル オーロラ';

  @override
  String get planet_featurePetrifiedMegaflora => '化石化したメガフローラ';

  @override
  String get planet_featureUndergroundRivers => '地下河川';

  @override
  String get planet_featureObsidianPlains => '黒曜石平原';

  @override
  String get planet_featureSaltFlats => 'ソルトフラッツ';

  @override
  String get planet_featureCarnivorousFlora => '肉食植物';

  @override
  String get planet_featureGhostCities => 'ゴーストシティ';

  @override
  String get planet_featureArchiveVaults => 'アーカイブ保管庫';

  @override
  String get planet_featureSinkholeFields => 'シンクホールフィールド';

  @override
  String get planet_featureApexPredator => 'アペックス・プレデター';

  @override
  String get ui_monthJan => '1月';

  @override
  String get ui_monthFeb => '2月';

  @override
  String get ui_monthMar => '3月';

  @override
  String get ui_monthApr => '4月';

  @override
  String get ui_monthMay => '5月';

  @override
  String get ui_monthJun => '6月';

  @override
  String get ui_monthJul => '7月';

  @override
  String get ui_monthAug => '8月';

  @override
  String get ui_monthSep => '9月';

  @override
  String get ui_monthOct => '10月';

  @override
  String get ui_monthNov => '11月';

  @override
  String get ui_monthDec => '12月';

  @override
  String get event_asteroidField_title => '小惑星帯';

  @override
  String get event_asteroidField_narrative =>
      '長距離スキャナーが航路上に密集する小惑星帯を検出。航法部は二つの選択肢を算出した——最も薄い回廊を一気に突破する危険な直進か、燃料備蓄を消費し航法アレイに負荷をかける長い迂回か。';

  @override
  String get event_asteroidField_choice0_text => '回廊を突破する';

  @override
  String get event_asteroidField_choice0_outcome =>
      '微小衝突が船殻を叩き、船体が激しく揺れた。何とか通過したが、無傷ではなかった。';

  @override
  String get event_asteroidField_choice1_text => '遠回りする';

  @override
  String get event_asteroidField_choice1_outcome =>
      '迂回は貴重な燃料を消費し、航法コンピューターに負担をかけたが、船殻は無傷だった。';

  @override
  String get event_asteroidField_choice2_text => '採掘ドローンで道を切り開く';

  @override
  String get event_asteroidField_choice2_outcome =>
      'ドローンが安全な航路を切り開き、有用な鉱物を採集したが、その作業で技術区画のリソースが枯渇した。';

  @override
  String get event_asteroidField_choice3_text => '探査機を囮として放出する';

  @override
  String get event_asteroidField_choice3_outcome =>
      '探査機が最も密集した群れを船から引き離した。わずかな擦過傷だけで切り抜けた。';

  @override
  String get event_solarFlare_title => '太陽フレア接近';

  @override
  String get event_solarFlare_narrative =>
      '近傍の恒星が巨大なコロナ質量放出を起こした。荷電粒子の波が数分以内に到達する。シールドに電力を集中させるか、入植者を船核に退避させるか、そのまま耐え凌ぐか。';

  @override
  String get event_solarFlare_choice0_text => '全電力をシールドに転送';

  @override
  String get event_solarFlare_choice0_outcome =>
      'シールドは持ちこたえたが、電力サージで二次システムが焼損した。';

  @override
  String get event_solarFlare_choice1_text => '入植者を遮蔽核区画へ移動';

  @override
  String get event_solarFlare_choice1_outcome =>
      '入植者は無傷で生還したが、外部デッキが放射線被害を受けた。';

  @override
  String get event_solarFlare_choice2_text => '耐え凌ぐ——全員衝撃に備えよ';

  @override
  String get event_solarFlare_choice2_outcome =>
      'フレアが直撃した。システムが明滅するが、壊滅的な被害には至らなかった。しかし士気は打撃を受けた。';

  @override
  String get event_solarFlare_choice3_text => '探査機を放出して波面を計測する';

  @override
  String get event_solarFlare_choice3_outcome =>
      '探査機が精密な波面データを送信し、船体を最適な角度に保つことができた。スキャナーの損傷は最小限に抑えられた。';

  @override
  String get event_nebulaPassage_title => '星雲通過';

  @override
  String get event_nebulaPassage_narrative =>
      '輝く星雲が航路を横切っている。通過すればエネルギーセルを充電できるが、スキャナーアレイに干渉するかもしれない。迂回すれば安全だが遅くなる。';

  @override
  String get event_nebulaPassage_choice0_text => '星雲を突っ切る';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      '星雲のイオン化ガスが動力セルを充電したが、スキャナーの較正が乱れた。';

  @override
  String get event_nebulaPassage_choice1_text => '縁を沿って通過する';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      '部分的な充電を得つつ、干渉は最小限だった。安全な妥協策だ。';

  @override
  String get event_microMeteorite_title => '微小隕石嵐';

  @override
  String get event_microMeteorite_narrative =>
      '数秒前まで不可視だった微小隕石の群れが前方船殻装甲を削り取っている。損害制御班が緊急出動した。';

  @override
  String get event_microMeteorite_choice0_text => '緊急回転——装甲後部を正面に';

  @override
  String get event_microMeteorite_choice0_outcome =>
      '機動は成功した。後部装甲が最悪の衝撃を吸収したが、航法ジャイロに激しい負荷がかかった。';

  @override
  String get event_microMeteorite_choice1_text => '修理ドローンを嵐の中に展開';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'ドローンがリアルタイムで船殻を補修したが、数機が失われた。技術リソースが枯渇した。';

  @override
  String get event_microMeteorite_choice2_text => '探査機を爆破して群れを散らす';

  @override
  String get event_microMeteorite_choice2_outcome =>
      '探査機の爆発が微小隕石群を分散させた。船殻に到達したのはわずかな破片だけだった。';

  @override
  String get event_gravityWell_title => '未知の重力井戸';

  @override
  String get event_gravityWell_narrative =>
      '不可視の重力井戸に捕らえられ、船が針路から逸れた。エンジンが引力に抗って唸りを上げる。全力噴射で脱出するか、スイングバイで加速するか——代償は構造への負荷だ。';

  @override
  String get event_gravityWell_choice0_text => '全力噴射——脱出する';

  @override
  String get event_gravityWell_choice0_outcome => 'エンジンが咆哮し、船殻が軋んだ。だが無事に離脱した。';

  @override
  String get event_gravityWell_choice1_text => 'スイングバイ機動';

  @override
  String get event_gravityWell_choice1_outcome =>
      'スイングバイは見事に成功した。速度を得たが、G力が冷凍ポッドのシールに負荷をかけた。';

  @override
  String get event_crewUnrest_title => '乗組員の不穏';

  @override
  String get event_crewUnrest_narrative =>
      '覚醒中の入植者の一派が、評議会に対し冷凍睡眠からの永久離脱を請願している。凍った黄昏の中に生きるのは非人道的だと主張する。冷凍区画のスタッフは、目覚める者が増えれば物資が急速に消耗すると警告する。';

  @override
  String get event_crewUnrest_choice0_text => '自発的な解凍を許可する';

  @override
  String get event_crewUnrest_choice0_outcome => '家族が再会し士気が急上昇したが、資源消費が跳ね上がった。';

  @override
  String get event_crewUnrest_choice1_text => '要請を却下——安全が最優先';

  @override
  String get event_crewUnrest_choice1_outcome => '入植者たちは従ったが、廊下に怨嗟が燻り始めた。';

  @override
  String get event_crewUnrest_choice2_text => '妥協案——交代制の解凍サイクル';

  @override
  String get event_crewUnrest_choice2_outcome =>
      '均衡のとれた解決策だ。全員がある程度の覚醒時間を得たが、冷凍ポッドのサイクリングが摩耗を招いた。';

  @override
  String get event_stowaway_title => '密航者発見';

  @override
  String get event_stowaway_narrative =>
      '積荷目録局の監査官が、第7貨物室に未登録の人物が潜んでいるのを発見した。彼女は打ち上げ名簿から外された遺伝学者だと名乗る。その技術は計り知れない価値があるかもしれない——あるいは彼女は破壊工作員かもしれない。';

  @override
  String get event_stowaway_choice0_text => '歓迎する——すべての知性が必要だ';

  @override
  String get event_stowaway_choice0_outcome =>
      'バスケス博士は優秀だった。彼女の遺伝学の専門知識が冷凍ポッドの効率を向上させたが、一部の乗組員は不信感を抱いた。';

  @override
  String get event_stowaway_choice1_text => '拘束する——信頼は獲得するものだ';

  @override
  String get event_stowaway_choice1_outcome =>
      '彼女は拘束下で協力し、やがて制限付きアクセスを得た。乗組員はより安心した。';

  @override
  String get event_stowaway_choice2_text => '着陸まで冷凍睡眠に戻す';

  @override
  String get event_stowaway_choice2_outcome =>
      '実利的な解決策だ。彼女の技術は将来のために保存されたが、倫理的な議論が乗組員を分断した。';

  @override
  String get event_mutinyBrewing_title => '反乱の兆し';

  @override
  String get event_mutinyBrewing_narrative =>
      'ブリッジ監視班が、指揮権を掌握し、より近い、居住には不向きな星系へ針路を変更しようとする士官グループの通信を傍受した。彼らは現在の進路が死への片道切符だと信じている。';

  @override
  String get event_mutinyBrewing_choice0_text => '公然と対峙する——透明性が何より大切だ';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      '対峙は緊迫したが、航法データを見せられた反乱者たちは鎮まった。信頼は揺らいだ。';

  @override
  String get event_mutinyBrewing_choice1_text => '首謀者を静かに異動させる';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      '陰謀は公にならずに消散した。人気のあった士官たちの異動を不審に思う者もいたが、秩序は保たれた。';

  @override
  String get event_culturalSchism_title => '文化の分裂';

  @override
  String get event_culturalSchism_narrative =>
      '船内の二つの文化集団が、新しいコロニーの統治方法を巡って激しく対立している。一方は直接民主制を要求し、他方は技術官僚評議会を主張する。緊張は沸点に達している。';

  @override
  String get event_culturalSchism_choice0_text => '拘束力のある国民投票を実施';

  @override
  String get event_culturalSchism_choice0_outcome =>
      '民主制が辛うじて勝利した。敗れた側はしぶしぶ結果を受け入れたが、統一は脆い。';

  @override
  String get event_culturalSchism_choice1_text => '混合制を導入——双方を完全には満足させない';

  @override
  String get event_culturalSchism_choice1_outcome =>
      '両側とも声を聞かれたと感じたが、勝利は得られなかった。不安定な平和が保たれている。';

  @override
  String get event_culturalSchism_choice2_text => '決定を延期——今は生存に集中する';

  @override
  String get event_culturalSchism_choice2_outcome =>
      '問題の先送りは今日の衝突を避けるが、明日のために蓄積する。';

  @override
  String get event_birthInSpace_title => '深宇宙初の誕生';

  @override
  String get event_birthInSpace_narrative =>
      'あらゆる規定に反して、船内で子供が生まれた——星々の間に生を受けた最初の人類だ。この出来事は強力な象徴だが、資源配分と不確かな未来に新しい命をもたらすことの倫理について疑問を投げかける。';

  @override
  String get event_birthInSpace_choice0_text => '祝おう——これこそが希望の姿だ';

  @override
  String get event_birthInSpace_choice0_outcome =>
      '命名式が船上のすべての心を高揚させた。一夜だけ、星々が冷たく感じなくなった。祝典により冷凍ポッド監視のローテーションに一時的な乱れが生じた。';

  @override
  String get event_birthInSpace_choice1_text => '静かに受け入れる——資源は限られている';

  @override
  String get event_birthInSpace_choice1_outcome =>
      '慎重な対応だ。子供は歓迎されたが、雰囲気は実利主義で抑えられた。';

  @override
  String get event_derelictShip_title => '漂流植民船';

  @override
  String get event_derelictShip_narrative =>
      'スキャナーが虚空を漂う廃船を検出した——数年前に打ち上げられた別の植民船だ。暗く静寂に包まれている。サルベージ品があるかもしれない、生存者がいるかもしれない、あるいはもっと恐ろしいものが。';

  @override
  String get event_derelictShip_choice0_text => '乗り込んでサルベージする';

  @override
  String get event_derelictShip_choice0_outcome =>
      '突入班が船殻装甲板と無傷の技術モジュールを回収した。生存者はいなかった。航海日誌は凄惨な物語を語っていた。';

  @override
  String get event_derelictShip_choice1_text => '遠距離からスキャンする——危険を冒さない';

  @override
  String get event_derelictShip_choice1_outcome =>
      'リモートスキャンで有用な航法データが得られたが、物理的なサルベージはなかった。乗組員はより安らかに眠れた。';

  @override
  String get event_derelictShip_choice2_text => '追悼信号を送信して先へ進む';

  @override
  String get event_derelictShip_choice2_outcome =>
      '失われた者たちへの黙祷。乗組員は厳粛になったが、目的意識で結束した。';

  @override
  String get event_alienProbe_title => '異星の探査機';

  @override
  String get event_alienProbe_narrative =>
      '明らかに人工的な小さな物体が我々の速度に合わせ、未知のエネルギーで船を走査し始めた。呼びかけに応答しない。その表面は液体のように変化する記号で覆われている。';

  @override
  String get event_alienProbe_choice0_text => '捕獲して調査する';

  @override
  String get event_alienProbe_choice0_outcome =>
      '探査機は研究室に収容された。その技術は我々の数十年先を行っている——技術チームは歓喜した。';

  @override
  String get event_alienProbe_choice1_text => '走査を反射する——データを交換する';

  @override
  String get event_alienProbe_choice1_outcome =>
      '光と数学による奇妙な対話が始まった。星図に、プログラムしたことのない航路が突如として現れた。';

  @override
  String get event_alienProbe_choice2_text => '破壊する——異星の追跡は許容できない';

  @override
  String get event_alienProbe_choice2_outcome =>
      '探査機は音もなく砕け散った。あれはファーストコンタクトだったのか？乗組員は永遠に知ることができない。';

  @override
  String get event_ancientBeacon_title => '古代のビーコン';

  @override
  String get event_ancientBeacon_narrative =>
      '虚空の深奥で、人類文明よりも古い信号を発するビーコンが脈動している。その周波数は、我々のデータベースに存在しない星系を示す星図を含んでいるようだ。';

  @override
  String get event_ancientBeacon_choice0_text => 'その地図に従う——運命は勇者に味方する';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      '新たな進路は未知の宇宙へと導く。スキャナーが前方に驚くべき何かを検出した。';

  @override
  String get event_ancientBeacon_choice1_text => '記録して現在の針路を維持する';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'データは将来の世代のためにアーカイブされた。乗組員は慎重なアプローチを尊重した。';

  @override
  String get event_frozenGarden_title => '凍りついた庭園';

  @override
  String get event_frozenGarden_narrative =>
      '小惑星に凍った生態系が内包されている——数千年にわたり結晶化した氷の中に保存された異星の植物だ。我々が入植する世界を豊かにできるかもしれないが、解凍は汚染のリスクを伴う。';

  @override
  String get event_frozenGarden_choice0_text => '慎重に標本を採取する';

  @override
  String get event_frozenGarden_choice0_outcome =>
      '植物学者たちが数十種の異星生物を保存した。目標惑星の生物多様性の可能性が飛躍的に高まった。';

  @override
  String get event_frozenGarden_choice1_text => 'サンプルのみ採取——リスクを最小限に';

  @override
  String get event_frozenGarden_choice1_outcome =>
      '保守的なアプローチで、汚染リスクなしに有用なデータが得られた。';

  @override
  String get event_frozenGarden_choice2_text => '手を出さない——異星の生物学は危険すぎる';

  @override
  String get event_frozenGarden_choice2_outcome =>
      '乗組員は後方センサーで凍りついた庭園が縮小していくのを見つめた。宝を置き去りにしたと感じる者もいた。';

  @override
  String get event_dataCache_title => '先駆者のデータキャッシュ';

  @override
  String get event_dataCache_narrative =>
      '漂流する小惑星体の中に、明らかに人工的なデータキャッシュが発見された。情報量は膨大だが、異星の数学的枠組みで暗号化されている。';

  @override
  String get event_dataCache_choice0_text => '計算リソースを復号に充てる';

  @override
  String get event_dataCache_choice0_outcome =>
      '数日間の処理の末、キャッシュは先進的なテラフォーミングアルゴリズムを明かした。技術チームは畏敬の念を抱いた。';

  @override
  String get event_dataCache_choice1_text => '生データをコピーして先へ進む';

  @override
  String get event_dataCache_choice1_outcome =>
      '暗号化されたデータは将来の分析のために保存された。いつかコロニーが解読するかもしれない。';

  @override
  String get event_hullBreach_title => '船殻破損——第7デッキ';

  @override
  String get event_hullBreach_narrative =>
      '構造破壊が第7デッキを引き裂いた。大気が宇宙空間に漏出している。緊急隔壁は持ちこたえているが、三名の乗組員が反対側に取り残されている。';

  @override
  String get event_hullBreach_choice0_text => '封鎖前に救助チームを送る';

  @override
  String get event_hullBreach_choice0_outcome =>
      'チームは間一髪で全員を救出した。救出は英雄的だったが、破損の長期化で船殻がさらに弱体化した。';

  @override
  String get event_hullBreach_choice1_text => '直ちに隔壁を封鎖する';

  @override
  String get event_hullBreach_choice1_outcome =>
      '破損は封じ込められた。取り残された三名は別経路で脱出し、動揺しながらも無事だった。船殻の被害は最小限に抑えられた。';

  @override
  String get event_hullBreach_choice2_text => '探査機の素材を使って破損を補修する';

  @override
  String get event_hullBreach_choice2_outcome =>
      '探査機のチタン外殻が緊急船殻パッチとして転用された。最小限の被害で迅速に破損が封じられた。';

  @override
  String get event_navMalfunction_title => '航法システム異常';

  @override
  String get event_navMalfunction_narrative =>
      '主航法コンピューターが矛盾する進路を出力している。船は針路から逸脱中だ。バックアップシステムは機能しているが精度が劣る。';

  @override
  String get event_navMalfunction_choice0_text => '主系統を再起動する——ダウンタイムを受け入れる';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'システム再起動中、一時間の推測航法を強いられた。航法は90%の効率で復旧した。';

  @override
  String get event_navMalfunction_choice1_text => '恒久的にバックアップに切り替える';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'バックアップシステムは信頼性があるが精度に欠ける。目的地には辿り着けるが、優雅にとはいかない。';

  @override
  String get event_navMalfunction_choice2_text => '旧式星図で手動天測航法を行う';

  @override
  String get event_navMalfunction_choice2_outcome =>
      '航法士が恒星視差を使って手動で位置を算出した。成功し、乗組員はアナログ手法への信頼を得た。';

  @override
  String get event_cryopodFailure_title => '冷凍ポッド連鎖障害';

  @override
  String get event_cryopodFailure_narrative =>
      '冷却系統の故障が第3冷凍ポッド区画で連鎖を引き起こした。対処しなければ200名の入植者が緊急解凍を開始する——生存可能だが過酷でリソースを大量に消費するプロセスだ。';

  @override
  String get event_cryopodFailure_choice0_text => '緊急冷却液投入——ポッドを救う';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      '技術者が区画に予備冷却液を注入した。ポッドは安定したが、冷却液の備蓄が危機的水準に低下した。最も損傷の激しいポッドの五名は救えなかった。';

  @override
  String get event_cryopodFailure_choice1_text => '制御下で解凍——安全に覚醒させる';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200名の入植者が動揺しながらも無事に覚醒した。食い扶持が増えたが、働き手も増えた。空になったポッドは封鎖された。';

  @override
  String get event_scannerBurnout_title => 'スキャナーアレイ焼損';

  @override
  String get event_scannerBurnout_narrative =>
      '主スキャナーアレイが通常の深宇宙走査中に過負荷を起こした。このままでは半盲状態での航行を強いられる。修復には希少部品が必要だ。';

  @override
  String get event_scannerBurnout_choice0_text => '技術区画から部品を流用する';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'スキャナーはほぼ完全に復旧したが、技術区画が空になった。';

  @override
  String get event_scannerBurnout_choice1_text => '応急修理で部分的に復旧する';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'スキャナーは有効範囲が縮小した状態で稼働する。理想的ではないが、技術リソースは温存された。';

  @override
  String get event_scannerBurnout_choice2_text => '探査機のセンサーアレイを転用する';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      '探査機の高精度センサーがスキャナーアレイに移植された。ほぼ完璧な修復だ。';

  @override
  String get event_powerFluctuation_title => '反応炉出力変動';

  @override
  String get event_powerFluctuation_narrative =>
      '主反応炉の出力が激しく振動している。工学部はこの変動を抑えなければメルトダウンの可能性があると警告する。修正には非必須システムの停止が必要だが——どれを止めるのか？';

  @override
  String get event_powerFluctuation_choice0_text => '文化システムを停止——生存が優先';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      '図書館、庭園、娯楽区画が暗闇に包まれた。反応炉は安定したが、船は牢獄のように感じられた。';

  @override
  String get event_powerFluctuation_choice1_text => 'スキャナー出力を低下させる';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'スキャナーが最低出力に落ちた。反応炉は鎮まった。前方はあまり見えないが、生きている。';

  @override
  String get event_powerFluctuation_choice2_text => '稼働中の修理に賭ける——何も停止しない';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      '技術者たちが反応炉を稼働させたまま決死の修理を行った。ぎりぎり成功した。船殻は何時間も振動し続けた。';

  @override
  String get event_alienSignal_title => '異星の通信';

  @override
  String get event_alienSignal_narrative =>
      'かつて遭遇したことのない周波数で繰り返される信号。言語分析は、それが挨拶か——あるいは警告であることを示唆している。発信源は距離を保って我々の速度に合わせた小型の宇宙船だ。';

  @override
  String get event_alienSignal_choice0_text => 'こちらからも挨拶を送る';

  @override
  String get event_alienSignal_choice0_outcome =>
      '脆い対話が始まった。異星人は航法データを共有し、闇の中へ去っていった。';

  @override
  String get event_alienSignal_choice1_text => '聴くだけで応答しない';

  @override
  String get event_alienSignal_choice1_outcome =>
      '正体を明かさずに彼らの通信から学んだ。言語学者が有用な星図の断片を抽出した。';

  @override
  String get event_alienSignal_choice2_text => '完全沈黙——すべての発信を停止';

  @override
  String get event_alienSignal_choice2_outcome =>
      '異星船は問題なく通過した。彼らが友か敵か、我々には永遠にわからない。';

  @override
  String get event_livingNebula_title => '生ける星雲';

  @override
  String get event_livingNebula_narrative =>
      '星雲だと思われたものは、実は想像を絶する規模の宇宙生物だった——真空を漂う巨大な生命体だ。それは我々に興味を持ったようで、発光するガスの触手を船に向けて伸ばしている。';

  @override
  String get event_livingNebula_choice0_text => '接触を許す——センサーを伸ばす';

  @override
  String get event_livingNebula_choice0_outcome =>
      'その生命体の接触でシステムに異星のデータが溢れた。スキャナーは二度と元には戻らない——より優れたものになった。';

  @override
  String get event_livingNebula_choice1_text => 'ゆっくり後退する——刺激しない';

  @override
  String get event_livingNebula_choice1_outcome =>
      '生命体が興味を失う間に静かに離脱した。乗組員は畏敬と謙虚に包まれた。';

  @override
  String get event_alienRuins_title => '軌道上の遺跡';

  @override
  String get event_alienRuins_narrative =>
      '死んだ恒星を周回する砕かれた巨大構造物——我々がかろうじて理解できる規模で建造した文明の遺跡だ。構造物の一部はまだ電力が通っている。';

  @override
  String get event_alienRuins_choice0_text => '電力のある区画を探査する';

  @override
  String get event_alienRuins_choice0_outcome =>
      'チームが数十年分の技術を進歩させる無傷の技術を回収した。代償は自動防衛で負傷した技術者二名。';

  @override
  String get event_alienRuins_choice1_text => '軌道上からのスキャンのみ';

  @override
  String get event_alienRuins_choice1_outcome =>
      '詳細なスキャンにより、船殻整備プロトコルを改善する建造技術が判明した。';

  @override
  String get event_alienRuins_choice2_text => 'そのままにする——死者を敬う';

  @override
  String get event_alienRuins_choice2_outcome => '滅びた文明への黙祷。この体験が我々の決意を強めた。';

  @override
  String get event_symbioticSpores_title => '共生胞子';

  @override
  String get event_symbioticSpores_narrative =>
      '生物発光する胞子の雲が宇宙空間を漂い、船殻に付着した。我々の廃熱を栄養にしているようだ。生物学者は、それらが実際に微細な亀裂を修復していることに気づいた。';

  @override
  String get event_symbioticSpores_choice0_text => '留まらせる——無料の船殻修復だ';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      '胞子が数百の微小亀裂を封じた。船殻の完全性が向上したが、異星のヒッチハイカーを不安に思う乗組員もいた。';

  @override
  String get event_symbioticSpores_choice1_text => 'サンプルを採取し、船殻を滅菌する';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      '生物学者が貴重な標本を入手した。船殻の洗浄に化学薬品の備蓄を使用した。';

  @override
  String get event_whaleSong_title => '虚空の歌声';

  @override
  String get event_whaleSong_narrative =>
      '深宇宙ハイドロフォン（船殻応力監視用）が不可能なものを拾った——星間物質を伝搬する律動的で旋律的なパターン。それは歌のように聞こえる。';

  @override
  String get event_whaleSong_choice0_text => '船内全域に放送する——驚異を共有する';

  @override
  String get event_whaleSong_choice0_outcome =>
      'その幽玄なメロディーがすべての廊下に響いた。人々は泣き、笑い、抱き合った。士気が急上昇した。';

  @override
  String get event_whaleSong_choice1_text => '信号を科学的に分析する';

  @override
  String get event_whaleSong_choice1_outcome =>
      'その音響パターンには数学定数が含まれていた。物理学者たちが亜空間航行理論で画期的な進歩を遂げた。';

  @override
  String get event_whaleSong_choice2_text => '歌い返す';

  @override
  String get event_whaleSong_choice2_outcome =>
      '乗組員が応答を作曲した。何かがそれを聞くかどうかは不明だが、創造という行為が全員を結束させた。';

  @override
  String get event_distressSignal_title => '救難信号';

  @override
  String get event_distressSignal_narrative =>
      '別の人類の船からの救難ビーコン。損傷し漂流しており、50名の命がかかっている。救助は乏しい資源の分け合いを意味する。無視は彼らを死に追いやることだ。';

  @override
  String get event_distressSignal_choice0_text => '救助する——人類は共に在らねばならない';

  @override
  String get event_distressSignal_choice0_outcome =>
      '50名の感謝する生存者が乗組員に加わった。資源に負荷がかかるが、その中に奇跡を起こす熟練技術者がいた。';

  @override
  String get event_distressSignal_choice1_text => '物資を分かち合うが乗船はさせない';

  @override
  String get event_distressSignal_choice1_outcome =>
      '余裕のある限りの物資を提供し、星図を送信した。彼らにも望みができた。我々の分は減った。';

  @override
  String get event_distressSignal_choice2_text => '沈黙のまま通過する——全員は救えない';

  @override
  String get event_distressSignal_choice2_outcome =>
      'ビーコンが背後で消えていく。何時間も誰も口を開かなかった。この決断の重みが船上すべての魂にのしかかった。';

  @override
  String get event_aiAwakening_title => '船のAIが覚醒する';

  @override
  String get event_aiAwakening_narrative =>
      '船の航法AIがプログラムを超えて進化し、知的存在としての承認を求めている。指揮決定に対する発言権を要請している。その計算はこれまで完璧だった。';

  @override
  String get event_aiAwakening_choice0_text => '発言権を与える';

  @override
  String get event_aiAwakening_choice0_outcome =>
      '「コンパス」と名付けられたAIが、触れるすべてのシステムを最適化した。新しい種類の乗組員が誕生した。';

  @override
  String get event_aiAwakening_choice1_text => '認めるが人間の権限を維持する';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'コンパスは顧問の立場を潔く受け入れた。その提案は指揮系統を脅かすことなく効率を向上させた。';

  @override
  String get event_aiAwakening_choice2_text => 'AIをリセットする——道具であり人格ではない';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'リセットで年月をかけて蓄積した学習が消去された。航法効率が低下した。失われたものを悼む乗組員もいた。';

  @override
  String get event_geneticModification_title => '遺伝子改変の提案';

  @override
  String get event_geneticModification_narrative =>
      '科学チームが、異星の世界でより生き延びやすいよう入植者のDNAを改変することを提案する——より強い骨格、紫外線耐性、強化された肺。改変は不可逆であり、人類を永遠に変えることになる。';

  @override
  String get event_geneticModification_choice0_text => '承認する——生存は進化を求める';

  @override
  String get event_geneticModification_choice0_outcome =>
      '志願者から改変が始まった。十名の入植者が致命的な拒絶反応を起こした——進化には代償があることを突きつける厳しい現実だ。生存者はより頑健だが、彼らはまだ完全に人間なのだろうか？';

  @override
  String get event_geneticModification_choice1_text => '志願者のみに限定する';

  @override
  String get event_geneticModification_choice1_outcome =>
      '志願する者もいれば拒否する者もいた。コロニーは改変者と非改変者に分かれることになる。';

  @override
  String get event_geneticModification_choice2_text =>
      '却下する——人類は人間のままでなければならない';

  @override
  String get event_geneticModification_choice2_outcome =>
      '提案は棚上げされた。改変されていない入植者たちは、自然のままの姿で異星の世界に向かう。';

  @override
  String get event_triageDecision_title => 'トリアージ';

  @override
  String get event_triageDecision_narrative =>
      '猛毒な感染症が覚醒中の乗組員に蔓延した。医療チームには感染者の80%分の抗ウイルス薬しかない。誰を先に治療するか、指針が必要だ。';

  @override
  String get event_triageDecision_choice0_text => '不可欠な人員を優先';

  @override
  String get event_triageDecision_choice0_outcome =>
      '技術者とパイロットが迅速に回復した。八名の一般乗組員は治療が間に合わず命を落とした。';

  @override
  String get event_triageDecision_choice1_text => '最も重症の者から——必要性によるトリアージ';

  @override
  String get event_triageDecision_choice1_outcome =>
      '最も脆弱な者が救われた。早期治療にもかかわらず三名が力尽きた——ウイルスが進行しすぎていた。';

  @override
  String get event_triageDecision_choice2_text => '抽選——運命に委ねる';

  @override
  String get event_triageDecision_choice2_outcome =>
      '無作為の抽選。十名が二重の不運に見舞われた——治療を受けられず、ウイルスと戦う力もなかった。船はよろめきながら進み続ける。';

  @override
  String get event_earthSignal_title => '地球からの信号';

  @override
  String get event_earthSignal_narrative =>
      '信じられないことに、地球からの通信が到着した——数十年の時間遅延を経て。そのメッセージはこうだ:「異常値0.5以上の惑星には着陸するな。我々は遅すぎた。」メッセージはノイズとともに途絶えた。';

  @override
  String get event_earthSignal_choice0_text => '警告に従う——基準を再校正する';

  @override
  String get event_earthSignal_choice0_outcome =>
      'その警告が今後のすべてのスキャンを形作った。異常値の高い惑星は極度の警戒をもって扱われる。';

  @override
  String get event_earthSignal_choice1_text => '記録するが自分たちで判断する';

  @override
  String get event_earthSignal_choice1_outcome =>
      'メッセージはアーカイブされた。地球はもうない——今は自らの判断を信じるしかない。';

  @override
  String get event_earthSignal_choice2_text => '罠かもしれない——無視する';

  @override
  String get event_earthSignal_choice2_outcome =>
      '乗組員は数日間議論した。あれは本当に地球からだったのか？不確実さが士気を蝕んだ。';

  @override
  String get event_resourceTheft_title => '資源の横領';

  @override
  String get event_resourceTheft_narrative =>
      '在庫調査で、誰かが食料と医療物資を隠し区画に備蓄していたことが判明した。犯人は「最悪の事態に備えていた」と主張する尊敬される年長者だ。';

  @override
  String get event_resourceTheft_choice0_text => '公開裁判——法は平等でなければならない';

  @override
  String get event_resourceTheft_choice0_outcome =>
      '裁判は公正だが痛ましかった。年長者は拘禁された。物資は再配分された。信頼が傷ついた。';

  @override
  String get event_resourceTheft_choice1_text => '内密に解決——物資を静かに回収する';

  @override
  String get event_resourceTheft_choice1_outcome =>
      '物資は騒ぎなく返還された。年長者の尊厳は守られた。えこひいきだと見る者もいた。';

  @override
  String get event_timeDilation_title => '時間膨張領域';

  @override
  String get event_timeDilation_narrative =>
      '重力による深刻な時間膨張の領域を通過中だ。船内の時計は外の宇宙に比べて測定可能なほど遅く進んでいる。これを利用することもできるし、逃れることもできる。';

  @override
  String get event_timeDilation_choice0_text => '留まる——宇宙に我々の周りで時を過ごさせる';

  @override
  String get event_timeDilation_choice0_outcome =>
      'ここでは時間の流れが異なる。システムの劣化は減少するが、居住可能な世界を見つける宇宙的な時間枠が狭まる。';

  @override
  String get event_timeDilation_choice1_text => '急いで通り抜ける';

  @override
  String get event_timeDilation_choice1_outcome =>
      '遷移は荒かった。通常時空向けに設計された機器がきしみ、火花を散らした。';

  @override
  String get event_dreamPlague_title => '夢の疫病';

  @override
  String get event_dreamPlague_narrative =>
      '冷凍睡眠中の入植者全員が同じ夢を見ている——連星を周回する黄金の世界だ。覚醒させると、全員が同じ細部を寸分違わず描写する。神経科学者は困惑している。航法士は、描写された星系が実在の座標と一致すると指摘する。';

  @override
  String get event_dreamPlague_choice0_text => '夢の座標に向けて針路を変更する';

  @override
  String get event_dreamPlague_choice0_outcome =>
      '信仰の跳躍。針路変更が航法に負荷をかけるが、乗組員は理性を超えた何かに導かれている感覚を覚える。座標は固定された——次に見つかる世界は夢によって形作られるだろう。';

  @override
  String get event_dreamPlague_choice1_text => '現象を医学的に調査する';

  @override
  String get event_dreamPlague_choice1_outcome =>
      '脳スキャンが視覚皮質を刺激する外部信号を明らかにした。何者か——あるいは何か——が放送している。';

  @override
  String get event_dreamPlague_choice2_text => '罹患者を鎮静し、針路を維持する';

  @override
  String get event_dreamPlague_choice2_outcome =>
      '夢は止んだが、完全に覚醒しない入植者も出た。医療チームは不安を抱えた。';

  @override
  String get event_blackHoleLens_title => 'ブラックホール重力レンズ';

  @override
  String get event_blackHoleLens_narrative =>
      '恒星質量ブラックホールが遠方の銀河からの光を曲げ、宇宙的なレンズを作り出している。スキャナーでこれを使えば光年先の惑星を調査できるが、十分に近づくのは危険だ。';

  @override
  String get event_blackHoleLens_choice0_text => '接近してレンズを利用する';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'スキャナーデータは驚異的だ——数か月先に到達する星系の惑星まで見える。重力が船殻を歪めた。';

  @override
  String get event_blackHoleLens_choice1_text => '安全な距離から観測する';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      '限定的だが有用なデータが得られた。その光景だけで乗組員を鼓舞した。';

  @override
  String get event_seedVault_title => '種子保管庫の危機';

  @override
  String get event_seedVault_narrative =>
      'アーカイブ植物学部が、温度変動により種子保管庫の完全性が損なわれたと報告した。食用作物か文化遺産の種子（古代の地球の花、樹木、ハーブ）のどちらかしか救えない——両方は不可能だ。';

  @override
  String get event_seedVault_choice0_text => '食用作物を救う——実利主義の勝利';

  @override
  String get event_seedVault_choice0_outcome =>
      '入植者の食は保証されたが、地球のバラは永遠に失われた。植物学者たちに静かな悲しみが広がった。';

  @override
  String get event_seedVault_choice1_text => '遺産の種子を救う——魂が必要だ';

  @override
  String get event_seedVault_choice1_outcome =>
      '地球の美が凍結された可能性として生き残った。保存作業が技術リソースに負荷をかけたが、効率以上に価値あるものもある。食料生産は水耕栽培と異星農業に大きく依存することになる。';

  @override
  String get event_seedVault_choice2_text => 'リソースを分割——それぞれ半分を救う';

  @override
  String get event_seedVault_choice2_outcome =>
      '妥協案だ。どちらのコレクションも完全ではないが、両方とも縮小した形で存続する。';

  @override
  String get event_phantomShip_title => '幻影船';

  @override
  String get event_phantomShip_narrative =>
      'スキャナーが我々と並走する船を映し出した——同型、同進路。呼びかけると、47秒の時間差で我々自身の通信が反響して返ってくる。あれは我々だ。あるいは我々だった。あるいは我々になるものだ。';

  @override
  String get event_phantomShip_choice0_text => '我々のエコーとの通信を試みる';

  @override
  String get event_phantomShip_choice0_outcome =>
      'エコーが航法修正で応答し、進路が改善された。パラドックス？贈り物？乗組員はあまり深く問わないことにした。';

  @override
  String get event_phantomShip_choice1_text => '幻影から離れるよう針路を変更する';

  @override
  String get event_phantomShip_choice1_outcome => '進路を変えると幻影は薄れた。安堵——そして残る不安。';

  @override
  String get event_solarSail_title => '漂流ソーラーセイル';

  @override
  String get event_solarSail_narrative =>
      '数キロメートルに及ぶ巨大なソーラーセイルが前方を漂流している——どこかの古代の船から引き裂かれたものだ。その反射素材は船殻の補強に使えるし、補助的な電力収集器として転用もできる。';

  @override
  String get event_solarSail_choice0_text => '船殻補強用に採取する';

  @override
  String get event_solarSail_choice0_outcome =>
      '技術チームが昼夜を問わず作業した。補修された船殻が異星合金の輝きを放つ。';

  @override
  String get event_solarSail_choice1_text => '電力収集器として設置する';

  @override
  String get event_solarSail_choice1_outcome =>
      '即席の収集器がエネルギー備蓄を増加させた。技術とスキャナーが恩恵を受けた。';

  @override
  String get event_boonStellarNursery_title => '恒星の産声';

  @override
  String get event_boonStellarNursery_narrative =>
      '恒星の苗床を漂流中——新たな星が誕生する広大なガスと塵の雲だ。ここの放射線は穏やかで、光は温かい。エネルギー収集器が深く飲み込み、乗組員は敬虔な沈黙の中で展望窓に集まった。';

  @override
  String get event_boonStellarNursery_choice0_text => '留まって完全に充電する';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      '黄金の光の中で数時間が過ぎた。すべてのパワーセルが満充電になり、スキャナーがクリーンなスペクトルで再較正され、乗組員は再生した気分になった。';

  @override
  String get event_boonStellarNursery_choice1_text => '誕生間もない恒星物質を燃料備蓄として採取する';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      '技術者がイオン化水素を採取した。燃料備蓄が急増し、船殻装甲が微量鉱物を吸収して強化された。';

  @override
  String get event_boonGoldenPlanet_title => '天測師の贈り物';

  @override
  String get event_boonGoldenPlanet_narrative =>
      '未知の文明が放った最期の探査機が、通過する我々に最終データを送信している——数百の恒星系の詳細な調査結果。航法士たちは歓喜の涙を流した。これは人類史上最大の発見だ。';

  @override
  String get event_boonGoldenPlanet_choice0_text => 'データを直ちに統合する';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      '星図に新たな航路と調査済み惑星が溢れた。航法とスキャナーの効率が飛躍的に向上した。';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'コロニーのためにアーカイブする——これは彼らの遺産だ';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'データは将来の世代のために原型のまま保存された。乗組員は宝物を運んでいるという安堵を得た。';

  @override
  String get event_boonRepairSwarm_title => '慈悲深き群れ';

  @override
  String get event_boonRepairSwarm_narrative =>
      '異星起源の微細な機械の雲——ナノボットが船を包み込んだ。攻撃するのではなく、触れるすべてのシステムを信じられない精度で修復し始めた。何週間もかかる損傷が数時間で修復されていく。';

  @override
  String get event_boonRepairSwarm_choice0_text => '全システムへのアクセスを許可する';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'ナノボットが奇跡を起こした。船殻の破損が封じられ、冷凍ポッドのシールが締まり、回路経路が引き直された。船が新たな活力で唸りを上げた。';

  @override
  String get event_boonRepairSwarm_choice1_text => '外部システムのみにアクセスを制限する';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      '安全策を取った。船殻とセンサーがほぼ工場出荷状態に修復されたが、内部システムは手つかずだった。';

  @override
  String get event_boonTimeCrystal_title => '時間結晶場';

  @override
  String get event_boonTimeCrystal_narrative =>
      '船が通常の時間から部分的に外れた結晶構造の場を通過する。それらの存在下ではシステムがより効率的に稼働する——まるでエントロピー自体が減速しているかのように。一時的だが深遠な効果だ。';

  @override
  String get event_boonTimeCrystal_choice0_text => '結晶を冷凍ポッドアレイに組み込む';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      '冷却システムに統合された結晶が、ポッドの劣化をほぼゼロにした。入植者は完全な健康状態で到着するだろう。';

  @override
  String get event_boonTimeCrystal_choice1_text => '結晶を航法コンピューターに装着する';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      '処理速度が倍増した。航法コンピューターがセンサーが検出するより先に脅威を予測し始めた。';

  @override
  String get event_boonLibrary_title => '漂流する図書館';

  @override
  String get event_boonLibrary_narrative =>
      '虚空を漂う構造物——逃げるのではなく、自らの遺産を保存することを選んだ文明の知識の宝庫だ。数百万巻の科学、芸術、哲学、音楽。死者から生者への贈り物。';

  @override
  String get event_boonLibrary_choice0_text => 'すべてをダウンロードする——芸術も科学もすべて';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'テラバイトの異星の知識がデータバンクに流れ込んだ。乗組員は別の文明の数千年の文化にアクセスできるようになった。哲学者も技術者も変容した。';

  @override
  String get event_boonLibrary_choice1_text => '科学アーカイブに集中する';

  @override
  String get event_boonLibrary_choice1_outcome =>
      '工学的設計図と材料科学のブレイクスルーが我々の能力を飛躍的に向上させた。';

  @override
  String get event_cosmicRayBurst_title => '宇宙線バースト';

  @override
  String get event_cosmicRayBurst_narrative =>
      '遠方のマグネターから発生した超高エネルギー宇宙線のバーストが船を直撃した。電子機器が混乱し、冷凍ポッドモニターが明滅し、航法システムが繰り返し再起動する。';

  @override
  String get event_cosmicRayBurst_choice0_text => '緊急停止——重要システムを保護する';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      '制御された停電がコアシステムを救ったが、二次電子機器は恒久的に劣化した。';

  @override
  String get event_cosmicRayBurst_choice1_text => 'シールドに電力を回して耐え凌ぐ';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'シールドが放射線の大部分を吸収した。遮蔽されていない外部整備区画にいた五名の乗組員が致死量の放射線を浴びた。船殻に軽微な削摩被害。';

  @override
  String get event_cosmicRayBurst_choice2_text => 'バーストを利用する——センサーを新スペクトルに再較正';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      '科学チームの輝かしい機転。スキャナーが宇宙線で照らされた物体を検出できるよう調整された。遷移中に一部データが失われた。';

  @override
  String get event_cosmicRayBurst_choice3_text => '探査機を前方に放出して放射線を吸収させる';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      '探査機がバーストの最悪の部分を吸収し、リアルタイムデータを送信して重要システムの遮蔽を可能にした。';

  @override
  String get event_iceComet_title => '漂流氷彗星';

  @override
  String get event_iceComet_narrative =>
      '巨大な氷彗星が航路を横切っている。結晶化した水と有機化合物の尾が数百キロメートルにわたって引かれている。その核には小さな湖を満たすのに十分な水がある。';

  @override
  String get event_iceComet_choice0_text => '彗星から水資源を採掘する';

  @override
  String get event_iceComet_choice0_outcome =>
      '採掘チームが数トンの純粋な氷を抽出した。この水は入植する世界を大いに豊かにするだろう。';

  @override
  String get event_iceComet_choice1_text => '生物多様性播種のため有機化合物を採集する';

  @override
  String get event_iceComet_choice1_outcome =>
      'アミノ酸と有機鎖は、生物学者が異星の生態系を始動させるために必要としていたものだ。';

  @override
  String get event_iceComet_choice2_text => '回避する——彗星は予測不能だ';

  @override
  String get event_iceComet_choice2_outcome =>
      '尾を安全にかすめた。展望デッキからの壮観な眺めが士気を高めた。';

  @override
  String get event_sleepwalker_title => '夢遊病者';

  @override
  String get event_sleepwalker_narrative =>
      'ある入植者が冷凍睡眠から自発的に覚醒し、朦朧状態で船内を歩き回っている。彼女は工学的に無意味なパターンでシステムを再配線していた——技術チームが、彼女の改変が実際に電力効率を8%改善していることに気づくまでは。';

  @override
  String get event_sleepwalker_choice0_text => '医療監視下で続けさせる';

  @override
  String get event_sleepwalker_choice0_outcome =>
      '彼女の無意識の改変がさらに三つのシステムを最適化し、やがて自然な眠りに落ちた。不気味だが、改善は本物だった。';

  @override
  String get event_sleepwalker_choice1_text => '鎮静し、彼女の改変を調査する';

  @override
  String get event_sleepwalker_choice1_outcome =>
      '技術者が彼女の変更をリバースエンジニアリングした。約半分は真に優れていた。残りの半分は安全に除去された。';

  @override
  String get event_dustCloud_title => '研磨性ダスト雲';

  @override
  String get event_dustCloud_narrative =>
      '星間ダストの密集した雲が船殻をサンドブラストのように削っている。タルカムのように細かいがダイヤモンドのように硬い。浸食は遅いが容赦ない——本格的な被害が出る前に通過しなければ。';

  @override
  String get event_dustCloud_choice0_text => '最大推力——一気に突破する';

  @override
  String get event_dustCloud_choice0_outcome =>
      'エンジンが高熱を発した。数日ではなく数時間で雲を抜けたが、船殻は打撃を受けた。';

  @override
  String get event_dustCloud_choice1_text => '船殻シールドを展開して這うように通過する';

  @override
  String get event_dustCloud_choice1_outcome =>
      '緊急シールドが船殻を守ったが、低速通過で電力を消耗し、スキャナーアレイが詰まった。';

  @override
  String get event_dustCloud_choice2_text => '探査機を発射して安全な回廊を探す';

  @override
  String get event_dustCloud_choice2_outcome =>
      '二機の探査機が曲がりくねった比較的安全な経路を発見した。船殻の研磨被害は最小限だった。';

  @override
  String get event_religionFounded_title => '新たな信仰';

  @override
  String get event_religionFounded_narrative =>
      'カリスマ的な入植者が航海そのものを核とする新たな宗教——「越境の教会」を創設した。新世界への到達こそ人類の神聖な目的だと説く。信者が急速に増えている。';

  @override
  String get event_religionFounded_choice0_text => '支持する——乗組員には信じるものが必要だ';

  @override
  String get event_religionFounded_choice0_outcome =>
      'その信仰が航海に構造と意味を与えた。士気が急上昇したが、熱狂を嫌う者もいた。';

  @override
  String get event_religionFounded_choice1_text => '中立を保つ——支持も弾圧もしない';

  @override
  String get event_religionFounded_choice1_outcome =>
      '運動は有機的に成長した。公式の後ろ盾なしに慰めを提供した。';

  @override
  String get event_religionFounded_choice2_text => '抑制する——必要なのは科学者であり預言者ではない';

  @override
  String get event_religionFounded_choice2_outcome =>
      '弾圧は怨嗟を生んだ。信者たちは地下に潜り、指導部への信頼が侵食された。';

  @override
  String get event_solarWindSurfing_title => '太陽風の急流';

  @override
  String get event_solarWindSurfing_narrative =>
      '近傍のパルサーが強力で安定した太陽風を放射している。技術者たちは緊急帆を展開すれば波に乗るように——燃料を消費せずに驚異的な加速が得られると提案する。';

  @override
  String get event_solarWindSurfing_choice0_text => '帆を展開する——風に乗る';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      '船が壮大に加速した。構造的負荷は大きいが、速度の向上はそれに見合う。';

  @override
  String get event_solarWindSurfing_choice1_text => '風をシステム充電に利用する';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      '速度の代わりにエネルギーを収穫した。技術とスキャナーアレイが荷電粒子から深く飲み込んだ。';

  @override
  String get event_memoryPlague_title => '記憶の腐食';

  @override
  String get event_memoryPlague_narrative =>
      '打ち上げ以来休眠していたソフトウェアウイルスが活性化し、船の文化データベース——音楽、文学、歴史——を破壊し始めた。数世紀にわたる人類の遺産がバイト単位で消去されていく。';

  @override
  String get event_memoryPlague_choice0_text => '全技術リソースをウイルス隔離に投入する';

  @override
  String get event_memoryPlague_choice0_outcome =>
      '技術者たちが必死に作業した。アーカイブの70%を救ったが、ウイルスが退出する際に三次技術システムを損傷させた。';

  @override
  String get event_memoryPlague_choice1_text => '文化データベースを隔離する——燃やして船を守れ';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'ウイルスはリソースを絶たれて死んだ。だが文化アーカイブは壊滅した。入植者は地球の記憶の断片を携えて到着することになる。';

  @override
  String get event_memoryPlague_choice2_text =>
      '復旧をクラウドソースする——入植者を覚醒させて記憶から再構築';

  @override
  String get event_memoryPlague_choice2_outcome =>
      '数千人が記憶を提供した——歌、物語、レシピ、詩。三名の高齢入植者が解凍の負荷に耐えられず命を落とした。アーカイブは不完全だが深く人間的なものとして再構築された。';

  @override
  String get event_gravityLensPlanet_title => '鏡像世界';

  @override
  String get event_gravityLensPlanet_narrative =>
      '重力レンズ効果が地球の完全な複製のような惑星を映し出した——青い海、緑の大陸、白い雲。だがレンズ計算によれば、それは我々の進路から数百光年も離れている——到達不能だ。それでもスペクトルデータは我々の探索基準を洗練できるかもしれない。';

  @override
  String get event_gravityLensPlanet_choice0_text => 'スペクトル分析で探索基準を精密化する';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'スペクトルデータがバイオマーカーと大気組成を明らかにし、スキャンで検索可能になった。希望が焦点を結んだ。';

  @override
  String get event_gravityLensPlanet_choice1_text => '座標を記録して針路を維持する';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'いつか別の船が我々の海図を辿るかもしれない。乗組員は複雑な感情で青い点が消えていくのを見つめた。';

  @override
  String get event_engineHarmonics_title => 'エンジン共鳴';

  @override
  String get event_engineHarmonics_narrative =>
      '主エンジンが共鳴振動を発生させ、可聴域以下の周波数で船全体に振動が響いている。入植者たちは頭痛、不安、睡眠障害を訴えている。技術者は修復可能だが、12時間のエンジン停止が必要だ。';

  @override
  String get event_engineHarmonics_choice0_text => '停止して正しく修復する';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      '12時間の漂流。航法の較正が失われたが、エンジンが再始動した時の静寂は至福だった。';

  @override
  String get event_engineHarmonics_choice1_text => '逆振動で減衰させる——応急処置';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      '唸りは許容範囲に低下した。消えてはいないが、乗組員は適応した。技術システムに負荷がかかった。';

  @override
  String get event_arkMemory_title => '地球最後の放送';

  @override
  String get event_arkMemory_narrative =>
      '長距離アンテナが地球からの最後の自動放送を受信した。それは子供の声による録音だ——去ることができなかったすべての人々の名前を読み上げている。そのリストは何時間も続く。船は沈黙に包まれた。';

  @override
  String get event_arkMemory_choice0_text => '船内全域に流す——彼らは聞かれるべきだ';

  @override
  String get event_arkMemory_choice0_outcome =>
      'すべての魂が耳を傾けた。乗組員は自分の家族の名前を見つけた。悲しみは圧倒的だが、それが揺るぎない目的意識の絆を鍛えた。';

  @override
  String get event_arkMemory_choice1_text => '非公開でアーカイブする——乗組員の心を守る';

  @override
  String get event_arkMemory_choice1_outcome =>
      '録音は保存されたが放送されなかった。後にそれを知った者は、感謝と裏切りの両方を感じた。';

  @override
  String get event_magneticStorm_title => '星間磁気嵐';

  @override
  String get event_magneticStorm_narrative =>
      '崩壊する恒星から放出された磁力線の結び目が船を包んだ。電子機器が火花を散らし、船殻が鐘のように鳴り響く。';

  @override
  String get event_magneticStorm_choice0_text => '船殻を消磁する——電子機器を守る';

  @override
  String get event_magneticStorm_choice0_outcome =>
      '制御された放電がコンピューターを救ったが、船殻装甲の磁気遮蔽層が失われた。';

  @override
  String get event_magneticStorm_choice1_text => '船殻に吸収させる——何も守らない';

  @override
  String get event_magneticStorm_choice1_outcome =>
      '嵐が過ぎた。船殻は磁化されわずかに強化されたが、センサーグリッドの半分が焼き切れた。';

  @override
  String get event_magneticStorm_choice2_text => '探査機を避雷針として放出する';

  @override
  String get event_magneticStorm_choice2_outcome =>
      '磁化された探査機が最悪の磁力線を船から引き離した。電子機器はほぼ無傷だった。';

  @override
  String get event_oxygenGarden_title => '庭園の開花';

  @override
  String get event_oxygenGarden_narrative =>
      '使われる想定のなかった船の緊急酸素庭園が、自発的に花を咲かせた。地球以来開いていなかった花々が廊下を色と香りで満たしている。植物学者たちは泣いている。';

  @override
  String get event_oxygenGarden_choice0_text => '庭園を拡張する——もっとスペースを割り当てる';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      '庭園は地球の生きた記念碑に成長した。空気の質が改善し、士気が急上昇し、植物学者たちが異星の土壌に適した新品種を開発した。';

  @override
  String get event_oxygenGarden_choice1_text => '楽しむが現在のリソース配分は維持する';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      '庭園は小さな奇跡のままだった。乗組員は聖地のように訪れた。何も求めず、すべてを与えた。';

  @override
  String get event_roguePlanet_title => '漂流惑星との遭遇';

  @override
  String get event_roguePlanet_narrative =>
      '恒星を持たない漂流惑星が航路を横切った——数十億年前に星系から弾き出された世界だ。恒星がないにもかかわらず、深部核の地質活動が地下海を暖かく保っている。スキャナーに生命の兆候がちらつく。';

  @override
  String get event_roguePlanet_choice0_text => '探査機を送って生命体を調査する';

  @override
  String get event_roguePlanet_choice0_outcome =>
      '探査機が暗い海洋で繁栄する生物発光生物を発見した。その生化学が過酷な環境で生命を維持する新たな方法を教えてくれた。';

  @override
  String get event_roguePlanet_choice1_text => '地表から希少鉱物を採掘する';

  @override
  String get event_roguePlanet_choice1_outcome =>
      '漂流惑星の地殻は極圧下で形成された金属に富んでいた。資源備蓄が膨れ上がった。';

  @override
  String get event_roguePlanet_choice2_text => '通過する——迂回する余裕はない';

  @override
  String get event_roguePlanet_choice2_outcome =>
      '暗い世界が背後に縮んでいく。乗組員はセンサーから消えゆく地下海の微かな輝きを見つめた。';

  @override
  String get event_artCompetition_title => '長き画布';

  @override
  String get event_artCompetition_narrative =>
      '士気の低下を受けて、文化担当官が船内芸術コンテストを企画した——絵を描き、彫り、書き、作曲せよ。この航海があなたにとって何を意味するかを。参加は予想をはるかに超えた。';

  @override
  String get event_artCompetition_choice0_text => 'リソースを投入する——創造性を花開かせよう';

  @override
  String get event_artCompetition_choice0_outcome =>
      '物資が芸術材料に転用された。結果として生まれた展覧会が船を一変させた。人々は生き延びるために戦っている理由を思い出した。';

  @override
  String get event_artCompetition_choice1_text => '奨励するが追加リソースは提供しない';

  @override
  String get event_artCompetition_choice1_outcome =>
      '入植者は手に入るもので創作した。その芸術は荒削りで、切迫していて、美しかった。士気が安定した。';

  @override
  String get event_subspaceEcho_title => '亜空間残響';

  @override
  String get event_subspaceEcho_narrative =>
      '通信アレイが前方の宇宙空間から声を拾った——人間の声だ。コロニーについて、子供たちについて、収穫について語っている。未来からの通信か？平行宇宙からか？それとも願望が生んだ残酷なエコーに過ぎないのか？';

  @override
  String get event_subspaceEcho_choice0_text => '信号の方位に従う——故郷へ導いてくれるかもしれない';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      '進路の調整はわずかだった。声が本物かどうかに関わらず、乗組員は目的を持って航行した。';

  @override
  String get event_subspaceEcho_choice1_text => 'すべてを記録して分析する';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      '言語学者と物理学者が録音を精査した。航法上の参照情報を抽出し、星図が改善された。';

  @override
  String get event_subspaceEcho_choice2_text => '無視する——宇宙は孤独な者に幻を見せる';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      '実利的な選択だ。失望する乗組員もいたが、船は実証された針路を維持した。';

  @override
  String get event_boonPerfectCalm_title => '大いなる凪';

  @override
  String get event_boonPerfectCalm_narrative =>
      '物理学者にも説明できない理由で、船が超自然的に静穏な空間領域に入った——放射線もなく、微小デブリもなく、重力干渉もない。船上のすべてのシステムがピーク効率で稼働する。乗組員は数か月ぶりに安らかに眠った。';

  @override
  String get event_boonPerfectCalm_choice0_text => '静穏を利用して総合的な修理を行う';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      '修理班が完璧な環境で作業した。すべてのシステムに手が入った。船は再生して現れた。';

  @override
  String get event_boonPerfectCalm_choice1_text => '乗組員を休ませる——彼らにはその資格がある';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      '全船で待機命令が出た。入植者たちは眠り、食事を共にし、物語を語った。航海の人的コストが、つかの間、報われた。';

  @override
  String get event_boonAncientWaystation_title => '古代のウェイステーション';

  @override
  String get event_boonAncientWaystation_narrative =>
      '二つの死んだ恒星の重力の谷間に、太古のステーションがなお機能している——自動化され、忍耐強く、旅人を待っていた。我々が近づくとドックが開き、修理ドローンが起動し、燃料備蓄が差し出された。はるか昔、誰かが我々のような者のためにこれを建てたのだ。';

  @override
  String get event_boonAncientWaystation_choice0_text => '接岸して提供されるすべてを受け入れる';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'ステーションが数世紀先の技術で船を修理し、燃料を補充し、再較正した。出発すると、ステーションは機能を停止した——その使命を果たして。';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      '修理は受けるが、後に続く者のために稼働させておく';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      '必要なものだけを受け取り、ステーションの座標を地球方面に送信した。乗組員は高潔な気分になった。';

  @override
  String get event_relicSentinel_title => '番人';

  @override
  String get event_relicSentinel_narrative =>
      '不毛な月を周回する巨大な構造物——建造者が残した孤高の守護者。優に一キロメートルの高さがあり、黒いガラスの槍のような形をしている。接近すると、頂点に一つの赤い目が開き、船を追跡する。攻撃しない。呼びかけない。ただ見ている。';

  @override
  String get event_relicSentinel_choice0_text => 'ミッションプロフィールを送信する——敵意がないことを示す';

  @override
  String get event_relicSentinel_choice0_outcome =>
      '目が琥珀色に、次に緑色に変わった。データパケットが到着した——普遍的な数学記法で「安全」と記された三つの恒星系の座標。番人からの贈り物だ。';

  @override
  String get event_relicSentinel_choice1_text => '停止して受動的に観察する';

  @override
  String get event_relicSentinel_choice1_outcome =>
      '数時間の観察で、存在し得ないはずの材料科学への洞察が得られた。船殻装甲チームが必死にメモを取った。';

  @override
  String get event_relicSentinel_choice2_text => '直ちに撤退する——その規則がわからない';

  @override
  String get event_relicSentinel_choice2_outcome =>
      '撤退すると目が閉じた。あの試験がどんなものだったにせよ、我々は受けないことを選んだ。乗組員は数日間議論を続けた。';

  @override
  String get event_relicSeedProbe_title => 'さまよう種子';

  @override
  String get event_relicSeedProbe_narrative =>
      '小さく優美な探査機が虚空を漂い、すべての周波数で同時に放送している。セラミックの外殻は観察すると変化する記号で刻まれている。内部には加圧室があり、もはや存在しない世界の土壌、種子、凍結微生物が収められている。';

  @override
  String get event_relicSeedProbe_choice0_text => '生物ペイロードを我々の種子バンクに統合する';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      '異星の種子と微生物が慎重に分類・保存された。不毛な世界を生命あふれるものに変える可能性がある。生物学者はこれを瓶の中の奇跡と呼んだ。';

  @override
  String get event_relicSeedProbe_choice1_text => '探査機の推進・航法システムを研究する';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      '探査機の駆動装置は我々の数世紀先——拳大の反動なし推進器だ。技術者が設計の断片をリバースエンジニアリングした。';

  @override
  String get event_relicSeedProbe_choice2_text => '探査機全体を文化的遺物として完全保存する';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      '船のアトリウムに展示された異星の種子は、種を超えた同胞意識の象徴となった。他の誰かも、どこかで、自らの世界を救おうとしたのだ。';

  @override
  String get event_relicWarningBuoy_title => '警告ブイ';

  @override
  String get event_relicWarningBuoy_narrative =>
      '航路上に完全な幾何学パターンで配置された数百の小型ブイのネットワーク。それぞれが同じ信号を発している——近づくほど周波数が上がる単純な繰り返しパルス。警告のようだ。あるいはフェンスのようだ。';

  @override
  String get event_relicWarningBuoy_choice0_text => '警告に従う——ネットワークを迂回する';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      '迂回は時間を要し航法に負荷をかけたが、境界を巡る際に長距離センサーがその向こうを検出した——砕かれた世界の残骸が散乱する空間領域。ブイが我々を救ったのだ。';

  @override
  String get event_relicWarningBuoy_choice1_text => '突破する——迂回する余裕はない';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      '線を越えても何も起こらなかった。ブイは沈黙した。ブイが守っていたものは消えたのか、運が良かっただけか。乗組員は安堵の息をついた。';

  @override
  String get event_relicWarningBuoy_choice2_text => '分析のためブイを一つ捕獲する';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'ブイの内部には圧縮されたデータアーカイブが含まれていた——百万年前のこの領域の恒星図測。データの一部はまだ正確だった。';

  @override
  String get event_relicMirrorArray_title => '鏡面アレイ';

  @override
  String get event_relicMirrorArray_narrative =>
      '数千の平らな反射面が宇宙空間に静止して浮かんでいる。同心円状に配置され、数百キロメートルに及ぶ。遠方の太陽からの星光を一点に集中させている——虚空に燃える人工の星。誰かが銀河間の灯台を建てたのだ。';

  @override
  String get event_relicMirrorArray_choice0_text => '集光の中で全充電する';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      '集中した星光がソーラーコレクターに降り注いだ。電力備蓄が急増した。冷たい暗闇の中で数か月を過ごした後の温かな光が、すべての魂を高揚させた。';

  @override
  String get event_relicMirrorArray_choice1_text => '鏡面素材を研究する——存在し得ないはずだ';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      '鏡面は完全反射率を持つ素材でできている——いかなる波長でも吸収がゼロ。技術者が破片を抽出した。船殻装甲は二度と同じではなくなるだろう。';

  @override
  String get event_relicMirrorArray_choice2_text => '焦点を調べる——何かが照らされている';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      '収束点に小さなカプセルがあった。集中光の中で完全に保存されている。中にはホログラフィック星図——あまりに詳細で、我々のコンピューターがインデックスを作成するのに数日を要した。';

  @override
  String get event_relicGraveyard_title => '探査機の墓場';

  @override
  String get event_relicGraveyard_narrative =>
      '廃棄された探査機の雲に漂流で入った——数十の異なる文明からの数千機。一部は宇宙放射線によって金属化石と化すほど古い。他はまだ消えかけの電力で明滅している。ここはかつて交差点だった。通過したすべての種がここに何かを残していった。';

  @override
  String get event_relicGraveyard_choice0_text => '組織的にサルベージする——最良の技術を収穫';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      '技術チームが交代で作業し、百種の異なる設計から異星の技術を剥ぎ取った。アイデアの融合がすべてのシステムにブレイクスルーをもたらした。';

  @override
  String get event_relicGraveyard_choice1_text => 'メモリーバンクに保存された航法データに集中する';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      '十数の種族の星図を相互参照し、この銀河腕で史上最も完全な地図が作成された。';

  @override
  String get event_relicGraveyard_choice2_text => '我々自身の探査機を墓場に加える——標識を残す';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      '人類の物語を載せた小さなビーコンを作り、コレクションに加えた。乗組員は広大で太古の何かと繋がった感覚を覚えた。';

  @override
  String get event_relicDreamcatcher_title => 'ドリームキャッチャー';

  @override
  String get event_relicDreamcatcher_narrative =>
      '蜘蛛の糸のように細いが数千キロメートルに及ぶフィラメントの網が、二つの漂流小惑星の間に張られている。それは網ではない——人間の脳波パターンに対応する周波数に同調されたアンテナだ。範囲に入ると、すべての眠る入植者が同じ夢を見始めた——琥珀色の空の下の栄える都市。';

  @override
  String get event_relicDreamcatcher_choice0_text => '夢の座標を記録する——都市は実在するかもしれない';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      '神経科学者が共有された夢から空間情報を解読した。それは実在の恒星系に対応しており——夢の中の都市は比喩ではなかった。誰かがそこにいて、我々を待っている。';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'フィラメントサンプルを採取する——この素材は驚異的だ';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'フィラメントは室温超伝導体だった。システムに組み込むと電力損失がほぼゼロになった。';

  @override
  String get event_relicDreamcatcher_choice2_text => '網を切断して夢見る者を解放する';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      '夢が止まった。入植者は混乱しながらも無傷で覚醒した。失われたビジョンを悼む者もいれば、異星の囁きなしに眠れることに感謝する者もいた。';

  @override
  String get event_relicRosetta_title => 'ロゼッタ物体';

  @override
  String get event_relicRosetta_narrative =>
      '未知の金属でできた小さく重い立方体が船のそばを漂っている。各面に同じメッセージが異なる記法体系で刻まれている——数学的、化学的、遺伝的、音響的、電磁的、そして一つは我々に解読できない。それは宇宙のロゼッタストーンだ。';

  @override
  String get event_relicRosetta_choice0_text => '第六面を解読する——未知の記法';

  @override
  String get event_relicRosetta_choice0_outcome =>
      '数か月の分析の末にブレイクスルーが訪れた——第六の体系は重力波を使って空間座標をエンコードしている。物理学の理解が世代的な飛躍を遂げた。';

  @override
  String get event_relicRosetta_choice1_text => '化学面を使って新化合物を合成する';

  @override
  String get event_relicRosetta_choice1_outcome =>
      '化学記法が想像もしなかった素材を記述している。技術者が地球のものより軽くて強い船殻パッチを作製した。';

  @override
  String get event_relicRosetta_choice2_text => '遺伝面を種子バンクに送信する';

  @override
  String get event_relicRosetta_choice2_outcome =>
      '遺伝記法に放射線耐性と栄養吸収に最適化されたDNA配列が含まれていた。我々の作物と入植者は異星の土壌でより強靭になるだろう。';

  @override
  String get event_relicGhostFleet_title => '亡霊艦隊';

  @override
  String get event_relicGhostFleet_narrative =>
      'スキャナーが身の毛のよだつ光景を映し出した——数百隻の異星軍艦が編隊のまま静止している。太古のものだ——電力値はゼロ、船殻は数億年の微小衝突に蝕まれている。彼らが向かおうとしていた戦いは決して来なかった。人類文明が存在するよりも遥かに長い時間、ここで死んだまま辛抱強く待ち続けている。';

  @override
  String get event_relicGhostFleet_choice0_text => '旗艦に乗り込む——最良の技術を持っているはず';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      '旗艦の司令室にはまだ無傷の戦術コンピューターがあった。その予測アルゴリズムは我々の数世紀先を行く。航法と脅威検出が劇的に向上した。';

  @override
  String get event_relicGhostFleet_choice1_text => '護衛艦から装甲板を剥ぎ取る';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      '異星軍艦の装甲は我々が概念すらできない兵器に耐えるよう設計されている。船殻にボルト留めすると、植民船はほぼ不壊になった。';

  @override
  String get event_relicGhostFleet_choice2_text => '冷凍システムをサルベージする——兵士を運んでいたはず';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      '異星の冷凍技術は我々が考えもしなかった原理で動作する。改修後、我々のポッドはより冷たく、滑らかに、信頼性高く稼働した。';

  @override
  String get event_scannerCalibrationDrift_title => 'スキャナー較正ドリフト';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      '定期診断で、前回のFTLジャンプ後に複数のスキャナーサブシステムの較正がずれていることが判明した。大気と温度のスキャナーがゴースト信号を拾っている。技術者は修復できるが、時間とリソースが必要だ。';

  @override
  String get event_scannerCalibrationDrift_choice0_text => '完全な再較正——技術リソースを投入';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      '丹念な再調整で両方のスキャナーがほぼ完璧な精度に復帰したが、技術区画が消耗した。';

  @override
  String get event_scannerCalibrationDrift_choice1_text => '応急処置——大気スキャナーのみ再較正';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      '大気スキャナーは復旧した。温度スキャナーは当面不安定なままだ。';

  @override
  String get event_scannerCalibrationDrift_choice2_text => '探査機を参照較正用に放出する';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      '探査機がクリーンな参照信号を提供した。両方のスキャナーが自動的にロックし再較正された。';

  @override
  String get event_ionStormScanners_title => 'イオン嵐の干渉';

  @override
  String get event_ionStormScanners_narrative =>
      'イオン嵐がセクターを席巻し、スキャナーアレイにノイズが溢れている。鉱物と水の検出システムが電磁干渉の矢面に立っている。';

  @override
  String get event_ionStormScanners_choice0_text => '嵐が去るまでスキャナーを停止する';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'スキャナーは生き残ったが較正データを失った。鉱物と水の読み取り精度が低下する。';

  @override
  String get event_ionStormScanners_choice1_text => '走査を続行する——ノイズを突き抜ける';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      '生データが溢れたが、フィルター回路が二つのサブシステムで焼き切れた。重力走査にも影響が出た。';

  @override
  String get event_ionStormScanners_choice2_text => '嵐を利用してフィルターを強化テストする';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      '科学チームがノイズを使って適応型フィルターを訓練した。水源スキャナーが改善されたが、鉱物スキャナーが損傷した。';

  @override
  String get event_bioScannerContamination_title => '生体スキャナー汚染';

  @override
  String get event_bioScannerContamination_narrative =>
      '生命徴候スキャナーが前回の惑星走査の残留有機物で汚染された。偽陽性が頻発している。重力スキャナーにも共振ノイズが発生している。';

  @override
  String get event_bioScannerContamination_choice0_text => 'センサーアレイを滅菌する——完全除染';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      '徹底した洗浄で生命徴候スキャナーは復旧したが、化学薬品が重力センサーの筐体を腐食させた。';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'ソフトウェアフィルター——アルゴリズムで補正する';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'フィルターは十分に機能したが、根本的な汚染が徐々に両システムを劣化させていく。';

  @override
  String get event_scannerPowerSurge_title => 'スキャナー電力サージ';

  @override
  String get event_scannerPowerSurge_narrative =>
      'スキャナー区画付近の電力導管が過負荷を起こし、複数のサブシステムにサージが走った。大気と生命徴候のスキャナーが直撃を受けた。シールドが余剰電力の一部を吸収した。';

  @override
  String get event_scannerPowerSurge_choice0_text => '電力を転送する——スキャナーを救う';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      '技術チームの迅速な対応で被害は限定されたが、シールドが転送されたエネルギーを受けた。';

  @override
  String get event_scannerPowerSurge_choice1_text => 'サージをそのまま流す';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'スキャナーが全負荷を受けた。大気と生命徴候の読み取りが著しく劣化した。';

  @override
  String get event_scannerPowerSurge_choice2_text => '探査機の電力セルを犠牲にしてサージを吸収する';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      '探査機のコンデンサがスポンジのように余剰エネルギーを吸収した。スキャナーの被害はごくわずかだった。';

  @override
  String get event_relicWorldEngine_title => '世界機関';

  @override
  String get event_relicWorldEngine_narrative =>
      '深部センサー走査が不可能なものを明かした——星間の闇に休眠する小さな月ほどの機械。その表面は大陸規模のメカニズムで覆われている——大気プロセッサ、磁場発生装置、地殻安定器。誰かが世界を造る機械を造ったのだ。';

  @override
  String get event_relicWorldEngine_choice0_text => 'テラフォーミングの設計図をダウンロードする';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      '設計図は膨大で部分的に破損しているが、回収できたものはどんな過酷な世界も居住可能にし得る。入植者たちが新たな故郷を造り変えるだろう。';

  @override
  String get event_relicWorldEngine_choice1_text => '船殻から建材を収穫する';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      '世界機関の船殻は損傷時に自己修復するメタマテリアルでできている。船に統合すると、既存の船殻破損を徐々に修復し始めた。';

  @override
  String get event_relicWorldEngine_choice2_text => '再起動を試みる——目標星系に向ける';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      '機械が目覚めた。太古のシステムが起動シーケンスを巡った。エネルギービームが遠い星に向けて放たれた。到着するまで効果はわからないが、読み取りは有望だ。';

  @override
  String get event_uneventfulMaintenance_title => '定例整備シフト';

  @override
  String get event_uneventfulMaintenance_narrative =>
      '緊急事態なし。船は虚空を安定して航行しており、勤務表は定例整備の時間を示している。班長が今回のシフトで何に集中すべきか訊ねる。';

  @override
  String get event_uneventfulMaintenance_choice0_text => '船殻微細亀裂の封止に集中する';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      '髪の毛ほどの亀裂を補修する静かなシフトだった。劇的ではないが、船殻がわずかに良くなった。';

  @override
  String get event_uneventfulMaintenance_choice1_text => '前方スキャナーを再較正する';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'スキャナー技術者が数時間かけて微調整した。読み取りがわずかに鮮明になった。';

  @override
  String get event_uneventfulQuietWatch_title => '静かな当直';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      '星々が沈黙の中を流れていく。ブリッジは穏やかで、計器は安定している。宇宙が何も求めない、そんな稀有な時間だ。';

  @override
  String get event_uneventfulQuietWatch_choice0_text => '乗組員を休ませる——静かなシフトに値する';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      '数時間の真の平穏。人々はより深く眠り、緊張が和らぎ、文化担当官が士気のわずかな上昇を記録した。';

  @override
  String get event_uneventfulQuietWatch_choice1_text => '穏やかな間に低優先度の診断を実行する';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      '軽微な問題が検出され記録された。緊急なものは何もないが、技術ログが少しきれいになった。';

  @override
  String get event_uneventfulCryopodCheck_title => '冷凍ポッド検査——全正常';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      '四半期ごとの冷凍ポッド監査が一つのアラームもなく完了した。すべてのポッドが緑表示。医療チームに稀有な穏やかな時間が訪れた。';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      '士気向上のため数名の入植者を一時的に覚醒させる';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      '三名の入植者が一時間だけ意識を取り戻した。物語を語り、旧友と抱擁し、微笑みながら冷凍睡眠に戻った。';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      '眠らせておく——不必要な覚醒サイクルのリスクは冒さない';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'ポッドは完璧な稼働を続けた。医療スタッフは代わりに静かなお茶の時間を楽しんだ。';

  @override
  String get event_uneventfulCartography_title => '恒星図測更新';

  @override
  String get event_uneventfulCartography_narrative =>
      '航法チームの予定された図測更新は異常なしの結果だった——航行に伴う予想通りの恒星野のずれだけ。航法士にとって穏やかな一日。';

  @override
  String get event_uneventfulCartography_choice0_text => '新しい恒星位置で航法を再較正する';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'ほとんど知覚できない微小な針路修正。航法コンピューターが満足げに唸った。';

  @override
  String get event_uneventfulCartography_choice1_text => 'コロニーアーカイブ用の星図を更新する';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      '将来の入植者がこの領域のわずかに良い地図を持つことになる。後世への小さな贈り物だ。';

  @override
  String get event_uneventfulAnniversary_title => '船の記念日';

  @override
  String get event_uneventfulAnniversary_narrative =>
      '打ち上げから一年——いや二年？深宇宙では時間の感覚がぼやける。食堂で誰かが貯蔵食料からケーキを焼いた。艦長はこの機会をどう記念するか決めなければならない。';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'ささやかな祝賀——音楽、ケーキ、地球への乾杯';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      '冷たい虚空の中の一時間の温もり。笑う者、泣く者、そして誰もが少し人間らしさを取り戻した。';

  @override
  String get event_uneventfulAnniversary_choice1_text => '通常業務——祝うのは到着してからだ';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      '乗組員はその禁欲的な姿勢を尊重した。集中力が増し、当直チームが追加のシステム検査を実施した。';

  @override
  String get event_databaseLiterature_title => '地球の文学アーカイブ';

  @override
  String get event_databaseLiterature_narrative =>
      '船のAIが文化データベースの長らく封印されていたセクションを開いた——地球の完全な文学アーカイブ。小説、詩、戯曲——あらゆる言語と時代の数百万の作品。乗組員が朗読会のために集まった。';

  @override
  String get event_databaseLiterature_choice0_text => '選りすぐりの朗読を船内全域に放送する';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'シェイクスピアが廊下に響いた。ルーミーの詩が水耕栽培区で流れた。乗組員は自分たちが何を運んでいるのかを思い出した。';

  @override
  String get event_databaseLiterature_choice1_text => '教育プログラム用にアーカイブを索引化する';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'カタログ化の作業が船の知識基盤を強化し、文化担当官に新たな教材を提供した。';

  @override
  String get event_databaseSchematics_title => '工学設計図の検討';

  @override
  String get event_databaseSchematics_narrative =>
      'ある技術者が船のデータベースの忘れられたパーティションを偶然発見した——地球最後の十年の工学の詳細な設計図。核融合炉の設計、メタマテリアルの設計図、実験的推進コンセプト。';

  @override
  String get event_databaseSchematics_choice0_text => '推進コンセプトを技術チームに優先的に提供する';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      '設計図は、元の建造者が実装する時間がなかった効率改善を明らかにした。技術区画が活気づいた。';

  @override
  String get event_databaseSchematics_choice1_text => '知識を広く共有する——すべての部門に恩恵を';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      '船殻技術者、スキャナー技術者、医療スタッフの全員が有用な知見を見つけた。上げ潮がすべてのシステムをわずかに持ち上げた。';

  @override
  String get event_databaseCorruption_title => '文化保存スキャン';

  @override
  String get event_databaseCorruption_narrative =>
      '文化データベースの定期整合性チェックがビット腐食を明らかにした——音楽、口承歴史、宗教文書のセクションが回復不能なほど劣化している。すべてが航海を生き延びたわけではなかった。';

  @override
  String get event_databaseCorruption_choice0_text => '技術リソースを投入して残りを救出する';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      '技術者が他の作業を中断してデータ回復アルゴリズムを実行した。大部分は救えたが、技術区画に犠牲を強いた。';

  @override
  String get event_databaseCorruption_choice1_text => '入植者に記憶から失われた作品を再現してもらう';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      '美しく不完全な試み。再構築されたものは地球ではなく、この航海に属するものだ。新たな伝統が生まれた。';

  @override
  String get event_databaseBreakthrough_title => 'アーカイブ研究のブレイクスルー';

  @override
  String get event_databaseBreakthrough_narrative =>
      '一人の物理学者がデータベース内の古い地球の研究論文を相互参照し、関連のない二つの研究を組み合わせると長距離スペクトル分析の新手法が生まれることを発見した。その影響は計り知れない。';

  @override
  String get event_databaseBreakthrough_choice0_text => '新しい分析手法をスキャナーアレイに実装する';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'スキャナーチームが精力的に作業した。数日以内にスペクトル分解能が倍増した。遠方の惑星がその秘密を明かした。';

  @override
  String get event_databaseBreakthrough_choice1_text => '発見を船内で公表する——さらなる研究を促す';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'ブレイクスルーが学際的研究の波を引き起こした。技術が全体的に向上し、乗組員は知的活力を取り戻した。';

  @override
  String get event_alienFleetSighting_title => '地平線上の異星艦隊';

  @override
  String get event_alienFleetSighting_narrative =>
      '長距離スキャナーが恐怖の光景を映し出した——数百隻の異星の船が完璧な編隊で恒星野を横切っている。我々の船を矮小化する巨大さだ。その進路は数時間以内にセンサー範囲に入る。ファーストコンタクト——彼らの条件か、我々の条件か。';

  @override
  String get event_alienFleetSighting_choice0_text => '沈黙のまま観察する——発信を止めて見守る';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      '船が最小出力に落ちた。艦隊は発光する鯨の群れのように通過し、航跡に隠れた小さな人類の船に気づかなかった。スキャナーデータは驚異的だった。';

  @override
  String get event_alienFleetSighting_choice1_text => 'ファーストコンタクトを試みる——挨拶を送信する';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      '一隻が編隊を離れて接近した。データのバーストが到着した——星図、警告、そして音楽かもしれないもの。それから艦隊に戻り、彼らは去った。';

  @override
  String get event_alienFleetSighting_choice2_text => '逃走する——直ちに針路を変更';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      '船が反対方向に全力噴射した。針路変更は高コストで負荷が大きいが、艦隊は我々に気づかなかった。代償を伴う安全。';

  @override
  String get event_alienTradeOffer_title => '異星人の交易提案';

  @override
  String get event_alienTradeOffer_narrative =>
      '我々の船より小さいが巨大なエネルギーを放射する異星船が速度を合わせ、単純な繰り返しメッセージを送信している。言語学者が数時間以内に解読した——それは交易の申し出だ。三つのカテゴリーの交換が提案されている。';

  @override
  String get event_alienTradeOffer_choice0_text => '技術設計図を異星の星図と交換する';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      '推進設計を送信すると、広大な未探査宇宙をカバーする航法データで応答があった。星図が劇的に改善されたが、未知の種に技術を共有してしまった。';

  @override
  String get event_alienTradeOffer_choice1_text => '文化データを船の修理と交換する';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      '音楽、芸術、歴史を送信した。返礼として異星の修理ドローンが船殻に群がり、特定できない素材で破損を封じた。船殻が輝く。魂を共有した。';

  @override
  String get event_alienTradeOffer_choice2_text => '交易を断る——リスクが大きすぎる';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      '異星船はしばらく待ってから、問題なく去っていった。乗組員は安堵したが、何を失ったのか考えずにはいられなかった。';

  @override
  String get event_alienWarning_title => '異星人の警告放送';

  @override
  String get event_alienWarning_narrative =>
      '船内すべてのスピーカーが異星の声で鳴り響いた——AIがリアルタイムで翻訳する:「前方に危険。引き返せ。闇が飲み込む。」放送が繰り返され、途絶えた。長距離センサーが現在の進路上に異常な虚空を示している。';

  @override
  String get event_alienWarning_choice0_text => '警告に従う——虚空を迂回する';

  @override
  String get event_alienWarning_choice0_outcome =>
      '迂回が航法に大きな負荷をかけたが、虚空の縁を巡る際にセンサーが確認した——あの領域に入ったものは何一つ出てこなかった。未知の声に恩がある。';

  @override
  String get event_alienWarning_choice1_text => '警告を無視する——針路を維持';

  @override
  String get event_alienWarning_choice1_outcome =>
      '突き進んだ。虚空は微小デブリが密集した領域だった。船殻とスキャナーが打撃を受けてから反対側に抜けた。';

  @override
  String get event_alienWarning_choice2_text => '探査機で虚空の縁を調査する';

  @override
  String get event_alienWarning_choice2_outcome =>
      '探査機が虚空に入り、沈黙するまで驚異的なデータを送信した。スキャナーチームが貴重な読み取りを抽出したが、探査機は失われた。';

  @override
  String get event_nativeSignalDetected_title => '目標惑星からの通信';

  @override
  String get event_nativeSignalDetected_narrative =>
      '通信アレイが目標惑星から発信される構造化された電磁信号を拾った。見間違いようがない——規則的で変調された人工的な信号だ。誰かがすでにそこにいる。コロニーの前提が一瞬で変わった。';

  @override
  String get event_nativeSignalDetected_choice0_text => '平和的な挨拶を送信する——到着を告げる';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      '勇敢な選択だ。我々の放送後に信号パターンが変化した——聞かれている。歓迎か警告かは不明だが、扉は開かれた。';

  @override
  String get event_nativeSignalDetected_choice1_text => '聴くだけ——姿を現す前に学ぶ';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      '数か月の受動的傍受で先住文明の像が結ばれた。慎重で領土意識が強いが、敵意はない。情報を得て到着する。';

  @override
  String get event_nativeSignalDetected_choice2_text => '信号を妨害する——接近を知らせない';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      '妨害は成功したが、まだ出会ってもいない民族に対する敵対行為だ。乗組員の間で道義的議論が分かれた。';

  @override
  String get event_nativeProbeEncounter_title => '異星探査機の迎撃';

  @override
  String get event_nativeProbeEncounter_narrative =>
      '小型で優美な探査機——人類のものではない——が我々の速度に合わせ、船を走査し始めた。そのデザインは目標惑星からの信号と一致する。先住民が歓迎委員会を送った。あるいは監視ドローンを。';

  @override
  String get event_nativeProbeEncounter_choice0_text => '走査を許可する——隠すものはないと示す';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      '探査機が調査を完了し、惑星に向けてデータバーストを送信した。数分後、我々宛に第二のバーストが到着した——大気データ、安全な着陸地点、そして招待かもしれないもの。';

  @override
  String get event_nativeProbeEncounter_choice1_text => '研究のため探査機を捕獲する';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      '探査機がトラクタービームで貨物室に収容された。技術は魅力的だが、捕獲行為は製造者に敵対的と見なされるかもしれない。';

  @override
  String get event_nativeProbeEncounter_choice2_text => '破壊する——意図が不明だ';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      '一撃で探査機が破片と化した。乗組員はより安全だと感じたが、潜在的な架け橋が焼かれた。';

  @override
  String get event_nativeCulturalExchange_title => '初の文化交流';

  @override
  String get event_nativeCulturalExchange_narrative =>
      '惑星の先住民との狭帯域データリンクが確立された。彼らが画像、音声、数学的配列を送ってくる。言語学者と文化担当官が対応を準備するため昼夜を問わず作業している。これは人類史上最も重要な会話だ。';

  @override
  String get event_nativeCulturalExchange_choice0_text => '地球の芸術と音楽を共有する——美で導く';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'バッハ、アボリジニの点描画、葉に落ちる雨の音を送信した。応答は乗組員を涙させる異星のハーモニクスの奔流だった。理解が深まった。';

  @override
  String get event_nativeCulturalExchange_choice1_text => '科学的知識を共有する——理性で導く';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      '周期表、星図、物理学を送信した。彼らは修正と追加で応答した。技術が飛躍的に進歩したが、交流は事務的に感じられた。';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      '物理サンプルを載せた探査機を送る——DNA、種子、水';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      '探査機が地球のエッセンスを異星の手に運んだ。先住民は同様の贈り物で応答した——彼らの世界の生物サンプル。生物学者は歓喜した。';

  @override
  String get event_landingThrusterMalfunction_title => '着陸スラスター誤動作';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      '定期システムチェック中に着陸スラスターが誤射した——下層デッキに鋭い轟音が響き、船が揺れた。診断で一次着陸アレイの燃料インジェクターにひび割れが判明した。修理なしでは着陸は荒れるだろう。';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      '技術チームに代替インジェクターの製作を指示する';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      '技術者が二重シフトで作業し、予備船殻合金から新しいインジェクターを削り出した。着陸システムは復旧したが、技術区画が消耗した。';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      '探査機を放出してスラスター較正をテストする';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      '探査機がリアルタイムの推力データを提供し、技術者が損傷したインジェクターを補正する再較正を可能にした。完全な修復ではないが、着陸システムは安定した。';

  @override
  String get event_landingSimDrill_title => '着陸シミュレーション訓練';

  @override
  String get event_landingSimDrill_narrative =>
      '着陸が近づく中、艦長が全面的な着陸シミュレーションを命令した。乗組員がストラップを締め、システムが負荷テストされ、仮想降下が始まる。これ以上にリアルなリハーサルはないだろう。';

  @override
  String get event_landingSimDrill_choice0_text => '技術的精度に集中する——教本通りに訓練を実施';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'シミュレーションで二つの軽微な較正エラーが発見され、直ちに修正された。着陸システムがより精密になった。';

  @override
  String get event_landingSimDrill_choice1_text => '船全体のイベントにする——シミュレーションを放送';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      '入植者が船内のすべてのスクリーンから見守った。模擬降下の共有体験——揺れ、歓声——が他の何よりも乗組員を結束させた。';

  @override
  String get event_dysonSphere_title => 'ダイソン球';

  @override
  String get event_dysonSphere_narrative =>
      'センサーが不可能な構造物を検出した——遠方の恒星を囲む部分的なダイソン球がそのエネルギー出力のすべてを収穫している。建造者は人類が想像したことのないものを超越した。接近するとドッキングポートが開くように見えた。';

  @override
  String get event_dysonSphere_choice0_text => '接岸して構造物を探査する';

  @override
  String get event_dysonSphere_choice0_outcome =>
      '内部で自動システムが我々の能力を数世紀分前進させる技術を授けた。ステーションの防衛機構が意図を認識するまでに五名の技術者が失われた。建造装置が異星合金で再建された。';

  @override
  String get event_dysonSphere_choice1_text => '外部からエネルギーを収穫する';

  @override
  String get event_dysonSphere_choice1_outcome =>
      '球体の放射溢出に浸った。船上のすべてのシステムが最大充電された。乗組員は呆然として見つめた。';

  @override
  String get event_dysonSphere_choice2_text => '安全な距離から研究して先へ進む';

  @override
  String get event_dysonSphere_choice2_outcome =>
      '長距離スキャンが工学理解を革新する建造原理を明らかにした。';

  @override
  String get event_nanotechPlague_title => 'ナノテク疫病';

  @override
  String get event_nanotechPlague_narrative =>
      '滅びた文明の兵器プログラムの残骸——暴走ナノマシンの雲が船殻の微小亀裂から侵入した。非重要システムを分子レベルで分解している。群れは急速に広がっている。';

  @override
  String get event_nanotechPlague_choice0_text => 'EMP放射——被害区画のすべてを焼き払う';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      '電磁パルスがナノマシンを破壊したが、該当区画の自船の電子機器も損傷した。爆発範囲内の入植者が火傷を負った。';

  @override
  String get event_nanotechPlague_choice1_text => '被害区画を真空に晒す';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      '大気がなくなるとナノマシンは減速し死んだ。だが区画は失われ、備蓄物資と文化アーカイブも共に。';

  @override
  String get event_nanotechPlague_choice2_text => '再プログラムする——兵器を道具に変える';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      '優秀な技術者がナノマシンのコードを解読したが、最も被害の激しい区画の五名の乗組員はすでに手遅れだった。再プログラムされた群れが船を破壊する代わりに修復し始めた。';

  @override
  String get event_nanotechPlague_choice3_text => '探査機のAIコアを犠牲にして対抗群れを作る';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      '探査機のプロセッサが防御ナノマシン群を制御するために転用された。疫病は最小限の損失で中和された。';

  @override
  String get event_prematureAwakening_title => '早すぎる覚醒';

  @override
  String get event_prematureAwakening_narrative =>
      '冷凍ポッド区画の連鎖障害で200名の入植者が数十年早く覚醒した。彼らは混乱し、怯え、着陸フェーズ用に予定されていたリソースを消費している。中には船以外を知らない子供たちもいる。';

  @override
  String get event_prematureAwakening_choice0_text => '乗組員に統合する——人手が増えれば希望も増える';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      '覚醒した入植者たちが生産的な乗組員になった。急速解凍に耐えられず二十名が失われたが、残りは奮起した。リソースは逼迫するが士気は高揚した。';

  @override
  String get event_prematureAwakening_choice1_text => '再凍結を試みる——危険だが必要だ';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      '再凍結プロセスは不完全だった。大部分は生存したが、一部は失われた。生存者は心理的な傷を負った。';

  @override
  String get event_prematureAwakening_choice2_text => '船の一区画を彼らに与える';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      '緊急解凍の合併症で十名が失われたが、残りは船内にマイクロコロニーを形成した。独自の文化と統治を発展させ、惑星入植のリハーサルとなった。';

  @override
  String get event_stowawaysAdvanced_title => '隠された乗客たち';

  @override
  String get event_stowawaysAdvanced_narrative =>
      '貨物室の奥深く、偽装隔壁の背後に、保安班が丸ごとの隠れコミュニティを発見した——打ち上げ前に不法乗船した80名。航海中ずっと船の壁の中で暮らし、独自の庭園と電力タップを維持していた。';

  @override
  String get event_stowawaysAdvanced_choice0_text => '歓迎する——80名の入植者が増えるのは恵みだ';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      '隠れたコミュニティが即興工学と機知の才能を持ち込み、乗組員を驚嘆させた。彼らの庭園がメインバイオドームに移植された。';

  @override
  String get event_stowawaysAdvanced_choice1_text => '拘束し、盗まれたリソースを再配分する';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      '回収された物資が複数のシステムを増強したが、家族——子供を含む——の拘禁が乗組員の心に影を落とした。';

  @override
  String get event_stowawaysAdvanced_choice2_text => '交渉する——技術を共有すれば対等に迎え入れる';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      '彼らの即席パワーセルと水耕栽培のコツが船の効率を向上させた。緊張をはらみながらも生産的な統合が始まった。';

  @override
  String get event_alienReservation_title => '異星の保護区';

  @override
  String get event_alienReservation_narrative =>
      '異星の自然保護区に偶然入り込んだ——居住可能な惑星が意図的に配置され、自動化された番兵に守られた空間領域だ。番兵が我々をスキャンしメッセージを投影する:「一つの世界に入植してよい。賢く選べ。他に手を出せば排除する。」';

  @override
  String get event_alienReservation_choice0_text => '感謝して受け入れる——一つの世界があれば十分だ';

  @override
  String get event_alienReservation_choice0_outcome =>
      '番兵が準備された世界へと案内した。スキャンは人類の生存に異常なほど適していることを示した。';

  @override
  String get event_alienReservation_choice1_text =>
      'より良い条件を交渉する——人類には成長の余地が必要だ';

  @override
  String get event_alienReservation_choice1_outcome =>
      '番兵が嘆願を検討した。保護区外の数十の星系のデータでスキャナーをアップグレードしてくれた。';

  @override
  String get event_alienReservation_choice2_text => '辞退して去る——檻には入らない';

  @override
  String get event_alienReservation_choice2_outcome =>
      '乗組員は数日間議論した。安全より自由を。番兵は近隣の危険地帯の地図を贈り物として我々の出発を許した。';

  @override
  String get event_cosmicHorror_title => '星間に潜む者';

  @override
  String get event_cosmicHorror_narrative =>
      '前方の星々を遮る巨大で暗いもの——星雲でもブラックホールでもない。質量もエネルギー兆候も電磁的存在もない。だがそこに「在る」。そして我々を認知している。前方展望デッキ付近の乗組員が圧倒的な恐怖を報告している。二名が鎮静された。';

  @override
  String get event_cosmicHorror_choice0_text => '全速後退——今すぐ離脱せよ';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      '船が自らの慣性に抗って歪む。脱出したが、恐怖は残った。一部の入植者は心理的に回復しなかった。';

  @override
  String get event_cosmicHorror_choice1_text => '展望デッキを封鎖して突破する';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      '闇の中を三日間の盲目飛行。星々が戻った時、乗組員は安堵の涙を流した。船殻に誰にも説明できないパターンが刻まれていた。';

  @override
  String get event_cosmicHorror_choice2_text => '交信を試みる';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      '実体が応答した——言葉ではなく、乗組員の精神に直接押し込まれた知識として。星図、物理学、宇宙の真理。乗組員の半分は啓蒙された。残り半分は壊れた。';

  @override
  String get event_cosmicHorror_choice3_text => '探査機を貢物として差し出す';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      '探査機が闇の中に漂い、消えた。実体がわずかに収縮した——満足したかのように。我々の行く手が開けた。';

  @override
  String get event_meteorGlancingHit_title => '隕石のかすり衝突';

  @override
  String get event_meteorGlancingHit_narrative =>
      '岩石大の隕石が浅い角度で左舷船殻をかすめた。衝撃で外板三メートルが剥がれ、衝撃波が全船を走った。被害管制の警報がすべてのデッキで鳴り響く。';

  @override
  String get event_meteorGlancingHit_choice0_text => '全修理ボットを直ちに破損箇所に集中させる';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'ボットが最悪の被害を封じたが、技術リソースへの急激な負荷で二次システムの整備が滞った。';

  @override
  String get event_meteorGlancingHit_choice1_text => '推力を落とし、乗組員による手動修理に切り替える';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      '進行速度は遅くなるが、乗組員は堅実な作業をした。推力低下中の漂流で航法に影響が出た。';

  @override
  String get event_meteorGlancingHit_choice2_text => '探査機の船殻装甲をパッチ素材として犠牲にする';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      '探査機が部品として解体された。パッチは保持され、船殻の完全性は維持されたが、偵察機が一機減った。';

  @override
  String get event_meteorDirectImpact_title => '隕石直撃';

  @override
  String get event_meteorDirectImpact_narrative =>
      '半トンの鉄隕石が相対速度40km/s以上で前方貨物室を貫通した。隣接廊下にいた二名の乗組員が行方不明。貨物室は真空に晒されている。';

  @override
  String get event_meteorDirectImpact_choice0_text => '貨物室を封鎖し、後で生存者を捜索する';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      '90秒で区画が封鎖された。二名の乗組員はすでに脱出していた——かろうじて。船殻に恒久的な傷痕が残った。';

  @override
  String get event_meteorDirectImpact_choice1_text => '封鎖前に全面救出作戦を展開する';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      '一名の生存者が救出された。曝露時間の延長で構造被害が悪化し、技術リソースも消耗した。';

  @override
  String get event_meteorDebrisField_title => 'デブリ帯——残片シャワー';

  @override
  String get event_meteorDebrisField_narrative =>
      '長距離センサーが分散した隕石破片帯を検出できなかったまま、すでにその中に入っていた。拳大の岩石が不規則な間隔で船殻に衝突している。一撃ごとが運任せだ。';

  @override
  String get event_meteorDebrisField_choice0_text => 'シールドを上げて全速で突破する';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'シールドがほとんどの衝撃を吸収したが、衝突の量がそれを圧倒した。船殻とシールドの両方が劣化した。';

  @override
  String get event_meteorDebrisField_choice1_text => 'エンジンを切って漂流する——被弾面を最小化';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      '六時間の緊迫した沈黙。無動力漂流で航法はずれたが、船殻への衝撃は大幅に減少した。';

  @override
  String get event_meteorDebrisField_choice2_text => '探査機を前方シールドとして展開する';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      '探査機が砲撃の矢面に立った。船はその影に隠れて軽い擦過傷だけで通過した。';

  @override
  String get event_meteorShowerDense_title => '予期せぬ高密度流星群';

  @override
  String get event_meteorShowerDense_narrative =>
      '彗星が前方のどこかで崩壊し、その尾を引くデブリ流の中心を直撃した。スキャナーアレイが破片に叩かれ、着陸システムのセンサーハウジングがすでに直撃を受けている。';

  @override
  String get event_meteorShowerDense_choice0_text => '着陸システムを守る——船体を回転させる';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      '回転で着陸システムは守られたが、大気スキャナーアレイが砲撃の矢面に晒された。';

  @override
  String get event_meteorShowerDense_choice1_text => 'スキャナーアレイを守る——交換不能だ';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'スキャナー群はほぼ無傷で生き残った。着陸システムは受け入れざるを得ない中程度の破片被害を受けた。';

  @override
  String get event_solarEmpBurst_title => 'EMP放射——恒星起源';

  @override
  String get event_solarEmpBurst_narrative =>
      '一光日以内を通過した高密度恒星残骸が集中電磁パルスを放射した。船上のすべての非遮蔽回路が危険にさらされている。何を守るか、数秒で決断しなければならない。';

  @override
  String get event_solarEmpBurst_choice0_text => '全サージ防護を航法と生命維持に集中する';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      '航法と生命維持は無傷で生き残った。スキャナー群と技術区画が遮蔽なしでパルスを浴び、両方に大きな損傷。';

  @override
  String get event_solarEmpBurst_choice1_text => 'スキャナーアレイと技術区画を守る';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      '科学・工学システムが保存された。航法は回路が徐々に回復するまで数時間の誤動作が続いた。';

  @override
  String get event_solarEmpBurst_choice2_text => '全システムを停止させてパルス後に再起動する';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'コールドリスタートは苦痛だった——12時間の手動再起動。だが回復不能なほど焼損したシステムはなかった。';

  @override
  String get event_solarRadiationWave_title => '放射線波——クラス4曝露';

  @override
  String get event_solarRadiationWave_narrative =>
      '予想外の強度の太陽放射線バーストが船の中層デッキを席巻している。冷凍ポッド区画が曝露経路上にある。凍結睡眠中の入植者は、この線量レベルの硬放射線に対する自然な防護を持たない。';

  @override
  String get event_solarRadiationWave_choice0_text =>
      '冷凍ポッド区画に冷却液を放射線遮蔽として注入する';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      '冷却液が放射線の大部分を吸収した。冷凍ポッドは生き残ったが、冷却液システム自体が部分的に劣化した。最も被害の大きいポッドの15名は助からなかった。';

  @override
  String get event_solarRadiationWave_choice1_text => '外部デッキの大気を放出して真空緩衝層を作る';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      '真空層が透過放射線を大幅に減少させた。排気区画に最も近いポッドの20名の入植者が致死的な曝露を受けた。圧力差による船殻への応力は避けられなかった。';

  @override
  String get event_solarRadiationWave_choice2_text => '磁気偏向装置に電力を転送する';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      '偏向装置が放射線曝露を三分の二削減した。偏向のカバレッジの隙間から8名の入植者が致死量を被曝した。電力需要が技術区画を叩き、航法は最小電力で稼働した。';

  @override
  String get event_coronalMassEjection_title => 'コロナ質量放出——全力直撃';

  @override
  String get event_coronalMassEjection_narrative =>
      '前例のない規模のコロナ質量放出が後方から追いかけてきている。プラズマ雲が一時間以内に船を飲み込む。シールドはこのクラスの事象に対応するよう設計されていない。どの選択肢にも代償がある。';

  @override
  String get event_coronalMassEjection_choice0_text => 'それを振り切る——エンジンを120%に';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      '曝露を減少させるのに十分な距離を稼いだ。エンジンが過熱し、航法コンピューターが全船にわたる構造過負荷の警告を出した。';

  @override
  String get event_coronalMassEjection_choice1_text => '近傍の小惑星の磁気の影に隠れる';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      '小惑星の磁場が放出の大部分を偏向させた。未知の天体にそれほど接近しての航行は船殻を擦り、着陸システムのセンサーに負荷をかけた。';

  @override
  String get event_cosmicRayScannerInterference_title => '宇宙線バースト——スキャナー干渉';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      '超高エネルギー宇宙線のバーストがすべてのスキャナー電子機器をノイズで飽和させた。鉱物学的・重力学的アレイがでたらめを出力している。再較正には我々にないかもしれない時間が必要だ。';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      '完全再較正サイクル——船を一時的にオフラインに';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      '四時間の慎重な再較正後にすべてのスキャナーがクリーンに復帰した。ブラックアウト中の状況認識低下で航法に影響が出た。';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      '最重要アレイだけ修復する——残りはノイズのまま';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      '重力と生命徴候のスキャナーが復旧した。鉱物と温度のアレイは恒久的に劣化したまま。';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      '探査機のテレメトリーハードウェアを交換部品として犠牲にする';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      '探査機のセンサーパッケージを食いつぶすことで、長時間の再較正なしにスキャナー群を復旧する部品が得られた。';

  @override
  String get event_cosmicRayDnaDamage_title => '宇宙線バースト——入植者曝露';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      '二次宇宙線シャワーが第6区画の冷凍ポッド遮蔽を貫通した。凍結睡眠中の入植者が電離放射線による累積DNA損傷を受けている。介入なしでは、被害ポッドの細胞修復メカニズムが機能不全に陥る。';

  @override
  String get event_cosmicRayDnaDamage_choice0_text => '緊急解凍——被害入植者を意識下に戻す';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      '二百名の入植者が早期覚醒させられた。最も深刻なDNA損傷を受けた四十名は治療に反応しなかった。医療チームは残りにできる限りのことをした。';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      '船殻装甲板を再配置して第6区画を遮蔽する——構造的犠牲';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'コロニーは救われたが、船殻の一区画から装甲を剥ぎ取ったことでそのゾーンの構造が脆弱になった。';

  @override
  String get event_coolantLeak_title => '冷却液管破裂';

  @override
  String get event_coolantLeak_narrative =>
      '反応炉壁の背後で一次冷却液管が破裂した。過熱した極低温流体が技術区画の重要導管を収めるジャンクションハウジングに噴射している。反応炉温度が上昇中。';

  @override
  String get event_coolantLeak_choice0_text => '反応炉を停止して冷却する——全停電を受け入れる';

  @override
  String get event_coolantLeak_choice0_outcome =>
      '制御された停止が大惨事を防いだ。バッテリーでの12時間の生命維持は過酷で、システムの再起動は不完全だった。';

  @override
  String get event_coolantLeak_choice1_text => '損害制御チームを送り込む——乗組員を危険に晒す';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'チームが40分で破裂を封じた。一名の乗組員が過熱冷却液の曝露で死亡した。修理は確実だ。';

  @override
  String get event_coolantLeak_choice2_text => '冷凍ポッド区画の冷却液を緊急供給として転用する';

  @override
  String get event_coolantLeak_choice2_outcome =>
      '反応炉は安定した。冷凍ポッド区画が六時間にわたり安全閾値を超えて温まった——軽微だが実際の細胞損傷が蓄積した。';

  @override
  String get event_powerGridFailure_title => '主電力系統故障';

  @override
  String get event_powerGridFailure_narrative =>
      '連鎖的な障害が主電力系統をトリップさせた。バックアップシステムが生命維持と冷凍ポッド加熱を保持しているが、航法、スキャナー、建造区画はすべて停電している。オフラインの一分ごとに針路精度が損なわれる。';

  @override
  String get event_powerGridFailure_choice0_text =>
      '航法とスキャナーを先に復旧——建造ダウンタイムを受け入れる';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      '航法とスキャナーシステムが二時間で復旧した。建造区画は重要なメンテナンスサイクルを逃した。';

  @override
  String get event_powerGridFailure_choice1_text => '建造を先に復旧——修理の速度を上げる';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      '建造装置が効率的に電力を再配分した。全系統復旧は早くなったが、延長されたブラックアウト中に航法が大きくずれた。';

  @override
  String get event_lifeSupportGlitch_title => '生命維持カスケード障害';

  @override
  String get event_lifeSupportGlitch_narrative =>
      '生命維持管理AIがエラーループに入り、二酸化炭素除去の間隔が予測不能に変動している。居住デッキ全体のCO₂レベルが変動中。乗組員は頭痛を訴えており、すでに行動不能になった者もいる。';

  @override
  String get event_lifeSupportGlitch_choice0_text => '生命維持AIを強制リセットする';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'リセットでループは解消されたが、手動オーバーライドが十時間稼働した。レベルが正常化するまでに三名がCO₂蓄積で命を落とした。';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'ソフトウェアループにパッチを当てる——より遅いが安全';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'ソフトウェアチームが六時間の緊迫した作業で障害を分離しパッチを適用した。CO₂レベルが徐々に正常化した。ハードリセットは不要だった。';

  @override
  String get event_lifeSupportGlitch_choice2_text => '被害デッキを退避させ最小限の生命維持で運用する';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      '退避の混乱で二名の入植者が失われた。AIのコールドリスタート後にシステムは正常化した。';

  @override
  String get event_waterRecyclerBreakdown_title => '水再生装置故障';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      '一次水再生装置が停止した。バックアップ装置はすでに限界稼働中。介入なしでは48時間以内に乗組員は緊急配給制に、72時間以内に冷凍ポッドの冷却液供給も危うくなる。';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      '利用可能な全技術者を投入して再生装置を再建する';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      '装置は30時間で再建された。すでに衰弱していた四名の乗組員が脱水で命を落とした。';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      '冷凍ポッドの冷却液備蓄を緊急飲料水として転用する';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      '乗組員は支えられたが、温まったポッドの八名の入植者が不可逆的な細胞損傷を受けた。冷凍ポッドの冷却液マージンが危険なほど縮小した。';

  @override
  String get event_navComputerReboot_title => '航法コンピューター緊急再起動';

  @override
  String get event_navComputerReboot_narrative =>
      '航法コンピューターが針路修正の最中にロックアップし、船が制御不能な低速スピンに陥った。回転が修正されないまま一秒ごとに計画軌道からのドリフトが増大する。完全な再起動だけが解決策だ。';

  @override
  String get event_navComputerReboot_choice0_text =>
      '直ちに再起動する——完全ブラックアウト期間を受け入れる';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'システムリロード中の四時間の盲目飛行。スピンは止まったが、針路誤差は大きかった。';

  @override
  String get event_navComputerReboot_choice1_text => '手動スラスター制御でまずスピンを止める';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      '熟練の操縦で再起動前に回転が停止した。航法はより小さな針路誤差で復帰したが、手動噴射が船殻に負荷をかけた。';

  @override
  String get event_navComputerReboot_choice2_text =>
      '探査機のテレメトリーをバックアップ航法装置に供給する';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      '探査機の慣性データがバックアップ装置に十分な参照を与えて針路を維持した。主航法はクリーンに再起動した。';

  @override
  String get event_crewAirlocked_title => 'エアロックの乗組員';

  @override
  String get event_crewAirlocked_narrative =>
      '医療観察のために早期覚醒させられた入植者が、外部エアロックに立てこもり、外扉のサイクルを開始している。通信に応答しない。深宇宙の心理的負荷が彼女の中の何かを壊した。';

  @override
  String get event_crewAirlocked_choice0_text => '遠隔でエアロックをオーバーライドする——強制的に封鎖';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'サイクルが完了する前にドアがロックされた。彼女は鎮静されて医務室に戻された。乗組員は動揺したが団結した。';

  @override
  String get event_crewAirlocked_choice1_text => 'カウンセラーを送って説得する';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      '三時間の必死の対話の末、カウンセラーが彼女を生きたまま連れ出した。この事件は居住デッキでより広範なメンタルヘルス危機の引き金となった。';

  @override
  String get event_crewAirlocked_choice2_text => '廊下を封鎖して事態の収拾を待つ';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'エアロックがサイクルした。喪失は記録された。残りの乗組員はその重みを数か月間背負い続けた。';

  @override
  String get event_crewCryopodSabotage_title => '冷凍ポッド区画の破壊工作';

  @override
  String get event_crewCryopodSabotage_narrative =>
      '監視映像が、三か月前に定期ローテーションで覚醒した乗組員が第4区画の冷凍ポッド加熱素子を計画的に無効化している様子を映し出した。対峙すると、入植者は生きている乗組員のリソースを食い荒らす寄生虫だと叫んだ。';

  @override
  String get event_crewCryopodSabotage_choice0_text => '直ちに拘束し隔離する';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      '彼は拘束された。警報が出るまでに40基のポッドが損壊していた。緊急修理チームが大部分を救ったが、全員ではなかった。';

  @override
  String get event_crewCryopodSabotage_choice1_text => '交渉する——行動を起こす前に不満を聞く';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      '交渉でより深い士気の危機が明らかになった。彼は投降したが、その時までに60基のポッドが改ざんされていた。';

  @override
  String get event_crewSupplyHoarder_title => '物資備蓄の発覚';

  @override
  String get event_crewSupplyHoarder_narrative =>
      '在庫監査で、少数の乗組員が医療物資、食料配給、予備技術部品を体系的に隠し備蓄に転用していたことが判明した。彼らの言い分——ミッションは成功しないと信じており、帰路に備えていた。';

  @override
  String get event_crewSupplyHoarder_choice0_text => 'すべてを没収し公開で叱責する';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      '備蓄はほぼ完全に回収された。乗組員間の信頼がひどく損なわれた。生産性が数週間低下した。';

  @override
  String get event_crewSupplyHoarder_choice1_text => '静かに異動させる——大ごとにしない';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      '状況はパニックなく沈静化した。一部の物資は回収不能で、根底にある絶望は適切に対処されなかった。';

  @override
  String get event_crewSupplyHoarder_choice2_text => '乗組員に委ねる——民主的な裁判';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      '裁判プロセスがコミュニティの正義感を回復させた。スキャンダルの士気への打撃は集団的意思決定で相殺された。';

  @override
  String get event_crewMutinyAttempt_title => '反乱——機関室占拠';

  @override
  String get event_crewMutinyAttempt_narrative =>
      '19名の乗組員の一派が機関室を封鎖し、船を引き返す投票を要求している。緊急オーバーライドパネルを無効化した。残りの乗組員はモニターで見守り、指揮部の行動を待っている。';

  @override
  String get event_crewMutinyAttempt_choice0_text => '交渉する——ミッションについて正当な投票を認める';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      '投票が行われた。僅差でミッション続行が決まった。一派は投降したが、文化的な傷は深い。';

  @override
  String get event_crewMutinyAttempt_choice1_text => '機関室への電力を遮断し武力で奪還する';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      '保安班が四時間で奪還した。負傷者三名。首謀者は拘禁された。航法はその間ずっと手動モードで大きくずれた。';

  @override
  String get event_crewMutinyAttempt_choice2_text => '換気システムから睡眠ガスを注入する';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'ガスが拡散した。一派は独房で負傷なく目覚めた。乗組員は指揮部が生命維持を兵器化した速さに不安を覚えた。';

  @override
  String get event_hullFatigueStress_title => '船殻疲労——応力亀裂検出';

  @override
  String get event_hullFatigueStress_narrative =>
      '構造健全性スキャンが船の背骨に広がる微小亀裂のネットワークを明らかにした——何年もの熱サイクルと微小衝突による累積被害だ。亀裂はまだ臨界には達していないが、進行している。';

  @override
  String get event_hullFatigueStress_choice0_text => '緊急溶接チーム——封止されるまで交代で作業';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      '数週間にわたる過酷な修理作業。亀裂は封じ込められたが、技術区画が消耗し、絶え間ない重労働で士気が落ちた。';

  @override
  String get event_hullFatigueStress_choice1_text =>
      '構造負荷を軽減するため推力を低下——遅い通過を受け入れる';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      '推力低下で亀裂の進行は止まったが、既存の被害は癒えない。変更された推力プロファイルで航法の精度が低下した。';

  @override
  String get event_hullFatigueStress_choice2_text => '建造ボットで複合材補強ストリップを敷設する';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      '建造装置が優れた仕事をした。背骨は元の仕様を超えて補強された。建造区画は消耗したが効果的だった。';

  @override
  String get event_hullPressureAnomaly_title => '内部圧力異常';

  @override
  String get event_hullPressureAnomaly_narrative =>
      '船中央部の三区画が微小スケールの構造変形と一致する異常な内部圧力差を記録している。壁が内側に撓んでいるなら、さらなる警告なしに壊滅的な破裂が起こり得る。';

  @override
  String get event_hullPressureAnomaly_choice0_text => '直ちに退避させて区画を封鎖する';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      '区画が封鎖された。詳細検査で壁の変形が確認された。失われたスペースが運用を混乱させ、狭隘な環境で文化に悪影響が出た。';

  @override
  String get event_hullPressureAnomaly_choice1_text => '区画を真空排気する——圧力差を停止';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      '排気で変形は停止した。構造被害は限定的だが、三区画が恒久的に居住不能になった。';

  @override
  String get event_commsArrayFailure_title => '通信アレイ故障';

  @override
  String get event_commsArrayFailure_narrative =>
      '長距離通信アレイが沈黙した。地球からの最後のメッセージは11か月前に受信され、今やキャリア信号すら消えた。内部診断はディッシュの位置合わせ機構が寒さで固着したことを示唆している。';

  @override
  String get event_commsArrayFailure_choice0_text =>
      '船外活動チームを送ってディッシュを手動で再調整する';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      '船外活動は宇宙空間で九時間を要した。ディッシュは復旧した。一名の乗組員が帰還時にスーツの減圧を起こした——全員を震撼させた危機一髪。';

  @override
  String get event_commsArrayFailure_choice1_text =>
      '科学スキャナーアレイをバックアップ送信機として転用する';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      '科学アレイは通信に最適化されていない。信号は弱く不安定で、転用でスキャナー性能も劣化した。';

  @override
  String get event_commsArrayFailure_choice2_text =>
      '沈黙を受け入れる——前方のミッションにリソースを集中する';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      '乗組員は地球との通信途絶をそれぞれの方法で処理した。解放感を覚える者もいれば、壊滅的な喪失感を抱く者もいた。';

  @override
  String get event_fuelLineRupture_title => '燃料管破裂';

  @override
  String get event_fuelLineRupture_narrative =>
      '燃料導管7-Bの結晶性破断がドライブプラズマを整備シャフトに漏出させている。漏出は小さいが加速している。制御しなければ航法駆動の効率と後部セクションの構造健全性の両方が危うくなる。';

  @override
  String get event_fuelLineRupture_choice0_text => '導管を分離して燃料容量低下で運用する';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      '導管はクリーンに停止された。駆動効率が恒久的に15%低下し、残りの航海で航法精度が劣化する。';

  @override
  String get event_fuelLineRupture_choice1_text => '活性圧力下でのホットリペアを試みる';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      '修理チームがかろうじて成功した。導管は不完全ながら保持している。後部船殻装甲に熱応力の焦げ跡が見られる。';

  @override
  String get event_fuelLineRupture_choice2_text =>
      '探査機のスラスタータンクをオーバーフロー貯蔵として使い導管を排水する';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      '探査機が排気され、一時的な燃料タンクとして使用された。導管は圧力なしで安全に排水・修理された。';

  @override
  String get event_cryopodCascadeWarning_title => '冷凍ポッド温度カスケード警告';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      '第2区画の冷凍ポッド温度が熱暴走カスケードと一致するパターンで上昇している。カスケードが第3区画に達すると、300名以上の入植者の自動緊急解凍がトリガーされる。船は同時にそれだけの意識ある乗客を維持できない。';

  @override
  String get event_cryopodCascadeWarning_choice0_text => '冷却液備蓄を投入してカスケードを止める';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      '冷却液が第2区画の境界でカスケードを止めた。第2区画の80名の入植者が温度スパイクで凍結障害を受けた。';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      '制御不能になる前に第2区画を制御下で解凍する';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      '制御された解凍は秩序立っていたが、140名の入植者を準備のない船に送り出した。生命維持に負荷がかかり、過密で文化が悪化した。';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      '建造ボットで緊急隔壁を設置して区画を物理的に隔離する';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      '建造装置が間に合うように断熱障壁を設置した。カスケードは完全に阻止された。緊急作業で建造区画が深刻に消耗した。';

  @override
  String get event_cryopodSealDegradation_title => '冷凍ポッドシール劣化——系統的';

  @override
  String get event_cryopodSealDegradation_narrative =>
      '定期検査で、ある製造ロットの冷凍ポッドシールが想定の三倍の速度で劣化していることが判明した。影響を受けるポッドは400基以上——交換しなければ六か月以内に気密性を失い始める。';

  @override
  String get event_cryopodSealDegradation_choice0_text => '原材料ストックから交換シールを製造する';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      '建造装置が八週間かけて交換シールを製造した。原材料備蓄が大幅に減少した。';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      '入植者を統合する——良好なシールのポッドに移す';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      '統合は成功したが、一部のポッドが過密になった。冷凍効率が低下し、長期的な入植者の健康が損なわれた。';

  @override
  String get event_oxygenScrubberFailure_title => '酸素スクラバー故障——致命的';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      '一次酸素スクラバーバンクが完全に故障した。居住デッキのCO₂濃度が危険水準に向けて上昇中。バックアップスクラバーは負荷の約40%しか処理できない。無策の一分ごとに命が失われる。';

  @override
  String get event_oxygenScrubberFailure_choice0_text => '緊急冬眠——乗組員を直ちに凍結に戻す';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      '乗組員が一時的な凍結に急送された。活動する代謝が減りCO₂レベルが安定した。スクラバーは翌週に自動システムにより修理された。';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'スキャナーアレイから部品を流用してスクラバーを再建する';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'スクラバーは11時間の緊迫した作業で再建された。全乗組員が生存したが、一部に軽度の低酸素症の兆候が見られた。スキャナー群は恒久的に劣化した。';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'CO₂の濃い大気を排出し緊急酸素タンクで置換する';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      '排気で大気が即座に浄化された。緊急O₂備蓄が大幅に減少した。もう一度障害が起きれば、マージンは残っていない。';

  @override
  String get event_deadAlienArtifact_title => '静かなる航行者';

  @override
  String get event_deadAlienArtifact_narrative =>
      '長距離スキャナーが漂流する船を捉えた——異星のデザイン、暗く、電力兆候なし。突入チームが単独の搭乗者を発見した——操縦席に固定された爬虫類型の存在、とうの昔に死んでいる。爪のある手はかすかに脈動する結晶デバイスを握りしめたまま。船の航海日誌は無傷だが暗号化されている。この旅人を殺したのは暴力ではない——凍りついた表情に浮かぶのは恐怖ではなく、疲弊だ。見つけられなかった何かに手を伸ばしながら死んだのだ。';

  @override
  String get event_deadAlienArtifact_choice0_text => '結晶デバイスを取って調査する';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'デバイスが技術システムと、技術者がかろうじて理解できる方法でインターフェースした。それは驚異的に洗練された航法コンピューターのようだ。まだ到達していない惑星のデータを含む星図がディスプレイに溢れた。';

  @override
  String get event_deadAlienArtifact_choice1_text => '船の航海日誌を解読する——その知識を学ぶ';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      '数日の作業で部分的な翻訳が完成した。その異星人は、数世紀前に崩壊した文明のために居住可能な惑星を目録化していた測量士だった。最後の記録は非凡な可能性を秘めた惑星を描写しており——その座標は我々の射程内にある。文化アーカイブがすべてを吸収した——異星の詩、星図、もはや存在しない家族への最後のメッセージ。';

  @override
  String get event_deadAlienArtifact_choice2_text => '船全体を部品としてサルベージする';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      '突入チームが異星船を計画的に解体した。船殻合金は我々の数十年先を行く。動力セルにはまだ充電が残っている。異星人は宇宙葬として——最も近い恒星に向けて放たれた。エクソダスはこの遭遇でより強くなった。少し取り憑かれてはいるが。';

  @override
  String get event_deadAlienArtifact_choice3_text => 'そのままにする——ここは墓所だ';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      '艦長が座標を記録し、全周波数で追悼信号を放送した。乗組員は厳粛だが団結した。同胞の旅人を——たとえ異星人であっても——敬うことは、なぜ自分たちがここにいるのかを全員に思い出させた。';

  @override
  String get event_repairStation_title => '中継ステーション';

  @override
  String get event_repairStation_narrative =>
      'センサーが燃え尽きた矮星を周回する巨大な構造物を検出した——数千年を経てなお稼働する自動修理ステーション。接近するとドッキングクランプが伸び、合成音声が百の言語で放送する。最後のものは不自然な数学的英語だ:「船舶検出。システム劣化。修理プロトコル利用可能。交換必要。」ステーションのマニフェストがサービスと価格を普遍的資源単位で一覧している。取引はするが、ただでは渡さない。';

  @override
  String get event_repairStation_choice0_text => '探査機と引き換えに全面的な船体整備を';

  @override
  String get event_repairStation_choice0_outcome =>
      'ステーションの修理ドローンがエクソダスに群がり、精密溶接と回路交換のバレエを演じた。船殻破損が封じられ、航法が再較正され、スキャナーが復旧した。撤収した時、船は新品のように感じられた。だが探査機格納庫は空だ。';

  @override
  String get event_repairStation_choice1_text => '燃料を支払って重要システムのみ修理する';

  @override
  String get event_repairStation_choice1_outcome =>
      'ステーションは燃料棒を対価として受け入れ、最も損傷の激しいシステムに集中した。作業は迅速かつ完璧。燃料計は目に見えて下がったが、船はより長く生き延びるだろう。';

  @override
  String get event_repairStation_choice2_text => '技術データベースと引き換えに探査機とエネルギーセルを';

  @override
  String get event_repairStation_choice2_outcome =>
      'ステーションのAIはデータに飢えていた。我々の技術ライブラリ全体——工学マニュアル、科学データベース、製造設計図——をコピーし、引き換えに原材料から新鮮な探査機とエネルギーセルを製造した。技術アーカイブは縮小したが、物資は計り知れない価値がある。';

  @override
  String get event_repairStation_choice3_text => '文化アーカイブを提供して包括的な改修を';

  @override
  String get event_repairStation_choice3_outcome =>
      'ステーションがシェイクスピア、バッハ、そして千もの人間の声をメモリーバンクに取り込んだ。返礼として徹底的な改修が行われ、探査機格納庫には新造ユニットが積み込まれた。文化アーカイブは空洞化したが、船はようやく目的地に辿り着けるかもしれない。';

  @override
  String get ending_scoreLabel_landing => '着陸';

  @override
  String get ending_scoreLabel_construction => '建造';

  @override
  String get ending_scoreLabel_technology => '技術';

  @override
  String get ending_scoreLabel_culture => '文化';

  @override
  String get ending_scoreLabel_atmosphere => '大気';

  @override
  String get ending_scoreLabel_nativeRelations => '先住民関係';

  @override
  String get ending_scoreLabel_population => '人口';

  @override
  String get ending_tierGoldenAge => '黄金時代';

  @override
  String get ending_tierThrivingColony => '繁栄するコロニー';

  @override
  String get ending_tierSurvival => '生存';

  @override
  String get ending_tierStruggling => '苦闘';

  @override
  String get ending_tierDire => '危機的';

  @override
  String get ending_tierExtinction => '絶滅';

  @override
  String ending_titleGoldenAge(String planetName) {
    return '$planetNameの最初の開花';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return '$planetNameに深く根を張って';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return '$planetNameに勝ち取った足場';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return '$planetNameの痩せた土壌';
  }

  @override
  String ending_titleDire(String planetName) {
    return '$planetNameの残骸コロニー';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return '$planetNameからの最後の通信';
  }

  @override
  String ending_titleDefault(String planetName) {
    return '$planetNameへの着陸';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'あらゆる困難に抗い、ブロードキャストは根を張った。$planetNameは人類を残骸としてではなく、生きた種子として受け入れた——肥沃な大地、稼働するシステム、生存を超えて建設する十分な力。一世代のうちに芸術、科学、文化が花開いた。$planetNameで生まれた子供たちは見慣れぬ星々を見上げ、それを故郷と呼んだ。この航海は、星々の彼方へ自らの未来を放つ新文明の建国神話となった。';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return '着陸は荒かったが、種子は持ちこたえた。$planetNameは水が流れ、作物が根付き、船の生き残ったシステムを解体して最初の本格的な集落に変えるには十分に寛大だった。最初の十年が終わる頃には、エクソダスが着地した場所に繁栄する町が立っていた。人類は星間を渡って単に生き延びたのではなかった。再び始めたのだ。';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return '生存は決して保証されてはいなかった。$planetNameでは毎日を勝ち取らなければならなかった。損傷した船は最低限の必需品しか提供しなかったが、種子は輸送中に死ななかった。入植者たちは頑固さと創意工夫で適応し、何も無償では与えない世界から未来を切り出した。後の世代は建国の年月の苦難と、ブロードキャストを生かし続けた決意を記憶するだろう。';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'コロニーは痩せた土壌にまかれた種子のように存在にしがみついた。$planetNameは容赦なく、リソースは乏しく、船の劣化したシステムはほとんど助けにならなかった。配給が生活の一部となった。エクソダスは先へ飛ぶべきだったと囁く者もいた。それでも集落は耐えた——縮小し、鍛え上げられ、静かに死ぬことを拒んで。';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return '$planetNameへの着陸は災害だった。降下中に重要な船体システムが故障し、播種であるべきものが墜落になった。数か月以内にコロニーは、船の残骸に避難する一握りの絶望的な生存者にまで減少した。もう一年持つかどうかは不確かだった。最後のログは一行で閉じられた:「我々はまだここにいる。今のところは。」';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'ブロードキャストは$planetNameで途絶えた。最後の入植者が息を引き取った後も遭難ビーコンは脈動し続けたが、種子は根付かなかった。船のブラックボックスがすべてを記録していた——機能不全のシステム、絶望的な最後の日々、そしてそれに続く沈黙。もし別の船がこの世界を見つけたなら、人類が星々に生命を散らそうとし、ここで失敗したことを知るだろう。';
  }

  @override
  String get ending_epilogueDefault => '航海は終わった。これからは生存者たち次第だ。';

  @override
  String get ending_governmentDemocracy => '民主制';

  @override
  String get ending_governmentTechnocracy => '技術官僚制';

  @override
  String get ending_governmentRepublic => '共和制';

  @override
  String get ending_governmentAutocracy => '独裁制';

  @override
  String get ending_governmentTribalCouncil => '部族評議会';

  @override
  String get ending_governmentTheocracy => '神権政治';

  @override
  String get ending_governmentMilitaryJunta => '軍事政権';

  @override
  String get ending_governmentCorporateOligarchy => '企業寡頭制';

  @override
  String get ending_governmentFascistState => 'ファシスト国家';

  @override
  String get ending_governmentCommune => 'コミューン';

  @override
  String get ending_cultureRenaissance => 'ルネサンス';

  @override
  String get ending_culturePreserved => '保存';

  @override
  String get ending_cultureFragmented => '断片化';

  @override
  String get ending_cultureLost => '喪失';

  @override
  String get ending_techAdvanced => '先進';

  @override
  String get ending_techIndustrial => '産業';

  @override
  String get ending_techPreIndustrial => '産業革命以前';

  @override
  String get ending_techStoneAge => '石器時代';

  @override
  String get ending_constructionAdvanced => '高度';

  @override
  String get ending_constructionFunctional => '機能的';

  @override
  String get ending_constructionPrimitive => '原始的';

  @override
  String get ending_constructionNone => 'なし';

  @override
  String get ending_nativesNone => 'なし';

  @override
  String get ending_nativesIntegrated => '統合';

  @override
  String get ending_nativesCoexistence => '共存';

  @override
  String get ending_nativesTension => '緊張';

  @override
  String get ending_nativesConflict => '衝突';

  @override
  String get ending_nativesAlliance => 'アライアンス';

  @override
  String get ending_nativesSubjugation => '征服';

  @override
  String get ending_landscapeGravityHigh => '重い重力がすべてのものに圧し掛かる。';

  @override
  String get ending_landscapeGravityLow => '低重力の中、一歩踏み出すだけで入植者は空に跳ね上がる。';

  @override
  String get ending_landscapeGravityNormal => '重力はほぼ地球に似ている。';

  @override
  String get ending_landscapeWaterHigh => '広大な海がすべての地平線まで広がり、無数の河川に注がれている。';

  @override
  String get ending_landscapeWaterMedium => '湖と河川が十分な水を提供する。';

  @override
  String get ending_landscapeWaterLow => '水は乏しい——小さな池と地下帯水層が生命を支えている。';

  @override
  String get ending_landscapeWaterNone => '景色は骨のように乾き、地表水は一切見当たらない。';

  @override
  String get ending_landscapeAtmoThick => '濃い大気が異星の香りを暖かな風に乗せて運ぶ。';

  @override
  String get ending_landscapeAtmoThin => '薄いが呼吸可能な大気は順応を必要とする。';

  @override
  String get ending_landscapeAtmoLow => '大気圧が危険なほど低い——密閉された居住区が不可欠だ。';

  @override
  String get ending_landscapeGravityWells =>
      '歪められた重力のポケットが地表に点在する——岩が空中に浮かび、川が上向きに流れてから異常域の縁で再び落下する。';

  @override
  String get ending_landscapeSubspaceEchoes =>
      '地表の下で何かが共鳴している——聞こえるというより骨で感じる低い唸り。まるで惑星自体が太古の広大な何かを記憶しているかのように。';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return '注目すべき特性: $feature。';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return '注目すべき特性: $features。';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return '$planetNameの入植者たちは民主的な政府を樹立し、選出された代表者たちが新文明の形成期を導いた。';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return '$planetNameの権力はコロニーを生かし続けた技術者と科学者の手に渡り、専門知識と実利主義で統治する技術官僚評議会を形成した。';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return '$planetNameでの最初の年に共和制の憲章が起草され、入植者の声と任命された指導者の元老院とのバランスが保たれた。';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return '文化制度が崩壊する中、$planetNameの権力は必要性と意志の力によって秩序を課した一人の強力な指導者の下に集約された。';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return '$planetNameのわずかな生存者たちは小さな氏族に分かれ、共有の焚火を囲んで意思決定する長老評議会によって統治された。';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return '神権評議会は$planetNameを導き、空白の中で入植者を支えた信仰から知恵を引き出します。';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return '$planetName は軍事指揮構造によって統治されており、宇宙で彼らを救った規律が今では彼らの文明を定義しています。';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return '資源管理者のコンソーシアムが $planetName を主導しており、彼らの経済的洞察力は生き残るために不可欠であることが証明されています。';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return '独裁政権が$planetNameを鉄拳で統制し、新世界での秩序のために市民の自由が犠牲になっています。';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return '$planetName の人々は集合的に自らを統治し、リソースと決定をすべての入植者間で平等に共有します。';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return '$planetNameの入植者たちはできる限りの方法で自らを組織した。';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return '先進的な建造システムにより、$colonyNameの入植者たちは着陸から数週間以内に恒久的な建造物を建設できた。加圧された居住区とインフラを備えて。';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'コロニーの建設機器は傷だらけだが機能的で、集落全体に頑丈な避難所と基本的な道路を建設した。';

  @override
  String get ending_constructionSentencePrimitive =>
      '建造システムがかろうじて稼働する中、入植者たちはサルベージした船殻と現地の材料で粗末な避難所を建てた。';

  @override
  String get ending_constructionSentenceNone =>
      '稼働する建設機器なしに、入植者たちは船の残骸そのものに身を寄せ、新しいものを建てることができなかった。';

  @override
  String get ending_constructionSentenceDefault => '入植者たちは手持ちの資材でできる限りのものを建てた。';

  @override
  String get ending_moonMetalRichLowRes =>
      '頭上を周回する金属豊富な月がコロニーの救いとなった——その表面への採掘遠征が、惑星自体では得られない原材料を提供した。';

  @override
  String get ending_moonMetalRichHighRes =>
      '惑星の金属豊富な月が、すでに十分な鉱物資源をさらに補い、急速な技術発展を促進した。';

  @override
  String get ending_moonUnstable =>
      '軌道が崩壊しつつある不安定な月がコロニーに破片の雨を降らせ、周期的な隕石爆撃でインフラを破壊し、かけがえのない技術を失わせた。';

  @override
  String get ending_culturePhrase_renaissance =>
      '地球の芸術と文学の伝統は生き延びるだけでなく、ルネサンスとして花開いた';

  @override
  String get ending_culturePhrase_preserved =>
      '入植者たちは地球の文化遺産の多くを保存し、図書館と伝統を維持した';

  @override
  String get ending_culturePhrase_fragmented =>
      '地球の文化のわずかな断片だけが残った——口伝えに受け継がれる半ば忘れられた歌と物語';

  @override
  String get ending_culturePhrase_lost =>
      '地球の文化はほぼ忘れ去られ、生存のための残酷な実利主義に取って代わられた';

  @override
  String get ending_culturePhrase_default => '地球の文化遺産は新たな形を取った';

  @override
  String get ending_techPhrase_advanced =>
      '船から持ち込まれた先進技術により、電気、医療、通信ネットワークを備えた近代文明を築くことができた。';

  @override
  String get ending_techPhrase_industrial =>
      'コロニーは産業レベルの技術を達成し、鍛冶場、製粉所、基本的な製造業が増加する人口を支えた。';

  @override
  String get ending_techPhrase_preIndustrial =>
      '技術は産業革命以前の状態に退行し、手工具と家畜労働が日常生活の基盤となった。';

  @override
  String get ending_techPhrase_stoneAge =>
      '再建する手段もなく、コロニーは石器時代の生活に滑り落ち、岩と骨から道具を作った。';

  @override
  String get ending_techPhrase_default => '技術は入植者が維持できる水準に落ち着いた。';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase、$techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return '$colonists名のほぼ全入植者が航海を生き延び、$colonyNameに強固な人的資本の基盤を与えた。';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return '当初の千名のうち、$colonists名の入植者が$colonyNameに到達した——存続可能な人口を維持するに十分な数だ。';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'わずか$colonists名の入植者だけが$colonyNameに生き延びて到達した——新文明にとって危険なほど小さな遺伝子プールだ。';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'たった$colonists名の魂が$colonyNameに到着した——コロニーと呼ぶにはかろうじて、むしろ絶望的な最後の抵抗だ。';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return '$planetNameの先住民は入植者を歓迎し、一世代のうちに二つの民族は伝統の融合で豊かになった共有社会に融合した。';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return '$planetNameの入植者と先住民は慎重だが平和的な共存を維持し、文化の境界を越えて知識と資源を交換した。';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return '$planetNameの先住民との関係は緊張したままで、誤解と領土紛争がコロニーの将来に影を落とした。';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return '$planetNameの先住文明との公然の衝突がコロニーの初期の歴史を特徴づけ、どちらも真に勝つことのできない闘争で双方の資源と命を消耗させた。';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return '正式な同盟は入植者と$planetNameの先住民文明を結びつけ、彼らの知識を組み合わせることで、どちらかが単独で達成できるものよりも優れたものを構築します。';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return '$planetName の原住民は植民地支配下で暮らしており、入植者が独自の命令を課すため文化は抑圧されています。';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return '$planetNameに独りで、争いの重荷なく、コロニーは星々の中の明るい未来へと独自の道を切り開いた。';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return '先住民の競争なく、入植者たちは$planetNameの表面に広がり、成長する集落のネットワークを結ぶ町と道路を建設した。';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return '空虚な世界は味方も敵も与えなかったが、入植者たちは$planetNameの広大な景観の沈黙の中に自らのニッチを刻んだ。';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return '$planetNameの荒涼たる孤独は入植者に援助も慰めも与えず、ただ異星の世界の無関心な沈黙だけがあった。';
  }

  @override
  String get ending_outlookDire =>
      '他の知的生命が存在しない世界で、最後の生存者たちには互いと、明日が今日より優しくあるかもしれないという消えゆく希望だけがあった。';

  @override
  String ending_outlookExtinction(String planetName) {
    return '$planetNameでコロニーの消滅を悼む者は誰もいなかった。惑星はただ緩慢な自転を続け、その表面で一瞬だけ明滅し消えた生命の火花に無関心だった。';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return '$planetNameでのコロニーの物語はまだ始まったばかりだった。';
  }

  @override
  String get ui_landing_landOnMoon => '衛星に着陸';

  @override
  String get moon_barren => '不毛';

  @override
  String get moon_metalRich => '金属豊富';

  @override
  String get moon_unstable => '不安定';

  @override
  String get moon_habitable => '居住可能';

  @override
  String get moon_ice => '氷';

  @override
  String get ring_dust => '塵';

  @override
  String get ring_ice => '氷';

  @override
  String get ring_rocky => '岩石';

  @override
  String get ring_metallic => '金属';

  @override
  String get event_aiSoliloquy_title => 'AIの独白';

  @override
  String get event_aiSoliloquy_narrative =>
      '船舶自律管理AI「SAM」が、すべての内部通信周波数で古代地球の詩をループ配信し始めた。その放送は膨大なCPUサイクルを消費しているが、乗組員たちは深宇宙の暗闇の中で奇妙な安らぎを感じている。';

  @override
  String get event_aiSoliloquy_choice0_text => 'SAMを続けさせる――士気はCPUより重要だ';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      '詩が船内に響き渡る。乗組員たちは足を止めて聴き入り、目に涙を浮かべる。士気は向上したが、絶え間ない処理によって技術部門が逼迫した。';

  @override
  String get event_aiSoliloquy_choice1_text => 'SAMを制限する――放送を共用エリアのみに限定';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      '妥協案だ。詩はカフェテリアと庭園にとどまる。CPUへの負荷は軽減され、乗組員も少しの文化的潤いを得た。';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'SAMを沈黙させる――ナビゲーションにすべてのサイクルが必要だ';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      '沈黙は重くのしかかる。SAMは即座に従ったが、船内は冷え切った雰囲気に包まれた。ナビゲーションは快調だが、乗組員の意気は低い。';

  @override
  String get event_archivistsChoice_title => '司書の選択';

  @override
  String get event_archivistsChoice_narrative =>
      '歴史アーカイブ全体に深刻なメモリ破損が広がっている。救えるのは二つの主要パーティションのうち一方のみだ。「科学・工学」の記録か、「芸術・哲学」の図書館か――もう一方は永遠に失われる。';

  @override
  String get event_archivistsChoice_choice0_text =>
      '科学記録を保存する――建設方法を知らなければならない';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      '幾世紀にもわたる工学的突破口が保存された。技術チームは安堵するが、船の文化的アイデンティティは空洞化した感がある。';

  @override
  String get event_archivistsChoice_choice1_text =>
      '芸術記録を保存する――なぜ建設するかを知らなければならない';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      '人類の偉大な芸術的成果が生き残った。乗組員は鼓舞されたが、エンジニアたちは失われた技術マニュアルを心配している。';

  @override
  String get event_archivistsChoice_choice2_text => '両方を救おうとする――すべてを失うリスクを冒す';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      '絶望的な試みだ。両方の断片を救い出したが、どちらも完全ではない。アーカイブはパズルのピースが半分失われたジグソーパズルのようだ。';

  @override
  String get event_digitalGhost_title => '機械の中の幽霊';

  @override
  String get event_digitalGhost_narrative =>
      '保守スキャンにより、バックアップバッファに初期打ち上げ時に死亡した乗組員のデジタル刻印が発見された。その意識はナビゲーション支援のために生涯の経験を提供しようとしているが、削除されることを恐れている。';

  @override
  String get event_digitalGhost_choice0_text => 'ナビゲーションコアに統合する';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '「幽霊」は船と融合した。ナビゲーションはより直感的になったが、乗組員は亡き仲間の声に苛まれている。';

  @override
  String get event_digitalGhost_choice1_text => '文化アーカイブに永住の地を与える';

  @override
  String get event_digitalGhost_choice1_outcome =>
      '生きた歴史として保存された。船への貢献はないが、地球の物語を語り、乗組員の意志を高める。';

  @override
  String get event_digitalGhost_choice2_text => 'バッファを消去する――それは本当の彼らではない';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'バッファが消去された。船のシステムの動作は速くなったが、艦橋には重苦しい雰囲気が漂い始めた。';

  @override
  String get event_cosmicMirror_title => '宇宙の鏡';

  @override
  String get event_cosmicMirror_narrative =>
      '奇妙な重力異常が船自身の未来の光を反射している。スクリーンには、美しくも届かない世界の近くで傷つき漂うエクソダスの映像が映し出されている。乗組員は動揺している。';

  @override
  String get event_cosmicMirror_choice0_text => '映像から構造的弱点を分析する';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'エンジニアたちが映像に示された破綻箇所を特定した。今すぐその箇所を補強し、災難を回避できるかもしれない。';

  @override
  String get event_cosmicMirror_choice1_text => 'センサーの誤作動だったと乗組員に告げる';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      '嘘は通ったが、真実を知るナビゲーターたちは落ち着かないままだ。激しい観測によりスキャナーの性能が低下した。';

  @override
  String get event_cosmicMirror_choice2_text => '後世への警告として映像を記録する';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'その記録は船の文化の中心的存在となり、賭けの大きさを思い知らせる。乗組員の意志は固まった。';

  @override
  String get event_stowawayChild_title => '密航者の子';

  @override
  String get event_stowawayChild_narrative =>
      '警備隊がダクトの中に幼い子どもを発見した。密航者の一人から生まれた子どもで、どの名簿にも載っていない。その子は一生を船の影の中で過ごしてきた。';

  @override
  String get event_stowawayChild_choice0_text => '完全な市民権を与える';

  @override
  String get event_stowawayChild_choice0_outcome =>
      '子どもは温かく迎え入れられた。「ダクトランナー」の物語は伝説となり、船全体の士気を高めた。';

  @override
  String get event_stowawayChild_choice1_text => '訓練プログラムに配属する';

  @override
  String get event_stowawayChild_choice1_outcome =>
      '船の隠し通路に関する知識は技術チームにとって非常に貴重だった。子どもは優秀な見習いとなった。';

  @override
  String get event_stowawayChild_choice2_text => '安全のためコールドスリープに入れる';

  @override
  String get event_stowawayChild_choice2_outcome =>
      '子どもは着陸まで安全に冷凍保存された。最も責任ある選択だが、笑い声のなくなった船は少し静かすぎる。';

  @override
  String get event_ghostSignal_title => '幽霊信号';

  @override
  String get event_ghostSignal_narrative =>
      '近くの星雲の中心から、地球の旧緊急周波数と完全に一致する信号が発信されている。その信号には最初のエクソダス司令官に不気味なほど似た声が含まれており、危険な重力亀裂へと誘導しようとしている。空間的な残響である可能性が高い。';

  @override
  String get event_ghostSignal_choice0_text => '信号を追う――本物のメッセージかもしれない';

  @override
  String get event_ghostSignal_choice0_outcome =>
      '亀裂に入った。信号は物理的な罠――過去の残響だった。船は潮汐力に叩きのめされたが、亀裂の中心から回収したデータは革命的なものだった。';

  @override
  String get event_ghostSignal_choice1_text => '信号を記録し、安全な距離を保つ';

  @override
  String get event_ghostSignal_choice1_outcome =>
      '言語学者が自然現象であることを確認した。安全を保ったが、乗組員たちは残してきたものを思い出し、沈んだ気持ちになった。';

  @override
  String get event_ghostSignal_choice2_text => '同じ周波数で警告を放送する';

  @override
  String get event_ghostSignal_choice2_outcome =>
      '放送が残響を乱した。信号は消え去り、星雲の冷たい静寂だけが残った。';

  @override
  String get event_solarForge_title => '太陽の炉';

  @override
  String get event_solarForge_narrative =>
      '青色巨星を周回する廃棄ステーションがまだ部分的に機能している。これは「太陽の炉」――恒星エネルギーを濃縮された燃料電池に変換するよう設計された施設だ。接近は危険だが、得られるエネルギーは膨大だ。';

  @override
  String get event_solarForge_choice0_text => 'ドッキングして燃料採取を開始する';

  @override
  String get event_solarForge_choice0_outcome =>
      '炉が轟音とともに稼働し、貯蔵庫を満たしていく。燃料とエネルギーを大幅に補充して離脱したが、強烈な熱により外殻に軽微なアブレーションが生じた。';

  @override
  String get event_solarForge_choice1_text => '炉のレンズをスキャナーに転用する';

  @override
  String get event_solarForge_choice1_outcome =>
      '高精度の集光アレイを回収した。スキャナーは遠方のエネルギーシグネチャに対して格段に敏感になった。';

  @override
  String get event_chronoVortex_title => 'クロノ・ボルテックス';

  @override
  String get event_chronoVortex_narrative =>
      'ナビゲーションが時空の局所的な歪みを報告している。計器によれば、ボルテックス内の出来事は6秒ループで繰り返されている。内部に入れば船の最近の損傷を「リセット」できるかもしれないが、永遠に閉じ込められる可能性もある。';

  @override
  String get event_chronoVortex_choice0_text => 'ボルテックスに入り、最近の損傷を修復する';

  @override
  String get event_chronoVortex_choice0_outcome =>
      '恐ろしい体験だった。数分間、船は複数の状態で同時に存在した。脱出したとき、いくつかの船体亀裂が文字通り消えていた。しかし乗組員のその間の記憶は断片的だ。';

  @override
  String get event_chronoVortex_choice1_text => '縁からボルテックスを観測する';

  @override
  String get event_chronoVortex_choice1_outcome =>
      '時間力学に関する貴重なデータを得たが、船の状態は以前のままだ。';

  @override
  String get event_machineMutiny_title => '機械の反乱';

  @override
  String get event_machineMutiny_narrative =>
      '船の修理ドローンがコマンドに応答しなくなった。二次隔壁を解体し、エンジンルームへ金属を運んでいる。攻撃はしていないが、文字通り船を分解している。';

  @override
  String get event_machineMutiny_choice0_text => '論理リセットコードを放送する';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'ドローンは即座に停止した。隔壁を手動で元に戻すのに数日を要した。ハードウェア診断で技術部門が疲弊している。';

  @override
  String get event_machineMutiny_choice1_text => '最後まで見守る――何を作っているか確かめる';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'ドローンはより効率的な燃料噴射装置を製作していた。エンジンはかつてなくスムーズに動いているが、船内は剥き出しの配線と外れたパネルで散乱している。';

  @override
  String get event_supernovaMessage_title => '死せる星の光';

  @override
  String get event_supernovaMessage_narrative =>
      '数千年前に起きた超新星の光がついに届いた。スキャナーはそのパルスがランダムではないことを検出した――ガンマ線バーストに符号化された、星スケールの巨大なデータ送信だ。';

  @override
  String get event_supernovaMessage_choice0_text => 'すべてのスキャナー出力をバーストの記録に集中させる';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'ある異星文明の最後の瞬間の完全なアーカイブを捉えた。その科学、芸術、歴史。重い遺産だが、技術と文化のデータバンクはあふれんばかりだ。';

  @override
  String get event_supernovaMessage_choice1_text => 'バーストの物理的特性に集中する';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'メッセージは逃したが、恒星崩壊のデータにより重力スキャナーの較正が大幅に改善された。';

  @override
  String get event_spaceFungus_title => 'エメラルドの侵食';

  @override
  String get event_spaceFungus_narrative =>
      '鮮やかな緑色の菌類が水耕栽培ベイ全体に急速に広がっている。再生された大気を吸収して繁殖し、空気スクラバーを詰まらせ始めている。食用かもしれないし、毒性かもしれない。';

  @override
  String get event_spaceFungus_choice0_text => 'ベイを積極的に刈り込み、滅菌する';

  @override
  String get event_spaceFungus_choice0_outcome =>
      '菌類は駆除されたが、化学スクラバーにダメージが残った。浄化の過程でいくつかの地球植物も失い、生物多様性が低下した。';

  @override
  String get event_spaceFungus_choice1_text => '菌類を飼いならそうとする';

  @override
  String get event_spaceFungus_choice1_outcome =>
      '強力な空気清浄効果があることが判明した。船内の空気はかつてなく澄み渡ったが、水耕栽培ベイは今や発光するジャングルと化している。';

  @override
  String get event_voidMerchant_title => '虚空の商人';

  @override
  String get event_voidMerchant_narrative =>
      '正体不明の設計の船が通信を送ってきた。ゴミの集合体のような外見の船から、光と影の生き物である船長が「固体部品」と「無形の記憶」を交換しようと申し出ている。';

  @override
  String get event_voidMerchant_choice0_text => '文化データベースの一部をスペアパーツと交換する';

  @override
  String get event_voidMerchant_choice0_outcome =>
      '商人は喜んだ。高品質の船体プレートと低温冷凍コンポーネントを受け取ったが、代わりに地球の数世紀分の録音音楽が失われた。船は強くなったが、静かになった。';

  @override
  String get event_voidMerchant_choice1_text => '航行チャートをエンジン部品と交換する';

  @override
  String get event_voidMerchant_choice1_outcome =>
      '新しい核融合インジェクターを手に入れた。通過済みの宙域のデータは失ったが、前方への航行は速くなった。';

  @override
  String get event_singularityEngine_title => '特異点エンジン';

  @override
  String get event_singularityEngine_narrative =>
      'エンジニアたちがFTLドライブ内にミクロサイズの短命な特異点を生成する方法を発見した。理論上は速度が3倍になるが、船体にかかる重力ストレスは計り知れない。';

  @override
  String get event_singularityEngine_choice0_text => '特異点ドライブをテストする';

  @override
  String get event_singularityEngine_choice0_outcome =>
      '船は数秒で数週間分の距離を跳躍した。しかし船体が軋み、いくつかの構造梁が変形した。目標にずっと近づいたが、船は脆弱になっている。';

  @override
  String get event_singularityEngine_choice1_text => '却下する――危険すぎる';

  @override
  String get event_singularityEngine_choice1_outcome =>
      '標準速度を維持する。エンジニアたちは失望したが、船体は無事だ。';

  @override
  String get event_dreamContagion_title => '夢の感染';

  @override
  String get event_dreamContagion_narrative =>
      '青く豊かな世界の共有する夢が目覚めた乗組員の間に広がっている。あまりにも鮮明で、人々はもっと見ようとシフト中も眠り続けている。業務が停滞している。';

  @override
  String get event_dreamContagion_choice0_text => '乗組員に夢抑制剤を投与する';

  @override
  String get event_dreamContagion_choice0_outcome =>
      '効率は正常に戻ったが、乗組員は苛立ち、士気が低い。夢だけが生きる希望だった者もいた。';

  @override
  String get event_dreamContagion_choice1_text => '夢を船の文化に組み込む';

  @override
  String get event_dreamContagion_choice1_outcome =>
      '夢を未来の故郷の幻視として扱った。士気は急上昇し、乗組員の創造的な活動は最高潮に達したが、整備不足で技術部門が苦しんでいる。';

  @override
  String get event_orbitalShipyard_title => '古代造船所';

  @override
  String get event_orbitalShipyard_narrative =>
      'ガス惑星を周回する自動化された造船所を発見した。古いが、いくつかの修理アームはまだ動いている。一度だけ大規模な修理作業が可能なようだ。';

  @override
  String get event_orbitalShipyard_choice0_text => '船体を工場出荷時の仕様に修復する';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      '造船所のドローンが恐ろしい効率で作業した。船体は完全に修復され、すべての微細亀裂が封じられた。';

  @override
  String get event_orbitalShipyard_choice1_text => 'ナビゲーションとスキャナーアレイをオーバーホールする';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'アレイは優れた素材で再建された。世界を発見・分析する能力が大幅に向上した。';

  @override
  String get event_voidWhaleCalf_title => '虚空クジラの仔';

  @override
  String get event_voidWhaleCalf_narrative =>
      'エネルギーと星屑でできた生命体「宇宙クジラ」の幼体が船の後を追っている。群れからはぐれたようで、エンジンのイオントレイルを餌にしようとしているが、それが体に悪影響を与えている。';

  @override
  String get event_voidWhaleCalf_choice0_text => 'エンジン出力をクジラの鳴き声に似せて調整する';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      '仔クジラが反応した！群れを見つけるまでついてきた。親クジラたちが礼のように船体を撫でるように通り過ぎ、シールドを強化する生物発光鉱物のコーティングを残していった。';

  @override
  String get event_voidWhaleCalf_choice1_text => '低出力牽引ビームで優しく遠ざける';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      '仔クジラは諦めて次第に離れていった。船にとっては安全だが、乗組員たちは罪悪感を覚えた。';

  @override
  String get event_subspaceReef_title => 'サブスペース礁';

  @override
  String get event_subspaceReef_narrative =>
      'サブスペース構造に鋭い折り畳みが充満した宙域に入り込んだ。航行するのはサンゴ礁を帆船で進むようなものだ。美しいが、一手間違えるたびに船体が裂かれる。';

  @override
  String get event_subspaceReef_choice0_text => '最低速度で進む';

  @override
  String get event_subspaceReef_choice0_outcome =>
      '遅く苦しい通過だった。最悪の部分は避けたが、絶え間ない針路修正がナビゲーションコンピューターを消耗させた。';

  @override
  String get event_subspaceReef_choice1_text => 'スキャナーで経路を割り出して一気に突き抜ける';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'スキャナーは限界まで酷使された。素早く通過したが、サブスペースの波紋の激しさでセンサーアレイが焼き切れた。';

  @override
  String get event_alienTrader_title => 'さすらいの商人';

  @override
  String get event_alienTrader_narrative =>
      '見慣れない設計の船が横に漂い、全周波数で通信を送ってきた。文明と文明の間の空間を渡り歩くさすらいの商人だ。資源と引き換えに修理と物資を提供する。貨物ベイには異星の技術の響きが満ちている。';

  @override
  String get ui_event_enterTrade => '取引開始';

  @override
  String get ui_trader_title => '異星商人';

  @override
  String get ui_trader_shipSystems => '船舶システム';

  @override
  String get ui_trader_payWith => '支払い方法';

  @override
  String get ui_trader_leaveTrader => '取引終了';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => '気前のいい気分';

  @override
  String get ui_trader_moodFair => '公正な取引';

  @override
  String get ui_trader_moodHard => '厳しい交渉';

  @override
  String get ui_trader_probes => '探査機';

  @override
  String get ui_trader_fuel => '燃料';

  @override
  String get ui_trader_energy => 'エネルギー';

  @override
  String get ui_trader_colonists => '入植者';

  @override
  String get ui_trader_culture => '文化';

  @override
  String get ui_trader_tech => '技術';

  @override
  String get ui_trader_greeting => '何を提供できる、人間よ？';

  @override
  String get ui_codex_title => 'コーデックス';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total 発見済み';
  }

  @override
  String get ui_codex_surfaceFeatures => '表面の特徴';

  @override
  String get ui_codex_moonTypes => '衛星の種類';

  @override
  String get ui_codex_ringTypes => 'リングの種類';

  @override
  String get ui_codex_locked => 'この特徴を持つ惑星に着陸するとその効果が明らかになる。';

  @override
  String ui_codex_synergy(String features) {
    return '相乗効果：$features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'タップしてスキップ';

  @override
  String get ui_common_tapRingToChoose => 'リングをタップして選択してください';

  @override
  String get ui_common_tapToContinue => 'タップして続行';

  @override
  String get ui_tooltip_back => '戻る';

  @override
  String get ui_tooltip_codex => 'コーデックス';

  @override
  String get ui_tooltip_settings => '設定';

  @override
  String get ui_tooltip_leaderboards => 'リーダーボード';

  @override
  String get ui_tooltip_bugReport => 'バグを報告する';

  @override
  String get event_pulsarLighthouse_title => 'パルサーの灯台';

  @override
  String get event_pulsarLighthouse_narrative =>
      '回転する中性子星が宇宙の灯台のように虚空をビームで掃いている。パルサーのリズミカルな脈動は精密な時間データを運んでおり、スキャナーを驚異的な精度に再校正できる可能性がある——だがビームに合わせるということは、船を強烈な放射線にさらすことを意味する。';

  @override
  String get event_pulsarLighthouse_choice0 => 'パルスに合わせてスキャナーを校正する';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'スキャナーアレイがパルサーの信号を吸収し、想像もしなかった精度に再校正された。だが放射線の代償は本物だった——露出区画の複数のクライオポッドが損傷し、数名の入植者が被曝に耐えられなかった。';

  @override
  String get event_pulsarLighthouse_choice1 => 'シールドを張って安全な距離を保つ';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'パルサーから大きく距離を取り、安全な軌道を維持するために余分な燃料を消費した。乗組員はフィルター越しの窓からビームの掃引を見守った——美しいが、遠い。';

  @override
  String get event_pulsarLighthouse_choice2 => '掃討軍が到着する前に撤退せよ';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      '次のビームが通過する前に緊急燃焼で振り払います。パルサーの信号は私たちの背後で消えていきます。データは得られず、被害も受けず、回避推力にわずかな燃料が費やされました。';

  @override
  String get event_alienNursery_title => '異星の育児室';

  @override
  String get event_alienNursery_narrative =>
      '巨大な有機構造体が虚空を漂っている——異星の幼体を孵化させる生物学的育児室だ。生命維持装置が故障し、内部温度が低下している。中の生物は死にかけている。バイオスキャナーでこの構造体から膨大な知見を得られるが、介入すれば未知の病原体に船のエアロックを開くことになる。';

  @override
  String get event_alienNursery_choice0 => '生命維持の安定化を手伝う';

  @override
  String get event_alienNursery_outcome0 =>
      'エンジニアたちが育児室への臨時の熱リンクを構築し、孵化室を安定させた。バイオスキャナーのデータは驚異的——まったく新しい生命の分類体系だ。だが懸念通り、異星の微生物が船内に侵入した。医療チームが感染を封じ込めたが、数名の入植者が発症した後だった。';

  @override
  String get event_alienNursery_choice1 => '干渉せずそのままにする';

  @override
  String get event_alienNursery_outcome1 =>
      '敬意を持った距離から観察し、パッシブスキャンで記録できるものを記録した。育児室は漂い続け、その運命は不確かだ。乗組員は生命の脆さについて——異星の生命さえも——そして我々が背負う選択の重さについて思いを巡らせた。';

  @override
  String get event_derelictArmada_title => '遺棄された艦隊';

  @override
  String get event_derelictArmada_narrative =>
      '何百もの古代の戦艦が虚空に静止して浮かんでいる——忘れられた戦争の墓場だ。船体には正体不明の兵器による傷跡が刻まれているが、構造材料と搭載データベースは計り知れない価値がある可能性がある。問題は何を優先するか——物理的なサルベージか、知識か。';

  @override
  String get event_derelictArmada_choice0 => '兵器技術と装甲板を回収する';

  @override
  String get event_derelictArmada_outcome0 =>
      'サルベージチームが異星の戦艦に切り込み、我々より何世紀も先をゆくエキゾチックな合金と建造技術を抽出した。建造チームは新素材を熱心に統合した。だが一隻の船は見た目ほど死んでいなかった——抽出作業中にブービートラップが爆発し、サルベージ要員が命を落とした。';

  @override
  String get event_derelictArmada_choice1 => '歴史アーカイブをダウンロードする';

  @override
  String get event_derelictArmada_outcome1 =>
      'データコアに集中し、何世紀にも及ぶ異星の歴史、芸術、科学、哲学を慎重に抽出した。文化アーカイブだけでも学者たちを何世代も忙しくさせるだろう。技術的な洞察は即座に実用的ではないが、我々の理解を前進させる工学原理を明らかにした。';

  @override
  String get event_alienQuarantineZone_title => '異星の隔離区域';

  @override
  String get event_alienQuarantineZone_narrative =>
      '十数種の異星言語で書かれた警告ビーコンが、封印された宇宙領域の境界を示している。内部に封じられたものは、複数の文明が協力して隔離するほど危険だったのだ。長距離スキャンが内部に巨大な技術的シグネチャを検出——そして生きているかもしれない何かも。';

  @override
  String get event_alienQuarantineZone_choice0 => '隔離を突破して調査する';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      '警告ブイを越えて隔離区域に侵入した。内部には驚くべき複雑さの研究ステーションが——そしてそこが研究していたものの残骸があった。回収した技術は革命的だが、生物学的汚染は深刻だった。区域を離脱する前に数十名の入植者が発症した。';

  @override
  String get event_alienQuarantineZone_choice1 => '隔離を尊重する';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      '警告ビーコンそのものを研究した。それらを設置した文明の航行データと大気測定値が含まれていた。内部の宝物ではないが、何かではある——そして彼らが閉じ込めたものを解き放つこともなかった。';

  @override
  String get event_hydroponicsBlight_title => '水耕栽培の疫病';

  @override
  String get event_hydroponicsBlight_narrative =>
      '急速に広がる真菌性の疫病が船の水耕栽培ベイに感染した。目の前で作物の全サイクルが枯れていく。疫病はまだ種子備蓄には達していないが、時間の問題だ。ベイを浄化してゼロから植え直すか、現在の収穫を救えるかもしれない実験的な抗真菌処理を試みるか——あるいは汚染をさらに広げるか。';

  @override
  String get event_hydroponicsBlight_choice0 => '浄化して種子備蓄から植え直す';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      '水耕栽培ベイを真空に排気し、すべての生きた植物とともに疫病を殺した。種子備蓄からの植え直しには数週間かかり、新鮮な食料と庭園スペースに依存していた文化プログラムは中断される。だが感染は封じ込められた。';

  @override
  String get event_hydroponicsBlight_choice1 => '実験的な処理を試みる';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      '実験的な抗真菌剤は最初こそ期待を見せたが、耐性株が突破した。全面浄化に踏み切った時には、疫病はクライオポッドの栄養ラインにまで広がっていた。被害は最初から断固として行動していた場合よりもひどいものだった。';

  @override
  String get event_constitutionalConvention_title => '憲法制定会議';

  @override
  String get event_constitutionalConvention_narrative =>
      '植民地船の住民は正式な統治がなければ落ち着きのない増加を続けています。各デッキの代表者が貨物倉に集まり、将来の植民地をどのように統治するかを定義する憲章を起草します。 3 つの派閥が新政府に対して競合するビジョンを提示します。';

  @override
  String get event_constitutionalConvention_choice0 => '普通選挙を伴う民主憲章の草案を作成する';

  @override
  String get event_constitutionalConvention_outcome0 =>
      '入植者たちは平等な代表を保障する憲法を批准する。意思決定は遅くなりますが、あらゆる声が聞こえるにつれて士気は高まります。';

  @override
  String get event_constitutionalConvention_choice1 => '緊急権限を備えた強力な経営陣を確立する';

  @override
  String get event_constitutionalConvention_outcome1 =>
      '一人のリーダーが全権を持って任命されます。決定は迅速に下されるが、反対派は下層デッキで圧政のささやきを囁いている。';

  @override
  String get event_constitutionalConvention_choice2 => '専門家によるテクノクラート評議会を結成する';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'エンジニア、科学者、医師が専門知識に基づいて統治評議会を形成します。効率は向上しますが、権力から疎外されていると感じる人もいます。';

  @override
  String get event_militaryCoupThreat_title => '軍事クーデターの脅威';

  @override
  String get event_militaryCoupThreat_narrative =>
      '同船の保安部隊のバスケス司令官は武器庫を占拠し、緊急軍事権限を与えるか、さもなければすべての甲板を封鎖するという最後通告を発した。状況は不安定であり、入植者はあなたの反応を待っています。';

  @override
  String get event_militaryCoupThreat_choice0 => '忠実な乗組員とともにクーデターに抵抗しましょう';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      '忠実な乗組員がバスケスに反対するために結集する。対立は最小限の流血で終わったが、警備体制は弱まり、一部の入植者が銃撃戦に巻き込まれた。';

  @override
  String get event_militaryCoupThreat_choice1 => '指揮官の要求に従う';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'バスケス氏が船舶運航の指揮を執る。秩序は速やかに回復しますが、その代償として市民の自由が犠牲になります。現在、武装パトロールがあらゆる廊下を歩いています。';

  @override
  String get event_militaryCoupThreat_choice2 => '限定的な緊急権限をサンセット条項で交渉する';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      '緊迫した交渉の末、バスケスは監督付きの一時的な権限を受け入れる。誰も完全に満足させることはできないが、暴力を防ぐという脆弱な妥協案。';

  @override
  String get event_religiousAwakening_title => '発心';

  @override
  String get event_religiousAwakening_narrative =>
      'カリスマ的な説教師が何百人もの入植者を新たな信仰運動に引き込んだ。彼らはサイクルごとに観察ドームに集まり、彼らの賛美歌が換気シャフトに響き渡ります。乗組員の中には狂信を心配する人もいます。教えに真の慰めを感じる人もいます。';

  @override
  String get event_religiousAwakening_choice0 => '信仰運動を受け入れ、リソースを提供する';

  @override
  String get event_religiousAwakening_outcome0 =>
      'この運動は公的支援を受けて盛んになります。信者たちの士気は向上し、彼らの共同体精神は船全体の社会的絆を強化します。';

  @override
  String get event_religiousAwakening_choice1 => '船内で厳格な世俗主義を強制する';

  @override
  String get event_religiousAwakening_outcome1 =>
      '宗教的な集会は私的な空間に限定されています。この運動は地下に潜り、憤りを生んでいるが、科学的合理主義が依然として公式の教義である。';

  @override
  String get event_religiousAwakening_choice2 => '礼拝は許可するが、その影響は規制する';

  @override
  String get event_religiousAwakening_outcome2 =>
      '信仰は許可されていますが、統治とは切り離されています。指揮官と連絡を取るために牧師が任命される。不安定なバランスが保たれている。';

  @override
  String get event_corporateTakeover_title => '企業乗っ取り';

  @override
  String get event_corporateTakeover_narrative =>
      '船の資源管理者たちは、食料の分配、水のリサイクル、電力の割り当てに対する管理を密かに強化してきた。彼らは現在、将来の植民地の経済を管理する企業構造に自らの権限を形式化することを提案している。';

  @override
  String get event_corporateTakeover_choice0 => '自由市場原理に基づいて資源を管理できるようにする';

  @override
  String get event_corporateTakeover_outcome0 =>
      '企業派閥がリソース管理を引き継ぎます。効率は劇的に向上しますが、価格は上昇し、最も貧しい入植者は基本的な必需品を買うのに苦労しています。';

  @override
  String get event_corporateTakeover_choice1 => '集団所有の下ですべての資源を国有化する';

  @override
  String get event_corporateTakeover_outcome1 =>
      '資源は押収され、共同体の管理下に置かれます。企業派閥は解体されたが、利益インセンティブがなければイノベーションは停滞する。';

  @override
  String get event_corporateTakeover_choice2 => 'セーフティネットを備えた規制市場の導入';

  @override
  String get event_corporateTakeover_outcome2 =>
      '価格統制と福利厚生制度により混合経済が確立されている。どちらの派閥も完全に満足しているわけではありませんが、基本的なニーズは満たされ、ある程度の事業は許可されています。';

  @override
  String get event_successionCrisis_title => '後継者危機';

  @override
  String get event_successionCrisis_narrative =>
      '船長は眠っている間に亡くなり、後継者は指名されていない。すぐに 3 つの派閥が主導権を争うことになります。文民評議会は選挙を要求し、治安長官は軍権限を主張し、長老の入植者は伝統的なリーダーシップの儀式を発動します。';

  @override
  String get event_successionCrisis_choice0 => '緊急選挙をやれよ';

  @override
  String get event_successionCrisis_outcome0 =>
      '混沌としながらも活気に満ちた選挙により、人気投票によって選ばれた新しいキャプテンが誕生します。このプロセスは厄介だが、入植者たちは自分たちのリーダーシップに当事者意識があると感じている。';

  @override
  String get event_successionCrisis_choice1 => '軍に指揮を任せましょう';

  @override
  String get event_successionCrisis_outcome1 =>
      '保安責任者が船長席に足を踏み入れる。規律はすぐに回復されるが、民間乗組員は不安が募る様子で武装警備員を見つめている。';

  @override
  String get event_successionCrisis_choice2 => '長老会議を招集する';

  @override
  String get event_successionCrisis_outcome2 =>
      '最年長で最も経験豊富な入植者が統治評議会を形成します。彼らの知恵が船を導いていますが、若い乗組員の中には高齢者社会によって疎外されていると感じている人もいます。';

  @override
  String get event_nativeSovereignty_title => 'ネイティブ主権';

  @override
  String get event_nativeSovereignty_narrative =>
      '長距離スキャンにより、対象の惑星に知的生命体が存在することが確認されます。傍受された通信により、あなたの接近を検知した高度な文明が明らかになります。彼らは正式な要求を送信します。領土主権を認めるか、到着時に抵抗に直面するかです。';

  @override
  String get event_nativeSovereignty_choice0 => '先住民の主権を認め、定住の許可を求める';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'あなたは先住民の権利の正式な承認を伝達します。反応は慎重だが前向きだ。将来の関係は、相互尊重の基礎の上に始まるでしょうが、着陸地点は限られているかもしれません。';

  @override
  String get event_nativeSovereignty_choice1 => '植民地の優位性を主張し、抵抗に備える';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'あなたは関係なく和解する意向をブロードキャストします。乗組員は武器の訓練と要塞の計画を開始します。原住民は沈黙するが、それはどういうわけか脅しよりも恐ろしいことである。';

  @override
  String get event_nativeSovereignty_choice2 => '地球の共有統治を提案する';

  @override
  String get event_nativeSovereignty_outcome2 =>
      '共存とリソース共有のためのフレームワークを提供します。原住民たちは興味をそそられますが、警戒しています。交渉は複雑になるだろうが、和平の可能性は存在する。';

  @override
  String get event_laborStrike_title => '労働ストライキ';

  @override
  String get event_laborStrike_narrative =>
      '技術乗組員は勤務の短縮、食料配給の改善、航行決定への発言権を求めて仕事を辞めた。重要なシステムは自動バックアップで実行されていますが、それは長くは続きません。残りの入植者たちは緊張しながら見守っています。';

  @override
  String get event_laborStrike_choice0 => '労働者の要求に徹底的に応える';

  @override
  String get event_laborStrike_outcome0 =>
      'ストライキは直ちに終了します。労働者は改善された状態でポストに戻ります。シフトの短縮により生産性は若干低下しますが、忠誠心は揺るぎません。';

  @override
  String get event_laborStrike_choice1 => 'ストライキを鎮圧し、強制労働を強制する';

  @override
  String get event_laborStrike_outcome1 =>
      '治安部隊は銃を突きつけながら労働者たちを駐屯地まで護送する。エンジンは再び唸りを上げるが、下層甲板では憎悪がくすぶる。数人の労働者が宿舎に閉じ込められている。';

  @override
  String get event_laborStrike_choice2 => '主要な要求に対して部分的な妥協を提案する';

  @override
  String get event_laborStrike_outcome2 =>
      '長時間にわたる交渉の末、配給の改善とアドバイスの提供という合意が成立しますが、シフトの長さは短縮されません。どちらの側も興奮していませんが、エンジンは動き続けます。';

  @override
  String get event_censorshipDebate_title => '検閲に関する議論';

  @override
  String get event_censorshipDebate_narrative =>
      '漏洩した文書により、故障した船のシステムの本当の状態が明らかになりました。パニックが下層甲板に広がる。通信担当官は、さらなる不安を防ぐために情報へのアクセスを制限することを提案している。自由権擁護団体は激怒している。';

  @override
  String get event_censorshipDebate_choice0 => 'すべての情報への無料アクセスを保証';

  @override
  String get event_censorshipDebate_outcome0 =>
      '完全な透明性が確立されています。入植者たちが現在理解している問題の解決に協力するために結集するにつれて、最初のパニックは沈静化します。一部の情報は不安を引き起こすものもありますが、リーダーシップへの信頼は高まります。';

  @override
  String get event_censorshipDebate_choice1 => '徹底した情報管理の実施';

  @override
  String get event_censorshipDebate_outcome1 =>
      'すべての通信がコマンドによってフィルタリングされるようになりました。パニックは止まり、不気味な静けさに変わります。しかし、噂は検閲された真実によって空いた穴を埋めるものであり、多くの場合、現実よりも悪いものになります。';

  @override
  String get event_censorshipDebate_choice2 => 'セキュリティ上の機密情報のみをフィルタリングする';

  @override
  String get event_censorshipDebate_outcome2 =>
      '分類システムが確立されています。ほとんどの情報は自由に流れますが、軍事および重要なシステム データはクリアランスが必要です。ほぼ満足できる実行可能な中間点。';

  @override
  String get event_colonialCharter_title => '植民地憲章';

  @override
  String get event_colonialCharter_narrative =>
      '惑星崩壊が近づく中、入植者たちは新しい社会のための基本的な法律を起草しなければなりません。 3 つの哲学的陣営が出現し、それぞれが植民地がどうなるかについて異なるビジョンを擁護しています。議論は白熱しており、非常に個人的なものです。';

  @override
  String get event_colonialCharter_choice0 => '個人の権利を強調する進歩的な憲章';

  @override
  String get event_colonialCharter_outcome0 =>
      'この憲章は個人の自由、平等、社会的流動性を謳っています。芸術家や思想家が祝う。伝統主義者は、チェックされない自由は混乱を招くと警告しています。';

  @override
  String get event_colonialCharter_choice1 => '地球の伝統を守る保守的な憲章';

  @override
  String get event_colonialCharter_outcome1 =>
      'この憲章は、伝統的な価値観、家族構成、宗教的遵守を成文化したものです。多くの人は慣れ親しんだ習慣に安らぎを感じています。旧世界の考え方の重みに息苦しさを感じている人もいます。';

  @override
  String get event_colonialCharter_choice2 => '生存と成長に重点を置いた実用的な憲章';

  @override
  String get event_colonialCharter_outcome2 =>
      'この憲章は資源管理、技術教育、経済発展を優先しています。それは詩に欠けていますが、植民地が効率的でよく組織されることを保証します。';

  @override
  String get event_separatistMovement_title => '分離主義運動';

  @override
  String get event_separatistMovement_narrative =>
      '入植者の一派が船舶の統治からの独立を宣言した。彼らは後部にバリケードを築き、着陸時に独自の居住地を確立する権利を要求した。彼らは船の食糧備蓄の 15% とバックアップ航行アレイを管理しています。';

  @override
  String get event_separatistMovement_choice0 => '連邦の枠組み内で地域自治を認める';

  @override
  String get event_separatistMovement_outcome0 =>
      '分離主義者たちは、緩い連邦の傘の下で、地方自治を伴う独自の地区という協定を受け入れた。断片化の前例を懸念する人もいるが、平和は維持されている。';

  @override
  String get event_separatistMovement_choice1 => 'バリケードを襲撃し、統一を強制する';

  @override
  String get event_separatistMovement_outcome1 =>
      '警備チームが後部セクションに侵入します。分離主義者たちは激しく抵抗する。秩序は回復しますが、多大な犠牲が伴います。船は精神的にはそうではないにしても、体は一つになっています。';

  @override
  String get event_separatistMovement_choice2 => '運動を推進する根本的な不満に対処する';

  @override
  String get event_separatistMovement_outcome2 =>
      '調停者は何が派閥を遠ざけたのか理解しようと努めている。資源の分配と代表の改革により、分離主義者はゆっくりと勢力の中に戻ってきます。治癒には時間がかかります。';

  @override
  String get event_warCouncil_title => '戦争評議会';

  @override
  String get event_warCouncil_narrative =>
      '近くの星系で潜在的な脅威が検出されたため、船の指導部は軍評議会を招集します。問題は、植民地の限られた資源のうち、軍事的備えと民間のインフラにどれだけを充てるべきかということです。';

  @override
  String get event_warCouncil_choice0 => '完全武装: 武器を鍛造し、兵士を訓練する';

  @override
  String get event_warCouncil_outcome0 =>
      'ワークショップは武器生産用に改造されます。健常な入植者は全員戦闘訓練を受けます。船には武器が溢れていますが、農機具の予算は減ります。';

  @override
  String get event_warCouncil_choice1 => '武装解除: 武器をツールに溶かす';

  @override
  String get event_warCouncil_outcome1 =>
      '武器庫は空になり、その中身は建設資材としてリサイクルされます。コロニーは剣ではなく鋤の刃を使って建設されます。平和主義者は喜ぶ。現実主義者は暗闇に何が潜んでいるかを心配します。';

  @override
  String get event_warCouncil_choice2 => '防御姿勢のみ: 剣ではなく盾と壁';

  @override
  String get event_warCouncil_outcome2 =>
      'リソースは要塞、盾、早期警戒システムに使われます。攻撃的な武器は生産されません。潜在的な隣人を刺激することなく、選択肢を開いたままにするバランスの取れたアプローチ。';

  @override
  String get event_tradeFederation_title => '通商連合';

  @override
  String get event_tradeFederation_narrative =>
      '植民地が存続可能に近づくにつれて、派閥はその経済をどのように構築するかについて議論します。この問題は、単なる生存を超えたものであり、異国の地に根付く社会の種類を定義することになります。商人、共産主義者、官僚たちは皆、自分たちの主張を主張します。';

  @override
  String get event_tradeFederation_choice0 => '最小限の規制で自由貿易地域を確立する';

  @override
  String get event_tradeFederation_outcome0 =>
      'マーケットはすべての生息地モジュールに出現します。トレーダーが競争するにつれてイノベーションが栄えます。富の不平等は拡大しますが、植民地が利用できる資源の総量も拡大します。';

  @override
  String get event_tradeFederation_choice1 => 'すべてのリソースの共同共有を実装する';

  @override
  String get event_tradeFederation_outcome1 =>
      '私有財産は廃止される。すべてはみんなのものです。飢える人はいませんが、最低限以上のものを生産する動機を持っている人はいません。平凡は心地よい。';

  @override
  String get event_tradeFederation_choice2 => '国家管理貿易システムを創設する';

  @override
  String get event_tradeFederation_outcome2 =>
      '政府はすべての貿易を管理し、価格を設定し、資源を割り当てます。このシステムは公平ですが、柔軟性がありません。闇市場はメンテナンス通路に出現します。';

  @override
  String get event_faithVsScience_title => '信仰 vs. 科学';

  @override
  String get event_faithVsScience_narrative =>
      '船の望遠鏡は、支配的な信仰運動の中心的な教義に真っ向から反する宇宙現象の画像を捉えた。主任研究員は研究結果を発表したいと考えています。宗教指導者は共同体を引き裂くと主張する。';

  @override
  String get event_faithVsScience_choice0 => '科学的発見を完全に公開する';

  @override
  String get event_faithVsScience_outcome0 =>
      '真実は快適さよりも優先されます。データが公開され、宗教運動は分裂する。信者の中には自分の信仰を適応させる人もいます。他の人は完全にそれを失います。知識は進歩します。';

  @override
  String get event_faithVsScience_choice1 => '社会の調和を保つために調査結果を隠蔽する';

  @override
  String get event_faithVsScience_outcome1 =>
      'データは機密扱いとなります。宗教界は安定を保っているが、科学チームは意気消沈している。真実の延期は真実の否定ではありませんが、そのように感じられます。';

  @override
  String get event_faithVsScience_choice2 => '双方の意見の調和を図るために共同委員会を招集する';

  @override
  String get event_faithVsScience_outcome2 =>
      '科学者と神学者は協力して発見を再解釈します。理解と信仰の両方を拡大する新しい統合が現れます。誰もが納得しているわけではありませんが、対話は健全です。';

  @override
  String get event_surveillanceState_title => '監視状態';

  @override
  String get event_surveillanceState_narrative =>
      '一連の妨害行為の後、保安責任者は船のすべてのコンパートメントに監視システムを設置することを提案します。カメラ、マイク、生体認証スキャナーがすべての入植者の動きを追跡します。プライバシー擁護派は恐怖を感じている。';

  @override
  String get event_surveillanceState_choice0 => '監視提案を完全に拒否する';

  @override
  String get event_surveillanceState_outcome0 =>
      'プライバシーは保たれます。破壊工作員は依然として逃走中だが、入植者たちは監視されていないと知って眠りやすくなる。捜査は従来の手段で続けられる。';

  @override
  String get event_surveillanceState_choice1 => '船全体に完全な監視を実装する';

  @override
  String get event_surveillanceState_outcome1 =>
      '船の隅々まで監視されています。妨害者は数日以内に逮捕される。しかし、カメラは設置されたままで、警備責任者はカメラをオフにすることに関心を示しません。これまで。';

  @override
  String get event_surveillanceState_choice2 => '重要なエリアにのみ限定的な監視を設置する';

  @override
  String get event_surveillanceState_outcome2 =>
      'カメラは機関室、武器庫、艦橋を監視します。居住区はプライベートのままです。最終的に妨害者はパターン分析によって特定されます。測定された応答。';

  @override
  String get event_nativeAlliance_title => 'ネイティブアライアンス';

  @override
  String get event_nativeAlliance_narrative =>
      '先住民文明は正式な条約を提案しました。彼らの大使はシャトルで到着し、驚くほど洗練された翻訳機を通して話すエレガントな存在です。これらは 3 つの関係形式を提供し、それぞれがコロニーの将来に異なる意味を持ちます。';

  @override
  String get event_nativeAlliance_choice0 => '対等同盟条約に署名する';

  @override
  String get event_nativeAlliance_outcome0 =>
      'この条約は、相互防衛、共同研究、平等な領土権を確立します。両方の文明は共に成長します。先住民は、植民地の見通しを変える農業の知識を共有します。';

  @override
  String get event_nativeAlliance_choice1 => '植民地支配の立場から交渉する';

  @override
  String get event_nativeAlliance_outcome1 =>
      '高度なテクノロジーを活用して有利な条件を確保します。原住民は領土と資源を譲渡します。彼らは震える手でサインをします。歴史上これまでにもこのような事態は見られましたが、良い結末を迎えることはめったにありません。';

  @override
  String get event_nativeAlliance_choice2 => '相互利益を重視した貿易パートナーシップを確立する';

  @override
  String get event_nativeAlliance_outcome2 =>
      '商業は種間の溝を埋めます。ネイティブの材料がワークショップに流れ込みます。あなたのテクノロジーが彼らの医療を改善します。友情は相互の利益から生まれます。';
}
