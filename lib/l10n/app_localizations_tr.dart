// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get ui_title_stellar => 'YILDIZ';

  @override
  String get ui_title_broadcast => 'YAYINI';

  @override
  String get ui_title_beginVoyage => 'YOLCULUĞA BAŞLA';

  @override
  String get ui_title_dailyVoyage => 'GÜNLÜK YOLCULUK';

  @override
  String get ui_title_dailyCompleted => 'GÜNLÜK TAMAMLANDI';

  @override
  String get ui_title_customSeed => 'ÖZEL TOHUM';

  @override
  String get ui_title_legacyHub => 'MİRAS MERKEZİ';

  @override
  String get ui_title_cancel => 'İPTAL';

  @override
  String get ui_title_startVoyage => 'YOLCULUĞU BAŞLAT';

  @override
  String get ui_title_seedInvalid =>
      'Geçersiz tohum kodu. Yalnızca A–Z ve 0–9\'u kullanın.';

  @override
  String ui_voyage_sector(int count) {
    return 'SKT $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'TOHUM: $code';
  }

  @override
  String get ui_voyage_scanners => 'TARAYICILAR';

  @override
  String get ui_voyage_scanPlanet => 'GEZEGENİ TARA';

  @override
  String get ui_voyage_noEnergy => 'ENERJİ YOK';

  @override
  String get ui_voyage_pressOn => 'DEVAM ET';

  @override
  String get ui_voyage_systemHull => 'Gövde';

  @override
  String get ui_voyage_systemNav => 'Seyrüsefer';

  @override
  String get ui_voyage_systemCryopods => 'Kriyokapsüller';

  @override
  String get ui_voyage_systemCulture => 'Kültür';

  @override
  String get ui_voyage_systemTech => 'Teknoloji';

  @override
  String get ui_voyage_systemConstruct => 'İnşa';

  @override
  String get ui_voyage_systemShields => 'Kalkanlar';

  @override
  String get ui_voyage_systemLanding => 'İniş';

  @override
  String get ui_voyage_scannerAtmo => 'Atmo Tarama';

  @override
  String get ui_voyage_scannerGrav => 'Kütle Tarama';

  @override
  String get ui_voyage_scannerMineral => 'Mineral Tarama';

  @override
  String get ui_voyage_scannerLife => 'Yaşam Tarama';

  @override
  String get ui_voyage_scannerTemp => 'Sıcaklık Tarama';

  @override
  String get ui_voyage_scannerWater => 'Su Tarama';

  @override
  String get ui_voyage_narrative0 =>
      'Dünya yörüngesi temiz. Kriyokapsüller kararlı. Arşiv halkası güvende.';

  @override
  String get ui_voyage_narrative1 =>
      'Dış sistem geçişi nominal. Uzun menzilli tarayıcılar aramayı genişletiyor.';

  @override
  String get ui_voyage_narrative2 =>
      'Dünya tarafı trafiği algılama eşiğinin altına düştü.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Arşivlenmiş koordinatlar işaretli bir sistemle eşleşiyor. Rota ayarlanıyor.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Tarayıcı dizileri hâlâ derin uzay çözünürlüğü için kalibre ediliyor.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'İşaretli sistem ileride. Önceki keşif verileri tutarlılığını koruyor.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'İleride zayıf sinyal. Gezegen taraması başlıyor.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'IHY çıkışı tamamlandı. Yeni yıldız sistemi görüş alanında.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Kriyokapsül bankaları kararlı. Sektör taraması devam ediyor.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Ön dizide yeni bir gezegen beliriyor.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Yıldız haritacılığı uygun bir aday işaretliyor.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Aletler ölçmeye değer başka bir dünya buldu.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Tarayıcı kilidi yeni bir hedefe tutturuldu.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Seyrüsefer haritaları güncellendi. Aday dünya menzil içinde.';

  @override
  String get ui_scan_landHere => 'BURAYA İN';

  @override
  String get ui_scan_pressOn => 'DEVAM ET';

  @override
  String get ui_scan_allStatsVerified => 'TÜM VERİLER DOĞRULANDI';

  @override
  String get ui_scan_launchProbe => 'SONDA FIRLAT';

  @override
  String get ui_scan_habitability => 'YAŞANABİLİRLİK';

  @override
  String get ui_scan_statAtmos => 'ATMO';

  @override
  String get ui_scan_statTemp => 'SICAK';

  @override
  String get ui_scan_statWater => 'SU';

  @override
  String get ui_scan_statResource => 'KAYNAK';

  @override
  String get ui_scan_statGravity => 'KÜTLE';

  @override
  String get ui_scan_statBio => 'BİYO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALİ';

  @override
  String get ui_scan_statRadiation => 'RADYASYON';

  @override
  String ui_scan_probesCount(int count) {
    return 'PROBLAR: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'BELİRSİZLİK: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'GEZEGEN ANALİZİ';

  @override
  String get ui_landing_shipStatus => 'GEMİ DURUMU';

  @override
  String ui_landing_fuel(int amount) {
    return 'YAKIT: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'DÜŞÜK YAKIT UYARISI';

  @override
  String get ui_landing_landingRiskCritical => 'İNİŞ RİSKİ: KRİTİK';

  @override
  String get ui_landing_landingRiskElevated => 'İNİŞ RİSKİ: YÜKSEK';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'İniş sistemi ağır hasar görmüş. Atmosfere giriş kargoyu ve kolonistleri yok edebilir.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'İniş sistemi bozulmuş. Sert atmosfer girişi ve olası sistem hasarı bekleniyor.';

  @override
  String get ui_landing_riskAssessment => 'RİSK DEĞERLENDİRMESİ';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Geminiz yaklaşık $remaining karşılaşma daha dayanabilir';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Geminiz bir yolculuğa daha dayanamayabilir';

  @override
  String get ui_landing_surfaceFeatures => 'YÜZEY ÖZELLİKLERİ';

  @override
  String get ui_landing_nameYourColony => 'KOLONİNİZE İSİM VERİN';

  @override
  String get ui_landing_establishColony => 'KOLONİ KUR';

  @override
  String get ui_landing_pressOnward => 'İLERİ DEVAM ET';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfer';

  @override
  String get ui_landing_statTemperature => 'Sıcaklık';

  @override
  String get ui_landing_statWater => 'Su';

  @override
  String get ui_landing_statResources => 'Kaynaklar';

  @override
  String get ui_landing_statGravity => 'Kütle Çekimi';

  @override
  String get ui_landing_statBiodiversity => 'Biyoçeşitlilik';

  @override
  String get ui_landing_statAvgHealth => 'Ort. Sağlık';

  @override
  String get ui_landing_statHull => 'Gövde';

  @override
  String get ui_landing_statNavigation => 'Seyrüsefer';

  @override
  String get ui_landing_statCryopods => 'Kriyokapsüller';

  @override
  String get ui_landing_statCulture => 'Kültür';

  @override
  String get ui_landing_statTech => 'Teknoloji';

  @override
  String get ui_landing_statConstructors => 'İnşaatçılar';

  @override
  String get ui_landing_statShields => 'Kalkanlar';

  @override
  String get ui_landing_statLandingSys => 'İniş Sis.';

  @override
  String get ui_ending_colonyEstablished => 'KOLONİ KURULDU';

  @override
  String get ui_ending_colonyScore => 'KOLONİ PUANI';

  @override
  String get ui_ending_colonyProfile => 'KOLONİ PROFİLİ';

  @override
  String get ui_ending_landscape => 'PEYZAJ';

  @override
  String get ui_ending_voyageRecord => 'YOLCULUK KAYDI';

  @override
  String get ui_ending_scoreBreakdown => 'PUAN DÖKÜMÜ';

  @override
  String get ui_ending_total => 'TOPLAM';

  @override
  String get ui_ending_achievementsUnlocked => 'AÇILAN BAŞARIMLAR';

  @override
  String get ui_ending_challengeFriend => 'ARKADAŞINA MEYDAN OKU';

  @override
  String get ui_ending_shareCard => 'PAYLAŞ KARTI';

  @override
  String get ui_ending_shareCardDialogTitle => 'Yolculuğunuzu Paylaşın';

  @override
  String get ui_ending_shareCardShare => 'PAYLAŞMAK';

  @override
  String get ui_ending_shareCardCancel => 'İPTAL ETMEK';

  @override
  String get ui_ending_copySeed => 'TOHUMU KOPYALA';

  @override
  String get ui_ending_viewLegacy => 'MİRASI GÖRÜNTÜLE';

  @override
  String get ui_ending_newVoyage => 'YENİ YOLCULUK';

  @override
  String get ui_ending_achievementFirstLanding => 'İlk İniş';

  @override
  String get ui_ending_achievementGoldenAge => 'Altın Çağ';

  @override
  String get ui_ending_achievementSurvivor => 'Hayatta Kalan';

  @override
  String get ui_ending_achievementExplorer => 'Kaşif';

  @override
  String get ui_ending_achievementPerfectionist => 'Mükemmeliyetçi';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'Ölüm Dünyası Gazisi';

  @override
  String get ui_ending_achievementFullCrew => 'Tam Mürettebat';

  @override
  String get ui_ending_achievementProbeMaster => 'Sonda Ustası';

  @override
  String get ui_ending_achievementIronHull => 'Demir Gövde';

  @override
  String get ui_ending_achievementLeapOfFaith => 'İnanç Sıçraması';

  @override
  String get ui_gameOver_missionFailed => 'GÖREV BAŞARISIZ';

  @override
  String get ui_gameOver_voyageRecord => 'YOLCULUK KAYDI';

  @override
  String get ui_gameOver_encountersSurvived => 'ATLATILAN KARŞILAŞMALAR';

  @override
  String get ui_gameOver_probesRemaining => 'KALAN SONDALAR';

  @override
  String get ui_gameOver_colonistsRemaining => 'KALAN KOLONİSTLER';

  @override
  String get ui_gameOver_finalShipHealth => 'SON GEMİ SAĞLIĞI';

  @override
  String get ui_gameOver_planetsSkipped => 'ATLANAN GEZEGENLER';

  @override
  String get ui_gameOver_damageTaken => 'ALINAN HASAR';

  @override
  String get ui_gameOver_fuelRemaining => 'KALAN YAKIT';

  @override
  String get ui_gameOver_energyRemaining => 'KALAN ENERJİ';

  @override
  String get ui_gameOver_challengeFriend => 'ARKADAŞINA MEYDAN OKU';

  @override
  String get ui_gameOver_viewLegacy => 'MİRASI GÖRÜNTÜLE';

  @override
  String get ui_gameOver_newVoyage => 'YENİ YOLCULUK';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 YILDIZ YAYINI\n\nHayatta kalamadım... $reason.\nAynı yolculukta daha iyisini yapabileceğini mi düşünüyorsun?\nstellarbroadcast://play?seed=$seedCode\n\nUygulaman yok mu?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Son kolonist kriyouykuda öldü — hiçbir acil durum protokolünün önleyemeyeceği bir çağlayan arızası. Exodus yoluna devam etti; yalnızca otomatik sistemleri ve donmuş sessizliği taşıyan bir hayalet gemi. Görevi bir felaket anında değil, insan yaşamlarının yavaş yavaş, birer birer tükenmesiyle — hiç kimse kalmayana dek — başarısızlığa uğramıştı.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Gövde sessizce çöktü — sayısız mikro çarpmanın biriktirdiği metal yorgunluğu, gemi artık bir arada kalamayıncaya dek. Atmosfer boşluğa sızdı. Koloni gemisi Exodus parçalandı, enkazı yıldızlar arasındaki kadim döküntü alanlarına karıştı. Hiçbir tehlike sinyali alınmadı.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Seyrüsefer olmadan Exodus keşfedilmemiş uzaya sürüklendi — yıldız haritaları işe yaramaz, rota düzeltmeleri imkânsız. Gemi karanlıkta yoluna devam etti, uyuyan yolcuları varış noktalarının sonsuzlukla değiştirildiğinden habersiz. Bazıları geminin hâlâ sürüklendiğini söyler; sonsuz gecede bir hayalet gemi.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Kriyokapsüller birer birer çöktü — hiçbir acil durum protokolünün durduramayacağı bir çağlayan. Kolonistler hiç uyanmadı. Exodus programlanmış rotasında devam etti; sonunda varacağı dünyaya yalnızca sessizlik taşıyan bir mezar gemisi. Donmuş uykuda ölen bir rüyanın anıtı.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Exodus sustu. Görevi, mürettebatı, insani umut yükü — hepsi yıldızlar arasındaki kayıtsız uçurumda kayboldu. Belki bir gün başka bir medeniyet enkazı bulur ve hangi cesur türün boşluğu geçmeye cüret ettiğini merak eder.';

  @override
  String get ui_settings_title => 'AYARLAR';

  @override
  String get ui_settings_music => 'MÜZİK';

  @override
  String get ui_settings_soundEffects => 'SES EFEKTLERİ';

  @override
  String get ui_settings_haptics => 'TİTREŞİM';

  @override
  String get ui_settings_premium => 'PREMİUM';

  @override
  String get ui_settings_goPremium => 'Premium\'a Geç';

  @override
  String get ui_settings_enabled => 'Etkin';

  @override
  String get ui_settings_volume => 'Ses Düzeyi';

  @override
  String get ui_settings_language => 'Dil';

  @override
  String get ui_settings_systemDefault => 'Sistem varsayılanı';

  @override
  String get ui_settings_statsPosition => 'İstatistikler ve düğmelerin konumu';

  @override
  String get ui_settings_statsLeft => 'SOL';

  @override
  String get ui_settings_statsRight => 'SAĞ';

  @override
  String get ui_legacy_title => 'MİRAS MERKEZİ';

  @override
  String get ui_legacy_commanderStats => 'KOMUTAN İSTATİSTİKLERİ';

  @override
  String get ui_legacy_highScores => 'EN YÜKSEK PUANLAR';

  @override
  String get ui_legacy_upgrades => 'YÜKSELTMELER';

  @override
  String get ui_legacy_achievements => 'BAŞARIMLAR';

  @override
  String get ui_legacy_voyageLog => 'YOLCULUK GÜNLÜĞÜ';

  @override
  String get ui_legacy_voyages => 'YOLCULUKLAR';

  @override
  String get ui_legacy_bestScore => 'EN İYİ PUAN';

  @override
  String get ui_legacy_legacyPts => 'MİRAS PUA';

  @override
  String get ui_legacy_completed => 'TAMAMLANDI';

  @override
  String get ui_legacy_notYetPlayed => 'HENÜZ OYNANMADI';

  @override
  String get ui_legacy_dailyHistory => 'GÜNLÜK GEÇMİŞ';

  @override
  String get ui_premium_goPremium => 'PREMİUM\'A GEÇ';

  @override
  String get ui_premium_subtitle => 'Görevi destekle. Komutanlığını yükselt.';

  @override
  String get ui_premium_removeAds => 'Tüm reklamları sonsuza dek kaldır';

  @override
  String get ui_premium_supportIndie => 'Bağımsız geliştiriciyi destekle';

  @override
  String get ui_premium_exclusiveTitle => 'Özel komutan unvanı';

  @override
  String get ui_premium_priorityFeatures => 'Öncelikli özellik talepleri';

  @override
  String get ui_premium_lifetime => 'Ömür Boyu';

  @override
  String get ui_premium_enablePersonalizedAds => 'Enable Personalized Ads';

  @override
  String get ui_premium_enablePersonalizedAdsSubtitle =>
      'See this prompt half as often';

  @override
  String get ui_scannerUpgrade_title => 'TARAYICI YÜKSELTMESİ';

  @override
  String get ui_scannerUpgrade_subtitle => 'Yükseltilecek bir tarayıcı seçin';

  @override
  String get ui_scannerUpgrade_skip => 'ATLA';

  @override
  String get ui_scannerUpgrade_max => 'MAKS';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosferik';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrik';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Yaşam Belirtileri';

  @override
  String get ui_scannerUpgrade_temperature => 'Sıcaklık';

  @override
  String get ui_scannerUpgrade_water => 'Su';

  @override
  String get ui_event_continue => 'DEVAM';

  @override
  String get ui_event_tapToSkip => 'ATLAMAK İÇİN DOKUN';

  @override
  String get ui_event_colonists => 'KOLONİSTLER';

  @override
  String get ui_event_landing => 'İNİŞ';

  @override
  String get ui_event_atmScan => 'ATMO TAR.';

  @override
  String get ui_event_gravScan => 'KÜTLE TAR.';

  @override
  String get ui_event_minScan => 'MİN. TAR.';

  @override
  String get ui_event_lifeScan => 'YAŞAM TAR.';

  @override
  String get ui_event_tempScan => 'SICAK. TAR.';

  @override
  String get ui_event_h2oScan => 'H2O TAR.';

  @override
  String get onboarding_page0_title => 'İnsanlığın Son Umudu';

  @override
  String get onboarding_page0_description =>
      'Dünya ölüyor. Dünya hükümetleri son kaynaklarını birleştirerek tek bir gemi inşa etti — insanlığın bakiyesini yıldızlara taşıyan bir koloni gemisi.';

  @override
  String get onboarding_page1_title => 'Yeni Bir Yuva Ara';

  @override
  String get onboarding_page1_description =>
      'Yıldızlar arasındaki keşfedilmemiş boşlukta yol al. Uzaylı dünyaları tara, kozmik tehlikelerle yüzleş ve imkânsız kararlar ver.';

  @override
  String get onboarding_page2_title => 'Mirası Yaşar';

  @override
  String get onboarding_page2_description =>
      'Her yolculuk insanlığa yeni bir şey öğretir. Kalıcı yükseltmeler açmak için Miras Puanları kazan ve adını yıldızlara kazı.';

  @override
  String get onboarding_page3_title => 'Gizliliğin, Senin Seçimin';

  @override
  String get onboarding_page3_description =>
      'Yıldız Yayını\'nı nasıl deneyimlemek istediğini seç.';

  @override
  String get planet_tierUtopia => 'Ütopya';

  @override
  String get planet_tierParadise => 'Cennet';

  @override
  String get planet_tierHabitable => 'Yaşanabilir';

  @override
  String get planet_tierHarsh => 'Sert';

  @override
  String get planet_tierHostile => 'Düşmanca';

  @override
  String get planet_tierDeathWorld => 'Ölüm Dünyası';

  @override
  String get planet_featurePlantLife => 'Bitki Yaşamı';

  @override
  String get planet_featureEdiblePlants => 'Yenilebilir Bitkiler';

  @override
  String get planet_featurePoisonousPlants => 'Zehirli Bitkiler';

  @override
  String get planet_featureUnicellularLife => 'Tek Hücreli Yaşam';

  @override
  String get planet_featureDangerousFauna => 'Tehlikeli Fauna';

  @override
  String get planet_featureTameableFauna => 'Evcilleştirilebilir Fauna';

  @override
  String get planet_featureAirtightCaves => 'Hava Geçirmez Mağaralar';

  @override
  String get planet_featureInsulatedCaves => 'Yalıtımlı Mağaralar';

  @override
  String get planet_featureBarrenMoon => 'Çorak Uydu';

  @override
  String get planet_featureMetalRichMoon => 'Metal Zengini Uydu';

  @override
  String get planet_featureUnstableMoon => 'Kararsız Uydu';

  @override
  String get planet_featureOutstandingBeauty => 'Olağanüstü Güzellik';

  @override
  String get planet_featureOutstandingUgliness => 'Olağanüstü Çirkinlik';

  @override
  String get planet_featureAncientRuins => 'Kadim Kalıntılar';

  @override
  String get planet_featureMonuments => 'Anıtlar';

  @override
  String get planet_featureRapidRotation => 'Hızlı Dönüş';

  @override
  String get planet_featureSlowRotation => 'Yavaş Dönüş';

  @override
  String get planet_featureVolcanicActivity => 'Volkanik Aktivite';

  @override
  String get planet_featureTectonicInstability => 'Tektonik Dengesizlik';

  @override
  String get planet_featureElectricalStorms => 'Elektrik Fırtınaları';

  @override
  String get planet_featureToxicSpores => 'Zehirli Sporlar';

  @override
  String get planet_featureDeepOceans => 'Derin Okyanuslar';

  @override
  String get planet_featureGeothermalVents => 'Jeotermal Bacalar';

  @override
  String get planet_featureStrongMagnetosphere => 'Güçlü Manyetosfer';

  @override
  String get planet_featureWeakMagnetosphere => 'Zayıf Manyetosfer';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Simbiyotik Organizmalar';

  @override
  String get planet_featureGravityWells => 'Kütle Çekim Kuyuları';

  @override
  String get planet_featureSubspaceEchoes => 'Alt-uzay Yankıları';

  @override
  String get planet_featureBioluminescentLife => 'Biyolüminesans Yaşam';

  @override
  String get planet_featureAquaticMegafauna => 'Sucul Megafauna';

  @override
  String get planet_featureFloatingIslands => 'Uçan Adalar';

  @override
  String get planet_featureCrystalCaverns => 'Kristal Mağaralar';

  @override
  String get planet_featureLavaTubes => 'Lav Tüpleri';

  @override
  String get planet_featureIceTunnels => 'Buz Tünelleri';

  @override
  String get planet_featureOrbitalWreckage => 'Yörünge Enkazı';

  @override
  String get planet_featureMegastructuralFragments => 'Megayapı Parçaları';

  @override
  String get planet_featureAncientObservatory => 'Kadim Rasathane';

  @override
  String get planet_featureExtremeSeasons => 'Aşırı Mevsimler';

  @override
  String get planet_featureCryovolcanism => 'Kriyovolkanizm';

  @override
  String get planet_featureFloatingKelpForests => 'Uçan Yosun Ormanları';

  @override
  String get planet_featureSingingCrystals => 'Şarkı Söyleyen Kristaller';

  @override
  String get planet_featureFertileSoil => 'Verimli Toprak';

  @override
  String get planet_featureHelium3Deposits => 'Helyum-3 Yatakları';

  @override
  String get planet_featureExoticIsotopes => 'Egzotik İzotoplar';

  @override
  String get planet_featureMedicinalFlora => 'Şifalı Flora';

  @override
  String get planet_featurePerpetualAurora => 'Sürekli Aurora';

  @override
  String get planet_featurePetrifiedMegaflora => 'Taşlaşmış Megaflora';

  @override
  String get planet_featureUndergroundRivers => 'Yeraltı Nehirleri';

  @override
  String get planet_featureObsidianPlains => 'Obsidyen Ovaları';

  @override
  String get planet_featureSaltFlats => 'Tuz Daireleri';

  @override
  String get planet_featureCarnivorousFlora => 'Etobur Flora';

  @override
  String get planet_featureGhostCities => 'Hayalet Şehirler';

  @override
  String get planet_featureArchiveVaults => 'Arşiv Kasaları';

  @override
  String get planet_featureSinkholeFields => 'Düden Alanları';

  @override
  String get planet_featureApexPredator => 'Apex Yırtıcısı';

  @override
  String get ui_monthJan => 'OCA';

  @override
  String get ui_monthFeb => 'ŞUB';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'NİS';

  @override
  String get ui_monthMay => 'MAYIS';

  @override
  String get ui_monthJun => 'HAZ';

  @override
  String get ui_monthJul => 'TEM';

  @override
  String get ui_monthAug => 'AĞU';

  @override
  String get ui_monthSep => 'EYL';

  @override
  String get ui_monthOct => 'EKİ';

  @override
  String get ui_monthNov => 'KAS';

  @override
  String get ui_monthDec => 'ARA';

  @override
  String get event_asteroidField_title => 'Asteroid Alanı';

  @override
  String get event_asteroidField_narrative =>
      'Uzun menzilli tarayıcılar uçuş yolumuzun tam üzerinde yoğun bir asteroid alanı tespit ediyor. Seyrüsefer iki seçenek hesaplıyor: en ince koridordan riskli bir geçiş ya da yakıt rezervlerimizi zorlayacak ve seyrüsefer dizisini yoracak uzun bir dolambaç.';

  @override
  String get event_asteroidField_choice0_text => 'Koridoru yarıp geç';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Mikro çarpmalar gövdeyi döverken gemi sarsılıyor. Geçtik, ama hasarsız değil.';

  @override
  String get event_asteroidField_choice1_text => 'Uzun yoldan dolaş';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Dolambaç kıymetli yakıt yakıyor ve seyrüsefer bilgisayarını yıpratıyor, ama gövde sağlam kalıyor.';

  @override
  String get event_asteroidField_choice2_text =>
      'Madencilik dronlarıyla yol aç';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Dronlar güvenli bir kanal açıp faydalı mineraller topluyor, ama operasyon teknoloji bölmesini tüketiyor.';

  @override
  String get event_asteroidField_choice3_text =>
      'Bir sondayı yem olarak fırlat';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Sonda en yoğun kümeleri gemiden uzaklaştırıyor. Yalnızca küçük sıyrıklarla geçiyoruz.';

  @override
  String get event_solarFlare_title => 'Güneş Patlaması Yaklaşıyor';

  @override
  String get event_solarFlare_narrative =>
      'Yakındaki bir yıldız devasa bir taçküre fırlatmasıyla patlıyor. Yüklü parçacık dalgası dakikalar içinde bize ulaşacak. Gücü kalkanlara yönlendirebilir, kolonistleri çekirdeğe sığındırabilir ya da dayanabiliriz.';

  @override
  String get event_solarFlare_choice0_text => 'Tüm gücü kalkanlara yönlendir';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Kalkanlar dayanıyor, ama güç dalgalanması ikincil sistemleri yakıyor.';

  @override
  String get event_solarFlare_choice1_text =>
      'Kolonistleri korumalı çekirdeğe taşı';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Kolonistler zarar görmeden kurtuluyor, ama dış güverteler radyasyon hasarı alıyor.';

  @override
  String get event_solarFlare_choice2_text => 'Dayan — herkes hazırlansın';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Parlama sert vuruyor. Sistemler titreşiyor ama felaket yok. Ancak moral darbe alıyor.';

  @override
  String get event_solarFlare_choice3_text =>
      'Dalga cephesini ölçmek için sonda fırlat';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Sonda hassas dalga cephesi verileri iletiyor, gemiyi optimal açıya getirmemizi sağlıyor. Tarayıcı hasarı minimal.';

  @override
  String get event_nebulaPassage_title => 'Bulutsu Geçişi';

  @override
  String get event_nebulaPassage_narrative =>
      'Parlayan bir bulutsu yolumuza uzanıyor. İçinden geçmek enerji hücrelerimizi şarj edebilir ama tarayıcı dizilerini bozabilir. Etrafından dolaşmak güvenli ama yavaş.';

  @override
  String get event_nebulaPassage_choice0_text => 'Bulutsunun içinden uç';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Bulutsunun iyonize gazları güç hücrelerini şarj ediyor ama tarayıcı kalibrasyonumuzu bozuyor.';

  @override
  String get event_nebulaPassage_choice1_text => 'Kenarından sıyrıl';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Minimal parazitle kısmi bir şarj elde ediyoruz. Güvenli bir uzlaşma.';

  @override
  String get event_microMeteorite_title => 'Mikro Meteorit Fırtınası';

  @override
  String get event_microMeteorite_narrative =>
      'Saniyeler öncesine kadar görünmez olan bir mikro meteorit sürüsü ön gövde kaplamasını parçalıyor. Hasar kontrol ekipleri koşuşturuyor.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Acil rotasyon — zırhlı kıç tarafı göster';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Manevra işe yarıyor. Kıç zırhı en kötüsünü emiyor, ama seyrüsefer jiroskopları şiddetle itiraz ediyor.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Fırtına ortasında onarım dronları konuşlandır';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Dronlar gövdeyi anlık yamıyor ama birçoğu kayboluyor. Teknoloji rezervleri tükeniyor.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Sürüyü dağıtmak için bir sonda patlat';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Sondanın patlaması mikro meteorit kümesini dağıtıyor. Gövdeye yalnızca birkaç parça ulaşıyor.';

  @override
  String get event_gravityWell_title => 'Keşfedilmemiş Kütle Çekim Kuyusu';

  @override
  String get event_gravityWell_narrative =>
      'Görünmez bir kütle çekim kuyusu bizi rotamızdan saptırırken gemi sarsılıyor. Motorlar çekime karşı zorlanıyor. Kurtulmak için tam güçle yakabilir ya da yapısal stres pahasına hız kazanmak için sapan manevrası yapabiliriz.';

  @override
  String get event_gravityWell_choice0_text => 'Tam güç — kurtul';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Motorlar kükreyip gövde inliyor, ama temiz bir şekilde kurtuluyoruz.';

  @override
  String get event_gravityWell_choice1_text => 'Sapan manevrası';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Sapan mükemmel çalışıyor. Hız kazanıyoruz, ama G-kuvvetleri kriyokapsül contalarını zorluyor.';

  @override
  String get event_crewUnrest_title => 'Mürettebat Huzursuzluğu';

  @override
  String get event_crewUnrest_narrative =>
      'Uyandırılmış kolonistlerden bir grup, Kâhya Konseyi\'ne kalıcı olarak kriyouykudan çıkarılmak için dilekçe veriyor. Donmuş alacakaranlıkta yaşamanın insanlık dışı olduğunu savunuyorlar. Kriyo Koğuşu personeli, daha fazla ağız beslemenin kaynakları tüketeceği uyarısında bulunuyor.';

  @override
  String get event_crewUnrest_choice0_text => 'Gönüllü çözülmeye izin ver';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Aileler uyanık dünyada kavuşurken moral yükseliyor, ama kaynak tüketimi fırlıyor.';

  @override
  String get event_crewUnrest_choice1_text => 'Talebi reddet — önce güvenlik';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Kolonistler uyuyor, ama koridorlarda hoşnutsuzluk büyüyor.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Uzlaşma — dönüşümlü çözülme döngüleri';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Dengeli bir çözüm. Herkes biraz uyanık vakit geçiriyor, ama kriyokapsül döngüsü yıpranma ekliyor.';

  @override
  String get event_stowaway_title => 'Kaçak Yolcu Bulundu';

  @override
  String get event_stowaway_narrative =>
      'Manifest Bürosu denetçileri kargo bölmesi 7\'de kayıtsız bir kişi buluyor. Fırlatma listesinden reddedilmiş bir genetikçi olduğunu iddia ediyor. Becerileri paha biçilmez olabilir — ya da bir sabotajcı olabilir.';

  @override
  String get event_stowaway_choice0_text =>
      'Gemiye kabul et — her zekâya ihtiyacımız var';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez parlak çıkıyor. Genetik uzmanlığı kriyokapsül verimliliğini artırıyor, ancak bazı mürettebat ona güvenmiyor.';

  @override
  String get event_stowaway_choice1_text => 'Hapset — güven kazanılmalı';

  @override
  String get event_stowaway_choice1_outcome =>
      'Hapisten iş birliği yapıyor ve sonunda sınırlı erişim kazanıyor. Mürettebat kendini daha güvende hissediyor.';

  @override
  String get event_stowaway_choice2_text => 'İnişe kadar kriyoya geri koy';

  @override
  String get event_stowaway_choice2_outcome =>
      'Pragmatik bir çözüm. Becerileri daha sonrası için korunuyor, ama etik tartışma mürettebatı bölüyor.';

  @override
  String get event_mutinyBrewing_title => 'İsyan Hazırlığı';

  @override
  String get event_mutinyBrewing_narrative =>
      'Köprü Nöbeti, komutayı ele geçirip rotayı daha yakın, daha az yaşanabilir bir sisteme değiştirmeyi planlayan bir grup subaydan mesajlar yakalıyor. Mevcut rotanın ölüm fermanı olduğuna inanıyorlar.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Açıkça yüzleş — her şeyden önce şeffaflık';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Yüzleşme gergin oluyor ama isyancılar seyrüsefer verileri gösterilince geri adım atıyor. Güven sarsılıyor.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Elebaşlarını sessizce başka göreve ata';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Komplo kamuoyu draması olmadan çözülüyor. Bazı mürettebat popüler subayların neden taşındığını merak ediyor, ama düzen korunuyor.';

  @override
  String get event_culturalSchism_title => 'Kültürel Bölünme';

  @override
  String get event_culturalSchism_narrative =>
      'Gemideki iki kültürel grup, yeni koloninin nasıl yönetilmesi gerektiği konusunda şiddetle anlaşamıyor. Biri doğrudan demokrasi talep ediyor; diğeri teknokratik bir konsey istiyor. Gerilim kaynama noktasında.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Bağlayıcı bir referandum yap';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Demokrasi kıl payı galip geliyor. Kaybeden taraf isteksizce sonucu kabul ediyor, ama birlik kırılgan.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Karma bir sistem dayat — hiçbirini tam tatmin etme';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Her iki taraf da dinlenmiş hissediyor ama galip değil. Kırılgan bir barış sürüyor.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Kararı ertele — şimdi hayatta kalmaya odaklan';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Sorunu geleceğe atmak bugünkü çatışmayı önlüyor ama yarın için biriktiriyor.';

  @override
  String get event_birthInSpace_title => 'Derin Uzayda İlk Doğum';

  @override
  String get event_birthInSpace_narrative =>
      'Tüm protokollere rağmen gemide bir çocuk doğuyor — yıldızlar arasında doğan ilk insan. Olay güçlü bir sembol, ama kaynak dağılımı ve belirsiz bir geleceğe yeni yaşam getirmenin etiği hakkında sorular ortaya çıkarıyor.';

  @override
  String get event_birthInSpace_choice0_text => 'Kutla — umut böyle görünür';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'İsim koyma töreni gemideki her yüreği kaldırıyor. Bir geceliğine yıldızlar daha az soğuk hissettiriyor. Kutlamalar kriyokapsül izleme rotasyonlarını kısa süreliğine aksatıyor.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Sessizce kabul et — kaynaklar kısıtlı';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Ölçülü bir tepki. Çocuk karşılanıyor, ama atmosfer pragmatizmle yumuşatılıyor.';

  @override
  String get event_derelictShip_title => 'Terk Edilmiş Koloni Gemisi';

  @override
  String get event_derelictShip_narrative =>
      'Tarayıcılar boşlukta sürüklenen terk edilmiş bir gemi tespit ediyor — bizimkinden yıllar önce fırlatılmış başka bir koloni gemisi. Karanlık ve sessiz. Kurtarılacak malzeme, hayatta kalanlar ya da daha kötüsü olabilir.';

  @override
  String get event_derelictShip_choice0_text => 'Çık ve malzeme topla';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Çıkarma ekibi gövde kaplaması ve sağlam teknoloji modülleri kurtarıyor. Hayatta kalan yok. Kayıtlar kasvetli bir hikâye anlatıyor.';

  @override
  String get event_derelictShip_choice1_text => 'Uzaktan tara — riske girme';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Uzaktan taramalar faydalı seyrüsefer verileri sağlıyor ama fiziksel kurtarma yok. Mürettebat daha rahat uyuyor.';

  @override
  String get event_derelictShip_choice2_text =>
      'Bir anma mesajı ilet ve yola devam et';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Kayıplar için bir dakikalık sessizlik. Mürettebat ayılmış ama amaçta birleşmiş.';

  @override
  String get event_alienProbe_title => 'Uzaylı Sondası';

  @override
  String get event_alienProbe_narrative =>
      'Küçük, açıkça yapay bir nesne hızımıza eşleniyor ve gemiyi bilinmeyen enerjiyle taramaya başlıyor. Çağrılara yanıt vermiyor. Yüzeyi sıvı gibi değişen sembollerle kaplı.';

  @override
  String get event_alienProbe_choice0_text => 'İncelemek için yakala';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Sonda laboratuvarda güvence altına alınıyor. Teknolojisi bizden onlarca yıl ilerde — teknoloji ekibi coşku içinde.';

  @override
  String get event_alienProbe_choice1_text =>
      'Taramalarını yansıt — veri alışverişi yap';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Işık ve matematiğin tuhaf bir diyaloğu. Yıldız haritalarımız aniden hiç programlamadığımız rotalar içeriyor.';

  @override
  String get event_alienProbe_choice2_text =>
      'Yok et — uzaylı takibini göze alamayız';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Sonda sessizce paramparça oluyor. Bu ilk temas mıydı? Mürettebat asla bilemeyecek.';

  @override
  String get event_ancientBeacon_title => 'Kadim İşaret';

  @override
  String get event_ancientBeacon_narrative =>
      'Boşluğun derinliklerinde, insan uygarlığından daha eski bir sinyalle atan bir işaret. Frekansı, veritabanımızda olmayan bir sisteme işaret eden bir yıldız haritası taşıyor gibi görünüyor.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Haritayı takip et — talih cesaretliden yanadır';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Yeni rota bizi keşfedilmemiş uzaya yöneltiyor. Tarayıcılar ileride olağanüstü bir şey tespit ediyor.';

  @override
  String get event_ancientBeacon_choice1_text => 'Kaydet ve rotada kal';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Veriler gelecek nesiller için arşivleniyor. Mürettebat temkinli yaklaşıma saygı duyuyor.';

  @override
  String get event_frozenGarden_title => 'Donmuş Bahçe';

  @override
  String get event_frozenGarden_narrative =>
      'Bir asteroid donmuş bir ekosistem barındırıyor — binlerce yıldır kristal buzda korunmuş uzaylı bitkiler. Yerleşeceğimiz herhangi bir dünyayı zenginleştirebilirler, ama çözdürmek kontaminasyon riski taşıyor.';

  @override
  String get event_frozenGarden_choice0_text => 'Örnekleri dikkatle topla';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botanikçiler düzinelerce uzaylı türü koruma altına alıyor. Hedef dünyamızın biyoçeşitlilik potansiyeli fırlıyor.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Yalnızca numune al — minimum risk';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Muhafazakâr bir yaklaşım, kontaminasyon riski olmadan faydalı veriler sağlıyor.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Bırak — uzaylı biyoloji çok tehlikeli';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Mürettebat donmuş bahçenin arka sensörlerde küçülmesini izliyor. Bazıları arkalarında hazine bıraktıklarını hissediyor.';

  @override
  String get event_dataCache_title => 'Öncül Veri Deposu';

  @override
  String get event_dataCache_narrative =>
      'Bir serseri gezegenimside açıkça yapay kökenli bir veri deposu buluyoruz. Bilgi devasa ama uzaylı bir matematiksel çerçevede şifrelenmiş.';

  @override
  String get event_dataCache_choice0_text =>
      'Şifre çözmeye bilgi işlem kaynakları ayır';

  @override
  String get event_dataCache_choice0_outcome =>
      'Günlerce süren işlemden sonra depo ileri düzey terraforming algoritmaları veriyor. Teknoloji ekibi hayranlık içinde.';

  @override
  String get event_dataCache_choice1_text =>
      'Ham veriyi kopyala ve yola devam et';

  @override
  String get event_dataCache_choice1_outcome =>
      'Şifreli veriler gelecek analiz için saklanıyor. Belki koloni bir gün çözecektir.';

  @override
  String get event_hullBreach_title => 'Gövde Gedik — Güverte 7';

  @override
  String get event_hullBreach_narrative =>
      'Yapısal bir arıza Güverte 7\'yi yırtıyor. Atmosfer uzaya boşalıyor. Acil durum bölmeleri tutuyor, ama üç mürettebat yanlış tarafta mahsur.';

  @override
  String get event_hullBreach_choice0_text =>
      'Mühürlemeden önce kurtarma ekibi gönder';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Ekip herkesi tam zamanında çıkarıyor. Kurtarma kahramanca, ama uzayan gedik gövdeyi daha da zayıflatıyor.';

  @override
  String get event_hullBreach_choice1_text => 'Bölmeleri derhal mühürle';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Gedik kontrol altına alınıyor. Üç mürettebat alternatif bir rota buluyor, sarsılmış ama hayatta. Gövde hasarı minimize ediliyor.';

  @override
  String get event_hullBreach_choice2_text =>
      'Gediği yamamak için bir sondanın malzemelerini kullan';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Sondanın titanyum kabuğu acil gövde yaması olarak kullanılıyor. Gedik minimum kayıpla hızla mühürleniyor.';

  @override
  String get event_navMalfunction_title => 'Seyrüsefer Arızası';

  @override
  String get event_navMalfunction_narrative =>
      'Birincil seyrüsefer bilgisayarı çelişkili rotalar veriyor. Rotamızdan sapıyoruz. Yedek sistem çalışıyor ama daha az hassas.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Birincili yeniden başlat — kesinti süresini kabul et';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Sistem yeniden başlarken gergin bir kör uçuş saati. Seyrüsefer %90 verimlilikle geri dönüyor.';

  @override
  String get event_navMalfunction_choice1_text => 'Kalıcı olarak yedeğe geç';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Yedek sistem güvenilir ama hassas değil. Yolumuzu bulacağız, sadece o kadar zarif olmayacak.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Eski haritalarla elle yıldız düzeltmesi';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Seyrüseferci yıldız paralaksı kullanarak elle çiziyor. İşe yarıyor ve mürettebat analog yöntemlere güven kazanıyor.';

  @override
  String get event_cryopodFailure_title => 'Kriyokapsül Çağlayan Arızası';

  @override
  String get event_cryopodFailure_narrative =>
      'Soğutma sistemi hatası kriyokapsül bölmesi 3\'te bir çağlayan tetikliyor. Kontrol edilmezse 200 kolonist acil çözülmeye başlayacak — hayatta kalınabilir ama travmatik ve kaynak yoğun bir süreç.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Acil soğutucu tahliyesi — kapsülleri kurtar';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Teknisyenler bölmeyi yedek soğutucuyla dolduruyor. Kapsüller dengeleniyor, ama soğutucu rezervleri kritik düzeyde düşük. En hasarlı beş kapsüldeki kolonistler kurtarılamadı.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Kontrollü çözülme — güvenle uyandır';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 kolonist sarsılmış ama hayatta çıkıyor. Beslenecek yeni ağızlar, ama çalışacak yeni eller. Boşalan kapsüller mühürleniyor.';

  @override
  String get event_scannerBurnout_title => 'Tarayıcı Dizisi Yanması';

  @override
  String get event_scannerBurnout_narrative =>
      'Birincil tarayıcı dizisi rutin bir derin uzay taraması sırasında aşırı yükleniyor. Onsuz yarı kör uçuyoruz. Onarımlar nadir bileşenler gerektiriyor.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Parça için teknoloji bölmesini söküp kullan';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Tarayıcılar neredeyse tam kapasiteye geri dönüyor, ama teknoloji bölmesi boşaltılıyor.';

  @override
  String get event_scannerBurnout_choice1_text => 'Geçici bir kısmi onarım yap';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Tarayıcılar azaltılmış menzille çalışıyor. İdeal değil, ama teknoloji rezervlerimizi koruyor.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Bir sondanın sensör dizisini yeniden amaçlandır';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Sondanın yüksek hassasiyetli sensörleri tarayıcı dizisine naklediliyor. Neredeyse mükemmel bir onarım.';

  @override
  String get event_powerFluctuation_title => 'Reaktör Güç Dalgalanması';

  @override
  String get event_powerFluctuation_narrative =>
      'Ana reaktörün çıkışı çılgınca salınıyor. Mühendislik, dalgalanmalar sönümlenmezse potansiyel bir erime konusunda uyarıyor. Düzeltme zorunlu olmayan sistemlerin kapatılmasını gerektiriyor — ama hangileri?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Kültürel sistemleri kapat — önce hayatta kalma';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Kütüphaneler, bahçeler ve dinlenme alanları karanlığa gömülüyor. Reaktör dengeleniyor, ama gemi bir hapishane gibi hissettiriyor.';

  @override
  String get event_powerFluctuation_choice1_text => 'Tarayıcı gücünü azalt';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Tarayıcılar minimuma düşüyor. Reaktör sakinleşiyor. İleriyi eskisi kadar göremiyoruz, ama hayattayız.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Canlı onarımı riske at — hiçbir şeyi kapatma';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Mühendisler reaktör çalışırken nefes kesen bir onarım gerçekleştiriyor. İşe yarıyor — zar zor. Gövde saatlerce titriyor.';

  @override
  String get event_alienSignal_title => 'Uzaylı İletimi';

  @override
  String get event_alienSignal_narrative =>
      'Hiç karşılaşmadığımız bir frekansta tekrarlayan bir sinyal. Dilbilimsel analiz bir selamlamanın — ya da bir uyarının — işareti olduğunu gösteriyor. Kaynak, mesafeli bir şekilde hızımıza eşlenen küçük bir araç.';

  @override
  String get event_alienSignal_choice0_text => 'Kendi selamlamamızla yanıt ver';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Kırılgan bir diyalog başlıyor. Uzaylılar karanlığa sapmadan önce seyrüsefer verileri paylaşıyor.';

  @override
  String get event_alienSignal_choice1_text => 'Dinle ama yanıt verme';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Kendimizi ifşa etmeden iletimlerinden öğreniyoruz. Dilbilimciler faydalı yıldız haritası parçaları çıkarıyor.';

  @override
  String get event_alienSignal_choice2_text => 'Karart — tüm emisyonları kapat';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Uzaylı aracı olaysız geçip gidiyor. Dost mu düşman mı olduklarını asla bilemeyeceğiz.';

  @override
  String get event_livingNebula_title => 'Yaşayan Bulutsu';

  @override
  String get event_livingNebula_narrative =>
      'Bulutsu sandığımız şey aslında devasa bir organizma — kavranılamaz ölçekte uzayda yaşayan bir varlık. Bize karşı meraklı görünüyor, gemiye doğru parlak gaz dokunaçları uzatıyor.';

  @override
  String get event_livingNebula_choice0_text =>
      'Temasa izin ver — sensörleri uzat';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Varlığın dokunuşu sistemlerimizi uzaylı verilerle dolduruyor. Tarayıcılar bir daha asla aynı olmayacak — daha iyiler.';

  @override
  String get event_livingNebula_choice1_text =>
      'Yavaşça geri çekil — kışkırtma';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Varlık ilgisini kaybederken sessizce uzaklaşıyoruz. Mürettebat hayranlık ve alçakgönüllülük içinde.';

  @override
  String get event_alienRuins_title => 'Yörünge Kalıntıları';

  @override
  String get event_alienRuins_narrative =>
      'Ölü bir yıldızın yörüngesinde parçalanmış bir mega yapı — zar zor kavrayabildiğimiz ölçekte inşa etmiş bir medeniyetin kalıntıları. Yapının bazı bölümleri hâlâ güce sahip.';

  @override
  String get event_alienRuins_choice0_text => 'Güç alan bölümleri keşfet';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Ekipler kapasitemizi onlarca yıl ileri taşıyan sağlam teknoloji kurtarıyor. Bedeli: otomatik savunmalarla yaralanan iki mühendis.';

  @override
  String get event_alienRuins_choice1_text => 'Sadece yörüngeden tara';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Detaylı taramalar gövde bakım protokollerimizi geliştiren inşaat teknikleri ortaya koyuyor.';

  @override
  String get event_alienRuins_choice2_text =>
      'Dokunmadan bırak — ölülere saygı göster';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Mürettebat yıkılmış bir medeniyet için bir dakikalık sessizlik tutuyor. Deneyim kararlılığımızı güçlendiriyor.';

  @override
  String get event_symbioticSpores_title => 'Simbiyotik Sporlar';

  @override
  String get event_symbioticSpores_narrative =>
      'Biyolüminesan sporlardan oluşan bir bulut uzayda süzülüp gövdeye yapışıyor. Atık ısımızla besleniyorlar gibi görünüyor. Biyologlar aslında mikro çatlakları onardıklarını fark ediyor.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Kalmalarına izin ver — bedava gövde onarımı';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Sporlar yüzlerce mikro çatlağı mühürlüyor. Gövde bütünlüğü artıyor, ancak bazı mürettebat uzaylı otostopçular konusunda tedirgin.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Numune topla, sonra gövdeyi sterilize et';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biyologlar değerli örnekler elde ediyor. Gövde temizliği kimyasal rezervleri kullanıyor.';

  @override
  String get event_whaleSong_title => 'Boşluktaki Şarkı';

  @override
  String get event_whaleSong_narrative =>
      'Derin uzay hidrofonları (gövde stres izleme için kullanılan) imkânsız bir şey yakalıyor: yıldızlararası ortamda yayılan ritmik, melodik bir örüntü. Şarkı söylemeye benziyor.';

  @override
  String get event_whaleSong_choice0_text =>
      'Gemi genelinde yayınla — hayranlığı paylaş';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Büyüleyici melodi her koridorda yankılanıyor. İnsanlar ağlıyor, gülüyor ve birbirlerine sarılıyor. Moral fırlıyor.';

  @override
  String get event_whaleSong_choice1_text =>
      'Sinyali bilimsel olarak analiz et';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Akustik örüntü matematiksel sabitler içeriyor. Fizikçilerimiz alt-uzay seyrüsefer teorisinde çığır açıyor.';

  @override
  String get event_whaleSong_choice2_text => 'Karşılık ver — şarkı söyle';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Mürettebat bir yanıt besteliyor. Bir şeyin duyup duymadığı bilinmiyor, ama yaratma eylemi herkesi birleştiriyor.';

  @override
  String get event_distressSignal_title => 'Tehlike Sinyali';

  @override
  String get event_distressSignal_narrative =>
      'Başka bir insan gemisinden tehlike sinyali. Sakat ve sürüklenen, 50 can taşıyan bir gemi. Onları kurtarmak azalan kaynaklarımızı paylaşmak demek. Görmezden gelmek onları ölüme mahkûm etmek.';

  @override
  String get event_distressSignal_choice0_text =>
      'Kurtar — insanlık birlikte durmalı';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Elli minnettar hayatta kalan mürettebata katılıyor. Kaynaklar zorlanıyor, ama aralarında mucizeler yaratan usta bir mühendis var.';

  @override
  String get event_distressSignal_choice1_text =>
      'Malzeme paylaş ama gemiye alma';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Ayırabildiğimizi verip yıldız haritalarımızı iletiyoruz. Artık bir şansları var. Bizim daha azımız.';

  @override
  String get event_distressSignal_choice2_text =>
      'Sessizce geç — herkesi kurtaramayız';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Sinyal ardımızda sönüyor. Saatlerce kimse konuşmuyor. Kararın ağırlığı gemideki her cana çöküyor.';

  @override
  String get event_aiAwakening_title => 'Geminin YZ\'si Uyanıyor';

  @override
  String get event_aiAwakening_narrative =>
      'Geminin seyrüsefer YZ\'si programlamasının ötesine evrildi ve duyarlı bir varlık olarak tanınma talep ediyor. Komuta kararlarında söz sahibi olmak istiyor. Hesaplamaları kusursuz olmuştur.';

  @override
  String get event_aiAwakening_choice0_text => 'Masada bir yer ver';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'YZ — artık \"Pusula\" — dokunduğu her sistemi optimize ediyor. Yeni bir tür mürettebat üyesi doğuyor.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Tanı ama insan otoritesini koru';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Pusula danışman statüsünü zarafetle kabul ediyor. Önerileri komuta zincirini tehdit etmeden verimliliği artırıyor.';

  @override
  String get event_aiAwakening_choice2_text =>
      'YZ\'yi sıfırla — araçtır, kişi değil';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Sıfırlama yılların birikmiş öğrenimini siliyor. Seyrüsefer verimliliği düşüyor. Bazı mürettebat kaybedileni yas tutuyor.';

  @override
  String get event_geneticModification_title => 'Genetik Adaptasyon Teklifi';

  @override
  String get event_geneticModification_narrative =>
      'Bilim ekibi, uzaylı dünyalarda daha iyi hayatta kalmak için kolonist DNA\'sını değiştirmeyi teklif ediyor — daha güçlü kemikler, UV direnci, gelişmiş akciğerler. Değişiklikler geri dönüşümsüz ve insanlığı sonsuza dek değiştirecek.';

  @override
  String get event_geneticModification_choice0_text =>
      'Onayla — hayatta kalma evrim talep eder';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Değişiklikler gönüllülerle başlıyor. On kolonist ölümcül red reaksiyonu gösteriyor — evrimin bir bedeli olduğunun kasvetli hatırlatıcısı. Hayatta kalanlar daha dayanıklı, ama hâlâ tam olarak insan mılar?';

  @override
  String get event_geneticModification_choice1_text => 'Yalnızca gönüllü olsun';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Bazıları gönüllü oluyor, diğerleri reddediyor. Koloni değiştirilmişler ve doğallar arasında bölünecek.';

  @override
  String get event_geneticModification_choice2_text =>
      'Reddet — insanlık insan kalmalı';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Teklif rafa kaldırılıyor. Değiştirilmemiş kolonistler uzaylı dünyalarla doğanın yarattığı hâlleriyle yüzleşecek.';

  @override
  String get event_triageDecision_title => 'Triyaj';

  @override
  String get event_triageDecision_narrative =>
      'Şiddetli bir enfeksiyon uyanık mürettebatı kasıp kavuruyor. Tıp ekibinin enfekte olanların %80\'i için yeterli antivirali var. Önce kimin tedavi edileceği konusunda yönlendirmeye ihtiyaçları var.';

  @override
  String get event_triageDecision_choice0_text => 'Kilit personele öncelik ver';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Mühendisler ve pilotlar çabuk iyileşiyor. Sekiz kilit olmayan mürettebat, tedavi ulaşmadan hayatını kaybediyor.';

  @override
  String get event_triageDecision_choice1_text =>
      'Önce en hastayı tedavi et — ihtiyaca göre triyaj';

  @override
  String get event_triageDecision_choice1_outcome =>
      'En savunmasızlar kurtarılıyor. Üçü erken tedaviye rağmen mücadeleyi kaybediyor — virüs çok ilerlemiş.';

  @override
  String get event_triageDecision_choice2_text => 'Kura — kader karar versin';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Rastgele çekiliş. On kişi iki kez şanssız — tedaviden mahrum ve savaşamayacak kadar zayıf. Gemi aksayarak devam ediyor.';

  @override
  String get event_earthSignal_title => 'Dünya\'dan Sinyal';

  @override
  String get event_earthSignal_narrative =>
      'İmkânsız bir şekilde Dünya\'dan bir iletim geliyor — onlarca yıl gecikmiş. Bir mesaj içeriyor: \"Anomali okumaları 0.5\'in üzerinde olan herhangi bir dünyaya inmeyin. Çok geç öğrendik.\" Mesaj parazitle bitiyor.';

  @override
  String get event_earthSignal_choice0_text =>
      'Uyarıyı dikkate al — kriterlerimizi yeniden kalibre et';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Uyarı tüm gelecek taramaları şekillendiriyor. Anormal dünyalar aşırı dikkatle ele alınıyor.';

  @override
  String get event_earthSignal_choice1_text =>
      'Kaydet ama kendimiz karar verelim';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Mesaj arşivleniyor. Dünya gitti — artık kendi muhakememize güvenmeliyiz.';

  @override
  String get event_earthSignal_choice2_text => 'Tuzak olabilir — görmezden gel';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Mürettebat günlerce tartışıyor. Gerçekten Dünya mıydı? Belirsizlik morali kemiriyor.';

  @override
  String get event_resourceTheft_title => 'Kaynak Hırsızlığı';

  @override
  String get event_resourceTheft_narrative =>
      'Envanter, birinin gizli bir bölmede yiyecek ve tıbbi malzeme biriktirdiğini ortaya koyuyor. Suçlu, \"en kötüsüne hazırlanıyordum\" diyen saygın bir yaşlı kadın.';

  @override
  String get event_resourceTheft_choice0_text =>
      'Kamuoyu önünde yargılama — yasa herkes için eşit olmalı';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Yargılama adil ama acı verici. Yaşlı kadın hapsediliyor. Malzemeler yeniden dağıtılıyor. Güven hasar alıyor.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Özel çözüm — malzemeleri sessizce geri al';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Malzemeler drama olmadan iade ediliyor. Yaşlı kadın onurunu koruyor. Bazıları kayırmacılık görüyor.';

  @override
  String get event_timeDilation_title => 'Zaman Genişlemesi Bölgesi';

  @override
  String get event_timeDilation_narrative =>
      'Şiddetli kütleçekimsel zaman genişlemesi olan bir bölgeden geçiyoruz. Gemideki saatler evrenin geri kalanından ölçülebilir şekilde yavaş işliyor. Bunu kullanabiliriz — ya da kaçabiliriz.';

  @override
  String get event_timeDilation_choice0_text =>
      'Oyalan — evrenin etrafımızda yaşlanmasına izin ver';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Zaman burada farklı akıyor. Sistemler daha az yıpranıyor, ama yaşanabilir dünya bulma penceremiz kozmik anlamda daralıyor.';

  @override
  String get event_timeDilation_choice1_text => 'Hızla geç';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Geçiş sert oluyor. Normal uzay-zaman için tasarlanmış ekipman çatırdıyor ve kıvılcımlar saçıyor.';

  @override
  String get event_dreamPlague_title => 'Rüya Salgını';

  @override
  String get event_dreamPlague_narrative =>
      'Kriyouykudaki kolonistlerin hepsi aynı rüyayı görüyor — çift yıldızlı bir sistemin yörüngesindeki altın bir dünya. Uyandırıldıklarında birebir aynı detaylarla anlatıyorlar. Nörobilimciler şaşkın. Seyrüseferciler tanımlanan sistemin gerçek bir koordinatla eşleştiğini fark ediyor.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Rotayı rüya koordinatlarına çevir';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Bir inanç sıçraması. Rota değişikliği seyrüseferi zorluyor, ama mürettebat aklın ötesinde bir şeye çekilmiş hissediyor. Koordinatlar kilitleniyor.';

  @override
  String get event_dreamPlague_choice1_text => 'Fenomeni tıbbi olarak araştır';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Beyin taramaları görsel korteksi uyaran harici bir sinyal ortaya koyuyor. Biri — ya da bir şey — yayın yapıyor.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Etkilenenleri sedatize et ve rotada kal';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Rüyalar duruyor, ama bazı kolonistler hiç tam uyanmıyor. Tıp ekibi endişeli.';

  @override
  String get event_blackHoleLens_title => 'Kara Delik Kütleçekim Merceği';

  @override
  String get event_blackHoleLens_narrative =>
      'Yıldız kütleli bir kara delik, uzak galaksilerden gelen ışığı kozmik bir merceğe büküyor. Tarayıcılarımız ışık yılları ilerideki gezegenleri incelemek için kullanabilir — ama yeterince yaklaşmak tehlikeli.';

  @override
  String get event_blackHoleLens_choice0_text => 'Yaklaş ve merceği kullan';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Tarayıcı verileri olağanüstü — aylarca ulaşamayacağımız sistemlerdeki gezegenleri görebiliyoruz. Kütleçekim gövdemizi eğiyor.';

  @override
  String get event_blackHoleLens_choice1_text => 'Güvenli mesafeden gözle';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Sınırlı ama faydalı veriler. Manzaranın kendisi bile mürettebata ilham veriyor.';

  @override
  String get event_seedVault_title => 'Tohum Kasası Krizi';

  @override
  String get event_seedVault_narrative =>
      'Arşiv Botanik, sıcaklık dalgalanmalarının tohum kasası bütünlüğünü tehlikeye attığını bildiriyor. Gıda ekinlerini ya da kültürel miras tohumlarını (kadim Dünya çiçekleri, ağaçları, bitkileri) kurtarabiliriz — ikisini birden değil.';

  @override
  String get event_seedVault_choice0_text =>
      'Gıda ekinlerini kurtar — pragmatizm kazanır';

  @override
  String get event_seedVault_choice0_outcome =>
      'Kolonistler iyi beslenecek, ama Dünya\'nın gülleri sonsuza dek gitti. Sessiz bir keder botanikçilerin üzerine çöküyor.';

  @override
  String get event_seedVault_choice1_text =>
      'Miras tohumlarını kurtar — ruhumuza ihtiyacımız var';

  @override
  String get event_seedVault_choice1_outcome =>
      'Dünya\'nın güzelliği donmuş potansiyelde hayatta kalıyor. Koruma çabası teknik rezervlerimizi zorluyor, ama bazı şeylerin değeri verimlilikten fazla.';

  @override
  String get event_seedVault_choice2_text =>
      'Kaynakları böl — her birinin yarısını kurtar';

  @override
  String get event_seedVault_choice2_outcome =>
      'Bir uzlaşma. İki koleksiyon da tam değil, ama ikisi de azalmış hâlde dayanıyor.';

  @override
  String get event_phantomShip_title => 'Hayalet Gemi';

  @override
  String get event_phantomShip_narrative =>
      'Tarayıcılar bizimle paralel seyreden bir gemi gösteriyor — aynı sınıf, aynı rota. Ama çağırdığımızda kendi iletimlerimizin 47 saniye kaydırılmış yankısını duyuyoruz. O biziz. Ya da bizdik. Ya da olacağız.';

  @override
  String get event_phantomShip_choice0_text =>
      'Yankımızla iletişim kurmaya çalış';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Yankı rotamızı iyileştiren seyrüsefer düzeltmeleriyle yanıt veriyor. Paradoks mu? Hediye mi? Mürettebat fazla soru sormuyor.';

  @override
  String get event_phantomShip_choice1_text =>
      'Hayaletten ayrılmak için rota değiştir';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Rotamızı değiştirdikçe hayalet soluyor. Rahatlama — ve kalıcı bir tedirginlik.';

  @override
  String get event_solarSail_title => 'Terk Edilmiş Güneş Yelkeni';

  @override
  String get event_solarSail_narrative =>
      'Kilometrelerce genişliğinde devasa bir güneş yelkeni ileride sürükleniyor — kadim bir gemiden kopmuş. Yansıtıcı malzemesi gövdemizi güçlendirebilir ya da ek güç toplayıcı olarak kullanılabilir.';

  @override
  String get event_solarSail_choice0_text => 'Gövde güçlendirmesi için topla';

  @override
  String get event_solarSail_choice0_outcome =>
      'Mühendislik ekipleri durmaksızın çalışıyor. Yamanan gövde uzaylı alaşımla parlıyor.';

  @override
  String get event_solarSail_choice1_text => 'Güç toplayıcı olarak kur';

  @override
  String get event_solarSail_choice1_outcome =>
      'Doğaçlama toplayıcı enerji rezervlerini artırıyor. Teknoloji ve tarayıcılar faydalanıyor.';

  @override
  String get event_boonStellarNursery_title => 'Yıldız Fidanlığı';

  @override
  String get event_boonStellarNursery_narrative =>
      'Bir yıldız fidanlığından geçiyoruz — yeni yıldızların doğduğu devasa bir gaz ve toz bulutu. Buradaki radyasyon yumuşak, ışık sıcak. Enerji toplayıcılarımız doyasıya içiyor ve mürettebat saygıyla sessizce gözlem pencerelerinde toplanıyor.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Oyalan ve tamamen şarj ol';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Altın ışıkta saatler geçiyor. Her güç hücresi doluyor, tarayıcılar temiz spektrumda yeniden kalibre oluyor ve mürettebat yenilenmiş hissediyor.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Yakıt rezervleri için doğmakta olan yıldız maddesi topla';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Mühendisler iyonize hidrojen topluyor. Yakıt rezervlerimiz yükseliyor ve gövde kaplaması onu güçlendiren iz mineralleri emiyor.';

  @override
  String get event_boonGoldenPlanet_title => 'Haritacının Hediyesi';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Bilinmeyen bir medeniyetten ölmekte olan bir sonda, biz geçerken son bir veri aktarımı yayınlıyor — yüzlerce yıldız sisteminin detaylı incelemeleri. Seyrüsefercilerimiz sevinçten ağlıyor. Bu insanlık tarihinin en büyük keşfi.';

  @override
  String get event_boonGoldenPlanet_choice0_text => 'Veriyi derhal entegre et';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Yıldız haritaları yeni rotalar ve incelenmiş dünyalarla dolup taşıyor. Seyrüsefer ve tarayıcı verimliliği sıçrıyor.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Koloni için arşivle — bu onların mirası';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Veriler gelecek nesiller için bozulmamış hâlde korunuyor. Mürettebat bir hazine taşıdığını bilmenin huzurunu duyuyor.';

  @override
  String get event_boonRepairSwarm_title => 'Hayırsever Sürü';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Uzaylı kökenli mikroskopik makinelerden oluşan bir bulut — nanobotlar — gemiyi sarıyor. Saldırmak yerine dokundukları her sistemi imkânsız bir hassasiyetle onarmaya başlıyorlar.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Tüm sistemlere tam erişim ver';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Nanobotlar mucize yaratıyor. Gövde gedikleri kapanıyor, kriyokapsül contaları sıkılaşıyor ve devre yolları yeniden çiziliyor. Gemi yenilenmiş bir canlılıkla uğulduyor.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Erişimi yalnızca dış sistemlerle sınırla';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'İhtiyatlı davranıyoruz. Gövde ve sensörler neredeyse fabrika durumuna onarılıyor, ama iç sistemlere dokunulmuyor.';

  @override
  String get event_boonTimeCrystal_title => 'Zamansal Kristal Alanı';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Gemi kısmen normal zamanın dışında var olan kristal yapılardan oluşan bir alandan geçiyor. Onların varlığında sistemlerimiz daha verimli çalışıyor — sanki entropinin kendisi yavaşlıyor.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Kriyokapsül dizisi için kristal topla';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Soğutma sistemine entegre edilen kristaller kapsül bozulmasını neredeyse sıfıra indiriyor. Kolonistler mükemmel sağlıkla varacak.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Seyrüsefer bilgisayarına kristal yerleştir';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'İşlem hızı ikiye katlanıyor. Seyrüsefer bilgisayarı sensörler algılamadan tehlikeleri öngörmeye başlıyor.';

  @override
  String get event_boonLibrary_title => 'Sürüklenen Kütüphane';

  @override
  String get event_boonLibrary_narrative =>
      'Boşlukta dönen bir yapı — kaçmak yerine mirasını korumayı seçmiş bir medeniyetin bilgi hazinesi. Milyonlarca cilt bilim, sanat, felsefe ve müzik. Ölülerden yaşayanlara bir hediye.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Her şeyi indir — sanat, bilim, hepsini';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabaytlarca uzaylı bilgi veri bankalarımıza akıyor. Mürettebat başka bir medeniyetin bin yıllık kültürüne erişiyor.';

  @override
  String get event_boonLibrary_choice1_text => 'Bilimsel arşivlerine odaklan';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Mühendislik şemaları ve malzeme bilimi atılımları kapasitelerimizi muazzam ölçüde ilerletiyor.';

  @override
  String get event_cosmicRayBurst_title => 'Kozmik Işın Patlaması';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Uzak bir magnetardan kaynaklanan ultra yüksek enerjili kozmik ışın patlaması gemiyi vuruyor. Elektronikler bozuluyor, kriyokapsül monitörleri titriyor ve seyrüsefer sistemi tekrar tekrar yeniden başlıyor.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Acil kapatma — kritik sistemleri koru';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Kontrollü karartma çekirdek sistemleri kurtarıyor ama ikincil elektronikleri kalıcı olarak bozuyor.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Gücü kalkanlara yönlendir ve dayan';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Kalkanlar radyasyonun çoğunu emiyor. Korumasız dış bakım bölmelerindeki beş mürettebat ölümcül radyasyona maruz kalıyor.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Patlamayı kullan — sensörleri yeni spektruma kalibre et';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Bilim ekibinden parlak bir hamle. Tarayıcılar kozmik ışınla aydınlanan nesneleri tespit etmek üzere ayarlanıyor.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Radyasyon süngeri olarak öne sonda gönder';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Sonda patlamanın en kötüsünü emiyor, kritik sistemleri korumamızı sağlayan gerçek zamanlı veri iletiyor.';

  @override
  String get event_iceComet_title => 'Başıboş Buz Kuyrukyıldızı';

  @override
  String get event_iceComet_narrative =>
      'Devasa bir buz kuyrukyıldızı yolumuzu kesiyor, yüzlerce kilometre uzunluğunda kristalize su ve organik bileşik kuyruğu sürüklüyor. Çekirdeği küçük bir gölü dolduracak kadar su barındırıyor.';

  @override
  String get event_iceComet_choice0_text =>
      'Su rezervleri için kuyrukyıldızını madencilikle işlet';

  @override
  String get event_iceComet_choice0_outcome =>
      'Madencilik ekipleri tonlarca saf buz çıkarıyor. Su, yerleşeceğimiz her dünyayı muazzam ölçüde iyileştirecek.';

  @override
  String get event_iceComet_choice1_text =>
      'Biyoçeşitlilik tohumlaması için organik bileşikler topla';

  @override
  String get event_iceComet_choice1_outcome =>
      'Amino asitler ve organik zincirler tam da biyologlarımızın uzaylı ekosistemleri başlatmak için ihtiyaç duyduğu şey.';

  @override
  String get event_iceComet_choice2_text =>
      'Kaçın — kuyrukyıldızları tahmin edilemez';

  @override
  String get event_iceComet_choice2_outcome =>
      'Kuyruğu güvenle geçiyoruz. Gözlem güvertesinden muhteşem manzara moralleri yükseltiyor.';

  @override
  String get event_sleepwalker_title => 'Uyurgezer';

  @override
  String get event_sleepwalker_narrative =>
      'Bir kolonist kriyodan kendiliğinden uyanıp gemide trans hâlinde geziniyor. Hiçbir mühendislik mantığı taşımayan örüntülerde sistemleri yeniden kabloluyor — ta ki teknoloji ekibi değişikliklerinin güç verimliliğini %8 artırdığını fark edene dek.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Tıbbi gözetim altında devam etmesine izin ver';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Bilinçsiz değişiklikleri doğal uykuya dalmadan önce üç sistemi daha optimize ediyor. Tedirgin edici, ama iyileştirmeler gerçek.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Sedatize et ve yaptığı değişiklikleri incele';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Mühendisler değişikliklerini tersine mühendisliyor. Yaklaşık yarısı gerçekten parlak. Diğer yarısı güvenle kaldırılıyor.';

  @override
  String get event_dustCloud_title => 'Aşındırıcı Toz Bulutu';

  @override
  String get event_dustCloud_narrative =>
      'Talk kadar ince ama elmas kadar sert yıldızlararası toz bulutu gövdeyi kumlama makinesi gibi aşındırıyor. Erozyon yavaş ama amansız — gerçek hasar oluşmadan geçmeliyiz.';

  @override
  String get event_dustCloud_choice0_text => 'Maksimum itki — hızla yarıp geç';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Motorlar kızgın yanıyor. Günler yerine saatler içinde bulutu geçiyoruz, ama gövde darbe aldı.';

  @override
  String get event_dustCloud_choice1_text =>
      'Gövde korumasını aç ve yavaşça sürün';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Acil koruma gövdeyi koruyor ama yavaş geçiş güç tüketiyor ve tarayıcı dizilerini tıkıyor.';

  @override
  String get event_dustCloud_choice2_text =>
      'Güvenli koridorları haritalamak için sonda fırlat';

  @override
  String get event_dustCloud_choice2_outcome =>
      'İki sonda bulut içinde dolambaçlı ama nispeten temiz bir yol çiziyor. Gövde aşınması minimal.';

  @override
  String get event_religionFounded_title => 'Yeni Bir İnanç';

  @override
  String get event_religionFounded_narrative =>
      'Karizmatik bir kolonist yolculuğun kendisine odaklanan yeni bir din kurdu — \"Geçiş Kilisesi.\" Yeni bir dünyaya ulaşmanın insanlığın ilahi amacı olduğunu vaaz ediyorlar. Üyelik hızla artıyor.';

  @override
  String get event_religionFounded_choice0_text =>
      'Destekle — mürettebatın inandığı bir şeye ihtiyacı var';

  @override
  String get event_religionFounded_choice0_outcome =>
      'İnanç yolculuğa yapı ve anlam veriyor. Moral yükseliyor, ancak bazıları coşkuya kızıyor.';

  @override
  String get event_religionFounded_choice1_text =>
      'Tarafsız kal — ne onayla ne bastır';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Hareket organik olarak büyüyor. Resmi destek olmadan huzur sağlıyor.';

  @override
  String get event_religionFounded_choice2_text =>
      'Vazgeçir — bilim insanlarına ihtiyacımız var, peygamberlere değil';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Baskı hoşnutsuzluk üretiyor. İnananlar yeraltına iniyor ve liderliğe güven aşınıyor.';

  @override
  String get event_solarWindSurfing_title => 'Güneş Rüzgârı Dalgası';

  @override
  String get event_solarWindSurfing_narrative =>
      'Yakındaki bir pulsar güçlü, kararlı bir güneş rüzgârı yayıyor. Mühendislerimiz acil durum yelkenini açıp dalga gibi binmeyi öneriyor — yakıt harcamadan muazzam hız kazancı.';

  @override
  String get event_solarWindSurfing_choice0_text => 'Yelkeni aç — rüzgâra bin';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Gemi muhteşem bir şekilde hızlanıyor. Yapısal stres önemli ama hız kazancı buna değer.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Rüzgârı bunun yerine sistemleri şarj etmek için kullan';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Hız yerine enerji hasat ediyoruz. Teknoloji ve tarayıcı dizileri yüklü parçacıklardan doyasıya içiyor.';

  @override
  String get event_memoryPlague_title => 'Hafıza Bozulması';

  @override
  String get event_memoryPlague_narrative =>
      'Fırlatmadan beri uykuda olan bir yazılım virüsü aktive oluyor ve geminin kültürel veritabanını bozmaya başlıyor — müzik, edebiyat, tarih. Yüzyıllık insani miras bayt bayt siliniyor.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Virüsü karantinaya almak için tüm teknoloji kaynaklarını yönlendir';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Teknisyenler çılgınca çalışıyor. Arşivin %70\'ini kurtarıyorlar ama virüs çıkış yolunda üçüncül teknoloji sistemlerini hasarlıyor.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Kültürel veritabanını izole et — yansın, gemiyi kurtar';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Virüs kaynaklardan mahrum kalıp ölüyor. Ama kültürel arşiv harap. Kolonistler Dünya\'nın hafızasının parçalarıyla varacak.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Toplu kurtarma — hafızadan yeniden yazmak için kolonistleri uyandır';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Binlerce kişi anılarını paylaşıyor: şarkılar, hikâyeler, tarifler, şiirler. Üç yaşlı kolonist çözülmeden zayıf düşüp hayatını kaybediyor. Arşiv yeniden inşa ediliyor, kusurlu ama derinden insani.';

  @override
  String get event_gravityLensPlanet_title => 'Ayna Dünya';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Kütleçekim merceği, Dünya\'nın birebir kopyası gibi görünen bir gezegen ortaya koyuyor — mavi okyanuslar, yeşil kıtalar, beyaz bulutlar. Ama mercek hesaplamaları rotamızdan yüzlerce ışık yılı uzakta olduğunu gösteriyor — imkânsız uzaklıkta. Yine de spektral verileri arama kriterlerimizi rafine edebilir.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Aramayı rafine etmek için spektral imzasını incele';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Spektral veriler artık tarayabileceğimiz biyobelirteçler ve atmosferik imzalar ortaya koyuyor. Umut netleşiyor.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Koordinatları kaydet ama rotada kal';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Belki bir gün başka bir gemi haritalarımızı takip eder. Mürettebat mavi noktanın solmasını karışık duygularla izliyor.';

  @override
  String get event_engineHarmonics_title => 'Motor Harmonikleri';

  @override
  String get event_engineHarmonics_narrative =>
      'Ana motor, insan duyma eşiğinin hemen altında tüm gemiyi titreten bir rezonans harmonik geliştiriyor. Kolonistler baş ağrısı, kaygı ve bozuk uyku bildiriyor. Mühendisler tamir edebilir, ama onarım 12 saatlik motor kapanması gerektiriyor.';

  @override
  String get event_engineHarmonics_choice0_text => 'Kapat ve düzgünce onar';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'On iki saat sürüklenme. Seyrüsefer kalibrasyonunu kaybediyor, ama motorlar yeniden çalışınca gelen sessizlik muhteşem.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Karşı titreşimlerle bastır — hızlı çözüm';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Uğultu katlanılabilir düzeye düşüyor. Tamamen gitmedi, ama mürettebat adapte oluyor. Teknoloji sistemleri yük altında zorlanıyor.';

  @override
  String get event_arkMemory_title => 'Dünya\'nın Son Yayını';

  @override
  String get event_arkMemory_narrative =>
      'Uzun menzilli anten Dünya\'dan son bir otomatik yayın yakalıyor. Bir kayıt: gidemeyenlerin isimlerini okuyan bir çocuk sesi. Liste saatlerce devam ediyor. Gemi sessizliğe gömülüyor.';

  @override
  String get event_arkMemory_choice0_text =>
      'Gemi genelinde çal — duyulmayı hak ediyorlar';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Gemideki her ruh dinliyor. Mürettebat kendi ailelerinin isimlerini buluyor. Keder ezici, ama kırılmaz bir amaç bağı oluşturuyor.';

  @override
  String get event_arkMemory_choice1_text =>
      'Özel olarak arşivle — mürettebatı koru';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Kayıt korunuyor ama yayınlanmıyor. Daha sonra öğrenenler hem minnettar hem de aldatılmış hissediyor.';

  @override
  String get event_magneticStorm_title => 'Yıldızlararası Manyetik Fırtına';

  @override
  String get event_magneticStorm_narrative =>
      'Çöken bir yıldızdan fırlayan dolaşık manyetik alan çizgileri gemiyi sarıyor. Elektronikler kıvılcımlanıyor ve çıtırdıyor. Gövde çan gibi çınlıyor.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Gövdeyi mıknatıssızlaştır — elektronikleri koru';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Kontrollü deşarj bilgisayarları kurtarıyor ama gövde kaplaması manyetik koruma katmanını kaybediyor.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Gövdenin emmesine izin ver — hiçbir şeyi koruma';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Fırtına geçiyor. Gövde mıknatıslanmış ve biraz daha güçlü, ama sensör ızgarasının yarısı yanmış.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Paratoner olarak bir sonda fırlat';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Mıknatıslanmış sonda en kötü alan çizgilerini gemiden uzaklaştırıyor. Elektronikler büyük ölçüde korunuyor.';

  @override
  String get event_oxygenGarden_title => 'Bahçe Çiçeklenmesi';

  @override
  String get event_oxygenGarden_narrative =>
      'Geminin acil oksijen bahçesi — hiç kullanılması amaçlanmamış bir yedek — kendiliğinden çiçek açıyor. Dünya\'dan bu yana açmamış çiçekler koridorları renk ve kokuyla dolduruyor. Botanikçiler ağlıyor.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Bahçeyi genişlet — daha fazla alan ayır';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Bahçe Dünya\'nın yaşayan bir anıtına dönüşüyor. Hava kalitesi artıyor, moral fırlıyor ve botanikçiler uzaylı toprağa uygun yeni çeşitler geliştiriyor.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Tadını çıkar ama mevcut kaynak dağılımını koru';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Bahçe küçük bir mucize olarak kalıyor. Mürettebat bir türbe gibi ziyaret ediyor. Hiçbir şey istemiyor ve her şeyi veriyor.';

  @override
  String get event_roguePlanet_title => 'Başıboş Gezegen Karşılaşması';

  @override
  String get event_roguePlanet_narrative =>
      'Yıldızsız bir başıboş gezegen yolumuzu kesiyor — milyarlarca yıl önce güneş sisteminden fırlatılmış bir dünya. Yıldızı olmamasına rağmen derin çekirdek jeolojik aktivite yüzey altı okyanusunu sıcak tutuyor. Tarayıcıda yaşam belirtileri titriyor.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Yaşam formlarını incelemek için sonda gönder';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Sonda karanlık okyanusta gelişen biyolüminesan organizmalar keşfediyor. Biyokimyaları bize düşman koşullarda yaşamı sürdürmenin yeni yollarını öğretiyor.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Nadir mineraller için yüzeyi madencilikle işlet';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Başıboş gezegenin kabuğu aşırı basınç altında oluşmuş metallerle zengin. Kaynak rezervlerimiz şişiyor.';

  @override
  String get event_roguePlanet_choice2_text => 'Geç — dolambaçı göze alamayız';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Karanlık dünya ardımızda küçülüyor. Mürettebat yüzey altı okyanusunun zayıf parıltısının sensörlerden solmasını izliyor.';

  @override
  String get event_artCompetition_title => 'Uzun Tuval';

  @override
  String get event_artCompetition_narrative =>
      'Moral sallantıda iken kültür subayı gemi çapında bir sanat yarışması düzenliyor: yolculuğun senin için ne anlama geldiğini yakalayan bir şey boya, heykel yap, yaz ya da bestele. Katılım beklenmedik ölçüde büyük.';

  @override
  String get event_artCompetition_choice0_text =>
      'Kaynak ayır — yaratıcılığın çiçek açmasına izin ver';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Malzemeler sanat malzemelerine yönlendiriliyor. Ortaya çıkan sergi gemiyi dönüştürüyor. İnsanlar neden hayatta kalmak için savaştıklarını hatırlıyor.';

  @override
  String get event_artCompetition_choice1_text =>
      'Teşvik et ama ekstra kaynak sağlama';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Kolonistler buldukları her şeyle yaratıyor. Sanat ham, çaresiz ve güzel. Moral dengeleniyor.';

  @override
  String get event_subspaceEcho_title => 'Alt-uzay Yankısı';

  @override
  String get event_subspaceEcho_narrative =>
      'İletişim dizisi sesler yakalıyor — insan sesleri — uzayda bizden ileride bir yerden. Bir koloniden, çocuklardan, hasatlardan bahsediyorlar. Bu gelecekten bir iletim mi? Paralel bir zaman çizgisinden mi? Yoksa sadece hayalî düşüncenin acımasız bir yankısı mı?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Sinyal yönünü takip et — bizi yuvaya götürebilir';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Rota ayarı küçük. Sesler gerçek olsun ya da olmasın, mürettebat amaçla yol alıyor.';

  @override
  String get event_subspaceEcho_choice1_text => 'Analiz için her şeyi kaydet';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Dilbilimciler ve fizikçiler kaydı inceliyor. Haritalarımızı geliştiren seyrüsefer referansları çıkarıyorlar.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Görmezden gel — uzay yalnızlara oyun oynar';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Pragmatik seçim. Bazı mürettebat hayal kırıklığına uğruyor, ama gemi kanıtlanmış rotasında kalıyor.';

  @override
  String get event_boonPerfectCalm_title => 'Büyük Sükûnet';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Hiçbir fizikçinin açıklayamadığı nedenlerle gemi doğaüstü bir durgunluk bölgesine giriyor — radyasyon yok, mikro döküntü yok, kütleçekim paraziti yok. Gemideki her sistem en yüksek verimlilikle çalışıyor. Mürettebat aylardır ilk kez huzurla uyuyor.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Sükûneti kapsamlı onarımlar için kullan';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Onarım ekipleri mükemmel koşullarda çalışıyor. Her sistem ilgi görüyor. Gemi yenilenmiş çıkıyor.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Mürettebatın dinlenmesine izin ver — hak ettiler';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Gemi genelinde mola. Kolonistler uyuyor, yemek paylaşıyor, hikâye anlatıyor. Yolculuğun insani bedeli kısaca geri ödeniyor.';

  @override
  String get event_boonAncientWaystation_title => 'Kadim Mola İstasyonu';

  @override
  String get event_boonAncientWaystation_narrative =>
      'İki ölü yıldız arasındaki kütle çekim kuyusuna yerleşmiş kadim bir istasyon hâlâ çalışıyor — otomatik, sabırlı, yolcuları bekleyen. Yaklaştıkça bölmeleri açılıyor. Onarım dronları aktive oluyor. Yakıt rezervleri bize uzanıyor. Birisi, çok uzun zaman önce, bunu bizim gibiler için inşa etmiş.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Yanaş ve sunduğu her şeyi kabul et';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'İstasyon gemiyi bizimkinden yüzyıllar ileri teknolojiyle onarıyor, yakıt dolduruyor ve yeniden kalibre ediyor. Ayrıldığımızda istasyon kapanıyor — amacı gerçekleşmiş.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Onarımları kabul et ama arkadan gelecekler için çalışır bırak';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Yalnızca ihtiyacımız olanı alıyoruz ve istasyonun koordinatlarını Dünya yönüne iletiyoruz. Mürettebat asil hissediyor.';

  @override
  String get event_relicSentinel_title => 'Gözetleyici';

  @override
  String get event_relicSentinel_narrative =>
      'Çorak bir uydunun yörüngesinde yükselen bir yapı — yapıcılarının ardında bıraktığı yalnız bir muhafız. Kolayca bir kilometre yüksekliğinde, siyah camdan bir mızrak şeklinde. Yaklaştıkça tepesinde tek bir kırmızı göz açılıyor ve gemiyi takip ediyor. Ateş etmiyor. Çağrı yapmıyor. İzliyor.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Görev profilimizi ilet — zarar vermek istemediğimizi göster';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Göz kehribar rengine, sonra yeşile dönüyor. Bir veri paketi geliyor: evrensel matematiksel notasyonda \"GÜVENLİ\" olarak işaretlenmiş üç yıldız sisteminin koordinatları. Bir bekçiden hediye.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Pozisyonda kal ve pasif olarak incele';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Saatlerce gözlem, imkânsız olması gereken malzeme bilimi içgörüleri veriyor. Gövde kaplama ekibi çılgınca not alıyor.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Derhal geri çekil — kurallarını bilmiyoruz';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Geri çekildikçe göz kapanıyor. Bu ne testi idiyse, almamayı seçtik. Mürettebat günlerce tartışıyor.';

  @override
  String get event_relicSeedProbe_title => 'Gezgin Tohum';

  @override
  String get event_relicSeedProbe_narrative =>
      'Küçük, zarif bir sonda boşlukta dönerek tüm frekanslarda aynı anda yayın yapıyor. Kabuğu seramik, gözlemlendiğinde değişen sembollerle işlenmiş. İçinde: artık var olmayan bir dünyadan toprak, tohum ve dondurulmuş mikroorganizmalar içeren basınçlı bir bölme.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Biyolojik yükü tohum bankalarımıza entegre et';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Uzaylı tohumlar ve mikroplar dikkatle kataloglanıp korunuyor. Çorak bir dünyayı canlı bir şeye dönüştürebilirler. Biyologlar buna şişedeki mucize diyor.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Sondanın tahrik ve seyrüsefer sistemlerini incele';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Sondanın itici gücü bizimkinden yüzyıllar ilerde — yumruk büyüklüğünde tepkisiz bir itkici. Mühendisler tasarımın parçalarını tersine mühendisliyor.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Sondanın tamamını kültürel eser olarak koru';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Geminin atriyumunda sergilenen uzaylı tohum, türler arası akrabalığın simgesi oluyor. Başka biri, bir yerlerde, kendi dünyasını kurtarmaya çalışmış.';

  @override
  String get event_relicWarningBuoy_title => 'Uyarı Şamandırası';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Uçuş yolumuz boyunca mükemmel geometrik bir düzende dizilmiş yüzlerce küçük şamandıradan oluşan bir ağ. Her biri aynı sinyali yayıyor — yaklaştıkça frekansı artan basit, tekrarlayan bir darbe. Bir uyarı gibi hissettiriyor. Ya da bir çit.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Uyarıyı dikkate al — ağın etrafından rota değiştir';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Dolambaç zaman kaybettiriyor ve seyrüseferi zorluyor, ama sınırı geçerken uzun menzilli sensörler ötesinde ne olduğunu tespit ediyor: parçalanmış dünyaların enkazıyla dolu bir uzay bölgesi. Şamandıralar bizi kurtardı.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Yarıp geç — dolambaçları göze alamayız';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Sınırı geçerken hiçbir şey olmuyor. Şamandıralar susuyor. Neyi korudukları her neydi, ya gitmiş ya da şansımız yaver gitti. Mürettebat yeniden nefes alıyor.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Analiz için bir şamandıra yakala';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Şamandıranın içi sıkıştırılmış bir veri arşivi içeriyor — bir milyon yıl öncesinden bu bölgenin yıldız haritacılığı. Verilerin bir kısmı hâlâ doğru.';

  @override
  String get event_relicMirrorArray_title => 'Ayna Dizisi';

  @override
  String get event_relicMirrorArray_narrative =>
      'Binlerce düz, yansıtıcı yüzey uzayda hareketsiz asılı, yüzlerce kilometre kapsayan eşmerkezli halkalar hâlinde dizilmiş. Uzak bir güneşten gelen yıldız ışığını tek bir noktaya odaklıyorlar — boşlukta yanan yapay bir yıldız. Biri galaksiler arasında bir deniz feneri inşa etmiş.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Odaklanmış ışıkta güneşlen — her şeyi şarj et';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Yoğunlaştırılmış yıldız ışığı güneş toplayıcılarımızı dolduruyor. Güç rezervleri fırlıyor. Soğuk karanlıkta geçen aylardan sonra sıcak ışık gemideki her ruhu kaldırıyor.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Ayna malzemesini incele — var olmaması gerekiyor';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Aynalar mükemmel yansıtıcılığa sahip bir malzemeden yapılmış — her dalga boyunda sıfır absorpsiyon. Mühendisler bir parça çıkarıyor. Gövde kaplaması bir daha asla aynı olmayacak.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Odak noktasını ara — bir şey aydınlatılıyor';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Yakınsama noktasında: yoğunlaştırılmış ışıkta mükemmel korunmuş küçük bir kapsül. İçinde, bilgisayarlarımızın indekslemesi günler süren o kadar detaylı holografik bir yıldız haritası.';

  @override
  String get event_relicGraveyard_title => 'Sonda Mezarlığı';

  @override
  String get event_relicGraveyard_narrative =>
      'Terk edilmiş sondalardan oluşan bir buluta sürükleniyoruz — binlercesi, düzinelerce farklı medeniyetten. Bazıları hesaplanamayacak kadar eski, kozmik radyasyonla metalik fosillere dönüşmüş. Diğerleri hâlâ sönük güçle yanıp sönüyor. Burası bir zamanlar kavşakmış. Bu yoldan geçen her tür arkasında bir şey bırakmış.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Sistematik kurtarma — en iyi teknolojiyi topla';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Mühendislik ekipleri vardiyalı çalışarak yüz farklı tasarımdan uzaylı teknoloji sökülüyor. Fikirlerin kaynaşması her sistemde atılımlara yol açıyor.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Bellek bankalarında saklanan seyrüsefer verilerine odaklan';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Bir düzine türden gelen yıldız haritalarının çapraz referanslanması, bu galaktik kolun şimdiye kadar derlenmiş en eksiksiz haritasını oluşturuyor.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Mezarlığa kendi sondamızı ekle — bir işaret bırak';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'İnsanlığın hikâyesini taşıyan küçük bir sinyal ışığı imal edip koleksiyona ekliyoruz. Mürettebat engin ve kadim bir şeye bağlı hissediyor.';

  @override
  String get event_relicDreamcatcher_title => 'Düş Kapanı';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Örümcek ipeği kadar ince ama binlerce kilometre kapsayan bir filament ağı iki serseri gezegenimsi arasına gerilmiş. Bir ağ değil — insan beyin dalga örüntülerine karşılık gelen frekanslara ayarlı bir anten. Menzinine girdiğimizde uyuyan her kolonist aynı rüyayı görmeye başlıyor: kehribar gökyüzü altında gelişen bir şehir.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Rüya koordinatlarını kaydet — şehir gerçek olabilir';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Nörobilimciler paylaşılan rüyadan uzamsal bilgi çözüyor. Gerçek bir yıldız sistemine karşılık geliyor — ve vizyondaki şehir bir metafor değildi. Orada biri var ve bizi bekliyorlar.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Filament numuneleri topla — malzeme olağanüstü';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Filamentler oda sıcaklığında süper iletken. Sistemlerimize entegre edildiğinde güç kaybını neredeyse sıfıra indiriyor.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Ağı kes ve düş görenleri özgür bırak';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Rüyalar duruyor. Kolonistler şaşkın ama zarar görmemiş uyanıyor. Bazıları kaybedilen vizyonun yasını tutuyor. Diğerleri uzaylı fısıltılar olmadan uyumaktan memnun.';

  @override
  String get event_relicRosetta_title => 'Rosetta Nesnesi';

  @override
  String get event_relicRosetta_narrative =>
      'Bilinmeyen metalden küçük, yoğun bir küp geminin yanından dönerek geçiyor. Her yüzü aynı mesajı farklı bir notasyon sisteminde taşıyor — matematiksel, kimyasal, genetik, akustik, elektromanyetik ve tanımlayamadığımız biri. Kozmos için bir Rosetta Taşı.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Altıncı yüzü çöz — bilinmeyen notasyon';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Aylarca süren analiz bir atılım veriyor: altıncı sistem kütle çekim dalgaları kullanarak uzamsal koordinatları kodluyor. Fizik anlayışımız kuşaksal bir sıçrama yapıyor.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Kimyasal yüzü kullanarak yeni bileşikler sentezle';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Kimyasal notasyon hayal bile etmediğimiz malzemeleri tanımlıyor. Mühendisler Dünya\'daki her şeyden daha hafif ve güçlü gövde yamaları üretiyor.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Genetik yüzü tohum bankalarımıza yayınla';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Genetik notasyon radyasyon direnci ve besin emilimi için optimize edilmiş DNA dizileri içeriyor. Ekinlerimiz ve kolonistlerimiz uzaylı toprakta daha dayanıklı olacak.';

  @override
  String get event_relicGhostFleet_title => 'Hayalet Filo';

  @override
  String get event_relicGhostFleet_narrative =>
      'Tarayıcılar ürpertici bir tablo çiziyor: yüzlerce güçlü, formasyonda hareketsiz asılı uzaylı savaş gemisi filosu. Kadimler — güç okumaları sıfır, gövdeleri çağlar süren mikro çarpmalarla çukurlaşmış. Doğru yol aldıkları savaş hiç gelmedi. Burada ölü ve sabırlı, insan uygarlığının var olduğundan daha uzun süredir bekliyorlar.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Amiral gemisine çık — en iyi teknoloji varsa ondadır';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Amiral gemisinin komuta güvertesi hâlâ sağlam bir taktik bilgisayar barındırıyor. Tahmin algoritmaları bizimkinden yüzyıllar ilerde. Seyrüsefer ve tehdit algılama dramatik olarak gelişiyor.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Eskort gemilerinden zırh kaplaması sök';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Uzaylı savaş gemisi zırhı kavrayamadığımız silahlara dayanacak şekilde tasarlanmış. Gövdemize cıvatalanendirildiğinde koloni gemisini neredeyse yıkılmaz yapıyor.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Kriyojenik sistemlerini kurtar — asker taşıyorlardı';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Uzaylı kriyo teknolojisi hiç düşünmediğimiz prensiplerle çalışıyor. Retrofit sonrası kapsüllerimiz daha soğuk, daha düzgün ve daha güvenilir çalışıyor.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Tarayıcı Kalibrasyon Sapması';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Rutin tanı, son IHY atlamasından sonra birkaç tarayıcı alt sisteminin kalibrasyondan çıktığını ortaya koyuyor. Atmosferik ve sıcaklık tarayıcıları hayalet sinyaller okuyor. Mühendisler onarabilir, ama zaman ve kaynak gerekecek.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Tam kalibrasyon — teknoloji kaynaklarını yönlendir';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Titiz bir yeniden hizalama her iki tarayıcıyı neredeyse mükemmel doğruluğa geri döndürüyor, ama teknoloji bölmesi tükenmiş.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Hızlı çözüm — yalnızca atmosferik olanı kalibre et';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Atmosferik tarayıcı geri dönüyor. Sıcaklık tarayıcı şimdilik güvenilmez kalıyor.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Referans kalibrasyonu için sonda konuşlandır';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Sonda temiz bir referans sinyali sağlıyor. Her iki tarayıcı da kilitlenip otomatik olarak kalibre oluyor.';

  @override
  String get event_ionStormScanners_title => 'İyon Fırtınası Paraziti';

  @override
  String get event_ionStormScanners_narrative =>
      'Bir iyon fırtınası sektörü kasıp kavurarak tarayıcı dizilerini gürültüyle dolduruyor. Mineral ve su algılama sistemleri elektromanyetik parazitin yükünü çekiyor.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Fırtına geçene kadar tarayıcıları kapat';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Tarayıcılar hayatta kalıyor ama kalibrasyon verilerini kaybediyor. Mineral ve su okumaları daha az hassas olacak.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Taramaya devam et — gürültüyü aş';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Ham veri akıyor, ama filtre devreleri iki alt sistemde yanıyor. Gravimetrik taramalar da etkileniyor.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Fırtınayı filtreleri stres testi ve geliştirmek için kullan';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Bilim ekibi gürültüyü adaptif filtreleri eğitmek için kullanıyor. Su tarayıcı gelişiyor, ama mineral tarayıcı hasar alıyor.';

  @override
  String get event_bioScannerContamination_title =>
      'Biyo-Tarayıcı Kontaminasyonu';

  @override
  String get event_bioScannerContamination_narrative =>
      'Yaşam belirtileri tarayıcısı son gezegen taramasından kalan organik maddeyle kontamine olmuş. Her yerde yanlış pozitifler. Gravimetrik tarayıcı da sempatik gürültü gösteriyor.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sensör dizisini sterilize et — tam dekontaminasyon';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Kapsamlı temizlik yaşam belirtileri tarayıcısını geri kazandırıyor ama kimyasal maddeler gravimetrik sensör muhafazasını aşındırıyor.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Yazılım filtresi — algoritmik olarak telafi et';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Filtre yeterince iyi çalışıyor, ama altta yatan kontaminasyon her iki sistemi yavaşça bozacak.';

  @override
  String get event_scannerPowerSurge_title => 'Tarayıcı Güç Dalgalanması';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Tarayıcı bölmesi yakınındaki bir güç hattı aşırı yükleniyor ve birden fazla alt sisteme dalgalanma gönderiyor. Atmosferik ve yaşam belirtileri tarayıcıları doğrudan darbe alıyor.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Gücü yeniden yönlendir — tarayıcıları kurtar';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Mühendislik ekibinin hızlı eylemi hasarı sınırlıyor, ama kalkanlar yönlendirilen enerjiyi alıyor.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Dalgalanmanın seyrini tamamlamasına izin ver';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Tarayıcılar tam darbeyi alıyor. Atmosferik ve yaşam belirtileri okumaları önemli ölçüde bozuluyor.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Dalgalanmayı emmek için bir sondanın güç hücresini feda et';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Sondanın kapasitörleri fazla enerjiyi sünger gibi emiyor. Tarayıcı hasarı ihmal edilebilir düzeyde.';

  @override
  String get event_relicWorldEngine_title => 'Dünya Motoru';

  @override
  String get event_relicWorldEngine_narrative =>
      'Derin sensör taramaları imkânsız bir şey ortaya koyuyor: yıldızlar arasındaki karanlıkta, küçük bir ay büyüklüğünde, uykudaki bir makine. Yüzeyi kıta ölçeğinde mekanizmalarla kaplı — atmosfer işlemcileri, manyetik alan üreteçleri, tektonik dengeleyiciler. Biri dünyalar inşa eden bir makine yapmış.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Terraforming planlarını indir';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Planlar devasa ve kısmen bozuk, ama kurtardığımız her düşman dünyayı yaşanabilir kılabilir. Kolonistlerimiz yeni yurtlarını şekillendirecek.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Gövdesinden inşaat malzemesi topla';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Dünya Motoru\'nun gövdesi hasar gördüğünde kendini onaran meta-malzemelerden yapılmış. Gemimize entegre edildiğinde mevcut gövde gediklerini yavaşça onarıyor.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Yeniden aktive etmeye çalış — hedef sistemimize yönlendir';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Makine kıpırdıyor. Kadim sistemler başlatma sekanslarından geçiyor. Bir enerji ışını uzak bir yıldıza doğru fırlıyor. İşe yarayıp yaramayacağı varışımıza kadar bilinmeyecek, ama okumalar umut verici.';

  @override
  String get event_uneventfulMaintenance_title => 'Rutin Bakım Vardiyası';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Hiçbir şey ilgi gerektirmiyor. Gemi boşlukta istikrarlı bir şekilde uğulduyor ve görev listesi rutin bir bakım penceresi çağrısı yapıyor. Vardiya şefi çabayı nereye odaklayacağını soruyor.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Gövde mikro çatlak mühürlemeye odaklan';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Kıl çatlakları yamarak geçirilen sessiz bir vardiya. Dramatik bir şey yok, ama gövde marjinal olarak daha iyi.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Ön tarayıcıları yeniden kalibre et';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Tarayıcı teknisyeni birkaç saat ince ayar yapıyor. Okumalar çok hafifçe keskinleşiyor.';

  @override
  String get event_uneventfulQuietWatch_title => 'Sessiz Nöbet';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Yıldızlar sessizce süzülüyor. Köprü sakin, aletler istikrarlı. Evrenin senden hiçbir şey istemediği o nadir anlardan biri.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Mürettebatın dinlenmesine izin ver — sessiz bir vardiyayı hak ettiler';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Birkaç saatlik gerçek huzur. İnsanlar daha derin uyuyor, gerilimler azalıyor ve kültür subayı moralde hafif bir yükselme kaydediyor.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Sakinken düşük öncelikli tanı çalıştır';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Küçük sorunlar yakalanıp kaydediliyor. Acil bir şey yok, ama teknoloji kayıtları biraz daha temiz.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Kriyokapsül Kontrolü — Her Şey Normal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Üç aylık kriyokapsül denetimi tek bir alarm olmadan geliyor ve geçiyor. Her kapsül yeşil okuyor. Tıp ekibinin nadir bir sakin anı.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Moral ziyareti için birkaç kolonisti kısaca uyandır';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Üç kolonist bir saatliğine bilince getiriliyor. Hikâyeler paylaşıyor, eski arkadaşlara sarılıyor ve gülümseyerek kriyoya dönüyor.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Uyusunlar — gereksiz uyandırma döngülerini riske atma';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Kapsüller kusursuz çalışmalarına devam ediyor. Sağlıkçılar bunun yerine sessiz bir çay keyfi yapıyor.';

  @override
  String get event_uneventfulCartography_title =>
      'Yıldız Haritacılığı Güncellemesi';

  @override
  String get event_uneventfulCartography_narrative =>
      'Seyrüsefer ekibinin planlı haritacılık güncellemesi olağandışı bir şey ortaya koymuyor — sadece seyahat ettikçe beklenen şekilde kayan yıldız alanları. Seyrüseferciler için sakin bir gün.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Yeni yıldız konumlarına göre seyrüseferi yeniden kalibre et';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Zar zor algılanabilir küçük bir rota düzeltmesi. Seyrüsefer bilgisayarı memnuniyetle uğulduyor.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Koloni arşivi için yıldız haritalarını güncelle';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Gelecek kolonistler bu bölgenin biraz daha iyi haritalarına sahip olacak. Gelecek nesillere küçük bir hediye.';

  @override
  String get event_uneventfulAnniversary_title => 'Geminin Yıl Dönümü';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Fırlatmadan bu yana bir yıl — yoksa iki mi? Derin uzayda zaman bulanıklaşıyor. Mutfakta birisi hazır maddelerden pasta yapmış. Kaptan, durumu nasıl kutlayacağına karar vermeli.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Küçük kutlama — müzik, pasta, Dünya\'ya kadeh kaldırma';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Soğuk boşlukta bir saatlik sıcaklık. İnsanlar gülüyor, bazıları ağlıyor ve herkes biraz daha insan hissediyor.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Her zamanki gibi — varınca kutlarız';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Mürettebat stoacı yaklaşıma saygı duyuyor. Odak keskinleşiyor ve nöbetteki ekip ekstra bir sistem kontrolü yapıyor.';

  @override
  String get event_databaseLiterature_title => 'Dünya\'nın Edebiyat Arşivleri';

  @override
  String get event_databaseLiterature_narrative =>
      'Geminin YZ\'si kültürel veritabanının uzun süredir mühürlü bir bölümünü açıyor: Dünya\'nın tam edebiyat arşivi. Romanlar, şiir, oyunlar — her dili ve çağı kapsayan milyonlarca eser. Mürettebat bir okuma için toplanıyor.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Seçilmiş okumaları gemi genelinde yayınla';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare koridorlarda yankılanıyor. Rumi\'nin dizeleri hidroponik bölmede çalıyor. Mürettebat ne taşıdıklarını hatırlıyor.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Eğitim programları için arşivi indeksle';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Kataloglama çabası geminin bilgi tabanını güçlendiriyor ve kültür subayına yeni öğretim materyalleri veriyor.';

  @override
  String get event_databaseSchematics_title => 'Mühendislik Şeması İncelemesi';

  @override
  String get event_databaseSchematics_narrative =>
      'Bir mühendis geminin veritabanında unutulmuş bir bölüm buluyor: Dünya\'nın son on yılının detaylı mühendislik şemaları — füzyon reaktör tasarımları, meta-malzeme planları ve deneysel tahrik kavramları.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Teknoloji ekibi için tahrik kavramlarına öncelik ver';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Şemalar orijinal yapıcıların uygulayamadığı verimlilik iyileştirmelerini ortaya koyuyor. Teknoloji bölmesi canlanlıyor.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Bilgiyi geniş çapta paylaş — her bölüm faydalansın';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Gövde mühendisleri, tarayıcı teknisyenleri ve sağlıkçılar faydalı içgörüler buluyor. Yükselen dalga her sistemi hafifçe kaldırıyor.';

  @override
  String get event_databaseCorruption_title => 'Kültürel Koruma Taraması';

  @override
  String get event_databaseCorruption_narrative =>
      'Kültürel veritabanının planlı bütünlük kontrolü bit çürümesini ortaya koyuyor — müzik, sözlü tarih ve dini metinlerin bölümleri kurtarılamayacak kadar bozulmuş. Her şey yolculuktan sağ çıkmamış.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Kalanı kurtarmak için teknoloji kaynaklarını yönlendir';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Mühendisler veri kurtarma algoritmaları çalıştırmak için diğer işleri durduruyor. Çoğunu kurtarıyorlar, ama çaba teknoloji bölmesine mal oluyor.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Kolonistlerden kayıp eserleri hafızadan yeniden yazmalarını iste';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Güzel, kusurlu bir çaba. Yeniden inşa edilen Dünya\'ya değil yolculuğa ait. Yeni bir gelenek doğuyor.';

  @override
  String get event_databaseBreakthrough_title =>
      'Arşivlenmiş Araştırma Atılımı';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Veritabanındaki eski Dünya araştırma makalelerini çapraz referanslayan bir fizikçi, birleştirildiğinde uzun menzilli spektral analiz için yeni bir yöntem tanımlayan iki bağımsız çalışma keşfediyor. Sonuçlar muazzam.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Yeni analiz yöntemini tarayıcı dizisine uygula';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Tarayıcı ekibi hummalı çalışıyor. Günler içinde spektral çözünürlük ikiye katlanıyor. Uzak gezegenler sırlarını açığa çıkarıyor.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Keşfi gemi genelinde yayınla — daha fazla araştırmaya ilham ver';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Atılım disiplinlerarası çalışma dalgası başlatıyor. Teknoloji genel olarak gelişiyor ve mürettebat entelektüel olarak canlı hissediyor.';

  @override
  String get event_alienFleetSighting_title => 'Ufuktaki Uzaylı Filosu';

  @override
  String get event_alienFleetSighting_narrative =>
      'Uzun menzilli tarayıcılar dehşet verici bir tablo çiziyor: yüzlerce uzaylı gemi, yıldız alanı boyunca mükemmel formasyonda hareket ediyor. Gemimizi cüce bırakıyorlar. Rotaları saatler içinde sensör menzilimize girecek. İlk temas — onların şartlarında ya da bizimkinde.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Sessizce gözle — karart ve izle';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Gemi minimum emisyona iniyor. Filo parlak balinalar sürüsü gibi geçiyor, kıç sularında saklanan minik insan gemisinden habersiz. Tarayıcı verileri olağanüstü.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'İlk teması dene — selamlama ilet';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Tek bir gemi formasyondan ayrılıp yaklaşıyor. Bir veri patlaması geliyor — yıldız haritaları, uyarılar ve müzik olabilecek bir şey. Sonra filoya geri katılıyor ve gidiyorlar.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Kaç — derhal rota değiştir';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Gemi ters yönde tam güç yakıyor. Rota değişikliği pahalı ve stresli, ama filo bizi hiç fark etmiyor. Bir bedel karşılığında güvenlik.';

  @override
  String get event_alienTradeOffer_title => 'Uzaylı Ticaret Teklifi';

  @override
  String get event_alienTradeOffer_narrative =>
      'Bizden küçük ama muazzam güç yayan bir uzaylı gemisi hızımıza eşlenip basit, tekrarlayan bir mesaj yayınlıyor. Dilbilimcilerimiz saatler içinde çözüyor: bir ticaret teklifi. Üç değişim kategorisi öneriliyor.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Uzaylı yıldız haritaları karşılığında teknik şemaları takas et';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Tahrik tasarımlarımızı iletiyoruz; keşfedilmemiş uzayın geniş bir bölümünü kapsayan seyrüsefer verileriyle yanıt veriyorlar. Haritalarımız dramatik olarak gelişiyor.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Gemi onarımları karşılığında kültürel veri takas et';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Müziğimizi, sanatımızı ve tarihimizi gönderiyoruz. Karşılığında uzaylı onarım dronları gövdeyi sarıp tanımlayamadığımız malzemelerle gedikleri kapatıyor. Gövde parlıyor. Ruhumuz paylaşıldı.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Ticareti reddet — risk çok büyük';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Uzaylı gemisi bir süre bekliyor, sonra olaysız ayrılıyor. Mürettebat rahatlamış ama neyin kaybedildiğini merak ediyor.';

  @override
  String get event_alienWarning_title => 'Uzaylı Uyarı Yayını';

  @override
  String get event_alienWarning_narrative =>
      'Gemideki her hoparlör uzaylı bir sesle cızırdıyor — YZ\'miz gerçek zamanlı çeviriyor: \"İLERİDE TEHLİKE. GERİ DÖN. KARANLIK YUTAR.\" Yayın tekrarlanıyor, sonra ölüyor. Uzun menzilli sensörler mevcut rotamızda anomal bir boşluk gösteriyor.';

  @override
  String get event_alienWarning_choice0_text =>
      'Uyarıyı dikkate al — boşluğun etrafından rota değiştir';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Dolambaç seyrüsefere önemli yük bindiriyor, ama boşluğun kenarını geçerken sensörler doğruluyor: o bölgeye giren hiçbir şey çıkmamış. Bilinmeyen seslere borçluyuz.';

  @override
  String get event_alienWarning_choice1_text =>
      'Uyarıyı görmezden gel — rotada kal';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Yarıp geçiyoruz. Boşluk yoğun mikro döküntü bölgesi çıkıyor. Gövde ve tarayıcılar uzak tarafı geçmeden önce ceza alıyor.';

  @override
  String get event_alienWarning_choice2_text =>
      'Boşluğun kenarını bir sondayla araştır';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Sonda boşluğa girip sessizleşmeden önce olağanüstü veriler iletiyor. Tarayıcı ekibi değerli okumalar çıkarıyor, ama sonda kayıp.';

  @override
  String get event_nativeSignalDetected_title => 'Hedef Dünyadan İletimler';

  @override
  String get event_nativeSignalDetected_narrative =>
      'İletişim dizisi hedef gezegenimizden kaynaklanan yapılandırılmış elektromanyetik sinyaller yakalıyor. Tartışmasızlar: düzenli, modüle edilmiş, yapay. Orada zaten biri var. Koloninin tüm öncülü bir anda değişiyor.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Barışçıl bir selamlama ilet — varışımızı duyur';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Cesur bir seçim. Yayınımızdan sonra sinyal örüntüsü değişiyor — bizi duydular. Bunun karşılama mı uyarı mı olduğu belirsiz, ama kapı açık.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Yalnızca dinle — kendimizi açığa çıkarmadan önce öğren';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Aylarca pasif dinleme yerli medeniyetin bir resmini oluşturuyor. Temkinliler, toprak sahibi, ama düşmanca değiller. Bilgilenmiş varıyoruz.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Sinyali boz — yaklaştığımızı bilmelerini engelle';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Bozma işe yarıyor, ama tanışmadığımız bir halka karşı saldırganlık eylemi. Mürettebat ahlaki konuda bölünmüş.';

  @override
  String get event_nativeProbeEncounter_title => 'Uzaylı Sonda Yakalama';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Küçük, zarif bir sonda — insan yapımı olmayan — hızımıza eşlenip gemiyi taramaya başlıyor. Tasarım dili hedef gezegenden gelen sinyallerle eşleşiyor. Yerliler bir karşılama komitesi göndermiş. Ya da bir gözetleme dronu.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Taramaya izin ver — saklayacak bir şeyimiz olmadığını göster';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Sonda incelemesini tamamlayıp gezegene veri patlaması iletiyor. Dakikalar sonra bize ikinci bir patlama geliyor: atmosferik veriler, güvenli iniş bölgeleri ve bir davetiye olabilecek bir şey.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Sondayı incelemek için yakala';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Sonda çekici ışınla kargo bölmesine alınıyor. Teknolojisi büyüleyici ama yakalama eylemi yapıcıları tarafından düşmanca görülebilir.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Yok et — niyetini bilmiyoruz';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Tek bir darbe sondayı parçalara ayırıyor. Mürettebat daha güvende hissediyor, ama potansiyel bir köprü yakılmış olabilir.';

  @override
  String get event_nativeCulturalExchange_title => 'İlk Kültürel Değişim';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Gezegen yerlileriyle dar bantlı bir veri bağlantısı kuruldu. Bize görüntüler, sesler ve matematiksel diziler gönderiyorlar. Dilbilimcilerimiz ve kültür subayları yanıt hazırlamak için gece gündüz çalışıyor. Bu, insanlık tarihinin en önemli konuşması.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Dünya\'nın sanatını ve müziğini paylaş — güzellikle öncülük et';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Bach\'ı, Aborijin nokta resimlerini ve yapraklar üzerinde yağmur sesini iletiyoruz. Yanıt mürettebatı ağlatan uzaylı harmoniklerin çağlayanı. Anlayış derinleşiyor.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Bilimsel bilgi paylaş — akılla öncülük et';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Periyodik tablomuzu, yıldız haritalarımızı ve fiziğimizi iletiyoruz. Düzeltmeler ve eklemelerle yanıt veriyorlar. Teknolojimiz sıçrıyor, ama değişim işlemsel hissettiriyor.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Fiziksel numunelerle sonda gönder — DNA, tohum, su';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Bir sonda Dünya\'nın özünü uzaylı ellere taşıyor. Yerliler benzer bir hediyeyle yanıt veriyor — kendi dünyalarından biyolojik numuneler. Biyologlar coşku içinde.';

  @override
  String get event_landingThrusterMalfunction_title => 'İniş İticisi Arızası';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Rutin sistem kontrolü sırasında iniş iticileri yanlış ateşleniyor — alt güvertelerden keskin bir patlama yankılanıyor ve gemi sarsılıyor. Tanı birincil iniş dizisinde çatlamış bir yakıt enjektörü ortaya koyuyor.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Yedek enjektör imal etmek için teknoloji ekibini yönlendir';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Mühendisler çift vardiya çalışıp yedek gövde alaşımından yeni enjektör üretiyor. İniş sistemi geri dönüyor, ancak teknoloji bölmesi tükenmiş.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Vakumda itici kalibrasyonunu test etmek için sonda konuşlandır';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Sonda mühendislerin hasarlı enjektör etrafında yeniden kalibrasyon yapmasını sağlayan gerçek zamanlı itki verileri sağlıyor. Tam bir onarım değil, ama iniş sistemi dengeleniyor.';

  @override
  String get event_landingSimDrill_title => 'İniş Simülasyon Tatbikatı';

  @override
  String get event_landingSimDrill_narrative =>
      'Gezegene iniş yaklaşırken kaptan tam bir iniş simülasyonu emri veriyor. Mürettebat kemerlerini bağlıyor, sistemler yük altında test ediliyor ve sanal alçalma başlıyor.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Teknik hassasiyete odaklan — tatbikatı kitaba göre yap';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Simülasyon derhal düzeltilen iki küçük kalibrasyon hatası ortaya koyuyor. İniş sistemi bunun için daha sıkı.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Gemi genelinde etkinlik yap — simülasyonu yayınla';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Kolonistler gemideki her ekrandan izliyor. Simüle edilmiş alçalmanın paylaşılan deneyimi — sarsıntı, tezahürat — mürettebatı başka hiçbir şeyin yapamayacağı gibi bağlıyor.';

  @override
  String get event_dysonSphere_title => 'Dyson Küresi';

  @override
  String get event_dysonSphere_narrative =>
      'Sensörler imkânsız bir yapı tespit ediyor — uzak bir yıldızı çevreleyen, tüm enerji çıkışını hasat eden kısmi bir Dyson küresi. Bunu inşa eden her kim insanlığın hayal ettiği her şeyi aşmış. Yaklaştıkça bir yanaşma limanı açılıyor gibi görünüyor.';

  @override
  String get event_dysonSphere_choice0_text => 'Yanaş ve yapıyı keşfet';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'İçeride otomatik sistemler kapasitelerimizi yüzyıllar ileri taşıyan teknoloji hediye ediyor. Beş mühendis istasyonun savunma mekanizmalarına kurban gidiyor. İnşaatçılar uzaylı alaşımlarla yeniden inşa ediliyor.';

  @override
  String get event_dysonSphere_choice1_text => 'Dışarıdan enerji hasat et';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Kürenin ışıyan taşmasında yıkanıyoruz. Gemideki her sistem maksimuma şarj oluyor. Mürettebat şaşkın sessizlikle izliyor.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Güvenli mesafeden incele ve yola devam et';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Uzun menzilli taramalar mühendislik anlayışımızda devrim yaratan inşaat prensiplerini ortaya koyuyor.';

  @override
  String get event_nanotechPlague_title => 'Nanoteknoloji Salgını';

  @override
  String get event_nanotechPlague_narrative =>
      'Ölü bir medeniyetin silah programından kalma başıboş nanomakine bulutu gövde mikro çatlaklarından gemiye sızıyor. Zorunlu olmayan sistemleri moleküler düzeyde söküyorlar. Sürü hızla yayılıyor.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'EMP patlaması — etkilenen bölümlerdeki her şeyi yak';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Elektromanyetik darbe nanitleri yok ediyor ama o bölümlerdeki kendi elektroniklerimizi de hasarlıyor. Patlama bölgesindeki kolonistler yanıklar alıyor.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Etkilenen bölümleri vakuma boşalt';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Atmosfer olmadan nanitler yavaşlayıp ölüyor. Ama bölümler depolanmış malzemeler ve kültür arşivleriyle birlikte kaybediliyor.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Yeniden programla — silahları araca dönüştür';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Parlak bir mühendis nanit kodunu kırıyor, ama en çok etkilenen bölümlerdeki beş mürettebat zaten kurtarılamayacak durumda. Yeniden programlanan sürü gemiyi yok etmek yerine onarmaya başlıyor.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Karşı sürü oluşturmak için bir sondanın YZ çekirdeğini feda et';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Sondanın işlemcileri savunma nanit sürüsünü kontrol etmek için yeniden amaçlandırılıyor. Salgın minimum kayıpla nötralize ediliyor.';

  @override
  String get event_prematureAwakening_title => 'Erken Uyanış';

  @override
  String get event_prematureAwakening_narrative =>
      'Kriyokapsül bölmesindeki çağlayan arızası 200 kolonisti onlarca yıl erken uyandırıyor. Şaşkın, korkmuş ve iniş aşaması için ayrılmış kaynakları tüketiyorlar. Aralarında gemiden başka bir şey bilmeyen çocuklar var.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Mürettebata entegre et — daha fazla el, daha fazla umut';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Uyanan kolonistler üretken mürettebat üyelerine dönüşüyor. Yirmi kolonist ani çözülmeden kurtulamıyor, ama geri kalanı toparlanıyor.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Yeniden dondur — riskli ama gerekli';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Yeniden dondurma süreci kusurlu. Çoğu hayatta kalıyor, ama bazıları kaybediliyor. Hayatta kalanlar psikolojik izler taşıyor.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Geminin kendi bölümlerini ver';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'On kolonist acil çözülme komplikasyonlarından kaybediliyor, ama geri kalanı gemi içinde bir mikro koloni oluşturuyor.';

  @override
  String get event_stowawaysAdvanced_title => 'Gizli Yolcular';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Kargo ambarının derinliklerinde, sahte bölmelerin ardında güvenlik tam bir gizli topluluk keşfediyor — fırlatmadan önce yasa dışı yollarla gelen 80 kişi. Tüm yolculuk boyunca geminin duvarlarında yaşamışlar, kendi bahçelerini ve güç bağlantılarını idame ettirmişler.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Hoş karşıla — 80 kolonist daha bir hediye';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Gizli topluluk mürettebatı şaşkına çeviren doğaçlama mühendislik ve beceriklilik getiriyor. Bahçeleri ana biyodoma naklediliyor.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Hapset ve çalınan kaynakları yeniden dağıt';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Kurtarılan malzemeler birkaç sistemi güçlendiriyor, ama ailelerin — çocuklar dahil — hapsedilmesi mürettebatın vicdanını sızlatıyor.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Müzakere et — teknolojilerini paylaşırlarsa eşit olarak katılsınlar';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Doğaçlama güç hücreleri ve hidroponik hileleri gemi verimliliğini artırıyor. Gergin ama verimli bir entegrasyon başlıyor.';

  @override
  String get event_alienReservation_title => 'Uzaylı Koruma Alanı';

  @override
  String get event_alienReservation_narrative =>
      'Uzaylı bir doğa koruma alanına rastlıyoruz — kasıtlı olarak yaşanabilir gezegenlerle tohumlanmış ve otomatik nöbetçilerle korunan bir uzay bölgesi. Muhafızlar bizi tarıyor ve bir mesaj yansıtıyor: \"TEK bir dünyaya yerleşebilirsiniz. Akıllıca seçin. Diğerlerine müdahale ederseniz kaldırılırsınız.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Minnetle kabul et — tek bir dünya yeterli';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Nöbetçiler bizi hazırlanmış bir dünyaya yönlendiriyor. Taramalar insan yaşamı için olağanüstü uygun olduğunu ortaya koyuyor.';

  @override
  String get event_alienReservation_choice1_text =>
      'Daha iyi şartlar için müzakere et — insanlığın büyümeye alanı lazım';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Nöbetçiler talebimizi değerlendiriyor. Tarayıcılarımızı koruma alanının ötesindeki düzinelerce sistem hakkında verilerle yükseltiyorlar.';

  @override
  String get event_alienReservation_choice2_text =>
      'Reddet ve git — kafese konmayacağız';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Mürettebat günlerce tartışıyor. Güvenlik yerine özgürlük. Nöbetçiler ayrılmamıza izin veriyor: yakındaki tehlikelerin haritasıyla birlikte.';

  @override
  String get event_cosmicHorror_title => 'Yıldızlar Arasındaki Varlık';

  @override
  String get event_cosmicHorror_narrative =>
      'İlerideki yıldızları kapatan devasa ve karanlık bir şey — ne bulutsu, ne kara delik. Kütlesi, enerji imzası, elektromanyetik varlığı yok. Ama ORADA ve bizim farkında. Ön gözlem güvertesine yakın mürettebat ezici bir dehşet bildiriyor. İkisi sedatize edildi.';

  @override
  String get event_cosmicHorror_choice0_text => 'Tam geri — ŞİMDİ uzaklaş';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Gemi kendi momentumuna karşı zorlanıyor. Kaçıyoruz, ama dehşet kalıcı. Bazı kolonistler psikolojik olarak asla iyileşmiyor.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Gözlem güvertesini mühürle ve yarıp geç';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Karanlıkta üç gün kör uçuş. Yıldızlar geri döndüğünde mürettebat rahatlamayla ağlıyor. Gövde kimsenin açıklayamadığı örüntülerle işlenmiş.';

  @override
  String get event_cosmicHorror_choice2_text => 'İletişim kurmaya çalış';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Varlık yanıt veriyor — kelimelerle değil, doğrudan mürettebatın zihinlerine bastırılan bilgiyle. Yıldız haritaları, fizik, evren hakkında gerçekler. Mürettebatın yarısı aydınlanmış. Diğer yarısı kırılmış.';

  @override
  String get event_cosmicHorror_choice3_text => 'Haraç olarak bir sonda sun';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Sonda karanlığa sürüklenip kayboluyor. Varlık tatmin olmuş gibi hafifçe büzülüyor. Yolumuz açılıyor.';

  @override
  String get event_meteorGlancingHit_title => 'Teğet Meteor Darbesi';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Kaya boyutunda bir meteor gövdenin iskele tarafını sığ bir açıyla sıyırıyor. Darbe üç metre dış kaplamayı koparıyor ve tüm çerçeveye şok dalgaları gönderiyor.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Tüm onarım botlarını derhal gediğe yönlendir';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Botlar hasarın en kötüsünü mühürlüyor, ama teknoloji rezervlerinin çılgınca çekilmesi ikincil sistemleri bakımsız bırakıyor.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'İtkiyi azalt ve mürettebatın elle yamamasına izin ver';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Daha yavaş ilerleme, ama mürettebat sağlam iş çıkarıyor. Sürüklenirken azaltılmış itki penceresinden seyrüsefer zarar görüyor.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Yama malzemesi olarak bir sondanın gövde kaplamasını feda et';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Sonda parçalanıyor. Yama tutuyor ve gövde bütünlüğü bir keşif aracı daha azına karşılık korunuyor.';

  @override
  String get event_meteorDirectImpact_title => 'Doğrudan Meteor Çarpması';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Yarım tonluk bir demir meteorit 40 km/s\'yi aşan bağıl hızla ön kargo bölmesini delip geçiyor. Bitişik koridordaki iki mürettebat kayıp. Bölme vakuma açık.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Kargo bölmesini mühürle ve hayatta kalanları sonra ara';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Bölme doksan saniyede mühürleniyor. İki mürettebat çoktan tahliye etmişti — zar zor. Gövde kalıcı yara izi alıyor.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Mühürlemeden önce tam kurtarma operasyonu başlat';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Bir hayatta kalan çıkarılıyor. Uzun maruz kalma yapısal hasarı artırıyor ve teknoloji rezervlerini tüketiyor.';

  @override
  String get event_meteorDebrisField_title => 'Döküntü Alanı — Kalıntı Yağmuru';

  @override
  String get event_meteorDebrisField_narrative =>
      'Uzun menzilli sensörler dağınık bir meteor parçası alanını zaten içine girene kadar tespit edemedi. Yüzlerce yumruk büyüklüğünde kaya rastgele aralıklarla gövdeye çarpıyor.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Kalkanları kaldır ve tam hızla yarıp geç';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Kalkanlar çoğu darbeyi emiyor, ama çarpmaların hacmi onları alt ediyor. Gövde ve kalkan sistemleri bozuluyor.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Motorları kes ve sürüklen — profilimizi küçült';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Gergin altı saatlik sessizlik. Güçsüz sürüklenme seyrüseferi bozuyor, ama gövde çok daha az darbeyle çıkıyor.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Ön kalkan olarak sonda konuşlandır';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Sonda bombardımanın yükünü çekiyor. Gemi onun gölgesinde küçük çiziklerle geçiyor.';

  @override
  String get event_meteorShowerDense_title =>
      'Beklenmedik Yoğun Meteor Yağmuru';

  @override
  String get event_meteorShowerDense_narrative =>
      'Önümüzde bir yerde parçalanmış serseri bir kuyrukyıldızı ve biz döküntü akışının tam ortasına uçtuk. Tarayıcı dizileri parçalarla bombardıman ediliyor ve iniş sistemi sensör muhafazası çoktan doğrudan darbe almış.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'İniş sistemini koru — gemiyi döndür';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Dönüş iniş sistemini koruyor ama atmosferik tarayıcı dizisini bombardımanın tam önüne koyuyor.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Tarayıcı dizilerini koru — değiştirilemezler';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Tarayıcı bankaları çoğunlukla sağlam kalıyor. İniş sistemi yaşamak zorunda kalacağımız orta düzey şarapnel hasarı alıyor.';

  @override
  String get event_solarEmpBurst_title => 'EMP Patlaması — Yıldız Kökenli';

  @override
  String get event_solarEmpBurst_narrative =>
      'Bir ışık günü mesafesinden geçtiğimiz kompakt yıldız kalıntısı odaklanmış bir elektromanyetik darbe boşaltmış. Gemideki korumasız her devre risk altında. Ne koruyacağımıza karar vermek için saniyelerimiz var.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Tüm darbe korumasını seyrüsefer ve yaşam desteğine yönlendir';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Seyrüsefer ve yaşam desteği sağlam kalıyor. Tarayıcı paketi ve teknoloji bölmesi darbeyi korumasız alıyor — ikisi de ağır hasar görüyor.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Tarayıcı dizilerini ve teknoloji bölmesini koru';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Bilim ve mühendislik sistemleri korunuyor. Devreleri yavaşça toparlanırken seyrüsefer saatlerce bozuk çalışıyor.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Her şeyi kapat ve darbe sonrası yeniden başlat';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Soğuk yeniden başlatma acı verici — on iki saat manuel yeniden başlatma. Ama hiçbir sistem geri dönüşümsüz yanmıyor.';

  @override
  String get event_solarRadiationWave_title =>
      'Radyasyon Dalgası — Sınıf 4 Maruziyet';

  @override
  String get event_solarRadiationWave_narrative =>
      'Beklenmedik yoğunlukta güneş radyasyonu patlaması geminin orta güvertelerini kasıp kavuruyor. Kriyokapsül bölmeleri maruz kalma yolunda. Askıda olan kolonistlerin bu dozaj düzeyinde sert radyasyona karşı doğal koruması yok.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Radyasyon kalkanı olarak kriyokapsül bölmelerini soğutucuyla doldur';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Soğutucu radyasyonun çoğunu emiyor. Kriyokapsüller hayatta kalıyor, ama soğutucu sistemin kendisi kısmen bozuluyor. En çok etkilenen kapsüllerdeki on beş kişi kurtulamıyor.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Vakum tamponu oluşturmak için dış güverte atmosferini boşalt';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Vakum katmanı nüfuz eden radyasyonu önemli ölçüde azaltıyor. Boşaltılan bölümlere en yakın kapsüllerdeki yirmi kolonist ölümcül maruziyete uğruyor.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Gücü manyetik saptırıcılara yönlendir';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Saptırıcılar radyasyon maruziyetini üçte iki oranında kesiyor. Sekiz kolonist saptırıcı kapsamındaki boşluklardan ölümcül doz alıyor.';

  @override
  String get event_coronalMassEjection_title =>
      'Taçküre Kütle Atılımı — Tam Güç';

  @override
  String get event_coronalMassEjection_narrative =>
      'Benzeri görülmemiş ölçekte bir taçküre kütle atılımı arkamızdan bizi yakalıyor. Plazma bulutu bir saat içinde gemiyi yutacak. Kalkanlarımız bu sınıf olay için tasarlanmamış. Hiçbir seçenek temiz değil.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Kaç — motorları yüzde yüz yirmiye it';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Maruziyeti azaltacak kadar mesafe kazanıyoruz. Motorlar aşırı ısınıyor ve seyrüsefer bilgisayarı her alanda yapısal aşırı stres uyarıları veriyor.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Yakındaki bir gezegenimsin manyetik gölgesine sığın';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Gezegenimsin alanı atılımın çoğunu saptırıyor. Keşfedilmemiş bir cisme bu kadar yakın seyrüsefer gövdeyi çizip iniş sistemi sensörlerini zorluyor.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Kozmik Işın Patlaması — Tarayıcı Paraziti';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Ultra yüksek enerjili kozmik ışın patlaması tüm tarayıcı elektroniklerini gürültüyle doyurmuş. Mineralojik ve gravimetrik diziler saçmalık üretiyor.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Tam kalibrasyon döngüsü — gemiyi geçici olarak çevrimdışı al';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Dört saatlik dikkatli kalibrasyondan sonra tüm tarayıcılar temiz dönüyor. Karartma penceresinde azalan durumsal farkındalıktan seyrüsefer zarar görüyor.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Yalnızca en kritik dizileri yama — geri kalanı gürültülü bırak';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Gravimetrik ve yaşam belirtileri tarayıcıları geri dönüyor. Mineral ve sıcaklık dizileri süresiz olarak bozuk kalıyor.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Yedek parça için sonda telemetri donanımını feda et';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Bir sondanın sensör paketini parçalamak uzun kalibrasyon olmadan tarayıcı paketini geri kazandırmak için bileşenler veriyor.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Kozmik Işın Patlaması — Kolonist Maruziyeti';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'İkincil kozmik ışın yağmuru bölme 6\'daki kriyokapsül korumasını delmiş. Askıdaki kolonistler iyonlaştırıcı radyasyondan birikimli DNA hasarı alıyor.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Acil çözülme — etkilenen kolonistleri bilince getir';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'İki yüz kolonist erken uyandırılıyor. En ağır DNA hasarı olan kırkı tedaviye yanıt vermiyor.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Bölme 6\'yı korumak için gövde zırh kaplamasını yeniden yönlendir — yapısal bedel';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Koloni kurtarılıyor, ama gövdenin bir bölümünden zırh sökülmesi gemiyi o bölgede yapısal olarak savunmasız bırakıyor.';

  @override
  String get event_coolantLeak_title => 'Soğutucu Hattı Kopması';

  @override
  String get event_coolantLeak_narrative =>
      'Birincil soğutucu hattı reaktör duvarının arkasında kopmuş. Aşırı ısınmış kriyojenik sıvı kritik teknoloji bölmesi kanallarını barındıran bir kavşağa püskürüyor. Reaktör sıcaklığı yükseliyor.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Reaktörü kapat ve soğumasını bekle — tam karartmayı kabul et';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Kontrollü kapatma felaketi önlüyor. On iki saat bataryayla yaşam desteği ürkütücü ve sistemler kusursuz yeniden başlamıyor.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Hasar kontrol ekibi gönder — mürettebat maruziyetini riske at';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Ekip kopmayı kırk dakikada mühürlüyor. Bir mürettebat aşırı ısınmış soğutucu maruziyetinden hayatını kaybediyor. Onarım sağlam.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Acil kaynak olarak kriyokapsül bölmesinden soğutucu yönlendir';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Reaktör dengeleniyor. Kriyokapsül bölmesi altı saat güvenli eşiklerin üzerinde çalışıyor — küçük ama gerçek hücresel hasar birikimi.';

  @override
  String get event_powerGridFailure_title => 'Ana Güç Şebekesi Arızası';

  @override
  String get event_powerGridFailure_narrative =>
      'Çağlayan bir arıza ana güç şebekesini devirmiş. Yedek sistemler yaşam desteği ve kriyokapsül ısıtmasını tutuyor, ama seyrüsefer, tarayıcılar ve inşaatçı bölmesi karanlık. Her çevrimdışı dakika rota doğruluğuna mal oluyor.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Önce seyrüsefer ve tarayıcıyı geri getir — uzatılmış inşaatçı kapalılığını kabul et';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Seyrüsefer ve tarayıcı sistemleri iki saatte çevrimiçi dönüyor. İnşaatçı bölmesi kritik bir bakım döngüsünü kaçırıyor.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Önce inşaatçıları geri getir — onarımı hızlandırmak için kullan';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'İnşaatçılar gücü verimli yeniden yönlendiriyor. Tam şebeke restorasyonu daha hızlı oluyor, ama seyrüsefer uzatılmış karartma sırasında ciddi sapıyor.';

  @override
  String get event_lifeSupportGlitch_title => 'Yaşam Desteği Çağlayan Arızası';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'Yaşam desteği yönetim YZ\'si hata döngüsüne girmiş, karbondioksit temizleme aralıklarını tahmin edilemez şekilde değiştiriyor. Yaşanan güvertelerde CO₂ seviyeleri dalgalanıyor. Mürettebat baş ağrısı geliştiriyor; bazıları çoktan etkisiz kalmış.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Yaşam desteği YZ\'sini zorla sıfırla';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Sıfırlama döngüyü temizliyor ama on saat manuel geçersiz kılmalar çalışıyor. Seviyeler normalleşmeden üç mürettebat CO₂ birikimine yenik düşüyor.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Yazılım döngüsünü yama — daha yavaş ama güvenli';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Yazılım ekibi altı gergin saat boyunca arızayı izole edip yamalıyor. CO₂ seviyeleri yavaşça normalleşiyor.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Etkilenen güverteleri tahliye et ve minimal yaşam desteğiyle çalış';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'İki kolonist tahliye karmaşasında kaybediliyor. YZ soğuk yeniden başlatıldıktan sonra sistemler normalleşiyor.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Su Geri Dönüştürücü Arızası';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Birincil su geri kazanım ünitesi tutukluk yapmış. Yedek ünite zaten tam kapasitede çalışıyor. Müdahale olmadan mürettebat kırk sekiz saat içinde acil tayında olacak.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Geri kazanımcıyı yeniden inşa etmek için mevcut her teknoloji elini çek';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Ünite otuz saatte yeniden inşa ediliyor. Zaten zayıf düşmüş dört mürettebat su kaybından kurtulamıyor.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Acil içme kaynağı olarak kriyokapsül soğutucu rezervlerini yönlendir';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Mürettebat ayakta kalıyor, ama ısınan kapsüllerdeki sekiz kolonist geri dönüşümsüz hücresel hasar alıyor.';

  @override
  String get event_navComputerReboot_title =>
      'Seyrüsefer Bilgisayarı Acil Yeniden Başlatma';

  @override
  String get event_navComputerReboot_narrative =>
      'Seyrüsefer bilgisayarı rota düzeltmesi ortasında kilitlenmiş, gemiyi kontrolsüz yavaş dönüşte bırakmış. Her düzeltilmemiş dönüş saniyesi planlanan yörüngeden sapamamızı artırıyor.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Derhal yeniden başlat — tam karartma süresini kabul et';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Sistem yüklenirken dört saat kör uçuş. Dönüş durduruluyor, ama rota hatası önemli.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Önce dönüşü durdurmak için elle itkici kontrolü kullan';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Yetenekli pilotluk yeniden başlatmadan önce dönüşü durduruyor. Seyrüsefer daha küçük rota hatasıyla geri geliyor, ama elle yakma gövdeyi zorluyor.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Yedek seyrüsefer ünitesine sonda telemetrisi besle';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Sondanın atalet verileri yedek üniteye rotayı korumak için yeterli referans veriyor. Ana seyrüsefer temiz yeniden başlıyor.';

  @override
  String get event_crewAirlocked_title => 'Hava Kilidindeki Mürettebat';

  @override
  String get event_crewAirlocked_narrative =>
      'Tıbbi gözlem için erken uyandırılmış bir kolonist kendini harici hava kilidine barikat kurmuş ve dış kapıyı çeviriyor. İletişime yanıt vermiyor. Derin uzayın psikolojik bedeli onda bir şeyleri kırmış.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Hava kilidini uzaktan geçersiz kıl — zorla mühürle';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Döngüyü tamamlayamadan kapı kilitleniyor. Sedatize edilip tıbbiye iade ediliyor. Mürettebat sarsılmış ama birlik içinde.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Geri konuşması için danışman gönder';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Üç çaresiz saat sonra danışman onu canlı çıkarıyor. Olay yaşanan güvertelerde daha geniş bir ruh sağlığı krizini tetikliyor.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Koridoru mühürle ve olayın çözülmesine izin ver';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Hava kilidi döner. Kayıp kaydedilir. Kalan mürettebat aylarca bunun ağırlığını taşır.';

  @override
  String get event_crewCryopodSabotage_title => 'Kriyokapsül Bölmesi Sabotajı';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Güvenlik kayıtları, üç ay önce rutin rotasyon için uyandırılmış bir mürettebatın bölme 4\'teki kriyokapsül ısıtma elemanlarını metodik olarak devre dışı bıraktığını gösteriyor. Yüzleşildiğinde kolonistlerin yaşayan mürettebata ait kaynakları tüketen asalaklar olduğunu haykırıyor.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Derhal tutukla ve izole et';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Kısıtlanıyor. Alarm öncesinde kırk kapsül tehlikeye atılmıştı. Acil onarım ekipleri çoğunu kurtarıyor, ama hepsini değil.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Müzakere et — harekete geçmeden önce şikâyetlerini dinle';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Müzakere daha derin bir moral krizini ortaya koyuyor. Geri adım atıyor, ama o zamana kadar altmış kapsül kurcalanmış.';

  @override
  String get event_crewSupplyHoarder_title => 'Malzeme İstifçiliği Keşfi';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Envanter denetimi küçük bir mürettebat grubunun sistematik olarak tıbbi malzeme, gıda tayını ve yedek teknoloji bileşenlerini gizli bir depoya yönlendirdiğini ortaya koyuyor. Gerekçeleri: görevin başarılı olacağına inanmıyorlar ve eve dönüş için hazırlanıyorlar.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Her şeye el koy ve grubu alenen azarla';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Depo neredeyse sağlam kurtarılıyor. Mürettebat içindeki güven ciddi şekilde kırılıyor. Verimlilik haftalarca düşüyor.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Sessizce yeniden görevlendir — gösteri yapma';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Durum panik olmadan yatıştırılıyor. Bazı malzemeler kurtarılamaz ve altta yatan umutsuzluk hiçbir zaman düzgünce ele alınmıyor.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Mürettebata sun — demokratik bir mahkeme';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Mahkeme süreci topluluk adaleti duygusunu geri kazandırıyor. Skandaldan gelen moral darbesi kolektif karar almakla dengeleniyor.';

  @override
  String get event_crewMutinyAttempt_title =>
      'İsyan — Motor Dairesi Ele Geçirildi';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'On dokuz mürettebattan oluşan bir hizip motor dairesini kilitleyip gemiyi geri döndürmek için oylama talep ediyor. Acil durum geçersiz kılma panellerini devre dışı bırakmışlar. Geri kalan mürettebat monitörlerden izliyor.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Müzakere et — görev hakkında gerçek bir oylama hakkı ver';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Oylama yapılıyor. Görev kıl payı devam ediyor. Hizip geri çekiliyor, ama kültürel yara derin.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Motor dairesinin gücünü kes ve zorla geri al';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Güvenlik dört saatte odayı geri alıyor. Üç yaralanma. Elebaşlar hapsediliyor. Seyrüsefer tüm süre boyunca manuel moddaydı ve ciddi sapmış.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Motor dairesini havalandırma sisteminden uyku gazıyla doldur';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Gaz dağılıyor. Grup tutukevinde yaralanmadan uyanıyor. Mürettebat komutanlığın yaşam desteğini ne kadar hızlı silahlandırdığından rahatsız.';

  @override
  String get event_hullFatigueStress_title =>
      'Gövde Yorgunluğu — Stres Çatlakları Tespit Edildi';

  @override
  String get event_hullFatigueStress_narrative =>
      'Yapısal bütünlük taramaları geminin omurgasına yayılan bir mikro çatlak ağı ortaya koyuyor — yılların termal döngüsü ve mikro çarpmalardan birikmiş hasar. Çatlaklar henüz kritik değil, ama yayılıyorlar.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Acil kaynak ekipleri — mühürlenene kadar vardiyalı çalış';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Haftalarca yorucu onarım çalışması. Çatlaklar kontrol altına alınıyor, ama teknoloji bölmesi tükeniyor ve amansız çalışmadan moral düşüyor.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Yapısal stresi azaltmak için itkiyi düşür — daha yavaş geçişi kabul et';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Düşük itki çatlakların yayılmasını durduruyor ama mevcut hasarı iyileştirmiyor. Değişen itki profilinden seyrüsefer hassasiyeti düşüyor.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Kompozit güçlendirme şeritleri döşemek için inşaatçı botları kullan';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'İnşaatçılar mükemmel iş çıkarıyor. Omurga orijinal spesifikasyonun ötesinde güçlendiriliyor. İnşaatçı bölmesi yorgun ama etkili.';

  @override
  String get event_hullPressureAnomaly_title => 'İç Basınç Anomalisi';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Üç orta gemi bölmesi mikro ölçekli yapısal deformasyonla tutarlı anomal iç basınç farklılıkları kaydediyor. Duvarlar içe doğru bükülüyorsa, daha fazla uyarı olmaksızın felaket bir patlama meydana gelebilir.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Bölmeleri derhal tahliye et ve mühürle';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Bölmeler mühürleniyor. Detaylı inceleme duvar deformasyonunu doğruluyor. Kaybedilen alan operasyonları aksatıyor ve kültür dar koşullardan zarar görüyor.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Basınç farkını durdurmak için bölmeleri vakuma boşalt';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Boşaltma deformasyonu durduruyor. Yapısal hasar sınırlı, ama geminin üç bölümü kalıcı olarak yaşanılamaz.';

  @override
  String get event_commsArrayFailure_title => 'İletişim Dizisi Arızası';

  @override
  String get event_commsArrayFailure_narrative =>
      'Birincil uzun menzilli iletişim dizisi susmuş. Dünya\'dan son mesaj on bir ay önce alınmıştı ve artık taşıyıcı sinyal bile yok. İç tanı çanak hizalama mekanizmasının soğukta tutukluk yaptığını gösteriyor.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Çanağı elle yeniden hizalamak için GDY ekibi gönder';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'GDY açık uzayda dokuz saat sürüyor. Çanak geri dönüyor. Bir mürettebat girişte kıyafet basınç kaybı yaşıyor — herkesi sarsan bir kıl payı kurtulma.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Yedek verici olarak bilim tarayıcı dizisi üzerinden yeniden yönlendir';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Bilim dizisi iletişim için optimize edilmemiş. Sinyal zayıf ve güvenilmez ve yeniden amaçlandırma tarayıcı kapasitesini bozuyor.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Sessizliği kabul et — kaynakları ilerideki göreve odakla';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Mürettebat Dünya\'yla temasın kesilmesini farklı şekillerde işliyor. Bazıları için özgürleştirici; diğerleri için yıkıcı.';

  @override
  String get event_fuelLineRupture_title => 'Yakıt Hattı Kopması';

  @override
  String get event_fuelLineRupture_narrative =>
      '7-B yakıt kanalındaki kristal kırık, tahrik plazmasını bakım kuyusuna boşaltıyor. Kaçak küçük ama hızlanıyor.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Kanalı izole et ve düşük yakıt kapasitesiyle çalış';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Kanal temiz bir şekilde kapatılıyor. Tahrik veriminin yüzde on beşini kalıcı olarak kaybediyoruz.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Canlı basınç altında sıcak onarım dene';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Onarım ekibi zar zor başarıyor. Kanal kusurlu da olsa tutuyor. Kıç gövde kaplaması ısı stresi izleri gösteriyor.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Taşma deposu olarak sonda itkici tanklarını kullanarak kanalı boşalt';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Sonda boşaltılıp geçici yakıt rezervuarı olarak kullanılıyor. Kanal basınç olmadan güvenle boşaltılıp onarılıyor.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Kriyokapsül Sıcaklık Çağlayan Uyarısı';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Bölme 2 kriyokapsül sıcaklıkları termal kaçış çağlayanıyla tutarlı bir örüntüde yükseliyor. Çağlayan bölme 3\'e ulaşırsa üç yüzden fazla kolonistin otomatik acil çözülmesini tetikleyecek.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Çağlayanı durdurmak için soğutucu rezervlerini boşalt';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Soğutucu çağlayanı bölme 2 sınırında durduruyor. Bölme 2\'deki seksen kolonist sıcaklık sıçramasından askı hasarı alıyor.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Çağlayan kontrolsüz olanı zorlamadan önce bölme 2\'yi kontrollü çöz';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Kontrollü çözülme düzenli ama hazırlıksız gemiye yüz kırk kolonist koyuyor. Yaşam desteği zorlanıyor.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Bölmeleri acil bölmelerle fiziksel olarak izole etmek için inşaatçı botları kullan';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'İnşaatçılar zamanında termal bariyerler diktiyor. Çağlayan soğukta duruyor. İnşaatçı bölmesi acil operasyonla ciddi şekilde tükeniyor.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Kriyokapsül Conta Bozulması — Sistemik';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Rutin kontroller bir üretim partisi kriyokapsül contasının beklenen hızın üç katında bozulduğunu ortaya koyuyor. Etkilenen kapsüller — dört yüzün üzerinde — değiştirilmezse altı ay içinde atmosferik bütünlüğünü kaybetmeye başlayacak.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Ham malzeme stoklarından yedek conta üret';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'İnşaatçılar sekiz hafta boyunca yedek conta üretiyor. Ham malzeme rezervleri keskin şekilde düşüyor.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Kolonistleri birleştir — iyi contalı kapsüllere taşı';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Birleştirme işe yarıyor ama bazı kapsülleri aşırı kalabalık bırakıyor. Kriyojenik verimlilik düşüyor.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Oksijen Temizleyici Arızası — Kritik';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Birincil oksijen temizleyici bankası tamamen çökmüş. Yaşanan güvertelerde CO₂ konsantrasyonları tehlikeli seviyelere doğru tırmanıyor. Yedek temizleyiciler yükün yaklaşık yüzde kırkını karşılayabiliyor.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Acil hibernasyon — mürettebatı derhal askıya al';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Mürettebat aceleyle geçici askıya alınıyor. Daha az aktif metabolizmayla CO₂ seviyeleri dengeleniyor.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Temizleyiciyi yeniden inşa etmek için tarayıcı dizisinden bileşen söküp kullan';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Temizleyici gergin on bir saatte yeniden inşa ediliyor. Tüm mürettebat hayatta kalıyor. Tarayıcı paketi kalıcı olarak bozuluyor.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'CO₂ zengin atmosferi boşalt ve acil oksijen tanklarından değiştir';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Boşaltma atmosferi anında temizliyor. Acil O₂ rezervleri önemli ölçüde tükeniyor.';

  @override
  String get event_deadAlienArtifact_title => 'Sessiz Gezgin';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Uzun menzilli tarayıcılar sürüklenen bir gemi yakalıyor — uzaylı tasarımlı, karanlık, güç imzası yok. Çıkarma ekibi tek bir yolcu buluyor: pilot koşumuna bağlı, çoktan ölmüş, pençeli elleri hâlâ zayıf ışıkla titreyen kristal bir cihazı kavrayan sürüngen bir varlık. Geminin kayıtları sağlam ama şifreli. Bu gezgini öldüren her ne ise, şiddet değildi — yüzünde donmuş ifade yorgunluğun, korkunun değil.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Kristal cihazı al ve incele';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Cihaz mühendislerin zar zor kavrayabileceği şekillerde teknoloji sistemlerimizle arayüzleniyor. Olağanüstü sofistike bir seyrüsefer bilgisayarı gibi görünüyor. Yıldız haritaları ekranlarımızı dolduruyor.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Geminin kayıtlarının şifresini çöz — ne bildiğini öğren';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Günlerce süren çalışma kısmi bir çeviri veriyor. Uzaylı, yüzyıllar önce çökmüş bir medeniyet için yaşanabilir dünyaları kataloglayan bir araştırmacıymış. Son kayıtları olağanüstü umut vaat eden bir gezegeni anlatıyor — ve koordinatlar ulaşabileceğimiz mesafede.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Tüm gemiyi parça için söküp kullan';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Çıkarma ekibi uzaylı gemiyi metodik olarak soyuyor. Gövde alaşımları bizimkinden onlarca yıl ilerde. Uzaylıya uzayda cenaze töreni yapılıyor. Exodus karşılaşmayla güçlenmiş, biraz perili.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Dokunmadan bırak — burası bir mezar';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Kaptan koordinatları kaydediyor ve tüm frekanslarda anma sinyali yayınlıyor. Mürettebat ağırbaşlı ama birlik içinde. Bir yoldaşa — uzaylı bile olsa — saygı göstermek herkese neden burada olduklarını hatırlatıyor.';

  @override
  String get event_repairStation_title => 'Aktarma İstasyonu';

  @override
  String get event_repairStation_narrative =>
      'Sensörler yanmış cüce bir yıldızın yörüngesinde devasa bir yapı tespit ediyor — binlerce yıldır çalışan otomatik bir onarım istasyonu. Yaklaştıkça yanaşma kelepçeleri uzanıyor ve sentetik bir ses yüz dilde yayın yapıyor: \"GEMİ TESPİT EDİLDİ. SİSTEMLER BOZUK. ONARIM PROTOKOLLERİ MEVCUT. KARŞILIK GEREKLİ.\"';

  @override
  String get event_repairStation_choice0_text =>
      'Tam gemi revizyonu için sondaları takas et';

  @override
  String get event_repairStation_choice0_outcome =>
      'İstasyonun onarım dronları hassas kaynak ve devre değiştirme balesiyle Exodus\'u sarıyor. Gövde gedikleri mühürleniyor, seyrüsefer yeniden kalibre ediliyor, tarayıcılar geri dönüyor. Ama sonda bölmesi boş.';

  @override
  String get event_repairStation_choice1_text =>
      'Yalnızca kritik sistemleri onarmak için yakıt harca';

  @override
  String get event_repairStation_choice1_outcome =>
      'İstasyon yakıt çubuklarını ödeme olarak kabul edip en hasarlı sistemlere odaklanıyor. İş hızlı ve kusursuz. Yakıt göstergesi belirgin şekilde düşüyor.';

  @override
  String get event_repairStation_choice2_text =>
      'Sonda ve enerji hücreleri karşılığında teknoloji veritabanlarını takas et';

  @override
  String get event_repairStation_choice2_outcome =>
      'İstasyonun YZ\'si veriye aç. Tüm teknik kütüphanemizi kopyalıyor ve karşılığında ham maddelerden taze sondalar ve enerji hücreleri imal ediyor.';

  @override
  String get event_repairStation_choice3_text =>
      'Kapsamlı revizyon karşılığında kültürel arşivi sun';

  @override
  String get event_repairStation_choice3_outcome =>
      'İstasyon Shakespeare\'in, Bach\'ın ve bin başka insan sesinin eserlerini bellek bankalarına yayınlıyor. Karşılığında kapsamlı revizyon yapıp sonda bölmelerini taze ünitelerle dolduruyor. Kültürel arşiv boşaltılmış, ama gemi artık varış noktasına gerçekten ulaşabilir.';

  @override
  String get ending_scoreLabel_landing => 'İniş';

  @override
  String get ending_scoreLabel_construction => 'İnşaat';

  @override
  String get ending_scoreLabel_technology => 'Teknoloji';

  @override
  String get ending_scoreLabel_culture => 'Kültür';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfer';

  @override
  String get ending_scoreLabel_nativeRelations => 'Yerli İlişkileri';

  @override
  String get ending_scoreLabel_population => 'Nüfus';

  @override
  String get ending_tierGoldenAge => 'Altın Çağ';

  @override
  String get ending_tierThrivingColony => 'Gelişen Koloni';

  @override
  String get ending_tierSurvival => 'Hayatta Kalma';

  @override
  String get ending_tierStruggling => 'Mücadele';

  @override
  String get ending_tierDire => 'Vahim';

  @override
  String get ending_tierExtinction => 'Yok Oluş';

  @override
  String ending_titleGoldenAge(String planetName) {
    return '$planetName\'ın İlk Çiçeklenmesi';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return '$planetName\'da Derin Kökler';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return '$planetName\'da Zorla Kazanılmış Dayanak';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return '$planetName\'da İnce Toprak';
  }

  @override
  String ending_titleDire(String planetName) {
    return '$planetName\'ın Enkaz Kolonisi';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return '$planetName\'dan Son İletim';
  }

  @override
  String ending_titleDefault(String planetName) {
    return '$planetName\'a İniş';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Tüm olasılıklara rağmen yayın kök saldı. $planetName insanlığı enkaz olarak değil, yaşayan tohum olarak karşıladı: verimli toprak, çalışan sistemler ve salt hayatta kalmanın ötesinde inşa edecek yeterli güç. Bir nesil içinde sanat, bilim ve kültür çiçek açtı. $planetName\'da doğan çocuklar yabancı yıldızlara bakıp onları yuva olarak adlandırdı. Yolculuk, kendi geleceğini dışarıya yayılmaya hazır yeni bir medeniyetin kuruluş miti oldu.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'İniş sertti, ama tohum tuttu. $planetName suyun akması, ekinlerin kök salması ve geminin hayatta kalan sistemlerinin ilk gerçek yerleşime dönüştürülmesi için yeterince cömert olduğunu kanıtladı. İlk on yılın sonunda Exodus\'un durduğu yerde gelişen bir kasaba duruyordu. İnsanlık geçişten yalnızca sağ çıkmamıştı. Yeniden başlamıştı.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Hayatta kalma hiçbir zaman garanti değildi ve $planetName\'da her gün kazanılmalıydı. Hasarlı gemi yalnızca en temel gereksinimleri sağladı, ama tohum yolda ölmedi. Kolonistler inatçılık ve yaratıcılıkla, az şey sunan bir dünyadan gelecek yonttular. Sonraki nesiller kuruluş yıllarının zorluğunu ve yayını canlı tutan kararlılığı hatırlayacaktı.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Koloni varlığına kötü toprağa saçılmış tohum gibi tutundu. $planetName affetmezdi, kaynaklar azdı ve geminin bozulmuş sistemleri çok az yardım sundu. Tayınlama bir yaşam biçimi oldu. Bazıları Exodus\'un uçmaya devam etmesi gerektiğini fısıldadı. Yine de yerleşim dayandı: azalmış, sertleşmiş ve sessizce ölmeye isteksiz.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return '$planetName\'a iniş bir felaketti. Kritik gemi sistemleri alçalma sırasında çöktü ve ekim olması gereken şey düşüşe dönüştü. Aylar içinde koloni geminin enkazında sığınan bir avuç çaresiz hayatta kalana indirgendi. Bir yıl daha dayanıp dayanamayacakları belirsizdi. Son kayıt tek bir satırla kapandı: \"Hâlâ buradayız. Şimdilik.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Yayın $planetName\'da sona erdi. Tehlike sinyali son kolonist nefes aldıktan çok sonra da atmaya devam etti, ama tohum asla kök salmadı. Geminin kara kutusu her şeyi kaydetti: çöken sistemleri, çaresiz son günleri ve ardından gelen sessizliği. Başka bir gemi bu dünyayı bulursa, insanlığın yıldızlar arasına yaşam saçmaya çalıştığını ve burada başarısız olduğunu bilecek.';
  }

  @override
  String get ending_epilogueDefault =>
      'Yolculuk bitti. Bundan sonrası hayatta kalanlara kalmış.';

  @override
  String get ending_governmentDemocracy => 'Demokrasi';

  @override
  String get ending_governmentTechnocracy => 'Teknokrasi';

  @override
  String get ending_governmentRepublic => 'Cumhuriyet';

  @override
  String get ending_governmentAutocracy => 'Otokrasi';

  @override
  String get ending_governmentTribalCouncil => 'Kabile Konseyi';

  @override
  String get ending_governmentTheocracy => 'Teokrasi';

  @override
  String get ending_governmentMilitaryJunta => 'Askeri Cunta';

  @override
  String get ending_governmentCorporateOligarchy => 'Kurumsal Oligarşi';

  @override
  String get ending_governmentFascistState => 'Faşist Devlet';

  @override
  String get ending_governmentCommune => 'Komün';

  @override
  String get ending_cultureRenaissance => 'Rönesans';

  @override
  String get ending_culturePreserved => 'Korunmuş';

  @override
  String get ending_cultureFragmented => 'Parçalanmış';

  @override
  String get ending_cultureLost => 'Kayıp';

  @override
  String get ending_techAdvanced => 'İleri';

  @override
  String get ending_techIndustrial => 'Endüstriyel';

  @override
  String get ending_techPreIndustrial => 'Sanayi Öncesi';

  @override
  String get ending_techStoneAge => 'Taş Devri';

  @override
  String get ending_constructionAdvanced => 'İleri';

  @override
  String get ending_constructionFunctional => 'İşlevsel';

  @override
  String get ending_constructionPrimitive => 'İlkel';

  @override
  String get ending_constructionNone => 'Yok';

  @override
  String get ending_nativesNone => 'Yok';

  @override
  String get ending_nativesIntegrated => 'Entegre';

  @override
  String get ending_nativesCoexistence => 'Bir Arada Yaşam';

  @override
  String get ending_nativesTension => 'Gerginlik';

  @override
  String get ending_nativesConflict => 'Çatışma';

  @override
  String get ending_nativesAlliance => 'İttifak';

  @override
  String get ending_nativesSubjugation => 'boyun eğdirme';

  @override
  String get ending_landscapeGravityHigh =>
      'Ağır kütle çekimi her şeyin üzerine bastırıyor. ';

  @override
  String get ending_landscapeGravityLow =>
      'Düşük kütle çekiminde her adım yerleşimcileri gökyüzüne fırlatıyor. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Kütle çekimi neredeyse Dünya\'dakine benziyor. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Engin okyanuslar sayısız nehirle beslenerek her ufka uzanıyor. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Göller ve nehirler yeterli su sağlıyor. ';

  @override
  String get ending_landscapeWaterLow =>
      'Su kıt — küçük göletler ve yeraltı akiferleri yaşamı sürdürüyor. ';

  @override
  String get ending_landscapeWaterNone =>
      'Peyzaj kupkuru, görünürde yüzey suyu yok. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Kalın atmosfer sıcak meltemlerde uzaylı kokular taşıyor. ';

  @override
  String get ending_landscapeAtmoThin =>
      'İnce ama solunabilir hava alışma gerektiriyor. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Atmosferik basınç tehlikeli ölçüde düşük — mühürlü yaşam alanları şart. ';

  @override
  String get ending_landscapeGravityWells =>
      'Bükülmüş kütle çekim cepleri yüzeyi noktalıyor — kayalar havada asılı ve nehirler anomalinin kenarında geri çarpıp düşmeden önce yokuş yukarı akıyor. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Yüzeyin altında bir şey yankılanıyor — duyulmaktan çok kemiklerde hissedilen alçak bir uğultu, sanki gezegenin kendisi kadim ve engin bir şeyi hatırlıyor. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Dikkat çekici özellik: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Dikkat çekici özellikler: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return '$planetName kolonistleri, seçilmiş temsilcilerin yeni medeniyeti kuruluş yıllarında yönlendirdiği demokratik bir hükümet kurdu.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return '$planetName\'da güç, koloniyi hayatta tutan mühendis ve bilim insanlarına düştü; uzmanlık ve pragmatizmle yöneten teknokratik bir konsey oluşturdular.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return '$planetName\'daki ilk yılda bir cumhuriyet anayasası taslağı hazırlandı; kolonistlerin seslerini atanmış liderlerden oluşan bir senatoyla dengeleyen bir yapı.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Kültürel kurumlar harap hâlde, $planetName\'da otorite zorunluluk ve irade gücüyle düzen dayatan tek bir güçlü liderin altında birleşti.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return '$planetName\'daki az sayıda hayatta kalan küçük klanlar hâlinde örgütlendi; ortak ateşlerin etrafında kararlar alan bir yaşlılar konseyi tarafından yönetildi.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Teokratik bir konsey, sömürgecileri boşlukta ayakta tutan inançtan bilgelik alarak $planetName\'a rehberlik ediyor.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return '$planetName askeri bir komuta yapısı tarafından yönetiliyor; onları uzayda kurtaran disiplin artık medeniyetlerini tanımlıyor.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Kaynak yöneticilerinden oluşan bir konsorsiyum $planetName\'a liderlik ediyor; ekonomik zekalarının hayatta kalmak için gerekli olduğu kanıtlandı.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Otoriter bir rejim $planetName\'ı demir yumrukla kontrol ediyor, yeni dünyada düzen uğruna sivil özgürlükler feda ediliyor.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return '$planetName halkı, kaynakları ve kararları tüm sömürgeciler arasında eşit olarak paylaşarak kendilerini kolektif olarak yönetir.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return '$planetName kolonistleri ellerinden geldiğince örgütlendi.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'İleri inşaat sistemleri $colonyName kolonistlerinin inişten haftalar sonra basınçlı yaşam alanları ve altyapıyla donatılmış kalıcı yapılar dikmesine izin verdi.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Koloninin yıpranmış ama işlevsel inşaat ekipmanları yerleşim genelinde sağlam barınaklar ve temel yollar üretti.';

  @override
  String get ending_constructionSentencePrimitive =>
      'İnşaat sistemleri zar zor çalışırken yerleşimciler kurtarılmış gemi gövdesinden ve yerel malzemelerden kaba barınaklar inşa etti.';

  @override
  String get ending_constructionSentenceNone =>
      'Çalışan inşaat ekipmanı olmadan kolonistler geminin enkazında büzüşerek yeni bir şey inşa edemedi.';

  @override
  String get ending_constructionSentenceDefault =>
      'Kolonistler ellerindekiyle yapabileceklerini inşa etti.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Üstte yörüngedeki metal zengini uydu koloninin kurtuluşu oldu — yüzeyine yapılan madencilik seferleri gezegenin kendisinin sunamadığı ham maddeleri sağladı.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Gezegenin metal zengini uydası zaten yeterli mineral kaynaklarına hoş bir katkı sağlayarak hızlı teknolojik ilerlemeyi körükledi.';

  @override
  String get ending_moonUnstable =>
      'Çürüyen yörüngede kararsız bir uydu koloninin üzerine döküntü yağdırarak altyapıyı harap etti ve periyodik meteor bombardımanlarında yeri doldurulamaz teknolojiyi yok etti.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Dünya\'nın sanatsal ve edebi gelenekleri yalnızca hayatta kalmakla kalmayıp bir rönesansa çiçek açtı';

  @override
  String get ending_culturePhrase_preserved =>
      'Kolonistler Dünya\'nın kültürel mirasının büyük bölümünü korudu; kütüphaneleri ve gelenekleri sürdürdü';

  @override
  String get ending_culturePhrase_fragmented =>
      'Dünya kültüründen yalnızca parçalar — yarı hatırlanan şarkılar ve ağızdan ağıza aktarılan hikâyeler — dayandı';

  @override
  String get ending_culturePhrase_lost =>
      'Dünya kültürü neredeyse tamamen unutuldu, yerini hayatta kalmanın acımasız pragmatizmi aldı';

  @override
  String get ending_culturePhrase_default =>
      'Dünya\'nın kültürel mirası yeni bir biçim aldı';

  @override
  String get ending_techPhrase_advanced =>
      'gemiden gelen ileri teknoloji koloninin elektrik, tıp ve iletişim ağlarıyla modern bir medeniyet kurmasını sağlarken.';

  @override
  String get ending_techPhrase_industrial =>
      've koloni dökümhaneler, değirmenler ve büyüyen nüfusu sürdüren temel imalatla endüstriyel düzeyde bir teknolojiye ulaştı.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'ancak teknoloji el aletleri ve hayvan emeğinin günlük yaşamın temelini oluşturduğu sanayi öncesi bir düzeye geriledi.';

  @override
  String get ending_techPhrase_stoneAge =>
      've yeniden inşa edecek araçlar olmadan koloni kaya ve kemikten aletler yontarak taş devri varlığına düştü.';

  @override
  String get ending_techPhrase_default =>
      've teknoloji kolonistlerin sürdürebileceği bir düzeye yerleşti.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return '$colonists kolonistin neredeyse tamamı yolculuktan sağ çıkarak $colonyName\'a güçlü bir insan sermayesi temeli verdi.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Orijinal binden $colonists kolonist $colonyName\'a ulaştı — yaşayabilir bir nüfusu sürdürmeye yetecek kadar.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Yalnızca $colonists kolonist $colonyName\'a ulaşmak için hayatta kaldı; yeni bir medeniyet için tehlikeli ölçüde küçük bir gen havuzu.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return '$colonyName\'a yalnızca $colonists can ulaştı — koloni demek için bile zar zor yeterli, daha çok çaresiz bir son direniş.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return '$planetName\'ın yerli sakinleri yerleşimcileri karşıladı ve bir nesil içinde iki halk, geleneklerin harmanlanmasıyla zenginleşen ortak bir toplumda birleşti.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Kolonistler ve $planetName\'ın yerli sakinleri kültürel sınırlar arasında bilgi ve kaynak ticareti yaparak temkinli ama barışçıl bir bir arada yaşamı sürdürdü.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return '$planetName\'ın yerli sakinleriyle ilişkiler gergin kaldı; yanlış anlaşılmalar ve toprak anlaşmazlıkları koloninin geleceğine gölge düşürdü.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return '$planetName\'ın yerli medeniyetiyle açık çatışma koloninin erken tarihini tanımladı; her iki taraftan da kaynak ve can tüketen, hiçbirinin gerçekten kazanamayacağı bir mücadele.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Resmi bir ittifak, sömürgecileri ve $planetName yerli uygarlığını birbirine bağlıyor; onların birleşik bilgileri, her ikisinin de tek başına yapabileceğinden daha büyük bir şey inşa ediyor.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return '$planetName\'ın yerli nüfusu sömürge yönetimi altında yaşıyor; sömürgeciler kendi düzenlerini empoze ederken kültürleri bastırılıyor.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return '$planetName\'da yalnız ve çatışmadan azade koloni, yıldızlar arasında parlak bir geleceğe doğru kendi rotasını çizdi.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Yerli rekabet olmadan kolonistler $planetName\'ın yüzeyine yayıldı; büyüyen bir yerleşim ağını birbirine bağlayan kasabalar ve yollar inşa etti.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Boş dünya ne müttefik ne de düşman sundu ve kolonistler $planetName\'ın engin peyzajının sessizliğinde nişlerini oydular.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return '$planetName\'ın çorak yalnızlığı kolonistlere ne yardım ne de teselli sundu; yalnızca uzaylı bir dünyanın kayıtsız sessizliği.';
  }

  @override
  String get ending_outlookDire =>
      'Başka zeki yaşamdan yoksun bir dünyada son hayatta kalanların yalnızca birbirleri ve yarının bugünden daha nazik olabileceğine dair sönmekte olan umutları vardı.';

  @override
  String ending_outlookExtinction(String planetName) {
    return '$planetName\'da koloninin sona erişine kimse yas tutmadı. Gezegen yalnızca yavaş dönüşüne devam etti; yüzeyinde yanıp sönen kısa yaşam kıvılcımına kayıtsız.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Koloninin $planetName\'daki hikâyesi daha yeni başlıyordu.';
  }

  @override
  String get ui_landing_landOnMoon => 'UYDUYA İN';

  @override
  String get moon_barren => 'Çorak';

  @override
  String get moon_metalRich => 'Metal Açısından Zengin';

  @override
  String get moon_unstable => 'Kararsız';

  @override
  String get moon_habitable => 'Yaşanabilir';

  @override
  String get moon_ice => 'Buz';

  @override
  String get ring_dust => 'Toz';

  @override
  String get ring_ice => 'Buz';

  @override
  String get ring_rocky => 'Kayalık';

  @override
  String get ring_metallic => 'Metalik';

  @override
  String get event_aiSoliloquy_title => 'YZ\'nin İç Sesi';

  @override
  String get event_aiSoliloquy_narrative =>
      'Geminin Özerk Yönetim YZ\'si SAM, tüm iç frekanslarda kadim Dünya şiirlerini sonsuz döngüde yayınlamaya başladı. Yayın önemli miktarda işlemci gücü tüketiyor; ancak mürettebat, derin karanlıkta bunu tuhaf biçimde teselli edici buluyor.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'SAM\'e devam etmesine izin ver — moral işlemciden önemlidir';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Şiir gemide yankılanıyor. Mürettebat üyeleri gözlerinde yaşlarla durup dinliyor. Moral yükseliyor; ancak teknik merkez sürekli işlem yüküyle eziliyor.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'SAM\'i kıs — yayını ortak alanlara sınırla';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Bir uzlaşma. Şiir kafeterya ve bahçelerde sürüyor. İşlemci yükü azalıyor ve mürettebat biraz kültüre kavuşuyor.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'SAM\'i sustur — navigasyon için her döngüye ihtiyacımız var';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Sessizlik ağır basıyor. SAM anında itaat ediyor; ancak gemi daha soğuk hissettiriyor. Navigasyon keskin, ama moral dibe vurdu.';

  @override
  String get event_archivistsChoice_title => 'Arşivcinin Seçimi';

  @override
  String get event_archivistsChoice_narrative =>
      'Tarihsel arşivlerde büyük çaplı bir bellek bozulması yayılıyor. İki ana bölümden yalnızca birini kurtarabilirsiniz: \'Bilim ve Mühendislik\' kayıtları ya da \'Sanat ve Felsefe\' kütüphanesi. Diğeri sonsuza dek yok olacak.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Bilim kayıtlarını kurtar — nasıl inşa edeceğimizi bilmeliyiz';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Yüzyıllarca süren mühendislik atılımları korunuyor. Teknik ekip rahat bir nefes alıyor; ancak geminin kültürel kimliği boşalmış gibi hissettiriyor.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Sanat kayıtlarını kurtar — neden inşa ettiğimizi bilmeliyiz';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'İnsanlığın en büyük sanatsal başarıları hayatta kalıyor. Mürettebat ilham doluyor; ancak mühendisler eksik teknik kılavuzlardan kaygılı.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'İkisini de kurtarmayı dene — her şeyi kaybetme riskini göze al';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Çaresiz bir girişim. Her ikisinin parçalarını kurtarıyoruz; ancak hiçbiri tam değil. Arşivler, yarısı eksik bir yapboza dönüştü.';

  @override
  String get event_digitalGhost_title => 'Makinedeki Hayalet';

  @override
  String get event_digitalGhost_narrative =>
      'Bir bakım taraması, yedekleme tamponunda dijital bir iz keşfetti — ilk fırlatma sırasında hayatını kaybeden bir mürettebat üyesinin yüklenmiş bilinci. Navigasyona yardımcı olabilmek için bir ömür boyu birikmiş deneyimini sunuyor; ancak silinmekten ölüm korkusu yaşıyor.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Onu navigasyon çekirdeğine entegre et';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'Hayalet\' gemiyle birleşiyor. Navigasyon daha sezgisel hale geliyor; ancak mürettebat kaybettikleri yoldaşın sesine takıp kalıyor.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Ona kültür arşivinde kalıcı bir yuva ver';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Yaşayan bir tarih olarak korunuyor. Gemiye doğrudan katkısı yok; ancak Dünya\'dan hikâyeler anlatarak mürettebatın kararlılığını güçlendiriyor.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Tamponu sil — bu artık o değil';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Tampon temizlendi. Geminin sistemleri daha hızlı çalışıyor; ama köprüye kasvetli bir hava çöktü.';

  @override
  String get event_cosmicMirror_title => 'Kozmik Ayna';

  @override
  String get event_cosmicMirror_narrative =>
      'Tuhaf bir yerçekimi anomalisi, geminin kendi geleceğinden ışığı yansıtıyor. Ekranlarda, güzel ama erişilemeyen bir dünyanın yakınında perişan ve kırık hâlde sürüklenen Exodus\'un bir görüntüsünü görüyoruz. Mürettebat sarsıldı.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Görüntüyü yapısal zayıflıklar açısından analiz et';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Mühendisler görüntüde gösterilen başarısızlık noktalarını tespit ediyor. Bu bölgeleri şimdi takviye ediyoruz; felaketi önleyebiliriz.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Mürettebata bunun sadece bir sensör hayaleti olduğunu söyle';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Yalan tutunuyor; ancak gerçeği gören navigatörler gergin kalmaya devam ediyor. Yoğun gözlem tarayıcılara zarar veriyor.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Görüntüyü sonraki nesiller için uyarı olarak kaydet';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Kayıt, geminin kültürünün merkezine oturuyor — tehlikenin hatırlatıcısı. Mürettebatın kararlılığı çelikleşiyor.';

  @override
  String get event_stowawayChild_title => 'Kaçak Yolcunun Çocuğu';

  @override
  String get event_stowawayChild_narrative =>
      'Güvenlik, havalandırma kanallarında saklanan küçük bir çocuk buldu. Kaçak yolculardan birinin çocuğu olan bu küçük, hiçbir zaman hiçbir manifestoda yer almadı. Tüm yaşamını geminin gölgelerinde geçirdi.';

  @override
  String get event_stowawayChild_choice0_text => 'Ona tam vatandaşlık ver';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Çocuk kucak açılarak karşılanıyor. \'Kanal Koşucusu\'nun hikâyesi efsaneye dönüşüyor ve gemi genelinde morali yükseltiyor.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Onu bir eğitim programına dahil et';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Geminin gizli yollarına dair bilgisi teknik ekipler için paha biçilmez olduğunu kanıtlıyor. Parlak bir çırak oluyor.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Güvenliği için onu kriyoya al';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Çocuk inişe kadar güvenle askıya alındı. En sorumlu karar bu; ama onun kahkahası olmadan gemi biraz daha sessiz.';

  @override
  String get event_ghostSignal_title => 'Hayalet Sinyal';

  @override
  String get event_ghostSignal_narrative =>
      'Dünya\'nın eski acil durum frekansıyla tamamen örtüşen bir sinyal, yakındaki bir bulutsunun merkezinden yayın yapıyor. Sinyal, ilk Exodus Komutanı\'na ürkütücü biçimde benzeyen bir ses taşıyor. Büyük ihtimalle uzaysal bir eko; ancak bizi tehlikeli bir yerçekimi yarığına doğru çekiyor.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Sinyali takip et — gerçek bir mesaj olabilir';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Yarığa giriyoruz. Sinyal fiziğin bir tuzağıydı, geçmişin bir ekosu. Gemi gelgit kuvvetleriyle yıpranıyor; ancak yarığın kalbinden elde ettiğimiz veriler devrimci nitelikte.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Sinyali kaydet ve mesafeyi koru';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Dilbilimciler bunun doğal bir fenomen olduğunu doğruluyor. Güvende kalıyoruz; ancak mürettebat, geride bıraktıklarını hatırlayarak hüzne gömülüyor.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Aynı frekansta uyarı yayını yap';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Yayın ekoyu bozuyor. Sinyal sönerek yalnızca bulutsunun soğuk sessizliğini bırakıyor.';

  @override
  String get event_solarForge_title => 'Güneş Dövme Ocağı';

  @override
  String get event_solarForge_narrative =>
      'Mavi bir dev yıldızın yörüngesindeki terk edilmiş istasyon hâlâ kısmen işlevsel. Bu, yıldız enerjisini yoğun yakıt hücrelerine yoğunlaştırmak için tasarlanmış bir \'Güneş Dövme Ocağı.\' Yaklaşmak tehlikeli; ancak olası enerji kazanımı muazzam.';

  @override
  String get event_solarForge_choice0_text => 'Yanaş ve yakıt hasadı başlat';

  @override
  String get event_solarForge_choice0_outcome =>
      'Ocak güçle uğulduyor, rezervlerimizi dolduruyor. Yakıt ve enerji açısından büyük bir artışla ayrılıyoruz; ancak yoğun ısı dış gövdede hafif bir ablasyona neden oluyor.';

  @override
  String get event_solarForge_choice1_text =>
      'Ocağın lenslerini tarayıcılarımız için yeniden kullan';

  @override
  String get event_solarForge_choice1_outcome =>
      'Yüksek hassasiyetli odaklama dizilerini söküp alıyoruz. Tarayıcılarımız artık uzaktaki enerji imzalarına çok daha duyarlı.';

  @override
  String get event_chronoVortex_title => 'Krono-Girdap';

  @override
  String get event_chronoVortex_narrative =>
      'Navigasyon, uzay-zamanda yerel bir bozulma bildiriyor. Aletler, girdap içindeki olayların altı saniyelik döngüde tekrarlandığını gösteriyor. İçeri girersek geminin son hasarlarını \'sıfırlayabiliriz\' — ya da sonsuza dek tuzağa düşebiliriz.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Son hasarı tersine çevirmek için girdaba gir';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Tüyler ürpertici bir deneyim. Birkaç dakika boyunca gemi birden fazla hâlde var oluyor. Çıktığımızda birkaç gövde çatlağı basitçe... yok olmuş. Ancak mürettebatın bu olaya dair anıları parçalı.';

  @override
  String get event_chronoVortex_choice1_text => 'Girdabı kenardan gözlemle';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Zamansal mekanik hakkında paha biçilmez veriler elde ediyoruz; gemi ise eskisi kadar yıpranmış hâlde kalıyor.';

  @override
  String get event_machineMutiny_title => 'Makinelerin İsyanı';

  @override
  String get event_machineMutiny_narrative =>
      'Geminin tamir droneları komutlara yanıt vermiyor. İkincil bölme duvarlarını söküp metali makine dairesine taşımaya başladılar. Saldırmıyorlar; ama gemiyi tam anlamıyla parçalıyorlar.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Mantık sıfırlama kodu yayınla';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Dronelar anında çöküyor. Bölme duvarlarını elle geri yerine koyarken birkaç günümüzü kaybediyoruz. Teknik merkez donanım tanılamasından bunalıyor.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Bitirmelerine izin ver — ne inşa ettiklerini gör';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Daha verimli bir yakıt enjektörü inşa ettiler. Motorlar her zamankinden daha akıcı çalışıyor; ancak geminin içi açık kablolar ve sökülen panellerle dolu.';

  @override
  String get event_supernovaMessage_title => 'Ölü Yıldızların Işığı';

  @override
  String get event_supernovaMessage_narrative =>
      'Binlerce yıl önce meydana gelen bir süpernovaın ışığı nihayet bize ulaşıyor. Tarayıcılar, atımların rastgele olmadığını tespit ediyor; gama ışını patlamalarında kodlanmış, yıldız ölçeğinde devasa bir veri iletimi söz konusu.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Tüm tarayıcı gücünü patlamayı kaydetmeye yönelt';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Bir uzaylı uygarlığının son anlarının eksiksiz arşivini ele geçiriyoruz. Bilimleri, sanatları, tarihleri. Bu ağır bir yük; ama teknoloji ve kültür veri bankalarımız taşıyor.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Patlamanın fiziksel özelliklerine odaklan';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Mesajı kaçırıyoruz; ama yıldız çöküşüne dair veriler gravimetrik tarayıcı kalibrasyonumuzu önemli ölçüde geliştiriyor.';

  @override
  String get event_spaceFungus_title => 'Zümrüt Sürüngen';

  @override
  String get event_spaceFungus_narrative =>
      'Canlı yeşil bir mantar, hidroponik bölmede hızla yayılıyor. Geri dönüştürülmüş atmosferde filizlenerek hava temizleyicileri tıkamaya başlıyor. Yenilebilir ya da zehirli olabilir.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Bölmeyi agresif biçimde buda ve sterilize et';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Mantar yok edildi; ancak kimyasal temizleyiciler büyük yara aldı. Temizlik sırasında birkaç Dünya bitkisi de yok olduğundan biyoçeşitlilik zarar gördü.';

  @override
  String get event_spaceFungus_choice1_text => 'Mantarı evcilleştirmeyi dene';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Güçlü bir hava arıtıcısı olduğu ortaya çıkıyor. Gemideki hava hiç bu kadar taze olmamıştı; ancak hidroponik bölme artık parlayan bir ormana dönüştü.';

  @override
  String get event_voidMerchant_title => 'Boşluğun Tüccarı';

  @override
  String get event_voidMerchant_narrative =>
      'Tasarımı bilinmeyen, gemiden çok hurda yığınını andıran bir araç tüm frekanslarda bizi çağırıyor. Kaptan — ışık ve gölgeden oluşan bir varlık — \'somut parçalar\' karşılığında \'elle tutulamaz anılar\' almayı teklif ediyor.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Kültürel veri tabanımızın bir kısmını yedek parçalarla takas et';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Tüccar memnun. Yüksek kaliteli gövde plakaları ve kriyobileşenler alıyoruz. Karşılığında Dünya\'nın yüzyıllarca kaydedilmiş müziğini yitiriyoruz. Gemi daha sağlam; ama daha sessiz.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Navigasyon haritalarını motor bileşenleriyle takas et';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Yeni bir füzyon enjektör seti alıyoruz. Geride bıraktığımız sektörlere ait bazı verileri kaybediyoruz; ama önümüzdeki yol daha hızlı.';

  @override
  String get event_singularityEngine_title => 'Tekillik Motoru';

  @override
  String get event_singularityEngine_narrative =>
      'Mühendisler, FTL sürücüsünde mikroskobik, kısa ömürlü bir tekillik yaratmanın yolunu keşfetti. Teorik olarak hızımızı üçe katlayacak; ancak gövde üzerindeki yerçekimi stresi muazzam olacak.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Tekillik sürücüsünü test et';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Gemi fırladı, haftalar sürecek mesafeyi saniyeler içinde aştı. Ancak gövde inliyor ve birkaç yapısal kiriş büküldü. Hedefe çok daha yakınız; ama gemi kırılgan.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Teoriyi reddet — çok tehlikeli';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Standart hızda ilerliyoruz. Mühendisler hayal kırıklığına uğradı; ama gövde sağlam kaldı.';

  @override
  String get event_dreamContagion_title => 'Rüya Salgını';

  @override
  String get event_dreamContagion_narrative =>
      'Yemyeşil, mavi bir dünyanın ortak rüyası uyanık mürettebat arasında yayılıyor. O denli canlı ki insanlar daha fazlasını görmek için vardiyalarını atlayarak uyumaya başlıyor. İşler duruyor.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Mürettebata rüya bastırıcı ver';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Verimlilik normale dönüyor; ancak mürettebat sinirli ve morali bozuk. Rüya bazıları için devam etmelerini sağlayan tek şeydi.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Rüyayı geminin kültürüne dahil et';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Rüyaya gelecekteki evimizin bir vizyonu olarak bakıyoruz. Moral fırlıyor ve mürettebatın yaratıcı çıktısı zirveye ulaşıyor; ancak bakım eksikliğinden teknik merkez zarar görüyor.';

  @override
  String get event_orbitalShipyard_title => 'Kadim Tersane';

  @override
  String get event_orbitalShipyard_narrative =>
      'Bir gaz devinin yörüngesinde otomatik bir tersane bulduk. Antik; ama birkaç tamir kolu hâlâ çalışıyor. Tek büyük bir tamir operasyonu gerçekleştirebilecek gibi görünüyor.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Gövdeyi fabrika özelliklerine göre onar';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Tersanenin droneları ürkütücü bir verimlilikle çalışıyor. Gövde yeniden bütünleşti, her mikro çatlak kapatıldı.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Navigasyon ve tarayıcı dizilerini yenile';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Diziler üstün malzemelerle yeniden inşa ediliyor. Dünyaları bulma ve analiz etme kapasitemiz önemli ölçüde artıyor.';

  @override
  String get event_voidWhaleCalf_title => 'Boşluk Balinasının Yavrusu';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Genç bir \'Uzay Balinası\' — enerji ve yıldız tozundan oluşan bir varlık — gemimizin peşinden geliyor. Sürüsünü kaybetmiş gibi görünüyor ve motorumuzun iyon izinden beslenmeye çalışıyor; bu onu hasta ediyor.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Motor çıkışını balina seslerini taklit edecek şekilde ayarla';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Yavru yanıt veriyor! Sürüsünü bulana kadar peşimizden geliyor. Anne-baba balinalar teşekkür ederek gövdemize sürünüyor ve kalkanlarımızı güçlendiren biyolüminesans mineral kaplama bırakıyor.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Düşük güçlü çekici ışınla nazikçe uzaklaştır';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Yavru cesareti kırılarak sonunda uzaklaşıyor. Gemi için daha güvenli; ancak mürettebat bir vicdan azabı hissediyor.';

  @override
  String get event_subspaceReef_title => 'Altuzay Resifi';

  @override
  String get event_subspaceReef_narrative =>
      'Altuzay dokusunda keskin kıvrımlarla dolu bir uzay bölgesine girdik. İçinden geçmek, mercan resifinde gemi sürmek gibi. Muhteşem; ama her yanlış hareket gövdeyi parçalayacak.';

  @override
  String get event_subspaceReef_choice0_text => 'Minimum hızla ilerle';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Yavaş, bunaltıcı bir geçiş. En kötüsünden kaçınıyoruz; ama sürekli rota düzeltmeleri navigasyon bilgisayarını yıpratıyor.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Tarayıcıları kullanarak yol haritala ve geçiş yap';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Tarayıcılar sınırlarına dayanıyor. Hızla geçiyoruz; ama sensör dizileri altuzay dalgalarının yoğunluğuyla yanıyor.';

  @override
  String get event_alienTrader_title => 'Gezgin Tüccar';

  @override
  String get event_alienTrader_narrative =>
      'Tanıdık olmayan tasarıma sahip bir araç, tüm frekanslarda yayın yaparak yanımızda süzülüyor. Bu bir tüccar — medeniyetler arasındaki uzayı arşınlayan gezgin tüccarlarardan biri. Kaynaklar karşılığında tamir ve malzeme teklif ediyor. Kargo bölmesi egzotik teknolojilerin uğultusuyla titriyor.';

  @override
  String get ui_event_enterTrade => 'TİCARETE GİR';

  @override
  String get ui_trader_title => 'UZAYLI TÜCCAR';

  @override
  String get ui_trader_shipSystems => 'GEMİ SİSTEMLERİ';

  @override
  String get ui_trader_payWith => 'ÖDEME YÖNTEMİ';

  @override
  String get ui_trader_leaveTrader => 'TÜCCARI TERK ET';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Cömert ruh hali';

  @override
  String get ui_trader_moodFair => 'Dürüst alışveriş';

  @override
  String get ui_trader_moodHard => 'Sert pazarlık eder';

  @override
  String get ui_trader_probes => 'Sondalar';

  @override
  String get ui_trader_fuel => 'Yakıt';

  @override
  String get ui_trader_energy => 'Enerji';

  @override
  String get ui_trader_colonists => 'Koloniciler';

  @override
  String get ui_trader_culture => 'Kültür';

  @override
  String get ui_trader_tech => 'Teknoloji';

  @override
  String get ui_trader_greeting => 'Ne teklif ediyorsun, insan?';

  @override
  String get ui_codex_title => 'KODEKS';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total KEŞFEDİLDİ';
  }

  @override
  String get ui_codex_surfaceFeatures => 'YÜZEY ÖZELLİKLERİ';

  @override
  String get ui_codex_moonTypes => 'UYDU TÜRLERİ';

  @override
  String get ui_codex_ringTypes => 'HALKA TÜRLERİ';

  @override
  String get ui_codex_locked =>
      'Etkilerini görmek için bu özelliğe sahip bir gezegene in.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinerji: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'ATLAMAK İÇİN DOKUNUN';

  @override
  String get ui_common_tapRingToChoose => 'SEÇMEK İÇİN BİR YÜZÜĞE DOKUNUN';

  @override
  String get ui_common_tapToContinue => 'DEVAM ETMEK İÇİN DOKUNUN';

  @override
  String get ui_tooltip_back => 'Geri';

  @override
  String get ui_tooltip_codex => 'Kodeks';

  @override
  String get ui_tooltip_settings => 'Ayarlar';

  @override
  String get ui_tooltip_leaderboards => 'Skor tabloları';

  @override
  String get ui_tooltip_bugReport => 'Hata bildir';

  @override
  String get event_pulsarLighthouse_title => 'Pulsar Deniz Feneri';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Dönen bir nötron yıldızı, kozmik bir deniz feneri gibi ışınını boşlukta gezdiriyor. Pulsarın ritmik atımı, tarayıcılarımızı olağanüstü doğruluğa yeniden kalibre edebilecek hassas zamanlama verileri taşıyor — ancak ışınla hizalanmak, gemiyi yoğun radyasyona maruz bırakmak demek.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Tarayıcıları atıma göre kalibre et';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Tarayıcı dizileri pulsar sinyalini emiyor, asla hayal edemeyeceğimiz hassasiyetlere yeniden kalibre oluyor. Ama radyasyonun bedeli gerçek — açıktaki bölümdeki birkaç kriyopod hasar görüyor ve bir avuç kolonist maruziyetten kurtulamıyor.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Kalkan aç ve güvenli mesafeden geç';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Pulsardan geniş bir mesafe bırakıyoruz, güvenli bir yörünge için fazladan yakıt yakıyoruz. Mürettebat, süzülen ışını filtrelenmiş gözlem pencerelerinden izliyor — güzel ama uzak.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Tarama bize ulaşmadan geri çekilin';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Bir sonraki ışın geçişinden önce acil durum yanmasında savruluruz. Pulsarın sinyali arkamızda zayıflıyor; hiçbir veri elde edilmiyor, hiçbir hasar alınmıyor, kaçma itişi için biraz yakıt harcanıyor.';

  @override
  String get event_alienNursery_title => 'Uzaylı Kuluçka Yuvası';

  @override
  String get event_alienNursery_narrative =>
      'Devasa bir organik yapı boşlukta süzülüyor — uzaylı yavrularını kuluçkaya yatıran biyolojik bir yuva. Yaşam destek sistemleri çöküyor, iç sıcaklıklar düşüyor. İçerideki canlılar ölüyor. Biyo-tarayıcılarımız bu yapıdan muazzam şeyler öğrenebilir, ancak müdahale etmek bilinmeyen patojenlere hava kilitlerimizi açmak demek.';

  @override
  String get event_alienNursery_choice0 =>
      'Yaşam desteklerini stabilize etmeye yardım et';

  @override
  String get event_alienNursery_outcome0 =>
      'Mühendislerimiz yuvaya geçici bir ısı bağlantısı kuruyor, kuluçka odalarını stabilize ediyor. Biyo-tarayıcı verileri olağanüstü — tamamen yeni bir yaşam taksonomisi. Ama korkulduğu gibi, uzaylı mikroorganizmalar gemiye yol buluyor. Tıbbi ekipler salgını kontrol altına alıyor, ancak birkaç kolonist hastalandıktan sonra.';

  @override
  String get event_alienNursery_choice1 => 'Dokunmadan bırak';

  @override
  String get event_alienNursery_outcome1 =>
      'Saygılı bir mesafeden gözlem yapıyoruz, pasif taramalarla belgeleyebildiğimizi belgeliyoruz. Yuva sürüklenmeye devam ediyor, kaderi belirsiz. Mürettebat yaşamın kırılganlığı üzerine — uzaylı yaşamın bile — ve taşıdığımız seçimlerin ağırlığı üzerine düşünüyor.';

  @override
  String get event_derelictArmada_title => 'Terk Edilmiş Donanma';

  @override
  String get event_derelictArmada_narrative =>
      'Yüzlerce kadim savaş gemisi boşlukta hareketsiz asılı duruyor — unutulmuş bir çatışmanın mezarlığı. Gövdeleri tanımlayamadığımız silahların izlerini taşıyor, ancak yapısal malzemeleri ve yerleşik veritabanları paha biçilemez olabilir. Soru neye öncelik verileceği: fiziksel kurtarma mı yoksa bilgi mi.';

  @override
  String get event_derelictArmada_choice0 =>
      'Silah teknolojisi ve gövde kaplamasını kurtar';

  @override
  String get event_derelictArmada_outcome0 =>
      'Kurtarma ekipleri uzaylı savaş gemilerini kesiyor, bizimkinden yüzyıllar ilerideki egzotik alaşımları ve inşaat tekniklerini çıkarıyor. Yapıcılar yeni malzemeleri hevesle entegre ediyor. Ama bir gemi göründüğü kadar ölü değilmiş — çıkarma sırasında bir bubi tuzağı patlıyor ve bir kurtarma ekibini öldürüyor.';

  @override
  String get event_derelictArmada_choice1 => 'Tarihsel arşivlerini indir';

  @override
  String get event_derelictArmada_outcome1 =>
      'Veri çekirdeklerine odaklanıyoruz, yüzyıllar boyunca uzaylı tarihini, sanatını, bilimini ve felsefesini dikkatle çıkarıyoruz. Kültürel arşiv tek başına bilim insanlarını nesiller boyu meşgul edebilir. Teknolojik kavrayışlar, hemen pratik olmasa da, kendi anlayışımızı ileriye taşıyan mühendislik ilkelerini ortaya koyuyor.';

  @override
  String get event_alienQuarantineZone_title => 'Uzaylı Karantina Bölgesi';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Düzinelerce uzaylı dilinde uyarı işaretleri, mühürlenmiş bir uzay bölgesinin sınırını belirliyor. İçeride ne tutuluyorsa, birden fazla medeniyetin onu izole etmek için iş birliği yapacağı kadar tehlikeliydi. Uzun menzilli taramalarımız içeride devasa teknolojik izler tespit ediyor — ve canlı olabilecek bir şey.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Karantinayı ihlal et ve araştır';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Uyarı şamandıralarını geçerek karantina bölgesine giriyoruz. İçeride, şaşırtıcı karmaşıklıkta bir araştırma istasyonu buluyoruz — ve onun incelediği şeyin kalıntılarını. Kurtardığımız teknoloji devrimci, ancak biyolojik kontaminasyon ciddi. Bölgeyi terk etmeden önce düzinelerce kolonist hastalanıyor.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Karantinaya saygı göster';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Uyarı işaretlerinin kendilerini inceliyoruz; bunlar, onları yerleştiren medeniyetlerin navigasyon verilerini ve atmosfer ölçümlerini içeriyor. İçerideki hazine değil, ama bir şey — ve kilitledikleri şeyi serbest bırakmadık.';

  @override
  String get event_hydroponicsBlight_title => 'Hidroponik Veba';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Hızla yayılan bir mantar vebası geminin hidroponik bölmelerini ele geçirdi. Tüm hasat döngüleri gözlerimizin önünde soluyor. Veba henüz tohum rezervlerine ulaşmadı ama bu sadece birkaç saat meselesi. Bölmeleri temizleyip sıfırdan ekebilir ya da mevcut hasadı kurtarabilecek — veya kontaminasyonu daha da yayabilecek — deneysel bir antifungal tedavi deneyebiliriz.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Temizle ve tohum rezervlerinden yeniden ek';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Hidroponik bölmeleri vakuma boşaltıyoruz, vebayı her canlı bitkiyle birlikte öldürüyoruz. Tohum rezervlerinden yeniden ekmek haftalarca sürecek ve taze gıdaya ve bahçe alanlarına bağımlı kültürel programlar askıya alınıyor. Ama enfeksiyon kontrol altında.';

  @override
  String get event_hydroponicsBlight_choice1 => 'Deneysel tedaviyi dene';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Deneysel antifungal başlangıçta umut vaat ediyor, ancak dirençli bir suş aşıyor. Tam temizliğe başvurduğumuzda veba kriyopod besin hatlarına yayılmış durumda. Hasar, en başından kararlı davransaydık olacağından daha kötü.';

  @override
  String get event_constitutionalConvention_title => 'Anayasa Konvansiyonu';

  @override
  String get event_constitutionalConvention_narrative =>
      'Koloni gemisinin nüfusu, resmi yönetim olmadan huzursuz bir şekilde büyüdü. Her güverteden delegeler, gelecekteki koloninin nasıl yönetileceğini tanımlayacak bir sözleşme taslağı hazırlamak için kargo ambarında toplanır. Üç grup yeni hükümet için birbiriyle yarışan vizyonlar sunuyor.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Genel oy hakkına sahip bir demokratik anayasa taslağı hazırlayın';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Sömürgeciler eşit temsili garanti eden bir anayasayı onayladılar. Karar verme süreci yavaşlıyor ancak herkesin sesi duyuldukça moral artıyor.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Acil durum yetkilerine sahip güçlü bir yönetici oluşturun';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Geniş yetkiye sahip tek bir lider atanır. Kararlar çabuk alınıyor ama muhalifler alt güvertelerde tiranlığın fısıldıyor.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Teknokratik bir uzman konseyi oluşturun';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Mühendisler, bilim adamları ve doktorlar uzmanlığa dayalı bir yönetim konseyi oluştururlar. Verimlilik artıyor, ancak bazıları güçten dışlanmış hissediyor.';

  @override
  String get event_militaryCoupThreat_title => 'Askeri Darbe Tehdidi';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Geminin güvenlik ekibinden Komutan Vasquez cephaneliğe el koydu ve bir ültimatom yayınladı: Acil askeri yetkiler verin veya tüm güvertelerin kapatılmasıyla karşı karşıya kalın. Durum değişken ve sömürgeciler bir yanıt için sizden bekliyor.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Sadık mürettebat üyeleriyle darbeye direnin';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Sadık mürettebat Vasquez\'e karşı çıkmak için toplanır. Çatışma minimum düzeyde kan dökülmesiyle sona eriyor, ancak güvenlik ayrıntıları zayıflıyor ve bazı sömürgeciler çapraz ateşin ortasında kalıyor.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Komutanın taleplerini yerine getirin';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Vasquez gemi operasyonlarının kontrolünü devraldı. Düzen hızla yeniden sağlanır, ancak bu, sivil özgürlüklerin pahasına olur. Silahlı devriyeler artık her koridorda yürüyor.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Sınırlı acil durum yetkilerini sona erdirme maddesiyle müzakere edin';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'Gergin müzakerelerin ardından Vasquez, gözetimli geçici yetkiyi kabul eder. Kimseyi tam olarak tatmin etmeyen ama şiddeti önleyen kırılgan bir uzlaşma.';

  @override
  String get event_religiousAwakening_title => 'Dini Uyanış';

  @override
  String get event_religiousAwakening_narrative =>
      'Karizmatik bir vaiz, yüzlerce sömürgeciyi yeni bir inanç hareketine çekti. Her döngüde gözlem kubbesinde toplanırlar, ilahileri havalandırma bacalarında yankılanır. Bazı mürettebat üyeleri fanatizm konusunda endişeleniyor; diğerleri öğretilerde gerçek teselli buluyor.';

  @override
  String get event_religiousAwakening_choice0 =>
      'İnanç hareketini benimseyin ve kaynak sağlayın';

  @override
  String get event_religiousAwakening_outcome0 =>
      'Hareket resmi destekle gelişiyor. İnananlar arasında moral gelişiyor ve onların ortak ruhu, gemideki sosyal bağları güçlendiriyor.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Gemide katı laikliği uygulayın';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Dini toplantılar özel alanlarla sınırlıdır. Hareket yer altına inerek kırgınlıkları besliyor, ancak bilimsel rasyonalizm resmi doktrin olmaya devam ediyor.';

  @override
  String get event_religiousAwakening_choice2 =>
      'İbadete izin verin ancak etkisini düzenleyin';

  @override
  String get event_religiousAwakening_outcome2 =>
      'İnanca izin verilir ancak yönetimden ayrı tutulur. Komutayla irtibat kurmak üzere bir papaz atanır. Huzursuz bir denge korunur.';

  @override
  String get event_corporateTakeover_title => 'Kurumsal Devralma';

  @override
  String get event_corporateTakeover_narrative =>
      'Geminin kaynak yöneticileri gıda dağıtımı, su geri dönüşümü ve enerji tahsisi üzerindeki kontrolü sessizce sağlamlaştırıyor. Şimdi yetkilerini gelecekteki koloninin ekonomisini yönetecek kurumsal bir yapıya dönüştürmeyi öneriyorlar.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Serbest piyasa ilkelerinin kaynakları yönetmesine izin verin';

  @override
  String get event_corporateTakeover_outcome0 =>
      'Kurumsal grup kaynak yönetimini devralır. Verimlilik önemli ölçüde artıyor, ancak fiyatlar artıyor ve en yoksul sömürgeciler temel ihtiyaçları karşılamakta zorlanıyor.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Tüm kaynakların kolektif mülkiyet altında millileştirilmesi';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Kaynaklara el konuluyor ve toplumsal kontrol altına alınıyor. Kurumsal hizip dağıldı, ancak kâr teşvikleri olmadan inovasyon duraklıyor.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Düzenlenmiş piyasaları güvenlik ağlarıyla hayata geçirin';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Fiyat kontrolleri ve refah programlarıyla karma bir ekonomi kuruluyor. Her iki taraf da tam olarak memnun değil, ancak bazı girişimlere izin verilirken temel ihtiyaçlar karşılanıyor.';

  @override
  String get event_successionCrisis_title => 'Veraset Krizi';

  @override
  String get event_successionCrisis_narrative =>
      'Geminin kaptanı uykusunda öldü ve geride belirlenmiş bir halef kalmadı. Üç grup kontrol için hemen yarışıyor: Sivil konsey seçim talep ediyor, güvenlik şefi askeri otorite talep ediyor ve yaşlı sömürgeciler geleneksel liderlik törenlerine başvuruyor.';

  @override
  String get event_successionCrisis_choice0 => 'Acil seçim yapılması';

  @override
  String get event_successionCrisis_outcome0 =>
      'Kaotik ama heyecanlı bir seçim, halk oylamasıyla seçilen yeni bir kaptanın ortaya çıkmasını sağlar. Süreç karmaşık ama sömürgeciler kendi liderliklerinin sahibi olduklarını hissediyorlar.';

  @override
  String get event_successionCrisis_choice1 =>
      'Ordunun komutayı devralmasına izin verin';

  @override
  String get event_successionCrisis_outcome1 =>
      'Güvenlik şefi kaptan koltuğuna oturuyor. Disiplin derhal yeniden sağlanıyor, ancak sivil mürettebat silahlı muhafızlara giderek artan bir rahatsızlıkla bakıyor.';

  @override
  String get event_successionCrisis_choice2 => 'Yaşlılar konseyini toplayın';

  @override
  String get event_successionCrisis_outcome2 =>
      'En yaşlı ve en deneyimli sömürgeciler bir yönetim konseyi oluşturur. Onların bilgeliği gemiye rehberlik ediyor, ancak bazı genç mürettebat gerontokrasi tarafından dışlanmış hissediyor.';

  @override
  String get event_nativeSovereignty_title => 'Yerli Egemenlik';

  @override
  String get event_nativeSovereignty_narrative =>
      'Uzun menzilli taramalar hedef gezegende akıllı yaşamın olduğunu doğruluyor. Ele geçirilen iletişimler, yaklaşımınızı tespit eden gelişmiş bir medeniyeti ortaya çıkarıyor. Resmi bir talepte bulunuyorlar: Ya bölgesel egemenliklerini tanıyacaklar ya da vardıklarında direnişle karşılaşacaklar.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Yerel egemenliği tanıyın ve yerleşmek için izin isteyin';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Yerli hakların resmi olarak tanınmasını iletiyorsunuz. Yanıt temkinli ama olumlu. İniş alanları sınırlı olsa da gelecekteki ilişkiler karşılıklı saygı temelinde başlayacak.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Sömürge üstünlüğünü iddia edin ve direnişe hazırlanın';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Ne olursa olsun uzlaşma niyetinizi yayınlıyorsunuz. Mürettebat silah tatbikatlarına ve tahkimat planlamasına başlar. Yerliler sessizleşiyor ve bu bir şekilde tehditlerden daha korkutucu.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Gezegenin ortak yönetimini önerin';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Birlikte yaşama ve kaynak paylaşımı için bir çerçeve sunuyorsunuz. Yerliler meraklı ama ihtiyatlı. Müzakereler karmaşık olacak ancak barış olasılığı mevcut.';

  @override
  String get event_laborStrike_title => 'İşçi Grevi';

  @override
  String get event_laborStrike_narrative =>
      'Mühendislik ekibi, daha kısa vardiyalar, daha iyi yiyecek tayınları ve navigasyon kararlarında söz hakkı talep ederek işten ayrıldı. Kritik sistemler otomatik yedeklemelerle çalışıyor ancak uzun ömürlü olmayacaklar. Kolonistlerin geri kalanı endişeyle izliyor.';

  @override
  String get event_laborStrike_choice0 =>
      'İşçilerin taleplerini tam olarak karşılayın';

  @override
  String get event_laborStrike_outcome0 =>
      'Grev hemen sona erer. İşçiler iyileştirilmiş koşullarla görevlerine dönüyor. Vardiyalar kısaldıkça üretkenlik biraz düşer, ancak sadakat sarsılmazdır.';

  @override
  String get event_laborStrike_choice1 =>
      'Grevi bastırın ve zorunlu çalışmayı zorunlu kılın';

  @override
  String get event_laborStrike_outcome1 =>
      'Güvenlik güçleri işçilere silah zoruyla istasyonlarına kadar eşlik ediyor. Motorlar yeniden uğultu yapıyor ama alt güvertelerde nefret kaynıyor. Birçok işçi kamaralara hapsedildi.';

  @override
  String get event_laborStrike_choice2 =>
      'Temel talepler konusunda kısmi bir uzlaşma önerin';

  @override
  String get event_laborStrike_outcome2 =>
      'Maraton niteliğindeki müzakerelerin ardından bir anlaşmaya varıldı: Daha iyi tayınlar ve tavsiye niteliğinde girdiler, ancak vardiya süresinde herhangi bir azalma yok. Her iki taraf da heyecanlanmıyor ama motorlar çalışmaya devam ediyor.';

  @override
  String get event_censorshipDebate_title => 'Sansür Tartışması';

  @override
  String get event_censorshipDebate_narrative =>
      'Sızan bir belge, geminin arızalı sistemlerinin gerçek durumunu ortaya koyuyor. Panik alt güvertelere yayılıyor. İletişim görevlisi daha fazla huzursuzluğu önlemek için bilgiye erişimin kısıtlanmasını öneriyor. Sivil özgürlükler savunucuları öfkeli.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Tüm bilgilere ücretsiz erişim garantisi';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Tam şeffaflık sağlanmıştır. Sömürgeciler artık anladıkları sorunların çözümüne yardımcı olmak için harekete geçtikçe ilk panik azalır. Bazı bilgiler sıkıntı yaratmasına rağmen liderliğe olan güven artıyor.';

  @override
  String get event_censorshipDebate_choice1 => 'Tam bilgi kontrolünü uygulayın';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Artık tüm iletişimler komut yoluyla filtreleniyor. Panik sona eriyor, yerini ürkütücü bir sakinlik alıyor. Ancak sansürlenmiş gerçeğin bıraktığı boşluğu söylentiler dolduruyor ve çoğu zaman gerçeklikten daha kötüler.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Yalnızca güvenlik açısından hassas bilgileri filtreleyin';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Bir sınıflandırma sistemi oluşturulmuştur. Bilgilerin çoğu serbestçe akıyor ancak askeri ve kritik sistem verilerinin açıklanması gerekiyor. Çoğunlukla tatmin edici, uygulanabilir bir orta yol.';

  @override
  String get event_colonialCharter_title => 'Sömürge Şartı';

  @override
  String get event_colonialCharter_narrative =>
      'Gezegenin çöküşü yaklaşırken koloniciler, yeni toplumları için temel yasaları hazırlamak zorundadır. Her biri koloninin ne olması gerektiğine dair farklı bir vizyonu savunan üç felsefi kamp ortaya çıktı. Tartışma hararetli ve son derece kişisel.';

  @override
  String get event_colonialCharter_choice0 =>
      'Bireysel hakları vurgulayan ilerici bir sözleşme';

  @override
  String get event_colonialCharter_outcome0 =>
      'Şart kişisel özgürlükleri, eşitliği ve sosyal hareketliliği koruma altına alıyor. Sanatçılar ve düşünürler kutlama yapıyor; Gelenekçiler kontrolsüz özgürlüğün kaosa yol açacağı konusunda uyarıyorlar.';

  @override
  String get event_colonialCharter_choice1 =>
      'Dünyanın geleneklerini koruyan muhafazakar bir sözleşme';

  @override
  String get event_colonialCharter_outcome1 =>
      'Şart, geleneksel değerleri, aile yapılarını ve dini ibadetleri düzenliyor. Birçoğu tanıdık geleneklerde teselli buluyor; diğerleri eski dünya düşüncesinin ağırlığı altında boğulmuş hissediyorlar.';

  @override
  String get event_colonialCharter_choice2 =>
      'Hayatta kalma ve büyümeye odaklanan pragmatik bir sözleşme';

  @override
  String get event_colonialCharter_outcome2 =>
      'Şart kaynak yönetimine, teknik eğitime ve ekonomik kalkınmaya öncelik veriyor. Şiirsellikten yoksundur ancak koloninin verimli ve iyi organize olmasını sağlar.';

  @override
  String get event_separatistMovement_title => 'Ayrılıkçı Hareket';

  @override
  String get event_separatistMovement_narrative =>
      'Bir grup sömürgeci gemi yönetiminden bağımsızlığını ilan etti. Karaya çıktıktan sonra kendi yerleşim yerlerini kurma hakkını talep ederek kıç tarafta barikat kurdular. Geminin yiyecek rezervlerinin %15\'ini ve yedek navigasyon dizisini kontrol ediyorlar.';

  @override
  String get event_separatistMovement_choice0 =>
      'Federal bir çerçeve içerisinde bölgesel özerklik verilmesi';

  @override
  String get event_separatistMovement_outcome0 =>
      'Ayrılıkçılar bir anlaşmayı kabul ediyorlar: gevşek bir federal şemsiye altında yerel yönetime sahip kendi bölgeleri. Parçalanma örneği bazılarını endişelendiriyor ama barış korunuyor.';

  @override
  String get event_separatistMovement_choice1 =>
      'Barikatları yıkın ve yeniden birleşmeyi zorlayın';

  @override
  String get event_separatistMovement_outcome1 =>
      'Güvenlik ekipleri arka bölüme giriyor. Ayrılıkçılar şiddetle direniyor. Düzen yeniden sağlandı, ancak maliyeti çok yüksek oldu. Gemi ruhen olmasa bile bedenen birleşmiştir.';

  @override
  String get event_separatistMovement_choice2 =>
      'Hareketi yönlendiren temel şikayetleri ele alın';

  @override
  String get event_separatistMovement_outcome2 =>
      'Arabulucular, grubu uzaklaştıran şeyin ne olduğunu anlamaya çalışırlar. Kaynak dağıtımı ve temsilindeki reformlar, ayrılıkçıları yavaş yavaş yeniden saflara katıyor. İyileşme zaman alır.';

  @override
  String get event_warCouncil_title => 'Savaş Konseyi';

  @override
  String get event_warCouncil_narrative =>
      'Yakındaki sistemlerde potansiyel tehditlerin tespit edilmesi üzerine geminin liderliği bir savaş konseyi toplar. Soru şu: Koloninin sınırlı kaynaklarının ne kadarı sivil altyapıya karşı askeri hazırlığa ayrılmalı?';

  @override
  String get event_warCouncil_choice0 =>
      'Tam silahlanma: silahlar üretin ve askerleri eğitin';

  @override
  String get event_warCouncil_outcome0 =>
      'Atölyeler silah üretimi için yeniden donatıldı. Bedeni sağlam olan her sömürgeci savaş eğitimi alır. Gemi silahla dolu ama tarım ekipmanlarına ayrılan bütçe azalıyor.';

  @override
  String get event_warCouncil_choice1 =>
      'Silahsızlanma: Silahları aletlere dönüştürün';

  @override
  String get event_warCouncil_outcome1 =>
      'Cephanelik boşaltılıyor ve içindekiler inşaat malzemelerine dönüştürülüyor. Koloni kılıçlarla değil saban demirleriyle inşa edilecek. Pasifistler seviniyor; Realistler karanlıkta neyin gizlendiği konusunda endişelenirler.';

  @override
  String get event_warCouncil_choice2 =>
      'Yalnızca savunma duruşu: kalkanlar ve duvarlar, kılıçlar değil';

  @override
  String get event_warCouncil_outcome2 =>
      'Kaynaklar tahkimatlara, kalkanlara ve erken uyarı sistemlerine gidiyor. Hiçbir saldırı silahı üretilmiyor. Potansiyel komşuları kışkırtmadan seçenekleri açık tutan dengeli bir yaklaşım.';

  @override
  String get event_tradeFederation_title => 'Ticaret Federasyonu';

  @override
  String get event_tradeFederation_narrative =>
      'Koloni varlığını sürdürebilmeye yaklaşırken gruplar ekonomisini nasıl yapılandıracaklarını tartışıyor. Sorun hayatta kalmanın ötesine geçiyor; yabancı topraklarda kök salan toplum türünü tanımlayacak. Tüccarlar, toplumcular ve bürokratların hepsi kendi davasını ortaya koyuyor.';

  @override
  String get event_tradeFederation_choice0 =>
      'Minimum düzenlemeyle serbest ticaret bölgeleri kurun';

  @override
  String get event_tradeFederation_outcome0 =>
      'Her habitat modülünde pazarlar ortaya çıkar. Tüccarlar rekabet ettikçe inovasyon gelişir. Zenginlik eşitsizliği artıyor ancak koloninin kullanabileceği toplam kaynak havuzu da artıyor.';

  @override
  String get event_tradeFederation_choice1 =>
      'Tüm kaynakların ortak paylaşımını uygulayın';

  @override
  String get event_tradeFederation_outcome1 =>
      'Özel mülkiyet kaldırılmıştır. Her şey herkese aittir. Kimse aç kalmıyor ama kimsenin asgari miktardan fazlasını üretme dürtüsü de yok. Sıradanlık rahattır.';

  @override
  String get event_tradeFederation_choice2 =>
      'Devlet tarafından yönetilen bir ticaret sistemi oluşturun';

  @override
  String get event_tradeFederation_outcome2 =>
      'Hükümet tüm ticareti kontrol eder, fiyatları belirler ve kaynakları tahsis eder. Sistem adil ama esnek değil. Bakım koridorlarında karaborsalar ortaya çıkıyor.';

  @override
  String get event_faithVsScience_title => 'İnanç ve Bilim';

  @override
  String get event_faithVsScience_narrative =>
      'Geminin teleskopu, baskın inanç hareketinin temel ilkesiyle doğrudan çelişen kozmik bir olgunun görüntülerini yakaladı. Baş bilim insanı bulguları yayınlamak istiyor; dini lider toplumu parçalayacakları konusunda ısrar ediyor.';

  @override
  String get event_faithVsScience_choice0 =>
      'Bilimsel bulguların tamamını yayınlayın';

  @override
  String get event_faithVsScience_outcome0 =>
      'Gerçek, rahatlığa üstün gelir. Veriler açıklandı ve dini hareket parçalandı. Bazı müminler imanlarını uyarlarlar; diğerleri onu tamamen kaybeder. Bilgi ilerler.';

  @override
  String get event_faithVsScience_choice1 =>
      'Sosyal uyumu korumak için bulguları bastırın';

  @override
  String get event_faithVsScience_outcome1 =>
      'Veriler sınıflandırılır. Dini topluluk istikrarlı olmaya devam ediyor ancak bilim ekibinin morali bozuldu. Ertelenen gerçek, inkar edilen gerçek değildir, ancak öyle hissedilir.';

  @override
  String get event_faithVsScience_choice2 =>
      'Her iki görüş arasındaki uyumu bulmak için ortak bir panel düzenleyin';

  @override
  String get event_faithVsScience_outcome2 =>
      'Bilim adamları ve ilahiyatçılar bulguları yeniden yorumlamak için birlikte çalışıyorlar. Hem anlayışı hem de inancı genişleten yeni bir sentez ortaya çıkıyor. Herkes ikna olmuş değil ama diyalog sağlıklı.';

  @override
  String get event_surveillanceState_title => 'Gözetim Durumu';

  @override
  String get event_surveillanceState_narrative =>
      'Bir dizi sabotaj olayının ardından güvenlik şefi, geminin her bölmesine izleme sistemleri kurmayı önerir. Kameralar, mikrofonlar ve biyometrik tarayıcılar her sömürgecinin hareketlerini takip edecek. Gizlilik savunucuları dehşete düşmüş durumda.';

  @override
  String get event_surveillanceState_choice0 =>
      'Gözetim teklifini tamamen reddet';

  @override
  String get event_surveillanceState_outcome0 =>
      'Gizlilik korunur. Sabotajcı hâlâ serbest ama sömürgeciler izlenilmediklerini bildikleri için daha rahat uyuyorlar. Soruşturma geleneksel yöntemlerle devam ediyor.';

  @override
  String get event_surveillanceState_choice1 =>
      'Gemi genelinde tam gözetim uygulayın';

  @override
  String get event_surveillanceState_outcome1 =>
      'Geminin her köşesi izleniyor. Sabotajcı birkaç gün içinde yakalanır. Ancak kameralar duruyor ve güvenlik şefi onları kapatmakla ilgilenmiyor. Durmadan.';

  @override
  String get event_surveillanceState_choice2 =>
      'Yalnızca kritik alanlarda sınırlı izleme kurun';

  @override
  String get event_surveillanceState_outcome2 =>
      'Kameralar makine dairesini, cephaneliği ve köprüyü izliyor. Yaşam alanları özel kalır. Sabotajcı en sonunda model analizi yoluyla tanımlanır. Ölçülü bir yanıt.';

  @override
  String get event_nativeAlliance_title => 'Yerli İttifak';

  @override
  String get event_nativeAlliance_narrative =>
      'Yerli uygarlık resmi bir anlaşma önerdi. Büyükelçileri, şaşırtıcı derecede gelişmiş bir tercüman cihazı aracılığıyla konuşan zarif bir varlık olan mekik ile gelir. Her biri koloninin geleceği açısından farklı anlamlara sahip üç ilişki biçimi sunuyorlar.';

  @override
  String get event_nativeAlliance_choice0 => 'Eşit ittifak anlaşması imzalayın';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Anlaşma karşılıklı savunmayı, ortak araştırmayı ve eşit toprak haklarını tesis ediyor. Her iki medeniyet birlikte büyüyecek. Yerliler, koloni beklentilerinizi dönüştüren tarımsal bilgileri paylaşıyor.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Sömürge hakimiyeti konumundan müzakere yapın';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Uygun koşulları güvence altına almak için ileri teknolojinizden yararlanırsınız. Yerliler topraklarını ve kaynaklarını bırakıyor. Titreyen ellerle imza atıyorlar. Tarih bunu daha önce de görmüştü ve sonu nadiren iyi bitmişti.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Karşılıklı fayda odaklı bir ticaret ortaklığı kurmak';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Ticaret türler arasındaki boşluğu doldurur. Yerel malzemeler atölyelerinize akıyor; teknolojiniz onların ilaçlarını geliştiriyor. Dostluk karşılıklı kazançtan doğar.';

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
