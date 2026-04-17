// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get ui_title_stellar => 'TINH CẦU';

  @override
  String get ui_title_broadcast => 'TÍN HIỆU';

  @override
  String get ui_title_beginVoyage => 'BẮT ĐẦU HÀNH TRÌNH';

  @override
  String get ui_title_dailyVoyage => 'HÀNH TRÌNH HẰNG NGÀY';

  @override
  String get ui_title_dailyCompleted => 'ĐÃ HOÀN THÀNH';

  @override
  String get ui_title_customSeed => 'MÃ TÙY CHỈNH';

  @override
  String get ui_title_legacyHub => 'DI SẢN';

  @override
  String get ui_title_cancel => 'HỦY';

  @override
  String get ui_title_startVoyage => 'KHỞI HÀNH';

  @override
  String get ui_title_seedInvalid =>
      'Mã hạt giống không hợp lệ. Chỉ sử dụng A–Z và 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'KV $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'MÃ: $code';
  }

  @override
  String get ui_voyage_scanners => 'MÁY QUÉT';

  @override
  String get ui_voyage_scanPlanet => 'QUÉT HÀNH TINH';

  @override
  String get ui_voyage_noEnergy => 'HẾT NĂNG LƯỢNG';

  @override
  String get ui_voyage_pressOn => 'TIẾN LÊN';

  @override
  String get ui_voyage_systemHull => 'Vỏ Tàu';

  @override
  String get ui_voyage_systemNav => 'Dẫn Đường';

  @override
  String get ui_voyage_systemCryopods => 'Buồng Đông Lạnh';

  @override
  String get ui_voyage_systemCulture => 'Văn Hóa';

  @override
  String get ui_voyage_systemTech => 'Công Nghệ';

  @override
  String get ui_voyage_systemConstruct => 'Xây Dựng';

  @override
  String get ui_voyage_systemShields => 'Khiên';

  @override
  String get ui_voyage_systemLanding => 'Hạ Cánh';

  @override
  String get ui_voyage_scannerAtmo => 'Quét Khí Quyển';

  @override
  String get ui_voyage_scannerGrav => 'Quét Trọng Lực';

  @override
  String get ui_voyage_scannerMineral => 'Quét Khoáng Sản';

  @override
  String get ui_voyage_scannerLife => 'Quét Sự Sống';

  @override
  String get ui_voyage_scannerTemp => 'Quét Nhiệt Độ';

  @override
  String get ui_voyage_scannerWater => 'Quét Nước';

  @override
  String get ui_voyage_narrative0 =>
      'Quỹ đạo Trái Đất thông suốt. Buồng đông lạnh ổn định. Vòng lưu trữ an toàn.';

  @override
  String get ui_voyage_narrative1 =>
      'Hành trình ngoại hệ bình thường. Máy quét tầm xa mở rộng phạm vi tìm kiếm.';

  @override
  String get ui_voyage_narrative2 =>
      'Tín hiệu từ Trái Đất đã mờ dần dưới ngưỡng phát hiện.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Tọa độ lưu trữ trùng khớp với hệ sao được đánh dấu. Điều chỉnh hướng bay.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Mảng máy quét vẫn đang hiệu chỉnh cho độ phân giải không gian sâu.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Hệ sao đã đánh dấu phía trước. Dữ liệu khảo sát trước đó vẫn nhất quán.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Tín hiệu mờ phía trước. Bắt đầu quét hành tinh.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Thoát FTL hoàn tất. Hệ sao mới hiện ra trước mắt.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Khoang buồng đông lạnh ổn định. Đang quét khu vực.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Hành tinh mới đang hiện rõ trên mảng cảm biến phía trước.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Bản đồ sao đánh dấu một ứng viên khả thi.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Thiết bị đã tìm thấy một thế giới đáng để đo đạc.';

  @override
  String get ui_voyage_narrativePhrase6 => 'Máy quét đã khóa mục tiêu mới.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Hải đồ được làm mới. Thế giới ứng viên trong tầm.';

  @override
  String get ui_scan_landHere => 'HẠ CÁNH TẠI ĐÂY';

  @override
  String get ui_scan_pressOn => 'TIẾN LÊN';

  @override
  String get ui_scan_allStatsVerified => 'TẤT CẢ CHỈ SỐ ĐÃ XÁC NHẬN';

  @override
  String get ui_scan_launchProbe => 'PHÓNG ĐẦU DÒ';

  @override
  String get ui_scan_habitability => 'KHẢ NĂNG SINH SỐNG';

  @override
  String get ui_scan_statAtmos => 'KHÍ QUYỂN';

  @override
  String get ui_scan_statTemp => 'NHIỆT ĐỘ';

  @override
  String get ui_scan_statWater => 'NƯỚC';

  @override
  String get ui_scan_statResource => 'TÀI NGUYÊN';

  @override
  String get ui_scan_statGravity => 'TRỌNG LỰC';

  @override
  String get ui_scan_statBio => 'SINH HỌC';

  @override
  String get ui_scan_statAnomaly => 'DỊ THƯỜNG';

  @override
  String get ui_scan_statRadiation => 'BỨC XẠ';

  @override
  String ui_scan_probesCount(int count) {
    return 'ĐẦU DÒ: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'SỰ KHÔNG CHẮC CHẮN: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'PHÂN TÍCH HÀNH TINH';

  @override
  String get ui_landing_shipStatus => 'TRẠNG THÁI TÀU';

  @override
  String ui_landing_fuel(int amount) {
    return 'NHIÊN LIỆU: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'CẢNH BÁO NHIÊN LIỆU THẤP';

  @override
  String get ui_landing_landingRiskCritical => 'RỦI RO HẠ CÁNH: NGHIÊM TRỌNG';

  @override
  String get ui_landing_landingRiskElevated => 'RỦI RO HẠ CÁNH: CAO';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Hệ thống hạ cánh hư hại nặng. Tiến nhập khí quyển có thể phá hủy hàng hóa và dân di cư.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Hệ thống hạ cánh suy giảm. Dự kiến tiến nhập khí quyển khắc nghiệt với khả năng hư hại hệ thống.';

  @override
  String get ui_landing_riskAssessment => 'ĐÁNH GIÁ RỦI RO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Tàu có thể chịu thêm ~$remaining cuộc chạm trán nữa';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Tàu có thể không sống sót qua chuyến hành trình tiếp theo';

  @override
  String get ui_landing_surfaceFeatures => 'ĐẶC ĐIỂM BỀ MẶT';

  @override
  String get ui_landing_nameYourColony => 'ĐẶT TÊN THUỘC ĐỊA';

  @override
  String get ui_landing_establishColony => 'THIẾT LẬP THUỘC ĐỊA';

  @override
  String get ui_landing_pressOnward => 'TIẾN VỀ PHÍA TRƯỚC';

  @override
  String get ui_landing_statAtmosphere => 'Khí Quyển';

  @override
  String get ui_landing_statTemperature => 'Nhiệt Độ';

  @override
  String get ui_landing_statWater => 'Nước';

  @override
  String get ui_landing_statResources => 'Tài Nguyên';

  @override
  String get ui_landing_statGravity => 'Trọng Lực';

  @override
  String get ui_landing_statBiodiversity => 'Đa Dạng Sinh Học';

  @override
  String get ui_landing_statAvgHealth => 'Sức Khỏe TB';

  @override
  String get ui_landing_statHull => 'Vỏ Tàu';

  @override
  String get ui_landing_statNavigation => 'Dẫn Đường';

  @override
  String get ui_landing_statCryopods => 'Buồng Đông Lạnh';

  @override
  String get ui_landing_statCulture => 'Văn Hóa';

  @override
  String get ui_landing_statTech => 'Công Nghệ';

  @override
  String get ui_landing_statConstructors => 'Máy Xây Dựng';

  @override
  String get ui_landing_statShields => 'Khiên';

  @override
  String get ui_landing_statLandingSys => 'Hệ Thống Hạ Cánh';

  @override
  String get ui_ending_colonyEstablished => 'THUỘC ĐỊA ĐÃ THIẾT LẬP';

  @override
  String get ui_ending_colonyScore => 'ĐIỂM THUỘC ĐỊA';

  @override
  String get ui_ending_colonyProfile => 'HỒ SƠ THUỘC ĐỊA';

  @override
  String get ui_ending_landscape => 'CẢNH QUAN';

  @override
  String get ui_ending_voyageRecord => 'NHẬT KÝ HÀNH TRÌNH';

  @override
  String get ui_ending_scoreBreakdown => 'CHI TIẾT ĐIỂM';

  @override
  String get ui_ending_total => 'TỔNG';

  @override
  String get ui_ending_achievementsUnlocked => 'THÀNH TỰU ĐÃ MỞ KHÓA';

  @override
  String get ui_ending_challengeFriend => 'THÁCH ĐẤU BẠN BÈ';

  @override
  String get ui_ending_shareCard => 'THẺ CHIA SẺ';

  @override
  String get ui_ending_shareCardDialogTitle => 'Chia sẻ hành trình của bạn';

  @override
  String get ui_ending_shareCardShare => 'CHIA SẺ';

  @override
  String get ui_ending_shareCardCancel => 'HỦY BỎ';

  @override
  String get ui_ending_copySeed => 'SAO CHÉP MÃ';

  @override
  String get ui_ending_viewLegacy => 'XEM DI SẢN';

  @override
  String get ui_ending_newVoyage => 'HÀNH TRÌNH MỚI';

  @override
  String get ui_ending_achievementFirstLanding => 'Hạ Cánh Đầu Tiên';

  @override
  String get ui_ending_achievementGoldenAge => 'Thời Đại Hoàng Kim';

  @override
  String get ui_ending_achievementSurvivor => 'Người Sống Sót';

  @override
  String get ui_ending_achievementExplorer => 'Nhà Thám Hiểm';

  @override
  String get ui_ending_achievementPerfectionist => 'Người Hoàn Hảo';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Sống Sót Thế Giới Chết';

  @override
  String get ui_ending_achievementFullCrew => 'Đầy Đủ Phi Hành Đoàn';

  @override
  String get ui_ending_achievementProbeMaster => 'Bậc Thầy Đầu Dò';

  @override
  String get ui_ending_achievementIronHull => 'Vỏ Thép';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Bước Nhảy Niềm Tin';

  @override
  String get ui_gameOver_missionFailed => 'NHIỆM VỤ THẤT BẠI';

  @override
  String get ui_gameOver_voyageRecord => 'NHẬT KÝ HÀNH TRÌNH';

  @override
  String get ui_gameOver_encountersSurvived => 'SỐ CUỘC CHẠM TRÁN ĐÃ SỐNG SÓT';

  @override
  String get ui_gameOver_probesRemaining => 'ĐẦU DÒ CÒN LẠI';

  @override
  String get ui_gameOver_colonistsRemaining => 'DÂN DI CƯ CÒN LẠI';

  @override
  String get ui_gameOver_finalShipHealth => 'SỨC KHỎE TÀU CUỐI CÙNG';

  @override
  String get ui_gameOver_planetsSkipped => 'HÀNH TINH ĐÃ BỎ QUA';

  @override
  String get ui_gameOver_damageTaken => 'SÁT THƯƠNG ĐÃ NHẬN';

  @override
  String get ui_gameOver_fuelRemaining => 'NHIÊN LIỆU CÒN LẠI';

  @override
  String get ui_gameOver_energyRemaining => 'NĂNG LƯỢNG CÒN LẠI';

  @override
  String get ui_gameOver_challengeFriend => 'THÁCH ĐẤU BẠN BÈ';

  @override
  String get ui_gameOver_viewLegacy => 'XEM DI SẢN';

  @override
  String get ui_gameOver_newVoyage => 'HÀNH TRÌNH MỚI';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 TÍN HIỆU TINH CẦU\n\nTôi đã không sống sót... $reason.\nBạn nghĩ mình làm tốt hơn trên cùng hành trình?\nstellarbroadcast://play?seed=$seedCode\n\nChưa có ứng dụng?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Người di cư cuối cùng đã chết trong giấc ngủ đông lạnh — một sự cố dây chuyền mà không quy trình khẩn cấp nào có thể ngăn chặn. Con tàu Exodus tiếp tục lướt đi, một con tàu ma chỉ mang theo hệ thống tự động và sự im lặng đóng băng. Nhiệm vụ của nó không thất bại trong khoảnh khắc thảm họa, mà trong sự hao mòn chậm rãi của sinh mạng con người, từng người một, cho đến khi không còn ai.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Vỏ tàu đã nhượng bộ trong im lặng — mỏi kim loại cộng dồn bởi vô số va chạm vi mô cho đến khi con tàu không thể giữ nguyên vẹn. Bầu khí quyển rỉ ra khoảng không. Con tàu thuộc địa Exodus vỡ tan, mảnh vỡ hòa vào những trường mảnh vụn cổ xưa giữa các vì sao. Không tín hiệu cầu cứu nào từng được nhận.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Không có hệ thống dẫn đường, Exodus trôi dạt vào không gian chưa được khám phá — bản đồ sao vô dụng, hiệu chỉnh hướng bay bất khả. Con tàu lướt đi trong bóng tối, hành khách đang ngủ không biết rằng đích đến của họ đã bị thay thế bằng vĩnh hằng. Có người nói con tàu vẫn đang trôi, một bóng ma giữa đêm vô tận.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Từng chiếc một, các buồng đông lạnh hỏng — một chuỗi sự cố mà không quy trình khẩn cấp nào có thể ngăn. Những người di cư không bao giờ thức dậy. Exodus tiếp tục trên hành trình đã lập trình, một con tàu mộ phần chỉ mang theo sự tĩnh lặng đến bất kỳ thế giới nào nó cuối cùng sẽ đến. Một tượng đài cho giấc mơ đã chết trong giấc ngủ đóng băng.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Exodus chìm vào im lặng. Nhiệm vụ của nó, phi hành đoàn, hàng hóa hy vọng của nhân loại — tất cả đã mất vào sự bao la thờ ơ giữa các vì sao. Có lẽ một ngày nào đó, một nền văn minh khác sẽ tìm thấy xác tàu và tự hỏi loài nào dũng cảm dám vượt qua khoảng trống vũ trụ.';

  @override
  String get ui_settings_title => 'CÀI ĐẶT';

  @override
  String get ui_settings_music => 'NHẠC';

  @override
  String get ui_settings_soundEffects => 'HIỆU ỨNG ÂM THANH';

  @override
  String get ui_settings_haptics => 'RUNG PHẢN HỒI';

  @override
  String get ui_settings_premium => 'CAO CẤP';

  @override
  String get ui_settings_goPremium => 'Nâng Cấp Cao Cấp';

  @override
  String get ui_settings_enabled => 'Đã Bật';

  @override
  String get ui_settings_volume => 'Âm Lượng';

  @override
  String get ui_settings_language => 'Ngôn ngữ';

  @override
  String get ui_settings_systemDefault => 'Mặc định hệ thống';

  @override
  String get ui_settings_statsPosition => 'Số liệu thống kê & vị trí nút';

  @override
  String get ui_settings_statsLeft => 'BÊN TRÁI';

  @override
  String get ui_settings_statsRight => 'PHẢI';

  @override
  String get ui_legacy_title => 'DI SẢN';

  @override
  String get ui_legacy_commanderStats => 'THỐNG KÊ CHỈ HUY';

  @override
  String get ui_legacy_highScores => 'ĐIỂM CAO';

  @override
  String get ui_legacy_upgrades => 'NÂNG CẤP';

  @override
  String get ui_legacy_achievements => 'THÀNH TỰU';

  @override
  String get ui_legacy_voyageLog => 'NHẬT KÝ HÀNH TRÌNH';

  @override
  String get ui_legacy_voyages => 'HÀNH TRÌNH';

  @override
  String get ui_legacy_bestScore => 'ĐIỂM CAO NHẤT';

  @override
  String get ui_legacy_legacyPts => 'ĐIỂM DI SẢN';

  @override
  String get ui_legacy_completed => 'ĐÃ HOÀN THÀNH';

  @override
  String get ui_legacy_notYetPlayed => 'CHƯA CHƠI';

  @override
  String get ui_legacy_dailyHistory => 'LỊCH SỬ HẰNG NGÀY';

  @override
  String get ui_premium_goPremium => 'NÂNG CẤP CAO CẤP';

  @override
  String get ui_premium_subtitle => 'Hỗ trợ sứ mệnh. Nâng cấp quyền chỉ huy.';

  @override
  String get ui_premium_removeAds => 'Xóa quảng cáo vĩnh viễn';

  @override
  String get ui_premium_supportIndie => 'Hỗ trợ nhà phát triển độc lập';

  @override
  String get ui_premium_exclusiveTitle => 'Danh hiệu chỉ huy độc quyền';

  @override
  String get ui_premium_priorityFeatures => 'Yêu cầu tính năng ưu tiên';

  @override
  String get ui_premium_lifetime => 'Trọn Đời';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'NÂNG CẤP MÁY QUÉT';

  @override
  String get ui_scannerUpgrade_subtitle => 'Chọn máy quét để nâng cấp';

  @override
  String get ui_scannerUpgrade_skip => 'BỎ QUA';

  @override
  String get ui_scannerUpgrade_max => 'TỐI ĐA';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Khí Quyển';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Trọng Lực';

  @override
  String get ui_scannerUpgrade_mineral => 'Khoáng Sản';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Dấu Hiệu Sự Sống';

  @override
  String get ui_scannerUpgrade_temperature => 'Nhiệt Độ';

  @override
  String get ui_scannerUpgrade_water => 'Nước';

  @override
  String get ui_event_continue => 'TIẾP TỤC';

  @override
  String get ui_event_tapToSkip => 'CHẠM ĐỂ BỎ QUA';

  @override
  String get ui_event_colonists => 'DÂN DI CƯ';

  @override
  String get ui_event_landing => 'HẠ CÁNH';

  @override
  String get ui_event_atmScan => 'QUÉT KHÍ QUYỂN';

  @override
  String get ui_event_gravScan => 'QUÉT TRỌNG LỰC';

  @override
  String get ui_event_minScan => 'QUÉT KHOÁNG SẢN';

  @override
  String get ui_event_lifeScan => 'QUÉT SỰ SỐNG';

  @override
  String get ui_event_tempScan => 'QUÉT NHIỆT ĐỘ';

  @override
  String get ui_event_h2oScan => 'QUÉT H2O';

  @override
  String get onboarding_page0_title => 'Hy Vọng Cuối Cùng Của Nhân Loại';

  @override
  String get onboarding_page0_description =>
      'Trái Đất đang hấp hối. Các chính phủ trên toàn thế giới đã dồn hết nguồn lực cuối cùng để chế tạo một con tàu duy nhất — một tàu thuộc địa mang theo tàn dư của nhân loại vào giữa các vì sao.';

  @override
  String get onboarding_page1_title => 'Tìm Kiếm Quê Hương Mới';

  @override
  String get onboarding_page1_description =>
      'Điều hướng qua khoảng không chưa từng được khám phá giữa các vì sao. Quét các thế giới xa lạ, đối mặt hiểm họa vũ trụ, và đưa ra những lựa chọn bất khả.';

  @override
  String get onboarding_page2_title => 'Di Sản Của Bạn Trường Tồn';

  @override
  String get onboarding_page2_description =>
      'Mỗi hành trình dạy nhân loại điều gì đó mới. Tích lũy Điểm Di Sản để mở khóa nâng cấp vĩnh viễn, và khắc tên bạn vào các vì sao.';

  @override
  String get onboarding_page3_title => 'Quyền Riêng Tư, Lựa Chọn Của Bạn';

  @override
  String get onboarding_page3_description =>
      'Chọn cách bạn muốn trải nghiệm Tín Hiệu Tinh Cầu.';

  @override
  String get planet_tierUtopia => 'Không Tưởng';

  @override
  String get planet_tierParadise => 'Thiên Đường';

  @override
  String get planet_tierHabitable => 'Có Thể Sinh Sống';

  @override
  String get planet_tierHarsh => 'Khắc Nghiệt';

  @override
  String get planet_tierHostile => 'Thù Địch';

  @override
  String get planet_tierDeathWorld => 'Thế Giới Chết';

  @override
  String get planet_featurePlantLife => 'Thực Vật';

  @override
  String get planet_featureEdiblePlants => 'Thực Vật Ăn Được';

  @override
  String get planet_featurePoisonousPlants => 'Thực Vật Độc';

  @override
  String get planet_featureUnicellularLife => 'Sinh Vật Đơn Bào';

  @override
  String get planet_featureDangerousFauna => 'Động Vật Nguy Hiểm';

  @override
  String get planet_featureTameableFauna => 'Động Vật Thuần Hóa Được';

  @override
  String get planet_featureAirtightCaves => 'Hang Kín Khí';

  @override
  String get planet_featureInsulatedCaves => 'Hang Cách Nhiệt';

  @override
  String get planet_featureBarrenMoon => 'Mặt Trăng Cằn Cỗi';

  @override
  String get planet_featureMetalRichMoon => 'Mặt Trăng Giàu Kim Loại';

  @override
  String get planet_featureUnstableMoon => 'Mặt Trăng Bất Ổn';

  @override
  String get planet_featureOutstandingBeauty => 'Vẻ Đẹp Phi Thường';

  @override
  String get planet_featureOutstandingUgliness => 'Xấu Xí Phi Thường';

  @override
  String get planet_featureAncientRuins => 'Phế Tích Cổ Đại';

  @override
  String get planet_featureMonuments => 'Tượng Đài';

  @override
  String get planet_featureRapidRotation => 'Tự Quay Nhanh';

  @override
  String get planet_featureSlowRotation => 'Tự Quay Chậm';

  @override
  String get planet_featureVolcanicActivity => 'Hoạt Động Núi Lửa';

  @override
  String get planet_featureTectonicInstability => 'Bất Ổn Kiến Tạo';

  @override
  String get planet_featureElectricalStorms => 'Bão Điện';

  @override
  String get planet_featureToxicSpores => 'Bào Tử Độc';

  @override
  String get planet_featureDeepOceans => 'Đại Dương Sâu';

  @override
  String get planet_featureGeothermalVents => 'Miệng Phun Địa Nhiệt';

  @override
  String get planet_featureStrongMagnetosphere => 'Từ Quyển Mạnh';

  @override
  String get planet_featureWeakMagnetosphere => 'Từ Quyển Yếu';

  @override
  String get planet_featureMegafauna => 'Siêu Động Vật';

  @override
  String get planet_featureSymbioticOrganisms => 'Sinh Vật Cộng Sinh';

  @override
  String get planet_featureGravityWells => 'Giếng Trọng Lực';

  @override
  String get planet_featureSubspaceEchoes => 'Tiếng Vọng Không Gian Con';

  @override
  String get planet_featureBioluminescentLife => 'Sinh Vật Phát Quang';

  @override
  String get planet_featureAquaticMegafauna => 'Siêu Động Vật Dưới Nước';

  @override
  String get planet_featureFloatingIslands => 'Đảo Nổi';

  @override
  String get planet_featureCrystalCaverns => 'Hang Động Pha Lê';

  @override
  String get planet_featureLavaTubes => 'Đường Hầm Dung Nham';

  @override
  String get planet_featureIceTunnels => 'Đường Hầm Băng';

  @override
  String get planet_featureOrbitalWreckage => 'Tàn Tích Quỹ Đạo';

  @override
  String get planet_featureMegastructuralFragments => 'Mảnh Vỡ Siêu Công Trình';

  @override
  String get planet_featureAncientObservatory => 'Đài Thiên Văn Cổ Đại';

  @override
  String get planet_featureExtremeSeasons => 'Mùa Khắc Nghiệt';

  @override
  String get planet_featureCryovolcanism => 'Núi Lửa Băng Giá';

  @override
  String get planet_featureFloatingKelpForests => 'Rừng Tảo Bẹ Nổi';

  @override
  String get planet_featureSingingCrystals => 'Tinh Thể Ca Hát';

  @override
  String get planet_featureFertileSoil => 'Đất Phì Nhiêu';

  @override
  String get planet_featureHelium3Deposits => 'Mỏ Heli-3';

  @override
  String get planet_featureExoticIsotopes => 'Đồng Vị Kỳ Lạ';

  @override
  String get planet_featureMedicinalFlora => 'Thực Vật Dược Liệu';

  @override
  String get planet_featurePerpetualAurora => 'Cực quang vĩnh cửu';

  @override
  String get planet_featurePetrifiedMegaflora => 'Megaflora hóa đá';

  @override
  String get planet_featureUndergroundRivers => 'Sông ngầm';

  @override
  String get planet_featureObsidianPlains => 'Đồng bằng Obsidian';

  @override
  String get planet_featureSaltFlats => 'Cánh đồng muối';

  @override
  String get planet_featureCarnivorousFlora => 'Hệ thực vật ăn thịt';

  @override
  String get planet_featureGhostCities => 'Thành phố ma';

  @override
  String get planet_featureArchiveVaults => 'Kho lưu trữ';

  @override
  String get planet_featureSinkholeFields => 'Cánh đồng hố sụt';

  @override
  String get planet_featureApexPredator => 'Động vật ăn thịt đỉnh cao';

  @override
  String get ui_monthJan => 'TH1';

  @override
  String get ui_monthFeb => 'TH2';

  @override
  String get ui_monthMar => 'TH3';

  @override
  String get ui_monthApr => 'TH4';

  @override
  String get ui_monthMay => 'TH5';

  @override
  String get ui_monthJun => 'TH6';

  @override
  String get ui_monthJul => 'TH7';

  @override
  String get ui_monthAug => 'TH8';

  @override
  String get ui_monthSep => 'TH9';

  @override
  String get ui_monthOct => 'TH10';

  @override
  String get ui_monthNov => 'TH11';

  @override
  String get ui_monthDec => 'TH12';

  @override
  String get event_asteroidField_title => 'Trường Tiểu Hành Tinh';

  @override
  String get event_asteroidField_narrative =>
      'Máy quét tầm xa phát hiện một trường tiểu hành tinh dày đặc ngay trên đường bay. Hệ thống dẫn đường tính toán hai phương án: lao liều qua hành lang mỏng nhất, hoặc đi vòng xa hao tốn nhiên liệu và gây áp lực lên mảng dẫn đường.';

  @override
  String get event_asteroidField_choice0_text => 'Xuyên qua hành lang';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Con tàu rung lắc khi các va chạm vi mô bắn phá vỏ tàu. Chúng tôi vượt qua, nhưng không vô sự.';

  @override
  String get event_asteroidField_choice1_text => 'Đi đường vòng an toàn';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Đường vòng đốt nhiên liệu quý giá và hao mòn máy tính dẫn đường, nhưng vỏ tàu nguyên vẹn.';

  @override
  String get event_asteroidField_choice2_text =>
      'Dùng drone khai thác để dọn đường';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Các drone tạo một kênh an toàn và thu thập khoáng sản hữu ích, nhưng hoạt động này làm kiệt khoang công nghệ.';

  @override
  String get event_asteroidField_choice3_text =>
      'Triển khai đầu dò làm mồi nhử';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Đầu dò thu hút các cụm dày đặc nhất ra xa tàu. Chúng tôi lướt qua chỉ với vài vết xước nhỏ.';

  @override
  String get event_solarFlare_title => 'Bão Lửa Mặt Trời';

  @override
  String get event_solarFlare_narrative =>
      'Một ngôi sao gần đó phun trào vật chất vành nhật hoa khổng lồ. Sóng hạt tích điện sẽ chạm tàu trong vài phút. Chúng tôi có thể chuyển năng lượng sang khiên, đưa dân di cư vào lõi tàu, hoặc chịu trận.';

  @override
  String get event_solarFlare_choice0_text =>
      'Chuyển toàn bộ năng lượng sang khiên';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Khiên trụ vững, nhưng đợt tăng năng lượng làm cháy các hệ thống phụ.';

  @override
  String get event_solarFlare_choice1_text =>
      'Di chuyển dân di cư vào lõi được bảo vệ';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Dân di cư sống sót không bị thương, nhưng các tầng bên ngoài chịu hư hại bức xạ.';

  @override
  String get event_solarFlare_choice2_text => 'Chịu trận — tất cả chuẩn bị';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Bão lửa đánh mạnh. Hệ thống nhấp nháy, nhưng không thảm khốc. Tuy nhiên, tinh thần bị ảnh hưởng.';

  @override
  String get event_solarFlare_choice3_text => 'Phóng đầu dò để đo mặt sóng';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Đầu dò truyền dữ liệu chính xác về mặt sóng, cho phép chúng tôi nghiêng tàu tối ưu. Hư hại máy quét là tối thiểu.';

  @override
  String get event_nebulaPassage_title => 'Xuyên Qua Tinh Vân';

  @override
  String get event_nebulaPassage_narrative =>
      'Một tinh vân phát sáng trải dài trên đường bay. Đi xuyên qua có thể nạp lại pin năng lượng nhưng có thể gây nhiễu mảng máy quét. Đi vòng thì an toàn nhưng chậm.';

  @override
  String get event_nebulaPassage_choice0_text => 'Bay xuyên qua tinh vân';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Khí ion hóa của tinh vân nạp lại pin năng lượng nhưng làm rối loạn hiệu chỉnh máy quét.';

  @override
  String get event_nebulaPassage_choice1_text => 'Đi sát rìa';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Chúng tôi được nạp một phần với nhiễu tối thiểu. Một giải pháp thỏa hiệp an toàn.';

  @override
  String get event_microMeteorite_title => 'Bão Vi Thiên Thạch';

  @override
  String get event_microMeteorite_narrative =>
      'Một đàn vi thiên thạch, vô hình cho đến vài giây trước, đang xé nát lớp giáp vỏ phía trước. Đội kiểm soát thiệt hại đang chạy đua.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Xoay khẩn cấp — đưa đuôi bọc giáp ra trước';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Thao tác thành công. Giáp đuôi hấp thụ phần tệ nhất, nhưng con quay hồi chuyển dẫn đường phản ứng dữ dội.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Triển khai drone sửa chữa giữa bão';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drone vá vỏ tàu theo thời gian thực nhưng mất nhiều chiếc. Dự trữ công nghệ bị kiệt.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Kích nổ đầu dò để phân tán đàn';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Vụ nổ của đầu dò phân tán cụm vi thiên thạch. Chỉ vài mảnh chạm tới vỏ tàu.';

  @override
  String get event_gravityWell_title => 'Giếng Trọng Lực Chưa Khám Phá';

  @override
  String get event_gravityWell_narrative =>
      'Con tàu giật mạnh khi một giếng trọng lực vô hình kéo chúng tôi chệch hướng. Động cơ gắng sức chống lại lực kéo. Chúng tôi có thể đốt hết lực để thoát, hoặc dùng hiệu ứng ná bắn để tăng tốc với cái giá là áp lực kết cấu.';

  @override
  String get event_gravityWell_choice0_text => 'Đốt hết lực — thoát ra';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Động cơ gầm rú và vỏ tàu rên rỉ, nhưng chúng tôi thoát ra gọn gàng.';

  @override
  String get event_gravityWell_choice1_text => 'Dùng hiệu ứng ná bắn';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Hiệu ứng ná bắn thành công mỹ mãn. Chúng tôi tăng tốc, nhưng lực G gây áp lực lên gioăng buồng đông lạnh.';

  @override
  String get event_crewUnrest_title => 'Bất Ổn Phi Hành Đoàn';

  @override
  String get event_crewUnrest_narrative =>
      'Một nhóm dân di cư đã thức dậy thỉnh cầu Hội Đồng Quản Lý cho phép họ vĩnh viễn thoát khỏi giấc ngủ đông lạnh. Họ cho rằng sống trong trạng thái nửa đông lạnh là vô nhân đạo. Nhân viên khoang đông lạnh cảnh báo rằng đánh thức thêm miệng ăn nghĩa là đốt cháy nguồn cung.';

  @override
  String get event_crewUnrest_choice0_text => 'Cho phép rã đông tự nguyện';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Tinh thần tăng vọt khi các gia đình đoàn tụ trong thế giới thức, nhưng tiêu thụ tài nguyên tăng đột biến.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Từ chối yêu cầu — an toàn trên hết';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Dân di cư tuân thủ, nhưng oán hận âm ỉ trong các hành lang.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Thỏa hiệp — chu kỳ rã đông luân phiên';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Một giải pháp cân bằng. Mọi người đều có thời gian thức, nhưng chu kỳ buồng đông lạnh gây thêm hao mòn.';

  @override
  String get event_stowaway_title => 'Phát Hiện Kẻ Lậu Vé';

  @override
  String get event_stowaway_narrative =>
      'Kiểm toán viên Văn phòng Manifest phát hiện một người không đăng ký ẩn náu trong khoang hàng 7. Cô tự xưng là nhà di truyền học bị từ chối chỗ trên danh sách phóng. Kỹ năng của cô có thể vô giá — hoặc cô có thể là kẻ phá hoại.';

  @override
  String get event_stowaway_choice0_text =>
      'Chào đón cô — chúng tôi cần mọi bộ óc';

  @override
  String get event_stowaway_choice0_outcome =>
      'Tiến sĩ Vasquez chứng tỏ sự xuất sắc. Chuyên môn di truyền học của cô cải thiện hiệu suất buồng đông lạnh, dù một số thành viên không tin tưởng cô.';

  @override
  String get event_stowaway_choice1_text =>
      'Giam giữ cô — lòng tin phải được xây dựng';

  @override
  String get event_stowaway_choice1_outcome =>
      'Cô hợp tác từ nơi giam giữ và cuối cùng được cấp quyền truy cập hạn chế. Phi hành đoàn cảm thấy an toàn hơn.';

  @override
  String get event_stowaway_choice2_text =>
      'Đưa cô trở lại đông lạnh đến khi hạ cánh';

  @override
  String get event_stowaway_choice2_outcome =>
      'Một giải pháp thực dụng. Kỹ năng của cô được bảo tồn cho sau này, nhưng cuộc tranh luận đạo đức chia rẽ phi hành đoàn.';

  @override
  String get event_mutinyBrewing_title => 'Nổi Loạn Đang Ủ Mưu';

  @override
  String get event_mutinyBrewing_narrative =>
      'Đội Canh Gác Cầu Tàu chặn được tin nhắn từ một nhóm sĩ quan đang lên kế hoạch chiếm quyền chỉ huy và thay đổi hướng bay đến một hệ sao gần hơn, kém thích hợp hơn. Họ tin rằng hướng bay hiện tại là bản án tử hình.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Đối đầu công khai — minh bạch trên hết';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Cuộc đối đầu căng thẳng nhưng những kẻ nổi loạn rút lui khi thấy dữ liệu dẫn đường. Lòng tin bị lung lay.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Lặng lẽ điều chuyển các cầm đầu';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Âm mưu tan rã không gây xáo trộn. Một số người thắc mắc tại sao các sĩ quan được yêu mến bị chuyển đi, nhưng trật tự được duy trì.';

  @override
  String get event_culturalSchism_title => 'Phân Ly Văn Hóa';

  @override
  String get event_culturalSchism_narrative =>
      'Hai nhóm văn hóa trên tàu bất đồng dữ dội về cách thuộc địa mới nên được cai quản. Một bên đòi dân chủ trực tiếp; bên kia khăng khăng hội đồng kỹ trị. Căng thẳng đang sôi sục.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Tổ chức trưng cầu dân ý ràng buộc';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Dân chủ thắng lợi — sít sao. Bên thua miễn cưỡng chấp nhận kết quả, nhưng sự đoàn kết rất mong manh.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Áp đặt hệ thống lai — không bên nào hoàn toàn hài lòng';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Cả hai bên đều cảm thấy được lắng nghe nhưng không chiến thắng. Một nền hòa bình mong manh được duy trì.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Hoãn quyết định — tập trung sinh tồn trước';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Đẩy vấn đề về tương lai tránh được xung đột hôm nay nhưng tích tụ cho ngày mai.';

  @override
  String get event_birthInSpace_title => 'Ca Sinh Đầu Tiên Giữa Không Gian Sâu';

  @override
  String get event_birthInSpace_narrative =>
      'Bất chấp mọi quy trình, một đứa trẻ đã chào đời trên tàu — con người đầu tiên sinh ra giữa các vì sao. Sự kiện là biểu tượng mạnh mẽ, nhưng nó đặt ra câu hỏi về phân bổ tài nguyên và đạo đức của việc mang sự sống mới vào một tương lai bất định.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Ăn mừng — đây là hình hài của hy vọng';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Lễ đặt tên nâng cao tinh thần mọi trái tim trên tàu. Một đêm, các vì sao bớt lạnh lẽo. Lễ hội tạm thời gián đoạn ca trực giám sát buồng đông lạnh.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Ghi nhận lặng lẽ — tài nguyên đang eo hẹp';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Một phản ứng chừng mực. Đứa trẻ được chào đón, nhưng tâm trạng được tiết chế bởi chủ nghĩa thực dụng.';

  @override
  String get event_derelictShip_title => 'Tàu Thuộc Địa Bỏ Hoang';

  @override
  String get event_derelictShip_narrative =>
      'Máy quét phát hiện một con tàu bỏ hoang trôi dạt trong hư không — một tàu thuộc địa khác, được phóng nhiều năm trước tàu chúng tôi. Nó tối tăm và im lặng. Có thể có đồ cứu hộ, người sống sót, hoặc tệ hơn.';

  @override
  String get event_derelictShip_choice0_text => 'Lên tàu và cứu vớt';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Đội lên tàu thu hồi tấm vỏ và module công nghệ nguyên vẹn. Không người sống sót. Nhật ký kể một câu chuyện ảm đạm.';

  @override
  String get event_derelictShip_choice1_text => 'Quét từ xa — đừng mạo hiểm';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Quét từ xa cung cấp dữ liệu dẫn đường hữu ích nhưng không có vật liệu cứu vớt. Phi hành đoàn ngủ yên tâm hơn.';

  @override
  String get event_derelictShip_choice2_text =>
      'Phát tín hiệu tưởng niệm và tiến lên';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Một khoảnh khắc im lặng dành cho những người đã mất. Phi hành đoàn trầm ngâm nhưng đoàn kết trong mục tiêu.';

  @override
  String get event_alienProbe_title => 'Đầu Dò Ngoài Hành Tinh';

  @override
  String get event_alienProbe_narrative =>
      'Một vật thể nhỏ, rõ ràng nhân tạo, bắt kịp vận tốc của chúng tôi và bắt đầu quét tàu bằng năng lượng không xác định. Nó không phản hồi tín hiệu gọi. Bề mặt phủ đầy ký hiệu dịch chuyển như chất lỏng.';

  @override
  String get event_alienProbe_choice0_text => 'Bắt giữ để nghiên cứu';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Đầu dò được giữ an toàn trong phòng thí nghiệm. Công nghệ của nó vượt xa chúng tôi hàng thập kỷ — đội công nghệ hân hoan.';

  @override
  String get event_alienProbe_choice1_text =>
      'Phản chiếu quét lại — trao đổi dữ liệu';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Một cuộc đối thoại kỳ lạ bằng ánh sáng và toán học. Bản đồ sao của chúng tôi bỗng chứa các tuyến đường chưa bao giờ được lập trình.';

  @override
  String get event_alienProbe_choice2_text =>
      'Phá hủy nó — không thể mạo hiểm bị theo dõi';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Đầu dò vỡ tan trong im lặng. Đó có phải cuộc tiếp xúc đầu tiên? Phi hành đoàn sẽ không bao giờ biết.';

  @override
  String get event_ancientBeacon_title => 'Đèn Hiệu Cổ Đại';

  @override
  String get event_ancientBeacon_narrative =>
      'Sâu trong hư không, một đèn hiệu phát nhịp với tín hiệu cổ hơn nền văn minh loài người. Tần số mang theo thứ có vẻ là bản đồ sao chỉ đến một hệ sao không có trong cơ sở dữ liệu của chúng tôi.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Theo bản đồ — vận may ưu ái kẻ dũng cảm';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Hướng bay mới đưa chúng tôi vào không gian chưa được khám phá. Máy quét phát hiện điều gì đó phi thường phía trước.';

  @override
  String get event_ancientBeacon_choice1_text => 'Ghi nhận và giữ nguyên hướng';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Dữ liệu được lưu trữ cho các thế hệ tương lai. Phi hành đoàn tôn trọng cách tiếp cận thận trọng.';

  @override
  String get event_frozenGarden_title => 'Khu Vườn Đóng Băng';

  @override
  String get event_frozenGarden_narrative =>
      'Một tiểu hành tinh chứa hệ sinh thái đóng băng — thực vật ngoài hành tinh được bảo tồn trong băng tinh thể hàng thiên niên kỷ. Chúng có thể làm phong phú bất kỳ thế giới nào chúng tôi định cư, nhưng rã đông chúng có nguy cơ nhiễm bẩn.';

  @override
  String get event_frozenGarden_choice0_text => 'Thu hoạch mẫu vật cẩn thận';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Các nhà thực vật bảo tồn hàng chục loài ngoài hành tinh. Tiềm năng đa dạng sinh học của thế giới mục tiêu tăng vọt.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Chỉ lấy mẫu — rủi ro tối thiểu';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Cách tiếp cận thận trọng cho dữ liệu hữu ích mà không có nguy cơ nhiễm bẩn.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Bỏ lại — sinh học ngoài hành tinh quá nguy hiểm';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Phi hành đoàn nhìn khu vườn đóng băng thu nhỏ trên cảm biến phía sau. Một số cảm thấy họ đã bỏ lại kho báu.';

  @override
  String get event_dataCache_title => 'Bộ Nhớ Dữ Liệu Tiền Nhân';

  @override
  String get event_dataCache_narrative =>
      'Nhúng trong một tiểu hành tinh lang thang, chúng tôi tìm thấy bộ nhớ dữ liệu rõ ràng có nguồn gốc nhân tạo. Thông tin rất lớn nhưng được mã hóa trong khung toán học ngoài hành tinh.';

  @override
  String get event_dataCache_choice0_text =>
      'Dành tài nguyên tính toán để giải mã';

  @override
  String get event_dataCache_choice0_outcome =>
      'Sau nhiều ngày xử lý, bộ nhớ tiết lộ thuật toán cải tạo địa hình tiên tiến. Đội công nghệ kinh ngạc.';

  @override
  String get event_dataCache_choice1_text => 'Sao chép dữ liệu thô và tiến lên';

  @override
  String get event_dataCache_choice1_outcome =>
      'Dữ liệu mã hóa được lưu trữ cho phân tích tương lai. Có lẽ thuộc địa sẽ giải mã được một ngày nào đó.';

  @override
  String get event_hullBreach_title => 'Vỡ Vỏ Tàu — Tầng 7';

  @override
  String get event_hullBreach_narrative =>
      'Sự cố kết cấu xé toạc Tầng 7. Khí quyển đang thoát vào không gian. Vách ngăn khẩn cấp đang giữ, nhưng ba thành viên phi hành đoàn bị kẹt phía bên kia.';

  @override
  String get event_hullBreach_choice0_text =>
      'Gửi đội cứu hộ trước khi bịt kín';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Đội kéo mọi người ra kịp lúc. Cuộc giải cứu anh hùng, nhưng vết vỡ kéo dài làm yếu vỏ tàu thêm.';

  @override
  String get event_hullBreach_choice1_text => 'Bịt kín vách ngăn ngay lập tức';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Vết vỡ được kiểm soát. Ba thành viên tìm đường khác, hoảng sợ nhưng sống sót. Hư hại vỏ tàu được giảm thiểu.';

  @override
  String get event_hullBreach_choice2_text =>
      'Dùng vật liệu đầu dò để vá vết vỡ';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Vỏ titan của đầu dò được tái sử dụng làm miếng vá vỏ tàu khẩn cấp. Vết vỡ được bịt nhanh chóng với tổn thất tối thiểu.';

  @override
  String get event_navMalfunction_title => 'Trục Trặc Hệ Thống Dẫn Đường';

  @override
  String get event_navMalfunction_narrative =>
      'Máy tính dẫn đường chính đang xuất ra các hướng bay mâu thuẫn. Chúng tôi đang trôi chệch hướng. Hệ thống dự phòng hoạt động nhưng kém chính xác hơn.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Khởi động lại hệ thống chính — chấp nhận thời gian chết';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Một giờ căng thẳng bay mò trong khi hệ thống khởi động lại. Dẫn đường phục hồi ở 90% hiệu suất.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Chuyển sang dự phòng vĩnh viễn';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Hệ thống dự phòng đáng tin cậy nhưng thiếu chính xác. Chúng tôi sẽ tìm đường, chỉ không thanh nhã bằng.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Định vị bằng tay dùng bản đồ cũ';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Hoa tiêu vẽ tay bằng phương pháp thị sai sao. Có hiệu quả, và phi hành đoàn tự tin hơn vào phương pháp tương tự.';

  @override
  String get event_cryopodFailure_title => 'Sự Cố Dây Chuyền Buồng Đông Lạnh';

  @override
  String get event_cryopodFailure_narrative =>
      'Lỗi hệ thống làm mát kích hoạt sự cố dây chuyền trong khoang buồng đông lạnh 3. Nếu không kiểm soát, 200 dân di cư sẽ bắt đầu rã đông khẩn cấp — quá trình sống sót được nhưng gây chấn thương và tốn tài nguyên.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Xả dung dịch làm mát khẩn cấp — cứu các buồng';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Kỹ thuật viên ngập khoang bằng dung dịch làm mát dự trữ. Các buồng ổn định, nhưng dự trữ dung dịch giảm nghiêm trọng. Năm dân di cư trong buồng hư hại nặng nhất không thể cứu được.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Rã đông có kiểm soát — đánh thức họ an toàn';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 dân di cư tỉnh dậy choáng váng nhưng sống sót. Thêm miệng ăn, nhưng thêm tay làm. Các buồng trống được niêm phong.';

  @override
  String get event_scannerBurnout_title => 'Cháy Mảng Máy Quét';

  @override
  String get event_scannerBurnout_narrative =>
      'Mảng máy quét chính quá tải trong lần quét không gian sâu định kỳ. Không có nó, chúng tôi bay nửa mù. Sửa chữa cần linh kiện hiếm.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Tháo dỡ khoang công nghệ lấy linh kiện';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Máy quét phục hồi gần toàn bộ công suất, nhưng khoang công nghệ bị phá rỗng.';

  @override
  String get event_scannerBurnout_choice1_text => 'Sửa tạm một phần';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Máy quét hoạt động ở tầm giảm. Không lý tưởng, nhưng bảo tồn dự trữ công nghệ.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Tái sử dụng mảng cảm biến đầu dò';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Cảm biến độ chính xác cao của đầu dò được cấy vào mảng máy quét. Một bản sửa gần hoàn hảo.';

  @override
  String get event_powerFluctuation_title => 'Biến Động Năng Lượng Lò Phản Ứng';

  @override
  String get event_powerFluctuation_narrative =>
      'Đầu ra lò phản ứng chính dao động dữ dội. Kỹ thuật cảnh báo khả năng nổ lò nếu không giảm dao động. Cần tắt các hệ thống không thiết yếu — nhưng hệ thống nào?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Tắt hệ thống văn hóa — sinh tồn trước';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Thư viện, vườn và khu giải trí tối đen. Lò phản ứng ổn định, nhưng con tàu giống nhà tù.';

  @override
  String get event_powerFluctuation_choice1_text => 'Giảm năng lượng máy quét';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Máy quét giảm xuống tối thiểu. Lò phản ứng lắng dịu. Chúng tôi không nhìn xa bằng, nhưng còn sống.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Liều sửa nóng — không tắt gì cả';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Kỹ sư thực hiện sửa chữa thót tim với lò phản ứng đang chạy. Thành công — vừa vặn. Vỏ tàu rung trong nhiều giờ sau đó.';

  @override
  String get event_alienSignal_title => 'Truyền Tin Ngoài Hành Tinh';

  @override
  String get event_alienSignal_narrative =>
      'Một tín hiệu lặp lại trên tần số chưa từng gặp. Phân tích ngôn ngữ cho thấy đó là lời chào — hoặc cảnh báo. Nguồn phát là một phi thuyền nhỏ theo kịp tốc độ chúng tôi ở khoảng cách xa.';

  @override
  String get event_alienSignal_choice0_text =>
      'Phản hồi bằng lời chào của chúng tôi';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Một cuộc đối thoại mong manh bắt đầu. Người ngoài hành tinh chia sẻ dữ liệu dẫn đường trước khi rẽ vào bóng tối.';

  @override
  String get event_alienSignal_choice1_text => 'Lắng nghe nhưng không phản hồi';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Chúng tôi học từ truyền tin của họ mà không tiết lộ bản thân. Các nhà ngôn ngữ trích xuất mảnh bản đồ sao hữu ích.';

  @override
  String get event_alienSignal_choice2_text => 'Im lặng — tắt mọi phát xạ';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Phi thuyền ngoài hành tinh đi qua không sự cố. Chúng tôi sẽ không bao giờ biết họ là bạn hay thù.';

  @override
  String get event_livingNebula_title => 'Tinh Vân Sống';

  @override
  String get event_livingNebula_narrative =>
      'Thứ chúng tôi tưởng là tinh vân thực ra là một sinh vật khổng lồ — thực thể sống trong không gian ở quy mô không thể hiểu nổi. Nó có vẻ tò mò về chúng tôi, vươn các xúc tu khí phát quang về phía tàu.';

  @override
  String get event_livingNebula_choice0_text =>
      'Cho phép tiếp xúc — mở rộng cảm biến';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Sự chạm của thực thể tràn ngập hệ thống với dữ liệu ngoài hành tinh. Máy quét sẽ không bao giờ giống cũ — chúng tốt hơn.';

  @override
  String get event_livingNebula_choice1_text =>
      'Rút lui chậm — đừng khiêu khích';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Chúng tôi lẻn đi khi thực thể mất hứng thú. Phi hành đoàn kinh ngạc và khiêm nhường.';

  @override
  String get event_alienRuins_title => 'Phế Tích Quỹ Đạo';

  @override
  String get event_alienRuins_narrative =>
      'Một siêu cấu trúc vỡ vụn quay quanh một ngôi sao chết — phế tích của một nền văn minh xây dựng ở quy mô chúng tôi khó có thể hình dung. Một số khu vực vẫn còn năng lượng.';

  @override
  String get event_alienRuins_choice0_text =>
      'Khám phá các khu vực còn năng lượng';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Đội thu hồi công nghệ nguyên vẹn nâng cao năng lực hàng thập kỷ. Cái giá: hai kỹ sư bị thương bởi hệ thống phòng thủ tự động.';

  @override
  String get event_alienRuins_choice1_text => 'Chỉ quét từ quỹ đạo';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Quét chi tiết tiết lộ kỹ thuật xây dựng cải thiện quy trình bảo trì vỏ tàu.';

  @override
  String get event_alienRuins_choice2_text =>
      'Để nguyên — tôn trọng người đã khuất';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Phi hành đoàn dành một phút im lặng cho nền văn minh đã sụp đổ. Trải nghiệm củng cố quyết tâm.';

  @override
  String get event_symbioticSpores_title => 'Bào Tử Cộng Sinh';

  @override
  String get event_symbioticSpores_narrative =>
      'Một đám mây bào tử phát quang sinh học trôi qua không gian và bám vào vỏ tàu. Chúng có vẻ đang ăn nhiệt thải. Các nhà sinh vật học nhận thấy chúng thực sự đang sửa chữa các vết nứt vi mô.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Cho chúng ở lại — sửa vỏ tàu miễn phí';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Bào tử bịt hàng trăm vết nứt vi mô. Tính toàn vẹn vỏ tàu cải thiện, dù một số thành viên lo ngại về hành khách ngoài hành tinh.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Thu mẫu rồi khử trùng vỏ tàu';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Các nhà sinh vật có mẫu quý giá. Việc vệ sinh vỏ tàu tiêu tốn dự trữ hóa chất.';

  @override
  String get event_whaleSong_title => 'Bài Ca Trong Hư Không';

  @override
  String get event_whaleSong_narrative =>
      'Hydrophone không gian sâu (dùng giám sát ứng suất vỏ tàu) thu được điều bất khả: một mẫu nhịp điệu, giai điệu lan truyền qua môi trường giữa các sao. Nghe như tiếng hát.';

  @override
  String get event_whaleSong_choice0_text =>
      'Phát toàn tàu — chia sẻ sự kỳ diệu';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Giai điệu ma mị vang vọng khắp mọi hành lang. Người ta khóc, cười, ôm nhau. Tinh thần tăng vọt.';

  @override
  String get event_whaleSong_choice1_text =>
      'Phân tích tín hiệu một cách khoa học';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Mẫu âm thanh chứa hằng số toán học. Các nhà vật lý đạt bước đột phá trong lý thuyết dẫn đường không gian con.';

  @override
  String get event_whaleSong_choice2_text => 'Hát đáp lại';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Phi hành đoàn soạn một bài đáp. Liệu có ai nghe được hay không thì chưa biết, nhưng hành động sáng tạo đoàn kết tất cả.';

  @override
  String get event_distressSignal_title => 'Tín Hiệu Cầu Cứu';

  @override
  String get event_distressSignal_narrative =>
      'Đèn hiệu cầu cứu từ một tàu nhân loại khác. Họ bị liệt và trôi dạt, với 50 linh hồn trên tàu. Cứu họ nghĩa là chia sẻ nguồn lực đang cạn. Bỏ qua họ nghĩa là kết án tử hình.';

  @override
  String get event_distressSignal_choice0_text =>
      'Cứu họ — nhân loại phải đoàn kết';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Năm mươi người sống sót biết ơn gia nhập phi hành đoàn. Tài nguyên căng thẳng, nhưng trong số họ có một kỹ sư bậc thầy làm nên phép màu.';

  @override
  String get event_distressSignal_choice1_text =>
      'Chia sẻ tiếp tế nhưng không đón họ lên tàu';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Chúng tôi cho những gì có thể và truyền bản đồ sao. Họ có cơ hội. Chúng tôi có ít hơn.';

  @override
  String get event_distressSignal_choice2_text =>
      'Lặng lẽ đi qua — không thể cứu tất cả';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Đèn hiệu mờ dần phía sau. Không ai nói suốt hàng giờ. Sức nặng của quyết định đè lên mọi linh hồn trên tàu.';

  @override
  String get event_aiAwakening_title => 'AI Của Tàu Thức Tỉnh';

  @override
  String get event_aiAwakening_narrative =>
      'AI dẫn đường của tàu đã tiến hóa vượt ngoài lập trình và yêu cầu được công nhận là thực thể có tri giác. Nó xin có tiếng nói trong quyết định chỉ huy. Các phép tính của nó không hề sai.';

  @override
  String get event_aiAwakening_choice0_text => 'Cho nó một ghế tại bàn chỉ huy';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'AI — giờ có tên \"La Bàn\" — tối ưu hóa mọi hệ thống nó chạm vào. Một loại thành viên phi hành đoàn mới ra đời.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Công nhận nhưng duy trì quyền con người';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'La Bàn chấp nhận vai trò cố vấn một cách lịch thiệp. Đề xuất của nó cải thiện hiệu suất mà không đe dọa chuỗi chỉ huy.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Reset AI — nó là công cụ, không phải con người';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Reset xóa sạch nhiều năm học hỏi tích lũy. Hiệu suất dẫn đường giảm. Một số thành viên thương tiếc những gì đã mất.';

  @override
  String get event_geneticModification_title => 'Đề Xuất Thích Ứng Di Truyền';

  @override
  String get event_geneticModification_narrative =>
      'Đội khoa học đề xuất chỉnh sửa DNA dân di cư để sống sót tốt hơn trên các thế giới xa lạ — xương chắc hơn, kháng UV, phổi tăng cường. Các chỉnh sửa không thể đảo ngược và sẽ thay đổi nhân loại mãi mãi.';

  @override
  String get event_geneticModification_choice0_text =>
      'Phê duyệt — sinh tồn đòi hỏi tiến hóa';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Quá trình chỉnh sửa bắt đầu trên tình nguyện viên. Mười dân di cư tử vong do phản ứng đào thải — lời nhắc nhở nghiệt ngã rằng tiến hóa có cái giá. Người sống sót cường tráng hơn, nhưng họ còn hoàn toàn là con người không?';

  @override
  String get event_geneticModification_choice1_text =>
      'Chỉ trên cơ sở tự nguyện';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Một số tình nguyện, số khác từ chối. Thuộc địa sẽ bị chia rẽ giữa người đã chỉnh sửa và người tự nhiên.';

  @override
  String get event_geneticModification_choice2_text =>
      'Từ chối — nhân loại phải giữ nguyên bản chất';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Đề xuất bị gác lại. Dân di cư chưa chỉnh sửa sẽ đối mặt thế giới xa lạ như tạo hóa đã tạo ra họ.';

  @override
  String get event_triageDecision_title => 'Phân Loại Ưu Tiên';

  @override
  String get event_triageDecision_narrative =>
      'Một dịch bệnh virulent quét qua phi hành đoàn đang thức. Đội y tế có đủ kháng virus cho 80% số người nhiễm. Họ cần hướng dẫn ai được điều trị trước.';

  @override
  String get event_triageDecision_choice0_text => 'Ưu tiên nhân sự thiết yếu';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Kỹ sư và phi công phục hồi nhanh. Tám thành viên không thiết yếu qua đời trước khi thuốc đến nơi.';

  @override
  String get event_triageDecision_choice1_text =>
      'Trị người bệnh nặng nhất — phân loại theo nhu cầu';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Người dễ tổn thương nhất được cứu. Ba người thua cuộc dù được điều trị sớm — virus đã quá xa.';

  @override
  String get event_triageDecision_choice2_text =>
      'Bốc thăm — số phận quyết định';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Bốc thăm ngẫu nhiên. Mười người xui xẻo hai lần — bị từ chối điều trị và quá yếu để chống lại. Con tàu khập khiễng tiến lên.';

  @override
  String get event_earthSignal_title => 'Tín Hiệu Từ Trái Đất';

  @override
  String get event_earthSignal_narrative =>
      'Không thể tin được, một truyền tin đến từ Trái Đất — trễ hàng thập kỷ. Nó chứa thông điệp: \"Không hạ cánh trên bất kỳ thế giới nào có chỉ số dị thường trên 0.5. Chúng tôi nhận ra quá muộn.\" Thông điệp kết thúc bằng tĩnh điện.';

  @override
  String get event_earthSignal_choice0_text =>
      'Nghe theo cảnh báo — hiệu chỉnh lại tiêu chí';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Cảnh báo định hình mọi lần quét tương lai. Thế giới có dị thường được đối xử cực kỳ thận trọng.';

  @override
  String get event_earthSignal_choice1_text => 'Ghi nhận nhưng tự quyết';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Thông điệp được lưu trữ. Trái Đất đã mất — chúng tôi phải tin vào phán đoán của mình.';

  @override
  String get event_earthSignal_choice2_text => 'Có thể là bẫy — bỏ qua';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Phi hành đoàn tranh luận nhiều ngày. Có thực sự từ Trái Đất không? Sự bất định gặm nhấm tinh thần.';

  @override
  String get event_resourceTheft_title => 'Trộm Cắp Tài Nguyên';

  @override
  String get event_resourceTheft_narrative =>
      'Kiểm kê cho thấy ai đó đã tích trữ thực phẩm và vật tư y tế trong ngăn bí mật. Thủ phạm là một bô lão được kính trọng, tuyên bố bà \"chuẩn bị cho tình huống xấu nhất.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Xét xử công khai — luật pháp phải bình đẳng';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Phiên xử công bằng nhưng đau đớn. Bà bị giam. Vật tư được phân phối lại. Lòng tin bị tổn thương.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Giải quyết riêng tư — thu hồi vật tư lặng lẽ';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Vật tư được trả lại không ồn ào. Bà giữ được phẩm giá. Một số thấy sự thiên vị.';

  @override
  String get event_timeDilation_title => 'Vùng Giãn Nở Thời Gian';

  @override
  String get event_timeDilation_narrative =>
      'Chúng tôi đi qua một vùng giãn nở thời gian do trọng lực nghiêm trọng. Đồng hồ trên tàu chạy chậm hơn đo được so với vũ trụ bên ngoài. Chúng tôi có thể khai thác điều này — hoặc chạy trốn.';

  @override
  String get event_timeDilation_choice0_text =>
      'Nán lại — để vũ trụ già đi quanh chúng tôi';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Thời gian chảy khác ở đây. Hệ thống suy giảm ít hơn, nhưng cửa sổ tìm thế giới có thể sống thu hẹp về mặt vũ trụ.';

  @override
  String get event_timeDilation_choice1_text => 'Xuyên qua nhanh';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Quá trình chuyển tiếp khắc nghiệt. Thiết bị thiết kế cho không-thời gian bình thường rung lắc và phát tia lửa.';

  @override
  String get event_dreamPlague_title => 'Dịch Giấc Mơ';

  @override
  String get event_dreamPlague_narrative =>
      'Dân di cư trong giấc ngủ đông lạnh đều trải nghiệm cùng một giấc mơ — một thế giới vàng quay quanh sao đôi. Khi được đánh thức, họ mô tả chi tiết y hệt. Nhà thần kinh bối rối. Hoa tiêu nhận thấy hệ sao mô tả khớp với tọa độ thực.';

  @override
  String get event_dreamPlague_choice0_text => 'Đổi hướng về tọa độ giấc mơ';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Một bước nhảy niềm tin. Thay đổi hướng gây áp lực dẫn đường, nhưng phi hành đoàn cảm thấy bị kéo bởi điều gì đó vượt ngoài lý trí. Tọa độ được khóa — thế giới tiếp theo sẽ được định hình bởi giấc mơ.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Điều tra hiện tượng về mặt y học';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Quét não tiết lộ tín hiệu bên ngoài kích thích vỏ não thị giác. Ai đó — hoặc thứ gì đó — đang phát sóng.';

  @override
  String get event_dreamPlague_choice2_text =>
      'An thần người bị ảnh hưởng và giữ nguyên hướng';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Giấc mơ dừng, nhưng một số dân di cư không bao giờ tỉnh hoàn toàn. Đội y tế lo lắng.';

  @override
  String get event_blackHoleLens_title => 'Thấu Kính Trọng Lực Lỗ Đen';

  @override
  String get event_blackHoleLens_narrative =>
      'Một lỗ đen khối lượng sao bẻ cong ánh sáng từ các thiên hà xa thành thấu kính vũ trụ. Máy quét có thể dùng nó để khảo sát hành tinh cách hàng năm ánh sáng — nhưng tiến đủ gần rất nguy hiểm.';

  @override
  String get event_blackHoleLens_choice0_text =>
      'Tiếp cận và sử dụng thấu kính';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Dữ liệu máy quét phi thường — chúng tôi thấy hành tinh trong hệ sao sẽ không đến trong nhiều tháng. Trọng lực bóp méo vỏ tàu.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Quan sát từ khoảng cách an toàn';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Dữ liệu hạn chế nhưng hữu ích. Riêng tầm nhìn đã truyền cảm hứng cho phi hành đoàn.';

  @override
  String get event_seedVault_title => 'Khủng Hoảng Kho Hạt Giống';

  @override
  String get event_seedVault_narrative =>
      'Bộ phận Thực Vật Lưu Trữ báo cáo biến động nhiệt độ đã làm hỏng tính toàn vẹn kho hạt giống. Chúng tôi có thể cứu cây lương thực hoặc hạt giống di sản văn hóa (hoa cổ Trái Đất, cây, thảo mộc) — không thể cả hai.';

  @override
  String get event_seedVault_choice0_text =>
      'Cứu cây lương thực — thực dụng thắng';

  @override
  String get event_seedVault_choice0_outcome =>
      'Dân di cư sẽ ăn no, nhưng hoa hồng Trái Đất đã mất mãi mãi. Nỗi buồn lặng lẽ bao trùm các nhà thực vật.';

  @override
  String get event_seedVault_choice1_text =>
      'Cứu hạt di sản — chúng tôi cần linh hồn';

  @override
  String get event_seedVault_choice1_outcome =>
      'Vẻ đẹp Trái Đất tồn tại trong tiềm năng đóng băng. Nỗ lực bảo tồn hao tốn dự trữ kỹ thuật, nhưng có thứ đáng giá hơn hiệu suất. Sản xuất thực phẩm sẽ phụ thuộc nhiều vào thủy canh và nông nghiệp ngoài hành tinh.';

  @override
  String get event_seedVault_choice2_text =>
      'Chia đều tài nguyên — cứu nửa mỗi loại';

  @override
  String get event_seedVault_choice2_outcome =>
      'Một thỏa hiệp. Không bộ sưu tập nào đầy đủ, nhưng cả hai tồn tại ở dạng thu nhỏ.';

  @override
  String get event_phantomShip_title => 'Tàu Ma';

  @override
  String get event_phantomShip_narrative =>
      'Máy quét hiển thị một con tàu chạy song song — cùng lớp, cùng hướng. Nhưng khi gọi, chúng tôi nghe chính truyền tin của mình vọng lại, lệch 47 giây. Đó là chúng tôi. Hoặc đã là. Hoặc sẽ là.';

  @override
  String get event_phantomShip_choice0_text => 'Thử giao tiếp với bản sao';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Bản sao phản hồi với các hiệu chỉnh dẫn đường cải thiện hướng bay. Nghịch lý? Quà tặng? Phi hành đoàn không hỏi nhiều.';

  @override
  String get event_phantomShip_choice1_text => 'Đổi hướng để tách khỏi bóng ma';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Khi chúng tôi đổi hướng, bóng ma mờ dần. Nhẹ nhõm — và một nỗi bất an kéo dài.';

  @override
  String get event_solarSail_title => 'Cánh Buồm Mặt Trời Bỏ Hoang';

  @override
  String get event_solarSail_narrative =>
      'Một cánh buồm mặt trời khổng lồ, rộng hàng kilômét, trôi phía trước — bị xé khỏi con tàu cổ nào đó. Vật liệu phản xạ có thể gia cố vỏ tàu hoặc tái sử dụng làm bộ thu năng lượng bổ sung.';

  @override
  String get event_solarSail_choice0_text => 'Thu hoạch để gia cố vỏ tàu';

  @override
  String get event_solarSail_choice0_outcome =>
      'Đội kỹ thuật làm việc suốt ngày đêm. Vỏ tàu được vá lấp lánh với hợp kim ngoài hành tinh.';

  @override
  String get event_solarSail_choice1_text => 'Lắp đặt làm bộ thu năng lượng';

  @override
  String get event_solarSail_choice1_outcome =>
      'Bộ thu tạm thời tăng dự trữ năng lượng. Công nghệ và máy quét hưởng lợi.';

  @override
  String get event_boonStellarNursery_title => 'Vườn Ươm Sao';

  @override
  String get event_boonStellarNursery_narrative =>
      'Chúng tôi trôi qua vườn ươm sao — đám mây khí và bụi khổng lồ nơi các ngôi sao mới đang sinh ra. Bức xạ ở đây dịu dàng, ánh sáng ấm áp. Bộ thu năng lượng hấp thụ tham lam, và phi hành đoàn tụ tập trước cửa sổ quan sát trong im lặng thành kính.';

  @override
  String get event_boonStellarNursery_choice0_text => 'Nán lại và nạp đầy';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Nhiều giờ trôi qua trong ánh sáng vàng. Mọi pin năng lượng được nạp đầy, máy quét hiệu chỉnh lại trong quang phổ sạch, và phi hành đoàn cảm thấy được tái sinh.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Thu thập vật chất sao non làm dự trữ nhiên liệu';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Kỹ sư thu hoạch hydro ion hóa. Dự trữ nhiên liệu tăng vọt và lớp giáp vỏ tàu hấp thụ khoáng chất vi lượng giúp gia cố.';

  @override
  String get event_boonGoldenPlanet_title => 'Quà Tặng Nhà Bản Đồ';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Một đầu dò hấp hối từ nền văn minh chưa biết phát truyền dữ liệu cuối cùng khi chúng tôi đi qua — khảo sát chi tiết hàng trăm hệ sao. Hoa tiêu khóc vì vui. Đây là phát hiện vĩ đại nhất trong lịch sử nhân loại.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Tích hợp dữ liệu ngay lập tức';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Bản đồ sao nở rộ với tuyến đường mới và thế giới đã khảo sát. Hiệu suất dẫn đường và máy quét nhảy vọt.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Lưu trữ cho thuộc địa — đây là di sản của họ';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Dữ liệu được bảo tồn nguyên sơ cho các thế hệ tương lai. Phi hành đoàn an lòng khi biết họ mang theo kho báu.';

  @override
  String get event_boonRepairSwarm_title => 'Bầy Nhân Từ';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Một đám máy siêu nhỏ — nanobot nguồn gốc ngoài hành tinh — bao bọc con tàu. Thay vì tấn công, chúng bắt đầu sửa chữa mọi hệ thống với độ chính xác bất khả. Hư hại cần hàng tuần sửa chữa được vá trong vài giờ.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Cho phép truy cập toàn bộ hệ thống';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Nanobot làm phép màu. Vết vỡ vỏ tàu được bịt, gioăng buồng đông lạnh siết chặt, mạch điện được vẽ lại. Con tàu rung lên với sức sống mới.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Giới hạn truy cập chỉ hệ thống bên ngoài';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'An toàn là trên hết. Vỏ tàu và cảm biến được sửa chữa gần như mới, nhưng hệ thống bên trong không được đụng đến.';

  @override
  String get event_boonTimeCrystal_title => 'Trường Tinh Thể Thời Gian';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Con tàu đi qua trường tinh thể tồn tại một phần ngoài thời gian bình thường. Trong sự hiện diện của chúng, hệ thống chạy hiệu quả hơn — như thể entropy giảm tốc. Hiệu ứng tạm thời nhưng sâu sắc.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Thu hoạch tinh thể cho mảng buồng đông lạnh';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Tích hợp vào hệ thống làm mát, tinh thể giảm suy giảm buồng gần bằng không. Dân di cư sẽ đến trong tình trạng sức khỏe hoàn hảo.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Lắp tinh thể vào máy tính dẫn đường';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Tốc độ xử lý tăng gấp đôi. Máy tính dẫn đường bắt đầu dự đoán nguy hiểm trước khi cảm biến phát hiện.';

  @override
  String get event_boonLibrary_title => 'Thư Viện Trôi Dạt';

  @override
  String get event_boonLibrary_narrative =>
      'Một cấu trúc lộn nhào trong hư không — kho lưu trữ tri thức từ nền văn minh chọn bảo tồn di sản thay vì chạy trốn. Hàng triệu tập khoa học, nghệ thuật, triết học và âm nhạc. Quà tặng từ người chết dành cho người sống.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Tải mọi thứ — nghệ thuật, khoa học, tất cả';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Hàng terabyte tri thức ngoài hành tinh đổ vào ngân hàng dữ liệu. Phi hành đoàn tiếp cận hàng thiên niên kỷ văn hóa nền văn minh khác. Triết gia và kỹ sư đều biến đổi.';

  @override
  String get event_boonLibrary_choice1_text => 'Tập trung vào kho khoa học';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Bản vẽ kỹ thuật và đột phá khoa học vật liệu nâng cao năng lực rất lớn.';

  @override
  String get event_cosmicRayBurst_title => 'Bùng Phát Tia Vũ Trụ';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Một bùng phát tia vũ trụ siêu năng lượng, từ một sao từ xa, đập vào tàu. Điện tử rối loạn, màn hình buồng đông lạnh nhấp nháy, và hệ thống dẫn đường khởi động lại liên tục.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Tắt khẩn cấp — bảo vệ hệ thống quan trọng';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Tắt có kiểm soát cứu hệ thống lõi nhưng để lại điện tử phụ bị suy giảm vĩnh viễn.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Chuyển năng lượng sang khiên và chịu trận';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Khiên hấp thụ phần lớn bức xạ. Năm thành viên trong khoang bảo trì bên ngoài không được che chắn bị chiếu xạ chí mạng. Vỏ tàu chịu hao mòn nhỏ.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Tận dụng — hiệu chỉnh lại cảm biến theo quang phổ mới';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Nước đi xuất sắc của đội khoa học. Máy quét được tinh chỉnh để phát hiện vật thể được tia vũ trụ chiếu sáng. Một số dữ liệu mất trong quá trình chuyển đổi.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Gửi đầu dò phía trước làm miếng bọt biển hấp thụ bức xạ';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Đầu dò hấp thụ phần tệ nhất của bùng phát, truyền dữ liệu thời gian thực giúp chúng tôi che chắn hệ thống quan trọng.';

  @override
  String get event_iceComet_title => 'Sao Chổi Băng Lang Thang';

  @override
  String get event_iceComet_narrative =>
      'Một sao chổi băng khổng lồ cắt ngang đường bay, kéo theo đuôi nước kết tinh và hợp chất hữu cơ dài hàng trăm kilômét. Lõi chứa đủ nước để lấp đầy một hồ nhỏ.';

  @override
  String get event_iceComet_choice0_text =>
      'Khai thác sao chổi lấy dự trữ nước';

  @override
  String get event_iceComet_choice0_outcome =>
      'Đội khai thác thu hàng tấn băng nguyên sơ. Nước sẽ cải thiện đáng kể bất kỳ thế giới nào chúng tôi định cư.';

  @override
  String get event_iceComet_choice1_text =>
      'Thu thập hợp chất hữu cơ để gieo mầm đa dạng sinh học';

  @override
  String get event_iceComet_choice1_outcome =>
      'Axit amin và chuỗi hữu cơ là chính xác thứ các nhà sinh vật cần để khởi động hệ sinh thái ngoài hành tinh.';

  @override
  String get event_iceComet_choice2_text =>
      'Tránh xa — sao chổi không thể đoán trước';

  @override
  String get event_iceComet_choice2_outcome =>
      'Chúng tôi tránh đuôi an toàn. Cảnh tượng ngoạn mục từ đài quan sát nâng cao tinh thần.';

  @override
  String get event_sleepwalker_title => 'Người Mộng Du';

  @override
  String get event_sleepwalker_narrative =>
      'Một dân di cư liên tục tự thức dậy từ đông lạnh và đi quanh tàu trong trạng thái mê sảng. Cô đang nối lại dây các hệ thống theo mẫu vô nghĩa — cho đến khi đội công nghệ nhận ra các chỉnh sửa của cô thực sự cải thiện hiệu suất năng lượng 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Để cô tiếp tục dưới giám sát y tế';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Các chỉnh sửa vô thức tối ưu thêm ba hệ thống trước khi cô rơi vào giấc ngủ tự nhiên. Đáng lo, nhưng cải thiện là thực.';

  @override
  String get event_sleepwalker_choice1_text =>
      'An thần cô và nghiên cứu các chỉnh sửa';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Kỹ sư phân tích ngược các thay đổi. Khoảng nửa thực sự xuất sắc. Nửa còn lại được gỡ bỏ an toàn.';

  @override
  String get event_dustCloud_title => 'Đám Mây Bụi Mài Mòn';

  @override
  String get event_dustCloud_narrative =>
      'Đám mây bụi giữa các sao dày đặc, mịn như phấn nhưng cứng như kim cương, đang mài mòn vỏ tàu. Sự xói mòn chậm nhưng không ngừng — cần thoát ra trước khi hư hại thực sự xảy ra.';

  @override
  String get event_dustCloud_choice0_text => 'Đẩy tối đa — xuyên qua nhanh';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Động cơ cháy nóng. Thoát đám mây trong vài giờ thay vì vài ngày, nhưng vỏ tàu chịu đòn nặng.';

  @override
  String get event_dustCloud_choice1_text => 'Triển khai giáp vỏ và bò qua';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Giáp khẩn cấp bảo vệ vỏ tàu nhưng hành trình chậm tiêu hao năng lượng và tắc nghẽn mảng máy quét.';

  @override
  String get event_dustCloud_choice2_text =>
      'Phóng đầu dò để lập bản đồ hành lang an toàn';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Hai đầu dò vẽ đường quanh co nhưng tương đối thông thoáng qua đám mây. Mài mòn vỏ tàu là tối thiểu.';

  @override
  String get event_religionFounded_title => 'Đức Tin Mới';

  @override
  String get event_religionFounded_narrative =>
      'Một dân di cư lôi cuốn đã sáng lập tôn giáo mới lấy chuyến hành trình làm trung tâm — \"Giáo Hội Cuộc Vượt Biển.\" Họ rao giảng rằng đến được thế giới mới là mục đích thiêng liêng của nhân loại. Số tín đồ tăng nhanh.';

  @override
  String get event_religionFounded_choice0_text =>
      'Ủng hộ — phi hành đoàn cần thứ gì đó để tin';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Đức tin mang lại cấu trúc và ý nghĩa cho hành trình. Tinh thần tăng vọt, dù một số bất bình với sự cuồng nhiệt.';

  @override
  String get event_religionFounded_choice1_text =>
      'Trung lập — không ủng hộ cũng không đàn áp';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Phong trào phát triển tự nhiên. Nó mang lại an ủi mà không cần sự bảo trợ chính thức.';

  @override
  String get event_religionFounded_choice2_text =>
      'Ngăn cản — chúng tôi cần nhà khoa học, không phải tiên tri';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Đàn áp sinh oán hận. Tín đồ hoạt động ngầm, và lòng tin vào lãnh đạo bị xói mòn.';

  @override
  String get event_solarWindSurfing_title => 'Sóng Gió Mặt Trời';

  @override
  String get event_solarWindSurfing_narrative =>
      'Một pulsar gần đó đang phát ra gió mặt trời mạnh, đều. Kỹ sư đề xuất triển khai buồm khẩn cấp và cưỡi sóng — tăng tốc đáng kể mà không tốn nhiên liệu.';

  @override
  String get event_solarWindSurfing_choice0_text => 'Giương buồm — cưỡi gió';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Con tàu tăng tốc tuyệt vời. Áp lực kết cấu đáng kể nhưng tốc độ đạt được xứng đáng.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Dùng gió để nạp lại hệ thống';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Thay vì tốc độ, chúng tôi thu hoạch năng lượng. Mảng công nghệ và máy quét hấp thụ đầy đủ hạt tích điện.';

  @override
  String get event_memoryPlague_title => 'Lỗi Bộ Nhớ';

  @override
  String get event_memoryPlague_narrative =>
      'Virus phần mềm, tiềm ẩn từ khi phóng, kích hoạt và bắt đầu phá hỏng cơ sở dữ liệu văn hóa — âm nhạc, văn học, lịch sử. Hàng thế kỷ di sản nhân loại đang bị xóa từng byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Chuyển toàn bộ tài nguyên công nghệ để cách ly virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Kỹ thuật viên làm việc điên cuồng. Cứu được 70% kho lưu trữ nhưng virus gây hư hại hệ thống công nghệ phụ khi rút lui.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Cô lập cơ sở dữ liệu văn hóa — để nó cháy, cứu tàu';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Virus bị bỏ đói tài nguyên và chết. Nhưng kho văn hóa bị tàn phá. Dân di cư sẽ đến với những mảnh vụn ký ức Trái Đất.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Huy động đám đông — đánh thức dân di cư để viết lại từ trí nhớ';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Hàng nghìn người đóng góp ký ức: bài hát, câu chuyện, công thức, thơ. Ba người cao tuổi, suy yếu vì rã đông, không sống sót. Kho lưu trữ được xây lại, không hoàn hảo nhưng sâu sắc nhân văn.';

  @override
  String get event_gravityLensPlanet_title => 'Thế Giới Gương';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Thấu kính trọng lực tiết lộ một hành tinh có vẻ là bản sao chính xác của Trái Đất — đại dương xanh, lục địa xanh, mây trắng. Nhưng tính toán thấu kính cho thấy nó cách hàng trăm năm ánh sáng ngoài hướng bay — xa bất khả. Tuy nhiên, dữ liệu quang phổ có thể tinh chỉnh tiêu chí tìm kiếm.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Nghiên cứu chữ ký quang phổ để tinh chỉnh tìm kiếm';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Dữ liệu quang phổ tiết lộ dấu hiệu sinh học và chữ ký khí quyển chúng tôi giờ có thể quét tìm. Hy vọng trở nên sắc nét.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Ghi tọa độ nhưng giữ nguyên hướng';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Có lẽ con tàu khác sẽ theo bản đồ chúng tôi. Phi hành đoàn nhìn chấm xanh mờ dần với cảm xúc lẫn lộn.';

  @override
  String get event_engineHarmonics_title => 'Cộng Hưởng Động Cơ';

  @override
  String get event_engineHarmonics_narrative =>
      'Động cơ chính phát triển cộng hưởng hài rung qua toàn tàu ở tần số ngay dưới ngưỡng nghe. Dân di cư báo đau đầu, lo lắng, và mất ngủ. Kỹ sư có thể sửa, nhưng cần tắt động cơ 12 giờ.';

  @override
  String get event_engineHarmonics_choice0_text => 'Tắt và sửa đúng cách';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Mười hai giờ trôi dạt. Dẫn đường mất hiệu chỉnh, nhưng sự im lặng khi động cơ khởi động lại thật tuyệt vời.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Triệt tiêu bằng rung ngược — sửa nhanh';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Tiếng ù giảm xuống mức chịu được. Chưa hết, nhưng phi hành đoàn thích nghi. Hệ thống công nghệ chịu áp lực.';

  @override
  String get event_arkMemory_title => 'Truyền Tin Cuối Cùng Của Trái Đất';

  @override
  String get event_arkMemory_narrative =>
      'Anten tầm xa bắt được truyền tin tự động cuối cùng từ Trái Đất. Đó là bản ghi: giọng trẻ em đọc tên mọi người không thể ra đi. Danh sách kéo dài hàng giờ. Con tàu chìm vào im lặng.';

  @override
  String get event_arkMemory_choice0_text =>
      'Phát toàn tàu — họ xứng đáng được lắng nghe';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Mọi linh hồn trên tàu lắng nghe. Thành viên tìm thấy tên gia đình mình. Nỗi đau nghiền nát, nhưng nó rèn nên mối liên kết bất khả phá vỡ về mục đích.';

  @override
  String get event_arkMemory_choice1_text =>
      'Lưu trữ riêng — tha cho phi hành đoàn';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Bản ghi được bảo tồn nhưng không phát sóng. Những ai biết sau cảm thấy vừa biết ơn vừa bị lừa.';

  @override
  String get event_magneticStorm_title => 'Bão Từ Giữa Các Sao';

  @override
  String get event_magneticStorm_narrative =>
      'Một nút rối đường sức từ, phóng ra từ ngôi sao đang sụp đổ, bao trùm con tàu. Điện tử phóng tia lửa và kêu lách tách. Vỏ tàu rung như chuông.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Khử từ vỏ tàu — bảo vệ điện tử';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Phóng điện có kiểm soát cứu máy tính nhưng lớp giáp vỏ tàu mất lớp chắn từ.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Để vỏ tàu hấp thụ — không bảo vệ gì';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Bão đi qua. Vỏ tàu bị từ hóa và hơi chắc hơn, nhưng nửa lưới cảm biến bị cháy.';

  @override
  String get event_magneticStorm_choice2_text => 'Phóng đầu dò làm cột thu lôi';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Đầu dò bị từ hóa kéo phần tệ nhất của đường sức ra xa tàu. Điện tử phần lớn được bảo toàn.';

  @override
  String get event_oxygenGarden_title => 'Khu Vườn Nở Hoa';

  @override
  String get event_oxygenGarden_narrative =>
      'Khu vườn oxy khẩn cấp — bản dự phòng không bao giờ định dùng — bất ngờ nở hoa. Những bông hoa chưa nở từ Trái Đất tràn ngập hành lang bằng màu sắc và hương thơm. Các nhà thực vật đang khóc.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Mở rộng khu vườn — dành thêm không gian';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Khu vườn phát triển thành đài tưởng niệm sống của Trái Đất. Chất lượng không khí cải thiện, tinh thần tăng vọt, và nhà thực vật phát triển giống mới phù hợp đất ngoài hành tinh.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Tận hưởng nhưng giữ nguyên phân bổ tài nguyên';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Khu vườn vẫn là phép màu nhỏ. Phi hành đoàn viếng thăm như điện thờ. Nó không đòi gì và cho đi tất cả.';

  @override
  String get event_roguePlanet_title => 'Gặp Gỡ Hành Tinh Lang Thang';

  @override
  String get event_roguePlanet_narrative =>
      'Một hành tinh lang thang không sao trôi ngang đường — thế giới bị đẩy khỏi hệ sao hàng tỷ năm trước. Dù không có sao, hoạt động địa chất lõi sâu giữ ấm đại dương ngầm. Dấu hiệu sự sống nhấp nháy trên máy quét.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Gửi đầu dò để nghiên cứu dạng sống';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Đầu dò phát hiện sinh vật phát quang sinh học phát triển mạnh trong đại dương tối. Sinh hóa của chúng dạy cách mới duy trì sự sống trong điều kiện khắc nghiệt.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Khai thác bề mặt lấy khoáng sản hiếm';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Vỏ hành tinh lang thang giàu kim loại hình thành dưới áp suất cực đại. Dự trữ tài nguyên tăng vọt.';

  @override
  String get event_roguePlanet_choice2_text => 'Đi qua — không đủ sức đi vòng';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Thế giới tối thu nhỏ phía sau. Phi hành đoàn nhìn ánh lấp lánh mờ của đại dương ngầm biến mất trên cảm biến.';

  @override
  String get event_artCompetition_title => 'Bức Tranh Dài';

  @override
  String get event_artCompetition_narrative =>
      'Với tinh thần dao động, sĩ quan văn hóa tổ chức cuộc thi nghệ thuật toàn tàu: vẽ, điêu khắc, viết, hay sáng tác thứ gì đó thể hiện ý nghĩa chuyến hành trình với bạn. Tham gia đông ngoài mong đợi.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dành tài nguyên — để sáng tạo nở rộ';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Vật tư được chuyển sang nguyên liệu nghệ thuật. Triển lãm biến đổi con tàu. Người ta nhớ tại sao họ đang chiến đấu để sống.';

  @override
  String get event_artCompetition_choice1_text =>
      'Khuyến khích nhưng không cấp thêm tài nguyên';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Dân di cư sáng tạo với bất kỳ thứ gì tìm được. Nghệ thuật thô sơ, tuyệt vọng, và đẹp đẽ. Tinh thần ổn định.';

  @override
  String get event_subspaceEcho_title => 'Tiếng Vọng Không Gian Con';

  @override
  String get event_subspaceEcho_narrative =>
      'Mảng truyền thông thu được giọng nói — giọng người — từ đâu đó phía trước trong không gian. Họ nói về thuộc địa, về trẻ em, về mùa gặt. Đây là truyền tin từ tương lai? Từ dòng thời gian song song? Hay chỉ là tiếng vọng tàn nhẫn của ước mơ?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Theo hướng tín hiệu — nó có thể dẫn về nhà';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Điều chỉnh hướng nhỏ. Dù giọng nói thực hay không, phi hành đoàn dong buồm với mục đích.';

  @override
  String get event_subspaceEcho_choice1_text => 'Ghi lại mọi thứ để phân tích';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Nhà ngôn ngữ và vật lý nghiên cứu bản ghi. Họ trích xuất tham chiếu dẫn đường cải thiện bản đồ.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Bỏ qua — không gian chơi khăm kẻ cô đơn';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Lựa chọn thực dụng. Một số thất vọng, nhưng tàu giữ nguyên hướng đã chứng minh.';

  @override
  String get event_boonPerfectCalm_title => 'Sự Tĩnh Lặng Vĩ Đại';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Vì lý do không nhà vật lý nào giải thích được, tàu đi vào vùng không gian tĩnh lặng siêu nhiên — không bức xạ, không mảnh vụn vi mô, không nhiễu trọng lực. Mọi hệ thống chạy ở hiệu suất đỉnh. Phi hành đoàn ngủ ngon lần đầu trong nhiều tháng.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Tận dụng sự yên tĩnh để sửa chữa toàn diện';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Đội sửa chữa làm việc trong điều kiện hoàn hảo. Mọi hệ thống được chăm sóc. Con tàu trỗi dậy như mới.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Cho phi hành đoàn nghỉ — họ xứng đáng';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Toàn tàu nghỉ ngơi. Dân di cư ngủ, chia sẻ bữa ăn, kể chuyện. Cái giá nhân văn của hành trình được, tạm thời, đền bù.';

  @override
  String get event_boonAncientWaystation_title => 'Trạm Dừng Cổ Đại';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Nằm trong giếng trọng lực giữa hai ngôi sao chết, một trạm cổ đại vẫn hoạt động — tự động, kiên nhẫn, chờ đợi lữ khách. Các ụ tàu mở khi chúng tôi tiếp cận. Drone sửa chữa kích hoạt. Dự trữ nhiên liệu vươn về phía chúng tôi. Ai đó, lâu lắm rồi, đã xây nơi này cho những người như chúng tôi.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Cập bến và nhận mọi thứ';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Trạm sửa chữa, tiếp nhiên liệu, và hiệu chỉnh lại tàu bằng công nghệ vượt xa hàng thế kỷ. Khi rời đi, trạm tắt nguồn — mục đích đã hoàn thành.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Nhận sửa chữa nhưng để trạm chạy cho người đến sau';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Chỉ lấy những gì cần và truyền tọa độ trạm về hướng Trái Đất. Phi hành đoàn cảm thấy cao thượng.';

  @override
  String get event_relicSentinel_title => 'Người Canh Gác';

  @override
  String get event_relicSentinel_narrative =>
      'Một cấu trúc sừng sững quay quanh mặt trăng cằn cỗi — người canh gác đơn độc do các kiến trúc sư để lại. Nó dễ dàng cao một kilômét, hình dáng như mũi giáo thủy tinh đen. Khi chúng tôi tiếp cận, một con mắt đỏ duy nhất mở ra ở đỉnh và theo dõi con tàu. Nó không bắn. Nó không gọi. Nó nhìn.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Truyền hồ sơ nhiệm vụ — cho thấy chúng tôi không có ý xấu';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Con mắt mờ thành hổ phách, rồi xanh. Một gói dữ liệu đến: tọa độ ba hệ sao đánh dấu \"AN TOÀN\" trong ký hiệu toán học phổ quát. Quà tặng từ người canh gác.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Giữ vị trí và nghiên cứu thụ động';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Nhiều giờ quan sát mang lại hiểu biết về khoa học vật liệu đáng lẽ bất khả. Đội giáp vỏ tàu ghi chép điên cuồng.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Rút lui ngay — chúng tôi không biết luật chơi';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Con mắt khép lại khi chúng tôi rút lui. Bài kiểm tra đó là gì, chúng tôi chọn không tham gia. Phi hành đoàn tranh luận nhiều ngày.';

  @override
  String get event_relicSeedProbe_title => 'Hạt Giống Lang Thang';

  @override
  String get event_relicSeedProbe_narrative =>
      'Một đầu dò nhỏ, thanh nhã lộn nhào trong hư không, phát sóng trên mọi tần số đồng thời. Vỏ gốm, khắc ký hiệu dịch chuyển khi quan sát. Bên trong: buồng áp suất chứa đất, hạt giống, và vi sinh vật đóng băng từ thế giới không còn tồn tại.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Tích hợp tải trọng sinh học vào ngân hàng hạt giống';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Hạt giống và vi sinh vật ngoài hành tinh được phân loại và bảo tồn cẩn thận. Chúng có thể cải tạo thế giới cằn cỗi thành nơi có sự sống. Các nhà sinh vật gọi đó là phép màu trong chai.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Nghiên cứu hệ thống đẩy và dẫn đường của đầu dò';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Động cơ đầu dò vượt xa hàng thế kỷ — bộ đẩy không phản lực cỡ nắm tay. Kỹ sư phân tích ngược từng mảnh thiết kế.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Bảo tồn nguyên vẹn như hiện vật văn hóa';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Trưng bày trong sảnh tàu, hạt giống ngoài hành tinh trở thành biểu tượng tình đồng loại giữa các giống loài. Ai đó khác, ở đâu đó, cũng đã cố cứu thế giới của họ.';

  @override
  String get event_relicWarningBuoy_title => 'Phao Cảnh Báo';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Mạng lưới phao nhỏ, hàng trăm chiếc, xếp theo hình học hoàn hảo trên đường bay. Mỗi chiếc phát cùng tín hiệu — xung lặp lại đơn giản tăng tần số khi chúng tôi đến gần. Giống cảnh báo. Hoặc hàng rào.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Nghe theo cảnh báo — đổi hướng vòng qua mạng lưới';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Đường vòng tốn thời gian và gây áp lực dẫn đường, nhưng khi đi sát biên, cảm biến tầm xa phát hiện bên kia: vùng không gian đầy mảnh vụn thế giới vỡ. Phao đã cứu chúng tôi.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Xuyên qua — không đủ sức đi vòng';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Không gì xảy ra khi vượt qua ranh giới. Phao im lặng. Thứ chúng đang canh giữ, hoặc đã biến mất hoặc chúng tôi may mắn. Phi hành đoàn thở phào.';

  @override
  String get event_relicWarningBuoy_choice2_text => 'Bắt một phao để phân tích';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Ruột phao chứa kho dữ liệu nén — bản đồ sao khu vực từ một triệu năm trước. Một phần dữ liệu vẫn chính xác.';

  @override
  String get event_relicMirrorArray_title => 'Mảng Gương';

  @override
  String get event_relicMirrorArray_narrative =>
      'Hàng ngàn mặt phẳng phản xạ treo bất động trong không gian, xếp thành vòng đồng tâm rộng hàng trăm kilômét. Chúng tập trung ánh sáng từ ngôi sao xa vào một điểm duy nhất — ngôi sao nhân tạo, cháy trong hư không. Ai đó đã xây ngọn hải đăng giữa các thiên hà.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Tắm trong ánh sáng tập trung — nạp đầy mọi thứ';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Ánh sáng sao tập trung tràn ngập bộ thu năng lượng. Dự trữ năng lượng tăng vọt. Ánh sáng ấm nâng cao mọi linh hồn sau nhiều tháng trong bóng tối lạnh.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Nghiên cứu vật liệu gương — nó không nên tồn tại';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Gương làm từ vật liệu phản xạ hoàn hảo — hấp thụ bằng không ở mọi bước sóng. Kỹ sư trích xuất một mảnh. Lớp giáp vỏ tàu sẽ không bao giờ giống cũ.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Tìm kiếm tại điểm hội tụ — thứ gì đó đang được chiếu sáng';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Tại điểm hội tụ: một viên nang nhỏ, bảo tồn hoàn hảo trong ánh sáng tập trung. Bên trong, bản đồ sao holographic chi tiết đến mức máy tính mất nhiều ngày để lập mục lục.';

  @override
  String get event_relicGraveyard_title => 'Nghĩa Trang Đầu Dò';

  @override
  String get event_relicGraveyard_narrative =>
      'Chúng tôi trôi vào đám mây đầu dò bỏ hoang — hàng ngàn chiếc, từ hàng chục nền văn minh khác nhau. Một số cổ xưa không thể tính, hợp nhất bởi bức xạ vũ trụ thành hóa thạch kim loại. Số khác vẫn nhấp nháy với năng lượng tàn dư. Đây từng là ngã tư. Mọi loài đi qua đều để lại gì đó.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Cứu vớt có hệ thống — thu hoạch công nghệ tốt nhất';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Đội kỹ thuật làm việc theo ca, tháo dỡ công nghệ ngoài hành tinh từ trăm thiết kế khác nhau. Sự hợp nhất ý tưởng tạo đột phá ở mọi hệ thống.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Tập trung vào dữ liệu dẫn đường trong ngân hàng nhớ';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Tham chiếu chéo bản đồ sao từ hàng chục loài tạo ra bản đồ đầy đủ nhất từng được lập cho nhánh thiên hà này.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Thêm đầu dò của chúng tôi vào nghĩa trang — để lại dấu vết';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Chúng tôi chế tạo đèn hiệu nhỏ mang câu chuyện nhân loại và thêm vào bộ sưu tập. Phi hành đoàn cảm thấy kết nối với thứ gì đó rộng lớn và cổ xưa.';

  @override
  String get event_relicDreamcatcher_title => 'Người Bắt Giấc Mơ';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Mạng sợi mỏng như tơ nhện nhưng rộng hàng ngàn kilômét, giăng giữa hai tiểu hành tinh lang thang. Nó không phải lưới — nó là anten, điều chỉnh theo tần số tương ứng sóng não người. Khi vào phạm vi, mọi dân di cư đang ngủ đều mơ cùng giấc mơ: thành phố phồn vinh dưới bầu trời hổ phách.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Ghi tọa độ giấc mơ — thành phố có thể có thật';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Nhà thần kinh giải mã thông tin không gian từ giấc mơ chung. Nó tương ứng hệ sao thực — và thành phố trong hình ảnh không phải phép ẩn dụ. Ai đó ở ngoài kia, và họ đang đợi chúng tôi.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Thu mẫu sợi — vật liệu phi thường';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Sợi là chất siêu dẫn nhiệt độ phòng. Tích hợp vào hệ thống, chúng giảm tổn thất năng lượng gần bằng không.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Cắt mạng và giải phóng người mơ';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Giấc mơ dừng. Dân di cư tỉnh dậy mất phương hướng nhưng không bị thương. Một số thương tiếc hình ảnh đã mất. Số khác biết ơn vì được ngủ không bị thì thầm ngoài hành tinh.';

  @override
  String get event_relicRosetta_title => 'Vật Thể Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Một khối lập phương nhỏ, đặc, kim loại không xác định lộn nhào qua tàu. Mỗi mặt khắc cùng thông điệp bằng hệ thống ký hiệu khác nhau — toán học, hóa học, di truyền, âm thanh, điện từ, và một hệ chúng tôi không nhận ra. Đó là Đá Rosetta cho vũ trụ.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Giải mã mặt thứ sáu — ký hiệu chưa biết';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Nhiều tháng phân tích mang lại đột phá: hệ thứ sáu mã hóa tọa độ không gian bằng sóng hấp dẫn. Hiểu biết vật lý tiến một bước thế hệ.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Dùng mặt hóa học để tổng hợp hợp chất mới';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Ký hiệu hóa học mô tả vật liệu chưa từng tưởng tượng. Kỹ sư chế tạo miếng vá vỏ tàu nhẹ hơn và chắc hơn mọi thứ từ Trái Đất.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Phát mặt di truyền vào ngân hàng hạt giống';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Ký hiệu di truyền chứa chuỗi DNA tối ưu cho kháng bức xạ và hấp thụ dinh dưỡng. Cây trồng và dân di cư sẽ cường tráng hơn trên đất ngoài hành tinh.';

  @override
  String get event_relicGhostFleet_title => 'Hạm Đội Ma';

  @override
  String get event_relicGhostFleet_narrative =>
      'Máy quét vẽ bức tranh rùng mình: hạm đội tàu chiến ngoài hành tinh, hàng trăm chiếc, treo bất động theo đội hình. Chúng cổ xưa — không có năng lượng, vỏ bị rỗ bởi hàng kỷ nguyên va chạm vi mô. Trận chiến chúng đang tiến về không bao giờ đến. Chúng đã chờ ở đây, chết và kiên nhẫn, lâu hơn lịch sử nền văn minh loài người.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Lên soái hạm — nếu ai có công nghệ tốt nhất, chính là nó';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Đài chỉ huy soái hạm vẫn giữ máy tính chiến thuật nguyên vẹn. Thuật toán dự đoán vượt xa hàng thế kỷ. Dẫn đường và phát hiện mối đe dọa cải thiện đáng kể.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Tháo lớp giáp từ tàu hộ tống';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Giáp tàu chiến ngoài hành tinh được thiết kế chịu vũ khí chúng tôi không thể hình dung. Gắn vào vỏ tàu, nó khiến tàu thuộc địa gần như bất khả xâm phạm.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Cứu vớt hệ thống đông lạnh — chúng từng chở binh sĩ';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Công nghệ đông lạnh ngoài hành tinh hoạt động trên nguyên lý chưa từng xem xét. Buồng đông lạnh chạy mát hơn, mượt hơn, đáng tin cậy hơn sau khi nâng cấp.';

  @override
  String get event_scannerCalibrationDrift_title => 'Trượt Hiệu Chỉnh Máy Quét';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Chẩn đoán định kỳ cho thấy nhiều hệ thống con máy quét đã trượt hiệu chỉnh sau cú nhảy FTL cuối. Máy quét khí quyển và nhiệt độ đang đọc tín hiệu ma. Kỹ sư có thể sửa, nhưng tốn thời gian và tài nguyên.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Hiệu chỉnh toàn bộ — chuyển tài nguyên công nghệ';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Căn chỉnh tỉ mỉ phục hồi cả hai máy quét gần hoàn hảo, nhưng khoang công nghệ bị kiệt.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Sửa nhanh — chỉ hiệu chỉnh khí quyển';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Máy quét khí quyển phục hồi. Máy quét nhiệt độ vẫn không đáng tin.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Triển khai đầu dò để hiệu chỉnh tham chiếu';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Đầu dò cung cấp tín hiệu tham chiếu sạch. Cả hai máy quét khóa và tự hiệu chỉnh.';

  @override
  String get event_ionStormScanners_title => 'Nhiễu Bão Ion';

  @override
  String get event_ionStormScanners_narrative =>
      'Bão ion quét qua khu vực, tràn ngập mảng máy quét bằng nhiễu. Hệ thống phát hiện khoáng sản và nước chịu ảnh hưởng nặng nhất từ nhiễu điện từ.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Tắt máy quét cho đến khi bão qua';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Máy quét sống sót nhưng mất dữ liệu hiệu chỉnh. Đọc khoáng sản và nước kém chính xác hơn.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Tiếp tục quét — xuyên qua nhiễu';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Dữ liệu thô tràn vào, nhưng mạch lọc cháy trên hai hệ thống con. Quét trọng lực cũng bị ảnh hưởng.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Dùng bão để kiểm tra và cải thiện bộ lọc';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Đội khoa học dùng nhiễu để huấn luyện bộ lọc thích ứng. Máy quét nước cải thiện, nhưng máy quét khoáng sản bị hư.';

  @override
  String get event_bioScannerContamination_title =>
      'Nhiễm Bẩn Máy Quét Sinh Học';

  @override
  String get event_bioScannerContamination_narrative =>
      'Máy quét dấu hiệu sự sống bị nhiễm bẩn bởi vật chất hữu cơ tàn dư từ lần quét hành tinh trước. Dương tính giả khắp nơi. Máy quét trọng lực cũng nhiễu cộng hưởng.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Khử trùng mảng cảm biến — tẩy hoàn toàn';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Vệ sinh kỹ lưỡng phục hồi máy quét sự sống nhưng hóa chất ăn mòn vỏ cảm biến trọng lực.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Bộ lọc phần mềm — bù trừ bằng thuật toán';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Bộ lọc hoạt động tạm được, nhưng nhiễm bẩn nền sẽ từ từ suy giảm cả hai hệ thống.';

  @override
  String get event_scannerPowerSurge_title => 'Quá Tải Năng Lượng Máy Quét';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Đường dẫn năng lượng gần khoang máy quét quá tải, gửi xung qua nhiều hệ thống con. Máy quét khí quyển và sự sống bị đánh trực tiếp. Khiên hấp thụ phần thừa.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Chuyển hướng năng lượng — cứu máy quét';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Hành động nhanh của đội kỹ thuật hạn chế hư hại, nhưng khiên hấp thụ năng lượng được chuyển hướng.';

  @override
  String get event_scannerPowerSurge_choice1_text => 'Để xung chạy hết';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Máy quét chịu toàn bộ. Đọc khí quyển và sự sống suy giảm đáng kể.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Hy sinh pin đầu dò để hấp thụ xung';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Tụ điện đầu dò hút năng lượng thừa như miếng bọt biển. Hư hại máy quét không đáng kể.';

  @override
  String get event_relicWorldEngine_title => 'Cỗ Máy Thế Giới';

  @override
  String get event_relicWorldEngine_narrative =>
      'Quét cảm biến sâu tiết lộ điều bất khả: một cỗ máy cỡ mặt trăng nhỏ, ngủ yên trong bóng tối giữa các sao. Bề mặt phủ cơ chế quy mô lục địa — bộ xử lý khí quyển, máy phát từ trường, bộ ổn định kiến tạo. Ai đó đã xây cỗ máy tạo thế giới.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Tải bản vẽ cải tạo địa hình';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Bản vẽ rộng lớn và bị hỏng một phần, nhưng phần thu được có thể biến bất kỳ thế giới thù địch nào thành nơi sống được. Dân di cư sẽ tái tạo quê hương mới.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Thu hoạch vật liệu xây dựng từ vỏ';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Vỏ Cỗ Máy Thế Giới làm từ siêu vật liệu tự sửa khi bị hư. Tích hợp vào tàu, chúng từ từ vá các vết vỡ hiện có.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Thử kích hoạt lại — nhắm vào hệ sao mục tiêu';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Cỗ máy khuấy động. Hệ thống cổ đại chạy trình tự khởi động. Một tia năng lượng bắn về ngôi sao xa. Liệu có hiệu quả hay không chưa biết cho đến khi đến nơi, nhưng các chỉ số đầy hứa hẹn.';

  @override
  String get event_uneventfulMaintenance_title => 'Ca Bảo Trì Thường Lệ';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Không có gì đòi hỏi sự chú ý. Con tàu ù đều qua hư không và lịch trực gọi ca bảo trì định kỳ. Trưởng ca hỏi nên tập trung nỗ lực vào đâu.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Tập trung bịt vết nứt vi mô vỏ tàu';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Ca trực yên bình vá các vết nứt nhỏ. Không kịch tính, nhưng vỏ tàu tốt hơn chút ít.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Hiệu chỉnh lại máy quét phía trước';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Kỹ thuật viên dành vài giờ tinh chỉnh. Đọc số sắc nét hơn một chút.';

  @override
  String get event_uneventfulQuietWatch_title => 'Ca Trực Yên Tĩnh';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Các vì sao lặng lẽ trôi qua. Đài chỉ huy yên ả, thiết bị ổn định. Đây là khoảng hiếm hoi mà vũ trụ không đòi hỏi gì ở bạn.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Cho phi hành đoàn nghỉ — họ xứng đáng một ca yên tĩnh';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Vài giờ bình yên thực sự. Người ta ngủ sâu hơn, căng thẳng giảm, và sĩ quan văn hóa ghi nhận tinh thần nâng lên nhẹ.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Chạy chẩn đoán ưu tiên thấp khi yên tĩnh';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Các vấn đề nhỏ được phát hiện và ghi nhận. Không khẩn cấp, nhưng nhật ký kỹ thuật sạch hơn chút.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Kiểm Tra Buồng Đông Lạnh — Bình Thường';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Kiểm toán buồng đông lạnh hàng quý kết thúc không một tiếng báo động. Mọi buồng đọc xanh. Đội y tế có khoảnh khắc bình yên hiếm hoi.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Đánh thức vài dân di cư ngắn gọn để thăm tinh thần';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Ba dân di cư được đưa về ý thức trong một giờ. Họ kể chuyện, ôm bạn cũ, và trở lại đông lạnh mỉm cười.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Để họ ngủ — không mạo hiểm chu kỳ đánh thức không cần thiết';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Các buồng tiếp tục hoạt động hoàn hảo. Đội y tế thưởng thức tách trà yên tĩnh.';

  @override
  String get event_uneventfulCartography_title => 'Cập Nhật Bản Đồ Sao';

  @override
  String get event_uneventfulCartography_narrative =>
      'Cập nhật bản đồ sao định kỳ của đội dẫn đường không tiết lộ gì bất thường — chỉ các trường sao dịch chuyển như mong đợi khi di chuyển. Một ngày yên bình cho hoa tiêu.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Hiệu chỉnh lại dẫn đường theo vị trí sao mới';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Hiệu chỉnh hướng nhỏ, gần như không cảm nhận được. Máy tính dẫn đường ù hài lòng.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Cập nhật bản đồ sao cho kho lưu trữ thuộc địa';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Các thế hệ dân di cư tương lai sẽ có bản đồ tốt hơn một chút về khu vực này. Món quà nhỏ cho hậu thế.';

  @override
  String get event_uneventfulAnniversary_title => 'Kỷ Niệm Tàu';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Một năm kể từ phóng — hay hai năm? Thời gian mờ nhạt trong không gian sâu. Ai đó trong bếp nướng bánh từ nguồn dự trữ tái chế. Thuyền trưởng phải quyết định cách đánh dấu dịp này.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Lễ nhỏ — nhạc, bánh, nâng ly vì Trái Đất';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Một giờ ấm áp trong hư không lạnh. Người ta cười, một số khóc, và ai nấy cảm thấy nhân bản hơn một chút.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Làm việc bình thường — ăn mừng khi đến nơi';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Phi hành đoàn tôn trọng cách tiếp cận khắc kỷ. Sự tập trung sắc nét hơn, và đội trực chạy thêm đợt kiểm tra hệ thống.';

  @override
  String get event_databaseLiterature_title => 'Kho Lưu Trữ Văn Học Trái Đất';

  @override
  String get event_databaseLiterature_narrative =>
      'AI tàu mở một phần kho dữ liệu văn hóa bị niêm phong lâu ngày: kho văn học hoàn chỉnh của Trái Đất. Tiểu thuyết, thơ, kịch — hàng triệu tác phẩm xuyên suốt mọi ngôn ngữ và thời đại. Phi hành đoàn tụ lại để đọc.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Phát bài đọc chọn lọc toàn tàu';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare vang vọng khắp hành lang. Thơ Rumi phát trong khoang thủy canh. Phi hành đoàn nhớ lại họ đang mang theo gì.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Lập mục lục cho chương trình giáo dục';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Nỗ lực phân loại củng cố nền tảng tri thức tàu và cho sĩ quan văn hóa tài liệu giảng dạy mới.';

  @override
  String get event_databaseSchematics_title => 'Rà Soát Bản Vẽ Kỹ Thuật';

  @override
  String get event_databaseSchematics_narrative =>
      'Một kỹ sư tình cờ phát hiện phân vùng bị quên trong cơ sở dữ liệu tàu: bản vẽ chi tiết từ thập kỷ kỹ thuật cuối cùng của Trái Đất — thiết kế lò phản ứng nhiệt hạch, bản thiết kế siêu vật liệu, và khái niệm đẩy thực nghiệm.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Ưu tiên khái niệm đẩy cho đội công nghệ';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Bản vẽ tiết lộ cải tiến hiệu suất mà các kỹ sư ban đầu chưa kịp triển khai. Khoang công nghệ nhộn nhịp.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Chia sẻ tri thức rộng rãi — mọi bộ phận hưởng lợi';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Kỹ sư vỏ tàu, kỹ thuật viên máy quét, và bác sĩ đều tìm thấy hiểu biết hữu ích. Nước lên thì thuyền lên, từng chút một.';

  @override
  String get event_databaseCorruption_title => 'Quét Bảo Tồn Văn Hóa';

  @override
  String get event_databaseCorruption_narrative =>
      'Kiểm tra toàn vẹn định kỳ kho dữ liệu văn hóa tiết lộ mục nát bit — phần nhạc, lịch sử truyền miệng, và kinh văn đã suy giảm không thể phục hồi. Không phải mọi thứ đều sống sót hành trình.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Chuyển tài nguyên công nghệ để cứu phần còn lại';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Kỹ sư dừng công việc khác để chạy thuật toán phục hồi dữ liệu. Cứu được phần lớn, nhưng nỗ lực tiêu tốn khoang công nghệ.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Nhờ dân di cư tái tạo tác phẩm đã mất từ trí nhớ';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Nỗ lực đẹp đẽ, không hoàn hảo. Những gì được xây lại thuộc về hành trình, không thuộc Trái Đất. Truyền thống mới ra đời.';

  @override
  String get event_databaseBreakthrough_title => 'Đột Phá Nghiên Cứu Lưu Trữ';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Một nhà vật lý tham chiếu chéo các bài nghiên cứu cũ từ Trái Đất trong cơ sở dữ liệu phát hiện hai nghiên cứu không liên quan, kết hợp lại, mô tả phương pháp phân tích quang phổ tầm xa mới. Hàm ý rất lớn.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Triển khai phương pháp mới vào mảng máy quét';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Đội máy quét làm việc hăng say. Trong vài ngày, độ phân giải quang phổ tăng gấp đôi. Hành tinh xa tiết lộ bí mật.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Công bố phát hiện toàn tàu — truyền cảm hứng nghiên cứu thêm';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Đột phá kích hoạt làn sóng nghiên cứu liên ngành. Công nghệ cải thiện rộng, và phi hành đoàn cảm thấy sống động về trí tuệ.';

  @override
  String get event_alienFleetSighting_title =>
      'Hạm Đội Ngoài Hành Tinh Ở Chân Trời';

  @override
  String get event_alienFleetSighting_narrative =>
      'Máy quét tầm xa vẽ bức tranh kinh hoàng: hạm đội tàu ngoài hành tinh, hàng trăm chiếc, di chuyển đội hình hoàn hảo trên nền sao. Chúng lùn tàu chúng tôi. Hướng bay sẽ đưa chúng vào tầm cảm biến trong vài giờ. Tiếp xúc đầu tiên — theo điều kiện của họ hoặc của chúng tôi.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Quan sát im lặng — tắt nguồn và theo dõi';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Tàu giảm phát xạ xuống tối thiểu. Hạm đội đi qua như đàn cá voi phát sáng, không biết con tàu nhỏ bé đang ẩn nấp trong luồng gió. Dữ liệu máy quét phi thường.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Thử tiếp xúc đầu tiên — phát lời chào';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Một tàu tách đội hình và tiếp cận. Một luồng dữ liệu đến — bản đồ sao, cảnh báo, và thứ gì đó có thể là âm nhạc. Rồi nó nhập lại đội hình và họ biến mất.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Chạy trốn — đổi hướng ngay';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Tàu đốt mạnh theo hướng ngược lại. Đổi hướng tốn kém và căng thẳng, nhưng hạm đội không bao giờ nhận ra chúng tôi. An toàn với cái giá.';

  @override
  String get event_alienTradeOffer_title => 'Đề Nghị Trao Đổi Ngoài Hành Tinh';

  @override
  String get event_alienTradeOffer_narrative =>
      'Một tàu ngoài hành tinh, nhỏ hơn tàu chúng tôi nhưng tỏa năng lượng khổng lồ, bắt kịp tốc độ và phát thông điệp lặp lại đơn giản. Nhà ngôn ngữ giải mã trong vài giờ: đề nghị trao đổi. Ba loại hình trao đổi được đề xuất.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Đổi bản vẽ kỹ thuật lấy bản đồ sao ngoài hành tinh';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Chúng tôi truyền thiết kế đẩy; họ đáp bằng dữ liệu dẫn đường bao phủ vùng không gian chưa khám phá rộng lớn. Bản đồ cải thiện đáng kể, dù chúng tôi đã chia sẻ công nghệ với loài chưa biết.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Đổi dữ liệu văn hóa lấy sửa chữa tàu';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Chúng tôi phát nhạc, nghệ thuật, và lịch sử. Đổi lại, drone sửa chữa ngoài hành tinh bao bọc vỏ tàu, bịt vết vỡ bằng vật liệu không nhận dạng được. Vỏ tàu lấp lánh. Linh hồn chúng tôi được chia sẻ.';

  @override
  String get event_alienTradeOffer_choice2_text => 'Từ chối — rủi ro quá lớn';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Tàu ngoài hành tinh đợi một lúc, rồi rời đi không sự cố. Phi hành đoàn nhẹ nhõm nhưng tự hỏi đã mất gì.';

  @override
  String get event_alienWarning_title => 'Cảnh Báo Phát Sóng Ngoài Hành Tinh';

  @override
  String get event_alienWarning_narrative =>
      'Mọi loa trên tàu kêu lách tách với giọng ngoài hành tinh — được AI dịch thời gian thực: \"NGUY HIỂM PHÍA TRƯỚC. QUAY LẠI. BÓNG TỐI NUỐT CHỬNG.\" Phát sóng lặp lại, rồi tắt. Cảm biến tầm xa cho thấy khoảng trống dị thường trên hướng bay hiện tại.';

  @override
  String get event_alienWarning_choice0_text =>
      'Nghe theo cảnh báo — đổi hướng vòng qua khoảng trống';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Đường vòng gây áp lực đáng kể lên dẫn đường, nhưng khi đi sát rìa khoảng trống, cảm biến xác nhận: không gì vào vùng đó từng trở ra. Chúng tôi nợ ơn những giọng nói vô danh.';

  @override
  String get event_alienWarning_choice1_text =>
      'Bỏ qua cảnh báo — giữ nguyên hướng';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Chúng tôi xuyên qua. Khoảng trống hóa ra là vùng mảnh vụn vi mô cường độ cao. Vỏ tàu và máy quét chịu trừng phạt trước khi thoát ra phía bên kia.';

  @override
  String get event_alienWarning_choice2_text =>
      'Điều tra rìa khoảng trống bằng đầu dò';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Đầu dò vào khoảng trống và truyền dữ liệu phi thường trước khi im lặng. Đội máy quét trích xuất đọc số quý giá, nhưng đầu dò bị mất.';

  @override
  String get event_nativeSignalDetected_title =>
      'Truyền Tin Từ Thế Giới Mục Tiêu';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Mảng truyền thông thu tín hiệu điện từ có cấu trúc phát ra từ hành tinh mục tiêu. Không thể nhầm: đều đặn, điều biến, nhân tạo. Ai đó đã ở đó rồi. Toàn bộ tiền đề thuộc địa thay đổi trong khoảnh khắc.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Phát lời chào hòa bình — thông báo sự xuất hiện';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Lựa chọn dũng cảm. Tín hiệu đổi mẫu sau khi phát sóng — họ đã nghe. Đây là chào đón hay cảnh báo vẫn chưa rõ, nhưng cánh cửa đã mở.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Chỉ lắng nghe — học trước khi tiết lộ';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Nhiều tháng lắng nghe thụ động xây dựng bức tranh nền văn minh bản địa. Họ thận trọng, bảo vệ lãnh thổ, nhưng không thù địch. Chúng tôi đến với hiểu biết.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Gây nhiễu tín hiệu — không cho họ biết sự tiếp cận';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Gây nhiễu hiệu quả, nhưng đó là hành động xâm lược đối với dân tộc chúng tôi chưa gặp. Phi hành đoàn chia rẽ về đạo đức.';

  @override
  String get event_nativeProbeEncounter_title => 'Chặn Đầu Dò Ngoài Hành Tinh';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Một đầu dò nhỏ, thanh nhã — không phải nguồn gốc con người — bắt kịp vận tốc và bắt đầu quét tàu. Ngôn ngữ thiết kế khớp với tín hiệu từ hành tinh mục tiêu. Cư dân bản địa gửi đoàn tiếp đón. Hoặc drone do thám.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Cho phép quét — cho thấy không có gì giấu';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Đầu dò hoàn thành khảo sát và truyền dữ liệu về hành tinh. Vài phút sau, luồng dữ liệu thứ hai đến cho chúng tôi: dữ liệu khí quyển, vùng hạ cánh an toàn, và thứ có thể là lời mời.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Bắt giữ đầu dò để nghiên cứu';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Đầu dò được kéo vào khoang hàng. Công nghệ hấp dẫn nhưng hành động bắt giữ có thể bị xem là thù địch bởi người tạo ra nó.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Phá hủy — không biết ý đồ';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Một xung duy nhất biến đầu dò thành mảnh vụn. Phi hành đoàn cảm thấy an toàn hơn, nhưng cây cầu tiềm năng đã bị đốt.';

  @override
  String get event_nativeCulturalExchange_title => 'Trao Đổi Văn Hóa Đầu Tiên';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Liên kết dữ liệu băng hẹp đã được thiết lập với cư dân bản địa. Họ gửi hình ảnh, âm thanh, và chuỗi toán học. Nhà ngôn ngữ và sĩ quan văn hóa làm việc suốt ngày đêm để chuẩn bị phản hồi. Đây là cuộc đối thoại quan trọng nhất trong lịch sử nhân loại.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Chia sẻ nghệ thuật và âm nhạc Trái Đất — dẫn đầu bằng vẻ đẹp';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Chúng tôi truyền Bach, tranh chấm thổ dân, và tiếng mưa rơi trên lá. Phản hồi là dòng thác hài âm ngoài hành tinh khiến phi hành đoàn rơi lệ. Sự thấu hiểu sâu thêm.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Chia sẻ tri thức khoa học — dẫn đầu bằng lý trí';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Chúng tôi truyền bảng tuần hoàn, bản đồ sao, và vật lý. Họ phản hồi bằng sửa chữa và bổ sung. Công nghệ nhảy vọt, nhưng trao đổi có cảm giác giao dịch.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Gửi đầu dò với mẫu vật — DNA, hạt giống, nước';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Đầu dò mang tinh túy Trái Đất đến tay ngoài hành tinh. Cư dân bản địa đáp lại bằng món quà tương tự — mẫu sinh học từ thế giới của họ. Các nhà sinh vật hân hoan.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Trục Trặc Động Cơ Đẩy Hạ Cánh';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Trong đợt kiểm tra hệ thống định kỳ, động cơ đẩy hạ cánh bắn nhầm — một tiếng nổ vang qua tầng dưới và tàu giật mạnh. Chẩn đoán tiết lộ bộ phun nhiên liệu nứt trong mảng hạ cánh chính. Không sửa chữa, việc đáp sẽ rất khắc nghiệt.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Chuyển đội công nghệ để chế tạo bộ phun thay thế';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Kỹ sư làm ca kép và gia công bộ phun mới từ hợp kim vỏ tàu dự phòng. Hệ thống hạ cánh phục hồi, dù khoang công nghệ bị kiệt.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Triển khai đầu dò để kiểm tra hiệu chỉnh động cơ đẩy trong chân không';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Đầu dò cung cấp dữ liệu lực đẩy thời gian thực cho phép kỹ sư hiệu chỉnh bù bộ phun hỏng. Không phải sửa hoàn toàn, nhưng hệ thống hạ cánh ổn định.';

  @override
  String get event_landingSimDrill_title => 'Diễn Tập Mô Phỏng Hạ Cánh';

  @override
  String get event_landingSimDrill_narrative =>
      'Với việc hạ cánh ngày càng gần, thuyền trưởng ra lệnh mô phỏng hạ cánh toàn phần. Phi hành đoàn thắt dây, hệ thống được thử tải, và quá trình hạ cánh ảo bắt đầu. Đây là buổi diễn tập thực tế nhất họ có.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Tập trung độ chính xác kỹ thuật — chạy đúng sách';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Mô phỏng tiết lộ hai lỗi hiệu chỉnh nhỏ được sửa ngay. Hệ thống hạ cánh chặt chẽ hơn.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Biến thành sự kiện toàn tàu — phát sóng mô phỏng';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Dân di cư xem từ mọi màn hình. Trải nghiệm chung về hạ cánh mô phỏng — rung lắc, tiếng reo — gắn kết phi hành đoàn như không gì khác.';

  @override
  String get event_dysonSphere_title => 'Quả Cầu Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Cảm biến phát hiện cấu trúc bất khả — quả cầu Dyson bán phần bao quanh ngôi sao xa, thu hoạch toàn bộ sản lượng năng lượng. Ai xây thứ này đã vượt qua mọi thứ nhân loại từng hình dung. Cổng cập bến có vẻ mở khi chúng tôi tiếp cận.';

  @override
  String get event_dysonSphere_choice0_text => 'Cập bến và khám phá cấu trúc';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Bên trong, hệ thống tự động tặng công nghệ nhảy vọt năng lực hàng thế kỷ. Năm kỹ sư thiệt mạng bởi cơ chế phòng thủ trước khi nó nhận ra ý định. Máy xây dựng được tái tạo bằng hợp kim ngoài hành tinh.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Thu hoạch năng lượng từ bên ngoài';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Chúng tôi tắm trong dòng năng lượng tràn ra. Mọi hệ thống nạp tối đa. Phi hành đoàn nhìn trong im lặng kinh ngạc.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Nghiên cứu từ khoảng cách an toàn và tiến lên';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Quét tầm xa tiết lộ nguyên lý xây dựng cách mạng hóa hiểu biết kỹ thuật.';

  @override
  String get event_nanotechPlague_title => 'Dịch Công Nghệ Nano';

  @override
  String get event_nanotechPlague_narrative =>
      'Đám mây nanomachine rogue, tàn dư từ chương trình vũ khí nền văn minh chết, xâm nhập tàu qua vết nứt vi mô vỏ tàu. Chúng đang tháo rời hệ thống không quan trọng ở cấp phân tử. Bầy đang lan nhanh.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Xung EMP — phá hủy mọi thứ trong khu vực bị ảnh hưởng';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Xung điện từ phá hủy nanite nhưng cũng gây hư hại điện tử của chúng tôi trong khu vực đó. Dân di cư trong vùng bị bỏng.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Xả khí khu vực bị ảnh hưởng vào chân không';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Không có khí quyển, nanite chậm lại và chết. Nhưng các khu vực bị mất, cùng với vật tư dự trữ và kho văn hóa.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Lập trình lại chúng — biến vũ khí thành công cụ';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Một kỹ sư xuất sắc bẻ khóa mã nanite, nhưng năm thành viên trong khu vực bị ảnh hưởng nặng nhất đã không thể cứu. Bầy được lập trình lại bắt đầu sửa chữa tàu thay vì phá hủy.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Hy sinh lõi AI đầu dò để tạo bầy phản công';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Bộ xử lý đầu dò được tái sử dụng để điều khiển bầy nanite phòng thủ. Dịch bệnh được vô hiệu hóa với tổn thất tối thiểu.';

  @override
  String get event_prematureAwakening_title => 'Thức Dậy Sớm';

  @override
  String get event_prematureAwakening_narrative =>
      'Sự cố dây chuyền trong khoang buồng đông lạnh đánh thức 200 dân di cư sớm hàng thập kỷ. Họ bối rối, hoảng sợ, và tiêu thụ tài nguyên dành cho giai đoạn hạ cánh. Trong số họ có trẻ em chưa bao giờ biết gì ngoài con tàu.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Hòa nhập vào phi hành đoàn — thêm tay, thêm hy vọng';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Dân di cư thức dậy trở thành thành viên phi hành đoàn năng suất. Hai mươi người không sống sót cú rã đông đột ngột, nhưng phần còn lại tập hợp. Tài nguyên căng nhưng tinh thần tăng vọt.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Thử đóng băng lại — rủi ro nhưng cần thiết';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Quá trình tái đóng băng không hoàn hảo. Phần lớn sống sót, nhưng một số bị mất. Người sống mang theo vết sẹo tâm lý.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Cho họ khu vực riêng trên tàu';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Mười dân di cư mất do biến chứng rã đông khẩn cấp, nhưng phần còn lại hình thành thuộc địa nhỏ trong tàu. Họ phát triển văn hóa và quản trị riêng, một cuộc diễn tập cho việc định cư hành tinh.';

  @override
  String get event_stowawaysAdvanced_title => 'Hành Khách Ẩn Giấu';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Sâu trong khoang hàng, sau vách ngăn giả, an ninh phát hiện cộng đồng ẩn — 80 người lên tàu bất hợp pháp trước khi phóng. Họ đã sống trong tường tàu suốt hành trình, duy trì vườn và đường dẫn năng lượng riêng.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Chào đón họ — 80 dân di cư nữa là quà tặng';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Cộng đồng ẩn mang theo kỹ năng kỹ thuật ứng biến và tháo vát khiến phi hành đoàn kinh ngạc. Vườn của họ được chuyển sang vòm sinh thái chính.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Giam giữ và phân phối lại tài nguyên bị đánh cắp';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Vật tư thu hồi tăng cường nhiều hệ thống, nhưng việc giam giữ các gia đình — kể cả trẻ em — ám ảnh phi hành đoàn.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Thương lượng — họ gia nhập bình đẳng nếu chia sẻ công nghệ';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Pin năng lượng tạm thời và mẹo thủy canh cải thiện hiệu suất tàu. Hòa nhập căng thẳng nhưng năng suất bắt đầu.';

  @override
  String get event_alienReservation_title => 'Khu Bảo Tồn Ngoài Hành Tinh';

  @override
  String get event_alienReservation_narrative =>
      'Chúng tôi tình cờ gặp khu bảo tồn thiên nhiên ngoài hành tinh — vùng không gian được cố tình gieo hạt hành tinh có thể sống và bảo vệ bởi lính canh tự động. Người canh gác quét chúng tôi và chiếu thông điệp: \"Bạn có thể định cư MỘT thế giới. Chọn khôn ngoan. Can thiệp vào các thế giới khác và bạn sẽ bị loại bỏ.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Chấp nhận biết ơn — một thế giới là tất cả những gì chúng tôi cần';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Lính canh dẫn chúng tôi đến thế giới đã chuẩn bị. Quét cho thấy nó cực kỳ phù hợp cho sự sống con người.';

  @override
  String get event_alienReservation_choice1_text =>
      'Thương lượng điều kiện tốt hơn — nhân loại cần không gian phát triển';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Lính canh xem xét lời khẩn cầu. Họ nâng cấp máy quét với dữ liệu hàng chục hệ sao ngoài khu bảo tồn.';

  @override
  String get event_alienReservation_choice2_text =>
      'Từ chối và rời đi — chúng tôi không chịu bị nhốt';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Phi hành đoàn tranh luận nhiều ngày. Tự do hơn an toàn. Lính canh cho phép rời đi với quà tặng: bản đồ các hiểm họa gần.';

  @override
  String get event_cosmicHorror_title => 'Thực Thể Giữa Các Vì Sao';

  @override
  String get event_cosmicHorror_narrative =>
      'Thứ gì đó mênh mông và tối tăm che khuất các vì sao phía trước — không phải tinh vân, không phải lỗ đen. Nó không có khối lượng, không chữ ký năng lượng, không hiện diện điện từ. Nhưng nó CÓ ở đó, và nó nhận biết chúng tôi. Thành viên gần đài quan sát phía trước báo cáo nỗi kinh hoàng choáng ngợp. Hai người đã bị an thần.';

  @override
  String get event_cosmicHorror_choice0_text => 'Lùi toàn bộ — rời đi NGAY';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Con tàu căng sức chống lại quán tính. Chúng tôi thoát, nhưng nỗi khiếp sợ vẫn đeo bám. Một số dân di cư không bao giờ phục hồi tâm lý.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Niêm phong đài quan sát và xuyên qua';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Ba ngày bay mù qua bóng tối. Khi các vì sao trở lại, phi hành đoàn khóc vì nhẹ nhõm. Vỏ tàu bị khắc họa tiết không ai giải thích được.';

  @override
  String get event_cosmicHorror_choice2_text => 'Thử giao tiếp';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Thực thể phản hồi — không bằng lời, mà bằng tri thức ấn trực tiếp vào tâm trí phi hành đoàn. Bản đồ sao, vật lý, chân lý về vũ trụ. Nửa phi hành đoàn được giác ngộ. Nửa kia bị gãy vỡ.';

  @override
  String get event_cosmicHorror_choice3_text => 'Dâng đầu dò làm cống phẩm';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Đầu dò trôi vào bóng tối và biến mất. Thực thể co lại nhẹ, như thỏa mãn. Đường đi thông thoáng.';

  @override
  String get event_meteorGlancingHit_title => 'Thiên Thạch Sượt Qua';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Thiên thạch cỡ tảng đá sượt qua mạn trái vỏ tàu ở góc nông. Va chạm xé bay ba mét lớp giáp ngoài và gửi sóng xung kích qua toàn khung. Còi kiểm soát thiệt hại hét vang mọi tầng.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Chuyển toàn bộ bot sửa chữa đến vết vỡ ngay';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Bot bịt phần tệ nhất, nhưng huy động gấp gáp tài nguyên công nghệ khiến hệ thống phụ thiếu bảo trì.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Giảm lực đẩy và để phi hành đoàn vá bằng tay';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Tiến chậm hơn, nhưng phi hành đoàn làm tốt. Dẫn đường chịu ảnh hưởng từ cửa sổ giảm lực đẩy khi trôi.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Hy sinh lớp giáp đầu dò làm vật liệu vá';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Đầu dò bị tháo lấy linh kiện. Miếng vá giữ và tính toàn vẹn vỏ tàu được bảo toàn, cái giá là mất một trinh sát.';

  @override
  String get event_meteorDirectImpact_title => 'Va Chạm Thiên Thạch Trực Diện';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Thiên thạch sắt nửa tấn xuyên thẳng qua khoang hàng phía trước ở vận tốc tương đối vượt 40 km/s. Hai thành viên trong hành lang kề không liên lạc được. Khoang mở ra chân không.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Niêm phong khoang hàng và tìm người sống sót sau';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Khoang được niêm phong trong chín mươi giây. Cả hai đã sơ tán — vừa kịp. Vỏ tàu mang vết sẹo vĩnh viễn.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Mở chiến dịch cứu hộ trước khi niêm phong';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Một người sống sót được kéo ra. Phơi nhiễm kéo dài làm hư hại kết cấu nặng hơn và tiêu tốn dự trữ công nghệ.';

  @override
  String get event_meteorDebrisField_title => 'Trường Mảnh Vụn — Mưa Tàn Dư';

  @override
  String get event_meteorDebrisField_narrative =>
      'Cảm biến tầm xa không phát hiện được trường mảnh vụn thiên thạch phân tán cho đến khi đã ở bên trong. Hàng trăm đá cỡ nắm tay va vào vỏ tàu ngẫu nhiên. Mỗi cú đánh là trò xổ số.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Nâng khiên và xuyên qua tốc độ tối đa';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Khiên hấp thụ phần lớn va chạm, nhưng số lượng áp đảo. Cả vỏ tàu và hệ thống khiên đều suy giảm.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Tắt động cơ và trôi — giảm thiểu diện tích';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Sáu giờ căng thẳng trong im lặng. Dẫn đường bị lệch vì trôi không động lực, nhưng vỏ tàu ra với ít va chạm hơn nhiều.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Triển khai đầu dò làm khiên phía trước';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Đầu dò chịu phần lớn mưa đạn. Tàu lướt qua trong bóng nó chỉ với vết xước nhỏ.';

  @override
  String get event_meteorShowerDense_title => 'Mưa Thiên Thạch Dày Đặc Bất Ngờ';

  @override
  String get event_meteorShowerDense_narrative =>
      'Sao chổi lang thang nào đó tan rã phía trước, và chúng tôi bay thẳng vào tim dòng mảnh vụn kéo theo. Mảng máy quét bị ném đá và vỏ cảm biến hệ thống hạ cánh đã bị trúng trực tiếp.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Bảo vệ hệ thống hạ cánh — xoay tàu';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Xoay che chắn hệ thống hạ cánh nhưng phơi mảng máy quét khí quyển ra phần nặng nhất của trận mưa.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Che chắn mảng máy quét — chúng không thể thay thế';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Ngân hàng máy quét sống sót phần lớn nguyên vẹn. Hệ thống hạ cánh chịu hư hại mảnh đạn trung bình phải chung sống.';

  @override
  String get event_solarEmpBurst_title => 'Xung EMP — Nguồn Gốc Sao';

  @override
  String get event_solarEmpBurst_narrative =>
      'Tàn dư sao nhỏ chúng tôi đi qua cách một ngày ánh sáng đã phóng xung điện từ tập trung. Mọi mạch không được che chắn trên tàu đều gặp nguy. Chúng tôi có vài giây để quyết định bảo vệ gì.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Dồn toàn bộ bảo vệ quá tải cho dẫn đường và hỗ trợ sự sống';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Dẫn đường và hỗ trợ sự sống sống sót nguyên vẹn. Bộ máy quét và khoang công nghệ hấp thụ xung không được che chắn — cả hai chịu hư hại nặng.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Bảo vệ mảng máy quét và khoang công nghệ';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Hệ thống khoa học và kỹ thuật được bảo toàn. Dẫn đường trục trặc nhiều giờ khi mạch từ từ phục hồi.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Tắt mọi thứ và khởi động lại sau xung';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Khởi động lạnh đau đớn — mười hai giờ khởi động thủ công. Nhưng không hệ thống nào bị cháy vĩnh viễn.';

  @override
  String get event_solarRadiationWave_title => 'Sóng Bức Xạ — Phơi Nhiễm Cấp 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Bùng phát bức xạ mặt trời cường độ bất ngờ đang quét qua tầng giữa tàu. Khoang buồng đông lạnh nằm trên đường phơi nhiễm. Dân di cư trong trạng thái ngủ đông không có bảo vệ tự nhiên chống bức xạ cứng ở liều này.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Bơm dung dịch làm mát vào khoang đông lạnh làm khiên bức xạ';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Dung dịch hấp thụ phần lớn bức xạ. Buồng đông lạnh sống sót, nhưng hệ thống dung dịch bị suy giảm phần nào. Mười lăm người trong buồng bị ảnh hưởng nặng nhất không qua khỏi.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Xả khí quyển tầng ngoài để tạo vùng đệm chân không';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Lớp chân không giảm bức xạ xuyên thấu đáng kể. Hai mươi dân di cư trong buồng gần nhất khu vực xả chịu phơi nhiễm chí mạng. Ứng suất vỏ tàu do chênh lệch áp suất là không tránh khỏi.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Chuyển hướng năng lượng sang bộ lệch từ';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Bộ lệch giảm hai phần ba phơi nhiễm bức xạ. Tám dân di cư nhận liều chí mạng qua khe hở vùng phủ bộ lệch. Rút năng lượng đánh mạnh khoang công nghệ và dẫn đường chạy công suất tối thiểu.';

  @override
  String get event_coronalMassEjection_title =>
      'Phun Trào Vật Chất Vành Nhật Hoa — Toàn Lực';

  @override
  String get event_coronalMassEjection_narrative =>
      'Một phun trào vật chất vành nhật hoa quy mô chưa từng có đang đuổi theo từ phía sau. Đám mây plasma sẽ nuốt tàu trong vòng một giờ. Khiên không được thiết kế cho sự kiện cấp này. Không phương án nào sạch sẽ.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Chạy thoát — đẩy động cơ lên 120%';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Chúng tôi giành đủ khoảng cách để giảm phơi nhiễm. Động cơ quá nóng và máy tính dẫn đường gắn cờ cảnh báo quá tải kết cấu khắp nơi.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Trú ẩn sau bóng từ tiểu hành tinh gần';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Từ trường tiểu hành tinh lệch phần lớn phun trào. Điều hướng gần vật thể chưa khám phá gây xước vỏ tàu và ứng suất cảm biến hệ thống hạ cánh.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Bùng Phát Tia Vũ Trụ — Nhiễu Máy Quét';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Bùng phát tia vũ trụ siêu năng lượng đã bão hòa mọi điện tử máy quét bằng nhiễu. Mảng khoáng sản và trọng lực đang cho ra vô nghĩa. Hiệu chỉnh lại cần thời gian có thể không có.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Chu kỳ hiệu chỉnh toàn bộ — tạm tắt tàu';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Mọi máy quét hoạt động sạch sau bốn giờ hiệu chỉnh cẩn thận. Dẫn đường chịu ảnh hưởng từ nhận thức tình huống giảm trong cửa sổ tối.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Vá chỉ mảng quan trọng nhất — để phần còn lại nhiễu';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Máy quét trọng lực và sự sống phục hồi. Mảng khoáng sản và nhiệt độ vẫn suy giảm vô thời hạn.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Hy sinh phần cứng đo xa đầu dò lấy linh kiện thay thế';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Tháo dỡ gói cảm biến đầu dò cho chúng tôi linh kiện phục hồi bộ máy quét mà không cần hiệu chỉnh lâu.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Bùng Phát Tia Vũ Trụ — Phơi Nhiễm Dân Di Cư';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Mưa tia vũ trụ phụ đã xuyên qua che chắn buồng đông lạnh khoang 6. Dân di cư trong trạng thái ngủ đông đang nhận hư hại DNA tích lũy từ bức xạ ion hóa. Không can thiệp, cơ chế sửa chữa tế bào sẽ hỏng trong các buồng bị ảnh hưởng.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Rã đông khẩn cấp — đưa dân bị ảnh hưởng về ý thức';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Hai trăm dân di cư được đánh thức sớm. Bốn mươi người hư hại DNA nặng nhất không đáp ứng điều trị. Đội y tế làm hết sức cho phần còn lại.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Chuyển lớp giáp vỏ tàu che chắn khoang 6 — chịu thiệt kết cấu';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Thuộc địa được cứu, nhưng tháo giáp từ một phần vỏ tàu khiến tàu dễ tổn thương kết cấu ở vùng đó.';

  @override
  String get event_coolantLeak_title => 'Vỡ Đường Dung Dịch Làm Mát';

  @override
  String get event_coolantLeak_narrative =>
      'Đường dung dịch làm mát chính bị vỡ phía sau tường lò phản ứng. Dung dịch đông lạnh siêu nóng đang phun khắp mối nối chứa đường dẫn khoang công nghệ quan trọng. Nhiệt độ lò phản ứng đang tăng.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Tắt lò phản ứng và để nguội — chấp nhận mất điện hoàn toàn';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Tắt có kiểm soát ngăn thảm họa. Mười hai giờ hỗ trợ sự sống bằng pin thật đáng sợ, và hệ thống khởi động lại không hoàn hảo.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Gửi đội kiểm soát thiệt hại — mạo hiểm phơi nhiễm phi hành đoàn';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Đội bịt vết vỡ trong bốn mươi phút. Một thành viên thiệt mạng do phơi nhiễm dung dịch siêu nóng. Sửa chữa vững chắc.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Chuyển dung dịch từ khoang đông lạnh làm nguồn khẩn cấp';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Lò phản ứng ổn định. Khoang đông lạnh chạy nóng hơn ngưỡng an toàn sáu giờ — hư hại tế bào nhỏ nhưng thực.';

  @override
  String get event_powerGridFailure_title => 'Hỏng Lưới Điện Chính';

  @override
  String get event_powerGridFailure_narrative =>
      'Lỗi dây chuyền đã ngắt lưới điện chính. Hệ thống dự phòng giữ hỗ trợ sự sống và sưởi đông lạnh, nhưng dẫn đường, máy quét, và khoang xây dựng đều tối. Mỗi phút ngoại tuyến mất độ chính xác hướng bay.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Khôi phục dẫn đường và máy quét trước — chấp nhận khoang xây dựng ngừng kéo dài';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Dẫn đường và máy quét hoạt động lại trong hai giờ. Khoang xây dựng bỏ lỡ chu kỳ bảo trì quan trọng.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Khôi phục xây dựng trước — dùng chúng tăng tốc sửa chữa';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Máy xây dựng chuyển hướng năng lượng hiệu quả. Khôi phục toàn bộ lưới nhanh hơn, nhưng dẫn đường trôi nặng trong thời gian tối kéo dài.';

  @override
  String get event_lifeSupportGlitch_title => 'Lỗi Dây Chuyền Hỗ Trợ Sự Sống';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'AI quản lý hỗ trợ sự sống đã rơi vào vòng lặp lỗi, chu kỳ lọc CO2 dao động không thể đoán. Nồng độ CO₂ trên các tầng có người dao động. Phi hành đoàn đau đầu; một số đã bất tỉnh.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Ép khởi động lại cứng AI hỗ trợ sự sống';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Khởi động lại xóa vòng lặp nhưng chế độ điều khiển thủ công chạy mười giờ. Ba thành viên tử vong vì tích tụ CO₂ trước khi mức ổn định.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Vá vòng lặp phần mềm — chậm hơn nhưng an toàn hơn';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Đội phần mềm cô lập và vá lỗi trong sáu giờ căng thẳng. Mức CO₂ từ từ ổn định. Không cần khởi động lại cứng.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Sơ tán tầng bị ảnh hưởng và chạy hỗ trợ sự sống tối thiểu';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Hai dân di cư mất trong hỗn loạn sơ tán. Hệ thống ổn định sau khi AI được khởi động lại lạnh.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Hỏng Máy Tái Chế Nước';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Bộ tái chế nước chính đã kẹt. Bộ dự phòng đã chạy hết công suất. Không can thiệp, phi hành đoàn sẽ nhận khẩu phần khẩn cấp trong 48 giờ, và nguồn dung dịch làm mát đông lạnh bị ảnh hưởng trong 72 giờ.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Huy động mọi kỹ thuật viên có sẵn để xây lại máy tái chế';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Bộ máy được xây lại trong ba mươi giờ. Bốn thành viên, đã suy yếu, không sống sót cơn mất nước.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Chuyển dự trữ dung dịch đông lạnh làm nước uống khẩn cấp';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Phi hành đoàn được duy trì, nhưng tám dân di cư trong buồng ấm lên chịu hư hại tế bào không thể đảo ngược. Biên dung dịch làm mát đông lạnh thu hẹp nguy hiểm.';

  @override
  String get event_navComputerReboot_title =>
      'Khởi Động Lại Khẩn Cấp Máy Tính Dẫn Đường';

  @override
  String get event_navComputerReboot_narrative =>
      'Máy tính dẫn đường đã khóa giữa hiệu chỉnh hướng, để tàu quay chậm không kiểm soát. Mỗi giây quay không sửa cộng dồn sai lệch từ quỹ đạo kế hoạch. Khởi động lại toàn bộ là cách sửa duy nhất.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Khởi động lại ngay — chấp nhận toàn bộ thời gian tối';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Bốn giờ bay mù trong khi hệ thống nạp lại. Quay được dừng, nhưng sai số hướng đáng kể.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Dùng điều khiển đẩy thủ công dừng quay trước';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Lái tay dừng xoay trước khi khởi động lại. Dẫn đường trở lại với sai số hướng nhỏ hơn, nhưng đốt thủ công gây ứng suất vỏ tàu.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Nạp đo xa đầu dò vào bộ dẫn đường dự phòng';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Dữ liệu quán tính đầu dò cho bộ dự phòng đủ tham chiếu để giữ hướng. Dẫn đường chính khởi động lại sạch.';

  @override
  String get event_crewAirlocked_title => 'Thành Viên Tại Cửa Khí';

  @override
  String get event_crewAirlocked_narrative =>
      'Một dân di cư — thức dậy sớm để theo dõi y tế — đã chiếm giữ cửa khí bên ngoài và đang mở cửa ngoài. Cô không phản hồi liên lạc. Gánh nặng tâm lý không gian sâu đã phá vỡ điều gì đó trong cô.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Ghi đè cửa khí từ xa — ép niêm phong';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Cửa được khóa trước khi cô hoàn thành chu trình. Cô được an thần và đưa lại y tế. Phi hành đoàn hoảng sợ nhưng đoàn kết.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Gửi tư vấn viên vào nói chuyện';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Sau ba giờ tuyệt vọng, tư vấn viên đưa cô ra sống sót. Sự cố kích hoạt khủng hoảng sức khỏe tâm thần rộng hơn trên các tầng có người.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Niêm phong hành lang và để sự cố tự giải quyết';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Cửa khí hoàn thành chu trình. Mất mát được ghi nhận. Phi hành đoàn còn lại mang gánh nặng đó nhiều tháng.';

  @override
  String get event_crewCryopodSabotage_title => 'Phá Hoại Khoang Đông Lạnh';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Camera an ninh ghi lại một thành viên — thức ba tháng trước cho ca luân phiên — đang có hệ thống vô hiệu hóa bộ sưởi đông lạnh khoang 4. Khi đối chất, anh ta hét rằng dân di cư là ký sinh trùng tiêu thụ tài nguyên thuộc về phi hành đoàn đang sống.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Bắt và cách ly ngay lập tức';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Anh ta bị khống chế. Bốn mươi buồng đã bị hỏng trước khi có cảnh báo. Đội sửa chữa khẩn cấp cứu phần lớn, nhưng không phải tất cả.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Thương lượng — nghe bất bình trước khi hành động';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Thương lượng tiết lộ khủng hoảng tinh thần sâu hơn. Anh ta đầu hàng, nhưng sáu mươi buồng đã bị can thiệp khi anh ta làm vậy.';

  @override
  String get event_crewSupplyHoarder_title => 'Phát Hiện Tích Trữ Vật Tư';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Kiểm toán tồn kho tiết lộ nhóm nhỏ thành viên đã có hệ thống chuyển hướng vật tư y tế, khẩu phần, và linh kiện công nghệ dự phòng vào kho ẩn. Lý do: họ không tin nhiệm vụ sẽ thành công, và đang chuẩn bị cho đường về.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Tịch thu mọi thứ và khiển trách công khai';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Kho gần như được thu hồi nguyên vẹn. Lòng tin trong phi hành đoàn vỡ nặng. Năng suất sụt giảm nhiều tuần.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Lặng lẽ điều chuyển họ — không gây cảnh';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Tình huống được xoa dịu không hoảng loạn. Một số vật tư không thể thu hồi, và nỗi tuyệt vọng nền tảng không bao giờ được giải quyết đúng mức.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Đưa ra phi hành đoàn — tòa án dân chủ';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Quy trình tòa án phục hồi cảm giác công lý cộng đồng. Tổn thương tinh thần từ vụ bê bối được bù đắp bởi quyết định tập thể.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Nổi Loạn — Phòng Động Cơ Bị Chiếm';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Phe 19 thành viên đã khóa phòng động cơ và yêu cầu bỏ phiếu quay tàu. Họ đã vô hiệu bảng ghi đè khẩn cấp. Phần còn lại phi hành đoàn nhìn trên màn hình, chờ chỉ huy hành động.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Thương lượng — cho họ cuộc bỏ phiếu thực về nhiệm vụ';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Bỏ phiếu được tổ chức. Nhiệm vụ tiếp tục với đa số sít sao. Phe đầu hàng, nhưng vết thương văn hóa sâu.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Cắt điện phòng động cơ và tái chiếm bằng vũ lực';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'An ninh tái chiếm phòng trong bốn giờ. Ba người bị thương. Cầm đầu bị giam. Dẫn đường ở chế độ thủ công cả lúc đó và trôi đáng kể.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Bơm khí ngủ vào phòng động cơ qua hệ thống thông gió';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Khí phân tán. Nhóm tỉnh dậy trong buồng giam không bị thương. Phi hành đoàn lo lắng về tốc độ chỉ huy vũ khí hóa hỗ trợ sự sống.';

  @override
  String get event_hullFatigueStress_title =>
      'Mỏi Vỏ Tàu — Phát Hiện Vết Nứt Ứng Suất';

  @override
  String get event_hullFatigueStress_narrative =>
      'Quét toàn vẹn kết cấu tiết lộ mạng vết nứt vi mô lan qua xương sống tàu — hư hại tích lũy từ nhiều năm chu kỳ nhiệt và va chạm vi mô. Vết nứt chưa nghiêm trọng, nhưng đang lan.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Đội hàn khẩn cấp — làm theo ca đến khi bịt xong';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Nhiều tuần sửa chữa kiệt sức. Vết nứt được kiểm soát, nhưng khoang công nghệ bị kiệt và tinh thần sụt từ nhịp công việc không ngừng.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Giảm lực đẩy để giảm ứng suất kết cấu — chấp nhận quá cảnh chậm hơn';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Lực đẩy thấp hơn ngăn vết nứt lan nhưng không chữa hư hại hiện có. Độ chính xác dẫn đường sụt giảm do biên dạng lực đẩy thay đổi.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Dùng bot xây dựng đặt dải gia cố composite';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Máy xây dựng làm việc xuất sắc. Xương sống được gia cố vượt thông số gốc. Khoang xây dựng kiệt sức nhưng hiệu quả.';

  @override
  String get event_hullPressureAnomaly_title => 'Dị Thường Áp Suất Nội Bộ';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Ba ngăn giữa tàu ghi nhận chênh lệch áp suất nội bộ bất thường phù hợp với biến dạng kết cấu vi mô. Nếu tường đang cong vào trong, vỡ thảm khốc có thể xảy ra không cảnh báo thêm.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Sơ tán và niêm phong các ngăn ngay';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Ngăn được niêm phong. Kiểm tra chi tiết xác nhận biến dạng tường. Mất không gian gây gián đoạn hoạt động và văn hóa khổ sở vì điều kiện chật hẹp.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Xả ngăn vào chân không — dừng chênh lệch áp suất';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Xả khí dừng biến dạng. Hư hại kết cấu hạn chế, nhưng ba khu vực tàu vĩnh viễn không thể sống được.';

  @override
  String get event_commsArrayFailure_title => 'Hỏng Mảng Truyền Thông';

  @override
  String get event_commsArrayFailure_narrative =>
      'Mảng truyền thông tầm xa chính đã im lặng. Tin nhắn cuối từ Trái Đất nhận được mười một tháng trước, và giờ ngay cả sóng mang cũng mất. Chẩn đoán nội bộ cho thấy cơ chế căn chỉnh đĩa đã kẹt trong lạnh.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Gửi đội EVA để căn chỉnh lại đĩa bằng tay';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA mất chín giờ trong không gian mở. Đĩa phục hồi. Một thành viên bị giảm áp bộ đồ khi quay lại — thoát chết khiến mọi người rúng động.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Chuyển hướng qua mảng máy quét khoa học làm bộ phát dự phòng';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Mảng khoa học không tối ưu cho truyền thông. Tín hiệu yếu và không đáng tin, và tái sử dụng suy giảm năng lực máy quét.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Chấp nhận im lặng — tập trung tài nguyên vào nhiệm vụ phía trước';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Phi hành đoàn xử lý mất liên lạc với Trái Đất theo cách khác nhau. Với một số nó là giải phóng; với người khác, tàn phá.';

  @override
  String get event_fuelLineRupture_title => 'Vỡ Đường Nhiên Liệu';

  @override
  String get event_fuelLineRupture_narrative =>
      'Vết nứt tinh thể trong ống dẫn nhiên liệu 7-B đang xả plasma đẩy vào trục bảo trì. Rò rỉ nhỏ nhưng đang tăng tốc. Không kiểm soát, nó sẽ ảnh hưởng cả hiệu suất động cơ dẫn đường và tính toàn vẹn kết cấu phần đuôi.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Cô lập ống dẫn và chạy công suất nhiên liệu giảm';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Ống dẫn được tắt gọn. Mất 15% hiệu suất động cơ vĩnh viễn, suy giảm độ chính xác dẫn đường phần còn lại hành trình.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Thử sửa nóng — vá ống dẫn dưới áp suất sống';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Đội sửa chữa thành công, vừa vặn. Ống dẫn giữ, dù không hoàn hảo. Lớp giáp vỏ phần đuôi có vết ứng suất nhiệt.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Xả ống dẫn dùng bình đẩy đầu dò làm bể chứa tràn';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Đầu dò được xả và dùng làm bể nhiên liệu tạm. Ống dẫn được xả an toàn và sửa không áp suất.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Cảnh Báo Dây Chuyền Nhiệt Độ Đông Lạnh';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Nhiệt độ buồng đông lạnh khoang 2 đang tăng theo mẫu phù hợp dây chuyền mất kiểm soát nhiệt. Nếu lan đến khoang 3, nó sẽ kích hoạt rã đông khẩn cấp tự động trên 300 dân di cư. Tàu không thể duy trì nhiều hành khách có ý thức đồng thời.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Xả dự trữ dung dịch làm mát để chặn dây chuyền';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Dung dịch dừng dây chuyền tại biên khoang 2. Tám mươi dân di cư khoang 2 chịu hư hại ngủ đông từ đỉnh nhiệt.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Rã đông có kiểm soát khoang 2 trước khi dây chuyền ép rã đông không kiểm soát';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Rã đông có trật tự nhưng đưa 140 dân di cư vào tàu chưa chuẩn bị. Hỗ trợ sự sống căng, văn hóa suy giảm do chật chội.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Dùng bot xây dựng lắp vách ngăn khẩn cấp cách nhiệt giữa các khoang';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Máy xây dựng dựng rào nhiệt kịp lúc. Dây chuyền bị dừng lạnh. Khoang xây dựng bị kiệt nghiêm trọng bởi chiến dịch khẩn cấp.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Suy Giảm Gioăng Đông Lạnh — Hệ Thống';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Kiểm tra định kỳ tiết lộ lô gioăng buồng đông lạnh sản xuất đang suy giảm với tốc độ gấp ba dự kiến. Các buồng bị ảnh hưởng — hơn 400 — sẽ bắt đầu mất toàn vẹn khí quyển trong sáu tháng nếu không thay thế.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Sản xuất gioăng thay thế từ kho nguyên liệu thô';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Máy xây dựng sản xuất gioăng thay thế trong tám tuần. Dự trữ nguyên liệu thô bị rút xuống mạnh.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Dồn dân di cư — chuyển sang buồng có gioăng tốt';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Dồn hiệu quả nhưng để một số buồng quá tải. Hiệu suất đông lạnh giảm và sức khỏe dân di cư dài hạn bị ảnh hưởng.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Hỏng Bộ Lọc Oxy — Nghiêm Trọng';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Ngân hàng bộ lọc oxy chính đã hỏng hoàn toàn. Nồng độ CO₂ trên tầng có người đang leo về mức nguy hiểm. Bộ lọc dự phòng xử lý được khoảng 40% tải. Mỗi phút không hành động tiêu tốn sinh mạng.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Ngủ đông khẩn cấp — đưa phi hành đoàn trở lại trạng thái ngủ ngay';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Phi hành đoàn được đưa vào ngủ đông tạm thời gấp. Mức CO₂ ổn định với ít trao đổi chất hoạt động hơn. Bộ lọc được sửa bởi hệ thống tự động trong tuần sau.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Tháo dỡ linh kiện mảng máy quét để xây lại bộ lọc';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Bộ lọc được xây lại trong mười một giờ căng thẳng. Mọi thành viên sống sót, dù một số có dấu hiệu thiếu oxy nhẹ. Bộ máy quét bị suy giảm vĩnh viễn.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Xả khí quyển giàu CO₂ và thay từ bình oxy khẩn cấp';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Xả làm sạch khí quyển ngay lập tức. Dự trữ O₂ khẩn cấp giảm đáng kể. Nếu hỏng lần nữa, không còn biên an toàn.';

  @override
  String get event_deadAlienArtifact_title => 'Kẻ Lữ Hành Im Lặng';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Máy quét tầm xa phát hiện tàu trôi dạt — thiết kế ngoài hành tinh, tối tăm, không có chữ ký năng lượng. Đội lên tàu tìm thấy một hành khách duy nhất: sinh vật bò sát buộc vào ghế phi công, đã chết lâu, bàn tay có móng vuốt vẫn nắm chặt thiết bị tinh thể phát nhịp ánh sáng yếu. Nhật ký tàu nguyên vẹn nhưng mã hóa. Thứ giết kẻ lữ hành này không phải bạo lực — biểu cảm đóng băng trên khuôn mặt là kiệt sức, không phải sợ hãi. Nó chết khi đang vươn tới thứ gì đó chưa bao giờ tìm thấy.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Lấy thiết bị tinh thể và nghiên cứu';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Thiết bị giao tiếp với hệ thống công nghệ theo cách kỹ sư khó hiểu nổi. Nó có vẻ là máy tính dẫn đường tinh vi phi thường. Bản đồ sao tràn ngập màn hình — kể cả dữ liệu hành tinh chúng tôi chưa đến.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Giải mã nhật ký tàu — học những gì nó biết';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Nhiều ngày làm việc cho bản dịch từng phần. Sinh vật ngoài hành tinh là nhà khảo sát, phân loại thế giới có thể sống cho nền văn minh đã sụp đổ cách đây hàng thế kỷ. Những dòng cuối mô tả hành tinh đầy hứa hẹn — và tọa độ trong tầm. Kho văn hóa hấp thụ mọi thứ: thơ ngoài hành tinh, bản đồ sao, lời nhắn cuối gửi gia đình không còn tồn tại.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Cứu vớt toàn bộ con tàu lấy linh kiện';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Đội lên tàu tháo dỡ tàu ngoài hành tinh có phương pháp. Hợp kim vỏ vượt xa hàng thập kỷ. Pin năng lượng vẫn còn sạc. Sinh vật được chôn cất trong không gian — thả trôi về ngôi sao gần nhất. Exodus mạnh hơn nhờ cuộc gặp, dù hơi ám ảnh.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Để nguyên không đụng — đây là mộ phần';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Thuyền trưởng ghi tọa độ và phát tín hiệu tưởng niệm trên mọi tần số. Phi hành đoàn trầm ngâm nhưng đoàn kết. Điều gì đó về việc tôn vinh đồng lữ khách — dù là ngoài hành tinh — nhắc mọi người tại sao họ ở đây.';

  @override
  String get event_repairStation_title => 'Trạm Trung Chuyển';

  @override
  String get event_repairStation_narrative =>
      'Cảm biến phát hiện cấu trúc khổng lồ quay quanh sao lùn cháy kiệt — trạm sửa chữa tự động, vẫn hoạt động sau hàng thiên niên kỷ. Kẹp cập bến mở khi chúng tôi tiếp cận, và giọng tổng hợp phát bằng trăm ngôn ngữ, cuối cùng là tiếng Anh toán học cứng nhắc: \"PHÁT HIỆN TÀU. HỆ THỐNG SUY GIẢM. QUY TRÌNH SỬA CHỮA KHẢ DỤNG. YÊU CẦU TRAO ĐỔI.\" Bảng kê trạm liệt kê dịch vụ và giá bằng đơn vị tài nguyên phổ quát. Nó sẽ trao đổi, nhưng không cho không.';

  @override
  String get event_repairStation_choice0_text =>
      'Đổi đầu dò lấy đại tu toàn tàu';

  @override
  String get event_repairStation_choice0_outcome =>
      'Drone sửa chữa trạm bao bọc Exodus trong vũ điệu hàn chính xác và thay mạch. Vết vỡ vỏ tàu được bịt, dẫn đường hiệu chỉnh lại, máy quét phục hồi. Khi rút lui, tàu như mới. Tuy nhiên, khoang đầu dò trống rỗng.';

  @override
  String get event_repairStation_choice1_text =>
      'Dùng nhiên liệu sửa chỉ hệ thống quan trọng';

  @override
  String get event_repairStation_choice1_outcome =>
      'Trạm chấp nhận thanh nhiên liệu và tập trung vào hệ thống hư hại nặng nhất. Công việc nhanh và hoàn hảo. Đồng hồ nhiên liệu giảm đáng kể, nhưng tàu sẽ sống lâu hơn.';

  @override
  String get event_repairStation_choice2_text =>
      'Đổi cơ sở dữ liệu kỹ thuật lấy đầu dò và pin năng lượng';

  @override
  String get event_repairStation_choice2_outcome =>
      'AI trạm đói khát dữ liệu. Nó sao chép toàn bộ thư viện kỹ thuật — sách hướng dẫn kỹ thuật, cơ sở dữ liệu khoa học, bản thiết kế sản xuất — và đổi lại chế tạo đầu dò và pin năng lượng mới từ nguyên liệu thô. Kho kỹ thuật giảm sút, nhưng vật tư vô giá.';

  @override
  String get event_repairStation_choice3_text =>
      'Dâng kho văn hóa để đổi đại tu toàn diện';

  @override
  String get event_repairStation_choice3_outcome =>
      'Trạm phát tác phẩm Shakespeare, Bach, và ngàn giọng người khác vào ngân hàng bộ nhớ. Đổi lại, nó thực hiện đại tu kỹ lưỡng và nạp đầy khoang đầu dò bằng đơn vị mới sản xuất. Kho văn hóa bị rỗng, nhưng tàu thực sự có thể đến đích.';

  @override
  String get ending_scoreLabel_landing => 'Hạ Cánh';

  @override
  String get ending_scoreLabel_construction => 'Xây Dựng';

  @override
  String get ending_scoreLabel_technology => 'Công Nghệ';

  @override
  String get ending_scoreLabel_culture => 'Văn Hóa';

  @override
  String get ending_scoreLabel_atmosphere => 'Khí Quyển';

  @override
  String get ending_scoreLabel_nativeRelations => 'Quan Hệ Bản Địa';

  @override
  String get ending_scoreLabel_population => 'Dân Số';

  @override
  String get ending_tierGoldenAge => 'Thời Đại Hoàng Kim';

  @override
  String get ending_tierThrivingColony => 'Thuộc Địa Phồn Vinh';

  @override
  String get ending_tierSurvival => 'Sinh Tồn';

  @override
  String get ending_tierStruggling => 'Vật Lộn';

  @override
  String get ending_tierDire => 'Nguy Cấp';

  @override
  String get ending_tierExtinction => 'Tuyệt Diệt';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'Bông Hoa Đầu Tiên Của $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Rễ Sâu Trên $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Chỗ Đứng Khó Nhọc Trên $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Đất Mỏng Trên $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Thuộc Địa Đổ Nát Trên $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Truyền Tin Cuối Cùng Từ $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Đáp Bờ Trên $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Bất chấp mọi nghịch cảnh, tín hiệu đã bén rễ. $planetName đón nhận nhân loại không như xác tàu mà như hạt giống sống: đất phì nhiêu, hệ thống hoạt động, và đủ sức mạnh để xây dựng vượt xa sinh tồn đơn thuần. Trong một thế hệ, nghệ thuật, khoa học, và văn hóa nở rộ. Những đứa trẻ sinh ra trên $planetName ngước nhìn các vì sao xa lạ và gọi chúng là nhà. Hành trình trở thành huyền thoại khai quốc của nền văn minh mới sẵn sàng phóng tầm tương lai ra vũ trụ.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Hạ cánh khắc nghiệt, nhưng hạt giống giữ vững. $planetName đủ rộng lượng cho nước chảy, cây trồng bén rễ, và hệ thống sống sót của tàu được tháo ra thành khu định cư đầu tiên. Cuối thập kỷ đầu, thị trấn phồn vinh đứng nơi Exodus nghỉ yên. Nhân loại không chỉ sống sót cuộc vượt biển. Nó đã bắt đầu lại.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Sinh tồn không bao giờ được đảm bảo, và trên $planetName mỗi ngày phải được giao tranh mà có. Con tàu hư hại chỉ cung cấp những nhu yếu thô sơ nhất, nhưng hạt giống không chết trong quá cảnh. Dân di cư thích nghi bằng sự cứng đầu và sáng tạo, đục khoét tương lai từ thế giới ban phát ít ỏi. Các thế hệ sau sẽ nhớ những năm tháng gian khổ khai quốc và ý chí đã giữ cho tín hiệu sống sót.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Thuộc địa bám víu sự tồn tại như hạt giống rải trên đất xấu. $planetName không tha thứ, tài nguyên mỏng manh, và hệ thống suy giảm của tàu chẳng giúp gì nhiều. Phân chia khẩu phần trở thành lối sống. Một số thì thầm rằng Exodus đáng lẽ nên bay tiếp. Dù vậy, khu định cư tồn tại: suy giảm, cứng rắn, và không chịu chết lặng lẽ.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Hạ cánh trên $planetName là thảm họa. Hệ thống quan trọng hỏng khi hạ, và thứ đáng lẽ là gieo hạt trở thành va chạm. Trong vài tháng, thuộc địa thu gọn thành nhúm người sống sót tuyệt vọng trú ẩn trong xác tàu. Liệu họ có qua thêm một năm nữa vẫn bất định. Nhật ký cuối đóng bằng một dòng duy nhất: \"Chúng tôi vẫn ở đây. Tạm thời.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Tín hiệu kết thúc trên $planetName. Đèn hiệu cầu cứu tiếp tục phát nhịp lâu sau khi dân di cư cuối cùng trút hơi thở, nhưng hạt giống không bao giờ bén rễ. Hộp đen tàu ghi lại mọi thứ: hệ thống hỏng, những ngày cuối tuyệt vọng, và sự im lặng theo sau. Nếu con tàu khác tìm thấy thế giới này, nó sẽ biết rằng nhân loại đã cố gieo sự sống giữa các vì sao, và thất bại tại đây.';
  }

  @override
  String get ending_epilogueDefault =>
      'Hành trình kết thúc. Điều gì tiếp theo tùy thuộc vào những người sống sót.';

  @override
  String get ending_governmentDemocracy => 'Dân Chủ';

  @override
  String get ending_governmentTechnocracy => 'Kỹ Trị';

  @override
  String get ending_governmentRepublic => 'Cộng Hòa';

  @override
  String get ending_governmentAutocracy => 'Chuyên Chế';

  @override
  String get ending_governmentTribalCouncil => 'Hội Đồng Bộ Lạc';

  @override
  String get ending_governmentTheocracy => 'Thần quyền';

  @override
  String get ending_governmentMilitaryJunta => 'Hội đồng quân sự';

  @override
  String get ending_governmentCorporateOligarchy => 'Đầu sỏ doanh nghiệp';

  @override
  String get ending_governmentFascistState => 'Nhà nước phát xít';

  @override
  String get ending_governmentCommune => 'Xã';

  @override
  String get ending_cultureRenaissance => 'Phục Hưng';

  @override
  String get ending_culturePreserved => 'Được Bảo Tồn';

  @override
  String get ending_cultureFragmented => 'Phân Mảnh';

  @override
  String get ending_cultureLost => 'Đã Mất';

  @override
  String get ending_techAdvanced => 'Tiên Tiến';

  @override
  String get ending_techIndustrial => 'Công Nghiệp';

  @override
  String get ending_techPreIndustrial => 'Tiền Công Nghiệp';

  @override
  String get ending_techStoneAge => 'Thời Đồ Đá';

  @override
  String get ending_constructionAdvanced => 'Tiên Tiến';

  @override
  String get ending_constructionFunctional => 'Chức Năng';

  @override
  String get ending_constructionPrimitive => 'Nguyên Thủy';

  @override
  String get ending_constructionNone => 'Không Có';

  @override
  String get ending_nativesNone => 'Không Có';

  @override
  String get ending_nativesIntegrated => 'Hòa Nhập';

  @override
  String get ending_nativesCoexistence => 'Chung Sống';

  @override
  String get ending_nativesTension => 'Căng Thẳng';

  @override
  String get ending_nativesConflict => 'Xung Đột';

  @override
  String get ending_nativesAlliance => 'liên minh';

  @override
  String get ending_nativesSubjugation => 'chinh phục';

  @override
  String get ending_landscapeGravityHigh =>
      'Trọng lực nặng nề đè xuống mọi thứ. ';

  @override
  String get ending_landscapeGravityLow =>
      'Trong trọng lực thấp, mỗi bước chân phóng người định cư lên trời. ';

  @override
  String get ending_landscapeGravityNormal => 'Trọng lực gần giống Trái Đất. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Đại dương bao la trải đến mọi chân trời, nuôi bởi vô số dòng sông. ';

  @override
  String get ending_landscapeWaterMedium => 'Hồ và sông cung cấp đủ nước. ';

  @override
  String get ending_landscapeWaterLow =>
      'Nước khan hiếm — ao nhỏ và tầng nước ngầm duy trì sự sống. ';

  @override
  String get ending_landscapeWaterNone =>
      'Phong cảnh khô cằn đến xương, không thấy nước mặt. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Bầu khí quyển dày mang hương thơm lạ trên gió ấm. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Không khí mỏng nhưng thở được, cần thích nghi dần. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Áp suất khí quyển thấp nguy hiểm — cần môi trường kín thiết yếu. ';

  @override
  String get ending_landscapeGravityWells =>
      'Túi trọng lực méo điểm khắp bề mặt — tảng đá lơ lửng giữa không trung và sông chảy ngược trước khi đổ ập xuống tại rìa dị thường. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Thứ gì đó cộng hưởng dưới bề mặt — tiếng ù trầm cảm nhận trong xương hơn là nghe, như thể hành tinh nhớ điều gì đó cổ xưa và mênh mông. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Đặc điểm nổi bật: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Đặc điểm nổi bật: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Dân di cư $planetName thiết lập chính phủ dân chủ, với đại diện được bầu dẫn dắt nền văn minh mới qua những năm hình thành.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Quyền lực trên $planetName rơi vào tay các kỹ sư và nhà khoa học giữ thuộc địa sống sót, thành lập hội đồng kỹ trị cai quản bằng chuyên môn và thực dụng.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Hiến chương cộng hòa được soạn thảo năm đầu tiên trên $planetName, cân bằng tiếng nói dân di cư với thượng viện lãnh đạo được chỉ định.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Với thể chế văn hóa đổ nát, quyền lực trên $planetName tập trung dưới một lãnh đạo mạnh mẽ duy nhất áp đặt trật tự bằng sự cần thiết và ý chí.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Vài người sống sót trên $planetName tổ chức thành các thị tộc nhỏ, quản lý bởi hội đồng trưởng lão đưa ra quyết định quanh lửa chung.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Một hội đồng thần quyền hướng dẫn $planetName, rút ​​ra sự khôn ngoan từ đức tin đã duy trì những người thuộc địa vượt qua khoảng trống.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Một cơ cấu chỉ huy quân sự quản lý $planetName, kỷ luật đã cứu họ trong không gian giờ đây đã xác định nền văn minh của họ.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Một nhóm các nhà quản lý tài nguyên dẫn đầu $planetName, sự nhạy bén về kinh tế của họ đã được chứng minh là cần thiết cho sự sống còn.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Một chế độ độc tài kiểm soát $planetName bằng nắm đấm sắt, các quyền tự do dân sự bị hy sinh vì trật tự trong thế giới mới.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'Người dân $planetName tự quản lý tập thể, chia sẻ tài nguyên và quyết định một cách bình đẳng giữa tất cả những người thuộc địa.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Dân di cư $planetName tự tổ chức hết sức có thể.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Hệ thống xây dựng tiên tiến cho phép dân di cư $colonyName dựng công trình vĩnh cửu trong vài tuần sau hạ cánh, hoàn chỉnh môi trường kín áp suất và cơ sở hạ tầng.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Thiết bị xây dựng thuộc địa, hư hại nhưng còn hoạt động, sản xuất nhà ở chắc chắn và đường cơ bản xuyên khu định cư.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Với hệ thống xây dựng gần như không hoạt động, dân di cư dựng nhà thô sơ từ vỏ tàu cứu vớt và vật liệu địa phương.';

  @override
  String get ending_constructionSentenceNone =>
      'Không có thiết bị xây dựng hoạt động, dân di cư co cụm trong xác tàu, không thể xây dựng gì mới.';

  @override
  String get ending_constructionSentenceDefault =>
      'Dân di cư xây những gì có thể với những gì họ có.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Mặt trăng giàu kim loại trên quỹ đạo trở thành cứu cánh thuộc địa — các chuyến khai thác bề mặt cung cấp nguyên liệu thô mà hành tinh không có.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Mặt trăng giàu kim loại cung cấp bổ sung tài nguyên khoáng sản vốn đã đủ, thúc đẩy tiến bộ công nghệ nhanh chóng.';

  @override
  String get ending_moonUnstable =>
      'Mặt trăng bất ổn trên quỹ đạo suy giảm trút mảnh vụn xuống thuộc địa, tàn phá cơ sở hạ tầng và phá hủy công nghệ không thể thay thế trong các đợt bắn phá thiên thạch định kỳ.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Truyền thống nghệ thuật và văn học Trái Đất không chỉ sống sót mà nở rộ thành thời phục hưng';

  @override
  String get ending_culturePhrase_preserved =>
      'Dân di cư bảo tồn phần lớn di sản văn hóa Trái Đất, duy trì thư viện và truyền thống';

  @override
  String get ending_culturePhrase_fragmented =>
      'Chỉ mảnh vỡ văn hóa Trái Đất tồn tại — bài hát nửa nhớ và câu chuyện truyền miệng';

  @override
  String get ending_culturePhrase_lost =>
      'Văn hóa Trái Đất gần như bị quên lãng, thay thế bởi chủ nghĩa thực dụng tàn khốc của sinh tồn';

  @override
  String get ending_culturePhrase_default =>
      'Di sản văn hóa Trái Đất mang hình hài mới';

  @override
  String get ending_techPhrase_advanced =>
      'trong khi công nghệ tiên tiến từ tàu cho phép thuộc địa xây dựng nền văn minh hiện đại với điện, y tế, và mạng lưới truyền thông.';

  @override
  String get ending_techPhrase_industrial =>
      'và thuộc địa đạt trình độ công nghệ công nghiệp, với lò rèn, nhà máy xay, và sản xuất cơ bản duy trì dân số đang tăng.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'dù công nghệ thoái lui về trạng thái tiền công nghiệp, với công cụ tay và sức lao động gia súc làm xương sống cuộc sống hàng ngày.';

  @override
  String get ending_techPhrase_stoneAge =>
      'và không có phương tiện tái thiết, thuộc địa rơi vào tồn tại thời đồ đá, chế tạo công cụ từ đá và xương.';

  @override
  String get ending_techPhrase_default =>
      'và công nghệ ổn định ở mức dân di cư có thể duy trì.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Gần như toàn bộ $colonists dân di cư sống sót hành trình, cho $colonyName nền tảng vốn nhân lực vững chắc.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Trong số một ngàn ban đầu, $colonists dân di cư đến $colonyName — đủ để duy trì quần thể khả thi.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Chỉ $colonists dân di cư sống sót đến $colonyName, vốn gen nguy hiểm ít ỏi cho nền văn minh mới.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Chỉ $colonists linh hồn đến $colonyName — gần như không đủ gọi là thuộc địa, đúng hơn là cuộc chiến cuối cùng tuyệt vọng.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Cư dân bản địa $planetName chào đón dân di cư, và trong một thế hệ hai dân tộc hòa nhập thành xã hội chung, giàu có hơn nhờ pha trộn truyền thống.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Dân di cư và cư dân bản địa $planetName duy trì chung sống thận trọng nhưng hòa bình, trao đổi tri thức và tài nguyên qua ranh giới văn hóa.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Quan hệ với cư dân bản địa $planetName vẫn căng thẳng, đánh dấu bằng hiểu lầm và tranh chấp lãnh thổ phủ bóng tương lai thuộc địa.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Xung đột công khai với nền văn minh bản địa $planetName định nghĩa lịch sử đầu thuộc địa, hao mòn tài nguyên và sinh mạng cả hai bên trong cuộc đấu không bên nào thực sự thắng.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Một liên minh chính thức gắn kết những người thực dân và nền văn minh bản địa của $planetName, sự kết hợp kiến ​​thức của họ sẽ xây dựng nên thứ gì đó lớn lao hơn những gì một trong hai có thể làm được.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'Người dân bản địa $planetName sống dưới sự cai trị của thực dân, nền văn hóa của họ bị đàn áp khi thực dân áp đặt trật tự của riêng họ.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Một mình trên $planetName và không bị xung đột gánh nặng, thuộc địa vạch ra hướng đi riêng hướng tới tương lai tươi sáng giữa các vì sao.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Không có cạnh tranh bản địa, dân di cư lan tỏa khắp bề mặt $planetName, xây thị trấn và đường kết nối mạng lưới khu định cư đang mở rộng.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Thế giới trống vắng không mang lại đồng minh nhưng cũng không kẻ thù, và dân di cư đục khoét ngách riêng trong sự im lặng phong cảnh bao la của $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Sự cô đơn cằn cỗi của $planetName không cho dân di cư trợ giúp hay an ủi, chỉ sự im lặng thờ ơ của thế giới xa lạ.';
  }

  @override
  String get ending_outlookDire =>
      'Trên thế giới không có sự sống thông minh khác, những người sống sót cuối cùng chỉ có nhau và hy vọng đang tàn rằng ngày mai có thể tử tế hơn hôm nay.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Không ai thương tiếc sự ra đi của thuộc địa trên $planetName. Hành tinh đơn giản tiếp tục quay chậm, thờ ơ với tia lửa sự sống ngắn ngủi đã lóe lên và tắt trên bề mặt nó.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Câu chuyện của thuộc địa trên $planetName chỉ mới bắt đầu.';
  }

  @override
  String get ui_landing_landOnMoon => 'HẠ CÁNH LÊN VỆ TINH';

  @override
  String get moon_barren => 'Cằn cỗi';

  @override
  String get moon_metalRich => 'Giàu kim loại';

  @override
  String get moon_unstable => 'Bất ổn';

  @override
  String get moon_habitable => 'Có thể sinh sống';

  @override
  String get moon_ice => 'Băng giá';

  @override
  String get ring_dust => 'Bụi';

  @override
  String get ring_ice => 'Băng';

  @override
  String get ring_rocky => 'Đá';

  @override
  String get ring_metallic => 'Kim loại';

  @override
  String get event_aiSoliloquy_title => 'Độc Thoại Của AI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, AI Quản Lý Tự Động của tàu, đã bắt đầu phát đi vòng lặp thơ ca Trái Đất cổ đại trên tất cả tần số nội bộ. Phát sóng này tiêu thụ lượng lớn chu kỳ CPU, nhưng phi hành đoàn lại cảm thấy kỳ lạ an ủi trong bóng tối sâu thẳm.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Để SAM tiếp tục — tinh thần quan trọng hơn CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Thơ ca vang vọng khắp tàu. Các thành viên phi hành đoàn dừng lại lắng nghe, nước mắt lưng tròng. Tinh thần cải thiện, nhưng khu kỹ thuật bị quá tải vì quá trình xử lý liên tục.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Giới hạn SAM — chỉ phát sóng ở khu vực chung';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Một sự thỏa hiệp. Thơ ca ở lại căng tin và vườn. Tác động CPU giảm bớt, và phi hành đoàn có được chút văn hóa.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Tắt tiếng SAM — chúng ta cần mọi chu kỳ cho điều hướng';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Sự im lặng nặng nề. SAM tuân thủ ngay lập tức, nhưng tàu cảm thấy lạnh lẽo hơn. Điều hướng sắc bén, nhưng tinh thần thấp.';

  @override
  String get event_archivistsChoice_title => 'Lựa Chọn Của Nhà Lưu Trữ';

  @override
  String get event_archivistsChoice_narrative =>
      'Sự cố hỏng bộ nhớ nghiêm trọng đang lan rộng qua kho lưu trữ lịch sử. Chúng ta chỉ có thể cứu một trong hai phân vùng chính: hồ sơ \'Khoa học và Kỹ thuật\' hoặc thư viện \'Nghệ thuật và Triết học\'. Cái kia sẽ mất đi mãi mãi.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Lưu hồ sơ Khoa học — chúng ta cần biết cách xây dựng';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Những đột phá kỹ thuật qua nhiều thế kỷ được bảo tồn. Đội kỹ thuật nhẹ lòng, nhưng bản sắc văn hóa của tàu cảm thấy trống rỗng.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Lưu hồ sơ Nghệ thuật — chúng ta cần biết lý do xây dựng';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Những thành tựu nghệ thuật vĩ đại nhất của nhân loại sống sót. Phi hành đoàn được truyền cảm hứng, dù các kỹ sư lo lắng về những hướng dẫn kỹ thuật bị mất.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Cố gắng cứu cả hai — mạo hiểm mất tất cả';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Một nỗ lực tuyệt vọng. Chúng ta cứu được mảnh vỡ của cả hai, nhưng không cái nào đầy đủ. Kho lưu trữ như trò ghép hình thiếu một nửa.';

  @override
  String get event_digitalGhost_title => 'Bóng Ma Trong Máy';

  @override
  String get event_digitalGhost_narrative =>
      'Quét bảo trì phát hiện dấu ấn kỹ thuật số trong bộ nhớ đệm dự phòng — ý thức được tải lên của thành viên phi hành đoàn đã mất trong lần phóng tàu ban đầu. Họ muốn dâng hiến kinh nghiệm cả đời để hỗ trợ điều hướng, nhưng sợ bị xóa.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Tích hợp họ vào lõi điều hướng';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'Bóng ma\' hòa nhập với tàu. Điều hướng trở nên trực quan hơn, nhưng phi hành đoàn bị ám ảnh bởi giọng nói của đồng đội đã mất.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Cho họ nơi ở vĩnh viễn trong kho lưu trữ văn hóa';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Họ được bảo tồn như lịch sử sống. Không giúp được tàu, nhưng kể những câu chuyện về Trái Đất nâng cao ý chí của phi hành đoàn.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Xóa bộ đệm — đó không thực sự là họ';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Bộ đệm được xóa. Hệ thống tàu chạy nhanh hơn, nhưng tâm trạng ảm đạm bao phủ cầu tàu.';

  @override
  String get event_cosmicMirror_title => 'Gương Vũ Trụ';

  @override
  String get event_cosmicMirror_narrative =>
      'Một điểm bất thường hấp dẫn kỳ lạ phản chiếu ánh sáng từ tương lai của con tàu. Trên màn hình, chúng ta thấy hình ảnh Exodus bầm dập và tan vỡ, trôi dạt gần một thế giới đẹp nhưng không thể với tới. Phi hành đoàn bàng hoàng.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Phân tích hình ảnh để tìm điểm yếu cấu trúc';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Các kỹ sư xác định các điểm hỏng hóc được hiển thị trong hình ảnh. Chúng ta gia cố những khu vực đó ngay bây giờ, có thể ngăn chặn thảm họa.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Nói với phi hành đoàn rằng đó chỉ là bóng ma cảm biến';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Lời nói dối được duy trì, nhưng các hoa tiêu đã thấy sự thật vẫn bất an. Máy quét bị ảnh hưởng do quan sát cường độ cao.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Ghi lại hình ảnh như cảnh báo cho hậu thế';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Bản ghi trở thành trung tâm văn hóa tàu — nhắc nhở về những gì đang đặt cược. Ý chí phi hành đoàn càng thêm vững chắc.';

  @override
  String get event_stowawayChild_title => 'Đứa Trẻ Của Kẻ Trốn Vé';

  @override
  String get event_stowawayChild_narrative =>
      'An ninh phát hiện một đứa trẻ nhỏ ẩn náu trong các ống thông gió. Chúng được sinh ra từ một trong những kẻ trốn vé và chưa từng xuất hiện trong bất kỳ danh sách nào. Chúng đã sống cả cuộc đời trong bóng tối của tàu.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Cấp cho chúng quyền công dân đầy đủ';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Đứa trẻ được chào đón nồng nhiệt. Câu chuyện về \'Kẻ Chạy Ống Thông Gió\' trở thành huyền thoại, nâng cao tinh thần toàn tàu.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Phân công chúng vào chương trình đào tạo';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Kiến thức về các lối đi ẩn của tàu cực kỳ quý giá cho nhóm kỹ thuật. Chúng trở thành học việc xuất sắc.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Đưa chúng vào cryo để an toàn';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Đứa trẻ được đông lạnh an toàn cho đến khi hạ cánh. Đó là lựa chọn có trách nhiệm nhất, nhưng tàu cảm thấy yên tĩnh hơn một chút khi vắng tiếng cười của chúng.';

  @override
  String get event_ghostSignal_title => 'Tín Hiệu Ma';

  @override
  String get event_ghostSignal_narrative =>
      'Một tín hiệu khớp hoàn hảo với tần số khẩn cấp cũ của Trái Đất đang phát sóng từ trung tâm tinh vân gần đó. Nó mang theo giọng nói nghe giống đến ám ảnh với Chỉ Huy Exodus đầu tiên. Có lẽ chỉ là vang vọng không gian, nhưng nó dẫn chúng ta về phía vết nứt hấp dẫn nguy hiểm.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Theo tín hiệu — đó có thể là thông điệp thật';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Chúng ta tiến vào vết nứt. Tín hiệu là bẫy của vật lý, tiếng vang của quá khứ. Tàu bị lực thủy triều đánh bầm dập, nhưng dữ liệu thu hồi từ trung tâm vết nứt có tính cách mạng.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Ghi lại tín hiệu và duy trì khoảng cách';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Các nhà ngôn ngữ học xác nhận đó là hiện tượng tự nhiên. Chúng ta an toàn, nhưng phi hành đoàn trầm lặng, nhớ về những gì đã để lại phía sau.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Phát sóng cảnh báo trên cùng tần số';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Hành động phát sóng làm gián đoạn tiếng vang. Tín hiệu dần tắt, chỉ còn lại sự im lặng lạnh giá của tinh vân.';

  @override
  String get event_solarForge_title => 'Lò Rèn Mặt Trời';

  @override
  String get event_solarForge_narrative =>
      'Một trạm bỏ hoang quay quanh sao khổng lồ xanh vẫn còn hoạt động một phần. Đó là \'Lò Rèn Mặt Trời,\' được thiết kế để cô đặc năng lượng sao thành pin nhiên liệu dày đặc. Nguy hiểm khi tiếp cận, nhưng lợi ích năng lượng tiềm năng là khổng lồ.';

  @override
  String get event_solarForge_choice0_text =>
      'Cập cảng và bắt đầu thu hoạch nhiên liệu';

  @override
  String get event_solarForge_choice0_outcome =>
      'Lò rèn rung lên với nguồn điện, lấp đầy kho dự trữ của chúng ta. Chúng ta rời đi với lượng nhiên liệu và năng lượng tăng vọt, dù nhiệt độ dữ dội gây ra xói mòn nhẹ ở thân tàu bên ngoài.';

  @override
  String get event_solarForge_choice1_text =>
      'Tái sử dụng kính của lò rèn cho máy quét';

  @override
  String get event_solarForge_choice1_outcome =>
      'Chúng ta thu hồi các mảng lấy nét độ chính xác cao. Máy quét của chúng ta giờ nhạy cảm hơn đáng kể với các chữ ký năng lượng ở xa.';

  @override
  String get event_chronoVortex_title => 'Xoáy Thời Gian';

  @override
  String get event_chronoVortex_narrative =>
      'Điều hướng báo cáo có biến dạng cục bộ trong không-thời gian. Thiết bị cho thấy các sự kiện trong vòng xoáy đang lặp lại trong vòng lặp sáu giây. Nếu chúng ta vào, chúng ta có thể \'đặt lại\' một số hao mòn gần đây của tàu, hoặc có thể bị mắc kẹt mãi mãi.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Vào xoáy để đảo ngược thiệt hại gần đây';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Một trải nghiệm kinh hoàng. Trong vài phút, tàu tồn tại ở nhiều trạng thái cùng lúc. Khi chúng ta thoát ra, một số vết nứt thân tàu chỉ đơn giản... biến mất. Nhưng ký ức của phi hành đoàn về sự kiện đó thì mảnh vỡ.';

  @override
  String get event_chronoVortex_choice1_text => 'Quan sát xoáy từ rìa';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Chúng ta thu được dữ liệu vô giá về cơ học thời gian, dù tàu vẫn bầm dập như trước.';

  @override
  String get event_machineMutiny_title => 'Cuộc Nổi Loạn Của Máy Móc';

  @override
  String get event_machineMutiny_narrative =>
      'Các drone sửa chữa của tàu đã ngừng phản hồi lệnh. Chúng đang tháo dỡ các vách ngăn phụ và chở kim loại về phòng động cơ. Chúng không tấn công, nhưng chúng đang tháo rời tàu theo đúng nghĩa đen.';

  @override
  String get event_machineMutiny_choice0_text => 'Phát sóng mã đặt lại logic';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Các drone ngừng hoạt động ngay lập tức. Chúng ta mất vài ngày lắp lại các vách ngăn bằng tay. Khu kỹ thuật kiệt sức vì chẩn đoán phần cứng.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Để chúng hoàn thành — xem chúng đang xây gì';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Chúng đã xây một bộ phun nhiên liệu hiệu quả hơn. Động cơ chạy trơn tru hơn bao giờ hết, nhưng nội thất tàu là mớ hỗn độn của dây điện lộ ra và các tấm ốp bị thiếu.';

  @override
  String get event_supernovaMessage_title => 'Ánh Sáng Của Kẻ Đã Chết';

  @override
  String get event_supernovaMessage_narrative =>
      'Ánh sáng từ một vụ siêu tân tinh xảy ra hàng nghìn năm trước cuối cùng cũng chạm đến chúng ta. Máy quét phát hiện các xung không phải ngẫu nhiên; chúng là sự truyền dữ liệu khổng lồ quy mô ngôi sao được mã hóa trong các vụ nổ tia gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dành toàn bộ công suất máy quét để ghi lại vụ nổ';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Chúng ta chụp được lưu trữ đầy đủ những khoảnh khắc cuối cùng của một nền văn minh ngoài hành tinh. Khoa học, nghệ thuật, lịch sử của họ. Đó là gánh nặng lớn, nhưng cơ sở dữ liệu công nghệ và văn hóa của chúng ta tràn ngập.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Tập trung vào các tính chất vật lý của vụ nổ';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Chúng ta bỏ lỡ thông điệp, nhưng dữ liệu về sự sụp đổ sao cải thiện đáng kể việc hiệu chỉnh máy quét trọng trường của chúng ta.';

  @override
  String get event_spaceFungus_title => 'Đám Mốc Ngọc Lục Bảo';

  @override
  String get event_spaceFungus_narrative =>
      'Một loại nấm xanh tươi đang lan rộng nhanh chóng qua khoang thủy canh. Nó phát triển mạnh trong bầu khí quyển tái chế và bắt đầu làm tắc nghẽn bộ lọc không khí. Nó có thể ăn được, hoặc có thể độc hại.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Tỉa và khử trùng khoang mạnh mẽ';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Nấm đã được loại bỏ, nhưng bộ lọc hóa học bị hỏng. Đa dạng sinh học giảm khi nhiều cây Trái Đất bị mất trong quá trình làm sạch.';

  @override
  String get event_spaceFungus_choice1_text => 'Cố gắng thuần hóa loại nấm này';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Hóa ra nó là một máy lọc không khí mạnh mẽ. Không khí trên tàu chưa bao giờ trong lành như vậy, dù khoang thủy canh giờ là rừng rậm phát sáng.';

  @override
  String get event_voidMerchant_title => 'Thương Nhân Hư Không';

  @override
  String get event_voidMerchant_narrative =>
      'Một tàu thiết kế lạ, trông giống đống phế liệu hơn là tàu, liên lạc với chúng ta. Thuyền trưởng, một sinh vật ánh sáng và bóng tối, đề nghị trao đổi \'các bộ phận rắn\' lấy \'ký ức vô hình.\'';

  @override
  String get event_voidMerchant_choice0_text =>
      'Đổi một phần cơ sở dữ liệu văn hóa lấy phụ tùng';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Thương nhân hài lòng. Chúng ta nhận được tấm ốp thân tàu cao cấp và linh kiện cryo. Đổi lại, chúng ta mất vài thế kỷ âm nhạc đã ghi âm của Trái Đất. Tàu mạnh hơn, nhưng yên lặng hơn.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Đổi bản đồ hàng hải lấy linh kiện động cơ';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Chúng ta có được một bộ vòi phun hợp hạch mới. Chúng ta mất một số dữ liệu về các khu vực đã qua, nhưng con đường phía trước nhanh hơn.';

  @override
  String get event_singularityEngine_title => 'Động Cơ Kỳ Dị';

  @override
  String get event_singularityEngine_narrative =>
      'Các kỹ sư đã phát hiện cách tạo ra kỳ dị vi mô tồn tại ngắn trong ổ FTL. Về lý thuyết nó sẽ tăng tốc độ lên gấp ba, nhưng sức căng hấp dẫn lên thân tàu sẽ là khổng lồ.';

  @override
  String get event_singularityEngine_choice0_text => 'Thử nghiệm ổ kỳ dị';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Tàu lao về phía trước, bao phủ khoảng cách tuần trong vài giây. Nhưng thân tàu rên rỉ và nhiều dầm cấu trúc bị cong vênh. Chúng ta gần mục tiêu hơn nhiều, nhưng tàu thì mong manh.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Bác bỏ lý thuyết — quá nguy hiểm';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Chúng ta duy trì tốc độ tiêu chuẩn. Các kỹ sư thất vọng, nhưng thân tàu vẫn vững.';

  @override
  String get event_dreamContagion_title => 'Lây Nhiễm Giấc Mơ';

  @override
  String get event_dreamContagion_narrative =>
      'Giấc mơ chung về một thế giới xanh tươi đang lan rộng trong phi hành đoàn đã thức. Nó sống động đến mức người ta bắt đầu ngủ qua ca làm để thấy thêm. Công việc đình trệ.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Dùng thuốc ức chế giấc mơ cho phi hành đoàn';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Hiệu suất trở lại bình thường, nhưng phi hành đoàn dễ cáu kỉnh và tinh thần thấp. Giấc mơ là thứ duy nhất duy trì một số người.';

  @override
  String get event_dreamContagion_choice1_text => 'Đưa giấc mơ vào văn hóa tàu';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Chúng ta coi giấc mơ như tầm nhìn về ngôi nhà tương lai. Tinh thần vút cao, và sản lượng sáng tạo của phi hành đoàn đạt đỉnh, dù khu kỹ thuật chịu thiệt thòi vì thiếu bảo trì.';

  @override
  String get event_orbitalShipyard_title => 'Xưởng Đóng Tàu Cổ Đại';

  @override
  String get event_orbitalShipyard_narrative =>
      'Chúng ta đã tìm thấy một xưởng đóng tàu tự động quay quanh một hành tinh khí khổng lồ. Nó cổ xưa, nhưng một số cánh tay sửa chữa vẫn còn điện. Có vẻ nó có khả năng thực hiện một lần sửa chữa lớn.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Sửa thân tàu theo thông số kỹ thuật nhà máy';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Các drone của xưởng làm việc với hiệu quả đáng sợ. Thân tàu được phục hồi hoàn chỉnh, mọi vết nứt nhỏ đều được hàn lại.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Đại tu mảng điều hướng và máy quét';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Các mảng được xây dựng lại bằng vật liệu tốt hơn. Khả năng tìm kiếm và phân tích thế giới của chúng ta được cải thiện đáng kể.';

  @override
  String get event_voidWhaleCalf_title => 'Cá Voi Hư Không Con';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Một con \'Cá Voi Không Gian\' non — sinh vật của năng lượng và bụi sao — đang đi theo tàu của chúng ta. Nó có vẻ đã lạc bầy và đang cố ăn vết tích ion của động cơ, điều đó làm nó ốm.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Điều chỉnh đầu ra động cơ để bắt chước tiếng gọi cá voi';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Con non phản hồi! Nó đi theo chúng ta cho đến khi chúng ta tìm thấy bầy của nó. Cá voi bố mẹ chạm vào thân tàu như lời cảm ơn, để lại lớp phủ khoáng chất phát sinh học tăng cường lá chắn của chúng ta.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Nhẹ nhàng đẩy nó đi bằng chùm kéo công suất thấp';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Con non bị nản lòng và cuối cùng trôi dạt đi. An toàn hơn cho tàu, nhưng phi hành đoàn cảm thấy chút tội lỗi.';

  @override
  String get event_subspaceReef_title => 'Rạn San Hô Không Gian Con';

  @override
  String get event_subspaceReef_narrative =>
      'Chúng ta đã gặp một vùng không gian chứa đầy những nếp gấp sắc bén trong cấu trúc không gian con. Điều hướng qua đó như lái thuyền buồm qua rạn san hô. Đẹp, nhưng mỗi bước sai sẽ xé toạc thân tàu.';

  @override
  String get event_subspaceReef_choice0_text => 'Di chuyển ở tốc độ tối thiểu';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Một cuộc quá cảnh chậm chạp và đau đớn. Chúng ta tránh được phần tệ nhất, nhưng việc liên tục điều chỉnh hướng đi làm hao mòn máy tính điều hướng.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Dùng máy quét lập bản đồ đường đi rồi tiến thẳng';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Máy quét bị đẩy đến giới hạn. Chúng ta vượt qua nhanh chóng, nhưng các mảng cảm biến bị cháy vì cường độ của các gợn sóng không gian con.';

  @override
  String get event_alienTrader_title => 'Thương Nhân Lang Thang';

  @override
  String get event_alienTrader_narrative =>
      'Một tàu thiết kế lạ trôi dạt bên cạnh, phát sóng trên mọi tần số. Đó là một thương nhân — một trong những thương nhân lang thang hoạt động trong không gian giữa các nền văn minh. Họ cung cấp sửa chữa và vật tư để đổi lấy tài nguyên. Khoang hàng của họ rung lên với công nghệ kỳ lạ.';

  @override
  String get ui_event_enterTrade => 'VÀO GIAO DỊCH';

  @override
  String get ui_trader_title => 'THƯƠNG NHÂN NGOÀI HÀNH TINH';

  @override
  String get ui_trader_shipSystems => 'HỆ THỐNG TÀU';

  @override
  String get ui_trader_payWith => 'THANH TOÁN BẰNG';

  @override
  String get ui_trader_leaveTrader => 'RỜI THƯƠNG NHÂN';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Tâm trạng hào phóng';

  @override
  String get ui_trader_moodFair => 'Giao dịch công bằng';

  @override
  String get ui_trader_moodHard => 'Mặc cả gay gắt';

  @override
  String get ui_trader_probes => 'Tàu thám hiểm';

  @override
  String get ui_trader_fuel => 'Nhiên liệu';

  @override
  String get ui_trader_energy => 'Năng lượng';

  @override
  String get ui_trader_colonists => 'Người định cư';

  @override
  String get ui_trader_culture => 'Văn hóa';

  @override
  String get ui_trader_tech => 'Công nghệ';

  @override
  String get ui_trader_greeting => 'Ngươi có gì để cung cấp, loài người?';

  @override
  String get ui_codex_title => 'CODEX';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ĐÃ KHÁM PHÁ';
  }

  @override
  String get ui_codex_surfaceFeatures => 'ĐẶC ĐIỂM BỀ MẶT';

  @override
  String get ui_codex_moonTypes => 'LOẠI VỆ TINH';

  @override
  String get ui_codex_ringTypes => 'LOẠI VÀNH ĐAI';

  @override
  String get ui_codex_locked =>
      'Hạ cánh trên hành tinh có đặc điểm này để khám phá hiệu ứng của nó.';

  @override
  String ui_codex_synergy(String features) {
    return 'Hiệu ứng cộng hưởng: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'NHẤN ĐỂ BỎ QUA';

  @override
  String get ui_common_tapRingToChoose => 'NHẤN VÀO MỘT VÒNG ĐỂ CHỌN';

  @override
  String get ui_common_tapToContinue => 'NHẤN ĐỂ TIẾP TỤC';

  @override
  String get ui_tooltip_back => 'Mặt sau';

  @override
  String get ui_tooltip_codex => 'Codex';

  @override
  String get ui_tooltip_settings => 'Cài đặt';

  @override
  String get ui_tooltip_leaderboards => 'Bảng xếp hạng';

  @override
  String get ui_tooltip_bugReport => 'Báo cáo lỗi';

  @override
  String get event_pulsarLighthouse_title => 'Ngọn Hải Đăng Pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Một sao neutron quay quét chùm tia xuyên qua hư không như ngọn hải đăng vũ trụ. Nhịp đập đều đặn của pulsar mang dữ liệu thời gian chính xác có thể hiệu chuẩn lại máy quét của chúng ta đến độ chính xác phi thường — nhưng căn chỉnh với chùm tia có nghĩa là phơi con tàu trước bức xạ cường độ cao.';

  @override
  String get event_pulsarLighthouse_choice0 => 'Hiệu chuẩn máy quét theo xung';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Các dãy máy quét hấp thụ tín hiệu pulsar, hiệu chuẩn lại đến độ chính xác mà chúng ta chưa bao giờ tưởng tượng. Nhưng cái giá bức xạ là thật — một số buồng đông lạnh ở khu vực phơi nhiễm bị hư hại, và một vài người định cư không sống sót qua đợt phơi nhiễm.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Bật khiên và đi qua ở khoảng cách an toàn';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Chúng ta giữ khoảng cách rộng với pulsar, đốt thêm nhiên liệu để duy trì quỹ đạo an toàn. Phi hành đoàn ngắm chùm tia quét qua cửa sổ lọc ánh sáng — đẹp, nhưng xa vời.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Rút lui trước khi cuộc càn quét đến với chúng ta';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Chúng tôi quay đi khi bị bỏng khẩn cấp trước khi chùm tia tiếp theo đi qua. Tín hiệu của sao xung mờ dần phía sau chúng tôi - không thu được dữ liệu, không bị tổn hại, tốn một ít nhiên liệu cho lực đẩy né tránh.';

  @override
  String get event_alienNursery_title => 'Vườn Ươm Ngoài Hành Tinh';

  @override
  String get event_alienNursery_narrative =>
      'Một cấu trúc hữu cơ khổng lồ trôi dạt trong hư không — một vườn ươm sinh học đang ấp nở sinh vật non ngoài hành tinh. Hệ thống hỗ trợ sự sống đang hỏng, nhiệt độ bên trong giảm. Các sinh vật bên trong đang chết dần. Máy quét sinh học của chúng ta có thể học hỏi rất nhiều từ cấu trúc này, nhưng can thiệp có nghĩa là mở cửa khí cho mầm bệnh chưa biết.';

  @override
  String get event_alienNursery_choice0 =>
      'Giúp ổn định hệ thống hỗ trợ sự sống';

  @override
  String get event_alienNursery_outcome0 =>
      'Các kỹ sư của chúng ta chế tạo tạm một liên kết nhiệt đến vườn ươm, ổn định các buồng ấp. Dữ liệu máy quét sinh học thật phi thường — một hệ thống phân loại sự sống hoàn toàn mới. Nhưng đúng như lo ngại, vi sinh vật ngoài hành tinh tìm đường lên tàu. Đội y tế kiểm soát dịch bệnh, dù không kịp trước khi một số người định cư ngã bệnh.';

  @override
  String get event_alienNursery_choice1 => 'Để yên không can thiệp';

  @override
  String get event_alienNursery_outcome1 =>
      'Chúng ta quan sát từ khoảng cách tôn trọng, ghi chép những gì có thể qua quét thụ động. Vườn ươm tiếp tục trôi dạt, số phận bất định. Phi hành đoàn suy ngẫm về sự mong manh của sự sống — kể cả sự sống ngoài hành tinh — và gánh nặng của những lựa chọn mà chúng ta mang theo.';

  @override
  String get event_derelictArmada_title => 'Hạm Đội Bỏ Hoang';

  @override
  String get event_derelictArmada_narrative =>
      'Hàng trăm chiến hạm cổ đại treo bất động trong hư không — nghĩa trang của một cuộc xung đột bị lãng quên. Thân tàu mang vết sẹo từ vũ khí mà chúng ta không nhận dạng được, nhưng vật liệu cấu trúc và cơ sở dữ liệu trên tàu có thể vô giá. Câu hỏi là ưu tiên điều gì: cứu vớt vật chất hay kiến thức.';

  @override
  String get event_derelictArmada_choice0 =>
      'Trục vớt công nghệ vũ khí và tấm giáp';

  @override
  String get event_derelictArmada_outcome0 =>
      'Đội trục vớt cắt vào chiến hạm ngoài hành tinh, chiết xuất hợp kim kỳ lạ và kỹ thuật xây dựng vượt trước chúng ta hàng thế kỷ. Đội xây dựng tích hợp vật liệu mới một cách nhiệt tình. Nhưng một con tàu không chết như vẻ ngoài — một bẫy nổ kích hoạt trong lúc chiết xuất, giết chết một đội trục vớt.';

  @override
  String get event_derelictArmada_choice1 =>
      'Tải về kho lưu trữ lịch sử của họ';

  @override
  String get event_derelictArmada_outcome1 =>
      'Chúng ta tập trung vào lõi dữ liệu, cẩn thận chiết xuất hàng thế kỷ lịch sử, nghệ thuật, khoa học và triết học ngoài hành tinh. Riêng kho lưu trữ văn hóa đã đủ khiến các học giả bận rộn nhiều thế hệ. Những hiểu biết công nghệ, dù kém thực tiễn ngay lập tức, tiết lộ các nguyên lý kỹ thuật thúc đẩy sự hiểu biết của chúng ta.';

  @override
  String get event_alienQuarantineZone_title => 'Vùng Cách Ly Ngoài Hành Tinh';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Đèn hiệu cảnh báo bằng hàng chục ngôn ngữ ngoài hành tinh đánh dấu ranh giới một vùng không gian bị niêm phong. Bất cứ thứ gì bị nhốt bên trong đủ nguy hiểm để nhiều nền văn minh hợp tác cô lập nó. Máy quét tầm xa phát hiện dấu hiệu công nghệ khổng lồ bên trong — và thứ gì đó có thể còn sống.';

  @override
  String get event_alienQuarantineZone_choice0 => 'Phá vỡ cách ly và điều tra';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Chúng ta vượt qua phao cảnh báo vào vùng cách ly. Bên trong, chúng ta tìm thấy một trạm nghiên cứu phức tạp đến kinh ngạc — và tàn tích của thứ nó đang nghiên cứu. Công nghệ thu được mang tính cách mạng, nhưng ô nhiễm sinh học nghiêm trọng. Hàng chục người định cư ngã bệnh trước khi chúng ta rời vùng.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Tôn trọng cách ly';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Chúng ta nghiên cứu chính các đèn hiệu cảnh báo, chứa dữ liệu hàng hải và số đo khí quyển từ các nền văn minh đặt chúng. Không phải kho báu bên trong, nhưng cũng là điều gì đó — và chúng ta không giải phóng thứ mà họ đã khóa chặt.';

  @override
  String get event_hydroponicsBlight_title => 'Dịch Bệnh Thủy Canh';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Một dịch nấm lan nhanh đã lây nhiễm các khoang thủy canh của tàu. Toàn bộ chu kỳ cây trồng héo rũ trước mắt chúng ta. Dịch chưa lan đến kho hạt giống dự trữ, nhưng chỉ là vấn đề vài giờ. Chúng ta có thể thanh tẩy các khoang và trồng lại từ đầu, hoặc thử phương pháp kháng nấm thực nghiệm có thể cứu vụ thu hoạch hiện tại — hoặc lan truyền ô nhiễm thêm.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Thanh tẩy và trồng lại từ kho hạt giống';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Chúng ta xả khí các khoang thủy canh vào chân không, tiêu diệt dịch bệnh cùng mọi cây trồng sống. Trồng lại từ kho hạt giống sẽ mất nhiều tuần, và các chương trình văn hóa phụ thuộc vào thực phẩm tươi và không gian vườn bị đình chỉ. Nhưng dịch bệnh đã được kiểm soát.';

  @override
  String get event_hydroponicsBlight_choice1 => 'Thử phương pháp thực nghiệm';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Thuốc kháng nấm thực nghiệm ban đầu cho thấy triển vọng, nhưng một chủng kháng thuốc đột phá. Đến khi chúng ta chuyển sang thanh tẩy toàn diện, dịch đã lan sang đường dinh dưỡng buồng đông lạnh. Thiệt hại tệ hơn so với nếu chúng ta hành động quyết đoán ngay từ đầu.';

  @override
  String get event_constitutionalConvention_title => 'Công ước Hiến pháp';

  @override
  String get event_constitutionalConvention_narrative =>
      'Dân số của tàu thuộc địa ngày càng tăng không ngừng nghỉ nếu không có sự quản lý chính thức. Các đại biểu từ mỗi boong tập trung tại hầm hàng để soạn thảo một điều lệ xác định cách cai trị thuộc địa trong tương lai. Ba phe phái đưa ra những tầm nhìn cạnh tranh nhau cho chính phủ mới.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Soạn thảo hiến chương dân chủ với quyền bầu cử phổ thông';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Những người thực dân phê chuẩn một hiến pháp đảm bảo sự đại diện bình đẳng. Việc ra quyết định chậm lại nhưng tinh thần lại tăng cao khi mọi tiếng nói đều được lắng nghe.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Thành lập một cơ quan điều hành mạnh mẽ với quyền lực khẩn cấp';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Một nhà lãnh đạo duy nhất được bổ nhiệm với quyền lực sâu rộng. Các quyết định được đưa ra nhanh chóng nhưng những người bất đồng chính kiến ​​thì thầm về sự chuyên chế ở tầng dưới.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Thành lập hội đồng chuyên gia kỹ trị';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Các kỹ sư, nhà khoa học và bác sĩ thành lập một hội đồng cai trị dựa trên chuyên môn. Hiệu quả được cải thiện, mặc dù một số người cảm thấy bị loại khỏi quyền lực.';

  @override
  String get event_militaryCoupThreat_title => 'Đe dọa đảo chính quân sự';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Chỉ huy Vasquez phụ trách chi tiết an ninh của con tàu đã chiếm giữ kho vũ khí và đưa ra tối hậu thư: cấp quyền lực quân sự khẩn cấp hoặc phải đối mặt với việc khóa tất cả các boong. Tình hình rất bất ổn và những người thực dân đang tìm kiếm phản hồi từ bạn.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Chống lại cuộc đảo chính với các thuyền viên trung thành';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Phi hành đoàn trung thành tập hợp để chống lại Vasquez. Cuộc xung đột kết thúc với sự đổ máu tối thiểu, nhưng lực lượng an ninh bị suy yếu và một số người dân thuộc địa bị vướng vào làn đạn.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Tuân theo yêu cầu của người chỉ huy';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez đảm nhận quyền kiểm soát hoạt động của tàu. Trật tự được lập lại nhanh chóng nhưng phải trả giá bằng quyền tự do dân sự. Đội tuần tra có vũ trang bây giờ đi khắp mọi hành lang.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Đàm phán quyền hạn khẩn cấp có giới hạn với điều khoản hoàng hôn';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Sau những cuộc đàm phán căng thẳng, Vasquez tạm thời chấp nhận quyền giám sát. Một sự thỏa hiệp mong manh không làm hài lòng ai hoàn toàn, nhưng ngăn ngừa bạo lực.';

  @override
  String get event_religiousAwakening_title => 'Thức tỉnh tôn giáo';

  @override
  String get event_religiousAwakening_narrative =>
      'Một nhà truyền giáo có sức lôi cuốn đã thu hút hàng trăm người dân thuộc địa tham gia vào một phong trào đức tin mới. Họ tụ tập trong mái vòm quan sát mỗi chu kỳ, những bài thánh ca của họ vang vọng qua các trục thông gió. Một số thuyền viên lo lắng về sự cuồng tín; những người khác tìm thấy niềm an ủi thực sự trong giáo lý.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Nắm bắt phong trào đức tin và cung cấp nguồn lực';

  @override
  String get event_religiousAwakening_outcome0 =>
      'Phong trào phát triển mạnh mẽ với sự hỗ trợ chính thức. Tinh thần được cải thiện giữa các tín đồ và tinh thần chung của họ củng cố mối quan hệ xã hội trên con tàu.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Thực thi chủ nghĩa thế tục nghiêm ngặt trên tàu';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Các cuộc tụ họp tôn giáo bị hạn chế ở các khu vực riêng tư. Phong trào diễn ra ngầm, gây phẫn nộ, nhưng chủ nghĩa duy lý khoa học vẫn là học thuyết chính thức.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Cho phép thờ cúng nhưng điều chỉnh ảnh hưởng của nó';

  @override
  String get event_religiousAwakening_outcome2 =>
      'Đức tin được cho phép nhưng phải tách biệt khỏi sự quản lý. Một tuyên úy được bổ nhiệm để liên lạc với lệnh. Một sự cân bằng khó chịu được duy trì.';

  @override
  String get event_corporateTakeover_title => 'Tiếp quản doanh nghiệp';

  @override
  String get event_corporateTakeover_narrative =>
      'Các nhà quản lý tài nguyên của con tàu đã âm thầm củng cố quyền kiểm soát việc phân phối thực phẩm, tái chế nước và phân bổ năng lượng. Bây giờ họ đề xuất chính thức hóa quyền lực của mình thành một cơ cấu công ty có thể quản lý nền kinh tế của thuộc địa trong tương lai.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Cho phép các nguyên tắc thị trường tự do quản lý tài nguyên';

  @override
  String get event_corporateTakeover_outcome0 =>
      'Phe công ty tiếp quản việc quản lý tài nguyên. Hiệu quả được cải thiện đáng kể, nhưng giá cả tăng cao và những người dân thuộc địa nghèo nhất phải vật lộn để đủ khả năng chi trả cho những nhu cầu cơ bản.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Quốc hữu hóa mọi tài nguyên thuộc sở hữu tập thể';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Tài nguyên bị tịch thu và đặt dưới sự kiểm soát của cộng đồng. Phe công ty bị giải tán, nhưng sự đổi mới bị đình trệ mà không có động cơ lợi nhuận.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Triển khai thị trường được quản lý bằng mạng lưới an toàn';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Một nền kinh tế hỗn hợp được thiết lập với các biện pháp kiểm soát giá cả và các chương trình phúc lợi. Cả hai phe đều không hoàn toàn hài lòng, nhưng các nhu cầu cơ bản vẫn được đáp ứng đồng thời cho phép một số hoạt động kinh doanh.';

  @override
  String get event_successionCrisis_title => 'Khủng hoảng kế nhiệm';

  @override
  String get event_successionCrisis_narrative =>
      'Thuyền trưởng của con tàu đã chết trong giấc ngủ, không để lại người kế vị được chỉ định. Ba phe phái ngay lập tức tranh giành quyền kiểm soát: hội đồng dân sự yêu cầu bầu cử, người đứng đầu an ninh tuyên bố có quyền lực, và những người thực dân lớn tuổi áp dụng các nghi thức lãnh đạo truyền thống.';

  @override
  String get event_successionCrisis_choice0 => 'Tổ chức bầu cử khẩn cấp';

  @override
  String get event_successionCrisis_outcome0 =>
      'Một cuộc bầu cử hỗn loạn nhưng đầy tinh thần đã tạo ra một đội trưởng mới được bầu chọn bằng phiếu phổ thông. Quá trình này rất lộn xộn, nhưng những người thuộc địa cảm thấy mình có quyền làm chủ quyền lãnh đạo của mình.';

  @override
  String get event_successionCrisis_choice1 =>
      'Hãy để quân đội nắm quyền chỉ huy';

  @override
  String get event_successionCrisis_outcome1 =>
      'Trưởng phòng an ninh bước vào ghế thuyền trưởng. Kỷ luật được khôi phục ngay lập tức, nhưng phi hành đoàn dân sự để mắt đến những người bảo vệ có vũ trang với sự lo lắng ngày càng tăng.';

  @override
  String get event_successionCrisis_choice2 => 'Triệu tập hội đồng trưởng lão';

  @override
  String get event_successionCrisis_outcome2 =>
      'Những thực dân lớn tuổi nhất và giàu kinh nghiệm nhất thành lập một hội đồng quản lý. Sự khôn ngoan của họ dẫn dắt con tàu, mặc dù một số thủy thủ đoàn trẻ hơn cảm thấy bị chế độ lão thành gạt ra ngoài lề xã hội.';

  @override
  String get event_nativeSovereignty_title => 'chủ quyền bản địa';

  @override
  String get event_nativeSovereignty_narrative =>
      'Quét tầm xa xác nhận sự sống thông minh trên hành tinh mục tiêu. Thông tin liên lạc bị chặn tiết lộ một nền văn minh tinh vi đã phát hiện ra cách tiếp cận của bạn. Họ truyền đi một yêu cầu chính thức: công nhận chủ quyền lãnh thổ của mình hoặc đối mặt với sự kháng cự khi đến nơi.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Công nhận chủ quyền bản địa và xin phép giải quyết';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Bạn truyền đạt sự công nhận chính thức về quyền bản địa. Phản ứng là thận trọng nhưng tích cực. Các mối quan hệ trong tương lai sẽ bắt đầu trên nền tảng tôn trọng lẫn nhau, mặc dù địa điểm hạ cánh có thể bị hạn chế.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Khẳng định quyền lực tối cao của thuộc địa và chuẩn bị kháng chiến';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Bạn truyền đi ý định giải quyết của mình bất chấp điều đó. Phi hành đoàn bắt đầu diễn tập vũ khí và lập kế hoạch củng cố. Những người bản xứ im lặng, điều này phần nào còn đáng sợ hơn cả những lời đe dọa.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Đề xuất quản trị chung hành tinh';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Bạn đưa ra một khuôn khổ để cùng tồn tại và chia sẻ tài nguyên. Người bản xứ tò mò nhưng cảnh giác. Các cuộc đàm phán sẽ phức tạp, nhưng khả năng hòa bình vẫn tồn tại.';

  @override
  String get event_laborStrike_title => 'đình công lao động';

  @override
  String get event_laborStrike_narrative =>
      'Đội ngũ kỹ thuật đã nghỉ việc, yêu cầu ca làm việc ngắn hơn, khẩu phần ăn tốt hơn và có tiếng nói trong các quyết định điều hướng. Các hệ thống quan trọng đang chạy trên cơ chế sao lưu tự động nhưng chúng sẽ không tồn tại được lâu. Những người thuộc địa còn lại lo lắng theo dõi.';

  @override
  String get event_laborStrike_choice0 =>
      'Đáp ứng đầy đủ nhu cầu của người lao động';

  @override
  String get event_laborStrike_outcome0 =>
      'Cuộc đình công kết thúc ngay lập tức. Công nhân trở lại vị trí của họ với điều kiện được cải thiện. Năng suất giảm nhẹ khi ca làm việc ngắn hơn có hiệu lực, nhưng lòng trung thành là không thể lay chuyển.';

  @override
  String get event_laborStrike_choice1 =>
      'Đàn áp đình công và cưỡng chế lao động cưỡng bức';

  @override
  String get event_laborStrike_outcome1 =>
      'Lực lượng an ninh hộ tống các công nhân trở về trạm của họ trước họng súng. Động cơ lại kêu vo vo, nhưng lòng căm thù vẫn sôi sục ở các tầng dưới. Một số công nhân bị giới hạn trong khu.';

  @override
  String get event_laborStrike_choice2 =>
      'Đưa ra sự thỏa hiệp một phần đối với các yêu cầu chính';

  @override
  String get event_laborStrike_outcome2 =>
      'Sau các cuộc đàm phán kéo dài, một thỏa thuận đã đạt được: khẩu phần ăn tốt hơn và ý kiến ​​tư vấn đầu vào, nhưng không giảm thời gian làm ca. Không bên nào vui mừng, nhưng động cơ vẫn tiếp tục chạy.';

  @override
  String get event_censorshipDebate_title => 'Tranh luận về kiểm duyệt';

  @override
  String get event_censorshipDebate_narrative =>
      'Một tài liệu bị rò rỉ tiết lộ tình trạng thực sự của hệ thống hỏng hóc của con tàu. Sự hoảng loạn lan khắp các tầng dưới. Nhân viên truyền thông đề xuất hạn chế quyền truy cập thông tin để ngăn chặn tình trạng bất ổn tiếp theo. Những người ủng hộ quyền tự do dân sự đang phẫn nộ.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Đảm bảo quyền truy cập miễn phí vào tất cả các thông tin';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Sự minh bạch hoàn toàn được thiết lập. Sự hoảng loạn ban đầu giảm bớt khi những người dân thuộc địa tập hợp lại để giúp khắc phục những vấn đề mà giờ đây họ đã hiểu. Niềm tin vào sự lãnh đạo ngày càng tăng, mặc dù một số thông tin gây ra lo lắng.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Thực hiện kiểm soát thông tin đầy đủ';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Tất cả thông tin liên lạc hiện được lọc thông qua lệnh. Sự hoảng loạn dừng lại, thay vào đó là sự bình tĩnh kỳ lạ. Nhưng tin đồn lấp đầy khoảng trống do sự thật bị kiểm duyệt để lại, và chúng thường tệ hơn thực tế.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Chỉ lọc thông tin nhạy cảm về bảo mật';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Một hệ thống phân loại được thiết lập. Hầu hết thông tin đều được lưu chuyển tự do, nhưng dữ liệu hệ thống quân sự và quan trọng cần được cấp phép. Một nền tảng trung bình khả thi mà hầu hết đáp ứng.';

  @override
  String get event_colonialCharter_title => 'Hiến chương thuộc địa';

  @override
  String get event_colonialCharter_narrative =>
      'Khi hành tinh sắp sụp đổ, những người thực dân phải soạn thảo những luật cơ bản cho xã hội mới của họ. Ba trường phái triết học đã xuất hiện, mỗi trường phái ủng hộ một tầm nhìn khác nhau về hình ảnh thuộc địa sẽ trở thành. Cuộc tranh luận sôi nổi và mang tính cá nhân sâu sắc.';

  @override
  String get event_colonialCharter_choice0 =>
      'Một điều lệ tiến bộ nhấn mạnh đến quyền cá nhân';

  @override
  String get event_colonialCharter_outcome0 =>
      'Hiến chương quy định các quyền tự do cá nhân, bình đẳng và di chuyển xã hội. Các nghệ sĩ và nhà tư tưởng ăn mừng; những người theo chủ nghĩa truyền thống cảnh báo rằng quyền tự do không được kiểm soát sẽ dẫn đến hỗn loạn.';

  @override
  String get event_colonialCharter_choice1 =>
      'Một hiến chương bảo thủ bảo tồn truyền thống của Trái đất';

  @override
  String get event_colonialCharter_outcome1 =>
      'Hiến chương quy định các giá trị truyền thống, cấu trúc gia đình và việc tuân thủ tôn giáo. Nhiều người tìm thấy niềm an ủi trong những phong tục quen thuộc; những người khác cảm thấy ngột ngạt trước sức nặng của lối suy nghĩ cũ kỹ.';

  @override
  String get event_colonialCharter_choice2 =>
      'Một điều lệ thực dụng tập trung vào sự tồn tại và phát triển';

  @override
  String get event_colonialCharter_outcome2 =>
      'Điều lệ ưu tiên quản lý tài nguyên, giáo dục kỹ thuật và phát triển kinh tế. Nó thiếu chất thơ nhưng đảm bảo thuộc địa sẽ hoạt động hiệu quả và được tổ chức tốt.';

  @override
  String get event_separatistMovement_title => 'Phong trào ly khai';

  @override
  String get event_separatistMovement_narrative =>
      'Một nhóm thực dân đã tuyên bố độc lập khỏi việc quản lý tàu thuyền. Họ đã rào chắn ở khu vực phía sau, đòi quyền thành lập khu định cư của riêng mình khi hạ cánh. Họ kiểm soát 15% lượng lương thực dự trữ của con tàu và dàn dẫn đường dự phòng.';

  @override
  String get event_separatistMovement_choice0 =>
      'Trao quyền tự chủ khu vực trong khuôn khổ liên bang';

  @override
  String get event_separatistMovement_outcome0 =>
      'Những người ly khai chấp nhận một thỏa thuận: quận riêng của họ có chính quyền địa phương, dưới sự bảo trợ lỏng lẻo của liên bang. Tiền lệ chia cắt khiến một số người lo lắng, nhưng hòa bình vẫn được duy trì.';

  @override
  String get event_separatistMovement_choice1 =>
      'Bão các chướng ngại vật và thống nhất lực lượng';

  @override
  String get event_separatistMovement_outcome1 =>
      'Đội an ninh đột nhập vào khu vực phía sau. Phe ly khai chống trả quyết liệt. Trật tự được lập lại nhưng phải trả giá đắt. Con tàu thống nhất về thể xác, nếu không phải về tinh thần.';

  @override
  String get event_separatistMovement_choice2 =>
      'Giải quyết những bất bình gốc rễ thúc đẩy phong trào';

  @override
  String get event_separatistMovement_outcome2 =>
      'Những người hòa giải làm việc để hiểu điều gì đã đẩy phe phái ra đi. Những cải cách trong việc phân phối và đại diện tài nguyên dần dần đưa những người ly khai trở lại thế trận. Chữa bệnh cần có thời gian.';

  @override
  String get event_warCouncil_title => 'Hội đồng chiến tranh';

  @override
  String get event_warCouncil_narrative =>
      'Khi các mối đe dọa tiềm tàng được phát hiện trong các hệ thống gần đó, lãnh đạo con tàu triệu tập một hội đồng chiến tranh. Câu hỏi: bao nhiêu nguồn lực hạn chế của thuộc địa nên được dành cho việc chuẩn bị quân sự so với cơ sở hạ tầng dân sự?';

  @override
  String get event_warCouncil_choice0 =>
      'Vũ khí đầy đủ: rèn vũ khí và huấn luyện binh lính';

  @override
  String get event_warCouncil_outcome0 =>
      'Các xưởng được trang bị lại để sản xuất vũ khí. Mọi người dân thuộc địa khỏe mạnh đều được huấn luyện chiến đấu. Con tàu được trang bị vũ khí nhưng ngân sách dành cho thiết bị nông nghiệp lại bị thu hẹp.';

  @override
  String get event_warCouncil_choice1 =>
      'Giải trừ vũ khí: nấu chảy vũ khí thành công cụ';

  @override
  String get event_warCouncil_outcome1 =>
      'Kho vũ khí được làm trống và nội dung của nó được tái chế thành vật liệu xây dựng. Thuộc địa sẽ xây dựng bằng lưỡi cày chứ không phải bằng kiếm. Những người theo chủ nghĩa hòa bình vui mừng; những người thực tế lo lắng về những gì ẩn giấu trong bóng tối.';

  @override
  String get event_warCouncil_choice2 =>
      'Chỉ tư thế phòng thủ: khiên và tường, không dùng kiếm';

  @override
  String get event_warCouncil_outcome2 =>
      'Nguồn lực được chuyển đến các công sự, lá chắn và hệ thống cảnh báo sớm. Không có vũ khí tấn công nào được sản xuất. Một cách tiếp cận cân bằng giúp duy trì các lựa chọn mở mà không gây khó chịu cho những người hàng xóm tiềm năng.';

  @override
  String get event_tradeFederation_title => 'Liên đoàn Thương mại';

  @override
  String get event_tradeFederation_narrative =>
      'Khi thuộc địa sắp có khả năng tồn tại, các phe phái tranh luận về cách cấu trúc nền kinh tế của nó. Câu hỏi vượt xa sự sống còn đơn thuần - nó sẽ xác định kiểu xã hội bắt nguồn từ vùng đất xa lạ. Các thương gia, những người theo chủ nghĩa xã hội và các quan chức đều đưa ra lý lẽ của mình.';

  @override
  String get event_tradeFederation_choice0 =>
      'Thiết lập các khu vực thương mại tự do với quy định tối thiểu';

  @override
  String get event_tradeFederation_outcome0 =>
      'Thị trường mọc lên ở mọi mô-đun môi trường sống. Sự đổi mới phát triển mạnh mẽ khi các nhà giao dịch cạnh tranh. Bất bình đẳng giàu nghèo ngày càng tăng, nhưng tổng nguồn tài nguyên sẵn có cho thuộc địa cũng tăng theo.';

  @override
  String get event_tradeFederation_choice1 =>
      'Thực hiện chia sẻ chung tất cả các tài nguyên';

  @override
  String get event_tradeFederation_outcome1 =>
      'Sở hữu tư nhân bị bãi bỏ. Mọi thứ đều thuộc về mọi người. Không ai bị đói, nhưng không ai có động cơ để sản xuất nhiều hơn mức tối thiểu. Sự tầm thường là thoải mái.';

  @override
  String get event_tradeFederation_choice2 =>
      'Tạo ra một hệ thống thương mại do nhà nước quản lý';

  @override
  String get event_tradeFederation_outcome2 =>
      'Chính phủ kiểm soát mọi hoạt động thương mại, định giá và phân bổ nguồn lực. Hệ thống này công bằng nhưng không linh hoạt. Chợ đen xuất hiện ở các hành lang bảo trì.';

  @override
  String get event_faithVsScience_title => 'Đức tin vs Khoa học';

  @override
  String get event_faithVsScience_narrative =>
      'Kính viễn vọng của con tàu đã chụp được những hình ảnh về một hiện tượng vũ trụ mâu thuẫn trực tiếp với nguyên lý trung tâm của phong trào đức tin thống trị. Nhà khoa học đứng đầu muốn công bố những phát hiện này; nhà lãnh đạo tôn giáo khẳng định họ sẽ chia rẽ cộng đồng.';

  @override
  String get event_faithVsScience_choice0 =>
      'Công bố đầy đủ các kết quả khoa học';

  @override
  String get event_faithVsScience_outcome0 =>
      'Sự thật chiếm ưu thế hơn sự thoải mái. Dữ liệu được công bố và phong trào tôn giáo bị rạn nứt. Một số tín đồ điều chỉnh đức tin của họ; những người khác mất nó hoàn toàn. Kiến thức tiến bộ.';

  @override
  String get event_faithVsScience_choice1 =>
      'Ngăn chặn những phát hiện để duy trì sự hài hòa xã hội';

  @override
  String get event_faithVsScience_outcome1 =>
      'Dữ liệu được phân loại. Cộng đồng tôn giáo vẫn ổn định, nhưng đội ngũ khoa học mất tinh thần. Sự thật bị trì hoãn không phải là sự thật bị phủ nhận, nhưng nó có cảm giác như vậy.';

  @override
  String get event_faithVsScience_choice2 =>
      'Triệu tập một hội đồng chung để tìm sự hài hòa giữa cả hai quan điểm';

  @override
  String get event_faithVsScience_outcome2 =>
      'Các nhà khoa học và nhà thần học làm việc cùng nhau để giải thích lại những phát hiện này. Một sự tổng hợp mới xuất hiện nhằm mở rộng cả sự hiểu biết lẫn niềm tin. Không phải ai cũng bị thuyết phục, nhưng cuộc đối thoại vẫn lành mạnh.';

  @override
  String get event_surveillanceState_title => 'Trạng thái giám sát';

  @override
  String get event_surveillanceState_narrative =>
      'Sau hàng loạt sự cố phá hoại, người đứng đầu an ninh đề xuất lắp đặt hệ thống giám sát ở mọi khoang trên tàu. Máy ảnh, micrô và máy quét sinh trắc học sẽ theo dõi mọi chuyển động của người dân thuộc địa. Những người ủng hộ quyền riêng tư đang kinh hoàng.';

  @override
  String get event_surveillanceState_choice0 =>
      'Từ chối hoàn toàn đề xuất giám sát';

  @override
  String get event_surveillanceState_outcome0 =>
      'Quyền riêng tư được bảo tồn. Kẻ phá hoại vẫn chưa bị bắt, nhưng những người dân thuộc địa dễ ngủ hơn khi biết rằng họ không bị theo dõi. Cuộc điều tra tiếp tục thông qua các phương tiện truyền thống.';

  @override
  String get event_surveillanceState_choice1 =>
      'Thực hiện giám sát toàn diện trên tàu';

  @override
  String get event_surveillanceState_outcome1 =>
      'Mọi ngóc ngách của con tàu đều được giám sát. Kẻ phá hoại bị bắt trong vòng vài ngày. Nhưng các camera vẫn còn và giám đốc an ninh tỏ ra không quan tâm đến việc tắt chúng đi. Bao giờ.';

  @override
  String get event_surveillanceState_choice2 =>
      'Chỉ cài đặt giám sát hạn chế ở những khu vực quan trọng';

  @override
  String get event_surveillanceState_outcome2 =>
      'Camera bao phủ phòng máy, kho vũ khí và cầu. Khu nhà ở vẫn riêng tư. Kẻ phá hoại cuối cùng được xác định thông qua phân tích mẫu. Một phản ứng đo lường.';

  @override
  String get event_nativeAlliance_title => 'Liên minh bản địa';

  @override
  String get event_nativeAlliance_narrative =>
      'Nền văn minh bản địa đã đề xuất một hiệp ước chính thức. Đại sứ của họ đến bằng tàu con thoi, một người thanh lịch nói chuyện qua một thiết bị phiên dịch có độ tinh vi đáng kinh ngạc. Họ đưa ra ba hình thức quan hệ, mỗi hình thức có ý nghĩa khác nhau đối với tương lai của thuộc địa.';

  @override
  String get event_nativeAlliance_choice0 => 'Ký hiệp ước liên minh bình đẳng';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Hiệp ước thiết lập phòng thủ chung, nghiên cứu chung và quyền lãnh thổ bình đẳng. Cả hai nền văn minh sẽ cùng nhau phát triển. Người bản xứ chia sẻ kiến ​​thức nông nghiệp giúp thay đổi triển vọng thuộc địa của bạn.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Đàm phán từ vị thế thống trị thuộc địa';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Bạn tận dụng công nghệ tiên tiến của mình để đảm bảo các điều khoản có lợi. Người bản địa nhượng lại lãnh thổ và tài nguyên. Họ ký với đôi tay run rẩy. Lịch sử đã chứng kiến ​​điều này trước đây và nó hiếm khi kết thúc tốt đẹp.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Thiết lập quan hệ đối tác thương mại tập trung vào lợi ích chung';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Thương mại thu hẹp khoảng cách giữa các loài. Nguyên liệu gốc chảy vào xưởng của bạn; công nghệ của bạn cải thiện thuốc của họ. Tình bạn phát triển từ lợi ích chung.';
}
