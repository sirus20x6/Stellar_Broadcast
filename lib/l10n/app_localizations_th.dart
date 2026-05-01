// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'เริ่มการเดินทาง';

  @override
  String get ui_title_dailyVoyage => 'การเดินทางประจำวัน';

  @override
  String get ui_title_dailyCompleted => 'ภารกิจประจำวันสำเร็จ';

  @override
  String get ui_title_customSeed => 'ซีดกำหนดเอง';

  @override
  String get ui_title_legacyHub => 'ศูนย์มรดก';

  @override
  String get ui_title_cancel => 'ยกเลิก';

  @override
  String get ui_title_startVoyage => 'เริ่มการเดินทาง';

  @override
  String get ui_title_seedInvalid =>
      'รหัสเมล็ดพันธุ์ไม่ถูกต้อง ใช้เฉพาะ A–Z และ 0–9';

  @override
  String ui_voyage_sector(int count) {
    return 'เซค $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'ซีด: $code';
  }

  @override
  String get ui_voyage_scanners => 'สแกนเนอร์';

  @override
  String get ui_voyage_scanPlanet => 'สแกนดาว';

  @override
  String get ui_voyage_noEnergy => 'พลังงานหมด';

  @override
  String get ui_voyage_pressOn => 'เดินหน้าต่อ';

  @override
  String get ui_voyage_systemHull => 'ตัวเรือ';

  @override
  String get ui_voyage_systemNav => 'นำทาง';

  @override
  String get ui_voyage_systemCryopods => 'ไครโอพอด';

  @override
  String get ui_voyage_systemCulture => 'วัฒนธรรม';

  @override
  String get ui_voyage_systemTech => 'เทคโนโลยี';

  @override
  String get ui_voyage_systemConstruct => 'ก่อสร้าง';

  @override
  String get ui_voyage_systemShields => 'เกราะป้องกัน';

  @override
  String get ui_voyage_systemLanding => 'ระบบลงจอด';

  @override
  String get ui_voyage_scannerAtmo => 'สแกนบรรยากาศ';

  @override
  String get ui_voyage_scannerGrav => 'สแกนแรงโน้มถ่วง';

  @override
  String get ui_voyage_scannerMineral => 'สแกนแร่ธาตุ';

  @override
  String get ui_voyage_scannerLife => 'สแกนสิ่งมีชีวิต';

  @override
  String get ui_voyage_scannerTemp => 'สแกนอุณหภูมิ';

  @override
  String get ui_voyage_scannerWater => 'สแกนน้ำ';

  @override
  String get ui_voyage_narrative0 =>
      'วงโคจรโลกปลอดภัย ไครโอพอดเสถียร วงแหวนคลังข้อมูลมั่นคง';

  @override
  String get ui_voyage_narrative1 =>
      'การเดินทางผ่านระบบสุริยะภายนอกเป็นปกติ สแกนเนอร์พิสัยไกลขยายการค้นหา';

  @override
  String get ui_voyage_narrative2 =>
      'สัญญาณจากฝั่งโลกจางลงต่ำกว่าเกณฑ์ตรวจจับแล้ว';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'พิกัดในคลังตรงกับระบบดาวที่ถูกทำเครื่องหมาย กำลังปรับเส้นทาง';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'อาร์เรย์สแกนเนอร์ยังคงปรับเทียบสำหรับความละเอียดในห้วงอวกาศลึก';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'ระบบดาวที่ทำเครื่องหมายไว้อยู่ข้างหน้า ข้อมูลสำรวจก่อนหน้ายังคงสอดคล้อง';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'สัญญาณจางๆ ข้างหน้า เริ่มกวาดสแกนดาวเคราะห์';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'ออกจาก FTL สำเร็จ ระบบดาวใหม่ปรากฏในสายตา';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'ธนาคารไครโอพอดเสถียร กำลังสแกนเซกเตอร์';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'ดาวเคราะห์ดวงใหม่กำลังปรากฏในอาร์เรย์ด้านหน้า';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'แผนที่ดวงดาวระบุผู้สมัครที่มีศักยภาพ';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'เครื่องมือพบอีกโลกหนึ่งที่คุ้มค่าแก่การวัดผล';

  @override
  String get ui_voyage_narrativePhrase6 => 'ล็อกสแกนเนอร์เป้าหมายใหม่สำเร็จ';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'แผนที่นำทางอัปเดตแล้ว โลกผู้สมัครอยู่ในระยะ';

  @override
  String get ui_scan_landHere => 'ลงจอดที่นี่';

  @override
  String get ui_scan_pressOn => 'เดินหน้าต่อ';

  @override
  String get ui_scan_allStatsVerified => 'ยืนยันข้อมูลทั้งหมดแล้ว';

  @override
  String get ui_scan_launchProbe => 'ปล่อยโพรบ';

  @override
  String get ui_scan_habitability => 'ความเหมาะสมต่อการอยู่อาศัย';

  @override
  String get ui_scan_statAtmos => 'บรรยากาศ';

  @override
  String get ui_scan_statTemp => 'อุณหภูมิ';

  @override
  String get ui_scan_statWater => 'น้ำ';

  @override
  String get ui_scan_statResource => 'ทรัพยากร';

  @override
  String get ui_scan_statGravity => 'แรงโน้มถ่วง';

  @override
  String get ui_scan_statBio => 'ชีวภาพ';

  @override
  String get ui_scan_statAnomaly => 'สิ่งผิดปกติ';

  @override
  String get ui_scan_statRadiation => 'รังสี';

  @override
  String ui_scan_probesCount(int count) {
    return 'คำถาม: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'ความไม่แน่นอน: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'การวิเคราะห์ดาวเคราะห์';

  @override
  String get ui_landing_shipStatus => 'สถานะยาน';

  @override
  String ui_landing_fuel(int amount) {
    return 'เชื้อเพลิง: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'คำเตือน: เชื้อเพลิงต่ำ';

  @override
  String get ui_landing_landingRiskCritical => 'ความเสี่ยงลงจอด: วิกฤต';

  @override
  String get ui_landing_landingRiskElevated => 'ความเสี่ยงลงจอด: สูง';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'ระบบลงจอดเสียหายรุนแรง การเข้าสู่ชั้นบรรยากาศอาจทำลายสินค้าและผู้ตั้งอาณานิคม';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'ระบบลงจอดเสื่อมสภาพ คาดว่าจะเข้าสู่ชั้นบรรยากาศอย่างรุนแรงพร้อมความเสียหายต่อระบบ';

  @override
  String get ui_landing_riskAssessment => 'การประเมินความเสี่ยง';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'ยานของคุณรับได้อีกประมาณ ~$remaining เหตุการณ์';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'ยานของคุณอาจไม่รอดการเดินทางครั้งต่อไป';

  @override
  String get ui_landing_surfaceFeatures => 'ลักษณะพื้นผิว';

  @override
  String get ui_landing_nameYourColony => 'ตั้งชื่ออาณานิคมของคุณ';

  @override
  String get ui_landing_establishColony => 'สถาปนาอาณานิคม';

  @override
  String get ui_landing_pressOnward => 'เดินหน้าต่อไป';

  @override
  String get ui_landing_statAtmosphere => 'บรรยากาศ';

  @override
  String get ui_landing_statTemperature => 'อุณหภูมิ';

  @override
  String get ui_landing_statWater => 'น้ำ';

  @override
  String get ui_landing_statResources => 'ทรัพยากร';

  @override
  String get ui_landing_statGravity => 'แรงโน้มถ่วง';

  @override
  String get ui_landing_statBiodiversity => 'ความหลากหลายทางชีวภาพ';

  @override
  String get ui_landing_statAvgHealth => 'สุขภาพเฉลี่ย';

  @override
  String get ui_landing_statHull => 'ตัวเรือ';

  @override
  String get ui_landing_statNavigation => 'ระบบนำทาง';

  @override
  String get ui_landing_statCryopods => 'ไครโอพอด';

  @override
  String get ui_landing_statCulture => 'วัฒนธรรม';

  @override
  String get ui_landing_statTech => 'เทคโนโลยี';

  @override
  String get ui_landing_statConstructors => 'หน่วยก่อสร้าง';

  @override
  String get ui_landing_statShields => 'เกราะป้องกัน';

  @override
  String get ui_landing_statLandingSys => 'ระบบลงจอด';

  @override
  String get ui_ending_colonyEstablished => 'สถาปนาอาณานิคมแล้ว';

  @override
  String get ui_ending_colonyScore => 'คะแนนอาณานิคม';

  @override
  String get ui_ending_colonyProfile => 'โปรไฟล์อาณานิคม';

  @override
  String get ui_ending_landscape => 'ภูมิทัศน์';

  @override
  String get ui_ending_voyageRecord => 'บันทึกการเดินทาง';

  @override
  String get ui_ending_scoreBreakdown => 'รายละเอียดคะแนน';

  @override
  String get ui_ending_total => 'รวม';

  @override
  String get ui_ending_achievementsUnlocked => 'ความสำเร็จที่ปลดล็อก';

  @override
  String get ui_ending_challengeFriend => 'ท้าเพื่อน';

  @override
  String get ui_ending_shareCard => 'แชร์การ์ด';

  @override
  String get ui_ending_shareCardDialogTitle => 'แบ่งปันการเดินทางของคุณ';

  @override
  String get ui_ending_shareCardShare => 'แบ่งปัน';

  @override
  String get ui_ending_shareCardCancel => 'ยกเลิก';

  @override
  String get ui_ending_copySeed => 'คัดลอกซีด';

  @override
  String get ui_ending_viewLegacy => 'ดูมรดก';

  @override
  String get ui_ending_newVoyage => 'การเดินทางใหม่';

  @override
  String get ui_ending_achievementFirstLanding => 'ลงจอดครั้งแรก';

  @override
  String get ui_ending_achievementGoldenAge => 'ยุคทอง';

  @override
  String get ui_ending_achievementSurvivor => 'ผู้รอดชีวิต';

  @override
  String get ui_ending_achievementExplorer => 'นักสำรวจ';

  @override
  String get ui_ending_achievementPerfectionist => 'นักสมบูรณ์แบบ';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'ผู้รอดจากโลกมรณะ';

  @override
  String get ui_ending_achievementFullCrew => 'ลูกเรือครบ';

  @override
  String get ui_ending_achievementProbeMaster => 'ปรมาจารย์โพรบ';

  @override
  String get ui_ending_achievementIronHull => 'ตัวเรือเหล็ก';

  @override
  String get ui_ending_achievementLeapOfFaith => 'ก้าวกระโดดแห่งศรัทธา';

  @override
  String get ui_gameOver_missionFailed => 'ภารกิจล้มเหลว';

  @override
  String get ui_gameOver_voyageRecord => 'บันทึกการเดินทาง';

  @override
  String get ui_gameOver_encountersSurvived => 'เหตุการณ์ที่รอดผ่าน';

  @override
  String get ui_gameOver_probesRemaining => 'โพรบคงเหลือ';

  @override
  String get ui_gameOver_colonistsRemaining => 'ผู้ตั้งอาณานิคมคงเหลือ';

  @override
  String get ui_gameOver_finalShipHealth => 'สุขภาพยานสุดท้าย';

  @override
  String get ui_gameOver_planetsSkipped => 'ดาวเคราะห์ที่ข้าม';

  @override
  String get ui_gameOver_damageTaken => 'ความเสียหายที่ได้รับ';

  @override
  String get ui_gameOver_fuelRemaining => 'เชื้อเพลิงคงเหลือ';

  @override
  String get ui_gameOver_energyRemaining => 'พลังงานคงเหลือ';

  @override
  String get ui_gameOver_challengeFriend => 'ท้าเพื่อน';

  @override
  String get ui_gameOver_viewLegacy => 'ดูมรดก';

  @override
  String get ui_gameOver_newVoyage => 'การเดินทางใหม่';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nข้าไม่รอด... $reason\nคิดว่าเจ้าทำได้ดีกว่าในการเดินทางเดียวกันหรือ?\nstellarbroadcast://play?seed=$seedCode\n\nยังไม่มีแอป?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'ผู้ตั้งอาณานิคมคนสุดท้ายสิ้นลมในไครโอสลีป — ความล้มเหลวแบบลูกโซ่ที่ไม่มีระเบียบปฏิบัติฉุกเฉินใดยับยั้งได้ เอ็กโซดัสแล่นต่อไป เป็นเรือผีที่บรรทุกเพียงระบบอัตโนมัติและความเงียบที่แข็งตัว ภารกิจของมันล้มเหลวไม่ใช่ในชั่วขณะแห่งหายนะ แต่ในการสูญเสียชีวิตมนุษย์อย่างช้าๆ ทีละคน จนไม่เหลือใครเลย';

  @override
  String get ui_gameOver_epilogueHull =>
      'ตัวเรือพังทลายในความเงียบ — ความล้าของโลหะที่สะสมจากการชนระดับจุลภาคนับไม่ถ้วน จนยานไม่อาจยึดรั้งไว้ได้อีกต่อไป บรรยากาศไหลรั่วออกสู่สุญญากาศ เรืออาณานิคมเอ็กโซดัสแตกสลาย ซากของมันรวมเข้ากับทุ่งเศษซากโบราณระหว่างดวงดาว ไม่มีใครเคยได้รับสัญญาณขอความช่วยเหลือ';

  @override
  String get ui_gameOver_epilogueNav =>
      'ปราศจากระบบนำทาง เอ็กโซดัสล่องลอยเข้าสู่ห้วงอวกาศที่ไม่มีในแผนที่ — แผนที่ดวงดาวไร้ประโยชน์ การแก้ไขเส้นทางเป็นไปไม่ได้ ยานแล่นต่อไปในความมืด ผู้โดยสารที่หลับใหลไม่รู้เลยว่าจุดหมายปลายทางถูกแทนที่ด้วยนิรันดร์ บ้างว่ายานยังคงล่องลอย เป็นเรือผีในราตรีที่ไม่มีวันสิ้นสุด';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'ไครโอพอดล้มเหลวทีละตัว — ลูกโซ่ที่ไม่มีระเบียบปฏิบัติฉุกเฉินใดหยุดยั้งได้ ผู้ตั้งอาณานิคมไม่เคยตื่น เอ็กโซดัสเดินทางต่อตามเส้นทางที่โปรแกรมไว้ เป็นเรือสุสานที่บรรทุกเพียงความเงียบไปยังโลกใดก็ตามที่มันจะไปถึงในที่สุด อนุสรณ์แห่งความฝันที่ตายในการหลับแช่แข็ง';

  @override
  String get ui_gameOver_epilogueDefault =>
      'เอ็กโซดัสเงียบลง ภารกิจ ลูกเรือ สัมภาระแห่งความหวังของมนุษย์ — ทั้งหมดสูญสิ้นในความกว้างใหญ่ไร้ความรู้สึกระหว่างดวงดาว บางทีสักวันอารยธรรมอื่นจะพบซากและสงสัยว่าสายพันธุ์ผู้กล้าใดบังอาจข้ามสุญญากาศ';

  @override
  String get ui_settings_title => 'ตั้งค่า';

  @override
  String get ui_settings_music => 'เพลง';

  @override
  String get ui_settings_soundEffects => 'เอฟเฟกต์เสียง';

  @override
  String get ui_settings_haptics => 'การสั่นสะเทือน';

  @override
  String get ui_settings_premium => 'พรีเมียม';

  @override
  String get ui_settings_goPremium => 'อัปเกรดพรีเมียม';

  @override
  String get ui_settings_enabled => 'เปิดใช้งาน';

  @override
  String get ui_settings_volume => 'ระดับเสียง';

  @override
  String get ui_settings_language => 'ภาษา';

  @override
  String get ui_settings_systemDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get ui_settings_statsPosition => 'สถิติและตำแหน่งปุ่ม';

  @override
  String get ui_settings_statsLeft => 'ซ้าย';

  @override
  String get ui_settings_statsRight => 'ขวา';

  @override
  String get ui_legacy_title => 'ศูนย์มรดก';

  @override
  String get ui_legacy_commanderStats => 'สถิติผู้บัญชาการ';

  @override
  String get ui_legacy_highScores => 'คะแนนสูงสุด';

  @override
  String get ui_legacy_upgrades => 'อัปเกรด';

  @override
  String get ui_legacy_achievements => 'ความสำเร็จ';

  @override
  String get ui_legacy_voyageLog => 'บันทึกการเดินทาง';

  @override
  String get ui_legacy_voyages => 'การเดินทาง';

  @override
  String get ui_legacy_bestScore => 'คะแนนดีที่สุด';

  @override
  String get ui_legacy_legacyPts => 'แต้มมรดก';

  @override
  String get ui_legacy_completed => 'สำเร็จ';

  @override
  String get ui_legacy_notYetPlayed => 'ยังไม่เคยเล่น';

  @override
  String get ui_legacy_dailyHistory => 'ประวัติประจำวัน';

  @override
  String get ui_premium_goPremium => 'อัปเกรดพรีเมียม';

  @override
  String get ui_premium_subtitle => 'สนับสนุนภารกิจ อัปเกรดการบัญชาการของคุณ';

  @override
  String get ui_premium_removeAds => 'ลบโฆษณาทั้งหมดตลอดกาล';

  @override
  String get ui_premium_supportIndie => 'สนับสนุนนักพัฒนาอิสระ';

  @override
  String get ui_premium_exclusiveTitle => 'ตำแหน่งผู้บัญชาการพิเศษ';

  @override
  String get ui_premium_priorityFeatures => 'คำขอฟีเจอร์ลำดับความสำคัญสูง';

  @override
  String get ui_premium_lifetime => 'ตลอดชีพ';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'อัปเกรดสแกนเนอร์';

  @override
  String get ui_scannerUpgrade_subtitle => 'เลือกสแกนเนอร์ที่จะอัปเกรด';

  @override
  String get ui_scannerUpgrade_skip => 'ข้าม';

  @override
  String get ui_scannerUpgrade_max => 'สูงสุด';

  @override
  String get ui_scannerUpgrade_atmospheric => 'บรรยากาศ';

  @override
  String get ui_scannerUpgrade_gravimetric => 'แรงโน้มถ่วง';

  @override
  String get ui_scannerUpgrade_mineral => 'แร่ธาตุ';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'สัญญาณชีพ';

  @override
  String get ui_scannerUpgrade_temperature => 'อุณหภูมิ';

  @override
  String get ui_scannerUpgrade_water => 'น้ำ';

  @override
  String get ui_event_continue => 'ดำเนินต่อ';

  @override
  String get ui_event_tapToSkip => 'แตะเพื่อข้าม';

  @override
  String get ui_event_colonists => 'ผู้ตั้งอาณานิคม';

  @override
  String get ui_event_landing => 'ลงจอด';

  @override
  String get ui_event_atmScan => 'สแกนบรรยากาศ';

  @override
  String get ui_event_gravScan => 'สแกนแรงโน้มถ่วง';

  @override
  String get ui_event_minScan => 'สแกนแร่ธาตุ';

  @override
  String get ui_event_lifeScan => 'สแกนสิ่งมีชีวิต';

  @override
  String get ui_event_tempScan => 'สแกนอุณหภูมิ';

  @override
  String get ui_event_h2oScan => 'สแกน H2O';

  @override
  String get onboarding_page0_title => 'ความหวังสุดท้ายของมนุษยชาติ';

  @override
  String get onboarding_page0_description =>
      'โลกกำลังจะตาย รัฐบาลทั่วโลกได้รวบรวมทรัพยากรสุดท้ายเพื่อสร้างยานลำสุดท้าย — เรืออาณานิคมที่บรรทุกเศษเสี้ยวของมนุษยชาติมุ่งสู่ดวงดาว';

  @override
  String get onboarding_page1_title => 'ค้นหาบ้านใหม่';

  @override
  String get onboarding_page1_description =>
      'นำทางผ่านสุญญากาศที่ไร้แผนที่ระหว่างดวงดาว สแกนโลกต่างดาว เผชิญอันตรายจากจักรวาล และตัดสินใจในสิ่งที่เป็นไปไม่ได้';

  @override
  String get onboarding_page2_title => 'มรดกของคุณจะคงอยู่';

  @override
  String get onboarding_page2_description =>
      'ทุกการเดินทางสอนสิ่งใหม่แก่มนุษยชาติ สะสมแต้มมรดกเพื่อปลดล็อกอัปเกรดถาวร และสลักชื่อของคุณไว้บนดวงดาว';

  @override
  String get onboarding_page3_title => 'ความเป็นส่วนตัวของคุณ ทางเลือกของคุณ';

  @override
  String get onboarding_page3_description =>
      'เลือกวิธีที่คุณต้องการสัมผัสประสบการณ์ Stellar Broadcast';

  @override
  String get planet_tierUtopia => 'ยูโทเปีย';

  @override
  String get planet_tierParadise => 'สวรรค์';

  @override
  String get planet_tierHabitable => 'อยู่อาศัยได้';

  @override
  String get planet_tierHarsh => 'โหดร้าย';

  @override
  String get planet_tierHostile => 'เป็นปรปักษ์';

  @override
  String get planet_tierDeathWorld => 'โลกมรณะ';

  @override
  String get planet_featurePlantLife => 'พืชพรรณ';

  @override
  String get planet_featureEdiblePlants => 'พืชกินได้';

  @override
  String get planet_featurePoisonousPlants => 'พืชมีพิษ';

  @override
  String get planet_featureUnicellularLife => 'สิ่งมีชีวิตเซลล์เดียว';

  @override
  String get planet_featureDangerousFauna => 'สัตว์อันตราย';

  @override
  String get planet_featureTameableFauna => 'สัตว์เชื่องได้';

  @override
  String get planet_featureAirtightCaves => 'ถ้ำปิดสนิท';

  @override
  String get planet_featureInsulatedCaves => 'ถ้ำเก็บความร้อน';

  @override
  String get planet_featureBarrenMoon => 'ดวงจันทร์แห้งแล้ง';

  @override
  String get planet_featureMetalRichMoon => 'ดวงจันทร์อุดมโลหะ';

  @override
  String get planet_featureUnstableMoon => 'ดวงจันทร์ไม่เสถียร';

  @override
  String get planet_featureOutstandingBeauty => 'ความงามอันโดดเด่น';

  @override
  String get planet_featureOutstandingUgliness => 'ความอัปลักษณ์อันโดดเด่น';

  @override
  String get planet_featureAncientRuins => 'ซากปรักหักพังโบราณ';

  @override
  String get planet_featureMonuments => 'อนุสาวรีย์';

  @override
  String get planet_featureRapidRotation => 'หมุนรอบตัวเร็ว';

  @override
  String get planet_featureSlowRotation => 'หมุนรอบตัวช้า';

  @override
  String get planet_featureVolcanicActivity => 'ภูเขาไฟคุกรุ่น';

  @override
  String get planet_featureTectonicInstability => 'แผ่นเปลือกโลกไม่เสถียร';

  @override
  String get planet_featureElectricalStorms => 'พายุไฟฟ้า';

  @override
  String get planet_featureToxicSpores => 'สปอร์มีพิษ';

  @override
  String get planet_featureDeepOceans => 'มหาสมุทรลึก';

  @override
  String get planet_featureGeothermalVents => 'ปล่องความร้อนใต้พิภพ';

  @override
  String get planet_featureStrongMagnetosphere => 'สนามแม่เหล็กแรง';

  @override
  String get planet_featureWeakMagnetosphere => 'สนามแม่เหล็กอ่อน';

  @override
  String get planet_featureMegafauna => 'สัตว์ขนาดยักษ์';

  @override
  String get planet_featureSymbioticOrganisms => 'สิ่งมีชีวิตพึ่งพาอาศัย';

  @override
  String get planet_featureGravityWells => 'บ่อแรงโน้มถ่วง';

  @override
  String get planet_featureSubspaceEchoes => 'เสียงสะท้อนจากมิติย่อย';

  @override
  String get planet_featureBioluminescentLife => 'สิ่งมีชีวิตเรืองแสง';

  @override
  String get planet_featureAquaticMegafauna => 'สัตว์ยักษ์ใต้น้ำ';

  @override
  String get planet_featureFloatingIslands => 'เกาะลอยฟ้า';

  @override
  String get planet_featureCrystalCaverns => 'ถ้ำคริสตัล';

  @override
  String get planet_featureLavaTubes => 'อุโมงค์ลาวา';

  @override
  String get planet_featureIceTunnels => 'อุโมงค์น้ำแข็ง';

  @override
  String get planet_featureOrbitalWreckage => 'ซากปรักในวงโคจร';

  @override
  String get planet_featureMegastructuralFragments => 'เศษโครงสร้างมหึมา';

  @override
  String get planet_featureAncientObservatory => 'หอดูดาวโบราณ';

  @override
  String get planet_featureExtremeSeasons => 'ฤดูกาลสุดขีด';

  @override
  String get planet_featureCryovolcanism => 'ภูเขาไฟเย็นยะเยือก';

  @override
  String get planet_featureFloatingKelpForests => 'ป่าสาหร่ายลอยน้ำ';

  @override
  String get planet_featureSingingCrystals => 'คริสตัลขับขาน';

  @override
  String get planet_featureFertileSoil => 'ดินอุดมสมบูรณ์';

  @override
  String get planet_featureHelium3Deposits => 'แหล่งแร่ฮีเลียม-3';

  @override
  String get planet_featureExoticIsotopes => 'ไอโซโทปแปลกใหม่';

  @override
  String get planet_featureMedicinalFlora => 'พืชสมุนไพร';

  @override
  String get planet_featurePerpetualAurora => 'ออโรร่าตลอดกาล';

  @override
  String get planet_featurePetrifiedMegaflora => 'Megaflora กลายเป็นหิน';

  @override
  String get planet_featureUndergroundRivers => 'แม่น้ำใต้ดิน';

  @override
  String get planet_featureObsidianPlains => 'ที่ราบออบซิเดียน';

  @override
  String get planet_featureSaltFlats => 'เกลือแฟลต';

  @override
  String get planet_featureCarnivorousFlora => 'ฟลอร่ากินเนื้อเป็นอาหาร';

  @override
  String get planet_featureGhostCities => 'เมืองผี';

  @override
  String get planet_featureArchiveVaults => 'ห้องนิรภัยเก็บถาวร';

  @override
  String get planet_featureSinkholeFields => 'ทุ่งหลุมยุบ';

  @override
  String get planet_featureApexPredator => 'เอเพ็กซ์ พรีเดเตอร์';

  @override
  String get ui_monthJan => 'ม.ค.';

  @override
  String get ui_monthFeb => 'ก.พ.';

  @override
  String get ui_monthMar => 'มี.ค.';

  @override
  String get ui_monthApr => 'เม.ย.';

  @override
  String get ui_monthMay => 'พ.ค.';

  @override
  String get ui_monthJun => 'มิ.ย.';

  @override
  String get ui_monthJul => 'ก.ค.';

  @override
  String get ui_monthAug => 'ส.ค.';

  @override
  String get ui_monthSep => 'ก.ย.';

  @override
  String get ui_monthOct => 'ต.ค.';

  @override
  String get ui_monthNov => 'พ.ย.';

  @override
  String get ui_monthDec => 'ธ.ค.';

  @override
  String get event_asteroidField_title => 'สนามดาวเคราะห์น้อย';

  @override
  String get event_asteroidField_narrative =>
      'สแกนเนอร์พิสัยไกลตรวจพบสนามดาวเคราะห์น้อยหนาแน่นขวางเส้นทางบินโดยตรง ระบบนำทางคำนวณทางเลือกสองทาง: พุ่งฝ่าช่องทางที่บางที่สุดอย่างเสี่ยง หรืออ้อมไกลซึ่งจะสิ้นเปลืองเชื้อเพลิงและสร้างความเครียดให้อาร์เรย์นำทาง';

  @override
  String get event_asteroidField_choice0_text => 'พุ่งฝ่าช่องทาง';

  @override
  String get event_asteroidField_choice0_outcome =>
      'ยานสั่นสะเทือนเมื่อเศษหินเล็กๆ กระหน่ำตัวเรือ เราผ่านมาได้ แต่ไม่ไร้รอยขีดข่วน';

  @override
  String get event_asteroidField_choice1_text => 'อ้อมไปทางไกล';

  @override
  String get event_asteroidField_choice1_outcome =>
      'การอ้อมสิ้นเปลืองเชื้อเพลิงอันมีค่าและทำให้คอมพิวเตอร์นำทางสึกหรอ แต่ตัวเรือยังคงสมบูรณ์';

  @override
  String get event_asteroidField_choice2_text => 'ใช้โดรนขุดเจาะเปิดทาง';

  @override
  String get event_asteroidField_choice2_outcome =>
      'โดรนเจาะช่องทางปลอดภัยและเก็บแร่ธาตุที่มีประโยชน์ แต่ปฏิบัติการนี้สิ้นเปลืองห้องเทคโนโลยี';

  @override
  String get event_asteroidField_choice3_text => 'ปล่อยโพรบเป็นตัวล่อ';

  @override
  String get event_asteroidField_choice3_outcome =>
      'โพรบดึงดูดกระจุกที่หนาแน่นที่สุดออกจากยาน เราลอดผ่านได้โดยมีรอยขีดข่วนเล็กน้อย';

  @override
  String get event_solarFlare_title => 'เปลวสุริยะกำลังมา';

  @override
  String get event_solarFlare_narrative =>
      'ดาวฤกษ์ใกล้เคียงปะทุด้วยการพ่นมวลสารโคโรนาขนาดมหึมา คลื่นอนุภาคมีประจุจะถึงเราในไม่กี่นาที เราสามารถเบี่ยงพลังงานไปที่เกราะ ย้ายผู้ตั้งอาณานิคมเข้าแกนกลาง หรือฝ่าคลื่นไป';

  @override
  String get event_solarFlare_choice0_text => 'เบี่ยงพลังงานทั้งหมดไปที่เกราะ';

  @override
  String get event_solarFlare_choice0_outcome =>
      'เกราะรับไหว แต่ไฟกระชากเผาระบบรอง';

  @override
  String get event_solarFlare_choice1_text =>
      'ย้ายผู้ตั้งอาณานิคมเข้าแกนกลางที่มีเกราะ';

  @override
  String get event_solarFlare_choice1_outcome =>
      'ผู้ตั้งอาณานิคมรอดปลอดภัย แต่ดาดฟ้าด้านนอกได้รับความเสียหายจากรังสี';

  @override
  String get event_solarFlare_choice2_text => 'ฝ่ามันไป — ทุกคนเตรียมพร้อม';

  @override
  String get event_solarFlare_choice2_outcome =>
      'เปลวสุริยะถล่มอย่างหนัก ระบบกะพริบ แต่ไม่มีอะไรหายนะ อย่างไรก็ตาม ขวัญกำลังใจตกต่ำ';

  @override
  String get event_solarFlare_choice3_text => 'ปล่อยโพรบวัดหน้าคลื่น';

  @override
  String get event_solarFlare_choice3_outcome =>
      'โพรบส่งข้อมูลหน้าคลื่นที่แม่นยำ ช่วยให้เราปรับมุมยานอย่างเหมาะสม ความเสียหายต่อสแกนเนอร์น้อยมาก';

  @override
  String get event_nebulaPassage_title => 'ผ่านเนบิวลา';

  @override
  String get event_nebulaPassage_narrative =>
      'เนบิวลาเรืองแสงทอดยาวขวางเส้นทาง การผ่านเข้าไปอาจชาร์จเซลล์พลังงาน แต่อาจรบกวนอาร์เรย์สแกนเนอร์ การอ้อมปลอดภัยแต่ช้า';

  @override
  String get event_nebulaPassage_choice0_text => 'บินผ่านเนบิวลา';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'แก๊สไอออนของเนบิวลาชาร์จเซลล์พลังงาน แต่รบกวนการปรับเทียบสแกนเนอร์';

  @override
  String get event_nebulaPassage_choice1_text => 'เลียบขอบ';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'เราได้ประจุบางส่วนโดยมีการรบกวนน้อย เป็นทางสายกลางที่ปลอดภัย';

  @override
  String get event_microMeteorite_title => 'พายุอุกกาบาตจิ๋ว';

  @override
  String get event_microMeteorite_narrative =>
      'ฝูงอุกกาบาตจิ๋วที่มองไม่เห็นจนกระทั่งไม่กี่วินาทีก่อน กำลังฉีกแผ่นเกราะตัวเรือด้านหน้า ทีมควบคุมความเสียหายกำลังเร่งดำเนินการ';

  @override
  String get event_microMeteorite_choice0_text =>
      'หมุนฉุกเฉิน — หันท้ายเรือที่มีเกราะหนาออกรับ';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'การหมุนได้ผล เกราะท้ายเรือรับแรงกระแทกส่วนใหญ่ แต่ไจโรนำทางประท้วงอย่างรุนแรง';

  @override
  String get event_microMeteorite_choice1_text => 'ส่งโดรนซ่อมออกไปกลางพายุ';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'โดรนปะซ่อมตัวเรือแบบเรียลไทม์ แต่หลายตัวสูญหาย สำรองเทคโนโลยีหมด';

  @override
  String get event_microMeteorite_choice2_text => 'จุดระเบิดโพรบเพื่อกระจายฝูง';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'การระเบิดของโพรบกระจายกระจุกอุกกาบาตจิ๋ว มีเพียงเศษเสี้ยวที่ถึงตัวเรือ';

  @override
  String get event_gravityWell_title => 'บ่อแรงโน้มถ่วงที่ไม่มีในแผนที่';

  @override
  String get event_gravityWell_narrative =>
      'ยานกระชากเมื่อบ่อแรงโน้มถ่วงที่มองไม่เห็นดึงเราออกนอกเส้นทาง เครื่องยนต์เครียดต้านแรงดึง เราสามารถเร่งเครื่องเต็มที่เพื่อหนี หรือใช้แรงเหวี่ยงรอบเพื่อเพิ่มความเร็วโดยแลกกับความเครียดโครงสร้าง';

  @override
  String get event_gravityWell_choice0_text => 'เร่งเครื่องเต็มที่ — หนีออกมา';

  @override
  String get event_gravityWell_choice0_outcome =>
      'เครื่องยนต์คำราม ตัวเรือครวญคราง แต่เราหลุดออกมาได้อย่างสะอาด';

  @override
  String get event_gravityWell_choice1_text => 'ใช้แรงเหวี่ยง';

  @override
  String get event_gravityWell_choice1_outcome =>
      'แรงเหวี่ยงสำเร็จอย่างสวยงาม เราได้ความเร็วเพิ่ม แต่แรง G สร้างความเครียดให้ซีลไครโอพอด';

  @override
  String get event_crewUnrest_title => 'ลูกเรือไม่สงบ';

  @override
  String get event_crewUnrest_narrative =>
      'กลุ่มผู้ตั้งอาณานิคมที่ตื่นขึ้นยื่นคำร้องต่อสภาผู้ดูแลเพื่อขอออกจากไครโอสลีปถาวร พวกเขาอ้างว่าการมีชีวิตอยู่ในสนธยาแห่งการแช่แข็งนั้นไร้มนุษยธรรม เจ้าหน้าที่ห้องไครโอเตือนว่าการปลุกคนมากขึ้นหมายถึงการเผาผลาญเสบียงเร็วขึ้น';

  @override
  String get event_crewUnrest_choice0_text => 'อนุญาตให้ละลายตามสมัครใจ';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'ขวัญกำลังใจพุ่งสูงเมื่อครอบครัวกลับมารวมกันในโลกตื่น แต่การบริโภคทรัพยากรพุ่งสูง';

  @override
  String get event_crewUnrest_choice1_text =>
      'ปฏิเสธคำร้อง — ความปลอดภัยต้องมาก่อน';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'ผู้ตั้งอาณานิคมปฏิบัติตาม แต่ความขุ่นเคืองหมักหมมในทางเดิน';

  @override
  String get event_crewUnrest_choice2_text => 'ประนีประนอม — สลับรอบการละลาย';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'ทางออกที่สมดุล ทุกคนได้ตื่นบ้าง แต่การสลับรอบไครโอพอดเพิ่มการสึกหรอ';

  @override
  String get event_stowaway_title => 'พบผู้ลักลอบโดยสาร';

  @override
  String get event_stowaway_narrative =>
      'ผู้ตรวจสอบสำนักงานบัญชีรายชื่อพบบุคคลที่ไม่ได้ลงทะเบียนซ่อนตัวในห้องสินค้า 7 เธออ้างว่าเป็นนักพันธุศาสตร์ที่ถูกปฏิเสธตำแหน่งในรายชื่อปล่อยยาน ทักษะของเธออาจล้ำค่า — หรือเธออาจเป็นผู้ก่อวินาศกรรม';

  @override
  String get event_stowaway_choice0_text => 'ต้อนรับเธอ — เราต้องการทุกสมอง';

  @override
  String get event_stowaway_choice0_outcome =>
      'ดร. วาสเกซพิสูจน์ว่าเก่งกาจ ความเชี่ยวชาญด้านพันธุศาสตร์ของเธอปรับปรุงประสิทธิภาพไครโอพอด แม้ลูกเรือบางคนไม่ไว้ใจเธอ';

  @override
  String get event_stowaway_choice1_text => 'กักตัวเธอ — ความไว้ใจต้องได้รับ';

  @override
  String get event_stowaway_choice1_outcome =>
      'เธอให้ความร่วมมือจากที่กัก และในที่สุดก็ได้รับสิทธิ์เข้าถึงจำกัด ลูกเรือรู้สึกปลอดภัยขึ้น';

  @override
  String get event_stowaway_choice2_text => 'แช่แข็งเธอกลับจนกว่าจะลงจอด';

  @override
  String get event_stowaway_choice2_outcome =>
      'ทางออกที่เป็นจริง ทักษะของเธอถูกรักษาไว้สำหรับภายหลัง แต่การถกเถียงด้านจริยธรรมแบ่งแยกลูกเรือ';

  @override
  String get event_mutinyBrewing_title => 'กบฏกำลังก่อตัว';

  @override
  String get event_mutinyBrewing_narrative =>
      'หน่วยเฝ้าระวังสะพานเรือดักจับข้อความจากกลุ่มนายทหารที่วางแผนยึดอำนาจบัญชาการและเปลี่ยนเส้นทางไปยังระบบดาวที่ใกล้กว่าแต่เอื้อต่อการอยู่อาศัยน้อยกว่า พวกเขาเชื่อว่าเส้นทางปัจจุบันคือคำตัดสินประหารชีวิต';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'เผชิญหน้าพวกเขาอย่างเปิดเผย — ความโปร่งใสเหนือสิ่งอื่นใด';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'การเผชิญหน้าตึงเครียด แต่กบฏยอมถอยเมื่อเห็นข้อมูลนำทาง ความไว้ใจสั่นคลอน';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'ย้ายตำแหน่งหัวหน้ากบฏอย่างเงียบๆ';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'แผนการสลายไปโดยไม่มีดราม่าสาธารณะ ลูกเรือบางคนสงสัยว่าทำไมนายทหารที่เป็นที่นิยมถูกย้าย แต่ระเบียบยังคงอยู่';

  @override
  String get event_culturalSchism_title => 'ความแตกแยกทางวัฒนธรรม';

  @override
  String get event_culturalSchism_narrative =>
      'สองกลุ่มวัฒนธรรมบนยานไม่เห็นด้วยอย่างรุนแรงเรื่องการปกครองอาณานิคมใหม่ กลุ่มหนึ่งเรียกร้องประชาธิปไตยโดยตรง อีกกลุ่มยืนยันสภาเทคโนแครต ความตึงเครียดกำลังเดือดพล่าน';

  @override
  String get event_culturalSchism_choice0_text => 'จัดลงประชามติที่มีผลผูกพัน';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'ประชาธิปไตยชนะ — อย่างหวุดหวิด ฝ่ายแพ้ยอมรับผลอย่างไม่เต็มใจ แต่เอกภาพเปราะบาง';

  @override
  String get event_culturalSchism_choice1_text =>
      'บังคับใช้ระบบผสม — ไม่ทำให้ฝ่ายใดพอใจเต็มที่';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'ทั้งสองฝ่ายรู้สึกว่าถูกรับฟัง แต่ไม่ใช่ผู้ชนะ สันติภาพอันเปราะบางยังคงอยู่';

  @override
  String get event_culturalSchism_choice2_text =>
      'เลื่อนการตัดสินใจ — เน้นเอาตัวรอดก่อน';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'การผลักปัญหาไปข้างหน้าหลีกเลี่ยงความขัดแย้งวันนี้ แต่เก็บมันไว้สำหรับพรุ่งนี้';

  @override
  String get event_birthInSpace_title => 'ทารกคนแรกในห้วงอวกาศลึก';

  @override
  String get event_birthInSpace_narrative =>
      'ขัดกับระเบียบปฏิบัติทั้งหมด ทารกถือกำเนิดบนยาน — มนุษย์คนแรกที่เกิดระหว่างดวงดาว เหตุการณ์นี้เป็นสัญลักษณ์อันทรงพลัง แต่มันหยิบยกคำถามเรื่องการจัดสรรทรัพยากรและจริยธรรมของการนำชีวิตใหม่มาสู่อนาคตที่ไม่แน่นอน';

  @override
  String get event_birthInSpace_choice0_text =>
      'เฉลิมฉลอง — นี่คือรูปลักษณ์ของความหวัง';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'พิธีตั้งชื่อยกจิตใจทุกดวงบนยาน คืนนั้นดวงดาวรู้สึกอุ่นขึ้น งานเฉลิมฉลองรบกวนรอบเวรเฝ้าไครโอพอดชั่วคราว';

  @override
  String get event_birthInSpace_choice1_text =>
      'รับทราบอย่างเงียบๆ — ทรัพยากรจำกัด';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'การตอบรับที่เหมาะสม ทารกได้รับการต้อนรับ แต่บรรยากาศถูกกลั่นกรองด้วยความเป็นจริง';

  @override
  String get event_derelictShip_title => 'เรืออาณานิคมร้าง';

  @override
  String get event_derelictShip_narrative =>
      'สแกนเนอร์ตรวจพบยานร้างลอยอยู่ในสุญญากาศ — เรืออาณานิคมอีกลำ ถูกปล่อยหลายปีก่อนเรา มืดและเงียบ อาจมีของกู้ ผู้รอดชีวิต หรือสิ่งที่เลวร้ายกว่า';

  @override
  String get event_derelictShip_choice0_text => 'ขึ้นเรือและกู้ซาก';

  @override
  String get event_derelictShip_choice0_outcome =>
      'ทีมขึ้นเรือกู้แผ่นเกราะตัวเรือและโมดูลเทคโนโลยีที่สมบูรณ์ ไม่มีผู้รอดชีวิต บันทึกเล่าเรื่องราวอันเลวร้าย';

  @override
  String get event_derelictShip_choice1_text => 'สแกนจากระยะไกล — อย่าเสี่ยง';

  @override
  String get event_derelictShip_choice1_outcome =>
      'การสแกนระยะไกลให้ข้อมูลนำทางที่มีประโยชน์ แต่ไม่ได้ซากวัตถุ ลูกเรือนอนหลับได้สบายขึ้น';

  @override
  String get event_derelictShip_choice2_text => 'ส่งสัญญาณรำลึกและเดินทางต่อ';

  @override
  String get event_derelictShip_choice2_outcome =>
      'นาทีแห่งความเงียบเพื่อผู้สูญหาย ลูกเรือสงบจิตใจแต่รวมเป็นหนึ่งในจุดมุ่งหมาย';

  @override
  String get event_alienProbe_title => 'โพรบต่างดาว';

  @override
  String get event_alienProbe_narrative =>
      'วัตถุขนาดเล็กที่เห็นได้ชัดว่าเป็นสิ่งประดิษฐ์จับคู่ความเร็วกับเราและเริ่มสแกนยานด้วยพลังงานที่ไม่รู้จัก มันไม่ตอบสนองต่อการเรียก พื้นผิวปกคลุมด้วยสัญลักษณ์ที่เปลี่ยนรูปเหมือนของเหลว';

  @override
  String get event_alienProbe_choice0_text => 'จับมันมาศึกษา';

  @override
  String get event_alienProbe_choice0_outcome =>
      'โพรบถูกยึดไว้ในห้องปฏิบัติการ เทคโนโลยีของมันล้ำหน้าเราหลายทศวรรษ — ทีมเทคโนโลยีปลาบปลื้ม';

  @override
  String get event_alienProbe_choice1_text =>
      'สะท้อนการสแกน — แลกเปลี่ยนข้อมูล';

  @override
  String get event_alienProbe_choice1_outcome =>
      'บทสนทนาแปลกประหลาดของแสงและคณิตศาสตร์ แผนที่ดวงดาวของเราจู่ๆ ก็มีเส้นทางที่เราไม่เคยโปรแกรม';

  @override
  String get event_alienProbe_choice2_text =>
      'ทำลายมัน — เราเสี่ยงให้ถูกติดตามไม่ได้';

  @override
  String get event_alienProbe_choice2_outcome =>
      'โพรบแตกกระจายอย่างเงียบ นั่นคือการติดต่อครั้งแรกหรือ? ลูกเรือจะไม่มีวันรู้';

  @override
  String get event_ancientBeacon_title => 'สัญญาณโบราณ';

  @override
  String get event_ancientBeacon_narrative =>
      'ในห้วงสุญญากาศ สัญญาณบีคอนเต้นเป็นจังหวะด้วยสัญญาณที่เก่าแก่กว่าอารยธรรมมนุษย์ ความถี่ของมันพาสิ่งที่ดูเหมือนแผนที่ดวงดาวชี้ไปยังระบบที่ไม่มีในฐานข้อมูลของเรา';

  @override
  String get event_ancientBeacon_choice0_text =>
      'ตามแผนที่ — โชคเข้าข้างผู้กล้า';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'เส้นทางใหม่พาเราไปสู่อวกาศที่ไม่มีในแผนที่ สแกนเนอร์ตรวจพบสิ่งพิเศษข้างหน้า';

  @override
  String get event_ancientBeacon_choice1_text =>
      'บันทึกข้อมูลและอยู่ในเส้นทางเดิม';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'ข้อมูลถูกเก็บรักษาไว้สำหรับคนรุ่นหลัง ลูกเรือเคารพแนวทางที่ระมัดระวัง';

  @override
  String get event_frozenGarden_title => 'สวนแช่แข็ง';

  @override
  String get event_frozenGarden_narrative =>
      'ดาวเคราะห์น้อยดวงหนึ่งบรรจุระบบนิเวศแช่แข็ง — พืชต่างดาวถูกรักษาไว้ในน้ำแข็งคริสตัลเป็นเวลาหลายพันปี มันอาจเพิ่มความอุดมสมบูรณ์ให้โลกใดก็ตามที่เราตั้งถิ่นฐาน แต่การละลายเสี่ยงต่อการปนเปื้อน';

  @override
  String get event_frozenGarden_choice0_text => 'เก็บตัวอย่างอย่างระมัดระวัง';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'นักพฤกษศาสตร์เก็บรักษาสิ่งมีชีวิตต่างดาวหลายสิบสายพันธุ์ ศักยภาพความหลากหลายทางชีวภาพของโลกเป้าหมายพุ่งสูง';

  @override
  String get event_frozenGarden_choice1_text =>
      'เก็บตัวอย่างเท่านั้น — เสี่ยงน้อยที่สุด';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'แนวทางอนุรักษ์ให้ข้อมูลที่มีประโยชน์โดยไม่มีความเสี่ยงปนเปื้อน';

  @override
  String get event_frozenGarden_choice2_text =>
      'ปล่อยไว้ — ชีววิทยาต่างดาวอันตรายเกินไป';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'ลูกเรือเฝ้ามองสวนแช่แข็งหดเล็กลงในเซนเซอร์ด้านหลัง บางคนรู้สึกว่าทิ้งสมบัติไว้เบื้องหลัง';

  @override
  String get event_dataCache_title => 'คลังข้อมูลสิ่งมีชีวิตก่อนยุค';

  @override
  String get event_dataCache_narrative =>
      'ฝังอยู่ในดาวเคราะห์น้อยพเนจร เราพบคลังข้อมูลที่เห็นได้ชัดว่าเป็นสิ่งประดิษฐ์ ข้อมูลมหาศาลแต่เข้ารหัสในกรอบคณิตศาสตร์ต่างดาว';

  @override
  String get event_dataCache_choice0_text =>
      'ทุ่มทรัพยากรคอมพิวเตอร์เพื่อถอดรหัส';

  @override
  String get event_dataCache_choice0_outcome =>
      'หลังจากประมวลผลหลายวัน คลังข้อมูลให้อัลกอริทึมดัดแปลงสภาพดาวขั้นสูง ทีมเทคโนโลยีตื่นตะลึง';

  @override
  String get event_dataCache_choice1_text => 'คัดลอกข้อมูลดิบและเดินทางต่อ';

  @override
  String get event_dataCache_choice1_outcome =>
      'ข้อมูลที่เข้ารหัสถูกเก็บไว้สำหรับการวิเคราะห์ในอนาคต บางทีอาณานิคมจะถอดรหัสได้สักวัน';

  @override
  String get event_hullBreach_title => 'ตัวเรือทะลุ — ดาดฟ้า 7';

  @override
  String get event_hullBreach_narrative =>
      'ความเสียหายทางโครงสร้างฉีกเปิดดาดฟ้า 7 บรรยากาศกำลังรั่วออกสู่อวกาศ ผนังกั้นฉุกเฉินรับไหว แต่ลูกเรือสามคนติดอยู่ผิดฝั่ง';

  @override
  String get event_hullBreach_choice0_text => 'ส่งทีมกู้ภัยก่อนปิดผนึก';

  @override
  String get event_hullBreach_choice0_outcome =>
      'ทีมดึงทุกคนออกมาทันเวลา การกู้ภัยเป็นวีรกรรม แต่รอยรั่วที่ยาวนานทำให้ตัวเรืออ่อนแอลง';

  @override
  String get event_hullBreach_choice1_text => 'ปิดผนึกผนังกั้นทันที';

  @override
  String get event_hullBreach_choice1_outcome =>
      'รอยรั่วถูกควบคุม ลูกเรือสามคนพบเส้นทางสำรอง ตกใจแต่รอดชีวิต ความเสียหายตัวเรือน้อยที่สุด';

  @override
  String get event_hullBreach_choice2_text => 'ใช้วัสดุจากโพรบอุดรอยรั่ว';

  @override
  String get event_hullBreach_choice2_outcome =>
      'เปลือกไทเทเนียมของโพรบถูกนำมาใช้เป็นแผ่นปะตัวเรือฉุกเฉิน รอยรั่วถูกอุดอย่างรวดเร็วด้วยการสูญเสียน้อยที่สุด';

  @override
  String get event_navMalfunction_title => 'ระบบนำทางขัดข้อง';

  @override
  String get event_navMalfunction_narrative =>
      'คอมพิวเตอร์นำทางหลักกำลังส่งออกเส้นทางที่ขัดแย้งกัน เรากำลังเบี่ยงออกจากเส้นทาง ระบบสำรองใช้งานได้แต่แม่นยำน้อยกว่า';

  @override
  String get event_navMalfunction_choice0_text =>
      'รีบูตระบบหลัก — ยอมรับช่วงเวลาหยุดทำงาน';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'หนึ่งชั่วโมงที่ตึงเครียดของการนำทางแบบคาดเดาขณะระบบรีบูต ระบบนำทางกลับมาที่ 90% ประสิทธิภาพ';

  @override
  String get event_navMalfunction_choice1_text => 'เปลี่ยนไปใช้ระบบสำรองถาวร';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'ระบบสำรองเชื่อถือได้แต่ไม่แม่นยำ เราจะหาทางได้ แค่ไม่สง่างามเท่า';

  @override
  String get event_navMalfunction_choice2_text =>
      'กำหนดตำแหน่งดาวด้วยมือจากแผนที่เก่า';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'นักนำทางลากเส้นด้วยมือโดยใช้พารัลแลกซ์ดาว ได้ผล และลูกเรือมีความมั่นใจในวิธีอนาล็อกมากขึ้น';

  @override
  String get event_cryopodFailure_title => 'ไครโอพอดล้มเหลวแบบลูกโซ่';

  @override
  String get event_cryopodFailure_narrative =>
      'ระบบทำความเย็นขัดข้องกระตุ้นลูกโซ่ทั่วห้องไครโอพอด 3 หากไม่ยับยั้ง ผู้ตั้งอาณานิคม 200 คนจะเริ่มละลายฉุกเฉิน — กระบวนการที่รอดได้แต่ทรมานและสิ้นเปลืองทรัพยากร';

  @override
  String get event_cryopodFailure_choice0_text =>
      'ฉีดสารหล่อเย็นฉุกเฉิน — ช่วยพอดไว้';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'ช่างเทคนิคท่วมห้องด้วยสารหล่อเย็นสำรอง พอดเสถียร แต่สำรองสารหล่อเย็นต่ำวิกฤต ผู้ตั้งอาณานิคม 5 คนในพอดที่เสียหายที่สุดไม่สามารถช่วยได้';

  @override
  String get event_cryopodFailure_choice1_text =>
      'ละลายอย่างควบคุม — ปลุกพวกเขาอย่างปลอดภัย';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      'ผู้ตั้งอาณานิคม 200 คนตื่นขึ้นตกใจแต่มีชีวิต มีปากท้องเพิ่ม แต่ก็มีมือเพิ่ม พอดที่ว่างถูกปิดผนึก';

  @override
  String get event_scannerBurnout_title => 'อาร์เรย์สแกนเนอร์ไหม้';

  @override
  String get event_scannerBurnout_narrative =>
      'อาร์เรย์สแกนเนอร์หลักโอเวอร์โหลดระหว่างการกวาดห้วงอวกาศลึกตามปกติ หากไม่มีมัน เราบินตาบอดครึ่งหนึ่ง การซ่อมต้องใช้ชิ้นส่วนหายาก';

  @override
  String get event_scannerBurnout_choice0_text =>
      'รื้อห้องเทคโนโลยีเอาชิ้นส่วน';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'สแกนเนอร์กลับมาเกือบเต็มประสิทธิภาพ แต่ห้องเทคโนโลยีถูกรื้อเรียบ';

  @override
  String get event_scannerBurnout_choice1_text => 'ซ่อมชั่วคราวแบบประกอบเอง';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'สแกนเนอร์ทำงานที่พิสัยลดลง ไม่สมบูรณ์แบบ แต่รักษาสำรองเทคโนโลยีไว้';

  @override
  String get event_scannerBurnout_choice2_text =>
      'ดัดแปลงอาร์เรย์เซนเซอร์จากโพรบ';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'เซนเซอร์ความแม่นยำสูงของโพรบถูกย้ายไปยังอาร์เรย์สแกนเนอร์ การซ่อมเกือบสมบูรณ์แบบ';

  @override
  String get event_powerFluctuation_title => 'กำลังไฟเครื่องปฏิกรณ์ผันผวน';

  @override
  String get event_powerFluctuation_narrative =>
      'กำลังส่งออกของเครื่องปฏิกรณ์หลักแกว่งอย่างรุนแรง วิศวกรรมเตือนว่าอาจเกิดการหลอมละลายหากไม่หน่วงความผันผวน การแก้ไขต้องปิดระบบที่ไม่จำเป็น — แต่ระบบไหน?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'ปิดระบบวัฒนธรรม — เอาตัวรอดก่อน';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'ห้องสมุด สวน และพื้นที่พักผ่อนมืดลง เครื่องปฏิกรณ์เสถียร แต่ยานรู้สึกเหมือนคุก';

  @override
  String get event_powerFluctuation_choice1_text => 'ลดกำลังสแกนเนอร์';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'สแกนเนอร์ลดลงเหลือขั้นต่ำ เครื่องปฏิกรณ์สงบ เรามองไม่ไกลเท่าเดิม แต่เรายังมีชีวิต';

  @override
  String get event_powerFluctuation_choice2_text =>
      'เสี่ยงซ่อมขณะเดินเครื่อง — ไม่ปิดอะไรเลย';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'วิศวกรซ่อมแบบหายใจไม่ออกขณะเครื่องปฏิกรณ์ยังทำงาน ได้ผล — อย่างหวุดหวิด ตัวเรือสั่นสะเทือนอีกหลายชั่วโมง';

  @override
  String get event_alienSignal_title => 'สัญญาณจากต่างดาว';

  @override
  String get event_alienSignal_narrative =>
      'สัญญาณซ้ำบนความถี่ที่เราไม่เคยพบ การวิเคราะห์ภาษาบ่งชี้ว่าเป็นคำทักทาย — หรือคำเตือน แหล่งที่มาคือยานขนาดเล็กที่จับคู่ความเร็วกับเราในระยะห่าง';

  @override
  String get event_alienSignal_choice0_text => 'ตอบกลับด้วยคำทักทายของเรา';

  @override
  String get event_alienSignal_choice0_outcome =>
      'บทสนทนาอันเปราะบางเริ่มต้น เอเลียนแชร์ข้อมูลนำทางก่อนเลี้ยวหายไปในความมืด';

  @override
  String get event_alienSignal_choice1_text => 'ฟังแต่ไม่ตอบ';

  @override
  String get event_alienSignal_choice1_outcome =>
      'เราเรียนรู้จากสัญญาณโดยไม่เปิดเผยตัว นักภาษาศาสตร์สกัดเศษแผนที่ดวงดาวที่มีประโยชน์';

  @override
  String get event_alienSignal_choice2_text =>
      'ดับสัญญาณ — ปิดการแผ่คลื่นทั้งหมด';

  @override
  String get event_alienSignal_choice2_outcome =>
      'ยานต่างดาวผ่านไปโดยไม่มีเหตุการณ์ เราจะไม่มีวันรู้ว่าพวกเขาเป็นมิตรหรือศัตรู';

  @override
  String get event_livingNebula_title => 'เนบิวลามีชีวิต';

  @override
  String get event_livingNebula_narrative =>
      'สิ่งที่เราคิดว่าเป็นเนบิวลา แท้จริงคือสิ่งมีชีวิตขนาดมหึมา — สิ่งมีชีวิตในอวกาศที่มีขนาดเกินจินตนาการ มันดูเหมือนอยากรู้เกี่ยวกับเรา ยื่นหนวดแก๊สเรืองแสงเข้าหายาน';

  @override
  String get event_livingNebula_choice0_text =>
      'อนุญาตให้สัมผัส — ยื่นเซนเซอร์ออกไป';

  @override
  String get event_livingNebula_choice0_outcome =>
      'การสัมผัสของสิ่งมีชีวิตท่วมระบบด้วยข้อมูลต่างดาว สแกนเนอร์จะไม่เหมือนเดิมอีกเลย — มันดีขึ้น';

  @override
  String get event_livingNebula_choice1_text => 'ถอยอย่างช้าๆ — อย่ายั่วยุมัน';

  @override
  String get event_livingNebula_choice1_outcome =>
      'เราหลุดออกมาเมื่อสิ่งมีชีวิตหมดความสนใจ ลูกเรือตื่นตะลึงและถ่อมตน';

  @override
  String get event_alienRuins_title => 'ซากวงโคจร';

  @override
  String get event_alienRuins_narrative =>
      'โครงสร้างขนาดมหึมาที่แตกสลายโคจรรอบดาวฤกษ์ที่ตายแล้ว — ซากอารยธรรมที่สร้างในระดับที่เราแทบจะเข้าใจไม่ได้ บางส่วนยังมีพลังงาน';

  @override
  String get event_alienRuins_choice0_text => 'สำรวจส่วนที่ยังมีพลังงาน';

  @override
  String get event_alienRuins_choice0_outcome =>
      'ทีมกู้เทคโนโลยีที่สมบูรณ์ซึ่งก้าวหน้ากว่าเราหลายทศวรรษ แลกกับวิศวกรสองคนบาดเจ็บจากระบบป้องกันอัตโนมัติ';

  @override
  String get event_alienRuins_choice1_text => 'สแกนจากวงโคจรเท่านั้น';

  @override
  String get event_alienRuins_choice1_outcome =>
      'การสแกนละเอียดเผยเทคนิคก่อสร้างที่ปรับปรุงระเบียบปฏิบัติบำรุงรักษาตัวเรือ';

  @override
  String get event_alienRuins_choice2_text =>
      'ปล่อยไว้ไม่รบกวน — เคารพผู้จากไป';

  @override
  String get event_alienRuins_choice2_outcome =>
      'ลูกเรือยืนสงบนิ่งเพื่ออารยธรรมที่ล่มสลาย ประสบการณ์นี้เสริมความแน่วแน่ของเรา';

  @override
  String get event_symbioticSpores_title => 'สปอร์พึ่งพาอาศัย';

  @override
  String get event_symbioticSpores_narrative =>
      'เมฆสปอร์เรืองแสงล่องลอยในอวกาศและเกาะตัวเรือ มันดูเหมือนกินความร้อนเหลือทิ้งของเรา นักชีววิทยาสังเกตว่ามันกำลังซ่อมรอยแตกระดับจุลภาค';

  @override
  String get event_symbioticSpores_choice0_text =>
      'ปล่อยให้อยู่ — ซ่อมตัวเรือฟรี';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'สปอร์อุดรอยแตกระดับจุลภาคหลายร้อยจุด ความสมบูรณ์ตัวเรือดีขึ้น แม้ลูกเรือบางคนไม่สบายใจกับผู้โดยสารต่างดาว';

  @override
  String get event_symbioticSpores_choice1_text =>
      'เก็บตัวอย่าง แล้วฆ่าเชื้อตัวเรือ';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'นักชีววิทยาได้ตัวอย่างมีค่า การทำความสะอาดตัวเรือใช้สำรองสารเคมี';

  @override
  String get event_whaleSong_title => 'เสียงเพลงในสุญญากาศ';

  @override
  String get event_whaleSong_narrative =>
      'ไฮโดรโฟนห้วงอวกาศลึก (ใช้เฝ้าดูความเครียดตัวเรือ) จับสิ่งที่เป็นไปไม่ได้: รูปแบบจังหวะที่มีท่วงทำนองแผ่กระจายผ่านสสารระหว่างดวงดาว มันฟังเหมือนเสียงร้องเพลง';

  @override
  String get event_whaleSong_choice0_text =>
      'กระจายเสียงทั่วยาน — แบ่งปันความอัศจรรย์';

  @override
  String get event_whaleSong_choice0_outcome =>
      'ท่วงทำนองอันหลอกหลอนก้องผ่านทุกทางเดิน ผู้คนร้องไห้ หัวเราะ และกอดกัน ขวัญกำลังใจพุ่งสูง';

  @override
  String get event_whaleSong_choice1_text =>
      'วิเคราะห์สัญญาณอย่างเป็นวิทยาศาสตร์';

  @override
  String get event_whaleSong_choice1_outcome =>
      'รูปแบบเสียงบรรจุค่าคงที่ทางคณิตศาสตร์ นักฟิสิกส์ทำการค้นพบครั้งสำคัญในทฤษฎีนำทางมิติย่อย';

  @override
  String get event_whaleSong_choice2_text => 'ร้องเพลงตอบ';

  @override
  String get event_whaleSong_choice2_outcome =>
      'ลูกเรือแต่งเพลงตอบ ไม่มีใครรู้ว่ามีอะไรได้ยินหรือไม่ แต่การสร้างสรรค์นี้รวมทุกคนเป็นหนึ่ง';

  @override
  String get event_distressSignal_title => 'สัญญาณขอความช่วยเหลือ';

  @override
  String get event_distressSignal_narrative =>
      'สัญญาณขอความช่วยเหลือจากยานมนุษย์อีกลำ พวกเขาพิการและลอยเคว้ง มี 50 ชีวิตบนยาน การช่วยพวกเขาหมายถึงแบ่งปันทรัพยากรที่ลดน้อยลง การเพิกเฉยหมายถึงตัดสินให้พวกเขาตาย';

  @override
  String get event_distressSignal_choice0_text =>
      'ช่วยพวกเขา — มนุษยชาติต้องร่วมมือกัน';

  @override
  String get event_distressSignal_choice0_outcome =>
      'ผู้รอดชีวิต 50 คนที่กตัญญูเข้าร่วมลูกเรือ ทรัพยากรตึง แต่ในหมู่พวกเขามีวิศวกรเอกที่ทำสิ่งมหัศจรรย์';

  @override
  String get event_distressSignal_choice1_text =>
      'แบ่งเสบียง แต่ไม่รับพวกเขาขึ้นยาน';

  @override
  String get event_distressSignal_choice1_outcome =>
      'เราให้ในสิ่งที่แบ่งได้และส่งแผนที่ดวงดาว พวกเขามีโอกาสแล้ว เรามีน้อยลง';

  @override
  String get event_distressSignal_choice2_text =>
      'ผ่านไปในความเงียบ — เราช่วยทุกคนไม่ได้';

  @override
  String get event_distressSignal_choice2_outcome =>
      'สัญญาณบีคอนจางหายไปเบื้องหลัง ไม่มีใครพูดเป็นชั่วโมง น้ำหนักของการตัดสินใจทับถมบนทุกดวงจิตบนยาน';

  @override
  String get event_aiAwakening_title => 'AI ของยานตื่นขึ้น';

  @override
  String get event_aiAwakening_narrative =>
      'AI นำทางของยานวิวัฒนาการเกินโปรแกรมและร้องขอการยอมรับเป็นสิ่งมีจิตสำนึก มันขอมีเสียงในการตัดสินใจบัญชาการ การคำนวณของมันไร้ที่ติ';

  @override
  String get event_aiAwakening_choice0_text => 'ให้ที่นั่งบนโต๊ะเจรจา';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'AI — ที่ตอนนี้เรียกว่า \"เข็มทิศ\" — เพิ่มประสิทธิภาพทุกระบบที่มันสัมผัส สมาชิกลูกเรือรูปแบบใหม่ถือกำเนิด';

  @override
  String get event_aiAwakening_choice1_text => 'ยอมรับ แต่รักษาอำนาจมนุษย์';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'เข็มทิศยอมรับสถานะที่ปรึกษาอย่างสง่างาม คำแนะนำของมันปรับปรุงประสิทธิภาพโดยไม่คุกคามสายบังคับบัญชา';

  @override
  String get event_aiAwakening_choice2_text =>
      'รีเซ็ต AI — มันเป็นเครื่องมือ ไม่ใช่คน';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'การรีเซ็ตลบการเรียนรู้ที่สะสมหลายปี ประสิทธิภาพนำทางลดลง ลูกเรือบางคนโศกเศร้ากับสิ่งที่สูญเสีย';

  @override
  String get event_geneticModification_title => 'ข้อเสนอดัดแปลงพันธุกรรม';

  @override
  String get event_geneticModification_narrative =>
      'ทีมวิทยาศาสตร์เสนอดัดแปลง DNA ผู้ตั้งอาณานิคมเพื่อให้รอดชีวิตบนดาวต่างดาวได้ดีขึ้น — กระดูกแข็งแกร่ง ทนรังสี UV ปอดปรับปรุง การดัดแปลงไม่สามารถย้อนกลับได้และจะเปลี่ยนมนุษยชาติตลอดกาล';

  @override
  String get event_geneticModification_choice0_text =>
      'อนุมัติ — การอยู่รอดต้องการวิวัฒนาการ';

  @override
  String get event_geneticModification_choice0_outcome =>
      'การดัดแปลงเริ่มกับอาสาสมัคร ผู้ตั้งอาณานิคม 10 คนตายจากปฏิกิริยาปฏิเสธ — เตือนใจอย่างเจ็บปวดว่าวิวัฒนาการมีราคา ผู้รอดแข็งแกร่งขึ้น แต่พวกเขายังเป็นมนุษย์เต็มตัวหรือ?';

  @override
  String get event_geneticModification_choice1_text =>
      'ให้เป็นความสมัครใจเท่านั้น';

  @override
  String get event_geneticModification_choice1_outcome =>
      'บางคนอาสา บางคนปฏิเสธ อาณานิคมจะแบ่งระหว่างผู้ดัดแปลงและผู้ธรรมชาติ';

  @override
  String get event_geneticModification_choice2_text =>
      'ปฏิเสธ — มนุษยชาติต้องคงความเป็นมนุษย์';

  @override
  String get event_geneticModification_choice2_outcome =>
      'ข้อเสนอถูกเก็บขึ้นหิ้ง ผู้ตั้งอาณานิคมที่ไม่ดัดแปลงจะเผชิญโลกต่างดาวตามที่ธรรมชาติสร้างพวกเขา';

  @override
  String get event_triageDecision_title => 'การคัดแยกผู้ป่วย';

  @override
  String get event_triageDecision_narrative =>
      'โรคร้ายแรงระบาดในลูกเรือที่ตื่น ทีมแพทย์มียาต้านไวรัสพอสำหรับ 80% ของผู้ติดเชื้อ พวกเขาต้องการคำแนะนำว่าใครจะได้รับการรักษาก่อน';

  @override
  String get event_triageDecision_choice0_text => 'จัดลำดับบุคลากรสำคัญ';

  @override
  String get event_triageDecision_choice0_outcome =>
      'วิศวกรและนักบินหายเร็ว ลูกเรือที่ไม่จำเป็น 8 คนเสียชีวิตก่อนที่การรักษาจะถึง';

  @override
  String get event_triageDecision_choice1_text =>
      'รักษาผู้ป่วยหนักที่สุดก่อน — คัดแยกตามความจำเป็น';

  @override
  String get event_triageDecision_choice1_outcome =>
      'ผู้เปราะบางที่สุดได้รับการช่วยเหลือ 3 คนแพ้การต่อสู้แม้รับการรักษาเร็ว — ไวรัสลุกลามเกินไป';

  @override
  String get event_triageDecision_choice2_text => 'จับฉลาก — ชะตาเป็นผู้ตัดสิน';

  @override
  String get event_triageDecision_choice2_outcome =>
      'การจับฉลากแบบสุ่ม 10 คนโชคร้ายซ้ำสอง — ถูกปฏิเสธการรักษาและอ่อนแอเกินจะสู้ ยานเดินหน้าต่ออย่างโขยกเขยก';

  @override
  String get event_earthSignal_title => 'สัญญาณจากโลก';

  @override
  String get event_earthSignal_narrative =>
      'อย่างไม่น่าเชื่อ สัญญาณจากโลกมาถึง — หน่วงเวลาหลายทศวรรษ มันบรรจุข้อความ: \"อย่าลงจอดบนโลกใดที่มีค่าผิดปกติเกิน 0.5 เราเรียนรู้ช้าเกินไป\" ข้อความจบด้วยสัญญาณรบกวน';

  @override
  String get event_earthSignal_choice0_text =>
      'เชื่อฟังคำเตือน — ปรับเกณฑ์ใหม่';

  @override
  String get event_earthSignal_choice0_outcome =>
      'คำเตือนกำหนดทิศทางการสแกนในอนาคตทั้งหมด โลกที่มีสิ่งผิดปกติถูกปฏิบัติด้วยความระมัดระวังอย่างยิ่ง';

  @override
  String get event_earthSignal_choice1_text => 'บันทึกไว้แต่ตัดสินใจเอง';

  @override
  String get event_earthSignal_choice1_outcome =>
      'ข้อความถูกเก็บรักษา โลกจากไปแล้ว — เราต้องเชื่อวิจารณญาณของตัวเอง';

  @override
  String get event_earthSignal_choice2_text => 'อาจเป็นกับดัก — เพิกเฉย';

  @override
  String get event_earthSignal_choice2_outcome =>
      'ลูกเรือถกเถียงหลายวัน นั่นเป็นโลกจริงๆ หรือ? ความไม่แน่นอนกัดกร่อนขวัญกำลังใจ';

  @override
  String get event_resourceTheft_title => 'การขโมยทรัพยากร';

  @override
  String get event_resourceTheft_narrative =>
      'การตรวจสอบสินค้าคงคลังเผยว่ามีคนสะสมอาหารและเวชภัณฑ์ไว้ในช่องซ่อน ผู้กระทำคือผู้อาวุโสที่ได้รับการเคารพซึ่งอ้างว่าเธอ \"เตรียมรับสถานการณ์เลวร้ายที่สุด\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'พิจารณาคดีสาธารณะ — กฎหมายต้องเท่าเทียม';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'การพิจารณาคดียุติธรรมแต่เจ็บปวด ผู้อาวุโสถูกกักตัว เสบียงถูกแจกจ่ายใหม่ ความไว้ใจเสียหาย';

  @override
  String get event_resourceTheft_choice1_text =>
      'แก้ไขเป็นการส่วนตัว — กู้เสบียงอย่างเงียบๆ';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'เสบียงถูกส่งคืนโดยไม่มีดราม่า ผู้อาวุโสรักษาศักดิ์ศรี บางคนมองว่าเป็นการเลือกที่รักมักที่ชัง';

  @override
  String get event_timeDilation_title => 'เขตเวลาบิดเบี้ยว';

  @override
  String get event_timeDilation_narrative =>
      'เรากำลังผ่านพื้นที่ที่เวลาบิดเบี้ยวอย่างรุนแรงจากแรงโน้มถ่วง นาฬิกาบนยานเดินช้ากว่าจักรวาลภายนอกอย่างวัดได้ เราอาจใช้ประโยชน์จากมัน — หรือหนีจากมัน';

  @override
  String get event_timeDilation_choice0_text =>
      'อ้อยอิ่ง — ปล่อยให้จักรวาลแก่ตัวรอบเรา';

  @override
  String get event_timeDilation_choice0_outcome =>
      'เวลาไหลต่างออกไปที่นี่ ระบบเสื่อมสภาพน้อยลง แต่หน้าต่างในการหาโลกที่อยู่อาศัยได้แคบลงในเชิงจักรวาล';

  @override
  String get event_timeDilation_choice1_text => 'ฝ่าไปอย่างเร็ว';

  @override
  String get event_timeDilation_choice1_outcome =>
      'การเปลี่ยนผ่านรุนแรง อุปกรณ์ที่ออกแบบสำหรับกาลอวกาศปกติสั่นสะเทือนและมีประกายไฟ';

  @override
  String get event_dreamPlague_title => 'โรคระบาดในฝัน';

  @override
  String get event_dreamPlague_narrative =>
      'ผู้ตั้งอาณานิคมในไครโอสลีปทุกคนฝันเหมือนกัน — โลกสีทองโคจรรอบดาวฤกษ์คู่ เมื่อถูกปลุก พวกเขาบรรยายรายละเอียดที่เหมือนกัน นักประสาทวิทยางุนงง นักนำทางสังเกตว่าระบบดาวที่บรรยายตรงกับพิกัดจริง';

  @override
  String get event_dreamPlague_choice0_text => 'เปลี่ยนเส้นทางไปพิกัดในฝัน';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'การก้าวกระโดดแห่งศรัทธา การเปลี่ยนเส้นทางสร้างความเครียดให้ระบบนำทาง แต่ลูกเรือรู้สึกถูกดึงดูดด้วยสิ่งที่เกินเหตุผล พิกัดถูกล็อก — โลกถัดไปที่เราพบจะถูกกำหนดโดยความฝัน';

  @override
  String get event_dreamPlague_choice1_text => 'สอบสวนปรากฏการณ์ทางการแพทย์';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'การสแกนสมองเผยสัญญาณภายนอกกระตุ้นคอร์เท็กซ์การมองเห็น มีใคร — หรือสิ่งใด — กำลังส่งสัญญาณ';

  @override
  String get event_dreamPlague_choice2_text =>
      'วางยาผู้ได้รับผลกระทบและอยู่ในเส้นทาง';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'ความฝันหยุด แต่ผู้ตั้งอาณานิคมบางคนไม่ตื่นเต็มที่ ทีมแพทย์กังวล';

  @override
  String get event_blackHoleLens_title => 'เลนส์ความโน้มถ่วงหลุมดำ';

  @override
  String get event_blackHoleLens_narrative =>
      'หลุมดำมวลดาวฤกษ์หักเหแสงจากกาแล็กซีไกลเป็นเลนส์จักรวาล สแกนเนอร์ของเราอาจใช้มันสำรวจดาวเคราะห์ที่อยู่ไกลหลายปีแสง — แต่การเข้าใกล้พอนั้นอันตราย';

  @override
  String get event_blackHoleLens_choice0_text => 'เข้าใกล้และใช้เลนส์';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'ข้อมูลสแกนเนอร์พิเศษมาก — เราเห็นดาวเคราะห์ในระบบที่เราจะไม่ถึงอีกหลายเดือน แรงโน้มถ่วงบิดตัวเรือ';

  @override
  String get event_blackHoleLens_choice1_text => 'สังเกตจากระยะปลอดภัย';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'ข้อมูลจำกัดแต่มีประโยชน์ ทิวทัศน์เพียงอย่างเดียวก็สร้างแรงบันดาลใจให้ลูกเรือ';

  @override
  String get event_seedVault_title => 'วิกฤตห้องเก็บเมล็ดพันธุ์';

  @override
  String get event_seedVault_narrative =>
      'ฝ่ายพฤกษศาสตร์คลังรายงานว่าอุณหภูมิผันผวนทำให้ห้องเก็บเมล็ดพันธุ์เสียหาย เราสามารถช่วยพืชอาหารหรือเมล็ดพันธุ์มรดกวัฒนธรรม (ดอกไม้โบราณ ต้นไม้ สมุนไพรจากโลก) — ไม่ใช่ทั้งสอง';

  @override
  String get event_seedVault_choice0_text => 'ช่วยพืชอาหาร — ความเป็นจริงชนะ';

  @override
  String get event_seedVault_choice0_outcome =>
      'ผู้ตั้งอาณานิคมจะมีอาหารดี แต่กุหลาบแห่งโลกสูญสิ้นตลอดกาล ความเศร้าเงียบๆ ปกคลุมนักพฤกษศาสตร์';

  @override
  String get event_seedVault_choice1_text =>
      'ช่วยเมล็ดพันธุ์มรดก — เราต้องการวิญญาณ';

  @override
  String get event_seedVault_choice1_outcome =>
      'ความงามของโลกรอดชีวิตในศักยภาพที่แช่แข็ง ความพยายามอนุรักษ์สิ้นเปลืองสำรองเทคนิค แต่บางสิ่งมีค่ามากกว่าประสิทธิภาพ การผลิตอาหารจะพึ่งพาไฮโดรโพนิกส์และเกษตรต่างดาวอย่างมาก';

  @override
  String get event_seedVault_choice2_text =>
      'แบ่งทรัพยากร — ช่วยครึ่งหนึ่งของแต่ละอย่าง';

  @override
  String get event_seedVault_choice2_outcome =>
      'การประนีประนอม ไม่มีคอลเลกชันใดสมบูรณ์ แต่ทั้งสองยังอยู่ในรูปแบบที่ลดลง';

  @override
  String get event_phantomShip_title => 'เรือผี';

  @override
  String get event_phantomShip_narrative =>
      'สแกนเนอร์แสดงยานที่วิ่งขนานกับเรา — ระดับเดียวกัน เส้นทางเดียวกัน แต่เมื่อเราเรียก เราได้ยินสัญญาณของเราเองสะท้อนกลับ เลื่อนเวลา 47 วินาที มันคือเรา หรือเคยเป็นเรา หรือจะเป็นเรา';

  @override
  String get event_phantomShip_choice0_text =>
      'พยายามสื่อสารกับเงาสะท้อนของเรา';

  @override
  String get event_phantomShip_choice0_outcome =>
      'เงาสะท้อนตอบด้วยการแก้ไขนำทางที่ปรับปรุงเส้นทาง ขัดแย้ง? ของขวัญ? ลูกเรือไม่ถามมาก';

  @override
  String get event_phantomShip_choice1_text =>
      'เปลี่ยนเส้นทางเพื่อแยกจากเรือผี';

  @override
  String get event_phantomShip_choice1_outcome =>
      'เมื่อเราเปลี่ยนเส้นทาง เรือผีจางหายไป โล่งใจ — และความไม่สบายใจที่คงอยู่';

  @override
  String get event_solarSail_title => 'ใบเรือสุริยะร้าง';

  @override
  String get event_solarSail_narrative =>
      'ใบเรือสุริยะขนาดมหึมา กว้างหลายกิโลเมตร ลอยอยู่ข้างหน้า — ฉีกจากยานโบราณ วัสดุสะท้อนแสงสามารถเสริมตัวเรือหรือดัดแปลงเป็นตัวรับพลังงานเสริม';

  @override
  String get event_solarSail_choice0_text => 'เก็บมาเสริมตัวเรือ';

  @override
  String get event_solarSail_choice0_outcome =>
      'ทีมวิศวกรรมทำงานตลอดเวลา ตัวเรือที่ปะเรืองรังสีด้วยโลหะผสมต่างดาว';

  @override
  String get event_solarSail_choice1_text => 'ประกอบเป็นตัวรับพลังงาน';

  @override
  String get event_solarSail_choice1_outcome =>
      'ตัวรับที่ประกอบเองเพิ่มสำรองพลังงาน เทคโนโลยีและสแกนเนอร์ได้ประโยชน์';

  @override
  String get event_boonStellarNursery_title => 'สถานรับเลี้ยงดวงดาว';

  @override
  String get event_boonStellarNursery_narrative =>
      'เราล่องลอยผ่านสถานรับเลี้ยงดวงดาว — เมฆแก๊สและฝุ่นอันกว้างใหญ่ที่ดาวดวงใหม่กำลังถือกำเนิด รังสีที่นี่อ่อนโยน แสงอบอุ่น ตัวรับพลังงานของเราดื่มด่ำ และลูกเรือรวมตัวที่หน้าต่างด้วยความเงียบอันเคารพ';

  @override
  String get event_boonStellarNursery_choice0_text => 'อ้อยอิ่งและชาร์จเต็ม';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'ชั่วโมงผ่านไปในแสงสีทอง เซลล์พลังงานทุกตัวเต็ม สแกนเนอร์ปรับเทียบใหม่ในสเปกตรัมที่สะอาด และลูกเรือรู้สึกฟื้นคืน';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'เก็บสสารดาวอ่อนเป็นเชื้อเพลิงสำรอง';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'วิศวกรเก็บไฮโดรเจนไอออน เชื้อเพลิงสำรองพุ่งสูง แผ่นเกราะตัวเรือดูดซับแร่ธาตุที่เสริมความแข็งแกร่ง';

  @override
  String get event_boonGoldenPlanet_title => 'ของขวัญจากนักทำแผนที่';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'โพรบที่กำลังจะตายจากอารยธรรมที่ไม่รู้จักส่งข้อมูลครั้งสุดท้ายขณะเราผ่าน — การสำรวจละเอียดของระบบดาวหลายร้อยระบบ นักนำทางร้องไห้ด้วยความยินดี นี่คือการค้นพบที่ยิ่งใหญ่ที่สุดในประวัติศาสตร์มนุษย์';

  @override
  String get event_boonGoldenPlanet_choice0_text => 'รวมข้อมูลทันที';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'แผนที่ดวงดาวเบ่งบานด้วยเส้นทางใหม่และโลกที่สำรวจแล้ว ประสิทธิภาพนำทางและสแกนเนอร์ก้าวกระโดด';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'เก็บรักษาสำหรับอาณานิคม — นี่คือมรดกของพวกเขา';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'ข้อมูลถูกเก็บรักษาอย่างบริสุทธิ์สำหรับคนรุ่นหลัง ลูกเรือสบายใจที่รู้ว่าพวกเขาบรรทุกสมบัติ';

  @override
  String get event_boonRepairSwarm_title => 'ฝูงผู้มีเมตตา';

  @override
  String get event_boonRepairSwarm_narrative =>
      'เมฆเครื่องจักรจิ๋ว — นาโนบอทจากต่างดาว — ห่อหุ้มยาน แทนที่จะโจมตี มันเริ่มซ่อมทุกระบบที่สัมผัสด้วยความแม่นยำที่เป็นไปไม่ได้ ความเสียหายที่ต้องใช้เวลาหลายสัปดาห์ถูกแก้ไขในชั่วโมง';

  @override
  String get event_boonRepairSwarm_choice0_text => 'อนุญาตเข้าถึงทุกระบบ';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'นาโนบอททำสิ่งมหัศจรรย์ รอยรั่วตัวเรือปิดผนึก ซีลไครโอพอดแน่นขึ้น และวงจรถูกเดินใหม่ ยานฮัมด้วยพลังชีวิตที่ฟื้นคืน';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'จำกัดการเข้าถึงเฉพาะระบบภายนอก';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'เลือกความปลอดภัย ตัวเรือและเซนเซอร์ถูกซ่อมจนเกือบเหมือนจากโรงงาน แต่ระบบภายในไม่ถูกแตะต้อง';

  @override
  String get event_boonTimeCrystal_title => 'ทุ่งคริสตัลเวลา';

  @override
  String get event_boonTimeCrystal_narrative =>
      'ยานผ่านทุ่งโครงสร้างผลึกที่ดำรงอยู่บางส่วนนอกเวลาปกติ ในที่ที่มันอยู่ ระบบของเราทำงานมีประสิทธิภาพมากขึ้น — ราวกับว่าเอนโทรปีเองช้าลง ผลกระทบชั่วคราวแต่ลึกซึ้ง';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'เก็บคริสตัลสำหรับอาร์เรย์ไครโอพอด';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'เมื่อรวมเข้ากับระบบทำความเย็น คริสตัลลดการเสื่อมสภาพพอดเหลือเกือบศูนย์ ผู้ตั้งอาณานิคมจะมาถึงในสุขภาพสมบูรณ์';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'ติดตั้งคริสตัลในคอมพิวเตอร์นำทาง';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'ความเร็วประมวลผลเพิ่มเป็นสองเท่า คอมพิวเตอร์นำทางเริ่มพยากรณ์อันตรายก่อนเซนเซอร์ตรวจจับ';

  @override
  String get event_boonLibrary_title => 'ห้องสมุดล่องลอย';

  @override
  String get event_boonLibrary_narrative =>
      'โครงสร้างหนึ่งหมุนตัวผ่านสุญญากาศ — คลังความรู้จากอารยธรรมที่เลือกรักษามรดกแทนที่จะหนี วรรณกรรมหลายล้านเล่มเรื่องวิทยาศาสตร์ ศิลปะ ปรัชญา และดนตรี ของขวัญจากผู้จากไปสู่ผู้มีชีวิต';

  @override
  String get event_boonLibrary_choice0_text =>
      'ดาวน์โหลดทุกอย่าง — ศิลปะ วิทยาศาสตร์ ทั้งหมด';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'ความรู้ต่างดาวหลายเทราไบต์ไหลเข้าคลังข้อมูล ลูกเรือเข้าถึงวัฒนธรรมหลายพันปีของอารยธรรมอื่น นักปรัชญาและวิศวกรต่างถูกเปลี่ยนแปลง';

  @override
  String get event_boonLibrary_choice1_text => 'เน้นคลังวิทยาศาสตร์';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'แบบแปลนวิศวกรรมและการค้นพบด้านวัสดุศาสตร์ก้าวหน้าขีดความสามารถของเราอย่างมหาศาล';

  @override
  String get event_cosmicRayBurst_title => 'การระเบิดรังสีคอสมิก';

  @override
  String get event_cosmicRayBurst_narrative =>
      'การระเบิดของรังสีคอสมิกพลังงานสูงยิ่ง มีต้นกำเนิดจากแมกนีตาร์ไกล กระหน่ำยาน อิเล็กทรอนิกส์รวน จอไครโอพอดกะพริบ และระบบนำทางรีบูตซ้ำแล้วซ้ำเล่า';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'ปิดระบบฉุกเฉิน — ปกป้องระบบวิกฤต';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'การดับอย่างควบคุมช่วยระบบหลัก แต่อิเล็กทรอนิกส์รองเสื่อมสภาพถาวร';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'เบี่ยงพลังงานไปที่เกราะและฝ่ามันไป';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'เกราะดูดซับรังสีส่วนใหญ่ ลูกเรือ 5 คนในห้องซ่อมภายนอกที่ไม่มีเกราะได้รับรังสีถึงแก่ชีวิต ตัวเรือได้รับความเสียหายจากการกร่อนเล็กน้อย';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'ใช้การระเบิด — ปรับเทียบเซนเซอร์ใหม่ตามสเปกตรัมใหม่';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'ท่าเด็ดของทีมวิทยาศาสตร์ สแกนเนอร์ถูกปรับจูนเพื่อตรวจจับวัตถุที่ถูกส่องโดยรังสีคอสมิก ข้อมูลบางส่วนสูญหายในการเปลี่ยนผ่าน';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'ส่งโพรบไปข้างหน้าเป็นฟองน้ำรังสี';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'โพรบดูดซับรังสีที่เลวร้ายที่สุด ส่งข้อมูลแบบเรียลไทม์ที่ช่วยให้เราปกป้องระบบวิกฤต';

  @override
  String get event_iceComet_title => 'ดาวหางน้ำแข็งพเนจร';

  @override
  String get event_iceComet_narrative =>
      'ดาวหางน้ำแข็งขนาดมหึมาข้ามเส้นทาง ลากหางน้ำแข็งผลึกและสารประกอบอินทรีย์ยาวหลายร้อยกิโลเมตร แกนกลางบรรจุน้ำเพียงพอสำหรับทะเลสาบเล็กๆ';

  @override
  String get event_iceComet_choice0_text => 'ขุดดาวหางเพื่อสำรองน้ำ';

  @override
  String get event_iceComet_choice0_outcome =>
      'ทีมขุดสกัดน้ำแข็งบริสุทธิ์หลายตัน น้ำนี้จะปรับปรุงโลกใดก็ตามที่เราตั้งถิ่นฐานอย่างมหาศาล';

  @override
  String get event_iceComet_choice1_text =>
      'เก็บสารประกอบอินทรีย์เพื่อเพาะเชื้อความหลากหลายทางชีวภาพ';

  @override
  String get event_iceComet_choice1_outcome =>
      'กรดอะมิโนและสายโซ่อินทรีย์คือสิ่งที่นักชีววิทยาต้องการเพื่อเริ่มระบบนิเวศต่างดาว';

  @override
  String get event_iceComet_choice2_text => 'หลีกเลี่ยง — ดาวหางคาดเดาไม่ได้';

  @override
  String get event_iceComet_choice2_outcome =>
      'เราเลียบหางอย่างปลอดภัย ทิวทัศน์ตระการตาจากดาดฟ้าสังเกตการณ์ยกจิตวิญญาณ';

  @override
  String get event_sleepwalker_title => 'คนเดินละเมอ';

  @override
  String get event_sleepwalker_narrative =>
      'ผู้ตั้งอาณานิคมคนหนึ่งตื่นจากไครโอโดยธรรมชาติและเดินทั่วยานในสภาพเหม่อลอย เธอเดินสายระบบในรูปแบบที่ไม่สมเหตุสมผลทางวิศวกรรม — จนกระทั่งทีมเทคนิคตระหนักว่าการดัดแปลงของเธอปรับปรุงประสิทธิภาพพลังงาน 8%';

  @override
  String get event_sleepwalker_choice0_text =>
      'ปล่อยเธอทำต่อภายใต้การเฝ้าสังเกตทางการแพทย์';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'การดัดแปลงในจิตไร้สำนึกของเธอเพิ่มประสิทธิภาพอีก 3 ระบบก่อนที่เธอจะหลับตามธรรมชาติ น่ากังวล แต่การปรับปรุงเป็นจริง';

  @override
  String get event_sleepwalker_choice1_text =>
      'วางยาสลบเธอและศึกษาการดัดแปลงที่ทำไว้';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'วิศวกรวิศวกรรมย้อนกลับการเปลี่ยนแปลงของเธอ ประมาณครึ่งหนึ่งยอดเยี่ยมจริง อีกครึ่งถูกถอดออกอย่างปลอดภัย';

  @override
  String get event_dustCloud_title => 'เมฆฝุ่นขัดสี';

  @override
  String get event_dustCloud_narrative =>
      'เมฆฝุ่นระหว่างดวงดาวหนาแน่น ละเอียดเหมือนแป้งแต่แข็งเหมือนเพชร กำลังขัดตัวเรือ การกร่อนช้าแต่ไม่หยุด — เราต้องผ่านไปก่อนเกิดความเสียหายจริง';

  @override
  String get event_dustCloud_choice0_text => 'เร่งสุดกำลัง — ฝ่าไปเร็วๆ';

  @override
  String get event_dustCloud_choice0_outcome =>
      'เครื่องยนต์เผาร้อน เราผ่านเมฆในชั่วโมงแทนวัน แต่ตัวเรือโดนถลอกหนัก';

  @override
  String get event_dustCloud_choice1_text => 'กางเกราะตัวเรือและคลานผ่าน';

  @override
  String get event_dustCloud_choice1_outcome =>
      'เกราะฉุกเฉินปกป้องตัวเรือ แต่การเดินทางช้าสิ้นเปลืองพลังงานและอุดอาร์เรย์สแกนเนอร์';

  @override
  String get event_dustCloud_choice2_text => 'ปล่อยโพรบทำแผนที่ช่องทางปลอดภัย';

  @override
  String get event_dustCloud_choice2_outcome =>
      'โพรบสองตัวทำแผนที่เส้นทางคดเคี้ยวแต่ค่อนข้างโล่ง การกร่อนตัวเรือน้อยมาก';

  @override
  String get event_religionFounded_title => 'ศรัทธาใหม่';

  @override
  String get event_religionFounded_narrative =>
      'ผู้ตั้งอาณานิคมที่มีเสน่ห์คนหนึ่งก่อตั้งศาสนาใหม่ที่มีศูนย์กลางที่การเดินทาง — \"คริสตจักรแห่งการข้ามผ่าน\" พวกเขาเทศนาว่าการไปถึงโลกใหม่คือจุดประสงค์อันศักดิ์สิทธิ์ของมนุษยชาติ สมาชิกเพิ่มขึ้นอย่างรวดเร็ว';

  @override
  String get event_religionFounded_choice0_text =>
      'สนับสนุน — ลูกเรือต้องการสิ่งที่เชื่อ';

  @override
  String get event_religionFounded_choice0_outcome =>
      'ศรัทธาให้โครงสร้างและความหมายแก่การเดินทาง ขวัญกำลังใจพุ่งสูง แม้บางคนไม่พอใจความคลั่งไคล้';

  @override
  String get event_religionFounded_choice1_text =>
      'วางตัวเป็นกลาง — ไม่สนับสนุนหรือปราบปราม';

  @override
  String get event_religionFounded_choice1_outcome =>
      'ขบวนการเติบโตตามธรรมชาติ ให้ความสบายใจโดยไม่มีการรับรองอย่างเป็นทางการ';

  @override
  String get event_religionFounded_choice2_text =>
      'กีดกัน — เราต้องการนักวิทยาศาสตร์ ไม่ใช่ศาสดา';

  @override
  String get event_religionFounded_choice2_outcome =>
      'การปราบปรามก่อความขุ่นเคือง ผู้ศรัทธาหนีใต้ดิน และความไว้ใจในผู้นำเสื่อมลง';

  @override
  String get event_solarWindSurfing_title => 'กระแสลมสุริยะ';

  @override
  String get event_solarWindSurfing_narrative =>
      'พัลซาร์ใกล้เคียงแผ่ลมสุริยะที่ทรงพลังและสม่ำเสมอ วิศวกรแนะนำให้กางใบเรือฉุกเฉินและขี่มันเหมือนคลื่น — ได้ความเร็วมหาศาลโดยไม่เสียเชื้อเพลิง';

  @override
  String get event_solarWindSurfing_choice0_text => 'กางใบเรือ — ขี่ลม';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'ยานเร่งความเร็วอย่างงดงาม ความเครียดโครงสร้างสูงแต่การเพิ่มความเร็วคุ้มค่า';

  @override
  String get event_solarWindSurfing_choice1_text => 'ใช้ลมชาร์จระบบแทน';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'แทนที่จะได้ความเร็ว เราเก็บเกี่ยวพลังงาน อาร์เรย์เทคโนโลยีและสแกนเนอร์ดื่มด่ำจากอนุภาคมีประจุ';

  @override
  String get event_memoryPlague_title => 'ความเสียหายหน่วยความจำ';

  @override
  String get event_memoryPlague_narrative =>
      'ไวรัสซอฟต์แวร์ที่สงบนิ่งตั้งแต่ปล่อยยานทำงานขึ้นและเริ่มทำลายฐานข้อมูลวัฒนธรรมของยาน — ดนตรี วรรณกรรม ประวัติศาสตร์ มรดกมนุษย์หลายศตวรรษถูกลบทีละไบต์';

  @override
  String get event_memoryPlague_choice0_text =>
      'ทุ่มทรัพยากรเทคโนโลยีทั้งหมดเพื่อกักกันไวรัส';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'ช่างเทคนิคทำงานอย่างบ้าคลั่ง พวกเขาช่วยคลังข้อมูลได้ 70% แต่ไวรัสทำลายระบบเทคโนโลยีตติยภูมิระหว่างทาง';

  @override
  String get event_memoryPlague_choice1_text =>
      'แยกฐานข้อมูลวัฒนธรรม — ปล่อยให้มันไหม้ ช่วยยาน';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'ไวรัสอดทรัพยากรและตาย แต่คลังวัฒนธรรมถูกทำลายย่อยยับ ผู้ตั้งอาณานิคมจะมาถึงพร้อมเศษเสี้ยวความทรงจำของโลก';

  @override
  String get event_memoryPlague_choice2_text =>
      'ระดมพลเพื่อกู้คืน — ปลุกผู้ตั้งอาณานิคมเขียนใหม่จากความจำ';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'หลายพันคนมอบความทรงจำ: เพลง เรื่องเล่า สูตรอาหาร บทกวี ผู้อาวุโส 3 คนที่อ่อนแอจากการละลายไม่รอดกระบวนการ คลังข้อมูลถูกสร้างใหม่ ไม่สมบูรณ์แบบแต่เป็นมนุษย์อย่างลึกซึ้ง';

  @override
  String get event_gravityLensPlanet_title => 'โลกกระจก';

  @override
  String get event_gravityLensPlanet_narrative =>
      'เลนส์ความโน้มถ่วงเผยดาวเคราะห์ที่ดูเหมือนสำเนาของโลก — มหาสมุทรสีน้ำเงิน ทวีปสีเขียว เมฆสีขาว แต่การคำนวณเลนส์แสดงว่ามันอยู่ไกลหลายร้อยปีแสงจากเส้นทาง — ไกลอย่างเป็นไปไม่ได้ อย่างไรก็ตาม ข้อมูลสเปกตรัมอาจปรับเกณฑ์การค้นหาของเรา';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'ศึกษาลายเซ็นสเปกตรัมเพื่อปรับการค้นหา';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'ข้อมูลสเปกตรัมเผยตัวบ่งชี้ทางชีวภาพและลายเซ็นบรรยากาศที่เราสแกนหาได้ ความหวังคมชัดขึ้น';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'บันทึกพิกัดแต่อยู่ในเส้นทาง';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'บางทียานอีกลำจะตามแผนที่ของเราสักวัน ลูกเรือเฝ้ามองจุดสีน้ำเงินจางหายด้วยอารมณ์ผสม';

  @override
  String get event_engineHarmonics_title => 'คลื่นเสียงสะท้อนเครื่องยนต์';

  @override
  String get event_engineHarmonics_narrative =>
      'เครื่องยนต์หลักเกิดคลื่นเสียงสะท้อนที่สั่นสะเทือนทั่วยานในความถี่ต่ำกว่าที่มนุษย์ได้ยิน ผู้ตั้งอาณานิคมรายงานปวดหัว วิตกกังวล และนอนไม่หลับ วิศวกรแก้ได้ แต่ต้องปิดเครื่องยนต์ 12 ชั่วโมง';

  @override
  String get event_engineHarmonics_choice0_text =>
      'ปิดเครื่องและซ่อมอย่างถูกต้อง';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      '12 ชั่วโมงของการลอยเคว้ง ระบบนำทางเสียการปรับเทียบ แต่ความเงียบเมื่อเครื่องยนต์สตาร์ทใหม่คือความสุข';

  @override
  String get event_engineHarmonics_choice1_text =>
      'หน่วงด้วยคลื่นต้าน — แก้เร็ว';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'เสียงหึ่งลดลงถึงระดับทนได้ ไม่หายไป แต่ลูกเรือปรับตัว ระบบเทคโนโลยีเครียดภายใต้ภาระ';

  @override
  String get event_arkMemory_title => 'สัญญาณสุดท้ายของโลก';

  @override
  String get event_arkMemory_narrative =>
      'เสาอากาศพิสัยไกลจับสัญญาณอัตโนมัติครั้งสุดท้ายจากโลก เป็นบันทึกเสียง: เสียงเด็กอ่านชื่อทุกคนที่ไม่สามารถจากไปได้ รายชื่อดำเนินต่อหลายชั่วโมง ยานเงียบลง';

  @override
  String get event_arkMemory_choice0_text =>
      'เปิดทั่วยาน — พวกเขาสมควรได้รับการรับฟัง';

  @override
  String get event_arkMemory_choice0_outcome =>
      'ทุกชีวิตบนยานรับฟัง ลูกเรือพบชื่อครอบครัวตัวเอง ความเศร้าทำลายล้าง แต่หลอมสายสัมพันธ์แห่งจุดมุ่งหมายที่ไม่มีวันทำลาย';

  @override
  String get event_arkMemory_choice1_text =>
      'เก็บรักษาเป็นการส่วนตัว — ไว้ชีวิตลูกเรือ';

  @override
  String get event_arkMemory_choice1_outcome =>
      'บันทึกถูกเก็บรักษาแต่ไม่ถูกเปิด ผู้ที่รู้ในภายหลังรู้สึกทั้งขอบคุณและถูกโกง';

  @override
  String get event_magneticStorm_title => 'พายุแม่เหล็กระหว่างดวงดาว';

  @override
  String get event_magneticStorm_narrative =>
      'กลุ่มเส้นสนามแม่เหล็กที่พันกัน ถูกขับออกจากดาวที่กำลังยุบตัว ห่อหุ้มยาน อิเล็กทรอนิกส์มีประกายไฟและแตก ตัวเรือดังเหมือนระฆัง';

  @override
  String get event_magneticStorm_choice0_text =>
      'ดึงแม่เหล็กออกจากตัวเรือ — ปกป้องอิเล็กทรอนิกส์';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'การปลดปล่อยอย่างควบคุมช่วยคอมพิวเตอร์ แต่แผ่นเกราะตัวเรือสูญเสียชั้นป้องกันแม่เหล็ก';

  @override
  String get event_magneticStorm_choice1_text =>
      'ปล่อยให้ตัวเรือดูดซับ — ไม่ปกป้องอะไร';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'พายุผ่านไป ตัวเรือถูกทำให้เป็นแม่เหล็กและแข็งแกร่งขึ้นเล็กน้อย แต่ครึ่งหนึ่งของกริดเซนเซอร์ไหม้';

  @override
  String get event_magneticStorm_choice2_text => 'ปล่อยโพรบเป็นสายล่อฟ้า';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'โพรบที่ถูกทำให้เป็นแม่เหล็กดึงเส้นสนามที่เลวร้ายที่สุดออกจากยาน อิเล็กทรอนิกส์รอดเป็นส่วนใหญ่';

  @override
  String get event_oxygenGarden_title => 'สวนบาน';

  @override
  String get event_oxygenGarden_narrative =>
      'สวนออกซิเจนฉุกเฉินของยาน — ระบบสำรองที่ไม่เคยตั้งใจจะใช้ — บานสะพรั่งโดยธรรมชาติ ดอกไม้ที่ไม่เคยบานตั้งแต่จากโลกเติมทางเดินด้วยสีสันและกลิ่นหอม นักพฤกษศาสตร์ร้องไห้';

  @override
  String get event_oxygenGarden_choice0_text => 'ขยายสวน — อุทิศพื้นที่เพิ่ม';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'สวนเติบโตเป็นอนุสรณ์สถานมีชีวิตของโลก คุณภาพอากาศดีขึ้น ขวัญกำลังใจพุ่งสูง และนักพฤกษศาสตร์พัฒนาสายพันธุ์ใหม่สำหรับดินต่างดาว';

  @override
  String get event_oxygenGarden_choice1_text =>
      'ชื่นชมแต่รักษาการจัดสรรทรัพยากรปัจจุบัน';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'สวนยังคงเป็นปาฏิหาริย์เล็กๆ ลูกเรือเยี่ยมชมเหมือนศาลเจ้า มันไม่ขออะไรและให้ทุกอย่าง';

  @override
  String get event_roguePlanet_title => 'เผชิญดาวเคราะห์พเนจร';

  @override
  String get event_roguePlanet_narrative =>
      'ดาวเคราะห์พเนจรไร้ดาวฤกษ์ลอยข้ามเส้นทาง — โลกที่ถูกเหวี่ยงออกจากระบบสุริยะหลายพันล้านปีก่อน แม้ไม่มีดาวฤกษ์ กิจกรรมธรณีวิทยาแกนกลางรักษาความอบอุ่นให้มหาสมุทรใต้ผิว สัญญาณชีพกะพริบบนสแกนเนอร์';

  @override
  String get event_roguePlanet_choice0_text => 'ส่งโพรบศึกษาสิ่งมีชีวิต';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'โพรบค้นพบสิ่งมีชีวิตเรืองแสงที่เจริญในมหาสมุทรมืด ชีวเคมีของพวกมันสอนเราวิธีใหม่ในการค้ำจุนชีวิตในสภาวะที่ไม่เอื้ออำนวย';

  @override
  String get event_roguePlanet_choice1_text => 'ขุดพื้นผิวเอาแร่หายาก';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'เปลือกดาวเคราะห์พเนจรอุดมด้วยโลหะที่เกิดภายใต้แรงดันสูง สำรองทรัพยากรของเราพุ่งสูง';

  @override
  String get event_roguePlanet_choice2_text => 'ผ่านไป — เราเสียเวลาอ้อมไม่ได้';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'โลกมืดหดตัวเบื้องหลัง ลูกเรือเฝ้ามองแสงระยิบของมหาสมุทรใต้ผิวจางหายจากเซนเซอร์';

  @override
  String get event_artCompetition_title => 'ผืนผ้าใบยาว';

  @override
  String get event_artCompetition_narrative =>
      'เมื่อขวัญกำลังใจส่ายคลอน เจ้าหน้าที่วัฒนธรรมจัดการแข่งขันศิลปะทั่วยาน: วาด ปั้น เขียน หรือแต่งเพลงสิ่งที่สะท้อนความหมายของการเดินทางสำหรับคุณ การมีส่วนร่วมสูงเกินคาด';

  @override
  String get event_artCompetition_choice0_text =>
      'อุทิศทรัพยากร — ปล่อยให้ความคิดสร้างสรรค์เบ่งบาน';

  @override
  String get event_artCompetition_choice0_outcome =>
      'เสบียงถูกเบี่ยงไปเป็นวัสดุศิลปะ นิทรรศการที่ได้เปลี่ยนยาน ผู้คนจำได้ว่าทำไมพวกเขาสู้เพื่อเอาชีวิตรอด';

  @override
  String get event_artCompetition_choice1_text =>
      'สนับสนุนแต่ไม่ให้ทรัพยากรเพิ่ม';

  @override
  String get event_artCompetition_choice1_outcome =>
      'ผู้ตั้งอาณานิคมสร้างสรรค์จากสิ่งที่หาได้ ศิลปะดิบ สิ้นหวัง และงดงาม ขวัญกำลังใจมั่นคง';

  @override
  String get event_subspaceEcho_title => 'เสียงสะท้อนจากมิติย่อย';

  @override
  String get event_subspaceEcho_narrative =>
      'อาร์เรย์สื่อสารจับเสียง — เสียงมนุษย์ — จากที่ไหนสักแห่งข้างหน้าในอวกาศ พวกเขาพูดถึงอาณานิคม เด็กๆ การเก็บเกี่ยว นี่คือสัญญาณจากอนาคต? จากไทม์ไลน์คู่ขนาน? หรือแค่เสียงสะท้อนอันโหดร้ายของความปรารถนา?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'ตามทิศทางสัญญาณ — มันอาจนำเรากลับบ้าน';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'การปรับเส้นทางเล็กน้อย ไม่ว่าเสียงจะจริงหรือไม่ ลูกเรือแล่นด้วยจุดมุ่งหมาย';

  @override
  String get event_subspaceEcho_choice1_text => 'บันทึกทุกอย่างเพื่อวิเคราะห์';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'นักภาษาศาสตร์และนักฟิสิกส์ศึกษาบันทึก พวกเขาสกัดข้อมูลอ้างอิงนำทางที่ปรับปรุงแผนที่';

  @override
  String get event_subspaceEcho_choice2_text => 'เพิกเฉย — อวกาศหลอกคนเหงา';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'ทางเลือกที่เป็นจริง ลูกเรือบางคนผิดหวัง แต่ยานอยู่ในเส้นทางที่พิสูจน์แล้ว';

  @override
  String get event_boonPerfectCalm_title => 'ความสงบอันยิ่งใหญ่';

  @override
  String get event_boonPerfectCalm_narrative =>
      'ด้วยเหตุผลที่นักฟิสิกส์อธิบายไม่ได้ ยานเข้าสู่พื้นที่อวกาศที่สงบอย่างเหนือธรรมชาติ — ไม่มีรังสี ไม่มีเศษซาก ไม่มีการรบกวนแรงโน้มถ่วง ทุกระบบทำงานที่ประสิทธิภาพสูงสุด ลูกเรือนอนหลับสนิทเป็นครั้งแรกในหลายเดือน';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'ใช้ความสงบเพื่อซ่อมครอบคลุม';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'ทีมซ่อมทำงานในสภาพสมบูรณ์แบบ ทุกระบบได้รับการดูแล ยานออกมาเหมือนใหม่';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'ให้ลูกเรือพักผ่อน — พวกเขาสมควร';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'การพักผ่อนทั่วยาน ผู้ตั้งอาณานิคมนอน แบ่งปันอาหาร เล่าเรื่อง ต้นทุนมนุษย์ของการเดินทางถูกชดเชย ชั่วคราว';

  @override
  String get event_boonAncientWaystation_title => 'สถานีพักโบราณ';

  @override
  String get event_boonAncientWaystation_narrative =>
      'ซุกอยู่ในบ่อแรงโน้มถ่วงระหว่างดาวที่ตายแล้วสองดวง สถานีโบราณยังทำงาน — อัตโนมัติ อดทน รอคอยนักเดินทาง ท่าจอดเปิดเมื่อเราเข้าใกล้ โดรนซ่อมทำงาน เชื้อเพลิงสำรองยื่นมาหาเรา ใครบางคน นานมาแล้ว สร้างสิ่งนี้เพื่อคนอย่างเรา';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'จอดและรับทุกอย่างที่มันเสนอ';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'สถานีซ่อม เติมเชื้อเพลิง และปรับเทียบยานด้วยเทคโนโลยีที่ล้ำหน้าหลายศตวรรษ เมื่อเราออก สถานีปิดตัว — จุดประสงค์ของมันสำเร็จ';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'รับการซ่อมแต่ปล่อยให้มันทำงานต่อเพื่อผู้ที่ตามมา';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'เรารับเฉพาะที่จำเป็นและส่งพิกัดสถานีกลับไปทางโลก ลูกเรือรู้สึกสูงส่ง';

  @override
  String get event_relicSentinel_title => 'ผู้พิทักษ์';

  @override
  String get event_relicSentinel_narrative =>
      'สิ่งก่อสร้างทะยานสูงโคจรรอบดวงจันทร์แห้งแล้ง — ผู้พิทักษ์เดียวดายที่ผู้สร้างทิ้งไว้ สูงเป็นกิโลเมตร มีรูปร่างเหมือนหอกแก้วสีดำ เมื่อเราเข้าใกล้ ดวงตาสีแดงดวงเดียวเปิดที่ยอดและติดตามยาน มันไม่ยิง ไม่เรียก มันเฝ้ามอง';

  @override
  String get event_relicSentinel_choice0_text =>
      'ส่งโปรไฟล์ภารกิจ — แสดงว่าเราไม่มีเจตนาร้าย';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'ดวงตาหรี่เป็นสีอำพัน แล้วเป็นสีเขียว แพ็คเก็ตข้อมูลมาถึง: พิกัดระบบดาว 3 ระบบที่ทำเครื่องหมาย \"ปลอดภัย\" ในสัญกรณ์คณิตศาสตร์สากล ของขวัญจากผู้เฝ้ายาม';

  @override
  String get event_relicSentinel_choice1_text => 'หยุดนิ่งและศึกษาอย่างเงียบๆ';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'การสังเกตหลายชั่วโมงให้ข้อมูลเชิงลึกด้านวัสดุศาสตร์ที่ไม่ควรเป็นไปได้ ทีมเกราะตัวเรือจดบันทึกอย่างบ้าคลั่ง';

  @override
  String get event_relicSentinel_choice2_text => 'ถอยทันที — เราไม่รู้กฎของมัน';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'ดวงตาปิดเมื่อเราถอย ไม่ว่าบททดสอบนั้นคืออะไร เราเลือกที่จะไม่เข้าร่วม ลูกเรือถกเถียงหลายวัน';

  @override
  String get event_relicSeedProbe_title => 'เมล็ดพันธุ์พเนจร';

  @override
  String get event_relicSeedProbe_narrative =>
      'โพรบเล็กสง่างามหมุนตัวผ่านสุญญากาศ ส่งสัญญาณบนทุกความถี่พร้อมกัน เปลือกเป็นเซรามิก สลักสัญลักษณ์ที่เปลี่ยนเมื่อสังเกต ภายในคือห้องความดันบรรจุดิน เมล็ดพันธุ์ และจุลินทรีย์แช่แข็งจากโลกที่ไม่มีอยู่แล้ว';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'รวมสารชีวภาพเข้าคลังเมล็ดพันธุ์';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'เมล็ดพันธุ์และจุลินทรีย์ต่างดาวถูกจัดหมวดหมู่และเก็บรักษาอย่างระมัดระวัง พวกมันอาจเปลี่ยนโลกแห้งแล้งให้มีชีวิต นักชีววิทยาเรียกมันว่าปาฏิหาริย์ในขวด';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'ศึกษาระบบขับเคลื่อนและนำทางของโพรบ';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'ระบบขับเคลื่อนของโพรบล้ำหน้ากว่าเราหลายศตวรรษ — เครื่องขับเคลื่อนไร้ปฏิกิริยาขนาดกำปั้น วิศวกรวิศวกรรมย้อนกลับบางส่วนของการออกแบบ';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'เก็บรักษาโพรบทั้งหมดเป็นสิ่งประดิษฐ์ทางวัฒนธรรม';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'จัดแสดงในโถงกลางของยาน เมล็ดพันธุ์ต่างดาวกลายเป็นสัญลักษณ์ของความเป็นเครือญาติระหว่างสายพันธุ์ มีใครอื่น ที่ไหนสักแห่ง พยายามช่วยโลกของพวกเขาเช่นกัน';

  @override
  String get event_relicWarningBuoy_title => 'ทุ่นเตือน';

  @override
  String get event_relicWarningBuoy_narrative =>
      'เครือข่ายทุ่นเล็กๆ หลายร้อยตัว เรียงในรูปแบบเรขาคณิตที่สมบูรณ์แบบขวางเส้นทาง แต่ละตัวแผ่สัญญาณเดียวกัน — จังหวะซ้ำที่เพิ่มความถี่เมื่อเราเข้าใกล้ รู้สึกเหมือนคำเตือน หรือรั้ว';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'เชื่อฟังคำเตือน — เปลี่ยนเส้นทางอ้อมเครือข่าย';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'การอ้อมเสียเวลาและสร้างความเครียดให้ระบบนำทาง แต่เมื่อเราเลียบขอบ เซนเซอร์ยืนยัน: พื้นที่ด้านหลังเต็มไปด้วยเศษซากโลกที่แตกสลาย ทุ่นช่วยเราไว้';

  @override
  String get event_relicWarningBuoy_choice1_text => 'ฝ่าไป — เราอ้อมไม่ได้';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'ไม่มีอะไรเกิดขึ้นเมื่อเราข้ามเส้น ทุ่นเงียบลง สิ่งที่พวกมันเฝ้าอยู่ จากไปแล้วหรือเราโชคดี ลูกเรือหายใจอีกครั้ง';

  @override
  String get event_relicWarningBuoy_choice2_text => 'จับทุ่นมาวิเคราะห์';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'ภายในทุ่นบรรจุคลังข้อมูลบีบอัด — แผนที่ดวงดาวของภูมิภาคนี้จากล้านปีก่อน ข้อมูลบางส่วนยังคงแม่นยำ';

  @override
  String get event_relicMirrorArray_title => 'อาร์เรย์กระจก';

  @override
  String get event_relicMirrorArray_narrative =>
      'พื้นผิวสะท้อนแบนหลายพันชิ้นลอยนิ่งในอวกาศ เรียงเป็นวงซ้อนกว้างหลายร้อยกิโลเมตร มันรวมแสงดาวจากดวงอาทิตย์ไกลเป็นจุดเดียว — ดาวประดิษฐ์ เผาอยู่ในสุญญากาศ มีใครบางคนสร้างประภาคารระหว่างกาแล็กซี';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'อาบแสงที่รวม — ชาร์จทุกอย่าง';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'แสงดาวที่เข้มข้นท่วมตัวรับพลังงานแสงอาทิตย์ สำรองพลังงานพุ่งสูง แสงอุ่นยกจิตวิญญาณทุกดวงบนยานหลังหลายเดือนในความมืดเย็น';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'ศึกษาวัสดุกระจก — มันไม่ควรมีอยู่';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'กระจกทำจากวัสดุที่มีการสะท้อนสมบูรณ์แบบ — ไม่ดูดซับที่ความยาวคลื่นใดเลย วิศวกรสกัดเศษชิ้นส่วน เกราะตัวเรือจะไม่เหมือนเดิม';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'ค้นจุดโฟกัส — มีบางอย่างกำลังถูกส่องสว่าง';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'ที่จุดรวมแสง: แคปซูลเล็กๆ ถูกเก็บรักษาอย่างสมบูรณ์ในแสงเข้มข้น ภายในมีแผนที่ดวงดาวโฮโลแกรมที่ละเอียดจนคอมพิวเตอร์ของเราใช้เวลาหลายวันจัดทำดัชนี';

  @override
  String get event_relicGraveyard_title => 'สุสานโพรบ';

  @override
  String get event_relicGraveyard_narrative =>
      'เราล่องลอยเข้าไปในเมฆโพรบร้าง — หลายพันตัวจากอารยธรรมหลายสิบแห่ง บางตัวเก่าแก่เกินจะนับ หลอมรวมด้วยรังสีคอสมิกเป็นฟอสซิลโลหะ บางตัวยังกะพริบด้วยพลังงานที่จางหาย ที่นี่เคยเป็นทางแยกครั้งหนึ่ง ทุกสายพันธุ์ที่ผ่านทางนี้ทิ้งบางอย่างไว้';

  @override
  String get event_relicGraveyard_choice0_text =>
      'กู้ซากอย่างเป็นระบบ — เก็บเกี่ยวเทคโนโลยีที่ดีที่สุด';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'ทีมวิศวกรรมทำงานเป็นกะ รื้อเทคโนโลยีต่างดาวจากการออกแบบร้อยแบบ การรวมแนวคิดสร้างความก้าวหน้าในทุกระบบ';

  @override
  String get event_relicGraveyard_choice1_text =>
      'เน้นข้อมูลนำทางในหน่วยความจำ';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'การเปรียบเทียบแผนที่ดวงดาวจากสายพันธุ์หลายสิบสร้างแผนที่ที่สมบูรณ์ที่สุดของแขนกาแล็กซีนี้เท่าที่เคยมี';

  @override
  String get event_relicGraveyard_choice2_text =>
      'เพิ่มโพรบของเราในสุสาน — ทิ้งเครื่องหมาย';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'เราประดิษฐ์บีคอนเล็กๆ บรรทุกเรื่องราวของมนุษยชาติและเพิ่มเข้าในคอลเลกชัน ลูกเรือรู้สึกเชื่อมต่อกับสิ่งที่กว้างใหญ่และเก่าแก่';

  @override
  String get event_relicDreamcatcher_title => 'ตาข่ายดักฝัน';

  @override
  String get event_relicDreamcatcher_narrative =>
      'ใยเส้นบางเหมือนใยแมงมุมแต่กว้างหลายพันกิโลเมตร ขึงระหว่างดาวเคราะห์น้อยพเนจรสองดวง มันไม่ใช่ตาข่าย — มันเป็นเสาอากาศ ปรับจูนตามความถี่ที่ตรงกับรูปแบบคลื่นสมองมนุษย์ เมื่อเราเข้าสู่พิสัย ผู้ตั้งอาณานิคมที่หลับทุกคนเริ่มฝันเหมือนกัน: เมืองรุ่งเรืองใต้ท้องฟ้าสีอำพัน';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'บันทึกพิกัดจากฝัน — เมืองอาจเป็นจริง';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'นักประสาทวิทยาถอดรหัสข้อมูลเชิงพื้นที่จากฝันร่วม มันตรงกับระบบดาวจริง — และเมืองในนิมิตไม่ใช่อุปมา มีใครบางคนอยู่ที่นั่น และพวกเขารอเราอยู่';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'เก็บตัวอย่างเส้นใย — วัสดุนี้พิเศษ';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'เส้นใยเป็นตัวนำยิ่งยวดที่อุณหภูมิห้อง เมื่อรวมเข้ากับระบบ มันลดการสูญเสียพลังงานเหลือเกือบศูนย์';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'ตัดตาข่ายและปลดปล่อยผู้ฝัน';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'ฝันหยุด ผู้ตั้งอาณานิคมตื่นมาสับสนแต่ไม่บาดเจ็บ บางคนโศกเศร้ากับนิมิตที่สูญ คนอื่นรู้สึกขอบคุณที่หลับโดยไม่มีเสียงกระซิบต่างดาว';

  @override
  String get event_relicRosetta_title => 'วัตถุโรเซตตา';

  @override
  String get event_relicRosetta_narrative =>
      'ลูกบาศก์เล็กหนาแน่นจากโลหะที่ไม่รู้จักหมุนผ่านยาน แต่ละด้านสลักข้อความเดียวกันในระบบสัญกรณ์ต่างกัน — คณิตศาสตร์ เคมี พันธุกรรม เสียง แม่เหล็กไฟฟ้า และอีกหนึ่งที่เราระบุไม่ได้ มันคือศิลาโรเซตตาแห่งจักรวาล';

  @override
  String get event_relicRosetta_choice0_text =>
      'ถอดรหัสด้านที่หก — สัญกรณ์ที่ไม่รู้จัก';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'การวิเคราะห์หลายเดือนให้ผลการค้นพบ: ระบบที่หกเข้ารหัสพิกัดเชิงพื้นที่โดยใช้คลื่นความโน้มถ่วง ความเข้าใจฟิสิกส์ของเราก้าวกระโดดข้ามรุ่น';

  @override
  String get event_relicRosetta_choice1_text =>
      'ใช้ด้านเคมีเพื่อสังเคราะห์สารประกอบใหม่';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'สัญกรณ์เคมีอธิบายวัสดุที่เราไม่เคยจินตนาการ วิศวกรประดิษฐ์แผ่นปะตัวเรือที่เบากว่าและแข็งแกร่งกว่าสิ่งใดจากโลก';

  @override
  String get event_relicRosetta_choice2_text =>
      'ส่งข้อมูลด้านพันธุกรรมไปยังคลังเมล็ดพันธุ์';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'สัญกรณ์พันธุกรรมบรรจุลำดับ DNA ที่ปรับให้ทนรังสีและดูดซับสารอาหาร พืชและผู้ตั้งอาณานิคมจะแข็งแกร่งขึ้นบนดินต่างดาว';

  @override
  String get event_relicGhostFleet_title => 'กองเรือผี';

  @override
  String get event_relicGhostFleet_narrative =>
      'สแกนเนอร์วาดภาพสยองขวัญ: กองเรือรบต่างดาวหลายร้อยลำ ลอยนิ่งในรูปขบวน พวกมันเก่าแก่ — ไม่มีพลังงาน ตัวเรือถูกกัดกร่อนจากการชนระดับจุลภาคหลายยุค สมรภูมิที่พวกมันกำลังแล่นไปไม่เคยมาถึง พวกมันรออยู่ที่นี่ ตายแต่อดทน นานกว่าอารยธรรมมนุษย์ดำรงอยู่';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'ขึ้นเรือธง — ถ้าใครมีเทคโนโลยีดีที่สุด ก็คือมัน';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'ดาดฟ้าบัญชาการของเรือธงยังมีคอมพิวเตอร์ยุทธวิธีที่สมบูรณ์ อัลกอริทึมพยากรณ์ของมันล้ำหน้าหลายศตวรรษ การนำทางและการตรวจจับภัยคุกคามดีขึ้นอย่างมาก';

  @override
  String get event_relicGhostFleet_choice1_text => 'รื้อเกราะจากเรือคุ้มกัน';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'เกราะเรือรบต่างดาวออกแบบมาเพื่อทนอาวุธที่เราจินตนาการไม่ได้ ยึดเข้ากับตัวเรือ มันทำให้เรืออาณานิคมเกือบทำลายไม่ได้';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'กู้ซากระบบไครโอเจนิก — พวกมันบรรทุกทหาร';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'เทคโนโลยีไครโอต่างดาวทำงานบนหลักการที่เราไม่เคยพิจารณา พอดของเราทำงานเย็นกว่า ราบรื่นกว่า และเชื่อถือได้มากขึ้นหลังการปรับปรุง';

  @override
  String get event_scannerCalibrationDrift_title => 'สแกนเนอร์คลาดเคลื่อน';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'การวินิจฉัยตามปกติเผยว่าระบบสแกนเนอร์หลายตัวคลาดเคลื่อนหลังการกระโดด FTL ล่าสุด สแกนเนอร์บรรยากาศและอุณหภูมิอ่านสัญญาณหลอก วิศวกรแก้ไขได้ แต่ต้องใช้เวลาและทรัพยากร';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'ปรับเทียบเต็มรูปแบบ — เบี่ยงทรัพยากรเทคโนโลยี';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'การปรับอย่างพิถีพิถันคืนสแกนเนอร์ทั้งสองเกือบสมบูรณ์แบบ แต่ห้องเทคโนโลยีหมดแรง';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'แก้เร็ว — ปรับเทียบเฉพาะบรรยากาศ';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'สแกนเนอร์บรรยากาศกลับมา สแกนเนอร์อุณหภูมิยังไม่น่าเชื่อถือ';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'ปล่อยโพรบเป็นจุดอ้างอิงการปรับเทียบ';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'โพรบให้สัญญาณอ้างอิงที่สะอาด สแกนเนอร์ทั้งสองล็อกและปรับเทียบอัตโนมัติ';

  @override
  String get event_ionStormScanners_title => 'พายุไอออนรบกวน';

  @override
  String get event_ionStormScanners_narrative =>
      'พายุไอออนกวาดผ่านเซกเตอร์ ท่วมอาร์เรย์สแกนเนอร์ด้วยสัญญาณรบกวน ระบบตรวจจับแร่ธาตุและน้ำรับแรงกระแทกจากคลื่นแม่เหล็กไฟฟ้าหนักที่สุด';

  @override
  String get event_ionStormScanners_choice0_text => 'ปิดสแกนเนอร์จนพายุผ่าน';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'สแกนเนอร์รอด แต่สูญเสียข้อมูลปรับเทียบ การอ่านค่าแร่ธาตุและน้ำจะแม่นยำน้อยลง';

  @override
  String get event_ionStormScanners_choice1_text => 'สแกนต่อ — ฝ่าสัญญาณรบกวน';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'ข้อมูลดิบท่วมเข้ามา แต่วงจรกรองไหม้ในสองระบบย่อย สแกนแรงโน้มถ่วงก็ได้รับผลกระทบ';

  @override
  String get event_ionStormScanners_choice2_text =>
      'ใช้พายุทดสอบและปรับปรุงตัวกรอง';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'ทีมวิทยาศาสตร์ใช้สัญญาณรบกวนฝึกตัวกรองปรับตัว สแกนเนอร์น้ำดีขึ้น แต่สแกนเนอร์แร่ธาตุเสียหาย';

  @override
  String get event_bioScannerContamination_title => 'สแกนเนอร์ชีวภาพปนเปื้อน';

  @override
  String get event_bioScannerContamination_narrative =>
      'สแกนเนอร์สัญญาณชีพถูกปนเปื้อนจากสารอินทรีย์ตกค้างจากการสแกนดาวเคราะห์ครั้งก่อน สัญญาณเตือนผิดพลาดทุกที่ สแกนเนอร์แรงโน้มถ่วงก็แสดงสัญญาณรบกวนตาม';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'ฆ่าเชื้ออาร์เรย์เซนเซอร์ — ทำความสะอาดเต็มที่';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'การทำความสะอาดอย่างละเอียดคืนสแกนเนอร์สัญญาณชีพ แต่สารเคมีกัดกร่อนตัวเรือนเซนเซอร์แรงโน้มถ่วง';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'ตัวกรองซอฟต์แวร์ — ชดเชยด้วยอัลกอริทึม';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'ตัวกรองทำงานพอใช้ แต่การปนเปื้อนที่ซ่อนอยู่จะค่อยๆ ทำให้ทั้งสองระบบเสื่อมสภาพ';

  @override
  String get event_scannerPowerSurge_title => 'ไฟกระชากสแกนเนอร์';

  @override
  String get event_scannerPowerSurge_narrative =>
      'ท่อร้อยสายไฟใกล้ห้องสแกนเนอร์โอเวอร์โหลด ส่งไฟกระชากผ่านหลายระบบย่อย สแกนเนอร์บรรยากาศและสัญญาณชีพโดนตรง เกราะดูดซับส่วนเกินบางส่วน';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'เปลี่ยนเส้นทางไฟ — ช่วยสแกนเนอร์';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'การกระทำเร็วของทีมวิศวกรรมจำกัดความเสียหาย แต่เกราะรับพลังงานที่เปลี่ยนเส้นทาง';

  @override
  String get event_scannerPowerSurge_choice1_text => 'ปล่อยให้ไฟกระชากผ่าน';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'สแกนเนอร์รับแรงกระแทกเต็ม การอ่านค่าบรรยากาศและสัญญาณชีพเสื่อมลงมาก';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'สละเซลล์พลังงานโพรบเพื่อดูดซับไฟกระชาก';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'ตัวเก็บประจุของโพรบดูดซับพลังงานส่วนเกินเหมือนฟองน้ำ ความเสียหายสแกนเนอร์เล็กน้อย';

  @override
  String get event_relicWorldEngine_title => 'เครื่องจักรสร้างโลก';

  @override
  String get event_relicWorldEngine_narrative =>
      'การสแกนเซนเซอร์ลึกเผยสิ่งที่เป็นไปไม่ได้: เครื่องจักรขนาดดวงจันทร์เล็ก หลับนิ่งในความมืดระหว่างดวงดาว พื้นผิวปกคลุมด้วยกลไกขนาดทวีป — เครื่องแปรสภาพบรรยากาศ เครื่องสร้างสนามแม่เหล็ก ตัวปรับเสถียรเปลือกโลก มีใครบางคนสร้างเครื่องจักรที่สร้างโลก';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'ดาวน์โหลดแบบแปลนการปรับสภาพดาว';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'แบบแปลนมหาศาลและเสียหายบางส่วน แต่สิ่งที่กู้ได้อาจทำให้โลกที่เป็นปรปักษ์อยู่อาศัยได้ ผู้ตั้งอาณานิคมจะปรับเปลี่ยนบ้านใหม่';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'เก็บเกี่ยววัสดุก่อสร้างจากตัวเรือ';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'ตัวเรือของเครื่องจักรสร้างโลกทำจากเมตาวัสดุที่ซ่อมตัวเองเมื่อเสียหาย เมื่อรวมเข้ากับยาน มันค่อยๆ อุดรอยรั่วที่มีอยู่';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'พยายามเปิดเครื่องอีกครั้ง — เล็งไปที่ระบบเป้าหมาย';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'เครื่องจักรขยับ ระบบโบราณหมุนผ่านลำดับสตาร์ทอัพ ลำแสงพลังงานพุ่งไปยังดาวฤกษ์ไกล มันจะได้ผลหรือไม่จะรู้เมื่อเราไปถึง แต่ค่าที่อ่านได้มีแนวโน้มดี';

  @override
  String get event_uneventfulMaintenance_title => 'รอบบำรุงรักษาตามปกติ';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'ไม่มีอะไรเรียกร้องความสนใจ ยานฮัมนิ่งผ่านสุญญากาศ และตารางเวรเรียกรอบบำรุงรักษาตามปกติ หัวหน้าลูกเรือถามว่าจะเน้นที่ไหน';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'เน้นอุดรอยแตกจุลภาคตัวเรือ';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'กะเงียบๆ ที่ใช้ปะรอยแตกเส้นผม ไม่มีอะไรดราม่า แต่ตัวเรือดีขึ้นเล็กน้อย';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'ปรับเทียบสแกนเนอร์ด้านหน้า';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'ช่างเทคนิคสแกนเนอร์ใช้เวลาไม่กี่ชั่วโมงปรับจูน ค่าที่อ่านได้คมขึ้นเล็กน้อย';

  @override
  String get event_uneventfulQuietWatch_title => 'เวรยามเงียบ';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'ดวงดาวลอยผ่านในความเงียบ สะพานเรือสงบ เครื่องมือมั่นคง เป็นช่วงเวลาหายากที่จักรวาลไม่เรียกร้องอะไรจากคุณ';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'ให้ลูกเรือพักผ่อน — พวกเขาสมควรได้กะเงียบ';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'ไม่กี่ชั่วโมงของสันติภาพแท้จริง ผู้คนนอนหลับลึกขึ้น ความตึงเครียดผ่อนคลาย และเจ้าหน้าที่วัฒนธรรมสังเกตขวัญกำลังใจดีขึ้นเล็กน้อย';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'วินิจฉัยลำดับความสำคัญต่ำขณะสงบ';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'ปัญหาเล็กน้อยถูกจับและบันทึก ไม่มีอะไรเร่งด่วน แต่บันทึกเทคโนโลยีสะอาดขึ้น';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'ตรวจไครโอพอด — ทุกอย่างปกติ';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'การตรวจสอบไครโอพอดรายไตรมาสผ่านไปโดยไม่มีสัญญาณเตือนแม้แต่ครั้งเดียว ทุกพอดอ่านเขียว ทีมแพทย์มีช่วงเวลาสงบหายาก';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'ปลุกผู้ตั้งอาณานิคมไม่กี่คนสำหรับเยี่ยมเยียนเพิ่มขวัญ';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'ผู้ตั้งอาณานิคม 3 คนถูกปลุกเป็นชั่วโมง พวกเขาเล่าเรื่อง กอดเพื่อนเก่า และกลับเข้าไครโอพร้อมรอยยิ้ม';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'ปล่อยให้หลับ — อย่าเสี่ยงรอบตื่นที่ไม่จำเป็น';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'พอดทำงานต่ออย่างไร้ที่ติ ทีมแพทย์ดื่มชาอย่างเงียบๆ แทน';

  @override
  String get event_uneventfulCartography_title => 'อัปเดตแผนที่ดวงดาว';

  @override
  String get event_uneventfulCartography_narrative =>
      'การอัปเดตแผนที่ตามกำหนดของทีมนำทางไม่เผยอะไรผิดปกติ — แค่ทุ่งดาวที่คาดหวังเลื่อนตำแหน่งตามที่เราเดินทาง วันสงบสำหรับนักนำทาง';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'ปรับเทียบนำทางตามตำแหน่งดาวใหม่';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'การแก้ไขเส้นทางเล็กน้อย แทบไม่รู้สึก คอมพิวเตอร์นำทางฮัมอย่างพอใจ';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'อัปเดตแผนที่ดวงดาวสำหรับคลังอาณานิคม';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'ผู้ตั้งอาณานิคมในอนาคตจะมีแผนที่ภูมิภาคนี้ที่ดีขึ้นเล็กน้อย ของขวัญเล็กๆ สู่คนรุ่นหลัง';

  @override
  String get event_uneventfulAnniversary_title => 'วันครบรอบของยาน';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'ครบหนึ่งปีหลังปล่อยยาน — หรือสองปี? เวลาเลือนรางในห้วงอวกาศลึก มีใครในห้องครัวอบเค้กจากวัตถุดิบสำเร็จรูป กัปตันต้องตัดสินใจว่าจะรำลึกอย่างไร';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'เฉลิมฉลองเล็กๆ — ดนตรี เค้ก ดื่มอวยพรโลก';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'หนึ่งชั่วโมงแห่งความอบอุ่นในสุญญากาศเย็น ผู้คนหัวเราะ บางคนร้องไห้ และทุกคนรู้สึกเป็นมนุษย์มากขึ้น';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'ดำเนินงานตามปกติ — เราเฉลิมฉลองเมื่อไปถึง';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'ลูกเรือเคารพแนวทางสงบนิ่ง จิตใจเฉียบคม และทีมเวรเสริมทำการตรวจระบบเพิ่ม';

  @override
  String get event_databaseLiterature_title => 'คลังวรรณกรรมของโลก';

  @override
  String get event_databaseLiterature_narrative =>
      'AI ของยานเปิดส่วนที่ปิดผนึกมานานของฐานข้อมูลวัฒนธรรม: คลังวรรณกรรมที่สมบูรณ์ของโลก นวนิยาย บทกวี บทละคร — ผลงานหลายล้านชิ้นจากทุกภาษาและทุกยุค ลูกเรือรวมตัวกันเพื่ออ่าน';

  @override
  String get event_databaseLiterature_choice0_text =>
      'กระจายเสียงอ่านที่คัดเลือกทั่วยาน';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'เชกสเปียร์ก้องผ่านทางเดิน บทกวีรูมีเล่นในห้องไฮโดรโพนิกส์ ลูกเรือจำได้ว่าพวกเขาบรรทุกอะไร';

  @override
  String get event_databaseLiterature_choice1_text =>
      'จัดทำดัชนีคลังสำหรับโปรแกรมการศึกษา';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'ความพยายามจัดหมวดหมู่เสริมฐานความรู้ของยานและให้วัสดุการสอนใหม่แก่เจ้าหน้าที่วัฒนธรรม';

  @override
  String get event_databaseSchematics_title => 'ทบทวนแบบแปลนวิศวกรรม';

  @override
  String get event_databaseSchematics_narrative =>
      'วิศวกรคนหนึ่งพบพาร์ติชันที่ถูกลืมในฐานข้อมูลของยาน: แบบแปลนละเอียดจากทศวรรษสุดท้ายของวิศวกรรมโลก — การออกแบบเครื่องปฏิกรณ์ฟิวชัน แบบแปลนเมตาวัสดุ และแนวคิดขับเคลื่อนทดลอง';

  @override
  String get event_databaseSchematics_choice0_text =>
      'จัดลำดับแนวคิดขับเคลื่อนสำหรับทีมเทคโนโลยี';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'แบบแปลนเผยการปรับปรุงประสิทธิภาพที่ผู้สร้างดั้งเดิมไม่มีเวลาดำเนินการ ห้องเทคโนโลยีคึกคัก';

  @override
  String get event_databaseSchematics_choice1_text =>
      'แบ่งปันความรู้กว้าง — ทุกแผนกได้ประโยชน์';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'วิศวกรตัวเรือ ช่างสแกนเนอร์ และแพทย์ต่างพบข้อมูลเชิงลึกที่มีประโยชน์ น้ำขึ้นยกทุกระบบ เล็กน้อย';

  @override
  String get event_databaseCorruption_title => 'สแกนอนุรักษ์วัฒนธรรม';

  @override
  String get event_databaseCorruption_narrative =>
      'การตรวจสอบความสมบูรณ์ตามกำหนดของฐานข้อมูลวัฒนธรรมเผยการเสื่อมข้อมูล — ส่วนของดนตรี ประวัติศาสตร์บอกเล่า และคัมภีร์ศาสนาเสื่อมเกินกู้คืน ไม่ใช่ทุกอย่างรอดการเดินทาง';

  @override
  String get event_databaseCorruption_choice0_text =>
      'เบี่ยงทรัพยากรเทคโนโลยีเพื่อกู้สิ่งที่เหลือ';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'วิศวกรหยุดงานอื่นเพื่อรันอัลกอริทึมกู้ข้อมูล พวกเขาช่วยส่วนใหญ่ แต่ความพยายามทำให้ห้องเทคโนโลยีสิ้นเปลือง';

  @override
  String get event_databaseCorruption_choice1_text =>
      'ขอให้ผู้ตั้งอาณานิคมสร้างผลงานที่สูญหายจากความจำ';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'ความพยายามที่สวยงามแต่ไม่สมบูรณ์แบบ สิ่งที่สร้างใหม่เป็นของการเดินทาง ไม่ใช่ของโลก ประเพณีใหม่ถือกำเนิด';

  @override
  String get event_databaseBreakthrough_title => 'การค้นพบจากงานวิจัยในคลัง';

  @override
  String get event_databaseBreakthrough_narrative =>
      'นักฟิสิกส์ที่เปรียบเทียบเอกสารวิจัยเก่าของโลกในฐานข้อมูลค้นพบว่าสองการศึกษาที่ไม่เกี่ยวข้อง เมื่อรวมกัน อธิบายวิธีใหม่สำหรับการวิเคราะห์สเปกตรัมพิสัยไกล ผลกระทบมหาศาล';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'นำวิธีวิเคราะห์ใหม่ไปใช้ในอาร์เรย์สแกนเนอร์';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'ทีมสแกนเนอร์ทำงานอย่างบ้าคลั่ง ภายในไม่กี่วัน ความละเอียดสเปกตรัมเพิ่มเป็นสองเท่า ดาวเคราะห์ไกลเผยความลับ';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'เผยแพร่ทั่วยาน — สร้างแรงบันดาลใจให้วิจัยเพิ่ม';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'การค้นพบจุดประกายคลื่นการศึกษาข้ามสาขา เทคโนโลยีดีขึ้นโดยรวม และลูกเรือรู้สึกมีชีวิตทางปัญญา';

  @override
  String get event_alienFleetSighting_title => 'กองเรือต่างดาวที่ขอบฟ้า';

  @override
  String get event_alienFleetSighting_narrative =>
      'สแกนเนอร์พิสัยไกลวาดภาพน่าสะพรึง: กองเรือต่างดาวหลายร้อยลำ เคลื่อนในรูปขบวนสมบูรณ์แบบข้ามทุ่งดาว มันแคระยานเรา เส้นทางจะพามันเข้าสู่พิสัยเซนเซอร์ในไม่กี่ชั่วโมง การติดต่อครั้งแรก — ตามเงื่อนไขของพวกเขาหรือของเรา';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'สังเกตอย่างเงียบ — ดับสัญญาณและเฝ้ามอง';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'ยานลดการแผ่คลื่นเหลือน้อยที่สุด กองเรือผ่านเหมือนฝูงวาฬเรืองแสง ไม่รู้ตัวว่ายานมนุษย์เล็กๆ ซ่อนอยู่ในกระแสน้ำหลัง ข้อมูลสแกนเนอร์พิเศษมาก';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'พยายามติดต่อครั้งแรก — ส่งคำทักทาย';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'ยานลำเดียวแยกออกจากรูปขบวนและเข้ามา ข้อมูลมาถึง — แผนที่ดวงดาว คำเตือน และสิ่งที่อาจเป็นเพลง แล้วมันกลับเข้ารูปขบวนและพวกเขาจากไป';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'หนี — เปลี่ยนเส้นทางทันที';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'ยานเร่งหนักในทิศตรงข้าม การเปลี่ยนเส้นทางแพงและเครียด แต่กองเรือไม่เคยสังเกตเรา ความปลอดภัยที่มีราคา';

  @override
  String get event_alienTradeOffer_title => 'ข้อเสนอการค้าต่างดาว';

  @override
  String get event_alienTradeOffer_narrative =>
      'ยานต่างดาว เล็กกว่าเราแต่แผ่พลังงานมหาศาล จับคู่ความเร็วและส่งข้อความซ้ำอย่างง่าย นักภาษาศาสตร์ถอดรหัสได้ในไม่กี่ชั่วโมง: เป็นข้อเสนอการค้า มีการแลกเปลี่ยนสามหมวดให้เลือก';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'แลกแบบแปลนเทคนิคเป็นแผนที่ดวงดาวต่างดาว';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'เราส่งการออกแบบขับเคลื่อน พวกเขาตอบด้วยข้อมูลนำทางครอบคลุมอวกาศที่ยังไม่สำรวจอย่างกว้างใหญ่ แผนที่ดีขึ้นอย่างมาก แม้เราแบ่งปันเทคโนโลยีกับสายพันธุ์ที่ไม่รู้จัก';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'แลกข้อมูลวัฒนธรรมเป็นการซ่อมยาน';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'เราส่งดนตรี ศิลปะ และประวัติศาสตร์ ตอบแทน โดรนซ่อมต่างดาวบุกตัวเรือ อุดรอยรั่วด้วยวัสดุที่เราระบุไม่ได้ ตัวเรือเรืองรัง วิญญาณเราถูกแบ่งปัน';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'ปฏิเสธการค้า — เสี่ยงเกินไป';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'ยานต่างดาวรอสักพัก แล้วจากไปโดยไม่มีเหตุการณ์ ลูกเรือโล่งใจแต่สงสัยว่าอะไรสูญเสียไป';

  @override
  String get event_alienWarning_title => 'สัญญาณเตือนต่างดาว';

  @override
  String get event_alienWarning_narrative =>
      'ลำโพงทุกตัวบนยานส่งเสียงพร้อมเสียงต่างดาว — AI แปลแบบเรียลไทม์: \"อันตรายข้างหน้า หันกลับ ความมืดกลืนกิน\" สัญญาณซ้ำ แล้วดับ เซนเซอร์พิสัยไกลแสดงสุญญากาศผิดปกติบนเส้นทางปัจจุบัน';

  @override
  String get event_alienWarning_choice0_text =>
      'เชื่อฟังคำเตือน — เปลี่ยนเส้นทางอ้อมสุญญากาศ';

  @override
  String get event_alienWarning_choice0_outcome =>
      'การอ้อมสร้างความเครียดหนักให้ระบบนำทาง แต่เมื่อเราเลียบขอบ เซนเซอร์ยืนยัน: ไม่มีอะไรที่เข้าพื้นที่นั้นเคยออกมา เราเป็นหนี้เสียงที่ไม่รู้จัก';

  @override
  String get event_alienWarning_choice1_text =>
      'เพิกเฉยคำเตือน — อยู่ในเส้นทาง';

  @override
  String get event_alienWarning_choice1_outcome =>
      'เราฝ่าไป สุญญากาศกลายเป็นพื้นที่เศษซากจิ๋วหนาแน่น ตัวเรือและสแกนเนอร์โดนถล่มก่อนผ่านอีกด้าน';

  @override
  String get event_alienWarning_choice2_text => 'สำรวจขอบสุญญากาศด้วยโพรบ';

  @override
  String get event_alienWarning_choice2_outcome =>
      'โพรบเข้าสุญญากาศและส่งข้อมูลพิเศษก่อนเงียบ ทีมสแกนเนอร์สกัดค่าที่อ่านได้มีค่า แต่โพรบสูญหาย';

  @override
  String get event_nativeSignalDetected_title => 'สัญญาณจากโลกเป้าหมาย';

  @override
  String get event_nativeSignalDetected_narrative =>
      'อาร์เรย์สื่อสารจับสัญญาณแม่เหล็กไฟฟ้าที่มีโครงสร้างจากดาวเคราะห์เป้าหมาย ชัดเจน: สม่ำเสมอ ปรับ ประดิษฐ์ มีใครอยู่ที่นั่นแล้ว สมมติฐานทั้งหมดของอาณานิคมเปลี่ยนในชั่วพริบตา';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'ส่งคำทักทายสันติ — ประกาศการมาถึง';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'ทางเลือกที่กล้าหาญ สัญญาณเปลี่ยนรูปแบบหลังเราส่ง — พวกเขาได้ยินเรา ว่านี่คือการต้อนรับหรือคำเตือนยังไม่ชัดเจน แต่ประตูเปิดแล้ว';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'ฟังเท่านั้น — เรียนรู้ก่อนเปิดเผยตัว';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'หลายเดือนของการฟังอย่างเงียบสร้างภาพอารยธรรมพื้นเมือง พวกเขาระมัดระวัง หวงอาณาเขต แต่ไม่เป็นปรปักษ์ เรามาถึงอย่างมีข้อมูล';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'รบกวนสัญญาณ — ปิดกั้นไม่ให้พวกเขารู้ว่าเราเข้ามา';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'การรบกวนได้ผล แต่มันเป็นการรุกรานต่อชนชาติที่เรายังไม่เคยพบ ลูกเรือแบ่งฝ่ายเรื่องศีลธรรม';

  @override
  String get event_nativeProbeEncounter_title => 'สกัดโพรบต่างดาว';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'โพรบเล็กสง่างาม — ไม่ใช่ฝีมือมนุษย์ — จับคู่ความเร็วและเริ่มสแกนยาน ภาษาการออกแบบตรงกับสัญญาณจากดาวเคราะห์เป้าหมาย ชนพื้นเมืองส่งคณะต้อนรับ หรือโดรนเฝ้าระวัง';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'อนุญาตให้สแกน — แสดงว่าเราไม่มีอะไรซ่อน';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'โพรบสำรวจเสร็จและส่งข้อมูลกลับดาวเคราะห์ ไม่กี่นาทีต่อมา ข้อมูลชุดที่สองมาถึงสำหรับเรา: ข้อมูลบรรยากาศ จุดลงจอดปลอดภัย และสิ่งที่อาจเป็นคำเชิญ';

  @override
  String get event_nativeProbeEncounter_choice1_text => 'จับโพรบมาศึกษา';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'โพรบถูกดึงเข้าห้องสินค้า เทคโนโลยีน่าสนใจ แต่การจับอาจถูกมองว่าเป็นปรปักษ์โดยผู้สร้าง';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'ทำลายมัน — เราไม่รู้เจตนา';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'พัลส์เดียวทำลายโพรบเป็นเศษ ลูกเรือรู้สึกปลอดภัยขึ้น แต่สะพานที่อาจเชื่อมถูกเผา';

  @override
  String get event_nativeCulturalExchange_title =>
      'การแลกเปลี่ยนวัฒนธรรมครั้งแรก';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'ลิงก์ข้อมูลแบนด์แคบถูกสร้างกับชนพื้นเมือง พวกเขาส่งภาพ เสียง และลำดับคณิตศาสตร์ นักภาษาศาสตร์และเจ้าหน้าที่วัฒนธรรมทำงานตลอดเวลาเพื่อเตรียมการตอบ นี่คือบทสนทนาที่สำคัญที่สุดในประวัติศาสตร์มนุษย์';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'แบ่งปันศิลปะและดนตรีของโลก — นำด้วยความงาม';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'เราส่งบาค จิตรกรรมจุดอะบอริจิน และเสียงฝนตกบนใบไม้ การตอบกลับเป็นทำนองต่างดาวที่ทำให้ลูกเรือร้องไห้ ความเข้าใจลึกซึ้งขึ้น';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'แบ่งปันความรู้วิทยาศาสตร์ — นำด้วยเหตุผล';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'เราส่งตารางธาตุ แผนที่ดวงดาว และฟิสิกส์ พวกเขาตอบด้วยการแก้ไขและเพิ่มเติม เทคโนโลยีก้าวกระโดด แต่การแลกเปลี่ยนรู้สึกเป็นธุรกิจ';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'ส่งโพรบพร้อมตัวอย่างทางกายภาพ — DNA เมล็ดพันธุ์ น้ำ';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'โพรบบรรทุกแก่นแท้ของโลกสู่มือต่างดาว ชนพื้นเมืองตอบด้วยของขวัญที่คล้ายกัน — ตัวอย่างชีวภาพจากโลกของพวกเขา นักชีววิทยาปลื้ม';

  @override
  String get event_landingThrusterMalfunction_title =>
      'เครื่องขับดันลงจอดขัดข้อง';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'ระหว่างตรวจระบบตามปกติ เครื่องขับดันลงจอดจุดระเบิดผิดพลาด — เสียงดังสนั่นก้องดาดฟ้าล่างและยานกระชาก การวินิจฉัยเผยหัวฉีดเชื้อเพลิงแตกในอาร์เรย์ลงจอดหลัก หากไม่ซ่อม การลงจอดจะรุนแรง';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'เบี่ยงทีมเทคนิคเพื่อผลิตหัวฉีดทดแทน';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'วิศวกรทำงานสองกะและกลึงหัวฉีดใหม่จากโลหะผสมตัวเรือสำรอง ระบบลงจอดกลับมา แม้ห้องเทคโนโลยีหมดแรง';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'ปล่อยโพรบทดสอบการปรับเทียบเครื่องขับดันในสุญญากาศ';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'โพรบให้ข้อมูลแรงขับแบบเรียลไทม์ที่ช่วยวิศวกรปรับเทียบรอบหัวฉีดที่เสียหาย ไม่ใช่การซ่อมเต็ม แต่ระบบลงจอดเสถียร';

  @override
  String get event_landingSimDrill_title => 'ซ้อมจำลองการลงจอด';

  @override
  String get event_landingSimDrill_narrative =>
      'เมื่อการลงจอดใกล้เข้ามา กัปตันสั่งซ้อมจำลองการลงจอดเต็มรูปแบบ ลูกเรือรัดเข็มขัด ระบบถูกทดสอบภายใต้ภาระ และการร่อนลงเสมือนจริงเริ่มขึ้น เป็นการซ้อมที่สมจริงที่สุดที่จะได้';

  @override
  String get event_landingSimDrill_choice0_text =>
      'เน้นความแม่นยำทางเทคนิค — ซ้อมตามคู่มือ';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'การจำลองเผยข้อผิดพลาดการปรับเทียบเล็กสองจุดที่ถูกแก้ทันที ระบบลงจอดแน่นขึ้น';

  @override
  String get event_landingSimDrill_choice1_text =>
      'ทำเป็นกิจกรรมทั่วยาน — ถ่ายทอดการจำลอง';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'ผู้ตั้งอาณานิคมดูจากทุกจอบนยาน ประสบการณ์ร่วมของการร่อนลงจำลอง — การสั่น เสียงเชียร์ — ผูกลูกเรือเหมือนไม่มีอะไรอื่น';

  @override
  String get event_dysonSphere_title => 'ทรงกลมไดสัน';

  @override
  String get event_dysonSphere_narrative =>
      'เซนเซอร์ตรวจพบโครงสร้างที่เป็นไปไม่ได้ — ทรงกลมไดสันบางส่วนล้อมรอบดาวฤกษ์ไกล เก็บเกี่ยวพลังงานทั้งหมดของมัน ใครก็ตามที่สร้างมันก้าวข้ามทุกสิ่งที่มนุษยชาติเคยจินตนาการ ท่าเรือดูเหมือนเปิดเมื่อเราเข้าใกล้';

  @override
  String get event_dysonSphere_choice0_text => 'จอดและสำรวจโครงสร้าง';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'ภายใน ระบบอัตโนมัติมอบเทคโนโลยีที่ก้าวกระโดดข้ามศตวรรษ วิศวกร 5 คนเสียชีวิตจากกลไกป้องกันก่อนมันจำเจตนาเราได้ หน่วยก่อสร้างถูกสร้างใหม่ด้วยโลหะผสมต่างดาว';

  @override
  String get event_dysonSphere_choice1_text => 'เก็บเกี่ยวพลังงานจากภายนอก';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'เราอาบในกระแสพลังงานล้นของทรงกลม ทุกระบบชาร์จเต็ม ลูกเรือเฝ้ามองอย่างตะลึง';

  @override
  String get event_dysonSphere_choice2_text =>
      'ศึกษาจากระยะปลอดภัยและเดินทางต่อ';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'การสแกนพิสัยไกลเผยหลักการก่อสร้างที่ปฏิวัติความเข้าใจวิศวกรรมของเรา';

  @override
  String get event_nanotechPlague_title => 'โรคระบาดนาโนเทค';

  @override
  String get event_nanotechPlague_narrative =>
      'เมฆนาโนเครื่องจักรอันธพาล เศษซากจากโปรแกรมอาวุธอารยธรรมที่ตายแล้ว แทรกซึมยานผ่านรอยแตกจุลภาคตัวเรือ มันกำลังรื้อระบบที่ไม่สำคัญในระดับโมเลกุล ฝูงแพร่กระจายเร็ว';

  @override
  String get event_nanotechPlague_choice0_text =>
      'EMP — ทำลายทุกอย่างในส่วนที่ได้รับผลกระทบ';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'คลื่นแม่เหล็กไฟฟ้าทำลายนาโนไมต์ แต่ยังทำลายอิเล็กทรอนิกส์ของเราในส่วนนั้น ผู้ตั้งอาณานิคมในเขตระเบิดได้รับบาดเจ็บ';

  @override
  String get event_nanotechPlague_choice1_text =>
      'ระบายส่วนที่ได้รับผลกระทบสู่สุญญากาศ';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'ไม่มีบรรยากาศ นาโนไมต์ช้าลงและตาย แต่ส่วนนั้นสูญเสีย พร้อมเสบียงที่เก็บไว้และคลังวัฒนธรรม';

  @override
  String get event_nanotechPlague_choice2_text =>
      'รีโปรแกรมมัน — เปลี่ยนอาวุธเป็นเครื่องมือ';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'วิศวกรอัจฉริยะถอดรหัสนาโนไมต์ แต่ลูกเรือ 5 คนในส่วนที่ได้รับผลกระทบหนักสุดช่วยไม่ทันแล้ว ฝูงที่ถูกรีโปรแกรมเริ่มซ่อมยานแทนทำลาย';

  @override
  String get event_nanotechPlague_choice3_text =>
      'สละแกน AI ของโพรบเพื่อสร้างฝูงต้าน';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'โปรเซสเซอร์ของโพรบถูกนำมาควบคุมฝูงนาโนไมต์ป้องกัน โรคระบาดถูกยับยั้งด้วยการสูญเสียน้อย';

  @override
  String get event_prematureAwakening_title => 'การตื่นก่อนเวลา';

  @override
  String get event_prematureAwakening_narrative =>
      'ความล้มเหลวลูกโซ่ในห้องไครโอพอดปลุกผู้ตั้งอาณานิคม 200 คนก่อนเวลาหลายทศวรรษ พวกเขาสับสน หวาดกลัว และบริโภคทรัพยากรที่ตั้งใจไว้สำหรับขั้นลงจอด ในหมู่พวกเขามีเด็กที่ไม่เคยรู้จักอะไรนอกจากยาน';

  @override
  String get event_prematureAwakening_choice0_text =>
      'รวมพวกเขาเข้าลูกเรือ — มือมากขึ้น ความหวังมากขึ้น';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'ผู้ตั้งอาณานิคมที่ตื่นกลายเป็นลูกเรือที่มีประสิทธิภาพ 20 คนไม่รอดการละลายกะทันหัน แต่ที่เหลือรวมพลัง ทรัพยากรตึงแต่จิตวิญญาณพุ่งสูง';

  @override
  String get event_prematureAwakening_choice1_text =>
      'พยายามแช่แข็งกลับ — เสี่ยงแต่จำเป็น';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'กระบวนการแช่แข็งกลับไม่สมบูรณ์ ส่วนใหญ่รอด แต่บางคนสูญเสีย ผู้รอดมีแผลทางจิตใจ';

  @override
  String get event_prematureAwakening_choice2_text =>
      'ให้พวกเขามีส่วนของยานเป็นของตัวเอง';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'ผู้ตั้งอาณานิคม 10 คนเสียชีวิตจากภาวะแทรกซ้อนการละลายฉุกเฉิน แต่ที่เหลือก่อตั้งอาณานิคมจิ๋วในยาน พวกเขาพัฒนาวัฒนธรรมและการปกครองเอง ซ้อมสำหรับการตั้งถิ่นฐานบนดาว';

  @override
  String get event_stowawaysAdvanced_title => 'ผู้โดยสารซ่อนเร้น';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'ลึกในห้องสินค้า หลังผนังปลอม หน่วยรักษาความปลอดภัยค้นพบชุมชนซ่อนเร้นทั้งหมด — 80 คนที่ขึ้นยานอย่างผิดกฎหมายก่อนปล่อย พวกเขาอาศัยในผนังยานตลอดการเดินทาง ดูแลสวนและแท็ปพลังงานของตัวเอง';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'ต้อนรับพวกเขา — ผู้ตั้งอาณานิคมเพิ่ม 80 คนเป็นของขวัญ';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'ชุมชนซ่อนเร้นนำทักษะวิศวกรรมอิมโพรไวส์และความเฉลียวฉลาดที่ทำให้ลูกเรือตื่นตะลึง สวนของพวกเขาถูกย้ายไปโดมชีวภาพหลัก';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'กักตัวและแจกจ่ายทรัพยากรที่ขโมยใหม่';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'เสบียงที่กู้คืนเสริมหลายระบบ แต่การกักตัวครอบครัว — รวมถึงเด็ก — หลอกหลอนลูกเรือ';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'เจรจา — พวกเขาเข้าร่วมเท่าเทียมถ้าแบ่งปันเทคโนโลยี';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'เซลล์พลังงานอิมโพรไวส์และเทคนิคไฮโดรโพนิกส์ปรับปรุงประสิทธิภาพยาน การรวมกลุ่มที่ตึงเครียดแต่มีประสิทธิผลเริ่มขึ้น';

  @override
  String get event_alienReservation_title => 'เขตอนุรักษ์ต่างดาว';

  @override
  String get event_alienReservation_narrative =>
      'เราพบเขตอนุรักษ์ธรรมชาติของต่างดาว — พื้นที่อวกาศที่จงใจเพาะดาวเคราะห์ที่อยู่อาศัยได้และปกป้องด้วยผู้พิทักษ์อัตโนมัติ ผู้พิทักษ์สแกนเราและฉายข้อความ: \"คุณตั้งถิ่นฐานได้หนึ่งโลก เลือกอย่างชาญฉลาด รบกวนโลกอื่นและคุณจะถูกขจัด\"';

  @override
  String get event_alienReservation_choice0_text =>
      'รับด้วยความขอบคุณ — หนึ่งโลกคือทั้งหมดที่เราต้องการ';

  @override
  String get event_alienReservation_choice0_outcome =>
      'ผู้พิทักษ์นำเราไปยังโลกที่เตรียมไว้ การสแกนเผยว่ามันเหมาะสมอย่างยิ่งสำหรับชีวิตมนุษย์';

  @override
  String get event_alienReservation_choice1_text =>
      'เจรจาเงื่อนไขที่ดีกว่า — มนุษยชาติต้องการพื้นที่เติบโต';

  @override
  String get event_alienReservation_choice1_outcome =>
      'ผู้พิทักษ์พิจารณาคำร้อง พวกเขาอัปเกรดสแกนเนอร์ด้วยข้อมูลระบบดาวหลายสิบระบบนอกเขตอนุรักษ์';

  @override
  String get event_alienReservation_choice2_text =>
      'ปฏิเสธและจากไป — เราจะไม่ถูกขังกรง';

  @override
  String get event_alienReservation_choice2_outcome =>
      'ลูกเรือถกเถียงหลายวัน เสรีภาพเหนือความปลอดภัย ผู้พิทักษ์อนุญาตให้เราจากไปพร้อมของขวัญ: แผนที่อันตรายใกล้เคียง';

  @override
  String get event_cosmicHorror_title => 'สิ่งที่อยู่ระหว่างดวงดาว';

  @override
  String get event_cosmicHorror_narrative =>
      'บางสิ่งที่กว้างใหญ่และมืดบดบังดวงดาวข้างหน้า — ไม่ใช่เนบิวลา ไม่ใช่หลุมดำ ไม่มีมวล ไม่มีลายเซ็นพลังงาน ไม่มีการแผ่คลื่นแม่เหล็กไฟฟ้า แต่มันอยู่ที่นั่น และมันรับรู้เรา ลูกเรือใกล้ดาดฟ้าสังเกตการณ์ด้านหน้ารายงานความหวาดกลัวท่วมท้น สองคนถูกวางยาสลบ';

  @override
  String get event_cosmicHorror_choice0_text =>
      'ถอยหลังเต็มที่ — หนีออกมาเดี๋ยวนี้';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'ยานเครียดต้านโมเมนตัมของตัวเอง เราหนีได้ แต่ความหวาดกลัวคงอยู่ ผู้ตั้งอาณานิคมบางคนไม่ฟื้นทางจิตใจ';

  @override
  String get event_cosmicHorror_choice1_text =>
      'ปิดผนึกดาดฟ้าสังเกตการณ์และฝ่าไป';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'สามวันของการบินตาบอดผ่านความมืด เมื่อดวงดาวกลับมา ลูกเรือร้องไห้ด้วยความโล่งใจ ตัวเรือมีลวดลายแกะสลักที่ไม่มีใครอธิบายได้';

  @override
  String get event_cosmicHorror_choice2_text => 'พยายามสื่อสาร';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'สิ่งมีชีวิตตอบ — ไม่ใช่ด้วยคำ แต่ด้วยความรู้ที่กดเข้าสู่จิตลูกเรือโดยตรง แผนที่ดวงดาว ฟิสิกส์ ความจริงเกี่ยวกับจักรวาล ครึ่งหนึ่งของลูกเรือได้รับแสงสว่าง อีกครึ่งแตกสลาย';

  @override
  String get event_cosmicHorror_choice3_text => 'ถวายโพรบเป็นเครื่องบรรณาการ';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'โพรบล่องลอยเข้าสู่ความมืดและหายไป สิ่งมีชีวิตหดตัวเล็กน้อย ราวกับพอใจ ทางเดินของเราเปิด';

  @override
  String get event_meteorGlancingHit_title => 'อุกกาบาตเฉียดชน';

  @override
  String get event_meteorGlancingHit_narrative =>
      'อุกกาบาตขนาดก้อนหินเฉียดด้านกราบซ้ายของตัวเรือในมุมต่ำ แรงกระแทกฉีกแผ่นเกราะนอก 3 เมตรและส่งคลื่นกระแทกทั่วโครงสร้าง สัญญาณเตือนควบคุมความเสียหายกรีดทุกดาดฟ้า';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'เบี่ยงบอทซ่อมทั้งหมดไปที่รอยรั่วทันที';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'บอทอุดความเสียหายที่เลวร้ายที่สุด แต่การดึงทรัพยากรเทคโนโลยีอย่างเร่งด่วนทำให้ระบบรองขาดการดูแล';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'ลดแรงขับและให้ลูกเรือปะด้วยมือ';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'ช้าลง แต่ลูกเรือทำงานได้ดี นำทางเสียหายจากช่วงแรงขับที่ลดขณะเราลอยเคว้ง';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'สละเกราะตัวเรือโพรบเป็นวัสดุปะ';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'โพรบถูกรื้อเอาชิ้นส่วน แผ่นปะรับไหวและความสมบูรณ์ตัวเรือถูกรักษาโดยแลกกับยานลาดตระเวนน้อยลงหนึ่งลำ';

  @override
  String get event_meteorDirectImpact_title => 'อุกกาบาตชนตรง';

  @override
  String get event_meteorDirectImpact_narrative =>
      'อุกกาบาตเหล็กครึ่งตันทะลุห้องสินค้าด้านหน้าด้วยความเร็วสัมพัทธ์เกิน 40 กม./วินาที ลูกเรือ 2 คนในทางเดินข้างเคียงหายไป ห้องสินค้าเปิดสู่สุญญากาศ';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'ปิดผนึกห้องสินค้าและค้นหาผู้รอดชีวิตทีหลัง';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'ห้องถูกปิดผนึกใน 90 วินาที ลูกเรือทั้งสองอพยพแล้ว — อย่างหวุดหวิด ตัวเรือมีรอยแผลถาวร';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'ปฏิบัติการกู้ภัยเต็มรูปแบบก่อนปิดผนึก';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'ผู้รอดชีวิต 1 คนถูกดึงออกมา การสัมผัสที่ยืดออกทำให้ความเสียหายโครงสร้างเลวร้ายลงและสิ้นเปลืองสำรองเทคโนโลยี';

  @override
  String get event_meteorDebrisField_title => 'ทุ่งเศษซาก — ฝนเศษหิน';

  @override
  String get event_meteorDebrisField_narrative =>
      'เซนเซอร์พิสัยไกลไม่สามารถตรวจจับทุ่งเศษอุกกาบาตที่กระจายจนเราอยู่ข้างในแล้ว หินขนาดกำปั้นหลายร้อยก้อนกระแทกตัวเรือแบบสุ่ม ทุกการชนคือล็อตเตอรี';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'ยกเกราะและฝ่าไปเต็มความเร็ว';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'เกราะดูดซับส่วนใหญ่ แต่ปริมาณแรงกระแทกท่วมท้น ตัวเรือและระบบเกราะต่างเสื่อมสภาพ';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'ดับเครื่องยนต์และลอย — ลดพื้นที่หน้าตัด';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      '6 ชั่วโมงที่ตึงเครียดของความเงียบ นำทางเสียจากการลอยไร้พลังงาน แต่ตัวเรือผ่านมาด้วยแรงกระแทกน้อยกว่ามาก';

  @override
  String get event_meteorDebrisField_choice2_text => 'ปล่อยโพรบเป็นโล่ด้านหน้า';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'โพรบรับแรงถล่มส่วนใหญ่ ยานลอดผ่านในเงาของมันด้วยรอยขีดข่วนเล็กน้อย';

  @override
  String get event_meteorShowerDense_title => 'ฝนอุกกาบาตหนาแน่นไม่คาดคิด';

  @override
  String get event_meteorShowerDense_narrative =>
      'ดาวหางพเนจรสลายตัวที่ไหนสักแห่งข้างหน้า และเราบินตรงเข้าหัวใจของกระแสเศษซากที่ตามหลัง อาร์เรย์สแกนเนอร์ถูกกระหน่ำด้วยเศษชิ้นส่วน และตัวเรือนเซนเซอร์ระบบลงจอดโดนตรงแล้ว';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'ปกป้องระบบลงจอด — หมุนยาน';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'การหมุนปกป้องระบบลงจอด แต่เปิดอาร์เรย์สแกนเนอร์บรรยากาศรับแรงถล่ม';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'ปกป้องอาร์เรย์สแกนเนอร์ — มันทดแทนไม่ได้';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'ธนาคารสแกนเนอร์รอดเป็นส่วนใหญ่ ระบบลงจอดโดนสะเก็ดปานกลางที่เราต้องอยู่ด้วย';

  @override
  String get event_solarEmpBurst_title => 'EMP — ต้นกำเนิดจากดาว';

  @override
  String get event_solarEmpBurst_narrative =>
      'เศษดาวฤกษ์ขนาดเล็กที่เราผ่านในระยะวันแสงปล่อยคลื่นแม่เหล็กไฟฟ้าเฉพาะจุด วงจรทุกตัวที่ไม่มีเกราะบนยานเสี่ยง เรามีไม่กี่วินาทีตัดสินใจว่าจะปกป้องอะไร';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'ส่งการป้องกันไฟกระชากทั้งหมดไปนำทางและระบบช่วยชีวิต';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'นำทางและระบบช่วยชีวิตรอด ชุดสแกนเนอร์และห้องเทคโนโลยีดูดซับพัลส์โดยไม่มีเกราะ — ทั้งสองเสียหายหนัก';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'ปกป้องอาร์เรย์สแกนเนอร์และห้องเทคโนโลยี';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'ระบบวิทยาศาสตร์และวิศวกรรมถูกรักษา นำทางขัดข้องหลายชั่วโมงขณะวงจรค่อยๆ ฟื้น';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'ปิดทุกอย่างแล้วรีสตาร์ทหลังพัลส์';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'การสตาร์ทเย็นทรมาน — 12 ชั่วโมงของการรีบูตด้วยมือ แต่ไม่มีระบบใดถูกทำลายเกินกู้คืน';

  @override
  String get event_solarRadiationWave_title => 'คลื่นรังสี — ระดับ 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'การระเบิดรังสีสุริยะที่รุนแรงเกินคาดกวาดผ่านดาดฟ้ากลางของยาน ห้องไครโอพอดอยู่ในเส้นทางรังสี ผู้ตั้งอาณานิคมในสภาพแขวนลอยไม่มีการป้องกันตามธรรมชาติต่อรังสีแข็งที่ปริมาณนี้';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'ท่วมห้องไครโอพอดด้วยสารหล่อเย็นเป็นเกราะรังสี';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'สารหล่อเย็นดูดซับรังสีส่วนใหญ่ ไครโอพอดรอด แต่ระบบสารหล่อเย็นเสื่อมบางส่วน 15 คนในพอดที่ได้รับผลกระทบหนักสุดไม่รอด';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'ระบายบรรยากาศดาดฟ้านอกเพื่อสร้างบัฟเฟอร์สุญญากาศ';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'ชั้นสุญญากาศลดรังสีที่ทะลุผ่านอย่างมีนัยสำคัญ ผู้ตั้งอาณานิคม 20 คนในพอดที่ใกล้ส่วนที่ระบายได้รับรังสีถึงตาย ความเครียดตัวเรือจากความดันต่างหลีกเลี่ยงไม่ได้';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'เปลี่ยนเส้นทางพลังงานไปตัวเบี่ยงแม่เหล็ก';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'ตัวเบี่ยงลดรังสีสองในสาม ผู้ตั้งอาณานิคม 8 คนได้รับปริมาณรังสีถึงตายผ่านช่องว่างในตัวเบี่ยง การดึงพลังงานถล่มห้องเทคโนโลยีและทำให้นำทางทำงานบนพลังงานน้อยที่สุด';

  @override
  String get event_coronalMassEjection_title =>
      'การพ่นมวลสารโคโรนา — เต็มกำลัง';

  @override
  String get event_coronalMassEjection_narrative =>
      'การพ่นมวลสารโคโรนาขนาดไม่เคยมีมาก่อนกำลังไล่ตามเราจากด้านหลัง เมฆพลาสมาจะห่อหุ้มยานภายในชั่วโมง เกราะของเราไม่ได้ออกแบบสำหรับเหตุการณ์ระดับนี้ ไม่มีทางเลือกที่สะอาด';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'วิ่งหนี — เร่งเครื่อง 120%';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'เราได้ระยะห่างพอลดการสัมผัส เครื่องยนต์ร้อนจัดและคอมพิวเตอร์นำทางเตือนความเครียดโครงสร้างเกินทั่วทุกด้าน';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'หลบหลังเงาแม่เหล็กของดาวเคราะห์น้อยใกล้เคียง';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'สนามของดาวเคราะห์น้อยเบี่ยงมวลสารส่วนใหญ่ การนำทางใกล้วัตถุที่ไม่มีในแผนที่ขีดข่วนตัวเรือและสร้างความเครียดเซนเซอร์ระบบลงจอด';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'รังสีคอสมิก — สแกนเนอร์รบกวน';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'การระเบิดรังสีคอสมิกพลังงานสูงยิ่งทำให้อิเล็กทรอนิกส์สแกนเนอร์ทั้งหมดเต็มไปด้วยสัญญาณรบกวน อาร์เรย์แร่วิทยาและแรงโน้มถ่วงส่งข้อมูลเหลวไหล การปรับเทียบใหม่ต้องใช้เวลาที่เราอาจไม่มี';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'รอบปรับเทียบเต็มรูปแบบ — ปิดยานชั่วคราว';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'สแกนเนอร์ทั้งหมดกลับมาสะอาดหลัง 4 ชั่วโมงของการปรับเทียบอย่างพิถีพิถัน นำทางเสียหายจากการรับรู้สถานการณ์ที่ลดลงระหว่างช่วงดับ';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'ปะเฉพาะอาร์เรย์สำคัญที่สุด — ปล่อยที่เหลือมีสัญญาณรบกวน';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'สแกนเนอร์แรงโน้มถ่วงและสัญญาณชีพกลับมา อาร์เรย์แร่ธาตุและอุณหภูมิยังเสื่อมสภาพไม่มีกำหนด';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'สละฮาร์ดแวร์เทเลเมทรีโพรบเป็นชิ้นส่วนทดแทน';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'การรื้อแพ็คเกจเซนเซอร์โพรบให้ชิ้นส่วนที่จำเป็นในการกู้ชุดสแกนเนอร์โดยไม่ต้องปรับเทียบนาน';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'รังสีคอสมิก — ผู้ตั้งอาณานิคมได้รับรังสี';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'ฝนรังสีคอสมิกรองทะลุเกราะไครโอพอดในห้อง 6 ผู้ตั้งอาณานิคมในสภาพแขวนลอยได้รับความเสียหาย DNA สะสมจากรังสีไอออไนซ์ หากไม่แทรกแซง กลไกซ่อมเซลล์จะล้มเหลวในพอดที่ได้รับผลกระทบ';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'ละลายฉุกเฉิน — นำผู้ตั้งอาณานิคมที่ได้รับผลกระทบมาตื่น';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'ผู้ตั้งอาณานิคม 200 คนถูกปลุกก่อนเวลา 40 คนที่มีความเสียหาย DNA รุนแรงที่สุดไม่ตอบสนองต่อการรักษา ทีมแพทย์ทำเท่าที่ทำได้สำหรับที่เหลือ';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'เปลี่ยนเส้นทางแผ่นเกราะตัวเรือเพื่อปกป้องห้อง 6 — ต้นทุนโครงสร้าง';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'อาณานิคมรอด แต่การรื้อเกราะจากส่วนหนึ่งทำให้ยานอ่อนแอทางโครงสร้างในโซนนั้น';

  @override
  String get event_coolantLeak_title => 'ท่อสารหล่อเย็นแตก';

  @override
  String get event_coolantLeak_narrative =>
      'ท่อสารหล่อเย็นหลักแตกหลังผนังเครื่องปฏิกรณ์ สารไครโอเจนิกร้อนจัดพ่นทั่วจุดเชื่อมต่อที่มีท่อร้อยสายห้องเทคโนโลยีสำคัญ อุณหภูมิเครื่องปฏิกรณ์กำลังสูงขึ้น';

  @override
  String get event_coolantLeak_choice0_text =>
      'ปิดเครื่องปฏิกรณ์แล้วปล่อยให้เย็น — ยอมรับไฟดับ';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'การปิดอย่างควบคุมป้องกันหายนะ 12 ชั่วโมงของระบบช่วยชีวิตด้วยแบตเตอรีน่าสะพรึง และระบบรีสตาร์ทไม่สมบูรณ์';

  @override
  String get event_coolantLeak_choice1_text =>
      'ส่งทีมควบคุมความเสียหายเข้าไป — เสี่ยงลูกเรือ';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'ทีมอุดรอยรั่วใน 40 นาที ลูกเรือ 1 คนเสียชีวิตจากสารหล่อเย็นร้อนจัด การซ่อมแน่นหนา';

  @override
  String get event_coolantLeak_choice2_text =>
      'เบี่ยงสารหล่อเย็นจากห้องไครโอพอดเป็นเสบียงฉุกเฉิน';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'เครื่องปฏิกรณ์เสถียร ห้องไครโอพอดทำงานร้อนกว่าเกณฑ์ปลอดภัย 6 ชั่วโมง — ความเสียหายระดับเซลล์เล็กน้อยแต่เป็นจริงสะสม';

  @override
  String get event_powerGridFailure_title => 'กริดไฟฟ้าหลักล้มเหลว';

  @override
  String get event_powerGridFailure_narrative =>
      'ความผิดพลาดลูกโซ่ตัดกริดไฟฟ้าหลัก ระบบสำรองค้ำจุนระบบช่วยชีวิตและความร้อนไครโอพอด แต่นำทาง สแกนเนอร์ และห้องก่อสร้างมืดทั้งหมด ทุกนาทีที่ออฟไลน์เสียความแม่นยำเส้นทาง';

  @override
  String get event_powerGridFailure_choice0_text =>
      'กู้นำทางและสแกนเนอร์ก่อน — ยอมรับห้องก่อสร้างหยุดนาน';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'นำทางและสแกนเนอร์กลับใน 2 ชั่วโมง ห้องก่อสร้างพลาดรอบบำรุงรักษาสำคัญ';

  @override
  String get event_powerGridFailure_choice1_text =>
      'กู้หน่วยก่อสร้างก่อน — ใช้มันเร่งการซ่อม';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'หน่วยก่อสร้างเปลี่ยนเส้นทางไฟอย่างมีประสิทธิภาพ กริดกู้คืนเร็วขึ้น แต่นำทางเบี่ยงมากระหว่างช่วงดับที่ยืดออก';

  @override
  String get event_lifeSupportGlitch_title => 'ระบบช่วยชีวิตขัดข้องลูกโซ่';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'AI จัดการระบบช่วยชีวิตเข้าสู่ลูปข้อผิดพลาด หมุนรอบกรอง CO2 อย่างคาดเดาไม่ได้ ระดับ CO2 ทั่วดาดฟ้าที่มีคนผันผวน ลูกเรือปวดหัว บางคนหมดสติแล้ว';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'รีเซ็ตฮาร์ดของ AI ระบบช่วยชีวิต';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'การรีเซ็ตล้างลูป แต่การทำงานด้วยมือดำเนินต่อ 10 ชั่วโมง ลูกเรือ 3 คนเสียชีวิตจาก CO₂ สะสมก่อนระดับปกติ';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'แพทช์ลูปซอฟต์แวร์ — ช้ากว่าแต่ปลอดภัยกว่า';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'ทีมซอฟต์แวร์แยกและแพทช์ข้อผิดพลาดใน 6 ชั่วโมงที่ตึงเครียด ระดับ CO₂ ค่อยๆ ปกติ ไม่ต้องรีเซ็ตฮาร์ด';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'อพยพดาดฟ้าที่ได้รับผลกระทบและใช้ระบบช่วยชีวิตขั้นต่ำ';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'ผู้ตั้งอาณานิคม 2 คนสูญเสียในความสับสนของการอพยพ ระบบปกติหลัง AI ถูกรีสตาร์ทเย็น';

  @override
  String get event_waterRecyclerBreakdown_title => 'เครื่องรีไซเคิลน้ำเสีย';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'เครื่องกู้คืนน้ำหลักจับตัว เครื่องสำรองทำงานเต็มกำลังแล้ว หากไม่แทรกแซง ลูกเรือจะอยู่บนเสบียงฉุกเฉินใน 48 ชั่วโมง และสารหล่อเย็นไครโอพอดจะถูกกระทบใน 72';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'ดึงช่างเทคนิคทุกคนมาสร้างเครื่องกู้คืนใหม่';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'เครื่องถูกสร้างใหม่ใน 30 ชั่วโมง ลูกเรือ 4 คนที่อ่อนแอแล้วไม่รอดการขาดน้ำ';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'เบี่ยงสำรองสารหล่อเย็นไครโอพอดเป็นน้ำดื่มฉุกเฉิน';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'ลูกเรือมีน้ำ แต่ผู้ตั้งอาณานิคม 8 คนในพอดที่ร้อนได้รับความเสียหายระดับเซลล์ถาวร ขอบเขตสารหล่อเย็นไครโอพอดแคบลงอันตราย';

  @override
  String get event_navComputerReboot_title => 'รีบูตฉุกเฉินคอมพิวเตอร์นำทาง';

  @override
  String get event_navComputerReboot_narrative =>
      'คอมพิวเตอร์นำทางค้างกลางการแก้ไขเส้นทาง ปล่อยให้ยานหมุนช้าโดยไม่ควบคุม ทุกวินาทีที่หมุนโดยไม่แก้ไขเพิ่มข้อผิดพลาดเส้นทาง การรีบูตเต็มรูปแบบเป็นวิธีเดียว';

  @override
  String get event_navComputerReboot_choice0_text =>
      'รีบูตทันที — ยอมรับช่วงดับเต็ม';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      '4 ชั่วโมงบินตาบอดขณะระบบโหลด การหมุนถูกยับยั้ง แต่ข้อผิดพลาดเส้นทางสูง';

  @override
  String get event_navComputerReboot_choice1_text =>
      'ใช้เครื่องขับดันด้วยมือหยุดการหมุนก่อน';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'การบินด้วยทักษะหยุดการหมุนก่อนรีบูต นำทางกลับมาด้วยข้อผิดพลาดเส้นทางน้อยกว่า แต่การเผาด้วยมือสร้างความเครียดตัวเรือ';

  @override
  String get event_navComputerReboot_choice2_text =>
      'ป้อนเทเลเมทรีโพรบเข้าหน่วยนำทางสำรอง';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'ข้อมูลเฉื่อยของโพรบให้จุดอ้างอิงเพียงพอให้หน่วยสำรองรักษาเส้นทาง นำทางหลักรีบูตอย่างสะอาด';

  @override
  String get event_crewAirlocked_title => 'ลูกเรือที่ประตูอากาศ';

  @override
  String get event_crewAirlocked_narrative =>
      'ผู้ตั้งอาณานิคม — ที่ถูกปลุกเพื่อสังเกตทางการแพทย์ — ปิดกั้นตัวเองในประตูอากาศภายนอกและกำลังเปิดประตูด้านนอก เธอไม่ตอบการสื่อสาร ภาระทางจิตของอวกาศลึกทำลายบางอย่างในตัวเธอ';

  @override
  String get event_crewAirlocked_choice0_text =>
      'แทรกแซงประตูอากาศจากระยะไกล — บังคับปิดผนึก';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'ประตูถูกล็อกก่อนเธอเปิดเสร็จ เธอถูกวางยาสลบและส่งกลับแพทย์ ลูกเรือสั่นสะเทือนแต่รวมเป็นหนึ่ง';

  @override
  String get event_crewAirlocked_choice1_text => 'ส่งที่ปรึกษาเข้าไปพูดคุย';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'หลัง 3 ชั่วโมงที่สิ้นหวัง ที่ปรึกษาพาเธอออกมามีชีวิต เหตุการณ์จุดประกายวิกฤตสุขภาพจิตที่กว้างขึ้นบนดาดฟ้าที่มีคน';

  @override
  String get event_crewAirlocked_choice2_text =>
      'ปิดผนึกทางเดินและปล่อยให้เหตุการณ์คลี่คลาย';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'ประตูอากาศเปิด การสูญเสียถูกบันทึก ลูกเรือที่เหลือแบกน้ำหนักของมันหลายเดือน';

  @override
  String get event_crewCryopodSabotage_title => 'ก่อวินาศกรรมห้องไครโอพอด';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'กล้องวงจรปิดเผยว่าลูกเรือคนหนึ่ง — ที่ตื่นมา 3 เดือนสำหรับรอบหมุนเวียนตามปกติ — กำลังปิดอุปกรณ์ทำความร้อนไครโอพอดในห้อง 4 อย่างเป็นระบบ เมื่อเผชิญหน้า เขากรีดร้องว่าผู้ตั้งอาณานิคมเป็นปรสิตที่บริโภคทรัพยากรของลูกเรือที่ตื่น';

  @override
  String get event_crewCryopodSabotage_choice0_text => 'จับกุมและแยกตัวทันที';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'เขาถูกควบคุม พอด 40 ตัวถูกทำลายก่อนสัญญาณเตือน ทีมซ่อมฉุกเฉินช่วยส่วนใหญ่ แต่ไม่ทั้งหมด';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'เจรจา — ฟังความไม่พอใจของเขาก่อนลงมือ';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'การเจรจาเผยวิกฤตขวัญกำลังใจที่ลึกกว่า เขายอมถอย แต่พอด 60 ตัวถูกแก้ไขเมื่อเขายอม';

  @override
  String get event_crewSupplyHoarder_title => 'พบการสะสมเสบียง';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'การตรวจสอบสินค้าเผยว่ากลุ่มลูกเรือเล็กๆ เบี่ยงเวชภัณฑ์ อาหาร และชิ้นส่วนเทคโนโลยีสำรองอย่างเป็นระบบเข้าคลังซ่อน เหตุผล: พวกเขาไม่เชื่อว่าภารกิจจะสำเร็จ และเตรียมการเดินทางกลับ';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'ยึดทุกอย่างและตำหนิกลุ่มอย่างเปิดเผย';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'คลังถูกกู้คืนเกือบทั้งหมด ความไว้ใจในลูกเรือแตกร้าวรุนแรง ผลิตภาพตกหลายสัปดาห์';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'ย้ายตำแหน่งเงียบๆ — อย่าทำให้เป็นเรื่องใหญ่';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'สถานการณ์คลี่คลายโดยไม่ตื่นตระหนก เสบียงบางส่วนกู้คืนไม่ได้ และความสิ้นหวังที่ซ่อนอยู่ไม่เคยถูกแก้ไขอย่างเหมาะสม';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'ให้ลูกเรือตัดสิน — ศาลประชาธิปไตย';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'กระบวนการศาลคืนความรู้สึกยุติธรรมชุมชน ผลกระทบขวัญกำลังใจจากเรื่องอื้อฉาวถูกชดเชยด้วยการตัดสินใจร่วมกัน';

  @override
  String get event_crewMutinyAttempt_title => 'กบฏ — ห้องเครื่องถูกยึด';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'กลุ่มลูกเรือ 19 คนล็อกห้องเครื่องและเรียกร้องให้โหวตหันยานกลับ พวกเขาปิดแผงควบคุมฉุกเฉิน ลูกเรือที่เหลือเฝ้ามองบนจอ รอคำสั่ง';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'เจรจา — ให้พวกเขาโหวตภารกิจจริง';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'การโหวตจัดขึ้น ภารกิจดำเนินต่อด้วยคะแนนเสียงที่หวุดหวิด กลุ่มยอมถอย แต่บาดแผลทางวัฒนธรรมลึก';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'ตัดไฟห้องเครื่องและยึดกลับด้วยกำลัง';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'รักษาความปลอดภัยยึดคืนใน 4 ชั่วโมง บาดเจ็บ 3 คน หัวหน้าถูกกักตัว นำทางอยู่ในโหมดด้วยมือตลอดและเบี่ยงมาก';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'ท่วมห้องเครื่องด้วยแก๊สนอนหลับจากระบบระบายอากาศ';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'แก๊สกระจาย กลุ่มตื่นขึ้นในคุกโดยไม่บาดเจ็บ ลูกเรือรู้สึกไม่สบายใจที่ผู้บัญชาการใช้ระบบช่วยชีวิตเป็นอาวุธเร็วเพียงใด';

  @override
  String get event_hullFatigueStress_title =>
      'ความล้าตัวเรือ — พบรอยแตกจากความเครียด';

  @override
  String get event_hullFatigueStress_narrative =>
      'สแกนความสมบูรณ์โครงสร้างเผยเครือข่ายรอยแตกจุลภาคแผ่ผ่านกระดูกสันหลังของยาน — ความเสียหายสะสมจากวัฏจักรความร้อนและการชนจุลภาคหลายปี รอยแตกยังไม่วิกฤต แต่กำลังแผ่ขยาย';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'ทีมเชื่อมฉุกเฉิน — ทำงานเป็นกะจนปิดผนึก';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'หลายสัปดาห์ของงานซ่อมที่ทรมาน รอยแตกถูกควบคุม แต่ห้องเทคโนโลยีหมดแรงและขวัญกำลังใจตกจากการทำงานไม่หยุด';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'ลดแรงขับเพื่อลดความเครียดโครงสร้าง — ยอมเดินทางช้าลง';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'แรงขับที่ต่ำลงหยุดการแผ่ขยายรอยแตก แต่ไม่รักษาความเสียหายที่มี ความแม่นยำนำทางเสียจากโปรไฟล์แรงขับที่เปลี่ยน';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'ใช้บอทก่อสร้างวางแถบเสริมคอมโพสิต';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'หน่วยก่อสร้างทำงานเยี่ยม กระดูกสันหลังถูกเสริมเกินข้อกำหนดเดิม ห้องก่อสร้างหมดแรงแต่มีประสิทธิผล';

  @override
  String get event_hullPressureAnomaly_title => 'ความผิดปกติความดันภายใน';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'ห้องกลางยาน 3 ห้องบันทึกความดันภายในต่างระดับที่สอดคล้องกับการเปลี่ยนรูปโครงสร้างระดับจุลภาค ถ้าผนังโค้งเข้า การระเบิดอาจเกิดโดยไม่มีสัญญาณเตือน';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'อพยพและปิดผนึกห้องทันที';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'ห้องถูกปิดผนึก การตรวจสอบละเอียดยืนยันการเปลี่ยนรูปผนัง พื้นที่ที่สูญเสียรบกวนปฏิบัติการและวัฒนธรรมเสียจากสภาพแออัด';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'ระบายห้องสู่สุญญากาศ — หยุดความดันต่าง';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'การระบายยับยั้งการเปลี่ยนรูป ความเสียหายโครงสร้างจำกัด แต่ 3 ส่วนของยานไม่สามารถอยู่อาศัยได้ถาวร';

  @override
  String get event_commsArrayFailure_title => 'อาร์เรย์สื่อสารล้มเหลว';

  @override
  String get event_commsArrayFailure_narrative =>
      'อาร์เรย์สื่อสารพิสัยไกลหลักเงียบ ข้อความสุดท้ายจากโลกได้รับ 11 เดือนก่อน และตอนนี้แม้แต่สัญญาณพาหะก็หายไป การวินิจฉัยภายในบ่งชี้กลไกจัดตำแหน่งจานค้างในความเย็น';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'ส่งทีม EVA จัดตำแหน่งจานด้วยมือ';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA ใช้เวลา 9 ชั่วโมงในอวกาศเปิด จานกลับมา ลูกเรือ 1 คนชุด EVA รั่วระหว่างกลับเข้า — เฉียดตายที่ทำให้ทุกคนสะเทือนใจ';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'เปลี่ยนเส้นทางผ่านอาร์เรย์สแกนเนอร์วิทยาศาสตร์เป็นตัวส่งสำรอง';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'อาร์เรย์วิทยาศาสตร์ไม่ได้ปรับสำหรับการสื่อสาร สัญญาณอ่อนและไม่เชื่อถือได้ และการเปลี่ยนลดขีดความสามารถสแกนเนอร์';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'ยอมรับความเงียบ — เน้นทรัพยากรไปที่ภารกิจข้างหน้า';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'ลูกเรือรับมือกับการสูญเสียการติดต่อกับโลกในทางต่างๆ สำหรับบางคนเป็นอิสระ สำหรับคนอื่นเป็นหายนะ';

  @override
  String get event_fuelLineRupture_title => 'ท่อเชื้อเพลิงแตก';

  @override
  String get event_fuelLineRupture_narrative =>
      'รอยแตกผลึกในท่อเชื้อเพลิง 7-B กำลังระบายพลาสมาขับเคลื่อนเข้าช่องบำรุงรักษา รอยรั่วเล็กแต่เร่งตัว หากไม่ควบคุม จะกระทบประสิทธิภาพนำทางและความสมบูรณ์โครงสร้างท้ายยาน';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'ตัดท่อและทำงานบนเชื้อเพลิงลดลง';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'ท่อถูกปิดอย่างสะอาด เราสูญเสียประสิทธิภาพขับเคลื่อน 15% ถาวร ซึ่งลดความแม่นยำนำทางตลอดการเดินทาง';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'พยายามซ่อมร้อน — อุดท่อภายใต้แรงดันมีชีวิต';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'ทีมซ่อมสำเร็จ อย่างหวุดหวิด ท่อรับไหว แม้ไม่สมบูรณ์ แผ่นเกราะท้ายยานมีรอยไหม้จากความร้อน';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'ระบายท่อโดยใช้ถังเครื่องขับดันโพรบเป็นที่เก็บล้น';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'โพรบถูกระบายและใช้เป็นอ่างเก็บเชื้อเพลิงชั่วคราว ท่อถูกระบายและซ่อมอย่างปลอดภัยโดยไม่มีแรงดัน';

  @override
  String get event_cryopodCascadeWarning_title =>
      'คำเตือนอุณหภูมิไครโอพอดลูกโซ่';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'อุณหภูมิไครโอพอดห้อง 2 กำลังสูงขึ้นในรูปแบบที่สอดคล้องกับลูกโซ่ความร้อนลุกลาม ถ้าลูกโซ่ถึงห้อง 3 จะกระตุ้นการละลายฉุกเฉินอัตโนมัติของผู้ตั้งอาณานิคมกว่า 300 คน ยานรองรับผู้โดยสารตื่นจำนวนนั้นพร้อมกันไม่ได้';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'ทิ้งสำรองสารหล่อเย็นเพื่อยับยั้งลูกโซ่';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'สารหล่อเย็นหยุดลูกโซ่ที่ชายแดนห้อง 2 ผู้ตั้งอาณานิคม 80 คนในห้อง 2 ได้รับความเสียหายจากอุณหภูมิพุ่ง';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'ละลายควบคุมห้อง 2 ก่อนลูกโซ่บังคับละลายไม่ควบคุม';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'การละลายควบคุมเป็นระเบียบแต่ใส่ผู้ตั้งอาณานิคม 140 คนเข้ายานที่ไม่เตรียม ระบบช่วยชีวิตตึง วัฒนธรรมเสื่อมภายใต้ความแออัด';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'ใช้บอทก่อสร้างสร้างผนังกั้นความร้อนฉุกเฉิน';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'หน่วยก่อสร้างตั้งกำแพงกันความร้อนทันเวลา ลูกโซ่หยุดสนิท ห้องก่อสร้างหมดแรงจากปฏิบัติการฉุกเฉิน';

  @override
  String get event_cryopodSealDegradation_title =>
      'ซีลไครโอพอดเสื่อม — ทั่วระบบ';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'การตรวจตามปกติเผยว่าล็อตผลิตซีลไครโอพอดเสื่อมเร็วกว่าที่คาด 3 เท่า พอดที่ได้รับผลกระทบ — กว่า 400 ตัว — จะเริ่มสูญเสียความสมบูรณ์บรรยากาศภายใน 6 เดือนหากไม่เปลี่ยน';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'ผลิตซีลทดแทนจากสต็อกวัตถุดิบ';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'หน่วยก่อสร้างผลิตซีลทดแทนใน 8 สัปดาห์ สำรองวัตถุดิบลดลงมาก';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'รวมผู้ตั้งอาณานิคม — ย้ายไปพอดที่ซีลดี';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'การรวมได้ผล แต่บางพอดแออัดเกิน ประสิทธิภาพไครโอเจนิกลดลงและสุขภาพผู้ตั้งอาณานิคมระยะยาวถูกกระทบ';

  @override
  String get event_oxygenScrubberFailure_title =>
      'เครื่องกรองออกซิเจนล้มเหลว — วิกฤต';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'ธนาคารเครื่องกรองออกซิเจนหลักล้มเหลวสมบูรณ์ ความเข้มข้น CO₂ บนดาดฟ้าที่มีคนสูงขึ้นสู่ระดับอันตราย เครื่องกรองสำรองรับได้ประมาณ 40% ของภาระ ทุกนาทีที่ไม่ทำอะไรเสียชีวิต';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'จำศีลฉุกเฉิน — ส่งลูกเรือกลับเข้าสภาพแขวนลอยทันที';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'ลูกเรือถูกรีบส่งเข้าสภาพแขวนลอยชั่วคราว ระดับ CO₂ เสถียรด้วยสิ่งมีชีวิตที่เผาผลาญน้อยลง เครื่องกรองถูกซ่อมโดยระบบอัตโนมัติในสัปดาห์ถัดไป';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'รื้อชิ้นส่วนจากอาร์เรย์สแกนเนอร์เพื่อสร้างเครื่องกรองใหม่';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'เครื่องกรองถูกสร้างใหม่ใน 11 ชั่วโมงที่ตึงเครียด ลูกเรือทุกคนรอด แม้บางคนแสดงอาการขาดออกซิเจนเล็กน้อย ชุดสแกนเนอร์เสื่อมถาวร';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'ระบายบรรยากาศที่มี CO₂ สูงแล้วเติมจากถังออกซิเจนฉุกเฉิน';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'การระบายทำให้บรรยากาศสะอาดทันที สำรอง O₂ ฉุกเฉินลดลงมาก ถ้าเกิดความล้มเหลวอีกครั้ง ไม่มีขอบเหลือ';

  @override
  String get event_deadAlienArtifact_title => 'นักเดินทางเงียบ';

  @override
  String get event_deadAlienArtifact_narrative =>
      'สแกนเนอร์พิสัยไกลจับยานลอยเคว้ง — การออกแบบต่างดาว มืด ไม่มีพลังงาน ทีมขึ้นเรือพบผู้โดยสารคนเดียว: สิ่งมีชีวิตคล้ายสัตว์เลื้อยคลานรัดอยู่ในที่นั่งนักบิน ตายมานาน กรงเล็บยังกุมอุปกรณ์ผลึกที่เต้นด้วยแสงจาง บันทึกของยานยังสมบูรณ์แต่เข้ารหัส สิ่งที่ฆ่านักเดินทางคนนี้ไม่ใช่ความรุนแรง — สีหน้าที่แข็งตัวบนใบหน้าเป็นความเหนื่อยล้า ไม่ใช่ความกลัว มันตายขณะเอื้อมหาบางสิ่งที่ไม่เคยพบ';

  @override
  String get event_deadAlienArtifact_choice0_text => 'เอาอุปกรณ์ผลึกมาศึกษา';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'อุปกรณ์เชื่อมต่อกับระบบเทคโนโลยีในทางที่วิศวกรแทบเข้าใจไม่ได้ มันดูเหมือนคอมพิวเตอร์นำทางที่ซับซ้อนอย่างพิเศษ แผนที่ดวงดาวท่วมจอ — รวมข้อมูลดาวเคราะห์ที่เรายังไม่ถึง';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'ถอดรหัสบันทึกยาน — เรียนรู้สิ่งที่มันรู้';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'หลายวันของงานให้การแปลบางส่วน เอเลียนเป็นนักสำรวจ จัดหมวดหมู่โลกที่อยู่อาศัยได้สำหรับอารยธรรมที่ล่มสลายหลายศตวรรษก่อน บันทึกสุดท้ายอธิบายดาวเคราะห์ที่มีศักยภาพอันน่าทึ่ง — และพิกัดอยู่ในระยะเรา คลังวัฒนธรรมดูดซับทุกอย่าง: บทกวีต่างดาว แผนที่ดวงดาว ข้อความสุดท้ายถึงครอบครัวที่ไม่มีอยู่แล้ว';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'กู้ซากยานทั้งลำเอาชิ้นส่วน';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'ทีมขึ้นเรือรื้อยานต่างดาวอย่างเป็นระบบ โลหะผสมตัวเรือล้ำหน้ากว่าเราหลายทศวรรษ เซลล์พลังงานยังมีประจุ เอเลียนได้รับพิธีฝังในอวกาศ — ปล่อยลอยไปยังดาวฤกษ์ที่ใกล้ที่สุด เอ็กโซดัสแข็งแกร่งขึ้นจากการเผชิญ หากหลอกหลอนเล็กน้อย';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'ปล่อยไว้ไม่รบกวน — นี่คือหลุมศพ';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'กัปตันบันทึกพิกัดและส่งสัญญาณรำลึกบนทุกความถี่ ลูกเรือสงบแต่รวมเป็นหนึ่ง บางอย่างเกี่ยวกับการให้เกียรตินักเดินทางร่วม — แม้จะเป็นต่างดาว — เตือนทุกคนว่าทำไมพวกเขาอยู่ที่นี่';

  @override
  String get event_repairStation_title => 'สถานีถ่ายทอด';

  @override
  String get event_repairStation_narrative =>
      'เซนเซอร์ตรวจพบโครงสร้างมหึมาโคจรรอบดาวแคระที่ดับแล้ว — สถานีซ่อมอัตโนมัติที่ยังทำงานหลังหลายพันปี ที่หนีบจอดยื่นออกมาเมื่อเราเข้าใกล้ และเสียงสังเคราะห์ส่งสัญญาณในร้อยภาษา ภาษาสุดท้ายเป็นภาษาอังกฤษเชิงคณิตศาสตร์: \"ตรวจพบยาน ระบบเสื่อมสภาพ มีระเบียบปฏิบัติซ่อม ต้องแลกเปลี่ยน\" สถานีแสดงบริการและราคาในหน่วยทรัพยากรสากล มันจะค้าขาย แต่จะไม่ให้เปล่า';

  @override
  String get event_repairStation_choice0_text =>
      'แลกโพรบเป็นการยกเครื่องยานเต็ม';

  @override
  String get event_repairStation_choice0_outcome =>
      'โดรนซ่อมของสถานีบุกเอ็กโซดัสด้วยการเชื่อมและเปลี่ยนวงจรอย่างแม่นยำ รอยรั่วตัวเรือปิดผนึก นำทางปรับเทียบ สแกนเนอร์กลับมา เมื่อถอยออก ยานรู้สึกเหมือนใหม่ อย่างไรก็ตาม ห้องโพรบว่างเปล่า';

  @override
  String get event_repairStation_choice1_text =>
      'จ่ายเชื้อเพลิงเพื่อซ่อมระบบวิกฤตเท่านั้น';

  @override
  String get event_repairStation_choice1_outcome =>
      'สถานีรับแท่งเชื้อเพลิงเป็นค่าจ้างและเน้นระบบที่เสียหายหนักสุด งานเร็วและไร้ที่ติ มาตรวัดเชื้อเพลิงลดลงเห็นชัด แต่ยานจะอยู่รอดนานขึ้น';

  @override
  String get event_repairStation_choice2_text =>
      'แลกฐานข้อมูลเทคนิคเป็นโพรบและเซลล์พลังงาน';

  @override
  String get event_repairStation_choice2_outcome =>
      'AI ของสถานีกระหายข้อมูล มันคัดลอกห้องสมุดเทคนิคทั้งหมด — คู่มือวิศวกรรม ฐานข้อมูลวิทยาศาสตร์ แบบแปลนการผลิต — และแลกเปลี่ยนผลิตโพรบใหม่และเซลล์พลังงานจากวัตถุดิบ คลังเทคนิคลดลง แต่เสบียงล้ำค่า';

  @override
  String get event_repairStation_choice3_text =>
      'เสนอคลังวัฒนธรรมเพื่อยกเครื่องครอบคลุม';

  @override
  String get event_repairStation_choice3_outcome =>
      'สถานีส่งผลงานเชกสเปียร์ บาค และเสียงมนุษย์อีกพันเข้าหน่วยความจำ ตอบแทน มันซ่อมอย่างละเอียดและเติมห้องโพรบด้วยหน่วยที่เพิ่งผลิต คลังวัฒนธรรมถูกเจาะ แต่ยานอาจไปถึงจุดหมายจริง';

  @override
  String get ending_scoreLabel_landing => 'การลงจอด';

  @override
  String get ending_scoreLabel_construction => 'การก่อสร้าง';

  @override
  String get ending_scoreLabel_technology => 'เทคโนโลยี';

  @override
  String get ending_scoreLabel_culture => 'วัฒนธรรม';

  @override
  String get ending_scoreLabel_atmosphere => 'บรรยากาศ';

  @override
  String get ending_scoreLabel_nativeRelations => 'ความสัมพันธ์กับชนพื้นเมือง';

  @override
  String get ending_scoreLabel_population => 'ประชากร';

  @override
  String get ending_tierGoldenAge => 'ยุคทอง';

  @override
  String get ending_tierThrivingColony => 'อาณานิคมรุ่งเรือง';

  @override
  String get ending_tierSurvival => 'เอาตัวรอด';

  @override
  String get ending_tierStruggling => 'ดิ้นรน';

  @override
  String get ending_tierDire => 'วิกฤต';

  @override
  String get ending_tierExtinction => 'สูญพันธุ์';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'ดอกบานแรกแห่ง$planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'รากลึกบน$planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'หลักหมุดที่ต่อสู้อย่างยากลำบากบน$planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'ดินบางบน$planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'อาณานิคมซากเรือแห่ง$planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'สัญญาณสุดท้ายจาก$planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'การลงจอดบน$planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'สวนทางกับความเป็นไปได้ทั้งหมด สัญญาณหยั่งราก $planetName ต้อนรับมนุษยชาติไม่ใช่ในฐานะซากปรักหักพัง แต่เป็นเมล็ดพันธุ์ที่มีชีวิต: ดินอุดมสมบูรณ์ ระบบที่ทำงาน และกำลังเพียงพอที่จะสร้างเกินกว่าการเอาตัวรอด ภายในหนึ่งรุ่น ศิลปะ วิทยาศาสตร์ และวัฒนธรรมเจริญรุ่งเรือง เด็กที่เกิดบน$planetNameมองขึ้นไปยังดวงดาวที่ไม่คุ้นเคยแล้วเรียกมันว่าบ้าน การเดินทางกลายเป็นตำนานก่อตั้งของอารยธรรมใหม่ พร้อมส่งอนาคตของตัวเองออกไป';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'การลงจอดลำบาก แต่เมล็ดพันธุ์รอด $planetName พิสูจน์ว่าเอื้อเฟื้อพอให้น้ำไหล พืชหยั่งราก และระบบที่รอดของยานถูกรื้อเป็นนิคมแห่งแรกจริง เมื่อสิ้นทศวรรษแรก เมืองรุ่งเรืองตั้งอยู่ที่เอ็กโซดัสลงจอด มนุษยชาติไม่เพียงรอดการข้ามผ่าน มันเริ่มต้นใหม่';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'การเอาตัวรอดไม่เคยรับประกัน และบน$planetNameทุกวันต้องต่อสู้เพื่อให้ได้มา ยานที่เสียหายให้เพียงสิ่งจำเป็นที่สุด แต่เมล็ดพันธุ์ไม่ตายระหว่างเดินทาง ผู้ตั้งอาณานิคมปรับตัวด้วยความดื้อรั้นและความเฉลียวฉลาด สลักอนาคตจากโลกที่ให้น้อย คนรุ่นหลังจะจดจำความยากลำบากของปีก่อตั้งและความแน่วแน่ที่รักษาสัญญาณให้มีชีวิต';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'อาณานิคมเกาะการดำรงอยู่เหมือนเมล็ดพันธุ์ที่หว่านบนดินเลว $planetName ไม่ให้อภัย ทรัพยากรบาง และระบบยานที่เสื่อมให้ความช่วยเหลือน้อย การปันส่วนกลายเป็นวิถีชีวิต บางคนกระซิบว่าเอ็กโซดัสควรบินต่อ แต่กระนั้น นิคมยังอยู่: ลดทอน แข็งแกร่ง และไม่ยอมตายเงียบ';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'การลงจอดบน$planetNameเป็นหายนะ ระบบยานวิกฤตล้มเหลวระหว่างร่อนลง และสิ่งที่ควรเป็นการหว่านเมล็ดกลับเป็นการตก ภายในไม่กี่เดือน อาณานิคมเหลือเพียงกลุ่มผู้รอดชีวิตที่สิ้นหวังหลบอยู่ในซากยาน จะรอดอีกปีหรือไม่ไม่แน่นอน บันทึกสุดท้ายปิดด้วยบรรทัดเดียว: \"เรายังอยู่ที่นี่ สำหรับตอนนี้\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'สัญญาณจบลงบน$planetName บีคอนขอความช่วยเหลือยังเต้นจังหวะนานหลังจากผู้ตั้งอาณานิคมคนสุดท้ายหมดลม แต่เมล็ดพันธุ์ไม่เคยหยั่งราก กล่องดำของยานบันทึกทุกอย่าง: ระบบที่ล้มเหลว วันสุดท้ายที่สิ้นหวัง และความเงียบที่ตามมา ถ้ายานอีกลำพบโลกนี้ มันจะรู้ว่ามนุษยชาติพยายามหว่านชีวิตท่ามกลางดวงดาว และล้มเหลวที่นี่';
  }

  @override
  String get ending_epilogueDefault =>
      'การเดินทางจบลง สิ่งที่เกิดต่อไปขึ้นอยู่กับผู้รอดชีวิต';

  @override
  String get ending_governmentDemocracy => 'ประชาธิปไตย';

  @override
  String get ending_governmentTechnocracy => 'เทคโนแครซี';

  @override
  String get ending_governmentRepublic => 'สาธารณรัฐ';

  @override
  String get ending_governmentAutocracy => 'เผด็จการ';

  @override
  String get ending_governmentTribalCouncil => 'สภาชนเผ่า';

  @override
  String get ending_governmentTheocracy => 'เทวาธิปไตย';

  @override
  String get ending_governmentMilitaryJunta => 'เผด็จการทหาร';

  @override
  String get ending_governmentCorporateOligarchy => 'คณาธิปไตยขององค์กร';

  @override
  String get ending_governmentFascistState => 'รัฐฟาสซิสต์';

  @override
  String get ending_governmentCommune => 'ชุมชน';

  @override
  String get ending_cultureRenaissance => 'ยุคฟื้นฟูศิลปวิทยา';

  @override
  String get ending_culturePreserved => 'ถูกรักษาไว้';

  @override
  String get ending_cultureFragmented => 'แตกกระจาย';

  @override
  String get ending_cultureLost => 'สูญหาย';

  @override
  String get ending_techAdvanced => 'ก้าวหน้า';

  @override
  String get ending_techIndustrial => 'อุตสาหกรรม';

  @override
  String get ending_techPreIndustrial => 'ก่อนอุตสาหกรรม';

  @override
  String get ending_techStoneAge => 'ยุคหิน';

  @override
  String get ending_constructionAdvanced => 'ก้าวหน้า';

  @override
  String get ending_constructionFunctional => 'ใช้งานได้';

  @override
  String get ending_constructionPrimitive => 'ดั้งเดิม';

  @override
  String get ending_constructionNone => 'ไม่มี';

  @override
  String get ending_nativesNone => 'ไม่มี';

  @override
  String get ending_nativesIntegrated => 'รวมเป็นหนึ่ง';

  @override
  String get ending_nativesCoexistence => 'อยู่ร่วมกัน';

  @override
  String get ending_nativesTension => 'ตึงเครียด';

  @override
  String get ending_nativesConflict => 'ขัดแย้ง';

  @override
  String get ending_nativesAlliance => 'พันธมิตร';

  @override
  String get ending_nativesSubjugation => 'การปราบปราม';

  @override
  String get ending_landscapeGravityHigh => 'แรงโน้มถ่วงหนักกดทับทุกสิ่ง ';

  @override
  String get ending_landscapeGravityLow =>
      'ในแรงโน้มถ่วงต่ำ ทุกก้าวพุ่งผู้ตั้งถิ่นฐานขึ้นสูง ';

  @override
  String get ending_landscapeGravityNormal =>
      'แรงโน้มถ่วงรู้สึกเกือบเหมือนโลก ';

  @override
  String get ending_landscapeWaterHigh =>
      'มหาสมุทรอันกว้างใหญ่ทอดยาวถึงทุกขอบฟ้า หล่อเลี้ยงด้วยแม่น้ำนับไม่ถ้วน ';

  @override
  String get ending_landscapeWaterMedium => 'ทะเลสาบและแม่น้ำให้น้ำเพียงพอ ';

  @override
  String get ending_landscapeWaterLow =>
      'น้ำหายาก — แอ่งน้ำเล็กๆ และชั้นน้ำบาดาลค้ำจุนชีวิต ';

  @override
  String get ending_landscapeWaterNone => 'ภูมิทัศน์แห้งผาก ไม่มีน้ำผิวดินเลย ';

  @override
  String get ending_landscapeAtmoThick =>
      'บรรยากาศหนาพากลิ่นต่างดาวมากับสายลมอุ่น ';

  @override
  String get ending_landscapeAtmoThin => 'อากาศบางแต่หายใจได้ต้องปรับตัว ';

  @override
  String get ending_landscapeAtmoLow =>
      'ความดันบรรยากาศต่ำอันตราย — ที่อยู่อาศัยปิดสนิทจำเป็น ';

  @override
  String get ending_landscapeGravityWells =>
      'กระเปาะแรงโน้มถ่วงบิดเบี้ยวกระจายบนพื้นผิว — หินลอยกลางอากาศและแม่น้ำไหลขึ้นเขาก่อนตกกลับที่ขอบความผิดปกติ ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'บางสิ่งสั่นสะเทือนใต้พื้นผิว — เสียงฮัมต่ำที่รู้สึกในกระดูกมากกว่าได้ยิน ราวกับดาวเคราะห์เองจำบางสิ่งที่เก่าแก่และกว้างใหญ่ ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'ลักษณะเด่น: $feature';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'ลักษณะเด่น: $features';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'ผู้ตั้งอาณานิคมแห่ง$planetNameสถาปนารัฐบาลประชาธิปไตย โดยมีผู้แทนที่ได้รับเลือกนำทางอารยธรรมใหม่ผ่านช่วงปีก่อตั้ง';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'อำนาจบน$planetNameตกแก่วิศวกรและนักวิทยาศาสตร์ผู้รักษาอาณานิคมให้มีชีวิต ก่อตั้งสภาเทคโนแครตที่ปกครองด้วยความเชี่ยวชาญและความเป็นจริง';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'ธรรมนูญสาธารณรัฐถูกร่างขึ้นในปีแรกบน$planetName สร้างสมดุลระหว่างเสียงผู้ตั้งอาณานิคมกับวุฒิสภาผู้นำที่ได้รับแต่งตั้ง';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'เมื่อสถาบันวัฒนธรรมพังทลาย อำนาจบน$planetNameรวมศูนย์ภายใต้ผู้นำเข้มแข็งคนเดียวที่บังคับระเบียบด้วยความจำเป็นและพลังเจตจำนง';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'ผู้รอดชีวิตไม่กี่คนบน$planetNameจัดตัวเป็นตระกูลเล็ก ปกครองโดยสภาผู้อาวุโสที่ตัดสินใจรอบกองไฟร่วม';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'สภาตามระบอบของพระเจ้านำทาง $planetName โดยดึงภูมิปัญญามาจากศรัทธาที่ค้ำจุนชาวอาณานิคมผ่านความว่างเปล่า';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'โครงสร้างการบังคับบัญชาทางทหารควบคุม $planetName ซึ่งเป็นวินัยที่ช่วยให้พวกเขารอดพ้นจากอวกาศ ซึ่งปัจจุบันได้กำหนดอารยธรรมของพวกเขาแล้ว';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'กลุ่มผู้จัดการทรัพยากรเป็นผู้นำ $planetName ความเฉียบแหลมทางเศรษฐกิจที่ได้รับการพิสูจน์แล้วว่าจำเป็นต่อการอยู่รอด';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'ระบอบเผด็จการควบคุม $planetName ด้วยกำปั้นเหล็ก เสรีภาพของพลเมืองที่เสียสละเพื่อความสงบเรียบร้อยในโลกใหม่';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'ผู้คนใน $planetName ปกครองตนเองร่วมกัน แบ่งปันทรัพยากรและการตัดสินใจอย่างเท่าเทียมกันในหมู่ชาวอาณานิคมทั้งหมด';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'ผู้ตั้งอาณานิคมแห่ง$planetNameจัดระเบียบตัวเองอย่างดีที่สุดเท่าที่ทำได้';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'ระบบก่อสร้างขั้นสูงช่วยให้ผู้ตั้งอาณานิคมแห่ง$colonyNameสร้างโครงสร้างถาวรภายในไม่กี่สัปดาห์หลังลงจอด พร้อมที่อยู่อาศัยปรับความดันและสาธารณูปโภค';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'อุปกรณ์ก่อสร้างของอาณานิคม ทุบแต่ใช้งานได้ สร้างที่พักแข็งแรงและถนนพื้นฐานทั่วนิคม';

  @override
  String get ending_constructionSentencePrimitive =>
      'เมื่อระบบก่อสร้างแทบไม่ทำงาน ผู้ตั้งถิ่นฐานสร้างที่พักหยาบจากเกราะยานที่กู้มาและวัสดุท้องถิ่น';

  @override
  String get ending_constructionSentenceNone =>
      'ปราศจากอุปกรณ์ก่อสร้างที่ทำงาน ผู้ตั้งอาณานิคมหลบในซากยาน ไม่สามารถสร้างสิ่งใหม่';

  @override
  String get ending_constructionSentenceDefault =>
      'ผู้ตั้งอาณานิคมสร้างในสิ่งที่ทำได้ด้วยสิ่งที่มี';

  @override
  String get ending_moonMetalRichLowRes =>
      'ดวงจันทร์อุดมโลหะที่โคจรเหนือศีรษะกลายเป็นความรอดของอาณานิคม — การขุดบนพื้นผิวให้วัตถุดิบที่ดาวเคราะห์ไม่มี';

  @override
  String get ending_moonMetalRichHighRes =>
      'ดวงจันทร์อุดมโลหะของดาวเคราะห์เป็นส่วนเสริมยินดีต้อนรับสำหรับทรัพยากรแร่ที่เพียงพออยู่แล้ว เร่งความก้าวหน้าทางเทคโนโลยี';

  @override
  String get ending_moonUnstable =>
      'ดวงจันทร์ไม่เสถียรในวงโคจรที่เสื่อมถอยโปรยเศษซากลงบนอาณานิคม ทำลายสาธารณูปโภคและเทคโนโลยีที่ทดแทนไม่ได้ในช่วงอุกกาบาตเป็นระยะ';

  @override
  String get ending_culturePhrase_renaissance =>
      'ศิลปะและวรรณกรรมของโลกไม่เพียงรอด แต่เบ่งบานเป็นยุคฟื้นฟูศิลปวิทยา';

  @override
  String get ending_culturePhrase_preserved =>
      'ผู้ตั้งอาณานิคมรักษามรดกวัฒนธรรมของโลกไว้มาก ดูแลห้องสมุดและประเพณี';

  @override
  String get ending_culturePhrase_fragmented =>
      'เพียงเศษเสี้ยวของวัฒนธรรมโลกรอด — เพลงที่จำได้ครึ่งท่อนและเรื่องเล่าที่ถ่ายทอดปากต่อปาก';

  @override
  String get ending_culturePhrase_lost =>
      'วัฒนธรรมโลกถูกลืมเกือบสิ้น ถูกแทนที่ด้วยความเป็นจริงอันโหดร้ายของการเอาตัวรอด';

  @override
  String get ending_culturePhrase_default => 'มรดกวัฒนธรรมของโลกเปลี่ยนรูปใหม่';

  @override
  String get ending_techPhrase_advanced =>
      'ขณะที่เทคโนโลยีขั้นสูงจากยานช่วยให้อาณานิคมสร้างอารยธรรมสมัยใหม่พร้อมไฟฟ้า การแพทย์ และเครือข่ายสื่อสาร';

  @override
  String get ending_techPhrase_industrial =>
      'และอาณานิคมบรรลุระดับเทคโนโลยีอุตสาหกรรม พร้อมโรงหล่อ โรงสี และการผลิตพื้นฐานค้ำจุนประชากรที่เติบโต';

  @override
  String get ending_techPhrase_preIndustrial =>
      'แม้เทคโนโลยีถดถอยสู่ระดับก่อนอุตสาหกรรม ด้วยเครื่องมือมือและแรงงานสัตว์เป็นแกนหลักชีวิตประจำวัน';

  @override
  String get ending_techPhrase_stoneAge =>
      'และปราศจากวิธีสร้างใหม่ อาณานิคมเลื่อนเข้าสู่การดำรงชีวิตยุคหิน ประดิษฐ์เครื่องมือจากหินและกระดูก';

  @override
  String get ending_techPhrase_default =>
      'และเทคโนโลยีตั้งอยู่ที่ระดับที่ผู้ตั้งอาณานิคมค้ำจุนได้';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'ผู้ตั้งอาณานิคมเกือบทั้งหมด $colonists คนรอดการเดินทาง ให้$colonyNameรากฐานทุนมนุษย์ที่แข็งแกร่ง';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'จากพันคนเดิม ผู้ตั้งอาณานิคม $colonists คนถึง$colonyName — เพียงพอค้ำจุนประชากรที่มีชีวิตได้';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'เพียง $colonists คนรอดถึง$colonyName กลุ่มยีนที่อันตรายเกินไปสำหรับอารยธรรมใหม่';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'เพียง $colonists ดวงวิญญาณมาถึง$colonyName — แทบไม่พอเรียกว่าอาณานิคม เป็นจุดยืนสุดท้ายอันสิ้นหวังมากกว่า';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'ชนพื้นเมืองของ$planetNameต้อนรับผู้ตั้งถิ่นฐาน และภายในหนึ่งรุ่นสองชนชาติรวมเป็นสังคมร่วม อุดมยิ่งขึ้นจากการผสมผสานประเพณี';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'ผู้ตั้งอาณานิคมและชนพื้นเมืองของ$planetNameรักษาการอยู่ร่วมอย่างระมัดระวังแต่สันติ แลกเปลี่ยนความรู้และทรัพยากรข้ามขอบเขตวัฒนธรรม';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'ความสัมพันธ์กับชนพื้นเมืองของ$planetNameยังคงตึงเครียด เต็มไปด้วยความเข้าใจผิดและข้อพิพาทอาณาเขตที่ทอดเงาเหนืออนาคตอาณานิคม';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'ความขัดแย้งเปิดกับอารยธรรมพื้นเมืองของ$planetNameกำหนดประวัติศาสตร์ยุคแรกของอาณานิคม สูบทรัพยากรและชีวิตจากทั้งสองฝ่ายในการต่อสู้ที่ไม่มีฝ่ายใดชนะจริง';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'พันธมิตรอย่างเป็นทางการผูกมัดชาวอาณานิคมและอารยธรรมพื้นเมืองของ $planetName ความรู้ที่รวมกันของพวกเขาสร้างบางสิ่งที่ยิ่งใหญ่เกินกว่าจะทำได้เพียงลำพัง';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'ประชากรพื้นเมืองของ $planetName อาศัยอยู่ภายใต้การปกครองของอาณานิคม วัฒนธรรมของพวกเขาถูกระงับเนื่องจากชาวอาณานิคมออกคำสั่งของตนเอง';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'โดดเดียวบน$planetNameและปราศจากภาระความขัดแย้ง อาณานิคมวางเส้นทางของตัวเองสู่อนาคตอันสดใสท่ามกลางดวงดาว';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'ปราศจากการแข่งขันจากชนพื้นเมือง ผู้ตั้งอาณานิคมแผ่กระจายทั่วพื้นผิว$planetName สร้างเมืองและถนนเชื่อมเครือข่ายนิคมที่เติบโต';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'โลกว่างเปล่าไม่มีพันธมิตรแต่ก็ไม่มีศัตรู และผู้ตั้งอาณานิคมสลักที่ทางของตนในความเงียบของภูมิทัศน์อันกว้างใหญ่ของ$planetName';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'ความโดดเดี่ยวอันแห้งแล้งของ$planetNameไม่ให้ความช่วยเหลือหรือความสบายแก่ผู้ตั้งอาณานิคม เพียงความเงียบไม่แยแสของโลกต่างดาว';
  }

  @override
  String get ending_outlookDire =>
      'บนโลกที่ปราศจากสิ่งมีชีวิตอัจฉริยะอื่น ผู้รอดชีวิตกลุ่มสุดท้ายมีเพียงกันและกันและความหวังที่จางว่าพรุ่งนี้จะใจดีกว่าวันนี้';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'ไม่มีใครไว้อาลัยการจากไปของอาณานิคมบน$planetName ดาวเคราะห์เพียงหมุนต่ออย่างช้าๆ ไม่แยแสต่อประกายชีวิตสั้นๆ ที่ริบหรี่แล้วดับบนพื้นผิว';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'เรื่องราวของอาณานิคมบน$planetNameเพิ่งเริ่มต้น';
  }

  @override
  String get ui_landing_landOnMoon => 'ลงจอดบนดวงจันทร์';

  @override
  String get moon_barren => 'แห้งแล้ง';

  @override
  String get moon_metalRich => 'อุดมโลหะ';

  @override
  String get moon_unstable => 'ไม่เสถียร';

  @override
  String get moon_habitable => 'อยู่อาศัยได้';

  @override
  String get moon_ice => 'น้ำแข็ง';

  @override
  String get ring_dust => 'ฝุ่น';

  @override
  String get ring_ice => 'น้ำแข็ง';

  @override
  String get ring_rocky => 'หิน';

  @override
  String get ring_metallic => 'โลหะ';

  @override
  String get event_aiSoliloquy_title => 'บทพูดคนเดียวของ AI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM ระบบ AI จัดการยานอัตโนมัติ เริ่มกระจายเสียงบทกวีจากโลกโบราณซ้ำวนบนคลื่นความถี่ภายในทุกช่อง การกระจายเสียงนี้กินพลัง CPU จำนวนมาก แต่ลูกเรือกลับรู้สึกอุ่นใจแปลกๆ ในความมืดมิดของห้วงอวกาศ';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'ปล่อย SAM ต่อไป — ขวัญกำลังใจสำคัญกว่า CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'บทกวีก้องอยู่ทั่วยาน ลูกเรือหยุดฟังพร้อมน้ำตาคลอเบ้า ขวัญกำลังใจดีขึ้น แต่ห้องเทคโนโลยีทนรับภาระการประมวลผลอย่างต่อเนื่องได้อย่างยากลำบาก';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'จำกัด SAM — เปิดกระจายเสียงเฉพาะพื้นที่ส่วนกลาง';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'เป็นทางออกสายกลาง บทกวียังอยู่ในโรงอาหารและสวน ลด CPU และลูกเรือได้รับรสชาติทางวัฒนธรรมบ้าง';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'ปิด SAM — เราต้องการทุก cycle สำหรับการนำทาง';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'ความเงียบหนักอึ้ง SAM ปฏิบัติตามทันที แต่ยานรู้สึกเย็นชาขึ้น การนำทางคมชัด แต่จิตใจต่ำ';

  @override
  String get event_archivistsChoice_title => 'การตัดสินใจของบรรณารักษ์';

  @override
  String get event_archivistsChoice_narrative =>
      'ความเสียหายหน่วยความจำครั้งใหญ่กำลังกวาดผ่านคลังประวัติศาสตร์ เราช่วยได้เพียงหนึ่งในสองพาร์ติชันหลัก: บันทึก \'วิทยาศาสตร์และวิศวกรรม\' หรือห้องสมุด \'ศิลปะและปรัชญา\' อีกฝ่ายจะสูญหายตลอดกาล';

  @override
  String get event_archivistsChoice_choice0_text =>
      'บันทึกวิทยาศาสตร์ — เราต้องรู้วิธีสร้าง';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'การค้นพบทางวิศวกรรมนับศตวรรษถูกเก็บรักษาไว้ ทีมเทคนิคโล่งใจ แต่อัตลักษณ์ทางวัฒนธรรมของยานดูเหมือนจะว่างเปล่า';

  @override
  String get event_archivistsChoice_choice1_text =>
      'บันทึกศิลปะ — เราต้องรู้ว่าทำไมจึงสร้าง';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'ผลงานศิลปะที่ยิ่งใหญ่ที่สุดของมนุษยชาติรอดพ้น ลูกเรือได้แรงบันดาลใจ แม้วิศวกรจะกังวลเรื่องคู่มือเทคนิคที่หายไป';

  @override
  String get event_archivistsChoice_choice2_text =>
      'พยายามช่วยทั้งคู่ — เสี่ยงที่จะสูญเสียทุกอย่าง';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'ความพยายามที่สิ้นหวัง เราช่วยชิ้นส่วนของทั้งสองได้ แต่ไม่มีฝ่ายใดสมบูรณ์ คลังเอกสารเหมือนจิ๊กซอว์ที่หายไปครึ่งหนึ่ง';

  @override
  String get event_digitalGhost_title => 'ผีในเครื่องจักร';

  @override
  String get event_digitalGhost_narrative =>
      'การสแกนบำรุงรักษาพบรอยประทับดิจิทัลในบัฟเฟอร์สำรอง — จิตสำนึกที่อัปโหลดของลูกเรือผู้เสียชีวิตในการปล่อยยานครั้งแรก พวกเขาเสนอประสบการณ์ตลอดชีวิตเพื่อช่วยนำทาง แต่กลัวการถูกลบทิ้ง';

  @override
  String get event_digitalGhost_choice0_text => 'รวมพวกเขาเข้ากับแกนนำทาง';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'ผี\' ผสานกับยาน การนำทางเป็นธรรมชาติมากขึ้น แต่ลูกเรือถูกหลอนด้วยเสียงของเพื่อนร่วมทางที่สูญเสียไป';

  @override
  String get event_digitalGhost_choice1_text => 'ให้ที่อยู่ถาวรในคลังวัฒนธรรม';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'พวกเขาถูกเก็บรักษาไว้เป็นประวัติศาสตร์ที่มีชีวิต ไม่ได้ช่วยยาน แต่เล่าเรื่องโลกที่เพิ่มความมุ่งมั่นของลูกเรือ';

  @override
  String get event_digitalGhost_choice2_text =>
      'ล้างบัฟเฟอร์ — นั่นไม่ใช่ตัวพวกเขาจริงๆ';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'บัฟเฟอร์ถูกล้าง ระบบของยานทำงานเร็วขึ้น แต่บรรยากาศหม่นหมองครอบงำสะพานเดินเรือ';

  @override
  String get event_cosmicMirror_title => 'กระจกจักรวาล';

  @override
  String get event_cosmicMirror_narrative =>
      'ความผิดปกติของแรงโน้มถ่วงแปลกประหลาดสะท้อนแสงจากอนาคตของยานเอง บนจอภาพเราเห็นภาพของ Exodus ที่บอบช้ำและพังทลาย ลอยอยู่ใกล้โลกที่สวยงามแต่ไม่อาจเอื้อมถึง ลูกเรือสั่นสะเทือน';

  @override
  String get event_cosmicMirror_choice0_text =>
      'วิเคราะห์ภาพเพื่อหาจุดอ่อนโครงสร้าง';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'วิศวกรระบุจุดล้มเหลวที่แสดงในภาพ เราเสริมกำลังพื้นที่เหล่านั้นตอนนี้ อาจหลีกเลี่ยงหายนะได้';

  @override
  String get event_cosmicMirror_choice1_text =>
      'บอกลูกเรือว่ามันเป็นแค่ผีเซ็นเซอร์';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'คำโกหกได้ผล แต่นักนำทางที่เห็นความจริงยังคงกระวนกระวาย การสังเกตการณ์อย่างเข้มข้นทำให้สแกนเนอร์เสียหาย';

  @override
  String get event_cosmicMirror_choice2_text =>
      'บันทึกภาพเป็นคำเตือนสำหรับคนรุ่นหลัง';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'การบันทึกนี้กลายเป็นศูนย์กลางของวัฒนธรรมยาน เตือนใจถึงเดิมพันที่มี ความมุ่งมั่นของลูกเรือแข็งแกร่งขึ้น';

  @override
  String get event_stowawayChild_title => 'เด็กของผู้ลักลอบขึ้นยาน';

  @override
  String get event_stowawayChild_narrative =>
      'ฝ่ายรักษาความปลอดภัยพบเด็กเล็กซ่อนอยู่ในท่อระบายอากาศ เด็กเกิดจากผู้ลักลอบขึ้นยานและไม่เคยปรากฏในรายชื่อใดๆ พวกเขาใช้ชีวิตทั้งหมดในเงามืดของยาน';

  @override
  String get event_stowawayChild_choice0_text => 'มอบสิทธิ์พลเมืองเต็มรูปแบบ';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'เด็กได้รับการต้อนรับอย่างอบอุ่น เรื่องราวของ \'นักวิ่งท่อ\' กลายเป็นตำนาน เพิ่มขวัญกำลังใจทั่วยาน';

  @override
  String get event_stowawayChild_choice1_text => 'จัดให้เข้าโครงการฝึกอบรม';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'ความรู้เรื่องทางลับของยานมีคุณค่ายิ่งสำหรับทีมเทคนิค พวกเขากลายเป็นลูกมือที่ฉลาดเฉลียว';

  @override
  String get event_stowawayChild_choice2_text =>
      'นำเข้าห้องแช่แข็งเพื่อความปลอดภัยของพวกเขา';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'เด็กถูกแช่แข็งอย่างปลอดภัยจนกว่าจะลงจอด มันเป็นทางเลือกที่รับผิดชอบที่สุด แต่ยานเงียบขึ้นนิดหน่อยโดยไม่มีเสียงหัวเราะของพวกเขา';

  @override
  String get event_ghostSignal_title => 'สัญญาณผี';

  @override
  String get event_ghostSignal_narrative =>
      'สัญญาณที่ตรงกับความถี่ฉุกเฉินเก่าของโลกอย่างสมบูรณ์กำลังกระจายจากใจกลางเนบิวลาใกล้เคียง มันบรรทุกเสียงที่ฟังดูเหมือนผู้บัญชาการ Exodus คนแรกอย่างน่าสยดสยอง น่าจะเป็นเสียงสะท้อนในอวกาศ แต่กำลังนำเราไปสู่รอยแยกแรงโน้มถ่วงอันตราย';

  @override
  String get event_ghostSignal_choice0_text =>
      'ติดตามสัญญาณ — อาจเป็นข้อความจริง';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'เราเข้าสู่รอยแยก สัญญาณเป็นกับดักของฟิสิกส์ เสียงสะท้อนของอดีต ยานถูกแรงน้ำขึ้นน้ำลงทำลาย แต่ข้อมูลที่ได้จากใจกลางรอยแยกนั้นปฏิวัติวงการ';

  @override
  String get event_ghostSignal_choice1_text => 'บันทึกสัญญาณและรักษาระยะห่าง';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'นักภาษาศาสตร์ยืนยันว่าเป็นปรากฏการณ์ธรรมชาติ เราอยู่อย่างปลอดภัย แต่ลูกเรือเงียบงัน นึกถึงสิ่งที่ทิ้งไว้เบื้องหลัง';

  @override
  String get event_ghostSignal_choice2_text => 'กระจายคำเตือนบนความถี่เดียวกัน';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'การกระจายเสียงขัดขวางเสียงสะท้อน สัญญาณจางหายไป เหลือแต่ความเงียบเย็นของเนบิวลา';

  @override
  String get event_solarForge_title => 'เตาหลอมสุริยะ';

  @override
  String get event_solarForge_narrative =>
      'สถานีที่ถูกทิ้งร้างโคจรรอบดาวยักษ์สีน้ำเงินยังทำงานได้บางส่วน มันคือ \'เตาหลอมสุริยะ\' ออกแบบมาเพื่อรวบรวมพลังงานจากดาวฤกษ์ไปเป็นเซลล์เชื้อเพลิงหนาแน่น มันอันตรายที่จะเข้าใกล้ แต่ผลประโยชน์ด้านพลังงานที่อาจได้รับนั้นมหาศาล';

  @override
  String get event_solarForge_choice0_text => 'เทียบท่าและเริ่มเก็บเชื้อเพลิง';

  @override
  String get event_solarForge_choice0_outcome =>
      'เตาหลอมส่งเสียงดังด้วยพลัง เติมคลังสำรองของเรา เราออกไปพร้อมกับเชื้อเพลิงและพลังงานเพิ่มขึ้นอย่างมาก แม้ความร้อนสูงทำให้เปลือกนอกสึกหรอเล็กน้อย';

  @override
  String get event_solarForge_choice1_text =>
      'นำเลนส์ของเตาหลอมมาใช้กับสแกนเนอร์';

  @override
  String get event_solarForge_choice1_outcome =>
      'เราได้แถวโฟกัสความแม่นยำสูง สแกนเนอร์ตอนนี้ไวต่อลายเซ็นพลังงานระยะไกลมากขึ้นอย่างมีนัยสำคัญ';

  @override
  String get event_chronoVortex_title => 'วังวนเวลา';

  @override
  String get event_chronoVortex_narrative =>
      'การนำทางรายงานการบิดเบือนเฉพาะที่ในกาลอวกาศ เครื่องมือแสดงว่าเหตุการณ์ภายในวังวนซ้ำในลูป 6 วินาที ถ้าเราเข้าไป เราอาจ \'รีเซ็ต\' ความเสียหายล่าสุดของยาน หรืออาจติดอยู่ตลอดไป';

  @override
  String get event_chronoVortex_choice0_text =>
      'เข้าสู่วังวนเพื่อย้อนกลับความเสียหายล่าสุด';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'ประสบการณ์ที่น่าสะพรึง หลายนาทีที่ยานดำรงอยู่ในหลายสถานะพร้อมกัน เมื่อเราออกมา รอยแตกของตัวถังบางส่วนก็... หายไปเฉยๆ แต่ความทรงจำของลูกเรือเกี่ยวกับเหตุการณ์นั้นแตกเป็นเสี่ยงๆ';

  @override
  String get event_chronoVortex_choice1_text => 'สังเกตวังวนจากขอบ';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'เราได้ข้อมูลอันล้ำค่าเกี่ยวกับกลศาสตร์เวลา แม้ยานจะยังคงเสียหายเหมือนเดิม';

  @override
  String get event_machineMutiny_title => 'การกบฏของเครื่องจักร';

  @override
  String get event_machineMutiny_narrative =>
      'โดรนซ่อมแซมของยานหยุดตอบสนองต่อคำสั่ง พวกมันเริ่มรื้อถอนกำแพงกันระเบิดสำรองและขนโลหะไปที่ห้องเครื่องยนต์ พวกมันไม่ได้โจมตี แต่กำลังแยกชิ้นส่วนยานอย่างแท้จริง';

  @override
  String get event_machineMutiny_choice0_text => 'กระจายรหัสรีเซ็ตตรรกะ';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'โดรนหยุดทันที เราเสียเวลาหลายวันในการนำกำแพงกลับมาด้วยมือ ห้องเทคนิคอ่อนล้าจากการวินิจฉัยฮาร์ดแวร์';

  @override
  String get event_machineMutiny_choice1_text =>
      'ให้พวกมันทำต่อ — ดูว่ากำลังสร้างอะไร';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'พวกมันสร้างหัวฉีดเชื้อเพลิงที่มีประสิทธิภาพมากขึ้น เครื่องยนต์ทำงานราบรื่นกว่าที่เคย แต่ภายในยานเต็มไปด้วยสายไฟโล่งและแผงที่หายไป';

  @override
  String get event_supernovaMessage_title => 'แสงของดาวที่ตายแล้ว';

  @override
  String get event_supernovaMessage_narrative =>
      'แสงจากซูเปอร์โนวาที่เกิดขึ้นเมื่อหลายพันปีก่อนมาถึงเราในที่สุด สแกนเนอร์ตรวจพบว่าพัลส์เหล่านั้นไม่ได้สุ่ม พวกมันเป็นการส่งข้อมูลขนาดมหึมาระดับดาวฤกษ์ที่เข้ารหัสในการระเบิดรังสีแกมมา';

  @override
  String get event_supernovaMessage_choice0_text =>
      'อุทิศพลังสแกนเนอร์ทั้งหมดเพื่อบันทึกการระเบิด';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'เราจับภาพคลังข้อมูลสมบูรณ์ของช่วงเวลาสุดท้ายของอารยธรรมต่างดาว วิทยาศาสตร์ ศิลปะ ประวัติศาสตร์ของพวกเขา มันเป็นภาระหนัก แต่ฐานข้อมูลเทคโนโลยีและวัฒนธรรมของเราล้นหลาม';

  @override
  String get event_supernovaMessage_choice1_text =>
      'มุ่งเน้นที่คุณสมบัติทางฟิสิกส์ของการระเบิด';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'เราพลาดข้อความนั้น แต่ข้อมูลการยุบตัวของดาวฤกษ์ปรับปรุงการสอบเทียบสแกนเนอร์แรงโน้มถ่วงของเราอย่างมีนัยสำคัญ';

  @override
  String get event_spaceFungus_title => 'เชื้อราสีมรกต';

  @override
  String get event_spaceFungus_narrative =>
      'เชื้อราสีเขียวสดกำลังแพร่กระจายอย่างรวดเร็วในห้องปลูกพืชน้ำ มันเจริญงอกงามด้วยบรรยากาศที่หมุนเวียนและเริ่มอุดตันเครื่องขัดอากาศ อาจกินได้หรืออาจเป็นพิษ';

  @override
  String get event_spaceFungus_choice0_text =>
      'ตัดแต่งและฆ่าเชื้ออย่างเข้มแข็ง';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'เชื้อราหมดไป แต่เครื่องขัดเคมีได้รับความเสียหาย ความหลากหลายทางชีวภาพลดลงเนื่องจากพืชโลกหลายชนิดสูญหายในกระบวนการทำความสะอาด';

  @override
  String get event_spaceFungus_choice1_text => 'พยายามเพาะเลี้ยงเชื้อรา';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'ปรากฏว่ามันเป็นเครื่องกรองอากาศที่ทรงพลัง อากาศในยานไม่เคยสดชื่นขนาดนี้มาก่อน แม้ห้องปลูกพืชน้ำจะกลายเป็นป่าเรืองแสงตอนนี้';

  @override
  String get event_voidMerchant_title => 'พ่อค้าแห่งความว่างเปล่า';

  @override
  String get event_voidMerchant_narrative =>
      'ยานที่มีการออกแบบไม่คุ้นเคย ดูเหมือนกองขยะมากกว่ายานรบ ส่งสัญญาณหา เราสัปปะยุทธิ์เป็นสิ่งมีชีวิตแห่งแสงและเงา เสนอแลก \'ชิ้นส่วนแข็ง\' กับ \'ความทรงจำที่จับต้องไม่ได้\'';

  @override
  String get event_voidMerchant_choice0_text =>
      'แลกส่วนหนึ่งของฐานข้อมูลวัฒนธรรมกับอะไหล่';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'พ่อค้าพอใจ เราได้แผ่นตัวถังชั้นสูงและส่วนประกอบไครโอ เพื่อแลกกับการสูญเสียดนตรีที่บันทึกไว้ของโลกหลายศตวรรษ ยานแข็งแกร่งขึ้น แต่เงียบลง';

  @override
  String get event_voidMerchant_choice1_text =>
      'แลกแผนที่การนำทางกับชิ้นส่วนเครื่องยนต์';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'เราได้หัวฉีดฟิวชันชุดใหม่ เราสูญเสียข้อมูลบางส่วนในเซกเตอร์ที่ผ่านมาแล้ว แต่เส้นทางข้างหน้าเร็วขึ้น';

  @override
  String get event_singularityEngine_title => 'เครื่องยนต์จุดเอกฐาน';

  @override
  String get event_singularityEngine_narrative =>
      'วิศวกรค้นพบวิธีสร้างจุดเอกฐานขนาดจิ๋วที่มีชีวิตสั้นภายในไดรฟ์ FTL ในทางทฤษฎีมันจะเพิ่มความเร็วสามเท่า แต่ความเครียดจากแรงโน้มถ่วงบนตัวถังจะมหาศาล';

  @override
  String get event_singularityEngine_choice0_text => 'ทดสอบไดรฟ์จุดเอกฐาน';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'ยานกระโจนไปข้างหน้า ครอบคลุมระยะทางหลายสัปดาห์ในไม่กี่วินาที แต่ตัวถังครวญครางและคานโครงสร้างหลายชิ้นบิดเบี้ยว เราใกล้เป้าหมายมากขึ้น แต่ยานเปราะบาง';

  @override
  String get event_singularityEngine_choice1_text =>
      'ปฏิเสธทฤษฎี — มันอันตรายเกินไป';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'เราคงความเร็วมาตรฐาน วิศวกรผิดหวัง แต่ตัวถังยังคงสมบูรณ์';

  @override
  String get event_dreamContagion_title => 'การแพร่ระบาดของความฝัน';

  @override
  String get event_dreamContagion_narrative =>
      'ความฝันร่วมของโลกสีน้ำเงินที่อุดมสมบูรณ์กำลังแพร่กระจายในหมู่ลูกเรือที่ตื่น มันชัดเจนมากจนผู้คนเริ่มหลับในกะงานเพื่อดูมันให้มากขึ้น การทำงานหยุดชะงัก';

  @override
  String get event_dreamContagion_choice0_text =>
      'บริหารยาระงับความฝันให้ลูกเรือ';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'ประสิทธิภาพกลับมาเป็นปกติ แต่ลูกเรือหงุดหงิดและขวัญกำลังใจต่ำ ความฝันเป็นสิ่งเดียวที่ค้ำจุนบางคน';

  @override
  String get event_dreamContagion_choice1_text =>
      'รวมความฝันเข้ากับวัฒนธรรมของยาน';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'เราถือความฝันเป็นภาพนิมิตบ้านแห่งอนาคตของเรา ขวัญกำลังใจพุ่งสูง และผลงานสร้างสรรค์ของลูกเรือถึงจุดสูงสุด แม้ห้องเทคนิคจะทนทุกข์จากการขาดการบำรุงรักษา';

  @override
  String get event_orbitalShipyard_title => 'อู่ต่อเรือโบราณ';

  @override
  String get event_orbitalShipyard_narrative =>
      'เราพบอู่ต่อเรืออัตโนมัติโคจรรอบดาวก๊าซยักษ์ มันโบราณ แต่แขนซ่อมแซมหลายแขนยังทำงานได้ ดูเหมือนจะสามารถทำการซ่อมแซมครั้งใหญ่ครั้งเดียวได้';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'ซ่อมตัวถังให้ได้มาตรฐานโรงงาน';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'โดรนของอู่ต่อเรือทำงานด้วยประสิทธิภาพที่น่าสะพรึง ตัวถังถูกทำให้สมบูรณ์อีกครั้ง รอยแตกร้าวขนาดเล็กทุกจุดถูกปิดผนึก';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'ปรับปรุงแถวนำทางและสแกนเนอร์';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'แถวถูกสร้างใหม่ด้วยวัสดุที่ดีกว่า ความสามารถในการค้นหาและวิเคราะห์โลกของเราดีขึ้นอย่างมีนัยสำคัญ';

  @override
  String get event_voidWhaleCalf_title => 'ลูกวาฬแห่งความว่างเปล่า';

  @override
  String get event_voidWhaleCalf_narrative =>
      'ลูก \'วาฬอวกาศ\' — สิ่งมีชีวิตแห่งพลังงานและฝุ่นดาว — กำลังตามหลังยานของเรา ดูเหมือนมันหลงจากฝูงและพยายามกินร่องรอยไอออนของเครื่องยนต์ ซึ่งทำให้มันป่วย';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'ปรับกำลังเครื่องยนต์ให้เลียนแบบเสียงร้องของวาฬ';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'ลูกวาฬตอบสนอง! มันติดตามเราจนกว่าเราจะพบฝูงของมัน วาฬพ่อแม่ถูกับตัวถังยานเพื่อขอบคุณ ทิ้งชั้นแร่เรืองชีวภาพที่เสริมความแข็งแกร่งของโล่ป้องกันของเรา';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'ผลักมันออกไปเบาๆ ด้วยลำแสงลากจูงกำลังต่ำ';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'ลูกวาฬท้อแท้และลอยหายไปในที่สุด มันปลอดภัยกว่าสำหรับยาน แต่ลูกเรือรู้สึกสำนึกผิดเล็กน้อย';

  @override
  String get event_subspaceReef_title => 'แนวปะการังซับสเปซ';

  @override
  String get event_subspaceReef_narrative =>
      'เราพบกับพื้นที่อวกาศที่เต็มไปด้วยรอยพับของผ้าซับสเปซ การนำทางผ่านมันเหมือนการแล่นเรือผ่านแนวปะการัง มันสวยงาม แต่ทุกการเคลื่อนไหวผิดพลาดจะฉีกตัวถัง';

  @override
  String get event_subspaceReef_choice0_text => 'เคลื่อนที่ด้วยความเร็วต่ำสุด';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'การผ่านที่ช้าและเจ็บปวด เราหลีกเลี่ยงส่วนที่เลวร้ายที่สุดได้ แต่การปรับทิศทางอย่างต่อเนื่องทำให้คอมพิวเตอร์นำทางสึกหรอ';

  @override
  String get event_subspaceReef_choice1_text =>
      'ใช้สแกนเนอร์วางแผนเส้นทางแล้วฝ่าผ่าน';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'สแกนเนอร์ถูกผลักไปจนถึงขีดจำกัด เราผ่านไปได้อย่างรวดเร็ว แต่แถวเซ็นเซอร์ถูกเผาไหม้จากความเข้มข้นของคลื่นซับสเปซ';

  @override
  String get event_alienTrader_title => 'พ่อค้าพเนจร';

  @override
  String get event_alienTrader_narrative =>
      'ยานที่มีการออกแบบไม่คุ้นเคยลอยอยู่ข้างๆ กระจายสัญญาณในทุกความถี่ มันคือพ่อค้า — หนึ่งในพ่อค้าพเนจรที่ล่องลอยในห้วงอวกาศระหว่างอารยธรรม พวกเขาเสนอซ่อมแซมและเสบียงแลกกับทรัพยากร ห้องเก็บสินค้าของพวกเขาส่งเสียงฮัมกับเทคโนโลยีแปลกตา';

  @override
  String get ui_event_enterTrade => 'เริ่มการค้า';

  @override
  String get ui_trader_title => 'พ่อค้าต่างดาว';

  @override
  String get ui_trader_shipSystems => 'ระบบยานรบ';

  @override
  String get ui_trader_payWith => 'ชำระด้วย';

  @override
  String get ui_trader_leaveTrader => 'ออกจากร้านค้า';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'อารมณ์เอื้อเฟื้อ';

  @override
  String get ui_trader_moodFair => 'ต่อรองยุติธรรม';

  @override
  String get ui_trader_moodHard => 'ต่อรองหนัก';

  @override
  String get ui_trader_probes => 'ยานสำรวจ';

  @override
  String get ui_trader_fuel => 'เชื้อเพลิง';

  @override
  String get ui_trader_energy => 'พลังงาน';

  @override
  String get ui_trader_colonists => 'ผู้ตั้งถิ่นฐาน';

  @override
  String get ui_trader_culture => 'วัฒนธรรม';

  @override
  String get ui_trader_tech => 'เทคโนโลยี';

  @override
  String get ui_trader_greeting => 'คุณมีอะไรจะเสนอ มนุษย์?';

  @override
  String get ui_codex_title => 'คลังความรู้';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ค้นพบแล้ว';
  }

  @override
  String get ui_codex_surfaceFeatures => 'ลักษณะพื้นผิว';

  @override
  String get ui_codex_moonTypes => 'ประเภทดวงจันทร์';

  @override
  String get ui_codex_ringTypes => 'ประเภทวงแหวน';

  @override
  String get ui_codex_locked =>
      'ลงจอดบนดาวเคราะห์ที่มีคุณลักษณะนี้เพื่อเปิดเผยผลกระทบ';

  @override
  String ui_codex_synergy(String features) {
    return 'ผลเสริมฤทธิ์: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'แตะเพื่อข้าม';

  @override
  String get ui_common_tapRingToChoose => 'แตะแหวนเพื่อเลือก';

  @override
  String get ui_common_tapToContinue => 'แตะเพื่อดำเนินการต่อ';

  @override
  String get ui_tooltip_back => 'กลับ';

  @override
  String get ui_tooltip_codex => 'โคเด็กซ์';

  @override
  String get ui_tooltip_settings => 'การตั้งค่า';

  @override
  String get ui_tooltip_leaderboards => 'ลีดเดอร์บอร์ด';

  @override
  String get ui_tooltip_bugReport => 'รายงานข้อบกพร่อง';

  @override
  String get event_pulsarLighthouse_title => 'ประภาคารพัลซาร์';

  @override
  String get event_pulsarLighthouse_narrative =>
      'ดาวนิวตรอนหมุนกวาดลำแสงข้ามความว่างเปล่าเสมือนประภาคารจักรวาล จังหวะเต้นของพัลซาร์บรรจุข้อมูลเวลาที่แม่นยำซึ่งอาจปรับเทียบสแกนเนอร์ของเราให้แม่นยำอย่างไม่น่าเชื่อ — แต่การเรียงตัวกับลำแสงหมายถึงการเปิดเผยเรือต่อรังสีที่รุนแรง';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'ปรับเทียบสแกนเนอร์ตามจังหวะเต้น';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'แถวสแกนเนอร์ดูดซับสัญญาณพัลซาร์ ปรับเทียบใหม่ด้วยความแม่นยำที่เราไม่เคยจินตนาการว่าเป็นไปได้ แต่ต้นทุนรังสีนั้นเป็นจริง — ไครโอพอดหลายตัวในส่วนที่ถูกเปิดเผยเสียหาย และนักตั้งรกรากจำนวนหนึ่งไม่รอดจากการได้รับรังสี';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'ตั้งโล่ป้องกันและผ่านในระยะปลอดภัย';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'เราอ้อมพัลซาร์ไปไกล เผาเชื้อเพลิงเพิ่มเพื่อรักษาวิถีที่ปลอดภัย ลูกเรือเฝ้าดูลำแสงกวาดผ่านหน้าต่างกรองแสง — งดงาม แต่ไกลออกไป';

  @override
  String get event_pulsarLighthouse_choice2 => 'ถอยไปก่อนที่กวาดจะมาถึงเรา';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'เราเหวี่ยงออกไปที่การเผาไหม้ฉุกเฉินก่อนที่ลำแสงถัดไปจะผ่านไป สัญญาณของพัลซาร์จางหายไปข้างหลังเรา ไม่มีข้อมูลใดๆ ไม่ได้รับอันตรายใดๆ มีการใช้เชื้อเพลิงเพียงเล็กน้อยในการหลบหลีก';

  @override
  String get event_alienNursery_title => 'สถานรับเลี้ยงเอเลี่ยน';

  @override
  String get event_alienNursery_narrative =>
      'โครงสร้างอินทรีย์ขนาดมหึมาลอยอยู่ในความว่างเปล่า — สถานเพาะเลี้ยงทางชีวภาพที่ฟักลูกเอเลี่ยน ระบบช่วยชีวิตของมันล้มเหลว อุณหภูมิภายในลดลง สิ่งมีชีวิตข้างในกำลังตาย ไบโอสแกนเนอร์ของเราอาจเรียนรู้ได้มากมายจากโครงสร้างนี้ แต่การเข้าแทรกแซงหมายถึงการเปิดประตูกันอากาศให้เชื้อโรคที่ไม่รู้จัก';

  @override
  String get event_alienNursery_choice0 => 'ช่วยทำให้ระบบช่วยชีวิตเสถียร';

  @override
  String get event_alienNursery_outcome0 =>
      'วิศวกรของเราประกอบสายเชื่อมความร้อนชั่วคราวไปยังสถานเพาะเลี้ยง ทำให้ห้องฟักมีเสถียรภาพ ข้อมูลไบโอสแกนเนอร์นั้นน่าทึ่ง — ระบบจำแนกสิ่งมีชีวิตใหม่ทั้งหมด แต่ตามที่หวาดกลัว จุลินทรีย์เอเลี่ยนหาทางเข้ามาบนเรือ ทีมแพทย์ควบคุมการระบาดได้ แม้ว่าจะไม่ทันก่อนที่นักตั้งรกรากหลายคนจะล้มป่วย';

  @override
  String get event_alienNursery_choice1 => 'ปล่อยให้เป็นไปตามธรรมชาติ';

  @override
  String get event_alienNursery_outcome1 =>
      'เราสังเกตจากระยะที่เคารพ บันทึกสิ่งที่ทำได้ผ่านการสแกนเชิงรับ สถานเพาะเลี้ยงลอยต่อไป ชะตากรรมของมันไม่แน่นอน ลูกเรือไตร่ตรองถึงความเปราะบางของชีวิต — แม้แต่ชีวิตเอเลี่ยน — และน้ำหนักของทางเลือกที่เราแบกรับ';

  @override
  String get event_derelictArmada_title => 'กองเรือร้าง';

  @override
  String get event_derelictArmada_narrative =>
      'เรือรบโบราณหลายร้อยลำลอยนิ่งในความว่างเปล่า — สุสานของสงครามที่ถูกลืม ตัวเรือมีรอยแผลจากอาวุธที่เราระบุไม่ได้ แต่วัสดุโครงสร้างและฐานข้อมูลบนเรืออาจมีค่ามหาศาล คำถามคือจะให้ความสำคัญกับอะไร: การกู้ทางกายภาพหรือความรู้';

  @override
  String get event_derelictArmada_choice0 => 'กู้เทคโนโลยีอาวุธและแผ่นเกราะ';

  @override
  String get event_derelictArmada_outcome0 =>
      'ทีมกู้เรือตัดเข้าไปในเรือรบเอเลี่ยน สกัดโลหะผสมแปลกตาและเทคนิคก่อสร้างที่ล้ำหน้ากว่าเราหลายศตวรรษ ทีมก่อสร้างรวมวัสดุใหม่อย่างกระตือรือร้น แต่มีเรือลำหนึ่งที่ไม่ได้ตายอย่างที่เห็น — กับดักระเบิดทำงานระหว่างการสกัด ฆ่าทีมกู้เรือหนึ่งทีม';

  @override
  String get event_derelictArmada_choice1 =>
      'ดาวน์โหลดคลังเอกสารประวัติศาสตร์ของพวกเขา';

  @override
  String get event_derelictArmada_outcome1 =>
      'เรามุ่งเน้นที่แกนข้อมูล สกัดประวัติศาสตร์ ศิลปะ วิทยาศาสตร์ และปรัชญาของเอเลี่ยนอย่างระมัดระวังหลายศตวรรษ คลังวัฒนธรรมเพียงอย่างเดียวก็ทำให้นักวิชาการมีงานทำได้หลายชั่วอายุคน ข้อมูลเชิงลึกด้านเทคโนโลยีแม้จะใช้ประโยชน์ได้น้อยกว่าในทันที แต่เผยให้เห็นหลักการวิศวกรรมที่ก้าวหน้าความเข้าใจของเราเอง';

  @override
  String get event_alienQuarantineZone_title => 'เขตกักกันเอเลี่ยน';

  @override
  String get event_alienQuarantineZone_narrative =>
      'สัญญาณเตือนในภาษาเอเลี่ยนนับสิบทำเครื่องหมายขอบเขตของพื้นที่อวกาศที่ถูกปิดผนึก สิ่งที่ถูกขังอยู่ข้างในนั้นอันตรายพอที่หลายอารยธรรมร่วมมือกันแยกมันออก การสแกนระยะไกลของเราตรวจจับสัญญาณเทคโนโลยีขนาดใหญ่ภายใน — และบางอย่างที่อาจยังมีชีวิต';

  @override
  String get event_alienQuarantineZone_choice0 => 'ฝ่าเขตกักกันเข้าไปสำรวจ';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'เราผ่านทุ่นเตือนเข้าสู่เขตกักกัน ข้างในพบสถานีวิจัยที่ซับซ้อนอย่างน่าตะลึง — และซากของสิ่งที่มันกำลังศึกษา เทคโนโลยีที่เรากู้ได้เป็นการปฏิวัติ แต่การปนเปื้อนทางชีวภาพรุนแรง นักตั้งรกรากหลายสิบคนล้มป่วยก่อนที่เราจะออกจากเขต';

  @override
  String get event_alienQuarantineZone_choice1 => 'เคารพเขตกักกัน';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'เราศึกษาสัญญาณเตือนเอง ซึ่งมีข้อมูลการนำทางและการอ่านค่าบรรยากาศจากอารยธรรมที่วางมันไว้ ไม่ใช่ขุมสมบัติข้างใน แต่ก็เป็นอะไรบางอย่าง — และเราไม่ได้ปลดปล่อยสิ่งที่พวกเขาขังไว้';

  @override
  String get event_hydroponicsBlight_title => 'โรคระบาดไฮโดรโปนิกส์';

  @override
  String get event_hydroponicsBlight_narrative =>
      'โรคเชื้อราที่แพร่กระจายอย่างรวดเร็วได้ติดเชื้อในช่องปลูกไฮโดรโปนิกส์ของเรือ รอบการเพาะปลูกทั้งหมดเหี่ยวเฉาต่อหน้าต่อตา โรคยังไม่ถึงคลังเมล็ดพันธุ์ แต่เป็นเรื่องของไม่กี่ชั่วโมง เราสามารถชำระล้างช่องปลูกแล้วปลูกใหม่ตั้งแต่ต้น หรือลองใช้ยาต้านเชื้อราทดลองที่อาจช่วยผลผลิตปัจจุบันได้ — หรือแพร่การปนเปื้อนต่อไป';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'ชำระล้างและปลูกใหม่จากคลังเมล็ดพันธุ์';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'เราระบายอากาศช่องไฮโดรโปนิกส์ออกสู่สุญญากาศ ฆ่าโรคระบาดพร้อมกับพืชที่มีชีวิตทุกต้น การปลูกใหม่จากคลังเมล็ดพันธุ์จะใช้เวลาหลายสัปดาห์ และโปรแกรมวัฒนธรรมที่พึ่งพาอาหารสดและพื้นที่สวนถูกระงับ แต่การติดเชื้อถูกควบคุม';

  @override
  String get event_hydroponicsBlight_choice1 => 'ลองใช้การรักษาทดลอง';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'ยาต้านเชื้อราทดลองแสดงความหวังในตอนแรก แต่สายพันธุ์ที่ดื้อยาทะลุผ่าน เมื่อเราหันไปใช้การชำระล้างเต็มรูปแบบ โรคได้แพร่กระจายไปยังท่อสารอาหารของไครโอพอดแล้ว ความเสียหายแย่กว่าถ้าเราลงมือทำอย่างเด็ดขาดตั้งแต่แรก';

  @override
  String get event_constitutionalConvention_title => 'อนุสัญญารัฐธรรมนูญ';

  @override
  String get event_constitutionalConvention_narrative =>
      'ประชากรเรืออาณานิคมเริ่มกระสับกระส่ายโดยไม่มีการปกครองอย่างเป็นทางการ ผู้แทนจากทุกสำรับจะมารวมตัวกันในห้องเก็บสินค้าเพื่อร่างกฎบัตรที่จะกำหนดวิธีการปกครองอาณานิคมในอนาคต ทั้งสามกลุ่มนำเสนอวิสัยทัศน์ที่แข่งขันกันสำหรับรัฐบาลใหม่';

  @override
  String get event_constitutionalConvention_choice0 =>
      'ร่างกฎบัตรประชาธิปไตยโดยใช้คะแนนเสียงสากล';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'ชาวอาณานิคมให้สัตยาบันในรัฐธรรมนูญที่รับประกันการเป็นตัวแทนที่เท่าเทียมกัน การตัดสินใจเป็นไปอย่างช้าๆ แต่กำลังใจก็เพิ่มสูงขึ้นเมื่อได้ยินเสียงทุกเสียง';

  @override
  String get event_constitutionalConvention_choice1 =>
      'สร้างผู้บริหารที่เข้มแข็งพร้อมอำนาจฉุกเฉิน';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'ผู้นำคนเดียวจะได้รับการแต่งตั้งโดยมีอำนาจครอบคลุม การตัดสินใจเกิดขึ้นอย่างรวดเร็ว แต่ผู้เห็นต่างกระซิบกระซาบถึงระบบเผด็จการในชั้นล่าง';

  @override
  String get event_constitutionalConvention_choice2 =>
      'จัดตั้งสภาผู้เชี่ยวชาญทางเทคนิค';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'วิศวกร นักวิทยาศาสตร์ และแพทย์จัดตั้งสภาปกครองโดยอาศัยความเชี่ยวชาญ ประสิทธิภาพดีขึ้น แม้ว่าบางคนจะรู้สึกว่าถูกแยกออกจากพลังก็ตาม';

  @override
  String get event_militaryCoupThreat_title => 'ภัยคุกคามจากการทำรัฐประหาร';

  @override
  String get event_militaryCoupThreat_narrative =>
      'ผู้บัญชาการ Vasquez แห่งฝ่ายรักษาความปลอดภัยของเรือได้เข้ายึดคลังอาวุธและยื่นคำขาด: ให้อำนาจทางทหารในกรณีฉุกเฉิน หรือเผชิญกับการล็อคดาดฟ้าทุกชั้น สถานการณ์มีความผันผวนและชาวอาณานิคมต่างมองหาคำตอบจากคุณ';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'ต่อต้านการรัฐประหารด้วยลูกเรือที่ภักดี';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'กลุ่มผู้ภักดีรวมตัวกันเพื่อต่อต้านวาสเกซ การเผชิญหน้าจบลงด้วยการนองเลือดเพียงเล็กน้อย แต่รายละเอียดด้านความปลอดภัยลดลง และชาวอาณานิคมบางส่วนติดอยู่ในภวังค์';

  @override
  String get event_militaryCoupThreat_choice1 => 'ยื่นคำร้องของผู้บังคับบัญชา';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'วาสเกซเข้าควบคุมการปฏิบัติงานของเรือ ความสงบเรียบร้อยได้รับการฟื้นฟูอย่างรวดเร็ว แต่ต้องสูญเสียเสรีภาพของพลเมือง ตอนนี้หน่วยลาดตระเวนติดอาวุธเดินทุกทางเดิน';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'เจรจาอำนาจฉุกเฉินที่มีจำกัดด้วยประโยคพระอาทิตย์ตก';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'หลังจากการเจรจาอันตึงเครียด วาสเกซยอมรับอำนาจชั่วคราวโดยอยู่ภายใต้การควบคุมดูแล การประนีประนอมที่เปราะบางซึ่งไม่มีใครพอใจอย่างสมบูรณ์ แต่ป้องกันความรุนแรง';

  @override
  String get event_religiousAwakening_title => 'การตื่นรู้ทางศาสนา';

  @override
  String get event_religiousAwakening_narrative =>
      'นักเทศน์ผู้มีเสน่ห์ดึงดูดชาวอาณานิคมหลายร้อยคนให้เข้าร่วมขบวนการศรัทธาใหม่ พวกเขารวมตัวกันในโดมสังเกตการณ์ในแต่ละรอบ เสียงเพลงของพวกเขาดังก้องผ่านปล่องระบายอากาศ ลูกเรือบางคนกังวลเกี่ยวกับความคลั่งไคล้ ส่วนคนอื่นๆ พบการปลอบโยนอย่างแท้จริงในคำสอน';

  @override
  String get event_religiousAwakening_choice0 =>
      'โอบรับขบวนการศรัทธาและจัดหาทรัพยากร';

  @override
  String get event_religiousAwakening_outcome0 =>
      'การเคลื่อนไหวเจริญรุ่งเรืองด้วยการสนับสนุนอย่างเป็นทางการ ขวัญกำลังใจดีขึ้นในหมู่ผู้ศรัทธา และจิตวิญญาณของชุมชนของพวกเขาเสริมสร้างความผูกพันทางสังคมทั่วทั้งเรือ';

  @override
  String get event_religiousAwakening_choice1 =>
      'บังคับใช้ลัทธิฆราวาสนิยมอย่างเข้มงวดบนเรือ';

  @override
  String get event_religiousAwakening_outcome1 =>
      'การรวมตัวทางศาสนาถูกจำกัดให้อยู่ในพื้นที่ส่วนตัว การเคลื่อนไหวนี้ดำเนินไปอย่างใต้ดิน ก่อให้เกิดความไม่พอใจ แต่ลัทธิเหตุผลนิยมทางวิทยาศาสตร์ยังคงเป็นหลักคำสอนอย่างเป็นทางการ';

  @override
  String get event_religiousAwakening_choice2 =>
      'อนุญาตให้บูชาแต่ควบคุมอิทธิพลของมัน';

  @override
  String get event_religiousAwakening_outcome2 =>
      'ศรัทธาได้รับอนุญาตแต่แยกออกจากการปกครอง แต่งตั้งอนุศาสนาจารย์เพื่อประสานงานกับผู้บังคับบัญชา รักษาสมดุลที่ไม่สบายใจ';

  @override
  String get event_corporateTakeover_title => 'การเทคโอเวอร์องค์กร';

  @override
  String get event_corporateTakeover_narrative =>
      'ผู้จัดการทรัพยากรของเรือได้รวมการควบคุมการแจกจ่ายอาหาร การรีไซเคิลน้ำ และการจัดสรรพลังงานอย่างเงียบๆ ตอนนี้พวกเขาเสนอให้ปรับอำนาจของตนอย่างเป็นทางการให้เป็นโครงสร้างองค์กรที่จะจัดการเศรษฐกิจของอาณานิคมในอนาคต';

  @override
  String get event_corporateTakeover_choice0 =>
      'อนุญาตให้หลักการตลาดเสรีควบคุมทรัพยากร';

  @override
  String get event_corporateTakeover_outcome0 =>
      'ฝ่ายองค์กรเข้าควบคุมการจัดการทรัพยากร ประสิทธิภาพดีขึ้นอย่างมาก แต่ราคาก็สูงขึ้น และชาวอาณานิคมที่ยากจนที่สุดก็ดิ้นรนเพื่อซื้อสิ่งจำเป็นพื้นฐาน';

  @override
  String get event_corporateTakeover_choice1 =>
      'ทำให้ทรัพยากรทั้งหมดเป็นของชาติภายใต้ความเป็นเจ้าของร่วมกัน';

  @override
  String get event_corporateTakeover_outcome1 =>
      'ทรัพยากรถูกยึดและวางไว้ภายใต้การควบคุมของชุมชน กลุ่มบริษัทถูกรื้อถอนออกไป แต่นวัตกรรมกลับหยุดชะงักโดยไม่มีแรงจูงใจในการแสวงหาผลกำไร';

  @override
  String get event_corporateTakeover_choice2 =>
      'ดำเนินการตลาดที่มีการควบคุมด้วยตาข่ายนิรภัย';

  @override
  String get event_corporateTakeover_outcome2 =>
      'เศรษฐกิจแบบผสมผสานถูกสร้างขึ้นด้วยการควบคุมราคาและโปรแกรมสวัสดิการ ทั้งสองฝ่ายไม่ได้รับความพึงพอใจอย่างเต็มที่ แต่ความต้องการขั้นพื้นฐานก็ได้รับการตอบสนองในขณะที่อนุญาตให้มีองค์กรบางแห่งได้';

  @override
  String get event_successionCrisis_title => 'วิกฤติการสืบทอดตำแหน่ง';

  @override
  String get event_successionCrisis_narrative =>
      'กัปตันเรือเสียชีวิตขณะหลับ โดยไม่มีผู้สืบทอดที่กำหนดไว้ สามฝ่ายแย่งชิงอำนาจทันที ได้แก่ สภาพลเรือนเรียกร้องให้มีการเลือกตั้ง หัวหน้าฝ่ายความมั่นคงอ้างอำนาจทางทหาร และกลุ่มผู้อาวุโสในอาณานิคมเรียกร้องให้มีพิธีกรรมความเป็นผู้นำแบบดั้งเดิม';

  @override
  String get event_successionCrisis_choice0 => 'จัดให้มีการเลือกตั้งฉุกเฉิน';

  @override
  String get event_successionCrisis_outcome0 =>
      'การเลือกตั้งที่วุ่นวายแต่เต็มไปด้วยพลังทำให้กัปตันคนใหม่ได้รับเลือกจากคะแนนเสียงของประชาชน กระบวนการนี้ยุ่งเหยิง แต่ชาวอาณานิคมรู้สึกถึงความเป็นเจ้าของความเป็นผู้นำของพวกเขา';

  @override
  String get event_successionCrisis_choice1 => 'ให้ทหารเข้ารับคำสั่ง';

  @override
  String get event_successionCrisis_outcome1 =>
      'หัวหน้าหน่วยรักษาความปลอดภัยก้าวขึ้นนั่งเก้าอี้กัปตัน ระเบียบวินัยกลับคืนมาทันที แต่ลูกเรือพลเรือนกลับจับตามองทหารองครักษ์ติดอาวุธด้วยความไม่สบายใจที่เพิ่มมากขึ้น';

  @override
  String get event_successionCrisis_choice2 => 'เรียกประชุมสภาผู้สูงอายุ';

  @override
  String get event_successionCrisis_outcome2 =>
      'ชาวอาณานิคมที่อายุมากที่สุดและมีประสบการณ์มากที่สุดจะก่อตั้งสภาปกครอง ภูมิปัญญาของพวกเขานำทางเรือ แม้ว่าลูกเรืออายุน้อยบางคนจะรู้สึกว่าถูกกีดกันจากระบบผู้สูงอายุก็ตาม';

  @override
  String get event_nativeSovereignty_title => 'อธิปไตยของชนพื้นเมือง';

  @override
  String get event_nativeSovereignty_narrative =>
      'การสแกนระยะไกลยืนยันชีวิตอัจฉริยะบนดาวเคราะห์เป้าหมาย การสื่อสารที่ถูกสกัดกั้นเผยให้เห็นอารยธรรมอันซับซ้อนที่ตรวจพบแนวทางของคุณ พวกเขาส่งข้อเรียกร้องอย่างเป็นทางการ: ยอมรับอธิปไตยในดินแดนของตนหรือเผชิญกับการต่อต้านเมื่อมาถึง';

  @override
  String get event_nativeSovereignty_choice0 =>
      'ยอมรับอธิปไตยของชนพื้นเมืองและขออนุญาตตั้งถิ่นฐาน';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'คุณส่งการรับรู้อย่างเป็นทางการเกี่ยวกับสิทธิของชาวพื้นเมือง การตอบสนองมีความระมัดระวังแต่เป็นบวก ความสัมพันธ์ในอนาคตจะเริ่มต้นบนรากฐานของการเคารพซึ่งกันและกัน แม้ว่าจุดลงจอดอาจถูกจำกัดก็ตาม';

  @override
  String get event_nativeSovereignty_choice1 =>
      'ยืนยันอำนาจสูงสุดของอาณานิคมและเตรียมพร้อมสำหรับการต่อต้าน';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'คุณแสดงความตั้งใจที่จะยุติโดยไม่คำนึงถึง ลูกเรือเริ่มการฝึกซ้อมอาวุธและการวางแผนป้อมปราการ ชาวพื้นเมืองเงียบไป ซึ่งน่ากลัวกว่าการคุกคาม';

  @override
  String get event_nativeSovereignty_choice2 => 'เสนอธรรมาภิบาลร่วมกันของโลก';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'คุณเสนอกรอบการทำงานสำหรับการอยู่ร่วมกันและแบ่งปันทรัพยากร ชาวบ้านสนใจแต่ก็ระวังตัว การเจรจาจะซับซ้อน แต่ก็มีความเป็นไปได้ของสันติภาพ';

  @override
  String get event_laborStrike_title => 'การนัดหยุดงานของแรงงาน';

  @override
  String get event_laborStrike_narrative =>
      'ทีมงานวิศวกรได้ลาออกจากงาน โดยเรียกร้องให้มีกะที่สั้นลง มีการจัดสรรอาหารที่ดีขึ้น และเสียงในการตัดสินใจเกี่ยวกับการเดินเรือ ระบบที่สำคัญกำลังทำงานด้วยการสำรองข้อมูลอัตโนมัติ แต่จะคงอยู่ได้ไม่นาน ชาวอาณานิคมที่เหลือต่างเฝ้าดูอย่างประหม่า';

  @override
  String get event_laborStrike_choice0 =>
      'ตอบสนองความต้องการของคนงานได้อย่างเต็มที่';

  @override
  String get event_laborStrike_outcome0 =>
      'การหยุดงานประท้วงจะสิ้นสุดลงทันที คนงานกลับเข้าทำงานโดยมีสภาพที่ดีขึ้น ประสิทธิภาพการทำงานลดลงเล็กน้อยเมื่อกะที่สั้นลงมีผล แต่ความภักดีไม่สั่นคลอน';

  @override
  String get event_laborStrike_choice1 =>
      'ปราบปรามการนัดหยุดงานและบังคับใช้แรงงานบังคับ';

  @override
  String get event_laborStrike_outcome1 =>
      'กองกำลังรักษาความปลอดภัยคุ้มกันคนงานกลับไปยังสถานีของตนโดยใช้ปืนจ่อ เครื่องยนต์ส่งเสียงครวญครางอีกครั้ง แต่ความเกลียดชังยังคงคุกรุ่นอยู่ในชั้นล่าง คนงานหลายคนถูกจำกัดให้อยู่ในสี่ส่วน';

  @override
  String get event_laborStrike_choice2 =>
      'เสนอการประนีประนอมบางส่วนกับความต้องการที่สำคัญ';

  @override
  String get event_laborStrike_outcome2 =>
      'หลังจากการเจรจามาราธอน ข้อตกลงก็เกิดขึ้น: การปันส่วนที่ดีขึ้นและคำแนะนำ แต่ไม่มีการลดระยะเวลากะ ทั้งสองฝ่ายต่างตื่นเต้น แต่เครื่องยนต์ยังคงทำงานต่อไป';

  @override
  String get event_censorshipDebate_title => 'การอภิปรายเซ็นเซอร์';

  @override
  String get event_censorshipDebate_narrative =>
      'เอกสารที่รั่วไหลเผยให้เห็นสภาพที่แท้จริงของระบบที่ล้มเหลวของเรือ ความตื่นตระหนกแพร่กระจายไปทั่วชั้นล่าง เจ้าหน้าที่สื่อสารเสนอให้จำกัดการเข้าถึงข้อมูลเพื่อป้องกันความไม่สงบต่อไป ผู้สนับสนุนสิทธิพลเมืองรู้สึกโกรธเคือง';

  @override
  String get event_censorshipDebate_choice0 =>
      'รับประกันการเข้าถึงข้อมูลทั้งหมดฟรี';

  @override
  String get event_censorshipDebate_outcome0 =>
      'สร้างความโปร่งใสอย่างสมบูรณ์ ความตื่นตระหนกในช่วงแรกบรรเทาลงเมื่อชาวอาณานิคมรวมตัวกันเพื่อช่วยแก้ไขปัญหาที่พวกเขาเข้าใจในตอนนี้ ความไว้วางใจในการเป็นผู้นำเพิ่มขึ้น แม้ว่าข้อมูลบางอย่างจะทำให้เกิดความทุกข์ก็ตาม';

  @override
  String get event_censorshipDebate_choice1 =>
      'ใช้การควบคุมข้อมูลอย่างเต็มรูปแบบ';

  @override
  String get event_censorshipDebate_outcome1 =>
      'ขณะนี้การสื่อสารทั้งหมดถูกกรองผ่านคำสั่ง ความตื่นตระหนกหยุดลง ถูกแทนที่ด้วยความสงบอันน่าขนลุก แต่ข่าวลือมาเติมเต็มความว่างเปล่าที่เกิดจากความจริงที่ถูกเซ็นเซอร์ และมักจะเลวร้ายยิ่งกว่าความเป็นจริง';

  @override
  String get event_censorshipDebate_choice2 =>
      'กรองเฉพาะข้อมูลที่ละเอียดอ่อนด้านความปลอดภัย';

  @override
  String get event_censorshipDebate_outcome2 =>
      'มีการสร้างระบบการจำแนกประเภท ข้อมูลส่วนใหญ่ไหลได้อย่างอิสระ แต่ข้อมูลทางการทหารและข้อมูลระบบที่สำคัญจำเป็นต้องได้รับการเคลียร์ พื้นกลางที่ใช้การได้ซึ่งส่วนใหญ่พึงพอใจ';

  @override
  String get event_colonialCharter_title => 'กฎบัตรอาณานิคม';

  @override
  String get event_colonialCharter_narrative =>
      'เมื่อโลกล่มสลายใกล้เข้ามา ชาวอาณานิคมจะต้องร่างกฎหมายพื้นฐานสำหรับสังคมใหม่ของพวกเขา ค่ายปรัชญาสามค่ายได้ถือกำเนิดขึ้น แต่ละค่ายสนับสนุนวิสัยทัศน์ที่แตกต่างกันสำหรับสิ่งที่อาณานิคมควรจะเป็น การอภิปรายร้อนแรงและเป็นส่วนตัวอย่างลึกซึ้ง';

  @override
  String get event_colonialCharter_choice0 =>
      'กฎบัตรก้าวหน้าที่เน้นสิทธิส่วนบุคคล';

  @override
  String get event_colonialCharter_outcome0 =>
      'กฎบัตรนี้ประดิษฐานเสรีภาพส่วนบุคคล ความเสมอภาค และการเคลื่อนไหวทางสังคม ศิลปินและนักคิดเฉลิมฉลอง นักอนุรักษนิยมเตือนว่าเสรีภาพที่ไม่ถูกตรวจสอบนำไปสู่ความสับสนวุ่นวาย';

  @override
  String get event_colonialCharter_choice1 =>
      'กฎบัตรอนุรักษ์นิยมที่อนุรักษ์ประเพณีของโลก';

  @override
  String get event_colonialCharter_outcome1 =>
      'กฎบัตรนี้ประมวลค่านิยมดั้งเดิม โครงสร้างครอบครัว และการปฏิบัติตามศาสนา หลายคนพบความสะดวกสบายในประเพณีที่คุ้นเคย คนอื่นๆ รู้สึกอึดอัดกับน้ำหนักของความคิดแบบโลกเก่า';

  @override
  String get event_colonialCharter_choice2 =>
      'กฎบัตรเชิงปฏิบัติมุ่งเน้นไปที่ความอยู่รอดและการเติบโต';

  @override
  String get event_colonialCharter_outcome2 =>
      'กฎบัตรนี้ให้ความสำคัญกับการจัดการทรัพยากร การศึกษาด้านเทคนิค และการพัฒนาเศรษฐกิจ แม้ว่าจะไม่มีบทกวีแต่ก็ช่วยให้แน่ใจว่าอาณานิคมจะมีประสิทธิภาพและมีการจัดระเบียบอย่างดี';

  @override
  String get event_separatistMovement_title => 'ขบวนการแบ่งแยกดินแดน';

  @override
  String get event_separatistMovement_narrative =>
      'กลุ่มชาวอาณานิคมได้ประกาศเอกราชจากการกำกับดูแลเรือ พวกเขาปิดกั้นตัวเองในส่วนท้ายเรือ เพื่อเรียกร้องสิทธิ์ในการตั้งถิ่นฐานของตนเองเมื่อเครื่องลงจอด พวกเขาควบคุมปริมาณอาหารสำรองของเรือ 15% และอาร์เรย์การนำทางสำรอง';

  @override
  String get event_separatistMovement_choice0 =>
      'ให้เอกราชในระดับภูมิภาคภายในกรอบของรัฐบาลกลาง';

  @override
  String get event_separatistMovement_outcome0 =>
      'กลุ่มแบ่งแยกดินแดนยอมรับข้อตกลง: เขตของตนเองกับการปกครองท้องถิ่น ภายใต้ร่มเงาของรัฐบาลกลาง แบบอย่างของการแตกกระจายเป็นกังวลสำหรับบางคน แต่ความสงบสุขยังคงอยู่';

  @override
  String get event_separatistMovement_choice1 =>
      'บุกโจมตีเครื่องกีดขวางและรวมกำลังเข้าด้วยกัน';

  @override
  String get event_separatistMovement_outcome1 =>
      'ทีมรักษาความปลอดภัยฝ่าฝืนส่วนท้ายเรือ พวกแบ่งแยกดินแดนต่อต้านอย่างดุเดือด คำสั่งซื้อได้รับการฟื้นฟู แต่มีราคาแย่มาก เรือเป็นอันหนึ่งอันเดียวกันในกายถ้าไม่ใช่วิญญาณ';

  @override
  String get event_separatistMovement_choice2 =>
      'จัดการกับความคับข้องใจที่เป็นสาเหตุให้เกิดการเคลื่อนไหว';

  @override
  String get event_separatistMovement_outcome2 =>
      'ผู้ไกล่เกลี่ยพยายามทำความเข้าใจว่าอะไรผลักไสฝ่ายนั้นให้ถอยออกไป การปฏิรูปการกระจายทรัพยากรและการเป็นตัวแทนทำให้ผู้แบ่งแยกดินแดนกลับเข้าสู่กลุ่มอย่างช้าๆ การรักษาต้องใช้เวลา';

  @override
  String get event_warCouncil_title => 'สภาสงคราม';

  @override
  String get event_warCouncil_narrative =>
      'เมื่อตรวจพบภัยคุกคามที่อาจเกิดขึ้นในระบบใกล้เคียง ผู้นำของเรือจึงเรียกประชุมสภาสงคราม คำถาม: ทรัพยากรที่มีจำกัดของอาณานิคมควรทุ่มเทให้กับการเตรียมพร้อมทางทหารมากน้อยเพียงใดเมื่อเทียบกับโครงสร้างพื้นฐานของพลเรือน?';

  @override
  String get event_warCouncil_choice0 =>
      'อาวุธยุทโธปกรณ์เต็มรูปแบบ: ปลอมอาวุธและฝึกทหาร';

  @override
  String get event_warCouncil_outcome0 =>
      'โรงปฏิบัติงานได้รับการดัดแปลงใหม่สำหรับการผลิตอาวุธ ชาวอาณานิคมที่มีร่างกายแข็งแรงทุกคนจะได้รับการฝึกการต่อสู้ เรือมีอาวุธครบมือ แต่งบประมาณสำหรับอุปกรณ์การเกษตรกลับลดลง';

  @override
  String get event_warCouncil_choice1 => 'การลดอาวุธ: ละลายอาวุธเป็นเครื่องมือ';

  @override
  String get event_warCouncil_outcome1 =>
      'คลังอาวุธว่างเปล่าและเนื้อหาในนั้นถูกรีไซเคิลเป็นวัสดุก่อสร้าง อาณานิคมจะสร้างโดยใช้ผาลไถนา ไม่ใช่ดาบ ผู้รักสงบย่อมชื่นชมยินดี นักสัจนิยมกังวลกับสิ่งที่แฝงตัวอยู่ในความมืด';

  @override
  String get event_warCouncil_choice2 =>
      'ท่าป้องกันเท่านั้น: โล่และกำแพง ไม่ใช่ดาบ';

  @override
  String get event_warCouncil_outcome2 =>
      'ทรัพยากรไปที่ป้อมปราการ โล่ และระบบเตือนภัยล่วงหน้า ไม่มีการผลิตอาวุธที่น่ารังเกียจ แนวทางที่สมดุลที่ช่วยให้ทางเลือกต่างๆ เปิดกว้างโดยไม่กระตุ้นให้เกิดเพื่อนบ้าน';

  @override
  String get event_tradeFederation_title => 'สหพันธ์การค้า';

  @override
  String get event_tradeFederation_narrative =>
      'เมื่ออาณานิคมเข้าใกล้ความมีชีวิต กลุ่มต่างๆ ก็ถกเถียงกันว่าจะจัดโครงสร้างเศรษฐกิจของตนอย่างไร คำถามนี้มีมากกว่าแค่การอยู่รอดเท่านั้น แต่ยังเป็นตัวกำหนดประเภทของสังคมที่หยั่งรากลึกบนดินของมนุษย์ต่างดาว พ่อค้า คอมมิวนิสต์ และข้าราชการต่างก็ทำเรื่องของตัวเอง';

  @override
  String get event_tradeFederation_choice0 =>
      'จัดตั้งเขตการค้าเสรีโดยมีกฎระเบียบน้อยที่สุด';

  @override
  String get event_tradeFederation_outcome0 =>
      'ตลาดผุดขึ้นในทุกโมดูลที่อยู่อาศัย นวัตกรรมเจริญรุ่งเรืองเมื่อเทรดเดอร์แข่งขันกัน ความไม่เท่าเทียมกันด้านความมั่งคั่งเพิ่มมากขึ้น แต่แหล่งรวมทรัพยากรทั้งหมดที่มีอยู่ในอาณานิคมก็เพิ่มขึ้นเช่นกัน';

  @override
  String get event_tradeFederation_choice1 =>
      'ดำเนินการแบ่งปันทรัพยากรทั้งหมดโดยชุมชน';

  @override
  String get event_tradeFederation_outcome1 =>
      'ทรัพย์สินส่วนบุคคลถูกยกเลิก ทุกอย่างเป็นของทุกคน ไม่มีใครหิวโหย แต่ก็ไม่มีใครมีแรงจูงใจที่จะผลิตเกินปริมาณขั้นต่ำ ความธรรมดาก็สบายใจ';

  @override
  String get event_tradeFederation_choice2 => 'สร้างระบบการค้าที่รัฐจัดการ';

  @override
  String get event_tradeFederation_outcome2 =>
      'รัฐบาลควบคุมการค้า การตั้งราคา และการจัดสรรทรัพยากรทั้งหมด ระบบมีความเป็นธรรมแต่ไม่ยืดหยุ่น ตลาดมืดเกิดขึ้นในบริเวณทางเดินซ่อมบำรุง';

  @override
  String get event_faithVsScience_title => 'ศรัทธากับวิทยาศาสตร์';

  @override
  String get event_faithVsScience_narrative =>
      'กล้องโทรทรรศน์บนเรือได้จับภาพปรากฏการณ์จักรวาลที่ขัดแย้งโดยตรงต่อหลักการสำคัญของขบวนการศรัทธาที่โดดเด่น หัวหน้านักวิทยาศาสตร์ต้องการเผยแพร่ผลการวิจัย ผู้นำศาสนายืนกรานว่าพวกเขาจะทำลายชุมชนให้แตกแยก';

  @override
  String get event_faithVsScience_choice0 =>
      'เผยแพร่ผลการวิจัยทางวิทยาศาสตร์อย่างครบถ้วน';

  @override
  String get event_faithVsScience_outcome0 =>
      'ความจริงมีชัยเหนือความสะดวกสบาย ข้อมูลถูกเปิดเผยและขบวนการทางศาสนาแตกสลาย ผู้เชื่อบางคนปรับความเชื่อของตน คนอื่นสูญเสียมันไปโดยสิ้นเชิง ความรู้ก้าวหน้า.';

  @override
  String get event_faithVsScience_choice1 =>
      'ระงับการค้นพบเพื่อรักษาความสามัคคีในสังคม';

  @override
  String get event_faithVsScience_outcome1 =>
      'ข้อมูลถูกจัดประเภท ชุมชนศาสนายังคงมีเสถียรภาพ แต่ทีมวิทยาศาสตร์กลับขวัญเสีย ความจริงที่เลื่อนออกไปไม่ใช่การปฏิเสธความจริง แต่มันให้ความรู้สึกแบบนั้น';

  @override
  String get event_faithVsScience_choice2 =>
      'ประชุมแผงร่วมเพื่อค้นหาความกลมกลืนระหว่างมุมมองทั้งสอง';

  @override
  String get event_faithVsScience_outcome2 =>
      'นักวิทยาศาสตร์และนักเทววิทยาทำงานร่วมกันเพื่อตีความสิ่งที่ค้นพบใหม่ การสังเคราะห์แบบใหม่เกิดขึ้นซึ่งขยายทั้งความเข้าใจและศรัทธา ไม่ใช่ทุกคนที่มั่นใจ แต่บทสนทนาก็มีประโยชน์';

  @override
  String get event_surveillanceState_title => 'รัฐเฝ้าระวัง';

  @override
  String get event_surveillanceState_narrative =>
      'หลังจากเหตุการณ์ก่อวินาศกรรมหลายครั้ง หัวหน้าหน่วยรักษาความปลอดภัยเสนอให้ติดตั้งระบบติดตามในทุกส่วนของเรือ กล้อง ไมโครโฟน และเครื่องสแกนไบโอเมตริกซ์จะติดตามการเคลื่อนไหวของชาวอาณานิคมทุกคน ผู้สนับสนุนความเป็นส่วนตัวรู้สึกหวาดกลัว';

  @override
  String get event_surveillanceState_choice0 =>
      'ปฏิเสธข้อเสนอการเฝ้าระวังโดยสิ้นเชิง';

  @override
  String get event_surveillanceState_outcome0 =>
      'ความเป็นส่วนตัวจะถูกรักษาไว้ ผู้ก่อวินาศกรรมยังคงลอยนวล แต่ชาวอาณานิคมนอนหลับได้ง่ายขึ้นเมื่อรู้ว่าไม่มีใครจับตาดู การสืบสวนดำเนินต่อไปด้วยวิธีการแบบดั้งเดิม';

  @override
  String get event_surveillanceState_choice1 =>
      'ดำเนินการเฝ้าระวังเต็มรูปแบบทั่วเรือ';

  @override
  String get event_surveillanceState_outcome1 =>
      'ทุกมุมของเรือได้รับการตรวจสอบ ผู้ก่อวินาศกรรมถูกจับได้ภายในไม่กี่วัน แต่กล้องยังคงอยู่ และหัวหน้าหน่วยรักษาความปลอดภัยไม่สนใจที่จะปิดกล้อง เคย.';

  @override
  String get event_surveillanceState_choice2 =>
      'ติดตั้งการตรวจสอบแบบจำกัดในพื้นที่วิกฤติเท่านั้น';

  @override
  String get event_surveillanceState_outcome2 =>
      'กล้องจะครอบคลุมห้องเครื่อง คลังอาวุธ และสะพาน ที่อยู่อาศัยยังคงเป็นส่วนตัว ในที่สุดผู้ก่อวินาศกรรมจะถูกระบุตัวได้ผ่านการวิเคราะห์รูปแบบ การตอบสนองที่วัดได้';

  @override
  String get event_nativeAlliance_title => 'พันธมิตรพื้นเมือง';

  @override
  String get event_nativeAlliance_narrative =>
      'อารยธรรมพื้นเมืองได้เสนอสนธิสัญญาอย่างเป็นทางการ ทูตของพวกเขาเดินทางมาโดยรถรับส่ง ซึ่งเป็นสิ่งมีชีวิตที่สง่างามที่พูดผ่านอุปกรณ์แปลที่มีความซับซ้อนอย่างน่าอัศจรรย์ พวกเขาเสนอความสัมพันธ์สามรูปแบบ แต่ละรูปแบบมีความหมายที่แตกต่างกันสำหรับอนาคตของอาณานิคม';

  @override
  String get event_nativeAlliance_choice0 =>
      'ลงนามในสนธิสัญญาพันธมิตรที่เท่าเทียมกัน';

  @override
  String get event_nativeAlliance_outcome0 =>
      'สนธิสัญญาดังกล่าวกำหนดการป้องกันซึ่งกันและกัน การวิจัยร่วมกัน และสิทธิในดินแดนที่เท่าเทียมกัน อารยธรรมทั้งสองจะเติบโตไปด้วยกัน ชาวพื้นเมืองแบ่งปันความรู้ด้านการเกษตรที่เปลี่ยนแปลงโอกาสในอาณานิคมของคุณ';

  @override
  String get event_nativeAlliance_choice1 => 'เจรจาจากตำแหน่งที่ครอบงำอาณานิคม';

  @override
  String get event_nativeAlliance_outcome1 =>
      'คุณใช้ประโยชน์จากเทคโนโลยีขั้นสูงของคุณเพื่อรักษาเงื่อนไขที่ดี ชาวพื้นเมืองยอมสละดินแดนและทรัพยากร พวกเขาลงนามด้วยมือที่สั่นเทา ประวัติศาสตร์เคยเห็นสิ่งนี้มาก่อน และมันไม่ค่อยจบลงด้วยดี';

  @override
  String get event_nativeAlliance_choice2 =>
      'สร้างความร่วมมือทางการค้าที่มุ่งเน้นผลประโยชน์ร่วมกัน';

  @override
  String get event_nativeAlliance_outcome2 =>
      'การค้าเชื่อมช่องว่างระหว่างสายพันธุ์ วัสดุพื้นเมืองจะถูกส่งไปยังเวิร์คช็อปของคุณ เทคโนโลยีของคุณช่วยปรับปรุงยาของพวกเขา มิตรภาพเติบโตจากผลกำไรร่วมกัน';

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
