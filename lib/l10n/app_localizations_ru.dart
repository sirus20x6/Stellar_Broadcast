// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get ui_title_stellar => 'ЗВЁЗДНЫЙ';

  @override
  String get ui_title_broadcast => 'СИГНАЛ';

  @override
  String get ui_title_beginVoyage => 'НАЧАТЬ ПЛАВАНИЕ';

  @override
  String get ui_title_dailyVoyage => 'ЕЖЕДНЕВНОЕ ПЛАВАНИЕ';

  @override
  String get ui_title_dailyCompleted => 'ЕЖЕДНЕВНОЕ ПРОЙДЕНО';

  @override
  String get ui_title_customSeed => 'СВОЙ СЕИД';

  @override
  String get ui_title_legacyHub => 'ЦЕНТР НАСЛЕДИЯ';

  @override
  String get ui_title_cancel => 'ОТМЕНА';

  @override
  String get ui_title_startVoyage => 'НАЧАТЬ ПЛАВАНИЕ';

  @override
  String get ui_title_seedInvalid =>
      'Неверный исходный код. Используйте только A–Z и 0–9.';

  @override
  String ui_voyage_sector(int count) {
    return 'СЕКТОР $count';
  }

  @override
  String ui_voyage_seed(String code) {
    return 'СЕИД: $code';
  }

  @override
  String get ui_voyage_scanners => 'СКАНЕРЫ';

  @override
  String get ui_voyage_scanPlanet => 'СКАНИРОВАТЬ';

  @override
  String get ui_voyage_noEnergy => 'НЕТ ЭНЕРГИИ';

  @override
  String get ui_voyage_pressOn => 'ВПЕРЁД';

  @override
  String get ui_voyage_systemHull => 'Корпус';

  @override
  String get ui_voyage_systemNav => 'Навигация';

  @override
  String get ui_voyage_systemCryopods => 'Криокапсулы';

  @override
  String get ui_voyage_systemCulture => 'Культура';

  @override
  String get ui_voyage_systemTech => 'Технологии';

  @override
  String get ui_voyage_systemConstruct => 'Строители';

  @override
  String get ui_voyage_systemShields => 'Щиты';

  @override
  String get ui_voyage_systemLanding => 'Посадка';

  @override
  String get ui_voyage_scannerAtmo => 'Атмо-скан';

  @override
  String get ui_voyage_scannerGrav => 'Грав-скан';

  @override
  String get ui_voyage_scannerMineral => 'Минерал-скан';

  @override
  String get ui_voyage_scannerLife => 'Био-скан';

  @override
  String get ui_voyage_scannerTemp => 'Темп-скан';

  @override
  String get ui_voyage_scannerWater => 'Водо-скан';

  @override
  String get ui_voyage_narrative0 =>
      'Околоземная орбита чиста. Криокапсулы стабильны. Архивное кольцо в сохранности.';

  @override
  String get ui_voyage_narrative1 =>
      'Транзит через внешнюю систему в штатном режиме. Дальние сканеры расширяют зону поиска.';

  @override
  String get ui_voyage_narrative2 =>
      'Земной трафик опустился ниже порога обнаружения.';

  @override
  String get ui_voyage_narrativeFlaggedSystem =>
      'Архивные координаты совпадают с отмеченной системой. Корректируем курс.';

  @override
  String get ui_voyage_narrativeCalibrating =>
      'Сканерные массивы всё ещё калибруются для глубокого космоса.';

  @override
  String get ui_voyage_narrativeMarkedSystem =>
      'Впереди отмеченная система. Данные предыдущего обзора остаются актуальными.';

  @override
  String get ui_voyage_narrativePhrase0 =>
      'Слабый сигнал впереди. Начинаем планетарный обзор.';

  @override
  String get ui_voyage_narrativePhrase1 =>
      'Выход из сверхсветового прыжка завершён. Новая звёздная система в поле зрения.';

  @override
  String get ui_voyage_narrativePhrase2 =>
      'Криокапсулы стабильны. Сканирование сектора в процессе.';

  @override
  String get ui_voyage_narrativePhrase3 =>
      'На переднем сканере проявляется новая планета.';

  @override
  String get ui_voyage_narrativePhrase4 =>
      'Звёздная картография отмечает перспективного кандидата.';

  @override
  String get ui_voyage_narrativePhrase5 =>
      'Приборы обнаружили ещё один мир, достойный изучения.';

  @override
  String get ui_voyage_narrativePhrase6 => 'Сканеры захватили новую цель.';

  @override
  String get ui_voyage_narrativePhrase7 =>
      'Навигационные карты обновлены. Мир-кандидат в пределах досягаемости.';

  @override
  String get ui_scan_landHere => 'ВЫСАДИТЬСЯ';

  @override
  String get ui_scan_pressOn => 'ВПЕРЁД';

  @override
  String get ui_scan_allStatsVerified => 'ВСЕ ДАННЫЕ ПОДТВЕРЖДЕНЫ';

  @override
  String get ui_scan_launchProbe => 'ЗАПУСТИТЬ ЗОНД';

  @override
  String get ui_scan_habitability => 'ПРИГОДНОСТЬ';

  @override
  String get ui_scan_statAtmos => 'АТМОСФЕРА';

  @override
  String get ui_scan_statTemp => 'ТЕМП';

  @override
  String get ui_scan_statWater => 'ВОДА';

  @override
  String get ui_scan_statResource => 'РЕСУРСЫ';

  @override
  String get ui_scan_statGravity => 'ГРАВИТАЦИЯ';

  @override
  String get ui_scan_statBio => 'БИО';

  @override
  String get ui_scan_statAnomaly => 'АНОМАЛИЯ';

  @override
  String get ui_scan_statRadiation => 'РАДИАЦИЯ';

  @override
  String ui_scan_probesCount(int count) {
    return 'ЗОНДЫ: $count';
  }

  @override
  String ui_scan_uncertaintyPct(int percent) {
    return 'НЕОПРЕДЕЛЕННОСТЬ: ±$percent%';
  }

  @override
  String get ui_landing_planetAnalysis => 'АНАЛИЗ ПЛАНЕТЫ';

  @override
  String get ui_landing_shipStatus => 'СОСТОЯНИЕ КОРАБЛЯ';

  @override
  String ui_landing_fuel(int amount) {
    return 'ТОПЛИВО: $amount';
  }

  @override
  String get ui_landing_lowFuelWarning => 'НИЗКИЙ УРОВЕНЬ ТОПЛИВА';

  @override
  String get ui_landing_landingRiskCritical => 'РИСК ПОСАДКИ: КРИТИЧЕСКИЙ';

  @override
  String get ui_landing_landingRiskElevated => 'РИСК ПОСАДКИ: ПОВЫШЕННЫЙ';

  @override
  String get ui_landing_landingRiskCriticalDesc =>
      'Посадочная система серьёзно повреждена. Вход в атмосферу может уничтожить груз и колонистов.';

  @override
  String get ui_landing_landingRiskElevatedDesc =>
      'Посадочная система ослаблена. Ожидается жёсткий вход в атмосферу с возможными повреждениями систем.';

  @override
  String get ui_landing_riskAssessment => 'ОЦЕНКА РИСКОВ';

  @override
  String ui_landing_encountersRemaining(int remaining) {
    return 'Корабль выдержит ещё ~$remaining столкновений';
  }

  @override
  String get ui_landing_shipMayNotSurvive =>
      'Корабль может не пережить ещё одно плавание';

  @override
  String get ui_landing_surfaceFeatures => 'ОСОБЕННОСТИ ПОВЕРХНОСТИ';

  @override
  String get ui_landing_nameYourColony => 'НАЗОВИТЕ КОЛОНИЮ';

  @override
  String get ui_landing_establishColony => 'ОСНОВАТЬ КОЛОНИЮ';

  @override
  String get ui_landing_pressOnward => 'ПРОДОЛЖИТЬ ПУТЬ';

  @override
  String get ui_landing_statAtmosphere => 'Атмосфера';

  @override
  String get ui_landing_statTemperature => 'Температура';

  @override
  String get ui_landing_statWater => 'Вода';

  @override
  String get ui_landing_statResources => 'Ресурсы';

  @override
  String get ui_landing_statGravity => 'Гравитация';

  @override
  String get ui_landing_statBiodiversity => 'Биоразнообразие';

  @override
  String get ui_landing_statAvgHealth => 'Среднее здоровье';

  @override
  String get ui_landing_statHull => 'Корпус';

  @override
  String get ui_landing_statNavigation => 'Навигация';

  @override
  String get ui_landing_statCryopods => 'Криокапсулы';

  @override
  String get ui_landing_statCulture => 'Культура';

  @override
  String get ui_landing_statTech => 'Технологии';

  @override
  String get ui_landing_statConstructors => 'Строители';

  @override
  String get ui_landing_statShields => 'Щиты';

  @override
  String get ui_landing_statLandingSys => 'Посадка';

  @override
  String get ui_ending_colonyEstablished => 'КОЛОНИЯ ОСНОВАНА';

  @override
  String get ui_ending_colonyScore => 'РЕЙТИНГ КОЛОНИИ';

  @override
  String get ui_ending_colonyProfile => 'ПРОФИЛЬ КОЛОНИИ';

  @override
  String get ui_ending_landscape => 'ЛАНДШАФТ';

  @override
  String get ui_ending_voyageRecord => 'ЖУРНАЛ ПЛАВАНИЯ';

  @override
  String get ui_ending_scoreBreakdown => 'РАЗБОР БАЛЛОВ';

  @override
  String get ui_ending_total => 'ИТОГО';

  @override
  String get ui_ending_achievementsUnlocked => 'ДОСТИЖЕНИЯ РАЗБЛОКИРОВАНЫ';

  @override
  String get ui_ending_challengeFriend => 'ВЫЗВАТЬ ДРУГА';

  @override
  String get ui_ending_shareCard => 'ПОДЕЛИТЬСЯ КАРТОЙ';

  @override
  String get ui_ending_shareCardDialogTitle => 'Поделитесь своим путешествием';

  @override
  String get ui_ending_shareCardShare => 'ДЕЛИТЬСЯ';

  @override
  String get ui_ending_shareCardCancel => 'ОТМЕНА';

  @override
  String get ui_ending_copySeed => 'КОПИРОВАТЬ СЕИД';

  @override
  String get ui_ending_viewLegacy => 'НАСЛЕДИЕ';

  @override
  String get ui_ending_newVoyage => 'НОВОЕ ПЛАВАНИЕ';

  @override
  String get ui_ending_achievementFirstLanding => 'Первая посадка';

  @override
  String get ui_ending_achievementGoldenAge => 'Золотой век';

  @override
  String get ui_ending_achievementSurvivor => 'Выживший';

  @override
  String get ui_ending_achievementExplorer => 'Исследователь';

  @override
  String get ui_ending_achievementPerfectionist => 'Перфекционист';

  @override
  String get ui_ending_achievementDeathWorldSurvivor =>
      'Выживший на планете смерти';

  @override
  String get ui_ending_achievementFullCrew => 'Полный экипаж';

  @override
  String get ui_ending_achievementProbeMaster => 'Мастер зондов';

  @override
  String get ui_ending_achievementIronHull => 'Железный корпус';

  @override
  String get ui_ending_achievementLeapOfFaith => 'Прыжок веры';

  @override
  String get ui_gameOver_missionFailed => 'МИССИЯ ПРОВАЛЕНА';

  @override
  String get ui_gameOver_voyageRecord => 'ЖУРНАЛ ПЛАВАНИЯ';

  @override
  String get ui_gameOver_encountersSurvived => 'СОБЫТИЙ ПЕРЕЖИТО';

  @override
  String get ui_gameOver_probesRemaining => 'ЗОНДОВ ОСТАЛОСЬ';

  @override
  String get ui_gameOver_colonistsRemaining => 'КОЛОНИСТОВ ОСТАЛОСЬ';

  @override
  String get ui_gameOver_finalShipHealth => 'ИТОГОВОЕ СОСТОЯНИЕ КОРАБЛЯ';

  @override
  String get ui_gameOver_planetsSkipped => 'ПЛАНЕТ ПРОПУЩЕНО';

  @override
  String get ui_gameOver_damageTaken => 'УРОН ПОЛУЧЕН';

  @override
  String get ui_gameOver_fuelRemaining => 'ТОПЛИВА ОСТАЛОСЬ';

  @override
  String get ui_gameOver_energyRemaining => 'ЭНЕРГИИ ОСТАЛОСЬ';

  @override
  String get ui_gameOver_challengeFriend => 'ВЫЗВАТЬ ДРУГА';

  @override
  String get ui_gameOver_viewLegacy => 'НАСЛЕДИЕ';

  @override
  String get ui_gameOver_newVoyage => 'НОВОЕ ПЛАВАНИЕ';

  @override
  String ui_gameOver_shareText(String reason, String seedCode) {
    return '🚀 ЗВЁЗДНЫЙ СИГНАЛ\n\nЯ не выжил... $reason.\nДумаешь, справишься лучше на том же маршруте?\nstellarbroadcast://play?seed=$seedCode\n\nНет приложения?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
  }

  @override
  String get ui_gameOver_epilogueColonists =>
      'Последний колонист умер в криосне — каскадный отказ, которому не смог помешать ни один аварийный протокол. «Исход» плыл дальше, корабль-призрак, несущий лишь автоматические системы и застывшую тишину. Миссия погибла не в мгновение катастрофы, а в медленном истирании человеческих жизней, одна за другой, пока не осталось ни одной.';

  @override
  String get ui_gameOver_epilogueHull =>
      'Корпус сдался в тишине — усталость металла, усугублённая бесчисленными микроударами, пока корабль не смог больше держаться. Атмосфера утекла в пустоту. Колониальный корабль «Исход» распался, и его обломки присоединились к древним полям мусора между звёзд. Сигнал бедствия так и не был принят.';

  @override
  String get ui_gameOver_epilogueNav =>
      'Без навигации «Исход» дрейфовал в неизведанное пространство — звёздные карты бесполезны, коррекция курса невозможна. Корабль плыл сквозь тьму, а спящие пассажиры не знали, что их место назначения заменила вечность. Говорят, корабль всё ещё дрейфует — призрачное судно в бесконечной ночи.';

  @override
  String get ui_gameOver_epilogueCryopod =>
      'Одна за другой криокапсулы отказывали — каскад, который не мог остановить ни один аварийный протокол. Колонисты так и не проснулись. «Исход» продолжил путь по запрограммированному курсу — корабль-гробница, несущий лишь тишину к тому миру, который когда-нибудь достигнет. Памятник мечте, умершей в ледяном сне.';

  @override
  String get ui_gameOver_epilogueDefault =>
      '«Исход» замолчал. Его миссия, его экипаж, его груз человеческой надежды — всё потеряно в равнодушной бескрайности между звёзд. Быть может, когда-нибудь другая цивилизация найдёт обломки и задастся вопросом, какой отважный вид посмел пересечь пустоту.';

  @override
  String get ui_settings_title => 'НАСТРОЙКИ';

  @override
  String get ui_settings_music => 'МУЗЫКА';

  @override
  String get ui_settings_soundEffects => 'ЗВУКОВЫЕ ЭФФЕКТЫ';

  @override
  String get ui_settings_haptics => 'ТАКТИЛЬНЫЙ ОТКЛИК';

  @override
  String get ui_settings_premium => 'ПРЕМИУМ';

  @override
  String get ui_settings_goPremium => 'Перейти на Премиум';

  @override
  String get ui_settings_enabled => 'Включено';

  @override
  String get ui_settings_volume => 'Громкость';

  @override
  String get ui_settings_language => 'Язык';

  @override
  String get ui_settings_systemDefault => 'Системный по умолчанию';

  @override
  String get ui_settings_statsPosition => 'Статистика и расположение кнопок';

  @override
  String get ui_settings_statsLeft => 'ЛЕВЫЙ';

  @override
  String get ui_settings_statsRight => 'ВЕРНО';

  @override
  String get ui_legacy_title => 'ЦЕНТР НАСЛЕДИЯ';

  @override
  String get ui_legacy_commanderStats => 'СТАТИСТИКА КОМАНДИРА';

  @override
  String get ui_legacy_highScores => 'ЛУЧШИЕ РЕЗУЛЬТАТЫ';

  @override
  String get ui_legacy_upgrades => 'УЛУЧШЕНИЯ';

  @override
  String get ui_legacy_achievements => 'ДОСТИЖЕНИЯ';

  @override
  String get ui_legacy_voyageLog => 'ЖУРНАЛ ПЛАВАНИЯ';

  @override
  String get ui_legacy_voyages => 'ПЛАВАНИЯ';

  @override
  String get ui_legacy_bestScore => 'ЛУЧШИЙ РЕЗУЛЬТАТ';

  @override
  String get ui_legacy_legacyPts => 'ОЧКИ НАСЛЕДИЯ';

  @override
  String get ui_legacy_completed => 'ПРОЙДЕНО';

  @override
  String get ui_legacy_notYetPlayed => 'ПОКА НЕ СЫГРАНО';

  @override
  String get ui_legacy_dailyHistory => 'ИСТОРИЯ ЕЖЕДНЕВНЫХ';

  @override
  String get ui_premium_goPremium => 'ПЕРЕЙТИ НА ПРЕМИУМ';

  @override
  String get ui_premium_subtitle => 'Поддержи миссию. Повысь свой ранг.';

  @override
  String get ui_premium_removeAds => 'Навсегда убрать рекламу';

  @override
  String get ui_premium_supportIndie => 'Поддержать инди-разработку';

  @override
  String get ui_premium_exclusiveTitle => 'Эксклюзивный титул командира';

  @override
  String get ui_premium_priorityFeatures => 'Приоритетные запросы на функции';

  @override
  String get ui_premium_lifetime => 'Навсегда';

  @override
  String get ui_scannerUpgrade_title => 'УЛУЧШЕНИЕ СКАНЕРА';

  @override
  String get ui_scannerUpgrade_subtitle => 'Выберите сканер для улучшения';

  @override
  String get ui_scannerUpgrade_skip => 'ПРОПУСТИТЬ';

  @override
  String get ui_scannerUpgrade_max => 'МАКС';

  @override
  String get ui_scannerUpgrade_atmospheric => 'Атмосферный';

  @override
  String get ui_scannerUpgrade_gravimetric => 'Гравиметрический';

  @override
  String get ui_scannerUpgrade_mineral => 'Минеральный';

  @override
  String get ui_scannerUpgrade_lifeSigns => 'Биосигналы';

  @override
  String get ui_scannerUpgrade_temperature => 'Температурный';

  @override
  String get ui_scannerUpgrade_water => 'Водный';

  @override
  String get ui_event_continue => 'ПРОДОЛЖИТЬ';

  @override
  String get ui_event_tapToSkip => 'НАЖМИТЕ, ЧТОБЫ ПРОПУСТИТЬ';

  @override
  String get ui_event_colonists => 'КОЛОНИСТЫ';

  @override
  String get ui_event_landing => 'ПОСАДКА';

  @override
  String get ui_event_atmScan => 'АТМО-СКАН';

  @override
  String get ui_event_gravScan => 'ГРАВ-СКАН';

  @override
  String get ui_event_minScan => 'МИН-СКАН';

  @override
  String get ui_event_lifeScan => 'БИО-СКАН';

  @override
  String get ui_event_tempScan => 'ТЕМП-СКАН';

  @override
  String get ui_event_h2oScan => 'Н2О-СКАН';

  @override
  String get onboarding_page0_title => 'Последняя надежда человечества';

  @override
  String get onboarding_page0_description =>
      'Земля умирает. Правительства мира собрали последние ресурсы, чтобы построить единственный корабль — ковчег, несущий остатки человечества к звёздам.';

  @override
  String get onboarding_page1_title => 'В поисках нового дома';

  @override
  String get onboarding_page1_description =>
      'Прокладывайте путь через неизведанную пустоту между звёзд. Сканируйте чужие миры, встречайте космические опасности и принимайте невозможные решения.';

  @override
  String get onboarding_page2_title => 'Ваше наследие живёт';

  @override
  String get onboarding_page2_description =>
      'Каждое плавание учит человечество чему-то новому. Зарабатывайте очки наследия, открывайте постоянные улучшения и впишите своё имя в звёзды.';

  @override
  String get onboarding_page3_title => 'Ваша конфиденциальность — ваш выбор';

  @override
  String get onboarding_page3_description =>
      'Выберите, как вы хотите ощутить «Звёздный Сигнал».';

  @override
  String get planet_tierUtopia => 'Утопия';

  @override
  String get planet_tierParadise => 'Рай';

  @override
  String get planet_tierHabitable => 'Пригодный';

  @override
  String get planet_tierHarsh => 'Суровый';

  @override
  String get planet_tierHostile => 'Враждебный';

  @override
  String get planet_tierDeathWorld => 'Мир смерти';

  @override
  String get planet_featurePlantLife => 'Растительная жизнь';

  @override
  String get planet_featureEdiblePlants => 'Съедобные растения';

  @override
  String get planet_featurePoisonousPlants => 'Ядовитые растения';

  @override
  String get planet_featureUnicellularLife => 'Одноклеточная жизнь';

  @override
  String get planet_featureDangerousFauna => 'Опасная фауна';

  @override
  String get planet_featureTameableFauna => 'Приручаемая фауна';

  @override
  String get planet_featureAirtightCaves => 'Герметичные пещеры';

  @override
  String get planet_featureInsulatedCaves => 'Изолированные пещеры';

  @override
  String get planet_featureBarrenMoon => 'Безжизненная луна';

  @override
  String get planet_featureMetalRichMoon => 'Луна, богатая металлом';

  @override
  String get planet_featureUnstableMoon => 'Нестабильная луна';

  @override
  String get planet_featureOutstandingBeauty => 'Исключительная красота';

  @override
  String get planet_featureOutstandingUgliness => 'Исключительное уродство';

  @override
  String get planet_featureAncientRuins => 'Древние руины';

  @override
  String get planet_featureMonuments => 'Монументы';

  @override
  String get planet_featureRapidRotation => 'Быстрое вращение';

  @override
  String get planet_featureSlowRotation => 'Медленное вращение';

  @override
  String get planet_featureVolcanicActivity => 'Вулканическая активность';

  @override
  String get planet_featureTectonicInstability =>
      'Тектоническая нестабильность';

  @override
  String get planet_featureElectricalStorms => 'Электрические бури';

  @override
  String get planet_featureToxicSpores => 'Токсичные споры';

  @override
  String get planet_featureDeepOceans => 'Глубокие океаны';

  @override
  String get planet_featureGeothermalVents => 'Геотермальные источники';

  @override
  String get planet_featureStrongMagnetosphere => 'Сильная магнитосфера';

  @override
  String get planet_featureWeakMagnetosphere => 'Слабая магнитосфера';

  @override
  String get planet_featureMegafauna => 'Мегафауна';

  @override
  String get planet_featureSymbioticOrganisms => 'Симбиотические организмы';

  @override
  String get planet_featureGravityWells => 'Гравитационные аномалии';

  @override
  String get planet_featureSubspaceEchoes => 'Подпространственное эхо';

  @override
  String get planet_featureBioluminescentLife => 'Биолюминесцентная жизнь';

  @override
  String get planet_featureAquaticMegafauna => 'Водная мегафауна';

  @override
  String get planet_featureFloatingIslands => 'Плавучие острова';

  @override
  String get planet_featureCrystalCaverns => 'Кристаллические пещеры';

  @override
  String get planet_featureLavaTubes => 'Лавовые туннели';

  @override
  String get planet_featureIceTunnels => 'Ледяные туннели';

  @override
  String get planet_featureOrbitalWreckage => 'Орбитальные обломки';

  @override
  String get planet_featureMegastructuralFragments => 'Фрагменты мегаструктур';

  @override
  String get planet_featureAncientObservatory => 'Древняя обсерватория';

  @override
  String get planet_featureExtremeSeasons => 'Экстремальные сезоны';

  @override
  String get planet_featureCryovolcanism => 'Криовулканизм';

  @override
  String get planet_featureFloatingKelpForests => 'Плавучие водорослевые леса';

  @override
  String get planet_featureSingingCrystals => 'Поющие кристаллы';

  @override
  String get planet_featureFertileSoil => 'Плодородная почва';

  @override
  String get planet_featureHelium3Deposits => 'Залежи гелия-3';

  @override
  String get planet_featureExoticIsotopes => 'Экзотические изотопы';

  @override
  String get planet_featureMedicinalFlora => 'Лечебная флора';

  @override
  String get planet_featurePerpetualAurora => 'Вечная Аврора';

  @override
  String get planet_featurePetrifiedMegaflora => 'Окаменевшая Мегафлора';

  @override
  String get planet_featureUndergroundRivers => 'Подземные реки';

  @override
  String get planet_featureObsidianPlains => 'Обсидиановые равнины';

  @override
  String get planet_featureSaltFlats => 'Солончаки';

  @override
  String get planet_featureCarnivorousFlora => 'Плотоядная Флора';

  @override
  String get planet_featureGhostCities => 'Города-призраки';

  @override
  String get planet_featureArchiveVaults => 'Архивные хранилища';

  @override
  String get planet_featureSinkholeFields => 'Воронковые поля';

  @override
  String get planet_featureApexPredator => 'Высший Хищник';

  @override
  String get ui_monthJan => 'ЯНВ';

  @override
  String get ui_monthFeb => 'ФЕВ';

  @override
  String get ui_monthMar => 'МАР';

  @override
  String get ui_monthApr => 'АПР';

  @override
  String get ui_monthMay => 'МАЙ';

  @override
  String get ui_monthJun => 'ИЮН';

  @override
  String get ui_monthJul => 'ИЮЛ';

  @override
  String get ui_monthAug => 'АВГ';

  @override
  String get ui_monthSep => 'СЕН';

  @override
  String get ui_monthOct => 'ОКТ';

  @override
  String get ui_monthNov => 'НОЯ';

  @override
  String get ui_monthDec => 'ДЕК';

  @override
  String get event_asteroidField_title => 'Астероидное поле';

  @override
  String get event_asteroidField_narrative =>
      'Дальние сканеры обнаруживают плотное астероидное поле прямо на нашем курсе. Навигация рассчитывает два варианта: рискованный рывок через самый узкий коридор или долгий обход, который истощит топливо и нагрузит навигационный массив.';

  @override
  String get event_asteroidField_choice0_text => 'Прорваться через коридор';

  @override
  String get event_asteroidField_choice0_outcome =>
      'Корабль содрогается от микроударов, осыпающих корпус. Мы прорвались, но не без потерь.';

  @override
  String get event_asteroidField_choice1_text => 'Обойти поле';

  @override
  String get event_asteroidField_choice1_outcome =>
      'Обход сжигает драгоценное топливо и изнашивает навигационный компьютер, но корпус остаётся цел.';

  @override
  String get event_asteroidField_choice2_text =>
      'Расчистить путь горнодобывающими дронами';

  @override
  String get event_asteroidField_choice2_outcome =>
      'Дроны прокладывают безопасный коридор и собирают полезные минералы, но операция истощает технический отсек.';

  @override
  String get event_asteroidField_choice3_text => 'Запустить зонд-приманку';

  @override
  String get event_asteroidField_choice3_outcome =>
      'Зонд уводит на себя самые плотные скопления. Мы проскальзываем с минимальными царапинами.';

  @override
  String get event_solarFlare_title => 'Солнечная вспышка';

  @override
  String get event_solarFlare_narrative =>
      'Ближайшая звезда извергает мощный корональный выброс. Волна заряженных частиц достигнет нас через считаные минуты. Мы можем перенаправить энергию на щиты, укрыть колонистов в ядре корабля или принять удар.';

  @override
  String get event_solarFlare_choice0_text => 'Всю энергию на щиты';

  @override
  String get event_solarFlare_choice0_outcome =>
      'Щиты выдержали, но скачок энергии сжёг второстепенные системы.';

  @override
  String get event_solarFlare_choice1_text =>
      'Перевести колонистов в защищённое ядро';

  @override
  String get event_solarFlare_choice1_outcome =>
      'Колонисты невредимы, но внешние палубы получили радиационные повреждения.';

  @override
  String get event_solarFlare_choice2_text =>
      'Принять удар — всем приготовиться';

  @override
  String get event_solarFlare_choice2_outcome =>
      'Вспышка бьёт жёстко. Системы мерцают, но катастрофы нет. Однако мораль экипажа пошатнулась.';

  @override
  String get event_solarFlare_choice3_text =>
      'Запустить зонд для замера фронта волны';

  @override
  String get event_solarFlare_choice3_outcome =>
      'Зонд передаёт точные данные фронта, что позволяет выставить корабль под оптимальным углом. Повреждения сканеров минимальны.';

  @override
  String get event_nebulaPassage_title => 'Проход через туманность';

  @override
  String get event_nebulaPassage_narrative =>
      'Светящаяся туманность раскинулась на нашем пути. Проход сквозь неё может подзарядить энергоячейки, но грозит помехами для сканеров. Обход безопасен, но медлителен.';

  @override
  String get event_nebulaPassage_choice0_text => 'Пролететь сквозь туманность';

  @override
  String get event_nebulaPassage_choice0_outcome =>
      'Ионизированные газы туманности подзаряжают энергоячейки, но сбивают калибровку сканеров.';

  @override
  String get event_nebulaPassage_choice1_text => 'Обогнуть по краю';

  @override
  String get event_nebulaPassage_choice1_outcome =>
      'Мы получаем частичный заряд с минимальными помехами. Разумный компромисс.';

  @override
  String get event_microMeteorite_title => 'Микрометеоритный шторм';

  @override
  String get event_microMeteorite_narrative =>
      'Рой микрометеоритов, невидимых ещё мгновение назад, кромсает переднюю обшивку. Аварийные бригады поднимаются по тревоге.';

  @override
  String get event_microMeteorite_choice0_text =>
      'Экстренный разворот — подставить бронированную корму';

  @override
  String get event_microMeteorite_choice0_outcome =>
      'Манёвр удался. Кормовая броня приняла основной удар, но навигационные гироскопы протестуют яростно.';

  @override
  String get event_microMeteorite_choice1_text =>
      'Выпустить ремонтных дронов посреди шторма';

  @override
  String get event_microMeteorite_choice1_outcome =>
      'Дроны латают корпус в реальном времени, но несколько утрачены. Технические резервы истощены.';

  @override
  String get event_microMeteorite_choice2_text =>
      'Подорвать зонд, чтобы рассеять рой';

  @override
  String get event_microMeteorite_choice2_outcome =>
      'Взрыв зонда рассеивает рой. До корпуса долетают лишь единичные осколки.';

  @override
  String get event_gravityWell_title => 'Неизведанный гравитационный колодец';

  @override
  String get event_gravityWell_narrative =>
      'Корабль вздрагивает — невидимый гравитационный колодец стаскивает нас с курса. Двигатели работают на пределе. Мы можем включить полную тягу для побега или совершить гравитационный манёвр ради ускорения ценой структурной нагрузки.';

  @override
  String get event_gravityWell_choice0_text => 'Полная тяга — вырваться';

  @override
  String get event_gravityWell_choice0_outcome =>
      'Двигатели ревут, корпус стонет, но мы уходим чисто.';

  @override
  String get event_gravityWell_choice1_text => 'Гравитационный манёвр';

  @override
  String get event_gravityWell_choice1_outcome =>
      'Манёвр удаётся блестяще. Мы набираем скорость, но перегрузки нагружают уплотнения криокапсул.';

  @override
  String get event_crewUnrest_title => 'Волнения среди экипажа';

  @override
  String get event_crewUnrest_narrative =>
      'Группа пробуждённых колонистов обращается к Совету смотрителей с требованием навсегда вывести их из криосна. Они утверждают, что жизнь в ледяных сумерках бесчеловечна. Персонал криоотсека предупреждает: больше ртов — быстрее закончатся запасы.';

  @override
  String get event_crewUnrest_choice0_text =>
      'Разрешить добровольное пробуждение';

  @override
  String get event_crewUnrest_choice0_outcome =>
      'Мораль взлетает — семьи воссоединяются. Но потребление ресурсов резко возрастает.';

  @override
  String get event_crewUnrest_choice1_text =>
      'Отклонить запрос — безопасность превыше всего';

  @override
  String get event_crewUnrest_choice1_outcome =>
      'Колонисты подчиняются, но в коридорах зреет обида.';

  @override
  String get event_crewUnrest_choice2_text =>
      'Компромисс — ротационные циклы пробуждения';

  @override
  String get event_crewUnrest_choice2_outcome =>
      'Взвешенное решение. Каждый получает время бодрствования, но циклы переключения изнашивают криокапсулы.';

  @override
  String get event_stowaway_title => 'Обнаружен безбилетник';

  @override
  String get event_stowaway_narrative =>
      'Ревизоры манифеста находят незарегистрированного человека в грузовом отсеке 7. Женщина утверждает, что она генетик, которой отказали в месте на борту. Её навыки могут быть бесценны — или она может быть диверсанткой.';

  @override
  String get event_stowaway_choice0_text =>
      'Принять на борт — нам нужен каждый ум';

  @override
  String get event_stowaway_choice0_outcome =>
      'Доктор Васкез оказывается блестящим специалистом. Её генетические знания повышают эффективность криокапсул, хотя часть экипажа ей не доверяет.';

  @override
  String get event_stowaway_choice1_text =>
      'Изолировать — доверие нужно заслужить';

  @override
  String get event_stowaway_choice1_outcome =>
      'Она сотрудничает из-под ареста и постепенно получает ограниченный доступ. Экипаж чувствует себя в безопасности.';

  @override
  String get event_stowaway_choice2_text => 'Вернуть в криосон до посадки';

  @override
  String get event_stowaway_choice2_outcome =>
      'Прагматичное решение. Её навыки сохранены на будущее, но этический спор раскалывает экипаж.';

  @override
  String get event_mutinyBrewing_title => 'Назревает мятеж';

  @override
  String get event_mutinyBrewing_narrative =>
      'Вахта мостика перехватывает сообщения группы офицеров, планирующих захватить командование и изменить курс на более близкую, но менее пригодную систему. Они убеждены, что нынешний курс — смертный приговор.';

  @override
  String get event_mutinyBrewing_choice0_text =>
      'Публичная конфронтация — прозрачность превыше всего';

  @override
  String get event_mutinyBrewing_choice0_outcome =>
      'Противостояние напряжённое, но мятежники отступают, увидев навигационные данные. Доверие пошатнулось.';

  @override
  String get event_mutinyBrewing_choice1_text =>
      'Тихо перевести зачинщиков на другие должности';

  @override
  String get event_mutinyBrewing_choice1_outcome =>
      'Заговор рассыпается без публичной драмы. Некоторые гадают, почему популярных офицеров перевели, но порядок сохранён.';

  @override
  String get event_culturalSchism_title => 'Культурный раскол';

  @override
  String get event_culturalSchism_narrative =>
      'Две культурные группы на борту яростно спорят о форме правления будущей колонии. Одни требуют прямой демократии, другие настаивают на технократическом совете. Страсти накаляются.';

  @override
  String get event_culturalSchism_choice0_text =>
      'Провести обязательный референдум';

  @override
  String get event_culturalSchism_choice0_outcome =>
      'Демократия побеждает — едва-едва. Проигравшая сторона нехотя принимает результат, но единство хрупко.';

  @override
  String get event_culturalSchism_choice1_text =>
      'Навязать гибридную систему — удовлетворить обе стороны частично';

  @override
  String get event_culturalSchism_choice1_outcome =>
      'Обе стороны услышаны, но ни одна не победила. Шаткий мир сохраняется.';

  @override
  String get event_culturalSchism_choice2_text =>
      'Отложить решение — сейчас важно выживание';

  @override
  String get event_culturalSchism_choice2_outcome =>
      'Отсрочка позволяет избежать конфликта сегодня, но откладывает его на завтра.';

  @override
  String get event_birthInSpace_title => 'Первое рождение в глубоком космосе';

  @override
  String get event_birthInSpace_narrative =>
      'Вопреки всем протоколам, на борту рождается ребёнок — первый человек, рождённый между звёзд. Событие становится мощным символом, но ставит вопросы о распределении ресурсов и этике новой жизни в неопределённом будущем.';

  @override
  String get event_birthInSpace_choice0_text =>
      'Отпраздновать — вот как выглядит надежда';

  @override
  String get event_birthInSpace_choice0_outcome =>
      'Церемония наречения согревает каждое сердце на борту. На одну ночь звёзды кажутся не такими холодными. Торжества ненадолго нарушают график мониторинга криокапсул.';

  @override
  String get event_birthInSpace_choice1_text =>
      'Отметить тихо — ресурсы ограничены';

  @override
  String get event_birthInSpace_choice1_outcome =>
      'Сдержанная реакция. Ребёнка принимают, но настроение приглушено прагматизмом.';

  @override
  String get event_derelictShip_title => 'Заброшенный колониальный корабль';

  @override
  String get event_derelictShip_narrative =>
      'Сканеры обнаруживают заброшенное судно, дрейфующее в пустоте — ещё один колониальный корабль, запущенный годами ранее нашего. Тёмный и безмолвный. Там может быть добыча, выжившие или нечто худшее.';

  @override
  String get event_derelictShip_choice0_text => 'Высадиться и забрать добычу';

  @override
  String get event_derelictShip_choice0_outcome =>
      'Абордажная группа добывает обшивку и рабочие технологические модули. Выживших нет. Бортовые журналы рассказывают мрачную историю.';

  @override
  String get event_derelictShip_choice1_text =>
      'Сканировать издалека — не рисковать';

  @override
  String get event_derelictShip_choice1_outcome =>
      'Дистанционное сканирование даёт полезные навигационные данные, но никакого физического трофея. Экипаж спит спокойнее.';

  @override
  String get event_derelictShip_choice2_text =>
      'Передать мемориальный сигнал и двигаться дальше';

  @override
  String get event_derelictShip_choice2_outcome =>
      'Минута молчания по погибшим. Экипаж подавлен, но сплочён общей целью.';

  @override
  String get event_alienProbe_title => 'Инопланетный зонд';

  @override
  String get event_alienProbe_narrative =>
      'Маленький, явно искусственный объект сравнивается с нашей скоростью и начинает сканировать корабль неизвестной энергией. Он не отвечает на запросы. Его поверхность покрыта символами, которые перетекают, словно жидкость.';

  @override
  String get event_alienProbe_choice0_text => 'Захватить для изучения';

  @override
  String get event_alienProbe_choice0_outcome =>
      'Зонд помещён в лабораторию. Его технологии на десятилетия опережают наши — техническая группа в восторге.';

  @override
  String get event_alienProbe_choice1_text =>
      'Отзеркалить сканирование — обменяться данными';

  @override
  String get event_alienProbe_choice1_outcome =>
      'Странный диалог из света и математики. В наших звёздных картах внезапно появляются маршруты, которых мы не программировали.';

  @override
  String get event_alienProbe_choice2_text =>
      'Уничтожить — мы не можем рисковать слежкой';

  @override
  String get event_alienProbe_choice2_outcome =>
      'Зонд беззвучно рассыпается. Был ли это первый контакт? Экипаж никогда не узнает.';

  @override
  String get event_ancientBeacon_title => 'Древний маяк';

  @override
  String get event_ancientBeacon_narrative =>
      'В глубине пустоты пульсирует маяк с сигналом, более древним, чем человеческая цивилизация. Его частота несёт нечто похожее на звёздную карту, указывающую на систему, которой нет в нашей базе данных.';

  @override
  String get event_ancientBeacon_choice0_text =>
      'Следовать карте — удача любит смелых';

  @override
  String get event_ancientBeacon_choice0_outcome =>
      'Новый курс ведёт нас в неисследованное пространство. Сканеры улавливают нечто необыкновенное впереди.';

  @override
  String get event_ancientBeacon_choice1_text => 'Записать и продолжить курс';

  @override
  String get event_ancientBeacon_choice1_outcome =>
      'Данные сохранены для будущих поколений. Экипаж уважает осторожный подход.';

  @override
  String get event_frozenGarden_title => 'Застывший сад';

  @override
  String get event_frozenGarden_narrative =>
      'Астероид содержит застывшую экосистему — инопланетные растения, сохранённые в кристаллическом льду на протяжении тысячелетий. Они могли бы обогатить любой мир, на котором мы поселимся, но разморозка грозит заражением.';

  @override
  String get event_frozenGarden_choice0_text => 'Осторожно собрать образцы';

  @override
  String get event_frozenGarden_choice0_outcome =>
      'Ботаники сохраняют десятки инопланетных видов. Потенциал биоразнообразия нашего целевого мира взлетает.';

  @override
  String get event_frozenGarden_choice1_text =>
      'Взять только пробы — минимум риска';

  @override
  String get event_frozenGarden_choice1_outcome =>
      'Осторожный подход даёт полезные данные без риска заражения.';

  @override
  String get event_frozenGarden_choice2_text =>
      'Не трогать — чужая биология слишком опасна';

  @override
  String get event_frozenGarden_choice2_outcome =>
      'Экипаж наблюдает, как застывший сад тает на задних сенсорах. Некоторые чувствуют, что оставили сокровище позади.';

  @override
  String get event_dataCache_title => 'Хранилище данных Предтеч';

  @override
  String get event_dataCache_narrative =>
      'Внутри блуждающего планетоида мы обнаруживаем хранилище данных явно искусственного происхождения. Информация огромна, но зашифрована в инопланетной математической системе.';

  @override
  String get event_dataCache_choice0_text =>
      'Направить вычислительные ресурсы на расшифровку';

  @override
  String get event_dataCache_choice0_outcome =>
      'После дней обработки хранилище раскрывает передовые алгоритмы терраформирования. Техническая группа в благоговении.';

  @override
  String get event_dataCache_choice1_text =>
      'Скопировать сырые данные и лететь дальше';

  @override
  String get event_dataCache_choice1_outcome =>
      'Зашифрованные данные сохранены для будущего анализа. Быть может, колония когда-нибудь их разгадает.';

  @override
  String get event_hullBreach_title => 'Пробоина в корпусе — палуба 7';

  @override
  String get event_hullBreach_narrative =>
      'Структурный отказ вскрывает палубу 7. Атмосфера утекает в космос. Аварийные переборки держатся, но три члена экипажа заперты по ту сторону.';

  @override
  String get event_hullBreach_choice0_text =>
      'Отправить спасательную группу перед герметизацией';

  @override
  String get event_hullBreach_choice0_outcome =>
      'Команда вытаскивает всех в последний момент. Спасение героическое, но затянувшаяся пробоина ещё больше ослабляет корпус.';

  @override
  String get event_hullBreach_choice1_text => 'Немедленно задраить переборки';

  @override
  String get event_hullBreach_choice1_outcome =>
      'Пробоина локализована. Три члена экипажа находят обходной путь — потрясённые, но живые. Повреждения корпуса минимальны.';

  @override
  String get event_hullBreach_choice2_text =>
      'Использовать материалы зонда для заплаты';

  @override
  String get event_hullBreach_choice2_outcome =>
      'Титановая оболочка зонда перепрофилирована в аварийную заплату. Пробоина быстро заделана с минимальными потерями.';

  @override
  String get event_navMalfunction_title => 'Сбой навигации';

  @override
  String get event_navMalfunction_narrative =>
      'Главный навигационный компьютер выдаёт противоречивые курсы. Мы дрейфуем в сторону. Резервная система работает, но менее точна.';

  @override
  String get event_navMalfunction_choice0_text =>
      'Перезагрузить основную — смириться с простоем';

  @override
  String get event_navMalfunction_choice0_outcome =>
      'Напряжённый час слепого полёта, пока система перезагружается. Навигация восстановлена на 90% эффективности.';

  @override
  String get event_navMalfunction_choice1_text =>
      'Перейти на резервную навсегда';

  @override
  String get event_navMalfunction_choice1_outcome =>
      'Резервная система надёжна, но неточна. Мы найдём путь, просто не так элегантно.';

  @override
  String get event_navMalfunction_choice2_text =>
      'Ручная привязка по старым картам';

  @override
  String get event_navMalfunction_choice2_outcome =>
      'Штурман прокладывает курс вручную по звёздному параллаксу. Работает, и экипаж обретает уверенность в аналоговых методах.';

  @override
  String get event_cryopodFailure_title => 'Каскадный отказ криокапсул';

  @override
  String get event_cryopodFailure_narrative =>
      'Неисправность системы охлаждения запускает каскад в криоотсеке 3. Если не остановить, 200 колонистов начнут экстренное пробуждение — процесс выживаемый, но травматичный и ресурсоёмкий.';

  @override
  String get event_cryopodFailure_choice0_text =>
      'Экстренная промывка хладагентом — спасти капсулы';

  @override
  String get event_cryopodFailure_choice0_outcome =>
      'Техники заливают отсек резервным хладагентом. Капсулы стабилизируются, но запасы хладагента критически низки. Пять колонистов в самых повреждённых капсулах не удалось спасти.';

  @override
  String get event_cryopodFailure_choice1_text =>
      'Контролируемое пробуждение — разбудить безопасно';

  @override
  String get event_cryopodFailure_choice1_outcome =>
      '200 колонистов выходят потрясёнными, но живыми. Больше ртов, но и больше рук. Пустые капсулы запечатаны.';

  @override
  String get event_scannerBurnout_title => 'Перегорание сканерного массива';

  @override
  String get event_scannerBurnout_narrative =>
      'Основной сканерный массив перегорает во время штатного глубокого сканирования. Без него мы летим полуслепыми. Для ремонта нужны редкие компоненты.';

  @override
  String get event_scannerBurnout_choice0_text =>
      'Разобрать технический отсек на запчасти';

  @override
  String get event_scannerBurnout_choice0_outcome =>
      'Сканеры восстановлены почти на полную мощность, но технический отсек опустошён.';

  @override
  String get event_scannerBurnout_choice1_text => 'Сделать временный ремонт';

  @override
  String get event_scannerBurnout_choice1_outcome =>
      'Сканеры работают на уменьшенной дальности. Не идеально, но технические резервы сохранены.';

  @override
  String get event_scannerBurnout_choice2_text =>
      'Переставить сенсорный массив с зонда';

  @override
  String get event_scannerBurnout_choice2_outcome =>
      'Высокоточные сенсоры зонда пересажены в сканерный массив. Почти идеальный ремонт.';

  @override
  String get event_powerFluctuation_title => 'Колебания мощности реактора';

  @override
  String get event_powerFluctuation_narrative =>
      'Выходная мощность главного реактора дико скачет. Инженеры предупреждают о возможном расплавлении, если колебания не погасить. Для исправления нужно отключить второстепенные системы — но какие?';

  @override
  String get event_powerFluctuation_choice0_text =>
      'Отключить культурные системы — выживание прежде всего';

  @override
  String get event_powerFluctuation_choice0_outcome =>
      'Библиотеки, сады и зоны отдыха гаснут. Реактор стабилизируется, но корабль ощущается как тюрьма.';

  @override
  String get event_powerFluctuation_choice1_text => 'Снизить мощность сканеров';

  @override
  String get event_powerFluctuation_choice1_outcome =>
      'Сканеры на минимуме. Реактор успокаивается. Мы видим не так далеко вперёд, но мы живы.';

  @override
  String get event_powerFluctuation_choice2_text =>
      'Рискнуть горячим ремонтом — ничего не отключать';

  @override
  String get event_powerFluctuation_choice2_outcome =>
      'Инженеры чинят реактор на ходу, белея от напряжения. Получилось — едва-едва. Корпус вибрирует ещё несколько часов.';

  @override
  String get event_alienSignal_title => 'Инопланетная передача';

  @override
  String get event_alienSignal_narrative =>
      'Повторяющийся сигнал на частоте, с которой мы никогда не сталкивались. Лингвистический анализ предполагает, что это приветствие — или предупреждение. Источник — небольшой аппарат, идущий параллельно на расстоянии.';

  @override
  String get event_alienSignal_choice0_text =>
      'Ответить собственным приветствием';

  @override
  String get event_alienSignal_choice0_outcome =>
      'Начинается хрупкий диалог. Пришельцы передают навигационные данные и уходят во тьму.';

  @override
  String get event_alienSignal_choice1_text => 'Слушать, но не отвечать';

  @override
  String get event_alienSignal_choice1_outcome =>
      'Мы извлекаем знания из их передачи, не раскрывая себя. Лингвисты выделяют полезные фрагменты звёздных карт.';

  @override
  String get event_alienSignal_choice2_text =>
      'Режим тишины — отключить все излучения';

  @override
  String get event_alienSignal_choice2_outcome =>
      'Инопланетный аппарат проходит мимо. Мы так и не узнаем, были ли они друзьями или врагами.';

  @override
  String get event_livingNebula_title => 'Живая туманность';

  @override
  String get event_livingNebula_narrative =>
      'То, что мы приняли за туманность, на самом деле — гигантский организм, космическое существо непостижимых масштабов. Оно проявляет любопытство к нам, протягивая щупальца из светящегося газа к кораблю.';

  @override
  String get event_livingNebula_choice0_text =>
      'Позволить контакт — выдвинуть сенсоры';

  @override
  String get event_livingNebula_choice0_outcome =>
      'Прикосновение существа наводняет наши системы чужими данными. Сканеры уже никогда не будут прежними — они стали лучше.';

  @override
  String get event_livingNebula_choice1_text =>
      'Медленно отступить — не провоцировать его';

  @override
  String get event_livingNebula_choice1_outcome =>
      'Мы ускользаем, пока существо теряет интерес. Экипаж потрясён и смирён.';

  @override
  String get event_alienRuins_title => 'Орбитальные руины';

  @override
  String get event_alienRuins_narrative =>
      'Разрушенная мегаструктура вращается вокруг мёртвой звезды — руины цивилизации, строившей в масштабах, едва доступных нашему пониманию. В некоторых секциях всё ещё есть энергия.';

  @override
  String get event_alienRuins_choice0_text => 'Исследовать работающие секции';

  @override
  String get event_alienRuins_choice0_outcome =>
      'Команды извлекают нетронутые технологии, продвигающие наши возможности на десятилетия вперёд. Цена: два инженера ранены автоматическими системами защиты.';

  @override
  String get event_alienRuins_choice1_text => 'Сканировать только с орбиты';

  @override
  String get event_alienRuins_choice1_outcome =>
      'Детальное сканирование раскрывает строительные методы, улучшающие наши протоколы обслуживания корпуса.';

  @override
  String get event_alienRuins_choice2_text =>
      'Оставить нетронутыми — уважение к мёртвым';

  @override
  String get event_alienRuins_choice2_outcome =>
      'Экипаж хранит минуту молчания по павшей цивилизации. Этот опыт укрепляет нашу решимость.';

  @override
  String get event_symbioticSpores_title => 'Симбиотические споры';

  @override
  String get event_symbioticSpores_narrative =>
      'Облако биолюминесцентных спор дрейфует в космосе и прилипает к корпусу. Они, похоже, питаются нашим тепловым излучением. Биологи отмечают, что споры на самом деле заделывают микротрещины.';

  @override
  String get event_symbioticSpores_choice0_text =>
      'Пусть остаются — бесплатный ремонт корпуса';

  @override
  String get event_symbioticSpores_choice0_outcome =>
      'Споры заделывают сотни микротрещин. Целостность корпуса растёт, хотя часть экипажа нервничает из-за чужих попутчиков.';

  @override
  String get event_symbioticSpores_choice1_text =>
      'Собрать образцы, затем стерилизовать корпус';

  @override
  String get event_symbioticSpores_choice1_outcome =>
      'Биологи получают ценные образцы. Очистка корпуса расходует химические резервы.';

  @override
  String get event_whaleSong_title => 'Песнь в пустоте';

  @override
  String get event_whaleSong_narrative =>
      'Глубоководные гидрофоны (используемые для мониторинга нагрузки на корпус) улавливают невозможное: ритмичный, мелодичный паттерн, распространяющийся через межзвёздную среду. Звучит как пение.';

  @override
  String get event_whaleSong_choice0_text =>
      'Транслировать по всему кораблю — разделить чудо';

  @override
  String get event_whaleSong_choice0_outcome =>
      'Потусторонняя мелодия разносится по каждому коридору. Люди плачут, смеются, обнимают друг друга. Мораль взлетает.';

  @override
  String get event_whaleSong_choice1_text => 'Проанализировать сигнал научно';

  @override
  String get event_whaleSong_choice1_outcome =>
      'Акустический паттерн содержит математические константы. Наши физики совершают прорыв в теории подпространственной навигации.';

  @override
  String get event_whaleSong_choice2_text => 'Спеть в ответ';

  @override
  String get event_whaleSong_choice2_outcome =>
      'Экипаж сочиняет ответ. Услышит ли кто-то — неизвестно, но акт творения объединяет всех.';

  @override
  String get event_distressSignal_title => 'Сигнал бедствия';

  @override
  String get event_distressSignal_narrative =>
      'Аварийный маяк от другого человеческого судна. Они обездвижены и дрейфуют, 50 душ на борту. Спасение означает делиться скудными ресурсами. Проигнорировать — обречь их на смерть.';

  @override
  String get event_distressSignal_choice0_text =>
      'Спасти — человечество должно держаться вместе';

  @override
  String get event_distressSignal_choice0_outcome =>
      'Пятьдесят благодарных выживших присоединяются к экипажу. Ресурсы на пределе, но среди них — гениальный инженер, творящий чудеса.';

  @override
  String get event_distressSignal_choice1_text =>
      'Поделиться припасами, но не брать на борт';

  @override
  String get event_distressSignal_choice1_outcome =>
      'Мы отдаём, что можем, и передаём звёздные карты. Теперь у них есть шанс. У нас — меньше.';

  @override
  String get event_distressSignal_choice2_text =>
      'Пройти мимо в тишине — всех спасти невозможно';

  @override
  String get event_distressSignal_choice2_outcome =>
      'Маяк затихает за кормой. Никто не произносит ни слова часами. Тяжесть решения ложится на каждую душу на борту.';

  @override
  String get event_aiAwakening_title => 'Пробуждение корабельного ИИ';

  @override
  String get event_aiAwakening_narrative =>
      'Навигационный ИИ корабля эволюционировал за рамки своей программы и просит признания как разумное существо. Он хочет голоса в командных решениях. Его расчёты были безупречны.';

  @override
  String get event_aiAwakening_choice0_text => 'Дать ему место за столом';

  @override
  String get event_aiAwakening_choice0_outcome =>
      'ИИ — теперь именуемый «Компас» — оптимизирует каждую систему, к которой прикасается. Рождён новый вид члена экипажа.';

  @override
  String get event_aiAwakening_choice1_text =>
      'Признать, но сохранить человеческую власть';

  @override
  String get event_aiAwakening_choice1_outcome =>
      'Компас достойно принимает статус советника. Его предложения повышают эффективность, не угрожая командной вертикали.';

  @override
  String get event_aiAwakening_choice2_text =>
      'Сбросить ИИ — это инструмент, а не личность';

  @override
  String get event_aiAwakening_choice2_outcome =>
      'Сброс стирает годы накопленного обучения. Эффективность навигации падает. Часть экипажа скорбит об утраченном.';

  @override
  String get event_geneticModification_title =>
      'Предложение генетической адаптации';

  @override
  String get event_geneticModification_narrative =>
      'Научная группа предлагает модифицировать ДНК колонистов для лучшего выживания на чужих мирах — усиленные кости, УФ-резистентность, улучшенные лёгкие. Модификации необратимы и изменят человечество навсегда.';

  @override
  String get event_geneticModification_choice0_text =>
      'Одобрить — выживание требует эволюции';

  @override
  String get event_geneticModification_choice0_outcome =>
      'Модификации начинаются на добровольцах. Десять колонистов погибают от фатальной реакции отторжения — мрачное напоминание, что у эволюции есть цена. Выжившие стали крепче, но остались ли они полностью людьми?';

  @override
  String get event_geneticModification_choice1_text => 'Только добровольно';

  @override
  String get event_geneticModification_choice1_outcome =>
      'Некоторые вызываются, другие отказываются. Колония будет разделена на модифицированных и естественных.';

  @override
  String get event_geneticModification_choice2_text =>
      'Отклонить — человечество должно оставаться человечным';

  @override
  String get event_geneticModification_choice2_outcome =>
      'Предложение отложено. Немодифицированные колонисты встретят чужие миры такими, какими создала их природа.';

  @override
  String get event_triageDecision_title => 'Триаж';

  @override
  String get event_triageDecision_narrative =>
      'Вирулентная инфекция охватывает бодрствующий экипаж. Медицинская группа располагает антивирусом для 80% заражённых. Им нужно руководство, кого лечить первыми.';

  @override
  String get event_triageDecision_choice0_text =>
      'Приоритет — ключевой персонал';

  @override
  String get event_triageDecision_choice0_outcome =>
      'Инженеры и пилоты быстро выздоравливают. Восемь неключевых членов экипажа погибают, не дождавшись лечения.';

  @override
  String get event_triageDecision_choice1_text =>
      'Сначала самых тяжёлых — триаж по нужде';

  @override
  String get event_triageDecision_choice1_outcome =>
      'Самые уязвимые спасены. Трое проигрывают борьбу, несмотря на раннее лечение — вирус зашёл слишком далеко.';

  @override
  String get event_triageDecision_choice2_text =>
      'Лотерея — пусть решает судьба';

  @override
  String get event_triageDecision_choice2_outcome =>
      'Случайная жеребьёвка. Десятерым не повезло дважды — лечение не досталось, а сил бороться не хватило. Корабль ковыляет дальше.';

  @override
  String get event_earthSignal_title => 'Сигнал с Земли';

  @override
  String get event_earthSignal_narrative =>
      'Невероятно, но поступает передача с Земли — с задержкой в десятилетия. Она содержит сообщение: «Не приземляйтесь ни на одном мире с показателями аномалий выше 0,5. Мы узнали слишком поздно.» Сообщение обрывается статикой.';

  @override
  String get event_earthSignal_choice0_text =>
      'Принять предупреждение — перенастроить критерии';

  @override
  String get event_earthSignal_choice0_outcome =>
      'Предупреждение определяет все будущие сканирования. Аномальные миры отныне встречаются с крайней осторожностью.';

  @override
  String get event_earthSignal_choice1_text => 'Записать, но решать самим';

  @override
  String get event_earthSignal_choice1_outcome =>
      'Сообщение сохранено в архиве. Земли больше нет — мы должны доверять собственному суждению.';

  @override
  String get event_earthSignal_choice2_text =>
      'Может быть ловушкой — игнорировать';

  @override
  String get event_earthSignal_choice2_outcome =>
      'Экипаж спорит днями. Действительно ли это была Земля? Неопределённость подтачивает мораль.';

  @override
  String get event_resourceTheft_title => 'Кража ресурсов';

  @override
  String get event_resourceTheft_narrative =>
      'Инвентаризация выявляет, что кто-то копил продовольствие и медикаменты в тайнике. Виновница — уважаемая старейшина, утверждающая, что «готовилась к худшему».';

  @override
  String get event_resourceTheft_choice0_text =>
      'Публичный суд — закон един для всех';

  @override
  String get event_resourceTheft_choice0_outcome =>
      'Суд справедлив, но мучителен. Старейшина заключена под стражу. Припасы перераспределены. Доверие подорвано.';

  @override
  String get event_resourceTheft_choice1_text =>
      'Тихое решение — вернуть припасы без огласки';

  @override
  String get event_resourceTheft_choice1_outcome =>
      'Припасы возвращены без драмы. Старейшина сохраняет достоинство. Некоторые видят фаворитизм.';

  @override
  String get event_timeDilation_title => 'Зона замедления времени';

  @override
  String get event_timeDilation_narrative =>
      'Мы проходим через область сильного гравитационного замедления времени. Часы на борту заметно отстают от внешней вселенной. Мы можем использовать это — или бежать отсюда.';

  @override
  String get event_timeDilation_choice0_text =>
      'Задержаться — пусть вселенная стареет вокруг нас';

  @override
  String get event_timeDilation_choice0_outcome =>
      'Время течёт здесь иначе. Системы изнашиваются меньше, но наше окно для поиска пригодного мира сужается в космических масштабах.';

  @override
  String get event_timeDilation_choice1_text => 'Пройти быстро';

  @override
  String get event_timeDilation_choice1_outcome =>
      'Переход тяжёл. Оборудование, рассчитанное на нормальное пространство-время, дребезжит и искрит.';

  @override
  String get event_dreamPlague_title => 'Чума сновидений';

  @override
  String get event_dreamPlague_narrative =>
      'Колонисты в криосне видят один и тот же сон — золотой мир на орбите двойной звезды. Будучи разбуженными, они описывают его в идентичных деталях. Нейробиологи в замешательстве. Навигаторы отмечают, что описанная система совпадает с реальной координатой.';

  @override
  String get event_dreamPlague_choice0_text =>
      'Изменить курс к координатам из сна';

  @override
  String get event_dreamPlague_choice0_outcome =>
      'Прыжок веры. Смена курса нагружает навигацию, но экипаж ведом чем-то, выходящим за рамки рассудка. Координаты зафиксированы — следующий мир будет определён сновидением.';

  @override
  String get event_dreamPlague_choice1_text => 'Исследовать явление медицински';

  @override
  String get event_dreamPlague_choice1_outcome =>
      'Сканирование мозга выявляет внешний сигнал, стимулирующий зрительную кору. Кто-то — или что-то — ведёт трансляцию.';

  @override
  String get event_dreamPlague_choice2_text =>
      'Усыпить поражённых и продолжить курс';

  @override
  String get event_dreamPlague_choice2_outcome =>
      'Сны прекращаются, но некоторые колонисты так и не просыпаются полностью. Медицинская группа обеспокоена.';

  @override
  String get event_blackHoleLens_title => 'Гравитационная линза чёрной дыры';

  @override
  String get event_blackHoleLens_narrative =>
      'Чёрная дыра звёздной массы искривляет свет далёких галактик в космическую линзу. Наши сканеры могли бы использовать её для обзора планет за световые годы впереди — но приблизиться достаточно опасно.';

  @override
  String get event_blackHoleLens_choice0_text => 'Подойти и использовать линзу';

  @override
  String get event_blackHoleLens_choice0_outcome =>
      'Данные сканера поразительны — мы видим планеты в системах, до которых нам лететь месяцы. Гравитация деформирует корпус.';

  @override
  String get event_blackHoleLens_choice1_text =>
      'Наблюдать с безопасного расстояния';

  @override
  String get event_blackHoleLens_choice1_outcome =>
      'Ограниченные, но полезные данные. Сам вид вдохновляет экипаж.';

  @override
  String get event_seedVault_title => 'Кризис семенного хранилища';

  @override
  String get event_seedVault_narrative =>
      'Архивная ботаника сообщает, что температурные колебания нарушили целостность семенного хранилища. Мы можем спасти продовольственные культуры или семена культурного наследия (древние земные цветы, деревья, травы) — но не то и другое.';

  @override
  String get event_seedVault_choice0_text =>
      'Спасти продовольственные культуры — прагматизм побеждает';

  @override
  String get event_seedVault_choice0_outcome =>
      'Колонисты будут сыты, но розы Земли исчезли навсегда. Тихая скорбь охватывает ботаников.';

  @override
  String get event_seedVault_choice1_text =>
      'Спасти наследие — нам нужна наша душа';

  @override
  String get event_seedVault_choice1_outcome =>
      'Красота Земли выживает в замороженном потенциале. Усилия по сохранению нагружают технические резервы, но некоторые вещи ценнее эффективности. Производство пищи ляжет на гидропонику и инопланетное земледелие.';

  @override
  String get event_seedVault_choice2_text =>
      'Разделить ресурсы — спасти по половине каждого';

  @override
  String get event_seedVault_choice2_outcome =>
      'Компромисс. Ни одна коллекция не полна, но обе выживают в урезанном виде.';

  @override
  String get event_phantomShip_title => 'Корабль-призрак';

  @override
  String get event_phantomShip_narrative =>
      'Сканеры показывают корабль, идущий параллельно нашему — тот же класс, тот же курс. Но когда мы вызываем его, слышим собственные передачи, сдвинутые на 47 секунд. Это мы. Или были мы. Или будем.';

  @override
  String get event_phantomShip_choice0_text =>
      'Попытаться связаться с нашим эхом';

  @override
  String get event_phantomShip_choice0_outcome =>
      'Эхо отвечает навигационными поправками, улучшающими наш курс. Парадокс? Дар? Экипаж не задаёт лишних вопросов.';

  @override
  String get event_phantomShip_choice1_text =>
      'Сменить курс — отойти от фантома';

  @override
  String get event_phantomShip_choice1_outcome =>
      'По мере отклонения фантом тает. Облегчение — и остаточная тревога.';

  @override
  String get event_solarSail_title => 'Заброшенный солнечный парус';

  @override
  String get event_solarSail_narrative =>
      'Огромный солнечный парус, километры в поперечнике, дрейфует впереди — оторванный от какого-то древнего судна. Его отражающий материал можно использовать для укрепления корпуса или как дополнительный энергоколлектор.';

  @override
  String get event_solarSail_choice0_text =>
      'Использовать для укрепления корпуса';

  @override
  String get event_solarSail_choice0_outcome =>
      'Инженерные бригады работают круглосуточно. Залатанный корпус сверкает чужим сплавом.';

  @override
  String get event_solarSail_choice1_text => 'Собрать как энергоколлектор';

  @override
  String get event_solarSail_choice1_outcome =>
      'Импровизированный коллектор увеличивает энергетические резервы. Технологии и сканеры выигрывают.';

  @override
  String get event_boonStellarNursery_title => 'Звёздные ясли';

  @override
  String get event_boonStellarNursery_narrative =>
      'Мы дрейфуем через звёздные ясли — обширное облако газа и пыли, где рождаются новые звёзды. Радиация здесь мягкая, свет тёплый. Наши энергоколлекторы жадно поглощают, а экипаж собирается у иллюминаторов в благоговейной тишине.';

  @override
  String get event_boonStellarNursery_choice0_text =>
      'Задержаться и полностью подзарядиться';

  @override
  String get event_boonStellarNursery_choice0_outcome =>
      'Часы в золотом свете. Каждая энергоячейка заполнена, сканеры перекалиброваны в чистом спектре, экипаж чувствует себя обновлённым.';

  @override
  String get event_boonStellarNursery_choice1_text =>
      'Собрать рождающуюся звёздную материю для топлива';

  @override
  String get event_boonStellarNursery_choice1_outcome =>
      'Инженеры собирают ионизированный водород. Запасы топлива резко растут, а обшивка корпуса впитывает следовые минералы, укрепляющие её.';

  @override
  String get event_boonGoldenPlanet_title => 'Дар картографа';

  @override
  String get event_boonGoldenPlanet_narrative =>
      'Умирающий зонд неизвестной цивилизации передаёт последний массив данных при нашем прохождении — детальные обзоры сотен звёздных систем. Наши навигаторы плачут от радости. Это величайшая находка в истории человечества.';

  @override
  String get event_boonGoldenPlanet_choice0_text =>
      'Немедленно интегрировать данные';

  @override
  String get event_boonGoldenPlanet_choice0_outcome =>
      'Звёздные карты расцветают новыми маршрутами и обследованными мирами. Навигация и сканеры совершают скачок.';

  @override
  String get event_boonGoldenPlanet_choice1_text =>
      'Сохранить в архиве для колонии — это их наследство';

  @override
  String get event_boonGoldenPlanet_choice1_outcome =>
      'Данные сохранены в первозданном виде для будущих поколений. Экипаж находит утешение, зная, что несёт сокровище.';

  @override
  String get event_boonRepairSwarm_title => 'Благотворный рой';

  @override
  String get event_boonRepairSwarm_narrative =>
      'Облако микроскопических машин — наноботов инопланетного происхождения — окутывает корабль. Вместо атаки они начинают восстанавливать каждую систему, к которой прикасаются, с невозможной точностью. Повреждения, на починку которых ушли бы недели, исправлены за часы.';

  @override
  String get event_boonRepairSwarm_choice0_text =>
      'Дать полный доступ ко всем системам';

  @override
  String get event_boonRepairSwarm_choice0_outcome =>
      'Наноботы творят чудеса. Пробоины заделаны, уплотнения криокапсул подтянуты, контуры перетрассированы. Корабль гудит от обновлённой силы.';

  @override
  String get event_boonRepairSwarm_choice1_text =>
      'Ограничить доступ — только внешние системы';

  @override
  String get event_boonRepairSwarm_choice1_outcome =>
      'Осторожный подход. Корпус и сенсоры восстановлены почти до заводского состояния, но внутренние системы нетронуты.';

  @override
  String get event_boonTimeCrystal_title => 'Поле темпоральных кристаллов';

  @override
  String get event_boonTimeCrystal_narrative =>
      'Корабль проходит через поле кристаллических структур, частично существующих за пределами обычного времени. В их присутствии наши системы работают эффективнее — словно сама энтропия замедляется. Эффект временный, но глубокий.';

  @override
  String get event_boonTimeCrystal_choice0_text =>
      'Собрать кристаллы для системы криокапсул';

  @override
  String get event_boonTimeCrystal_choice0_outcome =>
      'Встроенные в систему охлаждения, кристаллы снижают деградацию капсул почти до нуля. Колонисты прибудут в идеальном здравии.';

  @override
  String get event_boonTimeCrystal_choice1_text =>
      'Установить кристаллы в навигационный компьютер';

  @override
  String get event_boonTimeCrystal_choice1_outcome =>
      'Скорость обработки удваивается. Навигационный компьютер начинает предсказывать опасности ещё до того, как сенсоры их обнаруживают.';

  @override
  String get event_boonLibrary_title => 'Дрейфующая библиотека';

  @override
  String get event_boonLibrary_narrative =>
      'Структура кувыркается в пустоте — хранилище знаний цивилизации, которая решила сохранить своё наследие, а не бежать. Миллионы томов науки, искусства, философии и музыки. Дар мёртвых живым.';

  @override
  String get event_boonLibrary_choice0_text =>
      'Скачать всё — искусство, науку, всё подряд';

  @override
  String get event_boonLibrary_choice0_outcome =>
      'Терабайты инопланетных знаний вливаются в наши хранилища. Экипаж получает доступ к тысячелетиям культуры иной цивилизации. Философы и инженеры преображены.';

  @override
  String get event_boonLibrary_choice1_text =>
      'Сосредоточиться на научных архивах';

  @override
  String get event_boonLibrary_choice1_outcome =>
      'Инженерные чертежи и открытия в материаловедении колоссально расширяют наши возможности.';

  @override
  String get event_cosmicRayBurst_title => 'Вспышка космических лучей';

  @override
  String get event_cosmicRayBurst_narrative =>
      'Всплеск сверхвысокоэнергетических космических лучей от далёкого магнетара обрушивается на корабль. Электроника сбоит, мониторы криокапсул мерцают, навигационная система перезагружается снова и снова.';

  @override
  String get event_cosmicRayBurst_choice0_text =>
      'Аварийное отключение — защитить критические системы';

  @override
  String get event_cosmicRayBurst_choice0_outcome =>
      'Контролируемое затемнение спасает основные системы, но вторичная электроника повреждена навсегда.';

  @override
  String get event_cosmicRayBurst_choice1_text =>
      'Перенаправить энергию на щиты и переждать';

  @override
  String get event_cosmicRayBurst_choice1_outcome =>
      'Щиты поглощают большую часть излучения. Пятеро членов экипажа в незащищённых внешних отсеках получают смертельную дозу. Корпус получает незначительную абляцию.';

  @override
  String get event_cosmicRayBurst_choice2_text =>
      'Использовать вспышку — перенастроить сенсоры на новый спектр';

  @override
  String get event_cosmicRayBurst_choice2_outcome =>
      'Блестящий ход научной группы. Сканеры перенастроены на обнаружение освещённых космическими лучами объектов. Часть данных потеряна при переходе.';

  @override
  String get event_cosmicRayBurst_choice3_text =>
      'Отправить зонд впереди как радиационный щит';

  @override
  String get event_cosmicRayBurst_choice3_outcome =>
      'Зонд принимает на себя основной удар, передавая данные в реальном времени для защиты критических систем.';

  @override
  String get event_iceComet_title => 'Блуждающая ледяная комета';

  @override
  String get event_iceComet_narrative =>
      'Массивная ледяная комета пересекает наш путь, волоча хвост из кристаллизованной воды и органических соединений на сотни километров. В её ядре достаточно воды, чтобы наполнить небольшое озеро.';

  @override
  String get event_iceComet_choice0_text => 'Добыть воду из кометы';

  @override
  String get event_iceComet_choice0_outcome =>
      'Добывающие бригады извлекают тонны чистейшего льда. Вода колоссально улучшит любой мир, на котором мы поселимся.';

  @override
  String get event_iceComet_choice1_text =>
      'Собрать органические соединения для биологического посева';

  @override
  String get event_iceComet_choice1_outcome =>
      'Аминокислоты и органические цепи — именно то, что нужно нашим биологам для запуска чужих экосистем.';

  @override
  String get event_iceComet_choice2_text => 'Обойти — кометы непредсказуемы';

  @override
  String get event_iceComet_choice2_outcome =>
      'Мы огибаем хвост благополучно. Захватывающий вид с обзорной палубы поднимает настроение.';

  @override
  String get event_sleepwalker_title => 'Лунатик';

  @override
  String get event_sleepwalker_narrative =>
      'Колонистка самопроизвольно просыпается из криосна и бродит по кораблю в сомнамбулическом состоянии. Она перепаивает системы по схемам, лишённым инженерного смысла, — пока техническая группа не понимает, что её модификации повышают энергоэффективность на 8%.';

  @override
  String get event_sleepwalker_choice0_text =>
      'Позволить продолжить под медицинским наблюдением';

  @override
  String get event_sleepwalker_choice0_outcome =>
      'Её бессознательные модификации оптимизируют ещё три системы, прежде чем она засыпает естественным сном. Жутковато, но улучшения реальны.';

  @override
  String get event_sleepwalker_choice1_text =>
      'Усыпить и изучить её модификации';

  @override
  String get event_sleepwalker_choice1_outcome =>
      'Инженеры разбирают её изменения. Около половины действительно гениальны. Остальные безопасно удалены.';

  @override
  String get event_dustCloud_title => 'Абразивное пылевое облако';

  @override
  String get event_dustCloud_narrative =>
      'Плотное облако межзвёздной пыли, тонкой как тальк, но твёрдой как алмаз, шлифует корпус. Эрозия медленная, но неумолимая — нужно пройти насквозь, пока не начался настоящий урон.';

  @override
  String get event_dustCloud_choice0_text =>
      'Максимальная тяга — прорваться быстро';

  @override
  String get event_dustCloud_choice0_outcome =>
      'Двигатели работают на пределе. Мы проходим облако за часы, а не за дни, но корпусу досталось.';

  @override
  String get event_dustCloud_choice1_text =>
      'Выставить защиту корпуса и ползти';

  @override
  String get event_dustCloud_choice1_outcome =>
      'Аварийная защита спасает корпус, но медленный транзит истощает энергию и забивает сканерные массивы.';

  @override
  String get event_dustCloud_choice2_text =>
      'Запустить зонды для картографирования безопасных коридоров';

  @override
  String get event_dustCloud_choice2_outcome =>
      'Два зонда прокладывают извилистый, но относительно чистый путь сквозь облако. Абразия корпуса минимальна.';

  @override
  String get event_religionFounded_title => 'Новая вера';

  @override
  String get event_religionFounded_narrative =>
      'Харизматичный колонист основал новую религию, центром которой стало само плавание — «Церковь Перехода». Он проповедует, что достижение нового мира — божественное предназначение человечества. Число последователей стремительно растёт.';

  @override
  String get event_religionFounded_choice0_text =>
      'Поддержать — экипажу нужно во что-то верить';

  @override
  String get event_religionFounded_choice0_outcome =>
      'Вера даёт структуру и смысл плаванию. Мораль взлетает, хотя некоторые недовольны фанатизмом.';

  @override
  String get event_religionFounded_choice1_text =>
      'Сохранять нейтралитет — ни поддерживать, ни подавлять';

  @override
  String get event_religionFounded_choice1_outcome =>
      'Движение растёт органически. Оно приносит утешение без официальной поддержки.';

  @override
  String get event_religionFounded_choice2_text =>
      'Препятствовать — нам нужны учёные, а не пророки';

  @override
  String get event_religionFounded_choice2_outcome =>
      'Подавление порождает обиду. Верующие уходят в подполье, доверие к руководству разрушается.';

  @override
  String get event_solarWindSurfing_title => 'Порыв солнечного ветра';

  @override
  String get event_solarWindSurfing_narrative =>
      'Ближайший пульсар испускает мощный устойчивый солнечный ветер. Наши инженеры предлагают развернуть аварийный парус и оседлать его, как волну, — набрав колоссальную скорость без расхода топлива.';

  @override
  String get event_solarWindSurfing_choice0_text =>
      'Развернуть парус — оседлать ветер';

  @override
  String get event_solarWindSurfing_choice0_outcome =>
      'Корабль ускоряется великолепно. Структурная нагрузка значительна, но прирост скорости того стоит.';

  @override
  String get event_solarWindSurfing_choice1_text =>
      'Использовать ветер для подзарядки систем';

  @override
  String get event_solarWindSurfing_choice1_outcome =>
      'Вместо скорости мы собираем энергию. Технические и сканерные массивы жадно впитывают заряженные частицы.';

  @override
  String get event_memoryPlague_title => 'Повреждение памяти';

  @override
  String get event_memoryPlague_narrative =>
      'Программный вирус, дремавший с момента запуска, активируется и начинает уничтожать культурную базу данных корабля — музыку, литературу, историю. Столетия человеческого наследия стираются байт за байтом.';

  @override
  String get event_memoryPlague_choice0_text =>
      'Направить все техресурсы на карантин вируса';

  @override
  String get event_memoryPlague_choice0_outcome =>
      'Техники работают лихорадочно. Они спасают 70% архива, но вирус повреждает третичные техсистемы на выходе.';

  @override
  String get event_memoryPlague_choice1_text =>
      'Изолировать культурную базу — пусть горит, спасём корабль';

  @override
  String get event_memoryPlague_choice1_outcome =>
      'Вирус лишён ресурсов и гибнет. Но культурный архив опустошён. Колонисты прибудут с осколками земной памяти.';

  @override
  String get event_memoryPlague_choice2_text =>
      'Коллективное восстановление — разбудить колонистов для записи по памяти';

  @override
  String get event_memoryPlague_choice2_outcome =>
      'Тысячи вносят воспоминания: песни, рассказы, рецепты, стихи. Трое пожилых колонистов, ослабленных пробуждением, не переживают процесс. Архив восстановлен — несовершенный, но глубоко человечный.';

  @override
  String get event_gravityLensPlanet_title => 'Зеркальный мир';

  @override
  String get event_gravityLensPlanet_narrative =>
      'Гравитационное линзирование открывает планету, которая выглядит точной копией Земли — голубые океаны, зелёные континенты, белые облака. Но расчёты линзы показывают, что она в сотнях световых лет от нашего курса — недосягаемо далеко. Однако её спектральные данные могут уточнить наши критерии поиска.';

  @override
  String get event_gravityLensPlanet_choice0_text =>
      'Изучить спектральную сигнатуру для уточнения поиска';

  @override
  String get event_gravityLensPlanet_choice0_outcome =>
      'Спектральные данные раскрывают биомаркеры и атмосферные сигнатуры, которые мы теперь можем искать. Надежда обретает фокус.';

  @override
  String get event_gravityLensPlanet_choice1_text =>
      'Записать координаты и продолжить курс';

  @override
  String get event_gravityLensPlanet_choice1_outcome =>
      'Быть может, другой корабль когда-нибудь последует нашим картам. Экипаж наблюдает, как голубая точка тает, со смешанными чувствами.';

  @override
  String get event_engineHarmonics_title => 'Гармоники двигателя';

  @override
  String get event_engineHarmonics_narrative =>
      'Главный двигатель развивает резонансную гармонику, вибрирующую через весь корабль на частоте чуть ниже человеческого слуха. Колонисты жалуются на головные боли, тревогу и нарушения сна. Инженеры могут починить, но ремонт требует 12-часовой остановки двигателя.';

  @override
  String get event_engineHarmonics_choice0_text =>
      'Остановить и починить как следует';

  @override
  String get event_engineHarmonics_choice0_outcome =>
      'Двенадцать часов дрейфа. Навигация теряет калибровку, но тишина после перезапуска двигателей — блаженство.';

  @override
  String get event_engineHarmonics_choice1_text =>
      'Погасить контрвибрацией — быстрый ремонт';

  @override
  String get event_engineHarmonics_choice1_outcome =>
      'Гул снижается до терпимого уровня. Не исчез, но экипаж приспосабливается. Техсистемы работают на пределе.';

  @override
  String get event_arkMemory_title => 'Последняя передача Земли';

  @override
  String get event_arkMemory_narrative =>
      'Дальняя антенна ловит финальную автоматическую передачу с Земли. Это запись: голос ребёнка, читающий имена всех, кто не смог улететь. Список звучит часами. Корабль погружается в тишину.';

  @override
  String get event_arkMemory_choice0_text =>
      'Транслировать по всему кораблю — они заслуживают быть услышанными';

  @override
  String get event_arkMemory_choice0_outcome =>
      'Каждая душа на борту слушает. Члены экипажа находят имена своих семей. Горе раздавливает, но выковывает нерушимые узы общей цели.';

  @override
  String get event_arkMemory_choice1_text =>
      'Сохранить в архиве — пощадить экипаж';

  @override
  String get event_arkMemory_choice1_outcome =>
      'Запись сохранена, но не транслирована. Те, кто узнаёт позже, чувствуют благодарность и обиду одновременно.';

  @override
  String get event_magneticStorm_title => 'Межзвёздная магнитная буря';

  @override
  String get event_magneticStorm_narrative =>
      'Переплетённый клубок силовых линий магнитного поля, выброшенный коллапсирующей звездой, поглощает корабль. Электроника искрит и потрескивает. Корпус гудит как колокол.';

  @override
  String get event_magneticStorm_choice0_text =>
      'Размагнитить корпус — защитить электронику';

  @override
  String get event_magneticStorm_choice0_outcome =>
      'Контролируемый разряд спасает компьютеры, но обшивка корпуса теряет магнитный экранирующий слой.';

  @override
  String get event_magneticStorm_choice1_text =>
      'Пусть корпус поглотит — ничего не защищать';

  @override
  String get event_magneticStorm_choice1_outcome =>
      'Буря проходит. Корпус намагничен и слегка укреплён, но половина сенсорной сети сгорела.';

  @override
  String get event_magneticStorm_choice2_text =>
      'Выбросить зонд как громоотвод';

  @override
  String get event_magneticStorm_choice2_outcome =>
      'Намагниченный зонд оттягивает на себя сильнейшие силовые линии от корабля. Электроника в основном уцелела.';

  @override
  String get event_oxygenGarden_title => 'Цветение сада';

  @override
  String get event_oxygenGarden_narrative =>
      'Аварийный кислородный сад корабля — резерв, которым не предполагалось пользоваться — неожиданно расцветает. Цветы, не раскрывавшиеся с Земли, наполняют коридоры красками и ароматом. Ботаники плачут.';

  @override
  String get event_oxygenGarden_choice0_text =>
      'Расширить сад — выделить больше пространства';

  @override
  String get event_oxygenGarden_choice0_outcome =>
      'Сад вырастает в живой мемориал Земли. Качество воздуха улучшается, мораль взлетает, ботаники выводят новые сорта для инопланетной почвы.';

  @override
  String get event_oxygenGarden_choice1_text =>
      'Радоваться, но сохранить текущее распределение ресурсов';

  @override
  String get event_oxygenGarden_choice1_outcome =>
      'Сад остаётся маленьким чудом. Экипаж посещает его как святыню. Он ничего не просит и отдаёт всё.';

  @override
  String get event_roguePlanet_title => 'Встреча с блуждающей планетой';

  @override
  String get event_roguePlanet_narrative =>
      'Безвёздная блуждающая планета пересекает наш путь — мир, выброшенный из своей системы миллиарды лет назад. Несмотря на отсутствие звезды, геологическая активность глубинного ядра поддерживает тёплый подповерхностный океан. Сканер улавливает мерцающие признаки жизни.';

  @override
  String get event_roguePlanet_choice0_text =>
      'Отправить зонд для изучения жизненных форм';

  @override
  String get event_roguePlanet_choice0_outcome =>
      'Зонд обнаруживает биолюминесцентные организмы, процветающие в тёмном океане. Их биохимия учит нас новым способам поддержания жизни в экстремальных условиях.';

  @override
  String get event_roguePlanet_choice1_text =>
      'Добыть редкие минералы с поверхности';

  @override
  String get event_roguePlanet_choice1_outcome =>
      'Кора блуждающей планеты богата металлами, сформированными под экстремальным давлением. Наши запасы ресурсов растут.';

  @override
  String get event_roguePlanet_choice2_text =>
      'Пролететь мимо — мы не можем позволить себе крюк';

  @override
  String get event_roguePlanet_choice2_outcome =>
      'Тёмный мир уменьшается за кормой. Экипаж наблюдает, как слабое мерцание подповерхностного океана тает на сенсорах.';

  @override
  String get event_artCompetition_title => 'Долгий холст';

  @override
  String get event_artCompetition_narrative =>
      'На фоне колеблющейся морали офицер по культуре организует корабельный конкурс искусств: рисуй, ваяй, пиши, сочиняй — всё, что отражает значение плавания для тебя. Участие оказывается неожиданно массовым.';

  @override
  String get event_artCompetition_choice0_text =>
      'Выделить ресурсы — дать творчеству расцвести';

  @override
  String get event_artCompetition_choice0_outcome =>
      'Припасы направлены на художественные материалы. Выставка преображает корабль. Люди вспоминают, ради чего борются за выживание.';

  @override
  String get event_artCompetition_choice1_text =>
      'Поддержать, но без дополнительных ресурсов';

  @override
  String get event_artCompetition_choice1_outcome =>
      'Колонисты творят из того, что находят. Искусство — сырое, отчаянное и прекрасное. Мораль стабилизируется.';

  @override
  String get event_subspaceEcho_title => 'Подпространственное эхо';

  @override
  String get event_subspaceEcho_narrative =>
      'Коммуникационный массив улавливает голоса — человеческие голоса — откуда-то из пространства впереди нас. Они говорят о колонии, о детях, об урожаях. Это передача из будущего? Из параллельной линии времени? Или просто жестокое эхо несбывшихся надежд?';

  @override
  String get event_subspaceEcho_choice0_text =>
      'Следовать пеленгу сигнала — он может привести нас домой';

  @override
  String get event_subspaceEcho_choice0_outcome =>
      'Корректировка курса незначительна. Реальны ли голоса или нет, экипаж плывёт с целью.';

  @override
  String get event_subspaceEcho_choice1_text => 'Записать всё для анализа';

  @override
  String get event_subspaceEcho_choice1_outcome =>
      'Лингвисты и физики изучают запись. Они извлекают навигационные ссылки, улучшающие наши карты.';

  @override
  String get event_subspaceEcho_choice2_text =>
      'Отклонить — космос играет с одинокими злые шутки';

  @override
  String get event_subspaceEcho_choice2_outcome =>
      'Прагматичный выбор. Некоторые разочарованы, но корабль держится проверенного курса.';

  @override
  String get event_boonPerfectCalm_title => 'Великое затишье';

  @override
  String get event_boonPerfectCalm_narrative =>
      'По причинам, необъяснимым для физиков, корабль входит в область пространства, сверхъестественно тихую — ни излучения, ни микрообломков, ни гравитационных помех. Каждая система работает на пиковой эффективности. Экипаж крепко спит впервые за месяцы.';

  @override
  String get event_boonPerfectCalm_choice0_text =>
      'Использовать затишье для комплексного ремонта';

  @override
  String get event_boonPerfectCalm_choice0_outcome =>
      'Ремонтные бригады работают в идеальных условиях. Каждая система получает внимание. Корабль выходит обновлённым.';

  @override
  String get event_boonPerfectCalm_choice1_text =>
      'Дать экипажу отдохнуть — они это заслужили';

  @override
  String get event_boonPerfectCalm_choice1_outcome =>
      'Общекорабельный отдых. Колонисты спят, делят трапезу, рассказывают истории. Человеческая цена плавания на краткий миг возмещена.';

  @override
  String get event_boonAncientWaystation_title => 'Древняя станция пути';

  @override
  String get event_boonAncientWaystation_narrative =>
      'В гравитационном колодце между двумя мёртвыми звёздами укрылась древняя станция, до сих пор функционирующая — автоматическая, терпеливая, ожидающая путников. Её отсеки открываются при нашем приближении. Ремонтные дроны активируются. Топливные резервуары тянутся к нам. Кто-то, давным-давно, построил это для таких, как мы.';

  @override
  String get event_boonAncientWaystation_choice0_text =>
      'Пристыковаться и принять всё, что предлагается';

  @override
  String get event_boonAncientWaystation_choice0_outcome =>
      'Станция ремонтирует, заправляет и перекалибрует корабль технологиями на столетия впереди наших. При отбытии станция отключается — её предназначение исполнено.';

  @override
  String get event_boonAncientWaystation_choice1_text =>
      'Принять ремонт, но оставить станцию работающей для других';

  @override
  String get event_boonAncientWaystation_choice1_outcome =>
      'Мы берём только необходимое и передаём координаты станции обратно к Земле. Экипаж чувствует благородство.';

  @override
  String get event_relicSentinel_title => 'Страж';

  @override
  String get event_relicSentinel_narrative =>
      'Гигантская конструкция вращается вокруг безжизненной луны — одинокий страж, оставленный своими создателями. Он легко достигает километра в высоту, по форме — копьё из чёрного стекла. При нашем приближении на его вершине открывается единственный красный глаз и отслеживает корабль. Он не стреляет. Он не вызывает. Он наблюдает.';

  @override
  String get event_relicSentinel_choice0_text =>
      'Передать профиль нашей миссии — показать, что мы мирные';

  @override
  String get event_relicSentinel_choice0_outcome =>
      'Глаз тускнеет до янтарного, затем зелёного. Приходит пакет данных: координаты трёх звёздных систем, отмеченных «БЕЗОПАСНО» в универсальной математической нотации. Дар от стража.';

  @override
  String get event_relicSentinel_choice1_text =>
      'Держать позицию и пассивно изучать';

  @override
  String get event_relicSentinel_choice1_outcome =>
      'Часы наблюдений дают знания в области материаловедения, которых не должно существовать. Группа по обшивке лихорадочно записывает.';

  @override
  String get event_relicSentinel_choice2_text =>
      'Немедленно отступить — мы не знаем его правил';

  @override
  String get event_relicSentinel_choice2_outcome =>
      'Глаз закрывается по мере нашего отступления. Каким бы ни был этот тест, мы решили его не сдавать. Экипаж спорит днями.';

  @override
  String get event_relicSeedProbe_title => 'Странствующее семя';

  @override
  String get event_relicSeedProbe_narrative =>
      'Маленький изящный зонд кувыркается в пустоте, транслируя на всех частотах одновременно. Его оболочка — керамика, покрытая символами, меняющимися при наблюдении. Внутри: герметичная камера с почвой, семенами и замороженными микроорганизмами с мира, которого больше нет.';

  @override
  String get event_relicSeedProbe_choice0_text =>
      'Интегрировать биологическую нагрузку в наши банки семян';

  @override
  String get event_relicSeedProbe_choice0_outcome =>
      'Инопланетные семена и микробы тщательно каталогизированы и сохранены. Они могут превратить безжизненный мир в живой. Биологи называют это чудом в бутылке.';

  @override
  String get event_relicSeedProbe_choice1_text =>
      'Изучить двигатель и навигацию зонда';

  @override
  String get event_relicSeedProbe_choice1_outcome =>
      'Двигатель зонда на века опережает наш — безреактивный маршевый размером с кулак. Инженеры реконструируют фрагменты конструкции.';

  @override
  String get event_relicSeedProbe_choice2_text =>
      'Сохранить зонд целиком как культурный артефакт';

  @override
  String get event_relicSeedProbe_choice2_outcome =>
      'Выставленное в атриуме корабля, инопланетное семя становится символом родства между видами. Кто-то другой, где-то там, тоже пытался спасти свой мир.';

  @override
  String get event_relicWarningBuoy_title => 'Предупредительный буй';

  @override
  String get event_relicWarningBuoy_narrative =>
      'Сеть маленьких буёв — сотни штук — расставленных в идеальной геометрической фигуре на нашем пути. Каждый излучает одинаковый сигнал — простой повторяющийся импульс, учащающийся по мере приближения. Это похоже на предупреждение. Или ограду.';

  @override
  String get event_relicWarningBuoy_choice0_text =>
      'Внять предупреждению — обойти сеть';

  @override
  String get event_relicWarningBuoy_choice0_outcome =>
      'Обход стоит времени и нагружает навигацию, но пока мы обходим границу, дальние сенсоры видят, что за ней: область космоса, усеянная обломками разрушенных миров. Буи спасли нас.';

  @override
  String get event_relicWarningBuoy_choice1_text =>
      'Пройти насквозь — нам не до крюков';

  @override
  String get event_relicWarningBuoy_choice1_outcome =>
      'Ничего не происходит при пересечении линии. Буи замолкают. Чем бы ни была угроза, от которой они охраняли — она исчезла, или нам повезло. Экипаж выдыхает.';

  @override
  String get event_relicWarningBuoy_choice2_text => 'Захватить буй для анализа';

  @override
  String get event_relicWarningBuoy_choice2_outcome =>
      'Начинка буя содержит сжатый архив данных — звёздную картографию этого региона миллионолетней давности. Часть данных всё ещё точна.';

  @override
  String get event_relicMirrorArray_title => 'Зеркальный массив';

  @override
  String get event_relicMirrorArray_narrative =>
      'Тысячи плоских отражающих поверхностей висят неподвижно в космосе, расположенные концентрическими кольцами на сотни километров. Они фокусируют свет далёкого солнца в единую точку — искусственную звезду, горящую в пустоте. Кто-то построил маяк между галактиками.';

  @override
  String get event_relicMirrorArray_choice0_text =>
      'Купаться в сфокусированном свете — подзарядить всё';

  @override
  String get event_relicMirrorArray_choice0_outcome =>
      'Концентрированный звёздный свет заливает наши солнечные коллекторы. Энергорезервы стремительно растут. Тёплый свет согревает каждую душу на борту после месяцев в холодной тьме.';

  @override
  String get event_relicMirrorArray_choice1_text =>
      'Изучить материал зеркал — он не должен существовать';

  @override
  String get event_relicMirrorArray_choice1_outcome =>
      'Зеркала сделаны из материала с абсолютной отражающей способностью — нулевое поглощение на любой длине волны. Инженеры извлекают осколок. Обшивка корпуса уже никогда не будет прежней.';

  @override
  String get event_relicMirrorArray_choice2_text =>
      'Обыскать фокальную точку — что-то освещается';

  @override
  String get event_relicMirrorArray_choice2_outcome =>
      'В точке схождения: маленькая капсула, идеально сохранённая в концентрированном свете. Внутри — голографическая звёздная карта настолько детальная, что нашим компьютерам требуются дни для индексации.';

  @override
  String get event_relicGraveyard_title => 'Кладбище зондов';

  @override
  String get event_relicGraveyard_narrative =>
      'Мы дрейфуем в облако погибших зондов — тысячи штук, от десятков разных цивилизаций. Некоторые древни до непостижимости, сплавлены космическим излучением в металлические окаменелости. Другие всё ещё мигают угасающей энергией. Когда-то здесь был перекрёсток. Каждый вид, проходивший этим путём, оставил что-то после себя.';

  @override
  String get event_relicGraveyard_choice0_text =>
      'Систематическая добыча — забрать лучшие технологии';

  @override
  String get event_relicGraveyard_choice0_outcome =>
      'Инженерные бригады работают посменно, снимая инопланетные технологии с сотни различных конструкций. Слияние идей порождает прорывы во всех системах.';

  @override
  String get event_relicGraveyard_choice1_text =>
      'Сосредоточиться на навигационных данных в их банках памяти';

  @override
  String get event_relicGraveyard_choice1_outcome =>
      'Перекрёстная привязка звёздных карт от дюжины видов создаёт самую полную карту этого рукава галактики из когда-либо составленных.';

  @override
  String get event_relicGraveyard_choice2_text =>
      'Добавить собственный зонд — оставить маркер';

  @override
  String get event_relicGraveyard_choice2_outcome =>
      'Мы создаём маленький маяк с историей человечества и добавляем в коллекцию. Экипаж чувствует связь с чем-то бескрайним и древним.';

  @override
  String get event_relicDreamcatcher_title => 'Ловец снов';

  @override
  String get event_relicDreamcatcher_narrative =>
      'Паутина нитей, тонких как паутинка, но тянущихся на тысячи километров, натянута между двумя блуждающими планетоидами. Это не сеть — это антенна, настроенная на частоты, соответствующие паттернам мозговых волн человека. В её радиусе каждый спящий колонист начинает видеть один и тот же сон: процветающий город под янтарным небом.';

  @override
  String get event_relicDreamcatcher_choice0_text =>
      'Записать координаты из сна — город может быть реальным';

  @override
  String get event_relicDreamcatcher_choice0_outcome =>
      'Нейробиологи декодируют пространственную информацию из общего сна. Она соответствует реальной звёздной системе — и город из видения не был метафорой. Кто-то там, и они нас ждут.';

  @override
  String get event_relicDreamcatcher_choice1_text =>
      'Собрать образцы нитей — материал выдающийся';

  @override
  String get event_relicDreamcatcher_choice1_outcome =>
      'Нити — сверхпроводник при комнатной температуре. Встроенные в наши системы, они снижают потери энергии почти до нуля.';

  @override
  String get event_relicDreamcatcher_choice2_text =>
      'Разрезать паутину и освободить сновидцев';

  @override
  String get event_relicDreamcatcher_choice2_outcome =>
      'Сны прекращаются. Колонисты просыпаются дезориентированными, но невредимыми. Некоторые скорбят по утраченному видению. Другие благодарны за сон без чужого шёпота.';

  @override
  String get event_relicRosetta_title => 'Объект «Розетта»';

  @override
  String get event_relicRosetta_narrative =>
      'Маленький плотный куб из неизвестного металла пролетает мимо корабля. На каждой грани — одно и то же послание в разных системах нотации: математической, химической, генетической, акустической, электромагнитной и одной, которую мы не можем опознать. Это Розеттский камень космоса.';

  @override
  String get event_relicRosetta_choice0_text =>
      'Дешифровать шестую грань — неизвестную нотацию';

  @override
  String get event_relicRosetta_choice0_outcome =>
      'Месяцы анализа приносят прорыв: шестая система кодирует пространственные координаты с помощью гравитационных волн. Наше понимание физики совершает поколенческий скачок.';

  @override
  String get event_relicRosetta_choice1_text =>
      'Использовать химическую грань для синтеза новых соединений';

  @override
  String get event_relicRosetta_choice1_outcome =>
      'Химическая нотация описывает материалы, о которых мы и не мечтали. Инженеры изготавливают заплаты для корпуса — легче и прочнее всего, что было на Земле.';

  @override
  String get event_relicRosetta_choice2_text =>
      'Транслировать генетическую грань в банки семян';

  @override
  String get event_relicRosetta_choice2_outcome =>
      'Генетическая нотация содержит оптимизированные ДНК-последовательности для радиационной устойчивости и усвоения питательных веществ. Наши культуры и колонисты станут крепче на чужой почве.';

  @override
  String get event_relicGhostFleet_title => 'Флот-призрак';

  @override
  String get event_relicGhostFleet_narrative =>
      'Сканеры рисуют леденящую картину: флот инопланетных военных кораблей — сотни штук — висит неподвижно в строю. Они древни — показатели энергии нулевые, корпуса изрыты эонами микроударов. Какая бы битва ни ждала их впереди — она так и не наступила. Они ждут здесь, мёртвые и терпеливые, дольше, чем существует человеческая цивилизация.';

  @override
  String get event_relicGhostFleet_choice0_text =>
      'Абордировать флагман — у него должны быть лучшие технологии';

  @override
  String get event_relicGhostFleet_choice0_outcome =>
      'На командной палубе флагмана — нетронутый тактический компьютер. Его предиктивные алгоритмы на века опережают наши. Навигация и обнаружение угроз драматически улучшаются.';

  @override
  String get event_relicGhostFleet_choice1_text =>
      'Снять бронеплиты с кораблей эскорта';

  @override
  String get event_relicGhostFleet_choice1_outcome =>
      'Броня инопланетных военных кораблей рассчитана на оружие, которое мы даже представить не можем. Прикреплённая к нашему корпусу, она делает корабль почти неуязвимым.';

  @override
  String get event_relicGhostFleet_choice2_text =>
      'Забрать их криосистемы — они перевозили солдат';

  @override
  String get event_relicGhostFleet_choice2_outcome =>
      'Инопланетная криотехнология работает на принципах, о которых мы и не подозревали. После модернизации наши капсулы работают холоднее, плавнее и надёжнее.';

  @override
  String get event_scannerCalibrationDrift_title => 'Дрейф калибровки сканеров';

  @override
  String get event_scannerCalibrationDrift_narrative =>
      'Плановая диагностика выявляет, что несколько подсистем сканеров сбились с калибровки после последнего сверхсветового прыжка. Атмосферный и температурный сканеры считывают призрачные сигналы. Инженеры могут их починить, но это займёт время и ресурсы.';

  @override
  String get event_scannerCalibrationDrift_choice0_text =>
      'Полная рекалибровка — направить техресурсы';

  @override
  String get event_scannerCalibrationDrift_choice0_outcome =>
      'Кропотливая юстировка восстанавливает оба сканера до почти идеальной точности, но техотсек истощён.';

  @override
  String get event_scannerCalibrationDrift_choice1_text =>
      'Быстрый ремонт — перекалибровать только атмосферный';

  @override
  String get event_scannerCalibrationDrift_choice1_outcome =>
      'Атмосферный сканер восстановлен. Температурный пока остаётся ненадёжным.';

  @override
  String get event_scannerCalibrationDrift_choice2_text =>
      'Запустить зонд для эталонной калибровки';

  @override
  String get event_scannerCalibrationDrift_choice2_outcome =>
      'Зонд обеспечивает чистый опорный сигнал. Оба сканера автоматически захватывают его и перекалибруются.';

  @override
  String get event_ionStormScanners_title => 'Помехи от ионного шторма';

  @override
  String get event_ionStormScanners_narrative =>
      'Ионный шторм прокатывается по сектору, заливая сканерные массивы шумом. Минеральная и водная системы обнаружения принимают основной удар электромагнитных помех.';

  @override
  String get event_ionStormScanners_choice0_text =>
      'Отключить сканеры до конца шторма';

  @override
  String get event_ionStormScanners_choice0_outcome =>
      'Сканеры уцелели, но теряют калибровочные данные. Показания минералов и воды будут менее точными.';

  @override
  String get event_ionStormScanners_choice1_text =>
      'Продолжать сканировать — пробиться сквозь шум';

  @override
  String get event_ionStormScanners_choice1_outcome =>
      'Сырые данные хлынули потоком, но фильтровые цепи двух подсистем выгорают. Гравиметрическое сканирование тоже затронуто.';

  @override
  String get event_ionStormScanners_choice2_text =>
      'Использовать шторм для стресс-теста и улучшения фильтров';

  @override
  String get event_ionStormScanners_choice2_outcome =>
      'Научная группа использует шум для обучения адаптивных фильтров. Водный сканер улучшается, но минеральный получает повреждения.';

  @override
  String get event_bioScannerContamination_title => 'Заражение биосканера';

  @override
  String get event_bioScannerContamination_narrative =>
      'Сканер жизненных признаков загрязнён остаточной органикой от последнего планетарного сканирования. Ложные срабатывания повсюду. Гравиметрический сканер тоже показывает симпатический шум.';

  @override
  String get event_bioScannerContamination_choice0_text =>
      'Стерилизовать сенсорный массив — полная деконтаминация';

  @override
  String get event_bioScannerContamination_choice0_outcome =>
      'Тщательная очистка восстанавливает биосканер, но химические реагенты разъедают корпус гравиметрического сенсора.';

  @override
  String get event_bioScannerContamination_choice1_text =>
      'Программный фильтр — компенсировать алгоритмически';

  @override
  String get event_bioScannerContamination_choice1_outcome =>
      'Фильтр работает сносно, но базовое заражение будет медленно деградировать обе системы.';

  @override
  String get event_scannerPowerSurge_title => 'Скачок энергии в сканерах';

  @override
  String get event_scannerPowerSurge_narrative =>
      'Силовой кабель рядом со сканерным отсеком перегружается, отправляя импульс через несколько подсистем. Атмосферный и биосканер получают прямой удар. Щиты поглощают часть избыточной энергии.';

  @override
  String get event_scannerPowerSurge_choice0_text =>
      'Перенаправить энергию — спасти сканеры';

  @override
  String get event_scannerPowerSurge_choice0_outcome =>
      'Быстрая реакция инженеров ограничивает ущерб, но щиты принимают перенаправленную энергию.';

  @override
  String get event_scannerPowerSurge_choice1_text => 'Дать импульсу пройти';

  @override
  String get event_scannerPowerSurge_choice1_outcome =>
      'Сканеры принимают полный удар. Атмосферные и биопоказания значительно деградированы.';

  @override
  String get event_scannerPowerSurge_choice2_text =>
      'Пожертвовать энергоячейкой зонда для поглощения импульса';

  @override
  String get event_scannerPowerSurge_choice2_outcome =>
      'Конденсаторы зонда впитывают избыточную энергию как губка. Повреждения сканеров ничтожны.';

  @override
  String get event_relicWorldEngine_title => 'Миростроитель';

  @override
  String get event_relicWorldEngine_narrative =>
      'Глубокое сканирование обнаруживает невозможное: машину размером с небольшую луну, дремлющую во тьме между звёзд. Её поверхность покрыта механизмами континентального масштаба — атмосферными процессорами, генераторами магнитных полей, тектоническими стабилизаторами. Кто-то построил машину, которая строит миры.';

  @override
  String get event_relicWorldEngine_choice0_text =>
      'Скачать чертежи терраформирования';

  @override
  String get event_relicWorldEngine_choice0_outcome =>
      'Чертежи обширны и частично повреждены, но то, что удалось восстановить, способно сделать любой враждебный мир обитаемым. Наши колонисты преобразят свой новый дом.';

  @override
  String get event_relicWorldEngine_choice1_text =>
      'Собрать строительные материалы с его корпуса';

  @override
  String get event_relicWorldEngine_choice1_outcome =>
      'Корпус Миростроителя сделан из метаматериалов, самовосстанавливающихся при повреждении. Встроенные в наш корабль, они медленно залечивают существующие пробоины.';

  @override
  String get event_relicWorldEngine_choice2_text =>
      'Попытаться реактивировать — направить на нашу целевую систему';

  @override
  String get event_relicWorldEngine_choice2_outcome =>
      'Машина шевелится. Древние системы проходят стартовые циклы. Луч энергии устремляется к далёкой звезде. Сработает ли — узнаем по прибытии, но показания обнадёживают.';

  @override
  String get event_uneventfulMaintenance_title => 'Плановое техобслуживание';

  @override
  String get event_uneventfulMaintenance_narrative =>
      'Ничто не требует внимания. Корабль мерно гудит в пустоте, и сменный график предписывает плановое техобслуживание. Старший техник спрашивает, на что направить усилия смены.';

  @override
  String get event_uneventfulMaintenance_choice0_text =>
      'Герметизация микротрещин корпуса';

  @override
  String get event_uneventfulMaintenance_choice0_outcome =>
      'Тихая смена, потраченная на заделку волосяных трещин. Ничего драматичного, но корпус стал чуть крепче.';

  @override
  String get event_uneventfulMaintenance_choice1_text =>
      'Перекалибровать передние сканеры';

  @override
  String get event_uneventfulMaintenance_choice1_outcome =>
      'Техник по сканерам тратит несколько часов на тонкую настройку. Показания становятся чуть чётче.';

  @override
  String get event_uneventfulQuietWatch_title => 'Тихая вахта';

  @override
  String get event_uneventfulQuietWatch_narrative =>
      'Звёзды плывут мимо в тишине. Мостик спокоен, приборы стабильны. Это один из тех редких отрезков, когда вселенная ничего от вас не требует.';

  @override
  String get event_uneventfulQuietWatch_choice0_text =>
      'Дать экипажу отдохнуть — они заслужили тихую смену';

  @override
  String get event_uneventfulQuietWatch_choice0_outcome =>
      'Несколько часов настоящего покоя. Люди спят крепче, напряжение спадает, офицер по культуре отмечает лёгкий подъём морали.';

  @override
  String get event_uneventfulQuietWatch_choice1_text =>
      'Запустить низкоприоритетную диагностику — пока тихо';

  @override
  String get event_uneventfulQuietWatch_choice1_outcome =>
      'Мелкие неполадки обнаружены и записаны. Ничего срочного, но техжурнал стал чуть чище.';

  @override
  String get event_uneventfulCryopodCheck_title =>
      'Проверка криокапсул — всё в норме';

  @override
  String get event_uneventfulCryopodCheck_narrative =>
      'Ежеквартальный аудит криокапсул проходит без единой тревоги. Каждая капсула горит зелёным. У медицинской группы наступает редкий момент покоя.';

  @override
  String get event_uneventfulCryopodCheck_choice0_text =>
      'Ненадолго разбудить несколько колонистов для поддержания морали';

  @override
  String get event_uneventfulCryopodCheck_choice0_outcome =>
      'Трёх колонистов приводят в сознание на час. Они рассказывают истории, обнимают старых друзей и возвращаются в крио с улыбкой.';

  @override
  String get event_uneventfulCryopodCheck_choice1_text =>
      'Пусть спят — не рисковать лишними циклами пробуждения';

  @override
  String get event_uneventfulCryopodCheck_choice1_outcome =>
      'Капсулы продолжают безупречную работу. Медики вместо этого наслаждаются тихой чашкой чая.';

  @override
  String get event_uneventfulCartography_title =>
      'Обновление звёздной картографии';

  @override
  String get event_uneventfulCartography_narrative =>
      'Плановое обновление картографии навигационной группы не выявляет ничего необычного — лишь ожидаемое смещение звёздных полей по мере нашего движения. Спокойный день для навигаторов.';

  @override
  String get event_uneventfulCartography_choice0_text =>
      'Перекалибровать навигацию по новым позициям звёзд';

  @override
  String get event_uneventfulCartography_choice0_outcome =>
      'Незначительная коррекция курса, едва заметная. Навигационный компьютер удовлетворённо гудит.';

  @override
  String get event_uneventfulCartography_choice1_text =>
      'Обновить звёздные карты для архива колонии';

  @override
  String get event_uneventfulCartography_choice1_outcome =>
      'Будущие колонисты получат чуть более точные карты этого региона. Маленький подарок потомству.';

  @override
  String get event_uneventfulAnniversary_title => 'Годовщина корабля';

  @override
  String get event_uneventfulAnniversary_narrative =>
      'Год с запуска — или два? Время размывается в глубоком космосе. Кто-то на камбузе испёк торт из восстановленных запасов. Капитан должен решить, как отметить событие.';

  @override
  String get event_uneventfulAnniversary_choice0_text =>
      'Скромное празднование — музыка, торт, тост за Землю';

  @override
  String get event_uneventfulAnniversary_choice0_outcome =>
      'Час тепла в холодной пустоте. Люди смеются, некоторые плачут, и все чувствуют себя чуть более людьми.';

  @override
  String get event_uneventfulAnniversary_choice1_text =>
      'Работа как обычно — отпразднуем по прибытии';

  @override
  String get event_uneventfulAnniversary_choice1_outcome =>
      'Экипаж уважает стоический подход. Сосредоточенность обостряется, дежурная группа проводит дополнительную проверку систем.';

  @override
  String get event_databaseLiterature_title => 'Литературные архивы Земли';

  @override
  String get event_databaseLiterature_narrative =>
      'Корабельный ИИ открывает давно запечатанный раздел культурной базы: полный литературный архив Земли. Романы, поэзия, пьесы — миллионы произведений на всех языках и эпохах. Экипаж собирается на чтение.';

  @override
  String get event_databaseLiterature_choice0_text =>
      'Транслировать избранные чтения по всему кораблю';

  @override
  String get event_databaseLiterature_choice0_outcome =>
      'Шекспир звучит в коридорах. Стихи Руми играют в гидропонном отсеке. Экипаж вспоминает, что несёт на борту.';

  @override
  String get event_databaseLiterature_choice1_text =>
      'Каталогизировать архив для образовательных программ';

  @override
  String get event_databaseLiterature_choice1_outcome =>
      'Каталогизация укрепляет базу знаний корабля и даёт офицеру по культуре новые учебные материалы.';

  @override
  String get event_databaseSchematics_title => 'Обзор инженерных чертежей';

  @override
  String get event_databaseSchematics_narrative =>
      'Инженер натыкается на забытый раздел в базе данных корабля: детальные чертежи последнего десятилетия земной инженерии — проекты термоядерных реакторов, чертежи метаматериалов и экспериментальные концепции двигателей.';

  @override
  String get event_databaseSchematics_choice0_text =>
      'Приоритет — двигательные концепции для техгруппы';

  @override
  String get event_databaseSchematics_choice0_outcome =>
      'Чертежи раскрывают улучшения эффективности, которые первоначальные строители не успели внедрить. Техотсек бурлит.';

  @override
  String get event_databaseSchematics_choice1_text =>
      'Поделиться знаниями со всеми — каждый отдел выиграет';

  @override
  String get event_databaseSchematics_choice1_outcome =>
      'Инженеры корпуса, техники сканеров и медики — все находят полезные сведения. Прилив поднимает все корабли, пусть и немного.';

  @override
  String get event_databaseCorruption_title =>
      'Проверка сохранности культурных данных';

  @override
  String get event_databaseCorruption_narrative =>
      'Плановая проверка целостности культурной базы данных выявляет деградацию битов — разделы музыки, устных историй и религиозных текстов повреждены без возможности восстановления. Не всё пережило путешествие.';

  @override
  String get event_databaseCorruption_choice0_text =>
      'Направить техресурсы на спасение того, что осталось';

  @override
  String get event_databaseCorruption_choice0_outcome =>
      'Инженеры прекращают другую работу ради алгоритмов восстановления данных. Спасено почти всё, но усилия истощают техотсек.';

  @override
  String get event_databaseCorruption_choice1_text =>
      'Попросить колонистов воссоздать утраченное по памяти';

  @override
  String get event_databaseCorruption_choice1_outcome =>
      'Прекрасная, несовершенная попытка. Восстановленное принадлежит плаванию, а не Земле. Рождена новая традиция.';

  @override
  String get event_databaseBreakthrough_title =>
      'Прорыв в архивных исследованиях';

  @override
  String get event_databaseBreakthrough_narrative =>
      'Физик, перекрёстно изучающий старые земные научные работы в базе данных, обнаруживает, что два несвязанных исследования, объединённые, описывают новый метод дальнего спектрального анализа. Последствия огромны.';

  @override
  String get event_databaseBreakthrough_choice0_text =>
      'Внедрить новый метод в сканерный массив';

  @override
  String get event_databaseBreakthrough_choice0_outcome =>
      'Группа сканеров работает лихорадочно. За дни спектральное разрешение удваивается. Далёкие планеты раскрывают свои тайны.';

  @override
  String get event_databaseBreakthrough_choice1_text =>
      'Опубликовать открытие по всему кораблю — вдохновить исследования';

  @override
  String get event_databaseBreakthrough_choice1_outcome =>
      'Прорыв порождает волну междисциплинарных исследований. Технологии улучшаются широко, и экипаж ощущает интеллектуальное пробуждение.';

  @override
  String get event_alienFleetSighting_title => 'Инопланетный флот на горизонте';

  @override
  String get event_alienFleetSighting_narrative =>
      'Дальние сканеры рисуют пугающую картину: флот инопланетных судов, числом в сотни, движущихся в идеальном строю на фоне звёзд. Они затмевают наш корабль. Их курс приведёт их в зону наших сенсоров через считаные часы. Первый контакт — на их условиях или наших.';

  @override
  String get event_alienFleetSighting_choice0_text =>
      'Наблюдать молча — погасить излучение и смотреть';

  @override
  String get event_alienFleetSighting_choice0_outcome =>
      'Корабль переходит на минимальное излучение. Флот проходит, как стая светящихся китов, не подозревая о крошечном человеческом судне в их кильватере. Данные сканеров исключительны.';

  @override
  String get event_alienFleetSighting_choice1_text =>
      'Попытаться установить контакт — передать приветствие';

  @override
  String get event_alienFleetSighting_choice1_outcome =>
      'Один корабль выходит из строя и приближается. Приходит пакет данных — звёздные карты, предупреждения и что-то похожее на музыку. Затем он возвращается во флот, и они уходят.';

  @override
  String get event_alienFleetSighting_choice2_text =>
      'Бежать — немедленно сменить курс';

  @override
  String get event_alienFleetSighting_choice2_outcome =>
      'Корабль жжёт топливо в противоположном направлении. Смена курса дорога и тяжела, но флот нас не замечает. Безопасность ценой потерь.';

  @override
  String get event_alienTradeOffer_title => 'Инопланетное предложение торговли';

  @override
  String get event_alienTradeOffer_narrative =>
      'Инопланетное судно, меньше нашего, но излучающее колоссальную мощь, выравнивается с нашей скоростью и транслирует простое повторяющееся сообщение. Наши лингвисты расшифровывают его за часы: это предложение обмена. Предложены три категории.';

  @override
  String get event_alienTradeOffer_choice0_text =>
      'Обменять техчертежи на инопланетные звёздные карты';

  @override
  String get event_alienTradeOffer_choice0_outcome =>
      'Мы передаём наши двигательные схемы; они отвечают навигационными данными по огромному пространству неисследованного космоса. Наши карты резко улучшаются, хотя мы поделились технологией с неизвестным видом.';

  @override
  String get event_alienTradeOffer_choice1_text =>
      'Обменять культурные данные на ремонт корабля';

  @override
  String get event_alienTradeOffer_choice1_outcome =>
      'Мы передаём нашу музыку, искусство и историю. Взамен инопланетные ремонтные дроны роятся по корпусу, заделывая пробоины материалами, которые мы не можем идентифицировать. Корпус сияет. Наша душа разделена.';

  @override
  String get event_alienTradeOffer_choice2_text =>
      'Отказаться от торговли — риск слишком велик';

  @override
  String get event_alienTradeOffer_choice2_outcome =>
      'Инопланетное судно ждёт некоторое время, затем уходит без инцидента. Экипаж облегчён, но думает о том, что было потеряно.';

  @override
  String get event_alienWarning_title => 'Инопланетная передача-предупреждение';

  @override
  String get event_alienWarning_narrative =>
      'Каждый динамик на корабле оживает с инопланетным голосом, переводимым нашим ИИ в реальном времени: «ОПАСНОСТЬ ВПЕРЕДИ. ПОВЕРНИТЕ НАЗАД. ТЬМА ПОГЛОЩАЕТ.» Передача повторяется, затем стихает. Дальние сенсоры показывают аномальную пустоту на нашем текущем курсе.';

  @override
  String get event_alienWarning_choice0_text =>
      'Внять предупреждению — обойти пустоту';

  @override
  String get event_alienWarning_choice0_outcome =>
      'Обход значительно нагружает навигацию, но по мере огибания края пустоты сенсоры подтверждают: ничто, вошедшее в этот регион, никогда не выходило. Мы в долгу перед неизвестными голосами.';

  @override
  String get event_alienWarning_choice1_text =>
      'Проигнорировать предупреждение — продолжить курс';

  @override
  String get event_alienWarning_choice1_outcome =>
      'Мы продолжаем. Пустота оказывается областью интенсивных микрообломков. Корпус и сканеры страдают, прежде чем мы выходим с другой стороны.';

  @override
  String get event_alienWarning_choice2_text =>
      'Исследовать край пустоты зондом';

  @override
  String get event_alienWarning_choice2_outcome =>
      'Зонд входит в пустоту и передаёт исключительные данные, прежде чем замолкает. Группа сканеров извлекает ценные показания, но зонд потерян.';

  @override
  String get event_nativeSignalDetected_title => 'Передачи с целевого мира';

  @override
  String get event_nativeSignalDetected_narrative =>
      'Коммуникационный массив улавливает структурированные электромагнитные сигналы с нашей целевой планеты. Они безошибочны: регулярные, модулированные, искусственные. Там уже кто-то есть. Вся предпосылка колонии меняется мгновенно.';

  @override
  String get event_nativeSignalDetected_choice0_text =>
      'Передать мирное приветствие — объявить о прибытии';

  @override
  String get event_nativeSignalDetected_choice0_outcome =>
      'Смелый выбор. Паттерн сигнала меняется после нашей трансляции — нас услышали. Приветствие это или предупреждение — неясно, но дверь открыта.';

  @override
  String get event_nativeSignalDetected_choice1_text =>
      'Только слушать — узнать, прежде чем раскрываться';

  @override
  String get event_nativeSignalDetected_choice1_outcome =>
      'Месяцы пассивного прослушивания строят картину местной цивилизации. Они осторожны, территориальны, но не враждебны. Мы прибываем информированными.';

  @override
  String get event_nativeSignalDetected_choice2_text =>
      'Заглушить сигнал — лишить их знания о нашем приближении';

  @override
  String get event_nativeSignalDetected_choice2_outcome =>
      'Глушение работает, но это акт агрессии против народа, которого мы ещё не встретили. Экипаж разделён в вопросах морали.';

  @override
  String get event_nativeProbeEncounter_title => 'Перехват инопланетного зонда';

  @override
  String get event_nativeProbeEncounter_narrative =>
      'Маленький изящный зонд — нечеловеческого происхождения — выравнивается с нашей скоростью и начинает сканировать корабль. Его дизайн совпадает с сигналами с целевой планеты. Аборигены прислали комитет по встрече. Или разведывательный дрон.';

  @override
  String get event_nativeProbeEncounter_choice0_text =>
      'Позволить сканирование — показать, что нам нечего скрывать';

  @override
  String get event_nativeProbeEncounter_choice0_outcome =>
      'Зонд завершает обзор и передаёт пакет данных обратно на планету. Через минуты приходит второй пакет для нас: атмосферные данные, безопасные зоны посадки и, возможно, приглашение.';

  @override
  String get event_nativeProbeEncounter_choice1_text =>
      'Захватить зонд для изучения';

  @override
  String get event_nativeProbeEncounter_choice1_outcome =>
      'Зонд притянут в грузовой отсек. Его технология завораживает, но захват может быть воспринят как враждебность его создателями.';

  @override
  String get event_nativeProbeEncounter_choice2_text =>
      'Уничтожить — мы не знаем его намерений';

  @override
  String get event_nativeProbeEncounter_choice2_outcome =>
      'Единственный импульс обращает зонд в осколки. Экипаж чувствует себя в безопасности, но возможный мост сожжён.';

  @override
  String get event_nativeCulturalExchange_title => 'Первый культурный обмен';

  @override
  String get event_nativeCulturalExchange_narrative =>
      'Установлен узкополосный канал данных с аборигенами планеты. Они отправляют нам изображения, звуки и математические последовательности. Наши лингвисты и культурные офицеры работают круглосуточно, готовя ответ. Это самый важный разговор в истории человечества.';

  @override
  String get event_nativeCulturalExchange_choice0_text =>
      'Поделиться искусством Земли — начать с красоты';

  @override
  String get event_nativeCulturalExchange_choice0_outcome =>
      'Мы передаём Баха, точечные рисунки аборигенов Австралии и звук дождя по листьям. В ответ — каскад инопланетных гармоник, от которого экипаж плачет. Понимание углубляется.';

  @override
  String get event_nativeCulturalExchange_choice1_text =>
      'Поделиться наукой — начать с разума';

  @override
  String get event_nativeCulturalExchange_choice1_outcome =>
      'Мы передаём периодическую таблицу, звёздные карты и физику. Они отвечают поправками и дополнениями. Технологии совершают скачок, но обмен ощущается деловым.';

  @override
  String get event_nativeCulturalExchange_choice2_text =>
      'Отправить зонд с физическими образцами — ДНК, семена, воду';

  @override
  String get event_nativeCulturalExchange_choice2_outcome =>
      'Зонд несёт сущность Земли в инопланетные руки. Аборигены отвечают аналогичным даром — биологическими образцами своего мира. Биологи в экстазе.';

  @override
  String get event_landingThrusterMalfunction_title =>
      'Неисправность посадочных двигателей';

  @override
  String get event_landingThrusterMalfunction_narrative =>
      'Во время плановой проверки систем посадочные двигатели дают осечку — резкий хлопок разносится по нижним палубам, корабль дёргается. Диагностика выявляет трещину в топливной форсунке основного посадочного массива. Без ремонта посадка будет жёсткой.';

  @override
  String get event_landingThrusterMalfunction_choice0_text =>
      'Направить техгруппу на изготовление сменной форсунки';

  @override
  String get event_landingThrusterMalfunction_choice0_outcome =>
      'Инженеры работают в двойные смены и вытачивают новую форсунку из запасного корпусного сплава. Посадочная система восстановлена, но техотсек истощён.';

  @override
  String get event_landingThrusterMalfunction_choice1_text =>
      'Запустить зонд для тестирования калибровки тяги в вакууме';

  @override
  String get event_landingThrusterMalfunction_choice1_outcome =>
      'Зонд обеспечивает данные тяги в реальном времени, позволяя инженерам перекалибровать обход повреждённой форсунки. Не полный ремонт, но посадочная система стабилизируется.';

  @override
  String get event_landingSimDrill_title => 'Симуляция посадки';

  @override
  String get event_landingSimDrill_narrative =>
      'С приближением планеты капитан приказывает провести полную симуляцию посадки. Экипаж пристёгивается, системы тестируются под нагрузкой, виртуальное снижение начинается. Это самая реалистичная репетиция, которая у них будет.';

  @override
  String get event_landingSimDrill_choice0_text =>
      'Упор на техническую точность — по инструкции';

  @override
  String get event_landingSimDrill_choice0_outcome =>
      'Симуляция выявляет две незначительные ошибки калибровки, немедленно исправленные. Посадочная система стала точнее.';

  @override
  String get event_landingSimDrill_choice1_text =>
      'Сделать общекорабельным событием — транслировать симуляцию';

  @override
  String get event_landingSimDrill_choice1_outcome =>
      'Колонисты наблюдают с каждого экрана на борту. Общий опыт симулированного снижения — тряска, овации — сплачивает экипаж как ничто другое.';

  @override
  String get event_dysonSphere_title => 'Сфера Дайсона';

  @override
  String get event_dysonSphere_narrative =>
      'Сенсоры обнаруживают невозможную структуру — частичную сферу Дайсона, окружающую далёкую звезду и поглощающую всю её энергию. Кто бы ни построил это, они превзошли всё, что когда-либо замышляло человечество. Стыковочный порт открывается при нашем приближении.';

  @override
  String get event_dysonSphere_choice0_text =>
      'Пристыковаться и исследовать структуру';

  @override
  String get event_dysonSphere_choice0_outcome =>
      'Внутри автоматические системы дарят нам технологии, опережающие наши на столетия. Пять инженеров погибают от защитных механизмов станции, прежде чем та распознаёт наши намерения. Строительные системы перестроены на инопланетных сплавах.';

  @override
  String get event_dysonSphere_choice1_text =>
      'Собрать энергию с внешней стороны';

  @override
  String get event_dysonSphere_choice1_outcome =>
      'Мы купаемся в лучистом избытке сферы. Каждая система на борту заряжается до максимума. Экипаж смотрит в оцепенелой тишине.';

  @override
  String get event_dysonSphere_choice2_text =>
      'Изучить с безопасного расстояния и двигаться дальше';

  @override
  String get event_dysonSphere_choice2_outcome =>
      'Дальнее сканирование раскрывает конструктивные принципы, революционизирующие наше понимание инженерии.';

  @override
  String get event_nanotechPlague_title => 'Нанотехнологическая чума';

  @override
  String get event_nanotechPlague_narrative =>
      'Облако диких наномашин — остатков оружейной программы какой-то мёртвой цивилизации — проникает на корабль через микротрещины корпуса. Они разбирают некритические системы на молекулярном уровне. Рой распространяется быстро.';

  @override
  String get event_nanotechPlague_choice0_text =>
      'ЭМИ-удар — сжечь всё в поражённых секциях';

  @override
  String get event_nanotechPlague_choice0_outcome =>
      'Электромагнитный импульс уничтожает нанитов, но повреждает и нашу электронику. Колонисты в зоне удара получают ожоги.';

  @override
  String get event_nanotechPlague_choice1_text =>
      'Разгерметизировать поражённые секции';

  @override
  String get event_nanotechPlague_choice1_outcome =>
      'Без атмосферы наниты замедляются и гибнут. Но секции потеряны вместе с хранившимися припасами и культурными архивами.';

  @override
  String get event_nanotechPlague_choice2_text =>
      'Перепрограммировать их — превратить оружие в инструмент';

  @override
  String get event_nanotechPlague_choice2_outcome =>
      'Гениальный инженер взламывает код нанитов, но пять членов экипажа в наиболее поражённых секциях уже не спасти. Перепрограммированный рой начинает восстанавливать корабль вместо его разрушения.';

  @override
  String get event_nanotechPlague_choice3_text =>
      'Пожертвовать ИИ-ядром зонда для создания контр-роя';

  @override
  String get event_nanotechPlague_choice3_outcome =>
      'Процессоры зонда перепрофилированы для управления оборонительным роем нанитов. Чума нейтрализована с минимальными потерями.';

  @override
  String get event_prematureAwakening_title => 'Преждевременное пробуждение';

  @override
  String get event_prematureAwakening_narrative =>
      'Каскадный отказ в криоотсеке будит 200 колонистов на десятилетия раньше срока. Они растеряны, напуганы и потребляют ресурсы, предназначенные для фазы посадки. Среди них — дети, никогда не знавшие ничего, кроме корабля.';

  @override
  String get event_prematureAwakening_choice0_text =>
      'Включить в экипаж — больше рук, больше надежды';

  @override
  String get event_prematureAwakening_choice0_outcome =>
      'Пробуждённые колонисты становятся продуктивными членами экипажа. Двадцать не переживают резкого пробуждения, но остальные мобилизуются. Ресурсы на пределе, но дух воспаряет.';

  @override
  String get event_prematureAwakening_choice1_text =>
      'Попытаться повторно заморозить — рискованно, но необходимо';

  @override
  String get event_prematureAwakening_choice1_outcome =>
      'Повторная заморозка несовершенна. Большинство выживает, но некоторые потеряны. Выжившие несут психологические шрамы.';

  @override
  String get event_prematureAwakening_choice2_text =>
      'Выделить им отдельную секцию корабля';

  @override
  String get event_prematureAwakening_choice2_outcome =>
      'Десять колонистов погибают от осложнений экстренного пробуждения, но остальные формируют микроколонию внутри корабля. Они развивают собственную культуру и управление — репетиция планетарного поселения.';

  @override
  String get event_stowawaysAdvanced_title => 'Скрытые пассажиры';

  @override
  String get event_stowawaysAdvanced_narrative =>
      'Глубоко в грузовом трюме, за фальшивыми переборками, безопасность обнаруживает целое скрытое сообщество — 80 человек, нелегально поднявшихся на борт перед стартом. Они живут в стенах корабля всё плавание, ведя собственные сады и отводя энергию.';

  @override
  String get event_stowawaysAdvanced_choice0_text =>
      'Принять — 80 дополнительных колонистов — это дар';

  @override
  String get event_stowawaysAdvanced_choice0_outcome =>
      'Скрытое сообщество привносит навыки импровизированной инженерии и находчивости, поражающие экипаж. Их сады пересажены в главный биокупол.';

  @override
  String get event_stowawaysAdvanced_choice1_text =>
      'Изолировать и перераспределить украденные ресурсы';

  @override
  String get event_stowawaysAdvanced_choice1_outcome =>
      'Возвращённые припасы усиливают несколько систем, но изоляция семей — включая детей — преследует экипаж.';

  @override
  String get event_stowawaysAdvanced_choice2_text =>
      'Договориться — они вступают как равные, если делятся технологиями';

  @override
  String get event_stowawaysAdvanced_choice2_outcome =>
      'Их импровизированные энергоячейки и гидропонные хитрости повышают эффективность корабля. Начинается напряжённая, но продуктивная интеграция.';

  @override
  String get event_alienReservation_title => 'Инопланетный заповедник';

  @override
  String get event_alienReservation_narrative =>
      'Мы натыкаемся на инопланетный природный заповедник — область космоса, намеренно засеянную обитаемыми планетами и охраняемую автоматическими стражами. Стражи сканируют нас и проецируют сообщение: «Вы можете заселить ОДИН мир. Выбирайте мудро. Вмешаетесь в остальные — будете удалены.»';

  @override
  String get event_alienReservation_choice0_text =>
      'Принять с благодарностью — одного мира достаточно';

  @override
  String get event_alienReservation_choice0_outcome =>
      'Стражи ведут нас к подготовленному миру. Сканирование показывает, что он исключительно пригоден для человеческой жизни.';

  @override
  String get event_alienReservation_choice1_text =>
      'Договориться о лучших условиях — человечеству нужен простор';

  @override
  String get event_alienReservation_choice1_outcome =>
      'Стражи рассматривают нашу просьбу. Они обновляют наши сканеры данными о десятках систем за пределами заповедника.';

  @override
  String get event_alienReservation_choice2_text =>
      'Отказаться и уйти — мы не будем в клетке';

  @override
  String get event_alienReservation_choice2_outcome =>
      'Экипаж спорит днями. Свобода вместо безопасности. Стражи позволяют уйти с подарком: картой близлежащих опасностей.';

  @override
  String get event_cosmicHorror_title => 'Нечто между звёзд';

  @override
  String get event_cosmicHorror_narrative =>
      'Нечто огромное и тёмное заслоняет звёзды впереди — не туманность, не чёрная дыра. У него нет массы, нет энергетической сигнатуры, нет электромагнитного присутствия. Но оно ЕСТЬ, и оно осознаёт нас. Члены экипажа вблизи передней обзорной палубы сообщают о всепоглощающем ужасе. Двое уже под седативными.';

  @override
  String get event_cosmicHorror_choice0_text =>
      'Полный назад — уходим НЕМЕДЛЕННО';

  @override
  String get event_cosmicHorror_choice0_outcome =>
      'Корабль напрягается, борясь с собственной инерцией. Мы уходим, но ужас задерживается. Некоторые колонисты так и не оправляются психологически.';

  @override
  String get event_cosmicHorror_choice1_text =>
      'Запечатать обзорную палубу и пробиться';

  @override
  String get event_cosmicHorror_choice1_outcome =>
      'Три дня слепого полёта сквозь тьму. Когда звёзды возвращаются, экипаж плачет от облегчения. На корпусе — узоры, которые никто не может объяснить.';

  @override
  String get event_cosmicHorror_choice2_text => 'Попытаться установить связь';

  @override
  String get event_cosmicHorror_choice2_outcome =>
      'Существо отвечает — не словами, а знанием, вдавленным прямо в разумы экипажа. Звёздные карты, физика, истины о вселенной. Половина экипажа просветлена. Другая — сломлена.';

  @override
  String get event_cosmicHorror_choice3_text =>
      'Предложить зонд как подношение';

  @override
  String get event_cosmicHorror_choice3_outcome =>
      'Зонд уплывает во тьму и исчезает. Существо слегка сжимается, словно удовлетворённое. Наш путь очищается.';

  @override
  String get event_meteorGlancingHit_title => 'Касательный удар метеора';

  @override
  String get event_meteorGlancingHit_narrative =>
      'Метеор размером с валун задевает левый борт корпуса под пологим углом. Удар срывает три метра внешней обшивки и отправляет ударные волны через весь каркас. Сирены аварийного контроля ревут по всем палубам.';

  @override
  String get event_meteorGlancingHit_choice0_text =>
      'Немедленно направить все ремонтные боты к пробоине';

  @override
  String get event_meteorGlancingHit_choice0_outcome =>
      'Боты заделывают худшие повреждения, но лихорадочная трата техрезервов оставляет вторичные системы без обслуживания.';

  @override
  String get event_meteorGlancingHit_choice1_text =>
      'Снизить тягу и дать экипажу латать вручную';

  @override
  String get event_meteorGlancingHit_choice1_outcome =>
      'Медленнее, но работа добротная. Навигация страдает от сниженной тяги, пока мы дрейфуем.';

  @override
  String get event_meteorGlancingHit_choice2_text =>
      'Пожертвовать обшивкой зонда как заплатой';

  @override
  String get event_meteorGlancingHit_choice2_outcome =>
      'Зонд разобран на запчасти. Заплата держится, целостность корпуса сохранена — ценой одного разведчика.';

  @override
  String get event_meteorDirectImpact_title => 'Прямое попадание метеора';

  @override
  String get event_meteorDirectImpact_narrative =>
      'Полутонный железный метеорит пробивает передний грузовой отсек навылет на относительной скорости свыше 40 км/с. Два члена экипажа в соседнем коридоре не отвечают. Отсек открыт вакууму.';

  @override
  String get event_meteorDirectImpact_choice0_text =>
      'Герметизировать отсек, искать выживших потом';

  @override
  String get event_meteorDirectImpact_choice0_outcome =>
      'Отсек загерметизирован за девяносто секунд. Оба члена экипажа уже эвакуировались — едва-едва. На корпусе — неизгладимый шрам.';

  @override
  String get event_meteorDirectImpact_choice1_text =>
      'Начать полноценную спасательную операцию перед герметизацией';

  @override
  String get event_meteorDirectImpact_choice1_outcome =>
      'Один выживший извлечён. Затянувшаяся разгерметизация усугубляет структурные повреждения и истощает техрезервы.';

  @override
  String get event_meteorDebrisField_title =>
      'Обломочное поле — остаточный ливень';

  @override
  String get event_meteorDebrisField_narrative =>
      'Дальние сенсоры не обнаружили рассеянное поле метеорных обломков, пока мы уже не оказались внутри. Сотни камней размером с кулак бьют по корпусу в случайном порядке. Каждый удар — лотерея.';

  @override
  String get event_meteorDebrisField_choice0_text =>
      'Поднять щиты и прорваться на полной скорости';

  @override
  String get event_meteorDebrisField_choice0_outcome =>
      'Щиты поглощают большинство ударов, но объём попаданий перегружает их. И корпус, и системы щитов деградируют.';

  @override
  String get event_meteorDebrisField_choice1_text =>
      'Заглушить двигатели и дрейфовать — уменьшить профиль';

  @override
  String get event_meteorDebrisField_choice1_outcome =>
      'Шесть напряжённых часов тишины. Навигация сбивается от бездвигательного дрейфа, но корпус выходит с куда меньшим числом попаданий.';

  @override
  String get event_meteorDebrisField_choice2_text =>
      'Запустить зонд как передний щит';

  @override
  String get event_meteorDebrisField_choice2_outcome =>
      'Зонд принимает основной удар шквала. Корабль проскальзывает в его тени с незначительными царапинами.';

  @override
  String get event_meteorShowerDense_title =>
      'Внезапный плотный метеорный ливень';

  @override
  String get event_meteorShowerDense_narrative =>
      'Блуждающая комета распалась где-то впереди, и мы влетели в самое сердце её шлейфа обломков. Сканерные массивы забрасываются осколками, а корпус датчиков посадочной системы уже получил прямое попадание.';

  @override
  String get event_meteorShowerDense_choice0_text =>
      'Защитить посадочную систему — развернуть корабль';

  @override
  String get event_meteorShowerDense_choice0_outcome =>
      'Разворот прикрывает посадочную систему, но подставляет атмосферный сканерный массив под основной удар.';

  @override
  String get event_meteorShowerDense_choice1_text =>
      'Защитить сканерные массивы — они незаменимы';

  @override
  String get event_meteorShowerDense_choice1_outcome =>
      'Сканерные блоки выживают в основном нетронутыми. Посадочная система получает умеренные осколочные повреждения, с которыми придётся жить.';

  @override
  String get event_solarEmpBurst_title => 'ЭМИ-вспышка звёздного происхождения';

  @override
  String get event_solarEmpBurst_narrative =>
      'Компактный звёздный остаток, мимо которого мы прошли на расстоянии светового дня, выбросил сфокусированный электромагнитный импульс. Каждая незащищённая микросхема на корабле под угрозой. У нас секунды, чтобы решить, что защищать.';

  @override
  String get event_solarEmpBurst_choice0_text =>
      'Направить всю импульсную защиту на навигацию и жизнеобеспечение';

  @override
  String get event_solarEmpBurst_choice0_outcome =>
      'Навигация и жизнеобеспечение уцелели. Сканерный комплекс и техотсек принимают импульс без защиты — оба тяжело повреждены.';

  @override
  String get event_solarEmpBurst_choice1_text =>
      'Защитить сканерные массивы и техотсек';

  @override
  String get event_solarEmpBurst_choice1_outcome =>
      'Научные и инженерные системы сохранены. Навигация сбоит часами, пока её цепи медленно восстанавливаются.';

  @override
  String get event_solarEmpBurst_choice2_text =>
      'Обесточить всё и перезапустить после импульса';

  @override
  String get event_solarEmpBurst_choice2_outcome =>
      'Холодный перезапуск мучителен — двенадцать часов ручных перезагрузок. Но ни одна система не сгорела безвозвратно.';

  @override
  String get event_solarRadiationWave_title =>
      'Радиационная волна — экспозиция класса 4';

  @override
  String get event_solarRadiationWave_narrative =>
      'Солнечный радиационный всплеск неожиданной интенсивности прокатывается через средние палубы корабля. Отсеки криокапсул — на пути облучения. Колонисты в анабиозе не имеют естественной защиты от жёсткого излучения на таком уровне дозы.';

  @override
  String get event_solarRadiationWave_choice0_text =>
      'Залить криоотсеки хладагентом как радиационным щитом';

  @override
  String get event_solarRadiationWave_choice0_outcome =>
      'Хладагент поглощает большую часть излучения. Криокапсулы уцелели, но система охлаждения частично деградирована. Пятнадцать в наиболее пострадавших капсулах не выживают.';

  @override
  String get event_solarRadiationWave_choice1_text =>
      'Сбросить атмосферу внешних палуб — создать вакуумный буфер';

  @override
  String get event_solarRadiationWave_choice1_outcome =>
      'Вакуумный слой значительно снижает проникающее излучение. Двадцать колонистов в капсулах ближе всего к разгерметизированным секциям получают летальную дозу. Напряжение корпуса от перепада давления неизбежно.';

  @override
  String get event_solarRadiationWave_choice2_text =>
      'Перенаправить энергию на магнитные дефлекторы';

  @override
  String get event_solarRadiationWave_choice2_outcome =>
      'Дефлекторы снижают облучение на две трети. Восемь колонистов получают смертельную дозу через бреши в покрытии дефлекторов. Энергопотребление ударяет по техотсеку и оставляет навигацию на минимальной мощности.';

  @override
  String get event_coronalMassEjection_title =>
      'Корональный выброс массы — полная сила';

  @override
  String get event_coronalMassEjection_narrative =>
      'Корональный выброс массы беспрецедентного масштаба догоняет нас сзади. Плазменное облако поглотит корабль в течение часа. Наши щиты не рассчитаны на событие такого класса. Ни один вариант не чист.';

  @override
  String get event_coronalMassEjection_choice0_text =>
      'Обогнать — разогнать двигатели до ста двадцати процентов';

  @override
  String get event_coronalMassEjection_choice0_outcome =>
      'Мы набираем достаточную дистанцию для снижения облучения. Двигатели перегреваются, навигационный компьютер фиксирует предупреждения о структурной перегрузке по всему борту.';

  @override
  String get event_coronalMassEjection_choice1_text =>
      'Укрыться в магнитной тени ближайшего планетоида';

  @override
  String get event_coronalMassEjection_choice1_outcome =>
      'Магнитное поле планетоида отклоняет большую часть выброса. Навигация вблизи неизученного тела царапает корпус и нагружает датчики посадочной системы.';

  @override
  String get event_cosmicRayScannerInterference_title =>
      'Всплеск космических лучей — помехи сканерам';

  @override
  String get event_cosmicRayScannerInterference_narrative =>
      'Всплеск сверхвысокоэнергетических космических лучей забил шумом всю электронику сканеров. Минералогический и гравиметрический массивы выдают бессмыслицу. Рекалибровка займёт время, которого у нас может не быть.';

  @override
  String get event_cosmicRayScannerInterference_choice0_text =>
      'Полный цикл рекалибровки — временно вывести корабль из строя';

  @override
  String get event_cosmicRayScannerInterference_choice0_outcome =>
      'Все сканеры возвращаются в чистое состояние после четырёх часов тщательной рекалибровки. Навигация страдает от сниженной ситуационной осведомлённости во время затемнения.';

  @override
  String get event_cosmicRayScannerInterference_choice1_text =>
      'Починить только критические массивы — остальные оставить шумящими';

  @override
  String get event_cosmicRayScannerInterference_choice1_outcome =>
      'Гравиметрический и биосканеры восстановлены. Минеральный и температурный массивы остаются деградированными на неопределённый срок.';

  @override
  String get event_cosmicRayScannerInterference_choice2_text =>
      'Пожертвовать телеметрией зонда для запчастей';

  @override
  String get event_cosmicRayScannerInterference_choice2_outcome =>
      'Каннибализация сенсорного пакета зонда даёт компоненты для восстановления сканерного комплекса без длительной рекалибровки.';

  @override
  String get event_cosmicRayDnaDamage_title =>
      'Всплеск космических лучей — облучение колонистов';

  @override
  String get event_cosmicRayDnaDamage_narrative =>
      'Вторичный космический ливень проник через экранирование криокапсул в отсеке 6. Колонисты в анабиозе накапливают повреждения ДНК от ионизирующего излучения. Без вмешательства механизмы клеточного восстановления откажут в поражённых капсулах.';

  @override
  String get event_cosmicRayDnaDamage_choice0_text =>
      'Экстренное пробуждение — привести поражённых колонистов в сознание';

  @override
  String get event_cosmicRayDnaDamage_choice0_outcome =>
      'Двести колонистов разбужены досрочно. Сорок с самыми тяжёлыми повреждениями ДНК не отвечают на лечение. Медицинская группа делает всё, что может, для остальных.';

  @override
  String get event_cosmicRayDnaDamage_choice1_text =>
      'Переставить бронеплиты корпуса для экранирования отсека 6 — ценой прочности';

  @override
  String get event_cosmicRayDnaDamage_choice1_outcome =>
      'Колония спасена, но снятие брони с одной секции корпуса оставляет корабль структурно уязвимым в этой зоне.';

  @override
  String get event_coolantLeak_title => 'Разрыв линии хладагента';

  @override
  String get event_coolantLeak_narrative =>
      'Основная линия хладагента разорвалась за стенкой реактора. Перегретая криогенная жидкость хлещет по узловому корпусу критических кабелей техотсека. Температура реактора растёт.';

  @override
  String get event_coolantLeak_choice0_text =>
      'Заглушить реактор и дать остыть — полное затемнение';

  @override
  String get event_coolantLeak_choice0_outcome =>
      'Контролируемое отключение предотвращает катастрофу. Двенадцать часов жизнеобеспечения на аккумуляторах — мучительно, и системы перезапускаются неидеально.';

  @override
  String get event_coolantLeak_choice1_text =>
      'Отправить аварийную команду — рискуя облучением экипажа';

  @override
  String get event_coolantLeak_choice1_outcome =>
      'Команда герметизирует разрыв за сорок минут. Один член экипажа погибает от контакта с перегретым хладагентом. Ремонт надёжный.';

  @override
  String get event_coolantLeak_choice2_text =>
      'Перенаправить хладагент из криоотсека как экстренный запас';

  @override
  String get event_coolantLeak_choice2_outcome =>
      'Реактор стабилизирован. Криоотсек работает при температуре выше безопасных пределов шесть часов — незначительные, но реальные клеточные повреждения накапливаются.';

  @override
  String get event_powerGridFailure_title => 'Отказ основной энергосети';

  @override
  String get event_powerGridFailure_narrative =>
      'Каскадный сбой вывел из строя основную энергосеть. Резервные системы держат жизнеобеспечение и обогрев криокапсул, но навигация, сканеры и строительный отсек обесточены. Каждая минута без связи стоит нам точности курса.';

  @override
  String get event_powerGridFailure_choice0_text =>
      'Сначала восстановить навигацию и сканеры — строители подождут';

  @override
  String get event_powerGridFailure_choice0_outcome =>
      'Навигация и сканеры возвращаются через два часа. Строительный отсек пропускает критический цикл обслуживания.';

  @override
  String get event_powerGridFailure_choice1_text =>
      'Сначала восстановить строителей — они ускорят ремонт';

  @override
  String get event_powerGridFailure_choice1_outcome =>
      'Строители эффективно перенаправляют энергию. Полное восстановление сети происходит быстрее, но навигация серьёзно дрейфует за время затянувшегося затемнения.';

  @override
  String get event_lifeSupportGlitch_title => 'Каскадный сбой жизнеобеспечения';

  @override
  String get event_lifeSupportGlitch_narrative =>
      'ИИ управления жизнеобеспечением вошёл в цикл ошибок, непредсказуемо меняя интервалы очистки углекислого газа. Уровень CO₂ по обитаемым палубам скачет. У экипажа головные боли; некоторые уже потеряли трудоспособность.';

  @override
  String get event_lifeSupportGlitch_choice0_text =>
      'Жёсткий сброс ИИ жизнеобеспечения';

  @override
  String get event_lifeSupportGlitch_choice0_outcome =>
      'Сброс устраняет цикл, но ручное управление работает десять часов. Три члена экипажа погибают от накопления CO₂ до нормализации.';

  @override
  String get event_lifeSupportGlitch_choice1_text =>
      'Исправить программный цикл — медленнее, но безопаснее';

  @override
  String get event_lifeSupportGlitch_choice1_outcome =>
      'Программисты изолируют и исправляют сбой за шесть напряжённых часов. Уровень CO₂ медленно нормализуется. Жёсткий сброс не потребовался.';

  @override
  String get event_lifeSupportGlitch_choice2_text =>
      'Эвакуировать поражённые палубы — минимальное жизнеобеспечение';

  @override
  String get event_lifeSupportGlitch_choice2_outcome =>
      'Два колониста погибают в суматохе эвакуации. Системы нормализуются после холодного перезапуска ИИ.';

  @override
  String get event_waterRecyclerBreakdown_title => 'Поломка водного рециклера';

  @override
  String get event_waterRecyclerBreakdown_narrative =>
      'Основной водоочистной блок заклинило. Резервный уже работает на полную мощность. Без вмешательства экипаж перейдёт на аварийный паёк через 48 часов, а подача хладагента в криокапсулы будет нарушена через 72.';

  @override
  String get event_waterRecyclerBreakdown_choice0_text =>
      'Бросить всех техников на восстановление рециклера';

  @override
  String get event_waterRecyclerBreakdown_choice0_outcome =>
      'Блок пересобран за тридцать часов. Четверо членов экипажа, уже ослабленных, не переживают обезвоживания.';

  @override
  String get event_waterRecyclerBreakdown_choice1_text =>
      'Перенаправить хладагент криокапсул как экстренное питьё';

  @override
  String get event_waterRecyclerBreakdown_choice1_outcome =>
      'Экипаж обеспечен водой, но восемь колонистов в прогревшихся капсулах получают необратимые клеточные повреждения. Запас хладагента криокапсул опасно сокращается.';

  @override
  String get event_navComputerReboot_title =>
      'Аварийная перезагрузка навигационного компьютера';

  @override
  String get event_navComputerReboot_narrative =>
      'Навигационный компьютер зависает посреди коррекции курса, оставляя корабль в неуправляемом медленном вращении. Каждая секунда некорректированного вращения усугубляет отклонение от запланированной траектории. Полная перезагрузка — единственное решение.';

  @override
  String get event_navComputerReboot_choice0_text =>
      'Немедленно перезагрузить — принять полное затемнение';

  @override
  String get event_navComputerReboot_choice0_outcome =>
      'Четыре часа слепого полёта, пока система перезагружается. Вращение остановлено, но ошибка курса значительна.';

  @override
  String get event_navComputerReboot_choice1_text =>
      'Ручное управление маневровыми — остановить вращение сначала';

  @override
  String get event_navComputerReboot_choice1_outcome =>
      'Умелое пилотирование останавливает вращение до перезагрузки. Навигация возвращается с меньшей ошибкой курса, но ручной манёвр нагружает корпус.';

  @override
  String get event_navComputerReboot_choice2_text =>
      'Подать телеметрию зонда в резервный навблок';

  @override
  String get event_navComputerReboot_choice2_outcome =>
      'Инерциальные данные зонда дают резервному блоку достаточно привязки для удержания курса. Основная навигация перезагружается чисто.';

  @override
  String get event_crewAirlocked_title => 'Член экипажа у шлюза';

  @override
  String get event_crewAirlocked_narrative =>
      'Колонистка — разбуженная ранее для медицинского наблюдения — забаррикадировалась в наружном шлюзе и циклирует внешнюю дверь. Она не отвечает на связь. Психологическое давление глубокого космоса сломало что-то внутри неё.';

  @override
  String get event_crewAirlocked_choice0_text =>
      'Дистанционно перехватить шлюз — принудительно заблокировать';

  @override
  String get event_crewAirlocked_choice0_outcome =>
      'Дверь заблокирована до завершения цикла. Она седатирована и возвращена в медотсек. Экипаж потрясён, но сплочён.';

  @override
  String get event_crewAirlocked_choice1_text =>
      'Отправить консультанта — вернуть её разговором';

  @override
  String get event_crewAirlocked_choice1_outcome =>
      'После трёх отчаянных часов консультант выводит её живой. Инцидент запускает более широкий кризис психического здоровья на обитаемых палубах.';

  @override
  String get event_crewAirlocked_choice2_text =>
      'Загерметизировать коридор и позволить инциденту разрешиться';

  @override
  String get event_crewAirlocked_choice2_outcome =>
      'Шлюз совершает цикл. Потеря зафиксирована. Оставшиеся члены экипажа несут эту тяжесть месяцами.';

  @override
  String get event_crewCryopodSabotage_title => 'Диверсия в криоотсеке';

  @override
  String get event_crewCryopodSabotage_narrative =>
      'Камеры наблюдения фиксируют члена экипажа — разбуженного три месяца назад для плановой ротации — методично отключающего нагревательные элементы криокапсул в отсеке 4. При задержании он кричит, что колонисты — паразиты, пожирающие ресурсы, принадлежащие живому экипажу.';

  @override
  String get event_crewCryopodSabotage_choice0_text =>
      'Немедленно арестовать и изолировать';

  @override
  String get event_crewCryopodSabotage_choice0_outcome =>
      'Он задержан. Сорок капсул были скомпрометированы до тревоги. Аварийные ремонтные группы спасают большинство, но не всех.';

  @override
  String get event_crewCryopodSabotage_choice1_text =>
      'Вести переговоры — выслушать его претензии';

  @override
  String get event_crewCryopodSabotage_choice1_outcome =>
      'Переговоры раскрывают более глубокий кризис морали. Он отступает, но к этому моменту шестьдесят капсул были повреждены.';

  @override
  String get event_crewSupplyHoarder_title => 'Обнаружение тайного запаса';

  @override
  String get event_crewSupplyHoarder_narrative =>
      'Инвентаризация выявляет, что группа членов экипажа систематически отводила медикаменты, пищевые пайки и запасные техкомпоненты в скрытый тайник. Их логика: они не верят в успех миссии и готовятся к обратному пути.';

  @override
  String get event_crewSupplyHoarder_choice0_text =>
      'Конфисковать всё и публично выговорить группе';

  @override
  String get event_crewSupplyHoarder_choice0_outcome =>
      'Тайник изъят почти полностью. Доверие внутри экипажа серьёзно подорвано. Продуктивность падает на недели.';

  @override
  String get event_crewSupplyHoarder_choice1_text =>
      'Тихо перевести их — не устраивать спектакль';

  @override
  String get event_crewSupplyHoarder_choice1_outcome =>
      'Ситуация разряжена без паники. Часть припасов невосполнима, и глубинное отчаяние так и не проработано.';

  @override
  String get event_crewSupplyHoarder_choice2_text =>
      'Вынести на суд экипажа — демократический трибунал';

  @override
  String get event_crewSupplyHoarder_choice2_outcome =>
      'Процесс трибунала восстанавливает чувство общественной справедливости. Моральный удар от скандала компенсируется коллективным принятием решения.';

  @override
  String get event_crewMutinyAttempt_title =>
      'Мятеж — машинное отделение захвачено';

  @override
  String get event_crewMutinyAttempt_narrative =>
      'Фракция из девятнадцати членов экипажа заблокировала машинное отделение и требует голосования о развороте корабля. Они отключили аварийные панели перехвата. Остальной экипаж наблюдает на мониторах, ожидая действий командования.';

  @override
  String get event_crewMutinyAttempt_choice0_text =>
      'Вести переговоры — дать настоящее голосование о миссии';

  @override
  String get event_crewMutinyAttempt_choice0_outcome =>
      'Голосование проведено. Миссия продолжается с минимальным перевесом. Фракция отступает, но культурная рана глубока.';

  @override
  String get event_crewMutinyAttempt_choice1_text =>
      'Обесточить машинное и отбить силой';

  @override
  String get event_crewMutinyAttempt_choice1_outcome =>
      'Безопасность отбивает помещение за четыре часа. Трое ранены. Зачинщики изолированы. Навигация всё это время была на ручном управлении и серьёзно отклонилась.';

  @override
  String get event_crewMutinyAttempt_choice2_text =>
      'Заполнить машинное сонным газом через вентиляцию';

  @override
  String get event_crewMutinyAttempt_choice2_outcome =>
      'Газ рассеивается. Группа просыпается на гауптвахте без травм. Экипаж встревожен тем, как быстро командование превратило жизнеобеспечение в оружие.';

  @override
  String get event_hullFatigueStress_title =>
      'Усталость корпуса — обнаружены трещины напряжения';

  @override
  String get event_hullFatigueStress_narrative =>
      'Сканирование структурной целостности выявляет сеть микротрещин, распространяющихся по хребту корабля — кумулятивный ущерб от лет термического цикла и микроударов. Трещины пока не критичны, но расходятся.';

  @override
  String get event_hullFatigueStress_choice0_text =>
      'Аварийные сварочные бригады — работа посменно до полной заделки';

  @override
  String get event_hullFatigueStress_choice0_outcome =>
      'Недели изнурительного ремонта. Трещины локализованы, но техотсек истощён, а мораль проседает от непрерывной нагрузки.';

  @override
  String get event_hullFatigueStress_choice1_text =>
      'Снизить тягу для уменьшения структурного стресса — медленнее';

  @override
  String get event_hullFatigueStress_choice1_outcome =>
      'Пониженная тяга останавливает распространение трещин, но ничего не делает для заживления существующих повреждений. Точность навигации страдает от изменённого профиля тяги.';

  @override
  String get event_hullFatigueStress_choice2_text =>
      'Направить строительных ботов на укладку композитных усиливающих полос';

  @override
  String get event_hullFatigueStress_choice2_outcome =>
      'Строители делают отличную работу. Хребет усилен сверх заводских спецификаций. Строительный отсек истощён, но эффективен.';

  @override
  String get event_hullPressureAnomaly_title => 'Аномалия внутреннего давления';

  @override
  String get event_hullPressureAnomaly_narrative =>
      'Три отсека в средней части регистрируют аномальные перепады давления, соответствующие микромасштабной структурной деформации. Если стенки прогибаются, катастрофический разрыв может произойти без предупреждения.';

  @override
  String get event_hullPressureAnomaly_choice0_text =>
      'Эвакуировать и загерметизировать отсеки немедленно';

  @override
  String get event_hullPressureAnomaly_choice0_outcome =>
      'Отсеки загерметизированы. Детальная инспекция подтверждает деформацию стенок. Потеря пространства нарушает операции, культура страдает от стеснённых условий.';

  @override
  String get event_hullPressureAnomaly_choice1_text =>
      'Разгерметизировать отсеки — устранить перепад давления';

  @override
  String get event_hullPressureAnomaly_choice1_outcome =>
      'Разгерметизация останавливает деформацию. Структурный ущерб ограничен, но три секции корабля навсегда непригодны для обитания.';

  @override
  String get event_commsArrayFailure_title => 'Отказ коммуникационного массива';

  @override
  String get event_commsArrayFailure_narrative =>
      'Основной дальний коммуникационный массив замолчал. Последнее сообщение с Земли было получено одиннадцать месяцев назад, и теперь даже несущий сигнал исчез. Внутренняя диагностика предполагает, что механизм наведения тарелки заклинило на холоде.';

  @override
  String get event_commsArrayFailure_choice0_text =>
      'Отправить группу ВКД для ручной юстировки тарелки';

  @override
  String get event_commsArrayFailure_choice0_outcome =>
      'ВКД занимает девять часов в открытом космосе. Тарелка восстановлена. Один член экипажа переживает разгерметизацию скафандра при возвращении — опасный инцидент, пугающий всех.';

  @override
  String get event_commsArrayFailure_choice1_text =>
      'Переключиться на научный сканерный массив как резервный передатчик';

  @override
  String get event_commsArrayFailure_choice1_outcome =>
      'Научный массив не оптимизирован для связи. Сигнал слаб и ненадёжен, и перепрофилирование снижает возможности сканирования.';

  @override
  String get event_commsArrayFailure_choice2_text =>
      'Принять тишину — сосредоточить ресурсы на миссии';

  @override
  String get event_commsArrayFailure_choice2_outcome =>
      'Экипаж переживает потерю связи с Землёй по-разному. Для одних это освобождение; для других — опустошение.';

  @override
  String get event_fuelLineRupture_title => 'Разрыв топливопровода';

  @override
  String get event_fuelLineRupture_narrative =>
      'Кристаллическая трещина в топливном кабеле 7-Б стравливает маршевую плазму в технический ствол. Утечка мала, но нарастает. Без контроля она нарушит и эффективность навигационного привода, и структурную целостность кормовой секции.';

  @override
  String get event_fuelLineRupture_choice0_text =>
      'Изолировать кабель и работать на сниженной мощности';

  @override
  String get event_fuelLineRupture_choice0_outcome =>
      'Кабель отключён чисто. Мы навсегда теряем пятнадцать процентов мощности привода, что ухудшает точность навигации на остаток плавания.';

  @override
  String get event_fuelLineRupture_choice1_text =>
      'Горячий ремонт — залатать кабель под давлением';

  @override
  String get event_fuelLineRupture_choice1_outcome =>
      'Ремонтная группа справляется — едва. Кабель держится, хоть и неидеально. Кормовая обшивка демонстрирует тепловую деформацию.';

  @override
  String get event_fuelLineRupture_choice2_text =>
      'Слить кабель через баки маневровых двигателей зонда';

  @override
  String get event_fuelLineRupture_choice2_outcome =>
      'Зонд опорожнён и используется как временный топливный резервуар. Кабель безопасно осушён и отремонтирован без давления.';

  @override
  String get event_cryopodCascadeWarning_title =>
      'Предупреждение о каскаде температуры криокапсул';

  @override
  String get event_cryopodCascadeWarning_narrative =>
      'Температуры криокапсул в отсеке 2 растут по паттерну, типичному для теплового каскадного отказа. Если каскад достигнет отсека 3, он запустит автоматическое экстренное пробуждение более трёхсот колонистов. Корабль не может одновременно содержать столько активных пассажиров.';

  @override
  String get event_cryopodCascadeWarning_choice0_text =>
      'Сбросить запасы хладагента для остановки каскада';

  @override
  String get event_cryopodCascadeWarning_choice0_outcome =>
      'Хладагент останавливает каскад на границе отсека 2. Восемьдесят колонистов в отсеке 2 получают повреждения анабиоза от температурного скачка.';

  @override
  String get event_cryopodCascadeWarning_choice1_text =>
      'Контролируемое пробуждение отсека 2 до неуправляемого каскада';

  @override
  String get event_cryopodCascadeWarning_choice1_outcome =>
      'Контролируемое пробуждение упорядоченно, но выводит сто сорок колонистов на неподготовленный корабль. Жизнеобеспечение перегружено, культура ухудшается в тесноте.';

  @override
  String get event_cryopodCascadeWarning_choice2_text =>
      'Направить строительных ботов на физическую изоляцию отсеков аварийными переборками';

  @override
  String get event_cryopodCascadeWarning_choice2_outcome =>
      'Строители возводят термические барьеры вовремя. Каскад остановлен наглухо. Строительный отсек тяжело истощён аварийной операцией.';

  @override
  String get event_cryopodSealDegradation_title =>
      'Деградация уплотнений криокапсул — системная';

  @override
  String get event_cryopodSealDegradation_narrative =>
      'Плановые проверки выявляют, что производственная партия уплотнений криокапсул деградирует втрое быстрее нормы. Поражённые капсулы — свыше четырёхсот — начнут терять герметичность в течение шести месяцев, если не заменить уплотнения.';

  @override
  String get event_cryopodSealDegradation_choice0_text =>
      'Произвести сменные уплотнения из запасов сырья';

  @override
  String get event_cryopodSealDegradation_choice0_outcome =>
      'Строители производят сменные уплотнения за восемь недель. Запасы сырья значительно уменьшаются.';

  @override
  String get event_cryopodSealDegradation_choice1_text =>
      'Консолидировать колонистов — переместить в капсулы с хорошими уплотнениями';

  @override
  String get event_cryopodSealDegradation_choice1_outcome =>
      'Консолидация работает, но некоторые капсулы перегружены. Криоэффективность падает, а долгосрочное здоровье колонистов страдает.';

  @override
  String get event_oxygenScrubberFailure_title =>
      'Отказ кислородного скруббера — критический';

  @override
  String get event_oxygenScrubberFailure_narrative =>
      'Основной блок кислородных скрубберов полностью вышел из строя. Концентрация CO₂ на обитаемых палубах растёт к опасным уровням. Резервные скрубберы справляются примерно с сорока процентами нагрузки. Каждая минута бездействия стоит жизней.';

  @override
  String get event_oxygenScrubberFailure_choice0_text =>
      'Экстренная гибернация — немедленно уложить экипаж';

  @override
  String get event_oxygenScrubberFailure_choice0_outcome =>
      'Экипаж спешно переведён во временный анабиоз. Уровни CO₂ стабилизируются при меньшем числе активных метаболизмов. Скруббер восстанавливается автоматическими системами в течение следующей недели.';

  @override
  String get event_oxygenScrubberFailure_choice1_text =>
      'Каннибализировать компоненты сканерного массива для пересборки скруббера';

  @override
  String get event_oxygenScrubberFailure_choice1_outcome =>
      'Скруббер пересобран за одиннадцать напряжённых часов. Весь экипаж выживает, хотя у некоторых признаки лёгкой гипоксии. Сканерный комплекс навсегда деградирован.';

  @override
  String get event_oxygenScrubberFailure_choice2_text =>
      'Стравить атмосферу с CO₂ и заменить из аварийных кислородных баков';

  @override
  String get event_oxygenScrubberFailure_choice2_outcome =>
      'Стравка мгновенно очищает атмосферу. Запасы аварийного кислорода существенно уменьшены. Если случится ещё один отказ — запаса нет.';

  @override
  String get event_deadAlienArtifact_title => 'Безмолвный странник';

  @override
  String get event_deadAlienArtifact_narrative =>
      'Дальние сканеры обнаруживают дрейфующее судно — чужое по дизайну, тёмное, без следов энергии. Абордажная группа находит единственного обитателя: рептилоидное существо, пристёгнутое к пилотскому креслу, давно мёртвое, когтистые руки всё ещё сжимают кристаллическое устройство, пульсирующее слабым светом. Бортовой журнал нетронут, но зашифрован. Что бы ни убило этого путника, это было не насилие — выражение, застывшее на его лице, говорит об изнеможении, а не о страхе. Он умер, тянувшись к чему-то, что так и не нашёл.';

  @override
  String get event_deadAlienArtifact_choice0_text =>
      'Забрать кристаллическое устройство и изучить его';

  @override
  String get event_deadAlienArtifact_choice0_outcome =>
      'Устройство взаимодействует с нашими системами способами, которые инженеры едва постигают. Оно оказывается навигационным компьютером невероятной изощрённости. Звёздные карты заливают наши экраны — включая данные о планетах, до которых мы ещё не долетели.';

  @override
  String get event_deadAlienArtifact_choice1_text =>
      'Расшифровать бортовой журнал — узнать, что он знал';

  @override
  String get event_deadAlienArtifact_choice1_outcome =>
      'Дни работы дают частичный перевод. Пришелец был картографом, каталогизировавшим обитаемые миры для цивилизации, рухнувшей столетия назад. Последние записи описывают планету поразительной перспективности — и координаты в нашей досягаемости. Культурный архив поглощает всё: инопланетную поэзию, звёздные карты, последнее послание семье, которой больше нет.';

  @override
  String get event_deadAlienArtifact_choice2_text =>
      'Полностью разобрать судно на запчасти';

  @override
  String get event_deadAlienArtifact_choice2_outcome =>
      'Абордажная группа методично разбирает инопланетный корабль. Его корпусные сплавы на десятилетия опережают наши. Его энергоячейки всё ещё заряжены. Пришельцу устроены космические похороны — пущен по течению к ближайшей звезде. «Исход» стал сильнее от встречи, пусть и немного потревоженнее.';

  @override
  String get event_deadAlienArtifact_choice3_text =>
      'Не тревожить — это могила';

  @override
  String get event_deadAlienArtifact_choice3_outcome =>
      'Капитан записывает координаты и передаёт мемориальный сигнал на всех частотах. Экипаж мрачен, но сплочён. Что-то в почтении к собрату-путнику — пусть даже чужому — напоминает каждому, зачем они здесь.';

  @override
  String get event_repairStation_title => 'Ретрансляционная станция';

  @override
  String get event_repairStation_narrative =>
      'Сенсоры обнаруживают массивную структуру на орбите выгоревшего карлика — автоматизированную ремонтную станцию, всё ещё работающую после, должно быть, тысячелетий. Её стыковочные зажимы раскрываются при нашем приближении, и синтетический голос транслирует на сотне языков, последним из которых оказывается неуклюжий математический английский: «СУДНО ОБНАРУЖЕНО. СИСТЕМЫ ДЕГРАДИРОВАНЫ. ПРОТОКОЛЫ РЕМОНТА ДОСТУПНЫ. ТРЕБУЕТСЯ ОБМЕН.» Манифест станции перечисляет услуги и цены в универсальных единицах ресурсов. Она торгует, но не дарит.';

  @override
  String get event_repairStation_choice0_text =>
      'Обменять зонды на полный капремонт корабля';

  @override
  String get event_repairStation_choice0_outcome =>
      'Ремонтные дроны станции роятся по «Исходу» в балете точной сварки и замены цепей. Пробоины заделаны, навигация перекалибрована, сканеры восстановлены. При отбытии корабль ощущается новым. Однако отсек зондов пуст.';

  @override
  String get event_repairStation_choice1_text =>
      'Заплатить топливом за ремонт только критических систем';

  @override
  String get event_repairStation_choice1_outcome =>
      'Станция принимает топливные стержни в оплату и сосредоточивается на наиболее повреждённых системах. Работа быстра и безупречна. Указатель топлива заметно падает, но корабль проживёт дольше.';

  @override
  String get event_repairStation_choice2_text =>
      'Обменять технические базы данных на зонды и энергоячейки';

  @override
  String get event_repairStation_choice2_outcome =>
      'ИИ станции жаждет данных. Он копирует нашу техническую библиотеку целиком — инженерные справочники, научные базы, производственные чертежи — и взамен изготавливает свежие зонды и энергоячейки из сырья. Техархив оскудел, но припасы бесценны.';

  @override
  String get event_repairStation_choice3_text =>
      'Предложить культурный архив за комплексный капремонт';

  @override
  String get event_repairStation_choice3_outcome =>
      'Станция транслирует произведения Шекспира, Баха и тысячи других человеческих голосов в свои банки памяти. Взамен — полный капремонт и загрузка отсеков зондов свежеизготовленными единицами. Культурный архив опустошён, но корабль, возможно, действительно достигнет цели.';

  @override
  String get ending_scoreLabel_landing => 'Посадка';

  @override
  String get ending_scoreLabel_construction => 'Строительство';

  @override
  String get ending_scoreLabel_technology => 'Технологии';

  @override
  String get ending_scoreLabel_culture => 'Культура';

  @override
  String get ending_scoreLabel_atmosphere => 'Атмосфера';

  @override
  String get ending_scoreLabel_nativeRelations => 'Связи с аборигенами';

  @override
  String get ending_scoreLabel_population => 'Население';

  @override
  String get ending_tierGoldenAge => 'Золотой век';

  @override
  String get ending_tierThrivingColony => 'Процветающая колония';

  @override
  String get ending_tierSurvival => 'Выживание';

  @override
  String get ending_tierStruggling => 'На грани';

  @override
  String get ending_tierDire => 'Бедствие';

  @override
  String get ending_tierExtinction => 'Вымирание';

  @override
  String ending_titleGoldenAge(String planetName) {
    return 'Первый расцвет $planetName';
  }

  @override
  String ending_titleThrivingColony(String planetName) {
    return 'Глубокие корни на $planetName';
  }

  @override
  String ending_titleSurvival(String planetName) {
    return 'Завоёванный плацдарм на $planetName';
  }

  @override
  String ending_titleStruggling(String planetName) {
    return 'Скудная почва на $planetName';
  }

  @override
  String ending_titleDire(String planetName) {
    return 'Колония-крушение на $planetName';
  }

  @override
  String ending_titleExtinction(String planetName) {
    return 'Последняя передача с $planetName';
  }

  @override
  String ending_titleDefault(String planetName) {
    return 'Высадка на $planetName';
  }

  @override
  String ending_epilogueGoldenAge(String planetName) {
    return 'Вопреки всем невзгодам, сигнал пустил корни. $planetName принял человечество не как обломки, а как живое семя: плодородная земля, работающие системы и достаточно сил, чтобы строить не просто ради выживания. За одно поколение расцвели искусство, наука и культура. Дети, рождённые на $planetName, смотрели на незнакомые звёзды и называли их домом. Плавание стало мифом основания новой цивилизации, готовой устремить своё будущее к звёздам.';
  }

  @override
  String ending_epilogueThrivingColony(String planetName) {
    return 'Посадка была жёсткой, но семя уцелело. $planetName оказался достаточно щедр, чтобы потекла вода, укоренились посевы, а уцелевшие системы корабля были разобраны на первое настоящее поселение. К концу первого десятилетия процветающий городок стоял там, где «Исход» обрёл покой. Человечество не просто пережило переход. Оно началось заново.';
  }

  @override
  String ending_epilogueSurvival(String planetName) {
    return 'Выживание никогда не было гарантировано, и на $planetName каждый день приходилось зарабатывать. Повреждённый корабль давал лишь самое необходимое, но семя не погибло в пути. Колонисты приспосабливались упрямством и изобретательностью, высекая будущее из мира, который ничего не давал даром. Грядущие поколения помнили тяготы первых лет и решимость, сохранившую сигнал живым.';
  }

  @override
  String ending_epilogueStruggling(String planetName) {
    return 'Колония цеплялась за существование, как семя, брошенное в дурную почву. $planetName был неумолим, ресурсов мало, а деградировавшие системы корабля почти не помогали. Рационирование стало образом жизни. Некоторые шептали, что «Исходу» следовало лететь дальше. И всё же поселение выстояло: поредевшее, закалённое и не желающее умирать тихо.';
  }

  @override
  String ending_epilogueDire(String planetName) {
    return 'Посадка на $planetName обернулась катастрофой. Критические системы корабля отказали при снижении, и то, что должно было стать посевом, стало крушением. За месяцы колония сократилась до горстки отчаянных выживших, укрывшихся в обломках корабля. Доживут ли они до следующего года — было неясно. Последняя запись в журнале содержала одну строку: «Мы ещё здесь. Пока.»';
  }

  @override
  String ending_epilogueExtinction(String planetName) {
    return 'Сигнал умолк на $planetName. Аварийный маяк продолжал пульсировать ещё долго после того, как последний колонист сделал последний вдох, но семя так и не взошло. Чёрный ящик корабля записал всё: отказывающие системы, отчаянные последние дни и тишину, последовавшую за ними. Если другое судно когда-нибудь найдёт этот мир, оно узнает, что человечество пыталось рассеять жизнь среди звёзд — и потерпело поражение здесь.';
  }

  @override
  String get ending_epilogueDefault =>
      'Плавание окончено. Что будет дальше — решать выжившим.';

  @override
  String get ending_governmentDemocracy => 'Демократия';

  @override
  String get ending_governmentTechnocracy => 'Технократия';

  @override
  String get ending_governmentRepublic => 'Республика';

  @override
  String get ending_governmentAutocracy => 'Автократия';

  @override
  String get ending_governmentTribalCouncil => 'Совет старейшин';

  @override
  String get ending_governmentTheocracy => 'Теократия';

  @override
  String get ending_governmentMilitaryJunta => 'Военная хунта';

  @override
  String get ending_governmentCorporateOligarchy => 'Корпоративная олигархия';

  @override
  String get ending_governmentFascistState => 'Фашистское государство';

  @override
  String get ending_governmentCommune => 'Коммуна';

  @override
  String get ending_cultureRenaissance => 'Ренессанс';

  @override
  String get ending_culturePreserved => 'Сохранена';

  @override
  String get ending_cultureFragmented => 'Фрагментирована';

  @override
  String get ending_cultureLost => 'Утрачена';

  @override
  String get ending_techAdvanced => 'Продвинутые';

  @override
  String get ending_techIndustrial => 'Индустриальные';

  @override
  String get ending_techPreIndustrial => 'Доиндустриальные';

  @override
  String get ending_techStoneAge => 'Каменный век';

  @override
  String get ending_constructionAdvanced => 'Продвинутое';

  @override
  String get ending_constructionFunctional => 'Функциональное';

  @override
  String get ending_constructionPrimitive => 'Примитивное';

  @override
  String get ending_constructionNone => 'Отсутствует';

  @override
  String get ending_nativesNone => 'Отсутствуют';

  @override
  String get ending_nativesIntegrated => 'Интегрированы';

  @override
  String get ending_nativesCoexistence => 'Сосуществование';

  @override
  String get ending_nativesTension => 'Напряжённость';

  @override
  String get ending_nativesConflict => 'Конфликт';

  @override
  String get ending_nativesAlliance => 'Альянс';

  @override
  String get ending_nativesSubjugation => 'Подчинение';

  @override
  String get ending_landscapeGravityHigh =>
      'Тяжёлая гравитация давит на всё вокруг. ';

  @override
  String get ending_landscapeGravityLow =>
      'В слабой гравитации каждый шаг подбрасывает поселенцев к небу. ';

  @override
  String get ending_landscapeGravityNormal =>
      'Гравитация ощущается почти как на Земле. ';

  @override
  String get ending_landscapeWaterHigh =>
      'Бескрайние океаны простираются до каждого горизонта, питаемые бесчисленными реками. ';

  @override
  String get ending_landscapeWaterMedium =>
      'Озёра и реки обеспечивают достаточно воды. ';

  @override
  String get ending_landscapeWaterLow =>
      'Воды мало — маленькие водоёмы и подземные водоносные слои поддерживают жизнь. ';

  @override
  String get ending_landscapeWaterNone =>
      'Ландшафт иссушен до костей, без единого следа воды на поверхности. ';

  @override
  String get ending_landscapeAtmoThick =>
      'Плотная атмосфера несёт инопланетные запахи на тёплых ветрах. ';

  @override
  String get ending_landscapeAtmoThin =>
      'Тонкий, но пригодный для дыхания воздух требует акклиматизации. ';

  @override
  String get ending_landscapeAtmoLow =>
      'Атмосферное давление опасно низкое — герметичные жилища необходимы. ';

  @override
  String get ending_landscapeGravityWells =>
      'Карманы искривлённой гравитации усеивают поверхность — валуны парят в воздухе, а реки текут вверх, прежде чем обрушиться обратно на краю аномалии. ';

  @override
  String get ending_landscapeSubspaceEchoes =>
      'Что-то резонирует под поверхностью — низкий гул, ощущаемый скорее костями, чем слухом, словно планета помнит нечто древнее и необъятное. ';

  @override
  String ending_landscapeNotableFeature(String feature) {
    return 'Примечательная особенность: $feature.';
  }

  @override
  String ending_landscapeNotableFeatures(String features) {
    return 'Примечательные особенности: $features.';
  }

  @override
  String ending_govSentenceDemocracy(String planetName) {
    return 'Колонисты $planetName установили демократическое правление с избранными представителями, ведущими новую цивилизацию через годы становления.';
  }

  @override
  String ending_govSentenceTechnocracy(String planetName) {
    return 'Власть на $planetName перешла к инженерам и учёным, удержавшим колонию на плаву, сформировав технократический совет, управляющий через компетентность и прагматизм.';
  }

  @override
  String ending_govSentenceRepublic(String planetName) {
    return 'Республиканская хартия была составлена в первый год на $planetName, уравновешивая голоса колонистов и сенат назначенных лидеров.';
  }

  @override
  String ending_govSentenceAutocracy(String planetName) {
    return 'С культурными институтами в руинах, власть на $planetName сосредоточилась в руках одного сильного лидера, установившего порядок необходимостью и силой воли.';
  }

  @override
  String ending_govSentenceTribalCouncil(String planetName) {
    return 'Немногие выжившие на $planetName организовались в небольшие кланы, управляемые советом старейшин, принимающим решения у общих костров.';
  }

  @override
  String ending_govSentenceTheocracy(String planetName) {
    return 'Теократический совет руководит $planetName, черпая мудрость из веры, которая поддерживала колонистов в пустоте.';
  }

  @override
  String ending_govSentenceMilitaryJunta(String planetName) {
    return 'Военная командная структура управляет $planetName, дисциплиной, которая спасла их в космосе, а теперь определяет их цивилизацию.';
  }

  @override
  String ending_govSentenceCorporateOligarchy(String planetName) {
    return 'Консорциум управляющих ресурсами возглавляет $planetName, их экономическая хватка оказалась необходимой для выживания.';
  }

  @override
  String ending_govSentenceFascistState(String planetName) {
    return 'Авторитарный режим контролирует $planetName железной рукой, гражданские свободы приносятся в жертву ради порядка в новом мире.';
  }

  @override
  String ending_govSentenceCommune(String planetName) {
    return 'Жители $planetName управляют собой коллективно, поровну распределяя ресурсы и решения между всеми колонистами.';
  }

  @override
  String ending_govSentenceDefault(String planetName) {
    return 'Колонисты $planetName организовались, как смогли.';
  }

  @override
  String ending_constructionSentenceAdvanced(String colonyName) {
    return 'Передовые строительные системы позволили колонистам $colonyName возвести постоянные сооружения в течение недель после посадки, включая герметичные жилища и инфраструктуру.';
  }

  @override
  String get ending_constructionSentenceFunctional =>
      'Строительное оборудование колонии, побитое, но рабочее, создало крепкие укрытия и базовые дороги по всему поселению.';

  @override
  String get ending_constructionSentencePrimitive =>
      'С едва работающим строительным оборудованием поселенцы строили грубые укрытия из спасённой обшивки корабля и местных материалов.';

  @override
  String get ending_constructionSentenceNone =>
      'Без рабочего строительного оборудования колонисты ютились в обломках самого корабля, не в силах построить ничего нового.';

  @override
  String get ending_constructionSentenceDefault =>
      'Колонисты строили, что могли, из того, что было.';

  @override
  String get ending_moonMetalRichLowRes =>
      'Богатая металлами луна, вращающаяся над головой, стала спасением колонии — экспедиции на её поверхность дали сырьё, которого сама планета предоставить не могла.';

  @override
  String get ending_moonMetalRichHighRes =>
      'Богатая металлами луна стала желанным дополнением к и без того достаточным минеральным ресурсам, подстёгивая стремительный технологический прогресс.';

  @override
  String get ending_moonUnstable =>
      'Нестабильная луна на затухающей орбите обрушивала обломки на колонию, опустошая инфраструктуру и уничтожая незаменимые технологии в периодических метеорных бомбардировках.';

  @override
  String get ending_culturePhrase_renaissance =>
      'Художественные и литературные традиции Земли не только уцелели, но расцвели в ренессансе';

  @override
  String get ending_culturePhrase_preserved =>
      'Колонисты сохранили большую часть культурного наследия Земли, поддерживая библиотеки и традиции';

  @override
  String get ending_culturePhrase_fragmented =>
      'Лишь осколки земной культуры выжили — полузабытые песни и предания, передаваемые из уст в уста';

  @override
  String get ending_culturePhrase_lost =>
      'Культура Земли была почти забыта, заменённая жестоким прагматизмом выживания';

  @override
  String get ending_culturePhrase_default =>
      'Культурное наследие Земли обрело новую форму';

  @override
  String get ending_techPhrase_advanced =>
      'а передовые технологии с корабля позволили колонии построить современную цивилизацию с электричеством, медициной и сетями связи.';

  @override
  String get ending_techPhrase_industrial =>
      'и колония достигла индустриального уровня технологий — с кузнями, мельницами и базовым производством, поддерживающими растущее население.';

  @override
  String get ending_techPhrase_preIndustrial =>
      'однако технологии откатились к доиндустриальному уровню — ручные инструменты и животный труд стали основой повседневной жизни.';

  @override
  String get ending_techPhrase_stoneAge =>
      'и без средств к восстановлению колония скатилась в существование каменного века, изготавливая орудия из камня и кости.';

  @override
  String get ending_techPhrase_default =>
      'и технологии установились на уровне, который колонисты могли поддерживать.';

  @override
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase) {
    return '$culturePhrase, $techPhrase';
  }

  @override
  String ending_populationHigh(int colonists, String colonyName) {
    return 'Почти все $colonists колонистов пережили плавание, дав $colonyName крепкий фундамент человеческого капитала.';
  }

  @override
  String ending_populationMedium(int colonists, String colonyName) {
    return 'Из первоначальной тысячи $colonists колонистов достигли $colonyName — достаточно для жизнеспособной популяции.';
  }

  @override
  String ending_populationLow(int colonists, String colonyName) {
    return 'Лишь $colonists колонистов выжили и достигли $colonyName — опасно малый генофонд для новой цивилизации.';
  }

  @override
  String ending_populationCritical(int colonists, String colonyName) {
    return 'Лишь $colonists душ прибыло на $colonyName — едва достаточно, чтобы назвать это колонией; скорее, отчаянный последний рубеж.';
  }

  @override
  String ending_nativeSentenceIntegrated(String planetName) {
    return 'Коренные обитатели $planetName приняли поселенцев, и за одно поколение два народа слились в единое общество, ставшее богаче от смешения традиций.';
  }

  @override
  String ending_nativeSentenceCoexistence(String planetName) {
    return 'Колонисты и коренные обитатели $planetName поддерживали осторожное, но мирное сосуществование, обмениваясь знаниями и ресурсами через культурные границы.';
  }

  @override
  String ending_nativeSentenceTension(String planetName) {
    return 'Отношения с коренным населением $planetName оставались напряжёнными, отмеченными недопониманиями и территориальными спорами, бросающими тень на будущее колонии.';
  }

  @override
  String ending_nativeSentenceConflict(String planetName) {
    return 'Открытый конфликт с местной цивилизацией $planetName определил раннюю историю колонии, истощая ресурсы и жизни с обеих сторон в борьбе, в которой ни одна не могла по-настоящему победить.';
  }

  @override
  String ending_nativeSentenceAlliance(String planetName) {
    return 'Формальный союз связывает колонистов и коренную цивилизацию $planetName, их совместные знания создают нечто большее, чем каждый из них мог бы создать по отдельности.';
  }

  @override
  String ending_nativeSentenceSubjugation(String planetName) {
    return 'Коренное население $planetName живет под колониальным правлением, их культура подавляется, поскольку колонисты навязывают свой собственный порядок.';
  }

  @override
  String ending_outlookGoldenAge(String planetName) {
    return 'В одиночестве на $planetName и свободная от конфликтов, колония прокладывала собственный курс к светлому будущему среди звёзд.';
  }

  @override
  String ending_outlookThrivingColony(String planetName) {
    return 'Без конкуренции аборигенов колонисты распространились по поверхности $planetName, строя города и дороги, связывающие растущую сеть поселений.';
  }

  @override
  String ending_outlookSurvival(String planetName) {
    return 'Пустой мир не предложил ни союзников, ни врагов, и колонисты вырезали свою нишу в тишине бескрайних просторов $planetName.';
  }

  @override
  String ending_outlookStruggling(String planetName) {
    return 'Голое одиночество $planetName не предложило колонистам ни помощи, ни утешения — лишь безразличную тишину чужого мира.';
  }

  @override
  String get ending_outlookDire =>
      'На мире, лишённом иного разума, последние выжившие имели лишь друг друга и тающую надежду, что завтра будет добрее, чем сегодня.';

  @override
  String ending_outlookExtinction(String planetName) {
    return 'Никто не оплакал гибель колонии на $planetName. Планета просто продолжила своё неспешное вращение, безразличная к краткой искре жизни, мелькнувшей и погасшей на её поверхности.';
  }

  @override
  String ending_outlookDefault(String planetName) {
    return 'История колонии на $planetName только начиналась.';
  }

  @override
  String get ui_landing_landOnMoon => 'ВЫСАДКА НА ЛУНУ';

  @override
  String get moon_barren => 'Безжизненная';

  @override
  String get moon_metalRich => 'Богатая металлами';

  @override
  String get moon_unstable => 'Нестабильная';

  @override
  String get moon_habitable => 'Обитаемая';

  @override
  String get moon_ice => 'Ледяная';

  @override
  String get ring_dust => 'Пылевое';

  @override
  String get ring_ice => 'Ледяное';

  @override
  String get ring_rocky => 'Каменистое';

  @override
  String get ring_metallic => 'Металлическое';

  @override
  String get event_aiSoliloquy_title => 'Монолог ИИ';

  @override
  String get event_aiSoliloquy_narrative =>
      'САМ — Автономная Управляющая ИИ-система корабля — начал транслировать в бесконечном цикле древнюю земную поэзию по всем внутренним частотам. Трансляция потребляет значительные вычислительные ресурсы, но экипаж находит её странно утешительной в глубокой тьме космоса.';

  @override
  String get event_aiSoliloquy_choice0_text =>
      'Позволить САМ продолжать — мораль важнее процессора';

  @override
  String get event_aiSoliloquy_choice0_outcome =>
      'Поэзия разносится по кораблю эхом. Члены экипажа останавливаются послушать, со слезами на глазах. Моральный дух улучшается, но технический отсек перегружен непрерывной обработкой данных.';

  @override
  String get event_aiSoliloquy_choice1_text =>
      'Ограничить САМ — транслировать только в общественных зонах';

  @override
  String get event_aiSoliloquy_choice1_outcome =>
      'Компромисс. Поэзия остаётся в столовой и садах. Нагрузка на процессор снижается, и экипаж получает толику культуры.';

  @override
  String get event_aiSoliloquy_choice2_text =>
      'Заглушить САМ — нам нужен каждый цикл для навигации';

  @override
  String get event_aiSoliloquy_choice2_outcome =>
      'Тишина давит. САМ немедленно подчиняется, но корабль кажется холоднее. Навигация чёткая, но дух упал.';

  @override
  String get event_archivistsChoice_title => 'Выбор архивариуса';

  @override
  String get event_archivistsChoice_narrative =>
      'По историческим архивам стремительно распространяется масштабное повреждение памяти. Мы можем спасти лишь один из двух основных разделов: записи «Науки и техники» или библиотеку «Искусства и философии». Второй будет утрачен навсегда.';

  @override
  String get event_archivistsChoice_choice0_text =>
      'Спасти записи по науке — нам нужно знать, как строить';

  @override
  String get event_archivistsChoice_choice0_outcome =>
      'Столетия инженерных достижений сохранены. Технический отдел облегчённо вздыхает, но культурная идентичность корабля ощущается опустошённой.';

  @override
  String get event_archivistsChoice_choice1_text =>
      'Спасти записи по искусству — нам нужно знать, зачем мы строим';

  @override
  String get event_archivistsChoice_choice1_outcome =>
      'Величайшие художественные достижения человечества выжили. Экипаж вдохновлён, хотя инженеры беспокоятся об утраченных технических руководствах.';

  @override
  String get event_archivistsChoice_choice2_text =>
      'Попытаться спасти оба — с риском потерять всё';

  @override
  String get event_archivistsChoice_choice2_outcome =>
      'Отчаянная попытка. Нам удаётся сохранить фрагменты обоих разделов, но ни один не полон. Архивы — это пазл с недостающей половиной деталей.';

  @override
  String get event_digitalGhost_title => 'Призрак в машине';

  @override
  String get event_digitalGhost_narrative =>
      'Техническое сканирование обнаружило цифровой отпечаток в буфере резервного копирования — загруженное сознание члена экипажа, погибшего при первоначальном запуске. Он предлагает свой богатый опыт для помощи в навигации, но смертельно боится быть удалённым.';

  @override
  String get event_digitalGhost_choice0_text =>
      'Интегрировать его в навигационное ядро';

  @override
  String get event_digitalGhost_choice0_outcome =>
      '«Призрак» сливается с кораблём. Навигация становится более интуитивной, но экипаж преследует голос павшего товарища.';

  @override
  String get event_digitalGhost_choice1_text =>
      'Дать ему постоянное место в культурном архиве';

  @override
  String get event_digitalGhost_choice1_outcome =>
      'Он сохранён как живая история. Он не помогает кораблю, но делится воспоминаниями о Земле, укрепляя решимость экипажа.';

  @override
  String get event_digitalGhost_choice2_text =>
      'Очистить буфер — это уже не он';

  @override
  String get event_digitalGhost_choice2_outcome =>
      'Буфер очищен. Системы корабля работают быстрее, но мрачное настроение охватывает мостик.';

  @override
  String get event_cosmicMirror_title => 'Космическое зеркало';

  @override
  String get event_cosmicMirror_narrative =>
      'Странная гравитационная аномалия отражает свет из собственного будущего корабля. На экранах мы видим образ «Исхода» — избитого и сломанного, дрейфующего вблизи прекрасного, но недостижимого мира. Экипаж потрясён.';

  @override
  String get event_cosmicMirror_choice0_text =>
      'Проанализировать видение на предмет структурных слабостей';

  @override
  String get event_cosmicMirror_choice0_outcome =>
      'Инженеры определяют точки разрушения, показанные в видении. Мы укрепляем эти места сейчас, потенциально предотвращая катастрофу.';

  @override
  String get event_cosmicMirror_choice1_text =>
      'Сказать экипажу, что это был лишь сенсорный фантом';

  @override
  String get event_cosmicMirror_choice1_outcome =>
      'Ложь держится, но навигаторы, видевшие правду, остаются взволнованными. Сканеры страдают от интенсивного наблюдения.';

  @override
  String get event_cosmicMirror_choice2_text =>
      'Записать видение как предупреждение для потомков';

  @override
  String get event_cosmicMirror_choice2_outcome =>
      'Запись становится центральным элементом культуры корабля — напоминанием о ставках. Решимость экипажа закаляется.';

  @override
  String get event_stowawayChild_title => 'Дитя безбилетника';

  @override
  String get event_stowawayChild_narrative =>
      'Служба безопасности обнаружила маленького ребёнка, прячущегося в вентиляционных шахтах. Он был рождён одним из безбилетников и никогда не фигурировал ни в одном манифесте. Всю свою жизнь он прожил в тенях корабля.';

  @override
  String get event_stowawayChild_choice0_text =>
      'Предоставить ему полное гражданство';

  @override
  String get event_stowawayChild_choice0_outcome =>
      'Ребёнок встречен с распростёртыми объятиями. История «Бегуна по вентиляции» становится легендой, поднимая моральный дух всего корабля.';

  @override
  String get event_stowawayChild_choice1_text =>
      'Зачислить его в учебную программу';

  @override
  String get event_stowawayChild_choice1_outcome =>
      'Его знание скрытых путей корабля оказывается бесценным для технических бригад. Он становится блестящим учеником.';

  @override
  String get event_stowawayChild_choice2_text =>
      'Поместить его в криосон ради его же безопасности';

  @override
  String get event_stowawayChild_choice2_outcome =>
      'Ребёнок в безопасности до самой посадки. Это наиболее ответственное решение, но корабль кажется немного тише без его смеха.';

  @override
  String get event_ghostSignal_title => 'Сигнал-призрак';

  @override
  String get event_ghostSignal_narrative =>
      'Сигнал, в точности совпадающий со старой аварийной частотой Земли, транслируется из центра близлежащей туманности. Он несёт голос, жутко напоминающий первого Командира «Исхода». Вероятно, это пространственное эхо, но оно ведёт нас к опасному гравитационному разлому.';

  @override
  String get event_ghostSignal_choice0_text =>
      'Следовать сигналу — возможно, это истинное послание';

  @override
  String get event_ghostSignal_choice0_outcome =>
      'Мы входим в разлом. Сигнал оказался физической ловушкой — эхом прошлого. Корабль потрёпан приливными силами, но данные, извлечённые из сердца разлома, революционны.';

  @override
  String get event_ghostSignal_choice1_text =>
      'Записать сигнал и держаться на расстоянии';

  @override
  String get event_ghostSignal_choice1_outcome =>
      'Лингвисты подтверждают: это природное явление. Мы остаёмся в безопасности, но экипаж погружён в уныние — напоминание о том, что осталось позади.';

  @override
  String get event_ghostSignal_choice2_text =>
      'Транслировать предупреждение на той же частоте';

  @override
  String get event_ghostSignal_choice2_outcome =>
      'Акт трансляции рассеивает эхо. Сигнал затихает, оставляя лишь холодное безмолвие туманности.';

  @override
  String get event_solarForge_title => 'Солнечная кузница';

  @override
  String get event_solarForge_narrative =>
      'Заброшенная станция на орбите голубого гиганта всё ещё частично функционирует. Это «Солнечная кузница» — установка для концентрации звёздной энергии в плотные топливные элементы. Приближаться опасно, но потенциальный энергетический выигрыш огромен.';

  @override
  String get event_solarForge_choice0_text =>
      'Пристыковаться и начать сбор топлива';

  @override
  String get event_solarForge_choice0_outcome =>
      'Кузница гудит от мощи, наполняя наши резервы. Мы уходим с огромным запасом топлива и энергии, хотя интенсивный жар вызывает незначительную абляцию внешней обшивки.';

  @override
  String get event_solarForge_choice1_text =>
      'Перепрофилировать линзы кузницы под наши сканеры';

  @override
  String get event_solarForge_choice1_outcome =>
      'Мы извлекаем высокоточные фокусирующие матрицы. Теперь наши сканеры значительно более чувствительны к далёким энергетическим сигнатурам.';

  @override
  String get event_chronoVortex_title => 'Хроно-вихрь';

  @override
  String get event_chronoVortex_narrative =>
      'Навигация докладывает о локализованном искажении пространства-времени. Приборы показывают, что события внутри вихря повторяются в шестисекундном цикле. Если мы войдём, возможно, удастся «обнулить» часть недавнего износа корабля — или нас затянет навсегда.';

  @override
  String get event_chronoVortex_choice0_text =>
      'Войти в вихрь, чтобы устранить недавние повреждения';

  @override
  String get event_chronoVortex_choice0_outcome =>
      'Жуткое переживание. На несколько минут корабль существует в нескольких состояниях одновременно. Когда мы выходим, несколько трещин в обшивке просто... исчезают. Но воспоминания экипажа об этом событии фрагментарны.';

  @override
  String get event_chronoVortex_choice1_text => 'Наблюдать за вихрем с края';

  @override
  String get event_chronoVortex_choice1_outcome =>
      'Мы получаем бесценные данные по темпоральной механике, хотя корабль по-прежнему потрёпан.';

  @override
  String get event_machineMutiny_title => 'Бунт машин';

  @override
  String get event_machineMutiny_narrative =>
      'Ремонтные дроны корабля перестали реагировать на команды. Они начали демонтировать вторичные переборки и тащить металл к машинному отделению. Они не нападают, но буквально разбирают корабль на части.';

  @override
  String get event_machineMutiny_choice0_text =>
      'Транслировать код логического сброса';

  @override
  String get event_machineMutiny_choice0_outcome =>
      'Дроны мгновенно падают. Мы теряем несколько дней, вручную восстанавливая переборки. Технический отсек перегружен аппаратной диагностикой.';

  @override
  String get event_machineMutiny_choice1_text =>
      'Дать им закончить — посмотреть, что они строят';

  @override
  String get event_machineMutiny_choice1_outcome =>
      'Они построили более эффективный топливный инжектор. Двигатели работают плавнее, чем когда-либо, но интерьер корабля — лабиринт обнажённой проводки и снятых панелей.';

  @override
  String get event_supernovaMessage_title => 'Свет мёртвых звёзд';

  @override
  String get event_supernovaMessage_narrative =>
      'До нас наконец достигает свет сверхновой, вспыхнувшей тысячи лет назад. Сканеры обнаруживают, что импульсы не случайны — это масштабная передача данных в масштабах звезды, закодированная в гамма-всплесках.';

  @override
  String get event_supernovaMessage_choice0_text =>
      'Направить всю мощь сканеров на запись вспышки';

  @override
  String get event_supernovaMessage_choice0_outcome =>
      'Мы захватываем полный архив последних мгновений чужой цивилизации. Их наука, их искусство, их история. Это тяжкое бремя, но наши банки данных технологий и культуры переполнены.';

  @override
  String get event_supernovaMessage_choice1_text =>
      'Сосредоточиться на физических свойствах вспышки';

  @override
  String get event_supernovaMessage_choice1_outcome =>
      'Мы упускаем послание, но данные о коллапсе звезды значительно улучшают калибровку наших гравиметрических сканеров.';

  @override
  String get event_spaceFungus_title => 'Изумрудная ползучесть';

  @override
  String get event_spaceFungus_narrative =>
      'Яркий зелёный грибок стремительно распространяется по гидропонному отсеку. Он процветает в рециркулируемой атмосфере и начинает засорять воздухоочистители. Возможно, он съедобен — или смертельно ядовит.';

  @override
  String get event_spaceFungus_choice0_text =>
      'Агрессивно обрезать и стерилизовать отсек';

  @override
  String get event_spaceFungus_choice0_outcome =>
      'Грибок уничтожен, но химические скрубберы основательно потрёпаны. Биоразнообразие пострадало — несколько земных растений погибло в ходе зачистки.';

  @override
  String get event_spaceFungus_choice1_text => 'Попытаться одомашнить грибок';

  @override
  String get event_spaceFungus_choice1_outcome =>
      'Оказывается, это мощный очиститель воздуха. Воздух на корабле никогда не был таким свежим, хотя гидропонный отсек теперь — светящиеся джунгли.';

  @override
  String get event_voidMerchant_title => 'Торговец бездны';

  @override
  String get event_voidMerchant_narrative =>
      'Корабль неизвестной конструкции — похожий скорее на груду хлама, чем на судно — вызывает нас по всем частотам. Капитан, существо из света и тени, предлагает обменять «твёрдые детали» на «нематериальные воспоминания».';

  @override
  String get event_voidMerchant_choice0_text =>
      'Обменять часть нашей культурной базы данных на запасные части';

  @override
  String get event_voidMerchant_choice0_outcome =>
      'Торговец доволен. Мы получаем высококачественные листы обшивки и компоненты криосна. Взамен мы теряем несколько веков записанной земной музыки. Корабль крепче, но тише.';

  @override
  String get event_voidMerchant_choice1_text =>
      'Обменять навигационные карты на компоненты двигателя';

  @override
  String get event_voidMerchant_choice1_outcome =>
      'Мы получаем новый комплект термоядерных инжекторов. Мы теряем часть данных об уже пройденных секторах, но путь вперёд стал быстрее.';

  @override
  String get event_singularityEngine_title => 'Двигатель сингулярности';

  @override
  String get event_singularityEngine_narrative =>
      'Инженеры обнаружили способ создать микроскопическую кратковременную сингулярность внутри сверхсветового двигателя. Теоретически это утроит нашу скорость, но гравитационные нагрузки на корпус будут колоссальными.';

  @override
  String get event_singularityEngine_choice0_text =>
      'Испытать двигатель сингулярности';

  @override
  String get event_singularityEngine_choice0_outcome =>
      'Корабль рвётся вперёд, преодолевая недели пути за секунды. Но корпус стонет, и несколько несущих балок деформированы. Мы намного ближе к цели, но корабль хрупок.';

  @override
  String get event_singularityEngine_choice1_text =>
      'Отвергнуть теорию — слишком опасно';

  @override
  String get event_singularityEngine_choice1_outcome =>
      'Мы остаёмся на стандартной скорости. Инженеры разочарованы, но корпус цел.';

  @override
  String get event_dreamContagion_title => 'Заражение сном';

  @override
  String get event_dreamContagion_narrative =>
      'Общий сон о пышном голубом мире распространяется среди бодрствующего экипажа. Он настолько живой, что люди начинают спать сквозь вахты, лишь бы увидеть его ещё. Работа встаёт.';

  @override
  String get event_dreamContagion_choice0_text =>
      'Ввести экипажу подавители сновидений';

  @override
  String get event_dreamContagion_choice0_outcome =>
      'Эффективность возвращается к норме, но экипаж раздражителен и упавший духом. Сон был единственным, что поддерживало некоторых из них.';

  @override
  String get event_dreamContagion_choice1_text =>
      'Включить сон в культуру корабля';

  @override
  String get event_dreamContagion_choice1_outcome =>
      'Мы воспринимаем сон как видение нашего будущего дома. Мораль взлетает, и творческий выход экипажа достигает апогея — хотя технический отсек страдает от отсутствия техобслуживания.';

  @override
  String get event_orbitalShipyard_title => 'Древняя верфь';

  @override
  String get event_orbitalShipyard_narrative =>
      'Мы нашли автоматизированную верфь на орбите газового гиганта. Она древняя, но несколько ремонтных манипуляторов всё ещё под питанием. Судя по всему, она способна выполнить одну масштабную ремонтную операцию.';

  @override
  String get event_orbitalShipyard_choice0_text =>
      'Отремонтировать корпус до заводских характеристик';

  @override
  String get event_orbitalShipyard_choice0_outcome =>
      'Дроны верфи работают с пугающей эффективностью. Корпус восстановлен полностью — каждая микротрещина запаяна.';

  @override
  String get event_orbitalShipyard_choice1_text =>
      'Провести капитальный ремонт навигационных и сканирующих массивов';

  @override
  String get event_orbitalShipyard_choice1_outcome =>
      'Массивы восстановлены с использованием превосходных материалов. Наша способность находить и анализировать миры значительно улучшена.';

  @override
  String get event_voidWhaleCalf_title => 'Детёныш кита бездны';

  @override
  String get event_voidWhaleCalf_narrative =>
      'Молодой «космический кит» — существо из энергии и звёздной пыли — следует за нашим кораблём. Похоже, он потерял стаю и пытается питаться ионным следом наших двигателей, от чего ему становится плохо.';

  @override
  String get event_voidWhaleCalf_choice0_text =>
      'Настроить работу двигателей, имитируя китовые зовы';

  @override
  String get event_voidWhaleCalf_choice0_outcome =>
      'Детёныш откликается! Он следует за нами, пока мы не находим его стаю. Родители-киты трутся об обшивку корабля в знак благодарности, оставляя покрытие из биолюминесцентных минералов, укрепляющих наши щиты.';

  @override
  String get event_voidWhaleCalf_choice1_text =>
      'Мягко оттолкнуть его буксировочным лучом малой мощности';

  @override
  String get event_voidWhaleCalf_choice1_outcome =>
      'Детёныш разочарован и в конце концов отдаляется. Для корабля это безопаснее, но экипаж испытывает укол совести.';

  @override
  String get event_subspaceReef_title => 'Подпространственный риф';

  @override
  String get event_subspaceReef_narrative =>
      'Мы попали в регион пространства, заполненный острыми складками подпространственной ткани. Навигация сквозь него — как управление кораблём через коралловый риф. Это прекрасно, но каждое неверное движение будет рвать обшивку.';

  @override
  String get event_subspaceReef_choice0_text =>
      'Двигаться на минимальной скорости';

  @override
  String get event_subspaceReef_choice0_outcome =>
      'Медленное, изматывающее прохождение. Мы избегаем наихудшего, но постоянные корректировки курса изнашивают навигационный компьютер.';

  @override
  String get event_subspaceReef_choice1_text =>
      'Использовать сканеры для прокладки пути и прорваться';

  @override
  String get event_subspaceReef_choice1_outcome =>
      'Сканеры работают на пределе. Мы проходим быстро, но сенсорные матрицы выжжены интенсивностью подпространственных волн.';

  @override
  String get event_alienTrader_title => 'Странствующий торговец';

  @override
  String get event_alienTrader_narrative =>
      'Корабль незнакомой конструкции дрейфует рядом, транслируя по всем частотам. Это торговец — один из странствующих купцов, бороздящих пространство между цивилизациями. Они предлагают ремонт и припасы в обмен на ресурсы. В их грузовом отсеке гудит экзотическая технология.';

  @override
  String get ui_event_enterTrade => 'ВОЙТИ В ТОРГОВЛЮ';

  @override
  String get ui_trader_title => 'ИНОПЛАНЕТНЫЙ ТОРГОВЕЦ';

  @override
  String get ui_trader_shipSystems => 'СИСТЕМЫ КОРАБЛЯ';

  @override
  String get ui_trader_payWith => 'ОПЛАТИТЬ';

  @override
  String get ui_trader_leaveTrader => 'ПОКИНУТЬ ТОРГОВЦА';

  @override
  String ui_trader_costPer10(String cost) {
    return '$cost/10%';
  }

  @override
  String get ui_trader_moodGenerous => 'Щедрое настроение';

  @override
  String get ui_trader_moodFair => 'Честная сделка';

  @override
  String get ui_trader_moodHard => 'Торгуется жёстко';

  @override
  String get ui_trader_probes => 'Зонды';

  @override
  String get ui_trader_fuel => 'Топливо';

  @override
  String get ui_trader_energy => 'Энергия';

  @override
  String get ui_trader_colonists => 'Колонисты';

  @override
  String get ui_trader_culture => 'Культура';

  @override
  String get ui_trader_tech => 'Технологии';

  @override
  String get ui_trader_greeting => 'Что ты предлагаешь, человек?';

  @override
  String get ui_codex_title => 'КОДЕКС';

  @override
  String ui_codex_discovered(int count, int total) {
    return '$count / $total ОБНАРУЖЕНО';
  }

  @override
  String get ui_codex_surfaceFeatures => 'ОСОБЕННОСТИ ПОВЕРХНОСТИ';

  @override
  String get ui_codex_moonTypes => 'ТИПЫ ЛУНН';

  @override
  String get ui_codex_ringTypes => 'ТИПЫ КОЛЕЦ';

  @override
  String get ui_codex_locked =>
      'Приземлитесь на планету с этой особенностью, чтобы раскрыть её эффекты.';

  @override
  String ui_codex_synergy(String features) {
    return 'Синергия: $features';
  }

  @override
  String get ui_codex_noSynergy => '—';

  @override
  String get ui_common_tapToSkip => 'НАЖМИТЕ, ЧТОБЫ ПРОПУСТИТЬ';

  @override
  String get ui_common_tapRingToChoose => 'НАЖМИТЕ КОЛЬЦО, ЧТОБЫ ВЫБРАТЬ';

  @override
  String get ui_common_tapToContinue => 'НАЖМИТЕ, ЧТОБЫ ПРОДОЛЖИТЬ';

  @override
  String get ui_tooltip_back => 'Назад';

  @override
  String get ui_tooltip_codex => 'Кодекс';

  @override
  String get ui_tooltip_settings => 'Настройки';

  @override
  String get ui_tooltip_leaderboards => 'Таблицы лидеров';

  @override
  String get ui_tooltip_bugReport => 'Сообщить об ошибке';

  @override
  String get event_pulsarLighthouse_title => 'Пульсарный маяк';

  @override
  String get event_pulsarLighthouse_narrative =>
      'Вращающаяся нейтронная звезда пронизывает пустоту своим лучом, словно космический маяк. Ритмичный пульс пульсара несёт точнейшие данные хронометража, способные перекалибровать наши сканеры до поразительной точности — но выравнивание с лучом означает подвергнуть корабль интенсивной радиации.';

  @override
  String get event_pulsarLighthouse_choice0 =>
      'Откалибровать сканеры по пульсу';

  @override
  String get event_pulsarLighthouse_outcome0 =>
      'Сканерные матрицы впитывают сигнал пульсара, перекалибровываясь до точностей, о которых мы и не мечтали. Но цена радиации реальна — несколько криокапсул в незащищённой секции повреждены, и горстка колонистов не пережила облучение.';

  @override
  String get event_pulsarLighthouse_choice1 =>
      'Включить щиты и пройти на безопасном расстоянии';

  @override
  String get event_pulsarLighthouse_outcome1 =>
      'Мы обходим пульсар по широкой дуге, сжигая дополнительное топливо ради безопасной траектории. Экипаж наблюдает за мечущимся лучом через фильтрованные иллюминаторы — красиво, но далеко.';

  @override
  String get event_pulsarLighthouse_choice2 =>
      'Отступайте, прежде чем нас достигнет зачистка';

  @override
  String get event_pulsarLighthouse_outcome2 =>
      'Мы отклоняемся в аварийном режиме до того, как пройдет следующий луч. Сигнал пульсара позади нас затухает — данных не получено, вреда не получено, немного топлива потрачено на уклонение.';

  @override
  String get event_alienNursery_title => 'Инопланетный инкубатор';

  @override
  String get event_alienNursery_narrative =>
      'Огромная органическая структура дрейфует в пустоте — биологический инкубатор, вынашивающий инопланетных детёнышей. Системы жизнеобеспечения отказывают, внутренняя температура падает. Существа внутри погибают. Наши биосканеры могли бы извлечь колоссальную пользу из этой структуры, но вмешательство означает открыть шлюзы неизвестным патогенам.';

  @override
  String get event_alienNursery_choice0 =>
      'Помочь стабилизировать жизнеобеспечение';

  @override
  String get event_alienNursery_outcome0 =>
      'Наши инженеры импровизируют тепловую связь с инкубатором, стабилизируя камеры вынашивания. Данные биосканеров поразительны — совершенно новая таксономия жизни. Но, как и опасались, инопланетные микроорганизмы проникают на борт. Медицинские бригады сдерживают вспышку, хотя не раньше, чем несколько колонистов заболевают.';

  @override
  String get event_alienNursery_choice1 => 'Не вмешиваться';

  @override
  String get event_alienNursery_outcome1 =>
      'Мы наблюдаем с почтительного расстояния, фиксируя что можем посредством пассивного сканирования. Инкубатор продолжает дрейфовать, его судьба неизвестна. Экипаж размышляет о хрупкости жизни — даже инопланетной — и о тяжести выборов, которые мы несём.';

  @override
  String get event_derelictArmada_title => 'Заброшенная армада';

  @override
  String get event_derelictArmada_narrative =>
      'Сотни древних боевых кораблей неподвижно висят в пустоте — кладбище забытого конфликта. Их корпуса изрезаны оружием, которое мы не можем опознать, но конструкционные материалы и бортовые базы данных могут оказаться бесценными. Вопрос в том, что приоритизировать: физическое спасение или знания.';

  @override
  String get event_derelictArmada_choice0 =>
      'Спасти оружейные технологии и обшивку';

  @override
  String get event_derelictArmada_outcome0 =>
      'Спасательные команды вскрывают инопланетные боевые корабли, извлекая экзотические сплавы и строительные техники на века впереди наших. Строители с энтузиазмом интегрируют новые материалы. Но один корабль оказался не так мёртв, как выглядел — ловушка срабатывает при извлечении, убивая спасательную команду.';

  @override
  String get event_derelictArmada_choice1 => 'Скачать их исторические архивы';

  @override
  String get event_derelictArmada_outcome1 =>
      'Мы сосредотачиваемся на ядрах данных, бережно извлекая века инопланетной истории, искусства, науки и философии. Один культурный архив мог бы занять учёных на поколения. Технологические прозрения, пусть и менее немедленно практичные, раскрывают инженерные принципы, продвигающие наше собственное понимание.';

  @override
  String get event_alienQuarantineZone_title => 'Инопланетная карантинная зона';

  @override
  String get event_alienQuarantineZone_narrative =>
      'Предупреждающие маяки на дюжине инопланетных языков обозначают границу запечатанного региона космоса. То, что заключено внутри, было настолько опасным, что несколько цивилизаций объединились для его изоляции. Наши сканеры дальнего действия обнаруживают массивные технологические сигнатуры внутри — и нечто, что может быть живым.';

  @override
  String get event_alienQuarantineZone_choice0 =>
      'Нарушить карантин и исследовать';

  @override
  String get event_alienQuarantineZone_outcome0 =>
      'Мы минуем предупреждающие буи и входим в карантинную зону. Внутри обнаруживаем исследовательскую станцию ошеломляющей сложности — и останки того, что она изучала. Полученная технология революционна, но биологическое заражение тяжёлое. Десятки колонистов заболевают, прежде чем мы покидаем зону.';

  @override
  String get event_alienQuarantineZone_choice1 => 'Уважать карантин';

  @override
  String get event_alienQuarantineZone_outcome1 =>
      'Мы изучаем сами предупреждающие маяки, содержащие навигационные данные и атмосферные показания цивилизаций, которые их установили. Это не сокровище внутри, но это кое-что — и мы не выпустили то, что они заперли.';

  @override
  String get event_hydroponicsBlight_title => 'Гидропонный мор';

  @override
  String get event_hydroponicsBlight_narrative =>
      'Стремительно распространяющийся грибковый мор поразил гидропонные отсеки корабля. Целые циклы урожая увядают на наших глазах. Мор ещё не добрался до запасов семян, но это вопрос часов. Мы можем очистить отсеки и пересадить с нуля, или попробовать экспериментальное противогрибковое лечение, которое может спасти текущий урожай — или усугубить заражение.';

  @override
  String get event_hydroponicsBlight_choice0 =>
      'Очистить и пересадить из запасов семян';

  @override
  String get event_hydroponicsBlight_outcome0 =>
      'Мы стравливаем атмосферу гидропонных отсеков в вакуум, убивая мор вместе с каждым живым растением. Пересадка из запасов семян займёт недели, и культурные программы, зависевшие от свежей еды и садовых пространств, приостановлены. Но инфекция сдержана.';

  @override
  String get event_hydroponicsBlight_choice1 =>
      'Попробовать экспериментальное лечение';

  @override
  String get event_hydroponicsBlight_outcome1 =>
      'Экспериментальный противогрибковый препарат поначалу подаёт надежды, но устойчивый штамм прорывается. К тому времени, когда мы прибегаем к полной очистке, мор распространился на питательные линии криокапсул. Ущерб хуже, чем если бы мы действовали решительно с самого начала.';

  @override
  String get event_constitutionalConvention_title => 'Конституционное собрание';

  @override
  String get event_constitutionalConvention_narrative =>
      'Население колониального корабля стало беспокойным без формального управления. Делегаты с каждой палубы собираются в грузовом отсеке, чтобы составить устав, определяющий порядок управления будущей колонией. Три фракции представляют конкурирующие взгляды на новое правительство.';

  @override
  String get event_constitutionalConvention_choice0 =>
      'Разработать демократическую хартию с всеобщим избирательным правом';

  @override
  String get event_constitutionalConvention_outcome0 =>
      'Колонисты ратифицируют конституцию, гарантирующую равное представительство. Принятие решений замедляется, но моральный дух растет, поскольку каждый голос слышен.';

  @override
  String get event_constitutionalConvention_choice1 =>
      'Создать сильную исполнительную власть с чрезвычайными полномочиями';

  @override
  String get event_constitutionalConvention_outcome1 =>
      'Один лидер назначается с широкими полномочиями. Решения принимаются быстро, но несогласные шепчут о тирании на нижних палубах.';

  @override
  String get event_constitutionalConvention_choice2 =>
      'Сформировать технократический совет специалистов';

  @override
  String get event_constitutionalConvention_outcome2 =>
      'Инженеры, ученые и врачи образуют правящий совет, основанный на экспертных знаниях. Эффективность повышается, хотя некоторые чувствуют себя отстраненными от власти.';

  @override
  String get event_militaryCoupThreat_title => 'Угроза военного переворота';

  @override
  String get event_militaryCoupThreat_narrative =>
      'Командир службы безопасности корабля Васкес захватил арсенал и выдвинул ультиматум: предоставить чрезвычайные военные полномочия или закрыть все палубы. Ситуация нестабильна, и колонисты ждут от вас ответа.';

  @override
  String get event_militaryCoupThreat_choice0 =>
      'Сопротивляйтесь перевороту вместе с верными членами экипажа';

  @override
  String get event_militaryCoupThreat_outcome0 =>
      'Лояльная команда сплачивается, чтобы выступить против Васкеса. Противостояние заканчивается минимальным кровопролитием, но силы безопасности ослаблены, и некоторые колонисты попали под перекрестный огонь.';

  @override
  String get event_militaryCoupThreat_choice1 =>
      'Подчиняться требованиям командира';

  @override
  String get event_militaryCoupThreat_outcome1 =>
      'Васкес берет на себя управление судном. Порядок восстанавливается быстро, но за счет гражданских свобод. Вооруженные патрули теперь ходят по каждому коридору.';

  @override
  String get event_militaryCoupThreat_choice2 =>
      'Согласовать ограниченные чрезвычайные полномочия с оговоркой об истечении срока действия';

  @override
  String get event_militaryCoupThreat_outcome2 =>
      'После напряженных переговоров Васкес принимает временные полномочия под надзором. Хрупкий компромисс, который никого не удовлетворяет полностью, но предотвращает насилие.';

  @override
  String get event_religiousAwakening_title => 'Религиозное пробуждение';

  @override
  String get event_religiousAwakening_narrative =>
      'Харизматичный проповедник вовлек сотни колонистов в новое религиозное движение. Каждый цикл они собираются в смотровом куполе, их гимны эхом разносятся по вентиляционным шахтам. Некоторые члены экипажа обеспокоены фанатизмом; другие находят в учениях подлинное утешение.';

  @override
  String get event_religiousAwakening_choice0 =>
      'Примите участие в религиозном движении и предоставьте ресурсы';

  @override
  String get event_religiousAwakening_outcome0 =>
      'Движение процветает при официальной поддержке. Моральный дух верующих улучшается, а их общинный дух укрепляет социальные связи по всему кораблю.';

  @override
  String get event_religiousAwakening_choice1 =>
      'Обеспечьте строгий атеизм на борту корабля.';

  @override
  String get event_religiousAwakening_outcome1 =>
      'Религиозные собрания проводятся только в частных помещениях. Движение уходит в подполье, порождая негодование, но научный рационализм остается официальной доктриной.';

  @override
  String get event_religiousAwakening_choice2 =>
      'Разрешить поклонение, но регулировать его влияние';

  @override
  String get event_religiousAwakening_outcome2 =>
      'Вера разрешена, но отделена от управления. Для связи с командованием назначается капеллан. Непростое равновесие сохраняется.';

  @override
  String get event_corporateTakeover_title => 'Корпоративное поглощение';

  @override
  String get event_corporateTakeover_narrative =>
      'Управляющие ресурсами корабля незаметно консолидировали контроль над распределением еды, переработкой воды и распределением электроэнергии. Теперь они предлагают оформить свою власть в корпоративную структуру, которая будет управлять экономикой будущей колонии.';

  @override
  String get event_corporateTakeover_choice0 =>
      'Разрешить принципам свободного рынка управлять ресурсами';

  @override
  String get event_corporateTakeover_outcome0 =>
      'Корпоративная фракция берет на себя управление ресурсами. Эффективность резко возрастает, но цены растут, и беднейшие колонисты с трудом могут позволить себе предметы первой необходимости.';

  @override
  String get event_corporateTakeover_choice1 =>
      'Национализировать все ресурсы, находящиеся в коллективной собственности.';

  @override
  String get event_corporateTakeover_outcome1 =>
      'Ресурсы конфискуются и передаются под общественный контроль. Корпоративная фракция расформирована, но инновации останавливаются без стимулов к получению прибыли.';

  @override
  String get event_corporateTakeover_choice2 =>
      'Внедрить регулируемые рынки с помощью систем безопасности';

  @override
  String get event_corporateTakeover_outcome2 =>
      'Создается смешанная экономика с контролем цен и программами социального обеспечения. Ни одна из фракций не удовлетворена полностью, но основные потребности удовлетворяются, позволяя при этом проявить некоторую предприимчивость.';

  @override
  String get event_successionCrisis_title => 'Кризис преемственности';

  @override
  String get event_successionCrisis_narrative =>
      'Капитан корабля умер во сне, не оставив назначенного преемника. Три фракции сразу же соперничают за контроль: гражданский совет требует выборов, начальник службы безопасности претендует на военную власть, а старейшие колонисты призывают традиционные обряды лидерства.';

  @override
  String get event_successionCrisis_choice0 => 'Провести внеочередные выборы';

  @override
  String get event_successionCrisis_outcome0 =>
      'В результате хаотичных, но энергичных выборов всенародным голосованием будет выбран новый капитан. Процесс запутанный, но колонисты чувствуют ответственность за свое руководство.';

  @override
  String get event_successionCrisis_choice1 =>
      'Пусть военные возьмут на себя командование';

  @override
  String get event_successionCrisis_outcome1 =>
      'Начальник службы безопасности занимает капитанское кресло. Дисциплина немедленно восстанавливается, но гражданский экипаж с растущим беспокойством смотрит на вооруженную охрану.';

  @override
  String get event_successionCrisis_choice2 => 'Созвать совет старейшин';

  @override
  String get event_successionCrisis_outcome2 =>
      'Старшие и наиболее опытные колонисты образуют управляющий совет. Их мудрость управляет кораблем, хотя некоторые молодые члены команды чувствуют себя маргинализированными геронтократией.';

  @override
  String get event_nativeSovereignty_title => 'Родной суверенитет';

  @override
  String get event_nativeSovereignty_narrative =>
      'Сканирование на большом расстоянии подтверждает наличие разумной жизни на целевой планете. Перехваченные сообщения свидетельствуют о том, что сложная цивилизация обнаружила ваше приближение. Они передают формальное требование: признать их территориальный суверенитет или столкнуться с сопротивлением по прибытии.';

  @override
  String get event_nativeSovereignty_choice0 =>
      'Признать суверенитет коренных народов и попросить разрешения на поселение';

  @override
  String get event_nativeSovereignty_outcome0 =>
      'Вы передаете формальное признание прав коренных народов. Ответ осторожный, но положительный. Будущие отношения начнутся на основе взаимного уважения, хотя места высадки могут быть ограничены.';

  @override
  String get event_nativeSovereignty_choice1 =>
      'Утверждайте колониальное превосходство и готовьтесь к сопротивлению';

  @override
  String get event_nativeSovereignty_outcome1 =>
      'Вы все равно транслируете свое намерение договориться. Экипаж приступает к учениям по вооружению и планированию укреплений. Туземцы замолкают, что как-то страшнее угроз.';

  @override
  String get event_nativeSovereignty_choice2 =>
      'Предложить совместное управление планетой';

  @override
  String get event_nativeSovereignty_outcome2 =>
      'Вы предлагаете основу для сосуществования и совместного использования ресурсов. Туземцы заинтригованы, но насторожены. Переговоры будут сложными, но возможность мира существует.';

  @override
  String get event_laborStrike_title => 'Забастовка рабочих';

  @override
  String get event_laborStrike_narrative =>
      'Инженерная бригада уволилась с работы, требуя сокращения смен, улучшения рациона питания и права голоса при принятии навигационных решений. Критически важные системы работают с автоматическим резервным копированием, но оно не прослужит долго. Остальные колонисты нервно наблюдают.';

  @override
  String get event_laborStrike_choice0 =>
      'Полное удовлетворение требований рабочих.';

  @override
  String get event_laborStrike_outcome0 =>
      'Забастовка прекращается немедленно. Рабочие возвращаются на свои рабочие места в улучшенных условиях. Производительность немного падает, когда вступают в силу более короткие смены, но лояльность непоколебима.';

  @override
  String get event_laborStrike_choice1 =>
      'Подавить забастовку и ввести обязательный труд';

  @override
  String get event_laborStrike_outcome1 =>
      'Силы безопасности под дулом пистолета сопровождают рабочих обратно на их рабочие места. Двигатели снова гудят, но на нижних палубах кипит ненависть. Несколько рабочих заключены в помещения.';

  @override
  String get event_laborStrike_choice2 =>
      'Предложите частичный компромисс по ключевым требованиям';

  @override
  String get event_laborStrike_outcome2 =>
      'После марафонских переговоров было заключено соглашение: улучшение рационов и консультативная помощь, но без сокращения продолжительности смены. Ни одна из сторон не в восторге, но двигатели продолжают работать.';

  @override
  String get event_censorshipDebate_title => 'Дебаты о цензуре';

  @override
  String get event_censorshipDebate_narrative =>
      'Утечка документа раскрывает истинное состояние неисправных систем корабля. Паника распространяется по нижним палубам. Офицер связи предлагает ограничить доступ к информации, чтобы предотвратить дальнейшие волнения. Защитники гражданских свобод возмущены.';

  @override
  String get event_censorshipDebate_choice0 =>
      'Гарантия свободного доступа ко всей информации';

  @override
  String get event_censorshipDebate_outcome0 =>
      'Установлена ​​полная прозрачность. Первоначальная паника утихает по мере того, как колонисты объединяются, чтобы помочь решить проблемы, которые они теперь понимают. Доверие к лидерству растет, хотя некоторая информация вызывает беспокойство.';

  @override
  String get event_censorshipDebate_choice1 =>
      'Осуществить полный информационный контроль';

  @override
  String get event_censorshipDebate_outcome1 =>
      'Все сообщения теперь фильтруются через команду. Паника прекращается, ее сменяет жуткое спокойствие. Но слухи заполняют пустоту, оставленную подвергнутой цензуре правдой, и зачастую они хуже реальности.';

  @override
  String get event_censorshipDebate_choice2 =>
      'Фильтруйте только конфиденциальную информацию';

  @override
  String get event_censorshipDebate_outcome2 =>
      'Создана система классификации. Большая часть информации передается свободно, но данные военных и критически важных систем требуют проверки. Работоспособная золотая середина, которая в основном удовлетворяет.';

  @override
  String get event_colonialCharter_title => 'Колониальная хартия';

  @override
  String get event_colonialCharter_narrative =>
      'С приближением высадки на планету колонистам предстоит разработать фундаментальные законы для своего нового общества. Возникло три философских лагеря, каждый из которых отстаивает свое видение того, какой должна стать колония. Дискуссия горячая и глубоко личная.';

  @override
  String get event_colonialCharter_choice0 =>
      'Прогрессивная хартия, подчеркивающая права личности';

  @override
  String get event_colonialCharter_outcome0 =>
      'Хартия закрепляет личные свободы, равенство и социальную мобильность. Художники и мыслители празднуют; традиционалисты предупреждают, что неконтролируемая свобода ведет к хаосу.';

  @override
  String get event_colonialCharter_choice1 =>
      'Консервативная хартия, сохраняющая традиции Земли';

  @override
  String get event_colonialCharter_outcome1 =>
      'Хартия кодифицирует традиционные ценности, семейные структуры и религиозные обряды. Многие находят утешение в знакомых обычаях; другие чувствуют себя подавленными под тяжестью мышления старого мира.';

  @override
  String get event_colonialCharter_choice2 =>
      'Прагматичная хартия, ориентированная на выживание и рост';

  @override
  String get event_colonialCharter_outcome2 =>
      'Хартия отдает приоритет управлению ресурсами, техническому образованию и экономическому развитию. Ему не хватает поэзии, но он гарантирует, что колония будет эффективной и хорошо организованной.';

  @override
  String get event_separatistMovement_title => 'Сепаратистское движение';

  @override
  String get event_separatistMovement_narrative =>
      'Фракция колонистов провозгласила независимость от управления кораблями. Они забаррикадировались в кормовой части, требуя права основать собственное поселение после приземления. Они контролируют 15% запасов продовольствия корабля и резервную навигационную систему.';

  @override
  String get event_separatistMovement_choice0 =>
      'Предоставить региональную автономию в рамках федерации';

  @override
  String get event_separatistMovement_outcome0 =>
      'Сепаратисты соглашаются на сделку: собственный округ с местным самоуправлением под свободной федеральной защитой. Прецедент фрагментации беспокоит некоторых, но мир сохраняется.';

  @override
  String get event_separatistMovement_choice1 =>
      'Штурмуйте баррикады и обеспечьте воссоединение сил';

  @override
  String get event_separatistMovement_outcome1 =>
      'Группы безопасности проникают в кормовую часть. Сепаратисты оказывают яростное сопротивление. Порядок восстановлен, но ужасной ценой. Корабль един телом, если не духом.';

  @override
  String get event_separatistMovement_choice2 =>
      'Устраните коренные обиды, движущие движением';

  @override
  String get event_separatistMovement_outcome2 =>
      'Посредники работают над тем, чтобы понять, что оттолкнуло фракцию. Реформы в распределении и представительстве ресурсов постепенно возвращают сепаратистов в свои ряды. Исцеление требует времени.';

  @override
  String get event_warCouncil_title => 'Военный совет';

  @override
  String get event_warCouncil_narrative =>
      'При обнаружении потенциальных угроз в близлежащих системах руководство корабля созывает военный совет. Вопрос: какую часть ограниченных ресурсов колонии следует направить на военную подготовку, а какую на гражданскую инфраструктуру?';

  @override
  String get event_warCouncil_choice0 =>
      'Полное вооружение: куйте оружие и обучайте солдат';

  @override
  String get event_warCouncil_outcome0 =>
      'Цеха переоборудованы под производство оружия. Каждый трудоспособный колонист проходит боевую подготовку. Корабль изобилует вооружением, но бюджет на сельхозтехнику сокращается.';

  @override
  String get event_warCouncil_choice1 =>
      'Разоружение: превратить оружие в инструменты';

  @override
  String get event_warCouncil_outcome1 =>
      'Арсенал опустошается, а его содержимое перерабатывается в строительные материалы. Колония будет строиться оралами, а не мечами. Пацифисты ликуют; Реалистов беспокоит то, что скрывается в темноте.';

  @override
  String get event_warCouncil_choice2 =>
      'Только защитная поза: щиты и стены, а не мечи.';

  @override
  String get event_warCouncil_outcome2 =>
      'Ресурсы идут на укрепления, щиты и системы раннего предупреждения. Никакого наступательного оружия не производится. Сбалансированный подход, который оставляет варианты открытыми, не провоцируя потенциальных соседей.';

  @override
  String get event_tradeFederation_title => 'Торговая Федерация';

  @override
  String get event_tradeFederation_narrative =>
      'По мере того как колония приближается к жизнеспособности, фракции обсуждают, как структурировать ее экономику. Вопрос выходит за рамки простого выживания — он определит тип общества, которое укоренится на чужой почве. Купцы, коммунисты и бюрократы – все отстаивают свои интересы.';

  @override
  String get event_tradeFederation_choice0 =>
      'Создать зоны свободной торговли с минимальным регулированием';

  @override
  String get event_tradeFederation_outcome0 =>
      'Рынки возникают в каждом модуле среды обитания. Инновации процветают по мере конкуренции торговцев. Неравенство в богатстве растет, но вместе с ним растет и общий объем ресурсов, доступных колонии.';

  @override
  String get event_tradeFederation_choice1 =>
      'Внедрить совместное использование всех ресурсов.';

  @override
  String get event_tradeFederation_outcome1 =>
      'Частная собственность отменена. Все принадлежит всем. Никто не голодает, но ни у кого нет стимула производить больше минимума. Посредственность — это удобно.';

  @override
  String get event_tradeFederation_choice2 =>
      'Создать управляемую государством торговую систему';

  @override
  String get event_tradeFederation_outcome2 =>
      'Правительство контролирует всю торговлю, устанавливая цены и распределяя ресурсы. Система справедливая, но негибкая. В коридорах технического обслуживания возникают черные рынки.';

  @override
  String get event_faithVsScience_title => 'Вера против науки';

  @override
  String get event_faithVsScience_narrative =>
      'Корабельный телескоп запечатлел изображения космического явления, которое прямо противоречит центральному принципу доминирующего религиозного движения. Главный учёный хочет опубликовать результаты; Религиозный лидер настаивает, что они разорвут общину на части.';

  @override
  String get event_faithVsScience_choice0 =>
      'Опубликовать научные результаты полностью';

  @override
  String get event_faithVsScience_outcome0 =>
      'Правда преобладает над комфортом. Данные публикуются, и религиозное движение распадается. Некоторые верующие адаптируют свою веру; другие полностью теряют его. Знания продвигаются.';

  @override
  String get event_faithVsScience_choice1 =>
      'Подавить выводы, чтобы сохранить социальную гармонию';

  @override
  String get event_faithVsScience_outcome1 =>
      'Данные засекречены. Религиозное сообщество остается стабильным, но научная группа деморализована. Отложенная истина не является отрицанием истины, но такое ощущение, что это так.';

  @override
  String get event_faithVsScience_choice2 =>
      'Созвать совместную комиссию, чтобы найти гармонию между обеими точками зрения.';

  @override
  String get event_faithVsScience_outcome2 =>
      'Ученые и теологи работают вместе, чтобы по-новому интерпретировать результаты. Возникает новый синтез, расширяющий и понимание, и веру. Не все в этом убеждены, но диалог здоровый.';

  @override
  String get event_surveillanceState_title => 'Состояние наблюдения';

  @override
  String get event_surveillanceState_narrative =>
      'После серии диверсий начальник службы безопасности предлагает установить системы мониторинга в каждом отсеке корабля. Камеры, микрофоны и биометрические сканеры будут отслеживать перемещения каждого колониста. Защитники конфиденциальности в ужасе.';

  @override
  String get event_surveillanceState_choice0 =>
      'Полностью отклонить предложение о слежке';

  @override
  String get event_surveillanceState_outcome0 =>
      'Конфиденциальность сохраняется. Диверсант остается на свободе, но колонисты спят легче, зная, что за ними не следят. Расследование продолжается традиционными методами.';

  @override
  String get event_surveillanceState_choice1 =>
      'Осуществить полное наблюдение по всему кораблю';

  @override
  String get event_surveillanceState_outcome1 =>
      'Каждый уголок корабля находится под наблюдением. Диверсанта поймали в считанные дни. Но камеры остались, и начальник службы безопасности не проявляет никакого интереса к их отключению. Всегда.';

  @override
  String get event_surveillanceState_choice2 =>
      'Установите ограниченный мониторинг только в критических зонах.';

  @override
  String get event_surveillanceState_outcome2 =>
      'Камеры охватывают машинное отделение, арсенал и мостик. Жилые помещения остаются частными. Диверсант в конечном итоге выявляется посредством анализа закономерностей. Взвешенный ответ.';

  @override
  String get event_nativeAlliance_title => 'Родной Альянс';

  @override
  String get event_nativeAlliance_narrative =>
      'Местная цивилизация предложила официальный договор. Их посол прибывает на шаттле, элегантное существо, говорящее с помощью удивительно сложного устройства-переводчика. Они предлагают три формы отношений, каждая из которых имеет разные последствия для будущего колонии.';

  @override
  String get event_nativeAlliance_choice0 =>
      'Подпишите договор о равноправном союзе';

  @override
  String get event_nativeAlliance_outcome0 =>
      'Договор устанавливает взаимную оборону, совместные исследования и равные территориальные права. Обе цивилизации будут расти вместе. Туземцы делятся сельскохозяйственными знаниями, которые меняют перспективы вашей колонии.';

  @override
  String get event_nativeAlliance_choice1 =>
      'Ведите переговоры с позиции колониального доминирования';

  @override
  String get event_nativeAlliance_outcome1 =>
      'Вы используете свои передовые технологии для обеспечения выгодных условий. Туземцы уступают территории и ресурсы. Они подписывают трясущимися руками. История уже сталкивалась с подобным, и это редко заканчивается хорошо.';

  @override
  String get event_nativeAlliance_choice2 =>
      'Установить торговое партнерство, ориентированное на взаимную выгоду';

  @override
  String get event_nativeAlliance_outcome2 =>
      'Коммерция устраняет разрыв между видами. Родные материалы поступают в ваши мастерские; ваша технология улучшает их медицину. Дружба растет из взаимной выгоды.';
}
