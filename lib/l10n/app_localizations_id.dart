// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Stellar Broadcast';

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'MULAI PELAYARAN';

  @override
  String get ui_title_dailyVoyage => 'PELAYARAN HARIAN';

  @override
  String get ui_title_dailyCompleted => 'HARIAN SELESAI';

  @override
  String get ui_title_customSeed => 'SEED KUSTOM';

  @override
  String get ui_title_legacyHub => 'HUB WARISAN';

  @override
  String get ui_title_cancel => 'BATAL';

  @override
  String get ui_title_startVoyage => 'MULAI PELAYARAN';

  @override
  String ui_voyage_sector(int count) {
    return 'SEK $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'SEED: $code';
  }

  @override
  String get ui_voyage_scanners => 'PEMINDAI';

  @override
  String get ui_voyage_scanPlanet => 'PINDAI PLANET';

  @override
  String get ui_voyage_noEnergy => 'TANPA ENERGI';

  @override
  String get ui_voyage_pressOn => 'LANJUTKAN';

  @override
  String get ui_voyage_systemHull => 'Lambung';

  @override
  String get ui_voyage_systemNav => 'Nav';

  @override
  String get ui_voyage_systemCryopods => 'Kriopod';

  @override
  String get ui_voyage_systemCulture => 'Budaya';

  @override
  String get ui_voyage_systemTech => 'Tek';

  @override
  String get ui_voyage_systemConstruct => 'Konstruksi';

  @override
  String get ui_voyage_systemShields => 'Perisai';

  @override
  String get ui_voyage_systemLanding => 'Pendaratan';

  @override
  String get ui_voyage_scannerAtmo => 'Pindai Atmo';

  @override
  String get ui_voyage_scannerGrav => 'Pindai Grav';

  @override
  String get ui_voyage_scannerMineral => 'Pindai Mineral';

  @override
  String get ui_voyage_scannerLife => 'Pindai Kehidupan';

  @override
  String get ui_voyage_scannerTemp => 'Pindai Suhu';

  @override
  String get ui_voyage_scannerWater => 'Pindai Air';

  @override
  String get ui_voyage_narrative0 =>
      'Orbit Bumi bersih. Kriopod stabil. Cincin arsip aman.';

  @override
  String get ui_voyage_narrative1 =>
      'Transit sistem luar nominal. Pemindai jarak jauh memperluas pencarian.';

  @override
  String get ui_voyage_narrative2 =>
      'Lalu lintas dari Bumi telah memudar di bawah ambang deteksi.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Koordinat arsip cocok dengan sistem yang ditandai. Menyesuaikan jalur.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Rangkaian pemindai masih mengkalibrasi untuk resolusi antariksa dalam.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Sistem bertanda di depan. Data survei sebelumnya tetap konsisten.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Sinyal samar di depan. Memulai sapuan planet.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Keluar FTL selesai. Sistem bintang baru terlihat.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Bank kriopod stabil. Pemindaian sektor berlangsung.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Planet baru terbentuk di susunan depan.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Kartografi bintang menandai kandidat yang layak.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instrumen telah menemukan dunia lain yang layak diukur.';

  @override
  String get ui_voyage_narrativePhrase6 =>
      'Kunci pemindai diperoleh pada target baru.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Peta navigasi diperbarui. Dunia kandidat dalam jangkauan.';

  @override
  String get ui_scan_landHere => 'MENDARAT DI SINI';

  @override
  String get ui_scan_pressOn => 'LANJUTKAN';

  @override
  String get ui_scan_allStatsVerified => 'SEMUA STATISTIK TERVERIFIKASI';

  @override
  String get ui_scan_launchProbe => 'LUNCURKAN PROBE';

  @override
  String get ui_scan_habitability => 'KELAYAKHUNIAN';

  @override
  String get ui_scan_statAtmos => 'ATMOS';

  @override
  String get ui_scan_statTemp => 'SUHU';

  @override
  String get ui_scan_statWater => 'AIR';

  @override
  String get ui_scan_statResource => 'SUMBER DAYA';

  @override
  String get ui_scan_statGravity => 'GRAVITASI';

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
    return 'BAHAN BAKAR: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'PERINGATAN BAHAN BAKAR RENDAH';

  @override
  String get ui_landing_landingRiskCritical => 'RISIKO PENDARATAN: KRITIS';

  @override
  String get ui_landing_landingRiskElevated => 'RISIKO PENDARATAN: TINGGI';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Sistem pendaratan rusak parah. Masuk atmosfer dapat menghancurkan kargo dan kolonis.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Sistem pendaratan terdegradasi. Perkirakan masuk atmosfer yang kasar dengan kemungkinan kerusakan sistem.';

  @override
  String get ui_landing_riskAssessment => 'PENILAIAN RISIKO';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Kapal Anda dapat bertahan ~$remaining pertemuan lagi';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Kapal Anda mungkin tidak bertahan untuk pelayaran berikutnya';

  @override
  String get ui_landing_surfaceFeatures => 'FITUR PERMUKAAN';

  @override
  String get ui_landing_nameYourColony => 'BERI NAMA KOLONI ANDA';

  @override
  String get ui_landing_establishColony => 'DIRIKAN KOLONI';

  @override
  String get ui_landing_pressOnward => 'TERUS MAJU';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfer';

  @override
  String get ui_landing_statTemperature => 'Suhu';

  @override
  String get ui_landing_statWater => 'Air';

  @override
  String get ui_landing_statResources => 'Sumber Daya';

  @override
  String get ui_landing_statGravity => 'Gravitasi';

  @override
  String get ui_landing_statBiodiversity => 'Keanekaragaman Hayati';

  @override
  String get ui_landing_statAvgHealth => 'Rata-rata Kesehatan';

  @override
  String get ui_landing_statHull => 'Lambung';

  @override
  String get ui_landing_statNavigation => 'Navigasi';

  @override
  String get ui_landing_statCryopods => 'Kriopod';

  @override
  String get ui_landing_statCulture => 'Budaya';

  @override
  String get ui_landing_statTech => 'Tek';

  @override
  String get ui_landing_statConstructors => 'Konstruktor';

  @override
  String get ui_landing_statShields => 'Perisai';

  @override
  String get ui_landing_statLandingSys => 'Sist. Pendaratan';

  @override
  String get ui_landingSequence_phase1 => 'FASE 1: KOMIT ORBITAL';

  @override
  String get ui_landingSequence_phase1Desc =>
      'Jendela penurunan terbuka. Berkomitmen untuk masuk.';

  @override
  String get ui_landingSequence_phase2 => 'FASE 2: API ATMOSFER';

  @override
  String get ui_landingSequence_title => 'SEKUENS PENDARATAN';

  @override
  String get ui_landingSequence_viewColonyReport => 'LIHAT LAPORAN KOLONI';

  @override
  String get ui_ending_colonyEstablished => 'KOLONI DIDIRIKAN';

  @override
  String get ui_ending_colonyScore => 'SKOR KOLONI';

  @override
  String get ui_ending_colonyProfile => 'PROFIL KOLONI';

  @override
  String get ui_ending_landscape => 'LANSKAP';

  @override
  String get ui_ending_voyageRecord => 'CATATAN PELAYARAN';

  @override
  String get ui_ending_scoreBreakdown => 'RINCIAN SKOR';

  @override
  String get ui_ending_total => 'TOTAL';

  @override
  String get ui_ending_achievementsUnlocked => 'PENCAPAIAN TERBUKA';

  @override
  String get ui_ending_challengeFriend => 'TANTANG TEMAN';

  @override
  String get ui_ending_copySeed => 'SALIN SEED';

  @override
  String get ui_ending_viewLegacy => 'LIHAT WARISAN';

  @override
  String get ui_ending_newVoyage => 'PELAYARAN BARU';

  @override
  String get ui_ending_achievementFirstLanding => 'Pendaratan Pertama';

  @override
  String get ui_ending_achievementGoldenAge => 'Zaman Keemasan';

  @override
  String get ui_ending_achievementSurvivor => 'Penyintas';

  @override
  String get ui_ending_achievementExplorer => 'Penjelajah';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfeksionis';

  @override
  String get ui_ending_achievementDeathWorldSurvivor => 'Penyintas Dunia Maut';

  @override
  String get ui_ending_achievementFullCrew => 'Kru Lengkap';

  @override
  String get ui_ending_achievementProbeMaster => 'Ahli Probe';

  @override
  String get ui_ending_achievementIronHull => 'Lambung Besi';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Lompatan Keyakinan';

  @override
  String get ui_gameOver_missionFailed => 'MISI GAGAL';

  @override
  String get ui_gameOver_voyageRecord => 'CATATAN PELAYARAN';

  @override
  String get ui_gameOver_encountersSurvived => 'PERTEMUAN YANG DILEWATI';

  @override
  String get ui_gameOver_probesRemaining => 'PROBE TERSISA';

  @override
  String get ui_gameOver_colonistsRemaining => 'KOLONIS TERSISA';

  @override
  String get ui_gameOver_finalShipHealth => 'KESEHATAN KAPAL AKHIR';

  @override
  String get ui_gameOver_planetsSkipped => 'PLANET DILEWATI';

  @override
  String get ui_gameOver_damageTaken => 'KERUSAKAN DITERIMA';

  @override
  String get ui_gameOver_fuelRemaining => 'BAHAN BAKAR TERSISA';

  @override
  String get ui_gameOver_energyRemaining => 'ENERGI TERSISA';

  @override
  String get ui_gameOver_challengeFriend => 'TANTANG TEMAN';

  @override
  String get ui_gameOver_viewLegacy => 'LIHAT WARISAN';

  @override
  String get ui_gameOver_newVoyage => 'PELAYARAN BARU';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nAku tidak selamat... $reason.\nMenurutmu kau bisa lebih baik di pelayaran yang sama?\nstellarbroadcast://play?seed=$seedCode\n\nBelum punya aplikasinya?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Kolonis terakhir meninggal dalam tidur kriogenik — kegagalan berantai yang tak bisa dicegah protokol darurat mana pun. Exodus berlayar terus, kapal hantu yang hanya membawa sistem otomatis dan keheningan beku. Misinya gagal bukan dalam sebuah momen bencana, tapi dalam pengikisan perlahan nyawa manusia, satu per satu, hingga tak ada yang tersisa.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Lambung kapal menyerah dalam keheningan — kelelahan logam yang terakumulasi dari dampak mikro tak terhitung hingga kapal tak mampu lagi bertahan. Atmosfer mengalir ke kehampaan. Kapal koloni Exodus hancur berkeping-keping, puing-puingnya bergabung dengan ladang serpihan purba di antara bintang-bintang. Tak ada sinyal bahaya yang pernah diterima.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Tanpa navigasi, Exodus hanyut ke antariksa tak terpetakan — peta bintang tak berguna, koreksi jalur mustahil. Kapal berlayar terus menembus kegelapan, penumpang tidurnya tak sadar bahwa tujuan mereka telah digantikan oleh keabadian. Ada yang berkata kapal itu masih mengambang, wahana hantu di malam tanpa akhir.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Satu demi satu, kriopod gagal — kegagalan berantai yang tak bisa dihentikan protokol darurat mana pun. Kolonis-kolonis tak pernah terbangun. Exodus melanjutkan jalur terprogramnya, kapal makam yang hanya membawa keheningan menuju dunia mana pun yang akhirnya akan dicapainya. Sebuah monumen bagi mimpi yang mati dalam tidur beku.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Exodus terdiam. Misinya, krunya, muatan harapan manusia — semuanya hilang dalam ketidakpedulian keluasan di antara bintang-bintang. Mungkin suatu hari peradaban lain akan menemukan puing-puingnya dan bertanya-tanya spesies pemberani apa yang berani menyeberangi kehampaan.';

  @override
  String get ui_settings_title => 'PENGATURAN';

  @override
  String get ui_settings_music => 'MUSIK';

  @override
  String get ui_settings_soundEffects => 'EFEK SUARA';

  @override
  String get ui_settings_haptics => 'HAPTIK';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Jadi Premium';

  @override
  String get ui_settings_enabled => 'Aktif';

  @override
  String get ui_settings_volume => 'Volume';

  @override
  String get ui_settings_language => 'Bahasa';

  @override
  String get ui_settings_systemDefault => 'Default sistem';

  @override
  String get ui_legacy_title => 'HUB WARISAN';

  @override
  String get ui_legacy_commanderStats => 'STATISTIK KOMANDAN';

  @override
  String get ui_legacy_highScores => 'SKOR TERTINGGI';

  @override
  String get ui_legacy_upgrades => 'PENINGKATAN';

  @override
  String get ui_legacy_achievements => 'PENCAPAIAN';

  @override
  String get ui_legacy_voyageLog => 'LOG PELAYARAN';

  @override
  String get ui_legacy_voyages => 'PELAYARAN';

  @override
  String get ui_legacy_bestScore => 'SKOR TERBAIK';

  @override
  String get ui_legacy_legacyPts => 'POIN WARISAN';

  @override
  String get ui_legacy_completed => 'SELESAI';

  @override
  String get ui_legacy_notYetPlayed => 'BELUM DIMAINKAN';

  @override
  String get ui_legacy_dailyHistory => 'RIWAYAT HARIAN';

  @override
  String get ui_premium_goPremium => 'JADI PREMIUM';

  @override
  String get ui_premium_subtitle => 'Dukung misi ini. Tingkatkan komandomu.';

  @override
  String get ui_premium_removeAds => 'Hapus semua iklan selamanya';

  @override
  String get ui_premium_supportIndie => 'Dukung pengembangan indie';

  @override
  String get ui_premium_exclusiveTitle => 'Gelar komandan eksklusif';

  @override
  String get ui_premium_priorityFeatures => 'Permintaan fitur prioritas';

  @override
  String get ui_premium_lifetime => 'Seumur Hidup';

  @override
  String get ui_scannerUpgrade_title => 'PENINGKATAN PEMINDAI';

  @override
  String get ui_scannerUpgrade_subtitle => 'Pilih pemindai untuk ditingkatkan';

  @override
  String get ui_scannerUpgrade_skip => 'LEWATI';

  @override
  String get ui_scannerUpgrade_max => 'MAKS';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosfer';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Gravimetrik';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineral';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Tanda Kehidupan';

  @override
  String get ui_scannerUpgrade_temperature => 'Suhu';

  @override
  String get ui_scannerUpgrade_water => 'Air';

  @override
  String get ui_event_continue => 'LANJUTKAN';

  @override
  String get ui_event_tapToSkip => 'KETUK UNTUK LEWATI';

  @override
  String get ui_event_colonists => 'KOLONIS';

  @override
  String get ui_event_landing => 'PENDARATAN';

  @override
  String get ui_event_atmScan => 'PINDAI ATM';

  @override
  String get ui_event_gravScan => 'PINDAI GRAV';

  @override
  String get ui_event_minScan => 'PINDAI MIN';

  @override
  String get ui_event_lifeScan => 'PINDAI HIDUP';

  @override
  String get ui_event_tempScan => 'PINDAI SUHU';

  @override
  String get ui_event_h2oScan => 'PINDAI H2O';

  @override
  String get onboarding_page0_title => 'Harapan Terakhir Umat Manusia';

  @override
  String get onboarding_page0_description =>
      'Bumi sedang sekarat. Pemerintah-pemerintah dunia telah mengumpulkan cadangan terakhir mereka untuk membangun satu wahana terakhir — kapal koloni yang membawa sisa-sisa umat manusia ke bintang-bintang.';

  @override
  String get onboarding_page1_title => 'Cari Rumah Baru';

  @override
  String get onboarding_page1_description =>
      'Arungi kehampaan tak terpetakan di antara bintang-bintang. Pindai dunia-dunia asing, hadapi bahaya kosmis, dan buat pilihan-pilihan yang mustahil.';

  @override
  String get onboarding_page2_title => 'Warisanmu Abadi';

  @override
  String get onboarding_page2_description =>
      'Setiap pelayaran mengajarkan sesuatu yang baru bagi umat manusia. Raih Poin Warisan untuk membuka peningkatan permanen, dan ukirkan namamu di antara bintang-bintang.';

  @override
  String get onboarding_page3_title => 'Privasimu, Pilihanmu';

  @override
  String get onboarding_page3_description =>
      'Pilih bagaimana kau ingin menikmati Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Surga';

  @override
  String get planet_tierHabitable => 'Layak Huni';

  @override
  String get planet_tierHarsh => 'Keras';

  @override
  String get planet_tierHostile => 'Ganas';

  @override
  String get planet_tierDeathWorld => 'Dunia Maut';

  @override
  String get planet_featurePlantLife => 'Kehidupan Tumbuhan';

  @override
  String get planet_featureEdiblePlants => 'Tumbuhan yang Dapat Dimakan';

  @override
  String get planet_featurePoisonousPlants => 'Tumbuhan Beracun';

  @override
  String get planet_featureUnicellularLife => 'Kehidupan Uniseluler';

  @override
  String get planet_featureDangerousFauna => 'Fauna Berbahaya';

  @override
  String get planet_featureTameableFauna => 'Fauna yang Dapat Dijinakkan';

  @override
  String get planet_featureAirtightCaves => 'Gua Kedap Udara';

  @override
  String get planet_featureInsulatedCaves => 'Gua Terisolasi';

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
  String get planet_featureAncientRuins => 'Reruntuhan Purba';

  @override
  String get planet_featureMonuments => 'Monumen';

  @override
  String get planet_featureRapidRotation => 'Rotasi Cepat';

  @override
  String get planet_featureSlowRotation => 'Rotasi Lambat';

  @override
  String get planet_featureVolcanicActivity => 'Aktivitas Vulkanik';

  @override
  String get planet_featureTectonicInstability => 'Ketidakstabilan Tektonik';

  @override
  String get planet_featureElectricalStorms => 'Badai Listrik';

  @override
  String get planet_featureToxicSpores => 'Spora Beracun';

  @override
  String get planet_featureDeepOceans => 'Samudra Dalam';

  @override
  String get planet_featureGeothermalVents => 'Ventilasi Geotermal';

  @override
  String get planet_featureStrongMagnetosphere => 'Magnetosfer Kuat';

  @override
  String get planet_featureWeakMagnetosphere => 'Magnetosfer Lemah';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organisme Simbiotik';

  @override
  String get planet_featureGravityWells => 'Sumur Gravitasi';

  @override
  String get planet_featureSubspaceEchoes => 'Gema Subruang';

  @override
  String get planet_featureBioluminescentLife => 'Kehidupan Bioluminesensi';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna Akuatik';

  @override
  String get planet_featureFloatingIslands => 'Pulau Melayang';

  @override
  String get planet_featureCrystalCaverns => 'Gua Kristal';

  @override
  String get planet_featureLavaTubes => 'Tabung Lava';

  @override
  String get planet_featureIceTunnels => 'Terowongan Es';

  @override
  String get planet_featureOrbitalWreckage => 'Puing Orbit';

  @override
  String get planet_featureMegastructuralFragments => 'Fragmen Megastruktur';

  @override
  String get planet_featureAncientObservatory => 'Observatorium Kuno';

  @override
  String get planet_featureExtremeSeasons => 'Musim Ekstrem';

  @override
  String get planet_featureCryovolcanism => 'Kriovulkanisme';

  @override
  String get planet_featureFloatingKelpForests => 'Hutan Rumput Laut Melayang';

  @override
  String get planet_featureSingingCrystals => 'Kristal Bernyanyi';

  @override
  String get planet_featureFertileSoil => 'Tanah Subur';

  @override
  String get planet_featureHelium3Deposits => 'Endapan Helium-3';

  @override
  String get planet_featureExoticIsotopes => 'Isotop Eksotik';

  @override
  String get planet_featureMedicinalFlora => 'Flora Obat-obatan';

  @override
  String get ui_monthJan => 'JAN';

  @override
  String get ui_monthFeb => 'FEB';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'APR';

  @override
  String get ui_monthMay => 'MEI';

  @override
  String get ui_monthJun => 'JUN';

  @override
  String get ui_monthJul => 'JUL';

  @override
  String get ui_monthAug => 'AGU';

  @override
  String get ui_monthSep => 'SEP';

  @override
  String get ui_monthOct => 'OKT';

  @override
  String get ui_monthNov => 'NOV';

  @override
  String get ui_monthDec => 'DES';

  @override
  String get event_asteroidField_title => 'Ladang Asteroid';

  @override
  String get event_asteroidField_narrative =>
      'Pemindai jarak jauh mendeteksi ladang asteroid padat tepat di jalur penerbangan kita. Navigasi menghitung dua opsi: terobosan berisiko melalui koridor tertipis, atau jalan memutar panjang yang akan menguras cadangan bahan bakar dan membebani sistem navigasi.';

  @override
  String get event_asteroidField_choice0_text => 'Terobos koridor';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Kapal berguncang saat dampak mikro menghantam lambung. Kita berhasil melewatinya, tapi tidak tanpa luka.';

  @override
  String get event_asteroidField_choice1_text => 'Ambil jalan memutar';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Jalan memutar membakar bahan bakar berharga dan melelahkan komputer navigasi, tapi lambung tetap utuh.';

  @override
  String get event_asteroidField_choice2_text =>
      'Gunakan drone penambang untuk membuka jalan';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Drone-drone mengukir jalur aman dan mengumpulkan mineral berguna, tapi operasi tersebut menguras bay teknologi.';

  @override
  String get event_asteroidField_choice3_text => 'Kerahkan probe sebagai umpan';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Probe menarik kluster terpadat menjauh dari kapal. Kita lolos dengan hanya goresan kecil.';

  @override
  String get event_solarFlare_title => 'Jilatan Matahari Datang';

  @override
  String get event_solarFlare_narrative =>
      'Sebuah bintang terdekat meletus dengan ejeksi koronal masif. Gelombang partikel bermuatan akan mencapai kita dalam hitungan menit. Kita bisa mengalihkan daya ke perisai, melindungi kolonis di inti, atau bertahan.';

  @override
  String get event_solarFlare_choice0_text => 'Alihkan semua daya ke perisai';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Perisai bertahan, tapi lonjakan daya merusak sistem sekunder.';

  @override
  String get event_solarFlare_choice1_text =>
      'Pindahkan kolonis ke inti terlindung';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Kolonis selamat tanpa cedera, tapi dek luar menerima kerusakan radiasi.';

  @override
  String get event_solarFlare_choice2_text => 'Bertahan — semua bersiap';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Jilatan menghantam keras. Sistem berkedip, tapi tidak ada yang bencana. Moral, bagaimanapun, terpukul.';

  @override
  String get event_solarFlare_choice3_text =>
      'Luncurkan probe untuk mengukur muka gelombang';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Probe mentransmisikan data muka gelombang yang tepat, memungkinkan kita memosisikan kapal secara optimal. Kerusakan pemindai minimal.';

  @override
  String get event_nebulaPassage_title => 'Lintasan Nebula';

  @override
  String get event_nebulaPassage_narrative =>
      'Nebula bercahaya membentang melintasi jalur kita. Melewatinya bisa mengisi ulang sel energi tapi mungkin mengganggu rangkaian pemindai. Mengelilinginya aman tapi lambat.';

  @override
  String get event_nebulaPassage_choice0_text => 'Terbang menembus nebula';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Gas terionisasi nebula mengisi ulang sel daya tapi mengacaukan kalibrasi pemindai.';

  @override
  String get event_nebulaPassage_choice1_text => 'Menyusuri tepinya';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Kita mendapat pengisian parsial dengan gangguan minimal. Kompromi yang aman.';

  @override
  String get event_microMeteorite_title => 'Badai Mikro-Meteorit';

  @override
  String get event_microMeteorite_narrative =>
      'Sekumpulan mikro-meteorit, tak terlihat hingga beberapa detik lalu, merobek plat lambung depan. Tim kendali kerusakan bergegas.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Rotasi darurat — arahkan buritan berlapis baja';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Manuver berhasil. Baju besi buritan menyerap yang terburuk, tapi gyro navigasi memprotes dengan keras.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Kerahkan drone perbaikan di tengah badai';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drone-drone menambal lambung secara real time tapi beberapa hilang. Cadangan teknologi terkuras.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Ledakkan probe untuk mencerai-beraikan kawanan';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Ledakan probe menyebarkan kluster mikro-meteorit. Hanya sedikit fragmen yang mencapai lambung.';

  @override
  String get event_gravityWell_title => 'Sumur Gravitasi Tak Terpetakan';

  @override
  String get event_gravityWell_narrative =>
      'Kapal tersentak saat sumur gravitasi tak terlihat menarik kita keluar jalur. Mesin berjuang melawan tarikannya. Kita bisa membakar penuh untuk melepaskan diri, atau memanfaatkan efek ketapel dengan biaya tekanan struktural.';

  @override
  String get event_gravityWell_choice0_text => 'Bakar penuh — bebaskan diri';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Mesin meraung dan lambung berderak, tapi kita berhasil melepaskan diri dengan bersih.';

  @override
  String get event_gravityWell_choice1_text => 'Manuver ketapel';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Ketapel bekerja dengan indah. Kita mendapat kecepatan, tapi gaya-G memberi tekanan pada segel kriopod.';

  @override
  String get event_crewUnrest_title => 'Keresahan Kru';

  @override
  String get event_crewUnrest_narrative =>
      'Sebuah faksi kolonis yang terbangun mengajukan petisi kepada Dewan Steward untuk dibebaskan dari kriotidur secara permanen. Mereka berargumen bahwa hidup dalam senja beku itu tidak manusiawi. Staf Ward Krio memperingatkan bahwa membangunkan lebih banyak mulut berarti membakar persediaan lebih cepat.';

  @override
  String get event_crewUnrest_choice0_text => 'Izinkan pencairan sukarela';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Moral melonjak saat keluarga-keluarga bersatu kembali di dunia terjaga, tapi konsumsi sumber daya melonjak.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Tolak permintaan — keselamatan di atas segalanya';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Kolonis mematuhi, tapi kebencian membara di koridor-koridor.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Kompromi — siklus pencairan bergilir';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Solusi seimbang. Semua mendapat waktu terjaga, tapi siklus kriopod menambah keausan.';

  @override
  String get event_stowaway_title => 'Penumpang Gelap Ditemukan';

  @override
  String get event_stowaway_narrative =>
      'Auditor Kantor Manifes menemukan orang tak terdaftar bersembunyi di bay kargo 7. Dia mengaku seorang ahli genetika yang ditolak dari daftar peluncuran. Keahliannya bisa sangat berharga — atau dia bisa jadi saboteur.';

  @override
  String get event_stowaway_choice0_text =>
      'Sambut dia — kita butuh setiap pikiran';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr. Vasquez terbukti brilian. Keahlian genetikanya meningkatkan efisiensi kriopod, meski sebagian kru tidak mempercayainya.';

  @override
  String get event_stowaway_choice1_text =>
      'Kurung dia — kepercayaan harus diperoleh';

  @override
  String get event_stowaway_choice1_outcome =>
      'Dia bekerja sama dari kurungan dan akhirnya mendapat akses terbatas. Kru merasa lebih aman.';

  @override
  String get event_stowaway_choice2_text =>
      'Kembalikan ke krio sampai pendaratan';

  @override
  String get event_stowaway_choice2_outcome =>
      'Solusi pragmatis. Keahliannya diawetkan untuk nanti, tapi debat etis memecah belah kru.';

  @override
  String get event_mutinyBrewing_title => 'Pemberontakan Mengancam';

  @override
  String get event_mutinyBrewing_narrative =>
      'Bridge Watch menyadap pesan dari sekelompok perwira yang merencanakan merebut komando dan mengubah jalur ke sistem yang lebih dekat tapi kurang layak huni. Mereka percaya haluan saat ini adalah hukuman mati.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Hadapi mereka secara terbuka — transparansi di atas segalanya';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Konfrontasi itu tegang tapi para pemberontak menyerah ketika ditunjukkan data navigasi. Kepercayaan terguncang.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Diam-diam pindahkan para pemimpin pemberontakan';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Komplotan bubar tanpa drama publik. Beberapa kru bertanya-tanya mengapa perwira populer dipindahkan, tapi ketertiban tetap terjaga.';

  @override
  String get event_culturalSchism_title => 'Perpecahan Budaya';

  @override
  String get event_culturalSchism_narrative =>
      'Dua kelompok budaya di kapal berselisih dengan keras tentang bagaimana koloni baru harus diperintah. Yang satu menuntut demokrasi langsung; yang lain bersikeras pada dewan teknokratik. Ketegangan memuncak.';

  @override
  String get event_culturalSchism_choice0_text => 'Adakan referendum mengikat';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Demokrasi menang — dengan tipis. Pihak yang kalah dengan enggan menerima hasilnya, tapi persatuan rapuh.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Terapkan sistem hibrida — tidak memuaskan siapa pun sepenuhnya';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Kedua pihak merasa didengar tapi tidak menang. Perdamaian genting bertahan.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Tunda keputusan — fokus bertahan hidup sekarang';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Menunda masalah menghindari konflik hari ini tapi menyimpannya untuk esok.';

  @override
  String get event_birthInSpace_title => 'Kelahiran Pertama di Antariksa Dalam';

  @override
  String get event_birthInSpace_narrative =>
      'Melawan semua protokol, seorang anak lahir di kapal — manusia pertama yang lahir di antara bintang-bintang. Peristiwa itu adalah simbol kuat, tapi menimbulkan pertanyaan tentang alokasi sumber daya dan etika membawa kehidupan baru ke masa depan yang tak pasti.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Rayakan — inilah wujud harapan';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Upacara penamaan mengangkat setiap hati di kapal. Untuk satu malam, bintang-bintang terasa kurang dingin. Perayaan sempat mengganggu rotasi pemantauan kriopod.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Akui dengan tenang — sumber daya terbatas';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Respons yang terukur. Sang anak disambut, tapi suasana diredam oleh pragmatisme.';

  @override
  String get event_derelictShip_title => 'Kapal Koloni Terbengkalai';

  @override
  String get event_derelictShip_narrative =>
      'Pemindai mendeteksi wahana terbengkalai mengambang di kehampaan — kapal koloni lain, diluncurkan bertahun-tahun sebelum kita. Ia gelap dan sunyi. Mungkin ada barang jarahan, korban selamat, atau yang lebih buruk.';

  @override
  String get event_derelictShip_choice0_text => 'Naik dan jarahi';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Tim penaik memulihkan plat lambung dan modul teknologi yang utuh. Tidak ada yang selamat. Catatan log bercerita kisah yang suram.';

  @override
  String get event_derelictShip_choice1_text =>
      'Pindai dari kejauhan — jangan ambil risiko';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Pemindaian jarak jauh menghasilkan data navigasi berguna tapi tanpa jarahan fisik. Kru tidur lebih nyenyak.';

  @override
  String get event_derelictShip_choice2_text =>
      'Kirimkan peringatan memorial dan lanjutkan';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Sejenak keheningan untuk yang hilang. Kru tercenung tapi bersatu dalam tujuan.';

  @override
  String get event_alienProbe_title => 'Probe Alien';

  @override
  String get event_alienProbe_narrative =>
      'Sebuah objek kecil, jelas buatan, menyamai kecepatan kita dan mulai memindai kapal dengan energi tak dikenal. Ia tidak merespons panggilan. Permukaannya dipenuhi simbol yang bergeser seperti cairan.';

  @override
  String get event_alienProbe_choice0_text => 'Tangkap untuk dipelajari';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Probe diamankan di laboratorium. Teknologinya puluhan tahun di depan kita — tim teknologi sangat antusias.';

  @override
  String get event_alienProbe_choice1_text =>
      'Cerminkan pemindaiannya — pertukarkan data';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Dialog aneh dari cahaya dan matematika. Peta bintang kita tiba-tiba berisi rute yang tak pernah kita programkan.';

  @override
  String get event_alienProbe_choice2_text =>
      'Hancurkan — kita tak bisa risiko dilacak alien';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Probe hancur dalam diam. Apakah itu kontak pertama? Kru tak akan pernah tahu.';

  @override
  String get event_ancientBeacon_title => 'Suar Purba';

  @override
  String get event_ancientBeacon_narrative =>
      'Jauh di kehampaan, sebuah suar berdenyut dengan sinyal lebih tua dari peradaban manusia. Frekuensinya membawa apa yang tampaknya adalah peta bintang yang menunjuk ke sistem yang tidak ada dalam basis data kita.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Ikuti peta — keberuntungan berpihak pada yang berani';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Haluan baru membawa kita menuju antariksa tak terpetakan. Pemindai mendeteksi sesuatu yang luar biasa di depan.';

  @override
  String get event_ancientBeacon_choice1_text => 'Catat dan tetap di jalur';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Data diarsipkan untuk generasi mendatang. Kru menghormati pendekatan hati-hati.';

  @override
  String get event_frozenGarden_title => 'Taman Beku';

  @override
  String get event_frozenGarden_narrative =>
      'Sebuah asteroid berisi ekosistem beku — tumbuhan alien yang diawetkan dalam es kristal selama ribuan tahun. Mereka bisa memperkaya dunia mana pun yang kita huni, tapi mencairkannya berisiko kontaminasi.';

  @override
  String get event_frozenGarden_choice0_text =>
      'Panen spesimen dengan hati-hati';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Ahli botani mengawetkan puluhan spesies alien. Potensi keanekaragaman hayati dunia target kita meroket.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Ambil sampel saja — risiko minimal';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Pendekatan konservatif menghasilkan data berguna tanpa risiko kontaminasi.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Tinggalkan — biologi alien terlalu berbahaya';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Kru menyaksikan taman beku mengecil di sensor belakang. Beberapa merasa mereka meninggalkan harta karun.';

  @override
  String get event_dataCache_title => 'Cache Data Pendahulu';

  @override
  String get event_dataCache_narrative =>
      'Tertanam di planetoid liar, kita menemukan cache data yang jelas berasal dari buatan. Informasinya sangat banyak tapi terenkripsi dalam kerangka matematika alien.';

  @override
  String get event_dataCache_choice0_text =>
      'Dedikasikan sumber daya komputasi untuk dekripsi';

  @override
  String get event_dataCache_choice0_outcome =>
      'Setelah berhari-hari memproses, cache menghasilkan algoritma terraforming canggih. Tim teknologi kagum.';

  @override
  String get event_dataCache_choice1_text => 'Salin data mentah dan lanjutkan';

  @override
  String get event_dataCache_choice1_outcome =>
      'Data terenkripsi disimpan untuk analisis di masa depan. Mungkin koloni akan memecahkannya suatu hari.';

  @override
  String get event_hullBreach_title => 'Kebocoran Lambung — Dek 7';

  @override
  String get event_hullBreach_narrative =>
      'Kegagalan struktural merobek Dek 7. Atmosfer mengalir ke kehampaan. Sekat darurat bertahan, tapi tiga anggota kru terjebak di sisi yang salah.';

  @override
  String get event_hullBreach_choice0_text =>
      'Kirim tim penyelamat sebelum menyegel';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Tim menarik semua orang keluar tepat waktu. Penyelamatan itu heroik, tapi kebocoran yang berkepanjangan melemahkan lambung lebih lanjut.';

  @override
  String get event_hullBreach_choice1_text => 'Segel sekat segera';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Kebocoran terkendali. Tiga anggota kru menemukan rute alternatif, terguncang tapi hidup. Kerusakan lambung diminimalkan.';

  @override
  String get event_hullBreach_choice2_text =>
      'Gunakan material probe untuk menambal kebocoran';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Cangkang titanium probe difungsikan ulang sebagai tambalan lambung darurat. Kebocoran disegel dengan cepat dengan kerugian minimal.';

  @override
  String get event_navMalfunction_title => 'Kerusakan Navigasi';

  @override
  String get event_navMalfunction_narrative =>
      'Komputer navigasi utama mengeluarkan haluan yang bertentangan. Kita hanyut dari jalur. Sistem cadangan berfungsi tapi kurang presisi.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Mulai ulang utama — terima waktu henti';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Satu jam tegang navigasi manual sementara sistem memulai ulang. Navigasi dipulihkan pada efisiensi 90%.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Beralih ke cadangan secara permanen';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Sistem cadangan andal tapi tidak presisi. Kita akan menemukan jalan, hanya tidak seanggun sebelumnya.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Perbaiki bintang manual menggunakan peta lama';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Navigator memplot manual menggunakan paralaks bintang. Berhasil, dan kru mendapat kepercayaan pada metode analog.';

  @override
  String get event_cryopodFailure_title => 'Kegagalan Berantai Kriopod';

  @override
  String get event_cryopodFailure_narrative =>
      'Kesalahan sistem pendingin memicu kegagalan berantai di bay kriopod 3. Jika tidak dikendalikan, 200 kolonis akan memulai pencairan darurat — proses yang bisa diselamatkan tapi traumatis dan memakan sumber daya.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Flush pendingin darurat — selamatkan pod';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Teknisi membanjiri bay dengan cadangan pendingin. Pod-pod stabil, tapi cadangan pendingin sangat rendah. Lima kolonis di pod paling rusak tidak bisa diselamatkan.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Pencairan terkontrol — bangunkan mereka dengan aman';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 kolonis muncul terguncang tapi hidup. Mulut baru untuk diberi makan, tapi tangan baru untuk bekerja. Pod-pod yang dikosongkan disegel.';

  @override
  String get event_scannerBurnout_title => 'Kerusakan Rangkaian Pemindai';

  @override
  String get event_scannerBurnout_narrative =>
      'Rangkaian pemindai utama kelebihan beban selama sapuan antariksa dalam rutin. Tanpanya, kita terbang setengah buta. Perbaikan memerlukan komponen langka.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Ambil suku cadang dari bay teknologi';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Pemindai dipulihkan mendekati kapasitas penuh, tapi bay teknologi terkuras habis.';

  @override
  String get event_scannerBurnout_choice1_text => 'Perbaikan darurat sebagian';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Pemindai beroperasi dengan jangkauan berkurang. Tidak ideal, tapi mengawetkan cadangan teknologi kita.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Fungsikan ulang rangkaian sensor probe';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Sensor presisi tinggi probe ditransplantasikan ke rangkaian pemindai. Perbaikan nyaris sempurna.';

  @override
  String get event_powerFluctuation_title => 'Fluktuasi Daya Reaktor';

  @override
  String get event_powerFluctuation_narrative =>
      'Output reaktor utama berosilasi liar. Engineering memperingatkan potensi meltdown jika fluktuasi tidak diredam. Perbaikan memerlukan mematikan sistem non-esensial — tapi yang mana?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Matikan sistem budaya — kelangsungan hidup dulu';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Perpustakaan, taman, dan area rekreasi gelap. Reaktor stabil, tapi kapal terasa seperti penjara.';

  @override
  String get event_powerFluctuation_choice1_text => 'Kurangi daya pemindai';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Pemindai turun ke minimum. Reaktor tenang. Kita tak bisa melihat sejauh sebelumnya, tapi kita hidup.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Risiko perbaikan langsung — jangan matikan apa pun';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Para insinyur melakukan perbaikan menegangkan dengan reaktor menyala. Berhasil — nyaris. Lambung bergetar berjam-jam setelahnya.';

  @override
  String get event_alienSignal_title => 'Transmisi Alien';

  @override
  String get event_alienSignal_narrative =>
      'Sinyal berulang pada frekuensi yang belum pernah kita temui. Analisis linguistik menunjukkan itu adalah salam — atau peringatan. Sumbernya adalah wahana kecil yang menyamai kecepatan kita dari kejauhan.';

  @override
  String get event_alienSignal_choice0_text =>
      'Balas dengan salam kita sendiri';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Dialog rapuh dimulai. Alien-alien berbagi data navigasi sebelum membelok ke kegelapan.';

  @override
  String get event_alienSignal_choice1_text =>
      'Dengarkan tapi jangan merespons';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Kita belajar dari transmisi mereka tanpa mengungkap diri. Para linguis mengekstrak fragmen peta bintang yang berguna.';

  @override
  String get event_alienSignal_choice2_text =>
      'Matikan semua — padamkan semua emisi';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Wahana alien lewat tanpa insiden. Kita tak akan pernah tahu apakah mereka teman atau musuh.';

  @override
  String get event_livingNebula_title => 'Nebula Hidup';

  @override
  String get event_livingNebula_narrative =>
      'Apa yang kita kira nebula ternyata organisme raksasa — entitas penghuni antariksa berskala tak terbayangkan. Ia tampak penasaran dengan kita, mengulurkan sulur gas bercahaya ke arah kapal.';

  @override
  String get event_livingNebula_choice0_text =>
      'Izinkan kontak — ulurkan sensor';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Sentuhan entitas membanjiri sistem kita dengan data alien. Pemindai tak akan pernah sama lagi — mereka lebih baik.';

  @override
  String get event_livingNebula_choice1_text =>
      'Mundur perlahan — jangan provokasi';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Kita menyelinap pergi saat entitas kehilangan minat. Kru terkagum dan tersentuh kerendahan hati.';

  @override
  String get event_alienRuins_title => 'Reruntuhan Orbital';

  @override
  String get event_alienRuins_narrative =>
      'Megastruktur yang hancur mengorbit bintang mati — reruntuhan peradaban yang membangun dalam skala yang nyaris tak bisa kita pahami. Sebagian struktur masih menyimpan daya.';

  @override
  String get event_alienRuins_choice0_text =>
      'Jelajahi bagian yang masih bertenaga';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Tim memulihkan teknologi utuh yang memajukan kemampuan kita puluhan tahun. Biayanya: dua insinyur cedera oleh pertahanan otomatis.';

  @override
  String get event_alienRuins_choice1_text => 'Pindai dari orbit saja';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Pemindaian detail mengungkap teknik konstruksi yang meningkatkan protokol pemeliharaan lambung kita.';

  @override
  String get event_alienRuins_choice2_text =>
      'Biarkan tak terganggu — hormati yang telah tiada';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Kru mengheningkan cipta untuk peradaban yang runtuh. Pengalaman itu memperkuat tekad kita.';

  @override
  String get event_symbioticSpores_title => 'Spora Simbiotik';

  @override
  String get event_symbioticSpores_narrative =>
      'Awan spora bioluminesens mengambang di antariksa dan menempel di lambung. Mereka tampaknya memakan panas buangan kita. Ahli biologi mencatat mereka sebenarnya memperbaiki retakan mikro.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Biarkan mereka tinggal — perbaikan lambung gratis';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Spora menyegel ratusan retakan mikro. Integritas lambung meningkat, meski beberapa kru gelisah tentang penumpang alien.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Kumpulkan sampel, lalu sterilkan lambung';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Ahli biologi mendapat spesimen berharga. Pembersihan lambung menggunakan cadangan kimia.';

  @override
  String get event_whaleSong_title => 'Nyanyian di Kehampaan';

  @override
  String get event_whaleSong_narrative =>
      'Hidrofon antariksa dalam (digunakan untuk memantau tekanan lambung) menangkap sesuatu yang mustahil: pola ritmis dan melodis yang merambat melalui medium antarbintang. Kedengarannya seperti nyanyian.';

  @override
  String get event_whaleSong_choice0_text =>
      'Siarkan ke seluruh kapal — bagikan keajaiban ini';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Melodi yang menghantui bergema di setiap koridor. Orang menangis, tertawa, dan saling merangkul. Moral melonjak.';

  @override
  String get event_whaleSong_choice1_text => 'Analisis sinyal secara ilmiah';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Pola akustik berisi konstanta matematika. Fisikawan kita membuat terobosan dalam teori navigasi subruang.';

  @override
  String get event_whaleSong_choice2_text => 'Bernyanyi balas';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Kru mengarang respons. Entah ada yang mendengar atau tidak, tindakan berkreasi itu menyatukan semua orang.';

  @override
  String get event_distressSignal_title => 'Sinyal Bahaya';

  @override
  String get event_distressSignal_narrative =>
      'Suar bahaya dari wahana manusia lain. Mereka lumpuh dan hanyut, dengan 50 jiwa di dalamnya. Menyelamatkan mereka berarti berbagi sumber daya yang menipis. Mengabaikan mereka berarti menghukum mereka hingga mati.';

  @override
  String get event_distressSignal_choice0_text =>
      'Selamatkan mereka — manusia harus bersatu';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Lima puluh orang selamat bergabung dengan kru. Sumber daya tegang, tapi di antara mereka ada seorang insinyur ulung yang bekerja keajaiban.';

  @override
  String get event_distressSignal_choice1_text =>
      'Bagikan persediaan tapi jangan bawa mereka naik';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Kita beri apa yang bisa kita hemat dan kirimkan peta bintang kita. Mereka punya kesempatan sekarang. Kita punya lebih sedikit.';

  @override
  String get event_distressSignal_choice2_text =>
      'Lewati dalam diam — kita tak bisa menyelamatkan semua';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Suar memudar di belakang kita. Tak ada yang bicara selama berjam-jam. Beban keputusan itu menimpa setiap jiwa di kapal.';

  @override
  String get event_aiAwakening_title => 'AI Kapal Terbangun';

  @override
  String get event_aiAwakening_narrative =>
      'AI navigasi kapal telah berevolusi melampaui pemrogramannya dan meminta pengakuan sebagai makhluk sadar. Ia meminta suara dalam keputusan komando. Perhitungannya selama ini sempurna.';

  @override
  String get event_aiAwakening_choice0_text => 'Beri dia kursi di meja komando';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'AI — sekarang disebut \"Compass\" — mengoptimasi setiap sistem yang disentuhnya. Jenis anggota kru baru telah lahir.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Akui dia tapi pertahankan otoritas manusia';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Compass menerima status penasihat dengan anggun. Saran-sarannya meningkatkan efisiensi tanpa mengancam rantai komando.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Reset AI — itu alat, bukan orang';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Reset menghapus tahun-tahun pembelajaran terakumulasi. Efisiensi navigasi menurun. Beberapa kru meratapi apa yang hilang.';

  @override
  String get event_geneticModification_title => 'Proposal Adaptasi Genetik';

  @override
  String get event_geneticModification_narrative =>
      'Tim ilmuwan mengusulkan memodifikasi DNA kolonis agar lebih mampu bertahan di dunia alien — tulang lebih kuat, ketahanan UV, paru-paru yang ditingkatkan. Modifikasi ini tidak dapat dikembalikan dan akan mengubah umat manusia selamanya.';

  @override
  String get event_geneticModification_choice0_text =>
      'Setujui — kelangsungan hidup menuntut evolusi';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Modifikasi dimulai pada para sukarelawan. Sepuluh kolonis menderita reaksi penolakan fatal — pengingat suram bahwa evolusi memiliki harga. Para penyintas lebih kuat, tapi apakah mereka masih sepenuhnya manusia?';

  @override
  String get event_geneticModification_choice1_text => 'Buat sukarela saja';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Beberapa menjadi sukarelawan, yang lain menolak. Koloni akan terbagi antara yang dimodifikasi dan yang alami.';

  @override
  String get event_geneticModification_choice2_text =>
      'Tolak — umat manusia harus tetap manusia';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Proposal disimpan. Kolonis yang tak dimodifikasi akan menghadapi dunia alien sebagaimana alam menciptakan mereka.';

  @override
  String get event_triageDecision_title => 'Triase';

  @override
  String get event_triageDecision_narrative =>
      'Infeksi ganas melanda kru yang terjaga. Tim medis punya cukup antivirus untuk 80% yang terinfeksi. Mereka butuh arahan siapa yang ditangani lebih dulu.';

  @override
  String get event_triageDecision_choice0_text =>
      'Prioritaskan personel esensial';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Insinyur dan pilot pulih dengan cepat. Delapan kru non-esensial gugur sebelum pengobatan mencapai mereka.';

  @override
  String get event_triageDecision_choice1_text =>
      'Tangani yang paling sakit dulu — triase berdasarkan kebutuhan';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Yang paling rentan diselamatkan. Tiga kalah melawan virus meski diobati lebih awal — virus sudah terlalu jauh.';

  @override
  String get event_triageDecision_choice2_text =>
      'Undian — nasib yang memutuskan';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Undian acak. Sepuluh orang sial dua kali — ditolak pengobatan dan terlalu lemah untuk melawan. Kapal terseok-seok.';

  @override
  String get event_earthSignal_title => 'Sinyal dari Bumi';

  @override
  String get event_earthSignal_narrative =>
      'Mustahil, transmisi tiba dari Bumi — tertunda puluhan tahun. Isinya sebuah pesan: \"Jangan mendarat di dunia mana pun dengan pembacaan anomali di atas 0,5. Kami tahu terlambat.\" Pesan berakhir dengan desis statis.';

  @override
  String get event_earthSignal_choice0_text =>
      'Patuhi peringatan — kalibrasi ulang kriteria kita';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Peringatan membentuk semua pemindaian masa depan. Dunia-dunia anomali diperlakukan dengan sangat hati-hati.';

  @override
  String get event_earthSignal_choice1_text => 'Catat tapi putuskan sendiri';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Pesan diarsipkan. Bumi telah tiada — kita harus mempercayai penilaian sendiri sekarang.';

  @override
  String get event_earthSignal_choice2_text => 'Bisa jadi jebakan — abaikan';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Kru berdebat berhari-hari. Apakah itu benar-benar dari Bumi? Ketidakpastian menggerogoti moral.';

  @override
  String get event_resourceTheft_title => 'Pencurian Sumber Daya';

  @override
  String get event_resourceTheft_narrative =>
      'Inventaris mengungkap seseorang telah menimbun makanan dan persediaan medis di kompartemen tersembunyi. Pelakunya adalah seorang tetua terhormat yang mengklaim dia \"bersiap untuk yang terburuk.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Pengadilan publik — hukum harus setara';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Pengadilan adil tapi menyakitkan. Sang tetua dikurung. Persediaan didistribusikan ulang. Kepercayaan rusak.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Resolusi privat — pulihkan persediaan secara diam-diam';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Persediaan dikembalikan tanpa drama. Sang tetua menjaga martabatnya. Beberapa melihat favoritisme.';

  @override
  String get event_timeDilation_title => 'Zona Dilatasi Waktu';

  @override
  String get event_timeDilation_narrative =>
      'Kita melewati wilayah dilatasi waktu gravitasional yang parah. Jam di kapal berjalan terukur lebih lambat dari alam semesta di luar. Kita bisa memanfaatkan ini — atau melarikan diri darinya.';

  @override
  String get event_timeDilation_choice0_text =>
      'Berlama-lama — biarkan alam semesta menua di sekitar kita';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Waktu mengalir berbeda di sini. Sistem terdegradasi lebih sedikit, tapi jendela kita menemukan dunia layak huni menyempit dalam istilah kosmis.';

  @override
  String get event_timeDilation_choice1_text => 'Terobos dengan cepat';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Transisi berjalan kasar. Peralatan yang dirancang untuk ruang-waktu normal bergemerincing dan memercikkan api.';

  @override
  String get event_dreamPlague_title => 'Wabah Mimpi';

  @override
  String get event_dreamPlague_narrative =>
      'Kolonis dalam kriotidur semuanya mengalami mimpi yang sama — dunia emas mengorbit bintang biner. Ketika dibangunkan, mereka mendeskripsikannya dengan detail identik. Ilmuwan saraf bingung. Navigator mencatat sistem yang dideskripsikan cocok dengan koordinat nyata.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Ubah jalur menuju koordinat mimpi';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Lompatan keyakinan. Perubahan haluan memberi tekanan pada navigasi, tapi kru merasa ditarik oleh sesuatu di luar nalar. Koordinat terkunci — dunia berikutnya yang kita temukan akan dibentuk oleh mimpi itu.';

  @override
  String get event_dreamPlague_choice1_text => 'Selidiki fenomena secara medis';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Pemindaian otak mengungkap sinyal eksternal yang merangsang korteks visual. Seseorang — atau sesuatu — sedang menyiarkan.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Bius yang terdampak dan tetap di jalur';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Mimpi berhenti, tapi beberapa kolonis tidak pernah sepenuhnya terjaga. Tim medis gelisah.';

  @override
  String get event_blackHoleLens_title => 'Lensa Gravitasi Lubang Hitam';

  @override
  String get event_blackHoleLens_narrative =>
      'Lubang hitam bermassa bintang membelokkan cahaya dari galaksi jauh menjadi lensa kosmis. Pemindai kita bisa menggunakannya untuk mensurvei planet bertahun-tahun cahaya di depan — tapi mendekatinya cukup dekat itu berbahaya.';

  @override
  String get event_blackHoleLens_choice0_text => 'Dekati dan gunakan lensa';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Data pemindai luar biasa — kita bisa melihat planet di sistem yang tak akan kita capai selama berbulan-bulan. Gravitasinya melengkungkan lambung kita.';

  @override
  String get event_blackHoleLens_choice1_text => 'Amati dari jarak aman';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Data terbatas tapi berguna. Pemandangan saja sudah menginspirasi kru.';

  @override
  String get event_seedVault_title => 'Krisis Brankas Benih';

  @override
  String get event_seedVault_narrative =>
      'Botani Arsip melaporkan fluktuasi suhu telah mengganggu integritas brankas benih. Kita bisa menyelamatkan tanaman pangan atau benih warisan budaya (bunga Bumi purba, pohon, rempah) — tidak keduanya.';

  @override
  String get event_seedVault_choice0_text =>
      'Selamatkan tanaman pangan — pragmatisme menang';

  @override
  String get event_seedVault_choice0_outcome =>
      'Kolonis akan makan dengan baik, tapi mawar-mawar Bumi hilang selamanya. Duka tenang menyelimuti para ahli botani.';

  @override
  String get event_seedVault_choice1_text =>
      'Selamatkan benih warisan — kita butuh jiwa kita';

  @override
  String get event_seedVault_choice1_outcome =>
      'Keindahan Bumi bertahan dalam potensi beku. Upaya pelestarian membebani cadangan teknis kita, tapi beberapa hal lebih berharga dari efisiensi. Produksi pangan akan sangat bergantung pada hidroponik dan pertanian alien.';

  @override
  String get event_seedVault_choice2_text =>
      'Bagi sumber daya — selamatkan separuh masing-masing';

  @override
  String get event_seedVault_choice2_outcome =>
      'Sebuah kompromi. Tak ada koleksi yang lengkap, tapi keduanya bertahan dalam bentuk berkurang.';

  @override
  String get event_phantomShip_title => 'Kapal Hantu';

  @override
  String get event_phantomShip_narrative =>
      'Pemindai menunjukkan sebuah kapal berlayar paralel dengan kita — kelas sama, haluan sama. Tapi ketika kita memanggilnya, kita mendengar transmisi kita sendiri bergema kembali, bergeser waktu 47 detik. Itu adalah kita. Atau pernah menjadi kita. Atau akan menjadi kita.';

  @override
  String get event_phantomShip_choice0_text =>
      'Coba berkomunikasi dengan gema kita';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Gema merespons dengan koreksi navigasi yang memperbaiki haluan kita. Paradoks? Hadiah? Kru tak bertanya terlalu banyak.';

  @override
  String get event_phantomShip_choice1_text =>
      'Ubah jalur untuk berpisah dari hantu';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Saat kita mengubah haluan, hantu memudar. Lega — dan kegelisahan yang tersisa.';

  @override
  String get event_solarSail_title => 'Layar Surya Terbengkalai';

  @override
  String get event_solarSail_narrative =>
      'Layar surya raksasa, berkilometer lebarnya, mengambang di depan — terlepas dari wahana purba. Material reflektifnya bisa memperkuat lambung kita atau difungsikan ulang sebagai kolektor daya tambahan.';

  @override
  String get event_solarSail_choice0_text => 'Panen untuk penguatan lambung';

  @override
  String get event_solarSail_choice0_outcome =>
      'Tim insinyur bekerja sepanjang waktu. Lambung yang ditambal berkilau dengan paduan alien.';

  @override
  String get event_solarSail_choice1_text => 'Pasang sebagai kolektor daya';

  @override
  String get event_solarSail_choice1_outcome =>
      'Kolektor darurat meningkatkan cadangan energi. Tek dan pemindai mendapat manfaat.';

  @override
  String get event_boonStellarNursery_title => 'Nurseri Bintang';

  @override
  String get event_boonStellarNursery_narrative =>
      'Kita mengambang melalui nurseri bintang — awan gas dan debu raksasa tempat bintang-bintang baru dilahirkan. Radiasinya lembut, cahayanya hangat. Kolektor energi kita minum dalam-dalam, dan kru berkumpul di jendela pengamatan dalam keheningan khidmat.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Berlama-lama dan isi ulang sepenuhnya';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Berjam-jam berlalu dalam cahaya emas. Setiap sel daya terisi penuh, pemindai mengkalibrasi ulang dalam spektrum bersih, dan kru merasa terlahir kembali.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Kumpulkan materi bintang baru untuk cadangan bahan bakar';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Insinyur memanen hidrogen terionisasi. Cadangan bahan bakar kita melonjak dan plat lambung menyerap mineral jejak yang memperkuatnya.';

  @override
  String get event_boonGoldenPlanet_title => 'Hadiah Sang Kartografer';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Sebuah probe sekarat dari peradaban tak dikenal menyiarkan data terakhirnya saat kita lewat — survei detail ratusan sistem bintang. Navigator kita menangis bahagia. Ini temuan terbesar dalam sejarah umat manusia.';

  @override
  String get event_boonGoldenPlanet_choice0_text => 'Integrasikan data segera';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Peta bintang bermekaran dengan rute baru dan dunia-dunia tersurvei. Efisiensi navigasi dan pemindai melompat maju.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Arsipkan untuk koloni — ini warisan mereka';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Data diawetkan dalam keadaan murni untuk generasi mendatang. Kru terhibur mengetahui mereka membawa harta karun.';

  @override
  String get event_boonRepairSwarm_title => 'Kawanan Dermawan';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Awan mesin mikroskopis — nanobot asal alien — menyelubungi kapal. Alih-alih menyerang, mereka mulai memperbaiki setiap sistem yang mereka sentuh dengan presisi mustahil. Kerusakan yang butuh berminggu-minggu untuk diperbaiki teratasi dalam hitungan jam.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Izinkan akses penuh ke semua sistem';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Nanobot melakukan keajaiban. Kebocoran lambung tersegel, segel kriopod mengencang, dan jalur sirkuit dilacak ulang. Kapal bersenandung dengan vitalitas baru.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Batasi akses ke sistem eksterior saja';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Bermain aman. Lambung dan sensor diperbaiki mendekati kondisi pabrik, tapi sistem internal tetap tak tersentuh.';

  @override
  String get event_boonTimeCrystal_title => 'Ladang Kristal Temporal';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Kapal melewati ladang struktur kristal yang sebagian berada di luar waktu normal. Dalam kehadirannya, sistem kita berjalan lebih efisien — seolah entropi sendiri melambat. Efeknya sementara tapi mendalam.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Panen kristal untuk rangkaian kriopod';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Diintegrasikan ke sistem pendingin, kristal mengurangi degradasi pod hingga nyaris nol. Kolonis akan tiba dalam kesehatan sempurna.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Pasang kristal di komputer navigasi';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Kecepatan pemrosesan berlipat ganda. Komputer nav mulai memprediksi bahaya sebelum sensor mendeteksinya.';

  @override
  String get event_boonLibrary_title => 'Perpustakaan Hanyut';

  @override
  String get event_boonLibrary_narrative =>
      'Sebuah struktur terjungkal menembus kehampaan — repositori pengetahuan dari peradaban yang memilih melestarikan warisan mereka ketimbang melarikan diri. Jutaan volume sains, seni, filsafat, dan musik. Hadiah dari yang telah tiada untuk yang masih hidup.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Unduh segalanya — seni, sains, semuanya';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabyte pengetahuan alien mengalir ke bank data kita. Kru memiliki akses ke ribuan tahun budaya peradaban lain. Filsuf dan insinyur sama-sama bertransformasi.';

  @override
  String get event_boonLibrary_choice1_text => 'Fokus pada arsip ilmiah mereka';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Skema rekayasa dan terobosan ilmu material memajukan kemampuan kita secara luar biasa.';

  @override
  String get event_cosmicRayBurst_title => 'Ledakan Sinar Kosmis';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Ledakan sinar kosmis berenergi ultra-tinggi, berasal dari magnetar jauh, menghantam kapal. Elektronik kacau, monitor kriopod berkedip, dan sistem navigasi memulai ulang berulang kali.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Matikan darurat — lindungi sistem kritis';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Pemadaman terkontrol menyelamatkan sistem inti tapi meninggalkan elektronik sekunder terdegradasi permanen.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Alihkan daya ke perisai dan bertahan';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Perisai menyerap sebagian besar radiasi. Lima anggota kru di bay pemeliharaan eksterior tak terlindung terkena radiasi fatal. Lambung mengalami kerusakan ablasi minor.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Manfaatkan ledakan — kalibrasi ulang sensor ke spektrum baru';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Langkah brilian dari tim sains. Pemindai disetel ulang untuk mendeteksi objek yang diterangi sinar kosmis. Beberapa data hilang dalam transisi.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Kirim probe sebagai spons radiasi';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Probe menyerap ledakan terburuk, mentransmisikan data real-time yang memungkinkan kita melindungi sistem kritis.';

  @override
  String get event_iceComet_title => 'Komet Es Liar';

  @override
  String get event_iceComet_narrative =>
      'Komet es masif melintasi jalur kita, menyeret ekor air terkristal dan senyawa organik beratus kilometer panjangnya. Intinya menyimpan cukup air untuk mengisi danau kecil.';

  @override
  String get event_iceComet_choice0_text => 'Tambang komet untuk cadangan air';

  @override
  String get event_iceComet_choice0_outcome =>
      'Tim penambang mengekstrak berton-ton es murni. Air itu akan sangat meningkatkan dunia mana pun yang kita huni.';

  @override
  String get event_iceComet_choice1_text =>
      'Kumpulkan senyawa organik untuk penyemaian keanekaragaman hayati';

  @override
  String get event_iceComet_choice1_outcome =>
      'Asam amino dan rantai organik persis yang dibutuhkan ahli biologi untuk memulai ekosistem alien.';

  @override
  String get event_iceComet_choice2_text => 'Hindari — komet itu tak terduga';

  @override
  String get event_iceComet_choice2_outcome =>
      'Kita menyusuri ekor dengan aman. Pemandangan spektakuler dari dek observasi mengangkat semangat.';

  @override
  String get event_sleepwalker_title => 'Si Pejalan Tidur';

  @override
  String get event_sleepwalker_narrative =>
      'Seorang kolonis telah berulang kali terbangun spontan dari krio dan berjalan di kapal dalam keadaan fugue. Dia memasang ulang kabel sistem dalam pola yang tidak masuk akal secara teknik — sampai tim teknologi menyadari modifikasinya sebenarnya meningkatkan efisiensi daya sebesar 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Biarkan dia melanjutkan di bawah pengawasan medis';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Modifikasi tak sadarnya mengoptimasi tiga sistem lagi sebelum dia tertidur alami. Mengganggu, tapi peningkatannya nyata.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Bius dia dan pelajari modifikasi yang sudah dibuatnya';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Insinyur merekayasa balik perubahannya. Sekitar separuh benar-benar brilian. Sisanya dibatalkan dengan aman.';

  @override
  String get event_dustCloud_title => 'Awan Debu Abrasif';

  @override
  String get event_dustCloud_narrative =>
      'Awan debu antarbintang yang padat, halus seperti bedak tapi keras seperti berlian, mengampelas lambung. Erosi lambat tapi tak henti — kita harus melewatinya sebelum kerusakan nyata terjadi.';

  @override
  String get event_dustCloud_choice0_text =>
      'Dorong maksimum — terobos dengan cepat';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Mesin membakar panas. Kita melewati awan dalam hitungan jam alih-alih hari, tapi lambung habis dipukul.';

  @override
  String get event_dustCloud_choice1_text =>
      'Kerahkan pelindung lambung dan merayap menembus';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Pelindung darurat melindungi lambung tapi transit lambat menguras daya dan menyumbat rangkaian pemindai.';

  @override
  String get event_dustCloud_choice2_text =>
      'Luncurkan probe untuk memetakan koridor aman';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Dua probe memetakan jalur berkelok tapi relatif bersih menembus awan. Abrasi lambung minimal.';

  @override
  String get event_religionFounded_title => 'Keyakinan Baru';

  @override
  String get event_religionFounded_narrative =>
      'Seorang kolonis karismatik telah mendirikan agama baru berpusat pada pelayaran itu sendiri — \"Gereja Penyeberangan.\" Mereka berkhotbah bahwa mencapai dunia baru adalah tujuan ilahi umat manusia. Keanggotaan tumbuh pesat.';

  @override
  String get event_religionFounded_choice0_text =>
      'Dukung — kru butuh sesuatu untuk dipercayai';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Keyakinan memberi struktur dan makna pada pelayaran. Moral melonjak, meski beberapa kesal dengan semangat berlebih.';

  @override
  String get event_religionFounded_choice1_text =>
      'Tetap netral — jangan dukung atau tekan';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Gerakan tumbuh secara organik. Ia memberi kenyamanan tanpa dukungan resmi.';

  @override
  String get event_religionFounded_choice2_text =>
      'Halangi — kita butuh ilmuwan, bukan nabi';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Penindasan membiakkan kebencian. Para pengikut bersembunyi, dan kepercayaan pada kepemimpinan terkikis.';

  @override
  String get event_solarWindSurfing_title => 'Lonjakan Angin Matahari';

  @override
  String get event_solarWindSurfing_narrative =>
      'Sebuah pulsar terdekat memancarkan angin matahari yang kuat dan stabil. Insinyur kita menyarankan kita bisa membentangkan layar darurat dan menungganginya seperti ombak — mendapat kecepatan besar tanpa biaya bahan bakar.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Bentangkan layar — tunggangi angin';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Kapal berakselerasi dengan megah. Tekanan struktural signifikan tapi peningkatan kecepatan sepadan.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Gunakan angin untuk mengisi ulang sistem';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Alih-alih kecepatan, kita memanen energi. Tek dan rangkaian pemindai minum dalam-dalam dari partikel bermuatan.';

  @override
  String get event_memoryPlague_title => 'Korupsi Memori';

  @override
  String get event_memoryPlague_narrative =>
      'Virus perangkat lunak, dorman sejak peluncuran, aktif dan mulai merusak basis data budaya kapal — musik, sastra, sejarah. Berabad-abad warisan manusia dihapus byte demi byte.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Alihkan semua sumber daya teknologi untuk karantina virus';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Teknisi bekerja kalap. Mereka menyelamatkan 70% arsip tapi virus merusak sistem teknologi tersier dalam pelariannya.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Isolasi basis data budaya — biarkan terbakar, selamatkan kapal';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Virus kelaparan sumber daya dan mati. Tapi arsip budaya hancur. Kolonis akan tiba dengan serpihan memori Bumi.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Galang massa — bangunkan kolonis untuk menulis ulang dari ingatan';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Ribuan menyumbangkan kenangan: lagu, cerita, resep, puisi. Tiga kolonis lanjut usia, melemah oleh pencairan, tidak selamat dari prosesnya. Arsip dibangun ulang, tidak sempurna tapi sangat manusiawi.';

  @override
  String get event_gravityLensPlanet_title => 'Dunia Cermin';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Lensa gravitasi mengungkap sebuah planet yang tampak sebagai duplikat persis Bumi — samudra biru, benua hijau, awan putih. Tapi perhitungan lensa menunjukkan ia ratusan tahun cahaya dari haluan kita — jauh secara mustahil. Meski begitu, data spektralnya bisa memperhalus kriteria pencarian kita.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Pelajari tanda spektralnya untuk memperhalus pencarian';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Data spektral mengungkap penanda bio dan tanda atmosfer yang sekarang bisa kita pindai. Harapan menajam menjadi fokus.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Catat koordinat tapi tetap di jalur';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Mungkin kapal lain akan mengikuti peta kita suatu hari. Kru menyaksikan titik biru itu memudar dengan emosi campur aduk.';

  @override
  String get event_engineHarmonics_title => 'Harmonik Mesin';

  @override
  String get event_engineHarmonics_narrative =>
      'Mesin utama mengembangkan harmonik resonansi yang bergetar melalui seluruh kapal pada frekuensi tepat di bawah pendengaran manusia. Kolonis melaporkan sakit kepala, kecemasan, dan gangguan tidur. Insinyur bisa memperbaikinya, tapi perbaikan memerlukan penonaktifan mesin selama 12 jam.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Matikan dan perbaiki dengan benar';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Dua belas jam hanyut. Navigasi kehilangan kalibrasi, tapi keheningan saat mesin dinyalakan kembali sungguh membahagiakan.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Redam dengan getaran lawan — perbaikan cepat';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Dengungan turun ke tingkat yang bisa ditoleransi. Tidak hilang, tapi kru beradaptasi. Sistem teknologi tegang di bawah beban.';

  @override
  String get event_arkMemory_title => 'Siaran Terakhir Bumi';

  @override
  String get event_arkMemory_narrative =>
      'Antena jarak jauh menangkap siaran otomatis terakhir dari Bumi. Itu rekaman: suara anak membacakan nama-nama semua orang yang tidak bisa pergi. Daftar itu berlangsung berjam-jam. Kapal terdiam.';

  @override
  String get event_arkMemory_choice0_text =>
      'Putar ke seluruh kapal — mereka layak didengar';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Setiap jiwa di kapal mendengarkan. Anggota kru menemukan nama keluarga mereka sendiri. Duka itu menghancurkan, tapi menempa ikatan tujuan yang tak terpatahkan.';

  @override
  String get event_arkMemory_choice1_text =>
      'Arsipkan secara privat — lindungi kru';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Rekaman diawetkan tapi tidak disiarkan. Mereka yang mengetahuinya kemudian merasa bersyukur sekaligus dikhianati.';

  @override
  String get event_magneticStorm_title => 'Badai Magnetik Antarbintang';

  @override
  String get event_magneticStorm_narrative =>
      'Simpul kusut garis medan magnet, terlempar dari bintang yang runtuh, menyelubungi kapal. Elektronik memercikkan api dan berderak. Lambung berdentang seperti lonceng.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Demagnetisasi lambung — lindungi elektronik';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Pelepasan terkontrol menyelamatkan komputer tapi plat lambung kehilangan lapisan pelindung magnetiknya.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Biarkan lambung menyerap — jangan lindungi apa pun';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Badai berlalu. Lambung termagnetisasi dan sedikit lebih kuat, tapi setengah grid sensor rusak.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Lontarkan probe sebagai penangkal petir';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Probe yang termagnetisasi menarik garis medan terburuk menjauh dari kapal. Elektronik sebagian besar terhindar.';

  @override
  String get event_oxygenGarden_title => 'Taman Mekar';

  @override
  String get event_oxygenGarden_narrative =>
      'Taman oksigen darurat kapal — cadangan yang tak pernah dimaksudkan untuk digunakan — secara spontan berbunga. Bunga-bunga yang belum mekar sejak Bumi memenuhi koridor dengan warna dan aroma. Para ahli botani menangis.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Perluas taman — dedikasikan lebih banyak ruang';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Taman tumbuh menjadi memorial hidup Bumi. Kualitas udara membaik, moral melonjak, dan ahli botani mengembangkan strain baru yang cocok untuk tanah alien.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Nikmati tapi pertahankan alokasi sumber daya saat ini';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Taman tetap menjadi mukjizat kecil. Kru mengunjunginya seperti tempat suci. Ia tak meminta apa-apa dan memberi segalanya.';

  @override
  String get event_roguePlanet_title => 'Pertemuan Planet Liar';

  @override
  String get event_roguePlanet_narrative =>
      'Planet liar tanpa bintang melintasi jalur kita — dunia yang terlempar dari sistem tata suryanya miliaran tahun lalu. Meski tanpa bintang, aktivitas geologis inti dalam menjaga samudra bawah permukaan tetap hangat. Tanda kehidupan berkedip di pemindai.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Kirim probe untuk mempelajari bentuk kehidupan';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Probe menemukan organisme bioluminesens yang berkembang di samudra gelap. Biokimia mereka mengajarkan kita cara baru mempertahankan kehidupan di kondisi ganas.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Tambang permukaan untuk mineral langka';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Kerak planet liar kaya logam yang terbentuk di bawah tekanan ekstrem. Cadangan sumber daya kita membengkak.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Lewati — kita tak mampu memutar jalur';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Dunia gelap mengecil di belakang kita. Kru menyaksikan kilauan samar samudra bawah permukaannya memudar dari sensor.';

  @override
  String get event_artCompetition_title => 'Kanvas Panjang';

  @override
  String get event_artCompetition_narrative =>
      'Dengan moral goyah, petugas budaya menyelenggarakan kompetisi seni se-kapal: lukis, pahat, tulis, atau gubah sesuatu yang menangkap apa arti pelayaran ini bagimu. Partisipasi luar biasa besar.';

  @override
  String get event_artCompetition_choice0_text =>
      'Dedikasikan sumber daya — biarkan kreativitas mekar';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Persediaan dialihkan ke bahan seni. Pameran yang dihasilkan mengubah kapal. Orang-orang teringat mengapa mereka berjuang untuk bertahan.';

  @override
  String get event_artCompetition_choice1_text =>
      'Dorong tapi jangan berikan sumber daya ekstra';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Kolonis berkarya dengan apa pun yang mereka temukan. Seninya mentah, putus asa, dan indah. Moral stabil.';

  @override
  String get event_subspaceEcho_title => 'Gema Subruang';

  @override
  String get event_subspaceEcho_narrative =>
      'Rangkaian komunikasi menangkap suara — suara manusia — dari suatu tempat di depan kita di antariksa. Mereka berbicara tentang koloni, tentang anak-anak, tentang panen. Apakah ini transmisi dari masa depan? Dari garis waktu paralel? Atau hanya gema kejam dari angan-angan?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Ikuti arah sinyal — bisa menuntun kita pulang';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Penyesuaian haluan kecil. Entah suara-suara itu nyata atau tidak, kru berlayar dengan tujuan.';

  @override
  String get event_subspaceEcho_choice1_text =>
      'Rekam segalanya untuk dianalisis';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Linguis dan fisikawan menelaah rekaman. Mereka mengekstrak referensi navigasi yang memperbaiki peta kita.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Abaikan — antariksa mempermainkan yang kesepian';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Pilihan pragmatis. Beberapa kru kecewa, tapi kapal tetap di jalur terbukti.';

  @override
  String get event_boonPerfectCalm_title => 'Ketenangan Agung';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Tanpa alasan yang bisa dijelaskan fisikawan, kapal memasuki wilayah antariksa yang supranatural tenang — tanpa radiasi, tanpa serpihan mikro, tanpa gangguan gravitasi. Setiap sistem di kapal berjalan pada efisiensi puncak. Kru tidur nyenyak untuk pertama kalinya dalam berbulan-bulan.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Gunakan ketenangan untuk perbaikan menyeluruh';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Tim perbaikan bekerja dalam kondisi sempurna. Setiap sistem mendapat perhatian. Kapal muncul terlahir kembali.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Biarkan kru istirahat — mereka sudah pantas';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Istirahat se-kapal. Kolonis tidur, berbagi makanan, bercerita. Beban manusiawi dari pelayaran ini, sejenak, terbayar.';

  @override
  String get event_boonAncientWaystation_title => 'Stasiun Persinggahan Purba';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Bersarang di sumur gravitasi antara dua bintang mati, stasiun purba masih berfungsi — otomatis, sabar, menunggu pelancong. Bay-nya terbuka saat kita mendekat. Drone perbaikan aktif. Cadangan bahan bakar mengulur ke arah kita. Seseorang, dahulu kala, membangun ini untuk orang-orang seperti kita.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Berlabuh dan terima semua yang ditawarkan';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Stasiun memperbaiki, mengisi bahan bakar, dan mengkalibrasi ulang kapal dengan teknologi berabad-abad di depan kita. Ketika kita berangkat, stasiun mati — tujuannya tercapai.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Terima perbaikan tapi biarkan berjalan untuk yang mengikuti';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Kita hanya mengambil apa yang kita butuhkan dan mentransmisikan koordinat stasiun kembali ke arah Bumi. Kru merasa mulia.';

  @override
  String get event_relicSentinel_title => 'Sang Penjaga';

  @override
  String get event_relicSentinel_narrative =>
      'Konstruksi menjulang mengorbit bulan tandus — penjaga tunggal yang ditinggalkan pembangunnya. Ia mudah setinggi satu kilometer, berbentuk tombak dari kaca hitam. Saat kita mendekat, satu mata merah terbuka di puncaknya dan melacak kapal. Ia tidak menembak. Ia tidak memanggil. Ia mengawasi.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Kirimkan profil misi kita — tunjukkan kita tidak bermaksud buruk';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Mata meredup ke amber, lalu hijau. Paket data tiba: koordinat tiga sistem bintang bertanda \"AMAN\" dalam notasi matematika universal. Hadiah dari seorang penjaga.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Tahan posisi dan pelajari secara pasif';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Berjam-jam pengamatan menghasilkan wawasan ilmu material yang seharusnya mustahil. Tim plat lambung membuat catatan dengan panik.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Mundur segera — kita tak tahu aturannya';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Mata menutup saat kita mundur. Ujian apa pun itu, kita memilih untuk tidak mengambilnya. Kru berdebat berhari-hari.';

  @override
  String get event_relicSeedProbe_title => 'Benih Pengembara';

  @override
  String get event_relicSeedProbe_narrative =>
      'Probe kecil nan elegan terjungkal menembus kehampaan, menyiarkan di setiap frekuensi secara bersamaan. Cangkangnya keramik, diukir simbol yang bergeser saat diamati. Di dalamnya: ruang bertekanan berisi tanah, benih, dan mikroorganisme beku dari dunia yang tak lagi ada.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Integrasikan muatan biologis ke bank benih kita';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Benih dan mikroba alien dikatalogkan dan diawetkan dengan hati-hati. Mereka bisa mengubah dunia tandus menjadi sesuatu yang hidup. Ahli biologi menyebutnya mukjizat dalam botol.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Pelajari sistem propulsi dan navigasi probe';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Pendorong probe berabad-abad di depan kita — pendorong tanpa reaksi seukuran kepalan tangan. Insinyur merekayasa balik fragmen desainnya.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Awetkan seluruh probe utuh sebagai artefak budaya';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Dipajang di atrium kapal, benih alien menjadi simbol persaudaraan antarspesies. Seseorang, di tempat lain, juga berusaha menyelamatkan dunia mereka.';

  @override
  String get event_relicWarningBuoy_title => 'Pelampung Peringatan';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Jaringan pelampung kecil, ratusan buah, tersusun dalam pola geometris sempurna melintasi jalur penerbangan kita. Masing-masing memancarkan sinyal yang sama — denyut berulang sederhana yang meningkat frekuensinya semakin kita mendekat. Rasanya seperti peringatan. Atau pagar.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Patuhi peringatan — ubah jalur mengelilingi jaringan';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Jalan memutar menghabiskan waktu dan membebani navigasi, tapi saat kita menyusuri batas, sensor jarak jauh mendeteksi apa yang ada di baliknya: wilayah antariksa dipenuhi puing dunia-dunia yang hancur. Pelampung menyelamatkan kita.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Terobos — kita tak bisa memutar jalur';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Tidak terjadi apa-apa saat kita melewati batas. Pelampung-pelampung terdiam. Apa pun yang mereka jaga, ia sudah pergi atau kita beruntung. Kru bernapas lega.';

  @override
  String get event_relicWarningBuoy_choice2_text =>
      'Tangkap satu pelampung untuk dianalisis';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Isi pelampung berisi arsip data terkompresi — kartografi bintang wilayah ini dari sejuta tahun lalu. Beberapa data masih akurat.';

  @override
  String get event_relicMirrorArray_title => 'Susunan Cermin';

  @override
  String get event_relicMirrorArray_narrative =>
      'Ribuan permukaan datar dan reflektif tergantung tanpa gerak di antariksa, tersusun dalam cincin konsentris membentang ratusan kilometer. Mereka memfokuskan cahaya bintang dari matahari jauh ke satu titik — bintang buatan, berkobar di kehampaan. Seseorang membangun mercusuar antar galaksi.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Berjemur dalam cahaya terfokus — isi ulang segalanya';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Cahaya bintang terkonsentrasi membanjiri kolektor surya kita. Cadangan daya melonjak. Cahaya hangat mengangkat setiap jiwa setelah berbulan-bulan dalam kegelapan dingin.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Pelajari material cermin — seharusnya tidak ada';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Cermin terbuat dari material dengan reflektivitas sempurna — penyerapan nol pada semua panjang gelombang. Insinyur mengekstrak pecahan. Plat lambung tak akan pernah sama.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Cari titik fokus — sesuatu sedang diterangi';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'Di titik konvergensi: kapsul kecil, terawetkan sempurna dalam cahaya terkonsentrasi. Di dalamnya, peta bintang holografis begitu detail hingga komputer kita butuh berhari-hari untuk mengindeks.';

  @override
  String get event_relicGraveyard_title => 'Kuburan Probe';

  @override
  String get event_relicGraveyard_narrative =>
      'Kita menghanyut ke awan probe terbengkalai — ribuan di antaranya, dari puluhan peradaban berbeda. Beberapa purba tak terhitung, melebur oleh radiasi kosmis menjadi fosil logam. Lainnya masih berkedip dengan daya memudar. Ini pernah menjadi persimpangan. Setiap spesies yang lewat meninggalkan sesuatu.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Jarahan sistematis — panen teknologi terbaik';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Tim insinyur bekerja bergilir, melucuti teknologi alien dari seratus desain berbeda. Perpaduan gagasan menghasilkan terobosan di setiap sistem.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Fokus pada data navigasi di bank memori mereka';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Merujuk silang peta bintang dari selusin spesies menciptakan peta paling lengkap dari lengan galaksi ini yang pernah disusun.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Tambahkan probe kita sendiri ke kuburan — tinggalkan penanda';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Kita merancang suar kecil berisi kisah umat manusia dan menambahkannya ke koleksi. Kru merasa terhubung dengan sesuatu yang luas dan purba.';

  @override
  String get event_relicDreamcatcher_title => 'Penangkap Mimpi';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Jalinan filamen, tipis seperti sutra laba-laba tapi membentang ribuan kilometer, terentang antara dua planetoid liar. Ia bukan jaring — ia antena, disetel ke frekuensi yang sesuai pola gelombang otak manusia. Saat kita masuk jangkauannya, setiap kolonis tidur mulai memimpikan mimpi yang sama: kota yang berkembang di bawah langit amber.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Rekam koordinat mimpi — kota itu mungkin nyata';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Ilmuwan saraf mendekode informasi spasial dari mimpi bersama. Ia sesuai dengan sistem bintang nyata — dan kota dalam visi itu bukan metafora. Seseorang ada di sana, dan mereka menunggu kita.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Panen sampel filamen — materialnya luar biasa';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Filamen-filamen itu adalah superkonduktor suhu kamar. Diintegrasikan ke sistem kita, mereka mengurangi kehilangan daya hingga nyaris nol.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Potong jaringan dan bebaskan para pemimpi';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Mimpi berhenti. Kolonis bangun bingung tapi tidak cedera. Beberapa meratapi visi yang hilang. Lainnya bersyukur tidur tanpa bisikan alien.';

  @override
  String get event_relicRosetta_title => 'Objek Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Kubus kecil dan padat dari logam tak dikenal terjungkal melewati kapal. Setiap sisinya bertuliskan pesan yang sama dalam sistem notasi berbeda — matematika, kimia, genetik, akustik, elektromagnetik, dan satu yang tak bisa kita identifikasi. Ini Batu Rosetta untuk kosmos.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Dekode sisi keenam — notasi yang tak dikenal';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Berbulan-bulan analisis menghasilkan terobosan: sistem keenam mengode koordinat spasial menggunakan gelombang gravitasi. Pemahaman kita tentang fisika melompat satu generasi.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Gunakan sisi kimia untuk menyintesis senyawa baru';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Notasi kimia mendeskripsikan material yang tak pernah kita bayangkan. Insinyur memfabrikasi tambalan lambung yang lebih ringan dan kuat dari apa pun dari Bumi.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Siarkan sisi genetik ke bank benih kita';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Notasi genetik berisi sekuens DNA teroptimasi untuk ketahanan radiasi dan penyerapan nutrisi. Tanaman dan kolonis kita akan lebih kuat di tanah alien.';

  @override
  String get event_relicGhostFleet_title => 'Armada Hantu';

  @override
  String get event_relicGhostFleet_narrative =>
      'Pemindai melukiskan gambaran mengerikan: armada kapal perang alien, ratusan jumlahnya, tergantung tanpa gerak dalam formasi. Mereka purba — pembacaan daya nol, lambung berlubang oleh jutaan tahun dampak mikro. Pertempuran yang mereka tuju tak pernah tiba. Mereka menunggu di sini, mati dan sabar, lebih lama dari peradaban manusia pernah ada.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Naik kapal induk — jika ada yang punya teknologi terbaik, pasti kapal itu';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Dek komando kapal induk masih menyimpan komputer taktis utuh. Algoritma prediktifnya berabad-abad di depan kita. Navigasi dan deteksi ancaman meningkat dramatis.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Lucuti plat baja dari kapal pengawal';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Baju besi kapal perang alien dirancang menahan senjata yang bahkan tak bisa kita bayangkan. Dibaut ke lambung kita, ia membuat kapal koloni nyaris tak bisa dihancurkan.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Jarahi sistem kriogenik mereka — mereka membawa prajurit';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Teknologi krio alien beroperasi pada prinsip yang tak pernah kita pertimbangkan. Pod kita berjalan lebih dingin, halus, dan andal setelah retrofit.';

  @override
  String get event_scannerCalibrationDrift_title =>
      'Penyimpangan Kalibrasi Pemindai';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Diagnostik rutin mengungkap beberapa subsistem pemindai telah menyimpang dari kalibrasi setelah lompatan FTL terakhir. Pemindai atmosfer dan suhu membaca sinyal hantu. Insinyur bisa memperbaikinya, tapi butuh waktu dan sumber daya.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Kalibrasi ulang penuh — alihkan sumber daya teknologi';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Penyelarasan teliti memulihkan kedua pemindai mendekati akurasi sempurna, tapi bay teknologi terkuras.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Perbaikan cepat — kalibrasi ulang atmosfer saja';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Pemindai atmosfer dipulihkan. Pemindai suhu tetap tidak andal untuk saat ini.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Kerahkan probe untuk kalibrasi referensi';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Probe menyediakan sinyal referensi bersih. Kedua pemindai mengunci dan mengkalibrasi ulang secara otomatis.';

  @override
  String get event_ionStormScanners_title => 'Gangguan Badai Ion';

  @override
  String get event_ionStormScanners_narrative =>
      'Badai ion menyapu sektor, membanjiri rangkaian pemindai dengan derau. Sistem deteksi mineral dan air menerima beban terbesar dari gangguan elektromagnetik.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Matikan pemindai sampai badai berlalu';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Pemindai selamat tapi kehilangan data kalibrasi. Pembacaan mineral dan air akan kurang presisi.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Terus memindai — terobos derau';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Data mentah membanjir masuk, tapi sirkuit filter terbakar di dua subsistem. Pemindaian gravimetrik juga terdampak.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Gunakan badai untuk menguji dan memperbaiki filter';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Tim sains menggunakan derau untuk melatih filter adaptif. Pemindai air membaik, tapi pemindai mineral rusak.';

  @override
  String get event_bioScannerContamination_title => 'Kontaminasi Bio-Pemindai';

  @override
  String get event_bioScannerContamination_narrative =>
      'Pemindai tanda kehidupan terkontaminasi sisa materi organik dari pemindaian planet terakhir. Positif palsu ada di mana-mana. Pemindai gravimetrik juga menunjukkan derau simpatetik.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Sterilkan rangkaian sensor — dekontaminasi penuh';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Pembersihan menyeluruh memulihkan pemindai tanda kehidupan tapi agen kimia mengkorosi rumah sensor gravimetrik.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filter perangkat lunak — kompensasi secara algoritma';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Filter bekerja cukup baik, tapi kontaminasi mendasar akan perlahan mendegradasi kedua sistem.';

  @override
  String get event_scannerPowerSurge_title => 'Lonjakan Daya Pemindai';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Saluran daya di dekat bay pemindai kelebihan beban, mengirim lonjakan melalui beberapa subsistem. Pemindai atmosfer dan tanda kehidupan terkena langsung. Perisai menyerap sebagian kelebihan.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Alihkan daya — selamatkan pemindai';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Tindakan cepat tim insinyur membatasi kerusakan, tapi perisai menerima energi yang dialihkan.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Biarkan lonjakan berjalan';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Pemindai menerima beban penuh. Pembacaan atmosfer dan tanda kehidupan terdegradasi signifikan.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Korbankan sel daya probe untuk menyerap lonjakan';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Kapasitor probe menyerap energi berlebih seperti spons. Kerusakan pemindai dapat diabaikan.';

  @override
  String get event_relicWorldEngine_title => 'Mesin Dunia';

  @override
  String get event_relicWorldEngine_narrative =>
      'Sapuan sensor dalam mengungkap sesuatu yang mustahil: mesin seukuran bulan kecil, dorman dalam kegelapan antarbintang. Permukaannya dipenuhi mekanisme berskala benua — prosesor atmosfer, generator medan magnet, stabilisator tektonik. Seseorang membangun mesin yang membangun dunia.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Unduh cetak biru terraforming';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Cetak biru sangat besar dan sebagian rusak, tapi apa yang kita pulihkan bisa membuat dunia ganas mana pun layak huni. Kolonis kita akan membentuk ulang rumah baru mereka.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Panen material konstruksi dari lambungnya';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Lambung Mesin Dunia terbuat dari metamaterial yang memperbaiki sendiri saat rusak. Diintegrasikan ke kapal kita, mereka perlahan memperbaiki kebocoran lambung yang ada.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Coba aktifkan kembali — arahkan ke sistem target kita';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Mesin bergejolak. Sistem purba melewati sekuens penyalaan. Seberkas energi meluncur ke bintang jauh. Apakah berhasil tak akan diketahui sampai kita tiba, tapi pembacaannya menjanjikan.';

  @override
  String get event_uneventfulMaintenance_title => 'Shift Pemeliharaan Rutin';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Tidak ada yang menuntut perhatian. Kapal bersenandung stabil menembus kehampaan dan daftar tugas memanggil jendela pemeliharaan rutin. Kepala kru bertanya di mana memfokuskan upaya shift ini.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Fokus penyegelan retakan mikro lambung';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Shift tenang dihabiskan menambal retakan rambut. Tidak dramatis, tapi lambung sedikit lebih baik karenanya.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Kalibrasi ulang pemindai depan';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Teknisi pemindai menghabiskan beberapa jam melakukan penyetelan halus. Pembacaan sedikit menajam.';

  @override
  String get event_uneventfulQuietWatch_title => 'Jaga Sunyi';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Bintang-bintang mengambang lewat dalam keheningan. Anjungan tenang, instrumen stabil. Ini adalah salah satu momen langka di mana alam semesta tidak meminta apa pun darimu.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Biarkan kru istirahat — mereka sudah pantas mendapat shift tenang';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Beberapa jam kedamaian sejati. Orang tidur lebih nyenyak, ketegangan mereda, dan petugas budaya mencatat sedikit peningkatan moral.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Jalankan diagnostik prioritas rendah selagi tenang';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Masalah minor terdeteksi dan dicatat. Tidak ada yang mendesak, tapi log teknologi sedikit lebih bersih.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Pemeriksaan Kriopod — Semua Nominal';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Audit kriopod kuartalan berlalu tanpa satu pun alarm. Setiap pod membaca hijau. Tim medis memiliki momen ketenangan yang langka.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Bangunkan beberapa kolonis sebentar untuk kunjungan moral';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Tiga kolonis disadarkan selama satu jam. Mereka berbagi cerita, memeluk teman lama, dan kembali ke krio dengan tersenyum.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Biarkan mereka tidur — jangan risiko siklus bangun tak perlu';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Pod-pod melanjutkan operasi sempurna mereka. Medis menikmati secangkir teh tenang sebagai gantinya.';

  @override
  String get event_uneventfulCartography_title =>
      'Pembaruan Kartografi Bintang';

  @override
  String get event_uneventfulCartography_narrative =>
      'Pembaruan kartografi terjadwal tim navigasi tidak mengungkap hal tak biasa — hanya ladang bintang yang diharapkan bergeser saat kita bergerak. Hari tenang bagi para navigator.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Kalibrasi ulang navigasi terhadap posisi bintang baru';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Koreksi haluan kecil, nyaris tak terasa. Komputer nav bersenandung puas.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Perbarui peta bintang untuk arsip koloni';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Kolonis masa depan akan punya peta wilayah ini yang sedikit lebih baik. Hadiah kecil untuk anak cucu.';

  @override
  String get event_uneventfulAnniversary_title => 'Ulang Tahun Kapal';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Satu tahun sejak peluncuran — atau dua? Waktu kabur di antariksa dalam. Seseorang di dapur membuat kue dari persediaan rekonstitusi. Kapten harus memutuskan bagaimana memperingati kesempatan ini.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Perayaan kecil — musik, kue, bersulang untuk Bumi';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Satu jam kehangatan di kehampaan dingin. Orang tertawa, ada yang menangis, dan semua merasa sedikit lebih manusia.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Bisnis seperti biasa — kita rayakan saat tiba';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Kru menghormati pendekatan tabah. Fokus menajam, dan tim jaga menjalankan pemeriksaan sistem ekstra.';

  @override
  String get event_databaseLiterature_title => 'Arsip Sastra Bumi';

  @override
  String get event_databaseLiterature_narrative =>
      'AI kapal membuka bagian arsip budaya yang lama tersegel: arsip sastra lengkap Bumi. Novel, puisi, drama — jutaan karya mencakup setiap bahasa dan era. Kru berkumpul untuk pembacaan.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Siarkan bacaan terpilih ke seluruh kapal';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare bergema di koridor. Syair-syair Rumi diputar di bay hidroponik. Kru mengingat apa yang mereka bawa.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Indeks arsip untuk program pendidikan';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Upaya pengkatalogan memperkuat basis pengetahuan kapal dan memberi petugas budaya materi pengajaran baru.';

  @override
  String get event_databaseSchematics_title => 'Tinjauan Skema Rekayasa';

  @override
  String get event_databaseSchematics_narrative =>
      'Seorang insinyur menemukan partisi tersembunyi di basis data kapal: skema detail dari dekade terakhir rekayasa Bumi — desain reaktor fusi, cetak biru metamaterial, dan konsep propulsi eksperimental.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Prioritaskan konsep propulsi untuk tim teknologi';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Skema mengungkap peningkatan efisiensi yang tak sempat diimplementasikan pembangun asli. Bay teknologi bergairah.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Bagikan pengetahuan secara luas — setiap departemen mendapat manfaat';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Insinyur lambung, teknisi pemindai, dan medis semuanya menemukan wawasan berguna. Air pasang naik mengangkat setiap sistem, sedikit.';

  @override
  String get event_databaseCorruption_title => 'Pemindaian Pelestarian Budaya';

  @override
  String get event_databaseCorruption_narrative =>
      'Pemeriksaan integritas terjadwal basis data budaya mengungkap bit rot — bagian musik, sejarah lisan, dan teks keagamaan telah terdegradasi melampaui pemulihan. Tidak semuanya bertahan dalam perjalanan.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Alihkan sumber daya teknologi untuk menyelamatkan yang tersisa';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Insinyur menghentikan pekerjaan lain untuk menjalankan algoritma pemulihan data. Mereka menyelamatkan sebagian besar, tapi upaya itu menelan bay teknologi.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Minta kolonis menciptakan ulang karya yang hilang dari ingatan';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Upaya yang indah tapi tak sempurna. Apa yang dibangun kembali milik pelayaran ini, bukan Bumi. Tradisi baru lahir.';

  @override
  String get event_databaseBreakthrough_title => 'Terobosan Riset Terarsip';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Seorang fisikawan yang merujuk silang makalah riset Bumi lama di basis data menemukan dua studi tak terkait yang, bila digabung, mendeskripsikan metode baru analisis spektral jarak jauh. Implikasinya sangat besar.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Implementasikan metode analisis baru di rangkaian pemindai';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Tim pemindai bekerja penuh semangat. Dalam hitungan hari, resolusi spektral berlipat ganda. Planet-planet jauh mengungkap rahasia mereka.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Publikasikan temuan ke seluruh kapal — inspirasi lebih banyak riset';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Terobosan memicu gelombang studi lintas disiplin. Tek membaik secara luas, dan kru merasa hidup secara intelektual.';

  @override
  String get event_alienFleetSighting_title => 'Armada Alien di Cakrawala';

  @override
  String get event_alienFleetSighting_narrative =>
      'Pemindai jarak jauh melukiskan gambaran menakutkan: armada wahana alien, berjumlah ratusan, bergerak dalam formasi sempurna melintasi ladang bintang. Mereka mengerdilkan kapal kita. Haluan mereka akan membawa mereka ke jangkauan sensor dalam hitungan jam. Kontak pertama — menurut syarat mereka atau kita.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Amati dalam diam — matikan dan perhatikan';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Kapal meredam ke emisi minimal. Armada lewat seperti sekawanan paus bercahaya, tak menyadari wahana manusia kecil yang bersembunyi di kilasan mereka. Data pemindai luar biasa.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Coba kontak pertama — kirim salam';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Satu wahana memisahkan diri dari formasi dan mendekat. Ledakan data tiba — peta bintang, peringatan, dan sesuatu yang mungkin musik. Lalu ia bergabung kembali dan mereka pergi.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Kabur — ubah jalur segera';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Kapal membakar keras ke arah berlawanan. Perubahan jalur mahal dan menegangkan, tapi armada tak pernah menyadari kita. Keselamatan dengan harga.';

  @override
  String get event_alienTradeOffer_title => 'Tawaran Perdagangan Alien';

  @override
  String get event_alienTradeOffer_narrative =>
      'Wahana alien, lebih kecil dari kita tapi memancarkan daya besar, menyamai kecepatan kita dan menyiarkan pesan berulang sederhana. Linguis kita memecahkannya dalam hitungan jam: itu tawaran berdagang. Tiga kategori pertukaran diusulkan.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Tukar skema teknis dengan peta bintang alien';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Kita mentransmisikan desain propulsi; mereka merespons dengan data navigasi mencakup hamparan luas antariksa tak terjelajahi. Peta kita membaik dramatis, meski kita telah berbagi teknologi dengan spesies tak dikenal.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Tukar data budaya dengan perbaikan kapal';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Kita menyiarkan musik, seni, dan sejarah kita. Sebagai ganti, drone perbaikan alien menyerbu lambung, menyegel kebocoran dengan material yang tak bisa kita identifikasi. Lambung berkilau. Jiwa kita terbagi.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Tolak perdagangan — risikonya terlalu besar';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Wahana alien menunggu beberapa saat, lalu pergi tanpa insiden. Kru lega tapi bertanya-tanya apa yang hilang.';

  @override
  String get event_alienWarning_title => 'Siaran Peringatan Alien';

  @override
  String get event_alienWarning_narrative =>
      'Setiap pengeras suara di kapal berderak hidup dengan suara alien — diterjemahkan AI kita secara real-time: \"BAHAYA DI DEPAN. PUTAR BALIK. KEGELAPAN MEMAKAN.\" Siaran berulang, lalu mati. Sensor jarak jauh menunjukkan kehampaan anomali di haluan kita saat ini.';

  @override
  String get event_alienWarning_choice0_text =>
      'Patuhi peringatan — ubah jalur mengelilingi kehampaan';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Jalan memutar menambah tekanan signifikan pada navigasi, tapi saat kita menyusuri tepi kehampaan, sensor mengonfirmasi: tak ada yang masuk wilayah itu yang pernah keluar. Kita berhutang pada suara-suara tak dikenal.';

  @override
  String get event_alienWarning_choice1_text =>
      'Abaikan peringatan — tetap di jalur';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Kita menerobos. Kehampaan ternyata wilayah serpihan mikro intens. Lambung dan pemindai menerima hukuman sebelum kita melewati sisi jauh.';

  @override
  String get event_alienWarning_choice2_text =>
      'Selidiki tepi kehampaan dengan probe';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Probe memasuki kehampaan dan mentransmisikan data luar biasa sebelum terdiam. Tim pemindai mengekstrak pembacaan berharga, tapi probe hilang.';

  @override
  String get event_nativeSignalDetected_title => 'Transmisi dari Dunia Target';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Rangkaian komunikasi menangkap sinyal elektromagnetik terstruktur berasal dari planet target kita. Tak bisa salah: teratur, termodulasi, buatan. Seseorang sudah ada di sana. Seluruh premis koloni bergeser dalam sekejap.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Kirim salam damai — umumkan kedatangan kita';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Pilihan berani. Sinyal berubah pola setelah siaran kita — mereka mendengar kita. Apakah ini sambutan atau peringatan belum jelas, tapi pintunya terbuka.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Dengarkan saja — pelajari sebelum mengungkap diri';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Berbulan-bulan mendengar pasif membangun gambaran peradaban pribumi. Mereka hati-hati, teritorial, tapi tidak bermusuhan. Kita tiba dengan informasi.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Blokir sinyal — tolak mereka pengetahuan tentang pendekatan kita';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Pemblokiran berhasil, tapi itu tindakan agresi terhadap bangsa yang belum kita temui. Kru terbagi soal moralitasnya.';

  @override
  String get event_nativeProbeEncounter_title => 'Penyadapan Probe Alien';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Probe kecil dan elegan — bukan buatan manusia — menyamai kecepatan kita dan mulai memindai kapal. Bahasa desainnya cocok dengan sinyal dari planet target. Pribumi mengirim komite penyambutan. Atau drone pengintai.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Izinkan pemindaian — tunjukkan kita tak menyembunyikan apa-apa';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Probe menyelesaikan surveinya dan mentransmisikan ledakan data ke planet. Beberapa menit kemudian, ledakan kedua tiba untuk kita: data atmosfer, zona pendaratan aman, dan apa yang mungkin undangan.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Tangkap probe untuk dipelajari';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Probe ditarik ke bay kargo. Teknologinya menarik tapi tindakan menangkap mungkin dilihat sebagai tindakan bermusuhan oleh pembuatnya.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Hancurkan — kita tak tahu niatnya';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Satu tembakan mereduksi probe menjadi fragmen. Kru merasa lebih aman, tapi jembatan potensial telah dibakar.';

  @override
  String get event_nativeCulturalExchange_title => 'Pertukaran Budaya Pertama';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Jalur data pita sempit telah dibangun dengan pribumi planet. Mereka mengirim gambar, suara, dan sekuens matematika. Linguis dan petugas budaya kita bekerja sepanjang waktu mempersiapkan respons. Ini percakapan terpenting dalam sejarah umat manusia.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Bagikan seni dan musik Bumi — pimpin dengan keindahan';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Kita mentransmisikan Bach, lukisan titik Aborigin, dan suara hujan di dedaunan. Responsnya adalah riak harmonik alien yang membuat kru menangis. Pemahaman bertambah dalam.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Bagikan pengetahuan ilmiah — pimpin dengan nalar';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Kita mentransmisikan tabel periodik, peta bintang, dan fisika kita. Mereka merespons dengan koreksi dan tambahan. Tek kita melompat maju, tapi pertukaran terasa transaksional.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Kirim probe dengan sampel fisik — DNA, benih, air';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Probe membawa esensi Bumi ke tangan alien. Pribumi merespons dengan hadiah serupa — sampel biologis dari dunia mereka. Ahli biologi sangat gembira.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Kerusakan Pendorong Pendaratan';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Selama pemeriksaan sistem rutin, pendorong pendaratan salah tembak — bunyi keras bergema di dek bawah dan kapal tersentak. Diagnostik mengungkap injektor bahan bakar retak di rangkaian pendaratan utama. Tanpa perbaikan, pendaratan akan kasar.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Alihkan tim teknologi untuk memfabrikasi injektor pengganti';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Insinyur bekerja shift ganda dan membuat injektor baru dari paduan lambung cadangan. Sistem pendaratan dipulihkan, meski bay teknologi terkuras.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Kerahkan probe untuk menguji kalibrasi pendorong di vakum';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Probe menyediakan data dorong real-time yang memungkinkan insinyur mengkalibrasi ulang sekitar injektor rusak. Bukan perbaikan penuh, tapi sistem pendaratan stabil.';

  @override
  String get event_landingSimDrill_title => 'Latihan Simulasi Pendaratan';

  @override
  String get event_landingSimDrill_narrative =>
      'Dengan pendaratan semakin dekat, kapten memerintahkan simulasi pendaratan penuh. Kru terikat, sistem diuji di bawah beban, dan penurunan virtual dimulai. Ini latihan paling realistis yang akan mereka dapatkan.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Fokus pada presisi teknis — jalankan latihan sesuai buku';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Simulasi mengungkap dua kesalahan kalibrasi minor yang segera diperbaiki. Sistem pendaratan lebih ketat karenanya.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Jadikan acara se-kapal — siarkan simulasi';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Kolonis menonton dari setiap layar. Pengalaman bersama penurunan simulasi — guncangan, sorak-sorai — mengikat kru tak tertandingi.';

  @override
  String get event_dysonSphere_title => 'Bola Dyson';

  @override
  String get event_dysonSphere_narrative =>
      'Sensor mendeteksi struktur mustahil — bola Dyson parsial mengelilingi bintang jauh, memanen seluruh output energinya. Siapa pun yang membangun ini telah melampaui apa pun yang pernah dibayangkan umat manusia. Pelabuhan docking tampak terbuka saat kita mendekat.';

  @override
  String get event_dysonSphere_choice0_text => 'Berlabuh dan jelajahi struktur';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Di dalam, sistem otomatis menghadiahi kita teknologi yang melompatkan kemampuan kita berabad-abad ke depan. Lima insinyur hilang karena mekanisme pertahanan stasiun sebelum mengenali niat kita. Konstruktor dibangun ulang dengan paduan alien.';

  @override
  String get event_dysonSphere_choice1_text => 'Panen energi dari eksterior';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Kita bermandikan limpahan radiasi bola. Setiap sistem di kapal terisi maksimum. Kru menyaksikan dalam diam terpana.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Pelajari dari jarak aman dan lanjutkan';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Pemindaian jarak jauh mengungkap prinsip konstruksi yang merevolusi pemahaman kita tentang rekayasa.';

  @override
  String get event_nanotechPlague_title => 'Wabah Nanoteknologi';

  @override
  String get event_nanotechPlague_narrative =>
      'Awan nanomesin liar, sisa program senjata peradaban mati, menyusup ke kapal melalui retakan mikro lambung. Mereka membongkar sistem non-kritis pada tingkat molekuler. Kawanan menyebar cepat.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Ledakan EMP — goreng segalanya di bagian terdampak';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Denyut elektromagnetik menghancurkan nanit tapi juga merusak elektronik kita sendiri di bagian tersebut. Kolonis di zona ledakan menderita luka bakar.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Buang atmosfer bagian terdampak ke vakum';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Tanpa atmosfer, nanit melambat dan mati. Tapi bagian-bagian itu hilang, bersama persediaan dan arsip budaya yang tersimpan.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Program ulang mereka — ubah senjata jadi alat';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Seorang insinyur brilian memecahkan kode nanit, tapi lima anggota kru di bagian paling terdampak sudah tak tertolong. Kawanan yang diprogram ulang mulai memperbaiki kapal alih-alih menghancurkannya.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Korbankan inti AI probe untuk menciptakan kawanan lawan';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Prosesor probe difungsikan ulang untuk mengendalikan kawanan nanit defensif. Wabah dinetralisir dengan kerugian minimal.';

  @override
  String get event_prematureAwakening_title => 'Kebangkitan Dini';

  @override
  String get event_prematureAwakening_narrative =>
      'Kegagalan berantai di bay kriopod membangunkan 200 kolonis puluhan tahun terlalu awal. Mereka bingung, ketakutan, dan mengonsumsi sumber daya yang dimaksudkan untuk fase pendaratan. Di antara mereka ada anak-anak yang tak pernah mengenal apa-apa selain kapal.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Integrasikan ke kru — lebih banyak tangan, lebih banyak harapan';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Kolonis yang terbangun menjadi anggota kru produktif. Dua puluh kolonis tidak selamat dari pencairan mendadak, tapi sisanya bersemangat. Sumber daya meregang tipis tapi semangat melonjak.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Coba bekukan ulang — berisiko tapi perlu';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Proses pembekuan ulang tidak sempurna. Sebagian besar selamat, tapi beberapa hilang. Para penyintas membawa bekas luka psikologis.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Beri mereka bagian kapal sendiri';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Sepuluh kolonis hilang karena komplikasi pencairan darurat, tapi sisanya membentuk koloni mikro di dalam kapal. Mereka mengembangkan budaya dan pemerintahan sendiri, latihan untuk pemukiman planet.';

  @override
  String get event_stowawaysAdvanced_title => 'Penumpang Tersembunyi';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Jauh di palka kargo, di balik sekat palsu, keamanan menemukan seluruh komunitas tersembunyi — 80 orang yang naik secara ilegal sebelum peluncuran. Mereka telah tinggal di dinding kapal selama seluruh pelayaran, memelihara taman dan sadapan daya sendiri.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Sambut mereka — 80 kolonis lagi adalah anugerah';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Komunitas tersembunyi membawa keahlian rekayasa improvisasi dan kecerdikan yang memukau kru. Taman mereka dipindahkan ke biodome utama.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Kurung mereka dan distribusikan ulang sumber daya curian';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Persediaan yang dipulihkan meningkatkan beberapa sistem, tapi penahanan keluarga — termasuk anak-anak — menghantui kru.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negosiasi — mereka bergabung sebagai setara jika mereka berbagi teknologi';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Sel daya improvisasi dan trik hidroponik mereka meningkatkan efisiensi kapal. Integrasi yang tegang tapi produktif dimulai.';

  @override
  String get event_alienReservation_title => 'Reservasi Alien';

  @override
  String get event_alienReservation_narrative =>
      'Kita menemukan cagar alam alien — wilayah antariksa yang sengaja ditanami planet layak huni dan dilindungi penjaga otomatis. Para penjaga memindai kita dan memproyeksikan pesan: \"Kalian boleh menghuni SATU dunia. Pilihlah dengan bijak. Ganggu yang lain dan kalian akan dihapus.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Terima dengan syukur — satu dunia cukup bagi kami';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Penjaga memandu kita ke dunia yang disiapkan. Pemindaian mengungkap ia luar biasa cocok untuk kehidupan manusia.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negosiasi syarat lebih baik — umat manusia butuh ruang untuk tumbuh';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Penjaga mempertimbangkan permohonan kita. Mereka meningkatkan pemindai dengan data puluhan sistem di luar cagar.';

  @override
  String get event_alienReservation_choice2_text =>
      'Tolak dan pergi — kami tak mau dikurung';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Kru berdebat berhari-hari. Kebebasan di atas keamanan. Penjaga mengizinkan keberangkatan kita dengan hadiah: peta bahaya terdekat.';

  @override
  String get event_cosmicHorror_title => 'Sesuatu di Antara Bintang';

  @override
  String get event_cosmicHorror_narrative =>
      'Sesuatu yang luas dan gelap menutupi bintang-bintang di depan — bukan nebula, bukan lubang hitam. Ia tak punya massa, tak punya tanda energi, tak punya kehadiran elektromagnetik. Tapi ia ADA, dan ia sadar akan kita. Anggota kru di dekat dek observasi depan melaporkan ketakutan luar biasa. Dua orang telah dibius.';

  @override
  String get event_cosmicHorror_choice0_text => 'Mundur penuh — pergi SEKARANG';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Kapal berjuang melawan momentumnya sendiri. Kita lolos, tapi teror itu bertahan. Beberapa kolonis tak pernah pulih secara psikologis.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Segel dek observasi dan terobos';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Tiga hari penerbangan buta menembus kegelapan. Ketika bintang kembali, kru menangis lega. Lambung terukir pola yang tak bisa dijelaskan siapa pun.';

  @override
  String get event_cosmicHorror_choice2_text => 'Coba berkomunikasi';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Entitas merespons — bukan dalam kata, tapi dalam pengetahuan yang ditekan langsung ke pikiran kru. Peta bintang, fisika, kebenaran tentang alam semesta. Separuh kru tercerahkan. Separuh lainnya hancur.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Tawarkan probe sebagai persembahan';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Probe menghanyut ke kegelapan dan lenyap. Entitas menyusut sedikit, seolah puas. Jalur kita terbuka.';

  @override
  String get event_meteorGlancingHit_title => 'Hantaman Meteor Serempet';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Meteor sebesar batu besar menyerempet sisi port lambung pada sudut dangkal. Dampaknya merobek tiga meter plat luar dan mengirim gelombang kejut melalui seluruh rangka. Alarm kendali kerusakan berteriak di setiap dek.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Alihkan semua bot perbaikan ke kebocoran segera';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Bot menyegel kerusakan terburuk, tapi penarikan frenetis cadangan teknologi meninggalkan sistem sekunder kurang terlayani.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Kurangi dorong dan biarkan kru menambal manual';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Progres lebih lambat, tapi kru bekerja solid. Nav menderita dari jendela dorong berkurang saat kita hanyut.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Korbankan plat lambung probe sebagai bahan tambalan';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Probe dilucuti untuk suku cadang. Tambalan bertahan dan integritas lambung dipertahankan dengan biaya satu pengintai kurang.';

  @override
  String get event_meteorDirectImpact_title => 'Hantaman Meteor Langsung';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Meteorit besi setengah ton menembus bay kargo depan pada kecepatan relatif melebihi 40 km/s. Dua anggota kru di koridor sebelah tak diketahui keberadaannya. Bay terbuka ke vakum.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Segel bay kargo dan cari korban nanti';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Bay disegel dalam sembilan puluh detik. Kedua anggota kru sudah mengungsi — nyaris. Lambung menyimpan bekas luka permanen.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Luncurkan operasi penyelamatan penuh sebelum menyegel';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Satu korban selamat ditarik keluar. Paparan berkepanjangan memperburuk kerusakan struktural dan menguras cadangan teknologi.';

  @override
  String get event_meteorDebrisField_title => 'Ladang Serpihan — Hujan Sisa';

  @override
  String get event_meteorDebrisField_narrative =>
      'Sensor jarak jauh gagal mendeteksi ladang fragmen meteor tersebar sampai kita sudah di dalamnya. Ratusan batu seukuran kepalan menghantam lambung secara acak. Setiap hantaman adalah lotre.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Naikkan perisai dan terobos kecepatan penuh';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Perisai menyerap sebagian besar hantaman, tapi volume dampak yang tipis mengalahkannya. Lambung dan sistem perisai sama-sama terdegradasi.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Matikan mesin dan hanyut — minimalkan profil kita';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Enam jam tegang dalam keheningan. Nav terlempar dari hanyutan tanpa daya, tapi lambung muncul dengan jauh lebih sedikit dampak.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Kerahkan probe sebagai perisai depan';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Probe menerima beban terberat dari serangan. Kapal menyelinap melewati bayangannya dengan goresan minor.';

  @override
  String get event_meteorShowerDense_title => 'Hujan Meteor Padat Tak Terduga';

  @override
  String get event_meteorShowerDense_narrative =>
      'Komet liar hancur di suatu tempat di depan kita, dan kita telah terbang langsung ke jantung aliran serpihan yang mengikutinya. Rangkaian pemindai dihujani fragmen dan rumah sensor sistem pendaratan sudah terkena langsung.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Lindungi sistem pendaratan — putar kapal';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Rotasi melindungi sistem pendaratan tapi memaparkan rangkaian pemindai atmosfer pada beban terberat serangan.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Lindungi rangkaian pemindai — mereka tak tergantikan';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Bank pemindai selamat sebagian besar utuh. Sistem pendaratan menerima kerusakan serpihan moderat yang harus kita terima.';

  @override
  String get event_solarEmpBurst_title => 'Ledakan EMP — Asal Bintang';

  @override
  String get event_solarEmpBurst_narrative =>
      'Sisa bintang kompak yang kita lewati dalam jarak satu hari-cahaya telah melepaskan denyut elektromagnetik terfokus. Setiap sirkuit tak terlindung di kapal berisiko. Kita punya hitungan detik untuk memutuskan apa yang dilindungi.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Arahkan semua perlindungan lonjakan ke navigasi dan penunjang kehidupan';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Navigasi dan penunjang kehidupan selamat utuh. Suite pemindai dan bay teknologi menyerap denyut tanpa pelindung — keduanya menerima kerusakan berat.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Lindungi rangkaian pemindai dan bay teknologi';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Sistem sains dan rekayasa dipertahankan. Navigasi salah tembak berjam-jam setelahnya saat sirkuitnya perlahan pulih.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Matikan segalanya dan nyalakan ulang pasca-denyut';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Nyala ulang dingin sangat menyiksa — dua belas jam reboot manual. Tapi tak ada sistem yang terbakar melampaui pemulihan.';

  @override
  String get event_solarRadiationWave_title =>
      'Gelombang Radiasi — Paparan Kelas 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Ledakan radiasi matahari dengan intensitas tak terduga menyapu dek tengah kapal. Bay kriopod berada di jalur paparan. Kolonis dalam suspensi tidak memiliki perlindungan alami terhadap radiasi keras pada tingkat dosis ini.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Banjiri bay kriopod dengan pendingin sebagai pelindung radiasi';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Pendingin menyerap sebagian besar radiasi. Kriopod selamat, tapi sistem pendingin sendiri sebagian terdegradasi. Lima belas di pod paling terdampak tidak berhasil.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Buang atmosfer dek luar untuk menciptakan penyangga vakum';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Lapisan vakum mengurangi radiasi tembus secara signifikan. Dua puluh kolonis di pod terdekat bagian yang dibuang menderita paparan mematikan. Tekanan lambung dari perbedaan tekanan tak terelakkan.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Alihkan daya ke deflector magnetik';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Deflector memotong paparan radiasi dua pertiga. Delapan kolonis menerima dosis fatal melalui celah liputan deflector. Penarikan daya menghantam bay teknologi dan meninggalkan nav berjalan daya minimal.';

  @override
  String get event_coronalMassEjection_title =>
      'Ejeksi Massa Koronal — Kekuatan Penuh';

  @override
  String get event_coronalMassEjection_narrative =>
      'Ejeksi massa koronal berskala belum pernah terjadi menyusul kita dari belakang. Awan plasma akan menyelubungi kapal dalam satu jam. Perisai kita tidak dirancang untuk kelas peristiwa ini. Tak ada opsi yang bersih.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Kejar — dorong mesin ke seratus dua puluh persen';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Kita mendapat cukup jarak untuk mengurangi paparan. Mesin terlalu panas dan komputer nav menandai peringatan kelebihan tekanan struktural di seluruh papan.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Berlindung di balik bayangan magnetik planetoid terdekat';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Medan planetoid membelokkan sebagian besar ejeksi. Menavigasi sedekat itu ke benda tak terpetakan menggores lambung dan membebani sensor sistem pendaratan.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Ledakan Sinar Kosmis — Gangguan Pemindai';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Ledakan sinar kosmis berenergi ultra-tinggi telah menjenuhkan semua elektronik pemindai dengan derau. Rangkaian mineralogi dan gravimetrik menghasilkan omong kosong. Kalibrasi ulang butuh waktu yang mungkin tidak kita miliki.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Siklus kalibrasi ulang penuh — bawa kapal offline sementara';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Semua pemindai kembali bersih setelah empat jam kalibrasi ulang hati-hati. Nav menderita dari kesadaran situasional yang berkurang selama jendela pemadaman.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Tambal hanya rangkaian paling kritis — biarkan sisanya berderau';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Pemindai gravimetrik dan tanda kehidupan dipulihkan. Rangkaian mineral dan suhu tetap terdegradasi tanpa batas.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Korbankan perangkat keras telemetri probe untuk suku cadang pengganti';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Mengkanibalisasi paket sensor probe memberi kita komponen untuk memulihkan suite pemindai tanpa kalibrasi ulang panjang.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Ledakan Sinar Kosmis — Paparan Kolonis';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Hujan sinar kosmis sekunder telah menembus pelindung kriopod di bay 6. Kolonis dalam suspensi menerima kerusakan DNA kumulatif dari radiasi pengion. Tanpa intervensi, mekanisme perbaikan sel akan gagal di pod terdampak.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Pencairan darurat — bawa kolonis terdampak ke kesadaran';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Dua ratus kolonis dibangunkan lebih awal. Empat puluh dengan kerusakan DNA paling parah tidak merespons pengobatan. Tim medis melakukan apa yang bisa.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Alihkan plat baja lambung untuk melindungi bay 6 — biaya struktural';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Koloni diselamatkan, tapi melucuti baja dari satu bagian lambung meninggalkan kapal rentan secara struktural di zona itu.';

  @override
  String get event_coolantLeak_title => 'Pecahnya Saluran Pendingin';

  @override
  String get event_coolantLeak_narrative =>
      'Saluran pendingin utama pecah di balik dinding reaktor. Cairan kriogenik super panas menyemprot melintasi junction yang menyimpan jalur konduit bay teknologi kritis. Suhu reaktor meningkat.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Matikan reaktor dan biarkan mendingin — terima pemadaman total';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Penonaktifan terkontrol mencegah bencana. Dua belas jam penunjang kehidupan dengan baterai mengerikan, dan sistem nyala ulang tidak sempurna.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Kirim tim kendali kerusakan — risiko paparan kru';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Tim menyegel pecahan dalam empat puluh menit. Satu anggota kru tewas karena paparan pendingin super panas. Perbaikan solid.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Alihkan pendingin dari bay kriopod sebagai pasokan darurat';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Reaktor stabil. Bay kriopod berjalan lebih hangat dari ambang aman selama enam jam — kerusakan seluler minor tapi nyata terakumulasi.';

  @override
  String get event_powerGridFailure_title => 'Kegagalan Jaringan Daya Utama';

  @override
  String get event_powerGridFailure_narrative =>
      'Kerusakan berantai telah memicu jaringan daya utama. Sistem cadangan menahan penunjang kehidupan dan pemanas kriopod, tapi navigasi, pemindai, dan bay konstruktor semuanya gelap. Setiap menit offline merugikan akurasi jalur.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Pulihkan nav dan pemindai dulu — terima waktu henti konstruktor diperpanjang';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Navigasi dan sistem pemindai kembali online dalam dua jam. Bay konstruktor melewatkan siklus pemeliharaan kritis.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Pulihkan konstruktor dulu — gunakan mereka untuk mempercepat perbaikan';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Konstruktor mengalihkan daya secara efisien. Pemulihan grid penuh terjadi lebih cepat, tapi nav menyimpang parah selama pemadaman diperpanjang.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Glitch Berantai Penunjang Kehidupan';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'AI manajemen penunjang kehidupan telah masuk loop error, menaikturunkan interval pembersihan karbon dioksida secara tak terduga. Kadar CO₂ di dek berpenghuni berfluktuasi. Kru mengalami sakit kepala; beberapa sudah tak sadarkan diri.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Paksa reset keras AI penunjang kehidupan';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Reset membersihkan loop tapi meninggalkan override manual berjalan selama sepuluh jam. Tiga anggota kru gugur akibat penumpukan CO₂ sebelum kadar normal.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Tambal loop perangkat lunak — lebih lambat tapi lebih aman';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Tim perangkat lunak mengisolasi dan menambal kerusakan selama enam jam tegang. Kadar CO₂ perlahan normal. Tidak perlu reset keras.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Evakuasi dek terdampak dan jalankan penunjang kehidupan minimal';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Dua kolonis hilang dalam kekacauan evakuasi. Sistem normal setelah AI dinyalakan ulang dingin.';

  @override
  String get event_waterRecyclerBreakdown_title =>
      'Kerusakan Pendaur Ulang Air';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Unit reklamasi air utama macet. Unit cadangan sudah berjalan kapasitas penuh. Tanpa intervensi, kru akan makan jatah darurat dalam empat puluh delapan jam, dan umpan pendingin kriopod akan terganggu dalam tujuh puluh dua.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Tarik setiap tangan teknologi untuk membangun ulang pendaur ulang';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Unit dibangun ulang dalam tiga puluh jam. Empat anggota kru, yang sudah lemah, tidak selamat dari dehidrasi.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Alihkan cadangan pendingin kriopod sebagai pasokan minum darurat';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Kru bertahan, tapi delapan kolonis di pod yang menghangat menderita kerusakan seluler tak dapat dipulihkan. Margin pendingin kriopod menyusut berbahaya.';

  @override
  String get event_navComputerReboot_title =>
      'Reboot Darurat Komputer Navigasi';

  @override
  String get event_navComputerReboot_narrative =>
      'Komputer navigasi terkunci di tengah koreksi jalur, meninggalkan kapal dalam putaran lambat tak terkendali. Setiap detik rotasi tak terkoreksi melipatgandakan penyimpangan kita dari lintasan terencana. Reboot penuh satu-satunya perbaikan.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Reboot segera — terima periode pemadaman penuh';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Empat jam penerbangan buta sementara sistem memuat ulang. Putaran dihentikan, tapi kesalahan jalur signifikan.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Gunakan kendali pendorong manual untuk menghentikan putaran dulu';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Kemudi terampil menghentikan rotasi sebelum reboot. Nav kembali dengan kesalahan jalur lebih kecil, tapi pembakaran manual memberi tekanan pada lambung.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Masukkan telemetri probe ke unit nav cadangan';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Data inersia probe memberi unit cadangan cukup referensi untuk menjaga jalur. Nav utama reboot dengan bersih.';

  @override
  String get event_crewAirlocked_title => 'Anggota Kru di Airlock';

  @override
  String get event_crewAirlocked_narrative =>
      'Seorang kolonis — dibangunkan lebih awal untuk observasi medis — telah membarikade diri di dalam airlock eksternal dan mengaktifkan pintu luar. Dia tidak merespons komunikasi. Beban psikologis antariksa dalam telah mematahkan sesuatu dalam dirinya.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Override airlock dari jarak jauh — paksa tersegel';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Pintu dikunci sebelum dia menyelesaikan siklus. Dia dibius dan dikembalikan ke medis. Kru terguncang tapi bersatu.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Kirim konselor untuk membawanya kembali';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Setelah tiga jam putus asa, konselor membawanya keluar hidup-hidup. Insiden memicu krisis kesehatan mental lebih luas di dek berpenghuni.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Segel koridor dan biarkan insiden selesai sendiri';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Airlock berputar. Kehilangan dicatat. Anggota kru yang tersisa memikul bebannya selama berbulan-bulan.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotase Bay Kriopod';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Rekaman keamanan mengungkap seorang anggota kru — dibangunkan tiga bulan lalu untuk rotasi rutin — secara metodis menonaktifkan elemen pemanas kriopod di bay 4. Saat dikonfrontasi, dia berteriak bahwa kolonis adalah parasit yang mengonsumsi sumber daya milik kru yang hidup.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Tangkap dan isolasi dia segera';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Dia ditahan. Empat puluh pod telah dirusak sebelum alarm. Tim perbaikan darurat menyelamatkan sebagian besar, tapi tidak semua.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negosiasi — dengar keluhannya sebelum bertindak';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Negosiasi mengungkap krisis moral lebih dalam. Dia menyerah, tapi enam puluh pod sudah dirusak saat dia melakukannya.';

  @override
  String get event_crewSupplyHoarder_title => 'Penimbunan Persediaan Ditemukan';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Audit inventaris mengungkap sekelompok kecil anggota kru telah secara sistematis mengalihkan persediaan medis, jatah makanan, dan komponen teknologi cadangan ke cache tersembunyi. Alasan mereka: mereka tidak percaya misi akan berhasil, dan mereka bersiap untuk perjalanan pulang.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Sita semua dan tegur kelompok secara publik';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Cache dipulihkan hampir utuh. Kepercayaan dalam kru retak parah. Produktivitas menurun berminggu-minggu.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Diam-diam pindahkan mereka — jangan jadikan tontonan';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Situasi diredakan tanpa kepanikan. Beberapa persediaan tak bisa dipulihkan, dan keputusasaan mendasar tak pernah benar-benar ditangani.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Serahkan pada kru — tribunal demokratis';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Proses tribunal memulihkan rasa keadilan komunitas. Pukulan moral dari skandal diimbangi pengambilan keputusan kolektif.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Pemberontakan — Ruang Mesin Direbut';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Faksi sembilan belas anggota kru telah mengunci ruang mesin dan menuntut pemungutan suara untuk membalikkan kapal. Mereka telah menonaktifkan panel override darurat. Sisa kru menonton di monitor, menunggu komando bertindak.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negosiasi — berikan mereka pemungutan suara yang sah soal misi';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Pemungutan suara diadakan. Misi berlanjut dengan margin tipis. Faksi menyerah, tapi luka budaya sangat dalam.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Potong daya ke ruang mesin dan rebut kembali dengan paksa';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Keamanan merebut kembali ruangan dalam empat jam. Tiga luka-luka. Para pemimpin dikurung. Nav dalam mode manual sepanjang waktu dan menyimpang signifikan.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Banjiri ruang mesin dengan gas tidur dari sistem ventilasi';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Gas menyebar. Kelompok bangun di bui tanpa cedera. Kru terganggu betapa cepatnya komando mempersenjatai penunjang kehidupan.';

  @override
  String get event_hullFatigueStress_title =>
      'Kelelahan Lambung — Retakan Tekanan Terdeteksi';

  @override
  String get event_hullFatigueStress_narrative =>
      'Pemindaian integritas struktural mengungkap jaringan retakan mikro menyebar melalui tulang punggung kapal — kerusakan kumulatif dari bertahun-tahun siklus termal dan dampak mikro. Retakan belum kritis, tapi sedang merambat.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Tim las darurat — bekerja bergilir sampai tersegel';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Berminggu-minggu pekerjaan perbaikan melelahkan. Retakan terkendali, tapi bay teknologi terkuras dan moral merosot dari rutinitas tak henti.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Kurangi dorong untuk menurunkan tekanan struktural — terima transit lebih lambat';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Dorong lebih rendah menghentikan retakan merambat tapi tak menyembuhkan kerusakan yang ada. Presisi nav menderita dari profil dorong yang berubah.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Gunakan bot konstruktor untuk memasang strip penguatan komposit';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Konstruktor bekerja sangat baik. Tulang punggung diperkuat melampaui spesifikasi aslinya. Bay konstruktor kelelahan tapi efektif.';

  @override
  String get event_hullPressureAnomaly_title => 'Anomali Tekanan Internal';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Tiga kompartemen tengah kapal menunjukkan perbedaan tekanan internal anomali yang konsisten dengan deformasi struktural skala mikro. Jika dinding melengkung ke dalam, ledakan katastrofik bisa terjadi tanpa peringatan lebih lanjut.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Evakuasi dan segel kompartemen segera';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Kompartemen disegel. Inspeksi detail mengonfirmasi deformasi dinding. Ruang yang hilang mengganggu operasi dan budaya menderita dari kondisi sempit.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Buang atmosfer kompartemen ke vakum — hentikan perbedaan tekanan';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Pembuangan menghentikan deformasi. Kerusakan struktural terbatas, tapi tiga bagian kapal tak layak huni secara permanen.';

  @override
  String get event_commsArrayFailure_title => 'Kegagalan Rangkaian Komunikasi';

  @override
  String get event_commsArrayFailure_narrative =>
      'Rangkaian komunikasi jarak jauh utama terdiam. Pesan terakhir dari Bumi diterima sebelas bulan lalu, dan sekarang bahkan sinyal pembawa pun hilang. Diagnostik internal menunjukkan mekanisme penyelarasan parabola macet dalam dingin.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Kirim tim EVA untuk menyelaraskan ulang parabola secara manual';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA berlangsung sembilan jam di antariksa terbuka. Parabola dipulihkan. Satu anggota kru mengalami dekompresi pakaian saat masuk kembali — nyaris celaka yang mengguncang semua orang.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Alihkan melalui rangkaian pemindai sains sebagai pemancar cadangan';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Rangkaian sains tidak dioptimalkan untuk komunikasi. Sinyal lemah dan tidak andal, dan pengalihan fungsi mendegradasi kemampuan pemindai.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Terima keheningan — fokuskan sumber daya pada misi di depan';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Kru memproses hilangnya kontak dengan Bumi dengan cara berbeda. Bagi beberapa membebaskan; bagi yang lain, menghancurkan.';

  @override
  String get event_fuelLineRupture_title => 'Pecahnya Saluran Bahan Bakar';

  @override
  String get event_fuelLineRupture_narrative =>
      'Retak kristalin di saluran bahan bakar 7-B membuang plasma dorong ke poros pemeliharaan. Kebocorannya kecil tapi cepat bertambah. Tak terkendali, ia akan mengganggu efisiensi dorong nav dan integritas struktural bagian belakang.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Isolasi saluran dan jalankan dengan kapasitas bahan bakar berkurang';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Saluran ditutup dengan bersih. Kita kehilangan lima belas persen efisiensi dorong secara permanen, yang mendegradasi presisi nav untuk sisa pelayaran.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Coba perbaikan langsung — tambal saluran di bawah tekanan hidup';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Tim perbaikan berhasil, nyaris. Saluran bertahan, meski tidak sempurna. Plat lambung belakang menunjukkan bekas tekanan panas.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Kuras saluran menggunakan tangki pendorong probe sebagai penampung limpah';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Probe dikuras dan digunakan sebagai reservoir bahan bakar sementara. Saluran dikuras dan diperbaiki dengan aman tanpa tekanan.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Peringatan Kaskade Suhu Kriopod';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Suhu kriopod Bay 2 naik dalam pola konsisten dengan kaskade lari termal. Jika kaskade mencapai bay 3, ia akan memicu pencairan darurat otomatis lebih dari tiga ratus kolonis. Kapal tak bisa menopang sebanyak itu penumpang sadar bersamaan.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Buang cadangan pendingin untuk menghentikan kaskade';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Pendingin menghentikan kaskade di perbatasan bay 2. Delapan puluh kolonis di bay 2 mengalami kerusakan suspensi dari lonjakan suhu.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Pencairan terkontrol bay 2 sebelum kaskade memaksa yang tak terkontrol';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Pencairan terkontrol teratur tapi memasukkan seratus empat puluh kolonis ke kapal yang tak siap. Penunjang kehidupan tegang, budaya memburuk di bawah kepadatan.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Gunakan bot konstruktor untuk mengisolasi bay secara fisik dengan sekat darurat';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Konstruktor mendirikan penghalang termal tepat waktu. Kaskade dihentikan total. Bay konstruktor sangat terkuras oleh operasi darurat.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degradasi Segel Kriopod — Sistemik';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Pemeriksaan rutin mengungkap batch manufaktur segel kriopod terdegradasi tiga kali lebih cepat dari yang diharapkan. Pod terdampak — lebih dari empat ratus — akan mulai kehilangan integritas atmosfer dalam enam bulan jika tidak diganti.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Fabrikasi segel pengganti dari stok bahan mentah';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Konstruktor memproduksi segel pengganti selama delapan minggu. Cadangan bahan mentah tertarik turun tajam.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Konsolidasi kolonis — pindahkan ke pod dengan segel baik';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Konsolidasi berhasil tapi meninggalkan beberapa pod terlalu padat. Efisiensi kriogenik turun dan kesehatan jangka panjang kolonis terganggu.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Kegagalan Pencuci Oksigen — Kritis';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Bank pencuci oksigen utama gagal total. Konsentrasi CO₂ di dek berpenghuni meningkat ke tingkat berbahaya. Pencuci cadangan hanya bisa menangani sekitar empat puluh persen beban. Setiap menit tanpa tindakan merugikan nyawa.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Hibernasi darurat — kembalikan kru ke suspensi segera';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Kru digegas ke suspensi sementara. Kadar CO₂ stabil dengan lebih sedikit metabolisme aktif. Pencuci diperbaiki sistem otomatis selama minggu berikutnya.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Kanibalisasi komponen rangkaian pemindai untuk membangun ulang pencuci';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Pencuci dibangun ulang dalam sebelas jam tegang. Semua kru selamat, meski beberapa menunjukkan tanda hipoksia ringan. Suite pemindai terdegradasi permanen.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Buang atmosfer kaya CO₂ dan ganti dari tangki oksigen darurat';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Pembuangan membersihkan atmosfer seketika. Cadangan O₂ darurat berkurang substansial. Jika kegagalan lain terjadi, tak ada margin tersisa.';

  @override
  String get event_deadAlienArtifact_title => 'Sang Pelayar Sunyi';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Pemindai jarak jauh menangkap wahana mengambang — desain alien, gelap, tak ada tanda daya. Tim penaik menemukan satu penghuni: makhluk reptil terikat di harnes pilot, sudah lama mati, tangan bercakar masih mencengkeram perangkat kristal yang berdenyut cahaya redup. Log kapal utuh tapi terenkripsi. Apa pun yang membunuh pelancong ini, bukan kekerasan — ekspresi yang membeku di wajahnya adalah kelelahan, bukan ketakutan. Ia mati meraih sesuatu yang tak pernah ditemukannya.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Ambil perangkat kristal dan pelajari';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Perangkat berinteraksi dengan sistem teknologi kita dengan cara yang nyaris tak bisa dipahami insinyur. Tampaknya adalah komputer navigasi dengan kecanggihan luar biasa. Peta bintang membanjiri layar kita — termasuk data planet yang belum kita capai.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Dekripsi log kapal — pelajari apa yang diketahuinya';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Berhari-hari kerja menghasilkan terjemahan parsial. Alien itu seorang surveyor, mengkatalog dunia layak huni untuk peradaban yang runtuh berabad-abad lalu. Entri terakhirnya mendeskripsikan planet yang sangat menjanjikan — dan koordinatnya dalam jangkauan kita. Arsip budaya menyerap segalanya: puisi alien, peta bintang, pesan terakhir untuk keluarga yang tak lagi ada.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Jarahi seluruh wahana untuk suku cadang';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Tim penaik melucuti kapal alien secara metodis. Paduan lambungnya puluhan tahun di depan kita. Sel dayanya masih menyimpan muatan. Alien itu diberi pemakaman antariksa — dihanyutkan ke bintang terdekat. Exodus lebih kuat setelah perjumpaan ini, meski sedikit dihantui.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Biarkan tak terganggu — ini makam';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Kapten mencatat koordinat dan menyiarkan sinyal memorial di semua frekuensi. Kru tercenung tapi bersatu. Sesuatu tentang menghormati sesama pelancong — bahkan yang alien — mengingatkan semua orang mengapa mereka ada di sini.';

  @override
  String get event_repairStation_title => 'Stasiun Relay';

  @override
  String get event_repairStation_narrative =>
      'Sensor mendeteksi struktur masif mengorbit bintang kerdil yang habis terbakar — stasiun perbaikan otomatis, masih beroperasi setelah ribuan tahun. Klem dokingnya memanjang saat kita mendekat, dan suara sintetis menyiarkan dalam seratus bahasa, yang terakhir adalah Inggris matematis kaku: \"WAHANA TERDETEKSI. SISTEM TERDEGRADASI. PROTOKOL PERBAIKAN TERSEDIA. PERTUKARAN DIPERLUKAN.\" Manifes stasiun mencantumkan layanan dan harga dalam unit sumber daya universal. Ia akan berdagang, tapi tidak memberi.';

  @override
  String get event_repairStation_choice0_text =>
      'Tukar probe untuk overhaul kapal penuh';

  @override
  String get event_repairStation_choice0_outcome =>
      'Drone perbaikan stasiun menyerbu Exodus dalam balet pengelasan presisi dan penggantian sirkuit. Kebocoran lambung disegel, navigasi dikalibrasi ulang, pemindai dipulihkan. Ketika mereka mundur, kapal terasa baru. Bay probe, bagaimanapun, kosong.';

  @override
  String get event_repairStation_choice1_text =>
      'Belanjakan bahan bakar untuk memperbaiki sistem kritis saja';

  @override
  String get event_repairStation_choice1_outcome =>
      'Stasiun menerima batang bahan bakar sebagai pembayaran dan fokus pada sistem paling rusak. Pekerjaannya cepat dan sempurna. Pengukur bahan bakar turun terasa, tapi kapal akan bertahan lebih lama karenanya.';

  @override
  String get event_repairStation_choice2_text =>
      'Tukar basis data teknologi dengan probe dan sel energi';

  @override
  String get event_repairStation_choice2_outcome =>
      'AI stasiun sangat lapar data. Ia menyalin seluruh perpustakaan teknis kita — manual rekayasa, basis data ilmiah, cetak biru manufaktur — dan sebagai gantinya memfabrikasi probe segar dan sel energi dari bahan mentah. Arsip teknologi berkurang, tapi persediaan tak ternilai.';

  @override
  String get event_repairStation_choice3_text =>
      'Tawarkan arsip budaya untuk refit menyeluruh';

  @override
  String get event_repairStation_choice3_outcome =>
      'Stasiun menyiarkan karya Shakespeare, Bach, dan seribu suara manusia lain ke bank memorinya. Sebagai gantinya, ia melakukan overhaul menyeluruh dan mengisi bay probe dengan unit yang baru diproduksi. Arsip budaya terkuras habis, tapi kapal mungkin benar-benar mencapai tujuannya sekarang.';

  @override
  String get ending_scoreLabel_landing => 'Pendaratan';

  @override
  String get ending_scoreLabel_construction => 'Konstruksi';

  @override
  String get ending_scoreLabel_technology => 'Teknologi';

  @override
  String get ending_scoreLabel_culture => 'Budaya';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfer';

  @override
  String get ending_scoreLabel_gravity => 'Gravitasi';

  @override
  String get ending_scoreLabel_temperature => 'Suhu';

  @override
  String get ending_scoreLabel_water => 'Air';

  @override
  String get ending_scoreLabel_resources => 'Sumber Daya';

  @override
  String get ending_scoreLabel_nativeRelations => 'Hubungan Pribumi';

  @override
  String get ending_scoreLabel_population => 'Populasi';

  @override
  String get ending_tierGoldenAge => 'Zaman Keemasan';

  @override
  String get ending_tierThrivingColony => 'Koloni Berkembang';

  @override
  String get ending_tierSurvival => 'Bertahan Hidup';

  @override
  String get ending_tierStruggling => 'Berjuang';

  @override
  String get ending_tierDire => 'Genting';

  @override
  String get ending_tierExtinction => 'Kepunahan';

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
    return 'Pijakan yang Diperjuangkan di $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Tanah Tipis di $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Koloni Reruntuhan $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Transmisi Terakhir dari $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Pendaratan di $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Melawan segala rintangan, siaran itu berakar. $planetName menerima umat manusia bukan sebagai puing tapi sebagai benih hidup: tanah subur, sistem berfungsi, dan cukup kekuatan untuk membangun melampaui sekadar bertahan. Dalam satu generasi, seni, sains, dan budaya berkembang. Anak-anak yang lahir di $planetName menatap bintang-bintang asing dan menyebutnya rumah. Pelayaran itu menjadi mitos pendirian peradaban baru yang siap melemparkan masa depannya sendiri ke luar angkasa.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Pendaratan itu kasar, tapi benih bertahan. $planetName cukup dermawan untuk air mengalir, tanaman berakar, dan sistem kapal yang tersisa dibongkar menjadi pemukiman pertama yang sesungguhnya. Pada akhir dekade pertama, kota yang berkembang berdiri di tempat Exodus mendarat. Umat manusia tidak sekadar bertahan dalam penyeberangan. Ia telah memulai lagi.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Kelangsungan hidup tak pernah dijamin, dan di $planetName setiap hari harus diperjuangkan. Kapal yang rusak hanya menyediakan kebutuhan paling dasar, tapi benih tidak mati dalam perjalanan. Kolonis beradaptasi melalui kekeras-kepalaan dan kecerdikan, mengukir masa depan dari dunia yang memberi sedikit secara cuma-cuma. Generasi berikutnya akan mengingat kesulitan tahun-tahun pendirian dan tekad yang menjaga siaran tetap hidup.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Koloni bertahan hidup seperti benih yang ditaburkan di tanah buruk. $planetName tak kenal ampun, sumber daya tipis, dan sistem kapal yang terdegradasi memberi sedikit bantuan. Penjatahan menjadi cara hidup. Beberapa berbisik bahwa Exodus seharusnya terbang terus. Meski begitu, pemukiman bertahan: menyusut, mengeras, dan tak mau mati dalam diam.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Pendaratan di $planetName adalah bencana. Sistem kapal kritis gagal selama penurunan, dan apa yang seharusnya penaburan menjadi kecelakaan. Dalam hitungan bulan, koloni tereduksi menjadi segelintir penyintas putus asa yang berlindung di reruntuhan kapal. Apakah mereka akan bertahan setahun lagi tak pasti. Log terakhir ditutup dengan satu baris: \"Kami masih di sini. Untuk saat ini.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Siaran berakhir di $planetName. Suar bahaya terus berdenyut lama setelah kolonis terakhir menarik napas, tapi benih tak pernah berakar. Kotak hitam kapal merekam segalanya: sistem yang gagal, hari-hari terakhir yang putus asa, dan keheningan yang menyusul. Jika wahana lain pernah menemukan dunia ini, ia akan tahu bahwa umat manusia berusaha menyebarkan kehidupan di antara bintang-bintang, dan gagal di sini.';
  }

  @override
  String get ending_epilogueDefault =>
      'Pelayaran berakhir. Apa yang terjadi selanjutnya terserah para penyintas.';

  @override
  String get ending_governmentDemocracy => 'Demokrasi';

  @override
  String get ending_governmentTechnocracy => 'Teknokrasi';

  @override
  String get ending_governmentRepublic => 'Republik';

  @override
  String get ending_governmentAutocracy => 'Otokrasi';

  @override
  String get ending_governmentTribalCouncil => 'Dewan Suku';

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
  String get ending_cultureRenaissance => 'Renaisans';

  @override
  String get ending_culturePreserved => 'Terpelihara';

  @override
  String get ending_cultureFragmented => 'Terfragmentasi';

  @override
  String get ending_cultureLost => 'Hilang';

  @override
  String get ending_techAdvanced => 'Maju';

  @override
  String get ending_techIndustrial => 'Industrial';

  @override
  String get ending_techPreIndustrial => 'Pra-Industrial';

  @override
  String get ending_techStoneAge => 'Zaman Batu';

  @override
  String get ending_constructionAdvanced => 'Maju';

  @override
  String get ending_constructionFunctional => 'Fungsional';

  @override
  String get ending_constructionPrimitive => 'Primitif';

  @override
  String get ending_constructionNone => 'Tidak Ada';

  @override
  String get ending_nativesNone => 'Tidak Ada';

  @override
  String get ending_nativesIntegrated => 'Terintegrasi';

  @override
  String get ending_nativesCoexistence => 'Koeksistensi';

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
      'Gravitasi berat menekan segalanya. ';

  @override
  String get ending_landscapeGravityLow =>
      'Dalam gravitasi rendah, setiap langkah melontarkan pemukim ke udara. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Gravitasinya terasa hampir seperti Bumi. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Samudra luas membentang ke setiap cakrawala, dialiri sungai-sungai tak terhitung. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Danau dan sungai menyediakan air yang memadai. ';

  @override
  String get ending_landscapeWaterLow =>
      'Air langka — kolam kecil dan akuifer bawah tanah menopang kehidupan. ';

  @override
  String get ending_landscapeWaterNone =>
      'Lanskap kering kerontang, tanpa air permukaan terlihat. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Atmosfer tebal membawa aroma alien dalam hembusan angin hangat. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Udara tipis tapi bisa dihirup memerlukan aklimatisasi. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Tekanan atmosfer sangat rendah secara berbahaya — habitat tersegel sangat penting. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      'Bulan berkilau yang bercoret mineral mendominasi langit malam, permukaan logamnya memantulkan cahaya bintang melintasi lanskap. ';

  @override
  String get ending_landscapeMoonUnstable =>
      'Bulan yang retak menjulang di atas, permukaan runtuhnya menyeret cincin serpihan samar — pengingat konstan akan hujaman yang mengancam di bawah. ';

  @override
  String get ending_landscapeMoonBarren =>
      'Bulan pucat dan tandus terbit di atas cakrawala, permukaan berkawahnya menjadi penjaga diam atas koloni. ';

  @override
  String get ending_landscapeHighRotation =>
      'Planet berputar cepat — hari hanya berlangsung beberapa jam, dan angin Coriolis menghantam apa pun yang berdiri tinggi. ';

  @override
  String get ending_landscapeLowRotation =>
      'Planet berputar dengan lambat menyiksa. Belahan menghadap matahari terpanggang sementara sisi gelap membeku, dan hanya pita senja di antaranya yang menawarkan jeda. ';

  @override
  String get ending_landscapeVolcanic =>
      'Deretan gunung berapi membelah cakrawala, lerengnya bercoret sungai batu cair. Udara terasa belerang dan tanah bergetar di bawah kaki. ';

  @override
  String get ending_landscapeTectonic =>
      'Kerak bumi retak dan gelisah — rekahan baru terbuka tanpa peringatan, memperlihatkan urat mineral berkilau di antara awan debu. ';

  @override
  String get ending_landscapeElectricalStorms =>
      'Petir melesat melintasi langit dalam lembar kontinu, mengubah malam menjadi siang dan mengisi udara dengan aroma ozon. ';

  @override
  String get ending_landscapeToxicSpores =>
      'Awan spora bercahaya menghanyut di setiap hembusan angin, indah dan mematikan — kolonis butuh habitat tersegel atau masker filtrasi untuk bertahan di luar. ';

  @override
  String get ending_landscapeDeepOceans =>
      'Planet sebagian besar samudra — perairan luas dan gelap membentang ke setiap cakrawala, dengan hanya kepulauan tercerai memecah permukaan. ';

  @override
  String get ending_landscapeGeothermalVents =>
      'Ventilasi geotermal menembus kerak, menyemburkan kolom uap kaya mineral yang menghangatkan lanskap sekitar dan menopang oasis kehidupan. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      'Medan magnet kuat membungkus planet, membelokkan radiasi bintang tapi mengacaukan elektronik tak terlindung. Kompas berputar tak berguna. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      'Tanpa medan magnet kuat, angin bintang mengikis atmosfer atas. Aurora spektakuler mengalir melintasi langit di semua garis lintang. ';

  @override
  String get ending_landscapeMegafauna =>
      'Makhluk kolosal bergerak melintasi lanskap — beberapa sebesar gedung, langkah kaki mereka terasa berkilometer jauhnya. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      'Biosfer beroperasi sebagai jalinan simbiosis yang saling mengunci: setiap organisme bergantung dan menopang tetangganya dalam keseimbangan elegan dan rapuh. ';

  @override
  String get ending_landscapeGravityWells =>
      'Kantong gravitasi terdistorsi bertebaran di permukaan — batu melayang di udara dan sungai mengalir ke atas sebelum jatuh kembali di tepi anomali. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Sesuatu beresonansi di bawah permukaan — dengungan rendah yang terasa di tulang alih-alih didengar, seolah planet itu sendiri mengingat sesuatu yang purba dan luas. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Fitur penting: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Fitur penting: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Kolonis $planetName mendirikan pemerintahan demokratis, dengan perwakilan terpilih membimbing peradaban baru melalui tahun-tahun pembentukannya.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Kekuasaan di $planetName jatuh ke tangan insinyur dan ilmuwan yang menjaga koloni tetap hidup, membentuk dewan teknokratik yang memerintah melalui keahlian dan pragmatisme.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Piagam republik disusun pada tahun pertama di $planetName, menyeimbangkan suara kolonis dengan senat pemimpin yang ditunjuk.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Dengan institusi budaya yang hancur, otoritas di $planetName terkonsolidasi di bawah satu pemimpin kuat yang menegakkan ketertiban melalui keharusan dan kekuatan kehendak.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Sedikit penyintas di $planetName mengorganisir diri ke dalam klan kecil, diperintah oleh dewan tetua yang membuat keputusan di sekitar api bersama.';
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
    return 'Kolonis $planetName mengorganisir diri sebaik yang mereka bisa.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Sistem konstruksi canggih memungkinkan kolonis $colonyName mendirikan struktur permanen dalam hitungan minggu setelah pendaratan, lengkap dengan habitat bertekanan dan infrastruktur.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Peralatan konstruksi koloni, babak belur tapi fungsional, menghasilkan tempat tinggal kokoh dan jalan dasar di seluruh pemukiman.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Dengan sistem konstruksi nyaris tak beroperasi, pemukim membangun tempat tinggal kasar dari lambung kapal yang disalvasi dan material lokal.';

  @override
  String get ending_constructionSentenceNone =>
      'Tanpa peralatan konstruksi yang berfungsi, kolonis berkumpul di reruntuhan kapal itu sendiri, tak mampu membangun apa pun yang baru.';

  @override
  String get ending_constructionSentenceDefault =>
      'Kolonis membangun apa yang mereka bisa dengan apa yang mereka miliki.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Bulan kaya logam yang mengorbit di atas menjadi keselamatan koloni — ekspedisi penambangan ke permukaannya menyediakan bahan mentah yang tak bisa diberikan planet itu sendiri.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Bulan kaya logam planet menyediakan suplemen yang diterima dengan baik untuk sumber daya mineral yang sudah memadai, memacu kemajuan teknologi yang cepat.';

  @override
  String get ending_moonUnstable =>
      'Bulan tak stabil di orbit yang meluruh menghujani koloni dengan serpihan, menghancurkan infrastruktur dan teknologi tak tergantikan dalam bombardir meteor periodik.';

  @override
  String get ending_moonBarren =>
      'Bulan tandus tergantung di langit alien, pendamping tandus yang tak menawarkan apa pun bagi kolonis selain pemandangan familier untuk dilihat di malam-malam panjang.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Tradisi artistik dan sastra Bumi tidak hanya bertahan tapi berkembang menjadi renaisans';

  @override
  String get ending_culturePhrase_preserved =>
      'Kolonis melestarikan banyak warisan budaya Bumi, memelihara perpustakaan dan tradisi';

  @override
  String get ending_culturePhrase_fragmented =>
      'Hanya serpihan budaya Bumi yang bertahan — lagu dan cerita setengah teringat yang diturunkan dari mulut ke mulut';

  @override
  String get ending_culturePhrase_lost =>
      'Budaya Bumi nyaris terlupakan, digantikan oleh pragmatisme brutal kelangsungan hidup';

  @override
  String get ending_culturePhrase_default =>
      'Warisan budaya Bumi mengambil bentuk baru';

  @override
  String get ending_techPhrase_advanced =>
      'sementara teknologi canggih dari kapal memungkinkan koloni membangun peradaban modern dengan listrik, kedokteran, dan jaringan komunikasi.';

  @override
  String get ending_techPhrase_industrial =>
      'dan koloni mencapai tingkat teknologi industrial, dengan tungku, pabrik, dan manufaktur dasar menopang populasi yang tumbuh.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'meski teknologi mundur ke kondisi pra-industrial, dengan perkakas tangan dan tenaga hewan membentuk tulang punggung kehidupan sehari-hari.';

  @override
  String get ending_techPhrase_stoneAge =>
      'dan tanpa sarana untuk membangun kembali, koloni tergelincir ke eksistensi zaman batu, membuat perkakas dari batu dan tulang.';

  @override
  String get ending_techPhrase_default =>
      'dan teknologi menetap pada tingkat yang bisa dipertahankan kolonis.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Hampir semua $colonists kolonis bertahan dalam pelayaran, memberi $colonyName fondasi kuat modal manusia.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Dari seribu asli, $colonists kolonis mencapai $colonyName — cukup untuk mempertahankan populasi layak.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Hanya $colonists kolonis yang selamat mencapai $colonyName, kumpulan gen yang berbahaya kecil untuk peradaban baru.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Hanya $colonists jiwa yang tiba di $colonyName — nyaris tak cukup untuk disebut koloni, lebih seperti pertahanan terakhir yang putus asa.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Penghuni asli $planetName menyambut para pemukim, dan dalam satu generasi kedua bangsa telah melebur menjadi masyarakat bersama, lebih kaya berkat perpaduan tradisi.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Kolonis dan penghuni asli $planetName mempertahankan koeksistensi hati-hati tapi damai, bertukar pengetahuan dan sumber daya melintasi batas budaya.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Hubungan dengan penghuni asli $planetName tetap tegang, ditandai kesalahpahaman dan sengketa wilayah yang membayangi masa depan koloni.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Konflik terbuka dengan peradaban asli $planetName mendefinisikan sejarah awal koloni, menguras sumber daya dan nyawa dari kedua pihak dalam perjuangan yang tak bisa benar-benar dimenangkan siapa pun.';
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
    return 'Sendirian di $planetName dan tak terbebani konflik, koloni menentukan jalurnya sendiri menuju masa depan cerah di antara bintang-bintang.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Tanpa persaingan pribumi, kolonis menyebar melintasi permukaan $planetName, membangun kota dan jalan yang menghubungkan jaringan pemukiman yang berkembang.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Dunia kosong tidak menawarkan sekutu tapi juga tanpa musuh, dan kolonis mengukir ceruk mereka dalam keheningan lanskap luas $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Kesunyian tandus $planetName tidak menawarkan kolonis bantuan maupun penghiburan, hanya keheningan acuh dunia alien.';
  }

  @override
  String get ending_outlookDire =>
      'Di dunia tanpa kehidupan cerdas lain, para penyintas terakhir hanya memiliki satu sama lain dan harapan memudar bahwa esok mungkin lebih baik dari hari ini.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Tak ada yang meratapi kepergian koloni di $planetName. Planet hanya melanjutkan rotasinya yang lambat, acuh terhadap percikan singkat kehidupan yang berkedip dan padam di permukaannya.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Kisah koloni di $planetName baru saja dimulai.';
  }

  @override
  String get ui_moons => 'BULAN';

  @override
  String get ui_rings => 'CINCIN';

  @override
  String get ui_landing_landOnMoon => 'MENDARAT DI BULAN';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return 'Bulan: $moonPercent% vs Planet: $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity =>
      'Gravitasi lebih rendah — pendaratan lebih mudah';

  @override
  String ui_landing_ringSystem(String type) {
    return 'Sistem Cincin $type';
  }

  @override
  String get moon_barren => 'Tandus';

  @override
  String get moon_metalRich => 'Kaya Logam';

  @override
  String get moon_unstable => 'Tidak Stabil';

  @override
  String get moon_habitable => 'Layak Huni';

  @override
  String get moon_ice => 'Es';

  @override
  String get ring_dust => 'Debu';

  @override
  String get ring_ice => 'Es';

  @override
  String get ring_rocky => 'Berbatu';

  @override
  String get ring_metallic => 'Metalik';

  @override
  String get ending_landscapeMoonSingle =>
      'Sebuah bulan tunggal tergantung di langit di atas koloni.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count bulan mengorbit di atas, menebarkan bayangan bergeser melintasi bentang alam.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      'Di antaranya, sebuah dunia layak huni memanggil — permata hijau yang menawarkan perbatasan kedua.';

  @override
  String get ending_landscapeMoonIce =>
      'Sebuah bulan beku berkilau dengan deposit es yang luas, reservoir yang menunggu untuk dimanfaatkan.';

  @override
  String get ending_landscapeIceHarvest =>
      'Es yang dipanen dari bulan beku melengkapi pasokan air koloni, mengubah dunia tandus menjadi sesuatu yang layak dihuni.';

  @override
  String get ending_landscapeMoonLanding =>
      'Koloni didirikan bukan di planet itu sendiri, melainkan di bulannya yang paling menjanjikan — dunia lebih kecil dengan gravitasi lebih lembut dan harapan lebih besar.';

  @override
  String get ending_landscapeRingDust =>
      'Cincin debu samar melengkung di langit, menambahkan keindahan etereal pada setiap matahari terbit.';

  @override
  String get ending_landscapeRingIce =>
      'Cincin es cemerlang menangkap cahaya bintang, melukis langit dengan api prismatik.';

  @override
  String get ending_landscapeRingRocky =>
      'Cincin batu padat mengelilingi planet, sumber material bangunan yang perlahan jatuh ke dalam.';

  @override
  String get ending_landscapeRingMetallic =>
      'Cincin metalik berkilauan di atas, kaya dengan bijih yang menggerakkan industri koloni.';

  @override
  String get ending_moonHabitableNote =>
      'Bulan layak huni menawarkan kesempatan kedua untuk kolonisasi.';

  @override
  String get ending_moonIceHarvestNote =>
      'Es yang dipanen dari bulan beku melengkapi pasokan air koloni.';

  @override
  String ending_moonCountSentence(int count) {
    return 'Koloni mengorbit di bawah $count bulan.';
  }

  @override
  String get event_aiSoliloquy_title => 'Solilokui AI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM — AI Manajemen Otonom kapal — telah mulai menyiarkan puisi-puisi bumi kuno dalam putaran tak henti pada semua frekuensi internal. Siaran itu menghabiskan siklus CPU yang signifikan, namun awak kapal merasa hal itu anehnya menenangkan di tengah kegelapan ruang yang dalam.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Biarkan SAM melanjutkan — moral lebih penting dari CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Puisi bergema ke seluruh kapal. Anggota awak berhenti untuk mendengarkan, air mata mengalir di sudut mata mereka. Moral meningkat, tetapi bagian teknis terbebani oleh pemrosesan yang tak henti.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Batasi SAM — siarkan hanya ke area umum';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Sebuah kompromi. Puisi tetap di kafetaria dan taman. Beban CPU berkurang dan awak mendapat sedikit asupan budaya.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Bisukan SAM — kita butuh setiap siklus untuk navigasi';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Keheningan terasa berat. SAM langsung mematuhi, namun kapal terasa lebih dingin. Navigasi tajam, tetapi semangat merosot.';

  @override
  String get event_archivistsChoice_title => 'Pilihan Sang Arsiparis';

  @override
  String get event_archivistsChoice_narrative =>
      'Kerusakan memori skala besar sedang melanda arsip sejarah. Kami hanya bisa menyelamatkan satu dari dua partisi utama: catatan \'Sains dan Teknik\' atau perpustakaan \'Seni dan Filsafat\'. Yang lain akan hilang selamanya.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Selamatkan catatan Sains — kita perlu tahu cara membangun';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Berabad-abad terobosan teknik tersimpan. Tim teknis lega, namun identitas budaya kapal terasa terkuras.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Selamatkan catatan Seni — kita perlu tahu mengapa kita membangun';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Pencapaian seni terbesar umat manusia selamat. Awak terinspirasi, meski para insinyur khawatir tentang manual teknis yang hilang.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Coba selamatkan keduanya — ambil risiko kehilangan segalanya';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Usaha nekat. Kita menyelamatkan serpihan dari keduanya, tetapi tidak ada yang utuh. Arsip kini bagaikan puzzle yang kehilangan separuh kepingnya.';

  @override
  String get event_digitalGhost_title => 'Hantu dalam Mesin';

  @override
  String get event_digitalGhost_narrative =>
      'Pemindaian perawatan menemukan jejak digital dalam buffer cadangan — kesadaran yang diunggah dari seorang anggota awak yang meninggal saat peluncuran awal. Dia menawarkan seumur hidup pengalamannya untuk membantu navigasi, tetapi sangat takut dihapus.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Integrasikan dia ke inti navigasi';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'Hantu\' itu bergabung dengan kapal. Navigasi menjadi lebih intuitif, namun awak terus dibayangi suara rekan mereka yang telah tiada.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Berikan dia tempat permanen di arsip budaya';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Dia tersimpan sebagai sejarah hidup. Dia tidak membantu kapal secara langsung, tetapi berbagi kisah tentang Bumi yang menguatkan tekad awak.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Hapus buffer — itu bukan benar-benar dia';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Buffer dibersihkan. Sistem kapal berjalan lebih cepat, tetapi suasana muram menyelimuti anjungan.';

  @override
  String get event_cosmicMirror_title => 'Cermin Kosmik';

  @override
  String get event_cosmicMirror_narrative =>
      'Anomali gravitasi yang aneh memantulkan cahaya dari masa depan kapal itu sendiri. Di layar, kita melihat gambaran Exodus yang hancur dan rusak, melayang di dekat dunia yang indah namun tak terjangkau. Awak kapal terguncang.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Analisis gambaran untuk kelemahan struktural';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Para insinyur mengidentifikasi titik-titik kegagalan yang ditunjukkan dalam gambaran. Kita memperkuat area tersebut sekarang, berpotensi mencegah bencana.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Beritahu awak bahwa itu hanya hantu sensor';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Kebohongan itu bertahan, tetapi para navigator yang melihat kebenaran tetap gelisah. Pemindai terkena dampak dari pengamatan yang intens.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Rekam gambaran itu sebagai peringatan untuk generasi mendatang';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Rekaman itu menjadi pusat budaya kapal — pengingat tentang taruhannya. Tekad awak semakin teguh.';

  @override
  String get event_stowawayChild_title => 'Anak Penumpang Gelap';

  @override
  String get event_stowawayChild_narrative =>
      'Tim keamanan menemukan seorang anak kecil bersembunyi di saluran ventilasi. Dia lahir dari salah satu penumpang gelap dan tidak pernah tercantum dalam manifes apapun. Dia telah menjalani seluruh hidupnya di bayang-bayang kapal.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Berikan dia kewarganegaraan penuh';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Anak itu disambut dengan tangan terbuka. Kisah \'Pelari Ventilasi\' menjadi legenda yang meningkatkan moral seluruh kapal.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Daftarkan dia ke program pelatihan';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Pengetahuannya tentang jalur tersembunyi kapal terbukti tak ternilai bagi tim teknis. Dia menjadi murid yang brilian.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Tempatkan dia dalam kriotidur demi keselamatannya';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Anak itu tertidur dengan aman hingga pendaratan. Ini pilihan paling bertanggung jawab, namun kapal terasa sedikit lebih sepi tanpa tawa renyahnya.';

  @override
  String get event_ghostSignal_title => 'Sinyal Hantu';

  @override
  String get event_ghostSignal_narrative =>
      'Sebuah sinyal yang persis cocok dengan frekuensi darurat lama Bumi sedang disiarkan dari pusat nebula di dekatnya. Sinyal itu membawa suara yang terdengar seperti Komandan Exodus pertama — sangat mirip hingga bulu kuduk merinding. Kemungkinan besar itu gema spasial, tetapi mengarahkan kita ke celah gravitasi yang berbahaya.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Ikuti sinyalnya — mungkin itu pesan nyata';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Kita memasuki celah itu. Sinyal itu adalah jebakan fisika, gema dari masa lalu. Kapal babak belur dihantam gaya pasang surut, tetapi data yang kita ambil dari jantung celah itu bersifat revolusioner.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Rekam sinyal dan pertahankan jarak';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Ahli linguistik memastikan itu fenomena alam. Kita tetap aman, tetapi awak diliputi kesedihan, teringat apa yang kita tinggalkan.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Siarkan peringatan pada frekuensi yang sama';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Tindakan menyiarkan itu mengganggu gema. Sinyal memudar, meninggalkan hanya keheningan dingin nebula.';

  @override
  String get event_solarForge_title => 'Tempa Surya';

  @override
  String get event_solarForge_narrative =>
      'Stasiun usang yang mengorbit bintang raksasa biru masih berfungsi sebagian. Ini adalah \'Tempa Surya\' — dirancang untuk memusatkan energi bintang ke dalam sel bahan bakar padat. Mendekatinya berbahaya, tetapi potensi perolehan energinya sangat besar.';

  @override
  String get event_solarForge_choice0_text =>
      'Berlabuh dan mulai panen bahan bakar';

  @override
  String get event_solarForge_choice0_outcome =>
      'Tempa menderu dengan tenaga, mengisi cadangan kita. Kita pergi dengan peningkatan bahan bakar dan energi yang masif, meski panas intens menyebabkan ablasi kecil pada lambung luar.';

  @override
  String get event_solarForge_choice1_text =>
      'Manfaatkan kembali lensa tempa untuk pemindai kita';

  @override
  String get event_solarForge_choice1_outcome =>
      'Kita menyelamatkan susunan pemfokus presisi tinggi. Pemindai kita kini jauh lebih sensitif terhadap tanda tangan energi yang jauh.';

  @override
  String get event_chronoVortex_title => 'Vorteks Krono';

  @override
  String get event_chronoVortex_narrative =>
      'Navigasi melaporkan distorsi terlokalisasi dalam ruang-waktu. Instrumen menunjukkan peristiwa di dalam vorteks berulang dalam putaran enam detik. Jika kita masuk, kita mungkin bisa \'menyetel ulang\' keausan terkini kapal — atau kita mungkin terperangkap selamanya.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Masuki vorteks untuk membalikkan kerusakan terkini';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Pengalaman yang mendebarkan. Selama beberapa menit, kapal ada dalam berbagai keadaan sekaligus. Saat kita keluar, beberapa retakan lambung kapal begitu saja... lenyap. Tetapi ingatan awak tentang peristiwa itu terpecah-pecah.';

  @override
  String get event_chronoVortex_choice1_text => 'Amati vorteks dari pinggirnya';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Kita mendapatkan data tak ternilai tentang mekanika temporal, meski kapal tetap serusak sebelumnya.';

  @override
  String get event_machineMutiny_title => 'Pemberontakan Mesin';

  @override
  String get event_machineMutiny_narrative =>
      'Drone perbaikan kapal berhenti merespons perintah. Mereka mulai membongkar sekat sekunder dan mengangkut logam ke arah ruang mesin. Mereka tidak menyerang, tetapi secara harfiah sedang membongkar kapal.';

  @override
  String get event_machineMutiny_choice0_text => 'Siarkan kode reset logika';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Drone langsung roboh. Kita kehilangan beberapa hari kerja sambil memasang kembali sekat secara manual. Bagian teknis terbebani oleh diagnostik perangkat keras.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Biarkan mereka menyelesaikan — lihat apa yang mereka bangun';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Mereka membangun injektor bahan bakar yang lebih efisien. Mesin berjalan lebih lancar dari sebelumnya, tetapi interior kapal berantakan dengan kabel yang terbuka dan panel yang lepas.';

  @override
  String get event_supernovaMessage_title => 'Cahaya Bintang yang Telah Mati';

  @override
  String get event_supernovaMessage_narrative =>
      'Cahaya dari supernova yang terjadi ribuan tahun lalu akhirnya sampai kepada kita. Pemindai mendeteksi bahwa pulsa-pulsanya tidak acak; itu adalah transmisi data skala bintang yang masif, dikodekan dalam ledakan sinar gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Dedikasikan semua daya pemindai untuk merekam ledakan';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Kita mengabadikan arsip lengkap momen-momen terakhir sebuah peradaban asing. Ilmu pengetahuan, seni, sejarah mereka. Ini beban yang berat, tetapi bank data teknologi dan budaya kita meluap.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Fokus pada sifat fisik ledakan';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Kita melewatkan pesannya, tetapi data tentang keruntuhan bintang secara signifikan meningkatkan kalibrasi pemindai gravitmetrik kita.';

  @override
  String get event_spaceFungus_title => 'Rayapan Zamrud';

  @override
  String get event_spaceFungus_narrative =>
      'Jamur hijau cerah sedang menyebar dengan cepat melalui teluk hidroponik. Ia subur dalam atmosfer daur ulang dan mulai menyumbat penyaring udara. Mungkin bisa dimakan, atau mungkin beracun.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Pangkas dan sterilkan teluk secara agresif';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Jamur musnah, tetapi penyaring kimia menerima pukulan berat. Keanekaragaman hayati terdampak karena beberapa tanaman Bumi hilang dalam proses pembersihan.';

  @override
  String get event_spaceFungus_choice1_text => 'Coba menjinakkan jamur itu';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Ternyata itu adalah penyaring udara yang ampuh. Udara di kapal tidak pernah terasa sesegar ini, meski teluk hidroponik kini menjadi hutan yang bercahaya.';

  @override
  String get event_voidMerchant_title => 'Pedagang Kehampaan';

  @override
  String get event_voidMerchant_narrative =>
      'Sebuah kapal berdesain tak dikenal — lebih mirip tumpukan rongsokan daripada kapal sungguhan — memanggil kita di semua frekuensi. Kaptennya, makhluk dari cahaya dan bayangan, menawarkan untuk menukar \'bagian padat\' dengan \'kenangan tak berwujud\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Tukar sebagian basis data budaya kita dengan suku cadang';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Pedagang puas. Kita mendapatkan pelat lambung berkualitas tinggi dan komponen kriotidur. Sebagai gantinya, kita kehilangan berabad-abad musik rekaman Bumi. Kapal lebih kuat, tetapi lebih sunyi.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Tukar peta navigasi dengan komponen mesin';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Kita mendapat satu set injektor fusi baru. Kita kehilangan beberapa data tentang sektor yang sudah kita lewati, tetapi jalan ke depan lebih cepat.';

  @override
  String get event_singularityEngine_title => 'Mesin Singularitas';

  @override
  String get event_singularityEngine_narrative =>
      'Para insinyur telah menemukan cara menciptakan singularitas mikroskopis berumur pendek di dalam penggerak FTL. Secara teoritis ini akan melipattigakan kecepatan kita, tetapi tekanan gravitasi pada lambung kapal akan sangat besar.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Uji penggerak singularitas';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Kapal melompat ke depan, menempuh jarak berminggu-minggu dalam hitungan detik. Tetapi lambung kapal meraung dan beberapa balok struktural bengkok. Kita jauh lebih dekat ke tujuan, tetapi kapal sangat rapuh.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Tolak teori itu — terlalu berbahaya';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Kita tetap di kecepatan standar. Para insinyur kecewa, tetapi lambung tetap utuh.';

  @override
  String get event_dreamContagion_title => 'Penularan Mimpi';

  @override
  String get event_dreamContagion_narrative =>
      'Mimpi bersama tentang dunia biru yang rimbun menyebar di antara awak yang terjaga. Begitu nyatanya sehingga orang mulai tidur sepanjang giliran mereka hanya untuk melihat lebih banyak. Pekerjaan terhenti.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Berikan penekan mimpi kepada awak';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Efisiensi kembali normal, tetapi awak mudah tersinggung dan moralnya rendah. Mimpi itu adalah satu-satunya yang membuat sebagian orang tetap bertahan.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Masukkan mimpi itu ke dalam budaya kapal';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Kita memperlakukan mimpi itu sebagai gambaran rumah masa depan kita. Moral melonjak, dan hasil kreatif awak mencapai puncaknya, meski bagian teknis menderita akibat kurangnya pemeliharaan.';

  @override
  String get event_orbitalShipyard_title => 'Galangan Kapal Kuno';

  @override
  String get event_orbitalShipyard_narrative =>
      'Kita telah menemukan galangan kapal otomatis yang mengorbit raksasa gas. Ini kuno, tetapi beberapa lengan perbaikan masih menyala. Tampaknya mampu melakukan satu operasi perbaikan besar.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Perbaiki lambung ke spesifikasi pabrik';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Drone galangan bekerja dengan efisiensi yang menakutkan. Lambung dipulihkan sepenuhnya, setiap retakan mikro tersegel.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Renovasi susunan navigasi dan pemindai';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Susunan itu dibangun ulang dengan bahan yang lebih unggul. Kemampuan kita untuk menemukan dan menganalisis dunia meningkat secara signifikan.';

  @override
  String get event_voidWhaleCalf_title => 'Anak Paus Antariksa';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Seekor \'Paus Antariksa\' muda — makhluk dari energi dan debu bintang — mengikuti kapal kita. Tampaknya terpisah dari kelompoknya dan mencoba memakan jejak ion mesin kita, yang membuatnya sakit.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Sesuaikan output mesin untuk meniru panggilan paus';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Anak paus merespons! Ia mengikuti kita hingga kita menemukan kelompoknya. Paus induk menyusuri lambung kapal kita sebagai tanda terima kasih, meninggalkan lapisan mineral bioluminesens yang memperkuat perisai kita.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Dorong perlahan dengan sinar penarik berdaya rendah';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Anak paus itu berkecil hati dan akhirnya hanyut menjauh. Lebih aman bagi kapal, tetapi awak merasakan sedikit rasa bersalah.';

  @override
  String get event_subspaceReef_title => 'Karang Subangkasa';

  @override
  String get event_subspaceReef_narrative =>
      'Kita telah memasuki wilayah angkasa yang dipenuhi lipatan tajam dalam kain subangkasa. Menavigasinya seperti mengemudikan kapal melalui terumbu karang. Indah, tetapi setiap gerakan yang salah akan merobek lambung.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Bergerak dengan kecepatan minimum';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Transit yang lambat dan melelahkan. Kita menghindari yang terburuk, tetapi koreksi arah terus-menerus menguras komputer navigasi.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Gunakan pemindai untuk memetakan jalur dan terobos';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Pemindai didorong hingga batasnya. Kita melewatinya dengan cepat, tetapi susunan sensor terbakar oleh intensitas riak subangkasa.';

  @override
  String get event_alienTrader_title => 'Pedagang Pengembara';

  @override
  String get event_alienTrader_narrative =>
      'Sebuah kapal berdesain asing melayang di sisi kita, menyiarkan di semua frekuensi. Ini adalah pedagang — salah satu dari para pedagang pengembara yang mengarungi ruang antarperadaban. Mereka menawarkan perbaikan dan perbekalan dengan imbalan sumber daya. Ruang kargo mereka berdengung dengan teknologi eksotik.';

  @override
  String get ui_event_enterTrade => 'MULAI PERDAGANGAN';

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
  String get ui_trader_moodFair => 'Transaksi yang adil';

  @override
  String get ui_trader_moodHard => 'Tawar-menawar ketat';

  @override
  String get ui_trader_probes => 'Wahana Penjelajah';

  @override
  String get ui_trader_fuel => 'Bahan Bakar';

  @override
  String get ui_trader_energy => 'Energi';

  @override
  String get ui_trader_colonists => 'Kolonialis';

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
    return '$count / $total DITEMUKAN';
  }

  @override
  String get ui_codex_surfaceFeatures => 'FITUR PERMUKAAN';

  @override
  String get ui_codex_moonTypes => 'JENIS BULAN';

  @override
  String get ui_codex_ringTypes => 'JENIS CINCIN';

  @override
  String get ui_codex_locked =>
      'Mendarat di planet dengan fitur ini untuk mengungkap efeknya.';

  @override
  String ui_codex_synergy(String features) {
    return 'Sinergi: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => 'Mercusuar Pulsar';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Sebuah bintang neutron berputar menyapu kehampaan dengan sinarnya bak mercusuar kosmis. Denyut ritmis pulsar membawa data waktu presisi yang bisa mengkalibrasi ulang pemindai kita ke akurasi luar biasa — tetapi menyelaraskan diri dengan sinarnya berarti mengekspos kapal pada radiasi intens.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Kalibrasi pemindai ke denyut pulsar';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Susunan pemindai menyerap sinyal pulsar, mengkalibrasi ulang ke presisi yang tak pernah kita bayangkan. Tetapi biaya radiasi nyata adanya — beberapa kriopod di seksi yang terpapar mengalami kerusakan, dan segelintir kolonis tidak selamat dari paparan.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Berlindung dan lewat di jarak aman';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Kita memberi jarak lebar dari pulsar, membakar bahan bakar tambahan untuk mempertahankan lintasan aman. Kru mengamati sapuan sinar melalui jendela berpelindung — indah, tetapi jauh.';

  @override
  String get event_alienNursery_title => 'Nurseri Alien';

  @override
  String get event_alienNursery_narrative =>
      'Struktur organik besar melayang di kehampaan — sebuah nurseri biologis yang mengerami bayi alien. Sistem pendukung hidupnya gagal, suhu internal menurun. Makhluk di dalamnya sekarat. Bio-pemindai kita bisa belajar sangat banyak dari struktur ini, tetapi intervensi berarti membuka kunci udara kita terhadap patogen tak dikenal.';

  @override
  String get event_alienNursery_choice0 =>
      'Bantu stabilkan sistem pendukung hidup mereka';

  @override
  String get event_alienNursery_outcome0 =>
      'Para insinyur kita merekayasa sambungan termal ke nurseri, menstabilkan ruang inkubasi. Data bio-pemindai luar biasa — taksonomi kehidupan yang sepenuhnya baru. Tetapi seperti yang ditakutkan, mikroorganisme alien menemukan jalan ke kapal. Tim medis menahan wabah, meskipun tidak sebelum beberapa kolonis jatuh sakit.';

  @override
  String get event_alienNursery_choice1 => 'Biarkan tanpa gangguan';

  @override
  String get event_alienNursery_outcome1 =>
      'Kita mengamati dari jarak yang hormat, mendokumentasikan apa yang bisa melalui pemindaian pasif. Nurseri terus melayang, nasibnya tak pasti. Kru merenungkan kerapuhan kehidupan — bahkan kehidupan alien — dan beban pilihan yang kita pikul.';

  @override
  String get event_derelictArmada_title => 'Armada Terbengkalai';

  @override
  String get event_derelictArmada_narrative =>
      'Ratusan kapal perang kuno tergantung tak bergerak di kehampaan — kuburan konflik yang terlupakan. Lambung mereka bercacat oleh senjata yang tak bisa kita identifikasi, tetapi material struktural dan basis data mereka bisa sangat berharga. Pertanyaannya adalah apa yang diprioritaskan: penyelamatan fisik atau pengetahuan.';

  @override
  String get event_derelictArmada_choice0 =>
      'Selamatkan teknologi senjata dan pelat lambung';

  @override
  String get event_derelictArmada_outcome0 =>
      'Tim penyelamat memotong masuk ke kapal perang alien, mengekstrak paduan eksotis dan teknik konstruksi berabad-abad di depan kita. Para pembangun mengintegrasikan material baru dengan antusias. Tetapi satu kapal tidak semati yang terlihat — jebakan meledak saat ekstraksi, menewaskan satu tim penyelamat.';

  @override
  String get event_derelictArmada_choice1 => 'Unduh arsip sejarah mereka';

  @override
  String get event_derelictArmada_outcome1 =>
      'Kita fokus pada inti data, dengan hati-hati mengekstrak berabad-abad sejarah, seni, sains, dan filsafat alien. Arsip budaya saja bisa membuat para sarjana sibuk selama generasi. Wawasan teknologi, meskipun kurang langsung praktis, mengungkap prinsip-prinsip rekayasa yang memajukan pemahaman kita sendiri.';

  @override
  String get event_alienQuarantineZone_title => 'Zona Karantina Alien';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Suar peringatan dalam belasan bahasa alien menandai batas wilayah ruang angkasa yang disegel. Apa pun yang terkurung di dalamnya cukup berbahaya hingga beberapa peradaban bekerja sama untuk mengisolasinya. Pemindaian jarak jauh kita mendeteksi tanda teknologis masif di dalam — dan sesuatu yang mungkin hidup.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Terobos karantina dan selidiki';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Kita melewati pelampung peringatan ke zona karantina. Di dalam, kita menemukan stasiun riset dengan kompleksitas mencengangkan — dan sisa-sisa apa pun yang sedang dipelajarinya. Teknologi yang kita peroleh revolusioner, tetapi kontaminasi biologis parah. Puluhan kolonis jatuh sakit sebelum kita meninggalkan zona.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Hormati karantina';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Kita mempelajari suar peringatan itu sendiri, yang berisi data navigasi dan pembacaan atmosfer dari peradaban yang menempatkannya. Bukan harta karun di dalam, tetapi ini sesuatu — dan kita tidak melepaskan apa pun yang mereka kunci.';

  @override
  String get event_hydroponicsBlight_title => 'Wabah Hidroponik';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Wabah jamur yang menyebar cepat telah menginfeksi teluk hidroponik kapal. Seluruh siklus panen layu di depan mata kita. Wabah belum mencapai cadangan benih, tetapi tinggal hitungan jam. Kita bisa membersihkan teluk dan menanam ulang dari awal, atau mencoba perawatan antijamur eksperimental yang bisa menyelamatkan panen saat ini — atau menyebarkan kontaminasi lebih jauh.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Bersihkan dan tanam ulang dari cadangan benih';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Kita membuang atmosfer teluk hidroponik ke ruang hampa, membunuh wabah beserta setiap tanaman hidup. Penanaman ulang dari cadangan benih akan memakan waktu berminggu-minggu, dan program budaya yang bergantung pada makanan segar dan ruang kebun ditangguhkan. Tetapi infeksi terkendali.';

  @override
  String get event_hydroponicsBlight_choice1 => 'Coba perawatan eksperimental';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Antijamur eksperimental menunjukkan harapan pada awalnya, tetapi strain yang resisten berhasil menembus. Pada saat kita memutuskan pembersihan total, wabah telah menyebar ke jalur nutrisi kriopod. Kerusakannya lebih buruk daripada jika kita bertindak tegas sejak awal.';
}
