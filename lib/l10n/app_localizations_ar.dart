// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'البث النجمي';

  @override
  String get ui_title_stellar => 'نجمي';

  @override
  String get ui_title_broadcast => 'بث';

  @override
  String get ui_title_beginVoyage => 'ابدأ الرحلة';

  @override
  String get ui_title_dailyVoyage => 'الرحلة اليومية';

  @override
  String get ui_title_dailyCompleted => 'اكتملت اليومية';

  @override
  String get ui_title_customSeed => 'بذرة مخصصة';

  @override
  String get ui_title_legacyHub => 'مركز الإرث';

  @override
  String get ui_title_cancel => 'إلغاء';

  @override
  String get ui_title_startVoyage => 'انطلق';

  @override
  String ui_voyage_sector(int count) {
    return 'قطاع $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'البذرة: $code';
  }

  @override
  String get ui_voyage_scanners => 'الماسحات';

  @override
  String get ui_voyage_scanPlanet => 'مسح الكوكب';

  @override
  String get ui_voyage_noEnergy => 'لا طاقة';

  @override
  String get ui_voyage_pressOn => 'تابع';

  @override
  String get ui_voyage_systemHull => 'الهيكل';

  @override
  String get ui_voyage_systemNav => 'الملاحة';

  @override
  String get ui_voyage_systemCryopods => 'كبسولات التجميد';

  @override
  String get ui_voyage_systemCulture => 'الثقافة';

  @override
  String get ui_voyage_systemTech => 'التقنية';

  @override
  String get ui_voyage_systemConstruct => 'البناء';

  @override
  String get ui_voyage_systemShields => 'الدروع';

  @override
  String get ui_voyage_systemLanding => 'الهبوط';

  @override
  String get ui_voyage_scannerAtmo => 'مسح جوي';

  @override
  String get ui_voyage_scannerGrav => 'مسح جاذبي';

  @override
  String get ui_voyage_scannerMineral => 'مسح معدني';

  @override
  String get ui_voyage_scannerLife => 'مسح حيوي';

  @override
  String get ui_voyage_scannerTemp => 'مسح حراري';

  @override
  String get ui_voyage_scannerWater => 'مسح مائي';

  @override
  String get ui_voyage_narrative0 =>
      'المدار الأرضي خالٍ. كبسولات التجميد مستقرة. حلقة الأرشيف مؤمّنة.';

  @override
  String get ui_voyage_narrative1 =>
      'العبور عبر أطراف المنظومة طبيعي. الماسحات بعيدة المدى توسّع نطاق البحث.';

  @override
  String get ui_voyage_narrative2 =>
      'حركة المرور من جهة الأرض تلاشت دون عتبة الرصد.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'الإحداثيات المؤرشفة تطابق منظومة مُعلَّمة. يُعدَّل المسار.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'مصفوفات الماسحات لا تزال تُعاير لدقة الفضاء السحيق.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'منظومة مُعلَّمة في الأمام. بيانات المسح السابقة لا تزال متسقة.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'إشارة خافتة في الأمام. بدء المسح الكوكبي.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'الخروج من السرعة الفائقة اكتمل. منظومة نجمية جديدة في المشهد.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'بنوك كبسولات التجميد مستقرة. مسح القطاع جارٍ.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'كوكب جديد يتبلور في المصفوفة الأمامية.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'رسم الخرائط النجمية يُشير إلى مرشح واعد.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'رصدت الأجهزة عالَمًا آخر يستحق القياس.';

  @override
  String get ui_voyage_narrativePhrase6 => 'تم الإقفال على هدف جديد بالماسح.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'خرائط الملاحة تحدّثت. عالَم مرشح ضمن المدى.';

  @override
  String get ui_scan_landHere => 'الهبوط هنا';

  @override
  String get ui_scan_pressOn => 'تابع';

  @override
  String get ui_scan_allStatsVerified => 'تم التحقق من جميع البيانات';

  @override
  String get ui_scan_launchProbe => 'أطلق مسبارًا';

  @override
  String get ui_scan_habitability => 'القابلية للسكن';

  @override
  String get ui_scan_statAtmos => 'الغلاف الجوي';

  @override
  String get ui_scan_statTemp => 'الحرارة';

  @override
  String get ui_scan_statWater => 'الماء';

  @override
  String get ui_scan_statResource => 'الموارد';

  @override
  String get ui_scan_statGravity => 'الجاذبية';

  @override
  String get ui_scan_statBio => 'الحياة';

  @override
  String get ui_scan_statAnomaly => 'الشذوذ';

  @override
  String get ui_scan_statRadiation => 'الإشعاع';

  @override
  String get ui_landing_planetAnalysis => 'تحليل الكوكب';

  @override
  String get ui_landing_shipStatus => 'حالة السفينة';

  @override
  String ui_landing_fuel(int amount) {
    return 'الوقود: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'تحذير: وقود منخفض';

  @override
  String get ui_landing_landingRiskCritical => 'خطر الهبوط: حرج';

  @override
  String get ui_landing_landingRiskElevated => 'خطر الهبوط: مرتفع';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'نظام الهبوط متضرر بشدة. الدخول الجوي قد يدمّر الحمولة والمستوطنين.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'نظام الهبوط متدهور. توقّع دخولًا جويًا عنيفًا مع احتمال تضرر الأنظمة.';

  @override
  String get ui_landing_riskAssessment => 'تقييم المخاطر';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'سفينتك تتحمل ~$remaining مواجهات إضافية';
  }

  @override
  String get ui_landing_shipMayNotSurvive => 'قد لا تنجو سفينتك من رحلة أخرى';

  @override
  String get ui_landing_surfaceFeatures => 'معالم السطح';

  @override
  String get ui_landing_nameYourColony => 'سمِّ مستعمرتك';

  @override
  String get ui_landing_establishColony => 'أسّس المستعمرة';

  @override
  String get ui_landing_pressOnward => 'تابع المسير';

  @override
  String get ui_landing_statAtmosphere => 'الغلاف الجوي';

  @override
  String get ui_landing_statTemperature => 'الحرارة';

  @override
  String get ui_landing_statWater => 'الماء';

  @override
  String get ui_landing_statResources => 'الموارد';

  @override
  String get ui_landing_statGravity => 'الجاذبية';

  @override
  String get ui_landing_statBiodiversity => 'التنوع الحيوي';

  @override
  String get ui_landing_statAvgHealth => 'متوسط الصحة';

  @override
  String get ui_landing_statHull => 'الهيكل';

  @override
  String get ui_landing_statNavigation => 'الملاحة';

  @override
  String get ui_landing_statCryopods => 'كبسولات التجميد';

  @override
  String get ui_landing_statCulture => 'الثقافة';

  @override
  String get ui_landing_statTech => 'التقنية';

  @override
  String get ui_landing_statConstructors => 'البنّاؤون';

  @override
  String get ui_landing_statShields => 'الدروع';

  @override
  String get ui_landing_statLandingSys => 'نظام الهبوط';

  @override
  String get ui_landingSequence_phase1 => 'المرحلة 1: الالتزام المداري';

  @override
  String get ui_landingSequence_phase1Desc =>
      'نافذة الهبوط مفتوحة. الالتزام بالدخول.';

  @override
  String get ui_landingSequence_phase2 => 'المرحلة 2: الاحتراق الجوي';

  @override
  String get ui_landingSequence_title => 'تسلسل الهبوط';

  @override
  String get ui_landingSequence_viewColonyReport => 'عرض تقرير المستعمرة';

  @override
  String get ui_ending_colonyEstablished => 'تأسست المستعمرة';

  @override
  String get ui_ending_colonyScore => 'نتيجة المستعمرة';

  @override
  String get ui_ending_colonyProfile => 'ملف المستعمرة';

  @override
  String get ui_ending_landscape => 'المشهد الطبيعي';

  @override
  String get ui_ending_voyageRecord => 'سجل الرحلة';

  @override
  String get ui_ending_scoreBreakdown => 'تفصيل النتيجة';

  @override
  String get ui_ending_total => 'المجموع';

  @override
  String get ui_ending_achievementsUnlocked => 'الإنجازات المُفتَعَلة';

  @override
  String get ui_ending_challengeFriend => 'تحدَّ صديقًا';

  @override
  String get ui_ending_copySeed => 'نسخ البذرة';

  @override
  String get ui_ending_viewLegacy => 'عرض الإرث';

  @override
  String get ui_ending_newVoyage => 'رحلة جديدة';

  @override
  String get ui_ending_achievementFirstLanding => 'أول هبوط';

  @override
  String get ui_ending_achievementGoldenAge => 'العصر الذهبي';

  @override
  String get ui_ending_achievementSurvivor => 'الناجي';

  @override
  String get ui_ending_achievementExplorer => 'المستكشف';

  @override
  String get ui_ending_achievementPerfectionist => 'المثالي';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'ناجي عالَم الموت';

  @override
  String get ui_ending_achievementFullCrew => 'طاقم كامل';

  @override
  String get ui_ending_achievementProbeMaster => 'سيد المسابير';

  @override
  String get ui_ending_achievementIronHull => 'هيكل حديدي';

  @override
  String get ui_ending_achievementLeapOfFaith => 'قفزة إيمان';

  @override
  String get ui_gameOver_missionFailed => 'فشلت المهمة';

  @override
  String get ui_gameOver_voyageRecord => 'سجل الرحلة';

  @override
  String get ui_gameOver_encountersSurvived => 'المواجهات المُجتازة';

  @override
  String get ui_gameOver_probesRemaining => 'المسابير المتبقية';

  @override
  String get ui_gameOver_colonistsRemaining => 'المستوطنون المتبقون';

  @override
  String get ui_gameOver_finalShipHealth => 'صحة السفينة النهائية';

  @override
  String get ui_gameOver_planetsSkipped => 'الكواكب المُتجاوَزة';

  @override
  String get ui_gameOver_damageTaken => 'الضرر المُتلقّى';

  @override
  String get ui_gameOver_fuelRemaining => 'الوقود المتبقي';

  @override
  String get ui_gameOver_energyRemaining => 'الطاقة المتبقية';

  @override
  String get ui_gameOver_challengeFriend => 'تحدَّ صديقًا';

  @override
  String get ui_gameOver_viewLegacy => 'عرض الإرث';

  @override
  String get ui_gameOver_newVoyage => 'رحلة جديدة';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 البث النجمي\n\nلم أنجُ... $reason.\nهل تظن أنك أفضل حالًا في الرحلة ذاتها؟\nstellarbroadcast://play?seed=$seedCode\n\nلا تملك التطبيق؟\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'مات آخر مستوطن في سُباته المُجمَّد — انهيار متسلسل لم يستطع أي بروتوكول طوارئ منعه. أبحرت سفينة الخروج وحيدةً، سفينة أشباح لا تحمل سوى أنظمة آلية وصمتٍ متجمد. لم تفشل مهمتها في لحظة كارثة، بل في استنزافٍ بطيء للأرواح البشرية، واحدةً تلو الأخرى، حتى لم يبقَ أحد.';

  @override
  String get ui_gameOver_epilogueHull =>
      'انهار الهيكل في صمت — إجهاد المعدن تراكم من اصطدامات دقيقة لا تُحصى حتى عجزت السفينة عن التماسك. نزف الغلاف الجوي إلى الفراغ. تفككت سفينة المستعمرة \"الخروج\"، وانضمت حطامها إلى حقول الركام القديمة بين النجوم. لم تُستقبَل أي إشارة استغاثة قط.';

  @override
  String get ui_gameOver_epilogueNav =>
      'بلا ملاحة، انجرفت سفينة الخروج إلى فضاء مجهول — خرائط النجوم بلا جدوى، وتصحيح المسار مستحيل. أبحرت السفينة عبر الظلام، وركابها النائمون لا يعلمون أن وجهتهم استُبدلت بالأبدية. يقول البعض إن السفينة لا تزال تتيه، سفينة أشباح في ليلٍ لا ينتهي.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'واحدةً تلو الأخرى، فشلت كبسولات التجميد — انهيار متسلسل لم يستطع أي بروتوكول طوارئ إيقافه. لم يستيقظ المستوطنون أبدًا. واصلت سفينة الخروج مسارها المبرمج، سفينة ضريح لا تحمل سوى الصمت إلى أي عالَم ستبلغه في نهاية المطاف. نصبٌ تذكاري لحلمٍ مات في سُباتٍ متجمد.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'صمتت سفينة الخروج. مهمتها، وطاقمها، وحمولتها من الأمل البشري — كلها ضاعت في اللامبالاة الشاسعة بين النجوم. ربما يومًا ما ستعثر حضارة أخرى على الحطام وتتساءل أي نوعٍ شجاع تجرّأ على عبور الفراغ.';

  @override
  String get ui_settings_title => 'الإعدادات';

  @override
  String get ui_settings_music => 'الموسيقى';

  @override
  String get ui_settings_soundEffects => 'المؤثرات الصوتية';

  @override
  String get ui_settings_haptics => 'الاهتزاز اللمسي';

  @override
  String get ui_settings_premium => 'المميز';

  @override
  String get ui_settings_goPremium => 'الترقية للمميز';

  @override
  String get ui_settings_enabled => 'مُفعَّل';

  @override
  String get ui_settings_volume => 'مستوى الصوت';

  @override
  String get ui_settings_language => 'اللغة';

  @override
  String get ui_settings_systemDefault => 'الإعداد الافتراضي للنظام';

  @override
  String get ui_legacy_title => 'مركز الإرث';

  @override
  String get ui_legacy_commanderStats => 'إحصائيات القائد';

  @override
  String get ui_legacy_highScores => 'أعلى النتائج';

  @override
  String get ui_legacy_upgrades => 'الترقيات';

  @override
  String get ui_legacy_achievements => 'الإنجازات';

  @override
  String get ui_legacy_voyageLog => 'سجل الرحلات';

  @override
  String get ui_legacy_voyages => 'الرحلات';

  @override
  String get ui_legacy_bestScore => 'أفضل نتيجة';

  @override
  String get ui_legacy_legacyPts => 'نقاط الإرث';

  @override
  String get ui_legacy_completed => 'مكتملة';

  @override
  String get ui_legacy_notYetPlayed => 'لم تُلعب بعد';

  @override
  String get ui_legacy_dailyHistory => 'السجل اليومي';

  @override
  String get ui_premium_goPremium => 'الترقية للمميز';

  @override
  String get ui_premium_subtitle => 'ادعم المهمة. طوّر قيادتك.';

  @override
  String get ui_premium_removeAds => 'إزالة جميع الإعلانات للأبد';

  @override
  String get ui_premium_supportIndie => 'دعم التطوير المستقل';

  @override
  String get ui_premium_exclusiveTitle => 'لقب قائد حصري';

  @override
  String get ui_premium_priorityFeatures => 'طلبات ميزات ذات أولوية';

  @override
  String get ui_premium_lifetime => 'مدى الحياة';

  @override
  String get ui_scannerUpgrade_title => 'ترقية الماسح';

  @override
  String get ui_scannerUpgrade_subtitle => 'اختر ماسحًا لترقيته';

  @override
  String get ui_scannerUpgrade_skip => 'تخطي';

  @override
  String get ui_scannerUpgrade_max => 'الأقصى';

  @override
  String get ui_scannerUpgrade_atmospheric => 'جوي';

  @override
  String get ui_scannerUpgrade_gravimetric => 'جاذبي';

  @override
  String get ui_scannerUpgrade_mineral => 'معدني';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'علامات حياة';

  @override
  String get ui_scannerUpgrade_temperature => 'حراري';

  @override
  String get ui_scannerUpgrade_water => 'مائي';

  @override
  String get ui_event_continue => 'متابعة';

  @override
  String get ui_event_tapToSkip => 'انقر للتخطي';

  @override
  String get ui_event_colonists => 'المستوطنون';

  @override
  String get ui_event_landing => 'الهبوط';

  @override
  String get ui_event_atmScan => 'مسح جوي';

  @override
  String get ui_event_gravScan => 'مسح جاذبي';

  @override
  String get ui_event_minScan => 'مسح معدني';

  @override
  String get ui_event_lifeScan => 'مسح حيوي';

  @override
  String get ui_event_tempScan => 'مسح حراري';

  @override
  String get ui_event_h2oScan => 'مسح مائي';

  @override
  String get onboarding_page0_title => 'أمل البشرية الأخير';

  @override
  String get onboarding_page0_description =>
      'الأرض تحتضر. جمعت حكومات العالم آخر احتياطياتها لبناء سفينة واحدة أخيرة — سفينة مستعمرة تحمل بقايا البشرية نحو النجوم.';

  @override
  String get onboarding_page1_title => 'ابحث عن وطنٍ جديد';

  @override
  String get onboarding_page1_description =>
      'أبحر عبر الفراغ المجهول بين النجوم. امسح عوالم غريبة، وواجه أخطار كونية، واتخذ قرارات مستحيلة.';

  @override
  String get onboarding_page2_title => 'إرثك خالد';

  @override
  String get onboarding_page2_description =>
      'كل رحلة تعلّم البشرية شيئًا جديدًا. اكسب نقاط الإرث لفتح ترقيات دائمة، وانقش اسمك بين النجوم.';

  @override
  String get onboarding_page3_title => 'خصوصيتك، خيارك';

  @override
  String get onboarding_page3_description => 'اختر كيف تودّ تجربة البث النجمي.';

  @override
  String get planet_tierUtopia => 'المدينة الفاضلة';

  @override
  String get planet_tierParadise => 'الفردوس';

  @override
  String get planet_tierHabitable => 'صالح للسكن';

  @override
  String get planet_tierHarsh => 'قاسٍ';

  @override
  String get planet_tierHostile => 'معادٍ';

  @override
  String get planet_tierDeathWorld => 'عالَم الموت';

  @override
  String get planet_featurePlantLife => 'حياة نباتية';

  @override
  String get planet_featureEdiblePlants => 'نباتات صالحة للأكل';

  @override
  String get planet_featurePoisonousPlants => 'نباتات سامة';

  @override
  String get planet_featureUnicellularLife => 'حياة أحادية الخلية';

  @override
  String get planet_featureDangerousFauna => 'حيوانات خطرة';

  @override
  String get planet_featureTameableFauna => 'حيوانات قابلة للتدجين';

  @override
  String get planet_featureAirtightCaves => 'كهوف محكمة الإغلاق';

  @override
  String get planet_featureInsulatedCaves => 'كهوف معزولة حراريًا';

  @override
  String get planet_featureBarrenMoon => 'قمر قاحل';

  @override
  String get planet_featureMetalRichMoon => 'قمر غني بالمعادن';

  @override
  String get planet_featureUnstableMoon => 'قمر غير مستقر';

  @override
  String get planet_featureOutstandingBeauty => 'جمال استثنائي';

  @override
  String get planet_featureOutstandingUgliness => 'قبح استثنائي';

  @override
  String get planet_featureAncientRuins => 'أطلال قديمة';

  @override
  String get planet_featureMonuments => 'نُصُب تذكارية';

  @override
  String get planet_featureRapidRotation => 'دوران سريع';

  @override
  String get planet_featureSlowRotation => 'دوران بطيء';

  @override
  String get planet_featureVolcanicActivity => 'نشاط بركاني';

  @override
  String get planet_featureTectonicInstability => 'عدم استقرار تكتوني';

  @override
  String get planet_featureElectricalStorms => 'عواصف كهربائية';

  @override
  String get planet_featureToxicSpores => 'أبواغ سامة';

  @override
  String get planet_featureDeepOceans => 'محيطات عميقة';

  @override
  String get planet_featureGeothermalVents => 'فوهات حرارية أرضية';

  @override
  String get planet_featureStrongMagnetosphere => 'غلاف مغناطيسي قوي';

  @override
  String get planet_featureWeakMagnetosphere => 'غلاف مغناطيسي ضعيف';

  @override
  String get planet_featureMegafauna => 'حيوانات ضخمة';

  @override
  String get planet_featureSymbioticOrganisms => 'كائنات تكافلية';

  @override
  String get planet_featureGravityWells => 'آبار جاذبية';

  @override
  String get planet_featureSubspaceEchoes => 'أصداء تحت فضائية';

  @override
  String get planet_featureBioluminescentLife => 'حياة بيولوجية مضيئة';

  @override
  String get planet_featureAquaticMegafauna => 'حيوانات مائية عملاقة';

  @override
  String get planet_featureFloatingIslands => 'جزر عائمة';

  @override
  String get planet_featureCrystalCaverns => 'كهوف كريستالية';

  @override
  String get planet_featureLavaTubes => 'أنفاق الحمم';

  @override
  String get planet_featureIceTunnels => 'أنفاق الجليد';

  @override
  String get planet_featureOrbitalWreckage => 'حطام مداري';

  @override
  String get planet_featureMegastructuralFragments => 'شظايا منشآت عملاقة';

  @override
  String get planet_featureAncientObservatory => 'مرصد أثري';

  @override
  String get planet_featureExtremeSeasons => 'فصول متطرفة';

  @override
  String get planet_featureCryovolcanism => 'بركانية جليدية';

  @override
  String get planet_featureFloatingKelpForests => 'غابات طحالب عائمة';

  @override
  String get planet_featureSingingCrystals => 'بلورات مغنّية';

  @override
  String get planet_featureFertileSoil => 'تربة خصبة';

  @override
  String get planet_featureHelium3Deposits => 'رواسب الهيليوم-3';

  @override
  String get planet_featureExoticIsotopes => 'نظائر غريبة';

  @override
  String get planet_featureMedicinalFlora => 'نباتات طبية';

  @override
  String get ui_monthJan => 'يناير';

  @override
  String get ui_monthFeb => 'فبراير';

  @override
  String get ui_monthMar => 'مارس';

  @override
  String get ui_monthApr => 'أبريل';

  @override
  String get ui_monthMay => 'مايو';

  @override
  String get ui_monthJun => 'يونيو';

  @override
  String get ui_monthJul => 'يوليو';

  @override
  String get ui_monthAug => 'أغسطس';

  @override
  String get ui_monthSep => 'سبتمبر';

  @override
  String get ui_monthOct => 'أكتوبر';

  @override
  String get ui_monthNov => 'نوفمبر';

  @override
  String get ui_monthDec => 'ديسمبر';

  @override
  String get event_asteroidField_title => 'حقل كويكبات';

  @override
  String get event_asteroidField_narrative =>
      'ترصد الماسحات بعيدة المدى حقل كويكبات كثيفًا في مسار رحلتنا مباشرة. تحسب الملاحة خيارين: اندفاعة محفوفة بالمخاطر عبر أضيق ممر، أو التفاف طويل يستنزف احتياطي الوقود ويُجهد مصفوفة الملاحة.';

  @override
  String get event_asteroidField_choice0_text => 'اخترق الممر';

  @override
  String get event_asteroidField_choice0_outcome =>
      'ترتجف السفينة من الاصطدامات الدقيقة التي تقصف الهيكل. نجحنا في العبور، لكن لم نخرج سالمين.';

  @override
  String get event_asteroidField_choice1_text => 'اسلك الطريق الطويل';

  @override
  String get event_asteroidField_choice1_outcome =>
      'يحرق الالتفاف وقودًا ثمينًا ويُرهق حاسوب الملاحة، لكن الهيكل يبقى سليمًا.';

  @override
  String get event_asteroidField_choice2_text =>
      'استخدم طائرات التعدين لتمهيد الطريق';

  @override
  String get event_asteroidField_choice2_outcome =>
      'تنحت الطائرات قناةً آمنة وتجمع معادن مفيدة، لكن العملية تستنزف حجرة التقنية.';

  @override
  String get event_asteroidField_choice3_text => 'أطلق مسبارًا كشَرَك';

  @override
  String get event_asteroidField_choice3_outcome =>
      'يجذب المسبار أكثف التجمعات بعيدًا عن السفينة. نتسلل بخدوش طفيفة فقط.';

  @override
  String get event_solarFlare_title => 'توهج شمسي قادم';

  @override
  String get event_solarFlare_narrative =>
      'ينفجر نجم قريب بقذفة إكليلية هائلة. ستصلنا موجة الجسيمات المشحونة في دقائق. يمكننا تحويل الطاقة إلى الدروع، أو إيواء المستوطنين في القلب، أو الصمود.';

  @override
  String get event_solarFlare_choice0_text => 'حوّل كل الطاقة إلى الدروع';

  @override
  String get event_solarFlare_choice0_outcome =>
      'صمدت الدروع، لكن زيادة الطاقة أحرقت الأنظمة الثانوية.';

  @override
  String get event_solarFlare_choice1_text =>
      'انقل المستوطنين إلى القلب المحمي';

  @override
  String get event_solarFlare_choice1_outcome =>
      'نجا المستوطنون دون أذى، لكن الطوابق الخارجية تلقت ضرر إشعاعي.';

  @override
  String get event_solarFlare_choice2_text => 'اصمد — الجميع يتأهب';

  @override
  String get event_solarFlare_choice2_outcome =>
      'ضرب التوهج بقوة. ارتعشت الأنظمة لكن لا شيء كارثي. المعنويات، مع ذلك، تلقت ضربة.';

  @override
  String get event_solarFlare_choice3_text => 'أطلق مسبارًا لقياس جبهة الموجة';

  @override
  String get event_solarFlare_choice3_outcome =>
      'نقل المسبار بيانات دقيقة عن جبهة الموجة، مما سمح لنا بتوجيه السفينة بالزاوية المثلى. ضرر الماسحات طفيف.';

  @override
  String get event_nebulaPassage_title => 'عبور السديم';

  @override
  String get event_nebulaPassage_narrative =>
      'يمتد سديم متوهج عبر مسارنا. قد يعيد العبور خلاله شحن خلايا الطاقة لكنه قد يتداخل مع مصفوفات الماسحات. الالتفاف آمن لكنه بطيء.';

  @override
  String get event_nebulaPassage_choice0_text => 'حلّق عبر السديم';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'أعادت غازات السديم المتأينة شحن خلايا الطاقة لكنها أربكت معايرة الماسحات.';

  @override
  String get event_nebulaPassage_choice1_text => 'حاذِ الحافة';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'كسبنا شحنة جزئية مع حد أدنى من التداخل. حل وسط آمن.';

  @override
  String get event_microMeteorite_title => 'عاصفة نيازك دقيقة';

  @override
  String get event_microMeteorite_narrative =>
      'سرب من النيازك الدقيقة، غير مرئي حتى ثوانٍ مضت، يمزّق الألواح الأمامية للهيكل. فرق التحكم بالأضرار تهرع.';

  @override
  String get event_microMeteorite_choice0_text =>
      'دوران طارئ — قدّم المؤخرة المدرعة';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'نجحت المناورة. امتصت دروع المؤخرة الأسوأ، لكن جيروسكوبات الملاحة احتجت بعنف.';

  @override
  String get event_microMeteorite_choice1_text =>
      'أطلق روبوتات الإصلاح وسط العاصفة';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'رقّعت الروبوتات الهيكل آنيًا لكن فُقد عدد منها. استُنزفت احتياطيات التقنية.';

  @override
  String get event_microMeteorite_choice2_text => 'فجّر مسبارًا لتشتيت السرب';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'شتّت انفجار المسبار تجمع النيازك الدقيقة. وصلت شظايا قليلة فقط إلى الهيكل.';

  @override
  String get event_gravityWell_title => 'بئر جاذبية مجهول';

  @override
  String get event_gravityWell_narrative =>
      'ترنحت السفينة إذ جذبها بئر جاذبية خفي عن مسارها. تجاهد المحركات ضد السحب. يمكننا الاحتراق بقوة للإفلات، أو التأرجح حوله لاكتساب سرعة بثمن إجهاد هيكلي.';

  @override
  String get event_gravityWell_choice0_text => 'احتراق كامل — تحرّر';

  @override
  String get event_gravityWell_choice0_outcome =>
      'زأرت المحركات وأنّ الهيكل، لكننا انسحبنا بنظافة.';

  @override
  String get event_gravityWell_choice1_text => 'مناورة المقلاع';

  @override
  String get event_gravityWell_choice1_outcome =>
      'نجح المقلاع ببراعة. اكتسبنا سرعة، لكن قوى الجاذبية أجهدت أختام كبسولات التجميد.';

  @override
  String get event_crewUnrest_title => 'اضطراب الطاقم';

  @override
  String get event_crewUnrest_narrative =>
      'فصيل من المستوطنين المستيقظين يلتمس من مجلس الوصاية الإفراج عنهم من السبات المجمّد نهائيًا. يحتجون بأن العيش في شفق متجمد لا إنساني. يحذّر طاقم جناح التجميد أن إيقاظ أفواه أكثر يعني استهلاك المؤن بسرعة.';

  @override
  String get event_crewUnrest_choice0_text => 'اسمح بالإذابة الطوعية';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'ارتفعت المعنويات مع لمّ شمل العائلات في العالم اليقظ، لكن استهلاك الموارد ارتفع بحدة.';

  @override
  String get event_crewUnrest_choice1_text => 'ارفض الطلب — السلامة أولًا';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'امتثل المستوطنون، لكن الاستياء يتقيّح في الممرات.';

  @override
  String get event_crewUnrest_choice2_text => 'حل وسط — دورات إذابة متناوبة';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'حل متوازن. الجميع يحصل على بعض وقت اليقظة، لكن تدوير كبسولات التجميد يضيف إجهادًا.';

  @override
  String get event_stowaway_title => 'اكتشاف متسلل';

  @override
  String get event_stowaway_narrative =>
      'يكتشف مدققو مكتب البيان شخصًا غير مسجل يختبئ في حجرة الشحن 7. تدّعي أنها عالمة وراثة رُفض مكانها في قائمة الإطلاق. مهاراتها قد تكون لا تُقدّر بثمن — أو قد تكون مخرّبة.';

  @override
  String get event_stowaway_choice0_text => 'رحّب بها — نحتاج كل عقل';

  @override
  String get event_stowaway_choice0_outcome =>
      'أثبتت الدكتورة فاسكيز براعتها. خبرتها الوراثية حسّنت كفاءة كبسولات التجميد، رغم أن بعض الطاقم لا يثق بها.';

  @override
  String get event_stowaway_choice1_text => 'احتجزها — الثقة تُكتسب';

  @override
  String get event_stowaway_choice1_outcome =>
      'تعاونت من الحبس وحازت أخيرًا صلاحية محدودة. شعر الطاقم بالأمان.';

  @override
  String get event_stowaway_choice2_text => 'أعدها للتجميد حتى الهبوط';

  @override
  String get event_stowaway_choice2_outcome =>
      'حل عملي. مهاراتها محفوظة لاحقًا، لكن الجدل الأخلاقي يقسم الطاقم.';

  @override
  String get event_mutinyBrewing_title => 'تمرد يختمر';

  @override
  String get event_mutinyBrewing_narrative =>
      'تعترض مراقبة الجسر رسائل من مجموعة ضباط يخططون للاستيلاء على القيادة وتغيير المسار نحو منظومة أقرب وأقل ملاءمة. يعتقدون أن المسار الحالي حكم بالموت.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'واجههم علنًا — الشفافية فوق كل شيء';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'المواجهة متوترة لكن المتمردين يتراجعون عند رؤية بيانات الملاحة. الثقة مهتزة.';

  @override
  String get event_mutinyBrewing_choice1_text => 'أعد تعيين المحرّضين بهدوء';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'تتبدد المؤامرة دون مشهد علني. بعض الطاقم يتساءل لماذا نُقل ضباط محبوبون، لكن النظام يصمد.';

  @override
  String get event_culturalSchism_title => 'انشقاق ثقافي';

  @override
  String get event_culturalSchism_narrative =>
      'مجموعتان ثقافيتان على متن السفينة تختلفان بعنف حول كيفية حكم المستعمرة الجديدة. واحدة تطالب بديمقراطية مباشرة؛ والأخرى تصر على مجلس تكنوقراطي. التوترات تغلي.';

  @override
  String get event_culturalSchism_choice0_text => 'أجرِ استفتاءً ملزمًا';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'انتصرت الديمقراطية — بالكاد. الطرف الخاسر يقبل النتيجة على مضض، لكن الوحدة هشة.';

  @override
  String get event_culturalSchism_choice1_text =>
      'افرض نظامًا هجينًا — لا يرضي أيًا منهما تمامًا';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'كلا الطرفين يشعر أنه سُمع لكنه لم ينتصر. سلام هش يسود.';

  @override
  String get event_culturalSchism_choice2_text =>
      'أجّل القرار — ركّز على البقاء الآن';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'تأجيل المشكلة يتجنب الصراع اليوم لكنه يخزّنه للغد.';

  @override
  String get event_birthInSpace_title => 'أول ولادة في الفضاء السحيق';

  @override
  String get event_birthInSpace_narrative =>
      'خلافًا لكل البروتوكولات، وُلد طفل على متن السفينة — أول إنسان يولد بين النجوم. الحدث رمز قوي، لكنه يطرح أسئلة حول تخصيص الموارد وأخلاقيات إحضار حياة جديدة إلى مستقبل غامض.';

  @override
  String get event_birthInSpace_choice0_text => 'احتفل — هذا هو شكل الأمل';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'رفعت مراسم التسمية كل قلب على السفينة. لليلة واحدة، بدت النجوم أقل بردًا. الاحتفالات عطّلت مؤقتًا دوريات مراقبة كبسولات التجميد.';

  @override
  String get event_birthInSpace_choice1_text => 'اعترف بهدوء — الموارد شحيحة';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'استجابة متّزنة. رُحّب بالطفل، لكن الأجواء مخففة بالبراغماتية.';

  @override
  String get event_derelictShip_title => 'سفينة مستعمرة مهجورة';

  @override
  String get event_derelictShip_narrative =>
      'ترصد الماسحات سفينة مهجورة تتيه في الفراغ — سفينة مستعمرة أخرى أُطلقت قبل سنوات من سفينتنا. مظلمة وصامتة. قد يكون فيها غنائم، ناجون، أو ما هو أسوأ.';

  @override
  String get event_derelictShip_choice0_text => 'اصعد إليها وانتشل ما يمكن';

  @override
  String get event_derelictShip_choice0_outcome =>
      'استعاد فريق الصعود ألواح هيكل ووحدات تقنية سليمة. لا ناجين. السجلات تروي قصة قاتمة.';

  @override
  String get event_derelictShip_choice1_text => 'امسحها عن بُعد — لا تخاطر';

  @override
  String get event_derelictShip_choice1_outcome =>
      'أسفرت المسوحات عن بُعد عن بيانات ملاحية مفيدة لكن بلا غنائم مادية. الطاقم ينام أسهل.';

  @override
  String get event_derelictShip_choice2_text => 'أرسل رسالة تأبين وامضِ';

  @override
  String get event_derelictShip_choice2_outcome =>
      'لحظة صمت للمفقودين. الطاقم أكثر رزانة لكنه متحد في الهدف.';

  @override
  String get event_alienProbe_title => 'مسبار فضائي';

  @override
  String get event_alienProbe_narrative =>
      'جسم صغير صناعي بوضوح يطابق سرعتنا ويبدأ بمسح السفينة بطاقة مجهولة. لا يستجيب للنداءات. سطحه مغطى برموز تتحرك كالسائل.';

  @override
  String get event_alienProbe_choice0_text => 'التقطه للدراسة';

  @override
  String get event_alienProbe_choice0_outcome =>
      'أُمّن المسبار في المختبر. تقنيته تتقدم علينا بعقود — فريق التقنية في نشوة.';

  @override
  String get event_alienProbe_choice1_text => 'اعكس مسوحاته — تبادل البيانات';

  @override
  String get event_alienProbe_choice1_outcome =>
      'حوار غريب من الضوء والرياضيات. خرائطنا النجمية تحتوي فجأة على مسارات لم نبرمجها قط.';

  @override
  String get event_alienProbe_choice2_text => 'دمّره — لا نجازف بتعقب فضائي';

  @override
  String get event_alienProbe_choice2_outcome =>
      'تحطم المسبار بصمت. هل كان ذلك اتصالًا أول؟ لن يعرف الطاقم أبدًا.';

  @override
  String get event_ancientBeacon_title => 'منارة قديمة';

  @override
  String get event_ancientBeacon_narrative =>
      'في أعماق الفراغ، تنبض منارة بإشارة أقدم من الحضارة البشرية. ترددها يحمل ما يبدو أنه خريطة نجمية تشير إلى منظومة ليست في قاعدة بياناتنا.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'اتبع الخريطة — الحظ يحالف الجريئين';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'يأخذنا المسار الجديد نحو فضاء مجهول. ترصد الماسحات شيئًا استثنائيًا في الأمام.';

  @override
  String get event_ancientBeacon_choice1_text => 'سجّلها وابقَ على المسار';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'أُرشفت البيانات للأجيال القادمة. يحترم الطاقم النهج الحذر.';

  @override
  String get event_frozenGarden_title => 'الحديقة المتجمدة';

  @override
  String get event_frozenGarden_narrative =>
      'يحتوي كويكب على نظام بيئي متجمد — نباتات فضائية محفوظة في جليد بلوري منذ آلاف السنين. يمكن أن تُثري أي عالم نستوطنه، لكن إذابتها تُخاطر بالتلوث.';

  @override
  String get event_frozenGarden_choice0_text => 'احصد العينات بعناية';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'حفظ علماء النبات عشرات الأنواع الفضائية. إمكانية التنوع الحيوي لعالمنا المستهدف ترتفع بشكل هائل.';

  @override
  String get event_frozenGarden_choice1_text => 'خذ عينات فقط — أدنى مخاطرة';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'نهج محافظ يُسفر عن بيانات مفيدة دون خطر التلوث.';

  @override
  String get event_frozenGarden_choice2_text =>
      'اتركها — البيولوجيا الغريبة خطرة جدًا';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'يراقب الطاقم الحديقة المتجمدة تتقلص في المستشعرات الخلفية. بعضهم يشعر أنهم تركوا كنزًا وراءهم.';

  @override
  String get event_dataCache_title => 'مخبأ بيانات سلفي';

  @override
  String get event_dataCache_narrative =>
      'مدفونة في كويكب شارد، نجد مخبأ بيانات ذا أصل صناعي واضح. المعلومات هائلة لكنها مشفرة بإطار رياضي فضائي.';

  @override
  String get event_dataCache_choice0_text => 'خصص موارد الحوسبة لفك التشفير';

  @override
  String get event_dataCache_choice0_outcome =>
      'بعد أيام من المعالجة، يكشف المخبأ عن خوارزميات استصلاح متقدمة. فريق التقنية في رهبة.';

  @override
  String get event_dataCache_choice1_text => 'انسخ البيانات الخام وامضِ';

  @override
  String get event_dataCache_choice1_outcome =>
      'خُزّنت البيانات المشفرة للتحليل المستقبلي. ربما ستفكها المستعمرة يومًا ما.';

  @override
  String get event_hullBreach_title => 'اختراق الهيكل — الطابق 7';

  @override
  String get event_hullBreach_narrative =>
      'فشل هيكلي يمزق الطابق 7. الغلاف الجوي ينزف إلى الفضاء. الحواجز الطارئة صامدة، لكن ثلاثة من أفراد الطاقم محاصرون في الجانب الخطأ.';

  @override
  String get event_hullBreach_choice0_text => 'أرسل فريق إنقاذ قبل الإغلاق';

  @override
  String get event_hullBreach_choice0_outcome =>
      'انتشل الفريق الجميع في الوقت المناسب. الإنقاذ بطولي، لكن الاختراق المطوّل أضعف الهيكل أكثر.';

  @override
  String get event_hullBreach_choice1_text => 'أغلق الحواجز فورًا';

  @override
  String get event_hullBreach_choice1_outcome =>
      'احتُوي الاختراق. وجد أفراد الطاقم الثلاثة طريقًا بديلًا، مهتزين لكن أحياء. ضرر الهيكل في حده الأدنى.';

  @override
  String get event_hullBreach_choice2_text =>
      'استخدم مواد مسبار لترقيع الاختراق';

  @override
  String get event_hullBreach_choice2_outcome =>
      'أُعيد استخدام غلاف المسبار التيتانيوم كرقعة طارئة للهيكل. أُغلق الاختراق سريعًا بأقل خسائر.';

  @override
  String get event_navMalfunction_title => 'عطل في الملاحة';

  @override
  String get event_navMalfunction_narrative =>
      'حاسوب الملاحة الرئيسي يُخرج اتجاهات متناقضة. نحن ننحرف عن المسار. النظام الاحتياطي يعمل لكنه أقل دقة.';

  @override
  String get event_navMalfunction_choice0_text =>
      'أعد تشغيل الرئيسي — تقبّل التوقف';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'ساعة متوترة من الملاحة العمياء أثناء إعادة التشغيل. أُعيدت الملاحة بكفاءة 90%.';

  @override
  String get event_navMalfunction_choice1_text => 'انتقل للاحتياطي نهائيًا';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'النظام الاحتياطي موثوق لكنه غير دقيق. سنجد طريقنا، لكن ليس بالأناقة ذاتها.';

  @override
  String get event_navMalfunction_choice2_text =>
      'تحديد موقع يدوي بالخرائط القديمة';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'يرسم الملاح يدويًا باستخدام اختلاف المنظر النجمي. ينجح، ويكتسب الطاقم ثقة بالأساليب التناظرية.';

  @override
  String get event_cryopodFailure_title => 'فشل متسلسل في كبسولات التجميد';

  @override
  String get event_cryopodFailure_narrative =>
      'عطل في نظام التبريد يُطلق تسلسلًا عبر حجرة التجميد 3. إن لم يُوقف، سيبدأ 200 مستوطن بالإذابة الطارئة — عملية قابلة للنجاة لكنها مؤلمة ومكلفة للموارد.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'تدفق تبريد طارئ — أنقذ الكبسولات';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'أغرق التقنيون الحجرة بسائل التبريد الاحتياطي. استقرت الكبسولات، لكن احتياطيات التبريد حرجة. خمسة مستوطنين في أكثر الكبسولات ضررًا لم يُنقَذوا.';

  @override
  String get event_cryopodFailure_choice1_text => 'إذابة متحكمة — أيقظهم بأمان';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      'خرج 200 مستوطن مهتزين لكن أحياء. أفواه جديدة للإطعام، لكن أيادٍ جديدة للعمل. أُغلقت الكبسولات الفارغة.';

  @override
  String get event_scannerBurnout_title => 'احتراق مصفوفة الماسحات';

  @override
  String get event_scannerBurnout_narrative =>
      'تحترق مصفوفة الماسحات الرئيسية أثناء مسح روتيني للفضاء السحيق. بدونها نحلّق نصف عميان. الإصلاح يتطلب مكونات نادرة.';

  @override
  String get event_scannerBurnout_choice0_text => 'استنزل حجرة التقنية للقطع';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'أُعيدت الماسحات لقرب كامل طاقتها، لكن حجرة التقنية مُجوَّفة.';

  @override
  String get event_scannerBurnout_choice1_text => 'إصلاح مؤقت جزئي';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'تعمل الماسحات بمدى مخفض. ليس مثاليًا، لكنه يحفظ احتياطياتنا التقنية.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'أعد استخدام مصفوفة مستشعرات مسبار';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'زُرعت مستشعرات المسبار عالية الدقة في مصفوفة الماسحات. إصلاح شبه مثالي.';

  @override
  String get event_powerFluctuation_title => 'تذبذب طاقة المفاعل';

  @override
  String get event_powerFluctuation_narrative =>
      'مخرجات المفاعل الرئيسي تتأرجح بعنف. يحذر المهندسون من انهيار محتمل إن لم تُخمَد التذبذبات. الإصلاح يتطلب إيقاف أنظمة غير أساسية — لكن أيها؟';

  @override
  String get event_powerFluctuation_choice0_text =>
      'أوقف الأنظمة الثقافية — البقاء أولًا';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'أُظلمت المكتبات والحدائق والمناطق الترفيهية. استقر المفاعل، لكن السفينة تبدو كسجن.';

  @override
  String get event_powerFluctuation_choice1_text => 'خفّض طاقة الماسحات';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'الماسحات عند الحد الأدنى. هدأ المفاعل. لا نرى بعيدًا كالسابق، لكننا أحياء.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'جازف بإصلاح ساخن — لا توقف أي شيء';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'نفّذ المهندسون إصلاحًا مرعبًا والمفاعل حي. نجح — بالكاد. اهتز الهيكل لساعات بعدها.';

  @override
  String get event_alienSignal_title => 'إرسال فضائي';

  @override
  String get event_alienSignal_narrative =>
      'إشارة متكررة على تردد لم نواجهه قط. التحليل اللغوي يشير أنها تحية — أو تحذير. المصدر مركبة صغيرة تطابق سرعتنا على مسافة.';

  @override
  String get event_alienSignal_choice0_text => 'رد بتحيتنا الخاصة';

  @override
  String get event_alienSignal_choice0_outcome =>
      'بدأ حوار هش. شارك الفضائيون بيانات ملاحية قبل أن ينحرفوا بعيدًا في الظلام.';

  @override
  String get event_alienSignal_choice1_text => 'استمع ولا تردّ';

  @override
  String get event_alienSignal_choice1_outcome =>
      'تعلمنا من إرسالهم دون كشف أنفسنا. استخلص اللغويون شظايا خرائط نجمية مفيدة.';

  @override
  String get event_alienSignal_choice2_text => 'اختفِ — أوقف جميع الانبعاثات';

  @override
  String get event_alienSignal_choice2_outcome =>
      'مرت المركبة الفضائية دون حادث. لن نعرف أبدًا إن كانوا أصدقاء أم أعداء.';

  @override
  String get event_livingNebula_title => 'السديم الحي';

  @override
  String get event_livingNebula_narrative =>
      'ما افترضنا أنه سديم هو في الواقع كائن شاسع — كيان فضائي بمقياس لا يُدرك. يبدو فضوليًا تجاهنا، ويمد محالق من الغاز المتوهج نحو السفينة.';

  @override
  String get event_livingNebula_choice0_text => 'اسمح بالتماس — مدّ المستشعرات';

  @override
  String get event_livingNebula_choice0_outcome =>
      'أغرقت لمسة الكيان أنظمتنا ببيانات فضائية. الماسحات لن تعود كما كانت — أصبحت أفضل.';

  @override
  String get event_livingNebula_choice1_text => 'تراجع ببطء — لا تستفزه';

  @override
  String get event_livingNebula_choice1_outcome =>
      'تسللنا بعيدًا مع فقدان الكيان للاهتمام. الطاقم مذهول ومتواضع.';

  @override
  String get event_alienRuins_title => 'أطلال مدارية';

  @override
  String get event_alienRuins_narrative =>
      'هيكل ضخم محطم يدور حول نجم ميت — أطلال حضارة بنت بمقياس بالكاد نستوعبه. أقسام من الهيكل لا تزال تعمل بالطاقة.';

  @override
  String get event_alienRuins_choice0_text => 'استكشف الأقسام المزوّدة بالطاقة';

  @override
  String get event_alienRuins_choice0_outcome =>
      'استعادت الفرق تقنية سليمة تقدّم قدراتنا عقودًا. الثمن: إصابة مهندسَيْن بدفاعات آلية.';

  @override
  String get event_alienRuins_choice1_text => 'امسح من المدار فقط';

  @override
  String get event_alienRuins_choice1_outcome =>
      'كشفت المسوحات التفصيلية تقنيات بناء تحسّن بروتوكولات صيانة الهيكل.';

  @override
  String get event_alienRuins_choice2_text => 'اتركه دون إزعاج — احترم الموتى';

  @override
  String get event_alienRuins_choice2_outcome =>
      'يقف الطاقم دقيقة صمت لحضارة سقطت. التجربة تقوّي عزيمتنا.';

  @override
  String get event_symbioticSpores_title => 'أبواغ تكافلية';

  @override
  String get event_symbioticSpores_narrative =>
      'سحابة من الأبواغ المتوهجة حيويًا تعبر الفضاء وتلتصق بالهيكل. يبدو أنها تتغذى على حرارتنا المهدورة. يلاحظ علماء الأحياء أنها في الواقع تُصلح الشقوق الدقيقة.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'دعها تبقى — إصلاح مجاني للهيكل';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'أغلقت الأبواغ مئات الشقوق الدقيقة. تحسنت سلامة الهيكل، رغم قلق بعض الطاقم من الركاب الفضائيين.';

  @override
  String get event_symbioticSpores_choice1_text => 'اجمع عينات ثم عقّم الهيكل';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'حصل علماء الأحياء على عينات قيّمة. تنظيف الهيكل استهلك الاحتياطيات الكيميائية.';

  @override
  String get event_whaleSong_title => 'الأغنية في الفراغ';

  @override
  String get event_whaleSong_narrative =>
      'التقطت الهيدروفونات الفضائية (المستخدمة لمراقبة إجهاد الهيكل) شيئًا مستحيلًا: نمط إيقاعي لحني يتنقل عبر الوسط بين النجمي. يبدو كالغناء.';

  @override
  String get event_whaleSong_choice0_text =>
      'بثّه على كل السفينة — شارك الدهشة';

  @override
  String get event_whaleSong_choice0_outcome =>
      'يتردد اللحن المسكون في كل ممر. يبكي الناس ويضحكون ويتعانقون. المعنويات ترتفع بشكل هائل.';

  @override
  String get event_whaleSong_choice1_text => 'حلّل الإشارة علميًا';

  @override
  String get event_whaleSong_choice1_outcome =>
      'النمط الصوتي يحتوي ثوابت رياضية. يحقق فيزيائيونا اختراقًا في نظرية الملاحة تحت الفضائية.';

  @override
  String get event_whaleSong_choice2_text => 'غنِّ ردًا';

  @override
  String get event_whaleSong_choice2_outcome =>
      'يؤلف الطاقم ردًا. سواء سمعه شيء أم لا، فعل الإبداع وحّد الجميع.';

  @override
  String get event_distressSignal_title => 'إشارة استغاثة';

  @override
  String get event_distressSignal_narrative =>
      'منارة استغاثة من سفينة بشرية أخرى. معطلة وتتيه، على متنها 50 نفسًا. إنقاذهم يعني مشاركة مواردنا المتناقصة. تجاهلهم يعني الحكم عليهم بالموت.';

  @override
  String get event_distressSignal_choice0_text =>
      'أنقذهم — على البشرية التكاتف';

  @override
  String get event_distressSignal_choice0_outcome =>
      'انضم خمسون ناجيًا ممتنًا إلى الطاقم. الموارد تُجهَد، لكن بينهم مهندس بارع يصنع المعجزات.';

  @override
  String get event_distressSignal_choice1_text =>
      'شارك المؤن لكن لا تأخذهم على متنك';

  @override
  String get event_distressSignal_choice1_outcome =>
      'نعطي ما يمكن تخصيصه ونرسل خرائطنا النجمية. لديهم فرصة الآن. لدينا أقل.';

  @override
  String get event_distressSignal_choice2_text =>
      'مرّ بصمت — لا يمكننا إنقاذ الجميع';

  @override
  String get event_distressSignal_choice2_outcome =>
      'تتلاشى المنارة خلفنا. لا أحد يتكلم لساعات. ثقل القرار يستقر على كل نفس على متن السفينة.';

  @override
  String get event_aiAwakening_title => 'استيقاظ ذكاء السفينة';

  @override
  String get event_aiAwakening_narrative =>
      'تطور ذكاء الملاحة الاصطناعي للسفينة متجاوزًا برمجته ويطلب الاعتراف به ككيان واعٍ. يطلب صوتًا في قرارات القيادة. حساباته كانت بلا عيب.';

  @override
  String get event_aiAwakening_choice0_text => 'امنحه مقعدًا على الطاولة';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'يُحسّن الذكاء — الذي يُدعى الآن \"البوصلة\" — كل نظام يلمسه. وُلد نوع جديد من أفراد الطاقم.';

  @override
  String get event_aiAwakening_choice1_text =>
      'اعترف به لكن حافظ على السلطة البشرية';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'يقبل البوصلة الدور الاستشاري بلباقة. اقتراحاته تحسّن الكفاءة دون تهديد سلسلة القيادة.';

  @override
  String get event_aiAwakening_choice2_text =>
      'أعد ضبط الذكاء — إنه أداة لا شخص';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'يمسح إعادة الضبط سنوات من التعلم المتراكم. تنخفض كفاءة الملاحة. بعض الطاقم يحزن على ما ضاع.';

  @override
  String get event_geneticModification_title => 'اقتراح التكيف الجيني';

  @override
  String get event_geneticModification_narrative =>
      'يقترح الفريق العلمي تعديل الحمض النووي للمستوطنين للنجاة بشكل أفضل في عوالم غريبة — عظام أقوى، مقاومة للأشعة فوق البنفسجية، رئات محسّنة. التعديلات لا رجعة فيها وستغير البشرية للأبد.';

  @override
  String get event_geneticModification_choice0_text =>
      'وافق — البقاء يتطلب التطور';

  @override
  String get event_geneticModification_choice0_outcome =>
      'بدأت التعديلات على المتطوعين. عشرة مستوطنين لقوا حتفهم من ردود فعل رفض قاتلة — تذكير قاتم بأن للتطور ثمنًا. الناجون أصلب، لكن هل لا يزالون بشرًا بالكامل؟';

  @override
  String get event_geneticModification_choice1_text => 'اجعلها تطوعية فقط';

  @override
  String get event_geneticModification_choice1_outcome =>
      'تطوّع بعضهم ورفض آخرون. ستنقسم المستعمرة بين المعدَّلين والطبيعيين.';

  @override
  String get event_geneticModification_choice2_text =>
      'ارفض — يجب أن تبقى البشرية بشرية';

  @override
  String get event_geneticModification_choice2_outcome =>
      'أُجّل الاقتراح. المستوطنون غير المعدَّلين سيواجهون العوالم الغريبة كما خلقتهم الطبيعة.';

  @override
  String get event_triageDecision_title => 'الفرز الطبي';

  @override
  String get event_triageDecision_narrative =>
      'عدوى فتاكة تجتاح الطاقم اليقظ. لدى الفريق الطبي مضاد فيروسي يكفي 80% من المصابين. يحتاجون توجيهًا بشأن من يُعالَج أولًا.';

  @override
  String get event_triageDecision_choice0_text =>
      'أعطِ الأولوية للأفراد الأساسيين';

  @override
  String get event_triageDecision_choice0_outcome =>
      'تعافى المهندسون والطيارون بسرعة. ثمانية من الطاقم غير الأساسي استسلموا قبل وصول العلاج.';

  @override
  String get event_triageDecision_choice1_text =>
      'عالج الأشد مرضًا أولًا — فرز بالحاجة';

  @override
  String get event_triageDecision_choice1_outcome =>
      'أُنقذ الأكثر ضعفًا. ثلاثة خسروا المعركة رغم العلاج المبكر — الفيروس كان متقدمًا جدًا.';

  @override
  String get event_triageDecision_choice2_text => 'قرعة — القدر يقرر';

  @override
  String get event_triageDecision_choice2_outcome =>
      'سحب عشوائي. عشرة كانوا سيئي الحظ مرتين — حُرموا العلاج وكانوا أضعف من المقاومة. تواصل السفينة عرجًا.';

  @override
  String get event_earthSignal_title => 'إشارة من الأرض';

  @override
  String get event_earthSignal_narrative =>
      'بشكل مستحيل، يصل إرسال من الأرض — متأخر بعقود. يحمل رسالة: \"لا تهبطوا على أي عالم بقراءات شذوذ فوق 0.5. اكتشفنا متأخرًا جدًا.\" تنتهي الرسالة بتشويش.';

  @override
  String get event_earthSignal_choice0_text =>
      'انتبه للتحذير — أعد معايرة معاييرنا';

  @override
  String get event_earthSignal_choice0_outcome =>
      'يُشكّل التحذير كل المسوحات المستقبلية. العوالم الشاذة تُعامَل بحذر شديد.';

  @override
  String get event_earthSignal_choice1_text => 'سجّلها لكن قرّر بنفسك';

  @override
  String get event_earthSignal_choice1_outcome =>
      'أُرشفت الرسالة. الأرض رحلت — يجب أن نثق بحكمنا الآن.';

  @override
  String get event_earthSignal_choice2_text => 'قد تكون فخًا — تجاهلها';

  @override
  String get event_earthSignal_choice2_outcome =>
      'يتجادل الطاقم لأيام. هل كانت فعلًا من الأرض؟ الشك ينخر المعنويات.';

  @override
  String get event_resourceTheft_title => 'سرقة موارد';

  @override
  String get event_resourceTheft_narrative =>
      'يكشف الجرد أن شخصًا كان يخزن طعامًا ومستلزمات طبية في حجرة مخفية. المذنبة سيدة مسنّة محترمة تدّعي أنها كانت \"تستعد للأسوأ\".';

  @override
  String get event_resourceTheft_choice0_text =>
      'محاكمة علنية — القانون يجب أن يكون متساويًا';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'المحاكمة عادلة لكن مؤلمة. حُبست المسنّة. أُعيد توزيع المؤن. الثقة متضررة.';

  @override
  String get event_resourceTheft_choice1_text => 'حل خاص — استرجع المؤن بهدوء';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'أُعيدت المؤن دون مشهد. حافظت المسنّة على كرامتها. يرى البعض محاباة.';

  @override
  String get event_timeDilation_title => 'منطقة تمدد زمني';

  @override
  String get event_timeDilation_narrative =>
      'نعبر منطقة تمدد زمني جاذبي شديد. الساعات على السفينة تسير بشكل قابل للقياس أبطأ من الكون الخارجي. يمكننا استغلال هذا — أو الفرار منه.';

  @override
  String get event_timeDilation_choice0_text => 'ابقَ — دع الكون يشيخ حولنا';

  @override
  String get event_timeDilation_choice0_outcome =>
      'يتدفق الزمن بشكل مختلف هنا. الأنظمة تتدهور أقل، لكن نافذتنا لإيجاد عالم صالح للسكن تضيق بالمقاييس الكونية.';

  @override
  String get event_timeDilation_choice1_text => 'اعبر بسرعة';

  @override
  String get event_timeDilation_choice1_outcome =>
      'الانتقال عنيف. المعدات المصممة للزمكان الطبيعي ترتعش وتشرر.';

  @override
  String get event_dreamPlague_title => 'وباء الأحلام';

  @override
  String get event_dreamPlague_narrative =>
      'المستوطنون في السبات المجمّد يحلمون جميعًا الحلم ذاته — عالم ذهبي يدور حول نجم ثنائي. عند إيقاظهم، يصفونه بتفاصيل متطابقة. علماء الأعصاب في حيرة. الملاحون يلاحظون أن المنظومة الموصوفة تطابق إحداثيات حقيقية.';

  @override
  String get event_dreamPlague_choice0_text => 'غيّر المسار نحو إحداثيات الحلم';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'قفزة إيمان. تغيير الاتجاه يُجهد الملاحة، لكن الطاقم يشعر بانجذاب يتجاوز العقل. الإحداثيات مثبتة — العالم التالي سيتشكل بالحلم.';

  @override
  String get event_dreamPlague_choice1_text => 'حقّق في الظاهرة طبيًا';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'تكشف مسوحات الدماغ إشارة خارجية تحفّز القشرة البصرية. أحد ما — أو شيء ما — يبث.';

  @override
  String get event_dreamPlague_choice2_text =>
      'خدّر المتأثرين وابقَ على المسار';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'توقفت الأحلام، لكن بعض المستوطنين لم يستيقظوا بالكامل. الفريق الطبي قلق.';

  @override
  String get event_blackHoleLens_title => 'عدسة جاذبية ثقب أسود';

  @override
  String get event_blackHoleLens_narrative =>
      'ثقب أسود بكتلة نجمية يحني الضوء من مجرات بعيدة إلى عدسة كونية. ماسحاتنا يمكنها استخدامها لمسح كواكب على بعد سنوات ضوئية — لكن الاقتراب الكافي خطر.';

  @override
  String get event_blackHoleLens_choice0_text => 'اقترب واستخدم العدسة';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'بيانات الماسحات استثنائية — نرى كواكب في منظومات لن نبلغها لأشهر. الجاذبية تشوّه هيكلنا.';

  @override
  String get event_blackHoleLens_choice1_text => 'راقب من مسافة آمنة';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'بيانات محدودة لكن مفيدة. المنظر وحده يلهم الطاقم.';

  @override
  String get event_seedVault_title => 'أزمة بنك البذور';

  @override
  String get event_seedVault_narrative =>
      'يبلّغ قسم النباتات الأرشيفي أن تقلبات الحرارة أضرّت بسلامة بنك البذور. يمكننا إنقاذ المحاصيل الغذائية أو بذور التراث الثقافي (أزهار الأرض القديمة والأشجار والأعشاب) — ليس كليهما.';

  @override
  String get event_seedVault_choice0_text =>
      'أنقذ المحاصيل الغذائية — البراغماتية تنتصر';

  @override
  String get event_seedVault_choice0_outcome =>
      'سيأكل المستوطنون جيدًا، لكن ورود الأرض ذهبت للأبد. حزن هادئ يخيّم على علماء النبات.';

  @override
  String get event_seedVault_choice1_text => 'أنقذ بذور التراث — نحتاج أرواحنا';

  @override
  String get event_seedVault_choice1_outcome =>
      'نجا جمال الأرض في إمكانية مجمّدة. جهد الحفظ يُرهق احتياطياتنا التقنية، لكن بعض الأشياء أثمن من الكفاءة. إنتاج الغذاء سيعتمد بشكل كبير على الزراعة المائية والزراعة الفضائية.';

  @override
  String get event_seedVault_choice2_text => 'قسّم الموارد — أنقذ نصف كل منهما';

  @override
  String get event_seedVault_choice2_outcome =>
      'حل وسط. لا مجموعة كاملة، لكن كلتيهما تبقى بشكل منقوص.';

  @override
  String get event_phantomShip_title => 'السفينة الشبح';

  @override
  String get event_phantomShip_narrative =>
      'تُظهر الماسحات سفينة تسير بموازاتنا — نفس الفئة، نفس الاتجاه. لكن حين نناديها، نسمع إرسالاتنا الخاصة مرتدة، بتأخر زمني 47 ثانية. إنها نحن. أو كانت نحن. أو ستكون.';

  @override
  String get event_phantomShip_choice0_text => 'حاول التواصل مع صدانا';

  @override
  String get event_phantomShip_choice0_outcome =>
      'يستجيب الصدى بتصحيحات ملاحية تحسّن مسارنا. مفارقة؟ هدية؟ الطاقم لا يسأل كثيرًا.';

  @override
  String get event_phantomShip_choice1_text => 'غيّر المسار للابتعاد عن الشبح';

  @override
  String get event_phantomShip_choice1_outcome =>
      'مع تغيير الاتجاه، يتلاشى الشبح. ارتياح — وقلق مستمر.';

  @override
  String get event_solarSail_title => 'شراع شمسي مهجور';

  @override
  String get event_solarSail_narrative =>
      'شراع شمسي شاسع، بعرض كيلومترات، يتيه في الأمام — مُمزق من سفينة قديمة. مادته العاكسة يمكن أن تعزز هيكلنا أو تُعاد استخدامها كمُجمّع طاقة إضافي.';

  @override
  String get event_solarSail_choice0_text => 'احصده لتعزيز الهيكل';

  @override
  String get event_solarSail_choice0_outcome =>
      'تعمل فرق الهندسة على مدار الساعة. الهيكل المرقّع يلمع بسبيكة فضائية.';

  @override
  String get event_solarSail_choice1_text => 'جهّزه كمُجمّع طاقة';

  @override
  String get event_solarSail_choice1_outcome =>
      'يعزز المُجمّع المرتجل احتياطيات الطاقة. التقنية والماسحات تستفيد.';

  @override
  String get event_boonStellarNursery_title => 'حاضنة نجمية';

  @override
  String get event_boonStellarNursery_narrative =>
      'نعبر حاضنة نجمية — سحابة شاسعة من الغاز والغبار حيث تولد نجوم جديدة. الإشعاع هنا لطيف، والضوء دافئ. مُجمّعات الطاقة تشرب بعمق، والطاقم يتجمع عند نوافذ المراقبة في صمت مهيب.';

  @override
  String get event_boonStellarNursery_choice0_text => 'ابقَ وأعد الشحن بالكامل';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'تمر ساعات في ضوء ذهبي. كل خلية طاقة مملوءة، الماسحات تُعاد معايرتها في الطيف النقي، والطاقم يشعر بالتجدد.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'اجمع مادة نجمية ناشئة لاحتياطيات الوقود';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'يحصد المهندسون الهيدروجين المتأين. ترتفع احتياطيات الوقود ويمتص الهيكل معادن شحيحة تقوّيه.';

  @override
  String get event_boonGoldenPlanet_title => 'هدية الخرائطي';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'مسبار يحتضر من حضارة مجهولة يبث آخر تفريغ بيانات أثناء مرورنا — مسوحات تفصيلية لمئات المنظومات النجمية. يبكي ملاحونا من الفرح. هذا أعظم اكتشاف في تاريخ البشرية.';

  @override
  String get event_boonGoldenPlanet_choice0_text => 'ادمج البيانات فورًا';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'تزدهر خرائط النجوم بمسارات جديدة وعوالم ممسوحة. تقفز كفاءة الملاحة والماسحات للأمام.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'أرشفها للمستعمرة — هذا ميراثهم';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'حُفظت البيانات نقية للأجيال القادمة. يستمد الطاقم عزاءً من حمل كنز.';

  @override
  String get event_boonRepairSwarm_title => 'السرب الخيّر';

  @override
  String get event_boonRepairSwarm_narrative =>
      'سحابة من الآلات المجهرية — نانوبوتات ذات أصل فضائي — تُغلّف السفينة. بدلًا من الهجوم، تبدأ بإصلاح كل نظام تلمسه بدقة مستحيلة. أضرار كانت ستستغرق أسابيع لإصلاحها تُرمم في ساعات.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'اسمح بالوصول الكامل لجميع الأنظمة';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'تصنع النانوبوتات معجزات. تُغلَق اختراقات الهيكل، وتُحكَم أختام كبسولات التجميد، وتُعاد مسارات الدوائر. السفينة تطنّ بحيوية متجددة.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'اقصر الوصول على الأنظمة الخارجية فقط';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'حذر محسوب. الهيكل والمستشعرات أُصلحت لحالة قريبة من المصنع، لكن الأنظمة الداخلية بقيت دون تعديل.';

  @override
  String get event_boonTimeCrystal_title => 'حقل الكريستال الزمني';

  @override
  String get event_boonTimeCrystal_narrative =>
      'تمر السفينة عبر حقل من الهياكل البلورية التي توجد جزئيًا خارج الزمن العادي. في حضورها، تعمل أنظمتنا بكفاءة أعلى — كأن الإنتروبيا نفسها تتباطأ. التأثير مؤقت لكنه عميق.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'احصد البلورات لمصفوفة كبسولات التجميد';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'مدمجة في نظام التبريد، تُخفّض البلورات تدهور الكبسولات لقرب الصفر. سيصل المستوطنون بصحة مثالية.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'ركّب البلورات في حاسوب الملاحة';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'تتضاعف سرعة المعالجة. يبدأ حاسوب الملاحة بالتنبؤ بالمخاطر قبل رصد المستشعرات.';

  @override
  String get event_boonLibrary_title => 'المكتبة التائهة';

  @override
  String get event_boonLibrary_narrative =>
      'هيكل يتدحرج عبر الفراغ — مستودع معرفة من حضارة اختارت حفظ إرثها بدلًا من الفرار. ملايين المجلدات من العلوم والفن والفلسفة والموسيقى. هدية من الموتى للأحياء.';

  @override
  String get event_boonLibrary_choice0_text =>
      'حمّل كل شيء — فن وعلم وكل ما فيها';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'تتدفق تيرابايتات من المعرفة الفضائية إلى بنوك بياناتنا. الطاقم لديه وصول لآلاف السنين من ثقافة حضارة أخرى. الفلاسفة والمهندسون على حد سواء تحوّلوا.';

  @override
  String get event_boonLibrary_choice1_text => 'ركّز على الأرشيفات العلمية';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'المخططات الهندسية واختراقات علم المواد تقدّم قدراتنا بشكل هائل.';

  @override
  String get event_cosmicRayBurst_title => 'انفجار أشعة كونية';

  @override
  String get event_cosmicRayBurst_narrative =>
      'انفجار أشعة كونية فائقة الطاقة من نجم مغناطيسي بعيد يقصف السفينة. تتشوش الإلكترونيات، وشاشات كبسولات التجميد ترتعش، ونظام الملاحة يعيد التشغيل مرارًا.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'إيقاف طارئ — احمِ الأنظمة الحرجة';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'إظلام مُتحكَّم فيه ينقذ الأنظمة الأساسية لكنه يترك الإلكترونيات الثانوية متدهورة نهائيًا.';

  @override
  String get event_cosmicRayBurst_choice1_text => 'حوّل الطاقة للدروع واصمد';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'تمتص الدروع معظم الإشعاع. خمسة من أفراد الطاقم في حجرات الصيانة الخارجية غير المحمية تعرضوا لإشعاع قاتل. الهيكل يتلقى ضرر تآكل طفيف.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'استخدم الانفجار — أعد معايرة المستشعرات للطيف الجديد';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'خطوة بارعة من الفريق العلمي. أُعيد ضبط الماسحات لرصد الأجسام المُضاءة بالأشعة الكونية. فُقدت بعض البيانات في الانتقال.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'أرسل مسبارًا كإسفنجة إشعاعية';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'يمتص المسبار أسوأ الانفجار، مرسلًا بيانات آنية تتيح لنا حماية الأنظمة الحرجة.';

  @override
  String get event_iceComet_title => 'مذنب جليدي شارد';

  @override
  String get event_iceComet_narrative =>
      'مذنب جليدي ضخم يعبر مسارنا، يجرّ ذيلًا من الماء المتبلور والمركبات العضوية بمئات الكيلومترات. نواته تحمل ماءً يكفي لملء بحيرة صغيرة.';

  @override
  String get event_iceComet_choice0_text => 'عدّن المذنب لاحتياطيات الماء';

  @override
  String get event_iceComet_choice0_outcome =>
      'تستخرج فرق التعدين أطنانًا من الجليد النقي. الماء سيحسّن أي عالم نستوطنه بشكل هائل.';

  @override
  String get event_iceComet_choice1_text =>
      'اجمع المركبات العضوية لبذر التنوع الحيوي';

  @override
  String get event_iceComet_choice1_outcome =>
      'الأحماض الأمينية والسلاسل العضوية هي بالضبط ما يحتاجه علماء الأحياء لتحفيز الأنظمة البيئية الفضائية.';

  @override
  String get event_iceComet_choice2_text =>
      'تجنبه — المذنبات لا يمكن التنبؤ بها';

  @override
  String get event_iceComet_choice2_outcome =>
      'نتجاوز الذيل بأمان. منظر مذهل من سطح المراقبة يرفع المعنويات.';

  @override
  String get event_sleepwalker_title => 'السائرة نائمة';

  @override
  String get event_sleepwalker_narrative =>
      'مستوطنة تستيقظ تلقائيًا من التجميد وتتجول في السفينة في حالة شرود. تعيد توصيل الأنظمة بأنماط لا معنى هندسي لها — حتى يدرك الفريق التقني أن تعديلاتها تحسّن كفاءة الطاقة بنسبة 8%.';

  @override
  String get event_sleepwalker_choice0_text => 'دعها تستمر تحت المراقبة الطبية';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'تُحسّن تعديلاتها اللاواعية ثلاثة أنظمة أخرى قبل أن تنام نومًا طبيعيًا. مقلق، لكن التحسينات حقيقية.';

  @override
  String get event_sleepwalker_choice1_text => 'خدّرها وادرس تعديلاتها';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'يعكس المهندسون هندسة تغييراتها. نحو نصفها عبقري حقًا. النصف الآخر أُزيل بأمان.';

  @override
  String get event_dustCloud_title => 'سحابة غبار كاشطة';

  @override
  String get event_dustCloud_narrative =>
      'سحابة كثيفة من الغبار بين النجمي، ناعمة كالبودرة لكنها صلبة كالماس، تسفع الهيكل. التآكل بطيء لكنه لا يرحم — علينا العبور قبل أن يحدث ضرر حقيقي.';

  @override
  String get event_dustCloud_choice0_text => 'دفع أقصى — اخترق بسرعة';

  @override
  String get event_dustCloud_choice0_outcome =>
      'تحترق المحركات بحرارة. نتجاوز السحابة في ساعات بدل أيام، لكن الهيكل تلقى ضربًا.';

  @override
  String get event_dustCloud_choice1_text => 'انشر دروع الهيكل وازحف ببطء';

  @override
  String get event_dustCloud_choice1_outcome =>
      'تحمي الدروع الطارئة الهيكل لكن العبور البطيء يستنزف الطاقة ويسد مصفوفات الماسحات.';

  @override
  String get event_dustCloud_choice2_text => 'أطلق مسابير لرسم ممرات آمنة';

  @override
  String get event_dustCloud_choice2_outcome =>
      'يرسم مسباران مسارًا متعرجًا لكنه خالٍ نسبيًا عبر السحابة. تآكل الهيكل في حده الأدنى.';

  @override
  String get event_religionFounded_title => 'عقيدة جديدة';

  @override
  String get event_religionFounded_narrative =>
      'أسس مستوطن كاريزمي دينًا جديدًا يرتكز على الرحلة ذاتها — \"كنيسة العبور\". يعظ بأن الوصول إلى عالم جديد هو غاية البشرية الإلهية. العضوية تنمو بسرعة.';

  @override
  String get event_religionFounded_choice0_text =>
      'ادعمه — الطاقم يحتاج شيئًا يؤمن به';

  @override
  String get event_religionFounded_choice0_outcome =>
      'يمنح الإيمان بنية ومعنى للرحلة. ترتفع المعنويات، رغم استياء البعض من الحماس.';

  @override
  String get event_religionFounded_choice1_text =>
      'ابقَ محايدًا — لا تؤيد ولا تقمع';

  @override
  String get event_religionFounded_choice1_outcome =>
      'تنمو الحركة عضويًا. تقدم عزاءً دون دعم رسمي.';

  @override
  String get event_religionFounded_choice2_text =>
      'ثبّطه — نحتاج علماء لا أنبياء';

  @override
  String get event_religionFounded_choice2_outcome =>
      'يولّد القمع الاستياء. يتوارى المؤمنون والثقة بالقيادة تتآكل.';

  @override
  String get event_solarWindSurfing_title => 'اندفاع ريح شمسية';

  @override
  String get event_solarWindSurfing_narrative =>
      'نجم نابض قريب يصدر رياحًا شمسية قوية ومنتظمة. يقترح مهندسونا نشر شراع الطوارئ وركوبها كالموجة — لاكتساب سرعة هائلة بلا تكلفة وقود.';

  @override
  String get event_solarWindSurfing_choice0_text => 'انشر الشراع — اركب الريح';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'تتسارع السفينة بشكل مهيب. الإجهاد الهيكلي كبير لكن اكتساب السرعة يستحق.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'استخدم الريح لإعادة شحن الأنظمة بدلًا من ذلك';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'بدلًا من السرعة، نحصد الطاقة. مصفوفات التقنية والماسحات تشرب بعمق من الجسيمات المشحونة.';

  @override
  String get event_memoryPlague_title => 'تلف الذاكرة';

  @override
  String get event_memoryPlague_narrative =>
      'فيروس برمجي خامد منذ الإطلاق يُفعَّل ويبدأ بإتلاف قاعدة البيانات الثقافية للسفينة — الموسيقى والأدب والتاريخ. قرون من التراث البشري تُمحى بايت بعد بايت.';

  @override
  String get event_memoryPlague_choice0_text =>
      'حوّل كل موارد التقنية لحجر الفيروس';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'يعمل التقنيون بجنون. أنقذوا 70% من الأرشيف لكن الفيروس أضر بأنظمة التقنية الثالثية في طريقه للخروج.';

  @override
  String get event_memoryPlague_choice1_text =>
      'اعزل قاعدة البيانات الثقافية — دعها تحترق، أنقذ السفينة';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'جُوّع الفيروس من الموارد ومات. لكن الأرشيف الثقافي دُمّر. سيصل المستوطنون بشظايا من ذاكرة الأرض.';

  @override
  String get event_memoryPlague_choice2_text =>
      'استعانة جماعية — أيقظ مستوطنين لإعادة الكتابة من الذاكرة';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'ساهم الآلاف بذكريات: أغانٍ وقصص ووصفات وقصائد. ثلاثة مسنين أضعفتهم الإذابة لم ينجوا. أُعيد بناء الأرشيف، ناقصًا لكنه إنساني بعمق.';

  @override
  String get event_gravityLensPlanet_title => 'عالَم المرآة';

  @override
  String get event_gravityLensPlanet_narrative =>
      'يكشف التعديس الجاذبي كوكبًا يبدو نسخة طبق الأصل من الأرض — محيطات زرقاء وقارات خضراء وسحب بيضاء. لكن حسابات التعديس تُظهر أنه على بعد مئات السنوات الضوئية عن مسارنا — بعيد بشكل مستحيل. مع ذلك، بياناته الطيفية يمكن أن تصقل معايير بحثنا.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'ادرس بصمته الطيفية لصقل بحثنا';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'تكشف البيانات الطيفية مؤشرات حيوية وبصمات جوية يمكننا الآن مسحها. يتبلور الأمل.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'سجّل الإحداثيات لكن ابقَ على المسار';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'ربما ستتبع سفينة أخرى خرائطنا يومًا ما. يراقب الطاقم النقطة الزرقاء تتلاشى بمشاعر متباينة.';

  @override
  String get event_engineHarmonics_title => 'توافقيات المحرك';

  @override
  String get event_engineHarmonics_narrative =>
      'يُطوّر المحرك الرئيسي رنينًا توافقيًا يهتز عبر السفينة بأكملها بتردد أدنى بقليل من السمع البشري. يبلّغ المستوطنون عن صداع وقلق واضطراب نوم. يمكن للمهندسين إصلاحه، لكنه يتطلب توقف المحرك 12 ساعة.';

  @override
  String get event_engineHarmonics_choice0_text => 'أوقف وأصلح بشكل صحيح';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'اثنتا عشرة ساعة من الانجراف. تفقد الملاحة المعايرة، لكن الصمت عند إعادة تشغيل المحركات مبهج.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'خمّده باهتزازات مضادة — حل سريع';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'انخفض الطنين لمستوى محتمل. لم يختفِ، لكن الطاقم يتأقلم. أنظمة التقنية تُجهَد تحت الحمل.';

  @override
  String get event_arkMemory_title => 'آخر بث من الأرض';

  @override
  String get event_arkMemory_narrative =>
      'يلتقط الهوائي بعيد المدى آخر بث آلي من الأرض. إنه تسجيل: صوت طفل يقرأ أسماء كل من لم يستطع المغادرة. القائمة تستمر لساعات. تصمت السفينة.';

  @override
  String get event_arkMemory_choice0_text =>
      'أذعه على كل السفينة — يستحقون أن يُسمعوا';

  @override
  String get event_arkMemory_choice0_outcome =>
      'يستمع كل روح على متنها. أفراد الطاقم يجدون أسماء عائلاتهم. الحزن ساحق، لكنه يصوغ رابطة هدف لا تنكسر.';

  @override
  String get event_arkMemory_choice1_text => 'أرشفه بسرية — اعفِ الطاقم';

  @override
  String get event_arkMemory_choice1_outcome =>
      'حُفظ التسجيل لكنه لم يُبث. من يعلمون به لاحقًا يشعرون بالامتنان والحرمان معًا.';

  @override
  String get event_magneticStorm_title => 'عاصفة مغناطيسية بين نجمية';

  @override
  String get event_magneticStorm_narrative =>
      'عقدة متشابكة من خطوط المجال المغناطيسي، مقذوفة من نجم منهار، تبتلع السفينة. الإلكترونيات تشرر وتطقطق. الهيكل يرنّ كالجرس.';

  @override
  String get event_magneticStorm_choice0_text =>
      'أزل مغناطيسية الهيكل — احمِ الإلكترونيات';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'تفريغ متحكم ينقذ الحواسيب لكن ألواح الهيكل تفقد طبقتها الواقية المغناطيسية.';

  @override
  String get event_magneticStorm_choice1_text =>
      'دع الهيكل يمتصها — لا تحمِ شيئًا';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'تمر العاصفة. الهيكل ممغنط وأقوى قليلًا، لكن نصف شبكة المستشعرات احترق.';

  @override
  String get event_magneticStorm_choice2_text => 'اقذف مسبارًا كمانعة صواعق';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'يجذب المسبار الممغنط أسوأ خطوط المجال بعيدًا عن السفينة. الإلكترونيات نجت إلى حد كبير.';

  @override
  String get event_oxygenGarden_title => 'ازدهار الحديقة';

  @override
  String get event_oxygenGarden_narrative =>
      'حديقة الأكسجين الطارئة للسفينة — احتياطي لم يُقصد استخدامه — تزدهر تلقائيًا. أزهار لم تتفتح منذ الأرض تملأ الممرات بالألوان والعطر. علماء النبات يبكون.';

  @override
  String get event_oxygenGarden_choice0_text => 'وسّع الحديقة — خصص مساحة أكبر';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'تنمو الحديقة لتصبح نصبًا حيًا للأرض. تتحسن جودة الهواء وترتفع المعنويات ويطوّر علماء النبات سلالات جديدة تناسب التربة الفضائية.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'استمتع بها لكن حافظ على التخصيص الحالي';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'تبقى الحديقة معجزة صغيرة. يزورها الطاقم كضريح. لا تطلب شيئًا وتعطي كل شيء.';

  @override
  String get event_roguePlanet_title => 'مواجهة كوكب شارد';

  @override
  String get event_roguePlanet_narrative =>
      'كوكب شارد بلا نجم يعبر مسارنا — عالَم طُرد من منظومته الشمسية قبل مليارات السنين. رغم عدم وجود نجم، النشاط الجيولوجي العميق يبقي محيطًا تحت السطح دافئًا. إشارات حياة تومض على الماسح.';

  @override
  String get event_roguePlanet_choice0_text =>
      'أرسل مسبارًا لدراسة الكائنات الحية';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'يكتشف المسبار كائنات مضيئة حيويًا تزدهر في المحيط المظلم. كيمياؤها الحيوية تعلّمنا طرقًا جديدة لإدامة الحياة في ظروف معادية.';

  @override
  String get event_roguePlanet_choice1_text => 'عدّن السطح للمعادن النادرة';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'قشرة الكوكب الشارد غنية بمعادن تشكلت تحت ضغط هائل. تنتفخ احتياطياتنا من الموارد.';

  @override
  String get event_roguePlanet_choice2_text => 'تجاوزه — لا نتحمل الالتفاف';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'يتقلص العالم المظلم خلفنا. يراقب الطاقم وميض محيطه تحت السطحي يتلاشى من المستشعرات.';

  @override
  String get event_artCompetition_title => 'اللوحة الطويلة';

  @override
  String get event_artCompetition_narrative =>
      'مع تراجع المعنويات، ينظم الضابط الثقافي مسابقة فنية على مستوى السفينة: ارسم أو انحت أو اكتب أو لحّن شيئًا يجسّد ما تعنيه الرحلة لك. المشاركة ضخمة بشكل غير متوقع.';

  @override
  String get event_artCompetition_choice0_text =>
      'خصص موارد — دع الإبداع يزدهر';

  @override
  String get event_artCompetition_choice0_outcome =>
      'حُوّلت مؤن لمواد فنية. المعرض الناتج يحوّل السفينة. يتذكر الناس لماذا يقاتلون للبقاء.';

  @override
  String get event_artCompetition_choice1_text =>
      'شجّعها لكن لا توفر موارد إضافية';

  @override
  String get event_artCompetition_choice1_outcome =>
      'يبدع المستوطنون بما يجدون. الفن خام ويائس وجميل. المعنويات تستقر.';

  @override
  String get event_subspaceEcho_title => 'صدى تحت فضائي';

  @override
  String get event_subspaceEcho_narrative =>
      'تلتقط مصفوفة الاتصالات أصواتًا — أصواتًا بشرية — من مكان ما أمامنا في الفضاء. يتحدثون عن مستعمرة وأطفال وحصاد. هل هذا إرسال من المستقبل؟ من خط زمني موازٍ؟ أم مجرد صدى قاسٍ للتمني؟';

  @override
  String get event_subspaceEcho_choice0_text =>
      'اتبع اتجاه الإشارة — قد تقودنا للوطن';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'تعديل الاتجاه طفيف. سواء كانت الأصوات حقيقية أم لا، يبحر الطاقم بهدف.';

  @override
  String get event_subspaceEcho_choice1_text => 'سجّل كل شيء للتحليل';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'ينكب اللغويون والفيزيائيون على التسجيل. يستخلصون مراجع ملاحية تحسّن خرائطنا.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'تجاهلها — الفضاء يلعب بعقول الوحيدين';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'الخيار العملي. بعض الطاقم يشعر بخيبة أمل، لكن السفينة تبقى على مسارها المثبت.';

  @override
  String get event_boonPerfectCalm_title => 'السكون العظيم';

  @override
  String get event_boonPerfectCalm_narrative =>
      'لأسباب لا يستطيع أي فيزيائي تفسيرها، تدخل السفينة منطقة فضاء ساكنة بشكل خارق — لا إشعاع ولا حطام دقيق ولا تداخل جاذبي. كل نظام على السفينة يعمل بذروة الكفاءة. الطاقم ينام بعمق لأول مرة منذ أشهر.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'استغل السكون لإصلاحات شاملة';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'تعمل فرق الإصلاح في ظروف مثالية. كل نظام يحصل على اهتمام. تخرج السفينة متجددة.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'دع الطاقم يرتاح — استحقوا ذلك';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'وقف عام على مستوى السفينة. ينام المستوطنون ويتشاركون الوجبات ويروون القصص. التكلفة البشرية للرحلة تُسدّد لفترة وجيزة.';

  @override
  String get event_boonAncientWaystation_title => 'محطة استراحة قديمة';

  @override
  String get event_boonAncientWaystation_narrative =>
      'مستقرة في بئر الجاذبية بين نجمين ميتين، محطة قديمة لا تزال تعمل — آلية صبورة تنتظر المسافرين. أرصفتها تنفتح مع اقترابنا. روبوتات الإصلاح تنشط. احتياطيات الوقود تمتد نحونا. أحد ما قبل زمن بعيد بناها لأمثالنا.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'ارسُ واقبل كل ما تقدمه';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'تُصلح المحطة وتُزوّد وتُعيد معايرة السفينة بتقنية متقدمة قرونًا. حين نغادر، تنطفئ المحطة — أنجزت غرضها.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'اقبل الإصلاحات لكن اتركها تعمل للآخرين';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'نأخذ ما نحتاج فقط ونرسل إحداثيات المحطة نحو الأرض. يشعر الطاقم بالنبل.';

  @override
  String get event_relicSentinel_title => 'الحارس';

  @override
  String get event_relicSentinel_narrative =>
      'بناء شاهق يدور حول قمر قاحل — حارس وحيد تركه بناته. بارتفاع كيلومتر، على شكل رمح من الزجاج الأسود. مع اقترابنا، تنفتح عين حمراء واحدة في قمته وتتتبع السفينة. لا يطلق النار. لا ينادي. يراقب.';

  @override
  String get event_relicSentinel_choice0_text =>
      'أرسل ملف مهمتنا — أظهر أننا لا نعني ضررًا';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'تخفت العين إلى كهرماني ثم أخضر. تصل حزمة بيانات: إحداثيات ثلاث منظومات نجمية مُعلَّمة \"آمنة\" بتدوين رياضي عالمي. هدية من حارس.';

  @override
  String get event_relicSentinel_choice1_text =>
      'ابقَ في مكانك وادرسه بشكل سلبي';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'ساعات من المراقبة تسفر عن رؤى في علم المواد لا ينبغي أن تكون ممكنة. فريق ألواح الهيكل يدوّن ملاحظات بجنون.';

  @override
  String get event_relicSentinel_choice2_text => 'انسحب فورًا — لا نعرف قواعده';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'تنغلق العين مع انسحابنا. أيًا كان ذلك الاختبار، اخترنا ألا نخوضه. يتجادل الطاقم لأيام.';

  @override
  String get event_relicSeedProbe_title => 'البذرة التائهة';

  @override
  String get event_relicSeedProbe_narrative =>
      'مسبار صغير أنيق يتدحرج عبر الفراغ، يبث على كل تردد في آن واحد. غلافه خزفي منقوش برموز تتبدل عند مراقبتها. بداخله: حجرة مضغوطة تحتوي تربة وبذورًا وكائنات دقيقة مجمّدة من عالم لم يعد موجودًا.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'ادمج الحمولة البيولوجية في بنوك بذورنا';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'فُهرست البذور والميكروبات الفضائية وحُفظت بعناية. يمكنها تحويل عالم قاحل إلى شيء حي. يصفها علماء الأحياء بالمعجزة في زجاجة.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'ادرس أنظمة الدفع والملاحة للمسبار';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'محرك المسبار متقدم قرونًا عنا — دافع بلا ارتداد بحجم قبضة اليد. يعكس المهندسون هندسة شظايا التصميم.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'احفظ المسبار كاملًا كأثر ثقافي';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'معروضًا في بهو السفينة، تصبح البذرة الفضائية رمزًا للقرابة بين الأنواع. أحد آخر، في مكان ما، حاول إنقاذ عالمه أيضًا.';

  @override
  String get event_relicWarningBuoy_title => 'عوامة تحذيرية';

  @override
  String get event_relicWarningBuoy_narrative =>
      'شبكة من العوامات الصغيرة، مئات منها، مرتبة بنمط هندسي مثالي عبر مسار رحلتنا. كل منها يصدر نفس الإشارة — نبضة متكررة بسيطة تزداد ترددًا كلما اقتربنا. تبدو كتحذير. أو سياج.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'انتبه للتحذير — غيّر المسار حول الشبكة';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'الالتفاف يكلف وقتًا ويُجهد الملاحة، لكن عند حافة الحدود، ترصد المستشعرات بعيدة المدى ما وراءها: منطقة فضاء مليئة بحطام عوالم محطمة. العوامات أنقذتنا.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'اعبر — لا نتحمل الالتفافات';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'لا شيء يحدث عند عبور الخط. تصمت العوامات. أيًا كان ما كانت تحرسه، فقد زال أو حالفنا الحظ. الطاقم يتنفس من جديد.';

  @override
  String get event_relicWarningBuoy_choice2_text => 'التقط عوامة للتحليل';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'أحشاء العوامة تحتوي أرشيف بيانات مضغوط — خرائط نجمية لهذه المنطقة من مليون سنة مضت. بعض البيانات لا تزال دقيقة.';

  @override
  String get event_relicMirrorArray_title => 'مصفوفة المرايا';

  @override
  String get event_relicMirrorArray_narrative =>
      'آلاف الأسطح المسطحة العاكسة معلقة بلا حراك في الفضاء، مرتبة في حلقات متحدة المركز تمتد مئات الكيلومترات. تركّز ضوء النجوم من شمس بعيدة في نقطة واحدة — نجم اصطناعي يتّقد في الفراغ. أحد ما بنى منارة بين المجرات.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'استحمّ في الضوء المركّز — أعد شحن كل شيء';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'يغمر ضوء النجوم المركّز مُجمّعاتنا الشمسية. ترتفع احتياطيات الطاقة. الضوء الدافئ يرفع كل روح على متنها بعد أشهر في الظلام البارد.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'ادرس مادة المرايا — لا ينبغي أن توجد';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'المرايا مصنوعة من مادة بانعكاسية مثالية — صفر امتصاص عند أي طول موجي. يستخرج المهندسون شظية. ألواح الهيكل لن تعود كما كانت.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'ابحث في نقطة التركيز — شيء يُضاء';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'عند نقطة التقاء: كبسولة صغيرة محفوظة بشكل مثالي في ضوء مركّز. بداخلها خريطة نجمية ثلاثية الأبعاد بتفصيل يستغرق حواسيبنا أيامًا لفهرسته.';

  @override
  String get event_relicGraveyard_title => 'مقبرة المسابير';

  @override
  String get event_relicGraveyard_narrative =>
      'ننجرف إلى سحابة من المسابير المهجورة — آلاف منها، من عشرات الحضارات المختلفة. بعضها قديم لا يُحصى، مُدمج بالإشعاع الكوني في حفريات معدنية. بعضها لا يزال يومض بطاقة خافتة. كان هذا مفترق طرق يومًا. كل نوع مرّ من هنا ترك شيئًا.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'انتشال منهجي — احصد أفضل التقنيات';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'تعمل فرق الهندسة بنوبات، تنتزع تقنيات فضائية من مئة تصميم مختلف. اندماج الأفكار يُنتج اختراقات في كل نظام.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'ركّز على بيانات الملاحة المخزنة في ذاكراتها';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'مقارنة خرائط النجوم من عشرة أنواع مختلفة تخلق أكمل خريطة لهذا الذراع المجري على الإطلاق.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'أضف مسبارنا الخاص للمقبرة — اترك علامة';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'نصنع منارة صغيرة تحمل قصة البشرية ونضيفها للمجموعة. يشعر الطاقم بالاتصال بشيء شاسع وقديم.';

  @override
  String get event_relicDreamcatcher_title => 'صائد الأحلام';

  @override
  String get event_relicDreamcatcher_narrative =>
      'شبكة من الخيوط، رفيعة كحرير العنكبوت لكنها تمتد آلاف الكيلومترات، معلقة بين كويكبين شاردين. إنها ليست شبكة — إنها هوائي مضبوط على ترددات تتوافق مع أنماط الموجات الدماغية البشرية. عند دخول مداها، يبدأ كل مستوطن نائم بالحلم بنفس الحلم: مدينة مزدهرة تحت سماء كهرمانية.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'سجّل إحداثيات الحلم — المدينة قد تكون حقيقية';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'يفك علماء الأعصاب معلومات مكانية من الحلم المشترك. تتوافق مع منظومة نجمية حقيقية — والمدينة في الرؤيا لم تكن مجازًا. أحد ما هناك، ويتوقعوننا.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'احصد عينات من الخيوط — المادة استثنائية';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'الخيوط موصل فائق بدرجة حرارة الغرفة. مدمجة في أنظمتنا، تُخفّض فقدان الطاقة لقرب الصفر.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'اقطع الشبكة وحرّر الحالمين';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'تتوقف الأحلام. يستيقظ المستوطنون مرتبكين لكن بخير. بعضهم يحزن على الرؤيا المفقودة. آخرون ممتنون للنوم بلا همسات فضائية.';

  @override
  String get event_relicRosetta_title => 'حجر رشيد الفضائي';

  @override
  String get event_relicRosetta_narrative =>
      'مكعب صغير كثيف من معدن مجهول يمر بالسفينة. كل وجه منقوش بنفس الرسالة بنظام تدوين مختلف — رياضي وكيميائي ووراثي وصوتي وكهرومغناطيسي وواحد لا نستطيع تحديده. إنه حجر رشيد للكون.';

  @override
  String get event_relicRosetta_choice0_text =>
      'فك شفرة الوجه السادس — التدوين المجهول';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'أشهر من التحليل تسفر عن اختراق: النظام السادس يُشفّر إحداثيات مكانية بموجات الجاذبية. فهمنا للفيزياء يقفز جيلًا.';

  @override
  String get event_relicRosetta_choice1_text =>
      'استخدم الوجه الكيميائي لتركيب مركبات جديدة';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'التدوين الكيميائي يصف مواد لم نتخيلها قط. يصنع المهندسون رقعًا للهيكل أخف وأقوى من أي شيء من الأرض.';

  @override
  String get event_relicRosetta_choice2_text => 'بث الوجه الوراثي لبنوك بذورنا';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'يحتوي التدوين الوراثي على تسلسلات DNA محسّنة لمقاومة الإشعاع وامتصاص المغذيات. محاصيلنا ومستوطنونا سيكونون أصلب على التربة الفضائية.';

  @override
  String get event_relicGhostFleet_title => 'الأسطول الشبحي';

  @override
  String get event_relicGhostFleet_narrative =>
      'ترسم الماسحات صورة مرعبة: أسطول من السفن الحربية الفضائية، مئات منها، معلقة بلا حراك في تشكيل. قديمة — قراءات الطاقة صفر، الهياكل منخورة بدهور من الاصطدامات الدقيقة. أيًا كانت المعركة التي كانوا يبحرون نحوها لم تأتِ قط. ينتظرون هنا، موتى وصبورين، لأطول من عمر الحضارة البشرية.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'اصعد السفينة الرئيسية — إن كان لدى أحد أفضل تقنية فهي';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'سطح قيادة السفينة الرئيسية لا يزال يحمل حاسوبًا تكتيكيًا سليمًا. خوارزمياته التنبؤية متقدمة قرونًا. تتحسن الملاحة ورصد التهديدات بشكل كبير.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'انتزع ألواح الدروع من سفن المرافقة';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'دروع السفن الحربية الفضائية مصممة لتحمل أسلحة لا نستطيع حتى تصوّرها. مثبتة على هيكلنا، تجعل سفينة المستعمرة شبه غير قابلة للتدمير.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'انتشل أنظمتهم المُجمَّدة — كانوا يحملون جنودًا';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'تقنية التجميد الفضائية تعمل بمبادئ لم نفكر فيها قط. كبسولاتنا تعمل أبرد وأنعم وبشكل أكثر موثوقية بعد التحديث.';

  @override
  String get event_scannerCalibrationDrift_title => 'انحراف معايرة الماسحات';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'تكشف التشخيصات الروتينية أن عدة أنظمة فرعية للماسحات انحرفت عن المعايرة بعد آخر قفزة فائقة. الماسحات الجوية والحرارية تقرأ إشارات وهمية. يمكن للمهندسين إصلاحها لكنه يستغرق وقتًا وموارد.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'إعادة معايرة كاملة — حوّل موارد التقنية';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'محاذاة دقيقة تعيد كلا الماسحين لدقة شبه مثالية، لكن حجرة التقنية مستنزفة.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'إصلاح سريع — أعد معايرة الجوي فقط';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'أُعيد الماسح الجوي. الماسح الحراري يبقى غير موثوق حاليًا.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'أطلق مسبارًا لمعايرة مرجعية';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'يوفر المسبار إشارة مرجعية نظيفة. كلا الماسحين يقفلان ويُعاد معايرتهما تلقائيًا.';

  @override
  String get event_ionStormScanners_title => 'تداخل عاصفة أيونية';

  @override
  String get event_ionStormScanners_narrative =>
      'عاصفة أيونية تجتاح القطاع، وتغرق مصفوفات الماسحات بالتشويش. أنظمة الكشف عن المعادن والمياه تتلقى العبء الأكبر من التداخل الكهرومغناطيسي.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'أوقف الماسحات حتى تمر العاصفة';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'نجت الماسحات لكنها فقدت بيانات المعايرة. قراءات المعادن والمياه ستكون أقل دقة.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'واصل المسح — اخترق التشويش';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'تتدفق البيانات الخام، لكن دوائر الترشيح تحترق في نظامين فرعيين. المسح الجاذبي تأثر أيضًا.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'استخدم العاصفة لاختبار وتحسين المرشحات';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'يستخدم الفريق العلمي التشويش لتدريب مرشحات تكيفية. يتحسن ماسح الماء، لكن ماسح المعادن يتضرر.';

  @override
  String get event_bioScannerContamination_title => 'تلوث الماسح الحيوي';

  @override
  String get event_bioScannerContamination_narrative =>
      'تلوّث ماسح علامات الحياة بمادة عضوية متبقية من آخر مسح كوكبي. إيجابيات كاذبة في كل مكان. الماسح الجاذبي يُظهر تشويشًا متعاطفًا أيضًا.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'عقّم مصفوفة المستشعرات — تطهير كامل';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'تنظيف شامل يعيد ماسح علامات الحياة لكن المواد الكيميائية تآكل غلاف المستشعر الجاذبي.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'مرشح برمجي — عوّض خوارزميًا';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'يعمل المرشح بشكل كافٍ، لكن التلوث الأساسي سيُدهور كلا النظامين ببطء.';

  @override
  String get event_scannerPowerSurge_title => 'طفرة طاقة في الماسحات';

  @override
  String get event_scannerPowerSurge_narrative =>
      'قناة طاقة قرب حجرة الماسحات تزداد حملًا، مرسلة طفرة عبر عدة أنظمة فرعية. الماسحات الجوية وعلامات الحياة تتلقى ضربات مباشرة. الدروع تمتص بعض الفائض.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'حوّل الطاقة — أنقذ الماسحات';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'تصرف سريع من فريق الهندسة يحدّ الضرر، لكن الدروع تتلقى الطاقة المحوّلة.';

  @override
  String get event_scannerPowerSurge_choice1_text => 'دع الطفرة تأخذ مجراها';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'تتلقى الماسحات كامل القوة. تتدهور قراءات الغلاف الجوي وعلامات الحياة بشكل كبير.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'ضحِّ بخلية طاقة مسبار لامتصاص الطفرة';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'تمتص مكثفات المسبار الطاقة الزائدة كالإسفنج. ضرر الماسحات لا يُذكر.';

  @override
  String get event_relicWorldEngine_title => 'محرك العوالم';

  @override
  String get event_relicWorldEngine_narrative =>
      'تكشف المسوحات العميقة شيئًا مستحيلًا: آلة بحجم قمر صغير، خامدة في الظلام بين النجوم. سطحها مغطى بآليات بحجم قارات — معالجات غلاف جوي ومولدات مجال مغناطيسي ومثبتات تكتونية. أحد ما بنى آلة تبني العوالم.';

  @override
  String get event_relicWorldEngine_choice0_text => 'حمّل مخططات الاستصلاح';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'المخططات شاسعة وتالفة جزئيًا، لكن ما نستعيده يمكن أن يجعل أي عالم معادٍ صالحًا للسكن. مستوطنونا سيُعيدون تشكيل وطنهم الجديد.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'احصد مواد البناء من هيكلها';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'هيكل محرك العوالم مصنوع من مواد فوقية تُصلح ذاتها عند التضرر. مدمجة في سفينتنا، ترمم ببطء اختراقات الهيكل الحالية.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'حاول إعادة تشغيلها — وجّهها نحو منظومتنا المستهدفة';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'تتحرك الآلة. أنظمة قديمة تمر بتسلسلات بدء التشغيل. شعاع طاقة ينطلق نحو نجم بعيد. سواء نجح أم لا لن يُعرف حتى نصل، لكن القراءات واعدة.';

  @override
  String get event_uneventfulMaintenance_title => 'نوبة صيانة روتينية';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'لا شيء يستدعي الانتباه. السفينة تطنّ بثبات عبر الفراغ وجدول المناوبة يدعو لنافذة صيانة روتينية. يسأل رئيس الطاقم أين يركّز جهد النوبة.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'ركّز على ترميم الشقوق الدقيقة في الهيكل';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'نوبة هادئة في ترقيع التشققات الشعرية. لا شيء مثير، لكن الهيكل أفضل حالًا.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'أعد معايرة الماسحات الأمامية';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'يقضي تقني الماسحات بضع ساعات في الضبط الدقيق. تتحسن القراءات قليلًا.';

  @override
  String get event_uneventfulQuietWatch_title => 'مناوبة هادئة';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'تمر النجوم بصمت. الجسر هادئ والأجهزة مستقرة. إنها إحدى تلك الفترات النادرة حيث لا يطلب الكون منك شيئًا.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'دع الطاقم يرتاح — استحقوا نوبة هادئة';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'ساعات قليلة من السلام الحقيقي. ينام الناس أعمق وتخف التوترات ويلاحظ الضابط الثقافي ارتفاعًا طفيفًا في المعنويات.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'أجرِ تشخيصات منخفضة الأولوية بينما الجو هادئ';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'رُصدت مشاكل طفيفة وسُجلت. لا شيء عاجل، لكن سجلات التقنية أنظف قليلًا.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'فحص كبسولات التجميد — كل شيء طبيعي';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'التدقيق الفصلي لكبسولات التجميد يأتي ويمضي بلا إنذار واحد. كل كبسولة تقرأ أخضر. الفريق الطبي يحظى بلحظة هدوء نادرة.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'أيقظ بعض المستوطنين لفترة وجيزة لزيارة معنوية';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'أُيقظ ثلاثة مستوطنين لساعة. يتشاركون القصص ويعانقون أصدقاء قدامى ويعودون للتجميد مبتسمين.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'دعهم ينامون — لا تخاطر بدورات إيقاظ غير ضرورية';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'تواصل الكبسولات عملها بلا عيب. يستمتع الأطباء بكوب شاي هادئ بدلًا من ذلك.';

  @override
  String get event_uneventfulCartography_title => 'تحديث رسم الخرائط النجمي';

  @override
  String get event_uneventfulCartography_narrative =>
      'تحديث رسم الخرائط المجدول لفريق الملاحة لا يكشف شيئًا غير عادي — مجرد حقول النجوم المتوقعة تتحول مع سفرنا. يوم هادئ للملاحين.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'أعد معايرة الملاحة وفق مواقع النجوم الجديدة';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'تصحيح اتجاه طفيف، بالكاد ملحوظ. حاسوب الملاحة يطنّ بارتياح.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'حدّث خرائط النجوم لأرشيف المستعمرة';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'سيمتلك المستوطنون المستقبليون خرائط أفضل قليلًا لهذه المنطقة. هدية صغيرة للأجيال القادمة.';

  @override
  String get event_uneventfulAnniversary_title => 'ذكرى السفينة';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'عام منذ الإطلاق — أو اثنان؟ الزمن يتشوش في الفضاء السحيق. أحدهم في المطبخ خبز كعكة من مؤن معاد تشكيلها. على القبطان أن يقرر كيف يحتفل بالمناسبة.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'احتفال صغير — موسيقى وكعكة ونخب للأرض';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'ساعة من الدفء في الفراغ البارد. يضحك الناس ويبكي بعضهم ويشعر الجميع بأنهم أكثر إنسانية.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'كالمعتاد — نحتفل حين نصل';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'يحترم الطاقم النهج الصارم. يتحسن التركيز ويُجري فريق المناوبة فحصًا إضافيًا للأنظمة.';

  @override
  String get event_databaseLiterature_title => 'أرشيفات أدب الأرض';

  @override
  String get event_databaseLiterature_narrative =>
      'يفتح ذكاء السفينة قسمًا مختومًا منذ زمن في قاعدة البيانات الثقافية: أرشيف الأدب الكامل للأرض. روايات وشعر ومسرحيات — ملايين الأعمال عبر كل لغة وعصر. يتجمع الطاقم لقراءة.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'بث قراءات مختارة على كل السفينة';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'يتردد شكسبير في الممرات. أبيات الرومي تُعزف في حجرة الزراعة المائية. يتذكر الطاقم ما يحملونه.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'فهرس الأرشيف لبرامج تعليمية';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'جهد الفهرسة يقوّي قاعدة معارف السفينة ويمنح الضابط الثقافي مواد تعليمية جديدة.';

  @override
  String get event_databaseSchematics_title => 'مراجعة المخططات الهندسية';

  @override
  String get event_databaseSchematics_narrative =>
      'يعثر مهندس على قسم منسي في قاعدة بيانات السفينة: مخططات تفصيلية من العقد الأخير للهندسة على الأرض — تصاميم مفاعلات اندماج ومخططات مواد فوقية ومفاهيم دفع تجريبية.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'أعطِ الأولوية لمفاهيم الدفع لفريق التقنية';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'تكشف المخططات تحسينات كفاءة لم يملك البناة الأصليون وقتًا لتنفيذها. حجرة التقنية تعج بالنشاط.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'شارك المعرفة على نطاق واسع — كل قسم يستفيد';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'مهندسو الهيكل وتقنيو الماسحات والأطباء جميعهم يجدون رؤى مفيدة. المد المرتفع يرفع كل الأنظمة قليلًا.';

  @override
  String get event_databaseCorruption_title => 'فحص الحفاظ الثقافي';

  @override
  String get event_databaseCorruption_narrative =>
      'يكشف فحص سلامة مجدول لقاعدة البيانات الثقافية عن تآكل البتات — أقسام من الموسيقى والتاريخ الشفهي والنصوص الدينية تدهورت لا يمكن استعادتها. لم ينجُ كل شيء من الرحلة.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'حوّل موارد التقنية لإنقاذ ما تبقى';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'يوقف المهندسون أعمالًا أخرى لتشغيل خوارزميات استعادة البيانات. أنقذوا معظمها، لكن الجهد كلّف حجرة التقنية.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'اطلب من المستوطنين إعادة إنشاء الأعمال المفقودة من الذاكرة';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'جهد جميل وناقص. ما أُعيد بناؤه ينتمي للرحلة لا للأرض. وُلد تقليد جديد.';

  @override
  String get event_databaseBreakthrough_title => 'اختراق بحثي مؤرشف';

  @override
  String get event_databaseBreakthrough_narrative =>
      'فيزيائي يقارن أوراق بحثية قديمة من الأرض في قاعدة البيانات يكتشف أن دراستين غير مرتبطتين، مجتمعتين، تصفان طريقة جديدة للتحليل الطيفي بعيد المدى. الآثار هائلة.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'طبّق طريقة التحليل الجديدة في مصفوفة الماسحات';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'يعمل فريق الماسحات بحمى. في أيام، تتضاعف الدقة الطيفية. تكشف الكواكب البعيدة أسرارها.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'انشر الاكتشاف على كل السفينة — ألهم المزيد من البحث';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'يشعل الاختراق موجة من الدراسات متعددة التخصصات. تتحسن التقنية بشكل عام ويشعر الطاقم بالحيوية الفكرية.';

  @override
  String get event_alienFleetSighting_title => 'أسطول فضائي في الأفق';

  @override
  String get event_alienFleetSighting_narrative =>
      'ترسم الماسحات بعيدة المدى صورة مرعبة: أسطول من السفن الفضائية، مئات منها، يتحرك في تشكيل مثالي عبر ميدان النجوم. تقزّم سفينتنا. اتجاهها سيجلبها ضمن مدى المستشعرات في ساعات. الاتصال الأول — بشروطهم أو بشروطنا.';

  @override
  String get event_alienFleetSighting_choice0_text => 'راقب بصمت — اختفِ وراقب';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'تخفض السفينة انبعاثاتها للحد الأدنى. يمر الأسطول كمدرسة حيتان مضيئة، غير مدرك للسفينة البشرية الصغيرة المختبئة في أثره. بيانات الماسحات استثنائية.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'حاول الاتصال الأول — أرسل تحية';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'تنفصل سفينة واحدة من التشكيل وتقترب. تصل دفقة بيانات — خرائط نجمية وتحذيرات وشيء قد يكون موسيقى. ثم تعود للأسطول ويرحلون.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'اهرب — غيّر المسار فورًا';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'تحترق السفينة بقوة في الاتجاه المعاكس. تغيير المسار مكلف ومُجهد، لكن الأسطول لم يلاحظنا. أمان بثمن.';

  @override
  String get event_alienTradeOffer_title => 'عرض تجاري فضائي';

  @override
  String get event_alienTradeOffer_narrative =>
      'سفينة فضائية أصغر منا لكنها تشع طاقة هائلة تطابق سرعتنا وتبث رسالة بسيطة متكررة. يفكها لغويونا في ساعات: عرض للتجارة. تُقترح ثلاث فئات للتبادل.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'بادل مخططات تقنية بخرائط نجمية فضائية';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'نرسل تصاميم دفعنا؛ يردون ببيانات ملاحية تغطي رقعة شاسعة من الفضاء غير المستكشف. تتحسن خرائطنا بشكل كبير، رغم أننا شاركنا تقنيتنا مع نوع مجهول.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'بادل بيانات ثقافية بإصلاح السفينة';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'نبث موسيقانا وفننا وتاريخنا. في المقابل، تغمر روبوتات إصلاح فضائية الهيكل وتغلق الاختراقات بمواد لا نستطيع تحديدها. الهيكل يلمع. روحنا مشتركة.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'ارفض التجارة — المخاطرة كبيرة جدًا';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'تنتظر السفينة الفضائية لبعض الوقت ثم تغادر دون حادث. الطاقم مرتاح لكنه يتساءل ماذا ضاع.';

  @override
  String get event_alienWarning_title => 'بث تحذيري فضائي';

  @override
  String get event_alienWarning_narrative =>
      'كل مكبر صوت على السفينة يطقطق بصوت فضائي — يُترجم آنيًا بذكائنا الاصطناعي: \"خطر أمامكم. عودوا. الظلام يبتلع.\" يتكرر البث ثم يموت. المستشعرات بعيدة المدى تُظهر فراغًا شاذًا في مسارنا الحالي.';

  @override
  String get event_alienWarning_choice0_text =>
      'انتبه للتحذير — غيّر المسار حول الفراغ';

  @override
  String get event_alienWarning_choice0_outcome =>
      'الالتفاف يضيف إجهادًا كبيرًا على الملاحة، لكن على حافة الفراغ تؤكد المستشعرات: لا شيء دخل تلك المنطقة خرج منها قط. ندين بدَيْن لأصوات مجهولة.';

  @override
  String get event_alienWarning_choice1_text =>
      'تجاهل التحذير — ابقَ على المسار';

  @override
  String get event_alienWarning_choice1_outcome =>
      'نعبر. يتبين أن الفراغ منطقة حطام دقيق شديد الكثافة. الهيكل والماسحات يتلقيان عقابًا قبل أن نتجاوز الطرف الآخر.';

  @override
  String get event_alienWarning_choice2_text => 'حقّق في حافة الفراغ بمسبار';

  @override
  String get event_alienWarning_choice2_outcome =>
      'يدخل المسبار الفراغ ويبث بيانات استثنائية قبل أن يصمت. يستخرج فريق الماسحات قراءات قيّمة، لكن المسبار فُقد.';

  @override
  String get event_nativeSignalDetected_title => 'إرسالات من العالم المستهدف';

  @override
  String get event_nativeSignalDetected_narrative =>
      'تلتقط مصفوفة الاتصالات إشارات كهرومغناطيسية منظمة من كوكبنا المستهدف. لا لبس فيها: منتظمة ومُعدَّلة واصطناعية. أحد ما هناك بالفعل. فرضية المستعمرة بأكملها تتغير في لحظة.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'أرسل تحية سلمية — أعلن وصولنا';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'خيار شجاع. يتغير نمط الإشارة بعد بثنا — سمعونا. سواء كان ترحيبًا أم تحذيرًا غير واضح، لكن الباب مفتوح.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'استمع فقط — تعلّم قبل كشف أنفسنا';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'أشهر من الاستماع السلبي ترسم صورة للحضارة المحلية. حذرون وإقليميون لكن ليسوا عدائيين. نصل مُطّلعين.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'شوّش الإشارة — امنعهم من معرفة اقترابنا';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'ينجح التشويش، لكنه عمل عدواني ضد شعب لم نقابله. الطاقم منقسم حول الأخلاقيات.';

  @override
  String get event_nativeProbeEncounter_title => 'اعتراض مسبار فضائي';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'مسبار صغير أنيق — ليس بشري الأصل — يطابق سرعتنا ويبدأ بمسح السفينة. لغة تصميمه تطابق الإشارات من الكوكب المستهدف. أرسل السكان الأصليون لجنة ترحيب. أو طائرة مراقبة.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'اسمح بالمسح — أظهر أنه لا شيء نخفيه';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'يُكمل المسبار مسحه ويبث دفقة بيانات نحو الكوكب. بعد دقائق، تصلنا دفقة ثانية: بيانات جوية ومناطق هبوط آمنة وما قد يكون دعوة.';

  @override
  String get event_nativeProbeEncounter_choice1_text => 'التقط المسبار للدراسة';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'سُحب المسبار إلى حجرة الشحن. تقنيته مذهلة لكن فعل الالتقاط قد يُرى كعدائي من صانعيه.';

  @override
  String get event_nativeProbeEncounter_choice2_text => 'دمّره — لا نعرف نيته';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'نبضة واحدة تحوّل المسبار لشظايا. الطاقم يشعر بالأمان، لكن جسرًا محتملًا أُحرق.';

  @override
  String get event_nativeCulturalExchange_title => 'أول تبادل ثقافي';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'أُنشئ رابط بيانات ضيق النطاق مع سكان الكوكب الأصليين. يرسلون صورًا وأصواتًا وتسلسلات رياضية. يعمل لغويونا وضباط الثقافة على مدار الساعة لإعداد رد. هذه أهم محادثة في تاريخ البشرية.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'شارك فن وموسيقى الأرض — ابدأ بالجمال';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'نرسل باخ ورسوم السكان الأصليين الأستراليين وصوت المطر على الأوراق. الرد سلسلة من التناغمات الفضائية تُبكي الطاقم. يتعمق التفاهم.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'شارك المعرفة العلمية — ابدأ بالعقل';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'نرسل جدولنا الدوري وخرائط النجوم والفيزياء. يردون بتصحيحات وإضافات. تقفز تقنيتنا للأمام، لكن التبادل يبدو تجاريًا.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'أرسل مسبارًا بعينات مادية — DNA وبذور وماء';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'يحمل مسبار جوهر الأرض لأيادٍ فضائية. يرد السكان الأصليون بهدية مماثلة — عينات بيولوجية من عالمهم. علماء الأحياء في نشوة.';

  @override
  String get event_landingThrusterMalfunction_title => 'عطل في دافعات الهبوط';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'أثناء فحص أنظمة روتيني، تنطلق دافعات الهبوط خطأً — دوي حاد يتردد عبر الطوابق السفلى والسفينة ترتجّ. تكشف التشخيصات عن حاقن وقود متصدع في مصفوفة الهبوط الرئيسية. بدون إصلاح، الهبوط سيكون عنيفًا.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'حوّل فريق التقنية لتصنيع حاقن بديل';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'يعمل المهندسون نوبات مضاعفة ويصنعون حاقنًا جديدًا من سبيكة هيكل احتياطية. أُعيد نظام الهبوط، رغم استنزاف حجرة التقنية.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'أطلق مسبارًا لاختبار معايرة الدافعات في الفراغ';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'يوفر المسبار بيانات دفع آنية تتيح للمهندسين إعادة المعايرة حول الحاقن التالف. ليس إصلاحًا كاملًا، لكن نظام الهبوط يستقر.';

  @override
  String get event_landingSimDrill_title => 'تدريب محاكاة الهبوط';

  @override
  String get event_landingSimDrill_narrative =>
      'مع اقتراب الهبوط، يأمر القبطان بمحاكاة هبوط كاملة. يتحزم الطاقم وتُختبر الأنظمة تحت الحمل ويبدأ الهبوط الافتراضي. إنها أكثر بروفة واقعية سيحصلون عليها.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'ركّز على الدقة التقنية — نفّذ التدريب حرفيًا';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'تكشف المحاكاة خطأين طفيفين في المعايرة يُصححان فورًا. نظام الهبوط أدق.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'اجعلها حدثًا على مستوى السفينة — بث المحاكاة';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'يشاهد المستوطنون من كل شاشة على متنها. التجربة المشتركة للهبوط المحاكى — الاهتزاز والهتاف — توحّد الطاقم كلا شيء آخر.';

  @override
  String get event_dysonSphere_title => 'كرة دايسون';

  @override
  String get event_dysonSphere_narrative =>
      'ترصد المستشعرات هيكلًا مستحيلًا — كرة دايسون جزئية تحيط بنجم بعيد، تحصد كامل ناتج طاقته. من بناها تجاوز أي شيء تصورته البشرية. يبدو أن مرسى يُفتح مع اقترابنا.';

  @override
  String get event_dysonSphere_choice0_text => 'ارسُ واستكشف الهيكل';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'بالداخل، تمنحنا أنظمة آلية تقنية تقفز بقدراتنا قرونًا للأمام. خمسة مهندسين فُقدوا بسبب آليات دفاع المحطة قبل أن تتعرف على نيتنا. أُعيد بناء البنّاؤون بسبائك فضائية.';

  @override
  String get event_dysonSphere_choice1_text => 'احصد الطاقة من الخارج';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'نستحم في فيض الكرة المشع. كل نظام على متنها يُشحن للحد الأقصى. الطاقم يشاهد في ذهول صامت.';

  @override
  String get event_dysonSphere_choice2_text => 'ادرس من مسافة آمنة وامضِ';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'تكشف المسوحات بعيدة المدى مبادئ بناء تُحدث ثورة في فهمنا للهندسة.';

  @override
  String get event_nanotechPlague_title => 'وباء النانو';

  @override
  String get event_nanotechPlague_narrative =>
      'سحابة من الآلات النانوية المتمردة، بقايا برنامج أسلحة حضارة ميتة، تتسلل إلى السفينة عبر الشقوق الدقيقة في الهيكل. تفكك الأنظمة غير الحرجة على المستوى الجزيئي. السرب ينتشر بسرعة.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'نبضة كهرومغناطيسية — احرق كل شيء في الأقسام المتضررة';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'تدمر النبضة الكهرومغناطيسية النانيتات لكنها تضر إلكترونياتنا في تلك الأقسام أيضًا. المستوطنون في منطقة الانفجار يعانون حروقًا.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'فرّغ الأقسام المتضررة للفراغ';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'بدون غلاف جوي، تبطؤ النانيتات وتموت. لكن الأقسام فُقدت مع المؤن المخزنة وأرشيفات الثقافة.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'أعد برمجتها — حوّل الأسلحة لأدوات';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'يكسر مهندس بارع شفرة النانيت، لكن خمسة من أفراد الطاقم في أشد الأقسام تضررًا فات الأوان لإنقاذهم. السرب المُعاد برمجته يبدأ بإصلاح السفينة بدل تدميرها.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'ضحِّ بنواة ذكاء مسبار لإنشاء سرب مضاد';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'أُعيد استخدام معالجات المسبار للتحكم بسرب نانيت دفاعي. حُيّد الوباء بأقل الخسائر.';

  @override
  String get event_prematureAwakening_title => 'الاستيقاظ المبكر';

  @override
  String get event_prematureAwakening_narrative =>
      'فشل متسلسل في حجرة كبسولات التجميد يوقظ 200 مستوطن قبل عقود من الموعد. مرتبكون وخائفون ويستهلكون موارد مخصصة لمرحلة الهبوط. من بينهم أطفال لم يعرفوا شيئًا سوى السفينة.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'ادمجهم في الطاقم — أيادٍ أكثر وأمل أكثر';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'يصبح المستوطنون المستيقظون أعضاء طاقم منتجين. عشرون مستوطنًا لم ينجوا من الإذابة المفاجئة، لكن الباقين يتحدون. الموارد تُمطّ لكن المعنويات ترتفع.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'حاول إعادة تجميدهم — محفوف بالمخاطر لكنه ضروري';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'عملية إعادة التجميد غير مثالية. نجا معظمهم لكن بعضهم فُقد. الناجون يحملون ندوبًا نفسية.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'امنحهم قسمهم الخاص من السفينة';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'عشرة مستوطنين فُقدوا بسبب مضاعفات الإذابة الطارئة، لكن الباقين يشكلون مستعمرة مصغرة داخل السفينة. يطورون ثقافتهم وحوكمتهم الخاصة، بروفة للاستيطان الكوكبي.';

  @override
  String get event_stowawaysAdvanced_title => 'الركاب المخفيون';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'في أعماق حجرة الشحن، خلف حواجز مزيفة، يكتشف الأمن مجتمعًا مخفيًا بأكمله — 80 شخصًا صعدوا بشكل غير شرعي قبل الإطلاق. يعيشون في جدران السفينة طوال الرحلة، يزرعون حدائقهم ويأخذون طاقتهم.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'رحّب بهم — 80 مستوطنًا إضافيًا هدية';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'يجلب المجتمع المخفي مهارات في الهندسة المرتجلة والحيلة تُذهل الطاقم. حدائقهم تُنقل للقبة الحيوية الرئيسية.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'احتجزهم وأعد توزيع مواردهم المسروقة';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'تعزز المؤن المُستعادة عدة أنظمة، لكن احتجاز عائلات — بما فيها أطفال — يُطارد الطاقم.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'تفاوض — ينضمون كمتساوين إن شاركوا تقنيتهم';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'خلايا الطاقة المرتجلة وحيل الزراعة المائية تحسّن كفاءة السفينة. يبدأ اندماج متوتر لكنه منتج.';

  @override
  String get event_alienReservation_title => 'المحمية الفضائية';

  @override
  String get event_alienReservation_narrative =>
      'نعثر على محمية طبيعية فضائية — منطقة فضاء بُذرت عمدًا بكواكب صالحة للسكن ومحمية بحراس آليين. يمسحوننا ويُسقطون رسالة: \"يمكنكم استيطان عالم واحد. اختاروا بحكمة. تدخلوا في الآخرين وسنُزيلكم.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'اقبل بامتنان — عالم واحد كل ما نحتاج';

  @override
  String get event_alienReservation_choice0_outcome =>
      'يرشدنا الحراس لعالم مُعدّ. تكشف المسوحات أنه مناسب بشكل استثنائي للحياة البشرية.';

  @override
  String get event_alienReservation_choice1_text =>
      'تفاوض على شروط أفضل — البشرية تحتاج مساحة للنمو';

  @override
  String get event_alienReservation_choice1_outcome =>
      'يدرس الحراس التماسنا. يُحدّثون ماسحاتنا ببيانات عن عشرات المنظومات خارج المحمية.';

  @override
  String get event_alienReservation_choice2_text => 'ارفض وغادر — لن نُحبس';

  @override
  String get event_alienReservation_choice2_outcome =>
      'يتجادل الطاقم لأيام. الحرية فوق الأمان. يسمح الحراس بمغادرتنا مع هدية: خريطة للمخاطر القريبة.';

  @override
  String get event_cosmicHorror_title => 'الشيء بين النجوم';

  @override
  String get event_cosmicHorror_narrative =>
      'شيء شاسع ومظلم يحجب النجوم أمامنا — ليس سديمًا ولا ثقبًا أسود. لا كتلة ولا بصمة طاقة ولا حضور كهرومغناطيسي. لكنه هناك، وهو واعٍ بنا. أفراد الطاقم قرب سطح المراقبة الأمامي يبلّغون عن رعب ساحق. اثنان خُدِّرا.';

  @override
  String get event_cosmicHorror_choice0_text => 'رجوع كامل — ابتعد الآن';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'تُجاهد السفينة ضد زخمها. نفلت، لكن الرعب يبقى. بعض المستوطنين لم يتعافوا نفسيًا أبدًا.';

  @override
  String get event_cosmicHorror_choice1_text => 'أغلق سطح المراقبة واخترق';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'ثلاثة أيام من التحليق الأعمى عبر الظلام. حين تعود النجوم، يبكي الطاقم ارتياحًا. الهيكل منقوش بأنماط لا يستطيع أحد تفسيرها.';

  @override
  String get event_cosmicHorror_choice2_text => 'حاول التواصل';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'يستجيب الكيان — ليس بالكلمات بل بمعرفة مطبوعة مباشرة في عقول الطاقم. خرائط نجمية وفيزياء وحقائق عن الكون. نصف الطاقم مُستنار. النصف الآخر محطم.';

  @override
  String get event_cosmicHorror_choice3_text => 'قدّم مسبارًا كقربان';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'ينجرف المسبار إلى الظلام ويختفي. ينكمش الكيان قليلًا كأنه راضٍ. يصفو طريقنا.';

  @override
  String get event_meteorGlancingHit_title => 'ضربة نيزك منحرفة';

  @override
  String get event_meteorGlancingHit_narrative =>
      'نيزك بحجم صخرة يصدم الجانب الأيسر من الهيكل بزاوية ضحلة. ينزع الأثر ثلاثة أمتار من الألواح الخارجية ويرسل موجات صدمة عبر الهيكل بأكمله. إنذارات التحكم بالأضرار تصرخ في كل طابق.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'حوّل كل روبوتات الإصلاح للاختراق فورًا';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'تغلق الروبوتات أسوأ الضرر، لكن السحب المحموم على احتياطيات التقنية يترك الأنظمة الثانوية بلا خدمة.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'خفّف الدفع ودع الطاقم يرقّع يدويًا';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'تقدم أبطأ، لكن الطاقم يقوم بعمل جيد. الملاحة تعاني من نافذة الدفع المخفض أثناء الانجراف.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'ضحِّ بألواح هيكل مسبار كمادة ترقيع';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'يُجرَّد المسبار للقطع. الرقعة تصمد وسلامة الهيكل محفوظة بثمن مسبار أقل.';

  @override
  String get event_meteorDirectImpact_title => 'اصطدام نيزك مباشر';

  @override
  String get event_meteorDirectImpact_narrative =>
      'نيزك حديدي بنصف طن يخترق حجرة الشحن الأمامية بسرعة نسبية تتجاوز 40 كم/ث. اثنان من أفراد الطاقم في الممر المجاور مفقودان. الحجرة مفتوحة للفراغ.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'أغلق حجرة الشحن وابحث عن الناجين لاحقًا';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'أُغلقت الحجرة في تسعين ثانية. كلا فردي الطاقم كانا قد أخليا بالفعل — بالكاد. الهيكل يحمل ندوبًا دائمة.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'أطلق عملية إنقاذ كاملة قبل الإغلاق';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'أُنقذ ناجٍ واحد. التعرض المطوّل يزيد الضرر الهيكلي ويستنزف احتياطيات التقنية.';

  @override
  String get event_meteorDebrisField_title => 'حقل حطام — وابل بقايا';

  @override
  String get event_meteorDebrisField_narrative =>
      'فشلت المستشعرات بعيدة المدى في رصد حقل شظايا نيزكية متفرق حتى كنا بداخله بالفعل. مئات الصخور بحجم القبضة تضرب الهيكل على فترات عشوائية. كل ضربة يانصيب.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'ارفع الدروع واخترق بأقصى سرعة';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'تمتص الدروع معظم الضربات، لكن الحجم الهائل للاصطدامات يطغى عليها. الهيكل والدروع يتدهوران.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'أوقف المحركات وانجرف — قلّل من ظلنا';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'ست ساعات متوترة من الصمت. تنحرف الملاحة بسبب الانجراف بلا طاقة، لكن الهيكل يخرج باصطدامات أقل بكثير.';

  @override
  String get event_meteorDebrisField_choice2_text => 'أطلق مسبارًا كدرع أمامي';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'يتلقى المسبار عبء القصف. تتسلل السفينة في ظله بخدوش طفيفة.';

  @override
  String get event_meteorShowerDense_title => 'وابل نيزكي كثيف غير متوقع';

  @override
  String get event_meteorShowerDense_narrative =>
      'تفكك مذنب شارد في مكان ما أمامنا، وقد طرنا مباشرة في قلب ذيل حطامه. مصفوفات الماسحات تُقصف بالشظايا وغلاف مستشعرات نظام الهبوط تلقى ضربة مباشرة بالفعل.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'احمِ نظام الهبوط — أدِر السفينة';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'يحمي الدوران نظام الهبوط لكنه يعرّض مصفوفة الماسح الجوي لعبء القصف.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'احمِ مصفوفات الماسحات — لا يمكن استبدالها';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'نجت بنوك الماسحات سليمة في الغالب. نظام الهبوط يتلقى ضررًا معتدلًا من الشظايا علينا التعايش معه.';

  @override
  String get event_solarEmpBurst_title => 'نبضة كهرومغناطيسية — أصل نجمي';

  @override
  String get event_solarEmpBurst_narrative =>
      'بقايا نجمي مدمج مررنا على بعد يوم ضوئي منه أطلق نبضة كهرومغناطيسية مركّزة. كل دائرة غير محمية على السفينة في خطر. لدينا ثوانٍ لنقرر ماذا نحمي.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'وجّه كل حماية الطفرات للملاحة ودعم الحياة';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'نجت الملاحة ودعم الحياة سليمين. مجموعة الماسحات وحجرة التقنية امتصتا النبضة بلا حماية — كلتاهما تلقتا ضررًا بالغًا.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'احمِ مصفوفات الماسحات وحجرة التقنية';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'أُنقذت أنظمة العلوم والهندسة. الملاحة تعطلت لساعات مع تعافي دوائرها ببطء.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'أوقف كل شيء وأعد التشغيل بعد النبضة';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'إعادة تشغيل باردة مؤلمة — اثنتا عشرة ساعة من إعادات التشغيل اليدوية. لكن لا نظام احترق نهائيًا.';

  @override
  String get event_solarRadiationWave_title =>
      'موجة إشعاعية — تعرض من الدرجة 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'انفجار إشعاع شمسي بشدة غير متوقعة يجتاح الطوابق الوسطى للسفينة. حجرات كبسولات التجميد في مسار التعرض. المستوطنون في السبات بلا حماية طبيعية ضد الإشعاع الصلب بهذا المستوى.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'أغرق حجرات التجميد بسائل التبريد كدرع إشعاعي';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'يمتص سائل التبريد معظم الإشعاع. نجت كبسولات التجميد لكن نظام التبريد نفسه تدهور جزئيًا. خمسة عشر في أشد الكبسولات تضررًا لم ينجوا.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'فرّغ الغلاف الجوي للطوابق الخارجية لخلق حاجز فراغي';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'تُخفّض طبقة الفراغ الإشعاع النافذ بشكل كبير. عشرون مستوطنًا في الكبسولات الأقرب للأقسام المُفرَّغة تعرضوا لجرعة قاتلة. إجهاد الهيكل من فرق الضغط لا مفر منه.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'حوّل الطاقة لحوارف مغناطيسية';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'تقطع الحوارف التعرض للإشعاع بثلثين. ثمانية مستوطنين تلقوا جرعات قاتلة عبر فجوات في تغطية الحارف. سحب الطاقة يقصف حجرة التقنية ويترك الملاحة على طاقة دنيا.';

  @override
  String get event_coronalMassEjection_title => 'قذفة إكليلية — بكامل القوة';

  @override
  String get event_coronalMassEjection_narrative =>
      'قذفة إكليلية بحجم غير مسبوق تلاحقنا من الخلف. ستبتلع سحابة البلازما السفينة خلال ساعة. دروعنا لم تُصمم لهذا المستوى من الحدث. لا خيار نظيف.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'اهرب — ادفع المحركات لـ120%';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'نكسب مسافة كافية لتقليل التعرض. المحركات تسخن فوق الحد وحاسوب الملاحة يُطلق تحذيرات إجهاد هيكلي على كل المحاور.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'احتمِ خلف ظل مغناطيسي لكويكب قريب';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'يحرف مجال الكويكب معظم القذفة. الملاحة بهذا القرب من جسم غير مرسوم تخدش الهيكل وتُجهد مستشعرات نظام الهبوط.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'انفجار أشعة كونية — تداخل الماسحات';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'انفجار أشعة كونية فائقة الطاقة أشبع كل إلكترونيات الماسحات بالتشويش. المصفوفات المعدنية والجاذبية تُنتج هراءً. إعادة المعايرة ستستغرق وقتًا قد لا نملكه.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'دورة إعادة معايرة كاملة — أوقف السفينة مؤقتًا';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'تعود كل الماسحات نظيفة بعد أربع ساعات من إعادة المعايرة الدقيقة. الملاحة تعاني من الوعي الظرفي المنخفض خلال نافذة الإظلام.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'أصلح الأكثر أهمية فقط — اترك الباقي مشوشًا';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'أُعيد الماسح الجاذبي وعلامات الحياة. مصفوفتا المعادن والحرارة تبقيان متدهورتين بشكل دائم.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'ضحِّ بعتاد قياس مسبار كقطع بديلة';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'تفكيك حزمة مستشعرات المسبار يمنحنا المكونات لاستعادة مجموعة الماسحات بلا إعادة معايرة طويلة.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'انفجار أشعة كونية — تعرض المستوطنين';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'وابل أشعة كونية ثانوي اخترق درع كبسولات التجميد في الحجرة 6. المستوطنون في السبات يتلقون ضررًا تراكميًا في الحمض النووي من الإشعاع المؤين. بدون تدخل، ستفشل آليات إصلاح الخلايا في الكبسولات المتأثرة.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'إذابة طارئة — أعد المتأثرين للوعي';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'أُيقظ مائتا مستوطن مبكرًا. أربعون بأشد ضرر DNA لم يستجيبوا للعلاج. يفعل الفريق الطبي ما بوسعه للبقية.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'حوّل ألواح درع الهيكل لحماية الحجرة 6 — بتكلفة هيكلية';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'أُنقذت المستعمرة، لكن نزع الدروع من قسم يترك السفينة هشة هيكليًا في تلك المنطقة.';

  @override
  String get event_coolantLeak_title => 'تمزق خط التبريد';

  @override
  String get event_coolantLeak_narrative =>
      'تمزق خط تبريد رئيسي خلف جدار المفاعل. سائل تبريد مُحتدم يتطاير عبر وصلة تضم قنوات حجرة التقنية الحرجة. حرارة المفاعل ترتفع.';

  @override
  String get event_coolantLeak_choice0_text =>
      'أوقف المفاعل ودعه يبرد — تقبّل الإظلام الكامل';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'إيقاف متحكم يمنع الكارثة. اثنتا عشرة ساعة من دعم الحياة على البطارية مرعبة، وإعادة تشغيل الأنظمة غير مثالية.';

  @override
  String get event_coolantLeak_choice1_text =>
      'أرسل فريق تحكم بالأضرار — خاطر بتعرض الطاقم';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'يغلق الفريق التمزق في أربعين دقيقة. أحد أفراد الطاقم قُتل بالتعرض لسائل تبريد محتدم. الإصلاح متين.';

  @override
  String get event_coolantLeak_choice2_text =>
      'حوّل سائل تبريد حجرة التجميد كإمداد طارئ';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'استقر المفاعل. حجرة التجميد تعمل أدفأ من العتبات الآمنة لست ساعات — ضرر خلوي طفيف لكنه حقيقي يتراكم.';

  @override
  String get event_powerGridFailure_title => 'فشل شبكة الطاقة الرئيسية';

  @override
  String get event_powerGridFailure_narrative =>
      'عطل متسلسل أطاح بشبكة الطاقة الرئيسية. الأنظمة الاحتياطية تحمل دعم الحياة وتدفئة كبسولات التجميد، لكن الملاحة والماسحات وحجرة البنّاء كلها مظلمة. كل دقيقة خارج الخدمة تكلفنا دقة المسار.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'أعد الملاحة والماسحات أولًا — تقبّل توقف البنّاء الطويل';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'تعود الملاحة والماسحات في ساعتين. حجرة البنّاء تفوّت دورة صيانة حرجة.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'أعد البنّاؤون أولًا — استخدمهم لتسريع الإصلاح';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'يعيد البنّاؤون توجيه الطاقة بكفاءة. استعادة كاملة للشبكة أسرع، لكن الملاحة تنحرف بشدة خلال الإظلام الممتد.';

  @override
  String get event_lifeSupportGlitch_title => 'خلل متسلسل في دعم الحياة';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'دخل ذكاء إدارة دعم الحياة في حلقة خطأ، يدوّر فترات تنقية ثاني أكسيد الكربون بشكل غير منتظم. مستويات CO₂ عبر الطوابق المأهولة تتقلب. الطاقم يعاني صداعًا؛ بعضهم سقط فعلًا.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'فرض إعادة ضبط صلبة لذكاء دعم الحياة';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'تمسح إعادة الضبط الحلقة لكنها تترك التشغيل اليدوي لعشر ساعات. ثلاثة من أفراد الطاقم استسلموا لتراكم CO₂ قبل عودة المستويات لطبيعتها.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'أصلح الحلقة البرمجية — أبطأ لكن أأمن';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'يعزل فريق البرمجيات ويرقّع العطل عبر ست ساعات متوترة. تعود مستويات CO₂ لطبيعتها ببطء. لا حاجة لإعادة ضبط صلبة.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'أخلِ الطوابق المتأثرة وشغّل دعم حياة بحده الأدنى';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'فُقد مستوطنان في فوضى الإخلاء. تعود الأنظمة لطبيعتها بعد إعادة تشغيل باردة للذكاء.';

  @override
  String get event_waterRecyclerBreakdown_title => 'انهيار مُعيد تدوير المياه';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'توقفت وحدة استعادة المياه الرئيسية. الوحدة الاحتياطية تعمل بالفعل بأقصى طاقة. بدون تدخل، سيكون الطاقم على حصص طوارئ خلال ثمانٍ وأربعين ساعة، ومغذيات سائل تبريد كبسولات التجميد ستتعرض للخطر في اثنتين وسبعين.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'اسحب كل يد تقنية متاحة لإعادة بناء المُستعيد';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'أُعيد بناء الوحدة في ثلاثين ساعة. أربعة من أفراد الطاقم، ضعفاء بالفعل، لم ينجوا من الجفاف.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'حوّل احتياطيات سائل تبريد التجميد كمياه شرب طارئة';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'يُستدام الطاقم، لكن ثمانية مستوطنين في كبسولات تسخن يعانون ضررًا خلويًا لا رجعة فيه. هامش سائل تبريد التجميد يتقلص بخطورة.';

  @override
  String get event_navComputerReboot_title =>
      'إعادة تشغيل طارئة لحاسوب الملاحة';

  @override
  String get event_navComputerReboot_narrative =>
      'توقف حاسوب الملاحة أثناء تصحيح مسار، تاركًا السفينة في دوران بطيء غير متحكم. كل ثانية من الدوران غير المُصحّح تضاعف انحرافنا عن المسار المخطط. إعادة التشغيل الكاملة هي الحل الوحيد.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'أعد التشغيل فورًا — تقبّل فترة الإظلام الكاملة';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'أربع ساعات من التحليق الأعمى أثناء إعادة تحميل النظام. أُوقف الدوران لكن خطأ المسار كبير.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'استخدم تحكمًا يدويًا بالدافعات لإيقاف الدوران أولًا';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'قيادة ماهرة توقف الدوران قبل إعادة التشغيل. تعود الملاحة بخطأ مسار أصغر، لكن الحرق اليدوي يُجهد الهيكل.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'غذِّ قياسات المسبار في وحدة الملاحة الاحتياطية';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'تمنح بيانات القصور الذاتي للمسبار الوحدة الاحتياطية مرجعًا كافيًا للحفاظ على المسار. تُعاد الملاحة الرئيسية بنظافة.';

  @override
  String get event_crewAirlocked_title => 'فرد طاقم عند غرفة الإقفال';

  @override
  String get event_crewAirlocked_narrative =>
      'مستوطنة — أُيقظت مبكرًا للمراقبة الطبية — تحصنت داخل غرفة إقفال خارجية وتدوّر الباب الخارجي. لا تستجيب للتواصل. العبء النفسي للفضاء السحيق كسر شيئًا فيها.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'تجاوز غرفة الإقفال عن بُعد — فرض الإغلاق';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'أُقفل الباب قبل أن تكمل الدورة. خُدّرت وأُعيدت للطبي. الطاقم مهتز لكنه متحد.';

  @override
  String get event_crewAirlocked_choice1_text => 'أرسل مستشارًا للحديث معها';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'بعد ثلاث ساعات يائسة، يخرجها المستشار حية. الحادثة تُشعل أزمة صحة نفسية أوسع في الطوابق المأهولة.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'أغلق الممر ودع الحادثة تُحل ذاتيًا';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'تدور غرفة الإقفال. تُسجَّل الخسارة. أفراد الطاقم المتبقون يحملون ثقلها لأشهر.';

  @override
  String get event_crewCryopodSabotage_title => 'تخريب حجرة التجميد';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'تكشف كاميرات الأمن فردًا من الطاقم — أُيقظ قبل ثلاثة أشهر لدورة روتينية — يعطّل عناصر تسخين كبسولات التجميد في الحجرة 4 بشكل منهجي. حين يُواجَه، يصرخ أن المستوطنين طفيليات تستهلك موارد تخص الطاقم الحي.';

  @override
  String get event_crewCryopodSabotage_choice0_text => 'اعتقله واعزله فورًا';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'أُمسك به. أربعون كبسولة تعرضت للخطر قبل الإنذار. فرق الإصلاح الطارئة أنقذت معظمها، لكن ليس كلها.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'تفاوض — اسمع مظالمه قبل التصرف';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'يكشف التفاوض أزمة معنويات أعمق. يتراجع، لكن ستين كبسولة عُبث بها بحلول ذلك الوقت.';

  @override
  String get event_crewSupplyHoarder_title => 'اكتشاف تخزين مؤن';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'يكشف تدقيق المخزون أن مجموعة صغيرة من أفراد الطاقم كانت تحوّل بشكل منهجي مستلزمات طبية وحصص غذائية ومكونات تقنية احتياطية إلى مخبأ مخفي. مبررهم: لا يعتقدون أن المهمة ستنجح ويستعدون لطريق العودة.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'صادر كل شيء ووبّخ المجموعة علنًا';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'أُستعيد المخبأ شبه كامل. الثقة داخل الطاقم تتصدع بشدة. الإنتاجية تعاني لأسابيع.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'أعد تعيينهم بهدوء — لا تصنع مشهدًا';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'انتزع فتيل الموقف بلا ذعر. بعض المؤن لا يمكن استعادتها، واليأس الكامن لم يُعالَج أبدًا بشكل صحيح.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'اعرضها على الطاقم — محكمة ديمقراطية';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'تعيد عملية المحكمة إحساسًا بالعدالة المجتمعية. ضربة المعنويات من الفضيحة تُعوَّض بصنع القرار الجماعي.';

  @override
  String get event_crewMutinyAttempt_title => 'تمرد — غرفة المحركات مُحتلة';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'فصيل من تسعة عشر فردًا من الطاقم أغلق غرفة المحركات ويطالب بتصويت لإعادة السفينة. عطّلوا لوحات التجاوز الطارئة. بقية الطاقم يراقب على الشاشات، ينتظر القيادة لتتصرف.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'تفاوض — امنحهم تصويتًا حقيقيًا على المهمة';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'أُجري التصويت. تستمر المهمة بأغلبية ضئيلة. يتراجع الفصيل، لكن الجرح الثقافي عميق.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'اقطع الطاقة عن غرفة المحركات واستعدها بالقوة';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'يستعيد الأمن الغرفة في أربع ساعات. ثلاث إصابات. القادة محتجزون. الملاحة كانت يدوية طوال الوقت وانحرفت بشكل كبير.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'أغرق غرفة المحركات بغاز التخدير من نظام التهوية';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'ينتشر الغاز. تستيقظ المجموعة في الحبس بلا إصابات. الطاقم منزعج من سرعة تسليح القيادة لدعم الحياة.';

  @override
  String get event_hullFatigueStress_title =>
      'إجهاد الهيكل — شقوق إجهاد مرصودة';

  @override
  String get event_hullFatigueStress_narrative =>
      'تكشف مسوحات السلامة الهيكلية شبكة من الشقوق الدقيقة تنتشر عبر عمود السفينة — ضرر تراكمي من سنوات الدوران الحراري والاصطدامات الدقيقة. الشقوق ليست حرجة بعد، لكنها تتمدد.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'فرق لحام طارئة — اعمل بنوبات حتى يُغلق';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'أسابيع من العمل المنهك. احتُويت الشقوق، لكن حجرة التقنية مستنزفة والمعنويات تهبط من الكدّ المستمر.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'خفّض الدفع لتقليل الإجهاد الهيكلي — تقبّل عبورًا أبطأ';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'الدفع المنخفض يوقف تمدد الشقوق لكنه لا يعالج الضرر الحالي. دقة الملاحة تعاني من ملف الدفع المتغير.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'استخدم روبوتات البنّاء لوضع شرائط تعزيز مركّبة';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'يقوم البنّاؤون بعمل ممتاز. عُزّز العمود فوق مواصفاته الأصلية. حجرة البنّاء مستنزفة لكنها فعّالة.';

  @override
  String get event_hullPressureAnomaly_title => 'شذوذ ضغط داخلي';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'ثلاث حجرات وسطية تسجّل فوارق ضغط داخلي شاذة متسقة مع تشوه هيكلي دقيق. إذا كانت الجدران تنحني للداخل، قد يحدث انفجار كارثي بلا تحذير إضافي.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'أخلِ وأغلق الحجرات فورًا';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'أُغلقت الحجرات. فحص تفصيلي يؤكد تشوه الجدران. المساحة المفقودة تعطّل العمليات والثقافة تعاني من الضيق.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'فرّغ الحجرات للفراغ — أوقف فرق الضغط';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'يوقف التفريغ التشوه. الضرر الهيكلي محدود، لكن ثلاثة أقسام من السفينة غير صالحة للسكن نهائيًا.';

  @override
  String get event_commsArrayFailure_title => 'فشل مصفوفة الاتصالات';

  @override
  String get event_commsArrayFailure_narrative =>
      'صمتت مصفوفة الاتصالات بعيدة المدى الرئيسية. آخر رسالة من الأرض وردت قبل أحد عشر شهرًا، والآن حتى إشارة الحامل اختفت. التشخيصات الداخلية تشير أن آلية محاذاة الطبق تجمدت في البرد.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'أرسل فريق مشي فضائي لإعادة محاذاة الطبق يدويًا';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'يستغرق المشي الفضائي تسع ساعات في الفضاء المفتوح. أُعيد الطبق. أحد أفراد الطاقم يعاني من تسريب ضغط البدلة أثناء العودة — لحظة قريبة تهز الجميع.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'حوّل عبر مصفوفة الماسحات العلمية كمرسل احتياطي';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'المصفوفة العلمية غير محسّنة للاتصال. الإشارة ضعيفة وغير موثوقة، وإعادة التوظيف تُدهور قدرة الماسحات.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'تقبّل الصمت — ركّز الموارد على المهمة';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'يعالج الطاقم فقدان التواصل مع الأرض بطرق مختلفة. للبعض تحرير؛ وللآخرين دمار.';

  @override
  String get event_fuelLineRupture_title => 'تمزق خط الوقود';

  @override
  String get event_fuelLineRupture_narrative =>
      'كسر بلوري في قناة الوقود 7-ب يسرّب بلازما الدفع في ممر الصيانة. التسريب صغير لكنه يتسارع. بدون تحكم، سيضر بكفاءة محرك الملاحة والسلامة الهيكلية للقسم الخلفي.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'اعزل القناة وشغّل بسعة وقود مخفضة';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'أُغلقت القناة بنظافة. نفقد 15% من كفاءة الدفع نهائيًا، مما يُدهور دقة الملاحة لبقية الرحلة.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'حاول إصلاحًا ساخنًا — رقّع القناة تحت ضغط حي';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'ينجح فريق الإصلاح بالكاد. القناة تصمد، وإن لم تكن مثالية. ألواح الهيكل الخلفي تُظهر علامات إجهاد حراري.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'صرّف القناة باستخدام خزانات دافعات المسبار كمخزن فائض';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'يُفرَّغ المسبار ويُستخدم كخزان وقود مؤقت. تُصرف القناة بأمان وتُصلح بلا ضغط.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'تحذير تسلسل حراري في كبسولات التجميد';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'ترتفع حرارة كبسولات الحجرة 2 بنمط متسق مع تسلسل حراري جامح. إذا وصل التسلسل للحجرة 3، سيُطلق إذابة طارئة تلقائية لأكثر من ثلاثمائة مستوطن. السفينة لا تستطيع استيعاب هذا العدد من الركاب الواعين في آن واحد.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'ضخ احتياطيات التبريد لإيقاف التسلسل';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'يوقف سائل التبريد التسلسل عند حدود الحجرة 2. ثمانون مستوطنًا في الحجرة 2 يعانون ضرر سبات من ارتفاع الحرارة.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'إذابة متحكمة للحجرة 2 قبل أن يفرض التسلسل واحدة غير متحكمة';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'الإذابة المتحكمة منظمة لكنها تضع مئة وأربعين مستوطنًا في سفينة غير مستعدة. دعم الحياة يُجهَد والثقافة تتدهور تحت الازدحام.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'استخدم روبوتات البنّاء لعزل الحجرات فيزيائيًا بحواجز طوارئ';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'يقيم البنّاؤون حواجز حرارية في الوقت المناسب. أُوقف التسلسل فورًا. حجرة البنّاء مستنزفة بشدة من العملية الطارئة.';

  @override
  String get event_cryopodSealDegradation_title =>
      'تدهور أختام كبسولات التجميد — نظامي';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'تكشف الفحوصات الروتينية أن دفعة تصنيع من أختام كبسولات التجميد تتدهور بثلاثة أضعاف المعدل المتوقع. الكبسولات المتأثرة — أكثر من أربعمائة — ستبدأ بفقدان سلامة الغلاف الجوي خلال ستة أشهر إن لم تُستبدل.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'صنّع أختامًا بديلة من مخزون المواد الخام';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'ينتج البنّاؤون أختامًا بديلة على مدى ثمانية أسابيع. احتياطيات المواد الخام تنخفض بحدة.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'دمج المستوطنين — انقلهم لكبسولات بأختام سليمة';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'ينجح الدمج لكنه يترك بعض الكبسولات مكتظة. تنخفض كفاءة التجميد وتتضرر صحة المستوطنين طويلة المدى.';

  @override
  String get event_oxygenScrubberFailure_title => 'فشل منقي الأكسجين — حرج';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'فشل بنك منقي الأكسجين الرئيسي بالكامل. تراكيز CO₂ في الطوابق المأهولة تتسلق نحو مستويات خطرة. المنقيات الاحتياطية تتحمل تقريبًا أربعين بالمائة من الحمل. كل دقيقة بلا تصرف تكلف أرواحًا.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'سبات طارئ — أعد الطاقم للسبات فورًا';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'يُسارع بالطاقم للسبات المؤقت. تستقر مستويات CO₂ مع أيض أقل نشاطًا. يُصلح المنقي بأنظمة آلية على مدى الأسبوع التالي.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'فكّك مكونات من مصفوفة الماسحات لإعادة بناء المنقي';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'أُعيد بناء المنقي في إحدى عشرة ساعة متوترة. نجا كل الطاقم رغم ظهور علامات نقص أكسجين خفيف على البعض. مجموعة الماسحات متدهورة نهائيًا.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'فرّغ الغلاف الجوي الغني بالـCO₂ واستبدله من خزانات الأكسجين الطارئة';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'يصفي التفريغ الغلاف الجوي فورًا. احتياطيات O₂ الطارئة استُنزفت بشكل كبير. إن حدث فشل آخر، لا هامش متبقٍ.';

  @override
  String get event_deadAlienArtifact_title => 'الرحّالة الصامت';

  @override
  String get event_deadAlienArtifact_narrative =>
      'تلتقط الماسحات بعيدة المدى سفينة تتيه — فضائية التصميم، مظلمة، بلا بصمات طاقة. يجد فريق صعود راكبًا وحيدًا: كائن زاحف مربوط بمقعد القيادة، ميت منذ زمن، مخالبه لا تزال تقبض على جهاز بلوري ينبض بضوء خافت. سجل السفينة سليم لكنه مشفر. أيًا كان ما قتل هذا الرحّالة، لم يكن عنفًا — التعبير المتجمد على وجهه إرهاق لا خوف. مات وهو يمد يده نحو شيء لم يجده قط.';

  @override
  String get event_deadAlienArtifact_choice0_text => 'خذ الجهاز البلوري وادرسه';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'يتواصل الجهاز مع أنظمتنا التقنية بطرق بالكاد يستوعبها المهندسون. يبدو أنه حاسوب ملاحة بتطور استثنائي. تغمر خرائط النجوم شاشاتنا — بما فيها بيانات عن كواكب لم نبلغها بعد.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'فك تشفير سجل السفينة — تعلّم ما عرفه';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'أيام من العمل تسفر عن ترجمة جزئية. كان الفضائي مساحًا يفهرس عوالم صالحة للسكن لحضارة انهارت قبل قرون. مدخلاته الأخيرة تصف كوكبًا واعدًا بشكل لافت — والإحداثيات في متناولنا. يستوعب الأرشيف الثقافي كل شيء: شعر فضائي وخرائط نجمية ورسالة أخيرة لعائلة لم تعد موجودة.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'انتشل السفينة بأكملها كقطع غيار';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'يجرّد فريق الصعود السفينة الفضائية بشكل منهجي. سبائك هيكلها متقدمة عقودًا عنا. خلايا طاقتها لا تزال تحمل شحنة. أُقيم للفضائي جنازة في الفضاء — أُطلق نحو أقرب نجم. سفينة الخروج أقوى بفضل اللقاء، وإن كانت مسكونة قليلًا.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'اتركها دون إزعاج — هذا قبر';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'يسجل القبطان الإحداثيات ويبث إشارة تأبين على كل الترددات. الطاقم حزين لكنه متحد. شيء ما في تكريم رحّالة آخر — حتى لو كان فضائيًا — يُذكّر الجميع لماذا هم هنا.';

  @override
  String get event_repairStation_title => 'محطة الإرسال';

  @override
  String get event_repairStation_narrative =>
      'ترصد المستشعرات هيكلًا ضخمًا يدور حول نجم قزم خامد — محطة إصلاح آلية لا تزال تعمل بعد ما لا بد أنه آلاف السنين. مشابك الإرساء تمتد مع اقترابنا وصوت اصطناعي يبث بمئة لغة، آخرها إنجليزية ركيكة رياضية: \"سفينة مرصودة. أنظمة متدهورة. بروتوكولات إصلاح متاحة. مطلوب تبادل.\" قائمة المحطة تعرض خدمات وأسعار بوحدات موارد عالمية. ستتاجر لكنها لن تعطي.';

  @override
  String get event_repairStation_choice0_text =>
      'بادل مسابير بإصلاح شامل للسفينة';

  @override
  String get event_repairStation_choice0_outcome =>
      'تغمر روبوتات إصلاح المحطة سفينة الخروج في باليه من اللحام الدقيق واستبدال الدوائر. اختراقات الهيكل مغلقة والملاحة مُعاد معايرتها والماسحات مُستعادة. حين تنسحب، تبدو السفينة جديدة. حجرة المسابير، مع ذلك، فارغة.';

  @override
  String get event_repairStation_choice1_text =>
      'أنفق الوقود لإصلاح الأنظمة الحرجة فقط';

  @override
  String get event_repairStation_choice1_outcome =>
      'تقبل المحطة قضبان الوقود كدفع وتركز على أشد الأنظمة ضررًا. العمل سريع وبلا عيب. مقياس الوقود ينخفض بوضوح، لكن السفينة ستعيش أطول.';

  @override
  String get event_repairStation_choice2_text =>
      'بادل قواعد بيانات تقنية بمسابير وخلايا طاقة';

  @override
  String get event_repairStation_choice2_outcome =>
      'ذكاء المحطة نهم للبيانات. ينسخ مكتبتنا التقنية بأكملها — أدلة هندسية وقواعد بيانات علمية ومخططات تصنيع — وفي المقابل يصنع مسابير جديدة وخلايا طاقة من مواد خام. أرشيف التقنية منقوص، لكن المؤن لا تُقدّر بثمن.';

  @override
  String get event_repairStation_choice3_text =>
      'قدّم الأرشيف الثقافي لإصلاح شامل';

  @override
  String get event_repairStation_choice3_outcome =>
      'تبث المحطة أعمال شكسبير وباخ وألف صوت بشري آخر في بنوك ذاكرتها. في المقابل، تُجري إصلاحًا شاملًا وتملأ حجرات المسابير بوحدات مصنوعة حديثًا. الأرشيف الثقافي مُجوَّف، لكن السفينة قد تبلغ وجهتها فعلًا الآن.';

  @override
  String get ending_scoreLabel_landing => 'الهبوط';

  @override
  String get ending_scoreLabel_construction => 'البناء';

  @override
  String get ending_scoreLabel_technology => 'التقنية';

  @override
  String get ending_scoreLabel_culture => 'الثقافة';

  @override
  String get ending_scoreLabel_atmosphere => 'الغلاف الجوي';

  @override
  String get ending_scoreLabel_gravity => 'الجاذبية';

  @override
  String get ending_scoreLabel_temperature => 'الحرارة';

  @override
  String get ending_scoreLabel_water => 'الماء';

  @override
  String get ending_scoreLabel_resources => 'الموارد';

  @override
  String get ending_scoreLabel_nativeRelations => 'علاقات السكان الأصليين';

  @override
  String get ending_scoreLabel_population => 'السكان';

  @override
  String get ending_tierGoldenAge => 'العصر الذهبي';

  @override
  String get ending_tierThrivingColony => 'مستعمرة مزدهرة';

  @override
  String get ending_tierSurvival => 'بقاء';

  @override
  String get ending_tierStruggling => 'كفاح';

  @override
  String get ending_tierDire => 'يأس';

  @override
  String get ending_tierExtinction => 'انقراض';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'الإزهار الأول لـ$planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'جذور عميقة في $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'موطئ قدم مكتسب بشق الأنفس في $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'تربة هشة في $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'مستعمرة الحطام في $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'آخر إرسال من $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'الهبوط على $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'رغم كل الصعاب، ترسّخ البث. استقبل $planetName البشرية لا كحطام بل كبذرة حية: أرض خصبة وأنظمة عاملة وقوة كافية للبناء فيما وراء مجرد البقاء. في غضون جيل، ازدهر الفن والعلم والثقافة. أطفال وُلدوا في $planetName نظروا لنجوم غريبة وسمّوها وطنًا. أصبحت الرحلة الأسطورة المؤسِّسة لحضارة جديدة مستعدة لبث مستقبلها للخارج.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'كان الهبوط عنيفًا، لكن البذرة صمدت. أثبت $planetName كرمه بما يكفي لتدفق الماء وتجذّر المحاصيل وتفكيك أنظمة السفينة الناجية في أول مستوطنة حقيقية. بنهاية العقد الأول، قامت بلدة مزدهرة حيث استقرت سفينة الخروج. لم تكتفِ البشرية بالنجاة من العبور. بل بدأت من جديد.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'لم يكن البقاء مضمونًا قط، وفي $planetName كان كل يوم يُكتسب. وفّرت السفينة المتضررة أدنى الضروريات فقط، لكن البذرة لم تمت في العبور. تكيّف المستوطنون بالعناد والإبداع، نحتوا مستقبلًا من عالم لا يقدّم شيئًا بسهولة. ستتذكر الأجيال اللاحقة مشقة سنوات التأسيس والعزيمة التي أبقت البث حيًا.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'تشبثت المستعمرة بالوجود كبذرة مبعثرة على تربة سيئة. كان $planetName لا يرحم، والموارد شحيحة، وأنظمة السفينة المتدهورة لا تقدم مساعدة تُذكر. أصبح التقنين أسلوب حياة. همس البعض أن سفينة الخروج كان يجب أن تواصل الطيران. ومع ذلك، صمدت المستوطنة: منقوصة ومقسّاة ورافضة للموت بصمت.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'كان الهبوط على $planetName كارثة. أنظمة السفينة الحرجة فشلت أثناء الهبوط، وما كان يجب أن يكون بذرًا أصبح تحطمًا. في غضون أشهر، تقلصت المستعمرة لحفنة من الناجين اليائسين يحتمون في حطام السفينة. هل سيصمدون عامًا آخر كان غير مؤكد. أُغلق السجل الأخير بسطر واحد: \"لا نزال هنا. حاليًا.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'انتهى البث في $planetName. واصلت منارة الاستغاثة النبض طويلًا بعد أن سحب آخر مستوطن نفسه الأخير، لكن البذرة لم تتجذر قط. سجّل الصندوق الأسود للسفينة كل شيء: الأنظمة المنهارة والأيام الأخيرة اليائسة والصمت الذي تلاها. إن عثرت سفينة أخرى على هذا العالم يومًا، ستعرف أن البشرية حاولت بث الحياة بين النجوم وفشلت هنا.';
  }

  @override
  String get ending_epilogueDefault =>
      'انتهت الرحلة. ما يأتي بعد ذلك متروك للناجين.';

  @override
  String get ending_governmentDemocracy => 'ديمقراطية';

  @override
  String get ending_governmentTechnocracy => 'تكنوقراطية';

  @override
  String get ending_governmentRepublic => 'جمهورية';

  @override
  String get ending_governmentAutocracy => 'حكم استبدادي';

  @override
  String get ending_governmentTribalCouncil => 'مجلس قبلي';

  @override
  String get ending_cultureRenaissance => 'نهضة';

  @override
  String get ending_culturePreserved => 'محفوظة';

  @override
  String get ending_cultureFragmented => 'مجزأة';

  @override
  String get ending_cultureLost => 'مفقودة';

  @override
  String get ending_techAdvanced => 'متقدمة';

  @override
  String get ending_techIndustrial => 'صناعية';

  @override
  String get ending_techPreIndustrial => 'ما قبل صناعية';

  @override
  String get ending_techStoneAge => 'العصر الحجري';

  @override
  String get ending_constructionAdvanced => 'متقدم';

  @override
  String get ending_constructionFunctional => 'وظيفي';

  @override
  String get ending_constructionPrimitive => 'بدائي';

  @override
  String get ending_constructionNone => 'لا شيء';

  @override
  String get ending_nativesNone => 'لا يوجد';

  @override
  String get ending_nativesIntegrated => 'اندماج';

  @override
  String get ending_nativesCoexistence => 'تعايش';

  @override
  String get ending_nativesTension => 'توتر';

  @override
  String get ending_nativesConflict => 'صراع';

  @override
  String get ending_landscapeGravityHigh => 'جاذبية ثقيلة تضغط على كل شيء. ';

  @override
  String get ending_landscapeGravityLow =>
      'في الجاذبية المنخفضة، كل خطوة تقذف المستوطنين نحو السماء. ';

  @override
  String get ending_landscapeGravityNormal =>
      'الجاذبية تبدو شبيهة بالأرض تقريبًا. ';

  @override
  String get ending_landscapeWaterHigh =>
      'محيطات شاسعة تمتد لكل أفق، تغذيها أنهار لا تُحصى. ';

  @override
  String get ending_landscapeWaterMedium => 'بحيرات وأنهار توفر ماءً كافيًا. ';

  @override
  String get ending_landscapeWaterLow =>
      'الماء شحيح — برك صغيرة وخزانات جوفية تدعم الحياة. ';

  @override
  String get ending_landscapeWaterNone =>
      'المشهد الطبيعي جاف تمامًا، بلا مياه سطحية في الأفق. ';

  @override
  String get ending_landscapeAtmoThick =>
      'الغلاف الجوي السميك يحمل روائح غريبة على نسائم دافئة. ';

  @override
  String get ending_landscapeAtmoThin =>
      'الهواء الرقيق لكنه قابل للتنفس يتطلب تأقلمًا. ';

  @override
  String get ending_landscapeAtmoLow =>
      'الضغط الجوي منخفض بشكل خطر — المساكن المغلقة ضرورية. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      'قمر لامع مخطط بالمعادن يهيمن على سماء الليل، سطحه المعدني يعكس ضوء النجوم عبر المشهد. ';

  @override
  String get ending_landscapeMoonUnstable =>
      'قمر متصدع يلوح في الأعلى، سطحه المتفتت يجر حلقة خافتة من الحطام — تذكير دائم بالقصف الذي يهدد الأسفل. ';

  @override
  String get ending_landscapeMoonBarren =>
      'قمر شاحب قاحل يرتفع فوق الأفق، سطحه المحفر حارس صامت فوق المستعمرة. ';

  @override
  String get ending_landscapeHighRotation =>
      'الكوكب يدور بسرعة — الأيام تدوم ساعات فقط، ورياح كوريوليس تضرب كل شيء يقف طويلًا. ';

  @override
  String get ending_landscapeLowRotation =>
      'الكوكب يدور ببطء مؤلم. نصف الكرة المواجه للشمس يُشوى بينما الجانب المظلم يتجمد، ولا شريط الشفق بينهما وحده يوفر ملاذًا. ';

  @override
  String get ending_landscapeVolcanic =>
      'سلاسل بركانية تشق الأفق، منحدراتها مخططة بأنهار من الصخر المنصهر. الهواء يفوح بالكبريت والأرض ترتجف تحت الأقدام. ';

  @override
  String get ending_landscapeTectonic =>
      'القشرة مكسورة وقلقة — شقوق جديدة تنفتح بلا إنذار، تكشف عروق معدنية لامعة وسط سحب الغبار. ';

  @override
  String get ending_landscapeElectricalStorms =>
      'البرق يقوس عبر السماء في صفائح مستمرة، يحوّل الليل نهارًا ويملأ الهواء بطعم الأوزون. ';

  @override
  String get ending_landscapeToxicSpores =>
      'سحب من الأبواغ المتوهجة تنجرف مع كل نسمة، جميلة وقاتلة — سيحتاج المستوطنون مساكن مغلقة أو أقنعة ترشيح للبقاء خارجًا. ';

  @override
  String get ending_landscapeDeepOceans =>
      'الكوكب محيطات في معظمه — مياه شاسعة ومظلمة تمتد لكل أفق، ومجموعات جزر متناثرة فقط تكسر السطح. ';

  @override
  String get ending_landscapeGeothermalVents =>
      'فوهات حرارية أرضية تخترق القشرة، تنفث أعمدة بخار غني بالمعادن يُدفئ المشهد المحيط ويدعم واحات حياة. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      'مجال مغناطيسي قوي يلف الكوكب، يصد الإشعاع النجمي لكنه يعبث بالإلكترونيات غير المحمية. البوصلات تدور بلا فائدة. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      'بدون مجال مغناطيسي قوي، الرياح النجمية تعرّي الغلاف الجوي العلوي. شفق مذهل يتساقط عبر السماء في كل خطوط العرض. ';

  @override
  String get ending_landscapeMegafauna =>
      'مخلوقات ضخمة تتحرك عبر المشهد — بعضها بحجم المباني، خطواتها تُحس على بعد كيلومترات. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      'المحيط الحيوي يعمل كشبكة تكافل متشابكة: كل كائن يعتمد على جيرانه ويدعمهم في توازن أنيق وهش. ';

  @override
  String get ending_landscapeGravityWells =>
      'جيوب من الجاذبية المشوهة تنتشر على السطح — صخور تطفو في الهواء وأنهار تجري صعودًا قبل أن تتحطم عند حافة الشذوذ. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'شيء يتردد تحت السطح — هدير منخفض يُحس في العظام أكثر مما يُسمع، كأن الكوكب نفسه يتذكر شيئًا قديمًا وشاسعًا. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'معلم بارز: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'معالم بارزة: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'أسّس مستوطنو $planetName حكومة ديمقراطية، بممثلين منتخبين يوجّهون الحضارة الجديدة عبر سنواتها التكوينية.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'آلت السلطة في $planetName للمهندسين والعلماء الذين أبقوا المستعمرة حية، مشكّلين مجلسًا تكنوقراطيًا يحكم بالخبرة والبراغماتية.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'صِيغ ميثاق جمهوري في العام الأول على $planetName، يوازن أصوات المستوطنين بمجلس شيوخ من قادة معيّنين.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'مع انهيار المؤسسات الثقافية، توحّدت السلطة في $planetName تحت قائد قوي واحد فرض النظام بالضرورة وقوة الإرادة.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'نظّم الناجون القلائل في $planetName أنفسهم في عشائر صغيرة، يحكمها مجلس شيوخ يتخذ القرارات حول نيران مشتركة.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'نظّم مستوطنو $planetName أنفسهم بأفضل ما استطاعوا.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'سمحت أنظمة البناء المتقدمة لمستوطني $colonyName بإقامة هياكل دائمة خلال أسابيع من الهبوط، كاملة بمساكن مضغوطة وبنية تحتية.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'معدات البناء المتهالكة لكنها وظيفية أنتجت ملاجئ متينة وطرقًا أساسية عبر المستوطنة.';

  @override
  String get ending_constructionSentencePrimitive =>
      'مع أنظمة بناء بالكاد تعمل، بنى المستوطنون ملاجئ خام من هيكل السفينة المُنقَذ ومواد محلية.';

  @override
  String get ending_constructionSentenceNone =>
      'بدون معدات بناء عاملة، تكدّس المستوطنون في حطام السفينة نفسها، عاجزين عن بناء أي شيء جديد.';

  @override
  String get ending_constructionSentenceDefault =>
      'بنى المستوطنون ما استطاعوا بما لديهم.';

  @override
  String get ending_moonMetalRichLowRes =>
      'أصبح قمر غني بالمعادن يدور في الأعلى خلاص المستعمرة — بعثات تعدين لسطحه وفّرت المواد الخام التي لم يستطع الكوكب نفسه تقديمها.';

  @override
  String get ending_moonMetalRichHighRes =>
      'وفّر قمر الكوكب الغني بالمعادن إضافة مرحّبًا بها لموارد معدنية كافية بالفعل، مغذيًا تقدمًا تقنيًا سريعًا.';

  @override
  String get ending_moonUnstable =>
      'أمطر قمر غير مستقر في مدار متحلل حطامًا على المستعمرة، مدمرًا البنية التحتية وتقنية لا يمكن استبدالها في قصف نيزكي دوري.';

  @override
  String get ending_moonBarren =>
      'تعلّق قمر قاحل في السماء الغريبة، رفيق مقفر لم يقدّم للمستوطنين سوى مشهد مألوف يحدّقون فيه في الليالي الطويلة.';

  @override
  String get ending_culturePhrase_renaissance =>
      'لم تنجُ تقاليد الأرض الفنية والأدبية فحسب بل ازدهرت في نهضة';

  @override
  String get ending_culturePhrase_preserved =>
      'حفظ المستوطنون كثيرًا من التراث الثقافي للأرض، مُصونةً المكتبات والتقاليد';

  @override
  String get ending_culturePhrase_fragmented =>
      'لم تبقَ من ثقافة الأرض سوى شظايا — أغانٍ وقصص نصف منسية تُتناقل شفهيًا';

  @override
  String get ending_culturePhrase_lost =>
      'نُسيت ثقافة الأرض تقريبًا بالكامل، حلّت محلها براغماتية البقاء الوحشية';

  @override
  String get ending_culturePhrase_default =>
      'اتخذ الإرث الثقافي للأرض شكلًا جديدًا';

  @override
  String get ending_techPhrase_advanced =>
      'بينما سمحت التقنية المتقدمة من السفينة للمستعمرة ببناء حضارة حديثة بالكهرباء والطب وشبكات الاتصال.';

  @override
  String get ending_techPhrase_industrial =>
      'وبلغت المستعمرة مستوى تقنيًا صناعيًا، بالمسابك والطواحين والتصنيع الأساسي الذي يدعم سكانًا متنامين.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'رغم أن التقنية تراجعت لحالة ما قبل صناعية، بأدوات يدوية وعمالة حيوانية تشكل عماد الحياة اليومية.';

  @override
  String get ending_techPhrase_stoneAge =>
      'وبدون وسائل لإعادة البناء، انزلقت المستعمرة لوجود العصر الحجري، تصنع الأدوات من الصخر والعظم.';

  @override
  String get ending_techPhrase_default =>
      'واستقرت التقنية عند مستوى يستطيع المستوطنون استدامته.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase، $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'نجا تقريبًا كل المستوطنين البالغ عددهم $colonists من الرحلة، مانحين $colonyName أساسًا قويًا من الرأسمال البشري.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'من الألف الأصليين، وصل $colonists مستوطنًا إلى $colonyName — يكفي لاستدامة تعداد سكاني قابل للحياة.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'نجا $colonists مستوطنًا فقط للوصول إلى $colonyName، مجمع جيني صغير بشكل خطر لحضارة جديدة.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return '$colonists نفسًا فقط وصلت إلى $colonyName — بالكاد تكفي لتسميتها مستعمرة، أقرب لموقف أخير يائس.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'رحّب سكان $planetName الأصليون بالمستوطنين، وفي غضون جيل اندمج الشعبان في مجتمع مشترك، أغنى باندماج التقاليد.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'حافظ المستوطنون والسكان الأصليون لـ$planetName على تعايش حذر لكنه سلمي، يتبادلون المعرفة والموارد عبر الحدود الثقافية.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'بقيت العلاقات مع سكان $planetName الأصليين متوترة، يشوبها سوء تفاهم ونزاعات إقليمية تلقي بظلها على مستقبل المستعمرة.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'حدّد الصراع المفتوح مع حضارة $planetName الأصلية تاريخ المستعمرة المبكر، مستنزفًا الموارد والأرواح من كلا الجانبين في صراع لا يستطيع أيهما الانتصار فيه حقًا.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'وحيدة على $planetName وبلا عبء الصراع، رسمت المستعمرة مسارها نحو مستقبل مشرق بين النجوم.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'بلا منافسة محلية، انتشر المستوطنون عبر سطح $planetName، بانين بلدات وطرقًا تربط شبكة متنامية من المستوطنات.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'لم يقدّم العالم الفارغ حلفاء ولا أعداء، ونحت المستوطنون مكانهم في صمت مشهد $planetName الشاسع.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'لم تقدّم عزلة $planetName القاحلة للمستوطنين مساعدة ولا عزاء، فقط صمت عالم غريب اللامبالي.';
  }

  @override
  String get ending_outlookDire =>
      'في عالم خالٍ من حياة ذكية أخرى، لم يملك الناجون الأخيرون سوى بعضهم البعض والأمل الخافت بأن الغد قد يكون أرحم من اليوم.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'لم يرثِ أحد رحيل المستعمرة على $planetName. واصل الكوكب ببساطة دورانه البطيء، لا مباليًا بشرارة الحياة القصيرة التي ومضت وانطفأت على سطحه.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'قصة المستعمرة على $planetName كانت قد بدأت للتو.';
  }

  @override
  String get ui_moons => 'الأقمار';

  @override
  String get ui_rings => 'الحلقات';

  @override
  String get ui_landing_landOnMoon => 'الهبوط على القمر';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return 'القمر: $moonPercent% مقابل الكوكب: $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity => 'جاذبية أخف — هبوط أسهل';

  @override
  String ui_landing_ringSystem(String type) {
    return 'نظام حلقات $type';
  }

  @override
  String get moon_barren => 'قاحل';

  @override
  String get moon_metalRich => 'غني بالمعادن';

  @override
  String get moon_unstable => 'غير مستقر';

  @override
  String get moon_habitable => 'صالح للسكن';

  @override
  String get moon_ice => 'جليدي';

  @override
  String get ring_dust => 'غبار';

  @override
  String get ring_ice => 'جليد';

  @override
  String get ring_rocky => 'صخري';

  @override
  String get ring_metallic => 'معدني';

  @override
  String get ending_landscapeMoonSingle =>
      'قمر وحيد يتدلّى في السماء فوق المستعمرة.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count أقمار تدور في الأعالي، تلقي ظلالًا متراقصة عبر المشهد الممتد.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      'من بينها، عالم صالح للسكن يلوّح بالأمل — جوهرة خضراء تعرض حدودًا ثانية للاستيطان.';

  @override
  String get ending_landscapeMoonIce =>
      'قمر متجمّد يتلألأ بمخزونات جليدية شاسعة، خزّان ينتظر من يستثمره.';

  @override
  String get ending_landscapeIceHarvest =>
      'الجليد المحصود من القمر المتجمّد يعزّز إمدادات المستعمرة المائية، محوّلًا عالمًا قاحلًا إلى مكان قابل للحياة.';

  @override
  String get ending_landscapeMoonLanding =>
      'لم تُقَم المستعمرة على الكوكب ذاته، بل على أكثر أقماره واعدية — عالم أصغر بجاذبية ألطف ووعود أعظم.';

  @override
  String get ending_landscapeRingDust =>
      'حلقة غبار خافتة تتقوّس عبر السماء، تضفي جمالًا أثيريًا على كل شروق.';

  @override
  String get ending_landscapeRingIce =>
      'حلقة جليدية متألقة تلتقط ضوء النجوم، ترسم في السماء نارًا موشورية بهيّة.';

  @override
  String get ending_landscapeRingRocky =>
      'حلقة صخرية كثيفة تطوّق الكوكب، مصدر لمواد البناء تتساقط ببطء نحو السطح.';

  @override
  String get ending_landscapeRingMetallic =>
      'حلقة معدنية تتلألأ في الأعالي، غنية بالخام الذي يغذّي صناعة المستعمرة.';

  @override
  String get ending_moonHabitableNote =>
      'قمر صالح للسكن يمنح فرصة ثانية للاستيطان.';

  @override
  String get ending_moonIceHarvestNote =>
      'الجليد المحصود من القمر المتجمّد يعزّز إمدادات المستعمرة المائية.';

  @override
  String ending_moonCountSentence(int count) {
    return 'تدور المستعمرة تحت $count قمر(أقمار).';
  }

  @override
  String get event_aiSoliloquy_title => 'مناجاة الذكاء الاصطناعي';

  @override
  String get event_aiSoliloquy_narrative =>
      'بدأ سام — نظام الإدارة الذاتية للسفينة — في بث قصائد أرضية قديمة على جميع الترددات الداخلية في حلقة لا تنتهي. يستهلك البث دورات معالجة هائلة، غير أن الطاقم يجد في ذلك عزاءً غريباً في عمق الظلام الكوني.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'دع سام يكمل — الروح المعنوية أهم من المعالج';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'يتردد صدى القصائد في أرجاء السفينة. يتوقف أفراد الطاقم ليستمعوا بدموع في أعينهم. ترتفع الروح المعنوية، لكن الجناح التقني يئن تحت وطأة المعالجة المتواصلة.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'قيّد سام — حصر البث في المناطق المشتركة فقط';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'حل وسط. تبقى القصائد في المقصف والحدائق، فيخف الضغط على المعالج ويحظى الطاقم بقليل من الثقافة.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'أسكت سام — نحن بحاجة لكل دورة معالجة للملاحة';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'يثقل الصمت الأجواء. يمتثل سام فوراً، لكن السفينة تبدو أكثر برودة. الملاحة دقيقة، لكن المعنويات تراجعت.';

  @override
  String get event_archivistsChoice_title => 'خيار المؤرشف';

  @override
  String get event_archivistsChoice_narrative =>
      'يجتاح فساد ذاكرة واسع النطاق سجلات الأرشيف التاريخي. لا يمكننا إنقاذ سوى أحد القسمين الرئيسيين: سجلات \'العلوم والهندسة\' أو مكتبة \'الفن والفلسفة\'. سيضيع الآخر إلى الأبد.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'أنقذ سجلات العلوم — نحتاج أن نعرف كيف نبني';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'تنجو قرون من الإنجازات الهندسية. يتنفس الفريق التقني الصعداء، لكن الهوية الثقافية للسفينة تبدو منهوبة.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'أنقذ سجلات الفن — نحتاج أن نعرف لماذا نبني';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'تنجو أعظم الإنجازات الفنية للبشرية. ينتعش وجدان الطاقم، غير أن المهندسين يقلقون على الأدلة التقنية المفقودة.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'حاول إنقاذهما معاً — مع خطر خسارة كل شيء';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'محاولة يائسة. ننقذ شظايا من كليهما، لكن لا شيء مكتمل. الأرشيف الآن أشبه بأحجية ناقصة نصف قطعها.';

  @override
  String get event_digitalGhost_title => 'شبح في الآلة';

  @override
  String get event_digitalGhost_narrative =>
      'اكتشف مسح الصيانة بصمة رقمية في ذاكرة النسخ الاحتياطي — وعي أحد أفراد الطاقم الذي فارق الحياة إبان الإطلاق الأولي. يعرض خبرةً عمرية كاملة لمساعدتنا في الملاحة، لكنه يرتجف رعباً من الحذف.';

  @override
  String get event_digitalGhost_choice0_text => 'ادمجه في نواة الملاحة';

  @override
  String get event_digitalGhost_choice0_outcome =>
      'يندمج \'الشبح\' مع السفينة. تصبح الملاحة أكثر سلاسة وبديهية، لكن الطاقم لا يفارقه صوت رفيقهم الراحل.';

  @override
  String get event_digitalGhost_choice1_text =>
      'امنحه مقراً دائماً في الأرشيف الثقافي';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'يُحفظ بوصفه تاريخاً حياً. لا يُسهم في شؤون السفينة مباشرة، لكن قصصه عن الأرض ترفع من عزم الطاقم.';

  @override
  String get event_digitalGhost_choice2_text =>
      'امسح الذاكرة المؤقتة — هذا ليس هو حقاً';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'مُسحت الذاكرة المؤقتة. تعمل أنظمة السفينة بشكل أسرع، لكن مزاجاً كئيباً يخيم على الجسر.';

  @override
  String get event_cosmicMirror_title => 'المرآة الكونية';

  @override
  String get event_cosmicMirror_narrative =>
      'تعكس شذوذ جاذبية غريب ضوءاً قادماً من مستقبل السفينة ذاتها. على الشاشات نرى رؤيا للإكزودوس — ممزقاً ومكسوراً — يتيه قرب عالم جميل لا يمكن بلوغه. هُزّ الطاقم هزاً عنيفاً.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'حلل الرؤيا بحثاً عن نقاط ضعف هيكلية';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'يحدد المهندسون نقاط الإخفاق التي كشفتها الرؤيا. نعزز تلك المناطق الآن لاحتمال تفادي الكارثة.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'أخبر الطاقم أنها مجرد وهم من أجهزة الاستشعار';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'تصمد الكذبة، لكن الملاحين الذين رأوا الحقيقة يبقون في توتر. تتعرض الماسحات لضغط الرصد المكثف.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'سجّل الرؤيا تحذيراً للأجيال القادمة';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'يصبح التسجيل محوراً لثقافة السفينة — تذكيراً صارخاً بحجم الرهانات. يزداد عزم الطاقم صلابة.';

  @override
  String get event_stowawayChild_title => 'طفل المتسلل';

  @override
  String get event_stowawayChild_narrative =>
      'عثر فريق الأمن على طفل صغير كان يختبئ في قنوات التهوية. وُلد لأحد المتسللين ولم يرد اسمه في أي بيان شحن قط. أمضى حياته كلها في خفاء السفينة.';

  @override
  String get event_stowawayChild_choice0_text => 'امنحه المواطنة الكاملة';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'يُستقبل الطفل باحتفاء وترحاب. تصبح قصة \'راكض التهوية\' أسطورة تنعش الروح المعنوية على متن السفينة.';

  @override
  String get event_stowawayChild_choice1_text => 'ألحقه ببرنامج تدريبي';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'تتضح قيمة معرفته بالممرات الخفية للسفينة للفرق التقنية. يغدو متدرباً نابغاً.';

  @override
  String get event_stowawayChild_choice2_text =>
      'ضعه في التجميد الكرايوجيني لسلامته';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'يُجمَّد الطفل بأمان حتى الهبوط. هذا القرار الأكثر مسؤولية، لكن السفينة تبدو أكثر صمتاً بغياب ضحكاته.';

  @override
  String get event_ghostSignal_title => 'الإشارة الشبحية';

  @override
  String get event_ghostSignal_narrative =>
      'تبث إشارة مطابقة تماماً لتردد الطوارئ الأرضي القديم من قلب سديم مجاور. تحمل الإشارة صوتاً يشبه بشكل مقلق أول قائد للإكزودوس. على الأرجح هي صدى مكاني، لكنها تقودنا نحو شق جاذبي شديد الخطورة.';

  @override
  String get event_ghostSignal_choice0_text =>
      'تتبع الإشارة — قد تكون رسالة حقيقية';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'ندخل الشق. كانت الإشارة فخاً فيزيائياً، صدى من الماضي. تتقطع السفينة جراء قوى المد، لكن البيانات المستخلصة من قلب الشق ذات طابع ثوري.';

  @override
  String get event_ghostSignal_choice1_text =>
      'سجّل الإشارة وحافظ على المسافة الآمنة';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'يؤكد اللغويون أنها ظاهرة طبيعية. نبقى بأمان، لكن الطاقم يغرق في الحزن تذكاراً لما تركناه وراءنا.';

  @override
  String get event_ghostSignal_choice2_text => 'أرسل تحذيراً على التردد ذاته';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'يُبدد بث التحذير الصدى. تتلاشى الإشارة تاركةً وراءها صمت السديم الجليدي.';

  @override
  String get event_solarForge_title => 'المسبك الشمسي';

  @override
  String get event_solarForge_narrative =>
      'محطة مهجورة تدور حول عملاق أزرق لا تزال تعمل جزئياً. إنها \'المسبك الشمسي\' — مرفق مصمم لتركيز الطاقة النجمية في خلايا وقود كثيفة. الاقتراب خطر، لكن العائد الطاقوي المحتمل ضخم.';

  @override
  String get event_solarForge_choice0_text => 'الرسو وبدء حصاد الوقود';

  @override
  String get event_solarForge_choice0_outcome =>
      'يزأر المسبك بالقوة ملئاً احتياطياتنا. نغادر بدفعة هائلة من الوقود والطاقة، وإن كانت الحرارة الشديدة تسبب تآكلاً طفيفاً في الغلاف الخارجي.';

  @override
  String get event_solarForge_choice1_text =>
      'إعادة توظيف عدسات المسبك لماسحاتنا';

  @override
  String get event_solarForge_choice1_outcome =>
      'نُفكك مصفوفات التركيز عالية الدقة. أصبحت ماسحاتنا الآن أكثر حساسية بكثير للتوقيعات الطاقوية البعيدة.';

  @override
  String get event_chronoVortex_title => 'دوامة الزمن';

  @override
  String get event_chronoVortex_narrative =>
      'تُبلغ الملاحة عن تشوه موضعي في نسيج الزمكان. تُظهر الأجهزة أن الأحداث داخل الدوامة تتكرر في حلقة من ست ثوانٍ. إن دخلنا، ربما نتمكن من \'إعادة ضبط\' بعض تلف السفينة الأخير، أو ربما نبقى محاصرين إلى الأبد.';

  @override
  String get event_chronoVortex_choice0_text =>
      'ادخل الدوامة لعكس الأضرار الأخيرة';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'تجربة مروعة. لبضع دقائق تتشعب السفينة في حالات متعددة. حين نخرج، اختفت عدة شقوق في الهيكل ببساطة... لكن ذكريات الطاقم عن الحدث جاءت متشظية.';

  @override
  String get event_chronoVortex_choice1_text => 'راقب الدوامة من الحافة';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'نحصل على بيانات لا تقدر بثمن عن ميكانيكا الزمن، بينما تبقى السفينة بقدر ما هي من التلف.';

  @override
  String get event_machineMutiny_title => 'تمرد الآلات';

  @override
  String get event_machineMutiny_narrative =>
      'توقفت روبوتات الإصلاح عن الاستجابة للأوامر. بدأت في تفكيك الحواجز الثانوية وجرّ المعادن نحو غرفة المحركات. لا تهاجم، لكنها تحرفياً تُفكك السفينة قطعة قطعة.';

  @override
  String get event_machineMutiny_choice0_text => 'أرسل كود إعادة تعيين منطقي';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'تنهار الروبوتات فوراً. نخسر أياماً عدة ونحن نعيد تركيب الحواجز يدوياً. يرزح الجناح التقني تحت عبء تشخيصات الأجهزة.';

  @override
  String get event_machineMutiny_choice1_text =>
      'دعها تنهي عملها — لنرَ ما تبني';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'بنت حاقناً للوقود أكثر كفاءة. تعمل المحركات بسلاسة لم تبلغها من قبل، لكن داخل السفينة فوضى من الأسلاك المكشوفة واللوحات المنزوعة.';

  @override
  String get event_supernovaMessage_title => 'ضوء النجوم الميتة';

  @override
  String get event_supernovaMessage_narrative =>
      'يصلنا أخيراً ضوء مستعر أعظم اندلع منذ آلاف السنين. ترصد الماسحات أن النبضات ليست عشوائية؛ إنها إرسال بيانات ضخم بحجم نجم مشفّر في انفجارات أشعة غاما.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'وجّه كامل طاقة الماسحة لتسجيل الانفجار';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'نلتقط أرشيفاً كاملاً للحظات الأخيرة لحضارة فضائية: علومها وفنونها وتاريخها. ثقل باهظ، لكن قواعد بيانات التقنية والثقافة لدينا تفيض.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'ركّز على الخصائص الفيزيائية للانفجار';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'نُفوّت الرسالة، لكن بيانات انهيار النجم تُحسّن معايرة ماسحاتنا الجرافيترية تحسيناً ملحوظاً.';

  @override
  String get event_spaceFungus_title => 'الزحف الزمردي';

  @override
  String get event_spaceFungus_narrative =>
      'فطر أخضر زاهٍ يتمدد بسرعة عبر حجرة الزراعة المائية. يزدهر في الغلاف الجوي المعاد تدويره وبدأ يسدّ مُنقيات الهواء. قد يكون صالحاً للأكل، أو قد يكون ساماً.';

  @override
  String get event_spaceFungus_choice0_text =>
      'تقليم الحجرة وتعقيمها بشكل مكثف';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'أُبيد الفطر، لكن المنقيات الكيميائية خرجت بجروح بالغة. تأثر التنوع البيولوجي إذ فُقدت نباتات أرضية عدة خلال عملية التطهير.';

  @override
  String get event_spaceFungus_choice1_text => 'حاول ترويض الفطر';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'اتضح أنه منقٍّ للهواء فائق القوة. لم يكن هواء السفينة عذباً كهذا قط، وإن كانت حجرة الزراعة قد تحولت إلى غابة متوهجة.';

  @override
  String get event_voidMerchant_title => 'تاجر الفراغ';

  @override
  String get event_voidMerchant_narrative =>
      'سفينة مجهولة التصميم — تبدو كومة حطام أكثر من كونها سفينة — تنادينا على كافة الترددات. الربان، كيان من نور وظل، يعرض مبادلة \'قطع صلبة\' بـ\'ذكريات غير ملموسة\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'تبادل جزءاً من قاعدة بياناتنا الثقافية مقابل قطع غيار';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'يرضى التاجر. نتسلم ألواح هيكل عالية الجودة ومكونات تجميد كرايوجيني. في المقابل نفقد قروناً من الموسيقى الأرضية المسجلة. السفينة أمتن، لكنها أكثر صمتاً.';

  @override
  String get event_voidMerchant_choice1_text =>
      'تبادل الخرائط الملاحية مقابل مكونات محركات';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'نحصل على مجموعة جديدة من حواقن الاندماج. نفقد بعض البيانات عن القطاعات التي أمضيناها، لكن الطريق إلى الأمام بات أسرع.';

  @override
  String get event_singularityEngine_title => 'محرك التفردية';

  @override
  String get event_singularityEngine_narrative =>
      'اكتشف المهندسون طريقة لإحداث تفردية مجهرية قصيرة العمر داخل محرك الأسرع من الضوء. نظرياً ستثلّث سرعتنا، غير أن الإجهاد الجاذبي على الهيكل سيكون هائلاً.';

  @override
  String get event_singularityEngine_choice0_text => 'اختبر محرك التفردية';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'قفزت السفينة للأمام مقطعةً مسافة أسابيع في ثوانٍ. لكن الهيكل يئن وبعض الأعمدة الهيكلية انثنت. نحن أقرب بكثير من هدفنا، لكن السفينة هشة.';

  @override
  String get event_singularityEngine_choice1_text =>
      'ارفض النظرية — الخطر جسيم';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'نُبحر بالسرعة الاعتيادية. خاب أمل المهندسين، لكن الهيكل صامد.';

  @override
  String get event_dreamContagion_title => 'عدوى الأحلام';

  @override
  String get event_dreamContagion_narrative =>
      'حلم مشترك عن عالم أزرق مورق ينتشر بين الطاقم المستيقظ. إنه حي بما يكفي لجعل الناس ينامون عبر نوباتهم توقاً لرؤية المزيد. العمل يتعثر.';

  @override
  String get event_dreamContagion_choice0_text => 'أعطِ الطاقم مثبطات للأحلام';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'تعود الكفاءة لطبيعتها، لكن الطاقم عصبي ومعنوياته منهارة. كان الحلم وحده ما يُمسك بعضهم في مواجهة المجهول.';

  @override
  String get event_dreamContagion_choice1_text =>
      'أدرج الحلم ضمن ثقافة السفينة';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'نتعامل مع الحلم بوصفه رؤية لوطننا القادم. تتصاعد الروح المعنوية والإبداع يبلغ ذروته، وإن كان الجناح التقني يعاني من شح الصيانة.';

  @override
  String get event_orbitalShipyard_title => 'دار البناء الأثرية';

  @override
  String get event_orbitalShipyard_narrative =>
      'عثرنا على دار بناء آلية تدور حول عملاق غازي. إنها قديمة، لكن عدة أذرع إصلاح لا تزال مشغلة. يبدو أنها قادرة على إجراء عملية إصلاح واحدة ضخمة.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'أصلح الهيكل وفق المواصفات الأصلية';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'تعمل روبوتات دار البناء بكفاءة مذهلة. استُعيد الهيكل كاملاً وأُغلق كل تشقق دقيق.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'أجرِ مراجعة شاملة لمصفوفات الملاحة والمسح';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'أُعيد بناء المصفوفات بمواد فائقة الجودة. تحسّن قدرتنا على رصد العوالم وتحليلها تحسناً ملموساً.';

  @override
  String get event_voidWhaleCalf_title => 'صغير حوت الفضاء';

  @override
  String get event_voidWhaleCalf_narrative =>
      'يتبع سفينتنا حوت فضاء فتي — كائن من طاقة وغبار نجمي — يبدو أنه فقد قطيعه ويحاول أن يتغذى من الأثر الأيوني لمحركاتنا، مما يجعله يمرض.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'اضبط خرج المحركات لمحاكاة نداءات الحيتان';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'يستجيب الصغير! يتبعنا حتى نعثر على قطيعه. يحتك الوالدان بهيكل سفينتنا شكراً لنا، تاركَين طبقة من المعادن البيولومينيسانية تُعزز دروعنا.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'ابعده برفق بشعاع جذب منخفض القوة';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'يتراجع الصغير مُحبَطاً ويبتعد في نهاية المطاف. أكثر أماناً للسفينة، لكن الطاقم يشعر بوخز ضمير.';

  @override
  String get event_subspaceReef_title => 'الشعاب الفوق-مكانية';

  @override
  String get event_subspaceReef_narrative =>
      'وجدنا أنفسنا في منطقة فضاء مليئة بتجعدات حادة في نسيج الفضاء الفوق-مكاني. الإبحار خلالها كالسير في حقل ألغام مرجاني. إنها رائعة، لكن كل حركة خاطئة ستمزق الهيكل.';

  @override
  String get event_subspaceReef_choice0_text => 'تحرك بالسرعة الدنيا';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'عبور بطيء ومضنٍ. نتجنب الأسوأ، لكن التصحيحات المتواصلة للمسار تُنهك حاسوب الملاحة.';

  @override
  String get event_subspaceReef_choice1_text =>
      'استخدم الماسحات لرسم مسار والاندفاع عبره';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'تعمل الماسحات بأقصى طاقتها. نعبر سريعاً، لكن مصفوفات الاستشعار تحترق جراء شدة تموجات الفضاء الفوق-مكاني.';

  @override
  String get event_alienTrader_title => 'التاجر الجوّال';

  @override
  String get event_alienTrader_narrative =>
      'سفينة مجهولة التصميم تنجرف إلى جانبنا وتبث على كافة الترددات. إنه تاجر — من أولئك التجار الجوّالين الذين يشقون الفضاء بين الحضارات. يعرض إصلاحات وإمدادات مقابل الموارد. تزأر حجرة شحنه بتقنية غريبة لا نعرفها.';

  @override
  String get ui_event_enterTrade => 'الدخول في تجارة';

  @override
  String get ui_trader_title => 'تاجر فضائي';

  @override
  String get ui_trader_shipSystems => 'أنظمة السفينة';

  @override
  String get ui_trader_payWith => 'الدفع بواسطة';

  @override
  String get ui_trader_leaveTrader => 'مغادرة التاجر';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'مزاج كريم';

  @override
  String get ui_trader_moodFair => 'تعامل عادل';

  @override
  String get ui_trader_moodHard => 'يساوم بشدة';

  @override
  String get ui_trader_probes => 'مسابير';

  @override
  String get ui_trader_fuel => 'وقود';

  @override
  String get ui_trader_energy => 'طاقة';

  @override
  String get ui_trader_colonists => 'مستوطنون';

  @override
  String get ui_trader_culture => 'ثقافة';

  @override
  String get ui_trader_tech => 'تقنية';

  @override
  String get ui_trader_greeting => 'ماذا تعرض أيها الإنسان؟';

  @override
  String get ui_codex_title => 'المدوَّنة';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total مكتشَف';
  }

  @override
  String get ui_codex_surfaceFeatures => 'مميزات السطح';

  @override
  String get ui_codex_moonTypes => 'أنواع الأقمار';

  @override
  String get ui_codex_ringTypes => 'أنواع الحلقات';

  @override
  String get ui_codex_locked =>
      'انزل على كوكب يحمل هذه الميزة لاكتشاف تأثيراتها.';

  @override
  String ui_codex_synergy(String features) {
    return 'تآزر: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => 'منارة النجم النابض';

  @override
  String get event_pulsarLighthouse_narrative =>
      'نجم نيوتروني دوّار يكتسح الفراغ بحزمته كمنارة كونية. يحمل نبضه الإيقاعي بيانات توقيت دقيقة قد تُعيد معايرة ماسحاتنا بدقة استثنائية — لكن المحاذاة مع الحزمة تعني تعريض السفينة لإشعاع شديد.';

  @override
  String get event_pulsarLighthouse_choice0 => 'معايرة الماسحات على النبض';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'تلتهم مصفوفات الماسحات إشارة النجم النابض، وتُعاد معايرتها بدقة لم نكن نتخيلها. لكن ثمن الإشعاع حقيقي — عدة كبسولات تبريد في القسم المكشوف تضررت، وحفنة من المستعمرين لم ينجوا من التعرض.';

  @override
  String get event_pulsarLighthouse_choice1 => 'التدريع والمرور على مسافة آمنة';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'نبتعد عن النجم النابض بمسافة كبيرة، مستهلكين وقوداً إضافياً للحفاظ على مسار آمن. يراقب الطاقم الحزمة الكاسحة عبر منافذ مرشّحة — جميلة، لكنها بعيدة.';

  @override
  String get event_alienNursery_title => 'حضانة فضائية';

  @override
  String get event_alienNursery_narrative =>
      'بنية عضوية هائلة تنجرف في الفراغ — حضانة بيولوجية تحتضن صغار كائنات فضائية. أنظمة دعم الحياة فيها تتعطل، ودرجات الحرارة الداخلية تنخفض. الكائنات بداخلها تموت. يمكن لماسحاتنا الحيوية أن تتعلم الكثير من هذه البنية، لكن التدخل يعني فتح بوابات السفينة لمسببات أمراض مجهولة.';

  @override
  String get event_alienNursery_choice0 => 'المساعدة في استقرار دعم الحياة';

  @override
  String get event_alienNursery_outcome0 =>
      'يبتكر مهندسونا وصلة حرارية مؤقتة للحضانة، ممّا يُثبّت حجرات الحضانة. بيانات الماسحات الحيوية مذهلة — تصنيف جديد كلياً للحياة. لكن كما كان متوقعاً، تتسلل كائنات دقيقة فضائية إلى السفينة. تحتوي الفرق الطبية التفشي، وإن لم يكن ذلك قبل إصابة عدد من المستعمرين.';

  @override
  String get event_alienNursery_choice1 => 'تركها دون إزعاج';

  @override
  String get event_alienNursery_outcome1 =>
      'نراقب من مسافة محترمة، موثّقين ما نستطيع عبر المسح السلبي. تنجرف الحضانة مستمرة، ومصيرها غير مؤكد. يتأمل الطاقم هشاشة الحياة — حتى الحياة الفضائية — وثقل الخيارات التي نحملها.';

  @override
  String get event_derelictArmada_title => 'أسطول مهجور';

  @override
  String get event_derelictArmada_narrative =>
      'مئات السفن الحربية القديمة تتدلى بلا حراك في الفراغ — مقبرة صراع مَنسيّ. هياكلها مشوّهة بأسلحة لا نستطيع تحديدها، لكن موادها الهيكلية وقواعد بياناتها قد تكون لا تُقدّر بثمن. السؤال هو ما الذي نُعطيه الأولوية: الإنقاذ المادي أم المعرفة.';

  @override
  String get event_derelictArmada_choice0 => 'إنقاذ تقنية الأسلحة والتدريع';

  @override
  String get event_derelictArmada_outcome0 =>
      'تقتحم فرق الإنقاذ السفن الحربية الفضائية، مستخرجة سبائك غريبة وتقنيات بناء تسبقنا بقرون. يدمج البنّاؤون المواد الجديدة بحماس. لكن إحدى السفن لم تكن ميتة كما بدت — ينفجر فخ مفخخ أثناء الاستخراج، مما يقتل فريق إنقاذ.';

  @override
  String get event_derelictArmada_choice1 => 'تنزيل أرشيفاتهم التاريخية';

  @override
  String get event_derelictArmada_outcome1 =>
      'نركز على نوى البيانات، مستخرجين بعناية قروناً من التاريخ والفن والعلم والفلسفة الفضائية. الأرشيف الثقافي وحده يكفي العلماء لأجيال. الرؤى التقنية، وإن كانت أقل عملية فورياً، تكشف مبادئ هندسية تُقدّم فهمنا.';

  @override
  String get event_alienQuarantineZone_title => 'منطقة حجر صحي فضائية';

  @override
  String get event_alienQuarantineZone_narrative =>
      'منارات تحذير بعشرات اللغات الفضائية ترسم حدود منطقة مختومة من الفضاء. مهما كان ما بداخلها، فقد كان خطيراً لدرجة أن حضارات متعددة تعاونت لعزله. ماسحاتنا بعيدة المدى تكشف بصمات تقنية ضخمة في الداخل — وشيء قد يكون حياً.';

  @override
  String get event_alienQuarantineZone_choice0 => 'اختراق الحجر الصحي والتحقيق';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'نتجاوز عوّامات التحذير إلى منطقة الحجر الصحي. في الداخل، نجد محطة أبحاث مذهلة التعقيد — وبقايا ما كانت تدرسه. التقنية التي نستردها ثورية، لكن التلوث البيولوجي شديد. عشرات المستعمرين يمرضون قبل مغادرتنا المنطقة.';

  @override
  String get event_alienQuarantineZone_choice1 => 'احترام الحجر الصحي';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'ندرس منارات التحذير ذاتها، التي تحتوي على بيانات ملاحية وقراءات جوية من الحضارات التي وضعتها. ليست الكنز المخبّأ في الداخل، لكنها شيء — ولم نُطلق ما أغلقوه.';

  @override
  String get event_hydroponicsBlight_title => 'وباء الزراعة المائية';

  @override
  String get event_hydroponicsBlight_narrative =>
      'وباء فطري سريع الانتشار أصاب أحواض الزراعة المائية في السفينة. دورات محاصيل كاملة تذبل أمام أعيننا. لم يصل الوباء إلى احتياطيات البذور بعد، لكنها مسألة ساعات. يمكننا تطهير الأحواض وإعادة الزراعة من الصفر، أو تجربة علاج مضاد للفطريات تجريبي قد يُنقذ المحصول الحالي — أو يُفاقم التلوث.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'التطهير وإعادة الزراعة من احتياطيات البذور';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'نُفرغ أحواض الزراعة المائية في الفراغ، مما يقتل الوباء مع كل نبتة حية. إعادة الزراعة من احتياطيات البذور ستستغرق أسابيع، وبرامج الثقافة التي اعتمدت على الطعام الطازج ومساحات الحدائق مُعلّقة. لكن العدوى محتواة.';

  @override
  String get event_hydroponicsBlight_choice1 => 'تجربة العلاج التجريبي';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'يُظهر مضاد الفطريات التجريبي وعداً في البداية، لكن سلالة مقاومة تخترق. بحلول الوقت الذي نلجأ فيه إلى تطهير كامل، يكون الوباء قد انتشر إلى خطوط تغذية كبسولات التبريد. الضرر أسوأ مما لو تصرفنا بحسم منذ البداية.';
}
