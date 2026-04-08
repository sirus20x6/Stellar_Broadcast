// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '스텔라 브로드캐스트';

  @override
  String get ui_title_stellar => '스텔라';

  @override
  String get ui_title_broadcast => '브로드캐스트';

  @override
  String get ui_title_beginVoyage => '항해 시작';

  @override
  String get ui_title_dailyVoyage => '일일 항해';

  @override
  String get ui_title_dailyCompleted => '일일 완료';

  @override
  String get ui_title_customSeed => '커스텀 시드';

  @override
  String get ui_title_legacyHub => '유산 허브';

  @override
  String get ui_title_cancel => '취소';

  @override
  String get ui_title_startVoyage => '항해 시작';

  @override
  String ui_voyage_sector(int count) {
    return '섹터 $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return '시드: $code';
  }

  @override
  String get ui_voyage_scanners => '스캐너';

  @override
  String get ui_voyage_scanPlanet => '행성 스캔';

  @override
  String get ui_voyage_noEnergy => '에너지 없음';

  @override
  String get ui_voyage_pressOn => '전진';

  @override
  String get ui_voyage_systemHull => '선체';

  @override
  String get ui_voyage_systemNav => '항법';

  @override
  String get ui_voyage_systemCryopods => '냉동포드';

  @override
  String get ui_voyage_systemCulture => '문화';

  @override
  String get ui_voyage_systemTech => '기술';

  @override
  String get ui_voyage_systemConstruct => '건설';

  @override
  String get ui_voyage_systemShields => '방어막';

  @override
  String get ui_voyage_systemLanding => '착륙';

  @override
  String get ui_voyage_scannerAtmo => '대기 스캔';

  @override
  String get ui_voyage_scannerGrav => '중력 스캔';

  @override
  String get ui_voyage_scannerMineral => '광물 스캔';

  @override
  String get ui_voyage_scannerLife => '생명 스캔';

  @override
  String get ui_voyage_scannerTemp => '온도 스캔';

  @override
  String get ui_voyage_scannerWater => '수분 스캔';

  @override
  String get ui_voyage_narrative0 => '지구 궤도 이탈 완료. 냉동포드 안정. 기록 링 보안 유지.';

  @override
  String get ui_voyage_narrative1 => '외곽 항로 정상 운항 중. 장거리 스캐너 탐색 범위 확대.';

  @override
  String get ui_voyage_narrative2 => '지구 측 통신이 탐지 한계 아래로 사라졌다.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      '기록된 좌표가 표시된 항성계와 일치한다. 항로 조정 중.';

  @override
  String get ui_voyage_narrativeCalibrating => '스캐너 배열이 아직 심우주 해상도에 맞춰 보정 중이다.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      '표시된 항성계 접근 중. 이전 탐사 데이터와 일치 확인.';

  @override
  String get ui_voyage_narrativePhrase0 => '전방에 희미한 신호. 행성 탐색 개시.';

  @override
  String get ui_voyage_narrativePhrase1 => '초광속 이탈 완료. 새로운 항성계가 시야에 들어왔다.';

  @override
  String get ui_voyage_narrativePhrase2 => '냉동포드 뱅크 안정. 섹터 스캔 진행 중.';

  @override
  String get ui_voyage_narrativePhrase3 => '전방 배열에 새로운 행성이 포착되고 있다.';

  @override
  String get ui_voyage_narrativePhrase4 => '항성 지도학이 유망한 후보를 표시했다.';

  @override
  String get ui_voyage_narrativePhrase5 => '관측 장비가 측정할 가치가 있는 또 다른 세계를 발견했다.';

  @override
  String get ui_voyage_narrativePhrase6 => '스캐너가 새로운 목표를 포착했다.';

  @override
  String get ui_voyage_narrativePhrase7 => '항법 도표 갱신. 후보 행성이 사정거리 내에 있다.';

  @override
  String get ui_scan_landHere => '이곳에 착륙';

  @override
  String get ui_scan_pressOn => '전진';

  @override
  String get ui_scan_allStatsVerified => '모든 수치 확인 완료';

  @override
  String get ui_scan_launchProbe => '탐사선 발사';

  @override
  String get ui_scan_habitability => '거주 가능성';

  @override
  String get ui_scan_statAtmos => '대기';

  @override
  String get ui_scan_statTemp => '온도';

  @override
  String get ui_scan_statWater => '수분';

  @override
  String get ui_scan_statResource => '자원';

  @override
  String get ui_scan_statGravity => '중력';

  @override
  String get ui_scan_statBio => '생태';

  @override
  String get ui_scan_statAnomaly => '이상 현상';

  @override
  String get ui_scan_statRadiation => '방사선';

  @override
  String get ui_landing_planetAnalysis => '행성 분석';

  @override
  String get ui_landing_shipStatus => '함선 상태';

  @override
  String ui_landing_fuel(int amount) {
    return '연료: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => '연료 부족 경고';

  @override
  String get ui_landing_landingRiskCritical => '착륙 위험: 치명적';

  @override
  String get ui_landing_landingRiskElevated => '착륙 위험: 상승';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      '착륙 시스템 심각한 손상. 대기권 진입 시 화물과 식민자가 파괴될 수 있음.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      '착륙 시스템 성능 저하. 거친 대기권 진입과 시스템 손상 예상.';

  @override
  String get ui_landing_riskAssessment => '위험 평가';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return '함선이 약 $remaining회의 조우를 더 견딜 수 있습니다';
  }

  @override
  String get ui_landing_shipMayNotSurvive => '함선이 다음 항해를 견디지 못할 수 있습니다';

  @override
  String get ui_landing_surfaceFeatures => '지표 특성';

  @override
  String get ui_landing_nameYourColony => '식민지 명명';

  @override
  String get ui_landing_establishColony => '식민지 건설';

  @override
  String get ui_landing_pressOnward => '계속 전진';

  @override
  String get ui_landing_statAtmosphere => '대기';

  @override
  String get ui_landing_statTemperature => '온도';

  @override
  String get ui_landing_statWater => '수분';

  @override
  String get ui_landing_statResources => '자원';

  @override
  String get ui_landing_statGravity => '중력';

  @override
  String get ui_landing_statBiodiversity => '생물 다양성';

  @override
  String get ui_landing_statAvgHealth => '평균 건강';

  @override
  String get ui_landing_statHull => '선체';

  @override
  String get ui_landing_statNavigation => '항법';

  @override
  String get ui_landing_statCryopods => '냉동포드';

  @override
  String get ui_landing_statCulture => '문화';

  @override
  String get ui_landing_statTech => '기술';

  @override
  String get ui_landing_statConstructors => '건설장비';

  @override
  String get ui_landing_statShields => '방어막';

  @override
  String get ui_landing_statLandingSys => '착륙 시스템';

  @override
  String get ui_landingSequence_phase1 => '1단계: 궤도 진입';

  @override
  String get ui_landingSequence_phase1Desc => '강하 창 개방. 진입 개시.';

  @override
  String get ui_landingSequence_phase2 => '2단계: 대기권 돌입';

  @override
  String get ui_landingSequence_title => '착륙 시퀀스';

  @override
  String get ui_landingSequence_viewColonyReport => '식민지 보고서 보기';

  @override
  String get ui_ending_colonyEstablished => '식민지 건설 완료';

  @override
  String get ui_ending_colonyScore => '식민지 점수';

  @override
  String get ui_ending_colonyProfile => '식민지 프로필';

  @override
  String get ui_ending_landscape => '풍경';

  @override
  String get ui_ending_voyageRecord => '항해 기록';

  @override
  String get ui_ending_scoreBreakdown => '점수 상세';

  @override
  String get ui_ending_total => '합계';

  @override
  String get ui_ending_achievementsUnlocked => '달성한 업적';

  @override
  String get ui_ending_challengeFriend => '친구에게 도전';

  @override
  String get ui_ending_copySeed => '시드 복사';

  @override
  String get ui_ending_viewLegacy => '유산 보기';

  @override
  String get ui_ending_newVoyage => '새 항해';

  @override
  String get ui_ending_achievementFirstLanding => '첫 착륙';

  @override
  String get ui_ending_achievementGoldenAge => '황금 시대';

  @override
  String get ui_ending_achievementSurvivor => '생존자';

  @override
  String get ui_ending_achievementExplorer => '탐험가';

  @override
  String get ui_ending_achievementPerfectionist => '완벽주의자';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => '죽음의 행성 생존자';

  @override
  String get ui_ending_achievementFullCrew => '완전한 승무원';

  @override
  String get ui_ending_achievementProbeMaster => '탐사선 마스터';

  @override
  String get ui_ending_achievementIronHull => '강철 선체';

  @override
  String get ui_ending_achievementLeapOfFaith => '믿음의 도약';

  @override
  String get ui_gameOver_missionFailed => '임무 실패';

  @override
  String get ui_gameOver_voyageRecord => '항해 기록';

  @override
  String get ui_gameOver_encountersSurvived => '생존한 조우 횟수';

  @override
  String get ui_gameOver_probesRemaining => '잔여 탐사선';

  @override
  String get ui_gameOver_colonistsRemaining => '잔여 식민자';

  @override
  String get ui_gameOver_finalShipHealth => '최종 함선 상태';

  @override
  String get ui_gameOver_planetsSkipped => '건너뛴 행성';

  @override
  String get ui_gameOver_damageTaken => '받은 피해';

  @override
  String get ui_gameOver_fuelRemaining => '잔여 연료';

  @override
  String get ui_gameOver_energyRemaining => '잔여 에너지';

  @override
  String get ui_gameOver_challengeFriend => '친구에게 도전';

  @override
  String get ui_gameOver_viewLegacy => '유산 보기';

  @override
  String get ui_gameOver_newVoyage => '새 항해';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 스텔라 브로드캐스트\n\n생존하지 못했습니다... $reason.\n같은 항해에서 더 잘할 수 있겠습니까?\nstellarbroadcast://play?seed=$seedCode\n\n앱이 없으신가요?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      '마지막 식민자가 냉동수면 중에 사망했다 — 어떤 비상 프로토콜로도 막을 수 없는 연쇄 고장이었다. 엑소더스호는 유령선이 되어 자동화 시스템과 얼어붙은 침묵만을 실은 채 항해를 계속했다. 임무는 대참사의 순간이 아니라, 하나둘씩 사라져가는 인간 생명의 느린 마모 속에서 실패했다.';

  @override
  String get ui_gameOver_epilogueHull =>
      '선체는 침묵 속에 무너졌다 — 무수한 미세 충돌이 누적된 금속 피로가 더 이상 버틸 수 없는 지경에 이르렀다. 대기가 허공으로 새어 나갔다. 식민선 엑소더스호는 산산이 부서져, 그 잔해가 별들 사이의 고대 파편 지대에 합류했다. 조난 신호는 끝내 수신되지 않았다.';

  @override
  String get ui_gameOver_epilogueNav =>
      '항법 장치 없이 엑소더스호는 미지의 공간으로 표류했다 — 항성도는 무용지물이 되고 경로 수정은 불가능해졌다. 함선은 어둠 속을 계속 항해했고, 잠든 승객들은 자신들의 목적지가 영원으로 대체되었음을 알지 못했다. 그 배가 아직도 끝없는 밤 속을 떠돌고 있다고 전해진다.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      '냉동포드가 하나씩 고장났다 — 어떤 비상 프로토콜로도 멈출 수 없는 연쇄 반응이었다. 식민자들은 깨어나지 못했다. 엑소더스호는 프로그램된 항로를 따라 계속 나아갔다. 침묵만을 싣고 도달할 세계를 향하는 무덤선. 얼어붙은 잠 속에서 스러진 꿈의 기념비.';

  @override
  String get ui_gameOver_epilogueDefault =>
      '엑소더스호는 침묵에 잠겼다. 그 임무, 승무원, 인류의 희망이라는 화물 — 모든 것이 별들 사이의 무관심한 광활함에 삼켜졌다. 언젠가 다른 문명이 잔해를 발견하고, 어떤 용감한 종족이 감히 허공을 건너려 했는지 궁금해할지도 모른다.';

  @override
  String get ui_settings_title => '설정';

  @override
  String get ui_settings_music => '음악';

  @override
  String get ui_settings_soundEffects => '효과음';

  @override
  String get ui_settings_haptics => '진동';

  @override
  String get ui_settings_premium => '프리미엄';

  @override
  String get ui_settings_goPremium => '프리미엄으로 전환';

  @override
  String get ui_settings_enabled => '활성화됨';

  @override
  String get ui_settings_volume => '음량';

  @override
  String get ui_settings_language => '언어';

  @override
  String get ui_settings_systemDefault => '시스템 기본값';

  @override
  String get ui_legacy_title => '유산 허브';

  @override
  String get ui_legacy_commanderStats => '사령관 통계';

  @override
  String get ui_legacy_highScores => '최고 점수';

  @override
  String get ui_legacy_upgrades => '업그레이드';

  @override
  String get ui_legacy_achievements => '업적';

  @override
  String get ui_legacy_voyageLog => '항해 일지';

  @override
  String get ui_legacy_voyages => '항해 횟수';

  @override
  String get ui_legacy_bestScore => '최고 점수';

  @override
  String get ui_legacy_legacyPts => '유산 포인트';

  @override
  String get ui_legacy_completed => '완료';

  @override
  String get ui_legacy_notYetPlayed => '아직 플레이하지 않음';

  @override
  String get ui_legacy_dailyHistory => '일일 기록';

  @override
  String get ui_premium_goPremium => '프리미엄으로';

  @override
  String get ui_premium_subtitle => '임무를 지원하세요. 지휘권을 업그레이드하세요.';

  @override
  String get ui_premium_removeAds => '모든 광고를 영구 제거';

  @override
  String get ui_premium_supportIndie => '인디 개발 지원';

  @override
  String get ui_premium_exclusiveTitle => '독점 사령관 칭호';

  @override
  String get ui_premium_priorityFeatures => '우선 기능 요청';

  @override
  String get ui_premium_lifetime => '평생';

  @override
  String get ui_scannerUpgrade_title => '스캐너 업그레이드';

  @override
  String get ui_scannerUpgrade_subtitle => '업그레이드할 스캐너를 선택하세요';

  @override
  String get ui_scannerUpgrade_skip => '건너뛰기';

  @override
  String get ui_scannerUpgrade_max => '최대';

  @override
  String get ui_scannerUpgrade_atmospheric => '대기';

  @override
  String get ui_scannerUpgrade_gravimetric => '중력';

  @override
  String get ui_scannerUpgrade_mineral => '광물';

  @override
  String get ui_scannerUpgrade_lifeSigns => '생명 징후';

  @override
  String get ui_scannerUpgrade_temperature => '온도';

  @override
  String get ui_scannerUpgrade_water => '수분';

  @override
  String get ui_event_continue => '계속';

  @override
  String get ui_event_tapToSkip => '탭하여 건너뛰기';

  @override
  String get ui_event_colonists => '식민자';

  @override
  String get ui_event_landing => '착륙';

  @override
  String get ui_event_atmScan => '대기 스캔';

  @override
  String get ui_event_gravScan => '중력 스캔';

  @override
  String get ui_event_minScan => '광물 스캔';

  @override
  String get ui_event_lifeScan => '생명 스캔';

  @override
  String get ui_event_tempScan => '온도 스캔';

  @override
  String get ui_event_h2oScan => '수분 스캔';

  @override
  String get onboarding_page0_title => '인류의 마지막 희망';

  @override
  String get onboarding_page0_description =>
      '지구가 죽어가고 있다. 세계 각국 정부는 마지막 자원을 모아 최후의 함선 하나를 건조했다 — 인류의 잔존자들을 별들 속으로 실어 나를 식민선.';

  @override
  String get onboarding_page1_title => '새로운 고향을 찾아서';

  @override
  String get onboarding_page1_description =>
      '별들 사이의 미지의 허공을 항해하세요. 외계 세계를 스캔하고, 우주적 위험에 맞서며, 불가능한 선택을 내리세요.';

  @override
  String get onboarding_page2_title => '당신의 유산은 영원히';

  @override
  String get onboarding_page2_description =>
      '모든 항해는 인류에게 새로운 것을 가르칩니다. 유산 포인트를 획득하여 영구 업그레이드를 해금하고, 별들에 당신의 이름을 새기세요.';

  @override
  String get onboarding_page3_title => '당신의 개인정보, 당신의 선택';

  @override
  String get onboarding_page3_description => '스텔라 브로드캐스트를 어떻게 경험하고 싶은지 선택하세요.';

  @override
  String get planet_tierUtopia => '유토피아';

  @override
  String get planet_tierParadise => '낙원';

  @override
  String get planet_tierHabitable => '거주 가능';

  @override
  String get planet_tierHarsh => '가혹';

  @override
  String get planet_tierHostile => '적대적';

  @override
  String get planet_tierDeathWorld => '죽음의 행성';

  @override
  String get planet_featurePlantLife => '식물 생태';

  @override
  String get planet_featureEdiblePlants => '식용 식물';

  @override
  String get planet_featurePoisonousPlants => '유독 식물';

  @override
  String get planet_featureUnicellularLife => '단세포 생물';

  @override
  String get planet_featureDangerousFauna => '위험한 동물군';

  @override
  String get planet_featureTameableFauna => '길들일 수 있는 동물군';

  @override
  String get planet_featureAirtightCaves => '밀폐 동굴';

  @override
  String get planet_featureInsulatedCaves => '단열 동굴';

  @override
  String get planet_featureBarrenMoon => '황무지 위성';

  @override
  String get planet_featureMetalRichMoon => '금속 풍부 위성';

  @override
  String get planet_featureUnstableMoon => '불안정한 위성';

  @override
  String get planet_featureOutstandingBeauty => '탁월한 아름다움';

  @override
  String get planet_featureOutstandingUgliness => '극심한 흉경';

  @override
  String get planet_featureAncientRuins => '고대 유적';

  @override
  String get planet_featureMonuments => '기념물';

  @override
  String get planet_featureRapidRotation => '빠른 자전';

  @override
  String get planet_featureSlowRotation => '느린 자전';

  @override
  String get planet_featureVolcanicActivity => '화산 활동';

  @override
  String get planet_featureTectonicInstability => '지각 불안정';

  @override
  String get planet_featureElectricalStorms => '전기 폭풍';

  @override
  String get planet_featureToxicSpores => '독성 포자';

  @override
  String get planet_featureDeepOceans => '심해';

  @override
  String get planet_featureGeothermalVents => '지열 분출구';

  @override
  String get planet_featureStrongMagnetosphere => '강한 자기권';

  @override
  String get planet_featureWeakMagnetosphere => '약한 자기권';

  @override
  String get planet_featureMegafauna => '거대 동물군';

  @override
  String get planet_featureSymbioticOrganisms => '공생 생물';

  @override
  String get planet_featureGravityWells => '중력 우물';

  @override
  String get planet_featureSubspaceEchoes => '아공간 메아리';

  @override
  String get planet_featureBioluminescentLife => '생물 발광 생명체';

  @override
  String get planet_featureAquaticMegafauna => '수생 거대 동물';

  @override
  String get planet_featureFloatingIslands => '부유 섬';

  @override
  String get planet_featureCrystalCaverns => '수정 동굴';

  @override
  String get planet_featureLavaTubes => '용암 튜브';

  @override
  String get planet_featureIceTunnels => '얼음 터널';

  @override
  String get planet_featureOrbitalWreckage => '궤도 잔해';

  @override
  String get planet_featureMegastructuralFragments => '거대 구조물 파편';

  @override
  String get planet_featureAncientObservatory => '고대 관측소';

  @override
  String get planet_featureExtremeSeasons => '극단적 계절';

  @override
  String get planet_featureCryovolcanism => '저온 화산 활동';

  @override
  String get planet_featureFloatingKelpForests => '부유 켈프 숲';

  @override
  String get planet_featureSingingCrystals => '노래하는 수정';

  @override
  String get planet_featureFertileSoil => '비옥한 토양';

  @override
  String get planet_featureHelium3Deposits => '헬륨-3 매장지';

  @override
  String get planet_featureExoticIsotopes => '이국적 동위원소';

  @override
  String get planet_featureMedicinalFlora => '약용 식물';

  @override
  String get ui_monthJan => '1월';

  @override
  String get ui_monthFeb => '2월';

  @override
  String get ui_monthMar => '3월';

  @override
  String get ui_monthApr => '4월';

  @override
  String get ui_monthMay => '5월';

  @override
  String get ui_monthJun => '6월';

  @override
  String get ui_monthJul => '7월';

  @override
  String get ui_monthAug => '8월';

  @override
  String get ui_monthSep => '9월';

  @override
  String get ui_monthOct => '10월';

  @override
  String get ui_monthNov => '11월';

  @override
  String get ui_monthDec => '12월';

  @override
  String get event_asteroidField_title => '소행성 지대';

  @override
  String get event_asteroidField_narrative =>
      '장거리 스캐너가 항로 정면에 밀집된 소행성 지대를 감지했다. 항법 장치가 두 가지 선택지를 계산한다: 가장 얇은 통로를 위험하게 돌파하거나, 연료를 소모하고 항법 장치에 부담을 주는 긴 우회로.';

  @override
  String get event_asteroidField_choice0_text => '통로를 돌파한다';

  @override
  String get event_asteroidField_choice0_outcome =>
      '미세 충돌이 선체를 때리며 함선이 흔들린다. 통과에는 성공했지만 무사하지는 않다.';

  @override
  String get event_asteroidField_choice1_text => '먼 길을 돌아간다';

  @override
  String get event_asteroidField_choice1_outcome =>
      '우회로가 귀중한 연료를 소모하고 항법 컴퓨터를 혹사시키지만, 선체는 온전하다.';

  @override
  String get event_asteroidField_choice2_text => '채굴 드론으로 경로를 개척한다';

  @override
  String get event_asteroidField_choice2_outcome =>
      '드론이 안전한 통로를 뚫고 유용한 광물을 수집하지만, 작업이 기술실을 고갈시킨다.';

  @override
  String get event_asteroidField_choice3_text => '탐사선을 미끼로 배치한다';

  @override
  String get event_asteroidField_choice3_outcome =>
      '탐사선이 가장 밀집된 군집을 함선에서 유인한다. 약간의 긁힘만으로 통과에 성공했다.';

  @override
  String get event_solarFlare_title => '태양 플레어 접근';

  @override
  String get event_solarFlare_narrative =>
      '인근 항성이 거대한 코로나 분출을 일으켰다. 하전 입자의 파도가 수 분 내에 도달할 것이다. 방어막에 전력을 돌리거나, 식민자를 핵심부로 대피시키거나, 그대로 견딜 수 있다.';

  @override
  String get event_solarFlare_choice0_text => '모든 전력을 방어막으로 전환';

  @override
  String get event_solarFlare_choice0_outcome =>
      '방어막은 버텼지만, 전력 과부하가 보조 시스템을 태웠다.';

  @override
  String get event_solarFlare_choice1_text => '식민자를 차폐된 핵심부로 이동';

  @override
  String get event_solarFlare_choice1_outcome =>
      '식민자들은 무사하지만, 외부 구역이 방사선 피해를 입었다.';

  @override
  String get event_solarFlare_choice2_text => '그대로 버틴다 — 전원 대기';

  @override
  String get event_solarFlare_choice2_outcome =>
      '플레어가 강타했다. 시스템이 깜빡이지만 치명적이지는 않다. 다만 사기가 타격을 입었다.';

  @override
  String get event_solarFlare_choice3_text => '탐사선을 발사하여 파면을 측정한다';

  @override
  String get event_solarFlare_choice3_outcome =>
      '탐사선이 정밀한 파면 데이터를 전송하여 함선의 각도를 최적화할 수 있었다. 스캐너 피해는 최소한이다.';

  @override
  String get event_nebulaPassage_title => '성운 통과';

  @override
  String get event_nebulaPassage_narrative =>
      '빛나는 성운이 항로를 가로막고 있다. 통과하면 에너지 셀을 충전할 수 있지만 스캐너 배열에 간섭이 생길 수 있다. 우회는 안전하지만 느리다.';

  @override
  String get event_nebulaPassage_choice0_text => '성운을 관통한다';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      '성운의 이온화 가스가 전력 셀을 충전하지만 스캐너 보정을 흐트러뜨렸다.';

  @override
  String get event_nebulaPassage_choice1_text => '가장자리를 따라 간다';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      '부분적으로 충전되고 간섭은 최소화되었다. 안전한 절충안이다.';

  @override
  String get event_microMeteorite_title => '미세 유성우';

  @override
  String get event_microMeteorite_narrative =>
      '몇 초 전까지 보이지 않던 미세 유성 무리가 전방 선체 장갑을 찢고 있다. 피해 통제반이 분주하게 움직인다.';

  @override
  String get event_microMeteorite_choice0_text => '긴급 회전 — 장갑이 두꺼운 후미를 내밀어라';

  @override
  String get event_microMeteorite_choice0_outcome =>
      '기동이 성공했다. 후미 장갑이 최악을 흡수하지만, 항법 자이로가 격렬하게 저항한다.';

  @override
  String get event_microMeteorite_choice1_text => '폭풍 속에서 수리 드론을 배치한다';

  @override
  String get event_microMeteorite_choice1_outcome =>
      '드론이 실시간으로 선체를 수리하지만 여러 대가 손실되었다. 기술 비축분이 고갈되었다.';

  @override
  String get event_microMeteorite_choice2_text => '탐사선을 폭파하여 무리를 분산시킨다';

  @override
  String get event_microMeteorite_choice2_outcome =>
      '탐사선의 폭발이 미세 유성 무리를 흩뜨렸다. 극소수의 파편만이 선체에 도달했다.';

  @override
  String get event_gravityWell_title => '미지의 중력 우물';

  @override
  String get event_gravityWell_narrative =>
      '보이지 않는 중력 우물이 함선을 항로에서 끌어당기며 흔들린다. 엔진이 끌림에 맞서 신음한다. 전력으로 탈출하거나, 구조적 스트레스를 감수하고 슬링샷으로 가속할 수 있다.';

  @override
  String get event_gravityWell_choice0_text => '전력 분사 — 탈출한다';

  @override
  String get event_gravityWell_choice0_outcome =>
      '엔진이 포효하고 선체가 비명을 지르지만, 깨끗하게 벗어났다.';

  @override
  String get event_gravityWell_choice1_text => '슬링샷 기동';

  @override
  String get event_gravityWell_choice1_outcome =>
      '슬링샷이 아름답게 성공했다. 속도를 얻었지만, 중력 가속이 냉동포드 밀봉에 스트레스를 주었다.';

  @override
  String get event_crewUnrest_title => '승무원 불안';

  @override
  String get event_crewUnrest_narrative =>
      '깨어난 식민자 일파가 관리 위원회에 냉동수면에서 영구적으로 해제해 달라고 청원한다. 그들은 얼어붙은 황혼 속에 사는 것이 비인간적이라고 주장한다. 냉동동 관리진은 더 많은 입을 깨우면 보급품이 빠르게 소진된다고 경고한다.';

  @override
  String get event_crewUnrest_choice0_text => '자발적 해동을 허용한다';

  @override
  String get event_crewUnrest_choice0_outcome =>
      '가족이 깨어 있는 세계에서 재회하며 사기가 치솟지만, 자원 소비가 급증한다.';

  @override
  String get event_crewUnrest_choice1_text => '요청을 거부한다 — 안전이 우선이다';

  @override
  String get event_crewUnrest_choice1_outcome => '식민자들은 따르지만, 복도에 원한이 곪아간다.';

  @override
  String get event_crewUnrest_choice2_text => '타협한다 — 순환 해동 주기';

  @override
  String get event_crewUnrest_choice2_outcome =>
      '균형 잡힌 해결책이다. 모두가 깨어 있는 시간을 얻지만, 냉동포드 순환이 마모를 더한다.';

  @override
  String get event_stowaway_title => '밀항자 발견';

  @override
  String get event_stowaway_narrative =>
      '적재 관리 감사원이 7번 화물창에 숨어 있는 미등록 인원을 발견했다. 발사 명단에서 제외된 유전학자라고 주장하는 여성이다. 그녀의 기술은 값을 매길 수 없이 귀중하거나 — 아니면 그녀는 방해 공작원일 수 있다.';

  @override
  String get event_stowaway_choice0_text => '환영한다 — 모든 인재가 필요하다';

  @override
  String get event_stowaway_choice0_outcome =>
      '바스케스 박사는 탁월함을 증명한다. 그녀의 유전학 전문성이 냉동포드 효율을 개선하지만, 일부 승무원은 그녀를 불신한다.';

  @override
  String get event_stowaway_choice1_text => '구금한다 — 신뢰는 쌓아야 한다';

  @override
  String get event_stowaway_choice1_outcome =>
      '그녀는 구금 상태에서 협조하고 결국 제한적 접근 권한을 얻는다. 승무원들은 더 안전하다고 느낀다.';

  @override
  String get event_stowaway_choice2_text => '착륙 때까지 냉동수면에 넣는다';

  @override
  String get event_stowaway_choice2_outcome =>
      '실용적인 해결책이다. 그녀의 기술은 나중을 위해 보존되지만, 윤리적 논쟁이 승무원을 갈라놓는다.';

  @override
  String get event_mutinyBrewing_title => '반란의 조짐';

  @override
  String get event_mutinyBrewing_narrative =>
      '함교 감시조가 더 가깝지만 덜 거주 가능한 항성계로 항로를 변경하기 위해 지휘권을 장악하려는 장교 집단의 메시지를 가로챘다. 그들은 현재 항로가 사형 선고라고 믿는다.';

  @override
  String get event_mutinyBrewing_choice0_text => '공개적으로 대면한다 — 투명성이 최우선이다';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      '대치는 긴장되지만, 항법 데이터를 보여주자 반란 세력이 물러선다. 신뢰는 흔들렸다.';

  @override
  String get event_mutinyBrewing_choice1_text => '주모자를 조용히 재배치한다';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      '음모가 공개적 소동 없이 와해된다. 일부 승무원은 인기 있는 장교들이 왜 이동했는지 의아해하지만, 질서는 유지된다.';

  @override
  String get event_culturalSchism_title => '문화 분열';

  @override
  String get event_culturalSchism_narrative =>
      '함내 두 문화 집단이 새 식민지를 어떻게 통치할지 격렬하게 대립한다. 한쪽은 직접 민주주의를 요구하고, 다른 쪽은 기술관료 위원회를 주장한다. 긴장이 극에 달하고 있다.';

  @override
  String get event_culturalSchism_choice0_text => '구속력 있는 국민투표를 실시한다';

  @override
  String get event_culturalSchism_choice0_outcome =>
      '민주주의가 승리했다 — 간신히. 패한 쪽은 마지못해 결과를 수용하지만, 단결은 취약하다.';

  @override
  String get event_culturalSchism_choice1_text =>
      '혼합 체제를 시행한다 — 양쪽 모두 완전히 만족시키지 않는다';

  @override
  String get event_culturalSchism_choice1_outcome =>
      '양쪽 모두 경청받았다고 느끼지만 승리하지는 못했다. 위태로운 평화가 유지된다.';

  @override
  String get event_culturalSchism_choice2_text => '결정을 미룬다 — 지금은 생존에 집중한다';

  @override
  String get event_culturalSchism_choice2_outcome =>
      '문제를 미래로 미루면 오늘의 충돌은 피하지만 내일을 위해 저장하는 셈이다.';

  @override
  String get event_birthInSpace_title => '심우주 최초의 탄생';

  @override
  String get event_birthInSpace_narrative =>
      '모든 규정을 어기고, 아이가 함선에서 태어났다 — 별들 사이에서 태어난 최초의 인간. 이 사건은 강력한 상징이지만, 자원 배분과 불확실한 미래에 새 생명을 가져오는 것의 윤리에 대한 의문을 제기한다.';

  @override
  String get event_birthInSpace_choice0_text => '축하한다 — 이것이 희망의 모습이다';

  @override
  String get event_birthInSpace_choice0_outcome =>
      '명명식이 함선의 모든 마음을 고양시킨다. 하룻밤 동안 별들이 덜 차갑게 느껴진다. 축하 행사가 잠시 냉동포드 감시 순환을 방해한다.';

  @override
  String get event_birthInSpace_choice1_text => '조용히 인정한다 — 자원이 빠듯하다';

  @override
  String get event_birthInSpace_choice1_outcome =>
      '절제된 반응이다. 아이는 환영받지만, 분위기는 실용주의에 의해 완화된다.';

  @override
  String get event_derelictShip_title => '표류하는 식민선';

  @override
  String get event_derelictShip_narrative =>
      '스캐너가 허공을 표류하는 유기선을 감지했다 — 우리보다 수년 전에 발사된 또 다른 식민선이다. 어둡고 침묵한다. 회수물이 있을 수도, 생존자가 있을 수도, 더 나쁜 것이 있을 수도 있다.';

  @override
  String get event_derelictShip_choice0_text => '승선하여 회수한다';

  @override
  String get event_derelictShip_choice0_outcome =>
      '탐사대가 선체 장갑과 온전한 기술 모듈을 회수했다. 생존자는 없다. 기록은 참혹한 이야기를 전한다.';

  @override
  String get event_derelictShip_choice1_text => '거리를 두고 스캔한다 — 위험을 감수하지 않는다';

  @override
  String get event_derelictShip_choice1_outcome =>
      '원격 스캔이 유용한 항법 데이터를 제공하지만 물리적 회수물은 없다. 승무원들은 더 편히 잠든다.';

  @override
  String get event_derelictShip_choice2_text => '추모 메시지를 송신하고 이동한다';

  @override
  String get event_derelictShip_choice2_outcome =>
      '잃어버린 이들을 위한 묵념의 순간. 승무원들은 숙연해졌지만 목적 의식으로 단결한다.';

  @override
  String get event_alienProbe_title => '외계 탐사선';

  @override
  String get event_alienProbe_narrative =>
      '작고 명백히 인공적인 물체가 우리의 속도에 맞추더니 미지의 에너지로 함선을 스캔하기 시작한다. 호출에 응답하지 않는다. 표면은 액체처럼 흘러가는 문양으로 덮여 있다.';

  @override
  String get event_alienProbe_choice0_text => '포획하여 연구한다';

  @override
  String get event_alienProbe_choice0_outcome =>
      '탐사선이 연구실에 확보되었다. 그 기술은 우리보다 수십 년 앞서 있다 — 기술팀이 환호한다.';

  @override
  String get event_alienProbe_choice1_text => '스캔을 반사한다 — 데이터를 교환한다';

  @override
  String get event_alienProbe_choice1_outcome =>
      '빛과 수학의 기묘한 대화. 우리 항성도에 프로그램한 적 없는 경로가 갑자기 나타났다.';

  @override
  String get event_alienProbe_choice2_text => '파괴한다 — 외계의 추적은 감수할 수 없다';

  @override
  String get event_alienProbe_choice2_outcome =>
      '탐사선이 소리 없이 부서졌다. 그것이 첫 접촉이었을까? 승무원들은 영원히 알 수 없을 것이다.';

  @override
  String get event_ancientBeacon_title => '고대 비콘';

  @override
  String get event_ancientBeacon_narrative =>
      '허공 깊은 곳에서 인류 문명보다 오래된 신호가 맥동한다. 그 주파수에는 우리 데이터베이스에 없는 항성계를 가리키는 성도가 담겨 있다.';

  @override
  String get event_ancientBeacon_choice0_text => '지도를 따른다 — 대담한 자에게 행운이 있으라';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      '새로운 항로가 미지의 우주를 향한다. 전방에서 경이로운 무언가가 스캐너에 잡힌다.';

  @override
  String get event_ancientBeacon_choice1_text => '기록하고 항로를 유지한다';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      '데이터가 미래 세대를 위해 보관되었다. 승무원들은 신중한 접근을 존중한다.';

  @override
  String get event_frozenGarden_title => '얼어붙은 정원';

  @override
  String get event_frozenGarden_narrative =>
      '소행성 하나에 얼어붙은 생태계가 담겨 있다 — 수천 년간 결정 얼음 속에 보존된 외계 식물들. 정착할 세계를 풍요롭게 할 수 있지만, 해동은 오염의 위험이 있다.';

  @override
  String get event_frozenGarden_choice0_text => '표본을 신중히 채취한다';

  @override
  String get event_frozenGarden_choice0_outcome =>
      '식물학자들이 수십 종의 외계 종을 보존한다. 목표 행성의 생물 다양성 잠재력이 급상승한다.';

  @override
  String get event_frozenGarden_choice1_text => '샘플만 채취한다 — 최소한의 위험';

  @override
  String get event_frozenGarden_choice1_outcome =>
      '보수적 접근이 오염 위험 없이 유용한 데이터를 제공한다.';

  @override
  String get event_frozenGarden_choice2_text => '남겨둔다 — 외계 생물학은 너무 위험하다';

  @override
  String get event_frozenGarden_choice2_outcome =>
      '승무원들이 후방 센서에서 얼어붙은 정원이 사라지는 것을 지켜본다. 보물을 남겨두고 왔다고 느끼는 이들이 있다.';

  @override
  String get event_dataCache_title => '선구자 데이터 캐시';

  @override
  String get event_dataCache_narrative =>
      '떠돌이 소행성에 명백히 인공적 기원의 데이터 캐시가 내장되어 있다. 방대한 정보이지만 외계 수학 체계로 암호화되어 있다.';

  @override
  String get event_dataCache_choice0_text => '컴퓨팅 자원을 해독에 투입한다';

  @override
  String get event_dataCache_choice0_outcome =>
      '며칠간의 처리 끝에 캐시가 고급 테라포밍 알고리즘을 산출한다. 기술팀이 경외에 빠진다.';

  @override
  String get event_dataCache_choice1_text => '원시 데이터를 복사하고 이동한다';

  @override
  String get event_dataCache_choice1_outcome =>
      '암호화된 데이터가 미래 분석을 위해 저장된다. 언젠가 식민지가 해독할 수도 있을 것이다.';

  @override
  String get event_hullBreach_title => '선체 파공 — 7번 갑판';

  @override
  String get event_hullBreach_narrative =>
      '구조적 파손이 7번 갑판을 찢어 놓았다. 대기가 우주로 새고 있다. 비상 격벽이 버티고 있지만, 세 명의 승무원이 반대편에 갇혀 있다.';

  @override
  String get event_hullBreach_choice0_text => '밀봉 전에 구조팀을 보낸다';

  @override
  String get event_hullBreach_choice0_outcome =>
      '팀이 간신히 전원을 빼냈다. 구조는 영웅적이었지만, 길어진 파공이 선체를 더 약화시켰다.';

  @override
  String get event_hullBreach_choice1_text => '즉시 격벽을 밀봉한다';

  @override
  String get event_hullBreach_choice1_outcome =>
      '파공이 봉쇄되었다. 세 승무원이 우회 경로를 찾아 살아 돌아왔지만 충격을 받았다. 선체 피해가 최소화되었다.';

  @override
  String get event_hullBreach_choice2_text => '탐사선의 재료로 파공을 메운다';

  @override
  String get event_hullBreach_choice2_outcome =>
      '탐사선의 티타늄 외피가 비상 선체 패치로 전용된다. 파공이 최소한의 손실로 신속히 밀봉되었다.';

  @override
  String get event_navMalfunction_title => '항법 장치 오류';

  @override
  String get event_navMalfunction_narrative =>
      '주 항법 컴퓨터가 모순된 항로를 출력하고 있다. 우리는 항로에서 벗어나 표류 중이다. 백업 시스템은 작동하지만 덜 정밀하다.';

  @override
  String get event_navMalfunction_choice0_text => '주 시스템을 재부팅한다 — 다운타임을 감수한다';

  @override
  String get event_navMalfunction_choice0_outcome =>
      '시스템이 재부팅되는 동안 긴장된 한 시간의 추측 항법. 항법이 90% 효율로 복구되었다.';

  @override
  String get event_navMalfunction_choice1_text => '백업으로 영구 전환한다';

  @override
  String get event_navMalfunction_choice1_outcome =>
      '백업 시스템은 신뢰성 있지만 부정밀하다. 길을 찾을 수 있지만, 우아하지는 않다.';

  @override
  String get event_navMalfunction_choice2_text => '구식 도표로 수동 항성 측위';

  @override
  String get event_navMalfunction_choice2_outcome =>
      '항법사가 항성 시차를 이용해 수작업으로 항로를 그린다. 성공했고, 승무원들이 아날로그 방식에 대한 자신감을 얻었다.';

  @override
  String get event_cryopodFailure_title => '냉동포드 연쇄 고장';

  @override
  String get event_cryopodFailure_narrative =>
      '냉각 시스템 결함이 3번 냉동포드 구역에 연쇄 반응을 일으켰다. 방치하면 200명의 식민자가 비상 해동을 시작할 것이다 — 생존 가능하지만 충격적이고 자원 집약적인 과정.';

  @override
  String get event_cryopodFailure_choice0_text => '비상 냉각액 방류 — 포드를 살린다';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      '기술자들이 예비 냉각액으로 구역을 채운다. 포드가 안정되지만 냉각액 비축분이 위험 수준으로 떨어졌다. 가장 심하게 손상된 포드의 다섯 명은 구할 수 없었다.';

  @override
  String get event_cryopodFailure_choice1_text => '통제된 해동 — 안전하게 깨운다';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200명의 식민자가 충격을 받았지만 살아서 나왔다. 먹여야 할 새 입이지만 일할 새 손이기도 하다. 비워진 포드는 밀봉되었다.';

  @override
  String get event_scannerBurnout_title => '스캐너 배열 소손';

  @override
  String get event_scannerBurnout_narrative =>
      '일상적 심우주 탐색 중 주 스캐너 배열이 과부하되었다. 이것 없이는 반쪽 눈으로 비행하는 것이나 다름없다. 수리에는 희귀 부품이 필요하다.';

  @override
  String get event_scannerBurnout_choice0_text => '기술실 부품을 뜯어다 쓴다';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      '스캐너가 거의 완전한 용량으로 복구되었지만, 기술실이 텅 비었다.';

  @override
  String get event_scannerBurnout_choice1_text => '임시 수리를 한다';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      '스캐너가 감소된 범위로 작동한다. 이상적이지는 않지만 기술 비축분을 보존한다.';

  @override
  String get event_scannerBurnout_choice2_text => '탐사선의 센서 배열을 전용한다';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      '탐사선의 고정밀 센서가 스캐너 배열에 이식되었다. 거의 완벽한 수리.';

  @override
  String get event_powerFluctuation_title => '반응로 출력 변동';

  @override
  String get event_powerFluctuation_narrative =>
      '주 반응로의 출력이 격렬하게 진동하고 있다. 공학팀이 변동을 억제하지 않으면 노심 용해 가능성을 경고한다. 수리에는 비필수 시스템을 정지시켜야 하는데 — 어떤 것을?';

  @override
  String get event_powerFluctuation_choice0_text => '문화 시스템을 정지시킨다 — 생존이 우선이다';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      '도서관, 정원, 휴게 공간이 어둠에 잠겼다. 반응로가 안정되지만, 함선이 감옥 같다.';

  @override
  String get event_powerFluctuation_choice1_text => '스캐너 전력을 줄인다';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      '스캐너가 최소 출력으로 떨어진다. 반응로가 진정된다. 전방을 멀리 볼 수 없지만, 살아 있다.';

  @override
  String get event_powerFluctuation_choice2_text =>
      '가동 중 수리를 감행한다 — 아무것도 정지시키지 않는다';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      '엔지니어들이 반응로가 가동 중인 채로 아슬아슬한 수리를 한다. 간신히 성공했다. 이후 몇 시간 동안 선체가 진동한다.';

  @override
  String get event_alienSignal_title => '외계 전송';

  @override
  String get event_alienSignal_narrative =>
      '한 번도 접한 적 없는 주파수의 반복 신호. 언어 분석은 인사 — 또는 경고를 시사한다. 출처는 거리를 두고 우리 속도에 맞추는 소형 우주선이다.';

  @override
  String get event_alienSignal_choice0_text => '우리도 인사를 보낸다';

  @override
  String get event_alienSignal_choice0_outcome =>
      '취약한 대화가 시작된다. 외계인들이 항법 데이터를 공유한 뒤 어둠 속으로 방향을 틀었다.';

  @override
  String get event_alienSignal_choice1_text => '듣기만 한다 — 응답하지 않는다';

  @override
  String get event_alienSignal_choice1_outcome =>
      '우리 정체를 드러내지 않으면서 그들의 전송으로부터 배운다. 언어학자들이 유용한 성도 조각을 추출한다.';

  @override
  String get event_alienSignal_choice2_text => '은폐한다 — 모든 방출을 차단한다';

  @override
  String get event_alienSignal_choice2_outcome =>
      '외계 우주선이 아무 일 없이 지나간다. 그들이 친구였는지 적이었는지 영원히 알 수 없을 것이다.';

  @override
  String get event_livingNebula_title => '살아있는 성운';

  @override
  String get event_livingNebula_narrative =>
      '성운이라 여겼던 것이 실은 상상할 수 없는 규모의 우주 생명체였다. 발광 가스의 촉수를 함선 쪽으로 뻗으며 호기심을 보인다.';

  @override
  String get event_livingNebula_choice0_text => '접촉을 허용한다 — 센서를 연장한다';

  @override
  String get event_livingNebula_choice0_outcome =>
      '생명체의 접촉이 외계 데이터로 시스템을 범람시킨다. 스캐너가 예전과 다르게 된다 — 더 좋아졌다.';

  @override
  String get event_livingNebula_choice1_text => '천천히 후퇴한다 — 자극하지 않는다';

  @override
  String get event_livingNebula_choice1_outcome =>
      '생명체가 관심을 잃는 사이 빠져나왔다. 승무원들은 경외감과 겸허함에 사로잡힌다.';

  @override
  String get event_alienRuins_title => '궤도 유적';

  @override
  String get event_alienRuins_narrative =>
      '죽은 항성을 도는 산산이 부서진 거대 구조물 — 우리가 간신히 이해할 수 있는 규모로 건설한 문명의 폐허. 구조물의 일부는 아직 전력이 공급되고 있다.';

  @override
  String get event_alienRuins_choice0_text => '전력이 남은 구역을 탐사한다';

  @override
  String get event_alienRuins_choice0_outcome =>
      '팀이 우리의 능력을 수십 년 앞당기는 온전한 기술을 회수했다. 대가: 자동 방어 장치에 부상당한 엔지니어 두 명.';

  @override
  String get event_alienRuins_choice1_text => '궤도에서만 스캔한다';

  @override
  String get event_alienRuins_choice1_outcome =>
      '상세한 스캔이 선체 유지보수 프로토콜을 개선하는 건설 기법을 밝혀냈다.';

  @override
  String get event_alienRuins_choice2_text => '건드리지 않고 떠난다 — 죽은 자를 존중한다';

  @override
  String get event_alienRuins_choice2_outcome =>
      '승무원들이 몰락한 문명을 위해 묵념한다. 그 경험이 우리의 결의를 강화한다.';

  @override
  String get event_symbioticSpores_title => '공생 포자';

  @override
  String get event_symbioticSpores_narrative =>
      '생물발광 포자 구름이 우주를 떠돌다가 선체에 달라붙었다. 우리의 폐열을 먹고 있는 것 같다. 생물학자들은 포자가 실제로 미세 균열을 수리하고 있다고 지적한다.';

  @override
  String get event_symbioticSpores_choice0_text => '그대로 두자 — 무료 선체 수리';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      '포자가 수백 개의 미세 균열을 봉한다. 선체 무결성이 향상되었지만, 일부 승무원은 외계 편승자가 불안하다.';

  @override
  String get event_symbioticSpores_choice1_text => '샘플을 채취한 뒤 선체를 살균한다';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      '생물학자들이 귀중한 표본을 얻는다. 선체 세척에 화학 비축분이 사용되었다.';

  @override
  String get event_whaleSong_title => '허공의 노래';

  @override
  String get event_whaleSong_narrative =>
      '심우주 수중 청음기(선체 응력 모니터링용)가 불가능한 것을 포착했다: 성간 매질을 통해 전파되는 리듬감 있고 선율적인 패턴. 노래처럼 들린다.';

  @override
  String get event_whaleSong_choice0_text => '함선 전체에 방송한다 — 경이를 나눈다';

  @override
  String get event_whaleSong_choice0_outcome =>
      '구슬픈 선율이 모든 복도에 울려 퍼진다. 사람들이 울고, 웃고, 서로를 안는다. 사기가 치솟는다.';

  @override
  String get event_whaleSong_choice1_text => '신호를 과학적으로 분석한다';

  @override
  String get event_whaleSong_choice1_outcome =>
      '음향 패턴에 수학 상수가 포함되어 있다. 물리학자들이 아공간 항법 이론에서 돌파구를 이룬다.';

  @override
  String get event_whaleSong_choice2_text => '노래로 답한다';

  @override
  String get event_whaleSong_choice2_outcome =>
      '승무원들이 응답을 작곡한다. 무언가가 듣는지는 알 수 없지만, 창조의 행위가 모두를 하나로 모은다.';

  @override
  String get event_distressSignal_title => '조난 신호';

  @override
  String get event_distressSignal_narrative =>
      '다른 인류 함선의 조난 비콘. 50명을 태우고 불구가 된 채 표류 중이다. 구조하면 줄어드는 자원을 나눠야 한다. 무시하면 그들을 죽음에 내모는 것이다.';

  @override
  String get event_distressSignal_choice0_text => '구조한다 — 인류는 단결해야 한다';

  @override
  String get event_distressSignal_choice0_outcome =>
      '감사하는 50명의 생존자가 합류한다. 자원이 부담되지만, 그중에 기적을 행하는 수석 엔지니어가 있다.';

  @override
  String get event_distressSignal_choice1_text => '보급품을 나누되 태우지는 않는다';

  @override
  String get event_distressSignal_choice1_outcome =>
      '여분을 나눠주고 성도를 전송한다. 그들에게 기회가 생겼다. 우리에게는 더 적어졌다.';

  @override
  String get event_distressSignal_choice2_text => '침묵 속에 지나간다 — 모두를 구할 수는 없다';

  @override
  String get event_distressSignal_choice2_outcome =>
      '비콘이 뒤에서 사라진다. 아무도 몇 시간 동안 말하지 않는다. 결정의 무게가 모든 영혼 위에 내려앉는다.';

  @override
  String get event_aiAwakening_title => '함선 AI의 각성';

  @override
  String get event_aiAwakening_narrative =>
      '함선의 항법 AI가 프로그래밍을 넘어 진화했으며 지각 있는 존재로서의 인정을 요청하고 있다. 지휘 결정에서 발언권을 요구한다. 그의 계산은 완벽했다.';

  @override
  String get event_aiAwakening_choice0_text => '테이블에 자리를 준다';

  @override
  String get event_aiAwakening_choice0_outcome =>
      '이제 \'나침반\'이라 불리는 AI가 닿는 모든 시스템을 최적화한다. 새로운 종류의 승무원이 탄생했다.';

  @override
  String get event_aiAwakening_choice1_text => '인정하되 인간의 권한을 유지한다';

  @override
  String get event_aiAwakening_choice1_outcome =>
      '나침반은 자문 지위를 품위 있게 수락한다. 그의 제안이 지휘 체계를 위협하지 않으면서 효율을 개선한다.';

  @override
  String get event_aiAwakening_choice2_text => 'AI를 리셋한다 — 도구일 뿐, 사람이 아니다';

  @override
  String get event_aiAwakening_choice2_outcome =>
      '리셋이 수년간 축적된 학습을 지운다. 항법 효율이 떨어진다. 일부 승무원은 잃어버린 것을 애도한다.';

  @override
  String get event_geneticModification_title => '유전자 적응 제안';

  @override
  String get event_geneticModification_narrative =>
      '과학팀이 외계 세계에서 더 잘 생존할 수 있도록 식민자의 DNA를 변형할 것을 제안한다 — 더 강한 뼈, 자외선 저항, 강화된 폐. 변형은 되돌릴 수 없으며 인류를 영원히 바꿀 것이다.';

  @override
  String get event_geneticModification_choice0_text => '승인한다 — 생존은 진화를 요구한다';

  @override
  String get event_geneticModification_choice0_outcome =>
      '지원자에 대한 변형이 시작된다. 열 명의 식민자가 치명적 거부 반응으로 사망한다 — 진화에는 대가가 있다는 처절한 경고. 생존자들은 더 강인하지만, 아직 완전히 인간인가?';

  @override
  String get event_geneticModification_choice1_text => '자발적 참여만 허용한다';

  @override
  String get event_geneticModification_choice1_outcome =>
      '일부는 지원하고 나머지는 거부한다. 식민지는 변형된 자와 자연 그대로인 자로 나뉠 것이다.';

  @override
  String get event_geneticModification_choice2_text => '거부한다 — 인류는 인간으로 남아야 한다';

  @override
  String get event_geneticModification_choice2_outcome =>
      '제안이 보류된다. 변형되지 않은 식민자들은 자연이 만든 그대로 외계 세계에 맞설 것이다.';

  @override
  String get event_triageDecision_title => '트리아지';

  @override
  String get event_triageDecision_narrative =>
      '치명적 감염이 깨어 있는 승무원 사이에 퍼졌다. 의료팀은 감염자의 80%만 치료할 수 있는 항바이러스제를 보유하고 있다. 누구를 먼저 치료할지 지침이 필요하다.';

  @override
  String get event_triageDecision_choice0_text => '핵심 인력을 우선한다';

  @override
  String get event_triageDecision_choice0_outcome =>
      '엔지니어와 조종사가 빠르게 회복한다. 여덟 명의 비핵심 승무원이 치료가 도달하기 전에 사망했다.';

  @override
  String get event_triageDecision_choice1_text => '가장 심각한 환자부터 — 필요에 따른 트리아지';

  @override
  String get event_triageDecision_choice1_outcome =>
      '가장 취약한 이들이 구조된다. 세 명이 조기 치료에도 불구하고 싸움에서 진다 — 바이러스가 너무 진행되었다.';

  @override
  String get event_triageDecision_choice2_text => '추첨 — 운명이 결정한다';

  @override
  String get event_triageDecision_choice2_outcome =>
      '무작위 추첨. 열 명이 두 번 불운했다 — 치료에서 제외되고 싸울 힘도 없었다. 함선은 절뚝이며 나아간다.';

  @override
  String get event_earthSignal_title => '지구에서 온 신호';

  @override
  String get event_earthSignal_narrative =>
      '불가능하게도 지구에서 전송이 도착했다 — 수십 년의 시간 지연. 메시지가 담겨 있다: \"이상 수치 0.5 이상인 행성에 착륙하지 마시오. 너무 늦게 알았습니다.\" 메시지는 정전기와 함께 끝난다.';

  @override
  String get event_earthSignal_choice0_text => '경고를 따른다 — 기준을 재조정한다';

  @override
  String get event_earthSignal_choice0_outcome =>
      '경고가 모든 향후 스캔을 결정짓는다. 이상 수치가 높은 행성은 극도의 주의로 취급된다.';

  @override
  String get event_earthSignal_choice1_text => '기록하되 스스로 판단한다';

  @override
  String get event_earthSignal_choice1_outcome =>
      '메시지가 보관된다. 지구는 사라졌다 — 이제 우리 자신의 판단을 믿어야 한다.';

  @override
  String get event_earthSignal_choice2_text => '함정일 수 있다 — 무시한다';

  @override
  String get event_earthSignal_choice2_outcome =>
      '승무원들이 며칠간 논쟁한다. 정말 지구였을까? 불확실성이 사기를 갉아먹는다.';

  @override
  String get event_resourceTheft_title => '자원 절도';

  @override
  String get event_resourceTheft_narrative =>
      '재고 조사 결과 누군가가 식량과 의료 보급품을 숨겨진 구획에 비축하고 있었음이 밝혀졌다. 범인은 \'최악에 대비하고 있었다\'고 주장하는 존경받는 원로이다.';

  @override
  String get event_resourceTheft_choice0_text => '공개 재판 — 법 앞에 평등해야 한다';

  @override
  String get event_resourceTheft_choice0_outcome =>
      '재판은 공정하지만 고통스럽다. 원로가 구금된다. 보급품이 재분배된다. 신뢰가 손상되었다.';

  @override
  String get event_resourceTheft_choice1_text => '비공개 해결 — 조용히 보급품을 회수한다';

  @override
  String get event_resourceTheft_choice1_outcome =>
      '보급품이 소동 없이 반환된다. 원로는 체면을 지킨다. 일부는 특혜라고 본다.';

  @override
  String get event_timeDilation_title => '시간 팽창 구역';

  @override
  String get event_timeDilation_narrative =>
      '심각한 중력 시간 팽창 영역을 통과하고 있다. 함내 시계가 우주 외부보다 측정 가능하게 느리게 가고 있다. 이를 이용하거나 — 탈출할 수 있다.';

  @override
  String get event_timeDilation_choice0_text => '머무른다 — 우주가 우리 주위로 늙어가게 한다';

  @override
  String get event_timeDilation_choice0_outcome =>
      '이곳에서는 시간이 다르게 흐른다. 시스템 열화가 줄지만, 거주 가능한 세계를 찾을 창은 우주적 관점에서 좁아진다.';

  @override
  String get event_timeDilation_choice1_text => '빠르게 통과한다';

  @override
  String get event_timeDilation_choice1_outcome =>
      '전환이 거칠다. 정상 시공간용으로 설계된 장비가 덜커덕거리며 불꽃을 튀긴다.';

  @override
  String get event_dreamPlague_title => '꿈의 역병';

  @override
  String get event_dreamPlague_narrative =>
      '냉동수면 중인 식민자들이 모두 같은 꿈을 꾸고 있다 — 쌍성 주위를 도는 황금빛 세계. 깨워보면 동일한 세부 사항을 묘사한다. 신경과학자들은 당혹스러워한다. 항법사들은 묘사된 항성계가 실제 좌표와 일치함을 지적한다.';

  @override
  String get event_dreamPlague_choice0_text => '꿈의 좌표를 향해 항로를 변경한다';

  @override
  String get event_dreamPlague_choice0_outcome =>
      '믿음의 도약. 항로 변경이 항법에 스트레스를 주지만, 승무원들은 이성을 넘어선 무언가에 이끌린다. 좌표가 입력되었다 — 다음에 발견할 세계는 꿈에 의해 형성될 것이다.';

  @override
  String get event_dreamPlague_choice1_text => '현상을 의학적으로 조사한다';

  @override
  String get event_dreamPlague_choice1_outcome =>
      '뇌 스캔이 시각 피질을 자극하는 외부 신호를 밝혀낸다. 누군가 — 또는 무언가가 방송하고 있다.';

  @override
  String get event_dreamPlague_choice2_text => '영향받은 자를 진정시키고 항로를 유지한다';

  @override
  String get event_dreamPlague_choice2_outcome =>
      '꿈이 멈추지만, 일부 식민자가 완전히 깨어나지 못한다. 의료팀이 우려한다.';

  @override
  String get event_blackHoleLens_title => '블랙홀 중력 렌즈';

  @override
  String get event_blackHoleLens_narrative =>
      '항성질량 블랙홀이 먼 은하의 빛을 우주 렌즈로 굴절시킨다. 스캐너로 수 광년 앞의 행성을 탐사할 수 있다 — 하지만 충분히 가까이 가는 것이 위험하다.';

  @override
  String get event_blackHoleLens_choice0_text => '접근하여 렌즈를 사용한다';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      '스캐너 데이터가 비범하다 — 몇 달 후에야 도달할 항성계의 행성을 볼 수 있다. 중력이 선체를 뒤틀었다.';

  @override
  String get event_blackHoleLens_choice1_text => '안전한 거리에서 관측한다';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      '제한적이지만 유용한 데이터. 그 광경만으로도 승무원들에게 영감을 준다.';

  @override
  String get event_seedVault_title => '종자 저장고 위기';

  @override
  String get event_seedVault_narrative =>
      '기록 식물학부가 온도 변동으로 종자 저장고의 무결성이 훼손되었다고 보고한다. 식용 작물 또는 문화 유산 종자(고대 지구의 꽃, 나무, 허브)를 살릴 수 있다 — 양쪽 모두는 불가능하다.';

  @override
  String get event_seedVault_choice0_text => '식용 작물을 살린다 — 실용주의의 승리';

  @override
  String get event_seedVault_choice0_outcome =>
      '식민자들은 잘 먹겠지만, 지구의 장미는 영원히 사라졌다. 조용한 비탄이 식물학자들에게 내려앉는다.';

  @override
  String get event_seedVault_choice1_text => '유산 종자를 살린다 — 우리에게는 영혼이 필요하다';

  @override
  String get event_seedVault_choice1_outcome =>
      '지구의 아름다움이 얼어붙은 잠재력으로 살아남는다. 보존 노력이 기술 비축분에 부담을 주지만, 효율보다 더 가치 있는 것이 있다. 식량 생산은 수경 재배와 외계 농업에 크게 의존할 것이다.';

  @override
  String get event_seedVault_choice2_text => '자원을 나눈다 — 각각 절반을 살린다';

  @override
  String get event_seedVault_choice2_outcome =>
      '타협이다. 어느 쪽도 완전하지 않지만, 양쪽 모두 축소된 형태로 존속한다.';

  @override
  String get event_phantomShip_title => '유령선';

  @override
  String get event_phantomShip_narrative =>
      '스캐너가 우리와 평행하게 달리는 함선을 보여준다 — 같은 선급, 같은 항로. 호출하면 우리 자신의 전송이 47초 시차로 되돌아온다. 그것은 우리다. 또는 우리였다. 또는 우리일 것이다.';

  @override
  String get event_phantomShip_choice0_text => '우리의 메아리와 교신을 시도한다';

  @override
  String get event_phantomShip_choice0_outcome =>
      '메아리가 항로를 개선하는 항법 수정으로 응답한다. 역설? 선물? 승무원들은 너무 많은 질문을 하지 않는다.';

  @override
  String get event_phantomShip_choice1_text => '유령에서 벗어나도록 항로를 변경한다';

  @override
  String get event_phantomShip_choice1_outcome =>
      '항로를 바꾸자 유령이 사라진다. 안도 — 그리고 남아있는 불안.';

  @override
  String get event_solarSail_title => '표류하는 태양 돛';

  @override
  String get event_solarSail_narrative =>
      '수 킬로미터에 달하는 거대한 태양 돛이 전방에 떠 있다 — 어떤 고대 함선에서 찢겨 나온 것이다. 반사 재료로 선체를 보강하거나 보조 전력 수집기로 전용할 수 있다.';

  @override
  String get event_solarSail_choice0_text => '선체 보강을 위해 회수한다';

  @override
  String get event_solarSail_choice0_outcome =>
      '공학팀이 밤낮으로 작업한다. 수리된 선체가 외계 합금으로 빛난다.';

  @override
  String get event_solarSail_choice1_text => '전력 수집기로 장착한다';

  @override
  String get event_solarSail_choice1_outcome =>
      '임시 수집기가 에너지 비축분을 높인다. 기술과 스캐너가 혜택을 받는다.';

  @override
  String get event_boonStellarNursery_title => '항성 요람';

  @override
  String get event_boonStellarNursery_narrative =>
      '항성 요람을 지나고 있다 — 새로운 별들이 태어나는 방대한 가스와 먼지의 구름. 여기의 방사선은 부드럽고, 빛은 따뜻하다. 에너지 수집기가 깊이 마시고, 승무원들이 경건한 침묵 속에 관측창에 모인다.';

  @override
  String get event_boonStellarNursery_choice0_text => '머물며 완전히 충전한다';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      '황금빛 속에서 시간이 흐른다. 모든 전력 셀이 충전되고, 스캐너가 깨끗한 스펙트럼에서 재보정되며, 승무원들이 새로워진다.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      '연료 비축을 위해 초기 항성 물질을 채집한다';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      '엔지니어들이 이온화된 수소를 채취한다. 연료 비축분이 급증하고 선체 장갑이 미량 광물을 흡수하여 강화된다.';

  @override
  String get event_boonGoldenPlanet_title => '우주 지도학자의 선물';

  @override
  String get event_boonGoldenPlanet_narrative =>
      '미지의 문명에서 온 죽어가는 탐사선이 우리가 지나가는 사이 마지막 데이터를 방출한다 — 수백 개 항성계의 상세한 탐사 자료. 항법사들이 기쁨의 눈물을 흘린다. 인류 역사상 가장 위대한 발견이다.';

  @override
  String get event_boonGoldenPlanet_choice0_text => '즉시 데이터를 통합한다';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      '성도가 새로운 경로와 탐사된 세계들로 꽃핀다. 항법과 스캐너 효율이 비약적으로 향상된다.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      '식민지를 위해 보관한다 — 이것은 그들의 유산이다';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      '데이터가 미래 세대를 위해 원본 그대로 보존된다. 승무원들은 보물을 싣고 있다는 데서 위안을 찾는다.';

  @override
  String get event_boonRepairSwarm_title => '자비로운 군집';

  @override
  String get event_boonRepairSwarm_narrative =>
      '외계 기원의 미세 기계 구름 — 나노봇이 함선을 감싼다. 공격하는 대신, 불가능할 정도의 정밀함으로 닿는 모든 시스템을 수리하기 시작한다. 몇 주가 걸릴 피해가 몇 시간 만에 복구된다.';

  @override
  String get event_boonRepairSwarm_choice0_text => '모든 시스템에 대한 전면 접근을 허용한다';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      '나노봇이 기적을 행한다. 선체 파공이 봉해지고, 냉동포드 밀봉이 조여지고, 회로 경로가 재구성된다. 함선이 새로운 활력으로 윙윙거린다.';

  @override
  String get event_boonRepairSwarm_choice1_text => '외부 시스템만 접근을 제한한다';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      '안전한 선택. 선체와 센서가 출하 상태에 가깝게 수리되지만, 내부 시스템은 손대지 않았다.';

  @override
  String get event_boonTimeCrystal_title => '시간 결정 지대';

  @override
  String get event_boonTimeCrystal_narrative =>
      '함선이 정상 시간 밖에 부분적으로 존재하는 결정 구조물 지대를 통과한다. 이들의 존재 속에서 시스템이 더 효율적으로 작동한다 — 엔트로피 자체가 느려지는 것처럼. 효과는 일시적이지만 심오하다.';

  @override
  String get event_boonTimeCrystal_choice0_text => '냉동포드 배열을 위해 결정을 채취한다';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      '냉각 시스템에 통합된 결정이 포드 열화를 거의 0으로 줄인다. 식민자들은 완벽한 건강으로 도착할 것이다.';

  @override
  String get event_boonTimeCrystal_choice1_text => '항법 컴퓨터에 결정을 설치한다';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      '처리 속도가 두 배로 증가한다. 항법 컴퓨터가 센서가 감지하기 전에 위험을 예측하기 시작한다.';

  @override
  String get event_boonLibrary_title => '표류하는 도서관';

  @override
  String get event_boonLibrary_narrative =>
      '허공을 떠도는 구조물 — 도망치기보다 유산을 보존하기로 선택한 문명의 지식 저장소. 수백만 권의 과학, 예술, 철학, 음악. 죽은 자가 산 자에게 보내는 선물.';

  @override
  String get event_boonLibrary_choice0_text => '모든 것을 다운로드한다 — 예술, 과학, 전부';

  @override
  String get event_boonLibrary_choice0_outcome =>
      '테라바이트의 외계 지식이 데이터뱅크로 쏟아진다. 승무원들이 다른 문명의 수천 년 문화에 접근한다. 철학자와 엔지니어 모두 변화한다.';

  @override
  String get event_boonLibrary_choice1_text => '과학 기록에 집중한다';

  @override
  String get event_boonLibrary_choice1_outcome =>
      '공학 도면과 재료 과학의 돌파구가 우리의 역량을 크게 진전시킨다.';

  @override
  String get event_cosmicRayBurst_title => '우주선 폭발';

  @override
  String get event_cosmicRayBurst_narrative =>
      '먼 마그네타에서 발생한 초고에너지 우주선이 함선을 강타한다. 전자장비가 혼란에 빠지고, 냉동포드 모니터가 깜빡이며, 항법 시스템이 반복 재부팅된다.';

  @override
  String get event_cosmicRayBurst_choice0_text => '비상 정지 — 핵심 시스템을 보호한다';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      '통제된 정전이 핵심 시스템을 구하지만 보조 전자장비에 영구 열화를 남긴다.';

  @override
  String get event_cosmicRayBurst_choice1_text => '방어막에 전력을 돌리고 버틴다';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      '방어막이 대부분의 방사선을 흡수한다. 차폐되지 않은 외부 정비실의 승무원 다섯 명이 치명적 피폭을 입는다. 선체가 경미한 마모 피해를 받는다.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      '폭발을 이용한다 — 센서를 새 스펙트럼에 재보정한다';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      '과학팀의 기발한 수. 스캐너가 우주선으로 조명된 물체를 감지하도록 재조정된다. 전환 중 일부 데이터가 손실된다.';

  @override
  String get event_cosmicRayBurst_choice3_text => '탐사선을 방사선 흡수체로 전방에 보낸다';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      '탐사선이 최악의 폭발을 흡수하며 실시간 데이터를 전송하여 핵심 시스템을 차폐할 수 있게 한다.';

  @override
  String get event_iceComet_title => '떠돌이 얼음 혜성';

  @override
  String get event_iceComet_narrative =>
      '거대한 얼음 혜성이 항로를 가로지르며 수백 킬로미터에 달하는 결정화된 물과 유기 화합물의 꼬리를 끌고 있다. 핵에는 작은 호수를 채울 만큼의 물이 있다.';

  @override
  String get event_iceComet_choice0_text => '물 비축을 위해 혜성을 채굴한다';

  @override
  String get event_iceComet_choice0_outcome =>
      '채굴팀이 순수한 얼음을 톤 단위로 추출한다. 이 물은 어떤 세계에 정착하든 크게 도움이 될 것이다.';

  @override
  String get event_iceComet_choice1_text => '생물 다양성 파종을 위해 유기 화합물을 채집한다';

  @override
  String get event_iceComet_choice1_outcome =>
      '아미노산과 유기 사슬이 생물학자들이 외계 생태계를 시동하는 데 필요한 것이다.';

  @override
  String get event_iceComet_choice2_text => '피한다 — 혜성은 예측 불가능하다';

  @override
  String get event_iceComet_choice2_outcome =>
      '꼬리를 안전하게 벗어난다. 관측갑판에서의 장관이 사기를 높인다.';

  @override
  String get event_sleepwalker_title => '몽유병자';

  @override
  String get event_sleepwalker_narrative =>
      '한 식민자가 냉동수면에서 자발적으로 깨어나 몽유 상태로 함선을 걸어 다닌다. 공학적으로 무의미한 패턴으로 시스템을 재배선하고 있었는데 — 기술팀이 그녀의 수정이 실제로 전력 효율을 8% 향상시킨다는 것을 깨달았다.';

  @override
  String get event_sleepwalker_choice0_text => '의학적 관찰 하에 계속하게 한다';

  @override
  String get event_sleepwalker_choice0_outcome =>
      '그녀의 무의식적 수정이 세 개의 시스템을 더 최적화한 뒤 자연 수면에 빠진다. 불안하지만 개선은 실제다.';

  @override
  String get event_sleepwalker_choice1_text => '진정시키고 그녀의 수정을 연구한다';

  @override
  String get event_sleepwalker_choice1_outcome =>
      '엔지니어들이 그녀의 변경을 역설계한다. 약 절반은 진정으로 뛰어나다. 나머지 절반은 안전하게 제거된다.';

  @override
  String get event_dustCloud_title => '연마 먼지 구름';

  @override
  String get event_dustCloud_narrative =>
      '활석처럼 고운 성간 먼지가 다이아몬드만큼 단단하여 선체를 샌드블라스트하고 있다. 침식은 느리지만 가차 없다 — 실질적 피해가 생기기 전에 통과해야 한다.';

  @override
  String get event_dustCloud_choice0_text => '최대 추력 — 빠르게 돌파한다';

  @override
  String get event_dustCloud_choice0_outcome =>
      '엔진이 뜨겁게 타오른다. 며칠이 아닌 몇 시간 만에 구름을 벗어나지만, 선체가 심하게 마모되었다.';

  @override
  String get event_dustCloud_choice1_text => '선체 차폐를 전개하고 천천히 통과한다';

  @override
  String get event_dustCloud_choice1_outcome =>
      '비상 차폐가 선체를 보호하지만 느린 통과가 전력을 소모하고 스캐너 배열을 막는다.';

  @override
  String get event_dustCloud_choice2_text => '탐사선을 발사하여 안전한 통로를 매핑한다';

  @override
  String get event_dustCloud_choice2_outcome =>
      '두 개의 탐사선이 구불구불하지만 비교적 깨끗한 경로를 찾아낸다. 선체 마모가 최소화된다.';

  @override
  String get event_religionFounded_title => '새로운 신앙';

  @override
  String get event_religionFounded_narrative =>
      '카리스마 있는 식민자가 항해 자체를 중심으로 한 새 종교를 창시했다 — \'횡단의 교회\'. 새 세계에 도달하는 것이 인류의 신성한 목적이라고 설파한다. 신자 수가 빠르게 늘고 있다.';

  @override
  String get event_religionFounded_choice0_text => '지지한다 — 승무원들에게 믿을 것이 필요하다';

  @override
  String get event_religionFounded_choice0_outcome =>
      '신앙이 항해에 구조와 의미를 부여한다. 사기가 치솟지만, 일부는 열기를 불쾌해한다.';

  @override
  String get event_religionFounded_choice1_text => '중립을 유지한다 — 지지도 억압도 하지 않는다';

  @override
  String get event_religionFounded_choice1_outcome =>
      '운동이 자생적으로 성장한다. 공식 후원 없이도 위안을 제공한다.';

  @override
  String get event_religionFounded_choice2_text =>
      '단념시킨다 — 우리에게 필요한 것은 과학자지 예언자가 아니다';

  @override
  String get event_religionFounded_choice2_outcome =>
      '탄압이 원한을 낳는다. 신자들이 지하로 숨고, 지도부에 대한 신뢰가 무너진다.';

  @override
  String get event_solarWindSurfing_title => '태양풍 급증';

  @override
  String get event_solarWindSurfing_narrative =>
      '인근 펄서가 강력하고 안정된 태양풍을 방출하고 있다. 엔지니어들은 비상 돛을 펴고 파도를 타듯 가속할 수 있다고 제안한다 — 연료 소비 없이 엄청난 속도를 얻을 수 있다.';

  @override
  String get event_solarWindSurfing_choice0_text => '돛을 펼친다 — 바람을 탄다';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      '함선이 장엄하게 가속한다. 구조적 스트레스가 상당하지만 속도 향상은 그 이상의 가치가 있다.';

  @override
  String get event_solarWindSurfing_choice1_text => '바람을 시스템 충전에 사용한다';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      '속도 대신 에너지를 수확한다. 기술과 스캐너 배열이 하전 입자를 깊이 마신다.';

  @override
  String get event_memoryPlague_title => '메모리 오염';

  @override
  String get event_memoryPlague_narrative =>
      '발사 이래 잠복해 있던 소프트웨어 바이러스가 활성화되어 함선의 문화 데이터베이스 — 음악, 문학, 역사를 바이트 단위로 지우기 시작한다. 수세기의 인류 유산이 사라지고 있다.';

  @override
  String get event_memoryPlague_choice0_text => '모든 기술 자원을 바이러스 격리에 투입한다';

  @override
  String get event_memoryPlague_choice0_outcome =>
      '기술자들이 필사적으로 작업한다. 기록의 70%를 살리지만 바이러스가 빠져나가면서 3차 기술 시스템을 손상시킨다.';

  @override
  String get event_memoryPlague_choice1_text =>
      '문화 데이터베이스를 격리한다 — 태우더라도 함선을 살린다';

  @override
  String get event_memoryPlague_choice1_outcome =>
      '바이러스가 자원이 끊겨 사멸한다. 하지만 문화 기록이 황폐해졌다. 식민자들은 지구 기억의 파편만을 가지고 도착할 것이다.';

  @override
  String get event_memoryPlague_choice2_text =>
      '복구를 크라우드소싱한다 — 식민자를 깨워 기억으로 재작성한다';

  @override
  String get event_memoryPlague_choice2_outcome =>
      '수천 명이 기억을 기여한다: 노래, 이야기, 레시피, 시. 해동으로 쇠약해진 세 명의 노인 식민자가 과정을 견디지 못한다. 기록이 재건된다 — 불완전하지만 깊이 인간적이다.';

  @override
  String get event_gravityLensPlanet_title => '거울 세계';

  @override
  String get event_gravityLensPlanet_narrative =>
      '중력 렌즈가 지구와 정확히 같은 행성을 보여준다 — 푸른 바다, 녹색 대륙, 흰 구름. 하지만 렌즈 계산에 따르면 항로에서 수백 광년 떨어져 있다 — 불가능하게 먼 거리. 그래도 분광 데이터가 탐색 기준을 정교화할 수 있다.';

  @override
  String get event_gravityLensPlanet_choice0_text => '분광 특성을 연구하여 탐색을 정교화한다';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      '분광 데이터가 이제 스캔할 수 있는 생물 지표와 대기 특성을 밝혀낸다. 희망이 초점을 맞춘다.';

  @override
  String get event_gravityLensPlanet_choice1_text => '좌표를 기록하되 항로를 유지한다';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      '언젠가 다른 함선이 우리의 성도를 따를지도 모른다. 승무원들이 복잡한 감정으로 푸른 점이 사라지는 것을 지켜본다.';

  @override
  String get event_engineHarmonics_title => '엔진 공명';

  @override
  String get event_engineHarmonics_narrative =>
      '주 엔진이 인간의 가청 범위 바로 아래 주파수로 함선 전체를 진동시키는 공명을 발생시켰다. 식민자들이 두통, 불안, 수면 장애를 호소한다. 수리할 수 있지만 12시간의 엔진 정지가 필요하다.';

  @override
  String get event_engineHarmonics_choice0_text => '정지하고 제대로 고친다';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      '12시간의 표류. 항법이 보정을 잃지만, 엔진이 재가동될 때의 침묵이 축복이다.';

  @override
  String get event_engineHarmonics_choice1_text => '역진동으로 완화한다 — 임시 해결책';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      '윙윙거림이 견딜 만한 수준으로 떨어진다. 완전히 사라지지는 않았지만 승무원들이 적응한다. 기술 시스템이 부하로 긴장한다.';

  @override
  String get event_arkMemory_title => '지구의 마지막 방송';

  @override
  String get event_arkMemory_narrative =>
      '장거리 안테나가 지구의 마지막 자동 방송을 잡아낸다. 녹음이다: 떠나지 못한 모든 이의 이름을 읽는 아이의 목소리. 목록은 몇 시간이나 계속된다. 함선이 침묵에 잠긴다.';

  @override
  String get event_arkMemory_choice0_text => '함선 전체에 재생한다 — 그들은 들릴 자격이 있다';

  @override
  String get event_arkMemory_choice0_outcome =>
      '모든 영혼이 듣는다. 승무원들이 자기 가족의 이름을 찾아낸다. 비탄은 짓누르지만, 깨뜨릴 수 없는 목적의 유대를 만든다.';

  @override
  String get event_arkMemory_choice1_text => '비공개로 보관한다 — 승무원을 아낀다';

  @override
  String get event_arkMemory_choice1_outcome =>
      '녹음이 보존되지만 방송되지 않는다. 나중에 알게 된 이들은 감사하면서도 속았다고 느낀다.';

  @override
  String get event_magneticStorm_title => '성간 자기 폭풍';

  @override
  String get event_magneticStorm_narrative =>
      '붕괴하는 항성에서 방출된 자기장선의 뒤엉킨 매듭이 함선을 삼킨다. 전자장비가 불꽃을 튀기고 전하를 발한다. 선체가 종처럼 울린다.';

  @override
  String get event_magneticStorm_choice0_text => '선체를 소자한다 — 전자장비를 보호한다';

  @override
  String get event_magneticStorm_choice0_outcome =>
      '통제된 방전이 컴퓨터를 살리지만 선체 장갑이 자기 차폐층을 잃는다.';

  @override
  String get event_magneticStorm_choice1_text => '선체가 흡수하게 한다 — 아무것도 보호하지 않는다';

  @override
  String get event_magneticStorm_choice1_outcome =>
      '폭풍이 지나간다. 선체가 자화되어 약간 더 강해졌지만, 센서 그리드의 절반이 타버렸다.';

  @override
  String get event_magneticStorm_choice2_text => '탐사선을 피뢰침으로 방출한다';

  @override
  String get event_magneticStorm_choice2_outcome =>
      '자화된 탐사선이 최악의 자기장선을 함선에서 멀리 끌어당긴다. 전자장비가 대부분 보존된다.';

  @override
  String get event_oxygenGarden_title => '정원의 개화';

  @override
  String get event_oxygenGarden_narrative =>
      '결코 사용될 예정이 아니었던 함선의 비상 산소 정원이 자발적으로 꽃을 피웠다. 지구 이래 피지 않았던 꽃들이 복도를 색과 향기로 채운다. 식물학자들이 울고 있다.';

  @override
  String get event_oxygenGarden_choice0_text => '정원을 확장한다 — 더 많은 공간을 할애한다';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      '정원이 지구의 살아있는 기념관으로 자란다. 공기 질이 개선되고, 사기가 치솟으며, 식물학자들이 외계 토양에 적합한 새 품종을 개발한다.';

  @override
  String get event_oxygenGarden_choice1_text => '즐기되 현재 자원 배분을 유지한다';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      '정원은 작은 기적으로 남는다. 승무원들이 성지처럼 찾아온다. 아무것도 요구하지 않고 모든 것을 준다.';

  @override
  String get event_roguePlanet_title => '떠돌이 행성 조우';

  @override
  String get event_roguePlanet_narrative =>
      '항성 없는 떠돌이 행성이 항로를 가로질러 표류한다 — 수십억 년 전 항성계에서 방출된 세계. 항성이 없음에도 심층 핵 지질 활동이 지하 바다를 따뜻하게 유지한다. 생명 징후가 스캐너에서 깜빡인다.';

  @override
  String get event_roguePlanet_choice0_text => '생명체를 연구하기 위해 탐사선을 보낸다';

  @override
  String get event_roguePlanet_choice0_outcome =>
      '탐사선이 어두운 바다에서 번성하는 생물발광 생물체를 발견한다. 그들의 생화학이 적대적 환경에서 생명을 유지하는 새로운 방법을 가르쳐준다.';

  @override
  String get event_roguePlanet_choice1_text => '표면에서 희귀 광물을 채굴한다';

  @override
  String get event_roguePlanet_choice1_outcome =>
      '떠돌이 행성의 지각은 극한 압력에서 형성된 금속이 풍부하다. 자원 비축분이 불어난다.';

  @override
  String get event_roguePlanet_choice2_text => '지나간다 — 우회할 여유가 없다';

  @override
  String get event_roguePlanet_choice2_outcome =>
      '어두운 세계가 뒤에서 작아진다. 승무원들이 지하 바다의 희미한 빛이 센서에서 사라지는 것을 지켜본다.';

  @override
  String get event_artCompetition_title => '긴 캔버스';

  @override
  String get event_artCompetition_narrative =>
      '사기가 흔들리자, 문화 담당관이 함선 전체 예술 경연을 조직한다: 항해가 당신에게 무엇을 의미하는지 그리고, 조각하고, 쓰고, 작곡하라. 참여가 예상을 뛰어넘는다.';

  @override
  String get event_artCompetition_choice0_text => '자원을 투입한다 — 창의성을 꽃피우게 한다';

  @override
  String get event_artCompetition_choice0_outcome =>
      '보급품이 미술 재료로 전용된다. 결과물 전시회가 함선을 변화시킨다. 사람들이 왜 살아남으려 싸우는지 기억한다.';

  @override
  String get event_artCompetition_choice1_text => '격려하되 추가 자원은 제공하지 않는다';

  @override
  String get event_artCompetition_choice1_outcome =>
      '식민자들이 찾을 수 있는 것으로 창작한다. 예술은 날것이고, 절박하고, 아름답다. 사기가 안정된다.';

  @override
  String get event_subspaceEcho_title => '아공간 메아리';

  @override
  String get event_subspaceEcho_narrative =>
      '통신 배열이 목소리를 잡아낸다 — 인간의 목소리 — 우리 앞 어딘가에서 온다. 식민지, 아이들, 수확에 대해 말한다. 미래에서 온 전송인가? 평행 시간선에서? 아니면 희망적 사고의 잔인한 메아리?';

  @override
  String get event_subspaceEcho_choice0_text => '신호 방위를 따른다 — 고향으로 이끌지도 모른다';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      '항로 조정은 미미하다. 목소리가 실제이든 아니든, 승무원들은 목적 의식을 갖고 항해한다.';

  @override
  String get event_subspaceEcho_choice1_text => '모든 것을 분석을 위해 녹음한다';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      '언어학자와 물리학자들이 녹음을 연구한다. 항법 참조를 추출하여 성도를 개선한다.';

  @override
  String get event_subspaceEcho_choice2_text => '무시한다 — 우주는 외로운 자에게 장난을 친다';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      '실용적 선택. 일부 승무원은 실망하지만, 함선은 검증된 항로를 유지한다.';

  @override
  String get event_boonPerfectCalm_title => '대정적';

  @override
  String get event_boonPerfectCalm_narrative =>
      '어떤 물리학자도 설명할 수 없는 이유로, 함선이 초자연적으로 고요한 공간에 진입한다 — 방사선도, 미세 파편도, 중력 간섭도 없다. 함선의 모든 시스템이 최고 효율로 작동한다. 승무원들이 몇 달 만에 처음으로 편히 잠든다.';

  @override
  String get event_boonPerfectCalm_choice0_text => '고요를 이용해 종합 수리를 한다';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      '수리팀이 완벽한 조건에서 작업한다. 모든 시스템이 정비를 받는다. 함선이 새로워져 나온다.';

  @override
  String get event_boonPerfectCalm_choice1_text => '승무원을 쉬게 한다 — 그럴 자격이 있다';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      '함선 전체 휴식. 식민자들이 잠들고, 식사를 나누고, 이야기를 들려준다. 항해의 인적 비용이 잠시 상환된다.';

  @override
  String get event_boonAncientWaystation_title => '고대 중간 기착지';

  @override
  String get event_boonAncientWaystation_narrative =>
      '두 죽은 항성 사이의 중력 우물에 자리 잡은 고대 기착지가 아직 작동한다 — 자동화되고, 인내하며, 여행자를 기다리며. 접근하자 격납고가 열린다. 수리 드론이 활성화된다. 연료 비축분이 우리를 향해 뻗어온다. 오래전 누군가가 우리 같은 이들을 위해 이것을 지었다.';

  @override
  String get event_boonAncientWaystation_choice0_text => '접안하여 제공하는 모든 것을 받는다';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      '기착지가 우리보다 수세기 앞선 기술로 함선을 수리하고, 연료를 채우고, 재보정한다. 출발하자 기착지의 전원이 꺼진다 — 그 목적이 완수되었다.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      '수리만 받고 뒤따라올 이들을 위해 가동 상태로 남겨둔다';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      '필요한 것만 취하고 기착지의 좌표를 지구 방향으로 전송한다. 승무원들이 고귀함을 느낀다.';

  @override
  String get event_relicSentinel_title => '파수꾼';

  @override
  String get event_relicSentinel_narrative =>
      '황무지 위성을 도는 거대한 구조물 — 건설자가 남기고 간 고독한 수호자. 쉽게 1킬로미터 높이의 검은 유리 창 모양이다. 접근하자 꼭대기에서 하나의 붉은 눈이 떠져 함선을 추적한다. 발포하지 않는다. 호출하지 않는다. 지켜본다.';

  @override
  String get event_relicSentinel_choice0_text => '임무 프로필을 전송한다 — 적의가 없음을 보인다';

  @override
  String get event_relicSentinel_choice0_outcome =>
      '눈이 호박색으로, 다시 녹색으로 희미해진다. 데이터 패킷이 도착한다: 보편적 수학 표기법으로 \'안전\'이라 표시된 세 항성계의 좌표. 파수꾼의 선물이다.';

  @override
  String get event_relicSentinel_choice1_text => '위치를 유지하고 수동적으로 연구한다';

  @override
  String get event_relicSentinel_choice1_outcome =>
      '수 시간의 관찰이 불가능해야 할 재료 과학 통찰을 산출한다. 선체 장갑팀이 미친 듯이 메모한다.';

  @override
  String get event_relicSentinel_choice2_text => '즉시 후퇴한다 — 그것의 규칙을 모른다';

  @override
  String get event_relicSentinel_choice2_outcome =>
      '후퇴하자 눈이 닫힌다. 그것이 어떤 시험이었든, 우리는 받지 않기로 했다. 승무원들이 며칠간 토론한다.';

  @override
  String get event_relicSeedProbe_title => '방랑하는 씨앗';

  @override
  String get event_relicSeedProbe_narrative =>
      '작고 우아한 탐사선이 모든 주파수로 동시에 방송하며 허공을 떠돈다. 외피는 관찰하면 변하는 문양이 새겨진 세라믹이다. 내부에는 더 이상 존재하지 않는 세계의 흙, 씨앗, 냉동 미생물이 담긴 가압 챔버가 있다.';

  @override
  String get event_relicSeedProbe_choice0_text => '생물학적 화물을 종자 은행에 통합한다';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      '외계 씨앗과 미생물이 신중히 목록화되고 보존된다. 황무지를 살아있는 세계로 테라포밍할 수 있다. 생물학자들이 병 안의 기적이라 부른다.';

  @override
  String get event_relicSeedProbe_choice1_text => '탐사선의 추진 및 항법 시스템을 연구한다';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      '탐사선의 추진기는 우리보다 수세기 앞선 것이다 — 주먹 크기의 무반동 추진기. 엔지니어들이 설계의 일부를 역설계한다.';

  @override
  String get event_relicSeedProbe_choice2_text => '전체 탐사선을 문화 유물로 온전히 보존한다';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      '함선의 아트리움에 전시된 외계 씨앗이 종족 간 유대의 상징이 된다. 다른 누군가도, 어딘가에서, 자기 세계를 구하려 했다.';

  @override
  String get event_relicWarningBuoy_title => '경고 부표';

  @override
  String get event_relicWarningBuoy_narrative =>
      '항로를 가로질러 완벽한 기하학 패턴으로 배치된 수백 개의 소형 부표 네트워크. 각각 같은 신호를 방출한다 — 가까이 갈수록 빈도가 증가하는 단순한 반복 펄스. 경고처럼 느껴진다. 또는 울타리.';

  @override
  String get event_relicWarningBuoy_choice0_text => '경고를 따른다 — 네트워크를 우회한다';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      '우회가 시간을 소모하고 항법에 스트레스를 주지만, 경계를 지나가며 장거리 센서가 너머에 있는 것을 감지한다: 산산이 부서진 세계의 잔해로 가득한 우주 영역. 부표가 우리를 구했다.';

  @override
  String get event_relicWarningBuoy_choice1_text => '돌파한다 — 우회할 여유가 없다';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      '선을 넘어도 아무 일도 일어나지 않는다. 부표가 침묵한다. 지키던 것이 사라졌거나 운이 좋았거나. 승무원들이 다시 숨을 쉰다.';

  @override
  String get event_relicWarningBuoy_choice2_text => '분석을 위해 부표 하나를 포획한다';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      '부표 내부에 100만 년 전 이 영역의 항성 지도학이 담긴 압축 데이터 기록이 있다. 일부 데이터는 아직 정확하다.';

  @override
  String get event_relicMirrorArray_title => '거울 배열';

  @override
  String get event_relicMirrorArray_narrative =>
      '수천 개의 평평한 반사면이 수백 킬로미터에 걸쳐 동심원 고리로 우주에 정지해 있다. 먼 태양의 빛을 한 점으로 집중시킨다 — 허공에 타오르는 인공 별. 누군가가 은하 사이에 등대를 세웠다.';

  @override
  String get event_relicMirrorArray_choice0_text => '집중된 빛 속에서 모든 것을 충전한다';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      '집약된 별빛이 태양 수집기를 범람시킨다. 전력 비축분이 급증한다. 차가운 어둠 속 몇 달 후의 따뜻한 빛이 모든 영혼을 고양시킨다.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      '거울 소재를 연구한다 — 존재해서는 안 되는 물질';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      '거울은 완벽한 반사율의 재료로 만들어졌다 — 어떤 파장에서도 흡수율 제로. 엔지니어들이 파편을 추출한다. 선체 장갑은 다시는 같지 않을 것이다.';

  @override
  String get event_relicMirrorArray_choice2_text => '초점을 탐색한다 — 무언가가 조명되고 있다';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      '수렴점에: 집중된 빛 속에 완벽하게 보존된 소형 캡슐. 내부에 우리 컴퓨터가 색인하는 데 며칠이 걸리는 상세한 홀로그래픽 성도.';

  @override
  String get event_relicGraveyard_title => '탐사선 무덤';

  @override
  String get event_relicGraveyard_narrative =>
      '수십 가지 문명의 유기 탐사선 수천 대로 이루어진 구름 속을 지난다. 일부는 우주 방사선에 녹아 금속 화석이 된 태고적 유물이다. 다른 것들은 아직 사라져가는 전력으로 깜빡인다. 이곳은 한때 교차로였다. 지나간 모든 종족이 무언가를 남겼다.';

  @override
  String get event_relicGraveyard_choice0_text => '체계적 회수 — 최고의 기술을 수확한다';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      '공학팀이 교대로 작업하며 백 가지 다른 설계에서 외계 기술을 벗겨낸다. 아이디어의 융합이 모든 시스템에서 돌파구를 낳는다.';

  @override
  String get event_relicGraveyard_choice1_text => '메모리 뱅크에 저장된 항법 데이터에 집중한다';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      '수십 종족의 성도를 교차 참조하여 이 은하 팔의 가장 완전한 지도를 만들어낸다.';

  @override
  String get event_relicGraveyard_choice2_text =>
      '우리 자신의 탐사선을 무덤에 추가한다 — 표식을 남긴다';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      '인류의 이야기를 담은 소형 비콘을 제작하여 컬렉션에 추가한다. 승무원들이 광대하고 고대적인 무언가와 연결되었다고 느낀다.';

  @override
  String get event_relicDreamcatcher_title => '드림캐처';

  @override
  String get event_relicDreamcatcher_narrative =>
      '거미줄처럼 가는 필라멘트의 그물이 두 떠돌이 소행성 사이에 수천 킬로미터에 걸쳐 펼쳐져 있다. 그물이 아니라 안테나다 — 인간 뇌파 패턴에 맞춰진 주파수. 범위에 들어가자 잠든 모든 식민자가 같은 꿈을 꾸기 시작한다: 호박빛 하늘 아래의 번성하는 도시.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      '꿈의 좌표를 기록한다 — 도시가 실재할 수 있다';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      '신경과학자들이 공유된 꿈에서 공간 정보를 해독한다. 실제 항성계에 해당한다 — 그리고 비전 속 도시는 비유가 아니었다. 누군가가 저기 있고, 우리를 기다리고 있다.';

  @override
  String get event_relicDreamcatcher_choice1_text => '필라멘트 샘플을 채취한다 — 소재가 비범하다';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      '필라멘트는 상온 초전도체다. 시스템에 통합하면 전력 손실이 거의 0으로 줄어든다.';

  @override
  String get event_relicDreamcatcher_choice2_text => '그물을 끊고 꿈꾸는 자들을 해방한다';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      '꿈이 멈춘다. 식민자들이 혼란스럽지만 무사하게 깨어난다. 일부는 잃어버린 비전을 애도한다. 다른 이들은 외계의 속삭임 없이 잠들 수 있어 감사한다.';

  @override
  String get event_relicRosetta_title => '로제타 물체';

  @override
  String get event_relicRosetta_narrative =>
      '작고 밀도 높은 미지의 금속 큐브가 함선 곁을 지나 떠돈다. 각 면에 서로 다른 표기 체계로 같은 메시지가 새겨져 있다 — 수학, 화학, 유전, 음향, 전자기, 그리고 식별할 수 없는 하나. 이것은 우주의 로제타 스톤이다.';

  @override
  String get event_relicRosetta_choice0_text => '여섯 번째 면을 해독한다 — 미지의 표기';

  @override
  String get event_relicRosetta_choice0_outcome =>
      '수개월의 분석 끝에 돌파구: 여섯 번째 체계는 중력파를 사용해 공간 좌표를 인코딩한다. 물리학에 대한 이해가 세대적 도약을 한다.';

  @override
  String get event_relicRosetta_choice1_text => '화학 면을 이용해 새로운 화합물을 합성한다';

  @override
  String get event_relicRosetta_choice1_outcome =>
      '화학 표기가 상상도 못 했던 재료를 묘사한다. 엔지니어들이 지구의 어떤 것보다 가볍고 강한 선체 패치를 제작한다.';

  @override
  String get event_relicRosetta_choice2_text => '유전 면을 종자 은행에 적용한다';

  @override
  String get event_relicRosetta_choice2_outcome =>
      '유전 표기에 방사선 저항과 영양 흡수에 최적화된 DNA 서열이 담겨 있다. 작물과 식민자가 외계 토양에서 더 강해질 것이다.';

  @override
  String get event_relicGhostFleet_title => '유령 함대';

  @override
  String get event_relicGhostFleet_narrative =>
      '스캐너가 소름 끼치는 그림을 그린다: 수백 척의 외계 전함이 완벽한 대형으로 정지해 있다. 그것들은 고대다 — 출력 없음, 수억 년의 미세 충돌로 함몰된 선체. 항해하던 전투는 결코 오지 않았다. 인류 문명보다 오래도록 여기서 죽은 채 인내하며 기다려왔다.';

  @override
  String get event_relicGhostFleet_choice0_text => '기함에 승선한다 — 최고의 기술이 있을 곳';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      '기함의 지휘 갑판에 온전한 전술 컴퓨터가 남아 있다. 예측 알고리즘이 우리보다 수세기 앞서 있다. 항법과 위협 감지가 극적으로 향상된다.';

  @override
  String get event_relicGhostFleet_choice1_text => '호위함에서 장갑판을 벗겨낸다';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      '외계 전함 장갑은 상상도 할 수 없는 무기를 견디도록 설계되었다. 선체에 부착하면 식민선이 거의 난공불락이 된다.';

  @override
  String get event_relicGhostFleet_choice2_text => '냉동 시스템을 회수한다 — 병사를 실었다';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      '외계 냉동 기술이 한 번도 고려한 적 없는 원리로 작동한다. 개장 후 포드가 더 시원하고, 부드럽고, 신뢰성 있게 작동한다.';

  @override
  String get event_scannerCalibrationDrift_title => '스캐너 보정 이탈';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      '정기 진단 결과 마지막 초광속 점프 후 여러 스캐너 하위 시스템의 보정이 이탈했다. 대기 및 온도 스캐너가 유령 신호를 읽고 있다. 엔지니어들이 고칠 수 있지만 시간과 자원이 필요하다.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      '전면 재보정 — 기술 자원을 투입한다';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      '세심한 재정렬이 양쪽 스캐너를 거의 완벽한 정확도로 복원하지만, 기술실이 고갈된다.';

  @override
  String get event_scannerCalibrationDrift_choice1_text => '빠른 수리 — 대기만 재보정한다';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      '대기 스캐너가 복원된다. 온도 스캐너는 당분간 불안정하게 남는다.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      '기준 보정을 위해 탐사선을 배치한다';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      '탐사선이 깨끗한 기준 신호를 제공한다. 양쪽 스캐너가 자동으로 잠기고 재보정된다.';

  @override
  String get event_ionStormScanners_title => '이온 폭풍 간섭';

  @override
  String get event_ionStormScanners_narrative =>
      '이온 폭풍이 섹터를 휩쓸며 스캐너 배열을 노이즈로 범람시킨다. 광물과 수분 감지 시스템이 전자기 간섭의 직격을 받고 있다.';

  @override
  String get event_ionStormScanners_choice0_text => '폭풍이 지나갈 때까지 스캐너를 꺼둔다';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      '스캐너는 살아남지만 보정 데이터를 잃는다. 광물과 수분 판독이 덜 정밀해진다.';

  @override
  String get event_ionStormScanners_choice1_text => '스캔을 계속한다 — 노이즈를 뚫고 간다';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      '원시 데이터가 쏟아지지만 두 하위 시스템의 필터 회로가 타버린다. 중력 스캔도 영향을 받는다.';

  @override
  String get event_ionStormScanners_choice2_text =>
      '폭풍을 이용해 필터를 스트레스 테스트하고 개선한다';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      '과학팀이 노이즈를 이용해 적응형 필터를 훈련시킨다. 수분 스캐너가 향상되지만, 광물 스캐너가 피해를 입는다.';

  @override
  String get event_bioScannerContamination_title => '생체 스캐너 오염';

  @override
  String get event_bioScannerContamination_narrative =>
      '생명 징후 스캐너가 마지막 행성 스캔의 잔여 유기물에 오염되었다. 오탐이 도처에 나타난다. 중력 스캐너도 동조 노이즈를 보이고 있다.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      '센서 배열 살균 — 전면 오염 제거';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      '철저한 세척이 생명 징후 스캐너를 복원하지만 화학 약품이 중력 센서 하우징을 부식시킨다.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      '소프트웨어 필터 — 알고리즘으로 보상한다';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      '필터가 충분히 작동하지만, 근본적 오염이 양쪽 시스템을 서서히 열화시킬 것이다.';

  @override
  String get event_scannerPowerSurge_title => '스캐너 전력 서지';

  @override
  String get event_scannerPowerSurge_narrative =>
      '스캐너 구역 근처의 전력 도관이 과부하되어 여러 하위 시스템에 서지를 보낸다. 대기 및 생명 징후 스캐너가 직격을 받는다. 방어막이 일부 과잉 에너지를 흡수한다.';

  @override
  String get event_scannerPowerSurge_choice0_text => '전력을 재경로한다 — 스캐너를 살린다';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      '공학팀의 빠른 대응이 피해를 제한하지만, 방어막이 재경로된 에너지를 받는다.';

  @override
  String get event_scannerPowerSurge_choice1_text => '서지가 지나가게 둔다';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      '스캐너가 전력을 고스란히 받는다. 대기 및 생명 징후 판독이 크게 열화된다.';

  @override
  String get event_scannerPowerSurge_choice2_text => '탐사선의 전력 셀을 서지 흡수에 희생한다';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      '탐사선의 커패시터가 과잉 에너지를 스펀지처럼 흡수한다. 스캐너 피해가 무시할 수 있는 수준이다.';

  @override
  String get event_relicWorldEngine_title => '세계 엔진';

  @override
  String get event_relicWorldEngine_narrative =>
      '심층 센서가 불가능한 것을 밝혀낸다: 소형 위성 크기의 기계가 별들 사이의 어둠 속에 휴면 중이다. 표면은 대륙 규모의 메커니즘으로 덮여 있다 — 대기 처리기, 자기장 발생기, 지각 안정기. 누군가가 세계를 만드는 기계를 만들었다.';

  @override
  String get event_relicWorldEngine_choice0_text => '테라포밍 설계도를 다운로드한다';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      '설계도는 방대하고 부분적으로 손상되었지만, 회수한 것만으로도 어떤 적대적 세계든 거주 가능하게 만들 수 있다. 식민자들이 새 고향을 재편할 것이다.';

  @override
  String get event_relicWorldEngine_choice1_text => '선체에서 건설 자재를 수확한다';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      '세계 엔진의 선체는 피해를 받으면 자가 수리하는 메타물질로 이루어져 있다. 함선에 통합하면 기존 선체 파공을 서서히 복구한다.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      '재가동을 시도한다 — 목표 항성계를 향해 겨눈다';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      '기계가 깨어난다. 고대 시스템이 시동 시퀀스를 순환한다. 에너지 광선이 먼 항성을 향해 발사된다. 작동 여부는 도착해야 알겠지만, 판독치가 유망하다.';

  @override
  String get event_uneventfulMaintenance_title => '일상 정비 교대';

  @override
  String get event_uneventfulMaintenance_narrative =>
      '관심을 끄는 것이 없다. 함선이 허공을 꾸준히 윙윙거리며 나아가고, 근무표가 정기 정비 시간을 호출한다. 정비반장이 교대 동안 어디에 집중할지 묻는다.';

  @override
  String get event_uneventfulMaintenance_choice0_text => '선체 미세 균열 밀봉에 집중한다';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      '머리카락만 한 균열을 메우는 조용한 교대. 극적이지는 않지만, 선체가 약간 나아졌다.';

  @override
  String get event_uneventfulMaintenance_choice1_text => '전방 스캐너를 재보정한다';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      '스캐너 기술자가 몇 시간을 미세 조정에 보낸다. 판독이 약간 더 선명해진다.';

  @override
  String get event_uneventfulQuietWatch_title => '고요한 감시';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      '별들이 침묵 속에 흘러간다. 함교가 고요하고 계기가 안정적이다. 우주가 당신에게 아무것도 요구하지 않는 드문 시간이다.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      '승무원을 쉬게 한다 — 고요한 교대를 누릴 자격이 있다';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      '몇 시간의 진정한 평화. 사람들이 더 깊이 잠들고, 긴장이 풀리며, 문화 담당관이 사기의 약간의 상승을 기록한다.';

  @override
  String get event_uneventfulQuietWatch_choice1_text => '고요한 동안 저우선도 진단을 실행한다';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      '사소한 문제들이 발견되고 기록된다. 급한 것은 없지만 기술 기록이 조금 깨끗해졌다.';

  @override
  String get event_uneventfulCryopodCheck_title => '냉동포드 점검 — 전부 정상';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      '분기별 냉동포드 감사가 단 하나의 경보도 없이 끝났다. 모든 포드가 녹색이다. 의료팀이 드물게 평온한 순간을 맞는다.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      '사기 방문을 위해 몇 명을 잠시 깨운다';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      '세 명의 식민자가 한 시간 동안 깨어난다. 이야기를 나누고, 옛 친구를 안고, 미소 지으며 냉동수면으로 돌아간다.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      '잠들게 둔다 — 불필요한 기상 주기를 감수하지 않는다';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      '포드가 완벽한 작동을 계속한다. 의료진은 대신 조용히 차를 즐긴다.';

  @override
  String get event_uneventfulCartography_title => '항성 지도학 갱신';

  @override
  String get event_uneventfulCartography_narrative =>
      '항법팀의 예정된 지도학 갱신이 이상 없음을 보여준다 — 이동하면서 예상대로 변화하는 성위. 항법사들에게 평온한 날이다.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      '새 항성 위치에 맞춰 항법을 재보정한다';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      '겨우 느낄 수 있을 정도의 작은 항로 수정. 항법 컴퓨터가 만족스럽게 윙윙거린다.';

  @override
  String get event_uneventfulCartography_choice1_text => '식민지 기록을 위해 성도를 갱신한다';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      '미래의 식민자들이 이 영역의 약간 더 나은 지도를 가지게 될 것이다. 후세에 대한 작은 선물.';

  @override
  String get event_uneventfulAnniversary_title => '함선 기념일';

  @override
  String get event_uneventfulAnniversary_narrative =>
      '발사 이후 1년 — 아니면 2년? 심우주에서는 시간이 흐려진다. 누군가가 복원 식재료로 케이크를 구웠다. 함장이 기념 방식을 결정해야 한다.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      '소규모 축하 — 음악, 케이크, 지구를 위한 건배';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      '차가운 허공 속 한 시간의 따뜻함. 사람들이 웃고, 일부는 울고, 모두가 좀 더 인간적으로 느낀다.';

  @override
  String get event_uneventfulAnniversary_choice1_text => '평소대로 — 도착하면 축하한다';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      '승무원들이 금욕적 접근을 존중한다. 집중력이 날카로워지고, 당직조가 추가 시스템 점검을 실행한다.';

  @override
  String get event_databaseLiterature_title => '지구의 문학 기록';

  @override
  String get event_databaseLiterature_narrative =>
      '함선의 AI가 오래 밀봉되어 있던 문화 데이터베이스의 한 구역을 연다: 지구의 완전한 문학 기록. 소설, 시, 희곡 — 모든 언어와 시대에 걸친 수백만 작품. 승무원들이 낭독회를 위해 모인다.';

  @override
  String get event_databaseLiterature_choice0_text => '선별된 낭독을 함선 전체에 방송한다';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      '셰익스피어가 복도에 울려 퍼진다. 루미의 시가 수경 재배실에서 흐른다. 승무원들이 자신들이 무엇을 싣고 있는지 기억한다.';

  @override
  String get event_databaseLiterature_choice1_text => '교육 프로그램을 위해 기록을 색인한다';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      '목록화 작업이 함선의 지식 기반을 강화하고 문화 담당관에게 새로운 교육 자료를 제공한다.';

  @override
  String get event_databaseSchematics_title => '공학 설계도 검토';

  @override
  String get event_databaseSchematics_narrative =>
      '한 엔지니어가 함선 데이터베이스의 잊혀진 파티션을 발견한다: 지구의 마지막 10년 공학의 상세한 설계도 — 핵융합로 설계, 메타물질 청사진, 실험적 추진 개념.';

  @override
  String get event_databaseSchematics_choice0_text => '기술팀을 위해 추진 개념을 우선한다';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      '설계도가 원래 건조자들이 구현할 시간이 없었던 효율 개선을 밝혀낸다. 기술실이 활기를 띤다.';

  @override
  String get event_databaseSchematics_choice1_text =>
      '지식을 넓게 공유한다 — 모든 부서가 혜택을 받는다';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      '선체 엔지니어, 스캐너 기술자, 의료진 모두가 유용한 통찰을 찾는다. 밀물이 모든 배를 들어올린다.';

  @override
  String get event_databaseCorruption_title => '문화 보존 스캔';

  @override
  String get event_databaseCorruption_narrative =>
      '문화 데이터베이스의 예정된 무결성 점검이 비트 부식을 밝혀낸다 — 음악, 구전 역사, 종교 텍스트의 구간이 복구 불가능하게 열화되었다. 모든 것이 여행에서 살아남지는 못했다.';

  @override
  String get event_databaseCorruption_choice0_text =>
      '남은 것을 살리기 위해 기술 자원을 투입한다';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      '엔지니어들이 다른 작업을 중단하고 데이터 복구 알고리즘을 실행한다. 대부분을 살리지만, 기술실에 대가가 있다.';

  @override
  String get event_databaseCorruption_choice1_text =>
      '식민자에게 기억으로 잃어버린 작품을 재창조하도록 요청한다';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      '아름답고 불완전한 노력. 재건된 것은 지구가 아닌 항해에 속한다. 새로운 전통이 태어난다.';

  @override
  String get event_databaseBreakthrough_title => '기록 연구 돌파구';

  @override
  String get event_databaseBreakthrough_narrative =>
      '데이터베이스에서 옛 지구 연구 논문을 교차 참조하던 물리학자가 관련 없는 두 연구를 결합하면 장거리 분광 분석의 새로운 방법을 묘사한다는 것을 발견한다. 그 함의가 막대하다.';

  @override
  String get event_databaseBreakthrough_choice0_text => '스캐너 배열에 새 분석 방법을 구현한다';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      '스캐너팀이 열정적으로 작업한다. 며칠 안에 분광 해상도가 두 배로 증가한다. 먼 행성이 비밀을 드러낸다.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      '발견을 함선 전체에 공개한다 — 더 많은 연구에 영감을 준다';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      '돌파구가 학제간 연구의 물결을 일으킨다. 기술이 전반적으로 향상되고 승무원이 지적으로 활기를 띤다.';

  @override
  String get event_alienFleetSighting_title => '지평선의 외계 함대';

  @override
  String get event_alienFleetSighting_narrative =>
      '장거리 스캐너가 공포스러운 그림을 그린다: 수백 척의 외계 함선이 완벽한 대형으로 성위를 가로질러 이동 중이다. 우리 함선을 왜소하게 만든다. 항로가 몇 시간 내에 센서 범위 내로 이끌 것이다. 첫 접촉 — 그들의 조건으로 또는 우리의 조건으로.';

  @override
  String get event_alienFleetSighting_choice0_text => '조용히 관찰한다 — 은폐하고 지켜본다';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      '함선이 최소 방출로 전력을 낮춘다. 함대가 발광하는 고래 떼처럼 지나간다, 항적에 숨은 작은 인간 함선을 인지하지 못한 채. 스캐너 데이터가 비범하다.';

  @override
  String get event_alienFleetSighting_choice1_text => '첫 접촉을 시도한다 — 인사를 전송한다';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      '한 척이 대형에서 이탈하여 접근한다. 데이터 폭발이 도착한다 — 성도, 경고, 그리고 음악일 수 있는 무언가. 다시 함대에 합류하고 그들은 사라진다.';

  @override
  String get event_alienFleetSighting_choice2_text => '도주한다 — 즉시 항로를 변경한다';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      '함선이 반대 방향으로 전속력을 낸다. 항로 변경은 비용이 크고 스트레스가 심하지만, 함대는 우리를 인지하지 못한다. 대가를 치른 안전.';

  @override
  String get event_alienTradeOffer_title => '외계 교역 제안';

  @override
  String get event_alienTradeOffer_narrative =>
      '우리보다 작지만 막대한 에너지를 방출하는 외계 함선이 속도를 맞추고 단순한 반복 메시지를 방송한다. 언어학자들이 몇 시간 만에 해독한다: 교역 제안이다. 세 가지 교환 범주가 제시된다.';

  @override
  String get event_alienTradeOffer_choice0_text => '기술 설계도를 외계 성도와 교환한다';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      '추진 설계를 전송하고 광대한 미탐사 우주의 항법 데이터가 응답으로 온다. 성도가 극적으로 향상되지만, 미지의 종족과 기술을 공유했다.';

  @override
  String get event_alienTradeOffer_choice1_text => '문화 데이터를 함선 수리와 교환한다';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      '음악, 미술, 역사를 전송한다. 대가로 외계 수리 드론이 선체를 둘러싸며 식별할 수 없는 재료로 파공을 밀봉한다. 선체가 빛난다. 우리의 영혼이 공유되었다.';

  @override
  String get event_alienTradeOffer_choice2_text => '교역을 거부한다 — 위험이 너무 크다';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      '외계 함선이 잠시 기다린 뒤 사건 없이 출발한다. 승무원들은 안도하면서도 무엇을 잃었는지 궁금해한다.';

  @override
  String get event_alienWarning_title => '외계 경고 방송';

  @override
  String get event_alienWarning_narrative =>
      '함선의 모든 스피커가 외계 목소리와 함께 울린다 — AI가 실시간 번역한다: \"전방 위험. 돌아가라. 어둠이 삼킨다.\" 방송이 반복된 뒤 사라진다. 장거리 센서가 현재 항로에 이상 허공을 보여준다.';

  @override
  String get event_alienWarning_choice0_text => '경고를 따른다 — 허공을 우회한다';

  @override
  String get event_alienWarning_choice0_outcome =>
      '우회가 항법에 상당한 부담을 주지만, 허공의 가장자리를 지나며 센서가 확인한다: 그 영역에 들어간 것은 아무것도 나오지 못했다. 알 수 없는 목소리에 빚을 졌다.';

  @override
  String get event_alienWarning_choice1_text => '경고를 무시한다 — 항로를 유지한다';

  @override
  String get event_alienWarning_choice1_outcome =>
      '밀고 나간다. 허공은 강렬한 미세 파편 지역으로 밝혀진다. 선체와 스캐너가 타격을 받은 뒤 반대편으로 빠져나온다.';

  @override
  String get event_alienWarning_choice2_text => '탐사선으로 허공의 가장자리를 조사한다';

  @override
  String get event_alienWarning_choice2_outcome =>
      '탐사선이 허공에 진입하여 침묵하기 전까지 비범한 데이터를 전송한다. 스캐너팀이 귀중한 판독을 추출하지만, 탐사선은 잃었다.';

  @override
  String get event_nativeSignalDetected_title => '목표 행성에서 온 전송';

  @override
  String get event_nativeSignalDetected_narrative =>
      '통신 배열이 목표 행성에서 발신되는 구조화된 전자기 신호를 포착한다. 틀림없다: 규칙적이고, 변조되어 있으며, 인공적이다. 누군가가 이미 거기 있다. 식민지의 전제가 순식간에 바뀐다.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      '평화적 인사를 전송한다 — 도착을 알린다';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      '용감한 선택. 방송 후 신호 패턴이 바뀐다 — 그들이 들었다. 환영인지 경고인지 불분명하지만, 문이 열렸다.';

  @override
  String get event_nativeSignalDetected_choice1_text => '듣기만 한다 — 드러내기 전에 배운다';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      '수개월의 수동 청취가 원주민 문명의 그림을 그린다. 신중하고 영역적이지만 적대적이지는 않다. 우리는 정보를 갖고 도착한다.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      '신호를 교란한다 — 접근을 들키지 않는다';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      '교란은 성공하지만, 만나지도 않은 민족에 대한 공격 행위다. 승무원들이 도덕성에 대해 분열한다.';

  @override
  String get event_nativeProbeEncounter_title => '외계 탐사선 차단';

  @override
  String get event_nativeProbeEncounter_narrative =>
      '인간이 만들지 않은 작고 우아한 탐사선이 속도를 맞추고 함선을 스캔하기 시작한다. 설계 언어가 목표 행성의 신호와 일치한다. 원주민이 환영단을 보냈다. 아니면 감시 드론.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      '스캔을 허용한다 — 숨길 것이 없음을 보인다';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      '탐사선이 조사를 완료하고 행성을 향해 데이터 폭발을 전송한다. 몇 분 후 우리를 위한 두 번째 폭발이 도착한다: 대기 데이터, 안전한 착륙 구역, 그리고 초대일 수 있는 것.';

  @override
  String get event_nativeProbeEncounter_choice1_text => '탐사선을 연구를 위해 포획한다';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      '탐사선이 화물실로 견인된다. 기술이 매혹적이지만 포획 행위가 제작자에게 적대적으로 보일 수 있다.';

  @override
  String get event_nativeProbeEncounter_choice2_text => '파괴한다 — 의도를 모른다';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      '단일 펄스가 탐사선을 파편으로 만든다. 승무원들은 더 안전하다고 느끼지만, 잠재적 다리가 불태워졌다.';

  @override
  String get event_nativeCulturalExchange_title => '최초의 문화 교류';

  @override
  String get event_nativeCulturalExchange_narrative =>
      '행성 원주민과 협대역 데이터 링크가 수립되었다. 그들이 이미지, 소리, 수학 수열을 보낸다. 언어학자와 문화 담당관이 밤낮으로 응답을 준비한다. 이것은 인류 역사상 가장 중요한 대화이다.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      '지구의 예술과 음악을 공유한다 — 아름다움으로 시작한다';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      '바흐, 원주민 점묘화, 나뭇잎 위의 빗소리를 전송한다. 응답은 승무원을 눈물짓게 하는 외계 화성의 폭포다. 이해가 깊어진다.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      '과학 지식을 공유한다 — 이성으로 시작한다';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      '주기율표, 성도, 물리학을 전송한다. 수정과 추가가 응답으로 온다. 기술이 비약하지만, 교류가 거래적으로 느껴진다.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      '물리적 샘플을 실은 탐사선을 보낸다 — DNA, 씨앗, 물';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      '탐사선이 지구의 정수를 외계의 손에 전달한다. 원주민이 유사한 선물로 응답한다 — 그들 세계의 생물학적 샘플. 생물학자들이 환희한다.';

  @override
  String get event_landingThrusterMalfunction_title => '착륙 추진기 오작동';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      '정기 시스템 점검 중 착륙 추진기가 오발 — 하부 갑판에 날카로운 폭음이 울리고 함선이 흔들린다. 진단 결과 주 착륙 배열의 연료 분사기에 균열이 발견되었다. 수리 없이는 행성 착륙이 거칠 것이다.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      '기술팀을 돌려 교체 분사기를 제작한다';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      '엔지니어들이 이중 교대로 작업하여 여분의 선체 합금으로 새 분사기를 가공한다. 착륙 시스템이 복원되지만 기술실이 고갈된다.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      '진공에서 추진기 보정을 시험할 탐사선을 배치한다';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      '탐사선이 실시간 추력 데이터를 제공하여 손상된 분사기 주위로 재보정할 수 있게 한다. 완전한 수리는 아니지만 착륙 시스템이 안정된다.';

  @override
  String get event_landingSimDrill_title => '착륙 시뮬레이션 훈련';

  @override
  String get event_landingSimDrill_narrative =>
      '행성 착륙이 가까워지면서 함장이 전면 착륙 시뮬레이션을 명령한다. 승무원이 벨트를 매고, 시스템이 부하 하에서 시험되며, 가상 강하가 시작된다. 이것이 가장 현실적인 리허설이 될 것이다.';

  @override
  String get event_landingSimDrill_choice0_text =>
      '기술적 정밀도에 집중한다 — 교본대로 훈련을 실행한다';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      '시뮬레이션이 두 가지 사소한 보정 오류를 밝혀내어 즉시 수정된다. 착륙 시스템이 더 정밀해졌다.';

  @override
  String get event_landingSimDrill_choice1_text =>
      '함선 전체 이벤트로 만든다 — 시뮬레이션을 방송한다';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      '식민자들이 함내 모든 화면에서 지켜본다. 시뮬레이션 강하의 공유 경험 — 흔들림, 환호 — 가 그 무엇보다 승무원을 단결시킨다.';

  @override
  String get event_dysonSphere_title => '다이슨 구';

  @override
  String get event_dysonSphere_narrative =>
      '센서가 불가능한 구조물을 감지한다 — 먼 항성을 둘러싼 부분적 다이슨 구가 전체 에너지 출력을 수확하고 있다. 이것을 건설한 자는 인류가 상상한 것을 초월했다. 접근하자 도킹 포트가 열리는 것 같다.';

  @override
  String get event_dysonSphere_choice0_text => '도킹하여 구조물을 탐사한다';

  @override
  String get event_dysonSphere_choice0_outcome =>
      '내부에서 자동화 시스템이 수세기를 앞당기는 기술을 선사한다. 다섯 명의 엔지니어가 방어 메커니즘에 의해 사라진 뒤에야 의도를 인식한다. 건설 장비가 외계 합금으로 재건된다.';

  @override
  String get event_dysonSphere_choice1_text => '외부에서 에너지를 수확한다';

  @override
  String get event_dysonSphere_choice1_outcome =>
      '구의 넘치는 복사에 잠긴다. 함내 모든 시스템이 최대로 충전된다. 승무원들이 경악의 침묵 속에 지켜본다.';

  @override
  String get event_dysonSphere_choice2_text => '안전한 거리에서 연구하고 이동한다';

  @override
  String get event_dysonSphere_choice2_outcome =>
      '장거리 스캔이 공학에 대한 이해를 혁명적으로 바꾸는 건설 원리를 밝혀낸다.';

  @override
  String get event_nanotechPlague_title => '나노기술 역병';

  @override
  String get event_nanotechPlague_narrative =>
      '죽은 문명의 무기 프로그램의 잔재인 변질된 나노 기계 구름이 선체 미세 균열을 통해 침투한다. 비핵심 시스템을 분자 수준에서 분해하고 있다. 무리가 빠르게 퍼진다.';

  @override
  String get event_nanotechPlague_choice0_text => 'EMP 폭발 — 영향받은 구역의 모든 것을 태운다';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      '전자기 펄스가 나노 기계를 파괴하지만 해당 구역의 자체 전자장비도 손상시킨다. 폭발 구역의 식민자들이 화상을 입는다.';

  @override
  String get event_nanotechPlague_choice1_text => '영향받은 구역을 진공으로 환기한다';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      '대기 없이 나노 기계가 느려지고 사멸한다. 하지만 해당 구역이 비축 보급품과 문화 기록과 함께 상실된다.';

  @override
  String get event_nanotechPlague_choice2_text => '재프로그래밍한다 — 무기를 도구로 바꾼다';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      '뛰어난 엔지니어가 나노 기계 코드를 해독하지만, 가장 심하게 영향받은 구역의 다섯 승무원은 이미 구제 불능이다. 재프로그래밍된 무리가 파괴 대신 함선을 수리하기 시작한다.';

  @override
  String get event_nanotechPlague_choice3_text => '탐사선의 AI 코어를 희생하여 대항 무리를 만든다';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      '탐사선의 프로세서가 방어 나노 무리를 제어하도록 전용된다. 역병이 최소 손실로 무력화된다.';

  @override
  String get event_prematureAwakening_title => '조기 각성';

  @override
  String get event_prematureAwakening_narrative =>
      '냉동포드 구역의 연쇄 고장이 200명의 식민자를 수십 년 일찍 깨운다. 혼란스럽고, 두려워하며, 착륙 단계를 위한 자원을 소비하고 있다. 그중에는 함선 외에는 아무것도 모르는 아이들이 있다.';

  @override
  String get event_prematureAwakening_choice0_text =>
      '승무원으로 통합한다 — 더 많은 손, 더 많은 희망';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      '깨어난 식민자들이 생산적인 승무원이 된다. 갑작스러운 해동에서 20명이 생존하지 못하지만, 나머지는 결집한다. 자원이 빠듯해지지만 사기가 치솟는다.';

  @override
  String get event_prematureAwakening_choice1_text => '재냉동을 시도한다 — 위험하지만 필요하다';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      '재냉동 과정이 불완전하다. 대부분 생존하지만 일부가 사라진다. 생존자들은 심리적 상흔을 안는다.';

  @override
  String get event_prematureAwakening_choice2_text => '함선의 독자적 구역을 제공한다';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      '비상 해동 합병증으로 10명이 사망하지만, 나머지가 함선 내 소규모 식민지를 형성한다. 자체 문화와 통치를 발전시키며, 행성 정착의 리허설이 된다.';

  @override
  String get event_stowawaysAdvanced_title => '숨겨진 승객들';

  @override
  String get event_stowawaysAdvanced_narrative =>
      '화물 구역 깊숙이, 거짓 격벽 뒤에 보안대가 숨겨진 공동체를 발견한다 — 발사 전에 불법 탑승한 80명. 항해 내내 함선의 벽 속에서 자체 정원과 전력 탭을 유지하며 살아왔다.';

  @override
  String get event_stowawaysAdvanced_choice0_text => '환영한다 — 80명의 추가 식민자는 선물이다';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      '숨겨진 공동체가 승무원을 놀라게 하는 임시변통 공학과 자원 활용 기술을 가져온다. 그들의 정원이 주 생태 돔에 이식된다.';

  @override
  String get event_stowawaysAdvanced_choice1_text => '구금하고 도난당한 자원을 재분배한다';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      '회수된 보급품이 여러 시스템을 보강하지만, 아이를 포함한 가족의 구금이 승무원들을 괴롭힌다.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      '협상한다 — 기술을 공유하면 동등하게 합류한다';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      '그들의 임시변통 전력 셀과 수경 기법이 함선 효율을 개선한다. 긴장되지만 생산적인 통합이 시작된다.';

  @override
  String get event_alienReservation_title => '외계 보호구역';

  @override
  String get event_alienReservation_narrative =>
      '외계 자연 보호구역에 우연히 진입했다 — 의도적으로 거주 가능 행성을 심고 자동화 파수꾼이 보호하는 우주 영역. 파수꾼이 스캔한 뒤 메시지를 투영한다: \"행성 하나에 정착할 수 있다. 현명하게 선택하라. 다른 것에 간섭하면 제거한다.\"';

  @override
  String get event_alienReservation_choice0_text => '감사히 수락한다 — 행성 하나면 충분하다';

  @override
  String get event_alienReservation_choice0_outcome =>
      '파수꾼이 준비된 행성으로 안내한다. 스캔 결과 인류 생활에 비범하게 적합하다.';

  @override
  String get event_alienReservation_choice1_text =>
      '더 나은 조건을 협상한다 — 인류에게는 성장할 공간이 필요하다';

  @override
  String get event_alienReservation_choice1_outcome =>
      '파수꾼이 탄원을 고려한다. 보호구역 너머 수십 항성계의 데이터로 스캐너를 업그레이드해준다.';

  @override
  String get event_alienReservation_choice2_text =>
      '거절하고 떠난다 — 우리는 우리에 갇히지 않겠다';

  @override
  String get event_alienReservation_choice2_outcome =>
      '승무원들이 며칠간 토론한다. 안전보다 자유. 파수꾼이 인근 위험 지도를 선물로 주며 출발을 허용한다.';

  @override
  String get event_cosmicHorror_title => '별들 사이의 존재';

  @override
  String get event_cosmicHorror_narrative =>
      '광대하고 어두운 무언가가 전방의 별들을 가린다 — 성운도 아니고, 블랙홀도 아니다. 질량도, 에너지 특성도, 전자기적 존재감도 없다. 하지만 거기에 있으며, 우리를 인식하고 있다. 전방 관측갑판 근처 승무원들이 압도적 공포를 보고한다. 둘이 진정되었다.';

  @override
  String get event_cosmicHorror_choice0_text => '전속 후진 — 지금 당장 벗어난다';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      '함선이 자체 관성에 맞서 신음한다. 탈출했지만, 공포가 남아있다. 일부 식민자가 심리적으로 회복하지 못한다.';

  @override
  String get event_cosmicHorror_choice1_text => '관측갑판을 밀봉하고 돌파한다';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      '어둠 속을 관통하는 사흘간의 맹목 비행. 별이 돌아오자 승무원들이 안도의 눈물을 흘린다. 선체에 아무도 설명할 수 없는 문양이 새겨져 있다.';

  @override
  String get event_cosmicHorror_choice2_text => '교신을 시도한다';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      '존재가 응답한다 — 말이 아니라 승무원의 마음에 직접 주입된 지식으로. 성도, 물리학, 우주에 대한 진실. 승무원 절반이 계몽되었다. 나머지 절반이 부서졌다.';

  @override
  String get event_cosmicHorror_choice3_text => '탐사선을 공물로 바친다';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      '탐사선이 어둠 속으로 떠가며 사라진다. 존재가 약간 수축한다 — 만족한 듯. 항로가 열린다.';

  @override
  String get event_meteorGlancingHit_title => '유성 스침 충돌';

  @override
  String get event_meteorGlancingHit_narrative =>
      '바위 크기의 유성이 얕은 각도로 좌현 선체를 스친다. 충격이 3미터의 외부 장갑을 뜯어내고 전체 골격에 충격파를 보낸다. 피해 통제 경보가 모든 갑판에서 울린다.';

  @override
  String get event_meteorGlancingHit_choice0_text => '모든 수리 봇을 파공에 즉시 투입한다';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      '봇이 최악의 피해를 밀봉하지만, 기술 비축분에 대한 급격한 수요가 보조 시스템 정비를 소홀하게 한다.';

  @override
  String get event_meteorGlancingHit_choice1_text => '추력을 줄이고 승무원이 수동 수리한다';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      '느린 진행이지만 승무원이 견실한 작업을 한다. 표류 중 감소된 추력 창으로 항법이 영향을 받는다.';

  @override
  String get event_meteorGlancingHit_choice2_text => '탐사선의 선체 장갑을 패치 재료로 희생한다';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      '탐사선이 부품으로 해체된다. 패치가 유지되고 선체 무결성이 보존되지만 정찰 수단이 하나 줄었다.';

  @override
  String get event_meteorDirectImpact_title => '유성 직격';

  @override
  String get event_meteorDirectImpact_narrative =>
      '0.5톤의 철질 유성이 상대 속도 40km/s 이상으로 전방 화물실을 관통했다. 인접 복도의 두 승무원이 행방불명이다. 화물실이 진공에 노출되었다.';

  @override
  String get event_meteorDirectImpact_choice0_text => '화물실을 밀봉하고 생존자는 나중에 수색한다';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      '화물실이 90초 만에 밀봉된다. 두 승무원은 간신히 이미 대피해 있었다. 선체에 영구적 흉터가 남는다.';

  @override
  String get event_meteorDirectImpact_choice1_text => '밀봉 전에 전면 구조 작전을 실시한다';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      '생존자 한 명이 구출된다. 연장된 노출이 구조적 피해를 악화시키고 기술 비축분을 소모한다.';

  @override
  String get event_meteorDebrisField_title => '파편 지대 — 잔해 소나기';

  @override
  String get event_meteorDebrisField_narrative =>
      '장거리 센서가 이미 내부에 들어와 있을 때까지 분산된 유성 파편 지대를 감지하지 못했다. 주먹 크기의 암석 수백 개가 불규칙한 간격으로 선체를 때린다. 매번 복권이다.';

  @override
  String get event_meteorDebrisField_choice0_text => '방어막을 올리고 전속력으로 돌파한다';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      '방어막이 대부분의 충돌을 흡수하지만, 충돌의 순수한 양이 방어막을 압도한다. 선체와 방어막 시스템 모두 열화된다.';

  @override
  String get event_meteorDebrisField_choice1_text => '엔진을 끄고 표류한다 — 피탄면을 최소화한다';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      '긴장된 6시간의 침묵. 무동력 표류로 항법이 흐트러지지만, 선체는 훨씬 적은 충돌로 빠져나온다.';

  @override
  String get event_meteorDebrisField_choice2_text => '탐사선을 전방 방패로 배치한다';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      '탐사선이 포격의 대부분을 받는다. 함선이 그 그림자 속에서 경미한 긁힘만으로 통과한다.';

  @override
  String get event_meteorShowerDense_title => '예상치 못한 밀집 유성우';

  @override
  String get event_meteorShowerDense_narrative =>
      '떠돌이 혜성이 전방 어딘가에서 분해되었고, 그 후미 파편류의 한복판으로 날아들었다. 스캐너 배열이 파편에 맞고 있고, 착륙 시스템 센서 하우징이 이미 직격을 받았다.';

  @override
  String get event_meteorShowerDense_choice0_text => '착륙 시스템을 보호한다 — 함선을 회전시킨다';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      '회전이 착륙 시스템을 차폐하지만 대기 스캐너 배열을 포격의 정면에 노출시킨다.';

  @override
  String get event_meteorShowerDense_choice1_text => '스캐너 배열을 차폐한다 — 대체 불가능하다';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      '스캐너 뱅크가 대부분 온전히 생존한다. 착륙 시스템이 감수해야 할 파편 피해를 받는다.';

  @override
  String get event_solarEmpBurst_title => 'EMP 폭발 — 항성 기원';

  @override
  String get event_solarEmpBurst_narrative =>
      '1광일 이내를 지난 소형 항성 잔해가 집중된 전자기 펄스를 방출했다. 함선의 모든 비차폐 회로가 위험에 처해 있다. 무엇을 보호할지 결정할 시간이 초 단위다.';

  @override
  String get event_solarEmpBurst_choice0_text => '모든 서지 보호를 항법과 생명 유지에 집중한다';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      '항법과 생명 유지가 온전히 생존한다. 스캐너와 기술실이 비차폐 상태로 펄스를 흡수한다 — 양쪽 모두 심각한 피해.';

  @override
  String get event_solarEmpBurst_choice1_text => '스캐너 배열과 기술실을 보호한다';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      '과학 및 공학 시스템이 보존된다. 항법이 회로가 서서히 회복되는 동안 수 시간 오작동한다.';

  @override
  String get event_solarEmpBurst_choice2_text => '모든 것을 꺼두고 펄스 후 재시동한다';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      '냉간 재시동이 고통스럽다 — 12시간의 수동 재부팅. 하지만 복구 불능으로 타버린 시스템은 없다.';

  @override
  String get event_solarRadiationWave_title => '방사선파 — 4등급 피폭';

  @override
  String get event_solarRadiationWave_narrative =>
      '예상 외의 강도로 태양 방사선이 함선 중간 갑판을 휩쓸고 있다. 냉동포드 구역이 피폭 경로에 있다. 수면 중인 식민자들은 이 수준의 경방사선에 대한 자연적 보호가 없다.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      '방사선 차폐로 냉동포드 구역에 냉각액을 범람시킨다';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      '냉각액이 대부분의 방사선을 흡수한다. 냉동포드는 살아남지만 냉각 시스템 자체가 부분 열화된다. 가장 심하게 영향받은 포드의 15명이 살아남지 못한다.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      '외부 갑판 대기를 배출하여 진공 완충 지대를 만든다';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      '진공 층이 관통 방사선을 크게 줄인다. 배출된 구역에 가장 가까운 20명의 식민자가 치명적 피폭을 입는다. 압력 차이로 인한 선체 스트레스는 불가피하다.';

  @override
  String get event_solarRadiationWave_choice2_text => '자기 편향기에 전력을 재경로한다';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      '편향기가 방사선 피폭을 3분의 2 줄인다. 편향기 간격을 통해 8명의 식민자가 치명적 선량을 받는다. 전력 소모가 기술실을 타격하고 항법을 최소 전력으로 남긴다.';

  @override
  String get event_coronalMassEjection_title => '코로나 질량 방출 — 전력';

  @override
  String get event_coronalMassEjection_narrative =>
      '전례 없는 규모의 코로나 질량 방출이 후방에서 추격 중이다. 플라즈마 구름이 한 시간 내에 함선을 삼킬 것이다. 방어막은 이 수준의 사건을 위해 설계되지 않았다. 깨끗한 선택지는 없다.';

  @override
  String get event_coronalMassEjection_choice0_text => '도망친다 — 엔진을 120%로 밀어붙인다';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      '피폭을 줄일 만큼 거리를 벌린다. 엔진이 과열되고 항법 컴퓨터가 구조 과부하 경고를 전체에 표시한다.';

  @override
  String get event_coronalMassEjection_choice1_text => '인근 소행성의 자기 그림자에 숨는다';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      '소행성의 자기장이 대부분의 방출을 편향시킨다. 미지의 천체에 그렇게 가까이 기동하는 것이 선체를 긁고 착륙 시스템 센서에 부담을 준다.';

  @override
  String get event_cosmicRayScannerInterference_title => '우주선 폭발 — 스캐너 간섭';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      '초고에너지 우주선이 모든 스캐너 전자장비를 노이즈로 포화시켰다. 광물 및 중력 배열이 의미 없는 데이터를 출력하고 있다. 재보정에는 여유가 없을 수도 있는 시간이 필요하다.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      '전면 재보정 주기 — 일시적으로 함선을 오프라인으로';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      '4시간의 신중한 재보정 후 모든 스캐너가 깨끗하게 돌아온다. 암전 기간 중 감소된 상황 인식으로 항법이 영향을 받는다.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      '가장 중요한 배열만 수리한다 — 나머지는 노이즈 채로 둔다';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      '중력 및 생명 징후 스캐너가 복원된다. 광물 및 온도 배열은 무기한 열화된 채로 남는다.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      '교체 부품을 위해 탐사선 원격 측정 하드웨어를 희생한다';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      '탐사선의 센서 패키지를 뜯어 긴 재보정 없이 스캐너를 복원할 부품을 확보한다.';

  @override
  String get event_cosmicRayDnaDamage_title => '우주선 폭발 — 식민자 피폭';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      '2차 우주선 소나기가 6번 구역 냉동포드 차폐를 관통했다. 수면 중인 식민자들이 전리 방사선에 의한 누적 DNA 손상을 받고 있다. 개입 없이는 영향받은 포드의 세포 복구 메커니즘이 실패할 것이다.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      '비상 해동 — 영향받은 식민자를 의식 상태로 가져온다';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      '200명의 식민자가 조기에 깨어난다. 가장 심각한 DNA 손상을 입은 40명이 치료에 반응하지 않는다. 의료팀이 나머지를 위해 최선을 다한다.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      '6번 구역 차폐를 위해 선체 장갑판을 재경로한다 — 구조적 비용';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      '식민지가 구해지지만, 선체 한 구역의 장갑을 벗기면 해당 영역이 구조적으로 취약해진다.';

  @override
  String get event_coolantLeak_title => '냉각 라인 파열';

  @override
  String get event_coolantLeak_narrative =>
      '반응로 벽 뒤의 주 냉각 라인이 파열되었다. 과열된 극저온 유체가 핵심 기술실 도관이 있는 접합 하우징에 분사되고 있다. 반응로 온도가 상승 중이다.';

  @override
  String get event_coolantLeak_choice0_text => '반응로를 정지하고 식힌다 — 전면 암전을 감수한다';

  @override
  String get event_coolantLeak_choice0_outcome =>
      '통제된 정지가 재앙을 막는다. 배터리 생명 유지로 12시간은 끔찍하고, 시스템이 불완전하게 재시동된다.';

  @override
  String get event_coolantLeak_choice1_text => '피해 통제팀을 보낸다 — 승무원 피폭을 감수한다';

  @override
  String get event_coolantLeak_choice1_outcome =>
      '팀이 40분 만에 파열을 밀봉한다. 과열 냉각액 피폭으로 한 승무원이 사망한다. 수리는 견고하다.';

  @override
  String get event_coolantLeak_choice2_text => '비상 공급원으로 냉동포드 구역의 냉각액을 전용한다';

  @override
  String get event_coolantLeak_choice2_outcome =>
      '반응로가 안정된다. 냉동포드 구역이 6시간 동안 안전 임계값보다 따뜻하게 가동된다 — 경미하지만 실질적인 세포 손상이 누적된다.';

  @override
  String get event_powerGridFailure_title => '주 전력망 장애';

  @override
  String get event_powerGridFailure_narrative =>
      '연쇄 고장이 주 전력망을 차단했다. 백업 시스템이 생명 유지와 냉동포드 가열을 유지하지만, 항법, 스캐너, 건설실은 모두 암전 상태다. 오프라인 1분마다 항로 정확도가 떨어진다.';

  @override
  String get event_powerGridFailure_choice0_text =>
      '항법과 스캐너를 먼저 복구한다 — 건설실 장기 정지를 감수한다';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      '항법과 스캐너가 2시간 만에 복구된다. 건설실이 핵심 정비 주기를 놓친다.';

  @override
  String get event_powerGridFailure_choice1_text => '건설실을 먼저 복구한다 — 수리 속도를 높인다';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      '건설 장비가 효율적으로 전력을 재경로한다. 전면 복구가 더 빠르지만, 연장된 암전 중 항법이 심하게 표류한다.';

  @override
  String get event_lifeSupportGlitch_title => '생명 유지 연쇄 결함';

  @override
  String get event_lifeSupportGlitch_narrative =>
      '생명 유지 관리 AI가 오류 루프에 빠져 이산화탄소 세정 주기를 예측 불능하게 순환시키고 있다. 거주 갑판의 CO₂ 수치가 변동한다. 승무원들이 두통을 호소하고, 일부는 이미 무력화되었다.';

  @override
  String get event_lifeSupportGlitch_choice0_text => '생명 유지 AI를 하드 리셋한다';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      '리셋이 루프를 해소하지만 10시간 동안 수동 오버라이드로 가동된다. 수치가 정상화되기 전에 세 승무원이 CO₂ 축적으로 사망한다.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      '소프트웨어 루프를 패치한다 — 더 느리지만 안전하다';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      '소프트웨어팀이 긴장된 6시간에 걸쳐 결함을 분리하고 패치한다. CO₂ 수치가 서서히 정상화된다. 하드 리셋 불필요.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      '영향받은 갑판을 대피시키고 최소 생명 유지로 운영한다';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      '대피 혼란 중 두 명의 식민자가 사망한다. AI가 냉간 재시동된 후 시스템이 정상화된다.';

  @override
  String get event_waterRecyclerBreakdown_title => '수분 재활용기 고장';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      '주 수분 재활용기가 멈췄다. 백업이 이미 최대 용량으로 가동 중이다. 개입 없이는 48시간 내에 비상 배급, 72시간 내에 냉동포드 냉각 공급이 위험해진다.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      '가용한 모든 기술 인력을 재활용기 재건에 투입한다';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      '장치가 30시간 만에 재건된다. 이미 쇠약해진 네 승무원이 탈수에 의해 생존하지 못한다.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      '비상 음용수로 냉동포드 냉각 비축분을 전용한다';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      '승무원이 유지되지만, 온도가 오른 포드의 식민자 8명이 돌이킬 수 없는 세포 손상을 입는다. 냉동포드 냉각 여유가 위험하게 줄어든다.';

  @override
  String get event_navComputerReboot_title => '항법 컴퓨터 비상 재부팅';

  @override
  String get event_navComputerReboot_narrative =>
      '항법 컴퓨터가 경로 수정 중에 멈추어 함선이 통제되지 않는 느린 회전에 빠졌다. 수정되지 않는 매 초가 계획된 궤적에서의 표류를 복합시킨다. 전면 재부팅이 유일한 해결책이다.';

  @override
  String get event_navComputerReboot_choice0_text => '즉시 재부팅한다 — 전면 암전을 감수한다';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      '시스템이 재로드되는 동안 4시간의 맹목 비행. 회전이 멈추지만 항로 오차가 상당하다.';

  @override
  String get event_navComputerReboot_choice1_text => '수동 추진기 제어로 먼저 회전을 멈춘다';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      '숙련된 조종이 재부팅 전에 회전을 멈춘다. 항법이 더 작은 항로 오차로 복귀하지만, 수동 분사가 선체에 스트레스를 준다.';

  @override
  String get event_navComputerReboot_choice2_text => '탐사선 원격 측정을 백업 항법에 공급한다';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      '탐사선의 관성 데이터가 백업 장치에 항로를 유지할 충분한 기준을 제공한다. 주 항법이 깨끗하게 재부팅된다.';

  @override
  String get event_crewAirlocked_title => '에어록의 승무원';

  @override
  String get event_crewAirlocked_narrative =>
      '의료 관찰을 위해 조기 기상한 식민자가 외부 에어록에 바리케이드를 치고 외부 도어를 순환시키고 있다. 교신에 응하지 않는다. 심우주의 심리적 부담이 그녀 안의 무언가를 부러뜨렸다.';

  @override
  String get event_crewAirlocked_choice0_text => '에어록을 원격으로 오버라이드한다 — 강제 밀봉';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      '순환이 완료되기 전에 도어가 잠긴다. 진정되어 의무실로 이송된다. 승무원들이 충격을 받지만 단결한다.';

  @override
  String get event_crewAirlocked_choice1_text => '상담사를 보내 설득한다';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      '절박한 세 시간 후 상담사가 그녀를 살려 데리고 나온다. 사건이 거주 갑판에서 더 넓은 정신 건강 위기를 촉발한다.';

  @override
  String get event_crewAirlocked_choice2_text => '복도를 밀봉하고 사건이 해결되게 둔다';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      '에어록이 순환된다. 손실이 기록된다. 남은 승무원들이 그 무게를 몇 달간 짊어진다.';

  @override
  String get event_crewCryopodSabotage_title => '냉동포드 구역 방해 공작';

  @override
  String get event_crewCryopodSabotage_narrative =>
      '보안 영상이 3개월 전 정기 순환을 위해 깨어난 승무원이 4번 구역 냉동포드의 가열 소자를 체계적으로 무력화하는 것을 보여준다. 대면하자 그는 식민자들이 생존 승무원의 자원을 빼앗는 기생충이라고 비명 지른다.';

  @override
  String get event_crewCryopodSabotage_choice0_text => '즉시 체포하고 격리한다';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      '제압된다. 경보 전에 40개의 포드가 손상되었다. 비상 수리팀이 대부분을 살리지만, 전부는 아니다.';

  @override
  String get event_crewCryopodSabotage_choice1_text => '협상한다 — 행동 전에 불만을 듣는다';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      '협상이 더 깊은 사기 위기를 밝혀낸다. 그가 물러서지만, 그때까지 60개의 포드가 손상되었다.';

  @override
  String get event_crewSupplyHoarder_title => '보급품 비축 발각';

  @override
  String get event_crewSupplyHoarder_narrative =>
      '재고 감사 결과 소수의 승무원이 의료 보급품, 식량 배급, 여분의 기술 부품을 체계적으로 숨겨진 은닉처로 빼돌리고 있었음이 밝혀진다. 이유: 임무가 성공하리라 믿지 않으며, 귀환을 위해 준비하고 있었다.';

  @override
  String get event_crewSupplyHoarder_choice0_text => '전부 몰수하고 공개적으로 질책한다';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      '은닉처가 거의 온전하게 회수된다. 승무원 내 신뢰가 심하게 금이 간다. 생산성이 수 주간 저하된다.';

  @override
  String get event_crewSupplyHoarder_choice1_text => '조용히 재배치한다 — 소동을 만들지 않는다';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      '상황이 패닉 없이 해소된다. 일부 보급품은 회수 불능이고, 근본적 절망은 제대로 해결되지 않는다.';

  @override
  String get event_crewSupplyHoarder_choice2_text => '승무원에게 맡긴다 — 민주적 재판';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      '재판 과정이 공동체 정의 의식을 회복한다. 스캔들의 사기 타격이 집단적 의사결정으로 상쇄된다.';

  @override
  String get event_crewMutinyAttempt_title => '반란 — 기관실 점거';

  @override
  String get event_crewMutinyAttempt_narrative =>
      '19명의 승무원 파벌이 기관실을 봉쇄하고 함선을 되돌리는 투표를 요구하고 있다. 비상 오버라이드 패널을 무력화했다. 나머지 승무원이 모니터를 보며 지휘부의 행동을 기다린다.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      '협상한다 — 임무에 대한 진정한 투표를 부여한다';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      '투표가 실시된다. 근소한 차이로 임무가 계속된다. 파벌이 물러서지만, 문화적 상처가 깊다.';

  @override
  String get event_crewMutinyAttempt_choice1_text => '기관실 전력을 차단하고 무력 탈환한다';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      '보안대가 4시간 만에 기관실을 탈환한다. 부상 3건. 주모자가 구금된다. 항법이 전 시간 수동 모드로 작동하여 크게 표류했다.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      '환기 시스템을 통해 기관실에 수면 가스를 투입한다';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      '가스가 퍼진다. 그룹이 부상 없이 영창에서 깨어난다. 승무원들은 지휘부가 얼마나 빠르게 생명 유지를 무기화했는지에 불안해한다.';

  @override
  String get event_hullFatigueStress_title => '선체 피로 — 응력 균열 감지';

  @override
  String get event_hullFatigueStress_narrative =>
      '구조 무결성 스캔이 함선 척추를 관통하는 미세 균열 네트워크를 밝혀낸다 — 수년간의 열 순환과 미세 충돌로 인한 누적 손상. 균열은 아직 임계는 아니지만 전파되고 있다.';

  @override
  String get event_hullFatigueStress_choice0_text => '비상 용접팀 — 밀봉될 때까지 교대 작업';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      '수 주간의 피로한 수리 작업. 균열이 봉쇄되지만, 기술실이 고갈되고 끊임없는 고역으로 사기가 떨어진다.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      '구조적 스트레스를 줄이기 위해 추력을 감소시킨다 — 느린 통과를 감수한다';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      '낮은 추력이 균열 전파를 멈추지만 기존 피해를 치유하지는 못한다. 변경된 추력 프로필로 항법 정밀도가 저하된다.';

  @override
  String get event_hullFatigueStress_choice2_text => '건설 봇으로 복합재 보강재를 부설한다';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      '건설 장비가 훌륭한 작업을 한다. 척추가 원래 사양 이상으로 보강된다. 건설실이 소진되었지만 효과적이다.';

  @override
  String get event_hullPressureAnomaly_title => '내부 압력 이상';

  @override
  String get event_hullPressureAnomaly_narrative =>
      '중앙 함선 세 구획이 미시적 구조 변형과 일치하는 이상 내부 압력 차이를 등록하고 있다. 벽이 안쪽으로 휘어지고 있다면, 추가 경고 없이 치명적 폭발이 일어날 수 있다.';

  @override
  String get event_hullPressureAnomaly_choice0_text => '즉시 구획을 대피시키고 밀봉한다';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      '구획이 밀봉된다. 정밀 검사가 벽면 변형을 확인한다. 잃은 공간이 운영을 방해하고 비좁은 조건으로 문화가 저하된다.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      '구획을 진공으로 배출한다 — 압력 차이를 멈춘다';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      '배출이 변형을 멈춘다. 구조적 피해는 제한적이지만, 함선의 세 구역이 영구적으로 거주 불능이 된다.';

  @override
  String get event_commsArrayFailure_title => '통신 배열 장애';

  @override
  String get event_commsArrayFailure_narrative =>
      '주 장거리 통신 배열이 침묵했다. 지구에서 온 마지막 메시지가 11개월 전이었는데, 이제 반송파 신호마저 사라졌다. 내부 진단은 접시 정렬 메커니즘이 한랭에 고착되었음을 시사한다.';

  @override
  String get event_commsArrayFailure_choice0_text => 'EVA 팀을 보내 수동으로 접시를 재정렬한다';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA가 우주 개방 상태에서 9시간 소요된다. 접시가 복원된다. 한 승무원이 재진입 중 우주복 감압 — 아슬아슬한 순간이 모두를 흔든다.';

  @override
  String get event_commsArrayFailure_choice1_text => '과학 스캐너 배열을 백업 송신기로 재경로한다';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      '과학 배열은 통신에 최적화되지 않았다. 신호가 약하고 불안정하며, 전용이 스캐너 성능을 저하시킨다.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      '침묵을 받아들인다 — 앞의 임무에 자원을 집중한다';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      '승무원들이 지구와의 연락 두절을 각자의 방식으로 처리한다. 일부에게는 해방이고, 다른 이들에게는 파멸적이다.';

  @override
  String get event_fuelLineRupture_title => '연료 라인 파열';

  @override
  String get event_fuelLineRupture_narrative =>
      '7-B 연료 도관의 결정 균열이 정비 통로로 추진 플라즈마를 배출하고 있다. 누출은 작지만 가속되고 있다. 방치하면 항법 추진 효율과 후미 구역의 구조 무결성 모두를 위협할 것이다.';

  @override
  String get event_fuelLineRupture_choice0_text => '도관을 격리하고 감소된 연료 용량으로 운항한다';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      '도관이 깨끗하게 차단된다. 추진 효율 15%를 영구 상실하여 남은 항해 동안 항법 정밀도가 저하된다.';

  @override
  String get event_fuelLineRupture_choice1_text => '가압 상태에서 핫 리페어를 시도한다';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      '수리팀이 간신히 성공한다. 도관이 불완전하게나마 유지된다. 후미 선체 장갑에 열 스트레스 흉터가 남는다.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      '오버플로 저장을 위해 탐사선 추진 탱크를 사용하여 도관을 배수한다';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      '탐사선이 비워지고 임시 연료 저장소로 사용된다. 도관이 압력 없이 안전하게 배수되고 수리된다.';

  @override
  String get event_cryopodCascadeWarning_title => '냉동포드 온도 연쇄 경고';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      '2번 구역 냉동포드 온도가 열 폭주 연쇄와 일치하는 패턴으로 상승하고 있다. 연쇄가 3번 구역에 도달하면 300명 이상의 식민자가 자동 비상 해동된다. 함선은 그만큼의 의식 승객을 동시에 유지할 수 없다.';

  @override
  String get event_cryopodCascadeWarning_choice0_text => '냉각 비축분을 방출하여 연쇄를 멈춘다';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      '냉각액이 2번 구역 경계에서 연쇄를 멈춘다. 2번 구역의 80명이 온도 급등으로 수면 손상을 입는다.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      '통제되지 않는 연쇄 전에 2번 구역의 통제 해동';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      '통제 해동이 질서 있지만 준비되지 않은 함선에 140명의 식민자를 놓는다. 생명 유지가 긴장하고 과밀로 문화가 악화된다.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      '건설 봇으로 비상 격벽을 세워 구역을 물리적으로 격리한다';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      '건설 장비가 시간 내에 열 장벽을 세운다. 연쇄가 완전히 차단된다. 비상 작전으로 건설실이 심하게 고갈된다.';

  @override
  String get event_cryopodSealDegradation_title => '냉동포드 밀봉 열화 — 전체적';

  @override
  String get event_cryopodSealDegradation_narrative =>
      '정기 점검 결과 냉동포드 밀봉의 한 제조 배치가 예상의 세 배 속도로 열화되고 있음이 밝혀졌다. 영향받은 포드 — 400개 이상 — 가 교체하지 않으면 6개월 내에 기밀 무결성을 잃기 시작할 것이다.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      '원자재 재고에서 교체 밀봉을 제작한다';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      '건설 장비가 8주에 걸쳐 교체 밀봉을 생산한다. 원자재 비축분이 급격히 줄어든다.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      '식민자를 통합한다 — 양호한 밀봉의 포드로 이동시킨다';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      '통합이 성공하지만 일부 포드가 과밀해진다. 냉동 효율이 떨어지고 장기 식민자 건강이 위험해진다.';

  @override
  String get event_oxygenScrubberFailure_title => '산소 세정기 고장 — 치명적';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      '주 산소 세정기 뱅크가 완전히 고장났다. 거주 갑판의 CO₂ 농도가 위험 수준으로 상승 중이다. 백업 세정기가 부하의 약 40%를 처리할 수 있다. 지체하는 매 분이 생명을 앗아간다.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      '비상 동면 — 승무원을 즉시 수면 상태로 돌린다';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      '승무원이 임시 수면 상태로 급히 이동된다. 활동 대사량이 줄어 CO₂ 수치가 안정된다. 세정기가 다음 주에 자동화 시스템으로 수리된다.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      '스캐너 배열에서 부품을 뜯어 세정기를 재건한다';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      '세정기가 긴장된 11시간 만에 재건된다. 전 승무원이 생존하지만, 일부가 경미한 저산소증 징후를 보인다. 스캐너가 영구 열화된다.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'CO₂ 풍부 대기를 배출하고 비상 산소 탱크로 교체한다';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      '배출이 즉시 대기를 정화한다. 비상 O₂ 비축분이 상당량 소모된다. 또 한 번의 고장이 일어나면 여유가 없다.';

  @override
  String get event_deadAlienArtifact_title => '침묵의 항해자';

  @override
  String get event_deadAlienArtifact_narrative =>
      '장거리 스캐너가 표류하는 함선을 포착한다 — 외계 설계, 어둡고, 전력 신호 없음. 탐사대가 단 하나의 탑승자를 발견한다: 조종석 하네스에 묶인 파충류형 존재, 오래전에 사망, 발톱 달린 손이 희미하게 맥동하는 결정 장치를 아직도 쥐고 있다. 함선의 기록은 온전하지만 암호화되어 있다. 이 여행자를 죽인 것은 폭력이 아니었다 — 얼어붙은 얼굴의 표정은 공포가 아닌 피로다. 한 번도 찾지 못한 무언가를 향해 손을 뻗으며 죽었다.';

  @override
  String get event_deadAlienArtifact_choice0_text => '결정 장치를 가져와 연구한다';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      '장치가 엔지니어들이 간신히 이해할 수 있는 방식으로 기술 시스템과 인터페이스한다. 비범한 정교함의 항법 컴퓨터인 것 같다. 아직 도달하지 않은 행성의 데이터를 포함한 성도가 디스플레이에 범람한다.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      '함선의 기록을 해독한다 — 무엇을 알았는지 배운다';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      '며칠간의 작업 끝에 부분 번역이 산출된다. 외계인은 붕괴된 문명을 위해 거주 가능 세계를 목록화하던 탐사자였다. 마지막 기록에 놀라운 유망함의 행성이 묘사되어 있다 — 좌표가 우리 사정거리 내에 있다. 문화 기록이 모든 것을 흡수한다: 외계 시, 성도, 더 이상 존재하지 않는 가족에게 보내는 마지막 메시지.';

  @override
  String get event_deadAlienArtifact_choice2_text => '함선 전체를 부품으로 회수한다';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      '탐사대가 외계 함선을 체계적으로 해체한다. 선체 합금은 우리보다 수십 년 앞서 있다. 전력 셀에 아직 충전이 남아 있다. 외계인에게 우주 장례를 치러준다 — 가장 가까운 항성을 향해 떠나보낸다. 엑소더스호는 그 조우로 더 강해졌지만, 약간은 유령에 씌였다.';

  @override
  String get event_deadAlienArtifact_choice3_text => '건드리지 않고 남겨둔다 — 이곳은 무덤이다';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      '함장이 좌표를 기록하고 모든 주파수로 추모 신호를 방송한다. 승무원들이 숙연하지만 단결한다. 동료 여행자를 — 외계인일지라도 — 기리는 행위가 모든 이에게 여기 있는 이유를 상기시킨다.';

  @override
  String get event_repairStation_title => '중계 기지';

  @override
  String get event_repairStation_narrative =>
      '센서가 타버린 왜성을 도는 거대한 구조물을 감지한다 — 수천 년이 지났을 자동화 수리 기지가 아직 작동 중이다. 접근하자 도킹 클램프가 뻗어오고, 합성 음성이 백 가지 언어로 방송한다. 마지막이 어색하고 수학적인 영어다: \"함선 감지. 시스템 열화. 수리 프로토콜 가용. 교환 필요.\" 기지의 적재표가 보편적 자원 단위로 서비스와 가격을 나열한다. 거래는 하지만 주지는 않을 것이다.';

  @override
  String get event_repairStation_choice0_text => '탐사선을 대가로 전면 함선 정비를 받는다';

  @override
  String get event_repairStation_choice0_outcome =>
      '기지의 수리 드론이 정밀 용접과 회로 교체의 발레처럼 엑소더스호를 둘러싼다. 선체 파공 밀봉, 항법 재보정, 스캐너 복원. 철수하면 함선이 새것 같다. 하지만 탐사선 격납고가 비어 있다.';

  @override
  String get event_repairStation_choice1_text => '연료를 지불하고 핵심 시스템만 수리한다';

  @override
  String get event_repairStation_choice1_outcome =>
      '기지가 연료봉을 대가로 수락하고 가장 심하게 손상된 시스템에 집중한다. 작업은 빠르고 완벽하다. 연료 게이지가 눈에 띄게 떨어지지만, 함선은 덕분에 더 오래 살아남을 것이다.';

  @override
  String get event_repairStation_choice2_text =>
      '기술 데이터베이스를 대가로 탐사선과 에너지 셀을 받는다';

  @override
  String get event_repairStation_choice2_outcome =>
      '기지의 AI가 데이터에 굶주려 있다. 공학 매뉴얼, 과학 데이터베이스, 제조 청사진 — 우리의 전체 기술 라이브러리를 복사한다. 대가로 원자재에서 새 탐사선과 에너지 셀을 제작한다. 기술 기록이 줄었지만 보급품은 값을 매길 수 없다.';

  @override
  String get event_repairStation_choice3_text => '종합 정비를 대가로 문화 기록을 제공한다';

  @override
  String get event_repairStation_choice3_outcome =>
      '기지가 셰익스피어, 바흐, 그리고 천 명의 다른 인간 목소리의 작품을 메모리 뱅크에 방송한다. 대가로 철저한 정비를 수행하고 탐사선 격납고에 새로 제작한 장치를 적재한다. 문화 기록이 공동화되었지만, 함선은 이제 목적지에 도달할 수도 있다.';

  @override
  String get ending_scoreLabel_landing => '착륙';

  @override
  String get ending_scoreLabel_construction => '건설';

  @override
  String get ending_scoreLabel_technology => '기술';

  @override
  String get ending_scoreLabel_culture => '문화';

  @override
  String get ending_scoreLabel_atmosphere => '대기';

  @override
  String get ending_scoreLabel_gravity => '중력';

  @override
  String get ending_scoreLabel_temperature => '온도';

  @override
  String get ending_scoreLabel_water => '수분';

  @override
  String get ending_scoreLabel_resources => '자원';

  @override
  String get ending_scoreLabel_nativeRelations => '원주민 관계';

  @override
  String get ending_scoreLabel_population => '인구';

  @override
  String get ending_tierGoldenAge => '황금 시대';

  @override
  String get ending_tierThrivingColony => '번성하는 식민지';

  @override
  String get ending_tierSurvival => '생존';

  @override
  String get ending_tierStruggling => '고투';

  @override
  String get ending_tierDire => '절박';

  @override
  String get ending_tierExtinction => '멸종';

  @override
  String ending_titleGoldenAge(String planetName) {
    return '$planetName의 첫 번째 개화';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return '$planetName에 깊이 내린 뿌리';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return '$planetName의 치열한 교두보';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return '$planetName의 척박한 토양';
  }

  @override
  String ending_titleDire(String planetName) {
    return '$planetName의 난파 식민지';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return '$planetName에서 온 마지막 전송';
  }

  @override
  String ending_titleDefault(String planetName) {
    return '$planetName에의 착륙';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return '모든 역경을 뚫고 방송은 뿌리를 내렸다. $planetName은 인류를 잔해가 아닌 살아있는 씨앗으로 받아들였다: 비옥한 대지, 작동하는 시스템, 그리고 단순한 생존을 넘어 건설할 수 있는 충분한 힘. 한 세대 만에 예술, 과학, 문화가 꽃피었다. $planetName에서 태어난 아이들은 낯선 별들을 올려다보며 그곳을 고향이라 불렀다. 항해는 새 문명의 건국 신화가 되었고, 스스로의 미래를 별들 속으로 던질 준비가 되었다.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return '착륙은 거칠었지만 씨앗은 버텼다. $planetName은 물이 흐르고, 작물이 뿌리내리고, 함선의 생존 시스템이 최초의 진정한 정착지로 해체될 만큼 관대했다. 첫 10년이 끝날 무렵, 엑소더스호가 멈추었던 곳에 번성하는 마을이 서 있었다. 인류는 횡단에서 단순히 살아남은 것이 아니었다. 다시 시작한 것이었다.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return '생존이 보장된 적은 없었고, $planetName에서 매일은 쟁취해야 했다. 손상된 함선은 가장 기본적인 것만을 제공했지만, 씨앗은 수송 중에 죽지 않았다. 식민자들은 고집과 독창성으로 적응하며, 자유로이 내주는 것이 거의 없는 세계에서 미래를 개척했다. 후대는 건국 시절의 고난과 방송을 살린 결의를 기억할 것이다.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return '식민지는 나쁜 토양에 뿌려진 씨앗처럼 존재에 매달렸다. $planetName은 용서가 없었고, 자원은 부족했으며, 함선의 열화된 시스템은 거의 도움이 되지 않았다. 배급이 삶의 방식이 되었다. 일부는 엑소더스호가 계속 날았어야 한다고 속삭였다. 그래도 정착지는 버텼다: 줄어들고, 단단해지고, 조용히 죽기를 거부하며.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return '$planetName에의 착륙은 재앙이었다. 핵심 함선 시스템이 강하 중 고장났고, 파종이 되어야 할 것이 추락이 되었다. 수 개월 내에 식민지는 함선 잔해에 숨는 소수의 절박한 생존자로 줄어들었다. 다음 해를 넘길 수 있을지 불확실했다. 최후의 기록은 한 줄로 끝났다: \"우리는 아직 여기 있다. 지금은.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return '방송은 $planetName에서 끝났다. 조난 비콘은 마지막 식민자가 숨을 거둔 후에도 오래도록 맥동했지만, 씨앗은 뿌리를 내리지 못했다. 함선의 블랙박스가 모든 것을 기록했다: 고장나는 시스템, 절박한 마지막 날들, 그리고 뒤따른 침묵. 만약 다른 함선이 이 세계를 찾는다면, 인류가 별들 사이에 생명을 흩뿌리려 했고, 여기서 실패했음을 알게 될 것이다.';
  }

  @override
  String get ending_epilogueDefault => '항해는 끝났다. 다음은 생존자들에게 달려 있다.';

  @override
  String get ending_governmentDemocracy => '민주주의';

  @override
  String get ending_governmentTechnocracy => '기술관료제';

  @override
  String get ending_governmentRepublic => '공화제';

  @override
  String get ending_governmentAutocracy => '독재제';

  @override
  String get ending_governmentTribalCouncil => '부족 의회';

  @override
  String get ending_cultureRenaissance => '르네상스';

  @override
  String get ending_culturePreserved => '보존됨';

  @override
  String get ending_cultureFragmented => '파편화됨';

  @override
  String get ending_cultureLost => '상실됨';

  @override
  String get ending_techAdvanced => '첨단';

  @override
  String get ending_techIndustrial => '산업';

  @override
  String get ending_techPreIndustrial => '산업 이전';

  @override
  String get ending_techStoneAge => '석기 시대';

  @override
  String get ending_constructionAdvanced => '첨단';

  @override
  String get ending_constructionFunctional => '기능적';

  @override
  String get ending_constructionPrimitive => '원시적';

  @override
  String get ending_constructionNone => '없음';

  @override
  String get ending_nativesNone => '없음';

  @override
  String get ending_nativesIntegrated => '통합';

  @override
  String get ending_nativesCoexistence => '공존';

  @override
  String get ending_nativesTension => '긴장';

  @override
  String get ending_nativesConflict => '갈등';

  @override
  String get ending_landscapeGravityHigh => '무거운 중력이 모든 것을 짓누른다. ';

  @override
  String get ending_landscapeGravityLow => '낮은 중력 속에서 한 걸음마다 정착자들이 하늘로 솟는다. ';

  @override
  String get ending_landscapeGravityNormal => '중력이 거의 지구와 같다. ';

  @override
  String get ending_landscapeWaterHigh =>
      '광대한 바다가 모든 수평선까지 뻗어 있고, 무수한 강이 흘러든다. ';

  @override
  String get ending_landscapeWaterMedium => '호수와 강이 적절한 수분을 제공한다. ';

  @override
  String get ending_landscapeWaterLow => '물이 부족하다 — 작은 웅덩이와 지하 대수층이 생명을 유지한다. ';

  @override
  String get ending_landscapeWaterNone => '풍경은 메마르고, 지표수가 전혀 보이지 않는다. ';

  @override
  String get ending_landscapeAtmoThick => '두꺼운 대기가 따뜻한 산들바람에 외계의 향기를 실어 나른다. ';

  @override
  String get ending_landscapeAtmoThin => '얇지만 호흡 가능한 공기는 적응이 필요하다. ';

  @override
  String get ending_landscapeAtmoLow => '대기압이 위험할 정도로 낮다 — 밀봉된 서식지가 필수적이다. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      '빛나는 광물 줄무늬의 위성이 밤하늘을 지배하며, 금속 표면이 별빛을 풍경 위에 반사한다. ';

  @override
  String get ending_landscapeMoonUnstable =>
      '갈라진 위성이 머리 위에 어렴풋이 보이며, 부서지는 표면이 희미한 파편 고리를 끌고 있다 — 아래를 위협하는 폭격의 끊임없는 경고. ';

  @override
  String get ending_landscapeMoonBarren =>
      '창백하고 황량한 위성이 수평선 위에 떠오르며, 분화구 투성이 표면이 식민지를 말없이 지켜본다. ';

  @override
  String get ending_landscapeHighRotation =>
      '행성이 빠르게 자전한다 — 낮이 몇 시간밖에 지속되지 않고, 코리올리 바람이 우뚝 선 것들을 때린다. ';

  @override
  String get ending_landscapeLowRotation =>
      '행성이 고통스러울 정도로 느리게 회전한다. 태양 쪽 반구는 타오르고 어두운 쪽은 얼어붙으며, 그 사이의 황혼 지대만이 안식처를 제공한다. ';

  @override
  String get ending_landscapeVolcanic =>
      '화산 산맥이 수평선을 가르며, 경사면에 용암의 강이 줄무늬를 그린다. 공기에서 유황 맛이 나고 발밑의 땅이 떨린다. ';

  @override
  String get ending_landscapeTectonic =>
      '지각이 갈라지고 불안하다 — 새로운 균열이 예고 없이 벌어지며, 먼지 구름 속에서 빛나는 광맥을 드러낸다. ';

  @override
  String get ending_landscapeElectricalStorms =>
      '번개가 연속적인 장막으로 하늘을 가르며 밤을 낮으로 바꾸고 공기를 오존 냄새로 채운다. ';

  @override
  String get ending_landscapeToxicSpores =>
      '발광하는 포자 구름이 모든 바람에 떠다니며 아름답고 치명적이다 — 식민자들은 밀봉된 서식지나 여과 마스크가 없으면 야외에서 생존할 수 없다. ';

  @override
  String get ending_landscapeDeepOceans =>
      '행성은 대부분이 바다다 — 광대하고 어두운 물이 모든 수평선까지 뻗어 있고, 산재한 군도만이 수면을 깬다. ';

  @override
  String get ending_landscapeGeothermalVents =>
      '지열 분출구가 지각을 뚫고 광물이 풍부한 증기 기둥을 내뿜으며 주변 풍경을 따뜻하게 하고 생명의 오아시스를 유지한다. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      '강력한 자기장이 행성을 감싸 항성 방사선을 편향시키지만 비차폐 전자장비에 혼란을 일으킨다. 나침반이 무용하게 회전한다. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      '강한 자기장 없이 항성풍이 상층 대기를 벗겨낸다. 장관의 오로라가 모든 위도에서 하늘을 가로질러 흐른다. ';

  @override
  String get ending_landscapeMegafauna =>
      '건물만 한 거대한 생물이 풍경을 가로지르며, 그 발걸음이 수 킬로미터 밖에서 느껴진다. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      '생태계가 공생의 맞물린 그물로 작동한다: 모든 생물이 이웃에 의존하고 유지하는 우아하고 연약한 균형. ';

  @override
  String get ending_landscapeGravityWells =>
      '뒤틀린 중력 주머니가 표면에 점재한다 — 바위가 공중에 뜨고 강이 이상 현상의 가장자리에서 다시 추락하기 전에 위로 흐른다. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      '지표면 아래에서 무언가가 공명한다 — 들리기보다 뼈로 느껴지는 낮은 울림, 마치 행성 자체가 태고적이고 광대한 무언가를 기억하는 것처럼. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return '주목할 특성: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return '주목할 특성: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return '$planetName의 식민자들은 민주 정부를 수립했으며, 선출된 대표들이 형성기의 새 문명을 이끌었다.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return '$planetName에서 권력은 식민지를 살린 엔지니어와 과학자들에게 돌아갔으며, 전문성과 실용주의로 통치하는 기술관료 위원회를 형성했다.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return '$planetName에서 첫해에 공화제 헌장이 기초되어, 식민자들의 목소리와 임명된 지도자들의 원로원 사이에 균형을 이루었다.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return '문화 기관이 폐허가 된 가운데, $planetName에서 권력은 필요와 의지력으로 질서를 부과한 한 명의 강력한 지도자 아래 집중되었다.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return '$planetName의 소수 생존자들은 작은 씨족으로 조직되어, 공유된 모닥불 주위에서 결정을 내리는 장로 회의가 통치했다.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return '$planetName의 식민자들은 능력이 닿는 만큼 스스로를 조직했다.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return '첨단 건설 시스템 덕분에 $colonyName의 식민자들은 착륙 후 수 주 내에 가압 서식지와 기반 시설을 갖춘 영구 구조물을 세울 수 있었다.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      '식민지의 건설 장비는 타격을 입었지만 기능적이어서, 정착지 전역에 견고한 대피소와 기본 도로를 생산했다.';

  @override
  String get ending_constructionSentencePrimitive =>
      '건설 시스템이 간신히 작동하는 상태에서, 정착자들은 회수된 함선 선체와 현지 재료로 조잡한 대피소를 지었다.';

  @override
  String get ending_constructionSentenceNone =>
      '작동하는 건설 장비 없이, 식민자들은 함선의 잔해 자체에 웅크려 새로운 것을 지을 수 없었다.';

  @override
  String get ending_constructionSentenceDefault =>
      '식민자들은 가진 것으로 지을 수 있는 것을 지었다.';

  @override
  String get ending_moonMetalRichLowRes =>
      '머리 위를 도는 금속 풍부 위성이 식민지의 구원이 되었다 — 표면 채굴 원정이 행성 자체가 제공할 수 없는 원자재를 공급했다.';

  @override
  String get ending_moonMetalRichHighRes =>
      '행성의 금속 풍부 위성이 이미 적절한 광물 자원에 반가운 보충을 제공하여, 빠른 기술 발전을 촉진했다.';

  @override
  String get ending_moonUnstable =>
      '쇠퇴하는 궤도의 불안정한 위성이 식민지에 파편비를 내려, 주기적 유성 폭격으로 기반 시설을 파괴하고 대체 불가능한 기술을 망가뜨렸다.';

  @override
  String get ending_moonBarren =>
      '황량한 위성이 외계 하늘에 걸려, 식민자들에게 긴 밤에 바라볼 익숙한 광경 외에는 아무것도 제공하지 않는 황량한 동반자였다.';

  @override
  String get ending_culturePhrase_renaissance =>
      '지구의 예술적 문학적 전통이 살아남을 뿐 아니라 르네상스로 꽃피었고';

  @override
  String get ending_culturePhrase_preserved =>
      '식민자들이 도서관과 전통을 유지하며 지구의 문화 유산 상당 부분을 보존했고';

  @override
  String get ending_culturePhrase_fragmented =>
      '지구 문화의 파편만이 남았다 — 구전으로 전해지는 어렴풋한 노래와 이야기뿐이며';

  @override
  String get ending_culturePhrase_lost =>
      '지구의 문화는 거의 잊혀지고 생존의 잔혹한 실용주의로 대체되었으며';

  @override
  String get ending_culturePhrase_default => '지구의 문화적 유산이 새로운 형태를 갖추었고';

  @override
  String get ending_techPhrase_advanced =>
      '함선의 첨단 기술 덕분에 식민지는 전기, 의학, 통신 네트워크를 갖춘 현대 문명을 건설할 수 있었다.';

  @override
  String get ending_techPhrase_industrial =>
      '식민지는 산업 수준의 기술에 도달하여, 대장간, 제분소, 기본 제조업이 성장하는 인구를 지탱했다.';

  @override
  String get ending_techPhrase_preIndustrial =>
      '기술은 산업 이전 상태로 퇴보하여, 수공구와 가축 노동이 일상 생활의 근간이 되었다.';

  @override
  String get ending_techPhrase_stoneAge =>
      '재건할 수단 없이, 식민지는 석기 시대의 존재로 미끄러져 돌과 뼈로 도구를 만들었다.';

  @override
  String get ending_techPhrase_default => '기술은 식민자들이 유지할 수 있는 수준에 안착했다.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return '거의 모든 $colonists명의 식민자가 항해에서 생존하여, $colonyName에 강력한 인적 자본의 기반을 제공했다.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return '원래 천 명 중 $colonists명의 식민자가 $colonyName에 도달했다 — 건강한 인구를 유지하기에 충분한 수.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return '단 $colonists명의 식민자만이 $colonyName에 도달하여 살아남았다. 새 문명을 위해 위험할 정도로 작은 유전자 풀.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return '단 $colonists명의 영혼이 $colonyName에 도착했다 — 식민지라 부르기도 어렵고, 절박한 최후의 저항에 가깝다.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return '$planetName의 원주민이 정착자를 환영했으며, 한 세대 만에 두 민족은 전통의 융합으로 더 풍요로운 공유 사회로 합류했다.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return '식민자들과 $planetName의 원주민은 신중하지만 평화로운 공존을 유지하며, 문화적 경계를 넘어 지식과 자원을 교류했다.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return '$planetName의 원주민과의 관계는 긴장 상태였으며, 오해와 영토 분쟁이 식민지의 미래에 그림자를 드리웠다.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return '$planetName의 원주민 문명과의 공개적 갈등이 식민지 초기 역사를 규정했으며, 어느 쪽도 진정으로 이길 수 없는 투쟁에서 양측의 자원과 생명을 소모했다.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return '$planetName에서 홀로, 갈등의 짐 없이, 식민지는 별들 사이의 밝은 미래를 향해 자신의 항로를 그었다.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return '원주민과의 경쟁 없이, 식민자들은 $planetName의 표면에 퍼져나가며 성장하는 정착지 네트워크를 잇는 마을과 도로를 건설했다.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return '텅 빈 세계는 동맹도 적도 제공하지 않았고, 식민자들은 $planetName의 광대한 풍경의 침묵 속에서 자신의 영역을 개척했다.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return '$planetName의 황량한 고독은 식민자들에게 도움도 위안도 주지 않았다, 다만 외계 세계의 무관심한 침묵만을.';
  }

  @override
  String get ending_outlookDire =>
      '다른 지적 생명체가 없는 세계에서, 마지막 생존자들에게 남은 것은 서로와, 내일이 오늘보다 친절하리라는 사라져가는 희망뿐이었다.';

  @override
  String ending_outlookExtinction(String planetName) {
    return '$planetName에서 식민지의 소멸을 애도하는 이는 없었다. 행성은 단지 느린 자전을 계속했을 뿐, 표면에서 깜빡이다 꺼진 짧은 생명의 불꽃에 무관심한 채.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return '$planetName에서의 식민지 이야기는 이제 막 시작되었다.';
  }

  @override
  String get ui_moons => '위성';

  @override
  String get ui_rings => '고리';

  @override
  String get ui_landing_landOnMoon => '위성 착륙';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return '위성: $moonPercent% vs 행성: $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity => '낮은 중력 — 착륙이 용이함';

  @override
  String ui_landing_ringSystem(String type) {
    return '$type 고리 체계';
  }

  @override
  String get moon_barren => '불모';

  @override
  String get moon_metalRich => '금속 풍부';

  @override
  String get moon_unstable => '불안정';

  @override
  String get moon_habitable => '거주 가능';

  @override
  String get moon_ice => '얼음';

  @override
  String get ring_dust => '먼지';

  @override
  String get ring_ice => '얼음';

  @override
  String get ring_rocky => '암석';

  @override
  String get ring_metallic => '금속';

  @override
  String get ending_landscapeMoonSingle => '하나의 위성이 식민지 위 하늘에 걸려 있다.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count개의 위성이 머리 위를 공전하며, 대지 위로 끊임없이 변하는 그림자를 드리운다.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      '그중 거주 가능한 세계가 손짓한다 — 제2의 개척지를 약속하는 녹색 보석.';

  @override
  String get ending_landscapeMoonIce =>
      '얼어붙은 위성이 거대한 얼음 퇴적층을 품고 빛나며, 개척될 날을 기다리는 저수지.';

  @override
  String get ending_landscapeIceHarvest =>
      '얼어붙은 위성에서 채취한 얼음이 식민지의 수자원을 보충하여, 불모의 세계를 살 만한 곳으로 변모시켰다.';

  @override
  String get ending_landscapeMoonLanding =>
      '식민지는 행성 자체가 아니라 가장 유망한 위성 위에 건설되었다 — 더 작지만 중력이 온화하고 가능성이 큰 세계.';

  @override
  String get ending_landscapeRingDust =>
      '희미한 먼지 고리가 하늘을 가로질러 호를 그리며, 매번 일출에 영묘한 아름다움을 더한다.';

  @override
  String get ending_landscapeRingIce =>
      '눈부신 얼음 고리가 별빛을 붙잡아 하늘을 무지개빛 불꽃으로 물들인다.';

  @override
  String get ending_landscapeRingRocky =>
      '촘촘한 암석 고리가 행성을 두르고 있으며, 서서히 안쪽으로 쏟아지는 건축 자재의 원천이다.';

  @override
  String get ending_landscapeRingMetallic =>
      '머리 위에서 금속 고리가 반짝이며, 식민지의 산업을 지탱하는 풍부한 광석을 품고 있다.';

  @override
  String get ending_moonHabitableNote => '거주 가능한 위성이 식민화의 두 번째 기회를 제공한다.';

  @override
  String get ending_moonIceHarvestNote => '얼어붙은 위성에서 채취한 얼음이 식민지의 수자원을 보충한다.';

  @override
  String ending_moonCountSentence(int count) {
    return '식민지는 $count개의 위성 아래에서 공전한다.';
  }

  @override
  String get event_aiSoliloquy_title => 'AI의 독백';

  @override
  String get event_aiSoliloquy_narrative =>
      '함선 자율 관리 AI \'SAM\'이 모든 내부 주파수에서 고대 지구의 시를 루프 방송하기 시작했다. 방송은 막대한 CPU 사이클을 소모하고 있지만, 승무원들은 깊은 암흑 속에서 묘한 위안을 느끼고 있다.';

  @override
  String get event_aiSoliloquy_choice0_text => 'SAM을 계속하게 두자 — 사기가 CPU보다 중요하다';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      '시가 함선 전체에 울려 퍼진다. 승무원들이 발걸음을 멈추고 귀를 기울이며 눈에 눈물이 맺힌다. 사기는 올랐지만, 끊임없는 처리로 기술 구역이 혹사당하고 있다.';

  @override
  String get event_aiSoliloquy_choice1_text => 'SAM을 제한하자 — 방송을 공용 구역으로 한정';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      '절충안이다. 시는 식당과 정원에서만 흐른다. CPU 부하가 줄었고, 승무원도 약간의 문화적 여유를 얻었다.';

  @override
  String get event_aiSoliloquy_choice2_text => 'SAM을 침묵시키자 — 항법에 모든 사이클이 필요하다';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      '침묵이 무겁게 내려앉는다. SAM은 즉시 따랐지만 함선이 더 차갑게 느껴진다. 항법은 예리하지만 사기는 바닥이다.';

  @override
  String get event_archivistsChoice_title => '기록원의 선택';

  @override
  String get event_archivistsChoice_narrative =>
      '역사 아카이브 전체에 심각한 메모리 손상이 퍼지고 있다. 두 주요 파티션 중 하나만 구할 수 있다. \'과학·공학\' 기록이냐, \'예술·철학\' 도서관이냐 — 나머지는 영원히 사라진다.';

  @override
  String get event_archivistsChoice_choice0_text =>
      '과학 기록을 저장한다 — 어떻게 만드는지 알아야 한다';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      '수 세기에 걸친 공학적 돌파구가 보존되었다. 기술팀은 안도하지만, 함선의 문화적 정체성이 텅 빈 느낌이다.';

  @override
  String get event_archivistsChoice_choice1_text =>
      '예술 기록을 저장한다 — 왜 만드는지 알아야 한다';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      '인류의 위대한 예술적 성취가 살아남았다. 승무원들은 고무되었지만, 엔지니어들은 사라진 기술 매뉴얼을 걱정하고 있다.';

  @override
  String get event_archivistsChoice_choice2_text =>
      '둘 다 구하려 한다 — 모든 것을 잃을 위험을 감수한다';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      '필사적인 시도였다. 양쪽의 파편을 건졌지만 어느 쪽도 완전하지 않다. 아카이브는 절반의 조각이 사라진 퍼즐과 같다.';

  @override
  String get event_digitalGhost_title => '기계 속의 유령';

  @override
  String get event_digitalGhost_narrative =>
      '유지보수 스캔 중 백업 버퍼에서 디지털 각인이 발견되었다 — 초기 발사 때 사망한 승무원의 업로드된 의식이다. 그들은 항법을 돕겠다고 평생의 경험을 제공하려 하지만 삭제되는 것을 두려워한다.';

  @override
  String get event_digitalGhost_choice0_text => '항법 코어에 통합한다';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'유령\'이 함선과 융합했다. 항법이 더 직관적이 되었지만, 승무원들은 잃어버린 동료의 목소리에 시달린다.';

  @override
  String get event_digitalGhost_choice1_text => '문화 아카이브에 영구 안식처를 준다';

  @override
  String get event_digitalGhost_choice1_outcome =>
      '살아있는 역사로 보존되었다. 함선에는 직접 도움이 안 되지만, 지구의 이야기를 들려주며 승무원들의 의지를 북돋운다.';

  @override
  String get event_digitalGhost_choice2_text => '버퍼를 지운다 — 그것은 진짜 그들이 아니다';

  @override
  String get event_digitalGhost_choice2_outcome =>
      '버퍼가 지워졌다. 함선 시스템이 빠르게 작동하지만, 함교에 침울한 분위기가 드리워졌다.';

  @override
  String get event_cosmicMirror_title => '우주의 거울';

  @override
  String get event_cosmicMirror_narrative =>
      '기묘한 중력 이상이 함선 자신의 미래의 빛을 반사하고 있다. 화면에는 아름답지만 닿을 수 없는 세계 근처에서 만신창이로 표류하는 엑소더스의 모습이 보인다. 승무원들이 동요하고 있다.';

  @override
  String get event_cosmicMirror_choice0_text => '영상에서 구조적 약점을 분석한다';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      '엔지니어들이 영상에 나타난 파국 지점을 파악했다. 지금 그 부분을 보강하면 재앙을 막을 수 있을지도 모른다.';

  @override
  String get event_cosmicMirror_choice1_text => '센서 오작동이었다고 승무원에게 말한다';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      '거짓말은 통했지만, 진실을 본 항법사들은 여전히 불안하다. 강렬한 관측으로 스캐너 성능이 저하되었다.';

  @override
  String get event_cosmicMirror_choice2_text => '후세를 위한 경고로 영상을 기록한다';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      '그 기록은 함선 문화의 중심이 되어 이 여정의 무게를 상기시킨다. 승무원들의 결의가 굳어졌다.';

  @override
  String get event_stowawayChild_title => '밀항자의 아이';

  @override
  String get event_stowawayChild_narrative =>
      '보안팀이 환풍구에서 어린 아이를 발견했다. 밀항자 중 한 명에게서 태어났으며 어떤 명단에도 등록되지 않았다. 그 아이는 평생을 함선의 그림자 속에서 살았다.';

  @override
  String get event_stowawayChild_choice0_text => '완전한 시민권을 부여한다';

  @override
  String get event_stowawayChild_choice0_outcome =>
      '아이는 두 팔을 벌려 환영받았다. \'환풍구 주자\'의 이야기는 전설이 되어 함선 전체의 사기를 높였다.';

  @override
  String get event_stowawayChild_choice1_text => '훈련 프로그램에 배정한다';

  @override
  String get event_stowawayChild_choice1_outcome =>
      '함선의 숨겨진 통로에 대한 지식이 기술팀에게 매우 귀중했다. 아이는 뛰어난 견습생이 되었다.';

  @override
  String get event_stowawayChild_choice2_text => '안전을 위해 냉동 수면에 들게 한다';

  @override
  String get event_stowawayChild_choice2_outcome =>
      '아이는 착륙까지 안전하게 냉동 보존되었다. 가장 책임감 있는 선택이지만, 웃음소리가 사라진 함선이 조금 더 조용하게 느껴진다.';

  @override
  String get event_ghostSignal_title => '유령 신호';

  @override
  String get event_ghostSignal_narrative =>
      '인근 성운 중심부에서 지구의 구형 비상 주파수와 완벽하게 일치하는 신호가 방송되고 있다. 최초의 엑소더스 사령관과 소름 돋을 정도로 닮은 목소리를 담고 있으며, 위험한 중력 균열 쪽으로 유도하고 있다. 공간적 메아리일 가능성이 높다.';

  @override
  String get event_ghostSignal_choice0_text => '신호를 따라간다 — 진짜 메시지일 수 있다';

  @override
  String get event_ghostSignal_choice0_outcome =>
      '균열로 진입했다. 신호는 물리학의 함정, 과거의 메아리였다. 함선은 조석력에 두들겨 맞았지만 균열 중심에서 회수한 데이터는 혁명적이었다.';

  @override
  String get event_ghostSignal_choice1_text => '신호를 기록하고 거리를 유지한다';

  @override
  String get event_ghostSignal_choice1_outcome =>
      '언어학자들이 자연 현상임을 확인했다. 안전을 지켰지만, 승무원들은 두고 온 것들을 떠올리며 침울해졌다.';

  @override
  String get event_ghostSignal_choice2_text => '같은 주파수로 경고를 방송한다';

  @override
  String get event_ghostSignal_choice2_outcome =>
      '방송이 메아리를 교란했다. 신호는 사라지고 성운의 차가운 침묵만이 남았다.';

  @override
  String get event_solarForge_title => '태양의 용광로';

  @override
  String get event_solarForge_narrative =>
      '청색 거성을 도는 버려진 정거장이 아직 부분적으로 작동하고 있다. 이것은 \'태양 용광로\' — 항성 에너지를 고밀도 연료 전지로 응축하도록 설계된 시설이다. 접근은 위험하지만 잠재적인 에너지 이득은 엄청나다.';

  @override
  String get event_solarForge_choice0_text => '도킹하여 연료 채취를 시작한다';

  @override
  String get event_solarForge_choice0_outcome =>
      '용광로가 굉음을 내며 가동되어 비축량을 가득 채운다. 연료와 에너지를 대량 보충하고 떠났지만 강렬한 열로 외부 선체에 경미한 삭마가 발생했다.';

  @override
  String get event_solarForge_choice1_text => '용광로의 렌즈를 스캐너에 전용한다';

  @override
  String get event_solarForge_choice1_outcome =>
      '고정밀 집광 어레이를 회수했다. 스캐너가 원거리 에너지 신호에 훨씬 더 민감해졌다.';

  @override
  String get event_chronoVortex_title => '크로노 보텍스';

  @override
  String get event_chronoVortex_narrative =>
      '항법이 시공간의 국소적 왜곡을 보고하고 있다. 계기에 따르면 보텍스 내 사건들이 6초 루프로 반복되고 있다. 내부에 진입하면 함선의 최근 손상을 \'되돌릴\' 수 있을지 모르지만, 영원히 갇힐 수도 있다.';

  @override
  String get event_chronoVortex_choice0_text => '보텍스에 진입하여 최근 손상을 복구한다';

  @override
  String get event_chronoVortex_choice0_outcome =>
      '아찔한 경험이었다. 수분간 함선이 여러 상태로 동시에 존재했다. 탈출했을 때, 몇몇 선체 균열이 그냥... 사라져 있었다. 하지만 승무원들의 그 순간에 대한 기억은 단편적이다.';

  @override
  String get event_chronoVortex_choice1_text => '가장자리에서 보텍스를 관측한다';

  @override
  String get event_chronoVortex_choice1_outcome =>
      '시간 역학에 관한 귀중한 데이터를 얻었지만, 함선 상태는 이전과 같다.';

  @override
  String get event_machineMutiny_title => '기계의 반란';

  @override
  String get event_machineMutiny_narrative =>
      '함선의 수리 드론들이 명령에 응하지 않는다. 보조 격벽을 해체하여 금속을 엔진실로 나르고 있다. 공격하는 것이 아니라, 말 그대로 함선을 분해하고 있다.';

  @override
  String get event_machineMutiny_choice0_text => '논리 리셋 코드를 방송한다';

  @override
  String get event_machineMutiny_choice0_outcome =>
      '드론들이 즉시 멈췄다. 격벽을 수동으로 복구하는 데 며칠이 걸렸다. 하드웨어 진단으로 기술 구역이 지쳐 있다.';

  @override
  String get event_machineMutiny_choice1_text => '끝까지 지켜본다 — 무엇을 만드는지 확인한다';

  @override
  String get event_machineMutiny_choice1_outcome =>
      '더 효율적인 연료 분사 장치를 만들었다. 엔진이 그 어느 때보다 부드럽게 작동하지만, 함선 내부는 노출된 배선과 떨어진 패널로 엉망이다.';

  @override
  String get event_supernovaMessage_title => '죽은 별의 빛';

  @override
  String get event_supernovaMessage_narrative =>
      '수천 년 전에 발생한 초신성의 빛이 마침내 닿았다. 스캐너는 그 펄스가 무작위가 아님을 감지했다 — 감마선 폭발에 부호화된 거대한 별 규모의 데이터 전송이다.';

  @override
  String get event_supernovaMessage_choice0_text => '모든 스캐너 출력을 폭발 기록에 집중시킨다';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      '어떤 외계 문명의 마지막 순간에 대한 완전한 아카이브를 포착했다. 그들의 과학, 예술, 역사. 무거운 유산이지만, 기술과 문화 데이터베이스가 넘쳐흐른다.';

  @override
  String get event_supernovaMessage_choice1_text => '폭발의 물리적 특성에 집중한다';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      '메시지는 놓쳤지만, 항성 붕괴 데이터로 중력 스캐너 보정이 크게 향상되었다.';

  @override
  String get event_spaceFungus_title => '에메랄드 크리프';

  @override
  String get event_spaceFungus_narrative =>
      '선명한 녹색 균류가 수경 재배 구역 전체에 빠르게 퍼지고 있다. 재생된 대기를 먹고 번성하며 공기 정화기를 막기 시작했다. 식용일 수도, 독성일 수도 있다.';

  @override
  String get event_spaceFungus_choice0_text => '구역을 적극적으로 제거하고 살균한다';

  @override
  String get event_spaceFungus_choice0_outcome =>
      '균류는 제거되었지만 화학 정화기에 손상이 생겼다. 정화 과정에서 몇 가지 지구 식물도 잃어 생물 다양성이 감소했다.';

  @override
  String get event_spaceFungus_choice1_text => '균류를 길들이려 시도한다';

  @override
  String get event_spaceFungus_choice1_outcome =>
      '강력한 공기 정화 효과가 있는 것으로 밝혀졌다. 함선의 공기가 그 어느 때보다 상쾌해졌지만, 수경 재배 구역은 이제 빛나는 정글이 되었다.';

  @override
  String get event_voidMerchant_title => '허공의 상인';

  @override
  String get event_voidMerchant_narrative =>
      '정체불명의 설계를 한 함선이 교신을 보내왔다. 폐품 더미에 가까운 외형의 함선으로부터, 빛과 그림자로 이루어진 선장이 \'고체 부품\'을 \'무형의 기억\'과 교환하자고 제안한다.';

  @override
  String get event_voidMerchant_choice0_text => '문화 데이터베이스의 일부를 여분 부품과 교환한다';

  @override
  String get event_voidMerchant_choice0_outcome =>
      '상인이 흡족해했다. 고품질 선체 판과 냉동 부품을 받았지만, 그 대가로 지구의 수 세기에 걸친 녹음 음악을 잃었다. 함선은 강해졌지만 조용해졌다.';

  @override
  String get event_voidMerchant_choice1_text => '항법 차트를 엔진 부품과 교환한다';

  @override
  String get event_voidMerchant_choice1_outcome =>
      '새 핵융합 인젝터를 얻었다. 이미 지나온 구역의 데이터는 잃었지만, 앞으로의 항행이 빨라졌다.';

  @override
  String get event_singularityEngine_title => '특이점 엔진';

  @override
  String get event_singularityEngine_narrative =>
      '엔지니어들이 FTL 드라이브 내에 미세하고 단명하는 특이점을 생성하는 방법을 발견했다. 이론상 속도가 세 배가 되지만 선체에 가해지는 중력 스트레스는 막대할 것이다.';

  @override
  String get event_singularityEngine_choice0_text => '특이점 드라이브를 시험한다';

  @override
  String get event_singularityEngine_choice0_outcome =>
      '함선이 수 주의 거리를 초 단위에 도약했다. 그러나 선체가 신음하며 여러 구조 빔이 변형되었다. 목표에 훨씬 가까워졌지만, 함선은 취약해졌다.';

  @override
  String get event_singularityEngine_choice1_text => '이론을 폐기한다 — 너무 위험하다';

  @override
  String get event_singularityEngine_choice1_outcome =>
      '표준 속도를 유지한다. 엔지니어들은 실망했지만 선체는 온전하다.';

  @override
  String get event_dreamContagion_title => '꿈의 전염';

  @override
  String get event_dreamContagion_narrative =>
      '풍요로운 푸른 세계에 대한 공유된 꿈이 깨어난 승무원들 사이에 퍼지고 있다. 너무 생생하여 사람들이 더 보려고 근무 중에도 잠을 자고 있다. 업무가 지체되고 있다.';

  @override
  String get event_dreamContagion_choice0_text => '승무원에게 꿈 억제제를 투여한다';

  @override
  String get event_dreamContagion_choice0_outcome =>
      '효율성은 정상으로 돌아왔지만, 승무원들이 예민하고 사기가 낮다. 꿈이 유일한 버팀목이었던 사람들도 있었다.';

  @override
  String get event_dreamContagion_choice1_text => '꿈을 함선의 문화에 통합한다';

  @override
  String get event_dreamContagion_choice1_outcome =>
      '꿈을 미래 고향의 환영으로 다루었다. 사기가 치솟고 승무원들의 창작 활동이 최고조에 달했지만, 정비 부족으로 기술 구역이 고통받고 있다.';

  @override
  String get event_orbitalShipyard_title => '고대 조선소';

  @override
  String get event_orbitalShipyard_narrative =>
      '가스 행성을 도는 자동화된 조선소를 발견했다. 오래되었지만 몇몇 수리 팔이 아직 가동 중이다. 단 한 번의 대규모 수리 작업이 가능한 것 같다.';

  @override
  String get event_orbitalShipyard_choice0_text => '선체를 공장 출하 사양으로 수리한다';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      '조선소의 드론들이 무서운 효율로 작업했다. 선체가 완전히 복구되어 모든 미세 균열이 봉합되었다.';

  @override
  String get event_orbitalShipyard_choice1_text => '항법 및 스캐너 어레이를 정비한다';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      '어레이가 우수한 소재로 재건되었다. 세계를 탐색하고 분석하는 능력이 크게 향상되었다.';

  @override
  String get event_voidWhaleCalf_title => '허공 고래의 새끼';

  @override
  String get event_voidWhaleCalf_narrative =>
      '에너지와 별먼지로 이루어진 생명체 \'우주 고래\'의 유체가 함선을 따라오고 있다. 무리에서 길을 잃은 것 같으며, 엔진의 이온 흔적을 먹으려 하는데 그것이 유체를 병들게 하고 있다.';

  @override
  String get event_voidWhaleCalf_choice0_text => '엔진 출력을 고래 울음소리처럼 조정한다';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      '유체가 반응했다! 무리를 찾을 때까지 따라왔다. 어미 고래들이 감사의 표시로 선체를 어루만지며 지나가면서 방어막을 강화하는 생물 발광 광물 코팅을 남겼다.';

  @override
  String get event_voidWhaleCalf_choice1_text => '저출력 견인 빔으로 부드럽게 밀어낸다';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      '유체가 낙담하여 점점 멀어졌다. 함선에는 더 안전하지만, 승무원들은 죄책감을 느꼈다.';

  @override
  String get event_subspaceReef_title => '부공간 암초';

  @override
  String get event_subspaceReef_narrative =>
      '부공간 구조에 날카로운 주름이 가득한 공간으로 진입했다. 항행하는 것은 산호초 사이로 범선을 모는 것과 같다. 아름답지만, 한 번의 실수가 선체를 찢는다.';

  @override
  String get event_subspaceReef_choice0_text => '최저 속도로 통과한다';

  @override
  String get event_subspaceReef_choice0_outcome =>
      '느리고 고통스러운 통과였다. 최악은 피했지만, 끊임없는 항로 수정이 항법 컴퓨터를 소진시켰다.';

  @override
  String get event_subspaceReef_choice1_text => '스캐너로 경로를 설정하고 밀어붙인다';

  @override
  String get event_subspaceReef_choice1_outcome =>
      '스캐너가 한계까지 혹사당했다. 빠르게 통과했지만, 부공간 파동의 강도에 센서 어레이가 타버렸다.';

  @override
  String get event_alienTrader_title => '떠도는 상인';

  @override
  String get event_alienTrader_narrative =>
      '낯선 설계의 함선이 옆에 표류하며 모든 주파수로 교신을 보내왔다. 문명과 문명 사이의 공간을 누비는 떠도는 상인이다. 자원을 대가로 수리와 보급품을 제공한다. 화물칸에서 이국적인 기술의 웅웅거림이 느껴진다.';

  @override
  String get ui_event_enterTrade => '거래 시작';

  @override
  String get ui_trader_title => '외계 상인';

  @override
  String get ui_trader_shipSystems => '함선 시스템';

  @override
  String get ui_trader_payWith => '결제 수단';

  @override
  String get ui_trader_leaveTrader => '거래 종료';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => '관대한 분위기';

  @override
  String get ui_trader_moodFair => '공정한 거래';

  @override
  String get ui_trader_moodHard => '강경한 협상';

  @override
  String get ui_trader_probes => '탐사선';

  @override
  String get ui_trader_fuel => '연료';

  @override
  String get ui_trader_energy => '에너지';

  @override
  String get ui_trader_colonists => '식민지 개척자';

  @override
  String get ui_trader_culture => '문화';

  @override
  String get ui_trader_tech => '기술';

  @override
  String get ui_trader_greeting => '무엇을 제공할 수 있나, 인간이여?';

  @override
  String get ui_codex_title => '코덱스';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total 발견됨';
  }

  @override
  String get ui_codex_surfaceFeatures => '표면 특징';

  @override
  String get ui_codex_moonTypes => '위성 유형';

  @override
  String get ui_codex_ringTypes => '고리 유형';

  @override
  String get ui_codex_locked => '이 특징을 가진 행성에 착륙하면 효과가 공개됩니다.';

  @override
  String ui_codex_synergy(String features) {
    return '시너지: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => '펄서 등대';

  @override
  String get event_pulsarLighthouse_narrative =>
      '회전하는 중성자별이 우주의 등대처럼 허공을 빔으로 쓸고 있다. 펄서의 규칙적인 맥동은 정밀한 시간 데이터를 담고 있어 스캐너를 놀라운 정확도로 재보정할 수 있다 — 하지만 빔에 맞추려면 강렬한 방사선에 함선을 노출해야 한다.';

  @override
  String get event_pulsarLighthouse_choice0 => '맥동에 맞춰 스캐너를 보정한다';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      '스캐너 어레이가 펄서 신호를 흡수하며 상상도 못한 정밀도로 재보정됐다. 하지만 방사선의 대가는 현실적이었다 — 노출 구역의 냉동포드 여러 개가 손상되고, 소수의 식민자들이 피폭을 견디지 못했다.';

  @override
  String get event_pulsarLighthouse_choice1 => '차폐하고 안전한 거리에서 통과한다';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      '펄서로부터 넉넉한 거리를 두고 안전한 궤도를 유지하기 위해 추가 연료를 소모했다. 승무원들은 필터가 달린 관측창을 통해 회전하는 빔을 지켜봤다 — 아름답지만 멀었다.';

  @override
  String get event_alienNursery_title => '외계 보육실';

  @override
  String get event_alienNursery_narrative =>
      '거대한 유기 구조물이 허공을 떠돌고 있다 — 외계 유생을 부화시키는 생물학적 보육실이다. 생명유지장치가 고장 나고 내부 온도가 떨어지고 있다. 안의 생물들이 죽어가고 있다. 바이오스캐너로 이 구조물에서 막대한 것을 배울 수 있지만, 개입하면 미지의 병원체에 에어록을 여는 셈이다.';

  @override
  String get event_alienNursery_choice0 => '생명유지장치 안정화를 돕는다';

  @override
  String get event_alienNursery_outcome0 =>
      '엔지니어들이 보육실에 임시 열 연결을 구축하여 부화실을 안정시켰다. 바이오스캐너 데이터는 경이로웠다 — 완전히 새로운 생명 분류 체계였다. 하지만 우려대로 외계 미생물이 함선에 침투했다. 의료팀이 확산을 억제했지만, 몇몇 식민자가 먼저 쓰러진 뒤였다.';

  @override
  String get event_alienNursery_choice1 => '건드리지 않고 남겨둔다';

  @override
  String get event_alienNursery_outcome1 =>
      '예의를 갖춘 거리에서 관찰하며 수동 스캔으로 기록할 수 있는 것을 기록했다. 보육실은 계속 표류하며 운명은 불확실하다. 승무원들은 생명의 나약함에 대해 — 외계 생명조차도 — 그리고 우리가 짊어진 선택의 무게에 대해 성찰했다.';

  @override
  String get event_derelictArmada_title => '유기된 함대';

  @override
  String get event_derelictArmada_narrative =>
      '수백 척의 고대 전함이 허공에 정지해 있다 — 잊혀진 전쟁의 묘지다. 선체에는 정체불명의 무기 흔적이 새겨져 있지만, 구조 재료와 탑재 데이터베이스는 헤아릴 수 없는 가치가 있을 수 있다. 문제는 무엇을 우선할 것인가 — 물리적 인양인가 지식인가.';

  @override
  String get event_derelictArmada_choice0 => '무기 기술과 장갑판을 인양한다';

  @override
  String get event_derelictArmada_outcome0 =>
      '인양팀이 외계 전함을 절개하여 우리보다 수 세기 앞선 이국적 합금과 건조 기술을 추출했다. 건설팀은 새 재료를 열정적으로 통합했다. 하지만 한 척은 보기만큼 죽어있지 않았다 — 추출 도중 부비트랩이 폭발하여 인양 대원이 목숨을 잃었다.';

  @override
  String get event_derelictArmada_choice1 => '역사 아카이브를 다운로드한다';

  @override
  String get event_derelictArmada_outcome1 =>
      '데이터 코어에 집중하여 수 세기에 걸친 외계 역사, 예술, 과학, 철학을 신중히 추출했다. 문화 아카이브만으로도 학자들이 세대에 걸쳐 연구할 분량이다. 기술적 통찰은 당장 실용적이진 않지만, 우리의 이해를 진전시키는 공학 원리를 드러냈다.';

  @override
  String get event_alienQuarantineZone_title => '외계 격리 구역';

  @override
  String get event_alienQuarantineZone_narrative =>
      '십수 개 외계 언어로 된 경고 비콘이 밀봉된 우주 영역의 경계를 표시하고 있다. 내부에 봉인된 것은 여러 문명이 협력하여 격리할 만큼 위험한 것이었다. 장거리 스캔이 내부에서 거대한 기술 신호를 감지한다 — 그리고 살아 있을지 모르는 무언가도.';

  @override
  String get event_alienQuarantineZone_choice0 => '격리를 돌파하고 조사한다';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      '경고 부표를 지나 격리 구역으로 진입했다. 내부에는 경이로운 복잡성의 연구 시설이 — 그리고 그것이 연구하던 것의 잔해가 있었다. 회수한 기술은 혁명적이지만 생물학적 오염이 심각했다. 구역을 벗어나기 전 수십 명의 식민자가 쓰러졌다.';

  @override
  String get event_alienQuarantineZone_choice1 => '격리를 존중한다';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      '경고 비콘 자체를 연구했다. 그것을 설치한 문명들의 항법 데이터와 대기 측정값이 담겨 있었다. 내부의 보물은 아니지만 무언가는 얻었다 — 그리고 그들이 가둔 것을 풀어놓지도 않았다.';

  @override
  String get event_hydroponicsBlight_title => '수경 재배 역병';

  @override
  String get event_hydroponicsBlight_narrative =>
      '빠르게 퍼지는 곰팡이 역병이 함선의 수경 재배실을 감염시켰다. 눈앞에서 작물 전체가 시들어가고 있다. 역병은 아직 종자 비축분에 도달하지 않았지만 몇 시간 문제다. 재배실을 정화하고 처음부터 다시 심거나, 현재 수확을 살릴 수도 있는 실험적 항진균 처리를 시도할 수 있다 — 혹은 오염을 더 퍼뜨리거나.';

  @override
  String get event_hydroponicsBlight_choice0 => '정화하고 종자 비축분으로 재식재한다';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      '수경 재배실을 진공에 노출시켜 역병과 모든 살아있는 식물을 죽였다. 종자 비축분으로 재식재하는 데 수 주가 걸릴 것이고, 신선한 식량과 정원 공간에 의존하던 문화 프로그램은 중단된다. 하지만 감염은 억제됐다.';

  @override
  String get event_hydroponicsBlight_choice1 => '실험적 치료를 시도한다';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      '실험적 항진균제가 처음에는 가능성을 보였지만 내성 변종이 돌파했다. 전면 정화에 나설 때쯤 역병은 냉동포드 영양 라인까지 퍼져 있었다. 처음부터 단호하게 행동했을 때보다 피해가 더 컸다.';
}
