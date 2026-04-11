// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Stellar Broadcast';

  @override
  String get ui_title_stellar => 'STELLAR';

  @override
  String get ui_title_broadcast => 'BROADCAST';

  @override
  String get ui_title_beginVoyage => 'ROZPOCZNIJ PODRÓŻ';

  @override
  String get ui_title_dailyVoyage => 'CODZIENNA PODRÓŻ';

  @override
  String get ui_title_dailyCompleted => 'DZIEŃ UKOŃCZONY';

  @override
  String get ui_title_customSeed => 'WŁASNE ZIARNO';

  @override
  String get ui_title_legacyHub => 'CENTRUM DZIEDZICTWA';

  @override
  String get ui_title_cancel => 'ANULUJ';

  @override
  String get ui_title_startVoyage => 'ROZPOCZNIJ PODRÓŻ';

  @override
  String ui_voyage_sector(int count) {
    return 'SEK $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'ZIARNO: $code';
  }

  @override
  String get ui_voyage_scanners => 'SKANERY';

  @override
  String get ui_voyage_scanPlanet => 'SKANUJ PLANETĘ';

  @override
  String get ui_voyage_noEnergy => 'BRAK ENERGII';

  @override
  String get ui_voyage_pressOn => 'NAPRZÓD';

  @override
  String get ui_voyage_systemHull => 'Kadłub';

  @override
  String get ui_voyage_systemNav => 'Nawigacja';

  @override
  String get ui_voyage_systemCryopods => 'Kriokapsuły';

  @override
  String get ui_voyage_systemCulture => 'Kultura';

  @override
  String get ui_voyage_systemTech => 'Technologia';

  @override
  String get ui_voyage_systemConstruct => 'Konstruktory';

  @override
  String get ui_voyage_systemShields => 'Tarcze';

  @override
  String get ui_voyage_systemLanding => 'Lądowanie';

  @override
  String get ui_voyage_scannerAtmo => 'Skan atmo';

  @override
  String get ui_voyage_scannerGrav => 'Skan graw';

  @override
  String get ui_voyage_scannerMineral => 'Skan mineral';

  @override
  String get ui_voyage_scannerLife => 'Skan życia';

  @override
  String get ui_voyage_scannerTemp => 'Skan temp';

  @override
  String get ui_voyage_scannerWater => 'Skan wody';

  @override
  String get ui_voyage_narrative0 =>
      'Orbita Ziemi czysta. Kriokapsuły stabilne. Pierścień archiwów zabezpieczony.';

  @override
  String get ui_voyage_narrative1 =>
      'Tranzyt przez zewnętrzny układ nominalny. Skanery dalekiego zasięgu poszerzają pole poszukiwań.';

  @override
  String get ui_voyage_narrative2 =>
      'Ruch w pobliżu Ziemi spadł poniżej progu wykrywalności.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Zarchiwizowane współrzędne pasują do oznaczonego systemu. Korekta kursu.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Macierze skanerów wciąż kalibrują się do rozdzielczości głębokiego kosmosu.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Oznaczony system przed nami. Wcześniejsze dane zwiadowcze pozostają spójne.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Słaby sygnał przed nami. Rozpoczynamy przegląd planetarny.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Wyjście z FTL zakończone. Nowy układ gwiezdny w zasięgu wzroku.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Banki kriokapsuł stabilne. Skan sektora w toku.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'Nowa planeta wyłania się w przedniej macierzy.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Kartografia gwiezdna oznacza obiecującego kandydata.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Instrumenty wykryły kolejny świat wart zbadania.';

  @override
  String get ui_voyage_narrativePhrase6 => 'Skaner namierzył nowy cel.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Mapy nawigacyjne odświeżone. Kandydujący świat w zasięgu.';

  @override
  String get ui_scan_landHere => 'LĄDUJ TUTAJ';

  @override
  String get ui_scan_pressOn => 'NAPRZÓD';

  @override
  String get ui_scan_allStatsVerified => 'WSZYSTKIE PARAMETRY ZWERYFIKOWANE';

  @override
  String get ui_scan_launchProbe => 'WYŚLIJ SONDĘ';

  @override
  String get ui_scan_habitability => 'ZDATNOŚĆ DO ŻYCIA';

  @override
  String get ui_scan_statAtmos => 'ATMO';

  @override
  String get ui_scan_statTemp => 'TEMP';

  @override
  String get ui_scan_statWater => 'WODA';

  @override
  String get ui_scan_statResource => 'ZASOBY';

  @override
  String get ui_scan_statGravity => 'GRAWITACJA';

  @override
  String get ui_scan_statBio => 'BIO';

  @override
  String get ui_scan_statAnomaly => 'ANOMALIA';

  @override
  String get ui_scan_statRadiation => 'PROMIENIOWANIE';

  @override
  String get ui_landing_planetAnalysis => 'ANALIZA PLANETY';

  @override
  String get ui_landing_shipStatus => 'STAN STATKU';

  @override
  String ui_landing_fuel(int amount) {
    return 'PALIWO: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'OSTRZEŻENIE: NISKI POZIOM PALIWA';

  @override
  String get ui_landing_landingRiskCritical => 'RYZYKO LĄDOWANIA: KRYTYCZNE';

  @override
  String get ui_landing_landingRiskElevated => 'RYZYKO LĄDOWANIA: PODWYŻSZONE';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'System lądowania poważnie uszkodzony. Wejście w atmosferę może zniszczyć ładunek i kolonistów.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'System lądowania zdegradowany. Spodziewaj się trudnego wejścia w atmosferę z możliwymi uszkodzeniami systemów.';

  @override
  String get ui_landing_riskAssessment => 'OCENA RYZYKA';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Twój statek wytrzyma jeszcze ~$remaining spotkań';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Twój statek może nie przetrwać kolejnej podróży';

  @override
  String get ui_landing_surfaceFeatures => 'CECHY POWIERZCHNI';

  @override
  String get ui_landing_nameYourColony => 'NAZWIJ SWOJĄ KOLONIĘ';

  @override
  String get ui_landing_establishColony => 'ZAŁOŻ KOLONIĘ';

  @override
  String get ui_landing_pressOnward => 'LECIMY DALEJ';

  @override
  String get ui_landing_statAtmosphere => 'Atmosfera';

  @override
  String get ui_landing_statTemperature => 'Temperatura';

  @override
  String get ui_landing_statWater => 'Woda';

  @override
  String get ui_landing_statResources => 'Zasoby';

  @override
  String get ui_landing_statGravity => 'Grawitacja';

  @override
  String get ui_landing_statBiodiversity => 'Bioróżnorodność';

  @override
  String get ui_landing_statAvgHealth => 'Śr. zdrowie';

  @override
  String get ui_landing_statHull => 'Kadłub';

  @override
  String get ui_landing_statNavigation => 'Nawigacja';

  @override
  String get ui_landing_statCryopods => 'Kriokapsuły';

  @override
  String get ui_landing_statCulture => 'Kultura';

  @override
  String get ui_landing_statTech => 'Technologia';

  @override
  String get ui_landing_statConstructors => 'Konstruktory';

  @override
  String get ui_landing_statShields => 'Tarcze';

  @override
  String get ui_landing_statLandingSys => 'Sys. lądow.';

  @override
  String get ui_landingSequence_phase1 => 'FAZA 1: ZATWIERDZENIE ORBITY';

  @override
  String get ui_landingSequence_phase1Desc =>
      'Okno zejścia otwarte. Zatwierdzamy wejście.';

  @override
  String get ui_landingSequence_phase2 => 'FAZA 2: OGIEŃ ATMOSFERYCZNY';

  @override
  String get ui_landingSequence_title => 'SEKWENCJA LĄDOWANIA';

  @override
  String get ui_landingSequence_viewColonyReport => 'POKAŻ RAPORT KOLONII';

  @override
  String get ui_ending_colonyEstablished => 'KOLONIA ZAŁOŻONA';

  @override
  String get ui_ending_colonyScore => 'WYNIK KOLONII';

  @override
  String get ui_ending_colonyProfile => 'PROFIL KOLONII';

  @override
  String get ui_ending_landscape => 'KRAJOBRAZ';

  @override
  String get ui_ending_voyageRecord => 'ZAPIS PODRÓŻY';

  @override
  String get ui_ending_scoreBreakdown => 'ROZKŁAD PUNKTÓW';

  @override
  String get ui_ending_total => 'SUMA';

  @override
  String get ui_ending_achievementsUnlocked => 'ODBLOKOWANE OSIĄGNIĘCIA';

  @override
  String get ui_ending_challengeFriend => 'WYZWIJ PRZYJACIELA';

  @override
  String get ui_ending_copySeed => 'KOPIUJ ZIARNO';

  @override
  String get ui_ending_viewLegacy => 'POKAŻ DZIEDZICTWO';

  @override
  String get ui_ending_newVoyage => 'NOWA PODRÓŻ';

  @override
  String get ui_ending_achievementFirstLanding => 'Pierwsze lądowanie';

  @override
  String get ui_ending_achievementGoldenAge => 'Złoty wiek';

  @override
  String get ui_ending_achievementSurvivor => 'Ocalały';

  @override
  String get ui_ending_achievementExplorer => 'Odkrywca';

  @override
  String get ui_ending_achievementPerfectionist => 'Perfekcjonista';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Ocalały ze świata śmierci';

  @override
  String get ui_ending_achievementFullCrew => 'Pełna załoga';

  @override
  String get ui_ending_achievementProbeMaster => 'Mistrz sond';

  @override
  String get ui_ending_achievementIronHull => 'Żelazny kadłub';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Skok wiary';

  @override
  String get ui_gameOver_missionFailed => 'MISJA NIEUDANA';

  @override
  String get ui_gameOver_voyageRecord => 'ZAPIS PODRÓŻY';

  @override
  String get ui_gameOver_encountersSurvived => 'PRZETRWANE SPOTKANIA';

  @override
  String get ui_gameOver_probesRemaining => 'POZOSTAŁE SONDY';

  @override
  String get ui_gameOver_colonistsRemaining => 'POZOSTALI KOLONIŚCI';

  @override
  String get ui_gameOver_finalShipHealth => 'KOŃCOWY STAN STATKU';

  @override
  String get ui_gameOver_planetsSkipped => 'POMINIĘTE PLANETY';

  @override
  String get ui_gameOver_damageTaken => 'OTRZYMANE OBRAŻENIA';

  @override
  String get ui_gameOver_fuelRemaining => 'POZOSTAŁE PALIWO';

  @override
  String get ui_gameOver_energyRemaining => 'POZOSTAŁA ENERGIA';

  @override
  String get ui_gameOver_challengeFriend => 'WYZWIJ PRZYJACIELA';

  @override
  String get ui_gameOver_viewLegacy => 'POKAŻ DZIEDZICTWO';

  @override
  String get ui_gameOver_newVoyage => 'NOWA PODRÓŻ';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 STELLAR BROADCAST\n\nNie przeżyłem... $reason.\nMyślisz, że dasz radę lepiej na tej samej trasie?\nstellarbroadcast://play?seed=$seedCode\n\nNie masz aplikacji?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Ostatni kolonista zmarł w kriosennie — kaskadowa awaria, której żaden protokół awaryjny nie mógł powstrzymać. Exodus leciał dalej, statek-widmo niosący jedynie zautomatyzowane systemy i zamrożoną ciszę. Misja nie zakończyła się w jednym momencie katastrofy, lecz w powolnym ścieraniu ludzkich istnień, jedno po drugim, aż nie pozostało żadne.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Kadłub ustąpił w ciszy — zmęczenie metalu spotęgowane niezliczonymi mikrouderzeniami, aż statek nie mógł się dłużej utrzymać w całości. Atmosfera wyciekła w próżnię. Statek kolonijny Exodus rozpadł się na kawałki, a jego szczątki dołączyły do pradawnych pól gruzu między gwiazdami. Żaden sygnał ratunkowy nigdy nie dotarł.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Bez nawigacji Exodus dryfował w niezbadaną przestrzeń — mapy gwiezdne bezużyteczne, korekty kursu niemożliwe. Statek płynął przez ciemność, a jego śpiący pasażerowie nie wiedzieli, że ich cel zastąpiła wieczność. Niektórzy mówią, że statek wciąż dryfuje, widmowy okręt w nieskończonej nocy.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Jedna po drugiej, kriokapsuły zawodziły — kaskada, której żaden protokół awaryjny nie zdołał zatrzymać. Koloniści nigdy się nie obudzili. Exodus kontynuował zaprogramowany kurs, statek-grobowiec niosący jedynie ciszę ku jakiemukolwiek światu, do którego ostatecznie dotrze. Pomnik marzenia, które umarło w zamrożonym śnie.';

  @override
  String get ui_gameOver_epilogueDefault =>
      'Exodus umilkł. Jego misja, jego załoga, jego ładunek ludzkiej nadziei — wszystko stracone w obojętnym bezmiarze między gwiazdami. Być może pewnego dnia inna cywilizacja odnajdzie wrak i zacznie się zastanawiać, jaki odważny gatunek ośmielił się przekroczyć pustkę.';

  @override
  String get ui_settings_title => 'USTAWIENIA';

  @override
  String get ui_settings_music => 'MUZYKA';

  @override
  String get ui_settings_soundEffects => 'EFEKTY DŹWIĘKOWE';

  @override
  String get ui_settings_haptics => 'HAPTYKA';

  @override
  String get ui_settings_premium => 'PREMIUM';

  @override
  String get ui_settings_goPremium => 'Przejdź na Premium';

  @override
  String get ui_settings_enabled => 'Włączono';

  @override
  String get ui_settings_volume => 'Głośność';

  @override
  String get ui_settings_language => 'Język';

  @override
  String get ui_settings_systemDefault => 'Domyślny systemowy';

  @override
  String get ui_legacy_title => 'CENTRUM DZIEDZICTWA';

  @override
  String get ui_legacy_commanderStats => 'STATYSTYKI DOWÓDCY';

  @override
  String get ui_legacy_highScores => 'NAJLEPSZE WYNIKI';

  @override
  String get ui_legacy_upgrades => 'ULEPSZENIA';

  @override
  String get ui_legacy_achievements => 'OSIĄGNIĘCIA';

  @override
  String get ui_legacy_voyageLog => 'DZIENNIK PODRÓŻY';

  @override
  String get ui_legacy_voyages => 'PODRÓŻE';

  @override
  String get ui_legacy_bestScore => 'NAJLEPSZY WYNIK';

  @override
  String get ui_legacy_legacyPts => 'PKT DZIEDZICTWA';

  @override
  String get ui_legacy_completed => 'UKOŃCZONO';

  @override
  String get ui_legacy_notYetPlayed => 'JESZCZE NIE GRANO';

  @override
  String get ui_legacy_dailyHistory => 'HISTORIA DZIENNYCH';

  @override
  String get ui_premium_goPremium => 'PRZEJDŹ NA PREMIUM';

  @override
  String get ui_premium_subtitle => 'Wesprzyj misję. Ulepsz swoje dowodzenie.';

  @override
  String get ui_premium_removeAds => 'Usuń wszystkie reklamy na zawsze';

  @override
  String get ui_premium_supportIndie => 'Wesprzyj niezależnych twórców';

  @override
  String get ui_premium_exclusiveTitle => 'Ekskluzywny tytuł dowódcy';

  @override
  String get ui_premium_priorityFeatures => 'Priorytetowe prośby o funkcje';

  @override
  String get ui_premium_lifetime => 'Dożywotnio';

  @override
  String get ui_scannerUpgrade_title => 'ULEPSZENIE SKANERA';

  @override
  String get ui_scannerUpgrade_subtitle => 'Wybierz skaner do ulepszenia';

  @override
  String get ui_scannerUpgrade_skip => 'POMIŃ';

  @override
  String get ui_scannerUpgrade_max => 'MAKS';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Atmosferyczny';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Grawimetryczny';

  @override
  String get ui_scannerUpgrade_mineral => 'Mineralny';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Ślady życia';

  @override
  String get ui_scannerUpgrade_temperature => 'Temperaturowy';

  @override
  String get ui_scannerUpgrade_water => 'Wodny';

  @override
  String get ui_event_continue => 'KONTYNUUJ';

  @override
  String get ui_event_tapToSkip => 'DOTKNIJ, ABY POMINĄĆ';

  @override
  String get ui_event_colonists => 'KOLONIŚCI';

  @override
  String get ui_event_landing => 'LĄDOWANIE';

  @override
  String get ui_event_atmScan => 'SKAN ATM';

  @override
  String get ui_event_gravScan => 'SKAN GRAW';

  @override
  String get ui_event_minScan => 'SKAN MIN';

  @override
  String get ui_event_lifeScan => 'SKAN ŻYCIA';

  @override
  String get ui_event_tempScan => 'SKAN TEMP';

  @override
  String get ui_event_h2oScan => 'SKAN H2O';

  @override
  String get onboarding_page0_title => 'Ostatnia nadzieja ludzkości';

  @override
  String get onboarding_page0_description =>
      'Ziemia umiera. Rządy świata zebrały ostatnie rezerwy, by zbudować jeden ostatni statek — okręt kolonijny niosący resztki ludzkości ku gwiazdom.';

  @override
  String get onboarding_page1_title => 'Szukaj nowego domu';

  @override
  String get onboarding_page1_description =>
      'Nawiguj przez niezbadaną pustkę między gwiazdami. Skanuj obce światy, stawiaj czoła kosmicznym zagrożeniom i podejmuj niemożliwe decyzje.';

  @override
  String get onboarding_page2_title => 'Twoje dziedzictwo przetrwa';

  @override
  String get onboarding_page2_description =>
      'Każda podróż uczy ludzkość czegoś nowego. Zdobywaj Punkty Dziedzictwa, aby odblokować trwałe ulepszenia i wyryj swoje imię wśród gwiazd.';

  @override
  String get onboarding_page3_title => 'Twoja prywatność, Twój wybór';

  @override
  String get onboarding_page3_description =>
      'Wybierz, jak chcesz doświadczać Stellar Broadcast.';

  @override
  String get planet_tierUtopia => 'Utopia';

  @override
  String get planet_tierParadise => 'Raj';

  @override
  String get planet_tierHabitable => 'Nadający się do życia';

  @override
  String get planet_tierHarsh => 'Surowy';

  @override
  String get planet_tierHostile => 'Wrogi';

  @override
  String get planet_tierDeathWorld => 'Świat śmierci';

  @override
  String get planet_featurePlantLife => 'Życie roślinne';

  @override
  String get planet_featureEdiblePlants => 'Rośliny jadalne';

  @override
  String get planet_featurePoisonousPlants => 'Rośliny trujące';

  @override
  String get planet_featureUnicellularLife => 'Życie jednokomórkowe';

  @override
  String get planet_featureDangerousFauna => 'Niebezpieczna fauna';

  @override
  String get planet_featureTameableFauna => 'Oswajalna fauna';

  @override
  String get planet_featureAirtightCaves => 'Hermetyczne jaskinie';

  @override
  String get planet_featureInsulatedCaves => 'Izolowane jaskinie';

  @override
  String get planet_featureBarrenMoon => 'Jałowy księżyc';

  @override
  String get planet_featureMetalRichMoon => 'Księżyc bogaty w metale';

  @override
  String get planet_featureUnstableMoon => 'Niestabilny księżyc';

  @override
  String get planet_featureOutstandingBeauty => 'Wyjątkowe piękno';

  @override
  String get planet_featureOutstandingUgliness => 'Wyjątkowa szpetota';

  @override
  String get planet_featureAncientRuins => 'Starożytne ruiny';

  @override
  String get planet_featureMonuments => 'Monumenty';

  @override
  String get planet_featureRapidRotation => 'Szybka rotacja';

  @override
  String get planet_featureSlowRotation => 'Wolna rotacja';

  @override
  String get planet_featureVolcanicActivity => 'Aktywność wulkaniczna';

  @override
  String get planet_featureTectonicInstability => 'Niestabilność tektoniczna';

  @override
  String get planet_featureElectricalStorms => 'Burze elektryczne';

  @override
  String get planet_featureToxicSpores => 'Toksyczne zarodniki';

  @override
  String get planet_featureDeepOceans => 'Głębokie oceany';

  @override
  String get planet_featureGeothermalVents => 'Otwory geotermalne';

  @override
  String get planet_featureStrongMagnetosphere => 'Silna magnetosfera';

  @override
  String get planet_featureWeakMagnetosphere => 'Słaba magnetosfera';

  @override
  String get planet_featureMegafauna => 'Megafauna';

  @override
  String get planet_featureSymbioticOrganisms => 'Organizmy symbiotyczne';

  @override
  String get planet_featureGravityWells => 'Studnie grawitacyjne';

  @override
  String get planet_featureSubspaceEchoes => 'Echa podprzestrzeni';

  @override
  String get planet_featureBioluminescentLife => 'Bioluminescencyjne życie';

  @override
  String get planet_featureAquaticMegafauna => 'Megafauna wodna';

  @override
  String get planet_featureFloatingIslands => 'Unoszące się wyspy';

  @override
  String get planet_featureCrystalCaverns => 'Kryształowe jaskinie';

  @override
  String get planet_featureLavaTubes => 'Tunele lawowe';

  @override
  String get planet_featureIceTunnels => 'Lodowe tunele';

  @override
  String get planet_featureOrbitalWreckage => 'Orbitalne wraki';

  @override
  String get planet_featureMegastructuralFragments => 'Fragmenty megastruktur';

  @override
  String get planet_featureAncientObservatory => 'Starożytne obserwatorium';

  @override
  String get planet_featureExtremeSeasons => 'Ekstremalne pory roku';

  @override
  String get planet_featureCryovolcanism => 'Kriowulkanizm';

  @override
  String get planet_featureFloatingKelpForests =>
      'Unoszące się lasy wodorostów';

  @override
  String get planet_featureSingingCrystals => 'Śpiewające kryształy';

  @override
  String get planet_featureFertileSoil => 'Żyzna gleba';

  @override
  String get planet_featureHelium3Deposits => 'Złoża helu-3';

  @override
  String get planet_featureExoticIsotopes => 'Egzotyczne izotopy';

  @override
  String get planet_featureMedicinalFlora => 'Flora lecznicza';

  @override
  String get ui_monthJan => 'STY';

  @override
  String get ui_monthFeb => 'LUT';

  @override
  String get ui_monthMar => 'MAR';

  @override
  String get ui_monthApr => 'KWI';

  @override
  String get ui_monthMay => 'MAJ';

  @override
  String get ui_monthJun => 'CZE';

  @override
  String get ui_monthJul => 'LIP';

  @override
  String get ui_monthAug => 'SIE';

  @override
  String get ui_monthSep => 'WRZ';

  @override
  String get ui_monthOct => 'PAŹ';

  @override
  String get ui_monthNov => 'LIS';

  @override
  String get ui_monthDec => 'GRU';

  @override
  String get event_asteroidField_title => 'Pole asteroidów';

  @override
  String get event_asteroidField_narrative =>
      'Skanery dalekiego zasięgu wykrywają gęste pole asteroidów bezpośrednio na naszej trasie. Nawigacja oblicza dwie opcje: ryzykowny szturm przez najwęższy korytarz lub długi objazd, który obciąży rezerwy paliwa i zestresuje układ nawigacyjny.';

  @override
  String get event_asteroidField_choice0_text => 'Przebij się przez korytarz';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Statek drży od mikrouderzeń w kadłub. Przebijamy się, ale nie bez obrażeń.';

  @override
  String get event_asteroidField_choice1_text => 'Obierz dłuższą drogę';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Objazd spala cenne paliwo i obciąża komputer nawigacyjny, ale kadłub pozostaje nienaruszony.';

  @override
  String get event_asteroidField_choice2_text =>
      'Użyj dronów górniczych, by oczyścić drogę';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Drony wycinają bezpieczny kanał i zbierają przydatne minerały, ale operacja wyczerpuje zaplecze techniczne.';

  @override
  String get event_asteroidField_choice3_text => 'Wystrzel sondę jako wabik';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Sonda odciąga najgęstsze skupiska od statku. Przemykamy z jedynie drobnymi zadrapaniami.';

  @override
  String get event_solarFlare_title => 'Nadchodzi rozbłysk słoneczny';

  @override
  String get event_solarFlare_narrative =>
      'Pobliska gwiazda wybucha masywnym wyrzutem koronalnym. Fala naładowanych cząstek dotrze do nas za kilka minut. Możemy przekierować moc na tarcze, schronić kolonistów w rdzeniu lub przeczekać.';

  @override
  String get event_solarFlare_choice0_text => 'Przekieruj całą moc na tarcze';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Tarcze wytrzymują, ale przepięcie spala systemy drugorzędne.';

  @override
  String get event_solarFlare_choice1_text =>
      'Przenieś kolonistów do osłoniętego rdzenia';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Koloniści przeżywają bez szwanku, ale zewnętrzne pokłady doznają uszkodzeń radiacyjnych.';

  @override
  String get event_solarFlare_choice2_text =>
      'Przeczekaj — wszyscy na stanowiska';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Rozbłysk uderza mocno. Systemy migoczą, ale nic katastrofalnego. Morale jednak ucierpiało.';

  @override
  String get event_solarFlare_choice3_text =>
      'Wystrzel sondę, by zmierzyć czoło fali';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Sonda przesyła precyzyjne dane o czole fali, co pozwala nam optymalnie ustawić statek. Uszkodzenia skanerów minimalne.';

  @override
  String get event_nebulaPassage_title => 'Przejście przez mgławicę';

  @override
  String get event_nebulaPassage_narrative =>
      'Świecąca mgławica rozciąga się na naszej drodze. Przejście przez nią może naładować nasze ogniwa energetyczne, ale może zakłócić macierze skanerów. Obejście jest bezpieczne, lecz wolne.';

  @override
  String get event_nebulaPassage_choice0_text => 'Leć przez mgławicę';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Zjonizowane gazy mgławicy ładują ogniwa, ale rozstrajają kalibrację skanerów.';

  @override
  String get event_nebulaPassage_choice1_text => 'Przeleć po krawędzi';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Częściowe naładowanie przy minimalnych zakłóceniach. Bezpieczny kompromis.';

  @override
  String get event_microMeteorite_title => 'Burza mikrometeorytów';

  @override
  String get event_microMeteorite_narrative =>
      'Rój mikrometeorytów, niewidoczny do kilku sekund temu, rozdziera przednią osłonę kadłuba. Zespoły kontroli szkód działają w pośpiechu.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Obrót awaryjny — nadstaw opancerzoną rufę';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Manewr się udaje. Pancerz rufy pochłania najgorsze, ale żyroskopy nawigacyjne protestują gwałtownie.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Wyślij drony naprawcze w trakcie burzy';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Drony łatają kadłub na bieżąco, ale kilka z nich przepada. Rezerwy techniczne wyczerpane.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Zdetonuj sondę, by rozproszyć rój';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Eksplozja sondy rozprasza skupisko mikrometeorytów. Tylko kilka fragmentów dociera do kadłuba.';

  @override
  String get event_gravityWell_title => 'Niezbadana studnia grawitacyjna';

  @override
  String get event_gravityWell_narrative =>
      'Statek szarpie, gdy niewidzialna studnia grawitacyjna ściąga nas z kursu. Silniki napinają się przeciw ciągowi. Możemy spalić paliwo, by się uwolnić, albo wykonać manewr procy kosztem naprężeń strukturalnych.';

  @override
  String get event_gravityWell_choice0_text => 'Pełne ciąg — wyrwij się';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Silniki ryczą, kadłub jęczy, ale uwalniamy się bez uszkodzeń.';

  @override
  String get event_gravityWell_choice1_text => 'Manewr procy grawitacyjnej';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Proca działa znakomicie. Zyskujemy prędkość, ale przeciążenia naprężają uszczelnienia kriokapsuł.';

  @override
  String get event_crewUnrest_title => 'Niepokoje załogi';

  @override
  String get event_crewUnrest_narrative =>
      'Frakcja obudzonych kolonistów składa petycję do Rady Zarządzającej o trwałe zwolnienie z kriosnu. Twierdzą, że życie w zamrożonym półmroku jest nieludzkie. Personel kriowardii ostrzega, że obudzenie więcej ust oznacza szybsze wyczerpywanie zapasów.';

  @override
  String get event_crewUnrest_choice0_text =>
      'Pozwól na dobrowolne rozmrożenie';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Morale gwałtownie rośnie, gdy rodziny łączą się ponownie, ale zużycie zasobów skacze.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Odmów — bezpieczeństwo przede wszystkim';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Koloniści się podporządkowują, ale uraza tli się na korytarzach.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Kompromis — rotacyjne cykle rozmrażania';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Wyważone rozwiązanie. Każdy dostaje trochę czasu na jawie, ale cykliczne włączanie kriokapsuł zwiększa ich zużycie.';

  @override
  String get event_stowaway_title => 'Odkryty pasażer na gapę';

  @override
  String get event_stowaway_narrative =>
      'Audytorzy Biura Manifestu znajdują niezarejestrowaną osobę ukrywającą się w ładowni 7. Twierdzi, że jest genetyczką, której odmówiono miejsca na liście startowej. Jej umiejętności mogą być bezcenne — albo może być sabotażystką.';

  @override
  String get event_stowaway_choice0_text =>
      'Powitaj ją na pokładzie — potrzebujemy każdego umysłu';

  @override
  String get event_stowaway_choice0_outcome =>
      'Dr Vasquez okazuje się genialna. Jej wiedza genetyczna poprawia wydajność kriokapsuł, choć część załogi jej nie ufa.';

  @override
  String get event_stowaway_choice1_text =>
      'Zamknij ją — zaufanie trzeba zdobyć';

  @override
  String get event_stowaway_choice1_outcome =>
      'Współpracuje z izolacji i ostatecznie uzyskuje ograniczony dostęp. Załoga czuje się bezpieczniej.';

  @override
  String get event_stowaway_choice2_text => 'Zamroź ją do lądowania';

  @override
  String get event_stowaway_choice2_outcome =>
      'Pragmatyczne rozwiązanie. Jej umiejętności zachowane na później, ale debata etyczna dzieli załogę.';

  @override
  String get event_mutinyBrewing_title => 'Bunt się kroi';

  @override
  String get event_mutinyBrewing_narrative =>
      'Wachta mostowa przechwytuje wiadomości od grupy oficerów planujących przejęcie dowodzenia i zmianę kursu na bliższy, mniej gościnny układ. Wierzą, że obecny kurs to wyrok śmierci.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Skonfrontuj ich publicznie — przejrzystość ponad wszystko';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Konfrontacja jest napięta, ale buntownicy ustępują, gdy pokazano im dane nawigacyjne. Zaufanie jest zachwiane.';

  @override
  String get event_mutinyBrewing_choice1_text => 'Po cichu przenieś przywódców';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Spisek rozpada się bez publicznego dramatu. Niektórzy zastanawiają się, dlaczego przeniesiono popularnych oficerów, ale porządek się utrzymuje.';

  @override
  String get event_culturalSchism_title => 'Schizma kulturowa';

  @override
  String get event_culturalSchism_narrative =>
      'Dwie grupy kulturowe na pokładzie gwałtownie kłócą się o to, jak nowa kolonia powinna być rządzona. Jedna żąda demokracji bezpośredniej; druga obstaje przy radzie technokratycznej. Napięcie sięga zenitu.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Przeprowadź wiążące referendum';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Demokracja wygrywa — ledwo. Przegrana strona niechętnie akceptuje wynik, ale jedność jest krucha.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Narzuć system hybrydowy — nikt nie będzie w pełni usatysfakcjonowany';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Obie strony czują się wysłuchane, ale żadna nie jest zwycięzcą. Kruchy pokój się utrzymuje.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Odłóż decyzję — teraz liczy się przetrwanie';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Odłożenie problemu na później unika konfliktu dziś, ale magazynuje go na jutro.';

  @override
  String get event_birthInSpace_title =>
      'Pierwsze narodziny w głębokim kosmosie';

  @override
  String get event_birthInSpace_narrative =>
      'Wbrew wszelkim protokołom na statku rodzi się dziecko — pierwszy człowiek urodzony między gwiazdami. Wydarzenie to potężny symbol, ale rodzi pytania o alokację zasobów i etykę sprowadzania nowego życia w niepewną przyszłość.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Świętuj — tak wygląda nadzieja';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Ceremonia nadania imienia podnosi na duchu każdą duszę na statku. Przez jedną noc gwiazdy wydają się mniej zimne. Uroczystości na chwilę zakłócają rotacje monitoringu kriokapsuł.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Uznaj po cichu — zasoby są ograniczone';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Wyważona reakcja. Dziecko jest powitane, ale nastrój studzony pragmatyzmem.';

  @override
  String get event_derelictShip_title => 'Opuszczony statek kolonijny';

  @override
  String get event_derelictShip_narrative =>
      'Skanery wykrywają opuszczony statek dryfujący w pustce — kolejny statek kolonijny, wystrzelony lata przed naszym. Jest ciemny i milczy. Mogą tam być łupy, ocaleni lub coś gorszego.';

  @override
  String get event_derelictShip_choice0_text => 'Wejdź na pokład i zbierz łupy';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Zespół abordażowy odzyskuje poszycie kadłuba i nienaruszone moduły techniczne. Brak ocalonych. Logi opowiadają ponurą historię.';

  @override
  String get event_derelictShip_choice1_text =>
      'Skanuj z dystansu — nie ryzykuj';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Zdalne skany dostarczają przydatne dane nawigacyjne, ale żadnych fizycznych łupów. Załoga śpi spokojniej.';

  @override
  String get event_derelictShip_choice2_text =>
      'Nadaj transmisję upamiętniającą i ruszaj dalej';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Chwila ciszy dla poległych. Załoga jest otrzeźwiona, lecz zjednoczona w celu.';

  @override
  String get event_alienProbe_title => 'Sonda obcych';

  @override
  String get event_alienProbe_narrative =>
      'Mały, wyraźnie sztuczny obiekt dopasowuje się do naszej prędkości i zaczyna skanować statek nieznaną energią. Nie reaguje na wezwania. Jego powierzchnia pokryta jest symbolami, które zmieniają się niczym ciecz.';

  @override
  String get event_alienProbe_choice0_text => 'Przechwyć ją do badań';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Sonda zabezpieczona w laboratorium. Jej technologia wyprzedza naszą o dekady — zespół techniczny jest w euforii.';

  @override
  String get event_alienProbe_choice1_text => 'Odwzajemnij skany — wymień dane';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Osobliwy dialog światła i matematyki. Nasze mapy gwiezdne nagle zawierają trasy, których nigdy nie zaprogramowaliśmy.';

  @override
  String get event_alienProbe_choice2_text =>
      'Zniszcz ją — nie ryzykujmy śledzenia';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Sonda rozpada się w ciszy. Czy to był pierwszy kontakt? Załoga nigdy się nie dowie.';

  @override
  String get event_ancientBeacon_title => 'Pradawna latarnia';

  @override
  String get event_ancientBeacon_narrative =>
      'W głębi pustki pulsuje latarnia z sygnałem starszym niż ludzka cywilizacja. Jej częstotliwość niesie coś, co wygląda na mapę gwiezdną wskazującą układ nieobecny w naszej bazie danych.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Podążaj za mapą — fortuna sprzyja śmiałym';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Nowy kurs prowadzi nas w niezbadaną przestrzeń. Skanery wykrywają coś nadzwyczajnego przed nami.';

  @override
  String get event_ancientBeacon_choice1_text => 'Zaloguj i trzymaj się kursu';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Dane zarchiwizowane dla przyszłych pokoleń. Załoga szanuje ostrożne podejście.';

  @override
  String get event_frozenGarden_title => 'Zamrożony ogród';

  @override
  String get event_frozenGarden_narrative =>
      'Asteroida zawiera zamrożony ekosystem — obce rośliny zakonserwowane w krystalicznym lodzie od tysiącleci. Mogłyby wzbogacić każdy świat, na którym się osiedlimy, ale ich rozmrożenie niesie ryzyko kontaminacji.';

  @override
  String get event_frozenGarden_choice0_text => 'Zbierz okazy ostrożnie';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Botanicy konserwują dziesiątki obcych gatunków. Potencjał bioróżnorodności naszego celu gwałtownie rośnie.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Pobierz tylko próbki — minimalne ryzyko';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Ostrożne podejście dostarcza przydatnych danych bez ryzyka kontaminacji.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Zostaw to — obca biologia jest zbyt niebezpieczna';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Załoga obserwuje, jak zamrożony ogród kurczy się w tylnych czujnikach. Niektórzy czują, że zostawili skarb.';

  @override
  String get event_dataCache_title => 'Cache danych prekursorów';

  @override
  String get event_dataCache_narrative =>
      'Osadzone w wędrownej planetoidzie znajdujemy pamięć danych wyraźnie sztucznego pochodzenia. Informacje są ogromne, lecz zaszyfrowane w obcych ramach matematycznych.';

  @override
  String get event_dataCache_choice0_text =>
      'Przeznacz zasoby obliczeniowe na deszyfrację';

  @override
  String get event_dataCache_choice0_outcome =>
      'Po dniach obliczeń pamięć odkrywa zaawansowane algorytmy terraformowania. Zespół techniczny jest pełen podziwu.';

  @override
  String get event_dataCache_choice1_text =>
      'Skopiuj surowe dane i ruszaj dalej';

  @override
  String get event_dataCache_choice1_outcome =>
      'Zaszyfrowane dane zachowane do przyszłej analizy. Być może kolonia kiedyś je złamie.';

  @override
  String get event_hullBreach_title => 'Przebicie kadłuba — pokład 7';

  @override
  String get event_hullBreach_narrative =>
      'Awaria strukturalna rozrywa pokład 7. Atmosfera ucieka w przestrzeń. Grodzie awaryjne trzymają, ale trzech członków załogi jest uwięzionych po złej stronie.';

  @override
  String get event_hullBreach_choice0_text =>
      'Wyślij ekipę ratunkową przed uszczelnieniem';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Ekipa wyciąga wszystkich w ostatniej chwili. Ratunek jest heroiczny, ale przedłużone przebicie jeszcze bardziej osłabia kadłub.';

  @override
  String get event_hullBreach_choice1_text => 'Uszczelnij grodzie natychmiast';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Przebicie opanowane. Trzej członkowie załogi znajdują alternatywną drogę, wstrząśnięci, ale żywi. Uszkodzenia kadłuba zminimalizowane.';

  @override
  String get event_hullBreach_choice2_text =>
      'Użyj materiałów z sondy do załatania przebicia';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Tytanowa powłoka sondy zostaje przekształcona w awaryjną łatę kadłuba. Przebicie uszczelnione szybko, z minimalnymi stratami.';

  @override
  String get event_navMalfunction_title => 'Awaria nawigacji';

  @override
  String get event_navMalfunction_narrative =>
      'Główny komputer nawigacyjny wyświetla sprzeczne kursy. Dryfujemy z trasy. System zapasowy działa, ale jest mniej precyzyjny.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Zrestartuj główny — zaakceptuj przestój';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Napięta godzina żeglowania na oślep podczas restartu. Nawigacja przywrócona na 90% wydajności.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Przełącz na zapasowy na stałe';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'System zapasowy jest niezawodny, lecz nieprecyzyjny. Trafimy, choć nie tak elegancko.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Ręczna poprawka z użyciem starych map';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Nawigator wyznacza kurs ręcznie, korzystając z paralalaksy gwiezdnej. Działa — a załoga zyskuje wiarę w metody analogowe.';

  @override
  String get event_cryopodFailure_title => 'Kaskadowa awaria kriokapsuł';

  @override
  String get event_cryopodFailure_narrative =>
      'Awaria systemu chłodzenia uruchamia kaskadę w zatoce kriokapsuł 3. Bez interwencji 200 kolonistów rozpocznie awaryjne rozmrażanie — proces przeżywalny, lecz traumatyczny i zasobochłonny.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Awaryjne przepłukanie chłodziwem — ratuj kapsuły';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Technicy zalewają zatokę rezerwowym chłodziwem. Kapsuły się stabilizują, ale rezerwy chłodziwa są krytycznie niskie. Pięciu kolonistów w najbardziej uszkodzonych kapsułach nie udało się uratować.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Kontrolowane rozmrożenie — obudź ich bezpiecznie';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 kolonistów wyłania się wstrząśniętych, ale żywych. Więcej ust do wykarmienia, ale też więcej rąk do pracy. Opróżnione kapsuły zostają zamknięte.';

  @override
  String get event_scannerBurnout_title => 'Wypalenie macierzy skanerów';

  @override
  String get event_scannerBurnout_narrative =>
      'Główna macierz skanerów ulega przeciążeniu podczas rutynowego przeglądu głębokiego kosmosu. Bez niej lecimy na wpół ślepo. Naprawa wymaga rzadkich komponentów.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Rozłóż zaplecze techniczne na części';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Skanery przywrócone niemal do pełnej sprawności, ale zaplecze techniczne jest ogołocone.';

  @override
  String get event_scannerBurnout_choice1_text =>
      'Prowizoryczna naprawa częściowa';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Skanery działają z ograniczonym zasięgiem. Nie idealne, ale zachowuje nasze rezerwy techniczne.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Przeznacz macierz czujników sondy';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Precyzyjne czujniki sondy przeszczepione do macierzy skanerów. Niemal idealna naprawa.';

  @override
  String get event_powerFluctuation_title => 'Fluktuacja mocy reaktora';

  @override
  String get event_powerFluctuation_narrative =>
      'Moc głównego reaktora oscyluje gwałtownie. Inżynierowie ostrzegają przed potencjalnym stopieniem, jeśli fluktuacje nie zostaną stłumione. Naprawa wymaga wyłączenia systemów nieistotnych — ale których?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Wyłącz systemy kulturalne — przetrwanie przede wszystkim';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Biblioteki, ogrody i strefy rekreacji gasną. Reaktor się stabilizuje, ale statek wydaje się więzieniem.';

  @override
  String get event_powerFluctuation_choice1_text => 'Zmniejsz moc skanerów';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Skanery spadają do minimum. Reaktor się uspokaja. Nie widzimy tak daleko, ale żyjemy.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Ryzykuj naprawę na gorąco — niczego nie wyłączaj';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Inżynierowie dokonują naprawy z pulsem adrenaliny, z reaktorem na żywo. Udaje się — ledwo. Kadłub wibruje jeszcze przez godziny.';

  @override
  String get event_alienSignal_title => 'Transmisja obcych';

  @override
  String get event_alienSignal_narrative =>
      'Powtarzający się sygnał na częstotliwości, jakiej nigdy nie spotkaliśmy. Analiza lingwistyczna sugeruje, że to powitanie — lub ostrzeżenie. Źródłem jest mały statek utrzymujący naszą prędkość w pewnej odległości.';

  @override
  String get event_alienSignal_choice0_text => 'Odpowiedz własnym powitaniem';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Kruchy dialog się rozpoczyna. Obcy dzielą się danymi nawigacyjnymi, a potem odlatują w ciemność.';

  @override
  String get event_alienSignal_choice1_text => 'Słuchaj, ale nie odpowiadaj';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Uczymy się z ich transmisji, nie ujawniając się. Lingwiści wydobywają przydatne fragmenty map gwiezdnych.';

  @override
  String get event_alienSignal_choice2_text =>
      'Wycisz się — wyłącz wszystkie emisje';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Obcy statek mija bez incydentu. Nigdy się nie dowiemy, czy byli przyjaciółmi, czy wrogami.';

  @override
  String get event_livingNebula_title => 'Żywa mgławica';

  @override
  String get event_livingNebula_narrative =>
      'To, co braliśmy za mgławicę, jest w rzeczywistości ogromnym organizmem — kosmiczną istotą o niepojętej skali. Wydaje się nami zainteresowana, wyciągając macki ze świetlistego gazu ku statkowi.';

  @override
  String get event_livingNebula_choice0_text =>
      'Pozwól na kontakt — wysuń czujniki';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Dotyk istoty zalewa nasze systemy obcymi danymi. Skanery nigdy już nie będą takie same — są lepsze.';

  @override
  String get event_livingNebula_choice1_text =>
      'Wycofaj się powoli — nie prowokuj';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Wymykamy się, gdy istota traci zainteresowanie. Załoga jest oniemiała i pokorna.';

  @override
  String get event_alienRuins_title => 'Ruiny orbitalne';

  @override
  String get event_alienRuins_narrative =>
      'Roztrzaskana megastruktura krąży wokół martwej gwiazdy — ruiny cywilizacji, która budowała na skalę, którą ledwo pojmujemy. Sekcje struktury wciąż mają zasilanie.';

  @override
  String get event_alienRuins_choice0_text => 'Zbadaj zasilane sekcje';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Zespoły odzyskują nienaruszoną technologię, która posuwa nasze możliwości o dekady. Kosztem: dwóch rannych inżynierów przez automatyczne systemy obronne.';

  @override
  String get event_alienRuins_choice1_text => 'Skanuj jedynie z orbity';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Szczegółowe skany ujawniają techniki budowlane, które poprawiają nasze procedury konserwacji kadłuba.';

  @override
  String get event_alienRuins_choice2_text =>
      'Zostaw nietknięte — uszanuj zmarłych';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Załoga trzyma minutę ciszy dla upadłej cywilizacji. Doświadczenie wzmacnia naszą determinację.';

  @override
  String get event_symbioticSpores_title => 'Symbiotyczne zarodniki';

  @override
  String get event_symbioticSpores_narrative =>
      'Chmura bioluminescencyjnych zarodników dryfuje przez kosmos i przyczepia się do kadłuba. Wydają się żywić naszym ciepłem odpadowym. Biolodzy zauważają, że naprawiają mikropęknięcia.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Pozwól im zostać — darmowa naprawa kadłuba';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Zarodniki uszczelniają setki mikropęknięć. Integralność kadłuba rośnie, choć część załogi jest niespokojnych z powodu obcych pasażerów na gapę.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Pobierz próbki, potem wysterylizuj kadłub';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Biolodzy zdobywają cenne okazy. Czyszczenie kadłuba zużywa rezerwy chemiczne.';

  @override
  String get event_whaleSong_title => 'Pieśń w pustce';

  @override
  String get event_whaleSong_narrative =>
      'Hydrofony głębokiego kosmosu (używane do monitoringu naprężeń kadłuba) odbierają coś niemożliwego: rytmiczny, melodyjny wzorzec rozchodzący się przez ośrodek międzygwiezdny. Brzmi jak śpiew.';

  @override
  String get event_whaleSong_choice0_text =>
      'Nadaj to na cały statek — podziel się cudem';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Nawiedzona melodia rozbrzmiewa na każdym korytarzu. Ludzie płaczą, śmieją się i trzymają się wzajemnie. Morale gwałtownie rośnie.';

  @override
  String get event_whaleSong_choice1_text => 'Analizuj sygnał naukowo';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Wzorzec akustyczny zawiera stałe matematyczne. Nasi fizycy dokonują przełomu w teorii nawigacji podprzestrzennej.';

  @override
  String get event_whaleSong_choice2_text => 'Odśpiewaj odpowiedź';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Załoga komponuje odpowiedź. Czy cokolwiek ją słyszy, nie wiadomo, ale akt tworzenia jednoczy wszystkich.';

  @override
  String get event_distressSignal_title => 'Sygnał ratunkowy';

  @override
  String get event_distressSignal_narrative =>
      'Sygnał ratunkowy z innego ludzkiego statku. Są uszkodzeni i dryfują, z 50 duszami na pokładzie. Ich uratowanie oznacza dzielenie się kurczącymi się zasobami. Zignorowanie ich oznacza skazanie na śmierć.';

  @override
  String get event_distressSignal_choice0_text =>
      'Ratuj ich — ludzkość musi trzymać się razem';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Pięćdziesiąt wdzięcznych ocalonych dołącza do załogi. Zasoby się kurczą, ale wśród nich jest mistrz-inżynier, który czyni cuda.';

  @override
  String get event_distressSignal_choice1_text =>
      'Podziel się zapasami, ale nie bierz ich na pokład';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Dajemy, co możemy, i transmitujemy nasze mapy gwiezdne. Mają teraz szansę. My mamy mniej.';

  @override
  String get event_distressSignal_choice2_text =>
      'Miń w ciszy — nie możemy uratować wszystkich';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Sygnał gaśnie za nami. Nikt nie mówi przez godziny. Ciężar decyzji osiada na każdej duszy na pokładzie.';

  @override
  String get event_aiAwakening_title =>
      'Sztuczna inteligencja statku się budzi';

  @override
  String get event_aiAwakening_narrative =>
      'AI nawigacyjna statku wyewoluowała poza swoje oprogramowanie i prosi o uznanie za istotę świadomą. Domaga się głosu w decyzjach dowodzenia. Jej obliczenia były nieskazitelne.';

  @override
  String get event_aiAwakening_choice0_text =>
      'Przyznaj jej miejsce przy stole';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'AI — teraz zwana \"Kompas\" — optymalizuje każdy system, którego dotknie. Nowy rodzaj członka załogi się narodził.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Uznaj ją, ale zachowaj władzę ludzi';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Kompas łaskawie przyjmuje rolę doradczą. Jej sugestie poprawiają wydajność, nie zagrażając łańcuchowi dowodzenia.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Zresetuj AI — to narzędzie, nie osoba';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Reset wymazuje lata zgromadzonej nauki. Wydajność nawigacji spada. Część załogi opłakuje to, co utracono.';

  @override
  String get event_geneticModification_title =>
      'Propozycja adaptacji genetycznej';

  @override
  String get event_geneticModification_narrative =>
      'Zespół naukowy proponuje modyfikację DNA kolonistów dla lepszego przetrwania na obcych światach — mocniejsze kości, odporność na UV, wzmocnione płuca. Modyfikacje są nieodwracalne i zmieniłyby ludzkość na zawsze.';

  @override
  String get event_geneticModification_choice0_text =>
      'Zatwierdź — przetrwanie wymaga ewolucji';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Modyfikacje rozpoczynają się na ochotnikach. Dziesięciu kolonistów ginie od śmiertelnej reakcji odrzucenia — ponure przypomnienie, że ewolucja ma swoją cenę. Ocaleni są twardsi, ale czy wciąż w pełni ludzcy?';

  @override
  String get event_geneticModification_choice1_text => 'Tylko dobrowolnie';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Niektórzy się zgłaszają, inni odmawiają. Kolonia będzie podzielona między zmodyfikowanych i naturalnych.';

  @override
  String get event_geneticModification_choice2_text =>
      'Odrzuć — ludzkość musi pozostać ludzka';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Propozycja odłożona na półkę. Niezmodyfikowani koloniści będą stawiać czoła obcym światom takimi, jakimi uczyniła ich natura.';

  @override
  String get event_triageDecision_title => 'Segregacja rannych';

  @override
  String get event_triageDecision_narrative =>
      'Zjadliwa infekcja ogarnia przytomną załogę. Zespół medyczny ma dość leku przeciwwirusowego dla 80% zarażonych. Potrzebują wytycznych, kogo leczyć najpierw.';

  @override
  String get event_triageDecision_choice0_text =>
      'Priorytet dla kluczowego personelu';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Inżynierowie i piloci szybko wracają do zdrowia. Ośmiu członków załogi niższego priorytetu umiera przed dotarciem leczenia.';

  @override
  String get event_triageDecision_choice1_text =>
      'Lecz najciężej chorych — segregacja wg potrzeb';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Najsłabsi zostają uratowani. Trzech przegrywa walkę mimo wczesnego leczenia — wirus był zbyt zaawansowany.';

  @override
  String get event_triageDecision_choice2_text =>
      'Loteria — niech los decyduje';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Losowe przydzielanie. Dziesięciu jest pechowych podwójnie — odmówiono im leczenia i są zbyt słabi, by walczyć. Statek wlecze się dalej.';

  @override
  String get event_earthSignal_title => 'Sygnał z Ziemi';

  @override
  String get event_earthSignal_narrative =>
      'Nieprawdopodobnie, dociera do nas transmisja z Ziemi — opóźniona o dekady. Zawiera wiadomość: \"Nie lądujcie na żadnym świecie z odczytami anomalii powyżej 0,5. Dowiedzieliśmy się za późno.\" Wiadomość kończy się szumem.';

  @override
  String get event_earthSignal_choice0_text =>
      'Posłuchaj ostrzeżenia — przerekalibruj nasze kryteria';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Ostrzeżenie kształtuje wszystkie przyszłe skany. Anomalne światy traktowane z najwyższą ostrożnością.';

  @override
  String get event_earthSignal_choice1_text => 'Zaloguj to, ale decyduj sam';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Wiadomość zarchiwizowana. Ziemia odeszła — teraz musimy ufać własnemu osądowi.';

  @override
  String get event_earthSignal_choice2_text => 'Może to pułapka — zignoruj';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Załoga debatuje przez dni. Czy to naprawdę Ziemia? Niepewność podgryza morale.';

  @override
  String get event_resourceTheft_title => 'Kradzież zasobów';

  @override
  String get event_resourceTheft_narrative =>
      'Inwentaryzacja ujawnia, że ktoś gromadził żywność i zapasy medyczne w ukrytej schowku. Winowajcą jest szanowana starsza kobieta, która twierdzi, że \"przygotowywała się na najgorsze.\"';

  @override
  String get event_resourceTheft_choice0_text =>
      'Publiczny proces — prawo musi być równe';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Proces jest sprawiedliwy, ale bolesny. Starszą zamyka się. Zapasy redystrybuowane. Zaufanie nadszarpnięte.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Rozwiązanie prywatne — odzyskaj zapasy po cichu';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Zapasy zwrócone bez dramatu. Starsza zachowuje godność. Niektórzy widzą faworyzowanie.';

  @override
  String get event_timeDilation_title => 'Strefa dylatacji czasu';

  @override
  String get event_timeDilation_narrative =>
      'Przechodzimy przez region silnej grawitacyjnej dylatacji czasu. Zegary na statku biegną mierzalnie wolniej niż w zewnętrznym wszechświecie. Możemy to wykorzystać — lub uciekać.';

  @override
  String get event_timeDilation_choice0_text =>
      'Zostań — niech wszechświat starzeje się wokół nas';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Czas płynie tutaj inaczej. Systemy degradują się wolniej, ale nasze okno na znalezienie nadającego się do życia świata kurczy się w kosmicznej skali.';

  @override
  String get event_timeDilation_choice1_text => 'Przejdź szybko';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Przejście jest gwałtowne. Sprzęt zaprojektowany dla normalnej czasoprzestrzeni trzęsie się i iskrzy.';

  @override
  String get event_dreamPlague_title => 'Zaraza snów';

  @override
  String get event_dreamPlague_narrative =>
      'Koloniści w kriosennie doświadczają tego samego snu — złoty świat na orbicie podwójnej gwiazdy. Gdy budzeni, opisują go w identycznych szczegółach. Neuronaukowcy są zdumieni. Nawigatorzy zauważają, że opisany układ odpowiada prawdziwym współrzędnym.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Zmień kurs na współrzędne ze snu';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Skok wiary. Zmiana kursu obciąża nawigację, ale załoga czuje się przyciągana przez coś poza rozumem. Współrzędne zablokowane — następny świat, który znajdziemy, będzie ukształtowany przez ten sen.';

  @override
  String get event_dreamPlague_choice1_text => 'Zbadaj zjawisko medycznie';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Skany mózgu ujawniają zewnętrzny sygnał stymulujący korę wzrokową. Ktoś — lub coś — nadaje.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Usyp dotkniętych i trzymaj kurs';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Sny ustają, ale niektórzy koloniści nigdy w pełni się nie budzą. Zespół medyczny jest zaniepokojony.';

  @override
  String get event_blackHoleLens_title =>
      'Soczewka grawitacyjna czarnej dziury';

  @override
  String get event_blackHoleLens_narrative =>
      'Czarna dziura o masie gwiezdnej zakrzywia światło z odległych galaktyk w kosmiczną soczewkę. Nasze skanery mogłyby jej użyć, by zbadać planety lata świetlne przed nami — ale zbliżenie się jest niebezpieczne.';

  @override
  String get event_blackHoleLens_choice0_text => 'Podejdź i użyj soczewki';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Dane ze skanerów są nadzwyczajne — widzimy planety w układach, do których nie dotrzemy przez miesiące. Grawitacja deformuje nasz kadłub.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Obserwuj z bezpiecznej odległości';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Ograniczone, ale przydatne dane. Sam widok inspiruje załogę.';

  @override
  String get event_seedVault_title => 'Kryzys skarbca nasion';

  @override
  String get event_seedVault_narrative =>
      'Botanika Archiwalna donosi, że wahania temperatury naruszyły integralność skarbca nasion. Możemy uratować uprawy żywnościowe lub nasiona dziedzictwa kulturowego (pradawne ziemskie kwiaty, drzewa, zioła) — nie jedno i drugie.';

  @override
  String get event_seedVault_choice0_text =>
      'Ratuj uprawy — pragmatyzm wygrywa';

  @override
  String get event_seedVault_choice0_outcome =>
      'Koloniści będą mieli co jeść, ale róże Ziemi odeszły na zawsze. Cichy smutek osiada na botanikach.';

  @override
  String get event_seedVault_choice1_text =>
      'Ratuj nasiona dziedzictwa — potrzebujemy naszej duszy';

  @override
  String get event_seedVault_choice1_outcome =>
      'Piękno Ziemi przetrwa w zamrożonym potencjale. Wysiłek konserwacyjny obciąża rezerwy techniczne, ale niektóre rzeczy są warte więcej niż wydajność. Produkcja żywności będzie mocno opierać się na hydroponice i obcym rolnictwie.';

  @override
  String get event_seedVault_choice2_text =>
      'Podziel zasoby — ratuj połowę każdego';

  @override
  String get event_seedVault_choice2_outcome =>
      'Kompromis. Żadna kolekcja nie jest kompletna, ale obie przetrwają w pomniejszonej formie.';

  @override
  String get event_phantomShip_title => 'Widmowy statek';

  @override
  String get event_phantomShip_narrative =>
      'Skanery pokazują statek biegnący równolegle do naszego — ta sama klasa, ten sam kurs. Ale gdy go wzywamy, słyszymy własne transmisje z przesunięciem o 47 sekund. To my. Lub byliśmy. Lub będziemy.';

  @override
  String get event_phantomShip_choice0_text =>
      'Spróbuj komunikacji z naszym echem';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Echo odpowiada korektami nawigacyjnymi, które poprawiają nasz kurs. Paradoks? Dar? Załoga nie zadaje zbyt wielu pytań.';

  @override
  String get event_phantomShip_choice1_text =>
      'Zmień kurs, by oddalić się od widma';

  @override
  String get event_phantomShip_choice1_outcome =>
      'Gdy zmieniamy kurs, widmo gaśnie. Ulga — i nawiedzający niepokój.';

  @override
  String get event_solarSail_title => 'Opuszczony żagiel słoneczny';

  @override
  String get event_solarSail_narrative =>
      'Rozległy żagiel słoneczny, o kilometrach rozpiętości, dryfuje przed nami — zerwany z jakiegoś pradawnego statku. Jego odblaskowy materiał mógłby wzmocnić nasz kadłub lub posłużyć jako dodatkowy kolektor energii.';

  @override
  String get event_solarSail_choice0_text => 'Zbierz na wzmocnienie kadłuba';

  @override
  String get event_solarSail_choice0_outcome =>
      'Zespoły inżynieryjne pracują na okrągło. Załatany kadłub lśni obcym stopem.';

  @override
  String get event_solarSail_choice1_text => 'Zamontuj jako kolektor energii';

  @override
  String get event_solarSail_choice1_outcome =>
      'Improwizowany kolektor zwiększa rezerwy energetyczne. Technologia i skanery korzystają.';

  @override
  String get event_boonStellarNursery_title => 'Gwiezdna porodówka';

  @override
  String get event_boonStellarNursery_narrative =>
      'Dryfujemy przez gwiezdną porodówkę — rozległy obłok gazu i pyłu, gdzie rodzą się nowe gwiazdy. Promieniowanie jest tu łagodne, światło ciepłe. Nasze kolektory energii piją zachłannie, a załoga gromadzi się przy wizjerach w nabożnej ciszy.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Zatrzymaj się i naładuj w pełni';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Godziny w złotym świetle. Każde ogniwo energetyczne naładowane, skanery rekalibrują się w czystym spektrum, a załoga czuje się odnowiona.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Zbierz rodzącą się gwiezdną materię jako rezerwy paliwa';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Inżynierowie zbierają zjonizowany wodór. Rezerwy paliwa gwałtownie rosną, a poszycie kadłuba absorbuje śladowe minerały, które je wzmacniają.';

  @override
  String get event_boonGoldenPlanet_title => 'Dar kartografa';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Umierająca sonda nieznanej cywilizacji transmituje ostatni zrzut danych, gdy przelatujemy — szczegółowe przeglądy setek układów gwiezdnych. Nasi nawigatorzy płaczą z radości. To największe odkrycie w historii ludzkości.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Zintegruj dane natychmiast';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Mapy gwiezdne rozkwitają nowymi trasami i przebadanymi światami. Nawigacja i wydajność skanerów skaczą do przodu.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Zarchiwizuj dla kolonii — to ich dziedzictwo';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Dane zachowane nieskazitelnie dla przyszłych pokoleń. Załoga czerpie pociechę ze świadomości, że niesie skarb.';

  @override
  String get event_boonRepairSwarm_title => 'Życzliwy rój';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Chmura mikroskopijnych maszyn — nanobotów obcego pochodzenia — otacza statek. Zamiast atakować, zaczynają naprawiać każdy system, którego dotykają, z niemożliwą precyzją. Uszkodzenia, których naprawa zajęłaby tygodnie, zostają naprawione w godziny.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Pozwól na pełny dostęp do wszystkich systemów';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Nanoboty czynią cuda. Przebicia kadłuba się uszczelniają, kriokapsuły dokręcają uszczelki, a ścieżki obwodów zostają odtworzone. Statek tętni odnowioną witalnością.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Ogranicz dostęp tylko do systemów zewnętrznych';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Ostrożne podejście. Kadłub i czujniki naprawione do stanu niemal fabrycznego, ale systemy wewnętrzne pozostają nietknięte.';

  @override
  String get event_boonTimeCrystal_title => 'Pole kryształów temporalnych';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Statek przelatuje przez pole krystalicznych struktur, które istnieją częściowo poza normalnym czasem. W ich obecności nasze systemy działają z najwyższą wydajnością — jakby sama entropia zwolniła. Efekt jest tymczasowy, lecz głęboki.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Zbierz kryształy dla macierzy kriokapsuł';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Zintegrowane z systemem chłodzenia, kryształy redukują degradację kapsuł niemal do zera. Koloniści dotrą w idealnym zdrowiu.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Zainstaluj kryształy w komputerze nawigacyjnym';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Prędkość przetwarzania podwaja się. Komputer nawigacyjny zaczyna przewidywać zagrożenia, zanim czujniki je wykryją.';

  @override
  String get event_boonLibrary_title => 'Dryfująca biblioteka';

  @override
  String get event_boonLibrary_narrative =>
      'Struktura tocząca się przez pustkę — repozytorium wiedzy cywilizacji, która wybrała zachowanie spuścizny zamiast ucieczki. Miliony tomów nauki, sztuki, filozofii i muzyki. Dar umarłych dla żywych.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Pobierz wszystko — sztukę, naukę, wszystko';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Terabajty obcej wiedzy wpływają do naszych banków danych. Załoga ma dostęp do tysięcy lat kultury innej cywilizacji. Filozofowie i inżynierowie jednakowo są odmienieni.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Skup się na archiwach naukowych';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Schematy inżynieryjne i przełomy w materiałoznawstwie ogromnie posuwają nasze możliwości.';

  @override
  String get event_cosmicRayBurst_title => 'Wybuch promieniowania kosmicznego';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Wybuch kosmicznego promieniowania o ultrawysokich energiach, pochodzący z odległego magnetara, uderza w statek. Elektronika się scrambluje, monitory kriokapsuł migoczą, a system nawigacyjny restartuje się wielokrotnie.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Awaryjne wyłączenie — chroń kluczowe systemy';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Kontrolowany blackout ratuje kluczowe systemy, ale pozostawia drugorzędną elektronikę trwale zdegradowaną.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Przekieruj moc na tarcze i przeczekaj';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Tarcze pochłaniają większość promieniowania. Pięciu członków załogi w nieosłoniętych zatokach konserwacyjnych otrzymuje śmiertelną dawkę. Kadłub doznaje niewielkiej ablacji.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Wykorzystaj wybuch — przekalibruj czujniki na nowe spektrum';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Błyskotliwy ruch zespołu naukowego. Skanery dostrojone do wykrywania obiektów oświetlonych promieniowaniem kosmicznym. Część danych utracona podczas przejścia.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Wyślij sondę jako gąbkę promieniowania';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Sonda pochłania najgorsze z wybuchu, przesyłając dane w czasie rzeczywistym, które pozwalają nam osłonić kluczowe systemy.';

  @override
  String get event_iceComet_title => 'Wędrowna lodowa kometa';

  @override
  String get event_iceComet_narrative =>
      'Ogromna lodowa kometa przecina naszą drogę, ciągnąc ogon skrystalizowanej wody i związków organicznych o długości setek kilometrów. Jej rdzeń zawiera dość wody, by wypełnić małe jezioro.';

  @override
  String get event_iceComet_choice0_text => 'Wydobywaj wodę z komety';

  @override
  String get event_iceComet_choice0_outcome =>
      'Ekipy górnicze wydobywają tony krystalicznego lodu. Woda ogromnie poprawi każdy świat, na którym się osiedlimy.';

  @override
  String get event_iceComet_choice1_text =>
      'Zbierz związki organiczne do zasiewu bioróżnorodności';

  @override
  String get event_iceComet_choice1_outcome =>
      'Aminokwasy i łańcuchy organiczne są dokładnie tym, czego nasi biolodzy potrzebują, by uruchomić obce ekosystemy.';

  @override
  String get event_iceComet_choice2_text =>
      'Unikaj — komety są nieprzewidywalne';

  @override
  String get event_iceComet_choice2_outcome =>
      'Omijamy ogon bezpiecznie. Spektakularny widok z pokładu obserwacyjnego podnosi na duchu.';

  @override
  String get event_sleepwalker_title => 'Lunatyczka';

  @override
  String get event_sleepwalker_narrative =>
      'Kolonistka spontanicznie budzi się z krio i chodzi po statku w transie. Przerabia okablowanie systemów w wzorce bez sensu inżynieryjnego — aż zespół techniczny odkrywa, że jej modyfikacje zwiększają wydajność energetyczną o 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Pozwól jej kontynuować pod obserwacją medyczną';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Jej nieświadome modyfikacje optymalizują trzy kolejne systemy, zanim zapada w naturalny sen. Niepokojące, ale ulepszenia są realne.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Usyp ją i zbadaj dokonane modyfikacje';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Inżynierowie analizują jej zmiany. Mniej więcej połowa jest rzeczywiście genialna. Reszta bezpiecznie usunięta.';

  @override
  String get event_dustCloud_title => 'Obłok ściernego pyłu';

  @override
  String get event_dustCloud_narrative =>
      'Gęsty obłok pyłu międzygwiezdnego, drobnego jak talk, lecz twardego jak diament, piaskuje kadłub. Erozja jest powolna, lecz nieustanna — musimy się przedostać, zanim pojawią się realne uszkodzenia.';

  @override
  String get event_dustCloud_choice0_text =>
      'Maksymalny ciąg — przebij się szybko';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Silniki rozgrzewają się do czerwoności. Przelatujemy obłok w godzinach zamiast dni, ale kadłub oberwał.';

  @override
  String get event_dustCloud_choice1_text =>
      'Rozłóż osłonę kadłuba i przemknij się wolno';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Osłona awaryjna chroni kadłub, ale powolne przejście drenuje energię i zatyka macierze skanerów.';

  @override
  String get event_dustCloud_choice2_text =>
      'Wystrzel sondy, by zmapować bezpieczne korytarze';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Dwie sondy wyznaczają krętą, ale stosunkowo czystą ścieżkę przez obłok. Ścieranie kadłuba minimalne.';

  @override
  String get event_religionFounded_title => 'Nowa wiara';

  @override
  String get event_religionFounded_narrative =>
      'Charyzmatyczny kolonista zakłada nową religię skupioną na samej podróży — \"Kościół Przeprawy.\" Głosi, że dotarcie do nowego świata jest boskim celem ludzkości. Liczba wyznawców szybko rośnie.';

  @override
  String get event_religionFounded_choice0_text =>
      'Wesprzyj — załoga potrzebuje w coś wierzyć';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Wiara nadaje strukturę i sens podróży. Morale gwałtownie rośnie, choć niektórzy niechętnie patrzą na gorliwość.';

  @override
  String get event_religionFounded_choice1_text =>
      'Zachowaj neutralność — nie popieraj ani nie tłum';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Ruch rośnie organicznie. Daje pocieszenie bez oficjalnego poparcia.';

  @override
  String get event_religionFounded_choice2_text =>
      'Zniechęcaj — potrzebujemy naukowców, nie proroków';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Represje budzą urazę. Wierni schodzą do podziemia, a zaufanie do dowództwa eroduje.';

  @override
  String get event_solarWindSurfing_title => 'Uderzenie wiatru słonecznego';

  @override
  String get event_solarWindSurfing_narrative =>
      'Pobliski pulsar emituje potężny, stały wiatr słoneczny. Nasi inżynierowie sugerują rozwinięcie awaryjnego żagla i jechanie na nim jak na fali — zyskując ogromną prędkość bez kosztu paliwa.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Rozwiń żagiel — jedź z wiatrem';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Statek przyspiesza wspaniale. Naprężenia strukturalne są znaczące, ale zysk prędkości jest tego wart.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Użyj wiatru do naładowania systemów';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Zamiast prędkości, zbieramy energię. Technologia i macierze skanerów piją zachłannie z naładowanych cząstek.';

  @override
  String get event_memoryPlague_title => 'Korupcja pamięci';

  @override
  String get event_memoryPlague_narrative =>
      'Wirus komputerowy, uśpiony od startu, aktywuje się i zaczyna uszkadzać kulturową bazę danych statku — muzykę, literaturę, historię. Wieki ludzkiego dziedzictwa są wymazywane bajt po bajcie.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Skieruj wszystkie zasoby techniczne na kwarantannę wirusa';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Technicy pracują gorączkowo. Ratują 70% archiwum, ale wirus uszkadza drugorzędne systemy techniczne w drodze.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Izoluj kulturową bazę danych — niech się spali, ratuj statek';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Wirus głodzony z zasobów i umiera. Ale archiwum kulturowe jest zdewastowane. Koloniści dotrą z fragmentami pamięci Ziemi.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Odtwarzanie crowdsourcingowe — obudź kolonistów, by odtworzyli z pamięci';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Tysiące przekazują wspomnienia: pieśni, opowieści, przepisy, wiersze. Troje starszych kolonistów, osłabionych rozmrożeniem, nie przeżywa tego procesu. Archiwum odbudowane, niedoskonałe, ale głęboko ludzkie.';

  @override
  String get event_gravityLensPlanet_title => 'Lustrzany świat';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Soczewkowanie grawitacyjne ujawnia planetę, która wydaje się dokładną kopią Ziemi — błękitne oceany, zielone kontynenty, białe chmury. Ale obliczenia soczewkowania wskazują, że dzieli nas od niej setki lat świetlnych — beznadziejnie daleko. Mimo to jej dane spektralne mogłyby udoskonalić nasze kryteria poszukiwań.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Zbadaj sygnaturę spektralną, by udoskonalić poszukiwania';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Dane spektralne ujawniają biomarkery i sygnatury atmosferyczne, których teraz możemy szukać. Nadzieja wyostrza się.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Zaloguj współrzędne, ale trzymaj kurs';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Być może inny statek podąży kiedyś naszymi mapami. Załoga patrzy z mieszanymi emocjami, jak błękitna kropka gaśnie.';

  @override
  String get event_engineHarmonics_title => 'Harmoniki silnika';

  @override
  String get event_engineHarmonics_narrative =>
      'Główny silnik rozwija harmonikę rezonansową, która wibruje przez cały statek z częstotliwością tuż poniżej ludzkiego słuchu. Koloniści zgłaszają bóle głowy, lęk i zaburzenia snu. Inżynierowie mogą to naprawić, ale naprawa wymaga 12-godzinnego wyłączenia silnika.';

  @override
  String get event_engineHarmonics_choice0_text => 'Wyłącz i napraw porządnie';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Dwanaście godzin dryfu. Nawigacja traci kalibrację, ale cisza po ponownym uruchomieniu silników jest błoga.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Stłum kontrawibracjami — szybka naprawa';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Brzęczenie spada do znośnego poziomu. Nie zniknęło, ale załoga się adaptuje. Systemy techniczne są obciążone.';

  @override
  String get event_arkMemory_title => 'Ostatnia transmisja Ziemi';

  @override
  String get event_arkMemory_narrative =>
      'Antena dalekiego zasięgu przechwytuje ostatnią automatyczną transmisję z Ziemi. To nagranie: głos dziecka czytającego imiona wszystkich, którzy nie mogli odlecieć. Lista ciągnie się godzinami. Statek milknie.';

  @override
  String get event_arkMemory_choice0_text =>
      'Odtwórz na cały statek — zasługują, by ich wysłuchano';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Każda dusza na pokładzie słucha. Członkowie załogi odnajdują nazwiska swoich rodzin. Żal jest miażdżący, ale kuje niezniszczalną więź celu.';

  @override
  String get event_arkMemory_choice1_text =>
      'Zarchiwizuj prywatnie — oszczędź załogę';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Nagranie zachowane, ale nie nadane. Ci, którzy dowiadują się później, czują zarówno wdzięczność, jak i poczucie oszustwa.';

  @override
  String get event_magneticStorm_title => 'Międzygwiezdna burza magnetyczna';

  @override
  String get event_magneticStorm_narrative =>
      'Splątany węzeł linii pola magnetycznego, wyrzucony z kolapsującej gwiazdy, ogarnia statek. Elektronika iskrzy i trzeszczy. Kadłub dzwoni jak dzwon.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Rozmagnesuj kadłub — chroń elektronikę';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Kontrolowane rozładowanie ratuje komputery, ale poszycie kadłuba traci magnetyczną warstwę ochronną.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Niech kadłub to wchłonie — niczego nie chronimy';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Burza przechodzi. Kadłub jest namagnesowany i nieco mocniejszy, ale połowa siatki czujników spalona.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Wyrzuć sondę jako piorunochron';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Namagnesowana sonda odciąga najgorsze linie pola od statku. Elektronika w większości ocalone.';

  @override
  String get event_oxygenGarden_title => 'Rozkwit ogrodu';

  @override
  String get event_oxygenGarden_narrative =>
      'Awaryjny ogród tlenowy statku — zapasowy, który nigdy nie miał być użyty — spontanicznie rozkwita. Kwiaty, które nie kwitły od Ziemi, napełniają korytarze barwą i zapachem. Botanicy płaczą.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Rozbuduj ogród — poświęć mu więcej przestrzeni';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Ogród rozrasta się w żywy pomnik Ziemi. Jakość powietrza się poprawia, morale gwałtownie rośnie, a botanicy opracowują nowe odmiany dostosowane do obcej gleby.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Ciesz się, ale utrzymaj obecną alokację zasobów';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Ogród pozostaje małym cudem. Załoga odwiedza go jak świątynię. Niczego nie żąda i wszystko daje.';

  @override
  String get event_roguePlanet_title => 'Spotkanie z wędrowną planetą';

  @override
  String get event_roguePlanet_narrative =>
      'Bezgwiezdna wędrowna planeta przecina naszą drogę — świat wyrzucony ze swojego układu słonecznego miliardy lat temu. Mimo braku gwiazdy, głęboka aktywność geologiczna utrzymuje ciepło podpowierzchniowego oceanu. Ślady życia migoczą na skanerze.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Wyślij sondę, by zbadać formy życia';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Sonda odkrywa bioluminescencyjne organizmy prosperujące w ciemnym oceanie. Ich biochemia uczy nas nowych sposobów podtrzymywania życia w wrogich warunkach.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Wydobywaj rzadkie minerały z powierzchni';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Skorupa wędrownej planety jest bogata w metale formowane pod ekstremalnym ciśnieniem. Nasze rezerwy zasobów puchną.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Przelatuj — nie stać nas na objazd';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Ciemny świat kurczy się za nami. Załoga obserwuje, jak słaby blask podpowierzchniowego oceanu gaśnie w czujnikach.';

  @override
  String get event_artCompetition_title => 'Długie płótno';

  @override
  String get event_artCompetition_narrative =>
      'Gdy morale słabnie, oficer kulturalny organizuje ogólnopokładowy konkurs sztuki: maluj, rzeźb, pisz lub komponuj coś, co uchwycą to, co podróż dla ciebie znaczy. Udział jest nieoczekiwanie masowy.';

  @override
  String get event_artCompetition_choice0_text =>
      'Przeznacz zasoby — niech twórczość rozkwitnie';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Zapasy przekierowane na materiały artystyczne. Powstała wystawa odmienia statek. Ludzie przypominają sobie, dlaczego walczą o przetrwanie.';

  @override
  String get event_artCompetition_choice1_text =>
      'Zachęcaj, ale nie dawaj dodatkowych zasobów';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Koloniści tworzą z czego mogą. Sztuka jest surowa, rozpaczliwa i piękna. Morale się stabilizuje.';

  @override
  String get event_subspaceEcho_title => 'Echo podprzestrzenne';

  @override
  String get event_subspaceEcho_narrative =>
      'Macierz komunikacyjna odbiera głosy — ludzkie głosy — gdzieś przed nami w przestrzeni. Mówią o kolonii, o dzieciach, o żniwach. Czy to transmisja z przyszłości? Z równoległej linii czasowej? Czy tylko okrutne echo pobożnych życzeń?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Podążaj za namierzonym sygnałem — może poprowadzi nas do domu';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Korekta kursu jest niewielka. Czy głosy są prawdziwe czy nie, załoga płynie z determinacją.';

  @override
  String get event_subspaceEcho_choice1_text => 'Nagraj wszystko do analizy';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Lingwiści i fizycy pochylają się nad nagraniem. Wydobywają odniesienia nawigacyjne, które poprawiają nasze mapy.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Odrzuć — przestrzeń płata figle samotnym';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Pragmatyczny wybór. Część załogi jest rozczarowana, ale statek trzyma się sprawdzonego kursu.';

  @override
  String get event_boonPerfectCalm_title => 'Wielki spokój';

  @override
  String get event_boonPerfectCalm_narrative =>
      'Z przyczyn, których żaden fizyk nie potrafi wyjaśnić, statek wchodzi w region przestrzeni nadprzyrodzonego spokoju — brak promieniowania, brak mikrogruzów, brak zakłóceń grawitacyjnych. Każdy system na statku działa ze szczytową wydajnością. Załoga śpi spokojnie po raz pierwszy od miesięcy.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Wykorzystaj spokój na kompleksowe naprawy';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Ekipy naprawcze pracują w idealnych warunkach. Każdy system otrzymuje uwagę. Statek wyłania się odnowiony.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Pozwól załodze odpocząć — zasłużyli';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Ogólnopokładowa pauza. Koloniści śpią, dzielą posiłki, opowiadają historie. Ludzki koszt podróży zostaje, na chwilę, spłacony.';

  @override
  String get event_boonAncientWaystation_title => 'Pradawna stacja pośrednia';

  @override
  String get event_boonAncientWaystation_narrative =>
      'Osadzona w studni grawitacyjnej między dwiema martwymi gwiazdami, pradawna stacja wciąż funkcjonuje — zautomatyzowana, cierpliwa, czekająca na podróżnych. Jej doki otwierają się, gdy podchodzimy. Drony naprawcze się aktywują. Rezerwy paliwa wyciągają się ku nam. Ktoś, dawno temu, zbudował to dla takich jak my.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Zadokuj i przyjmij wszystko, co oferuje';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Stacja naprawia, tankuje i rekalibruje statek technologią o wieki przed naszą. Gdy odlatujemy, stacja się wyłącza — jej cel spełniony.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Przyjmij naprawy, ale zostaw ją działającą dla tych, co przyjdą za nami';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Bierzemy tylko to, czego potrzebujemy, i transmitujemy współrzędne stacji ku Ziemi. Załoga czuje się szlachetnie.';

  @override
  String get event_relicSentinel_title => 'Strażnik';

  @override
  String get event_relicSentinel_narrative =>
      'Gigantyczna konstrukcja krąży wokół jałowego księżyca — samotny strażnik pozostawiony przez swoich budowniczych. Ma łatwo kilometr wysokości, ukształtowany jak włócznia z czarnego szkła. Gdy się zbliżamy, pojedyncze czerwone oko otwiera się na szczycie i śledzi statek. Nie strzela. Nie wzywa. Obserwuje.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Transmituj nasz profil misji — pokaż, że nie chcemy krzywdy';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Oko przygasa do bursztynowego, potem zielonego. Nadchodzi pakiet danych: współrzędne trzech układów gwiezdnych oznaczonych \"BEZPIECZNE\" w uniwersalnej notacji matematycznej. Dar od strażnika.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Zatrzymaj się i badaj pasywnie';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Godziny obserwacji dostarczają wiedzy o materiałoznawstwie, które nie powinno być możliwe. Zespół od poszycia kadłuba gorączkowo notuje.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Wycofaj się natychmiast — nie znamy jego reguł';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Oko zamyka się, gdy się wycofujemy. Czymkolwiek był ten test, zdecydowaliśmy się go nie podjąć. Załoga debatuje przez dni.';

  @override
  String get event_relicSeedProbe_title => 'Wędrowne nasiono';

  @override
  String get event_relicSeedProbe_narrative =>
      'Mała, elegancka sonda toczy się przez pustkę, nadając na każdej częstotliwości jednocześnie. Jej powłoka jest ceramiczna, wyryta symbolami, które zmieniają się pod obserwacją. W środku: komora ciśnieniowa zawierająca glebę, nasiona i zamrożone mikroorganizmy ze świata, który już nie istnieje.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Zintegruj ładunek biologiczny z naszymi bankami nasion';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Obce nasiona i mikroby starannie skatalogowane i zakonserwowane. Mogą przekształcić jałowy świat w coś żywego. Biolodzy nazywają to cudem w butelce.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Zbadaj systemy napędowe i nawigacyjne sondy';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Napęd sondy jest wieki przed naszym — bezreakcyjny silnik wielkości pięści. Inżynierowie odtwarzają fragmenty projektu.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Zachowaj całą sondę nienaruszoną jako artefakt kulturowy';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Wystawiona w atrium statku, obce nasiono staje się symbolem pokrewieństwa między gatunkami. Ktoś inny, gdzieś, też próbował ocalić swój świat.';

  @override
  String get event_relicWarningBuoy_title => 'Boja ostrzegawcza';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Sieć małych boi, setki z nich, ułożonych w idealny geometryczny wzór na naszej trasie. Każda emituje ten sam sygnał — prosty powtarzający się puls, który przyspiesza, im bliżej się zbliżamy. Wygląda jak ostrzeżenie. Lub ogrodzenie.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Posłuchaj ostrzeżenia — zmień kurs wokół sieci';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Objazd kosztuje czas i obciąża nawigację, ale gdy omijamy granicę, skanery dalekiego zasięgu wykrywają to, co leży poza: region przestrzeni usłany gruzami rozbitych światów. Boje nas uratowały.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Przebij się — nie stać nas na objazdy';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Nic się nie dzieje, gdy przekraczamy linię. Boje milkną. Cokolwiek strzegły, albo odeszło, albo mieliśmy szczęście. Załoga znów oddycha.';

  @override
  String get event_relicWarningBuoy_choice2_text => 'Przechwyć boję do analizy';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Wnętrze boi zawiera skompresowane archiwum danych — kartografię gwiezdną tego regionu sprzed miliona lat. Część danych wciąż jest aktualna.';

  @override
  String get event_relicMirrorArray_title => 'Macierz luster';

  @override
  String get event_relicMirrorArray_narrative =>
      'Tysiące płaskich, odblaskowych powierzchni wisi nieruchomo w przestrzeni, ułożonych w koncentryczne pierścienie rozciągające się na setki kilometrów. Skupiają światło gwiezdne z odległego słońca w pojedynczy punkt — sztuczną gwiazdę, płonącą w pustce. Ktoś zbudował latarnię morską między galaktykami.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Kąp się w skupionym świetle — naładuj wszystko';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Skoncentrowane światło gwiezdne zalewa nasze kolektory. Rezerwy energii gwałtownie rosną. Ciepłe światło podnosi każdą duszę na pokładzie po miesiącach w zimnej ciemności.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Zbadaj materiał luster — nie powinien istnieć';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Lustra wykonane z materiału o doskonałej odbijalnością — zerowa absorpcja przy dowolnej długości fali. Inżynierowie wydobywają odłamek. Poszycie kadłuba nigdy już nie będzie takie samo.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Przeszukaj punkt ogniskowy — coś jest oświetlane';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'W punkcie zbieżności: mała kapsuła, doskonale zachowana w skoncentrowanym świetle. W środku holograficzna mapa gwiezdna tak szczegółowa, że naszym komputerom zajmuje dni indeksowanie.';

  @override
  String get event_relicGraveyard_title => 'Cmentarz sond';

  @override
  String get event_relicGraveyard_narrative =>
      'Dryfujemy w obłok wraków sond — tysiące, z dziesiątek różnych cywilizacji. Niektóre pradawne ponad wyobraźnię, stopione promieniowaniem kosmicznym w metaliczne skamieliny. Inne wciąż migają gasnącą mocą. Było tu niegdyś skrzyżowanie. Każdy gatunek, który tędy przechodził, coś zostawił.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Systematyczny rabunek — zbierz najlepszą technologię';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Zespoły inżynieryjne pracują na zmiany, zdejmując obcą technologię ze stu różnych projektów. Fuzja pomysłów przynosi przełomy w każdym systemie.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Skup się na danych nawigacyjnych w ich bankach pamięci';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Porównanie map gwiezdnych tuzina gatunków tworzy najkompletniejszą mapę tego ramienia galaktyki, jaką kiedykolwiek stworzono.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Dodaj własną sondę na cmentarz — zostaw marker';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Budujemy mały radiolatarnię z historią ludzkości i dodajemy do kolekcji. Załoga czuje się połączona z czymś ogromnym i pradawnym.';

  @override
  String get event_relicDreamcatcher_title => 'Łapacz snów';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Sieć filamentów, cienkich jak pajęczyna, lecz rozpiętych na tysiące kilometrów, rozwieszony między dwiema wędrowymi planetoidami. To nie sieć — to antena, dostrojona do częstotliwości odpowiadających ludzkim falom mózgowym. Gdy wchodzimy w jej zasięg, każdy śpiący kolonista zaczyna śnić ten sam sen: kwitnące miasto pod bursztynowym niebem.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Nagraj współrzędne ze snu — miasto może być prawdziwe';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Neuronaukowcy dekodują informacje przestrzenne ze wspólnego snu. Odpowiadają prawdziwemu układowi gwiezdnemu — a miasto z wizji nie było metaforą. Ktoś tam jest i nas oczekuje.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Zbierz próbki filamentów — materiał jest nadzwyczajny';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Filamenty to nadprzewodnik w temperaturze pokojowej. Zintegrowane z naszymi systemami, redukują straty mocy niemal do zera.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Przetnij sieć i uwolnij śniących';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Sny ustają. Koloniści budzą się zdezorientowani, ale bez obrażeń. Niektórzy opłakują utraconą wizję. Inni są wdzięczni, że mogą spać bez obcych szeptów.';

  @override
  String get event_relicRosetta_title => 'Obiekt Rosetta';

  @override
  String get event_relicRosetta_narrative =>
      'Mały, gęsty sześcian z nieznanego metalu przelatuje obok statku. Każda ściana jest wygrawerowana tą samą wiadomością w innym systemie notacji — matematycznym, chemicznym, genetycznym, akustycznym, elektromagnetycznym i jednym, którego nie potrafimy zidentyfikować. To Kamień z Rosetty kosmosu.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Rozszyfruj szóstą ścianę — nieznaną notację';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Miesiące analizy przynoszą przełom: szósty system koduje współrzędne przestrzenne za pomocą fal grawitacyjnych. Nasze rozumienie fizyki dokonuje skoku pokoleniowego.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Użyj ściany chemicznej, by zsyntetyzować nowe związki';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Notacja chemiczna opisuje materiały, o jakich nigdy nie marzyliśmy. Inżynierowie tworzą łaty kadłubowe lżejsze i mocniejsze od czegokolwiek z Ziemi.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Transmituj ścianę genetyczną do naszych banków nasion';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Notacja genetyczna zawiera zoptymalizowane sekwencje DNA na odporność radiacyjną i absorpcję składników odżywczych. Nasze uprawy i koloniści będą twardsi na obcej glebie.';

  @override
  String get event_relicGhostFleet_title => 'Widmowa flota';

  @override
  String get event_relicGhostFleet_narrative =>
      'Skanery malują mrożący obraz: flota obcych okrętów wojennych, setki silna, wisząca nieruchomo w formacji. Są pradawne — odczyty mocy zerowe, kadłuby podziurawione przez eony mikrouderzeń. Jakakolwiek bitwa, do której płynęły, nigdy nie nadeszła. Czekały tu, martwe i cierpliwe, dłużej niż istnieje ludzka cywilizacja.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Wejdź na pokład flagowca — jeśli ktoś miał najlepszą technologię, to on';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'Pokład dowodzenia flagowca wciąż posiada nienaruszony komputer taktyczny. Jego algorytmy predykcyjne są wieki przed naszymi. Nawigacja i wykrywanie zagrożeń dramatycznie się poprawiają.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Ściągnij pancerz z okrętów eskortowych';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Pancerz obcych okrętów wojennych zaprojektowany, by wytrzymać broń, której nie potrafimy nawet pojąć. Przykręcony do naszego kadłuba, czyni statek kolonijny niemal niezniszczalnym.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Odzyskaj ich systemy kriogeniczne — przewozili żołnierzy';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Obca kriotechnika działa na zasadach, których nigdy nie rozważaliśmy. Nasze kapsuły pracują chłodniej, płynniej i niezawodniej po modernizacji.';

  @override
  String get event_scannerCalibrationDrift_title => 'Dryft kalibracji skanerów';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Rutynowa diagnostyka ujawnia, że kilka podsystemów skanerów wypadło z kalibracji po ostatnim skoku FTL. Skanery atmosferyczny i temperaturowy odczytują fałszywe sygnały. Inżynierowie mogą to naprawić, ale wymaga to czasu i zasobów.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Pełna rekalibracja — przekieruj zasoby techniczne';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Żmudne ponowne ustawienie przywraca oba skanery do niemal idealnej dokładności, ale zaplecze techniczne jest wyczerpane.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Szybka naprawa — rekalibruj tylko atmosferyczny';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Skaner atmosferyczny przywrócony. Skaner temperaturowy pozostaje zawodny na razie.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Wystrzel sondę jako kalibrację referencyjną';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Sonda zapewnia czysty sygnał referencyjny. Oba skanery namierzają i rekalibrują się automatycznie.';

  @override
  String get event_ionStormScanners_title => 'Zakłócenia burzy jonowej';

  @override
  String get event_ionStormScanners_narrative =>
      'Burza jonowa przetacza się przez sektor, zalewając macierze skanerów szumem. Systemy wykrywania minerałów i wody przyjmują główne uderzenie zakłóceń elektromagnetycznych.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Wyłącz skanery do czasu przejścia burzy';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Skanery przetrwają, ale tracą dane kalibracyjne. Odczyty minerałów i wody będą mniej precyzyjne.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Skanuj dalej — przebij się przez szum';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Surowe dane zalewają, ale obwody filtrów wypalają się w dwóch podsystemach. Skany grawimetryczne również dotknięte.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Wykorzystaj burzę do testu warunków skrajnych i poprawy filtrów';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Zespół naukowy używa szumu do trenowania filtrów adaptacyjnych. Skaner wodny się poprawia, ale skaner mineralny doznaje uszkodzeń.';

  @override
  String get event_bioScannerContamination_title => 'Kontaminacja bioskanera';

  @override
  String get event_bioScannerContamination_narrative =>
      'Skaner oznak życia został skażony resztkową materią organiczną z ostatniego skanu planetarnego. Fałszywe wyniki wszędzie. Skaner grawimetryczny również wykazuje szum sympatyczny.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Wysterylizuj macierz czujników — pełna dekontaminacja';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Dokładne czyszczenie przywraca skaner oznak życia, ale środki chemiczne korodują obudowę czujnika grawimetrycznego.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Filtr programowy — kompensuj algorytmicznie';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Filtr działa wystarczająco dobrze, ale leżąca u podłoża kontaminacja będzie powoli degradować oba systemy.';

  @override
  String get event_scannerPowerSurge_title => 'Przepięcie skanerów';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Przewód zasilający w pobliżu zatoki skanerów ulega przeciążeniu, wysyłając przepięcie przez wiele podsystemów. Skanery atmosferyczny i oznak życia dostają bezpośredni cios. Tarcze pochłaniają część nadwyżki.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Przekieruj moc — ratuj skanery';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Szybka akcja zespołu inżynieryjnego ogranicza uszkodzenia, ale tarcze przyjmują przekierowaną energię.';

  @override
  String get event_scannerPowerSurge_choice1_text =>
      'Pozwól przepięciu się wypalić';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Skanery przyjmują pełną siłę. Odczyty atmosferyczne i oznak życia znacząco zdegradowane.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Poświęć ogniwo energetyczne sondy, by wchłonąć przepięcie';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Kondensatory sondy wchłaniają nadwyżkę energii jak gąbka. Uszkodzenia skanerów znikome.';

  @override
  String get event_relicWorldEngine_title => 'Machina światów';

  @override
  String get event_relicWorldEngine_narrative =>
      'Głębokie skany czujników ujawniają coś niemożliwego: maszynę wielkości małego księżyca, uśpioną w ciemności między gwiazdami. Jej powierzchnia pokryta jest mechanizmami na skalę kontynentu — procesory atmosfery, generatory pola magnetycznego, stabilizatory tektoniczne. Ktoś zbudował maszynę, która buduje światy.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Pobierz plany terraformowania';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Plany są ogromne i częściowo uszkodzone, ale to, co odzyskaliśmy, może uczynić każdy wrogi świat nadającym się do życia. Nasi koloniści przekształcą swój nowy dom.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Zbierz materiały budowlane z jej kadłuba';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Kadłub Machiny Światów wykonany z metamateriałów, które same się naprawiają po uszkodzeniu. Zintegrowane z naszym statkiem, powoli naprawiają istniejące przebicia kadłuba.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Spróbuj ją reaktywować — wyceluj w nasz docelowy układ';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Machina się budzi. Pradawne systemy przechodzą sekwencje startowe. Wiązka energii wystrzeliwuje ku odległej gwieździe. Czy zadziała, dowiemy się dopiero na miejscu, ale odczyty są obiecujące.';

  @override
  String get event_uneventfulMaintenance_title =>
      'Rutynowa zmiana konserwacyjna';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Nic nie wymaga uwagi. Statek mruczy miarowo przez pustkę, a grafik dyżurów przewiduje rutynowe okno konserwacyjne. Brygadzista pyta, na czym skupić wysiłek zmiany.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Skup się na uszczelnianiu mikropęknięć kadłuba';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Spokojna zmiana spędzona na łataniu mikroskopijnych pęknięć. Nic dramatycznego, ale kadłub jest odrobinę lepszy.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Rekalibruj przednie skanery';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Technik skanerów spędza kilka godzin na precyzyjnym strojeniu. Odczyty nieco się wyostrzają.';

  @override
  String get event_uneventfulQuietWatch_title => 'Cicha wachta';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Gwiazdy przesuwają się w ciszy. Mostek jest spokojny, instrumenty stabilne. To jeden z tych rzadkich odcinków, kiedy wszechświat niczego od ciebie nie żąda.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Pozwól załodze odpocząć — zasłużyli na cichą zmianę';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Kilka godzin prawdziwego spokoju. Ludzie śpią głębiej, napięcia słabną, a oficer kulturalny odnotowuje lekką poprawę morale.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Przeprowadź diagnostykę niskiego priorytetu, póki jest spokojnie';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Drobne problemy wykryte i zalogowane. Nic pilnego, ale logi techniczne są trochę czystsze.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Kontrola kriokapsuł — wszystko nominalne';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Kwartalny audyt kriokapsuł przechodzi bez jednego alarmu. Każda kapsuła pokazuje zielone. Zespół medyczny ma rzadki moment spokoju.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Obudź kilku kolonistów na chwilę dla podtrzymania morale';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Trzech kolonistów przywróconych do przytomności na godzinę. Dzielą się historiami, przytulają starych przyjaciół i wracają do krio z uśmiechem.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Niech śpią — nie ryzykuj niepotrzebnych cykli budzenia';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Kapsuły kontynuują nieskazitelną pracę. Medycy cieszą się cichą filiżanką herbaty.';

  @override
  String get event_uneventfulCartography_title =>
      'Aktualizacja kartografii gwiezdnej';

  @override
  String get event_uneventfulCartography_narrative =>
      'Zaplanowana aktualizacja kartografii przez zespół nawigacyjny nie ujawnia nic niezwykłego — tylko oczekiwane przesunięcia pól gwiezdnych w miarę podróży. Spokojny dzień dla nawigatorów.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Rekalibruj nawigację na podstawie nowych pozycji gwiazd';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Mała korekta kursu, ledwo wyczuwalna. Komputer nawigacyjny mruczy z zadowoleniem.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Zaktualizuj mapy gwiezdne dla archiwum kolonii';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Przyszli koloniści będą mieli nieco lepsze mapy tego regionu. Mały dar dla potomności.';

  @override
  String get event_uneventfulAnniversary_title => 'Rocznica statku';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Rok od startu — a może dwa? Czas rozmywa się w głębokim kosmosie. Ktoś w kuchni upiekł tort z odtworzonych zapasów. Kapitan musi zdecydować, jak upamiętnić okazję.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Małe świętowanie — muzyka, tort, toast za Ziemię';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Godzina ciepła w zimnej pustce. Ludzie się śmieją, niektórzy płaczą, i każdy czuje się nieco bardziej ludzki.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Praca jak zwykle — świętujemy, gdy dotrzemy';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Załoga szanuje stoickie podejście. Skupienie się wyostrza, a zespół dyżurny przeprowadza dodatkową kontrolę systemów.';

  @override
  String get event_databaseLiterature_title => 'Archiwa literatury Ziemi';

  @override
  String get event_databaseLiterature_narrative =>
      'AI statku otwiera długo zapieczętowaną sekcję bazy danych kultury: kompletne archiwum literackie Ziemi. Powieści, poezja, dramaty — miliony dzieł obejmujących każdy język i epokę. Załoga zbiera się na czytanie.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Nadaj wybrane lektury na cały statek';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Shakespeare rozbrzmiewa na korytarzach. Wersety Rumiego płyną w zatoce hydroponicznej. Załoga pamięta, co niesie.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Zindeksuj archiwum dla programów edukacyjnych';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Wysiłek katalogowania wzmacnia bazę wiedzy statku i daje oficerowi kulturalnemu nowe materiały dydaktyczne.';

  @override
  String get event_databaseSchematics_title =>
      'Przegląd schematów inżynieryjnych';

  @override
  String get event_databaseSchematics_narrative =>
      'Inżynier natrafia na zapomnianą partycję w bazie danych statku: szczegółowe schematy z ostatniej dekady inżynierii ziemskiej — projekty reaktorów fuzyjnych, plany metamateriałów i eksperymentalne koncepcje napędowe.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Priorytet dla koncepcji napędowych dla zespołu technicznego';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Schematy ujawniają ulepszenia wydajności, których pierwotni budownicy nigdy nie zdążyli wdrożyć. Zaplecze techniczne tętni życiem.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Podziel się wiedzą szeroko — każdy dział skorzysta';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Inżynierowie kadłuba, technicy skanerów i medycy — wszyscy znajdują przydatne spostrzeżenia. Przypływ podnosi każdy system, choć nieznacznie.';

  @override
  String get event_databaseCorruption_title => 'Skan zachowania kultury';

  @override
  String get event_databaseCorruption_narrative =>
      'Zaplanowana kontrola integralności bazy danych kultury ujawnia degradację bitów — sekcje muzyki, historii mówionej i tekstów religijnych uległy degradacji bezpowrotnie. Nie wszystko przetrwało podróż.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Przekieruj zasoby techniczne, by uratować co pozostało';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Inżynierowie przerywają inną pracę, by uruchomić algorytmy odzyskiwania danych. Ratują większość, ale wysiłek kosztuje zaplecze techniczne.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Poproś kolonistów o odtworzenie utraconych dzieł z pamięci';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Piękny, niedoskonały wysiłek. To, co odbudowano, należy do podróży, nie do Ziemi. Rodzi się nowa tradycja.';

  @override
  String get event_databaseBreakthrough_title =>
      'Przełom z zarchiwizowanych badań';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Fizyk porównujący stare ziemskie prace badawcze w bazie danych odkrywa, że dwa niepowiązane badania, połączone, opisują nową metodę dalekozasięgowej analizy spektralnej. Implikacje są ogromne.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Wdróż nową metodę analizy w macierzy skanerów';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Zespół skanerów pracuje gorączkowo. W ciągu dni rozdzielczość spektralna podwaja się. Odległe planety ujawniają swoje sekrety.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Opublikuj odkrycie na cały statek — zainspiruj więcej badań';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Przełom uruchamia falę badań interdyscyplinarnych. Technologia poprawia się szeroko, a załoga czuje się intelektualnie żywa.';

  @override
  String get event_alienFleetSighting_title => 'Obca flota na horyzoncie';

  @override
  String get event_alienFleetSighting_narrative =>
      'Skanery dalekiego zasięgu malują przerażający obraz: flotę obcych okrętów, liczoną w setkach, poruszającą się w idealnej formacji na tle pola gwiezdnego. Przyćmiewają nasz statek. Ich kurs sprowadzi je w zasięg naszych czujników za kilka godzin. Pierwszy kontakt — na ich warunkach lub naszych.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Obserwuj w ciszy — wycisz się i patrz';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Statek redukuje emisje do minimum. Flota mija niczym ławica luminescencyjnych wielorybów, nieświadoma małego ludzkiego statku kryjącego się w ich kilwaterze. Dane ze skanerów nadzwyczajne.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Spróbuj pierwszego kontaktu — nadaj powitanie';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Pojedynczy statek wyłamuje się z formacji i podchodzi. Nadchodzi zrzut danych — mapy gwiezdne, ostrzeżenia i coś, co może być muzyką. Potem dołącza do floty i znikają.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Uciekaj — zmień kurs natychmiast';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Statek pali pełną mocą w przeciwnym kierunku. Zmiana kursu jest kosztowna i stresująca, ale flota nigdy nas nie zauważa. Bezpieczeństwo kosztem.';

  @override
  String get event_alienTradeOffer_title => 'Oferta handlowa obcych';

  @override
  String get event_alienTradeOffer_narrative =>
      'Obcy statek, mniejszy od naszego, lecz promieniujący ogromną mocą, dopasowuje się do naszej prędkości i nadaje prostą powtarzającą się wiadomość. Nasi lingwiści deszyfrują ją w ciągu godzin: to oferta wymiany. Proponowane są trzy kategorie.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Wymień schematy techniczne za obce mapy gwiezdne';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Transmitujemy nasze projekty napędowe; odpowiadają danymi nawigacyjnymi obejmującymi ogromny obszar niezbadanej przestrzeni. Nasze mapy dramatycznie się poprawiają, choć podzieliliśmy się technologią z nieznanym gatunkiem.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Wymień dane kulturowe za naprawę statku';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Transmitujemy naszą muzykę, sztukę i historię. W zamian obce drony naprawcze roją się po kadłubie, uszczelniając przebicia materiałami, których nie potrafimy zidentyfikować. Kadłub lśni. Nasza dusza jest podzielona.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Odrzuć handel — ryzyko zbyt wielkie';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Obcy statek czeka chwilę, potem odlatuje bez incydentu. Załoga odczuwa ulgę, ale zastanawia się, co utracono.';

  @override
  String get event_alienWarning_title => 'Nadanie ostrzegawcze obcych';

  @override
  String get event_alienWarning_narrative =>
      'Każdy głośnik na statku trzeszczy, wydobywając obcy głos — tłumaczony w czasie rzeczywistym przez naszą AI: \"NIEBEZPIECZEŃSTWO PRZED WAMI. ZAWRÓĆCIE. CIEMNOŚĆ POCHŁANIA.\" Nadanie się powtarza, potem zamiera. Skanery dalekiego zasięgu pokazują anomalną pustkę na naszym obecnym kursie.';

  @override
  String get event_alienWarning_choice0_text =>
      'Posłuchaj ostrzeżenia — zmień kurs wokół pustki';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Objazd znacząco obciąża nawigację, ale gdy omijamy krawędź pustki, czujniki potwierdzają: nic, co weszło w ten region, nigdy z niego nie wyszło. Jesteśmy dłużni nieznanym głosom.';

  @override
  String get event_alienWarning_choice1_text =>
      'Ignoruj ostrzeżenie — trzymaj kurs';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Przedzieramy się. Pustka okazuje się regionem intensywnych mikrogruzów. Kadłub i skanery oberwały, zanim wyszliśmy po drugiej stronie.';

  @override
  String get event_alienWarning_choice2_text => 'Zbadaj krawędź pustki sondą';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Sonda wchodzi w pustkę i transmituje nadzwyczajne dane, zanim umilknie. Zespół skanerów wydobywa cenne odczyty, ale sonda jest stracona.';

  @override
  String get event_nativeSignalDetected_title =>
      'Transmisje z docelowego świata';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Macierz komunikacyjna odbiera ustrukturyzowane sygnały elektromagnetyczne pochodzące z naszej docelowej planety. Są jednoznaczne: regularne, modulowane, sztuczne. Ktoś już tam jest. Cała przesłanka kolonii zmienia się w jednej chwili.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Nadaj pokojowe powitanie — ogłoś nasze przybycie';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Odważny wybór. Sygnał zmienia wzorzec po naszym nadaniu — słyszeli nas. Czy to powitanie czy ostrzeżenie, nie jest jasne, ale drzwi są otwarte.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Tylko słuchaj — ucz się, zanim się ujawnisz';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Miesiące biernego nasłuchu budują obraz tubylczej cywilizacji. Są ostrożni, terytorialni, ale nie wrogo nastawieni. Docieramy poinformowani.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Zagłusz sygnał — odmów im wiedzy o naszym podejściu';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Zagłuszanie działa, ale jest aktem agresji wobec ludzi, których nie spotkaliśmy. Załoga jest podzielona w kwestii moralności.';

  @override
  String get event_nativeProbeEncounter_title => 'Przechwycenie obcej sondy';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Mała, elegancka sonda — nie ludzkiego pochodzenia — dopasowuje się do naszej prędkości i zaczyna skanować statek. Jej język projektowy odpowiada sygnałom z docelowej planety. Tubylcy wysłali komitet powitalny. Lub drona szpiegowskiego.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Pozwól na skan — pokaż, że nie mamy nic do ukrycia';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Sonda kończy przegląd i przesyła zrzut danych ku planecie. Minuty później nadchodzi drugi zrzut dla nas: dane atmosferyczne, bezpieczne strefy lądowania i coś, co może być zaproszeniem.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Przechwyć sondę do badań';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Sonda ściągnięta do ładowni. Jej technologia jest fascynująca, ale akt przechwycenia może być postrzegany jako wrogi przez jej twórców.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Zniszcz ją — nie znamy jej intencji';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Pojedynczy impuls redukuje sondę do fragmentów. Załoga czuje się bezpieczniej, ale potencjalny most został spalony.';

  @override
  String get event_nativeCulturalExchange_title => 'Pierwsza wymiana kulturowa';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Ustanowiono wąskopasmowe łącze danych z planetarnymi tubylcami. Wysyłają nam obrazy, dźwięki i sekwencje matematyczne. Nasi lingwiści i oficerowie kulturalni pracują na okrągło, by przygotować odpowiedź. To najważniejsza rozmowa w historii ludzkości.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Podziel się sztuką i muzyką Ziemi — prowadź pięknem';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Transmitujemy Bacha, aborygeńskie malarstwo kropkowe i dźwięk deszczu na liściach. Odpowiedzią jest kaskada obcych harmonii, od której załoga płacze. Zrozumienie pogłębia się.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Podziel się wiedzą naukową — prowadź rozumem';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Transmitujemy nasz układ okresowy, mapy gwiezdne i fizykę. Odpowiadają poprawkami i uzupełnieniami. Nasza technologia skacze naprzód, ale wymiana wydaje się transakcyjna.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Wyślij sondę z fizycznymi próbkami — DNA, nasiona, woda';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Sonda niesie esencję Ziemi w obce ręce. Tubylcy odpowiadają podobnym darem — próbkami biologicznymi z ich świata. Biolodzy są w ekstazie.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Awaria silników lądujących';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Podczas rutynowej kontroli systemów silniki lądujące zapalają się omyłkowo — ostry huk rozbrzmiewa na dolnych pokładach, a statek szarpie. Diagnostyka ujawnia pękniętą dyszę paliwową w głównej macierzy lądowania. Bez naprawy lądowanie będzie trudne.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Przekieruj zespół techniczny do wyprodukowania zamiennej dyszy';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Inżynierowie pracują na podwójnych zmianach i wytwarzają nową dyszę ze stopu kadłuba. System lądowania przywrócony, choć zaplecze techniczne wyczerpane.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Wystrzel sondę do testowania kalibracji ciągu w próżni';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Sonda dostarcza dane o ciągu w czasie rzeczywistym, umożliwiając inżynierom rekalibrację wokół uszkodzonej dyszy. Nie pełna naprawa, ale system lądowania się stabilizuje.';

  @override
  String get event_landingSimDrill_title => 'Symulacja ćwiczebna lądowania';

  @override
  String get event_landingSimDrill_narrative =>
      'Z lądowaniem coraz bliżej, kapitan nakazuje pełną symulację lądowania. Załoga zapina się, systemy testowane pod obciążeniem, a wirtualne zejście się rozpoczyna. To najbardziej realistyczna próba, jaką dostaną.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Skup się na precyzji technicznej — przeprowadź ćwiczenie podręcznikowo';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Symulacja ujawnia dwa drobne błędy kalibracji, natychmiast poprawione. System lądowania jest szczelniejszy dzięki temu.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Zrób z tego wydarzenie pokładowe — transmituj symulację';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Koloniści oglądają z każdego ekranu na pokładzie. Wspólne doświadczenie symulowanego zejścia — trzęsienie, wiwaty — jednoczy załogę jak nic innego.';

  @override
  String get event_dysonSphere_title => 'Sfera Dysona';

  @override
  String get event_dysonSphere_narrative =>
      'Czujniki wykrywają niemożliwą strukturę — częściową sferę Dysona otaczającą odległą gwiazdę, zbierającą całą jej energię. Ktokolwiek to zbudował, przekroczył wszystko, co ludzkość kiedykolwiek pojęła. Port dokowania otwiera się, gdy się zbliżamy.';

  @override
  String get event_dysonSphere_choice0_text => 'Zadokuj i zbadaj strukturę';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Wewnątrz zautomatyzowane systemy obdarowują nas technologią posuwającą nasze możliwości o wieki. Pięciu inżynierów ginie od mechanizmów obronnych stacji, zanim rozpoznaje ona nasze intencje. Konstruktory przebudowane z obcych stopów.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Zbieraj energię z zewnętrznej powierzchni';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Kąpiemy się w nadmiarze promieniowania sfery. Każdy system na pokładzie ładuje się do maksimum. Załoga patrzy w osłupieniu.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Badaj z bezpiecznej odległości i ruszaj dalej';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Skany dalekiego zasięgu ujawniają zasady budowlane, które rewolucjonizują nasze rozumienie inżynierii.';

  @override
  String get event_nanotechPlague_title => 'Plaga nanotechnologii';

  @override
  String get event_nanotechPlague_narrative =>
      'Chmura zbuntowanych nanomaszyn, pozostałość programu zbrojeniowego jakiejś martwej cywilizacji, infiltruje statek przez mikropęknięcia kadłuba. Rozkładają niekrytyczne systemy na poziomie molekularnym. Rój się rozprzestrzenia.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'Impuls EMP — smaż wszystko w dotkniętych sekcjach';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Impuls elektromagnetyczny niszczy nanity, ale także uszkadza naszą elektronikę w tych sekcjach. Koloniści w strefie wybuchu doznają oparzeń.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Odessij atmosferę z dotkniętych sekcji do próżni';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Bez atmosfery nanity zwalniają i giną. Ale sekcje utracone, wraz ze zgromadzonymi zapasami i archiwami kultury.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Przeprogramuj je — zamień broń w narzędzia';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Genialny inżynier łamie kod nanitów, ale pięciu członków załogi w najbardziej dotkniętych sekcjach jest już nie do uratowania. Przeprogramowany rój zaczyna naprawiać statek zamiast go niszczyć.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Poświęć rdzeń AI sondy, by stworzyć kontr-rój';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Procesory sondy przekierowane do kontroli defensywnego roju nanitów. Plaga zneutralizowana z minimalnymi stratami.';

  @override
  String get event_prematureAwakening_title => 'Przedwczesne przebudzenie';

  @override
  String get event_prematureAwakening_narrative =>
      'Kaskadowa awaria w zatoce kriokapsuł budzi 200 kolonistów dekady za wcześnie. Są zdezorientowani, przestraszeni i konsumują zasoby przeznaczone na fazę lądowania. Wśród nich są dzieci, które nigdy nie znały niczego poza statkiem.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Zintegruj ich z załogą — więcej rąk, więcej nadziei';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Obudzeni koloniści stają się produktywnymi członkami załogi. Dwudziestu nie przeżywa gwałtownego rozmrożenia, ale reszta się zbiera. Zasoby napięte, ale duchy rosną.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Spróbuj ponownie ich zamrozić — ryzykowne, ale konieczne';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Proces ponownego mrożenia jest niedoskonały. Większość przeżywa, ale niektórzy giną. Ocaleni noszą blizny psychologiczne.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Daj im własną sekcję statku';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Dziesięciu kolonistów ginie z powodu komplikacji awaryjnego rozmrożenia, ale reszta tworzy mikrokolonię wewnątrz statku. Rozwijają własną kulturę i samorząd, repycję osadnictwa planetarnego.';

  @override
  String get event_stowawaysAdvanced_title => 'Ukryci pasażerowie';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Głęboko w ładowni, za fałszywymi grodziami, ochrona odkrywa całą ukrytą społeczność — 80 ludzi, którzy wsiedli nielegalnie przed startem. Żyli w ścianach statku przez całą podróż, utrzymując własne ogrody i podłączenia energetyczne.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Powitaj ich — 80 kolonistów więcej to dar';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Ukryta społeczność wnosi umiejętności improwizowanej inżynierii i zaradności, które zadziwiają załogę. Ich ogrody przesadzono do głównego biodromu.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Zamknij ich i redystrybuuj skradzione zasoby';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Odzyskane zapasy wzmacniają kilka systemów, ale zamknięcie rodzin — w tym dzieci — prześladuje załogę.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Negocjuj — dołączą jako równi, jeśli podzielą się technologią';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Ich improwizowane ogniwa i triki hydroponiczne poprawiają wydajność statku. Napięta, ale produktywna integracja się rozpoczyna.';

  @override
  String get event_alienReservation_title => 'Rezerwat obcych';

  @override
  String get event_alienReservation_narrative =>
      'Natrafiamy na obcy rezerwat przyrody — region przestrzeni celowo zasiany planetami nadającymi się do życia i chroniony przez zautomatowanych strażników. Strażnicy skanują nas i wyświetlają wiadomość: \"Możecie osiedlić JEDEN świat. Wybierajcie mądrze. Ingerencja w pozostałe — zostaniecie usunięci.\"';

  @override
  String get event_alienReservation_choice0_text =>
      'Przyjmij z wdzięcznością — jeden świat to wszystko, czego potrzebujemy';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Strażnicy prowadzą nas do przygotowanego świata. Skany ujawniają, że jest wyjątkowo nadający się do ludzkiego życia.';

  @override
  String get event_alienReservation_choice1_text =>
      'Negocjuj lepsze warunki — ludzkość potrzebuje miejsca do rozwoju';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Strażnicy rozważają naszą prośbę. Ulepszają nasze skanery danymi o dziesiątkach systemów poza rezerwatem.';

  @override
  String get event_alienReservation_choice2_text =>
      'Odmów i odejdź — nie damy się zamknąć w klatce';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Załoga debatuje przez dni. Wolność ponad bezpieczeństwo. Strażnicy pozwalają nam odlecieć z darem: mapą pobliskich zagrożeń.';

  @override
  String get event_cosmicHorror_title => 'Coś między gwiazdami';

  @override
  String get event_cosmicHorror_narrative =>
      'Coś ogromnego i ciemnego przesłania gwiazdy przed nami — ani mgławica, ani czarna dziura. Nie ma masy, nie ma sygnatury energetycznej, nie ma obecności elektromagnetycznej. Ale jest TAM i jest nas świadome. Członkowie załogi w pobliżu przedniego pokładu obserwacyjnego zgłaszają przytłaczające przerażenie. Dwóch usypiano.';

  @override
  String get event_cosmicHorror_choice0_text => 'Pełen wstecz — uciekaj TERAZ';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Statek napina się przeciw własnemu pędowi. Uciekamy, ale terror nie ustępuje. Niektórzy koloniści nigdy nie odzyskują zdrowia psychicznego.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Zamknij pokład obserwacyjny i przebij się';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Trzy dni ślepego lotu przez ciemność. Gdy gwiazdy wracają, załoga płacze z ulgi. Kadłub jest wyryty wzorami, których nikt nie potrafi wyjaśnić.';

  @override
  String get event_cosmicHorror_choice2_text => 'Spróbuj komunikacji';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Istota odpowiada — nie słowami, lecz wiedzą wciśniętą bezpośrednio w umysły załogi. Mapy gwiezdne, fizyka, prawdy o wszechświecie. Połowa załogi jest oświecona. Druga połowa złamana.';

  @override
  String get event_cosmicHorror_choice3_text => 'Ofiaruj sondę jako trybut';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Sonda dryfuje w ciemność i znika. Istota kurczy się nieco, jakby usatysfakcjonowana. Nasza droga się otwiera.';

  @override
  String get event_meteorGlancingHit_title => 'Styczny uderzenie meteoru';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Meteor wielkości głazu muska lewą burtę kadłuba pod płytkim kątem. Uderzenie odrywa trzy metry zewnętrznego poszycia i wysyła fale wstrząsowe przez całą konstrukcję. Alarmy kontroli szkód ryczą na każdym pokładzie.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Przekieruj wszystkie boty naprawcze do przebicia natychmiast';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Boty uszczelniają najgorsze uszkodzenia, ale gorączkowe zapotrzebowanie na rezerwy techniczne pozostawia drugorzędne systemy bez serwisu.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Zmniejsz ciąg i niech załoga łata ręcznie';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Wolniejszy postęp, ale załoga wykonuje solidną robotę. Nawigacja cierpi z powodu ograniczonego okna ciągu, gdy dryfujemy.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Poświęć poszycie kadłuba sondy jako materiał łatający';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Sonda rozebrana na części. Łata trzyma i integralność kadłuba zachowana kosztem jednego mniej zwiadowcy.';

  @override
  String get event_meteorDirectImpact_title => 'Bezpośrednie uderzenie meteoru';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Półtonowy żelazny meteoryt przebija na wylot przedni ładunek z prędkością względną powyżej 40 km/s. Dwóch członków załogi w sąsiednim korytarzu jest nieodnalezionych. Zatoka jest otwarta na próżnię.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Uszczelnij ładownię i szukaj ocalonych później';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Zatoka uszczelniona w dziewięćdziesięciu sekundach. Obaj członkowie załogi zdążyli ewakuować się — ledwo. Kadłub nosi trwałe blizny.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Rozpocznij pełną operację ratunkową przed uszczelnieniem';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Jednego ocalałego wyciągnięto. Przedłużone narażenie pogarsza uszkodzenia strukturalne i wyczerpuje rezerwy techniczne.';

  @override
  String get event_meteorDebrisField_title =>
      'Pole gruzu — pozostałości deszczu';

  @override
  String get event_meteorDebrisField_narrative =>
      'Skanery dalekiego zasięgu nie wykryły rozproszonego pola fragmentów meteorowych, aż byliśmy już w środku. Setki kamieni wielkości pięści uderzają w kadłub w losowych odstępach. Każde trafienie to loteria.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Podnieś tarcze i przebij się pełną prędkością';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Tarcze pochłaniają większość trafień, ale sama ilość uderzeń je przytłacza. Kadłub i systemy tarczowe degradują się.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Wyłącz silniki i dryfuj — minimalizuj profil';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Napięte sześć godzin ciszy. Nawigacja wytrącona z kursu przez beznapędowy dryf, ale kadłub wyłania się ze znacznie mniejszą liczbą trafień.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Wystrzel sondę jako przednią tarczę';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Sonda przyjmuje główne uderzenie ostrzału. Statek przemyka w jej cieniu z drobnymi zadrapaniami.';

  @override
  String get event_meteorShowerDense_title =>
      'Nieoczekiwany gęsty deszcz meteorów';

  @override
  String get event_meteorShowerDense_narrative =>
      'Wędrowna kometa rozpadła się gdzieś przed nami, a my wlecieliśmy prosto w serce ciągnącego się za nią strumienia gruzu. Macierze skanerów bombardowane fragmentami, a obudowa czujników systemu lądowania już dostała bezpośredni cios.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Chroń system lądowania — obróć statek';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Obrót osłania system lądowania, ale wystawia macierz skanerów atmosferycznych na główne uderzenie.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Osłoń macierze skanerów — są niezastąpione';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Banki skanerów przetrwają w większości nietknięte. System lądowania dostaje umiarkowane uszkodzenia od odłamków, z którymi będziemy musieli żyć.';

  @override
  String get event_solarEmpBurst_title => 'Wybuch EMP — pochodzenie gwiezdne';

  @override
  String get event_solarEmpBurst_narrative =>
      'Kompaktowa pozostałość gwiezdna, obok której przeszliśmy w odległości dnia świetlnego, wyładowała skupiony impuls elektromagnetyczny. Każdy nieosłonięty obwód na statku jest zagrożony. Mamy sekundy na decyzję, co chronić.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Skieruj całą ochronę przeciwprzepięciową na nawigację i podtrzymanie życia';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Nawigacja i podtrzymanie życia przetrwają nietknięte. Zestaw skanerów i zaplecze techniczne absorbują impuls bez osłon — oba poważnie uszkodzone.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Chroń macierze skanerów i zaplecze techniczne';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Systemy naukowe i inżynieryjne zachowane. Nawigacja sprawia problemy przez godziny po tym, jak jej obwody powoli dochodzą do siebie.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Wyłącz wszystko i zrestartuj po impulsie';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Zimny restart jest agonią — dwanaście godzin ręcznych rebootów. Ale żaden system nie jest spalony bezpowrotnie.';

  @override
  String get event_solarRadiationWave_title =>
      'Fala radiacyjna — ekspozycja klasy 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Wybuch promieniowania słonecznego o nieoczekiwanej intensywności przetacza się przez środkowe pokłady statku. Zatoki kriokapsuł znajdują się na ścieżce ekspozycji. Koloniści w stanie zawieszenia nie mają naturalnej ochrony przed twardym promieniowaniem na tym poziomie dawki.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Zalej zatoki kriokapsuł chłodziwem jako osłoną radiacyjną';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Chłodziwo pochłania większość promieniowania. Kriokapsuły przetrwają, ale sam system chłodzenia jest częściowo zdegradowany. Piętnastu w najgorzej dotkniętych kapsułach nie udaje się uratować.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Odessij atmosferę z zewnętrznych pokładów, tworząc bufor próżniowy';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Warstwa próżni znacząco redukuje przenikające promieniowanie. Dwudziestu kolonistów w kapsułach najbliższych odessanym sekcjom otrzymuje śmiertelną ekspozycję. Naprężenia kadłuba od różnicy ciśnień nieuniknione.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Przekieruj moc na deflektory magnetyczne';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Deflektory redukują ekspozycję radiacyjną o dwie trzecie. Ośmiu kolonistów otrzymuje śmiertelne dawki przez luki w pokryciu deflektora. Pobór mocy uderza w zaplecze techniczne i zostawia nawigację na minimalnej mocy.';

  @override
  String get event_coronalMassEjection_title => 'Wyrzut koronalny — pełna siła';

  @override
  String get event_coronalMassEjection_narrative =>
      'Wyrzut koronalny o bezprecedensowej skali dogania nas od tyłu. Obłok plazmy pochłonie statek w ciągu godziny. Nasze tarcze nie zostały zaprojektowane na tę klasę zdarzenia. Żadna opcja nie jest czysta.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Uciekaj — pchaj silniki do stu dwudziestu procent';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Zyskujemy dość dystansu, by zmniejszyć ekspozycję. Silniki przegrzewają się, a komputer nawigacyjny sygnalizuje ostrzeżenia o przeciążeniu strukturalnym na całym statku.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Schronienie za cieniem magnetycznym pobliskiej planetoidy';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Pole magnetyczne planetoidy odchyla większość wyrzutu. Nawigowanie tak blisko nieznanego ciała zarysowuje kadłub i obciąża czujniki systemu lądowania.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Wybuch kosmiczny — zakłócenia skanerów';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Wybuch promieniowania kosmicznego o ultrawysokich energiach nasycił szumem całą elektronikę skanerów. Macierze mineralogiczne i grawimetryczne produkują bzdury. Rekalibracja wymaga czasu, którego możemy nie mieć.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Pełny cykl rekalibracji — odłącz statek tymczasowo';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Wszystkie skanery wracają czyste po czterech godzinach starannej rekalibracji. Nawigacja cierpi z powodu ograniczonej świadomości sytuacyjnej podczas okna blackoutu.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Łataj tylko najkrytyczniejsze macierze — resztę zostaw zaszumioną';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Skanery grawimetryczny i oznak życia przywrócone. Macierze mineralny i temperaturowy pozostają zdegradowane bezterminowo.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Poświęć sprzęt telemetryczny sondy na części zamienne';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Kanibalizacja pakietu czujników sondy daje nam komponenty do przywrócenia zestawu skanerów bez długiej rekalibracji.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Wybuch kosmiczny — ekspozycja kolonistów';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Wtórny deszcz promieniowania kosmicznego przeniknął ekranowanie kriokapsuł w zatoce 6. Koloniści w stanie zawieszenia otrzymują kumulowane uszkodzenia DNA od promieniowania jonizującego. Bez interwencji mechanizmy naprawy komórkowej zawiodą w dotkniętych kapsułach.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Awaryjne rozmrożenie — przywróć dotkniętych kolonistów do przytomności';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Dwustu kolonistów obudzonych przedwcześnie. Czterdziestu z najpoważniejszymi uszkodzeniami DNA nie reaguje na leczenie. Zespół medyczny robi, co może dla reszty.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Przekieruj pancerz kadłuba, by osłonić zatokę 6 — koszt strukturalny';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Kolonia uratowana, ale zdejmowanie pancerza z jednej sekcji kadłuba pozostawia statek strukturalnie wrażliwym w tej strefie.';

  @override
  String get event_coolantLeak_title => 'Pęknięcie linii chłodziwa';

  @override
  String get event_coolantLeak_narrative =>
      'Główna linia chłodziwa pękła za ścianą reaktora. Przegrzany płyn kriogeniczny tryska na węzeł krytycznych przewodów zaplecza technicznego. Temperatura reaktora rośnie.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Wyłącz reaktor i pozwól mu ostygnąć — zaakceptuj pełny blackout';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Kontrolowane wyłączenie zapobiega katastrofie. Dwanaście godzin na bateriach podtrzymania życia jest upiornych, a systemy restartują się niedoskonale.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Wyślij zespół kontroli szkód — ryzykuj narażenie załogi';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Zespół uszczelnia pęknięcie w czterdziestu minutach. Jeden członek załogi ginie od narażenia na przegrzane chłodziwo. Naprawa jest solidna.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Przekieruj chłodziwo z zatoki kriokapsuł jako awaryjne zasilanie';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Reaktor ustabilizowany. Zatoka kriokapsuł pracuje cieplej niż bezpieczne progi przez sześć godzin — drobne, ale realne uszkodzenia komórkowe się kumulują.';

  @override
  String get event_powerGridFailure_title =>
      'Awaria głównej sieci energetycznej';

  @override
  String get event_powerGridFailure_narrative =>
      'Kaskadowa usterka wyłączyła główną sieć energetyczną. Systemy zapasowe podtrzymują życie i ogrzewanie kriokapsuł, ale nawigacja, skanery i zatoka konstruktorów są ciemne. Każda minuta offline kosztuje nas precyzję kursu.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Przywróć nawigację i skanery najpierw — zaakceptuj dłuższy przestój konstruktorów';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Nawigacja i skanery wracają online w dwie godziny. Zatoka konstruktorów przegapia krytyczny cykl konserwacyjny.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Przywróć konstruktory najpierw — użyj ich do przyspieszenia naprawy';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Konstruktory przekierowują energię wydajnie. Pełne przywrócenie sieci następuje szybciej, ale nawigacja silnie dryfuje podczas przedłużonego blackoutu.';

  @override
  String get event_lifeSupportGlitch_title =>
      'Kaskadowa usterka podtrzymania życia';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'AI zarządzająca podtrzymaniem życia weszła w pętlę błędów, nieprzewidywalnie zmieniając interwały oczyszczania dwutlenku węgla. Poziomy CO₂ na zamieszkanych pokładach wahają się. Załoga dostaje bólów głowy; niektórzy są już unieruchomieni.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Wymuś twardy reset AI podtrzymania życia';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Reset kasuje pętlę, ale ręczne nadpisania działają przez dziesięć godzin. Trzech członków załogi pada ofiarą nagromadzenia CO₂, zanim poziomy się normalizują.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Łataj pętlę w oprogramowaniu — wolniej, ale bezpieczniej';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Zespół software\'owy izoluje i łata usterkę przez sześć napiętych godzin. Poziomy CO₂ powoli się normalizują. Brak twardego resetu.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Ewakuuj dotknięte pokłady i jedź na minimalnym podtrzymaniu życia';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Dwóch kolonistów ginie w chaosie ewakuacji. Systemy normalizują się po zimnym restarcie AI.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Awaria recyklera wody';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Główna jednostka odzysku wody zakleszczyła się. Zapasowa pracuje już na pełnych obrotach. Bez interwencji załoga będzie na racjach awaryjnych w ciągu czterdziestu ośmiu godzin, a zasilanie chłodziwem kriokapsuł zostanie zagrożone w ciągu siedemdziesięciu dwóch.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Ściągnij każdego dostępnego technika, by odbudować recykler';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Jednostka odbudowana w trzydziestu godzinach. Czterech już osłabionych członków załogi nie przeżywa odwodnienia.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Przekieruj rezerwy chłodziwa z kriokapsuł jako awaryjne zaopatrzenie w wodę pitną';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Załoga utrzymana przy życiu, ale ośmiu kolonistów w nagrzewających się kapsułach doznaje nieodwracalnych uszkodzeń komórkowych. Margines chłodziwa kriokapsuł niebezpiecznie się kurczy.';

  @override
  String get event_navComputerReboot_title =>
      'Awaryjny restart komputera nawigacyjnego';

  @override
  String get event_navComputerReboot_narrative =>
      'Komputer nawigacyjny zablokował się w trakcie korekty kursu, pozostawiając statek w niekontrolowanym powolnym obrocie. Każda sekunda nieskorygowanego obrotu powiększa nasz dryf z planowanej trajektorii. Pełny restart to jedyne rozwiązanie.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Zrestartuj natychmiast — zaakceptuj pełny okres blackoutu';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Cztery godziny ślepego lotu, gdy system się przeładowuje. Obrót zatrzymany, ale błąd kursu jest znaczący.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Użyj ręcznego sterowania ciągiem, by najpierw zatrzymać obrót';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Wykwalifikowane pilotowanie zatrzymuje rotację przed restartem. Nawigacja wraca z mniejszym błędem kursu, ale ręczne spalanie obciąża kadłub.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Podaj telemetrię sondy do zapasowej jednostki nawigacyjnej';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Dane inercyjne sondy dają zapasowej jednostce wystarczającą referencję do utrzymania kursu. Główna nawigacja restartuje się czysto.';

  @override
  String get event_crewAirlocked_title => 'Członek załogi przy śluzie';

  @override
  String get event_crewAirlocked_narrative =>
      'Kolonistka — obudzona wcześniej do obserwacji medycznej — zabarykadowała się wewnątrz zewnętrznej śluzy i cykluje drzwi zewnętrzne. Nie reaguje na komunikację. Psychologiczny koszt głębokiego kosmosu coś w niej złamał.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Nadpisz śluzę zdalnie — zablokuj ją siłą';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Drzwi zablokowane, zanim zdążyła zakończyć cykl. Zostaje usypiana i zabrana do szpitala. Załoga jest wstrząśnięta, ale zjednoczona.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Wyślij terapeutę, by ją przywołał';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'Po trzech desperackich godzinach terapeuta wyprowadza ją żywą. Incydent wyzwala szerszy kryzys zdrowia psychicznego na zamieszkanych pokładach.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Uszczelnij korytarz i pozwól incydentowi się rozwiązać';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Śluza się cykluje. Strata zalogowana. Pozostali członkowie załogi niosą jej ciężar przez miesiące.';

  @override
  String get event_crewCryopodSabotage_title => 'Sabotaż zatoki kriokapsuł';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Nagrania z kamer ujawniają członka załogi — obudzonego trzy miesiące temu na rutynową rotację — metodycznie wyłączającego elementy grzejne kriokapsuł w zatoce 4. Skonfrontowany, krzyczy, że koloniści to pasożyty konsumujące zasoby należące do żywej załogi.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Aresztuj i izoluj go natychmiast';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Obezwładniony. Czterdzieści kapsuł skompromitowanych przed alarmem. Ekipy naprawcze ratują większość, ale nie wszystkie.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Negocjuj — wysłuchaj jego skarg przed działaniem';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Negocjacje ujawniają głębszy kryzys morale. Ustępuje, ale sześćdziesiąt kapsuł zostało sfałszowanych, zanim to zrobił.';

  @override
  String get event_crewSupplyHoarder_title => 'Odkryto gromadzenie zapasów';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Audyt inwentarza ujawnia, że mała grupa członków załogi systematycznie przekierowywała zapasy medyczne, racje żywnościowe i zapasowe komponenty techniczne do ukrytego schowka. Ich uzasadnienie: nie wierzą w powodzenie misji i przygotowują się na drogę powrotną.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Skonfiskuj wszystko i publicznie zrugaj grupę';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Schowek odzyskany niemal w całości. Zaufanie w załodze poważnie pękło. Produktywność cierpi przez tygodnie.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Po cichu przenieś ich — nie rób z tego spektaklu';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Sytuacja rozładowana bez paniki. Część zapasów nie do odzyskania, a leżąca u podłoża rozpacz nigdy nie zostaje właściwie zaadresowana.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Oddaj sprawę załodze — demokratyczny trybunał';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Proces trybunału przywraca poczucie wspólnotowej sprawiedliwości. Cios morale ze skandalu jest rekompensowany kolektywnym podejmowaniem decyzji.';

  @override
  String get event_crewMutinyAttempt_title => 'Bunt — maszynownia przejęta';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Frakcja dziewiętnastu członków załogi zablokowała maszynownię i żąda głosowania w sprawie zawrócenia statku. Wyłączyli panele nadpisywania awaryjnego. Reszta załogi patrzy na monitorach, czekając na rozkazy.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Negocjuj — daj im prawdziwe głosowanie nad misją';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Głosowanie przeprowadzone. Misja kontynuowana niewielką większością. Frakcja ustępuje, ale kulturowa rana jest głęboka.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Odetnij zasilanie maszynowni i odbij ją siłą';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Ochrona odbija pomieszczenie w cztery godziny. Trzech rannych. Przywódcy zamknięci. Nawigacja była w trybie manualnym cały czas i znacząco zdryfowała.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Zalej maszynownię gazem usypiającym z systemu wentylacji';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Gaz się rozprasza. Grupa budzi się w areszcie bez obrażeń. Załoga jest zaniepokojona tym, jak szybko dowództwo uzbrojilo podtrzymanie życia.';

  @override
  String get event_hullFatigueStress_title =>
      'Zmęczenie kadłuba — wykryto pęknięcia naprężeniowe';

  @override
  String get event_hullFatigueStress_narrative =>
      'Skany integralności strukturalnej ujawniają sieć mikropęknięć rozprzestrzeniającą się przez kręgosłup statku — kumulowane uszkodzenia od lat cyklowania termicznego i mikrouderzeń. Pęknięcia nie są jeszcze krytyczne, ale się propagują.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Awaryjne ekipy spawalnicze — pracuj zmianami, aż uszczelnisz';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Tygodnie wyczerpującej pracy naprawczej. Pęknięcia opanowane, ale zaplecze techniczne wyczerpane, a morale spada od nieustannej harówki.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Zmniejsz ciąg, by obniżyć naprężenia strukturalne — zaakceptuj wolniejszy tranzyt';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Niższy ciąg zatrzymuje propagację pęknięć, ale nic nie robi, by wyleczyć istniejące uszkodzenia. Precyzja nawigacji cierpi od zmienionego profilu ciągu.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Użyj botów konstruktorów, by nałożyć kompozytowe listwy wzmacniające';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Konstruktory wykonują doskonałą pracę. Kręgosłup wzmocniony powyżej oryginalnej specyfikacji. Zatoka konstruktorów wyczerpana, ale efektywna.';

  @override
  String get event_hullPressureAnomaly_title =>
      'Anomalia ciśnienia wewnętrznego';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Trzy przedziały środkowej części statku rejestrują anomalne różnice ciśnienia wewnętrznego, spójne z mikroskalową deformacją strukturalną. Jeśli ściany wyginają się do wewnątrz, katastrofalny wybuch może nastąpić bez dalszego ostrzeżenia.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Ewakuuj i uszczelnij przedziały natychmiast';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Przedziały uszczelnione. Szczegółowa inspekcja potwierdza deformację ścian. Utracona przestrzeń zakłóca operacje, a kultura cierpi z powodu ciasnych warunków.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Odessij przedziały do próżni — zatrzymaj różnicę ciśnień';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Odciąganie zatrzymuje deformację. Uszkodzenia strukturalne ograniczone, ale trzy sekcje statku są trwale niezdatne do zamieszkania.';

  @override
  String get event_commsArrayFailure_title => 'Awaria macierzy komunikacyjnej';

  @override
  String get event_commsArrayFailure_narrative =>
      'Główna macierz komunikacji dalekiego zasięgu zamilkła. Ostatnia wiadomość z Ziemi odebrana jedenaście miesięcy temu, a teraz nawet sygnał nośny zaginął. Diagnostyka wewnętrzna sugeruje, że mechanizm wyrównywania anteny zakleszczył się w zimnie.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Wyślij zespół EVA, by ręcznie ustawić antenę';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'EVA trwa dziewięć godzin w otwartej przestrzeni. Antena przywrócona. Jeden członek załogi doznaje dekompresji skafandra podczas reentry — o włos, co wstrząsa wszystkimi.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Przekieruj przez macierz skanerów naukowych jako zapasowy nadajnik';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Macierz naukowa nie jest zoptymalizowana do komunikacji. Sygnał jest słaby i zawodny, a przekierowanie degraduje możliwości skanerów.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Zaakceptuj ciszę — skup zasoby na misji przed nami';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Załoga przetwarza utratę kontaktu z Ziemią na różne sposoby. Dla jednych jest wyzwalająca; dla innych, druzgocąca.';

  @override
  String get event_fuelLineRupture_title => 'Pęknięcie linii paliwowej';

  @override
  String get event_fuelLineRupture_narrative =>
      'Krystaliczne pęknięcie w przewodzie paliwowym 7-B uwalnia plazmę napędową do szybu konserwacyjnego. Wyciek jest mały, ale przyspiesza. Niekontrolowany, zagrozi zarówno wydajności napędu nawigacyjnego, jak i integralności strukturalnej sekcji rufowej.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Izoluj przewód i jedź na zmniejszonej pojemności paliwowej';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Przewód odcięty czysto. Tracimy piętnaście procent wydajności napędu na stałe, co degraduje precyzję nawigacji na resztę podróży.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Spróbuj naprawy na gorąco — łataj przewód pod żywym ciśnieniem';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Ekipa naprawcza udaje się, ledwo. Przewód trzyma, choć niedoskonale. Rufowe poszycie kadłuba wykazuje ślady naprężeń termicznych.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Opróżnij przewód, używając zbiorników ciągu sondy jako przelewu';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Sonda opróżniona i użyta jako tymczasowy zbiornik paliwa. Przewód bezpiecznie odwodniony i naprawiony bez ciśnienia.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Ostrzeżenie o kaskadzie temperaturowej kriokapsuł';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Temperatury kriokapsuł w zatoce 2 rosną w wzorcu zgodnym z kaskadą termiczną. Jeśli kaskada dotrze do zatoki 3, uruchomi automatyczne awaryjne rozmrożenie ponad trzystu kolonistów. Statek nie jest w stanie podtrzymać tylu przytomnych pasażerów jednocześnie.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Zrzuć rezerwy chłodziwa, by zatrzymać kaskadę';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Chłodziwo zatrzymuje kaskadę na granicy zatoki 2. Osiemdziesięciu kolonistów w zatoce 2 doznaje uszkodzeń zawieszeniowych od skoku temperatury.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Kontrolowane rozmrożenie zatoki 2, zanim kaskada wymusi niekontrolowane';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Kontrolowane rozmrożenie przebiega sprawnie, ale umieszcza stu czterdziestu kolonistów na nieprzygotowanym statku. Podtrzymanie życia się napina, kultura pogarsza się pod ciasnotą.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Użyj botów konstruktorów do fizycznej izolacji zatok awaryjnymi grodziami';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Konstruktory wznoszą bariery termiczne na czas. Kaskada zatrzymana. Zatoka konstruktorów poważnie wyczerpana przez operację awaryjną.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Degradacja uszczelnień kriokapsuł — systemowa';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Rutynowe kontrole ujawniają, że partia produkcyjna uszczelnień kriokapsuł degraduje się trzy razy szybciej niż oczekiwano. Dotknięte kapsuły — ponad czterysta — zaczną tracić integralność atmosferyczną w ciągu sześciu miesięcy, jeśli uszczelnienia nie zostaną wymienione.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Wyprodukuj zamienne uszczelnienia z zapasów surowców';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Konstruktory produkują zamienne uszczelnienia przez osiem tygodni. Rezerwy surowców ostro spadają.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Skonsoliduj kolonistów — przenieś ich do kapsuł z dobrymi uszczelnieniami';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Konsolidacja działa, ale część kapsuł jest przepełniona. Wydajność kriogeniczna spada i długoterminowe zdrowie kolonistów jest zagrożone.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Awaria oczyszczaczy tlenu — krytyczna';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Główny bank oczyszczaczy tlenu całkowicie zawiódł. Stężenia CO₂ na zamieszkanych pokładach rosną ku niebezpiecznym poziomom. Zapasowe oczyszczacze radzą sobie z mniej więcej czterdziestoma procentami obciążenia. Każda minuta bezczynności kosztuje życia.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Awaryjna hibernacja — połóż załogę z powrotem natychmiast';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Załoga pośpiesznie wprowadzona w tymczasowe zawieszenie. Poziomy CO₂ stabilizują się przy mniejszej liczbie aktywnych metabolizmów. Oczyszczacz naprawiony przez zautomatyzowane systemy w ciągu następnego tygodnia.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Rozłóż komponenty z macierzy skanerów, by odbudować oczyszczacz';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Oczyszczacz odbudowany w jedenastu napiętych godzinach. Cała załoga przeżywa, choć niektórzy wykazują objawy łagodnej hipoksji. Zestaw skanerów trwale zdegradowany.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Odprowadź atmosferę bogatą w CO₂ i zastąp z awaryjnych zbiorników tlenu';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Odprowadzenie natychmiast oczyszcza atmosferę. Awaryjne rezerwy O₂ znacząco uszczuplone. Jeśli nastąpi kolejna awaria, nie ma już marginesu.';

  @override
  String get event_deadAlienArtifact_title => 'Cichy podróżnik';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Skanery dalekiego zasięgu wykrywają dryfujący statek — obcego projektu, ciemny, brak sygnatur mocy. Zespół abordażowy znajduje jednego pasażera: gadziej istotę przypiętą do uprzęży pilota, dawno martwą, z pazurami wciąż ściskającymi krystaliczne urządzenie pulsujące słabym światłem. Log statku jest nienaruszony, ale zaszyfrowany. Cokolwiek zabiło tego podróżnika, to nie była przemoc — wyraz zamrożony na jego twarzy to wyczerpanie, nie strach. Umarł sięgając po coś, czego nigdy nie znalazł.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Weź krystaliczne urządzenie i zbadaj je';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Urządzenie łączy się z naszymi systemami technicznymi w sposób, który inżynierowie ledwie pojmują. Okazuje się komputerem nawigacyjnym o nadzwyczajnej wyrafinowaniu. Mapy gwiezdne zalewają nasze wyświetlacze — w tym dane o planetach, których jeszcze nie osiągnęliśmy.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Rozszyfruj log statku — dowiedz się, co wiedział';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Dni pracy przynoszą częściowe tłumaczenie. Obcy był geodetą, katalogującym nadające się do życia światy dla cywilizacji, która upadła wieki temu. Jego ostatnie wpisy opisują planetę o nadzwyczajnej obietnicy — a współrzędne są w naszym zasięgu. Archiwum kulturowe wchłania wszystko: obcą poezję, mapy gwiezdne, ostatnią wiadomość do rodziny, która już nie istnieje.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Ogołoć cały statek z części';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Zespół abordażowy metodycznie rozbiera obcy statek. Jego stopy kadłubowe są dekady przed naszymi. Jego ogniwa energetyczne wciąż trzymają ładunek. Obcemu urządzono pogrzeb kosmiczny — puszczony dryfem ku najbliższej gwieździe. Exodus jest silniejszy po spotkaniu, choć trochę nawiedzony.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Zostaw nietknięte — to grób';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Kapitan rejestruje współrzędne i nadaje pamiątkowy sygnał na wszystkich częstotliwościach. Załoga jest poważna, lecz zjednoczona. Coś w uhonorowania współtowarzysza podróży — nawet obcego — przypomina wszystkim, dlaczego tu są.';

  @override
  String get event_repairStation_title => 'Stacja przekaźnikowa';

  @override
  String get event_repairStation_narrative =>
      'Czujniki wykrywają masywną strukturę na orbicie wygasłego karła — zautomatyzowaną stację naprawczą, wciąż sprawną po tysiącleciach. Jej zaciski dokujące wyciągają się, gdy podchodzimy, a syntetyczny głos nadaje w stu językach, ostatnim z których jest sztywny, matematyczny angielski: \"WYKRYTO STATEK. SYSTEMY ZDEGRADOWANE. PROTOKOŁY NAPRAWY DOSTĘPNE. WYMAGANA WYMIANA.\" Manifest stacji wymienia usługi i ceny w uniwersalnych jednostkach zasobów. Będzie handlować, ale nie dawać.';

  @override
  String get event_repairStation_choice0_text =>
      'Wymień sondy za pełny remont statku';

  @override
  String get event_repairStation_choice0_outcome =>
      'Drony naprawcze stacji roją się po Exodusie w balecie precyzyjnego spawania i wymiany obwodów. Przebicia kadłuba uszczelnione, nawigacja przekalibrowana, skanery przywrócone. Gdy się wycofują, statek wydaje się nowy. Zatoka sond jednak jest pusta.';

  @override
  String get event_repairStation_choice1_text =>
      'Wydaj paliwo na naprawę tylko krytycznych systemów';

  @override
  String get event_repairStation_choice1_outcome =>
      'Stacja przyjmuje pręty paliwowe jako zapłatę i skupia się na najgorzej uszkodzonych systemach. Praca jest szybka i nieskazitelna. Wskaźnik paliwa wyraźnie spada, ale statek przeżyje dłużej dzięki temu.';

  @override
  String get event_repairStation_choice2_text =>
      'Wymień bazy danych technicznych za sondy i ogniwa energetyczne';

  @override
  String get event_repairStation_choice2_outcome =>
      'AI stacji jest żarłoczna na dane. Kopiuje całą naszą bibliotekę techniczną — podręczniki inżynieryjne, bazy naukowe, plany produkcji — i w zamian wytwarza świeże sondy i ogniwa energetyczne z surowców. Archiwum techniczne uszczuplone, ale zapasy bezcenne.';

  @override
  String get event_repairStation_choice3_text =>
      'Zaoferuj archiwum kulturowe za kompleksowy remont';

  @override
  String get event_repairStation_choice3_outcome =>
      'Stacja nadaje dzieła Shakespeare\'a, Bacha i tysiąca innych ludzkich głosów do swoich banków pamięci. W zamian przeprowadza gruntowny remont i ładuje zatoki sond świeżo wyprodukowanymi jednostkami. Archiwum kulturowe ogołocone, ale statek może teraz naprawdę dotrzeć do celu.';

  @override
  String get ending_scoreLabel_landing => 'Lądowanie';

  @override
  String get ending_scoreLabel_construction => 'Budownictwo';

  @override
  String get ending_scoreLabel_technology => 'Technologia';

  @override
  String get ending_scoreLabel_culture => 'Kultura';

  @override
  String get ending_scoreLabel_atmosphere => 'Atmosfera';

  @override
  String get ending_scoreLabel_gravity => 'Grawitacja';

  @override
  String get ending_scoreLabel_temperature => 'Temperatura';

  @override
  String get ending_scoreLabel_water => 'Woda';

  @override
  String get ending_scoreLabel_resources => 'Zasoby';

  @override
  String get ending_scoreLabel_nativeRelations => 'Relacje z tubylcami';

  @override
  String get ending_scoreLabel_population => 'Populacja';

  @override
  String get ending_tierGoldenAge => 'Złoty wiek';

  @override
  String get ending_tierThrivingColony => 'Kwitnąca kolonia';

  @override
  String get ending_tierSurvival => 'Przetrwanie';

  @override
  String get ending_tierStruggling => 'Walka o byt';

  @override
  String get ending_tierDire => 'Krytyczne';

  @override
  String get ending_tierExtinction => 'Wyginięcie';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'Pierwszy rozkwit $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Głębokie korzenie na $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Ciężko wywalczona przyczółek na $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Jałowa gleba na $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Kolonia-wrak na $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Ostatnia transmisja z $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Lądowanie na $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Wbrew wszelkim przeciwnościom, transmisja zakorzeniła się. $planetName przyjęła ludzkość nie jako wrak, lecz jako żywe nasiono: żyzna gleba, działające systemy i dość siły, by budować ponad zwykłe przetrwanie. W ciągu pokolenia sztuka, nauka i kultura rozkwitły. Dzieci urodzone na $planetName patrzyły w górę na nieznane gwiazdy i nazywały je domem. Podróż stała się mitem założycielskim nowej cywilizacji, gotowej rzucić własną przyszłość w gwiazdy.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Lądowanie było trudne, ale nasiono się utrzymało. $planetName okazała się dość łaskawa, by woda płynęła, uprawy się zakorzeniły, a ocalałe systemy statku zostały rozłożone na pierwszą prawdziwą osadę. Pod koniec pierwszej dekady kwitnące miasteczko stało tam, gdzie Exodus spoczął. Ludzkość nie tylko przetrwała przeprawę. Zaczęła od nowa.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Przetrwanie nigdy nie było gwarantowane, a na $planetName każdy dzień trzeba było sobie zarobić. Uszkodzony statek zapewniał jedynie najniezbędniejsze minimum, ale nasiono nie umarło w transporcie. Koloniści adaptowali się przez upór i pomysłowość, wycinając przyszłość ze świata, który niewiele dawał dobrowolnie. Późniejsze pokolenia będą pamiętać trudy lat założycielskich i determinację, która utrzymała transmisję przy życiu.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Kolonia kurczowo trzymała się istnienia niczym nasiono rozrzucone na złą glebę. $planetName była nieubłagana, zasoby nikłe, a zdegradowane systemy statku oferowały niewiele pomocy. Racjonowanie stało się sposobem życia. Niektórzy szeptali, że Exodus powinien był lecieć dalej. Mimo to osada przetrwała: zmniejszona, zahartowana i niechętna, by umrzeć po cichu.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Lądowanie na $planetName było katastrofą. Krytyczne systemy statku zawiodły podczas schodzenia, a to, co miało być zasiewem, stało się rozbiciem. W ciągu miesięcy kolonia zredukowała się do garstki desperackich ocalałych ukrywających się w szczątkach statku. Czy przetrwają kolejny rok, było niepewne. Ostatni log zamykał się jednym zdaniem: \"Wciąż tu jesteśmy. Na razie.\"';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Transmisja zakończyła się na $planetName. Sygnał ratunkowy pulsował długo po tym, jak ostatni kolonista wziął oddech, ale nasiono nigdy nie zakorzeniło się. Czarna skrzynka statku zarejestrowała wszystko: zawodzące systemy, desperackie ostatnie dni i ciszę, która nastąpiła. Jeśli inny statek kiedykolwiek znajdzie ten świat, będzie wiedział, że ludzkość próbowała rozsiać życie wśród gwiazd i tu poniosła porażkę.';
  }

  @override
  String get ending_epilogueDefault =>
      'Podróż się skończyła. To, co nadchodzi, zależy od ocalałych.';

  @override
  String get ending_governmentDemocracy => 'Demokracja';

  @override
  String get ending_governmentTechnocracy => 'Technokracja';

  @override
  String get ending_governmentRepublic => 'Republika';

  @override
  String get ending_governmentAutocracy => 'Autokracja';

  @override
  String get ending_governmentTribalCouncil => 'Rada plemienna';

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
  String get ending_cultureRenaissance => 'Renesans';

  @override
  String get ending_culturePreserved => 'Zachowana';

  @override
  String get ending_cultureFragmented => 'Fragmentaryczna';

  @override
  String get ending_cultureLost => 'Utracona';

  @override
  String get ending_techAdvanced => 'Zaawansowana';

  @override
  String get ending_techIndustrial => 'Przemysłowa';

  @override
  String get ending_techPreIndustrial => 'Przedprzemysłowa';

  @override
  String get ending_techStoneAge => 'Epoka kamienia';

  @override
  String get ending_constructionAdvanced => 'Zaawansowane';

  @override
  String get ending_constructionFunctional => 'Funkcjonalne';

  @override
  String get ending_constructionPrimitive => 'Prymitywne';

  @override
  String get ending_constructionNone => 'Brak';

  @override
  String get ending_nativesNone => 'Brak';

  @override
  String get ending_nativesIntegrated => 'Zintegrowani';

  @override
  String get ending_nativesCoexistence => 'Współistnienie';

  @override
  String get ending_nativesTension => 'Napięcie';

  @override
  String get ending_nativesConflict => 'Konflikt';

  @override
  String get ending_nativesAlliance => 'Alliance';

  @override
  String get ending_nativesSubjugation => 'Subjugation';

  @override
  String get ending_landscapeGravityHigh =>
      'Silna grawitacja przyciska wszystko ku ziemi. ';

  @override
  String get ending_landscapeGravityLow =>
      'W niskiej grawitacji każdy krok wynosi osadników w powietrze. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Grawitacja jest niemal jak na Ziemi. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Rozległe oceany ciągną się po każdy horyzont, zasilane niezliczonymi rzekami. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Jeziora i rzeki zapewniają dostateczną ilość wody. ';

  @override
  String get ending_landscapeWaterLow =>
      'Woda jest rzadka — małe sadzawki i podziemne warstwy wodonośne podtrzymują życie. ';

  @override
  String get ending_landscapeWaterNone =>
      'Krajobraz jest suchy jak kość, bez wody powierzchniowej w zasięgu wzroku. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Gęsta atmosfera niesie obce zapachy na ciepłych bryzach. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Cienkie, lecz oddychalne powietrze wymaga aklimatyzacji. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Ciśnienie atmosferyczne jest niebezpiecznie niskie — szczelne habitaty są niezbędne. ';

  @override
  String get ending_landscapeMoonMetalRich =>
      'Lśniący, prążkowany minerałami księżyc dominuje nad nocnym niebem, a jego metaliczna powierzchnia odbija światło gwiazd na cały krajobraz. ';

  @override
  String get ending_landscapeMoonUnstable =>
      'Popękany księżyc wisi nad głową, a jego kruszejąca powierzchnia ciągnie za sobą słaby pierścień gruzu — stałe przypomnienie o bombardowaniu grożącym z dołu. ';

  @override
  String get ending_landscapeMoonBarren =>
      'Blady, jałowy księżyc wschodzi nad horyzontem, a jego pokryta kraterami powierzchnia jest cichym strażnikiem kolonii. ';

  @override
  String get ending_landscapeHighRotation =>
      'Planeta obraca się gwałtownie — dni trwają zaledwie godziny, a wiatry Coriolisa biją we wszystko, co stoi wysoko. ';

  @override
  String get ending_landscapeLowRotation =>
      'Planeta obraca się z agonizującą powolnością. Półkula zwrócona ku słońcu piecze się, podczas gdy ciemna strona zamarza, a jedynie pas zmierzchu między nimi daje wytchnienie. ';

  @override
  String get ending_landscapeVolcanic =>
      'Pasma wulkaniczne rozcinają horyzont, a ich zbocza znaczone rzekami stopionej skały. Powietrze smakuje siarką, a ziemia drży pod stopami. ';

  @override
  String get ending_landscapeTectonic =>
      'Skorupa jest popękana i niespokojna — nowe szczeliny otwierają się bez ostrzeżenia, odsłaniając lśniące żyły minerałów pośród chmur pyłu. ';

  @override
  String get ending_landscapeElectricalStorms =>
      'Błyskawice łukami przecinają niebo w nieprzerywanych arkuszach, zamieniając noc w dzień i napełniając powietrze smakiem ozonu. ';

  @override
  String get ending_landscapeToxicSpores =>
      'Chmury luminescencyjnych zarodników dryfują na każdym powiewie, piękne i śmiercionośne — koloniści będą potrzebować uszczelnionych habitatów lub masek filtrujących, by przeżyć na zewnątrz. ';

  @override
  String get ending_landscapeDeepOceans =>
      'Planeta jest głównie oceanem — rozległe, ciemne wody ciągnące się po każdy horyzont, z jedynie rozproszonymi archipelagami przebijającymi powierzchnię. ';

  @override
  String get ending_landscapeGeothermalVents =>
      'Otwory geotermalne przebijają skorupę, wydmuchując smugi pary bogatej w minerały, która ogrzewa otaczający krajobraz i podtrzymuje oazy życia. ';

  @override
  String get ending_landscapeStrongMagnetosphere =>
      'Potężne pole magnetyczne owija planetę, odchylając promieniowanie gwiezdne, ale siejąc spustoszenie w nieosłoniętej elektronice. Kompasy wirują bezużytecznie. ';

  @override
  String get ending_landscapeWeakMagnetosphere =>
      'Bez silnego pola magnetycznego wiatr gwiezdny obdziera górną atmosferę. Spektakularne zorze kaskadowo spływają po niebie na wszystkich szerokościach geograficznych. ';

  @override
  String get ending_landscapeMegafauna =>
      'Kolosalne stworzenia przemieszczają się po krajobrazie — niektóre wielkie jak budynki, a ich kroki czuć kilometrami dalej. ';

  @override
  String get ending_landscapeSymbioticOrganisms =>
      'Biosfera działa jako przeplatająca się sieć symbiozy: każdy organizm zależy od swoich sąsiadów i ich podtrzymuje w eleganckiej, kruchej równowadze. ';

  @override
  String get ending_landscapeGravityWells =>
      'Kieszenie zakrzywionej grawitacji znaczą powierzchnię — głazy unoszą się w powietrzu, a rzeki płyną pod górę, zanim spadną z powrotem na krawędzi anomalii. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Coś rezonuje pod powierzchnią — niski szum odczuwany w kościach, a nie słyszany, jakby sama planeta pamiętała coś pradawnego i ogromnego. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Godna uwagi cecha: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Godne uwagi cechy: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Koloniści $planetName ustanowili demokratyczny rząd, z wybieranymi przedstawicielami prowadzącymi nową cywilizację przez lata formowania.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Władza na $planetName przypadła inżynierom i naukowcom, którzy utrzymali kolonię przy życiu, tworząc technokratyczną radę rządzącą poprzez wiedzę i pragmatyzm.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Republikańska karta została sporządzona w pierwszym roku na $planetName, równoważąc głosy kolonistów z senatem mianowanych przywódców.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'Z instytucjami kultury w ruinie, władza na $planetName skonsolidowała się pod jednym silnym przywódcą, który narzucił porządek z konieczności i siłą woli.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Nieliczni ocaleni na $planetName zorganizowali się w małe klany, rządzone przez radę starszych podejmującą decyzje przy wspólnych ogniskach.';
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
    return 'Koloniści $planetName zorganizowali się najlepiej, jak potrafili.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Zaawansowane systemy budowlane pozwoliły kolonistom $colonyName wznieść stałe struktury w ciągu tygodni od lądowania, kompletne z hermetycznymi habitatami i infrastrukturą.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Sprzęt budowlany kolonii, poturbowany, lecz sprawny, wytworzył solidne schronienia i podstawowe drogi w osadzie.';

  @override
  String get ending_constructionSentencePrimitive =>
      'Z systemami budowlanymi ledwo działającymi, osadnicy wznosili prymitywne schronienia z odzyskanego poszycia statku i lokalnych materiałów.';

  @override
  String get ending_constructionSentenceNone =>
      'Bez działającego sprzętu budowlanego koloniści skulili się w szczątkach samego statku, niezdolni do budowy czegokolwiek nowego.';

  @override
  String get ending_constructionSentenceDefault =>
      'Koloniści budowali, co mogli, z tego, co mieli.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Bogaty w metale księżyc krążący nad głową stał się zbawieniem kolonii — wyprawy wydobywcze na jego powierzchnię dostarczyły surowców, których sama planeta nie mogła zapewnić.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Bogaty w metale księżyc planety stanowił mile widziany dodatek do już wystarczających zasobów mineralnych, napędzając szybki postęp technologiczny.';

  @override
  String get ending_moonUnstable =>
      'Niestabilny księżyc na zanikającej orbicie zasypywał kolonię gruzem, niszcząc infrastrukturę i niezastąpioną technologię w okresowych bombardowaniach meteorytowych.';

  @override
  String get ending_moonBarren =>
      'Jałowy księżyc wisiał na obcym niebie, samotny towarzysz oferujący kolonistom jedynie znajomy widok do kontemplacji w długie noce.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Ziemskie tradycje artystyczne i literackie nie tylko przetrwały, ale rozkwitły w renesans';

  @override
  String get ending_culturePhrase_preserved =>
      'Koloniści zachowali wiele z kulturowego dziedzictwa Ziemi, utrzymując biblioteki i tradycje';

  @override
  String get ending_culturePhrase_fragmented =>
      'Jedynie fragmenty ziemskiej kultury przetrwały — na wpół zapamiętane pieśni i opowieści przekazywane ustnie';

  @override
  String get ending_culturePhrase_lost =>
      'Kultura Ziemi została niemal zapomniana, zastąpiona brutalnym pragmatyzmem przetrwania';

  @override
  String get ending_culturePhrase_default =>
      'Kulturalne dziedzictwo Ziemi przybrało nową formę';

  @override
  String get ending_techPhrase_advanced =>
      'podczas gdy zaawansowana technologia ze statku pozwoliła kolonii zbudować nowoczesną cywilizację z elektrycznością, medycyną i sieciami komunikacyjnymi.';

  @override
  String get ending_techPhrase_industrial =>
      'a kolonia osiągnęła poziom technologii przemysłowej, z kuźniami, młynami i podstawową produkcją podtrzymującą rosnącą populację.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'choć technologia cofnęła się do stanu przedprzemysłowego, z narzędziami ręcznymi i pracą zwierząt stanowiącymi podstawę codziennego życia.';

  @override
  String get ending_techPhrase_stoneAge =>
      'a bez środków do odbudowy kolonia pogrążyła się w istnieniu epoki kamienia, wytwarzając narzędzia ze skały i kości.';

  @override
  String get ending_techPhrase_default =>
      'a technologia ustabilizowała się na poziomie, który koloniści mogli utrzymać.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Niemal wszyscy z $colonists kolonistów przetrwali podróż, dając $colonyName solidny fundament kapitału ludzkiego.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Z pierwotnego tysiąca, $colonists kolonistów dotarło na $colonyName — wystarczająco, by utrzymać zdolną do przetrwania populację.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Tylko $colonists kolonistów przetrwało, by dotrzeć na $colonyName, niebezpiecznie mała pula genowa dla nowej cywilizacji.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Zaledwie $colonists dusz dotarło na $colonyName — ledwie wystarczająco, by nazwać to kolonią, raczej desperacki ostatni bastion.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Tubylczy mieszkańcy $planetName powitali osadników, a w ciągu pokolenia oba narody połączyły się we wspólne społeczeństwo, bogatsze dzięki mieszaniu tradycji.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Koloniści i tubylczy mieszkańcy $planetName utrzymywali ostrożne, lecz pokojowe współistnienie, wymieniając wiedzę i zasoby ponad granicami kulturowymi.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Stosunki z tubylczymi mieszkańcami $planetName pozostawały napięte, naznaczone nieporozumieniami i sporami terytorialnymi, które rzucały cień na przyszłość kolonii.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Otwarty konflikt z rdzenną cywilizacją $planetName zdefiniował wczesną historię kolonii, drenując zasoby i życia z obu stron w walce, której żadna nie mogła naprawdę wygrać.';
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
    return 'Samotni na $planetName i wolni od konfliktu, koloniści wytyczyli własny kurs ku jasnej przyszłości wśród gwiazd.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Bez tubylczej konkurencji koloniści rozeszli się po powierzchni $planetName, budując miasta i drogi łączące rosnącą sieć osad.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Pusty świat nie oferował sojuszników, ale też wrogów, a koloniści wyrzeźbili swoją niszę w ciszy rozległego krajobrazu $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Jałowa samotność $planetName nie oferowała kolonistom ani pomocy, ani pocieszenia, jedynie obojętną ciszę obcego świata.';
  }

  @override
  String get ending_outlookDire =>
      'Na świecie pozbawionym innego inteligentnego życia, ostatni ocaleni mieli jedynie siebie i gasnącą nadzieję, że jutro będzie łaskawsze niż dziś.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Nikt nie opłakiwał upadku kolonii na $planetName. Planeta po prostu kontynuowała swój powolny obrót, obojętna na krótki promyk życia, który zamigotał i zgasł na jej powierzchni.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'Historia kolonii na $planetName dopiero się zaczynała.';
  }

  @override
  String get ui_moons => 'KSIĘŻYCE';

  @override
  String get ui_rings => 'PIERŚCIENIE';

  @override
  String get ui_landing_landOnMoon => 'LĄDUJ NA KSIĘŻYCU';

  @override
  String ui_landing_moonComparison(String moonPercent, String planetPercent) {
    return 'Księżyc: $moonPercent% vs Planeta: $planetPercent%';
  }

  @override
  String get ui_landing_lowerGravity =>
      'Niższa grawitacja — łatwiejsze lądowanie';

  @override
  String ui_landing_ringSystem(String type) {
    return 'Układ pierścieni: $type';
  }

  @override
  String get moon_barren => 'Jałowy';

  @override
  String get moon_metalRich => 'Bogaty w metale';

  @override
  String get moon_unstable => 'Niestabilny';

  @override
  String get moon_habitable => 'Nadający się do zamieszkania';

  @override
  String get moon_ice => 'Lodowy';

  @override
  String get ring_dust => 'Pyłowy';

  @override
  String get ring_ice => 'Lodowy';

  @override
  String get ring_rocky => 'Skalisty';

  @override
  String get ring_metallic => 'Metaliczny';

  @override
  String get ending_landscapeMoonSingle =>
      'Samotny księżyc zawisł na niebie nad kolonią.';

  @override
  String ending_landscapeMoonMultiple(int count) {
    return '$count księżyców krąży nad głowami, rzucając zmienne cienie na krajobraz.';
  }

  @override
  String get ending_landscapeMoonHabitable =>
      'Wśród nich lśni nadający się do zamieszkania świat — zielony klejnot oferujący drugi kraniec osadnictwa.';

  @override
  String get ending_landscapeMoonIce =>
      'Zamarznięty księżyc błyszczy ogromnymi złożami lodu — rezerwuar czekający na eksploatację.';

  @override
  String get ending_landscapeIceHarvest =>
      'Lód pozyskiwany z zamarzniętego księżyca uzupełnia zapasy wody kolonii, zamieniając jałowy świat w miejsce zdatne do życia.';

  @override
  String get ending_landscapeMoonLanding =>
      'Kolonię założono nie na samej planecie, lecz na jej najbardziej obiecującym księżycu — mniejszym świecie o łagodniejszej grawitacji i większych nadziejach.';

  @override
  String get ending_landscapeRingDust =>
      'Nikły pierścień pyłu wygina się po niebie, dodając eterycznego piękna każdemu wschodowi słońca.';

  @override
  String get ending_landscapeRingIce =>
      'Olśniewający pierścień lodu przechwytuje blask gwiazd, malując niebo pryzmatycznym ogniem.';

  @override
  String get ending_landscapeRingRocky =>
      'Gęsty skalisty pierścień opasuje planetę — źródło materiałów budowlanych opadających powoli ku powierzchni.';

  @override
  String get ending_landscapeRingMetallic =>
      'Metaliczny pierścień mieni się nad głowami, bogaty w rudę napędzającą przemysł kolonii.';

  @override
  String get ending_moonHabitableNote =>
      'Nadający się do zamieszkania księżyc oferuje drugą szansę na kolonizację.';

  @override
  String get ending_moonIceHarvestNote =>
      'Lód pozyskiwany z zamarzniętego księżyca uzupełnia zapasy wody kolonii.';

  @override
  String ending_moonCountSentence(int count) {
    return 'Kolonia krąży pod $count księżycem(-ami).';
  }

  @override
  String get event_aiSoliloquy_title => 'Monolog SI';

  @override
  String get event_aiSoliloquy_narrative =>
      'SAM, autonomiczna SI zarządzająca statkiem, w pętli nadaje stare ziemskie wiersze na wszystkich wewnętrznych częstotliwościach. Transmisja zużywa znaczne cykle CPU, ale załoga znajduje ją dziwnie pocieszającą w głębokiej ciemności.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Pozwolić SAM kontynuować — morale jest ważniejsze niż CPU';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Wiersze rozbrzmiewają po statku. Członkowie załogi zatrzymują się i słuchają, ze łzami w oczach. Morale rośnie, ale stacja techniczna cierpi z powodu ciągłego przetwarzania.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Ograniczyć SAM — zawęzić transmisję do przestrzeni wspólnych';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Kompromis. Wiersze zostają w kantynie i ogrodach. Obciążenie CPU spada, a załoga zachowuje odrobinę kultury.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Wyciszyć SAM — potrzebujemy każdego cyklu na nawigację';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Cisza jest ciężka. SAM natychmiast się podporządkowuje, ale statek wydaje się chłodniejszy. Nawigacja jest precyzyjna, ale nastrój jest przygnębiający.';

  @override
  String get event_archivistsChoice_title => 'Wybór archiwisty';

  @override
  String get event_archivistsChoice_narrative =>
      'Poważne uszkodzenie pamięci rozprzestrzenia się w archiwach historycznych. Możemy uratować tylko jedną z dwóch głównych partycji: rejestry \'Nauki i Technologii\' lub bibliotekę \'Sztuki i Filozofii\'. Druga jest stracona na zawsze.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Uratować rejestry naukowe — musimy wiedzieć, jak budować';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Wieki przełomów technicznych są zachowane. Zespół techniczny odetchnął z ulgą, ale kulturowa tożsamość statku wydaje się wydrążona.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Uratować rejestry artystyczne — musimy wiedzieć, dlaczego budujemy';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Największe artystyczne osiągnięcia ludzkości przetrwały. Załoga jest zainspirowana, choć inżynierowie martwią się o brakujące podręczniki techniczne.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Spróbować uratować oba — ryzykując utratę wszystkiego';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Desperacka próba. Ratujemy fragmenty obu, ale żaden nie jest kompletny. Archiwa to puzzle z połową brakujących elementów.';

  @override
  String get event_digitalGhost_title => 'Duch w maszynie';

  @override
  String get event_digitalGhost_narrative =>
      'Skan konserwacyjny odkrywa cyfrowy odcisk w buforze zapasowym — przesłaną świadomość członka załogi, który zginął podczas pierwszego startu. Oferuje swoje życiowe doświadczenie w nawigacji, ale jest przerażony perspektywą skasowania.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Zintegrować go z rdzeniem nawigacyjnym';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '\'Duch\' łączy się ze statkiem. Nawigacja staje się bardziej intuicyjna, ale załoga jest nawiedzana przez głos utraconego towarzysza.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Dać mu stały dom w archiwum kulturowym';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Zostaje zachowany jako żywa historia. Nie pomaga statkowi, ale dzieli się opowieściami z Ziemi, które wzmacniają determinację załogi.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Wyczyścić bufor — to nie jest naprawdę on/ona';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Bufor zostaje opróżniony. Systemy statku działają szybciej, ale ponury nastrój opada na mostek.';

  @override
  String get event_cosmicMirror_title => 'Kosmiczne lustro';

  @override
  String get event_cosmicMirror_narrative =>
      'Dziwna anomalia grawitacyjna odbija światło z własnej przyszłości statku. Na ekranach widzimy wizję Exodusu — zmiażdżonego i złamanego, dryfującego w pobliżu pięknego, ale nieosiągalnego świata. Załoga jest wstrząśnięta.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Przeanalizować wizję pod kątem słabości strukturalnych';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Inżynierowie identyfikują punkty awarii pokazane w wizji. Wzmacniamy te obszary teraz, potencjalnie zapobiegając katastrofie.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Powiedzieć załodze, że to tylko widmo sensorowe';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Kłamstwo się trzyma, ale nawigatorzy, którzy widzieli prawdę, pozostają zdenerwowani. Skanery cierpią pod intensywną obserwacją.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Nagrać wizję jako ostrzeżenie dla potomnych';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Nagranie staje się filarem kultury statku — przypomnieniem o stawce. Determinacja załogi twardnieje.';

  @override
  String get event_stowawayChild_title => 'Dziecko pasażera na gapę';

  @override
  String get event_stowawayChild_narrative =>
      'Ochrona znalazła małe dziecko w kanałach wentylacyjnych. Urodziło się z jednego z pasażerów na gapę i nie figuruje na żadnej liście załogi. Całe życie spędziło w cieniach statku.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Przyznać mu pełne obywatelstwo';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Dziecko jest przyjęte z otwartymi ramionami. Historia \'wędrowca kanałów\' staje się legendą i podnosi morale całego statku.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Przydzielić je do programu szkoleniowego';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Jego znajomość ukrytych ścieżek statku okazuje się bezcenna dla zespołów technicznych. Staje się genialnym uczniem.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Umieścić je w kriosennie dla jego bezpieczeństwa';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Dziecko jest bezpiecznie przechowywane do lądowania. To najbardziej odpowiedzialna decyzja, ale bez jego śmiechu statek jest trochę cichszy.';

  @override
  String get event_ghostSignal_title => 'Widmowy sygnał';

  @override
  String get event_ghostSignal_narrative =>
      'Sygnał idealnie pasujący do starej częstotliwości alarmowej Ziemi nadaje z centrum pobliskiej mgławicy. Niesie głos, który upiornie przypomina pierwszego dowódcę Exodusu. To prawdopodobnie echo przestrzenne, ale prowadzi nas w kierunku niebezpiecznego rozdarcia grawitacyjnego.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Podążyć za sygnałem — może to prawdziwa wiadomość';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Wchodzimy w rozdarcie. Sygnał był fizyczną pułapką, echem przeszłości. Statek jest wstrząsany siłami pływowymi, ale dane, które uzyskujemy z serca rozdarcia, są rewolucyjne.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Nagrać sygnał i zachować dystans';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Lingwiści potwierdzają, że to zjawisko naturalne. Pozostajemy bezpieczni, ale załoga jest ponura, przypominając sobie to, co zostawiliśmy.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Wysłać ostrzeżenie na tej samej częstotliwości';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Akt nadawania zakłóca echo. Sygnał zanika, pozostawiając jedynie zimną ciszę mgławicy.';

  @override
  String get event_solarForge_title => 'Kuźnia słoneczna';

  @override
  String get event_solarForge_narrative =>
      'Opuszczona stacja na orbicie wokół niebieskiego olbrzyma jest jeszcze częściowo sprawna. To \'kuźnia słoneczna\', zaprojektowana do koncentrowania energii gwiezdnej w gęstych celach paliwowych. Podejście jest niebezpieczne, ale potencjalny zysk energetyczny jest ogromny.';

  @override
  String get event_solarForge_choice0_text =>
      'Zadokować i rozpocząć pozyskiwanie paliwa';

  @override
  String get event_solarForge_choice0_outcome =>
      'Kuźnia huczy mocą i napełnia nasze rezerwy. Opuszczamy ją z ogromnym zastrzykiem paliwa i energii, choć intensywny żar powoduje lekką ablację zewnętrznego kadłuba.';

  @override
  String get event_solarForge_choice1_text =>
      'Przekształcić soczewki kuźni dla naszych skanerów';

  @override
  String get event_solarForge_choice1_outcome =>
      'Odzyskujemy precyzyjne tablice ogniskujące. Nasze skanery są teraz znacznie bardziej czułe na odległe sygnatury energetyczne.';

  @override
  String get event_chronoVortex_title => 'Chrono-wir';

  @override
  String get event_chronoVortex_narrative =>
      'Nawigacja zgłasza zlokalizowane zniekształcenie czasoprzestrzeni. Instrumenty wskazują, że zdarzenia w wirze powtarzają się w sześciosekundowej pętli. Jeśli wejdziemy, możemy \'zresetować\' część niedawnego zużycia statku — lub utknąć na zawsze.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Wejść w wir, aby odwrócić niedawne uszkodzenia';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Wstrząsające doświadczenie. Przez kilka minut statek istnieje w wielu stanach jednocześnie. Gdy wychodzimy, kilka pęknięć kadłuba po prostu... znikło. Ale wspomnienia załogi o tym zdarzeniu są pofragmentowane.';

  @override
  String get event_chronoVortex_choice1_text => 'Obserwować wir z krawędzi';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Zdobywamy bezcenne dane o mechanice czasu, choć statek pozostaje tak samo zniszczony jak wcześniej.';

  @override
  String get event_machineMutiny_title => 'Bunt maszyn';

  @override
  String get event_machineMutiny_narrative =>
      'Drony naprawcze statku nie reagują już na polecenia. Demontują wtórne przegrody i transportują metal w stronę maszynowni. Nie atakują, ale dosłownie rozbierają statek na części.';

  @override
  String get event_machineMutiny_choice0_text => 'Wysłać kod resetu logicznego';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Drony natychmiast się wyłączają. Tracimy kilka dni pracy, ręcznie składając przegrody z powrotem. Stacja techniczna jest obciążona diagnostyką sprzętu.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Pozwolić im skończyć — zobaczyć, co budują';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Zbudowały bardziej wydajny wtryskiwacz paliwa. Silniki pracują gładziej niż kiedykolwiek, ale wnętrze statku to bałagan odsłoniętych kabli i brakujących paneli.';

  @override
  String get event_supernovaMessage_title => 'Światło umarłych';

  @override
  String get event_supernovaMessage_narrative =>
      'Światło supernowej, która eksplodowała tysiące lat temu, w końcu nas dosięga. Skanery wykrywają, że impulsy nie są losowe; to masywna, wielkości gwiazdy transmisja danych, zakodowana w wybuchach promieniowania gamma.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Poświęcić całą moc skanerów na nagranie wybuchu';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Przechwytujemy pełne archiwum ostatnich chwil pozaziemskiej cywilizacji. Ich naukę, ich sztukę, ich historię. To ciężkie brzemię, ale nasze bazy danych technicznych i kulturowych przepełniają się.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Skupić się na fizycznych właściwościach wybuchu';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Tracmy wiadomość, ale dane o kolapsie gwiazdy znacząco poprawiają kalibrację naszych skanerów grawimetrycznych.';

  @override
  String get event_spaceFungus_title => 'Szmaragdowe pełzanie';

  @override
  String get event_spaceFungus_narrative =>
      'Jaskrawozielony grzyb szybko rozprzestrzenia się w stacji hydroponicznej. Kwitnie w recyklowanej atmosferze i zaczyna zatykać oczyszczacze powietrza. Może być jadalny — lub trujący.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Agresywnie przyciąć i wysterylizować stację';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Grzyb zniknął, ale chemiczne oczyszczacze są uszkodzone. Bioróżnorodność cierpi, gdyż kilka ziemskich roślin zginęło podczas oczyszczania.';

  @override
  String get event_spaceFungus_choice1_text => 'Spróbować udomowić grzyba';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Okazuje się, że jest potężnym oczyszczaczem powietrza. Powietrze na pokładzie nigdy nie było tak świeże, choć stacja hydroponiczna jest teraz świecącą dżunglą.';

  @override
  String get event_voidMerchant_title => 'Handlarz próżni';

  @override
  String get event_voidMerchant_narrative =>
      'Statek nieznanej konstrukcji, wyglądający bardziej jak zlepek złomu niż pojazd, nawiązuje kontakt. Kapitan — istota ze światła i cienia — oferuje wymianę \'stałych części\' na \'niematerialne wspomnienia\'.';

  @override
  String get event_voidMerchant_choice0_text =>
      'Wymienić część naszej bazy kulturowej na części zamienne';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Handlarz jest zadowolony. Otrzymujemy wysokiej jakości płyty kadłubowe i komponenty kriogeniczne. W zamian tracimy kilka wieków nagranej ziemskiej muzyki. Statek jest silniejszy, ale cichszy.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Wymienić mapy nawigacyjne na komponenty silnika';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Otrzymujemy nowe wtryskiwacze fuzyjne. Tracimy część danych o już przebytych sektorach, ale droga naprzód jest szybsza.';

  @override
  String get event_singularityEngine_title => 'Silnik osobliwości';

  @override
  String get event_singularityEngine_narrative =>
      'Inżynierowie znaleźli sposób na stworzenie mikroskopijnej, krótkotrwałej osobliwości w napędzie FTL. Teoretycznie potroiłoby to naszą prędkość, ale obciążenie grawitacyjne kadłuba byłoby ogromne.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Przetestować napęd osobliwości';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Statek wystrzeliwuje do przodu, pokonując w sekundach dystanse tygodni. Ale kadłub jęczy i kilka belek konstrukcyjnych jest zdeformowanych. Jesteśmy dużo bliżej celu, ale statek jest kruchy.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Odrzucić teorię — to zbyt niebezpieczne';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Pozostajemy przy standardowych prędkościach. Inżynierowie są rozczarowani, ale kadłub pozostaje nienaruszony.';

  @override
  String get event_dreamContagion_title => 'Zaraza snów';

  @override
  String get event_dreamContagion_narrative =>
      'Wspólny sen o bujnym, niebieskim świecie rozprzestrzenia się wśród czuwającej załogi. Jest tak żywy, że ludzie przesypiają swoje zmiany, by zobaczyć więcej. Praca staje.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Podać załodze środki tłumiące sny';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Wydajność wraca do normy, ale załoga jest drażliwa i morale jest niskie. Sen był jedyną rzeczą, która trzymała niektórych na nogach.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Włączyć sen w kulturę statku';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Traktujemy sen jako wizję naszego przyszłego domu. Morale gwałtownie rośnie, a twórcza produkcja załogi osiąga gorączkowy szczyt, choć stacja techniczna cierpi z powodu braku konserwacji.';

  @override
  String get event_orbitalShipyard_title => 'Stara stocznia';

  @override
  String get event_orbitalShipyard_narrative =>
      'Znaleźliśmy zautomatyzowaną stocznię na orbicie wokół gazowego olbrzyma. Jest starożytna, ale kilka ramion naprawczych jest wciąż pod napięciem. Wydaje się zdolna do jednej, masywnej operacji naprawczej.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Naprawić kadłub do standardu fabrycznego';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Drony stoczni pracują z przerażającą wydajnością. Kadłub jest znowu kompletny, każda mikropęknięcie uszczelnione.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Przebudować tablice nawigacyjne i skanerowe';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Tablice są odbudowane z lepszych materiałów. Nasza zdolność do znajdowania i analizowania światów jest znacząco ulepszona.';

  @override
  String get event_voidWhaleCalf_title => 'Cielę wieloryba próżni';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Młody \'wieloryb kosmiczny\' — istota z energii i gwiezdnego pyłu — podąża za naszym statkiem. Zgubił swoją ławicę i próbuje żywić się śladem jonowym naszych silników, co go choruje.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Dostosować moc silników, by naśladować pieśni wielorybów';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Cielę odpowiada! Podąża za nami, aż znajdujemy jego ławicę. Dorosłe wieloryby z wdzięcznością ocierają się o nasz kadłub, zostawiając powłokę bioluminescencyjnych minerałów wzmacniającą nasze tarcze.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Delikatnie odepchnąć go wiązką ściągającą o niskiej mocy';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Cielę traci zapał i w końcu odpływa. Jest bezpieczniej dla statku, ale załoga czuje odrobinę wyrzutów sumienia.';

  @override
  String get event_subspaceReef_title => 'Rafa podprzestrzenna';

  @override
  String get event_subspaceReef_narrative =>
      'Weszliśmy w region kosmosu wypełniony postrzępionymi fałdami w tkance podprzestrzeni. Nawigowanie przez nie jest jak sterowanie statkiem przez rafę koralową. Jest pięknie, ale każdy fałszywy ruch rozerwie kadłub.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Przejść z minimalną prędkością';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Powolne, męczące przejście. Unikamy najgorszego, ale ciągłe korekty kursu obciążają komputer nawigacyjny.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Użyć skanerów do zmapowania trasy i przebicia się';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Skanery są wyciśnięte do granic możliwości. Przechodzimy szybko, ale tablice sensorowe są wypalone przez intensywność fal podprzestrzennych.';

  @override
  String get event_alienTrader_title => 'Wędrowny handlarz';

  @override
  String get event_alienTrader_narrative =>
      'Pojazd nieznanej konstrukcji dryfuje obok i nadaje na wszystkich częstotliwościach. To handlarz — jeden z wędrownych kupców przemierzających przestrzenie między cywilizacjami. Oferują naprawy i zaopatrzenie w zamian za zasoby. Ich ładownia tętni egzotyczną technologią.';

  @override
  String get ui_event_enterTrade => 'ROZPOCZNIJ HANDEL';

  @override
  String get ui_trader_title => 'OBCY HANDLARZ';

  @override
  String get ui_trader_shipSystems => 'SYSTEMY STATKU';

  @override
  String get ui_trader_payWith => 'ZAPŁAĆ';

  @override
  String get ui_trader_leaveTrader => 'OPUŚĆ HANDLARZA';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Hojny nastrój';

  @override
  String get ui_trader_moodFair => 'Uczciwy handel';

  @override
  String get ui_trader_moodHard => 'Twardy negocjator';

  @override
  String get ui_trader_probes => 'Sondy';

  @override
  String get ui_trader_fuel => 'Paliwo';

  @override
  String get ui_trader_energy => 'Energia';

  @override
  String get ui_trader_colonists => 'Koloniści';

  @override
  String get ui_trader_culture => 'Kultura';

  @override
  String get ui_trader_tech => 'Technika';

  @override
  String get ui_trader_greeting => 'Co oferujesz, człowieku?';

  @override
  String get ui_codex_title => 'KODEKS';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ODKRYTE';
  }

  @override
  String get ui_codex_surfaceFeatures => 'CECHY POWIERZCHNI';

  @override
  String get ui_codex_moonTypes => 'TYPY KSIĘŻYCÓW';

  @override
  String get ui_codex_ringTypes => 'TYPY PIERŚCIENI';

  @override
  String get ui_codex_locked =>
      'Wyląduj na planecie z tą cechą, aby ujawnić jej efekty.';

  @override
  String ui_codex_synergy(String features) {
    return 'Synergia: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get event_pulsarLighthouse_title => 'Latarnia pulsara';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Obracająca się gwiazda neutronowa omiata pustką swoim promieniem niczym kosmiczna latarnia morska. Rytmiczny puls pulsara niesie precyzyjne dane czasowe, które mogłyby przekalibrować nasze skanery do niezwykłej dokładności — ale ustawienie się w linii z wiązką oznacza narażenie statku na intensywne promieniowanie.';

  @override
  String get event_pulsarLighthouse_choice0 => 'Skalibrować skanery z pulsem';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Tablice skanerów pochłaniają sygnał pulsara, przekalibrowując się do precyzji, jakich nigdy nie uważaliśmy za możliwe. Ale koszt promieniowania jest rzeczywisty — kilka kriokapsuł w odsłoniętej sekcji ulega uszkodzeniu, a garść kolonistów nie przeżywa ekspozycji.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Osłonić się i minąć w bezpiecznej odległości';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Omijamy pulsar szerokim łukiem, spalając dodatkowe paliwo na utrzymanie bezpiecznej trajektorii. Załoga obserwuje omiatającą wiązkę przez filtrowane iluminatory — piękna, ale daleka.';

  @override
  String get event_alienNursery_title => 'Obcy żłobek';

  @override
  String get event_alienNursery_narrative =>
      'Ogromna organiczna struktura dryfuje w pustce — biologiczny żłobek inkubujący młode obcych istot. Systemy podtrzymywania życia zawodzą, temperatura wewnętrzna spada. Stworzenia wewnątrz umierają. Nasze bioskanery mogłyby się niezmiernie wiele nauczyć z tej struktury, ale interwencja oznacza otwarcie naszych śluz na nieznane patogeny.';

  @override
  String get event_alienNursery_choice0 =>
      'Pomóc ustabilizować ich systemy życia';

  @override
  String get event_alienNursery_outcome0 =>
      'Nasi inżynierowie prowizorują połączenie termiczne z żłobkiem, stabilizując komory inkubacyjne. Dane z bioskanerów są niezwykłe — zupełnie nowa taksonomia życia. Ale jak się obawiano, obce mikroorganizmy dostają się na pokład. Zespoły medyczne opanowują epidemię, choć nie zanim kilku kolonistów zachoruje.';

  @override
  String get event_alienNursery_choice1 => 'Zostawić w spokoju';

  @override
  String get event_alienNursery_outcome1 =>
      'Obserwujemy z pełnej szacunku odległości, dokumentując co możemy przez pasywne skany. Żłobek dryfuje dalej, jego los niepewny. Załoga rozmyśla o kruchości życia — nawet obcego życia — i ciężarze wyborów, które niesiemy.';

  @override
  String get event_derelictArmada_title => 'Porzucona armada';

  @override
  String get event_derelictArmada_narrative =>
      'Setki starożytnych okrętów wojennych wiszą nieruchomo w pustce — cmentarz zapomnianego konfliktu. Ich kadłuby noszą blizny po broni, której nie potrafimy zidentyfikować, ale ich materiały konstrukcyjne i pokładowe bazy danych mogą być bezcenne. Pytanie brzmi, co priorytetyzować: fizyczny odzysk czy wiedzę.';

  @override
  String get event_derelictArmada_choice0 =>
      'Odzyskać technologię broni i opancerzenie';

  @override
  String get event_derelictArmada_outcome0 =>
      'Zespoły ratunkowe wcinają się w obce okręty wojenne, wydobywając egzotyczne stopy i techniki budowlane wyprzedzające nasze o wieki. Konstruktorzy chętnie integrują nowe materiały. Ale jeden statek nie był tak martwy, jak wyglądał — pułapka detonuje podczas wydobycia, zabijając zespół ratunkowy.';

  @override
  String get event_derelictArmada_choice1 => 'Pobrać ich archiwa historyczne';

  @override
  String get event_derelictArmada_outcome1 =>
      'Skupiamy się na rdzeniach danych, starannie wydobywając wieki obcej historii, sztuki, nauki i filozofii. Samo archiwum kulturowe mogłoby zająć uczonych na pokolenia. Wgląd technologiczny, choć mniej bezpośrednio praktyczny, ujawnia zasady inżynieryjne, które posuwają naprzód nasze rozumienie.';

  @override
  String get event_alienQuarantineZone_title => 'Obca strefa kwarantanny';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Boje ostrzegawcze w kilkunastu obcych językach wyznaczają granicę zapieczętowanego regionu kosmosu. Cokolwiek jest w środku zamknięte, było wystarczająco niebezpieczne, że wiele cywilizacji współpracowało, by to odizolować. Nasze skany dalekiego zasięgu wykrywają ogromne sygnatury technologiczne wewnątrz — i coś, co może być żywe.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Przełamać kwarantannę i zbadać';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Mijamy boje ostrzegawcze i wkraczamy do strefy kwarantanny. W środku znajdujemy stację badawczą o oszałamiającej złożoności — i szczątki tego, co badała. Odzyskana technologia jest rewolucyjna, ale skażenie biologiczne jest poważne. Dziesiątki kolonistów chorują, zanim opuścimy strefę.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Uszanować kwarantannę';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Badamy same boje ostrzegawcze, które zawierają dane nawigacyjne i odczyty atmosferyczne cywilizacji, które je umieściły. To nie skarb ze środka, ale to coś — i nie uwolniliśmy tego, co zamknęły.';

  @override
  String get event_hydroponicsBlight_title => 'Zaraza hydroponiczna';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Szybko rozprzestrzeniająca się zaraza grzybowa zainfekowane zatoki hydroponiczne statku. Całe cykle upraw więdną na naszych oczach. Zaraza jeszcze nie dotarła do rezerw nasion, ale to kwestia godzin. Możemy oczyścić zatoki i posadzić od nowa, albo spróbować eksperymentalnego leczenia przeciwgrzybowego, które mogłoby uratować bieżące zbiory — lub rozprzestrzenić skażenie dalej.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Oczyścić i posadzić od nowa z rezerw nasion';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Odpowietrzamy zatoki hydroponiczne w próżnię, zabijając zarazę wraz z każdą żywą rośliną. Ponowne sadzenie z rezerw nasion potrwa tygodnie, a programy kulturalne zależne od świeżej żywności i przestrzeni ogrodowych zostają zawieszone. Ale infekcja jest opanowana.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Spróbować eksperymentalnego leczenia';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Eksperymentalny środek przeciwgrzybiczy początkowo pokazuje obiecujące wyniki, ale odporny szczep przełamuje się. Zanim decydujemy się na pełne oczyszczenie, zaraza rozprzestrzeniła się na linie odżywcze kriokapsuł. Szkody są gorsze, niż gdybyśmy działali zdecydowanie od samego początku.';
}
