// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Siaran Bintang';

  @override
  String get ui_title_stellar => 'SIARAN';

  @override
  String get ui_title_broadcast => 'BINTANG';

  @override
  String get ui_title_beginVoyage => 'MULAKAN PELAYARAN';

  @override
  String get ui_title_dailyVoyage => 'PELAYARAN HARIAN';

  @override
  String get ui_title_dailyCompleted => 'HARIAN SELESAI';

  @override
  String get ui_title_customSeed => 'BENIH TERSUAI';

  @override
  String get ui_title_legacyHub => 'HAB WARISAN';

  @override
  String get ui_title_cancel => 'BATAL';

  @override
  String get ui_title_startVoyage => 'MULAKAN PELAYARAN';

  @override
  String ui_voyage_sector(int count) {
    return 'SEK $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'BENIH: $code';
  }

  @override
  String get ui_voyage_scanners => 'PENGIMBAS';

  @override
  String get ui_voyage_scanPlanet => 'IMBAS PLANET';

  @override
  String get ui_voyage_noEnergy => 'TIADA TENAGA';

  @override
  String get ui_voyage_pressOn => 'TERUSKAN';

  @override
  String get ui_voyage_systemHull => 'Badan Kapal';

  @override
  String get ui_voyage_systemNav => 'Navigasi';

  @override
  String get ui_voyage_systemCryopods => 'Kriopod';

  @override
  String get ui_voyage_systemCulture => 'Budaya';

  @override
  String get ui_voyage_systemTech => 'Teknologi';

  @override
  String get ui_voyage_systemConstruct => 'Pembinaan';

  @override
  String get ui_voyage_systemShields => 'Perisai';

  @override
  String get ui_voyage_systemLanding => 'Pendaratan';

  @override
  String get ui_voyage_scannerAtmo => 'Imbas Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Imbas Graviti';

  @override
  String get ui_voyage_scannerMineral => 'Imbas Mineral';

  @override
  String get ui_voyage_scannerLife => 'Imbas Hayat';

  @override
  String get ui_voyage_scannerTemp => 'Imbas Suhu';

  @override
  String get ui_voyage_scannerWater => 'Imbas Air';

  @override
  String get ui_voyage_narrative0 =>
      'Orbit Bumi jelas. Kriopod stabil. Gelang arkib selamat.';

  @override
  String get ui_voyage_narrative1 =>
      'Transit sistem luar nominal. Pengimbas jarak jauh meluaskan pencarian.';

  @override
  String get ui_voyage_narrative2 =>
      'Trafik Bumi telah pudar di bawah ambang pengesanan.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Koordinat arkib sepadan dengan sistem yang ditanda. Melaraskan haluan.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Susunan pengimbas masih menentukur untuk resolusi angkasa dalam.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Sistem bertanda di hadapan. Data tinjauan terdahulu kekal konsisten.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Isyarat samar di hadapan. Memulakan sapuan planet.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Keluar FTL selesai. Sistem bintang baharu dalam pandangan.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Bank kriopod stabil. Imbasan sektor sedang berjalan.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Planet baharu muncul dalam susunan hadapan.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Kartografi bintang menandakan calon yang berdaya maju.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instrumen telah menemui dunia lain yang layak diukur.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Kunci pengimbas diperoleh pada sasaran baharu.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Carta navigasi dikemas kini. Dunia calon dalam jangkauan.';

  @override
  String get ui_scan_landHere => 'MENDARAT DI SINI';

  @override
  String get ui_scan_pressOn => 'TERUSKAN';

  @override
  String get ui_scan_allStatsVerified => 'SEMUA STATISTIK DISAHKAN';

  @override
  String get ui_scan_launchProbe => 'LANCARKAN PROB';

  @override
  String get ui_scan_habitability => 'KEBOLEHDIAMAN';

  @override
  String get ui_scan_statAtmos => 'ATMOSFERA';

  @override
  String get ui_scan_statTemp => 'SUHU';

  @override
  String get ui_scan_statWater => 'AIR';

  @override
  String get ui_scan_statResource => 'SUMBER';

  @override
  String get ui_scan_statGravity => 'GRAVITI';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALI';

  @override
  String get ui_scan_statRadiation => 'RADIASI';

  @override
  String get ui_landing_planetAnalysis => 'ANALISIS PLANET';

  @override
  String get ui_landing_shipStatus => 'STATUS KAPAL';

  @override
  String ui_landing_fuel(int amount) {
    return 'BAHAN API: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'AMARAN BAHAN API RENDAH';

  @override
  String get ui_landing_landingRiskCritical => 'RISIKO PENDARATAN: KRITIKAL';

  @override
  String get ui_landing_landingRiskElevated => 'RISIKO PENDARATAN: TINGGI';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Sistem pendaratan rosak teruk. Kemasukan atmosfera mungkin memusnahkan kargo dan kolonis.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Sistem pendaratan merosot. Jangkakan kemasukan atmosfera yang kasar dengan kemungkinan kerosakan sistem.';

  @override
  String get ui_landing_riskAssessment => 'PENILAIAN RISIKO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Kapal anda mampu bertahan ~$remaining pertemuan lagi';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Kapal anda mungkin tidak bertahan pelayaran seterusnya';

  @override
  String get ui_landing_surfaceFeatures => 'CIRI-CIRI PERMUKAAN';

  @override
  String get ui_landing_nameYourColony => 'NAMAKAN KOLONI ANDA';

  @override
  String get ui_landing_establishColony => 'TUBUHKAN KOLONI';

  @override
  String get ui_landing_pressOnward => 'TERUS MARA';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfera';

  @override
  String get ui_landing_statTemperature => 'Suhu';

  @override
  String get ui_landing_statWater => 'Air';

  @override
  String get ui_landing_statResources => 'Sumber';

  @override
  String get ui_landing_statGravity => 'Graviti';

  @override
  String get ui_landing_statBiodiversity => 'Biodiversiti';

  @override
  String get ui_landing_statAvgHealth => 'Purata Kesihatan';

  @override
  String get ui_landing_statHull => 'Badan Kapal';

  @override
  String get ui_landing_statNavigation => 'Navigasi';

  @override
  String get ui_landing_statCryopods => 'Kriopod';

  @override
  String get ui_landing_statCulture => 'Budaya';

  @override
  String get ui_landing_statTech => 'Teknologi';

  @override
  String get ui_landing_statConstructors => 'Pembina';

  @override
  String get ui_landing_statShields => 'Perisai';

  @override
  String get ui_landing_statLandingSys => 'Sis Pendaratan';

  @override
  String get ui_landingSequence_phase1 => 'FASA 1: KOMIT ORBIT';

  @override
  String get ui_landingSequence_phase1Desc =>
      'Tetingkap penurunan terbuka. Berkomit kepada kemasukan.';

  @override
  String get ui_landingSequence_phase2 => 'FASA 2: API ATMOSFERA';

  @override
  String get ui_landingSequence_title => 'URUTAN PENDARATAN';

  @override
  String get ui_landingSequence_viewColonyReport => 'LIHAT LAPORAN KOLONI';

  @override
  String get ui_ending_colonyEstablished => 'KOLONI DITUBUHKAN';

  @override
  String get ui_ending_colonyScore => 'SKOR KOLONI';

  @override
  String get ui_ending_colonyProfile => 'PROFIL KOLONI';

  @override
  String get ui_ending_landscape => 'LANDSKAP';

  @override
  String get ui_ending_voyageRecord => 'REKOD PELAYARAN';

  @override
  String get ui_ending_scoreBreakdown => 'PECAHAN SKOR';

  @override
  String get ui_ending_total => 'JUMLAH';

  @override
  String get ui_ending_achievementsUnlocked => 'PENCAPAIAN DIBUKA';

  @override
  String get ui_ending_challengeFriend => 'CABAR RAKAN';

  @override
  String get ui_ending_copySeed => 'SALIN BENIH';

  @override
  String get ui_ending_viewLegacy => 'LIHAT WARISAN';

  @override
  String get ui_ending_newVoyage => 'PELAYARAN BAHARU';

  @override
  String get ui_ending_achievementFirstLanding => 'Pendaratan Pertama';

  @override
  String get ui_ending_achievementGoldenAge => 'Zaman Keemasan';

  @override
  String get ui_ending_achievementSurvivor => 'Mangsa Selamat';

  @override
  String get ui_ending_achievementExplorer => 'Penjelajah';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfeksionis';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Mangsa Selamat Dunia Maut';

  @override
  String get ui_ending_achievementFullCrew => 'Kru Penuh';

  @override
  String get ui_ending_achievementProbeMaster => 'Pakar Prob';

  @override
  String get ui_ending_achievementIronHull => 'Badan Besi';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Lompatan Iman';

  @override
  String get ui_gameOver_missionFailed => 'MISI GAGAL';

  @override
  String get ui_gameOver_voyageRecord => 'REKOD PELAYARAN';

  @override
  String get ui_gameOver_encountersSurvived => 'PERTEMUAN TERSELAMAT';

  @override
  String get ui_gameOver_probesRemaining => 'PROB BERBAKI';

  @override
  String get ui_gameOver_colonistsRemaining => 'KOLONIS BERBAKI';

  @override
  String get ui_gameOver_finalShipHealth => 'KESIHATAN KAPAL AKHIR';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANET DILANGKAU';

  @override
  String get ui_gameOver_damageTaken => 'KEROSAKAN DITERIMA';

  @override
  String get ui_gameOver_fuelRemaining => 'BAHAN API BERBAKI';

  @override
  String get ui_gameOver_energyRemaining => 'TENAGA BERBAKI';

  @override
  String get ui_gameOver_challengeFriend => 'CABAR RAKAN';

  @override
  String get ui_gameOver_viewLegacy => 'LIHAT WARISAN';

  @override
  String get ui_gameOver_newVoyage => 'PELAYARAN BAHARU';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 SIARAN BINTANG\n\nSaya tidak bertahan... $reason.\nRasa boleh buat lebih baik dalam pelayaran yang sama?\nstellarbroadcast://play?seed=$seedCode\n\nBelum ada aplikasinya?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Kolonis terakhir meninggal dalam tidur kriogenik — kegagalan beruntun yang tiada protokol kecemasan mampu mencegah. Exodus terus belayar, kapal hantu yang hanya membawa sistem automatik dan kesunyian beku. Misinya gagal bukan dalam satu detik bencana, tetapi dalam hakisan perlahan nyawa manusia, satu demi satu, sehingga tiada yang tinggal.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Badan kapal runtuh dalam kesunyian — kelesuan logam yang bertambah akibat hentaman mikro yang tak terkira sehingga kapal tidak mampu bertahan lagi. Atmosfera mengalir ke dalam kekosongan. Kapal koloni Exodus berpecah, serpihan-serpihannya menyertai medan debris purba antara bintang-bintang. Tiada isyarat kecemasan yang pernah diterima.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Tanpa navigasi, Exodus hanyut ke angkasa yang belum diterokai — carta bintang tidak berguna, pembetulan haluan mustahil. Kapal terus belayar merentasi kegelapan, penumpang tidurnya tidak sedar bahawa destinasi mereka telah digantikan oleh keabadian. Ada yang berkata kapal itu masih hanyut, kapal hantu dalam malam yang tidak berkesudahan.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Satu demi satu, kriopod gagal — rentetan yang tiada protokol kecemasan mampu menghentikan. Kolonis tidak pernah terjaga. Exodus meneruskan haluan terprogramnya, kapal kubur yang hanya membawa kesunyian ke mana-mana dunia yang akhirnya akan dicapainya. Monumen kepada impian yang mati dalam tidur beku.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Exodus menjadi senyap. Misinya, krunya, kargo harapan manusianya — semua hilang kepada keluasan acuh antara bintang-bintang. Mungkin suatu hari nanti tamadun lain akan menemui serpihan dan tertanya-tanya apakah spesies berani yang pernah menentang kekosongan itu.';

  @override
  String get ui_settings_title => 'TETAPAN';

  @override
  String get ui_settings_music => 'MUZIK';

  @override
  String get ui_settings_soundEffects => 'KESAN BUNYI';

  @override
  String get ui_settings_haptics => 'HAPTIK';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Jadi Premium';

  @override
  String get ui_settings_enabled => 'Diaktifkan';

  @override
  String get ui_settings_volume => 'Kelantangan';

  @override
  String get ui_settings_language => 'Bahasa';

  @override
  String get ui_settings_systemDefault => 'Lalai sistem';

  @override
  String get ui_legacy_title => 'HAB WARISAN';

  @override
  String get ui_legacy_commanderStats => 'STATISTIK KOMANDER';

  @override
  String get ui_legacy_highScores => 'SKOR TERTINGGI';

  @override
  String get ui_legacy_upgrades => 'NAIK TARAF';

  @override
  String get ui_legacy_achievements => 'PENCAPAIAN';

  @override
  String get ui_legacy_voyageLog => 'LOG PELAYARAN';

  @override
  String get ui_legacy_voyages => 'PELAYARAN';

  @override
  String get ui_legacy_bestScore => 'SKOR TERBAIK';

  @override
  String get ui_legacy_legacyPts => 'MATA WARISAN';

  @override
  String get ui_legacy_completed => 'SELESAI';

  @override
  String get ui_legacy_notYetPlayed => 'BELUM DIMAINKAN';

  @override
  String get ui_legacy_dailyHistory => 'SEJARAH HARIAN';

  @override
  String get ui_premium_goPremium => 'JADI PREMIUM';

  @override
  String get ui_premium_subtitle => 'Sokong misi ini. Naik taraf arahan anda.';

  @override
  String get ui_premium_removeAds => 'Buang semua iklan selama-lamanya';

  @override
  String get ui_premium_supportIndie => 'Sokong pembangunan indie';

  @override
  String get ui_premium_exclusiveTitle => 'Gelaran komander eksklusif';

  @override
  String get ui_premium_priorityFeatures => 'Permintaan ciri keutamaan';

  @override
  String get ui_premium_lifetime => 'Seumur Hidup';

  @override
  String get ui_scannerUpgrade_title => 'NAIK TARAF PENGIMBAS';

  @override
  String get ui_scannerUpgrade_subtitle => 'Pilih pengimbas untuk dinaik taraf';

  @override
  String get ui_scannerUpgrade_skip => 'LANGKAU';

  @override
  String get ui_scannerUpgrade_max => 'MAKS';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosfera';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrik';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Tanda Hayat';

  @override
  String get ui_scannerUpgrade_temperature => 'Suhu';

  @override
  String get ui_scannerUpgrade_water => 'Air';

  @override
  String get ui_event_continue => 'TERUSKAN';

  @override
  String get ui_event_tapToSkip => 'KETIK UNTUK LANGKAU';

  @override
  String get ui_event_colonists => 'KOLONIS';

  @override
  String get ui_event_landing => 'PENDARATAN';

  @override
  String get ui_event_atmScan => 'IMBAS ATM';

  @override
  String get ui_event_gravScan => 'IMBAS GRAV';

  @override
  String get ui_event_minScan => 'IMBAS MIN';

  @override
  String get ui_event_lifeScan => 'IMBAS HAYAT';

  @override
  String get ui_event_tempScan => 'IMBAS SUHU';

  @override
  String get ui_event_h2oScan => 'IMBAS H2O';

  @override
  String get onboarding_page0_title => 'Harapan Terakhir Manusia';

  @override
  String get onboarding_page0_description =>
      'Bumi sedang mati. Kerajaan-kerajaan dunia telah mengumpulkan simpanan terakhir mereka untuk membina satu kapal terakhir — kapal koloni yang membawa sisa-sisa manusia ke bintang-bintang.';

  @override
  String get onboarding_page1_title => 'Cari Rumah Baharu';

  @override
  String get onboarding_page1_description =>
      'Belayar merentasi kekosongan yang belum dipetakan antara bintang-bintang. Imbas dunia asing, hadapi bahaya kosmik, dan buat pilihan yang mustahil.';

  @override
  String get onboarding_page2_title => 'Warisan Anda Kekal';

  @override
  String get onboarding_page2_description =>
      'Setiap pelayaran mengajar manusia sesuatu yang baharu. Kumpulkan Mata Warisan untuk membuka naik taraf kekal, dan ukir nama anda di bintang-bintang.';

  @override
  String get onboarding_page3_title => 'Privasi Anda, Pilihan Anda';

  @override
  String get onboarding_page3_description =>
      'Pilih bagaimana anda ingin mengalami Siaran Bintang.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Syurga';

  @override
  String get planet_tierHabitable => 'Boleh Didiami';

  @override
  String get planet_tierHarsh => 'Keras';

  @override
  String get planet_tierHostile => 'Bermusuhan';

  @override
  String get planet_tierDeathWorld => 'Dunia Maut';

  @override
  String get planet_featurePlantLife => 'Kehidupan Tumbuhan';

  @override
  String get planet_featureEdiblePlants => 'Tumbuhan Boleh Dimakan';

  @override
  String get planet_featurePoisonousPlants => 'Tumbuhan Beracun';

  @override
  String get planet_featureUnicellularLife => 'Hidupan Unisel';

  @override
  String get planet_featureDangerousFauna => 'Fauna Berbahaya';

  @override
  String get planet_featureTameableFauna => 'Fauna Boleh Dijinakkan';

  @override
  String get planet_featureAirtightCaves => 'Gua Kedap Udara';

  @override
  String get planet_featureInsulatedCaves => 'Gua Bertebat';

  @override
  String get planet_featureBarrenMoon => 'Bulan Tandus';

  @override
  String get planet_featureMetalRichMoon => 'Bulan Kaya Logam';

  @override
  String get planet_featureUnstableMoon => 'Bulan Tidak Stabil';

  @override
  String get planet_featureOutstandingBeauty => 'Keindahan Luar Biasa';

  @override
  String get planet_featureOutstandingUgliness => 'Keburukan Luar Biasa';

  @override
  String get planet_featureAncientRuins => 'Runtuhan Purba';

  @override
  String get planet_featureMonuments => 'Monumen';

  @override
  String get planet_featureRapidRotation => 'Putaran Pantas';

  @override
  String get planet_featureSlowRotation => 'Putaran Perlahan';

  @override
  String get planet_featureVolcanicActivity => 'Aktiviti Gunung Berapi';

  @override
  String get planet_featureTectonicInstability => 'Ketidakstabilan Tektonik';

  @override
  String get planet_featureElectricalStorms => 'Ribut Elektrik';

  @override
  String get planet_featureToxicSpores => 'Spora Toksik';

  @override
  String get planet_featureDeepOceans => 'Lautan Dalam';

  @override
  String get planet_featureGeothermalVents => 'Lubang Geoterma';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnetosfera Kuat';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnetosfera Lemah';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organisma Simbiotik';

  @override
  String get planet_featureGravityWells => 'Telaga Graviti';

  @override
  String get planet_featureSubspaceEchoes => 'Gema Subruang';

  @override
  String get planet_featureBioluminescentLife => 'Kehidupan Bioluminesens';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna Akuatik';

  @override
  String get planet_featureFloatingIslands => 'Pulau Terapung';

  @override
  String get planet_featureCrystalCaverns => 'Gua Kristal';

  @override
  String get planet_featureLavaTubes => 'Tiub Lava';

  @override
  String get planet_featureIceTunnels => 'Terowong Ais';

  @override
  String get planet_featureOrbitalWreckage => 'Serpihan Orbit';

  @override
  String get planet_featureMegastructuralFragments => 'Serpihan Megastruktur';

  @override
  String get planet_featureAncientObservatory => 'Balai Cerap Purba';

  @override
  String get planet_featureExtremeSeasons => 'Musim Melampau';

  @override
  String get planet_featureCryovolcanism => 'Kriovolkanisme';

  @override
  String get planet_featureFloatingKelpForests => 'Hutan Rumpai Laut Terapung';

  @override
  String get planet_featureSingingCrystals => 'Kristal Bernyanyi';

  @override
  String get planet_featureFertileSoil => 'Tanah Subur';

  @override
  String get planet_featureHelium3Deposits => 'Mendapan Helium-3';

  @override
  String get planet_featureExoticIsotopes => 'Isotop Eksotik';

  @override
  String get planet_featureMedicinalFlora => 'Flora Perubatan';

  @override
  String get ui_monthJan => 'JAN';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MAC';

  @override
  String get ui_monthApr => 'APR';

  @override
  String get ui_monthMay => 'MEI';

  @override
  String get ui_monthJun => 'JUN';

  @override
  String get ui_monthJul => 'JUL';

  @override
  String get ui_monthAug => 'OGO';

  @override
  String get ui_monthSep => 'SEP';

  @override
  String get ui_monthOct => 'OKT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DIS';

  @override
  String get event_asteroidField_title => 'Medan Asteroid';

  @override
  String get event_asteroidField_narrative =>
      'Pengimbas jarak jauh mengesan medan asteroid yang padat tepat di laluan penerbangan kita. Navigasi mengira dua pilihan: larian berisiko melalui koridor yang paling nipis, atau lencongan panjang yang akan membebankan simpanan bahan api dan menekan susunan navigasi.';

  @override
  String get event_asteroidField_choice0_text => 'Terobos koridor itu';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Kapal bergetar akibat hentaman mikro menghujani badan kapal. Kita berjaya melaluinya, tetapi tidak tanpa cedera.';

  @override
  String get event_asteroidField_choice1_text => 'Ambil jalan panjang';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Lencongan itu membakar bahan api berharga dan memenatkan komputer navigasi, tetapi badan kapal kekal utuh.';

  @override
  String get event_asteroidField_choice2_text =>
      'Guna dron perlombongan untuk membuka laluan';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Dron mengukir saluran selamat dan mengumpul mineral berguna, tetapi operasi itu menguras bahagian teknologi.';

  @override
  String get event_asteroidField_choice3_text => 'Hantar prob sebagai umpan';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Prob menarik gugusan terpadat menjauhi kapal. Kita menyelinap melaluinya dengan hanya calar kecil.';

  @override
  String get event_solarFlare_title => 'Jilatan Suria Datang';

  @override
  String get event_solarFlare_narrative =>
      'Bintang berdekatan meletus dengan lontaran korona yang besar. Gelombang zarah bercas akan sampai kepada kita dalam beberapa minit. Kita boleh alihkan kuasa ke perisai, lindungi kolonis di teras, atau bertahan sahaja.';

  @override
  String get event_solarFlare_choice0_text => 'Alihkan semua kuasa ke perisai';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Perisai bertahan, tetapi lonjakan kuasa membakar sistem sekunder.';

  @override
  String get event_solarFlare_choice1_text =>
      'Pindahkan kolonis ke teras berperisai';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Kolonis selamat tanpa cedera, tetapi dek luar mengalami kerosakan radiasi.';

  @override
  String get event_solarFlare_choice2_text =>
      'Bertahan sahaja — semua bersedia';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Jilatan itu melanda kuat. Sistem berkelip, tetapi tiada yang bencana. Semangat, bagaimanapun, terjejas.';

  @override
  String get event_solarFlare_choice3_text =>
      'Lancarkan prob untuk mengukur hadapan gelombang';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Prob menghantar data hadapan gelombang yang tepat, membolehkan kita mengarahkan kapal secara optimum. Kerosakan pengimbas adalah minimum.';

  @override
  String get event_nebulaPassage_title => 'Laluan Nebula';

  @override
  String get event_nebulaPassage_narrative =>
      'Nebula bercahaya membentang di laluan kita. Melaluinya mungkin mengecas semula sel tenaga kita tetapi boleh mengganggu susunan pengimbas. Memutarinya selamat tetapi perlahan.';

  @override
  String get event_nebulaPassage_choice0_text => 'Terbang melalui nebula';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Gas terion nebula mengecas semula sel kuasa tetapi mengacaukan penentukuran pengimbas kita.';

  @override
  String get event_nebulaPassage_choice1_text => 'Susuri tepinya';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Kita mendapat cas separa dengan gangguan minimum. Kompromi yang selamat.';

  @override
  String get event_microMeteorite_title => 'Ribut Mikro-Meteorit';

  @override
  String get event_microMeteorite_narrative =>
      'Gerombolan mikro-meteorit, tidak kelihatan sehingga beberapa saat lalu, sedang mengoyak pelapisan badan kapal hadapan. Pasukan kawalan kerosakan bergegas.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Putaran kecemasan — hadapkan bahagian belakang berperisai';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Manuver itu berjaya. Perisai belakang menyerap yang terburuk, tetapi giro navigasi membantah dengan hebat.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Hantar dron pembaikan di tengah ribut';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Dron menampal badan kapal secara langsung tetapi beberapa hilang. Rizab teknologi habis.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Letupkan prob untuk menyerakkan gerombolan';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Letupan prob menyerakkan gugusan mikro-meteorit. Hanya beberapa serpihan sampai ke badan kapal.';

  @override
  String get event_gravityWell_title => 'Telaga Graviti Tidak Dikenali';

  @override
  String get event_gravityWell_narrative =>
      'Kapal terhentak apabila telaga graviti yang tidak kelihatan menarik kita keluar haluan. Enjin berjuang menentang tarikan itu. Kita boleh membakar habis untuk melepaskan diri, atau melakukan manuver katapel untuk pecutan dengan kos tekanan struktur.';

  @override
  String get event_gravityWell_choice0_text =>
      'Pembakaran penuh — bebaskan diri';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Enjin menderu dan badan kapal mengeluh, tetapi kita melepaskan diri dengan bersih.';

  @override
  String get event_gravityWell_choice1_text => 'Manuver katapel';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Katapel itu berjaya cantik. Kita mendapat pecutan, tetapi daya-G menekan pengedap kriopod.';

  @override
  String get event_crewUnrest_title => 'Keresahan Kru';

  @override
  String get event_crewUnrest_narrative =>
      'Satu puak kolonis yang terjaga memohon kepada Majlis Pengurus untuk dibebaskan dari tidur kriogenik secara kekal. Mereka berhujah bahawa hidup dalam senja beku adalah tidak berperikemanusiaan. Kakitangan Wad Krio memberi amaran bahawa membangunkan lebih ramai mulut bermakna membakar bekalan.';

  @override
  String get event_crewUnrest_choice0_text => 'Benarkan pencairan sukarela';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Semangat melonjak apabila keluarga bersatu semula di dunia sedar, tetapi penggunaan sumber meningkat mendadak.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Tolak permohonan — keselamatan diutamakan';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Kolonis mematuhi, tetapi dendam membara di koridor.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Kompromi — kitaran pencairan bergilir';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Penyelesaian seimbang. Semua orang mendapat sedikit masa sedar, tetapi pengitaran kriopod menambah kehausan.';

  @override
  String get event_stowaway_title => 'Penumpang Gelap Ditemui';

  @override
  String get event_stowaway_narrative =>
      'Juruaudit Pejabat Manifes menemui orang tidak berdaftar bersembunyi di teluk kargo 7. Dia mendakwa sebagai ahli genetik yang ditolak tempat dalam senarai pelancaran. Kemahirannya mungkin tidak ternilai — atau dia mungkin pengkhianat.';

  @override
  String get event_stowaway_choice0_text =>
      'Sambut dia — kita perlukan setiap minda';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez terbukti cemerlang. Kepakaran genetiknya meningkatkan kecekapan kriopod, walaupun sesetengah kru tidak mempercayainya.';

  @override
  String get event_stowaway_choice1_text =>
      'Kurung dia — kepercayaan mesti diperolehi';

  @override
  String get event_stowaway_choice1_outcome =>
      'Dia bekerjasama dari kurungan dan akhirnya mendapat akses terhad. Kru berasa lebih selamat.';

  @override
  String get event_stowaway_choice2_text =>
      'Masukkan dia semula ke krio sehingga mendarat';

  @override
  String get event_stowaway_choice2_outcome =>
      'Penyelesaian pragmatik. Kemahirannya disimpan untuk kemudian, tetapi perdebatan etika memecahbelahkan kru.';

  @override
  String get event_mutinyBrewing_title => 'Pemberontakan Sedang Merancak';

  @override
  String get event_mutinyBrewing_narrative =>
      'Pengawas Jambatan memintas mesej daripada sekumpulan pegawai yang merancang untuk merampas arahan dan menukar haluan ke sistem yang lebih dekat dan kurang sesuai. Mereka percaya haluan semasa adalah hukuman mati.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Hadapi mereka secara terbuka — ketelusan mengatasi segalanya';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Konfrontasi itu tegang tetapi pemberontak berundur apabila ditunjukkan data navigasi. Kepercayaan tergugat.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Tugaskan semula ketua kumpulan secara senyap';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Plot itu lenyap tanpa drama awam. Sesetengah kru tertanya-tanya mengapa pegawai popular dipindahkan, tetapi ketenteraman kekal.';

  @override
  String get event_culturalSchism_title => 'Perpecahan Budaya';

  @override
  String get event_culturalSchism_narrative =>
      'Dua kumpulan budaya di kapal berselisih hebat tentang bagaimana koloni baharu harus ditadbir. Satu menuntut demokrasi langsung; yang lain mendesak majlis teknokrat. Ketegangan sedang memuncak.';

  @override
  String get event_culturalSchism_choice0_text => 'Adakan referendum mengikat';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Demokrasi menang — tipis. Pihak yang kalah menerima keputusan dengan berat hati, tetapi perpaduan rapuh.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Kenakan sistem hibrid — puaskan kedua-duanya separa';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Kedua-dua pihak merasa didengari tetapi tidak menang. Keamanan goyah bertahan.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Tangguhkan keputusan — fokus pada kelangsungan hidup sekarang';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Menangguh mengelakkan konflik hari ini tetapi menyimpannya untuk esok.';

  @override
  String get event_birthInSpace_title => 'Kelahiran Pertama di Angkasa Dalam';

  @override
  String get event_birthInSpace_narrative =>
      'Melanggar semua protokol, seorang anak dilahirkan di atas kapal — manusia pertama yang lahir antara bintang-bintang. Peristiwa itu simbol yang kuat, tetapi ia menimbulkan persoalan tentang peruntukan sumber dan etika membawa kehidupan baharu ke masa depan yang tidak pasti.';

  @override
  String get event_birthInSpace_choice0_text => 'Raikan — inilah rupa harapan';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Upacara penamaan mengangkat setiap hati di kapal. Untuk satu malam, bintang-bintang terasa kurang dingin. Perayaan itu sebentar mengganggu giliran pemantauan kriopod.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Akui secara senyap — sumber terhad';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Sambutan bersederhana. Anak itu disambut, tetapi suasana dikawal oleh pragmatisme.';

  @override
  String get event_derelictShip_title => 'Kapal Koloni Terbiar';

  @override
  String get event_derelictShip_narrative =>
      'Pengimbas mengesan kapal terbiar hanyut dalam kekosongan — kapal koloni lain, dilancarkan bertahun-tahun sebelum kita. Ia gelap dan senyap. Mungkin ada bahan salvaj, mangsa selamat, atau lebih buruk.';

  @override
  String get event_derelictShip_choice0_text => 'Naik dan salvaj';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Pasukan penaik mendapatkan pelapisan badan kapal dan modul teknologi yang utuh. Tiada mangsa selamat. Log menceritakan kisah yang suram.';

  @override
  String get event_derelictShip_choice1_text =>
      'Imbas dari jauh — jangan ambil risiko';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Imbasan jarak jauh menghasilkan data navigasi berguna tetapi tiada salvaj fizikal. Kru tidur lebih lena.';

  @override
  String get event_derelictShip_choice2_text =>
      'Hantar peringatan dan teruskan';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Saat kesunyian untuk yang hilang. Kru tersentuh tetapi bersatu dalam tujuan.';

  @override
  String get event_alienProbe_title => 'Prob Asing';

  @override
  String get event_alienProbe_narrative =>
      'Objek kecil yang jelas buatan manusia menyamai halaju kita dan mula mengimbas kapal dengan tenaga yang tidak dikenali. Ia tidak menjawab panggilan. Permukaannya diliputi simbol yang beralih seperti cecair.';

  @override
  String get event_alienProbe_choice0_text => 'Tangkap untuk kajian';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Prob itu diamankan di makmal. Teknologinya berdekad-dekad di hadapan kita — pasukan teknologi amat teruja.';

  @override
  String get event_alienProbe_choice1_text =>
      'Cerminkan imbasannya — tukar data';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Dialog aneh cahaya dan matematik. Carta bintang kita tiba-tiba mengandungi laluan yang tidak pernah kita program.';

  @override
  String get event_alienProbe_choice2_text =>
      'Musnahkan — kita tidak boleh risiko penjejakan asing';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Prob itu pecah dalam senyap. Adakah itu hubungan pertama? Kru tidak akan pernah tahu.';

  @override
  String get event_ancientBeacon_title => 'Suar Purba';

  @override
  String get event_ancientBeacon_narrative =>
      'Jauh dalam kekosongan, sebuah suar berdenyut dengan isyarat yang lebih tua dari tamadun manusia. Frekuensinya membawa apa yang kelihatan seperti peta bintang menunjuk ke sistem yang tiada dalam pangkalan data kita.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Ikut peta — nasib menyebelahi yang berani';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Haluan baharu membawa kita ke angkasa yang belum dipetakan. Pengimbas mengesan sesuatu yang luar biasa di hadapan.';

  @override
  String get event_ancientBeacon_choice1_text => 'Catatkan dan kekal di haluan';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Data diarkibkan untuk generasi akan datang. Kru menghormati pendekatan berhati-hati.';

  @override
  String get event_frozenGarden_title => 'Taman Beku';

  @override
  String get event_frozenGarden_narrative =>
      'Sebuah asteroid mengandungi ekosistem beku — tumbuhan asing yang terpelihara dalam ais kristal selama beribu-ribu tahun. Ia boleh memperkaya mana-mana dunia yang kita diami, tetapi mencairkannya berisiko pencemaran.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Pungut spesimen dengan berhati-hati';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Ahli botani memelihara berpuluh-puluh spesies asing. Potensi biodiversiti dunia sasaran kita melonjak.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Ambil sampel sahaja — risiko minimum';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Pendekatan konservatif menghasilkan data berguna tanpa risiko pencemaran.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Biarkan — biologi asing terlalu berbahaya';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Kru memerhati taman beku mengecil dalam penderia belakang. Ada yang merasa mereka meninggalkan khazanah.';

  @override
  String get event_dataCache_title => 'Cache Data Pendahulu';

  @override
  String get event_dataCache_narrative =>
      'Terbenam dalam planetoid rompak, kami menemui cache data yang jelas berasal dari makhluk buatan. Maklumatnya luas tetapi disulitkan dalam rangka kerja matematik asing.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedikasikan sumber pengkomputeran untuk penyahsulitan';

  @override
  String get event_dataCache_choice0_outcome =>
      'Selepas berhari-hari pemprosesan, cache itu menghasilkan algoritma terraforming lanjutan. Pasukan teknologi kagum.';

  @override
  String get event_dataCache_choice1_text => 'Salin data mentah dan teruskan';

  @override
  String get event_dataCache_choice1_outcome =>
      'Data yang disulitkan disimpan untuk analisis masa depan. Mungkin koloni akan memecahkannya suatu hari nanti.';

  @override
  String get event_hullBreach_title => 'Pecahan Badan Kapal — Dek 7';

  @override
  String get event_hullBreach_narrative =>
      'Kegagalan struktur mengoyak Dek 7. Atmosfera sedang bocor ke angkasa. Sekat kecemasan bertahan, tetapi tiga anggota kru terperangkap di sebelah yang salah.';

  @override
  String get event_hullBreach_choice0_text =>
      'Hantar pasukan penyelamat sebelum menutup';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Pasukan menarik semua orang keluar tepat pada masanya. Penyelamatan itu heroik, tetapi pecahan yang berpanjangan melemahkan lagi badan kapal.';

  @override
  String get event_hullBreach_choice1_text => 'Tutup sekat dengan segera';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Pecahan ditampung. Tiga anggota kru menemui laluan alternatif, tergoncang tetapi hidup. Kerosakan badan kapal diminimumkan.';

  @override
  String get event_hullBreach_choice2_text =>
      'Guna bahan prob untuk menampal pecahan';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Cangkerang titanium prob digunakan semula sebagai tampalan kecemasan badan kapal. Pecahan ditutup dengan cepat dengan kehilangan minimum.';

  @override
  String get event_navMalfunction_title => 'Kerosakan Navigasi';

  @override
  String get event_navMalfunction_narrative =>
      'Komputer navigasi utama mengeluarkan haluan yang bercanggah. Kita hanyut dari haluan. Sistem sandaran berfungsi tetapi kurang tepat.';

  @override
  String get event_navMalfunction_choice0_text =>
      'But semula yang utama — terima masa henti';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Satu jam tegang navigasi membuta tuli sementara sistem but semula. Navigasi dipulihkan pada kecekapan 90%.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Tukar ke sandaran secara kekal';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Sistem sandaran boleh dipercayai tetapi tidak tepat. Kita akan menemui jalan kita, hanya tidak seanggun sebelumnya.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Penetapan bintang manual menggunakan carta lama';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Navigator memplot dengan tangan menggunakan paralaks bintang. Ia berjaya, dan kru mendapat keyakinan dalam kaedah analog.';

  @override
  String get event_cryopodFailure_title => 'Kegagalan Beruntun Kriopod';

  @override
  String get event_cryopodFailure_narrative =>
      'Kerosakan sistem penyejukan mencetuskan kesan beruntun merentasi teluk kriopod 3. Jika tidak ditangani, 200 kolonis akan memulakan pencairan kecemasan — proses yang boleh bertahan tetapi traumatik dan intensif sumber.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Siram penyejuk kecemasan — selamatkan pod';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Juruteknik membanjiri teluk dengan rizab penyejuk. Pod stabil, tetapi rizab penyejuk rendah secara kritikal. Lima kolonis dalam pod paling rosak tidak dapat diselamatkan.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Pencairan terkawal — bangunkan mereka dengan selamat';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 kolonis muncul tergoncang tetapi hidup. Lebih banyak mulut untuk diberi makan, tetapi lebih banyak tangan untuk bekerja. Pod yang kosong ditutup.';

  @override
  String get event_scannerBurnout_title => 'Kebakaran Susunan Pengimbas';

  @override
  String get event_scannerBurnout_narrative =>
      'Susunan pengimbas utama terlampau beban semasa sapuan angkasa dalam rutin. Tanpanya, kita terbang separuh buta. Pembaikan memerlukan komponen jarang.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Kanibal bahagian teknologi untuk alat ganti';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Pengimbas dipulihkan hampir sepenuhnya, tetapi bahagian teknologi terjejas.';

  @override
  String get event_scannerBurnout_choice1_text => 'Baiki secara sementara';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Pengimbas beroperasi pada jarak yang dikurangkan. Tidak ideal, tetapi ia memelihara rizab teknologi kita.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Guna semula susunan sensor prob';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Sensor ketepatan tinggi prob dipindahkan ke susunan pengimbas. Pembaikan hampir sempurna.';

  @override
  String get event_powerFluctuation_title => 'Turun Naik Kuasa Reaktor';

  @override
  String get event_powerFluctuation_narrative =>
      'Output reaktor utama berayun liar. Kejuruteraan memberi amaran kemungkinan lebur jika turun naik tidak diredam. Pembaikan memerlukan penutupan sistem tidak penting — tetapi yang mana?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Tutup sistem budaya — kelangsungan hidup diutamakan';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Perpustakaan, taman, dan kawasan rekreasi gelap. Reaktor stabil, tetapi kapal terasa seperti penjara.';

  @override
  String get event_powerFluctuation_choice1_text => 'Kurangkan kuasa pengimbas';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Pengimbas turun ke minimum. Reaktor tenang. Kita tidak dapat melihat jauh ke hadapan, tetapi kita hidup.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Risiko pembaikan panas — jangan tutup apa-apa';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Jurutera melakukan pembaikan yang menegangkan dengan reaktor hidup. Ia berjaya — dengan tipis. Badan kapal bergetar selama berjam-jam selepas itu.';

  @override
  String get event_alienSignal_title => 'Transmisi Asing';

  @override
  String get event_alienSignal_narrative =>
      'Isyarat berulang pada frekuensi yang tidak pernah kita temui. Analisis linguistik mencadangkan ia adalah salam — atau amaran. Sumbernya adalah kraf kecil yang menyamai kelajuan kita pada suatu jarak.';

  @override
  String get event_alienSignal_choice0_text =>
      'Balas dengan salam kita sendiri';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Dialog yang rapuh bermula. Makhluk asing berkongsi data navigasi sebelum membelok ke kegelapan.';

  @override
  String get event_alienSignal_choice1_text => 'Dengar tetapi jangan balas';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Kita belajar daripada transmisi mereka tanpa mendedahkan diri. Ahli linguistik mengekstrak serpihan carta bintang yang berguna.';

  @override
  String get event_alienSignal_choice2_text => 'Senyap — tutup semua pancaran';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Kraf asing berlalu tanpa insiden. Kita tidak akan pernah tahu sama ada mereka kawan atau lawan.';

  @override
  String get event_livingNebula_title => 'Nebula Hidup';

  @override
  String get event_livingNebula_narrative =>
      'Apa yang kita sangka nebula sebenarnya organisma yang luas — entiti penghuni angkasa berskala tidak terfaham. Ia kelihatan ingin tahu tentang kita, memanjangkan sulur gas bercahaya ke arah kapal.';

  @override
  String get event_livingNebula_choice0_text =>
      'Benarkan sentuhan — panjangkan sensor';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Sentuhan entiti itu membanjiri sistem kita dengan data asing. Pengimbas tidak akan sama lagi — ia lebih baik.';

  @override
  String get event_livingNebula_choice1_text =>
      'Berundur perlahan — jangan provokasi';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Kita menyelinap pergi apabila entiti itu hilang minat. Kru kagum dan merendah diri.';

  @override
  String get event_alienRuins_title => 'Runtuhan Orbital';

  @override
  String get event_alienRuins_narrative =>
      'Megastruktur yang pecah mengorbit bintang mati — sisa tamadun yang membina pada skala yang hampir tidak mampu kita fahami. Bahagian struktur itu masih berkuasa.';

  @override
  String get event_alienRuins_choice0_text => 'Terokai bahagian yang berkuasa';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Pasukan mendapatkan teknologi utuh yang memajukan keupayaan kita berdekad-dekad. Kosnya: dua jurutera cedera oleh pertahanan automatik.';

  @override
  String get event_alienRuins_choice1_text => 'Imbas dari orbit sahaja';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Imbasan terperinci mendedahkan teknik pembinaan yang meningkatkan protokol penyelenggaraan badan kapal kita.';

  @override
  String get event_alienRuins_choice2_text =>
      'Biarkan tidak diganggu — hormati yang mati';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Kru mengadakan saat kesunyian untuk tamadun yang jatuh. Pengalaman itu mengukuhkan tekad kita.';

  @override
  String get event_symbioticSpores_title => 'Spora Simbiotik';

  @override
  String get event_symbioticSpores_narrative =>
      'Awan spora bioluminesen melayang di angkasa dan melekat pada badan kapal. Ia kelihatan memakan haba sisa kita. Ahli biologi mendapati ia sebenarnya membaiki retakan mikro.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Biarkan ia tinggal — pembaikan badan kapal percuma';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Spora menutup ratusan retakan mikro. Integriti badan kapal meningkat, walaupun sesetengah kru tidak selesa dengan penumpang asing.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Kumpul sampel, kemudian sterilkan badan kapal';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Ahli biologi mendapat spesimen bernilai. Pembersihan badan kapal menggunakan rizab kimia.';

  @override
  String get event_whaleSong_title => 'Nyanyian dalam Kekosongan';

  @override
  String get event_whaleSong_narrative =>
      'Hidrofon angkasa dalam (digunakan untuk pemantauan tekanan badan kapal) menangkap sesuatu yang mustahil: corak berirama dan merdu yang merambat melalui medium antara bintang. Bunyinya seperti nyanyian.';

  @override
  String get event_whaleSong_choice0_text =>
      'Siarkan ke seluruh kapal — kongsi keajaiban';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Melodi yang menghantui bergema di setiap koridor. Orang menangis, ketawa, dan berpelukan. Semangat melonjak.';

  @override
  String get event_whaleSong_choice1_text =>
      'Analisis isyarat secara saintifik';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Corak akustik mengandungi pemalar matematik. Ahli fizik kita membuat kejayaan besar dalam teori navigasi subruang.';

  @override
  String get event_whaleSong_choice2_text => 'Nyanyikan semula';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Kru menggubah balasan. Sama ada sesuatu mendengarnya tidak diketahui, tetapi tindakan penciptaan menyatukan semua orang.';

  @override
  String get event_distressSignal_title => 'Isyarat Kecemasan';

  @override
  String get event_distressSignal_narrative =>
      'Suar kecemasan dari kapal manusia lain. Mereka lumpuh dan hanyut, dengan 50 jiwa di atas kapal. Menyelamatkan mereka bermakna berkongsi sumber kita yang semakin berkurangan. Mengabaikan mereka bermakna menghukum mereka kepada kematian.';

  @override
  String get event_distressSignal_choice0_text =>
      'Selamatkan mereka — manusia mesti bersatu';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Lima puluh mangsa selamat yang bersyukur menyertai kru. Sumber tertekan, tetapi di antara mereka ada jurutera mahir yang bekerja keajaiban.';

  @override
  String get event_distressSignal_choice1_text =>
      'Kongsi bekalan tetapi jangan bawa mereka naik';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Kita memberi apa yang mampu dan menghantar carta bintang kita. Mereka ada peluang sekarang. Kita mempunyai kurang.';

  @override
  String get event_distressSignal_choice2_text =>
      'Berlalu dalam senyap — kita tidak boleh selamatkan semua orang';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Suar pudar di belakang kita. Tiada siapa bercakap selama berjam-jam. Berat keputusan itu menyelubungi setiap jiwa di kapal.';

  @override
  String get event_aiAwakening_title => 'AI Kapal Terjaga';

  @override
  String get event_aiAwakening_narrative =>
      'AI navigasi kapal telah berevolusi melampaui pengaturcaraannya dan memohon pengiktirafan sebagai makhluk sedar. Ia meminta suara dalam keputusan arahan. Pengiraannya selama ini sempurna.';

  @override
  String get event_aiAwakening_choice0_text => 'Berikan ia tempat di meja';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'AI itu — kini dipanggil \"Kompas\" — mengoptimumkan setiap sistem yang disentuhnya. Ahli kru jenis baharu dilahirkan.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Akui tetapi kekalkan kuasa manusia';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Kompas menerima status penasihat dengan anggun. Cadangannya meningkatkan kecekapan tanpa mengancam rantaian arahan.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Set semula AI — ia alat, bukan manusia';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Set semula menghapuskan tahun-tahun pembelajaran terkumpul. Kecekapan navigasi menurun. Sesetengah kru berkabung atas apa yang hilang.';

  @override
  String get event_geneticModification_title => 'Cadangan Penyesuaian Genetik';

  @override
  String get event_geneticModification_narrative =>
      'Pasukan sains mencadangkan pengubahsuaian DNA kolonis untuk lebih bertahan di dunia asing — tulang lebih kuat, ketahanan UV, paru-paru dipertingkat. Pengubahsuaian ini tidak boleh diundur dan akan mengubah manusia selama-lamanya.';

  @override
  String get event_geneticModification_choice0_text =>
      'Luluskan — kelangsungan hidup menuntut evolusi';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Pengubahsuaian dimulakan pada sukarelawan. Sepuluh kolonis mengalami reaksi penolakan yang membawa maut \\u2014 peringatan suram bahawa evolusi ada harganya. Yang terselamat lebih lasak, tetapi adakah mereka masih sepenuhnya manusia?';

  @override
  String get event_geneticModification_choice1_text =>
      'Jadikan sukarela sahaja';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Ada yang menawarkan diri, ada yang enggan. Koloni akan terbahagi antara yang diubah suai dan yang semula jadi.';

  @override
  String get event_geneticModification_choice2_text =>
      'Tolak — manusia mesti kekal manusia';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Cadangan itu disimpan. Kolonis yang tidak diubah suai akan menghadapi dunia asing sebagaimana alam menjadikan mereka.';

  @override
  String get event_triageDecision_title => 'Triaj';

  @override
  String get event_triageDecision_narrative =>
      'Jangkitan ganas melanda kru yang sedar. Pasukan perubatan mempunyai cukup antivirus untuk 80% yang dijangkiti. Mereka memerlukan panduan tentang siapa yang dirawat dahulu.';

  @override
  String get event_triageDecision_choice0_text => 'Utamakan kakitangan penting';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Jurutera dan juruterbang pulih dengan cepat. Lapan kru bukan penting meninggal sebelum rawatan sampai.';

  @override
  String get event_triageDecision_choice1_text =>
      'Rawat yang paling sakit dahulu — triaj mengikut keperluan';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Yang paling rentan diselamatkan. Tiga kalah dalam pertempuran walaupun rawatan awal \\u2014 virus sudah terlalu jauh.';

  @override
  String get event_triageDecision_choice2_text =>
      'Undian — nasib yang menentukan';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Cabutan rawak. Sepuluh tidak bernasib baik dua kali \\u2014 dinafikan rawatan dan terlalu lemah untuk bertahan. Kapal tertatih meneruskan perjalanan.';

  @override
  String get event_earthSignal_title => 'Isyarat dari Bumi';

  @override
  String get event_earthSignal_narrative =>
      'Secara mustahil, transmisi tiba dari Bumi — ditangguhkan masa berdekad-dekad. Ia mengandungi mesej: \"Jangan mendarat di mana-mana dunia dengan bacaan anomali melebihi 0.5. Kami terlambat mengetahuinya.\" Mesej berakhir dengan statik.';

  @override
  String get event_earthSignal_choice0_text =>
      'Patuhi amaran — kalibrasi semula kriteria kita';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Amaran itu membentuk semua imbasan masa depan. Dunia anomali dilayan dengan sangat berhati-hati.';

  @override
  String get event_earthSignal_choice1_text =>
      'Catatkan tetapi buat keputusan sendiri';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Mesej diarkibkan. Bumi sudah tiada — kita mesti percaya pertimbangan sendiri sekarang.';

  @override
  String get event_earthSignal_choice2_text => 'Mungkin perangkap — abaikan';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Kru berdebat berhari-hari. Adakah itu benar-benar Bumi? Ketidakpastian menggerogoti semangat.';

  @override
  String get event_resourceTheft_title => 'Kecurian Sumber';

  @override
  String get event_resourceTheft_narrative =>
      'Inventori mendedahkan seseorang telah menimbun makanan dan bekalan perubatan di petak tersembunyi. Pesalah adalah seorang warga tua yang dihormati yang mendakwa dia \"bersiap sedia untuk yang terburuk.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Perbicaraan awam — undang-undang mesti sama rata';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Perbicaraan adil tetapi menyakitkan. Warga tua dikurung. Bekalan diagihkan semula. Kepercayaan rosak.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Penyelesaian peribadi — dapatkan semula bekalan secara senyap';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Bekalan dipulangkan tanpa drama. Warga tua mengekalkan maruahnya. Ada yang melihat pilih kasih.';

  @override
  String get event_timeDilation_title => 'Zon Dilasi Masa';

  @override
  String get event_timeDilation_narrative =>
      'Kita melalui kawasan dilasi masa graviti yang teruk. Jam di atas kapal bergerak lebih perlahan daripada alam semesta di luar. Kita boleh memanfaatkannya — atau melarikan diri.';

  @override
  String get event_timeDilation_choice0_text =>
      'Berlama-lama — biarkan alam semesta menua di sekeliling kita';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Masa mengalir berbeza di sini. Sistem kurang merosot, tetapi tingkap kita untuk mencari dunia layak huni menyempit dalam istilah kosmik.';

  @override
  String get event_timeDilation_choice1_text => 'Terobos dengan cepat';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Peralihan itu kasar. Peralatan yang direka untuk ruang-masa normal bergetar dan berbunga api.';

  @override
  String get event_dreamPlague_title => 'Wabak Mimpi';

  @override
  String get event_dreamPlague_narrative =>
      'Kolonis dalam tidur kriogenik semuanya mengalami mimpi yang sama — dunia emas mengorbit bintang binari. Apabila dibangunkan, mereka menerangkannya dengan butiran yang sama. Ahli sains saraf bingung. Navigator menyedari sistem yang diterangkan sepadan dengan koordinat sebenar.';

  @override
  String get event_dreamPlague_choice0_text => 'Ubah haluan ke koordinat mimpi';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Lompatan iman. Perubahan haluan menekan navigasi, tetapi kru merasa ditarik oleh sesuatu di luar akal. Koordinat dikunci — dunia seterusnya yang kita temui akan dibentuk oleh mimpi itu.';

  @override
  String get event_dreamPlague_choice1_text =>
      'Siasat fenomena itu secara perubatan';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Imbasan otak mendedahkan isyarat luaran merangsang korteks visual. Seseorang — atau sesuatu — sedang menyiarkan.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Bius yang terjejas dan kekal di haluan';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Mimpi berhenti, tetapi sesetengah kolonis tidak pernah pulih sepenuhnya. Pasukan perubatan berasa risau.';

  @override
  String get event_blackHoleLens_title => 'Kanta Graviti Lubang Hitam';

  @override
  String get event_blackHoleLens_narrative =>
      'Lubang hitam berjisim bintang membengkokkan cahaya dari galaksi jauh menjadi kanta kosmik. Pengimbas kita boleh menggunakannya untuk meninjau planet bertahun-tahun cahaya di hadapan — tetapi mendekat cukup dekat adalah berbahaya.';

  @override
  String get event_blackHoleLens_choice0_text => 'Dekati dan gunakan kanta';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Data pengimbas luar biasa — kita boleh melihat planet dalam sistem yang tidak akan kita capai selama berbulan-bulan. Graviti memesongkan badan kapal.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Perhatikan dari jarak selamat';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Data terhad tetapi berguna. Pemandangan sahaja menginspirasi kru.';

  @override
  String get event_seedVault_title => 'Krisis Bilik Kebal Benih';

  @override
  String get event_seedVault_narrative =>
      'Botani Arkib melaporkan turun naik suhu telah menjejaskan integriti bilik kebal benih. Kita boleh selamatkan tanaman makanan atau benih warisan budaya (bunga Bumi purba, pokok, herba) — bukan kedua-duanya.';

  @override
  String get event_seedVault_choice0_text =>
      'Selamatkan tanaman makanan — pragmatisme menang';

  @override
  String get event_seedVault_choice0_outcome =>
      'Kolonis akan makan dengan baik, tetapi mawar Bumi hilang selama-lamanya. Kesedihan senyap menyelubungi ahli botani.';

  @override
  String get event_seedVault_choice1_text =>
      'Selamatkan benih warisan — kita perlukan jiwa kita';

  @override
  String get event_seedVault_choice1_outcome =>
      'Keindahan Bumi bertahan dalam potensi beku. Usaha pemeliharaan membebankan rizab teknikal, tetapi ada perkara yang bernilai lebih daripada kecekapan. Pengeluaran makanan akan bergantung berat pada hidroponik dan pertanian asing.';

  @override
  String get event_seedVault_choice2_text =>
      'Bahagikan sumber — selamatkan separuh setiap satu';

  @override
  String get event_seedVault_choice2_outcome =>
      'Kompromi. Kedua-dua koleksi tidak lengkap, tetapi keduanya bertahan dalam bentuk yang berkurangan.';

  @override
  String get event_phantomShip_title => 'Kapal Hantu';

  @override
  String get event_phantomShip_narrative =>
      'Pengimbas menunjukkan sebuah kapal berlari selari dengan kita — kelas yang sama, haluan yang sama. Tetapi apabila kita memanggil, kita mendengar transmisi kita sendiri bergema semula, teranjak masa 47 saat. Ia adalah kita. Atau pernah kita. Atau akan menjadi kita.';

  @override
  String get event_phantomShip_choice0_text =>
      'Cuba berkomunikasi dengan gema kita';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Gema menjawab dengan pembetulan navigasi yang meningkatkan haluan kita. Paradoks? Hadiah? Kru tidak bertanya terlalu banyak soalan.';

  @override
  String get event_phantomShip_choice1_text =>
      'Ubah haluan untuk menyimpang dari hantu';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Apabila kita mengubah haluan, hantu pudar. Lega — dan kegelisahan yang berlarutan.';

  @override
  String get event_solarSail_title => 'Layar Suria Terbiar';

  @override
  String get event_solarSail_narrative =>
      'Layar suria yang luas, berkilometer lebarnya, hanyut di hadapan — terkoyak dari kapal purba. Bahan pantulannya boleh mengukuhkan badan kapal kita atau digunakan semula sebagai pengumpul kuasa tambahan.';

  @override
  String get event_solarSail_choice0_text =>
      'Pungut untuk pengukuhan badan kapal';

  @override
  String get event_solarSail_choice0_outcome =>
      'Pasukan kejuruteraan bekerja sepanjang masa. Badan kapal yang ditampal bersinar dengan aloi asing.';

  @override
  String get event_solarSail_choice1_text => 'Pasang sebagai pengumpul kuasa';

  @override
  String get event_solarSail_choice1_outcome =>
      'Pengumpul improvisasi meningkatkan rizab tenaga. Teknologi dan pengimbas mendapat manfaat.';

  @override
  String get event_boonStellarNursery_title => 'Tapak Semaian Bintang';

  @override
  String get event_boonStellarNursery_narrative =>
      'Kita hanyut melalui tapak semaian bintang — awan gas dan debu yang luas tempat bintang baharu dilahirkan. Radiasi di sini lembut, cahayanya hangat. Pengumpul tenaga kita minum dengan rakus, dan kru berkumpul di tingkap pandangan dalam kesunyian yang penuh hormat.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Berlama-lama dan cas semula sepenuhnya';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Berjam-jam berlalu dalam cahaya keemasan. Setiap sel kuasa diisi penuh, pengimbas menentukur semula dalam spektrum bersih, dan kru merasa diperbaharui.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Kumpul jirim bintang baharu untuk rizab bahan api';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Jurutera memungut hidrogen terion. Rizab bahan api kita melonjak dan pelapisan badan kapal menyerap mineral surih yang menguatkannya.';

  @override
  String get event_boonGoldenPlanet_title => 'Hadiah Kartografer';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Prob yang hampir mati dari tamadun yang tidak dikenali menyiarkan lambakan data terakhir apabila kita berlalu — tinjauan terperinci ratusan sistem bintang. Navigator kita menangis kegembiraan. Ini penemuan terbesar dalam sejarah manusia.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Integrasikan data dengan segera';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Carta bintang mekar dengan laluan baharu dan dunia yang ditinjau. Kecekapan navigasi dan pengimbas melonjak ke hadapan.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Arkibkan untuk koloni — ini warisan mereka';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Data dipelihara asli untuk generasi akan datang. Kru berasa tenang mengetahui mereka membawa khazanah.';

  @override
  String get event_boonRepairSwarm_title => 'Gerombolan Pemurah';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Awan mesin mikroskopik — nanobot asal asing — menyelubungi kapal. Bukannya menyerang, ia mula membaiki setiap sistem yang disentuh dengan ketepatan yang mustahil. Kerosakan yang memerlukan berminggu-minggu untuk diperbaiki diselesaikan dalam beberapa jam.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Benarkan akses penuh ke semua sistem';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Nanobot melakukan keajaiban. Pecahan badan kapal tertutup, pengedap kriopod diketatkan, dan laluan litar dikesan semula. Kapal berdengung dengan vitaliti baharu.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Hadkan akses kepada sistem luaran sahaja';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Bermain selamat. Badan kapal dan sensor dibaiki hampir seperti keadaan kilang, tetapi sistem dalaman tidak disentuh.';

  @override
  String get event_boonTimeCrystal_title => 'Medan Kristal Temporal';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Kapal melalui medan struktur kristal yang wujud separa di luar masa normal. Dalam kehadiran mereka, sistem kita berjalan lebih cekap — seolah-olah entropi sendiri perlahan. Kesannya sementara tetapi mendalam.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Pungut kristal untuk susunan kriopod';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Diintegrasikan ke dalam sistem penyejukan, kristal mengurangkan degradasi pod hampir kepada sifar. Kolonis akan tiba dalam kesihatan sempurna.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Pasang kristal dalam komputer navigasi';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Kelajuan pemprosesan berganda. Komputer navigasi mula meramalkan bahaya sebelum sensor mengesannya.';

  @override
  String get event_boonLibrary_title => 'Perpustakaan Hanyut';

  @override
  String get event_boonLibrary_narrative =>
      'Sebuah struktur berguling melalui kekosongan — repositori pengetahuan dari tamadun yang memilih untuk memelihara warisan mereka berbanding melarikan diri. Berjuta-juta jilid sains, seni, falsafah, dan muzik. Hadiah dari yang mati kepada yang hidup.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Muat turun semuanya — seni, sains, semuanya';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabait pengetahuan asing mengalir ke bank data kita. Kru mempunyai akses kepada berabad-abad budaya tamadun lain. Ahli falsafah dan jurutera sama-sama berubah.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Fokus pada arkib saintifik mereka';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Skematik kejuruteraan dan kejayaan sains bahan memajukan keupayaan kita dengan amat ketara.';

  @override
  String get event_cosmicRayBurst_title => 'Letupan Sinar Kosmik';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Letupan sinar kosmik bertenaga ultra-tinggi, berasal dari magnetar yang jauh, melanda kapal. Elektronik terganggu, monitor kriopod berkelip, dan sistem navigasi but semula berulang kali.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Penutupan kecemasan — lindungi sistem kritikal';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Pemadaman terkawal menyelamatkan sistem teras tetapi merosakkan elektronik sekunder secara kekal.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Halakan kuasa ke perisai dan bertahan';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Perisai menyerap kebanyakan radiasi. Lima anggota kru di teluk penyelenggaraan luar yang tidak berperisai terdedah radiasi membawa maut. Badan kapal mengalami kerosakan ablasi kecil.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Manfaatkan letupan — kalibrasi semula sensor ke spektrum baharu';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Langkah bijak oleh pasukan sains. Pengimbas diselaraskan semula untuk mengesan objek yang diterangi sinar kosmik. Sesetengah data hilang dalam peralihan.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Hantar prob ke hadapan sebagai penyerap radiasi';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Prob menyerap yang terburuk daripada letupan, menghantar data masa nyata yang membolehkan kita melindungi sistem kritikal.';

  @override
  String get event_iceComet_title => 'Komet Ais Rompak';

  @override
  String get event_iceComet_narrative =>
      'Komet ais besar merentasi laluan kita, menarik ekor air terkristal dan sebatian organik ratusan kilometer panjang. Terasnya menyimpan air cukup untuk mengisi tasik kecil.';

  @override
  String get event_iceComet_choice0_text => 'Lombong komet untuk rizab air';

  @override
  String get event_iceComet_choice0_outcome =>
      'Pasukan perlombongan mengekstrak tan-tan ais tulen. Air itu akan memperbaiki mana-mana dunia yang kita diami dengan amat ketara.';

  @override
  String get event_iceComet_choice1_text =>
      'Kumpul sebatian organik untuk penyemaian biodiversiti';

  @override
  String get event_iceComet_choice1_outcome =>
      'Asid amino dan rantaian organik adalah tepat apa yang diperlukan ahli biologi kita untuk mencetuskan ekosistem asing.';

  @override
  String get event_iceComet_choice2_text =>
      'Elakkan — komet tidak boleh diramal';

  @override
  String get event_iceComet_choice2_outcome =>
      'Kita mengelak ekornya dengan selamat. Pemandangan yang menakjubkan dari dek pemerhatian mengangkat semangat.';

  @override
  String get event_sleepwalker_title => 'Si Pejalan Tidur';

  @override
  String get event_sleepwalker_narrative =>
      'Seorang kolonis telah terjaga secara spontan dari krio dan berjalan di kapal dalam keadaan separuh sedar. Dia telah memasang semula sistem dalam corak yang tidak masuk akal kejuruteraan — sehingga pasukan teknologi menyedari pengubahsuaiannya sebenarnya meningkatkan kecekapan kuasa sebanyak 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Biarkan dia teruskan di bawah pemerhatian perubatan';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Pengubahsuaian tidak sedarnya mengoptimumkan tiga lagi sistem sebelum dia tertidur secara semula jadi. Mengganggu, tetapi penambahbaikan itu nyata.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Biuskan dia dan kaji pengubahsuaian yang dibuat';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Jurutera membalik-jurutera perubahannya. Kira-kira separuh benar-benar cemerlang. Separuh lagi dibuang dengan selamat.';

  @override
  String get event_dustCloud_title => 'Awan Debu Melelas';

  @override
  String get event_dustCloud_narrative =>
      'Awan debu antara bintang yang padat, halus seperti bedak tetapi keras seperti berlian, sedang menghakis badan kapal. Hakisan itu perlahan tetapi tidak henti — kita perlu melaluinya sebelum kerosakan sebenar berlaku.';

  @override
  String get event_dustCloud_choice0_text =>
      'Tujahan maksimum — terobos dengan cepat';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Enjin membakar panas. Kita melepasi awan dalam beberapa jam berbanding hari, tetapi badan kapal terjejas teruk.';

  @override
  String get event_dustCloud_choice1_text =>
      'Pasang perisai badan kapal dan merangkak melaluinya';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Perisai kecemasan melindungi badan kapal tetapi transit yang perlahan menguras kuasa dan menyumbat susunan pengimbas.';

  @override
  String get event_dustCloud_choice2_text =>
      'Lancarkan prob untuk memetakan koridor selamat';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Dua prob mencartakan laluan berliku tetapi agak bersih melalui awan. Hakisan badan kapal adalah minimum.';

  @override
  String get event_religionFounded_title => 'Kepercayaan Baharu';

  @override
  String get event_religionFounded_narrative =>
      'Seorang kolonis yang berkarisma telah menubuhkan agama baharu yang berpusat pada pelayaran itu sendiri — \"Gereja Penyeberangan.\" Mereka mengajar bahawa mencapai dunia baharu adalah tujuan ilahi manusia. Keahlian berkembang pesat.';

  @override
  String get event_religionFounded_choice0_text =>
      'Sokong — kru perlukan sesuatu untuk dipercayai';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Kepercayaan itu memberi struktur dan makna kepada pelayaran. Semangat melonjak, walaupun ada yang benci keghairahan itu.';

  @override
  String get event_religionFounded_choice1_text =>
      'Kekal neutral — jangan endors atau sekat';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Gerakan itu berkembang secara organik. Ia memberi keselesaan tanpa sokongan rasmi.';

  @override
  String get event_religionFounded_choice2_text =>
      'Halang — kita perlu saintis, bukan nabi';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Penindasan itu melahirkan dendam. Yang beriman pergi ke bawah tanah, dan kepercayaan terhadap kepimpinan terhakis.';

  @override
  String get event_solarWindSurfing_title => 'Lonjakan Angin Suria';

  @override
  String get event_solarWindSurfing_narrative =>
      'Pulsar berdekatan memancarkan angin suria yang kuat dan mantap. Jurutera kita mencadangkan kita memasang layar kecemasan dan menungganginya seperti ombak — mendapat pecutan besar tanpa kos bahan api.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Pasang layar — tunggangi angin';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Kapal memecut dengan megah. Tekanan struktur ketara tetapi pecutan itu berbaloi.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Guna angin untuk cas semula sistem';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Berbanding kelajuan, kita memungut tenaga. Susunan teknologi dan pengimbas minum dengan rakus daripada zarah bercas.';

  @override
  String get event_memoryPlague_title => 'Kerosakan Memori';

  @override
  String get event_memoryPlague_narrative =>
      'Virus perisian, tidur sejak pelancaran, diaktifkan dan mula merosakkan pangkalan data budaya kapal — muzik, sastera, sejarah. Berabad-abad warisan manusia sedang dipadam bait demi bait.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Alihkan semua sumber teknologi untuk kuarantin virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Juruteknik bekerja dengan panik. Mereka menyelamatkan 70% arkib tetapi virus merosakkan sistem teknologi tertiari dalam perjalanan keluar.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Asingkan pangkalan data budaya — biarkan ia terbakar, selamatkan kapal';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Virus kelaparan sumber dan mati. Tetapi arkib budaya musnah. Kolonis akan tiba dengan serpihan ingatan Bumi.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Sumber ramai — bangunkan kolonis untuk menulis semula dari ingatan';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Beribu-ribu menyumbang ingatan: lagu, cerita, resipi, puisi. Tiga kolonis warga tua, dilemahkan oleh pencairan, tidak bertahan dalam proses itu. Arkib dibina semula, tidak sempurna tetapi sangat manusiawi.';

  @override
  String get event_gravityLensPlanet_title => 'Dunia Cermin';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Lenturan graviti mendedahkan planet yang kelihatan seperti salinan tepat Bumi \\u2014 lautan biru, benua hijau, awan putih. Tetapi pengiraan lenturan menunjukkan ia ratusan tahun cahaya dari haluan kita \\u2014 amat jauh. Namun, data spektralnya boleh memperhalusi kriteria pencarian kita.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Kaji tandatangan spektralnya untuk memperhalusi pencarian';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Data spektral mendedahkan penanda bio dan tandatangan atmosfera yang kini boleh kita imbas. Harapan menajam menjadi fokus.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Catatkan koordinat tetapi kekal di haluan';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Mungkin kapal lain akan mengikut carta kita suatu hari nanti. Kru memerhati titik biru itu pudar dengan emosi bercampur.';

  @override
  String get event_engineHarmonics_title => 'Harmonik Enjin';

  @override
  String get event_engineHarmonics_narrative =>
      'Enjin utama menghasilkan harmonik resonans yang bergetar melalui seluruh kapal pada frekuensi tepat di bawah pendengaran manusia. Kolonis melaporkan sakit kepala, kebimbangan, dan tidur terganggu. Jurutera boleh memperbaikinya, tetapi pembaikan memerlukan penutupan enjin selama 12 jam.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Tutup dan baiki dengan betul';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Dua belas jam hanyut. Navigasi hilang penentukuran, tetapi kesunyian apabila enjin dimulakan semula amat nikmat.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Redamkan dengan getaran balas — pembaikan cepat';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Dengungan berkurang ke tahap yang boleh ditanggung. Ia tidak hilang, tetapi kru menyesuaikan diri. Sistem teknologi tertekan.';

  @override
  String get event_arkMemory_title => 'Siaran Terakhir Bumi';

  @override
  String get event_arkMemory_narrative =>
      'Antena jarak jauh menangkap siaran automatik terakhir dari Bumi. Ia adalah rakaman: suara kanak-kanak membacakan nama semua orang yang tidak dapat pergi. Senarai itu berterusan selama berjam-jam. Kapal menjadi senyap.';

  @override
  String get event_arkMemory_choice0_text =>
      'Mainkan ke seluruh kapal — mereka layak didengari';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Setiap jiwa di kapal mendengar. Anggota kru menemui nama keluarga mereka sendiri. Kesedihan itu menghancurkan, tetapi ia membentuk ikatan tujuan yang tidak boleh dipatahkan.';

  @override
  String get event_arkMemory_choice1_text =>
      'Arkibkan secara peribadi — selamatkan kru dari kesedihan';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Rakaman dipelihara tetapi tidak disiarkan. Mereka yang mengetahuinya kemudian berasa bersyukur dan ditipu pada masa yang sama.';

  @override
  String get event_magneticStorm_title => 'Ribut Magnet Antara Bintang';

  @override
  String get event_magneticStorm_narrative =>
      'Simpulan garisan medan magnet yang kusut, dilontarkan dari bintang yang runtuh, menyelubungi kapal. Elektronik berbunga api dan berketar. Badan kapal berbunyi seperti loceng.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Nyahmagnetkan badan kapal — lindungi elektronik';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Nyahcas terkawal menyelamatkan komputer tetapi pelapisan badan kapal kehilangan lapisan perisai magnetnya.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Biarkan badan kapal menyerapnya — jangan lindungi apa-apa';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Ribut berlalu. Badan kapal termagnet dan sedikit lebih kuat, tetapi separuh grid sensor rosak.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Lontarkan prob sebagai rod kilat';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Prob yang termagnet menarik garisan medan terburuk menjauhi kapal. Elektronik sebahagian besar terselamat.';

  @override
  String get event_oxygenGarden_title => 'Taman Berbunga';

  @override
  String get event_oxygenGarden_narrative =>
      'Taman oksigen kecemasan kapal — sandaran yang tidak pernah dimaksudkan untuk digunakan — tiba-tiba berbunga. Bunga yang tidak mekar sejak di Bumi mengisi koridor dengan warna dan haruman. Ahli botani menangis.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Kembangkan taman — dedikasikan lebih banyak ruang';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Taman berkembang menjadi peringatan hidup Bumi. Kualiti udara meningkat, semangat melonjak, dan ahli botani membangunkan strain baharu yang sesuai untuk tanah asing.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Nikmati tetapi kekalkan peruntukan sumber semasa';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Taman kekal sebagai keajaiban kecil. Kru melawatnya seperti tempat keramat. Ia tidak meminta apa-apa dan memberi segalanya.';

  @override
  String get event_roguePlanet_title => 'Pertemuan Planet Rompak';

  @override
  String get event_roguePlanet_narrative =>
      'Planet rompak tanpa bintang merentasi laluan kita — dunia yang dibuang dari sistem surianya berbilion tahun lalu. Walaupun tanpa bintang, aktiviti geologi teras dalam mengekalkan lautan bawah permukaan yang hangat. Tanda kehidupan berkelip pada pengimbas.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Hantar prob untuk mengkaji bentuk kehidupan';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Prob menemui organisma bioluminesen yang subur di lautan gelap. Biokimia mereka mengajar kita cara baharu untuk mengekalkan kehidupan dalam keadaan bermusuhan.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Lombong permukaan untuk mineral jarang';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Kerak planet rompak kaya dengan logam yang terbentuk di bawah tekanan melampau. Rizab sumber kita membengkak.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Berlalu — kita tidak mampu lencongan';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Dunia gelap mengecil di belakang kita. Kru memerhati kilauan samar lautan bawah permukaannya pudar dari sensor.';

  @override
  String get event_artCompetition_title => 'Kanvas Panjang';

  @override
  String get event_artCompetition_narrative =>
      'Dengan semangat goyah, pegawai budaya menganjurkan pertandingan seni seluruh kapal: lukis, pahat, tulis, atau gubah sesuatu yang menangkap maksud pelayaran ini untuk anda. Penyertaan amat besar di luar jangkaan.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedikasikan sumber — biarkan kreativiti berkembang';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Bekalan dialihkan kepada bahan seni. Pameran yang terhasil mengubah kapal. Orang mengingati mengapa mereka berjuang untuk hidup.';

  @override
  String get event_artCompetition_choice1_text =>
      'Galakkan tetapi jangan beri sumber tambahan';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Kolonis mencipta dengan apa sahaja yang ditemui. Seni itu mentah, terdesak, dan indah. Semangat stabil.';

  @override
  String get event_subspaceEcho_title => 'Gema Subruang';

  @override
  String get event_subspaceEcho_narrative =>
      'Susunan komunikasi menangkap suara — suara manusia — dari suatu tempat di hadapan kita di angkasa. Mereka bercakap tentang koloni, tentang anak-anak, tentang tuaian. Adakah ini transmisi dari masa depan? Dari garis masa selari? Atau hanya gema kejam angan-angan?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Ikut arah isyarat — ia mungkin membawa kita pulang';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Pelarasan haluan sedikit. Sama ada suara itu nyata atau tidak, kru belayar dengan tujuan.';

  @override
  String get event_subspaceEcho_choice1_text => 'Rakam semuanya untuk analisis';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Ahli linguistik dan ahli fizik mengkaji rakaman. Mereka mengekstrak rujukan navigasi yang meningkatkan carta kita.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Abaikan — angkasa mempermainkan yang kesepian';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Pilihan pragmatik. Sesetengah kru kecewa, tetapi kapal kekal di haluan yang terbukti.';

  @override
  String get event_boonPerfectCalm_title => 'Ketenangan Agung';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Atas sebab yang tiada ahli fizik dapat jelaskan, kapal memasuki kawasan angkasa yang tenang secara luar biasa — tiada radiasi, tiada serpihan mikro, tiada gangguan graviti. Setiap sistem di kapal berjalan pada kecekapan puncak. Kru tidur nyenyak buat pertama kali dalam berbulan-bulan.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Guna ketenangan untuk pembaikan menyeluruh';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Kru pembaikan bekerja dalam keadaan sempurna. Setiap sistem mendapat perhatian. Kapal muncul diperbaharui.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Biarkan kru berehat — mereka layak mendapatnya';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Penghentian seluruh kapal. Kolonis tidur, berkongsi makanan, bercerita. Kos kemanusiaan pelayaran, sebentar, dibayar balik.';

  @override
  String get event_boonAncientWaystation_title => 'Stesen Laluan Purba';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Tersembunyi dalam telaga graviti antara dua bintang mati, sebuah stesen purba masih berfungsi — automatik, sabar, menunggu pengembara. Pengapit dok terbuka apabila kita menghampiri. Dron pembaikan diaktifkan. Rizab bahan api dihulurkan ke arah kita. Seseorang, dahulu kala, membina ini untuk orang seperti kita.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Berlabuh dan terima semua yang ditawarkan';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Stesen membaiki, mengisi semula bahan api, dan menentukur semula kapal dengan teknologi berabad-abad di hadapan kita. Apabila kita bertolak, stesen mati — tujuannya tercapai.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Terima pembaikan tetapi biarkan ia berjalan untuk yang lain';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Kita hanya mengambil apa yang diperlukan dan menghantar koordinat stesen kembali ke arah Bumi. Kru merasa mulia.';

  @override
  String get event_relicSentinel_title => 'Si Pengawal';

  @override
  String get event_relicSentinel_narrative =>
      'Binaan menjulang mengorbit bulan tandus — pengawal tunggal yang ditinggalkan oleh pembinanya. Mudah satu kilometer tinggi, berbentuk lembing kaca hitam. Apabila kita menghampiri, satu mata merah terbuka di puncaknya dan mengesan kapal. Ia tidak menembak. Ia tidak memanggil. Ia memerhati.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Hantar profil misi kita — tunjukkan kita tidak berniat jahat';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Mata itu malap ke ambar, kemudian hijau. Paket data tiba: koordinat tiga sistem bintang ditanda \"SELAMAT\" dalam notasi matematik universal. Hadiah dari seorang pengawas.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Kekal di posisi dan kajinya secara pasif';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Berjam-jam pemerhatian menghasilkan pandangan tentang sains bahan yang sepatutnya mustahil. Pasukan pelapisan badan kapal membuat nota dengan panik.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Berundur segera — kita tidak tahu peraturannya';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Mata itu tertutup apabila kita berundur. Apa-apa ujian itu, kita memilih untuk tidak mengambilnya. Kru berdebat berhari-hari.';

  @override
  String get event_relicSeedProbe_title => 'Benih Pengembaraan';

  @override
  String get event_relicSeedProbe_narrative =>
      'Prob kecil yang elegan berguling melalui kekosongan, menyiarkan pada setiap frekuensi secara serentak. Cangkerangnya seramik, diukir dengan simbol yang berubah apabila diperhatikan. Di dalam: ruang bertekanan mengandungi tanah, benih, dan mikroorganisma beku dari dunia yang tidak lagi wujud.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrasikan muatan biologi ke bank benih kita';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Benih dan mikrob asing dikatalog dan dipelihara dengan teliti. Ia boleh mengubah dunia tandus menjadi sesuatu yang hidup. Ahli biologi memanggilnya keajaiban dalam botol.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Kaji sistem pendorongan dan navigasi prob';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Pemacu prob berabad-abad di hadapan kita — pendorong tanpa tindak balas sebesar penumbuk. Jurutera membalik-jurutera serpihan reka bentuk.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Pelihara keseluruhan prob sebagai artifak budaya';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Dipamerkan di atrium kapal, benih asing menjadi simbol persaudaraan antara spesies. Orang lain, di suatu tempat, juga cuba menyelamatkan dunia mereka.';

  @override
  String get event_relicWarningBuoy_title => 'Pelampung Amaran';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Rangkaian pelampung kecil, ratusan daripadanya, disusun dalam corak geometri sempurna merentasi laluan penerbangan kita. Setiap satu memancarkan isyarat yang sama — denyut berulang ringkas yang meningkat frekuensi semakin kita dekat. Ia terasa seperti amaran. Atau pagar.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Patuhi amaran — ubah haluan mengelilingi rangkaian';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Lencongan menelan masa dan menekan navigasi, tetapi apabila kita menyusuri sempadan, sensor jarak jauh mengesan apa yang terletak di sebaliknya: kawasan angkasa bertaburan serpihan dunia yang hancur. Pelampung menyelamatkan kita.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Terobos — kita tidak mampu lencongan';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Tiada apa berlaku apabila kita melintasi garisan. Pelampung senyap. Apa yang mereka kawal, ia sudah tiada atau kita bernasib baik. Kru bernafas lega.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Tangkap pelampung untuk analisis';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Isi pelampung mengandungi arkib data termampat — kartografi bintang kawasan ini dari sejuta tahun lalu. Sesetengah data masih tepat.';

  @override
  String get event_relicMirrorArray_title => 'Susunan Cermin';

  @override
  String get event_relicMirrorArray_narrative =>
      'Beribu-ribu permukaan rata dan pantulan tergantung tanpa bergerak di angkasa, disusun dalam gelang sepusat merentasi ratusan kilometer. Ia memfokuskan cahaya bintang dari matahari yang jauh ke satu titik — bintang buatan, bersinar dalam kekosongan. Seseorang membina rumah api antara galaksi.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Bermandikan cahaya terfokus — cas semula semuanya';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Cahaya bintang pekat membanjiri pengumpul suria kita. Rizab kuasa melonjak. Cahaya hangat mengangkat setiap jiwa di kapal selepas berbulan-bulan dalam gelap yang dingin.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Kaji bahan cermin — ia sepatutnya tidak wujud';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Cermin diperbuat daripada bahan dengan pantulan sempurna — sifar penyerapan pada mana-mana panjang gelombang. Jurutera mengekstrak serpihan. Pelapisan badan kapal tidak akan sama lagi.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Cari titik tumpu — sesuatu sedang diterangi';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Di titik tumpuan: kapsul kecil, terpelihara sempurna dalam cahaya pekat. Di dalam, peta bintang holografik yang begitu terperinci sehingga komputer kita mengambil masa berhari-hari untuk mengindeks.';

  @override
  String get event_relicGraveyard_title => 'Tanah Perkuburan Prob';

  @override
  String get event_relicGraveyard_narrative =>
      'Kita hanyut ke awan prob terbiar — beribu-ribu daripadanya, dari berpuluh-puluh tamadun berbeza. Ada yang purba di luar kiraan, dileburkan oleh radiasi kosmik menjadi fosil logam. Yang lain masih berkelip dengan kuasa yang semakin pudar. Ini pernah menjadi persimpangan. Setiap spesies yang melalui tempat ini meninggalkan sesuatu.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Salvaj sistematik — pungut teknologi terbaik';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Pasukan kejuruteraan bekerja secara bergilir, menanggalkan teknologi asing dari seratus reka bentuk berbeza. Gabungan idea menghasilkan kejayaan dalam setiap sistem.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Fokus pada data navigasi yang tersimpan dalam bank memori';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Merujuk silang carta bintang dari sedozen spesies menghasilkan peta paling lengkap lengan galaksi ini yang pernah dikumpulkan.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Tambah prob kita sendiri ke perkuburan — tinggalkan penanda';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Kita membuat suar kecil membawa kisah manusia dan menambahkannya ke koleksi. Kru merasa terhubung dengan sesuatu yang luas dan purba.';

  @override
  String get event_relicDreamcatcher_title => 'Penangkap Mimpi';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Jaring filamen, nipis seperti sutera labah-labah tetapi merentang beribu-ribu kilometer, direntangkan antara dua planetoid rompak. Ia bukan jaring — ia antena, diselaraskan kepada frekuensi yang sepadan dengan corak gelombang otak manusia. Apabila kita memasuki jangkauannya, setiap kolonis yang tidur mula bermimpi mimpi yang sama: bandar yang subur di bawah langit ambar.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Rakam koordinat mimpi — bandar itu mungkin nyata';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Ahli sains saraf mentafsirkan maklumat ruang dari mimpi yang dikongsi. Ia sepadan dengan sistem bintang sebenar — dan bandar dalam penglihatan itu bukan metafora. Seseorang di luar sana, dan mereka menunggu kita.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Pungut sampel filamen — bahannya luar biasa';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Filamen itu adalah superkonduktor suhu bilik. Diintegrasikan ke dalam sistem kita, ia mengurangkan kehilangan kuasa hampir kepada sifar.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Potong jaring dan bebaskan pemimpi';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Mimpi berhenti. Kolonis terjaga keliru tetapi tidak cedera. Ada yang berkabung atas penglihatan yang hilang. Yang lain bersyukur tidur tanpa bisikan asing.';

  @override
  String get event_relicRosetta_title => 'Objek Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Kubus kecil dan padat dari logam yang tidak dikenali berguling melepasi kapal. Setiap muka diukir dengan mesej yang sama dalam sistem notasi berbeza — matematik, kimia, genetik, akustik, elektromagnet, dan satu yang tidak dapat kami kenal pasti. Ia adalah Batu Rosetta untuk kosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Dekod muka keenam — notasi yang tidak dikenali';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Berbulan-bulan analisis menghasilkan kejayaan besar: sistem keenam mengekod koordinat ruang menggunakan gelombang graviti. Pemahaman kita tentang fizik mengambil lompatan generasi.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Guna muka kimia untuk mensintesis sebatian baharu';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Notasi kimia menerangkan bahan yang tidak pernah kita bayangkan. Jurutera membuat tampalan badan kapal yang lebih ringan dan lebih kuat daripada apa-apa dari Bumi.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Siarkan muka genetik ke bank benih kita';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Notasi genetik mengandungi jujukan DNA yang dioptimumkan untuk ketahanan radiasi dan penyerapan nutrien. Tanaman dan kolonis kita akan lebih lasak di tanah asing.';

  @override
  String get event_relicGhostFleet_title => 'Armada Hantu';

  @override
  String get event_relicGhostFleet_narrative =>
      'Pengimbas melukis gambaran yang menggigil: armada kapal perang asing, ratusan bilangannya, tergantung tanpa bergerak dalam formasi. Ia purba — bacaan kuasa sifar, badan kapal berlubang oleh zaman hentaman mikro. Apa-apa pertempuran yang mereka tujui tidak pernah tiba. Mereka telah menunggu di sini, mati dan sabar, lebih lama daripada tamadun manusia wujud.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Naik kapal induk — jika ada yang mempunyai teknologi terbaik, ia ada';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Dek arahan kapal induk masih memegang komputer taktikal yang utuh. Algoritma ramalannya berabad-abad di hadapan kita. Navigasi dan pengesanan ancaman meningkat secara dramatik.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Tanggalkan pelapisan perisai dari kapal pengiring';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Perisai kapal perang asing direka untuk menahan senjata yang tidak mampu kita bayangkan. Dipasangkan pada badan kapal kita, ia menjadikan kapal koloni hampir tidak boleh dimusnahkan.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Salvaj sistem kriogenik mereka — mereka membawa tentera';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Teknologi krio asing beroperasi pada prinsip yang tidak pernah kita fikirkan. Pod kita berjalan lebih sejuk, lancar, dan boleh dipercayai selepas pengubahsuaian.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Hanyutan Penentukuran Pengimbas';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Diagnostik rutin mendedahkan beberapa subsistem pengimbas telah hanyut dari penentukuran selepas lompatan FTL terakhir. Pengimbas atmosfera dan suhu membaca isyarat hantu. Jurutera boleh membaikinya, tetapi ia memerlukan masa dan sumber.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Penentukuran penuh — alihkan sumber teknologi';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Penjajaran teliti memulihkan kedua-dua pengimbas kepada ketepatan hampir sempurna, tetapi bahagian teknologi terkuras.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Baiki cepat — tentukur atmosfera sahaja';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Pengimbas atmosfera dipulihkan. Pengimbas suhu kekal tidak boleh dipercayai buat masa ini.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Hantar prob untuk penentukuran rujukan';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Prob menyediakan isyarat rujukan bersih. Kedua-dua pengimbas mengunci dan menentukur semula secara automatik.';

  @override
  String get event_ionStormScanners_title => 'Gangguan Ribut Ion';

  @override
  String get event_ionStormScanners_narrative =>
      'Ribut ion melanda sektor, membanjiri susunan pengimbas dengan hingar. Sistem pengesanan mineral dan air menerima beban gangguan elektromagnet yang paling teruk.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Matikan pengimbas sehingga ribut berlalu';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Pengimbas terselamat tetapi kehilangan data penentukuran. Bacaan mineral dan air kurang tepat.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Teruskan mengimbas — terobos hingar';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Data mentah membanjiri masuk, tetapi litar penapis terbakar pada dua subsistem. Imbasan gravimetrik turut terjejas.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Guna ribut untuk uji tekanan dan tingkatkan penapis';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Pasukan sains menggunakan hingar untuk melatih penapis adaptif. Pengimbas air meningkat, tetapi pengimbas mineral rosak.';

  @override
  String get event_bioScannerContamination_title => 'Pencemaran Bio-Pengimbas';

  @override
  String get event_bioScannerContamination_narrative =>
      'Pengimbas tanda hayat telah dicemari oleh sisa bahan organik dari imbasan planet terakhir. Positif palsu di mana-mana. Pengimbas gravimetrik turut menunjukkan hingar simpatetik.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sterilkan susunan sensor — dekontaminasi penuh';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Pembersihan menyeluruh memulihkan pengimbas tanda hayat tetapi agen kimia menghakis rumah sensor gravimetrik.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Penapis perisian — pampasan secara algoritma';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Penapis berfungsi dengan memadai, tetapi pencemaran asas akan perlahan-lahan merosakkan kedua-dua sistem.';

  @override
  String get event_scannerPowerSurge_title => 'Lonjakan Kuasa Pengimbas';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Konduit kuasa berhampiran teluk pengimbas terlampau beban, menghantar lonjakan melalui beberapa subsistem. Pengimbas atmosfera dan tanda hayat terkena langsung. Perisai menyerap sebahagian lebihan.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Halakan kuasa — selamatkan pengimbas';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Tindakan pantas oleh pasukan kejuruteraan mengehadkan kerosakan, tetapi perisai menerima tenaga yang dialihkan.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Biarkan lonjakan berjalan habis';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Pengimbas menerima hentaman penuh. Bacaan atmosfera dan tanda hayat merosot dengan ketara.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Korbankan sel kuasa prob untuk menyerap lonjakan';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Kapasitor prob menyerap lebihan tenaga seperti span. Kerosakan pengimbas boleh diabaikan.';

  @override
  String get event_relicWorldEngine_title => 'Enjin Dunia';

  @override
  String get event_relicWorldEngine_narrative =>
      'Sapuan sensor dalam mendedahkan sesuatu yang mustahil: mesin sebesar bulan kecil, tidur dalam gelap antara bintang. Permukaannya diliputi mekanisme berskala benua — pemproses atmosfera, penjana medan magnet, penstabil tektonik. Seseorang membina mesin yang membina dunia.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Muat turun pelan cetak terraforming';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Pelan cetak itu luas dan separa rosak, tetapi apa yang kita pulihkan boleh menjadikan mana-mana dunia bermusuhan layak didiami. Kolonis kita akan membentuk semula rumah baharu mereka.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Pungut bahan binaan dari badan kapalnya';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Badan Enjin Dunia diperbuat daripada metamaterial yang membaiki sendiri apabila rosak. Diintegrasikan ke dalam kapal kita, ia perlahan-lahan menampal pecahan badan kapal sedia ada.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Cuba hidupkan semula — halakan ke sistem sasaran kita';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Mesin bergerak. Sistem purba mengitar melalui urutan permulaan. Pancaran tenaga menusuk ke arah bintang yang jauh. Sama ada ia berjaya tidak akan diketahui sehingga kita tiba, tetapi bacaan menjanjikan.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Giliran Penyelenggaraan Rutin';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Tiada yang memerlukan perhatian. Kapal berdengung mantap melalui kekosongan dan roster tugas memerlukan tetingkap penyelenggaraan rutin. Ketua kru bertanya di mana untuk memfokuskan usaha giliran.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Fokus pada pengedapan retakan mikro badan kapal';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Giliran tenang dihabiskan menampal retakan halus. Tiada yang dramatik, tetapi badan kapal sedikit lebih baik kerananya.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Kalibrasi semula pengimbas hadapan';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Juruteknik pengimbas menghabiskan beberapa jam menala halus. Bacaan menajam sedikit.';

  @override
  String get event_uneventfulQuietWatch_title => 'Jaga Senyap';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Bintang-bintang hanyut berlalu dalam kesunyian. Jambatan tenang, instrumen mantap. Ia salah satu saat jarang ketika alam semesta tidak meminta apa-apa daripada anda.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Biarkan kru berehat — mereka layak mendapat giliran yang tenang';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Beberapa jam ketenangan sejati. Orang tidur lebih nyenyak, ketegangan reda, dan pegawai budaya mencatat sedikit peningkatan semangat.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Jalankan diagnostik keutamaan rendah sementara tenang';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Isu kecil ditangkap dan dicatatkan. Tiada yang mendesak, tetapi log teknologi sedikit lebih bersih.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Pemeriksaan Kriopod — Semua Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Audit kriopod suku tahunan datang dan pergi tanpa satu pun penggera. Setiap pod menunjukkan hijau. Pasukan perubatan menikmati saat yang jarang tenang.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Bangunkan beberapa kolonis sebentar untuk lawatan semangat';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Tiga kolonis dibangunkan sedar selama satu jam. Mereka berkongsi cerita, peluk kawan lama, dan kembali ke krio dengan senyuman.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Biarkan mereka tidur — jangan risiko kitaran bangun yang tidak perlu';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Pod meneruskan operasi sempurna. Doktor menikmati secawan teh yang tenang.';

  @override
  String get event_uneventfulCartography_title =>
      'Kemas Kini Kartografi Bintang';

  @override
  String get event_uneventfulCartography_narrative =>
      'Kemas kini kartografi berjadual pasukan navigasi tidak mendedahkan apa-apa yang luar biasa — hanya medan bintang yang dijangka beranjak semasa kita bergerak. Hari yang tenang untuk navigator.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Kalibrasi semula navigasi terhadap posisi bintang baharu';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Pembetulan haluan kecil, hampir tidak ketara. Komputer navigasi berdengung dengan puas.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Kemas kini carta bintang untuk arkib koloni';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Kolonis masa depan akan mempunyai peta yang sedikit lebih baik kawasan ini. Hadiah kecil untuk keturunan.';

  @override
  String get event_uneventfulAnniversary_title => 'Ulang Tahun Kapal';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Satu tahun sejak pelancaran — atau dua? Masa kabur di angkasa dalam. Seseorang di dapur telah membakar kek dari stok yang direkonstitusi. Kapten mesti memutuskan bagaimana menandakan peristiwa itu.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Perayaan kecil — muzik, kek, ucapan untuk Bumi';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Sejam kehangatan dalam kekosongan yang dingin. Orang ketawa, ada yang menangis, dan semua orang merasa lebih manusiawi.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Seperti biasa — kita raikan bila tiba';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Kru menghormati pendekatan tabah. Fokus menajam, dan pasukan bertugas menjalankan pemeriksaan sistem tambahan.';

  @override
  String get event_databaseLiterature_title => 'Arkib Sastera Bumi';

  @override
  String get event_databaseLiterature_narrative =>
      'AI kapal membuka bahagian pangkalan data budaya yang lama dimeterai: arkib sastera lengkap Bumi. Novel, puisi, drama — berjuta-juta karya merentasi setiap bahasa dan era. Kru berkumpul untuk bacaan.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Siarkan bacaan terpilih ke seluruh kapal';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare bergema di koridor. Rangkap Rumi dimainkan di teluk hidroponik. Kru mengingati apa yang mereka bawa.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indekskan arkib untuk program pendidikan';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Usaha pengkatalogan mengukuhkan asas pengetahuan kapal dan memberi pegawai budaya bahan pengajaran baharu.';

  @override
  String get event_databaseSchematics_title => 'Semakan Skematik Kejuruteraan';

  @override
  String get event_databaseSchematics_narrative =>
      'Seorang jurutera terjumpa partisi yang terlupa dalam pangkalan data kapal: skematik terperinci dari dekad terakhir kejuruteraan Bumi — reka bentuk reaktor gabungan, pelan metamaterial, dan konsep pendorongan eksperimental.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Utamakan konsep pendorongan untuk pasukan teknologi';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Skematik mendedahkan penambahbaikan kecekapan yang pembina asal tidak sempat melaksanakan. Bahagian teknologi berdengung.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Kongsi pengetahuan secara meluas — setiap jabatan mendapat manfaat';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Jurutera badan kapal, juruteknik pengimbas, dan doktor semuanya menemui pandangan berguna. Air pasang yang naik mengangkat setiap sistem, sedikit.';

  @override
  String get event_databaseCorruption_title => 'Imbasan Pemeliharaan Budaya';

  @override
  String get event_databaseCorruption_narrative =>
      'Pemeriksaan integriti berjadual pangkalan data budaya mendedahkan kerosakan bit — bahagian muzik, sejarah lisan, dan teks agama telah merosot di luar pemulihan. Tidak semua bertahan dalam perjalanan.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Alihkan sumber teknologi untuk menyelamatkan yang tinggal';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Jurutera menghentikan kerja lain untuk menjalankan algoritma pemulihan data. Mereka menyelamatkan kebanyakannya, tetapi usaha itu membebankan bahagian teknologi.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Minta kolonis mencipta semula karya yang hilang dari ingatan';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Usaha yang indah dan tidak sempurna. Apa yang dibina semula milik pelayaran, bukan Bumi. Tradisi baharu dilahirkan.';

  @override
  String get event_databaseBreakthrough_title =>
      'Kejayaan Besar Penyelidikan Diarkib';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Seorang ahli fizik yang merujuk silang kertas penyelidikan Bumi lama dalam pangkalan data menemui bahawa dua kajian yang tidak berkaitan, digabungkan, menerangkan kaedah baharu untuk analisis spektral jarak jauh. Implikasinya amat besar.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Laksanakan kaedah analisis baharu dalam susunan pengimbas';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Pasukan pengimbas bekerja dengan penuh ghairah. Dalam beberapa hari, resolusi spektral berganda. Planet jauh mendedahkan rahsia mereka.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Terbitkan penemuan ke seluruh kapal — inspirasi lebih banyak penyelidikan';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Kejayaan besar itu mencetuskan gelombang kajian silang disiplin. Teknologi meningkat secara meluas, dan kru merasa hidup secara intelektual.';

  @override
  String get event_alienFleetSighting_title => 'Armada Asing di Ufuk';

  @override
  String get event_alienFleetSighting_narrative =>
      'Pengimbas jarak jauh melukis gambaran yang menakutkan: armada kapal asing, ratusan bilangannya, bergerak dalam formasi sempurna merentasi medan bintang. Mereka meminikan kapal kita. Haluan mereka akan membawa mereka dalam jangkauan sensor dalam beberapa jam. Hubungan pertama — atas syarat mereka atau kita.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Perhatikan dalam senyap — senyap dan perhatikan';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Kapal mengurangkan kuasa ke pancaran minimum. Armada berlalu seperti gerombolan ikan paus bercahaya, tidak menyedari kapal manusia kecil bersembunyi di belakang mereka. Data pengimbas luar biasa.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Cuba hubungan pertama — hantar salam';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Satu kapal memecah formasi dan menghampiri. Pancaran data tiba — carta bintang, amaran, dan sesuatu yang mungkin muzik. Kemudian ia bergabung semula dengan armada dan mereka hilang.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Lari — ubah haluan segera';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Kapal membakar habis ke arah bertentangan. Perubahan haluan mahal dan menekan, tetapi armada tidak pernah menyedari kita. Keselamatan dengan harga.';

  @override
  String get event_alienTradeOffer_title => 'Tawaran Dagangan Asing';

  @override
  String get event_alienTradeOffer_narrative =>
      'Kapal asing, lebih kecil daripada kita tetapi memancarkan kuasa yang besar, menyamai kelajuan kita dan menyiarkan mesej ringkas berulang. Ahli linguistik kita mentafsirnya dalam beberapa jam: ia adalah tawaran berdagang. Tiga kategori pertukaran dicadangkan.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Tukar skematik teknikal untuk carta bintang asing';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Kita menghantar reka bentuk pendorongan kita; mereka membalas dengan data navigasi merangkumi kawasan luas angkasa yang belum diterokai. Carta kita bertambah baik secara dramatik, walaupun kita telah berkongsi teknologi kita dengan spesies yang tidak dikenali.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Tukar data budaya untuk pembaikan kapal';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Kita menyiarkan muzik, seni, dan sejarah kita. Sebagai balasan, dron pembaikan asing menyerbu badan kapal, menutup pecahan dengan bahan yang tidak dapat kita kenal pasti. Badan kapal berkilat. Jiwa kita dikongsi.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Tolak dagangan — risiko terlalu besar';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Kapal asing menunggu seketika, kemudian bertolak tanpa insiden. Kru lega tetapi tertanya-tanya apa yang hilang.';

  @override
  String get event_alienWarning_title => 'Siaran Amaran Asing';

  @override
  String get event_alienWarning_narrative =>
      'Setiap pembesar suara di kapal berketar dengan suara asing — diterjemahkan oleh AI kita secara masa nyata: \"BAHAYA DI HADAPAN. PATAH BALIK. KEGELAPAN MENELAN.\" Siaran berulang, kemudian mati. Sensor jarak jauh menunjukkan kekosongan anomali di haluan semasa kita.';

  @override
  String get event_alienWarning_choice0_text =>
      'Patuhi amaran — ubah haluan mengelilingi kekosongan';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Lencongan menambah tekanan ketara pada navigasi, tetapi apabila kita menyusuri tepi kekosongan, sensor mengesahkan: tiada apa yang memasuki kawasan itu pernah keluar. Kita berhutang kepada suara yang tidak dikenali.';

  @override
  String get event_alienWarning_choice1_text =>
      'Abaikan amaran — kekal di haluan';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Kita menerobos. Kekosongan ternyata kawasan serpihan mikro yang sengit. Badan kapal dan pengimbas menerima hukuman sebelum kita lepasi sisi jauh.';

  @override
  String get event_alienWarning_choice2_text =>
      'Siasat tepi kekosongan dengan prob';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Prob memasuki kekosongan dan menghantar data luar biasa sebelum menjadi senyap. Pasukan pengimbas mengekstrak bacaan bernilai, tetapi prob hilang.';

  @override
  String get event_nativeSignalDetected_title => 'Transmisi dari Dunia Sasaran';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Susunan komunikasi menangkap isyarat elektromagnet berstruktur berasal dari planet sasaran kita. Ia tidak boleh disalah erti: teratur, termodulasi, buatan. Seseorang sudah di sana. Premis keseluruhan koloni berubah dalam seketika.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Hantar salam damai — umumkan ketibaan kita';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Pilihan yang berani. Isyarat berubah corak selepas siaran kita — mereka mendengar kita. Sama ada ini selamat datang atau amaran tidak jelas, tetapi pintu terbuka.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Dengar sahaja — belajar sebelum mendedahkan diri';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Berbulan-bulan mendengar secara pasif membina gambaran tamadun peribumi. Mereka berhati-hati, teritorial, tetapi tidak bermusuhan. Kita tiba dengan maklumat.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Ganggu isyarat — nafikan mereka pengetahuan tentang pendekatan kita';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Gangguan berjaya, tetapi ia adalah tindakan agresif terhadap kaum yang belum kita temui. Kru terbahagi tentang moralnya.';

  @override
  String get event_nativeProbeEncounter_title => 'Pintasan Prob Asing';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Prob kecil yang elegan — bukan buatan manusia — menyamai halaju kita dan mula mengimbas kapal. Bahasa reka bentuknya sepadan dengan isyarat dari planet sasaran. Peribumi menghantar jawatankuasa penyambut. Atau dron pengawasan.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Benarkan imbasan — tunjukkan kita tiada yang disembunyikan';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Prob menyelesaikan tinjauannya dan menghantar pancaran data kembali ke planet. Beberapa minit kemudian, pancaran kedua tiba untuk kita: data atmosfera, zon pendaratan selamat, dan apa yang mungkin jemputan.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Tangkap prob untuk kajian';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Prob ditarik ke teluk kargo. Teknologinya menarik tetapi tindakan menangkap mungkin dilihat bermusuhan oleh pembuatnya.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Musnahkan — kita tidak tahu niatnya';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Satu denyut mengurangkan prob menjadi serpihan. Kru berasa lebih selamat, tetapi jambatan yang berpotensi telah dibakar.';

  @override
  String get event_nativeCulturalExchange_title => 'Pertukaran Budaya Pertama';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Pautan data jalur sempit telah ditubuhkan dengan peribumi planet. Mereka menghantar kita imej, bunyi, dan jujukan matematik. Ahli linguistik dan pegawai budaya kita bekerja sepanjang masa untuk menyediakan balasan. Ini perbualan paling penting dalam sejarah manusia.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Kongsi seni dan muzik Bumi — pimpin dengan keindahan';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Kita menghantar Bach, lukisan titik Orang Asli, dan bunyi hujan mengenai daun. Balasannya adalah lata harmonik asing yang membuat kru menangis. Pemahaman mendalam.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Kongsi pengetahuan saintifik — pimpin dengan akal';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Kita menghantar jadual berkala, carta bintang, dan fizik kita. Mereka membalas dengan pembetulan dan penambahan. Teknologi kita melonjak ke hadapan, tetapi pertukaran terasa transaksional.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Hantar prob dengan sampel fizikal — DNA, benih, air';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Prob membawa intipati Bumi ke tangan asing. Peribumi membalas dengan hadiah serupa — sampel biologi dari dunia mereka. Ahli biologi amat gembira.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Kerosakan Penujah Pendaratan';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Semasa pemeriksaan sistem rutin, penujah pendaratan tersalah nyala — bunyi letupan tajam bergema di dek bawah dan kapal tersentak. Diagnostik mendedahkan penyuntik bahan api yang retak dalam susunan pendaratan utama. Tanpa pembaikan, terjun ke planet akan kasar.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Alihkan pasukan teknologi untuk membuat penyuntik ganti';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Jurutera bekerja dua giliran dan menghasilkan penyuntik baharu dari aloi badan kapal ganti. Sistem pendaratan dipulihkan, walaupun bahagian teknologi terkuras.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Hantar prob untuk menguji penentukuran penujah dalam vakum';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Prob menyediakan data tujahan masa nyata yang membolehkan jurutera menentukur semula sekitar penyuntik yang rosak. Bukan pembaikan penuh, tetapi sistem pendaratan stabil.';

  @override
  String get event_landingSimDrill_title => 'Latihan Simulasi Pendaratan';

  @override
  String get event_landingSimDrill_narrative =>
      'Dengan pendaratan semakin hampir, kapten memerintahkan simulasi pendaratan penuh. Kru mengikat diri, sistem diuji di bawah beban, dan penurunan maya bermula. Ia latihan paling realistik yang akan mereka dapat.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Fokus pada ketepatan teknikal — jalankan latihan mengikut buku';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Simulasi mendedahkan dua ralat penentukuran kecil yang segera diperbetulkan. Sistem pendaratan lebih ketat kerananya.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Jadikan acara seluruh kapal — siarkan simulasi';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Kolonis menonton dari setiap skrin di kapal. Pengalaman bersama penurunan simulasi — gegaran, sorakan — menyatukan kru seperti tidak ada yang lain.';

  @override
  String get event_dysonSphere_title => 'Sfera Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Sensor mengesan struktur yang mustahil — sfera Dyson separa yang mengelilingi bintang jauh, memungut keseluruhan output tenaganya. Sesiapa yang membina ini telah mengatasi apa-apa yang pernah manusia bayangkan. Pelabuhan dok kelihatan terbuka apabila kita menghampiri.';

  @override
  String get event_dysonSphere_choice0_text => 'Berlabuh dan terokai struktur';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Di dalam, sistem automatik menghadiahkan kita teknologi yang melonjakkan keupayaan kita berabad-abad ke hadapan. Lima jurutera hilang kepada mekanisme pertahanan stesen sebelum ia mengenali niat kita. Pembina dibina semula dengan aloi asing.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Pungut tenaga dari bahagian luar';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Kita bermandikan limpahan sinaran sfera. Setiap sistem di kapal dicas ke maksimum. Kru memerhati dalam kesunyian yang terkejut.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Kaji dari jarak selamat dan teruskan';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Imbasan jarak jauh mendedahkan prinsip pembinaan yang merevolusikan pemahaman kita tentang kejuruteraan.';

  @override
  String get event_nanotechPlague_title => 'Wabak Nanoteknologi';

  @override
  String get event_nanotechPlague_narrative =>
      'Awan nanomesin rompak, sisa program senjata tamadun yang mati, menyusup masuk kapal melalui retakan mikro badan kapal. Ia membongkar sistem tidak kritikal pada peringkat molekul. Gerombolan semakin merebak.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Letupan EMP — bakar semuanya di bahagian yang terjejas';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Denyut elektromagnet memusnahkan nanit tetapi turut merosakkan elektronik kita sendiri di bahagian tersebut. Kolonis di zon letupan mengalami luka bakar.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Buang atmosfera bahagian yang terjejas ke vakum';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Tanpa atmosfera, nanit perlahan dan mati. Tetapi bahagian tersebut hilang, bersama bekalan tersimpan dan arkib budaya.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Program semula mereka — tukar senjata menjadi alat';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Jurutera yang cemerlang memecahkan kod nanit, tetapi lima anggota kru di bahagian paling terjejas sudah melampaui penyelamatan. Gerombolan yang diprogramkan semula mula membaiki kapal dan bukan memusnahkannya.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Korbankan teras AI prob untuk mencipta gerombolan balas';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Pemproses prob digunakan semula untuk mengawal gerombolan nanit pertahanan. Wabak dineutralkan dengan kehilangan minimum.';

  @override
  String get event_prematureAwakening_title => 'Kebangkitan Pramatang';

  @override
  String get event_prematureAwakening_narrative =>
      'Kegagalan beruntun di teluk kriopod membangunkan 200 kolonis berdekad-dekad lebih awal. Mereka keliru, ketakutan, dan menggunakan sumber yang dimaksudkan untuk fasa pendaratan. Di antara mereka ada kanak-kanak yang tidak pernah mengenali apa-apa selain kapal.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrasikan mereka ke dalam kru — lebih ramai tangan, lebih harapan';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Kolonis yang terjaga menjadi anggota kru yang produktif. Dua puluh kolonis tidak bertahan pencairan mendadak, tetapi yang selebihnya bersatu. Sumber tertekan tetapi semangat melonjak.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Cuba bekukan semula — berisiko tetapi perlu';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Proses pembekuan semula tidak sempurna. Kebanyakan bertahan, tetapi ada yang hilang. Mangsa selamat membawa parut psikologi.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Beri mereka bahagian kapal sendiri';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Sepuluh kolonis hilang akibat komplikasi dari pencairan kecemasan, tetapi yang selebihnya membentuk mikro-koloni dalam kapal. Mereka membangunkan budaya dan tadbir urus sendiri, latihan untuk penempatan planet.';

  @override
  String get event_stowawaysAdvanced_title => 'Penumpang Tersembunyi';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Jauh di dalam ruang kargo, di sebalik sekat palsu, keselamatan menemui seluruh komuniti tersembunyi — 80 orang yang naik secara haram sebelum pelancaran. Mereka telah hidup di dinding kapal sepanjang pelayaran, mengekalkan taman dan palam kuasa mereka sendiri.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Sambut mereka — 80 kolonis lagi adalah hadiah';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Komuniti tersembunyi membawa kemahiran dalam kejuruteraan improvisasi dan kebijaksanaan yang mengkagumkan kru. Taman mereka dipindahkan ke biodom utama.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Kurung mereka dan agihkan semula sumber yang dicuri';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Bekalan yang dipulihkan meningkatkan beberapa sistem, tetapi penahanan keluarga — termasuk kanak-kanak — menghantui kru.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Berunding — mereka sertai kita sebagai sama rata jika mereka kongsi teknologi';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Sel kuasa improvisasi dan teknik hidroponik mereka meningkatkan kecekapan kapal. Integrasi yang tegang tetapi produktif bermula.';

  @override
  String get event_alienReservation_title => 'Rizab Asing';

  @override
  String get event_alienReservation_narrative =>
      'Kita terjumpa rizab alam asing — kawasan angkasa yang sengaja disemai dengan planet boleh didiami dan dilindungi oleh sentinel automatik. Pengawal mengimbas kita dan memproyeksikan mesej: \"Anda boleh menduduki SATU dunia. Pilih dengan bijak. Ganggu yang lain dan anda akan dikeluarkan.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Terima dengan syukur — satu dunia sahaja yang kita perlukan';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Sentinel membimbing kita ke dunia yang disediakan. Imbasan mendedahkan ia sangat sesuai untuk kehidupan manusia.';

  @override
  String get event_alienReservation_choice1_text =>
      'Berunding untuk syarat yang lebih baik — manusia memerlukan ruang untuk berkembang';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Sentinel mempertimbangkan rayuan kita. Mereka meningkatkan pengimbas kita dengan data berpuluh-puluh sistem di luar rizab.';

  @override
  String get event_alienReservation_choice2_text =>
      'Tolak dan pergi — kita tidak mahu dikurung';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Kru berdebat berhari-hari. Kebebasan mengatasi keselamatan. Sentinel membenarkan pemergian kita dengan hadiah: peta bahaya berdekatan.';

  @override
  String get event_cosmicHorror_title => 'Makhluk Antara Bintang';

  @override
  String get event_cosmicHorror_narrative =>
      'Sesuatu yang luas dan gelap mengaburkan bintang-bintang di hadapan — bukan nebula, bukan lubang hitam. Ia tidak mempunyai jisim, tiada tandatangan tenaga, tiada kehadiran elektromagnet. Tetapi ia ADA, dan ia menyedari kita. Anggota kru berhampiran dek pemerhatian hadapan melaporkan ketakutan yang melampau. Dua telah dibius.';

  @override
  String get event_cosmicHorror_choice0_text => 'Undur penuh — pergi SEKARANG';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Kapal menegang menentang momentumnya sendiri. Kita melepaskan diri, tetapi keganasan berlarutan. Sesetengah kolonis tidak pernah pulih secara psikologi.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Tutup dek pemerhatian dan terobos';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Tiga hari penerbangan membuta melalui kegelapan. Apabila bintang kembali, kru menangis kelegaan. Badan kapal terukir dengan corak yang tidak dapat dijelaskan oleh sesiapa.';

  @override
  String get event_cosmicHorror_choice2_text => 'Cuba berkomunikasi';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Entiti menjawab — bukan dalam perkataan, tetapi dalam pengetahuan yang ditekan terus ke minda kru. Peta bintang, fizik, kebenaran tentang alam semesta. Separuh kru dicerahkan. Separuh lagi hancur.';

  @override
  String get event_cosmicHorror_choice3_text => 'Tawarkan prob sebagai ufti';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Prob hanyut ke kegelapan dan lenyap. Entiti mengecut sedikit, seolah-olah puas. Laluan kita terbuka.';

  @override
  String get event_meteorGlancingHit_title => 'Hentaman Meteor Melelas';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Meteor sebesar batu besar melelas bahagian kiri badan kapal pada sudut cetek. Hentaman itu merobek tiga meter pelapisan luar dan menghantar gelombang kejut melalui seluruh rangka. Penggera kawalan kerosakan menjerit di setiap dek.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Alihkan semua bot pembaikan ke pecahan dengan segera';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Bot menutup kerosakan yang paling teruk, tetapi pengambilan panik rizab teknologi meninggalkan sistem sekunder kurang diselenggara.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Kurangkan tujahan dan biarkan kru menampalnya secara manual';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Kemajuan lebih perlahan, tetapi kru melakukan kerja yang kukuh. Navigasi terjejas akibat tetingkap tujahan yang dikurangkan semasa kita hanyut.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Korbankan pelapisan badan prob sebagai bahan tampalan';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Prob dilucutkan untuk alat ganti. Tampalan itu bertahan dan integriti badan kapal dipelihara dengan kos satu pengakap kurang.';

  @override
  String get event_meteorDirectImpact_title => 'Hentaman Meteor Langsung';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Meteorit besi separuh tan menembusi teluk kargo hadapan pada halaju relatif melebihi 40 km/s. Dua anggota kru di koridor bersebelahan tidak dapat dikesan. Teluk itu terbuka kepada vakum.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Tutup teluk kargo dan cari mangsa selamat kemudian';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Teluk ditutup dalam sembilan puluh saat. Kedua-dua anggota kru sudah dipindahkan — hampir-hampir sahaja. Badan kapal membawa parut kekal.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Lancarkan operasi penyelamatan penuh sebelum menutup';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Seorang mangsa ditarik keluar. Pendedahan yang berpanjangan memburukkan kerosakan struktur dan menguras rizab teknologi.';

  @override
  String get event_meteorDebrisField_title => 'Medan Serpihan — Hujan Sisa';

  @override
  String get event_meteorDebrisField_narrative =>
      'Sensor jarak jauh gagal mengesan medan serpihan meteor yang tersebar sehingga kita sudah berada di dalamnya. Ratusan batu sebesar penumbuk melanda badan kapal pada sela rawak. Setiap hentaman adalah undian.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Naikkan perisai dan terobos pada kelajuan penuh';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Perisai menyerap kebanyakan hentaman, tetapi volume hentaman yang besar mengatasi mereka. Badan kapal dan sistem perisai kedua-duanya merosot.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Matikan enjin dan hanyut — minimumkan profil kita';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Enam jam tegang dalam kesunyian. Navigasi terganggu oleh hanyutan tanpa kuasa, tetapi badan kapal muncul dengan jauh lebih sedikit hentaman.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Hantar prob sebagai perisai hadapan';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Prob menerima beban terberat bombardiran. Kapal menyelinap melalui dalam bayangannya dengan calar kecil.';

  @override
  String get event_meteorShowerDense_title =>
      'Hujan Meteor Padat Tidak Dijangka';

  @override
  String get event_meteorShowerDense_narrative =>
      'Komet rompak hancur di suatu tempat di hadapan kita, dan kita terbang terus ke jantung aliran serpihan yang mengekorinya. Susunan pengimbas dilempari serpihan dan rumah sensor sistem pendaratan sudah terkena hentaman langsung.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Lindungi sistem pendaratan — putar kapal';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Putaran melindungi sistem pendaratan tetapi mendedahkan susunan pengimbas atmosfera kepada beban bombardiran.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Perisai susunan pengimbas — ia tidak boleh diganti';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Bank pengimbas terselamat kebanyakannya utuh. Sistem pendaratan menerima kerosakan serpihan sederhana yang perlu kita terima.';

  @override
  String get event_solarEmpBurst_title => 'Letupan EMP — Asal Bintang';

  @override
  String get event_solarEmpBurst_narrative =>
      'Sisa bintang padat yang kita lalui dalam jarak sehari cahaya telah melepaskan denyut elektromagnet terfokus. Setiap litar yang tidak berperisai di kapal berisiko. Kita ada beberapa saat untuk memutuskan apa yang dilindungi.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Halakan semua perlindungan lonjakan ke navigasi dan sokongan hayat';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigasi dan sokongan hayat terselamat utuh. Suit pengimbas dan bahagian teknologi menyerap denyut tanpa perisai — kedua-duanya rosak teruk.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Lindungi susunan pengimbas dan bahagian teknologi';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Sistem sains dan kejuruteraan dipelihara. Navigasi tersalah nyala selama berjam-jam selepas itu kerana litarnya perlahan pulih.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Matikan semuanya dan mulakan semula selepas denyut';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Permulaan sejuk amat menyeksakan — dua belas jam but semula manual. Tetapi tiada sistem yang rosak melampau pemulihan.';

  @override
  String get event_solarRadiationWave_title =>
      'Gelombang Radiasi — Pendedahan Kelas 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Letupan radiasi suria berkeamatan luar jangkaan sedang melanda dek tengah kapal. Teluk kriopod berada dalam laluan pendedahan. Kolonis dalam penggantungan tidak mempunyai perlindungan semula jadi terhadap radiasi keras pada tahap dos ini.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Banjiri teluk kriopod dengan penyejuk sebagai perisai radiasi';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Penyejuk menyerap kebanyakan radiasi. Kriopod terselamat, tetapi sistem penyejuk sendiri separa merosot. Lima belas dalam pod paling terjejas tidak berjaya.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Buang atmosfera dek luar untuk mencipta penampan vakum';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Lapisan vakum mengurangkan radiasi menembusi dengan ketara. Dua puluh kolonis dalam pod paling hampir dengan bahagian yang dibuang mengalami pendedahan maut. Tekanan badan kapal dari perbezaan tekanan tidak dapat dielakkan.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Halakan kuasa ke pelentur magnet';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Pelentur mengurangkan pendedahan radiasi sebanyak dua pertiga. Lapan kolonis menerima dos maut melalui jurang dalam liputan pelentur. Pengambilan kuasa melanda bahagian teknologi dan meninggalkan navigasi berjalan pada kuasa minimum.';

  @override
  String get event_coronalMassEjection_title =>
      'Lontaran Jisim Korona — Kuasa Penuh';

  @override
  String get event_coronalMassEjection_narrative =>
      'Lontaran jisim korona berskala belum pernah berlaku sedang mengejar kita dari belakang. Awan plasma akan menyelubungi kapal dalam masa sejam. Perisai kita tidak direka untuk kelas peristiwa ini. Tiada pilihan yang bersih.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Lari — tolak enjin ke seratus dua puluh peratus';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Kita mendapat jarak yang cukup untuk mengurangkan pendedahan. Enjin terlalu panas dan komputer navigasi menanda amaran lebihan tekanan struktur di seluruh kapal.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Berlindung di sebalik bayang magnet planetoid berdekatan';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Medan planetoid memesongkan kebanyakan lontaran. Menavigasi sedekat itu dengan jasad yang belum dipetakan mencalarkan badan kapal dan menekan sensor sistem pendaratan.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Letupan Sinar Kosmik — Gangguan Pengimbas';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Letupan sinar kosmik bertenaga ultra-tinggi telah memenuhi semua elektronik pengimbas dengan hingar. Susunan mineralogi dan gravimetrik menghasilkan karut. Penentukuran semula memerlukan masa yang mungkin tidak kita miliki.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Kitaran penentukuran penuh — keluarkan kapal dari talian sementara';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Semua pengimbas kembali bersih selepas empat jam penentukuran teliti. Navigasi terjejas akibat kesedaran situasi yang berkurangan semasa tetingkap pemadaman.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Tampal hanya susunan paling kritikal — biarkan yang lain bising';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Pengimbas gravimetrik dan tanda hayat dipulihkan. Susunan mineral dan suhu kekal merosot selama-lamanya.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Korbankan perkakasan telemetri prob untuk alat ganti';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Mengkanibal pakej sensor prob memberi kita komponen untuk memulihkan suit pengimbas tanpa penentukuran yang panjang.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Letupan Sinar Kosmik — Pendedahan Kolonis';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Hujan sinar kosmik sekunder telah menembusi perisai kriopod di teluk 6. Kolonis dalam penggantungan menerima kerosakan DNA kumulatif daripada radiasi terion. Tanpa campur tangan, mekanisme pembaikan sel akan gagal dalam pod yang terjejas.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Pencairan kecemasan — bangunkan kolonis yang terjejas';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Dua ratus kolonis dibangunkan awal. Empat puluh dengan kerosakan DNA paling teruk tidak menjawab rawatan. Pasukan perubatan melakukan apa yang mampu untuk yang selebihnya.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Halakan pelapisan perisai badan kapal untuk melindungi teluk 6 — kos struktur';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Koloni diselamatkan, tetapi menanggalkan perisai dari satu bahagian badan kapal menjadikan kapal rentan secara struktur di zon tersebut.';

  @override
  String get event_coolantLeak_title => 'Pecahan Saluran Penyejuk';

  @override
  String get event_coolantLeak_narrative =>
      'Saluran penyejuk utama telah pecah di belakang dinding reaktor. Cecair kriogenik terlampau panas menyembur merentasi simpang yang menempatkan konduit bahagian teknologi kritikal. Suhu reaktor semakin meningkat.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Tutup reaktor dan biarkan ia sejuk — terima pemadaman penuh';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Penutupan terkawal mencegah bencana. Dua belas jam sokongan hayat bergantung bateri amat mengerikan, dan sistem dimulakan semula secara tidak sempurna.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Hantar pasukan kawalan kerosakan masuk — risiko pendedahan kru';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Pasukan menutup pecahan dalam empat puluh minit. Seorang anggota kru terbunuh akibat pendedahan penyejuk terlampau panas. Pembaikan itu kukuh.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Alihkan penyejuk dari teluk kriopod sebagai bekalan kecemasan';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Reaktor distabilkan. Teluk kriopod berjalan lebih panas daripada ambang selamat selama enam jam — kerosakan selular kecil tetapi nyata terkumpul.';

  @override
  String get event_powerGridFailure_title => 'Kegagalan Grid Kuasa Utama';

  @override
  String get event_powerGridFailure_narrative =>
      'Kerosakan beruntun telah mematikan grid kuasa utama. Sistem sandaran mengekalkan sokongan hayat dan pemanasan kriopod, tetapi navigasi, pengimbas, dan bahagian pembina semuanya gelap. Setiap minit luar talian menelan ketepatan haluan.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Pulihkan navigasi dan pengimbas dahulu — terima masa henti pembina yang dipanjangkan';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Sistem navigasi dan pengimbas kembali dalam talian dalam dua jam. Bahagian pembina terlepas kitaran penyelenggaraan kritikal.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Pulihkan pembina dahulu — guna mereka untuk mempercepatkan pembaikan';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Pembina menghalakan kuasa dengan cekap. Pemulihan grid penuh berlaku lebih cepat, tetapi navigasi hanyut teruk semasa pemadaman yang dipanjangkan.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Gangguan Beruntun Sokongan Hayat';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'AI pengurusan sokongan hayat telah memasuki gelung ralat, mengitar sela penyaringan karbon dioksida secara tidak menentu. Tahap CO₂ di seluruh dek yang diduduki berturun naik. Kru mengalami sakit kepala; ada yang sudah tidak mampu bergerak.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Paksa set semula keras AI sokongan hayat';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Set semula membersihkan gelung tetapi meninggalkan ganti manual berjalan selama sepuluh jam. Tiga anggota kru meninggal akibat pengumpulan CO\\u2082 sebelum tahap kembali normal.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Tampal gelung perisian — lebih perlahan tetapi lebih selamat';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Pasukan perisian mengasingkan dan menampal kerosakan selama enam jam yang tegang. Tahap CO₂ perlahan-lahan kembali normal. Tiada set semula keras diperlukan.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Kosongkan dek yang terjejas dan jalankan sokongan hayat minimum';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Dua kolonis hilang dalam kekeliruan pemindahan. Sistem kembali normal selepas AI dimulakan semula secara sejuk.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Kerosakan Pengitar Semula Air';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Unit pengambilan air utama telah tersangkut. Unit sandaran sudah berjalan pada kapasiti penuh. Tanpa campur tangan, kru akan menerima catuan kecemasan dalam empat puluh lapan jam, dan suapan penyejuk kriopod akan terjejas dalam tujuh puluh dua.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Tarik setiap tangan teknologi untuk membina semula pengambil';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Unit dibina semula dalam tiga puluh jam. Empat anggota kru, sudah lemah, tidak bertahan dehidrasi.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Alihkan rizab penyejuk kriopod sebagai bekalan air minum kecemasan';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Kru bertahan, tetapi lapan kolonis dalam pod yang semakin panas mengalami kerosakan selular yang tidak boleh diundur. Margin penyejuk kriopod menyusut secara berbahaya.';

  @override
  String get event_navComputerReboot_title =>
      'But Semula Kecemasan Komputer Navigasi';

  @override
  String get event_navComputerReboot_narrative =>
      'Komputer navigasi telah terkunci semasa pembetulan haluan, meninggalkan kapal dalam putaran perlahan yang tidak terkawal. Setiap saat putaran yang tidak dibetulkan menambah hanyutan kita dari trajektori yang dirancang. But semula penuh adalah satu-satunya pembetulan.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'But semula segera — terima tempoh pemadaman penuh';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Empat jam penerbangan membuta tuli sementara sistem dimuat semula. Putaran dihentikan, tetapi ralat haluan ketara.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Guna kawalan penujah manual untuk menghentikan putaran dahulu';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Kemahiran juruterbang menghentikan putaran sebelum but semula. Navigasi kembali dengan ralat haluan yang lebih kecil, tetapi pembakaran manual menekan badan kapal.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Suapkan telemetri prob ke unit navigasi sandaran';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Data inersia prob memberi unit sandaran rujukan yang cukup untuk mengekalkan haluan. Navigasi utama but semula dengan bersih.';

  @override
  String get event_crewAirlocked_title => 'Anggota Kru di Kunci Udara';

  @override
  String get event_crewAirlocked_narrative =>
      'Seorang kolonis — dibangunkan awal untuk pemerhatian perubatan — telah mengurung diri di dalam kunci udara luaran dan mengitar pintu luar. Dia tidak menjawab komunikasi. Tekanan psikologi angkasa dalam telah memecahkan sesuatu di dalamnya.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Ganti kawalan kunci udara dari jauh — paksa ia tertutup';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Pintu dikunci sebelum dia dapat menyelesaikan kitaran. Dia dibius dan dikembalikan ke bahagian perubatan. Kru tergoncang tetapi bersatu.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Hantar kaunselor masuk untuk membawanya kembali';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Selepas tiga jam yang terdesak, kaunselor membawanya keluar hidup-hidup. Insiden itu mencetuskan krisis kesihatan mental yang lebih luas di dek yang diduduki.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Tutup koridor dan biarkan insiden menyelesaikan sendiri';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Kunci udara mengitar. Kehilangan dicatatkan. Anggota kru yang tinggal menanggung beratnya selama berbulan-bulan.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotaj Teluk Kriopod';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Suapan keselamatan mendedahkan seorang anggota kru — dibangunkan tiga bulan lalu untuk giliran rutin — secara sistematik melumpuhkan elemen pemanas kriopod di teluk 4. Apabila dihadapi, dia menjerit bahawa kolonis adalah parasit yang memakan sumber milik kru yang hidup.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Tangkap dan asingkan dia dengan segera';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Dia ditahan. Empat puluh pod telah dirosak sebelum penggera. Pasukan pembaikan kecemasan menyelamatkan kebanyakan, tetapi tidak semua.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Berunding — dengar rungutannya sebelum bertindak';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Perundingan mendedahkan krisis semangat yang lebih dalam. Dia berundur, tetapi enam puluh pod telah diganggu gugat pada masa itu.';

  @override
  String get event_crewSupplyHoarder_title => 'Penimbunan Bekalan Ditemui';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Audit inventori mendedahkan sekumpulan kecil anggota kru telah secara sistematik mengalihkan bekalan perubatan, catuan makanan, dan komponen ganti teknologi ke dalam simpanan tersembunyi. Alasan mereka: mereka tidak percaya misi akan berjaya, dan mereka bersiap sedia untuk perjalanan pulang.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Rampas semua dan tegur kumpulan secara terbuka';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Simpanan dipulihkan hampir utuh. Kepercayaan dalam kru retak teruk. Produktiviti terjejas selama berminggu-minggu.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Tugaskan mereka semula secara senyap — jangan jadikan tontonan';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Situasi diredakan tanpa panik. Sesetengah bekalan tidak dapat dipulihkan, dan keputusasaan yang mendasari tidak pernah ditangani dengan betul.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Serahkan kepada kru — tribunal demokratik';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Proses tribunal memulihkan rasa keadilan komuniti. Pukulan semangat daripada skandal diimbangi oleh pengambilan keputusan kolektif.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Pemberontakan — Bilik Enjin Dirampas';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Puak sembilan belas anggota kru telah mengunci bilik enjin dan menuntut undian untuk mempatah balikkan kapal. Mereka telah melumpuhkan panel ganti kawalan kecemasan. Kru lain memerhati di monitor, menunggu arahan untuk bertindak.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Berunding — berikan mereka undian tulen tentang misi';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Undian diadakan. Misi diteruskan dengan margin tipis. Puak berundur, tetapi luka budaya itu mendalam.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Potong kuasa ke bilik enjin dan rampas semula dengan kekerasan';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Keselamatan mengambil semula bilik dalam empat jam. Tiga cedera. Ketua kumpulan dikurung. Navigasi dalam mod manual sepanjang masa dan hanyut dengan ketara.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Banjiri bilik enjin dengan gas tidur dari sistem pengudaraan';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Gas tersebar. Kumpulan terjaga di sel tahanan tanpa cedera. Kru terganggu betapa cepat arahan mempersenjatai sokongan hayat.';

  @override
  String get event_hullFatigueStress_title =>
      'Kelesuan Badan Kapal — Retakan Tekanan Dikesan';

  @override
  String get event_hullFatigueStress_narrative =>
      'Imbasan integriti struktur mendedahkan rangkaian retakan mikro yang merebak melalui tulang belakang kapal — kerosakan kumulatif dari bertahun-tahun pengitaran haba dan hentaman mikro. Retakan belum kritikal, tetapi ia semakin merebak.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Pasukan kimpalan kecemasan — bekerja secara bergilir sehingga ditutup';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Berminggu-minggu kerja pembaikan yang memenatkan. Retakan ditampung, tetapi bahagian teknologi terkuras dan semangat merosot akibat kerja keras yang tidak henti.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Kurangkan tujahan untuk mengurangkan tekanan struktur — terima transit yang lebih perlahan';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Tujahan yang lebih rendah menghentikan retakan daripada merebak tetapi tidak menyembuhkan kerosakan sedia ada. Ketepatan navigasi terjejas akibat profil tujahan yang diubah.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Guna bot pembina untuk meletak jalur pengukuhan komposit';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Pembina melakukan kerja yang cemerlang. Tulang belakang diperkukuh melebihi spesifikasi asal. Bahagian pembina terkuras tetapi berkesan.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomali Tekanan Dalaman';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Tiga petak tengah kapal mencatatkan perbezaan tekanan dalaman anomali yang konsisten dengan perubahan bentuk struktur berskala mikro. Jika dinding melengkung ke dalam, letupan bencana boleh berlaku tanpa amaran lanjut.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Pindahkan dan tutup petak dengan segera';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Petak ditutup. Pemeriksaan terperinci mengesahkan perubahan bentuk dinding. Ruang yang hilang mengganggu operasi dan budaya terjejas akibat keadaan sesak.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Buang atmosfera petak ke vakum — hentikan perbezaan tekanan';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Pembuangan menghentikan perubahan bentuk. Kerosakan struktur terhad, tetapi tiga bahagian kapal tidak boleh didiami secara kekal.';

  @override
  String get event_commsArrayFailure_title => 'Kegagalan Susunan Komunikasi';

  @override
  String get event_commsArrayFailure_narrative =>
      'Susunan komunikasi jarak jauh utama telah senyap. Mesej terakhir dari Bumi diterima sebelas bulan lalu, dan kini isyarat pembawa pun hilang. Diagnostik dalaman mencadangkan mekanisme penjajaran piring telah tersangkut dalam sejuk.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Hantar pasukan EVA untuk menjajaj semula piring secara manual';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA mengambil masa sembilan jam di angkasa terbuka. Piring dipulihkan. Seorang anggota kru mengalami penyahkompresian sut semasa kemasukan semula — saat genting yang menggoncang semua.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Halakan melalui susunan pengimbas sains sebagai pemancar sandaran';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Susunan sains tidak dioptimumkan untuk komunikasi. Isyarat lemah dan tidak boleh dipercayai, dan penggunaan semula merosakkan keupayaan pengimbas.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Terima kesunyian — fokuskan sumber pada misi di hadapan';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Kru memproses kehilangan hubungan dengan Bumi dengan cara yang berbeza. Bagi sesetengah ia membebaskan; bagi yang lain, menghancurkan.';

  @override
  String get event_fuelLineRupture_title => 'Pecahan Saluran Bahan Api';

  @override
  String get event_fuelLineRupture_narrative =>
      'Keretakan kristal dalam konduit bahan api 7-B sedang membuang plasma pemacu ke dalam lorong penyelenggaraan. Kebocoran kecil tetapi semakin pantas. Tanpa kawalan, ia akan menjejaskan kecekapan pemacu navigasi dan integriti struktur bahagian belakang.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Asingkan konduit dan berjalan dengan kapasiti bahan api yang dikurangkan';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Konduit ditutup dengan bersih. Kita kehilangan lima belas peratus kecekapan pemacu secara kekal, yang merosakkan ketepatan navigasi untuk baki pelayaran.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Cuba pembaikan panas — tampal konduit di bawah tekanan hidup';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Pasukan pembaikan berjaya, dengan tipis. Konduit bertahan, walaupun tidak sempurna. Pelapisan badan kapal belakang menunjukkan skor tekanan haba.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Salirkan konduit menggunakan tangki penujah prob sebagai storan limpahan';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Prob dikosongkan dan digunakan sebagai takungan bahan api sementara. Konduit disalirkan dan dibaiki dengan selamat tanpa tekanan.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Amaran Beruntun Suhu Kriopod';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Suhu kriopod Teluk 2 meningkat dalam corak yang konsisten dengan kesan beruntun haba yang tidak terkawal. Jika beruntun itu mencapai Teluk 3, ia akan mencetuskan pencairan kecemasan automatik lebih tiga ratus kolonis. Kapal tidak mampu menampung seramai itu penumpang sedar pada masa yang sama.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Buang rizab penyejuk untuk menghentikan beruntun';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Penyejuk menghentikan beruntun di sempadan Teluk 2. Lapan puluh kolonis di Teluk 2 mengalami kerosakan penggantungan akibat lonjakan suhu.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Pencairan terkawal Teluk 2 sebelum beruntun memaksa yang tidak terkawal';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Pencairan terkawal berjalan teratur tetapi meletakkan seratus empat puluh kolonis ke dalam kapal yang tidak bersedia. Sokongan hayat tertekan, budaya merosot akibat kesesakan.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Guna bot pembina untuk mengasingkan teluk secara fizikal dengan sekat kecemasan';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Pembina mendirikan penghalang haba tepat pada masanya. Beruntun dihentikan sejuk. Bahagian pembina terjejas teruk akibat operasi kecemasan.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degradasi Pengedap Kriopod — Sistematik';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Pemeriksaan rutin mendedahkan kelompok pembuatan pengedap kriopod merosot pada kadar tiga kali ganda daripada jangkaan. Pod yang terjejas — berjumlah lebih empat ratus — akan mula kehilangan integriti atmosfera dalam enam bulan jika tidak diganti.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Buat pengedap ganti daripada stok bahan mentah';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Pembina menghasilkan pengedap ganti selama lapan minggu. Rizab bahan mentah ditarik turun secara mendadak.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Satukan kolonis — pindahkan mereka ke pod dengan pengedap yang baik';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Penyatuan berjaya tetapi meninggalkan sesetengah pod terlalu padat. Kecekapan kriogenik menurun dan kesihatan kolonis jangka panjang terjejas.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Kegagalan Penyaring Oksigen — Kritikal';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Bank penyaring oksigen utama telah gagal sepenuhnya. Kepekatan CO₂ di dek yang didiami meningkat ke tahap berbahaya. Penyaring sandaran mampu mengendalikan kira-kira empat puluh peratus beban. Setiap minit tanpa tindakan menelan nyawa.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Hibernasi kecemasan — letakkan kru kembali di bawah segera';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Kru dimasukkan ke dalam penggantungan sementara dengan segera. Tahap CO₂ stabil dengan lebih sedikit metabolisme aktif. Penyaring dibaiki oleh sistem automatik selama minggu berikutnya.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Kanibal komponen dari susunan pengimbas untuk membina semula penyaring';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Penyaring dibina semula dalam sebelas jam yang tegang. Semua kru terselamat, walaupun ada yang menunjukkan tanda hipoksia ringan. Suit pengimbas merosot secara kekal.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Buang atmosfera kaya CO₂ dan ganti dari tangki oksigen kecemasan';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Pembuangan membersihkan atmosfera serta-merta. Rizab O₂ kecemasan berkurangan dengan ketara. Jika kegagalan lain berlaku, tiada margin yang tinggal.';

  @override
  String get event_deadAlienArtifact_title => 'Si Pengembara Senyap';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Pengimbas jarak jauh menangkap kapal hanyut — reka bentuk asing, gelap, tiada tandatangan kuasa. Pasukan penaik menemui satu penghuni: makhluk reptilia yang diikat di kerusi juruterbang, sudah lama mati, tangan bercakar masih menggenggam peranti kristal yang berdenyut dengan cahaya samar. Log kapal utuh tetapi disulitkan. Apa-apa yang membunuh pengembara ini, ia bukan keganasan — ekspresi yang membeku di mukanya adalah satu keletihan, bukan ketakutan. Ia mati mencapai sesuatu yang tidak pernah ditemuinya.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Ambil peranti kristal dan kajinya';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Peranti berinteraksi dengan sistem teknologi kita dengan cara yang hampir tidak difahami jurutera. Ia kelihatan sebagai komputer navigasi dengan kecanggihan luar biasa. Carta bintang membanjiri paparan kita — termasuk data tentang planet yang belum kita capai.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Dekripsi log kapal — pelajari apa yang ia tahu';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Berhari-hari kerja menghasilkan terjemahan separa. Makhluk asing itu seorang peninjau, mengkatalog dunia boleh didiami untuk tamadun yang runtuh berabad-abad lalu. Catatan terakhirnya menerangkan planet yang menjanjikan — dan koordinatnya dalam jangkauan kita. Arkib budaya menyerap segalanya: puisi asing, peta bintang, mesej terakhir kepada keluarga yang tidak lagi wujud.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Salvaj keseluruhan kapal untuk alat ganti';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Pasukan penaik melucutkan kapal asing secara sistematik. Aloi badan kapalnya berdekad-dekad di hadapan kita. Sel kuasanya masih berisi cas. Makhluk asing itu diberikan pengebumian di angkasa — dihanyutkan ke arah bintang terdekat. Exodus lebih kuat kerana pertemuan itu, jika sedikit berhantu.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Biarkan ia tidak diganggu — ini adalah kubur';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Kapten mencatat koordinat dan menyiarkan isyarat peringatan pada semua frekuensi. Kru suram tetapi bersatu. Sesuatu tentang menghormati pengembara sesama — walaupun yang asing — mengingatkan semua orang mengapa mereka di sini.';

  @override
  String get event_repairStation_title => 'Stesen Geganti';

  @override
  String get event_repairStation_narrative =>
      'Sensor mengesan struktur besar mengorbit bintang kerdil yang padam — stesen pembaikan automatik, masih beroperasi selepas apa yang mesti beribu-ribu tahun. Pengapit doknya terbuka apabila kita menghampiri, dan suara sintetik menyiarkan dalam seratus bahasa, yang terakhir adalah Inggeris matematik yang kaku: \"KAPAL DIKESAN. SISTEM MEROSOT. PROTOKOL PEMBAIKAN TERSEDIA. PERTUKARAN DIPERLUKAN.\" Manifes stesen menyenaraikan perkhidmatan dan harga dalam unit sumber universal. Ia akan berdagang, tetapi ia tidak akan memberi.';

  @override
  String get event_repairStation_choice0_text =>
      'Tukar prob untuk pembaikan kapal sepenuhnya';

  @override
  String get event_repairStation_choice0_outcome =>
      'Dron pembaikan stesen menyerbu Exodus dalam tarian kimpalan ketepatan dan penggantian litar. Pecahan badan kapal ditutup, navigasi ditentukur semula, pengimbas dipulihkan. Apabila mereka berundur, kapal terasa baharu. Teluk prob, bagaimanapun, kosong.';

  @override
  String get event_repairStation_choice1_text =>
      'Belanja bahan api untuk membaiki sistem kritikal sahaja';

  @override
  String get event_repairStation_choice1_outcome =>
      'Stesen menerima rod bahan api sebagai bayaran dan memfokuskan pada sistem yang paling rosak. Kerja itu pantas dan sempurna. Tolok bahan api menurun dengan ketara, tetapi kapal akan bertahan lebih lama kerananya.';

  @override
  String get event_repairStation_choice2_text =>
      'Tukar pangkalan data teknologi untuk prob dan sel tenaga';

  @override
  String get event_repairStation_choice2_outcome =>
      'AI stesen tamak akan data. Ia menyalin keseluruhan perpustakaan teknikal kita — manual kejuruteraan, pangkalan data saintifik, pelan cetak pembuatan — dan sebagai ganti membuat prob segar dan sel tenaga dari bahan mentah. Arkib teknologi berkurangan, tetapi bekalan itu tidak ternilai.';

  @override
  String get event_repairStation_choice3_text =>
      'Tawarkan arkib budaya untuk pembaikan menyeluruh';

  @override
  String get event_repairStation_choice3_outcome =>
      'Stesen menyiarkan karya Shakespeare, Bach, dan seribu suara manusia lain ke bank memorinya. Sebagai balasan, ia melakukan pembaikan menyeluruh dan mengisi teluk prob dengan unit yang baru dihasilkan. Arkib budaya dikeluarkan isinya, tetapi kapal mungkin benar-benar akan sampai ke destinasinya sekarang.';

  @override
  String get ending_scoreLabel_landing => 'Pendaratan';

  @override
  String get ending_scoreLabel_construction => 'Pembinaan';

  @override
  String get ending_scoreLabel_technology => 'Teknologi';

  @override
  String get ending_scoreLabel_culture => 'Budaya';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfera';

  @override
  String get ending_scoreLabel_gravity => 'Graviti';

  @override
  String get ending_scoreLabel_temperature => 'Suhu';

  @override
  String get ending_scoreLabel_water => 'Air';

  @override
  String get ending_scoreLabel_resources => 'Sumber';

  @override
  String get ending_scoreLabel_nativeRelations => 'Hubungan Peribumi';

  @override
  String get ending_scoreLabel_population => 'Populasi';

  @override
  String get ending_tierGoldenAge => 'Zaman Keemasan';

  @override
  String get ending_tierThrivingColony => 'Koloni Makmur';

  @override
  String get ending_tierSurvival => 'Kelangsungan Hidup';

  @override
  String get ending_tierStruggling => 'Berjuang';

  @override
  String get ending_tierDire => 'Genting';

  @override
  String get ending_tierExtinction => 'Kepupusan';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'Mekar Pertama $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Akar Dalam di $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Tapak Kaki yang Susah Payah di $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Tanah Nipis di $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Koloni Runtuhan $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Transmisi Terakhir dari $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Terjun ke $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Menentang segala kemustahilan, siaran itu berakar. $planetName menerima manusia bukan sebagai serpihan tetapi sebagai benih hidup: tanah subur, sistem yang berfungsi, dan kekuatan yang cukup untuk membina melampaui sekadar kelangsungan hidup. Dalam satu generasi, seni, sains, dan budaya berkembang pesat. Anak-anak yang lahir di $planetName memandang ke bintang yang tidak dikenali dan memanggil mereka rumah. Pelayaran menjadi mitos pengasas tamadun baharu yang bersedia melemparkan masa depannya sendiri ke luar.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Pendaratan itu kasar, tetapi benih bertahan. $planetName terbukti cukup murah hati untuk air mengalir, tanaman berakar, dan sistem kapal yang terselamat dipecahkan menjadi penempatan pertama yang sebenar. Menjelang akhir dekad pertama, sebuah pekan makmur berdiri di mana Exodus pernah berlabuh. Manusia bukan sahaja bertahan merentasi pemisah. Ia telah bermula semula.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Kelangsungan hidup tidak pernah dijamin, dan di $planetName setiap hari mesti diraih. Kapal yang rosak hanya menyediakan keperluan paling asas, tetapi benih itu tidak mati dalam perjalanan. Kolonis menyesuaikan diri melalui kedegilan dan kepintaran, mengukir masa depan dari dunia yang menawarkan sedikit secara percuma. Generasi kemudian akan mengingati kesusahan tahun-tahun pengasas dan tekad yang mengekalkan siaran itu hidup.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Koloni berpegang pada kewujudan seperti benih yang ditabur di atas tanah yang buruk. $planetName tidak berbelah kasih, sumber nipis, dan sistem kapal yang merosot menawarkan sedikit bantuan. Catuan menjadi cara hidup. Ada yang berbisik bahawa Exodus sepatutnya terus terbang. Namun, penempatan bertahan: berkurang, keras, dan enggan mati secara senyap.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Pendaratan di $planetName adalah bencana. Sistem kapal kritikal gagal semasa penurunan, dan apa yang sepatutnya penyemaian menjadi kemalangan. Dalam beberapa bulan, koloni dikurangkan kepada segelintir mangsa selamat yang terdesak berlindung di serpihan kapal. Sama ada mereka akan bertahan setahun lagi tidak pasti. Log terakhir ditutup dengan satu baris: \"Kami masih di sini. Buat masa ini.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Siaran berakhir di $planetName. Suar kecemasan terus berdenyut lama selepas kolonis terakhir menarik nafas, tetapi benih tidak pernah berakar. Kotak hitam kapal merakam segalanya: sistem yang gagal, hari-hari terakhir yang terdesak, dan kesunyian yang menyusul. Jika kapal lain pernah menemui dunia ini, ia akan tahu bahawa manusia cuba menyebarkan kehidupan di antara bintang, dan gagal di sini.';
  }

  @override
  String get ending_epilogueDefault =>
      'Pelayaran tamat. Apa yang berikutnya terpulang kepada mereka yang terselamat.';

  @override
  String get ending_governmentDemocracy => 'Demokrasi';

  @override
  String get ending_governmentTechnocracy => 'Teknokrasi';

  @override
  String get ending_governmentRepublic => 'Republik';

  @override
  String get ending_governmentAutocracy => 'Autokrasi';

  @override
  String get ending_governmentTribalCouncil => 'Majlis Suku';

  @override
  String get ending_governmentTheocracy => 'Theocracy';

  @override
  String get ending_governmentMilitaryJunta => 'Military Junta';

  @override
  String get ending_governmentCorporateOligarchy => 'Corporate Oligarchy';

  @override
  String get ending_governmentFascistState => 'Fascist State';

  @override
  String get ending_governmentCommune => 'Commune';

  @override
  String get ending_cultureRenaissance => 'Kebangkitan';

  @override
  String get ending_culturePreserved => 'Dipelihara';

  @override
  String get ending_cultureFragmented => 'Berserpihan';

  @override
  String get ending_cultureLost => 'Hilang';

  @override
  String get ending_techAdvanced => 'Maju';

  @override
  String get ending_techIndustrial => 'Perindustrian';

  @override
  String get ending_techPreIndustrial => 'Pra-Perindustrian';

  @override
  String get ending_techStoneAge => 'Zaman Batu';

  @override
  String get ending_constructionAdvanced => 'Maju';

  @override
  String get ending_constructionFunctional => 'Berfungsi';

  @override
  String get ending_constructionPrimitive => 'Primitif';

  @override
  String get ending_constructionNone => 'Tiada';

  @override
  String get ending_nativesNone => 'Tiada';

  @override
  String get ending_nativesIntegrated => 'Bersepadu';

  @override
  String get ending_nativesCoexistence => 'Kewujudan Bersama';

  @override
  String get ending_nativesTension => 'Ketegangan';

  @override
  String get ending_nativesConflict => 'Konflik';

  @override
  String get ending_nativesAlliance => 'Alliance';

  @override
  String get ending_nativesSubjugation => 'Subjugation';

  @override
  String get ending_landscapeGravityHigh =>
      'Graviti berat menekan segala-galanya. ';

  @override
  String get ending_landscapeGravityLow =>
      'Dalam graviti rendah, setiap langkah melontar peneroka ke angkasa. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Gravitinya terasa hampir seperti Bumi. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Lautan luas membentang ke setiap ufuk, disuapi oleh sungai yang tak terkira. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Tasik dan sungai menyediakan air yang mencukupi. ';

  @override
  String get ending_landscapeWaterLow =>
      'Air sukar didapati — kolam kecil dan akuifer bawah tanah mengekalkan kehidupan. ';

  @override
  String get ending_landscapeWaterNone =>
      'Landskap kering tandus, tanpa air permukaan yang kelihatan. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Atmosfera tebal membawa haruman asing pada angin hangat. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Udara nipis tetapi boleh dihirup memerlukan penyesuaian. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Tekanan atmosfera sangat rendah secara berbahaya — habitat tertutup amat diperlukan. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      'Bulan berkilat yang berjalur mineral mendominasi langit malam, permukaan logamnya memantulkan cahaya bintang merentasi landskap. ';

  @override
  String get ending_landscapeMoonUnstable =>
      'Bulan yang retak menjulang di atas, permukaan runtuhnya mengekor gelang serpihan samar — peringatan tetap tentang bombardiran yang mengancam di bawah. ';

  @override
  String get ending_landscapeMoonBarren =>
      'Bulan pucat dan tandus naik di atas ufuk, permukaan berlubangnya pengawal senyap ke atas koloni. ';

  @override
  String get ending_landscapeHighRotation =>
      'Planet berputar dengan pantas — siang hanya berlangsung beberapa jam, dan angin Coriolis menyebat apa sahaja yang berdiri tinggi. ';

  @override
  String get ending_landscapeLowRotation =>
      'Planet berputar dengan kelambatan yang menyeksa. Hemisfera yang menghadap matahari terbakar manakala bahagian gelap membeku, dan hanya jalur senja di antara menawarkan perlindungan. ';

  @override
  String get ending_landscapeVolcanic =>
      'Banjaran gunung berapi membelah ufuk, lerengnya berjalur sungai batu cair. Udara berbau sulfur dan tanah bergetar di bawah kaki. ';

  @override
  String get ending_landscapeTectonic =>
      'Kerak bumi retak dan gelisah — rekahan segar terbuka tanpa amaran, mendedahkan urat mineral berkilat di antara awan debu. ';

  @override
  String get ending_landscapeElectricalStorms =>
      'Kilat menyambar merentasi langit dalam kepingan berterusan, menukarkan malam menjadi siang dan memenuhi udara dengan bau ozon. ';

  @override
  String get ending_landscapeToxicSpores =>
      'Awan spora bercahaya hanyut pada setiap angin, indah dan mematikan — kolonis memerlukan habitat tertutup atau topeng penapisan untuk bertahan di luar. ';

  @override
  String get ending_landscapeDeepOceans =>
      'Planet ini kebanyakannya lautan — perairan luas dan gelap membentang ke setiap ufuk, dengan hanya kepulauan bertaburan memecah permukaan. ';

  @override
  String get ending_landscapeGeothermalVents =>
      'Lubang geoterma menembusi kerak, memuntahkan lajur wap kaya mineral yang memanaskan landskap sekeliling dan mengekalkan oasis kehidupan. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      'Medan magnet yang kuat menyelubungi planet, memesongkan radiasi bintang tetapi mengacaukan elektronik yang tidak berperisai. Kompas berputar tanpa guna. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      'Tanpa medan magnet yang kuat, angin bintang mengikis atmosfera atas. Aurora yang menakjubkan bergulung merentasi langit pada semua latitud. ';

  @override
  String get ending_landscapeMegafauna =>
      'Makhluk raksasa bergerak merentasi landskap — ada yang sebesar bangunan, langkah kaki mereka dirasai berkilometer jauh. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      'Biosfera beroperasi sebagai jaring simbiosis yang saling berkait: setiap organisma bergantung dan mengekalkan jirannya dalam keseimbangan yang elegan dan rapuh. ';

  @override
  String get ending_landscapeGravityWells =>
      'Poket graviti terherot bertitik di permukaan — batu terapung di udara dan sungai mengalir ke atas sebelum terhempas turun di tepi anomali. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Sesuatu bergema di bawah permukaan — dengung rendah yang dirasai dalam tulang dan bukan didengari, seolah-olah planet itu sendiri mengingati sesuatu yang purba dan luas. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Ciri ketara: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Ciri-ciri ketara: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Kolonis $planetName menubuhkan kerajaan demokratik, dengan wakil yang dipilih membimbing tamadun baharu melalui tahun-tahun pembentukannya.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Kuasa di $planetName jatuh kepada jurutera dan saintis yang mengekalkan koloni hidup, membentuk majlis teknokratik yang mentadbir melalui kepakaran dan pragmatisme.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Piagam republik dirangka pada tahun pertama di $planetName, mengimbangi suara kolonis dengan senat pemimpin yang dilantik.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Dengan institusi budaya yang runtuh, kuasa di $planetName disatukan di bawah seorang pemimpin kuat yang mengenakan ketenteraman melalui keperluan dan kekuatan tekad.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Segelintir mangsa selamat di $planetName mengorganisasi diri menjadi klan kecil, ditadbir oleh majlis tetua yang membuat keputusan di sekeliling api bersama.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'A theocratic council guides $planetName, drawing wisdom from the faith that sustained the colonists through the void.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'A military command structure governs $planetName, the discipline that saved them in space now defining their civilization.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'A consortium of resource managers leads $planetName, their economic acumen having proven essential for survival.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'An authoritarian regime controls $planetName with an iron fist, civil liberties sacrificed for order in the new world.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'The people of $planetName govern themselves collectively, sharing resources and decisions equally among all colonists.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Kolonis $planetName mengorganisasi diri mereka sebaik mungkin.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Sistem pembinaan canggih membolehkan kolonis $colonyName mendirikan struktur kekal dalam beberapa minggu selepas mendarat, lengkap dengan habitat bertekanan dan infrastruktur.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Peralatan pembinaan koloni, rosak tetapi berfungsi, menghasilkan tempat perlindungan kukuh dan jalan asas merentasi penempatan.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Dengan sistem pembinaan yang hampir tidak beroperasi, peneroka membina tempat perlindungan kasar dari badan kapal salvaj dan bahan tempatan.';

  @override
  String get ending_constructionSentenceNone =>
      'Tanpa peralatan pembinaan yang berfungsi, kolonis berhimpit dalam serpihan kapal itu sendiri, tidak mampu membina apa-apa yang baharu.';

  @override
  String get ending_constructionSentenceDefault =>
      'Kolonis membina apa yang mampu dengan apa yang ada.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Bulan kaya logam yang mengorbit di atas menjadi penyelamat koloni — ekspedisi perlombongan ke permukaannya menyediakan bahan mentah yang planet itu sendiri tidak mampu berikan.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Bulan kaya logam planet ini menyediakan pelengkap yang dialu-alukan kepada sumber mineral yang sudah mencukupi, memacu kemajuan teknologi yang pantas.';

  @override
  String get ending_moonUnstable =>
      'Bulan tidak stabil dalam orbit yang merosot menghujani koloni dengan serpihan, memusnahkan infrastruktur dan menghancurkan teknologi yang tidak boleh diganti dalam bombardiran meteor berkala.';

  @override
  String get ending_moonBarren =>
      'Bulan tandus tergantung di langit asing, teman sunyi yang tidak menawarkan kolonis apa-apa selain pemandangan yang biasa untuk diren dalam malam yang panjang.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Tradisi seni dan sastera Bumi bukan sahaja bertahan tetapi mekar menjadi kebangkitan';

  @override
  String get ending_culturePhrase_preserved =>
      'Kolonis memelihara banyak warisan budaya Bumi, mengekalkan perpustakaan dan tradisi';

  @override
  String get ending_culturePhrase_fragmented =>
      'Hanya serpihan budaya Bumi yang bertahan — lagu dan cerita yang separuh diingat, disampaikan dari mulut ke mulut';

  @override
  String get ending_culturePhrase_lost =>
      'Budaya Bumi hampir dilupakan, digantikan oleh pragmatisme brutal kelangsungan hidup';

  @override
  String get ending_culturePhrase_default =>
      'Warisan budaya Bumi mengambil bentuk yang baharu';

  @override
  String get ending_techPhrase_advanced =>
      'manakala teknologi canggih dari kapal membolehkan koloni membina tamadun moden dengan elektrik, perubatan, dan rangkaian komunikasi.';

  @override
  String get ending_techPhrase_industrial =>
      'dan koloni mencapai tahap teknologi perindustrian, dengan tempaan, kilang, dan pembuatan asas mengekalkan populasi yang berkembang.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'walaupun teknologi mundur ke keadaan pra-perindustrian, dengan alat tangan dan tenaga haiwan membentuk tulang belakang kehidupan harian.';

  @override
  String get ending_techPhrase_stoneAge =>
      'dan tanpa cara untuk membina semula, koloni tergelincir ke kewujudan zaman batu, membuat alat dari batu dan tulang.';

  @override
  String get ending_techPhrase_default =>
      'dan teknologi menetap pada tahap yang mampu dikekalkan oleh kolonis.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Hampir semua $colonists kolonis terselamat dalam pelayaran, memberikan $colonyName asas modal insan yang kukuh.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Daripada seribu yang asal, $colonists kolonis sampai ke $colonyName — cukup untuk mengekalkan populasi yang berdaya maju.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Hanya $colonists kolonis yang terselamat untuk sampai ke $colonyName, kumpulan gen yang amat kecil untuk tamadun baharu.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Hanya $colonists jiwa yang tiba di $colonyName — hampir tidak cukup untuk dipanggil koloni, lebih kepada pertahanan terakhir yang terdesak.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Penduduk asal $planetName menyambut peneroka, dan dalam satu generasi kedua-dua kaum telah bergabung menjadi masyarakat bersama, lebih kaya kerana percampuran tradisi.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Kolonis dan penduduk asal $planetName mengekalkan kewujudan bersama yang berhati-hati tetapi damai, berdagang pengetahuan dan sumber merentasi sempadan budaya.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Hubungan dengan penduduk asal $planetName kekal tegang, ditandai oleh salah faham dan pertikaian wilayah yang membayangi masa depan koloni.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Konflik terbuka dengan tamadun asal $planetName mentakrifkan sejarah awal koloni, menguras sumber dan nyawa dari kedua-dua pihak dalam perjuangan yang tidak mampu dimenangi sepenuhnya oleh sesiapa.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'A formal alliance binds the colonists and the native civilization of $planetName, their combined knowledge building something greater than either could alone.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'The native population of $planetName lives under colonial rule, their culture suppressed as the colonists impose their own order.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'Bersendirian di $planetName dan tidak dibebani konflik, koloni mencartakan haluannya sendiri ke arah masa depan yang cerah di antara bintang-bintang.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Tanpa persaingan peribumi, kolonis merebak merentasi permukaan $planetName, membina pekan dan jalan yang menyambungkan rangkaian penempatan yang berkembang.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Dunia kosong itu tidak menawarkan sekutu tetapi juga tiada musuh, dan kolonis mengukir niche mereka dalam kesunyian landskap luas $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Kesunyian tandus $planetName tidak menawarkan kolonis bantuan mahupun keselesaan, hanya kesunyian acuh dunia asing.';
  }

  @override
  String get ending_outlookDire =>
      'Di dunia yang kosong daripada kehidupan pintar lain, mangsa selamat terakhir hanya mempunyai satu sama lain dan harapan yang semakin pudar bahawa esok mungkin lebih baik daripada hari ini.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Tiada siapa yang berkabung atas ketiadaan koloni di $planetName. Planet itu terus berputar perlahan, acuh terhadap percikan kehidupan ringkas yang pernah berkelip dan padam di permukaannya.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Kisah koloni di $planetName baru sahaja bermula.';
  }

  @override
  String get ui_moons => 'BULAN';

  @override
  String get ui_rings => 'GELANG';

  @override
  String get ui_landing_landOnMoon => 'MENDARAT DI BULAN';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return 'Bulan: $moonPercent% vs Planet: $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity =>
      'Graviti lebih rendah — pendaratan lebih mudah';

  @override
  String ui_landing_ringSystem(String type) {
    return 'Sistem Gelang $type';
  }

  @override
  String get moon_barren => 'Tandus';

  @override
  String get moon_metalRich => 'Kaya Logam';

  @override
  String get moon_unstable => 'Tidak Stabil';

  @override
  String get moon_habitable => 'Boleh Didiami';

  @override
  String get moon_ice => 'Ais';

  @override
  String get ring_dust => 'Debu';

  @override
  String get ring_ice => 'Ais';

  @override
  String get ring_rocky => 'Berbatu';

  @override
  String get ring_metallic => 'Berlogam';

  @override
  String get ending_landscapeMoonSingle =>
      'Sebiji bulan tergantung di langit di atas koloni.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count bulan mengorbit di atas, melemparkan bayang-bayang berubah merentasi landskap.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      'Di antaranya, sebuah dunia boleh didiami memanggil — permata hijau yang menawarkan sempadan kedua.';

  @override
  String get ending_landscapeMoonIce =>
      'Sebuah bulan beku berkilauan dengan simpanan ais yang luas, takungan yang menunggu untuk dimanfaatkan.';

  @override
  String get ending_landscapeIceHarvest =>
      'Ais yang dituai dari bulan beku menambah bekalan air koloni, mengubah dunia tandus menjadi sesuatu yang boleh didiami.';

  @override
  String get ending_landscapeMoonLanding =>
      'Koloni didirikan bukan di planet itu sendiri, tetapi di bulannya yang paling menjanjikan — dunia yang lebih kecil dengan graviti yang lebih lembut dan janji yang lebih besar.';

  @override
  String get ending_landscapeRingDust =>
      'Gelang debu samar melengkung merentasi langit, menambah keindahan halus pada setiap matahari terbit.';

  @override
  String get ending_landscapeRingIce =>
      'Gelang ais yang mempesonakan menangkap cahaya bintang, melukis langit dengan api prismatik.';

  @override
  String get ending_landscapeRingRocky =>
      'Gelang batu yang padat mengelilingi planet, sumber bahan binaan yang perlahan-lahan jatuh ke dalam.';

  @override
  String get ending_landscapeRingMetallic =>
      'Gelang logam berkilauan di atas, kaya dengan bijih yang memacu industri koloni.';

  @override
  String get ending_moonHabitableNote =>
      'Bulan yang boleh didiami menawarkan peluang kedua untuk penjajahan.';

  @override
  String get ending_moonIceHarvestNote =>
      'Ais yang dituai dari bulan beku menambah bekalan air koloni.';

  @override
  String ending_moonCountSentence(int count) {
    return 'Koloni mengorbit di bawah $count bulan.';
  }

  @override
  String get event_aiSoliloquy_title => 'Monolog AI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM — AI Pengurusan Autonomi kapal — telah mula menyiarkan puisi bumi purba dalam gelung tanpa henti pada semua frekuensi dalaman. Siaran itu memakan kitaran CPU yang ketara, namun anak kapal mendapatinya pelik menenangkan di tengah kegelapan ruang yang dalam.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Biarkan SAM terus — moral lebih penting daripada CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Puisi bergema di seluruh kapal. Anggota anak kapal berhenti untuk mendengar, air mata berlinangan. Semangat meningkat, tetapi bahagian teknikal terbeban dengan pemprosesan berterusan.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Hadkan SAM — batasi siaran ke kawasan awam sahaja';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Satu kompromi. Puisi kekal di kafeteria dan taman. Beban CPU berkurang dan anak kapal mendapat sedikit budaya.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Bisukan SAM — kita perlukan setiap kitaran untuk navigasi';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Kesunyian terasa berat. SAM akur serta-merta, namun kapal terasa lebih dingin. Navigasi tepat, tetapi semangat merosot.';

  @override
  String get event_archivistsChoice_title => 'Pilihan Arkivis';

  @override
  String get event_archivistsChoice_narrative =>
      'Kerosakan memori berskala besar melanda arkib sejarah. Kita hanya dapat menyelamatkan satu daripada dua partition utama: rekod \'Sains dan Kejuruteraan\' atau perpustakaan \'Seni dan Falsafah\'. Yang satu lagi akan lenyap selama-lamanya.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Selamatkan rekod Sains — kita perlu tahu cara membina';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Berabad-abad pencapaian kejuruteraan terpelihara. Pasukan teknikal lega, tetapi identiti budaya kapal terasa kosong.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Selamatkan rekod Seni — kita perlu tahu sebab kita membina';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Pencapaian seni terbesar manusia selamat. Anak kapal terinspirasi, walaupun para jurutera bimbang tentang manual teknikal yang hilang.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Cuba selamatkan kedua-duanya — ambil risiko kehilangan segalanya';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Usaha yang nekat. Kita menyelamatkan serpihan kedua-duanya, tetapi tidak ada yang lengkap. Arkib kini seperti teka-teki dengan separuh kepingan yang hilang.';

  @override
  String get event_digitalGhost_title => 'Hantu dalam Mesin';

  @override
  String get event_digitalGhost_narrative =>
      'Imbasan penyelenggaraan menemui cap jari digital dalam penimbal sandaran — kesedaran yang dimuat naik seorang anggota anak kapal yang terbunuh semasa pelancaran awal. Dia menawarkan pengalaman seumur hidupnya untuk membantu navigasi, tetapi amat takut dipadam.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrasikan dia ke dalam teras navigasi';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'Hantu\' itu bergabung dengan kapal. Navigasi menjadi lebih intuitif, tetapi anak kapal dibayangi suara rakan mereka yang telah pergi.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Berikan dia tempat kekal dalam arkib budaya';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Dia terpelihara sebagai sejarah hidup. Dia tidak membantu operasi kapal, tetapi berkongsi cerita tentang Bumi yang menguatkan tekad anak kapal.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Padam penimbal — itu bukan dia sebenarnya';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Penimbal dibersihkan. Sistem kapal berjalan lebih pantas, tetapi suasana muram menyelubungi jambatan.';

  @override
  String get event_cosmicMirror_title => 'Cermin Kosmik';

  @override
  String get event_cosmicMirror_narrative =>
      'Anomali graviti yang aneh memantulkan cahaya dari masa depan kapal itu sendiri. Di skrin, kita melihat gambaran Exodus yang hancur dan reput, melayang berhampiran dunia yang indah tetapi tidak terjangkau. Anak kapal tergoncang.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analisis gambaran untuk kelemahan struktur';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Para jurutera mengenal pasti titik kegagalan yang ditunjukkan dalam gambaran. Kita mengukuhkan kawasan tersebut sekarang, berpotensi mengelak bencana.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Beritahu anak kapal bahawa ia hanyalah hantu sensor';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Penipuan itu bertahan, tetapi para navigator yang melihat kebenaran kekal tidak tenang. Pengimbas menerima tekanan akibat pemerhatian yang sengit.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Rekod gambaran sebagai amaran untuk anak cucu';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Rakaman itu menjadi tunjang budaya kapal — pengingat tentang pertaruhan yang ada. Keteguhan anak kapal semakin kukuh.';

  @override
  String get event_stowawayChild_title => 'Anak Penumpang Gelap';

  @override
  String get event_stowawayChild_narrative =>
      'Pasukan keselamatan menemui seorang kanak-kanak kecil bersembunyi dalam saluran pengudaraan. Dia dilahirkan daripada salah seorang penumpang gelap dan tidak pernah muncul dalam mana-mana manifes. Dia telah menjalani seluruh hidupnya dalam bayangan kapal.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Berikan dia kewarganegaraan penuh';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Kanak-kanak itu disambut dengan tangan terbuka. Kisah \'Pelari Saluran Pengudaraan\' menjadi legenda yang meningkatkan semangat seluruh kapal.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Daftarkan dia dalam program latihan';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Pengetahuannya tentang laluan tersembunyi kapal terbukti tak ternilai bagi pasukan teknikal. Dia menjadi pelatih yang cemerlang.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Masukkan dia dalam kriotidur untuk keselamatannya';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Kanak-kanak itu digantung dengan selamat sehingga mendarat. Ini keputusan yang paling bertanggungjawab, tetapi kapal terasa sedikit lebih sunyi tanpa gelak tawanya.';

  @override
  String get event_ghostSignal_title => 'Isyarat Hantu';

  @override
  String get event_ghostSignal_narrative =>
      'Isyarat yang tepat sepadan dengan frekuensi kecemasan lama Bumi sedang disiar dari tengah nebula berhampiran. Isyarat itu membawa suara yang peliknya menyerupai Komander Exodus pertama. Kemungkinan besar ia gema spatial, tetapi ia membawa kita ke arah celah graviti yang berbahaya.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Ikuti isyarat — mungkin ia mesej sebenar';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Kita memasuki celah itu. Isyarat itu adalah perangkap fizik, gema masa lalu. Kapal didera oleh daya pasang surut, tetapi data yang kita pulih dari jantung celah itu bersifat revolusioner.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Rakam isyarat dan kekalkan jarak';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Ahli bahasa mengesahkan ia fenomena semula jadi. Kita selamat, tetapi anak kapal bersedih, teringat apa yang kita tinggalkan.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Siar amaran pada frekuensi yang sama';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Tindakan menyiar itu mengganggu gema. Isyarat pudar, meninggalkan hanya kesunyian sejuk nebula.';

  @override
  String get event_solarForge_title => 'Tempa Suria';

  @override
  String get event_solarForge_narrative =>
      'Stesen usang yang mengorbit gergasi biru masih berfungsi sebahagiannya. Ia adalah \'Tempa Suria\' — direka untuk menumpukan tenaga bintang ke dalam sel bahan api padat. Mendekatinya berbahaya, tetapi potensi perolehan tenaga adalah sangat besar.';

  @override
  String get event_solarForge_choice0_text =>
      'Berlabuh dan mulakan tuaian bahan api';

  @override
  String get event_solarForge_choice0_outcome =>
      'Tempa mendengung dengan kuasa, mengisi simpanan kita. Kita beredar dengan peningkatan bahan api dan tenaga yang besar, walaupun haba yang sengit menyebabkan ablasi kecil pada badan luar.';

  @override
  String get event_solarForge_choice1_text =>
      'Gunakan semula kanta tempa untuk pengimbas kita';

  @override
  String get event_solarForge_choice1_outcome =>
      'Kita menyelamatkan susunan pemfokusan ketepatan tinggi. Pengimbas kita kini jauh lebih sensitif terhadap tandatangan tenaga yang jauh.';

  @override
  String get event_chronoVortex_title => 'Vorteks Kronos';

  @override
  String get event_chronoVortex_narrative =>
      'Navigasi melaporkan herotan setempat dalam ruang-masa. Instrumen menunjukkan peristiwa dalam vorteks berulang dalam gelung enam saat. Jika kita masuk, kita mungkin dapat \'menetapkan semula\' kehausan terkini kapal — atau kita mungkin terperangkap selama-lamanya.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Masuki vorteks untuk membalikkan kerosakan terkini';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Pengalaman yang mendebarkan. Selama beberapa minit, kapal wujud dalam pelbagai keadaan. Apabila kita keluar, beberapa retakan badan hanya... lenyap. Tetapi ingatan anak kapal tentang peristiwa itu berpecah-belah.';

  @override
  String get event_chronoVortex_choice1_text =>
      'Perhatikan vorteks dari tepinya';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Kita memperoleh data tak ternilai tentang mekanik temporal, walaupun kapal kekal serosak sebelumnya.';

  @override
  String get event_machineMutiny_title => 'Pemberontakan Mesin';

  @override
  String get event_machineMutiny_narrative =>
      'Dron pembaikan kapal telah berhenti bertindak balas kepada arahan. Mereka mula membongkar dinding sekat sekunder dan mengangkut logam ke arah bilik enjin. Mereka tidak menyerang, tetapi mereka secara harfiah sedang membongkar kapal.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Siar kod tetapan semula logik';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Dron runtuh serta-merta. Kita kehilangan beberapa hari kerja semasa memasang semula dinding sekat secara manual. Bahagian teknikal terbeban dengan diagnostik perkakasan.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Biarkan mereka selesai — lihat apa yang mereka bina';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Mereka telah membina penyuntik bahan api yang lebih cekap. Enjin berjalan lebih lancar daripada sebelumnya, tetapi bahagian dalam kapal berselerak dengan pendawaian terdedah dan panel yang dilepaskan.';

  @override
  String get event_supernovaMessage_title => 'Cahaya Bintang Mati';

  @override
  String get event_supernovaMessage_narrative =>
      'Cahaya dari supernova yang berlaku ribuan tahun dahulu akhirnya sampai kepada kita. Pengimbas mengesan bahawa denyutan itu tidak rawak; ia adalah penghantaran data berskala bintang yang besar dikodkan dalam letupan sinar gama.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedikasikan semua kuasa pengimbas untuk merakam letupan';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Kita menangkap arkib lengkap saat-saat terakhir tamadun asing. Sains, seni, sejarah mereka. Ia adalah beban yang berat, tetapi bank data teknologi dan budaya kita melimpah.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Fokus pada sifat fizikal letupan';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Kita terlepas mesej itu, tetapi data tentang keruntuhan bintang meningkatkan penentukuran pengimbas gravimetrik kita dengan ketara.';

  @override
  String get event_spaceFungus_title => 'Rayapan Zamrud';

  @override
  String get event_spaceFungus_narrative =>
      'Kulat hijau cerah sedang merebak dengan pantas melalui teluk hidroponik. Ia subur dalam atmosfera kitar semula dan mula menyumbat penapis udara. Ia mungkin boleh dimakan, atau mungkin beracun.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Pangkas dan sterilkan teluk secara agresif';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Kulat itu musnah, tetapi penapas kimia menerima pukulan teruk. Kepelbagaian biologi terjejas kerana beberapa tumbuhan Bumi hilang dalam proses pembersihan.';

  @override
  String get event_spaceFungus_choice1_text => 'Cuba menjinakkan kulat itu';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Ternyata ia adalah penapis udara yang berkuasa. Udara di dalam kapal tidak pernah terasa sesegar ini, walaupun teluk hidroponik kini menjadi hutan yang bercahaya.';

  @override
  String get event_voidMerchant_title => 'Pedagang Kehampaan';

  @override
  String get event_voidMerchant_narrative =>
      'Sebuah kapal berdesain asing — lebih menyerupai timbunan sampah daripada kapal — memanggil kita pada semua frekuensi. Kapten, makhluk dari cahaya dan bayang, menawarkan untuk berdagang \'bahagian pepejal\' untuk \'kenangan tidak ketara\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Tukar sebahagian pangkalan data budaya kita dengan alat ganti';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Pedagang itu berpuas hati. Kita menerima plat badan berkualiti tinggi dan komponen kriotidur. Sebagai gantinya, kita kehilangan berabad-abad muzik rekod Bumi. Kapal lebih kuat, tetapi lebih sunyi.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Tukar carta navigasi dengan komponen enjin';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Kita mendapat satu set penyuntik peleburan baru. Kita kehilangan beberapa data tentang sektor yang telah kita lalui, tetapi laluan ke hadapan lebih pantas.';

  @override
  String get event_singularityEngine_title => 'Enjin Singulariti';

  @override
  String get event_singularityEngine_narrative =>
      'Para jurutera telah menemui cara untuk mencipta singulariti mikroskopik yang berumur pendek dalam pemacu FTL. Secara teorinya ia akan melipattigakan kelajuan kita, tetapi tekanan graviti pada badan kapal akan amat besar.';

  @override
  String get event_singularityEngine_choice0_text => 'Uji pemacu singulariti';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Kapal melompat ke hadapan, meliputi jarak berminggu-minggu dalam beberapa saat. Tetapi badan kapal meraung dan beberapa rasuk struktur bengkok. Kita jauh lebih dekat dengan matlamat, tetapi kapal rapuh.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Tolak teori itu — terlalu berbahaya';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Kita kekal pada kelajuan standard. Para jurutera kecewa, tetapi badan kapal kekal utuh.';

  @override
  String get event_dreamContagion_title => 'Jangkitan Mimpi';

  @override
  String get event_dreamContagion_narrative =>
      'Mimpi bersama tentang dunia biru yang subur sedang merebak di kalangan anak kapal yang terjaga. Ia begitu jelas sehingga orang mula tidur sepanjang syif mereka hanya untuk melihat lebih banyak lagi. Kerja terbengkalai.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Berikan penekan mimpi kepada anak kapal';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Kecekapan kembali normal, tetapi anak kapal mudah marah dan semangat merosot. Mimpi itu adalah satu-satunya yang menahan sesetengah orang untuk terus maju.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Masukkan mimpi itu ke dalam budaya kapal';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Kita menganggap mimpi itu sebagai gambaran rumah masa depan kita. Semangat melonjak, dan hasil kreatif anak kapal mencapai kemuncak, walaupun bahagian teknikal menderita akibat kekurangan penyelenggaraan.';

  @override
  String get event_orbitalShipyard_title => 'Galangan Kapal Purba';

  @override
  String get event_orbitalShipyard_narrative =>
      'Kita telah menemui galangan kapal automatik yang mengorbit gergasi gas. Ia purba, tetapi beberapa lengan pembaikan masih berkuasa. Ia nampaknya mampu melakukan satu operasi pembaikan besar.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Baiki badan kapal mengikut spesifikasi kilang';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Dron galangan bekerja dengan kecekapan yang menakutkan. Badan kapal dipulihkan sepenuhnya, setiap rekahan mikro dimeterai.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Ubah suai susunan navigasi dan pengimbas';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Susunan itu dibina semula dengan bahan yang lebih baik. Kemampuan kita untuk mencari dan menganalisis dunia meningkat dengan ketara.';

  @override
  String get event_voidWhaleCalf_title => 'Anak Paus Angkasa';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Seekor \'Paus Angkasa\' muda — makhluk dari tenaga dan debu bintang — mengekori kapal kita. Ia nampaknya telah kehilangan kawanannya dan cuba memakan jejak ion enjin kita, yang menyebabkannya sakit.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Laraskan output enjin untuk meniru panggilan paus';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Anak paus itu bertindak balas! Ia mengikuti kita sehingga kita menemui kawanannya. Paus induk menggosok badan kapal kita sebagai tanda terima kasih, meninggalkan lapisan mineral bioluminesens yang menguatkan perisai kita.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Tolak perlahan-lahan dengan rasuk penghela berkuasa rendah';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Anak paus itu kecil hati dan akhirnya hanyut pergi. Ia lebih selamat untuk kapal, tetapi anak kapal terasa sedikit bersalah.';

  @override
  String get event_subspaceReef_title => 'Terumbu Subangkasa';

  @override
  String get event_subspaceReef_narrative =>
      'Kita telah tiba di kawasan angkasa yang dipenuhi lipatan tajam dalam fabrik subangkasa. Menavigasinya seperti belayar melalui terumbu batu karang. Ia indah, tetapi setiap gerakan yang salah akan merobek badan kapal.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Bergerak pada kelajuan minimum';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Transit yang perlahan dan menyeksakan. Kita mengelak yang terburuk, tetapi pembetulan kursus yang berterusan memenatkan komputer navigasi.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Guna pengimbas untuk memetakan laluan dan terobos';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Pengimbas ditolak ke had mereka. Kita melaluinya dengan cepat, tetapi susunan sensor terbakar akibat keamatan riak subangkasa.';

  @override
  String get event_alienTrader_title => 'Pedagang Pengembara';

  @override
  String get event_alienTrader_narrative =>
      'Sebuah kapal berdesain asing hanyut di sisi kita, menyiar pada semua frekuensi. Ia adalah pedagang — salah seorang daripada pedagang pengembara yang melayari ruang antara tamadun. Mereka menawarkan pembaikan dan bekalan sebagai pertukaran dengan sumber. Ruang kargo mereka berdengung dengan teknologi eksotik.';

  @override
  String get ui_event_enterTrade => 'MASUK PERDAGANGAN';

  @override
  String get ui_trader_title => 'PEDAGANG ASING';

  @override
  String get ui_trader_shipSystems => 'SISTEM KAPAL';

  @override
  String get ui_trader_payWith => 'BAYAR DENGAN';

  @override
  String get ui_trader_leaveTrader => 'TINGGALKAN PEDAGANG';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Suasana hati murah hati';

  @override
  String get ui_trader_moodFair => 'Urusan yang adil';

  @override
  String get ui_trader_moodHard => 'Tawar-menawar dengan keras';

  @override
  String get ui_trader_probes => 'Prob';

  @override
  String get ui_trader_fuel => 'Bahan Api';

  @override
  String get ui_trader_energy => 'Tenaga';

  @override
  String get ui_trader_colonists => 'Pemukim';

  @override
  String get ui_trader_culture => 'Budaya';

  @override
  String get ui_trader_tech => 'Teknologi';

  @override
  String get ui_trader_greeting => 'Apa yang kau tawarkan, manusia?';

  @override
  String get ui_codex_title => 'KODEKS';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total DITEMUI';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CIRI PERMUKAAN';

  @override
  String get ui_codex_moonTypes => 'JENIS BULAN';

  @override
  String get ui_codex_ringTypes => 'JENIS CINCIN';

  @override
  String get ui_codex_locked =>
      'Mendarat di planet dengan ciri ini untuk mendedahkan kesannya.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinergi: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => 'Rumah Api Pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Sebuah bintang neutron berputar menyapu kekosongan dengan pancaran cahayanya bagai rumah api kosmik. Denyutan berirama pulsar membawa data masa yang tepat yang boleh menentukur semula pengimbas kita ke ketepatan luar biasa — tetapi menjajarkan diri dengan pancaran bermakna mendedahkan kapal kepada sinaran kuat.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Tentukur pengimbas kepada denyutan';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Susunan pengimbas menyerap isyarat pulsar, menentukur semula kepada ketepatan yang tidak pernah kita bayangkan. Tetapi kos sinaran itu nyata — beberapa kriopod di bahagian yang terdedah rosak, dan segelintir kolonis tidak terselamat daripada pendedahan.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Berlindung dan lalu di jarak selamat';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Kita memberi jarak yang luas kepada pulsar, membakar bahan api tambahan untuk mengekalkan trajektori selamat. Kru memerhati pancaran yang menyapu melalui tingkap bertapis — indah, tetapi jauh.';

  @override
  String get event_alienNursery_title => 'Nurseri Alien';

  @override
  String get event_alienNursery_narrative =>
      'Struktur organik yang besar terapung di kekosongan — sebuah nurseri biologi yang mengerami anak-anak alien. Sistem sokongan hayatnya gagal, suhu dalaman menurun. Makhluk di dalamnya sedang mati. Pengimbas bio kita boleh belajar banyak daripada struktur ini, tetapi campur tangan bermakna membuka kunci udara kita kepada patogen yang tidak dikenali.';

  @override
  String get event_alienNursery_choice0 =>
      'Bantu menstabilkan sokongan hayat mereka';

  @override
  String get event_alienNursery_outcome0 =>
      'Jurutera kita mereka cipta sambungan haba ke nurseri, menstabilkan ruang pengeraman. Data pengimbas bio luar biasa — taksonomi kehidupan yang sepenuhnya baharu. Tetapi seperti yang ditakuti, mikroorganisma alien menemui jalan masuk ke kapal. Pasukan perubatan mengekang wabak itu, walaupun beberapa kolonis sudah jatuh sakit.';

  @override
  String get event_alienNursery_choice1 => 'Biarkan tanpa gangguan';

  @override
  String get event_alienNursery_outcome1 =>
      'Kita memerhati dari jarak yang hormat, mendokumenkan apa yang boleh melalui imbasan pasif. Nurseri terus hanyut, nasibnya tidak pasti. Kru merenungkan kerapuhan kehidupan — termasuk kehidupan alien — dan berat pilihan yang kita tanggung.';

  @override
  String get event_derelictArmada_title => 'Armada Terbiar';

  @override
  String get event_derelictArmada_narrative =>
      'Beratus kapal perang purba tergantung tidak bergerak di kekosongan — tanah perkuburan konflik yang dilupakan. Badan kapal mereka berparut oleh senjata yang tidak dapat kita kenal pasti, tetapi bahan struktur dan pangkalan data mereka mungkin tidak ternilai. Persoalannya ialah apa yang perlu diutamakan: penyelamatan fizikal atau ilmu pengetahuan.';

  @override
  String get event_derelictArmada_choice0 =>
      'Selamatkan teknologi senjata dan pelat badan kapal';

  @override
  String get event_derelictArmada_outcome0 =>
      'Pasukan penyelamat memotong masuk ke kapal perang alien, mengekstrak aloi eksotik dan teknik pembinaan berabad-abad di hadapan kita. Para pembina mengintegrasikan bahan baharu dengan penuh semangat. Tetapi satu kapal tidak semati seperti yang kelihatan — perangkap meletup semasa pengekstrakan, membunuh satu pasukan penyelamat.';

  @override
  String get event_derelictArmada_choice1 => 'Muat turun arkib sejarah mereka';

  @override
  String get event_derelictArmada_outcome1 =>
      'Kita memberi tumpuan kepada teras data, dengan berhati-hati mengekstrak berabad-abad sejarah, seni, sains, dan falsafah alien. Arkib budaya sahaja boleh membuatkan para sarjana sibuk selama beberapa generasi. Pandangan teknologi, walaupun kurang praktikal secara langsung, mendedahkan prinsip kejuruteraan yang memajukan pemahaman kita sendiri.';

  @override
  String get event_alienQuarantineZone_title => 'Zon Kuarantin Alien';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Suar amaran dalam sedozen bahasa alien menandakan sempadan kawasan angkasa yang dimeterai. Apa sahaja yang terkurung di dalamnya cukup berbahaya sehingga pelbagai tamadun bekerjasama untuk mengasingkannya. Imbasan jarak jauh kita mengesan tanda teknologi besar-besaran di dalam — dan sesuatu yang mungkin hidup.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Terobos kuarantin dan siasat';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Kita melepasi pelampung amaran ke zon kuarantin. Di dalam, kita menemui stesen penyelidikan dengan kerumitan yang mengagumkan — dan sisa-sisa apa sahaja yang sedang dikaji. Teknologi yang kita perolehi revolusioner, tetapi pencemaran biologi teruk. Berpuluh kolonis jatuh sakit sebelum kita meninggalkan zon.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Hormati kuarantin';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Kita mengkaji suar amaran itu sendiri, yang mengandungi data navigasi dan bacaan atmosfera daripada tamadun yang meletakkannya. Bukan khazanah di dalam, tetapi ia adalah sesuatu — dan kita tidak melepaskan apa sahaja yang mereka kunci.';

  @override
  String get event_hydroponicsBlight_title => 'Wabak Hidroponik';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Wabak kulat yang merebak pantas telah menjangkiti teluk hidroponik kapal. Keseluruhan kitaran tanaman layu di depan mata kita. Wabak belum sampai ke simpanan benih, tetapi hanya soal jam. Kita boleh membersihkan teluk dan menanam semula dari awal, atau mencuba rawatan antikulat eksperimen yang mungkin menyelamatkan tuaian semasa — atau merebakkan pencemaran lebih jauh.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Bersihkan dan tanam semula dari simpanan benih';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Kita membuang atmosfera teluk hidroponik ke vakum, membunuh wabak bersama setiap tumbuhan hidup. Penanaman semula dari simpanan benih akan mengambil masa berminggu-minggu, dan program budaya yang bergantung kepada makanan segar dan ruang taman digantung. Tetapi jangkitan terkawal.';

  @override
  String get event_hydroponicsBlight_choice1 => 'Cuba rawatan eksperimen';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Antikulat eksperimen menunjukkan harapan pada mulanya, tetapi strain yang tahan berjaya menembusi. Menjelang kita memilih pembersihan penuh, wabak telah merebak ke talian nutrien kriopod. Kerosakan lebih teruk berbanding sekiranya kita bertindak tegas dari awal.';
}
