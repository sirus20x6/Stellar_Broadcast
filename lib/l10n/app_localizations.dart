import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @ui_title_stellar.
  ///
  /// In en, this message translates to:
  /// **'STELLAR'**
  String get ui_title_stellar;

  /// No description provided for @ui_title_broadcast.
  ///
  /// In en, this message translates to:
  /// **'BROADCAST'**
  String get ui_title_broadcast;

  /// No description provided for @ui_title_beginVoyage.
  ///
  /// In en, this message translates to:
  /// **'BEGIN VOYAGE'**
  String get ui_title_beginVoyage;

  /// No description provided for @ui_title_dailyVoyage.
  ///
  /// In en, this message translates to:
  /// **'DAILY VOYAGE'**
  String get ui_title_dailyVoyage;

  /// No description provided for @ui_title_dailyCompleted.
  ///
  /// In en, this message translates to:
  /// **'DAILY COMPLETED'**
  String get ui_title_dailyCompleted;

  /// No description provided for @ui_title_customSeed.
  ///
  /// In en, this message translates to:
  /// **'CUSTOM SEED'**
  String get ui_title_customSeed;

  /// No description provided for @ui_title_legacyHub.
  ///
  /// In en, this message translates to:
  /// **'LEGACY HUB'**
  String get ui_title_legacyHub;

  /// No description provided for @ui_title_cancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get ui_title_cancel;

  /// No description provided for @ui_title_startVoyage.
  ///
  /// In en, this message translates to:
  /// **'START VOYAGE'**
  String get ui_title_startVoyage;

  /// No description provided for @ui_title_seedInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid seed code. Use only A–Z and 0–9.'**
  String get ui_title_seedInvalid;

  /// No description provided for @ui_voyage_sector.
  ///
  /// In en, this message translates to:
  /// **'SEC {count}'**
  String ui_voyage_sector(int count);

  /// No description provided for @ui_voyage_seed.
  ///
  /// In en, this message translates to:
  /// **'SEED: {code}'**
  String ui_voyage_seed(String code);

  /// No description provided for @ui_voyage_scanners.
  ///
  /// In en, this message translates to:
  /// **'SCANNERS'**
  String get ui_voyage_scanners;

  /// No description provided for @ui_voyage_scanPlanet.
  ///
  /// In en, this message translates to:
  /// **'SCAN PLANET'**
  String get ui_voyage_scanPlanet;

  /// No description provided for @ui_voyage_noEnergy.
  ///
  /// In en, this message translates to:
  /// **'NO ENERGY'**
  String get ui_voyage_noEnergy;

  /// No description provided for @ui_voyage_pressOn.
  ///
  /// In en, this message translates to:
  /// **'PRESS ON'**
  String get ui_voyage_pressOn;

  /// No description provided for @ui_voyage_systemHull.
  ///
  /// In en, this message translates to:
  /// **'Hull'**
  String get ui_voyage_systemHull;

  /// No description provided for @ui_voyage_systemNav.
  ///
  /// In en, this message translates to:
  /// **'Nav'**
  String get ui_voyage_systemNav;

  /// No description provided for @ui_voyage_systemCryopods.
  ///
  /// In en, this message translates to:
  /// **'Cryopods'**
  String get ui_voyage_systemCryopods;

  /// No description provided for @ui_voyage_systemCulture.
  ///
  /// In en, this message translates to:
  /// **'Culture'**
  String get ui_voyage_systemCulture;

  /// No description provided for @ui_voyage_systemTech.
  ///
  /// In en, this message translates to:
  /// **'Tech'**
  String get ui_voyage_systemTech;

  /// No description provided for @ui_voyage_systemConstruct.
  ///
  /// In en, this message translates to:
  /// **'Construct'**
  String get ui_voyage_systemConstruct;

  /// No description provided for @ui_voyage_systemShields.
  ///
  /// In en, this message translates to:
  /// **'Shields'**
  String get ui_voyage_systemShields;

  /// No description provided for @ui_voyage_systemLanding.
  ///
  /// In en, this message translates to:
  /// **'Landing'**
  String get ui_voyage_systemLanding;

  /// No description provided for @ui_voyage_scannerAtmo.
  ///
  /// In en, this message translates to:
  /// **'Atmosphere'**
  String get ui_voyage_scannerAtmo;

  /// No description provided for @ui_voyage_scannerGrav.
  ///
  /// In en, this message translates to:
  /// **'Gravity'**
  String get ui_voyage_scannerGrav;

  /// No description provided for @ui_voyage_scannerMineral.
  ///
  /// In en, this message translates to:
  /// **'Minerals'**
  String get ui_voyage_scannerMineral;

  /// No description provided for @ui_voyage_scannerLife.
  ///
  /// In en, this message translates to:
  /// **'Life Signs'**
  String get ui_voyage_scannerLife;

  /// No description provided for @ui_voyage_scannerTemp.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get ui_voyage_scannerTemp;

  /// No description provided for @ui_voyage_scannerWater.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get ui_voyage_scannerWater;

  /// No description provided for @ui_voyage_narrative0.
  ///
  /// In en, this message translates to:
  /// **'Earth orbit clear. Cryopods stable. Archive ring secure.'**
  String get ui_voyage_narrative0;

  /// No description provided for @ui_voyage_narrative1.
  ///
  /// In en, this message translates to:
  /// **'Outer-system transit nominal. Long-range scanners widening search.'**
  String get ui_voyage_narrative1;

  /// No description provided for @ui_voyage_narrative2.
  ///
  /// In en, this message translates to:
  /// **'Earthside traffic has faded below detection threshold.'**
  String get ui_voyage_narrative2;

  /// No description provided for @ui_voyage_narrativeFlaggedSystem.
  ///
  /// In en, this message translates to:
  /// **'Archived coordinates match a flagged system. Adjusting course.'**
  String get ui_voyage_narrativeFlaggedSystem;

  /// No description provided for @ui_voyage_narrativeCalibrating.
  ///
  /// In en, this message translates to:
  /// **'Scanner arrays still calibrating for deep-space resolution.'**
  String get ui_voyage_narrativeCalibrating;

  /// No description provided for @ui_voyage_narrativeMarkedSystem.
  ///
  /// In en, this message translates to:
  /// **'Marked system ahead. Prior survey data remains consistent.'**
  String get ui_voyage_narrativeMarkedSystem;

  /// No description provided for @ui_voyage_narrativePhrase0.
  ///
  /// In en, this message translates to:
  /// **'Faint signal ahead. Beginning planetary sweep.'**
  String get ui_voyage_narrativePhrase0;

  /// No description provided for @ui_voyage_narrativePhrase1.
  ///
  /// In en, this message translates to:
  /// **'FTL exit complete. Fresh star system in view.'**
  String get ui_voyage_narrativePhrase1;

  /// No description provided for @ui_voyage_narrativePhrase2.
  ///
  /// In en, this message translates to:
  /// **'Cryopod banks stable. Sector scan in progress.'**
  String get ui_voyage_narrativePhrase2;

  /// No description provided for @ui_voyage_narrativePhrase3.
  ///
  /// In en, this message translates to:
  /// **'New planet resolving in the forward array.'**
  String get ui_voyage_narrativePhrase3;

  /// No description provided for @ui_voyage_narrativePhrase4.
  ///
  /// In en, this message translates to:
  /// **'Stellar cartography flags a viable candidate.'**
  String get ui_voyage_narrativePhrase4;

  /// No description provided for @ui_voyage_narrativePhrase5.
  ///
  /// In en, this message translates to:
  /// **'Instruments have found another world worth measuring.'**
  String get ui_voyage_narrativePhrase5;

  /// No description provided for @ui_voyage_narrativePhrase6.
  ///
  /// In en, this message translates to:
  /// **'Scanner lock acquired on a new target.'**
  String get ui_voyage_narrativePhrase6;

  /// No description provided for @ui_voyage_narrativePhrase7.
  ///
  /// In en, this message translates to:
  /// **'Navigation charts refreshed. Candidate world within range.'**
  String get ui_voyage_narrativePhrase7;

  /// No description provided for @ui_scan_landHere.
  ///
  /// In en, this message translates to:
  /// **'LAND HERE'**
  String get ui_scan_landHere;

  /// No description provided for @ui_scan_pressOn.
  ///
  /// In en, this message translates to:
  /// **'PRESS ON'**
  String get ui_scan_pressOn;

  /// No description provided for @ui_scan_allStatsVerified.
  ///
  /// In en, this message translates to:
  /// **'ALL STATS VERIFIED'**
  String get ui_scan_allStatsVerified;

  /// No description provided for @ui_scan_launchProbe.
  ///
  /// In en, this message translates to:
  /// **'LAUNCH PROBE'**
  String get ui_scan_launchProbe;

  /// No description provided for @ui_scan_habitability.
  ///
  /// In en, this message translates to:
  /// **'HABITABILITY'**
  String get ui_scan_habitability;

  /// No description provided for @ui_scan_statAtmos.
  ///
  /// In en, this message translates to:
  /// **'ATMOS'**
  String get ui_scan_statAtmos;

  /// No description provided for @ui_scan_statTemp.
  ///
  /// In en, this message translates to:
  /// **'TEMP'**
  String get ui_scan_statTemp;

  /// No description provided for @ui_scan_statWater.
  ///
  /// In en, this message translates to:
  /// **'WATER'**
  String get ui_scan_statWater;

  /// No description provided for @ui_scan_statResource.
  ///
  /// In en, this message translates to:
  /// **'RESOURCE'**
  String get ui_scan_statResource;

  /// No description provided for @ui_scan_statGravity.
  ///
  /// In en, this message translates to:
  /// **'GRAVITY'**
  String get ui_scan_statGravity;

  /// No description provided for @ui_scan_statBio.
  ///
  /// In en, this message translates to:
  /// **'BIO'**
  String get ui_scan_statBio;

  /// No description provided for @ui_scan_statAnomaly.
  ///
  /// In en, this message translates to:
  /// **'ANOMALY'**
  String get ui_scan_statAnomaly;

  /// No description provided for @ui_scan_statRadiation.
  ///
  /// In en, this message translates to:
  /// **'RADIATION'**
  String get ui_scan_statRadiation;

  /// No description provided for @ui_scan_probesCount.
  ///
  /// In en, this message translates to:
  /// **'PROBES: {count}'**
  String ui_scan_probesCount(int count);

  /// No description provided for @ui_scan_uncertaintyPct.
  ///
  /// In en, this message translates to:
  /// **'UNCERTAINTY: ±{percent}%'**
  String ui_scan_uncertaintyPct(int percent);

  /// No description provided for @ui_landing_planetAnalysis.
  ///
  /// In en, this message translates to:
  /// **'PLANET ANALYSIS'**
  String get ui_landing_planetAnalysis;

  /// No description provided for @ui_landing_shipStatus.
  ///
  /// In en, this message translates to:
  /// **'SHIP STATUS'**
  String get ui_landing_shipStatus;

  /// No description provided for @ui_landing_fuel.
  ///
  /// In en, this message translates to:
  /// **'FUEL: {amount}'**
  String ui_landing_fuel(int amount);

  /// No description provided for @ui_landing_lowFuelWarning.
  ///
  /// In en, this message translates to:
  /// **'LOW FUEL WARNING'**
  String get ui_landing_lowFuelWarning;

  /// No description provided for @ui_landing_landingRiskCritical.
  ///
  /// In en, this message translates to:
  /// **'LANDING RISK: CRITICAL'**
  String get ui_landing_landingRiskCritical;

  /// No description provided for @ui_landing_landingRiskElevated.
  ///
  /// In en, this message translates to:
  /// **'LANDING RISK: ELEVATED'**
  String get ui_landing_landingRiskElevated;

  /// No description provided for @ui_landing_landingRiskCriticalDesc.
  ///
  /// In en, this message translates to:
  /// **'Landing system severely damaged. Atmospheric entry may destroy cargo and colonists.'**
  String get ui_landing_landingRiskCriticalDesc;

  /// No description provided for @ui_landing_landingRiskElevatedDesc.
  ///
  /// In en, this message translates to:
  /// **'Landing system degraded. Expect rough atmospheric entry with possible system damage.'**
  String get ui_landing_landingRiskElevatedDesc;

  /// No description provided for @ui_landing_riskAssessment.
  ///
  /// In en, this message translates to:
  /// **'RISK ASSESSMENT'**
  String get ui_landing_riskAssessment;

  /// No description provided for @ui_landing_encountersRemaining.
  ///
  /// In en, this message translates to:
  /// **'Your ship can sustain ~{remaining} more encounters'**
  String ui_landing_encountersRemaining(int remaining);

  /// No description provided for @ui_landing_shipMayNotSurvive.
  ///
  /// In en, this message translates to:
  /// **'Your ship may not survive another voyage'**
  String get ui_landing_shipMayNotSurvive;

  /// No description provided for @ui_landing_surfaceFeatures.
  ///
  /// In en, this message translates to:
  /// **'SURFACE FEATURES'**
  String get ui_landing_surfaceFeatures;

  /// No description provided for @ui_landing_nameYourColony.
  ///
  /// In en, this message translates to:
  /// **'NAME YOUR COLONY'**
  String get ui_landing_nameYourColony;

  /// No description provided for @ui_landing_establishColony.
  ///
  /// In en, this message translates to:
  /// **'ESTABLISH COLONY'**
  String get ui_landing_establishColony;

  /// No description provided for @ui_landing_pressOnward.
  ///
  /// In en, this message translates to:
  /// **'PRESS ONWARD'**
  String get ui_landing_pressOnward;

  /// No description provided for @ui_landing_statAtmosphere.
  ///
  /// In en, this message translates to:
  /// **'Atmosphere'**
  String get ui_landing_statAtmosphere;

  /// No description provided for @ui_landing_statTemperature.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get ui_landing_statTemperature;

  /// No description provided for @ui_landing_statWater.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get ui_landing_statWater;

  /// No description provided for @ui_landing_statResources.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get ui_landing_statResources;

  /// No description provided for @ui_landing_statGravity.
  ///
  /// In en, this message translates to:
  /// **'Gravity'**
  String get ui_landing_statGravity;

  /// No description provided for @ui_landing_statBiodiversity.
  ///
  /// In en, this message translates to:
  /// **'Biodiversity'**
  String get ui_landing_statBiodiversity;

  /// No description provided for @ui_landing_statAvgHealth.
  ///
  /// In en, this message translates to:
  /// **'Avg Health'**
  String get ui_landing_statAvgHealth;

  /// No description provided for @ui_landing_statHull.
  ///
  /// In en, this message translates to:
  /// **'Hull'**
  String get ui_landing_statHull;

  /// No description provided for @ui_landing_statNavigation.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get ui_landing_statNavigation;

  /// No description provided for @ui_landing_statCryopods.
  ///
  /// In en, this message translates to:
  /// **'Cryopods'**
  String get ui_landing_statCryopods;

  /// No description provided for @ui_landing_statCulture.
  ///
  /// In en, this message translates to:
  /// **'Culture'**
  String get ui_landing_statCulture;

  /// No description provided for @ui_landing_statTech.
  ///
  /// In en, this message translates to:
  /// **'Tech'**
  String get ui_landing_statTech;

  /// No description provided for @ui_landing_statConstructors.
  ///
  /// In en, this message translates to:
  /// **'Constructors'**
  String get ui_landing_statConstructors;

  /// No description provided for @ui_landing_statShields.
  ///
  /// In en, this message translates to:
  /// **'Shields'**
  String get ui_landing_statShields;

  /// No description provided for @ui_landing_statLandingSys.
  ///
  /// In en, this message translates to:
  /// **'Landing Sys'**
  String get ui_landing_statLandingSys;

  /// No description provided for @ui_ending_colonyEstablished.
  ///
  /// In en, this message translates to:
  /// **'COLONY ESTABLISHED'**
  String get ui_ending_colonyEstablished;

  /// No description provided for @ui_ending_colonyScore.
  ///
  /// In en, this message translates to:
  /// **'COLONY SCORE'**
  String get ui_ending_colonyScore;

  /// No description provided for @ui_ending_colonyProfile.
  ///
  /// In en, this message translates to:
  /// **'COLONY PROFILE'**
  String get ui_ending_colonyProfile;

  /// No description provided for @ui_ending_landscape.
  ///
  /// In en, this message translates to:
  /// **'LANDSCAPE'**
  String get ui_ending_landscape;

  /// No description provided for @ui_ending_voyageRecord.
  ///
  /// In en, this message translates to:
  /// **'VOYAGE RECORD'**
  String get ui_ending_voyageRecord;

  /// No description provided for @ui_ending_scoreBreakdown.
  ///
  /// In en, this message translates to:
  /// **'SCORE BREAKDOWN'**
  String get ui_ending_scoreBreakdown;

  /// No description provided for @ui_ending_total.
  ///
  /// In en, this message translates to:
  /// **'TOTAL'**
  String get ui_ending_total;

  /// No description provided for @ui_ending_achievementsUnlocked.
  ///
  /// In en, this message translates to:
  /// **'ACHIEVEMENTS UNLOCKED'**
  String get ui_ending_achievementsUnlocked;

  /// No description provided for @ui_ending_challengeFriend.
  ///
  /// In en, this message translates to:
  /// **'CHALLENGE FRIEND'**
  String get ui_ending_challengeFriend;

  /// No description provided for @ui_ending_shareCard.
  ///
  /// In en, this message translates to:
  /// **'SHARE CARD'**
  String get ui_ending_shareCard;

  /// No description provided for @ui_ending_shareCardDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Share Your Voyage'**
  String get ui_ending_shareCardDialogTitle;

  /// No description provided for @ui_ending_shareCardShare.
  ///
  /// In en, this message translates to:
  /// **'SHARE'**
  String get ui_ending_shareCardShare;

  /// No description provided for @ui_ending_shareCardCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get ui_ending_shareCardCancel;

  /// No description provided for @ui_ending_copySeed.
  ///
  /// In en, this message translates to:
  /// **'COPY SEED'**
  String get ui_ending_copySeed;

  /// No description provided for @ui_ending_viewLegacy.
  ///
  /// In en, this message translates to:
  /// **'VIEW LEGACY'**
  String get ui_ending_viewLegacy;

  /// No description provided for @ui_ending_newVoyage.
  ///
  /// In en, this message translates to:
  /// **'NEW VOYAGE'**
  String get ui_ending_newVoyage;

  /// No description provided for @ui_ending_achievementFirstLanding.
  ///
  /// In en, this message translates to:
  /// **'First Landing'**
  String get ui_ending_achievementFirstLanding;

  /// No description provided for @ui_ending_achievementGoldenAge.
  ///
  /// In en, this message translates to:
  /// **'Golden Age'**
  String get ui_ending_achievementGoldenAge;

  /// No description provided for @ui_ending_achievementSurvivor.
  ///
  /// In en, this message translates to:
  /// **'Survivor'**
  String get ui_ending_achievementSurvivor;

  /// No description provided for @ui_ending_achievementExplorer.
  ///
  /// In en, this message translates to:
  /// **'Explorer'**
  String get ui_ending_achievementExplorer;

  /// No description provided for @ui_ending_achievementPerfectionist.
  ///
  /// In en, this message translates to:
  /// **'Perfectionist'**
  String get ui_ending_achievementPerfectionist;

  /// No description provided for @ui_ending_achievementDeathWorldSurvivor.
  ///
  /// In en, this message translates to:
  /// **'Death World Survivor'**
  String get ui_ending_achievementDeathWorldSurvivor;

  /// No description provided for @ui_ending_achievementFullCrew.
  ///
  /// In en, this message translates to:
  /// **'Full Crew'**
  String get ui_ending_achievementFullCrew;

  /// No description provided for @ui_ending_achievementProbeMaster.
  ///
  /// In en, this message translates to:
  /// **'Probe Master'**
  String get ui_ending_achievementProbeMaster;

  /// No description provided for @ui_ending_achievementIronHull.
  ///
  /// In en, this message translates to:
  /// **'Iron Hull'**
  String get ui_ending_achievementIronHull;

  /// No description provided for @ui_ending_achievementLeapOfFaith.
  ///
  /// In en, this message translates to:
  /// **'Leap of Faith'**
  String get ui_ending_achievementLeapOfFaith;

  /// No description provided for @ui_gameOver_missionFailed.
  ///
  /// In en, this message translates to:
  /// **'MISSION FAILED'**
  String get ui_gameOver_missionFailed;

  /// No description provided for @ui_gameOver_voyageRecord.
  ///
  /// In en, this message translates to:
  /// **'VOYAGE RECORD'**
  String get ui_gameOver_voyageRecord;

  /// No description provided for @ui_gameOver_encountersSurvived.
  ///
  /// In en, this message translates to:
  /// **'ENCOUNTERS SURVIVED'**
  String get ui_gameOver_encountersSurvived;

  /// No description provided for @ui_gameOver_probesRemaining.
  ///
  /// In en, this message translates to:
  /// **'PROBES REMAINING'**
  String get ui_gameOver_probesRemaining;

  /// No description provided for @ui_gameOver_colonistsRemaining.
  ///
  /// In en, this message translates to:
  /// **'COLONISTS REMAINING'**
  String get ui_gameOver_colonistsRemaining;

  /// No description provided for @ui_gameOver_finalShipHealth.
  ///
  /// In en, this message translates to:
  /// **'FINAL SHIP HEALTH'**
  String get ui_gameOver_finalShipHealth;

  /// No description provided for @ui_gameOver_planetsSkipped.
  ///
  /// In en, this message translates to:
  /// **'PLANETS SKIPPED'**
  String get ui_gameOver_planetsSkipped;

  /// No description provided for @ui_gameOver_damageTaken.
  ///
  /// In en, this message translates to:
  /// **'DAMAGE TAKEN'**
  String get ui_gameOver_damageTaken;

  /// No description provided for @ui_gameOver_fuelRemaining.
  ///
  /// In en, this message translates to:
  /// **'FUEL REMAINING'**
  String get ui_gameOver_fuelRemaining;

  /// No description provided for @ui_gameOver_energyRemaining.
  ///
  /// In en, this message translates to:
  /// **'ENERGY REMAINING'**
  String get ui_gameOver_energyRemaining;

  /// No description provided for @ui_gameOver_challengeFriend.
  ///
  /// In en, this message translates to:
  /// **'CHALLENGE FRIEND'**
  String get ui_gameOver_challengeFriend;

  /// No description provided for @ui_gameOver_viewLegacy.
  ///
  /// In en, this message translates to:
  /// **'VIEW LEGACY'**
  String get ui_gameOver_viewLegacy;

  /// No description provided for @ui_gameOver_newVoyage.
  ///
  /// In en, this message translates to:
  /// **'NEW VOYAGE'**
  String get ui_gameOver_newVoyage;

  /// No description provided for @ui_gameOver_shareText.
  ///
  /// In en, this message translates to:
  /// **'🚀 STELLAR BROADCAST\n\nI didn\'t survive... {reason}.\nThink you can do better on the same voyage?\nstellarbroadcast://play?seed={seedCode}\n\nDon\'t have the app?\nhttps://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast'**
  String ui_gameOver_shareText(String reason, String seedCode);

  /// No description provided for @ui_gameOver_epilogueColonists.
  ///
  /// In en, this message translates to:
  /// **'The last colonist died in cryosleep — a cascade failure no emergency protocol could prevent. The Exodus sailed on, a ghost ship carrying only automated systems and frozen silence. Its mission had failed not in a moment of catastrophe, but in the slow attrition of human lives, one by one, until none remained.'**
  String get ui_gameOver_epilogueColonists;

  /// No description provided for @ui_gameOver_epilogueHull.
  ///
  /// In en, this message translates to:
  /// **'The hull gave way in silence — metal fatigue compounded by countless micro-impacts until the ship could hold together no longer. Atmosphere bled into the void. The colony ship Exodus broke apart, its wreckage joining the ancient debris fields between the stars. No distress signal was ever received.'**
  String get ui_gameOver_epilogueHull;

  /// No description provided for @ui_gameOver_epilogueNav.
  ///
  /// In en, this message translates to:
  /// **'Without navigation, the Exodus drifted into uncharted space — star charts useless, course corrections impossible. The ship sailed on through the dark, its sleeping passengers unaware that their destination had been replaced by eternity. Some say the ship still drifts, a ghost vessel in the endless night.'**
  String get ui_gameOver_epilogueNav;

  /// No description provided for @ui_gameOver_epilogueCryopod.
  ///
  /// In en, this message translates to:
  /// **'One by one, the cryopods failed — a cascade that no emergency protocol could halt. The colonists never woke. The Exodus continued on its programmed course, a tomb ship carrying only silence to whatever world it would eventually reach. A monument to a dream that died in frozen sleep.'**
  String get ui_gameOver_epilogueCryopod;

  /// No description provided for @ui_gameOver_epilogueDefault.
  ///
  /// In en, this message translates to:
  /// **'The Exodus fell silent. Its mission, its crew, its cargo of human hope — all lost to the indifferent vastness between the stars. Perhaps someday another civilization will find the wreckage and wonder what brave species dared to cross the void.'**
  String get ui_gameOver_epilogueDefault;

  /// No description provided for @ui_settings_title.
  ///
  /// In en, this message translates to:
  /// **'SETTINGS'**
  String get ui_settings_title;

  /// No description provided for @ui_settings_music.
  ///
  /// In en, this message translates to:
  /// **'MUSIC'**
  String get ui_settings_music;

  /// No description provided for @ui_settings_soundEffects.
  ///
  /// In en, this message translates to:
  /// **'SOUND EFFECTS'**
  String get ui_settings_soundEffects;

  /// No description provided for @ui_settings_haptics.
  ///
  /// In en, this message translates to:
  /// **'HAPTICS'**
  String get ui_settings_haptics;

  /// No description provided for @ui_settings_premium.
  ///
  /// In en, this message translates to:
  /// **'PREMIUM'**
  String get ui_settings_premium;

  /// No description provided for @ui_settings_goPremium.
  ///
  /// In en, this message translates to:
  /// **'Go Premium'**
  String get ui_settings_goPremium;

  /// No description provided for @ui_settings_enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get ui_settings_enabled;

  /// No description provided for @ui_settings_volume.
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get ui_settings_volume;

  /// No description provided for @ui_settings_language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get ui_settings_language;

  /// No description provided for @ui_settings_systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get ui_settings_systemDefault;

  /// No description provided for @ui_settings_statsPosition.
  ///
  /// In en, this message translates to:
  /// **'Stats & buttons position'**
  String get ui_settings_statsPosition;

  /// No description provided for @ui_settings_statsLeft.
  ///
  /// In en, this message translates to:
  /// **'LEFT'**
  String get ui_settings_statsLeft;

  /// No description provided for @ui_settings_statsRight.
  ///
  /// In en, this message translates to:
  /// **'RIGHT'**
  String get ui_settings_statsRight;

  /// No description provided for @ui_legacy_title.
  ///
  /// In en, this message translates to:
  /// **'LEGACY HUB'**
  String get ui_legacy_title;

  /// No description provided for @ui_legacy_commanderStats.
  ///
  /// In en, this message translates to:
  /// **'COMMANDER STATS'**
  String get ui_legacy_commanderStats;

  /// No description provided for @ui_legacy_highScores.
  ///
  /// In en, this message translates to:
  /// **'HIGH SCORES'**
  String get ui_legacy_highScores;

  /// No description provided for @ui_legacy_upgrades.
  ///
  /// In en, this message translates to:
  /// **'UPGRADES'**
  String get ui_legacy_upgrades;

  /// No description provided for @ui_legacy_achievements.
  ///
  /// In en, this message translates to:
  /// **'ACHIEVEMENTS'**
  String get ui_legacy_achievements;

  /// No description provided for @ui_legacy_voyageLog.
  ///
  /// In en, this message translates to:
  /// **'VOYAGE LOG'**
  String get ui_legacy_voyageLog;

  /// No description provided for @ui_legacy_voyages.
  ///
  /// In en, this message translates to:
  /// **'VOYAGES'**
  String get ui_legacy_voyages;

  /// No description provided for @ui_legacy_bestScore.
  ///
  /// In en, this message translates to:
  /// **'BEST SCORE'**
  String get ui_legacy_bestScore;

  /// No description provided for @ui_legacy_legacyPts.
  ///
  /// In en, this message translates to:
  /// **'LEGACY PTS'**
  String get ui_legacy_legacyPts;

  /// No description provided for @ui_legacy_completed.
  ///
  /// In en, this message translates to:
  /// **'COMPLETED'**
  String get ui_legacy_completed;

  /// No description provided for @ui_legacy_notYetPlayed.
  ///
  /// In en, this message translates to:
  /// **'NOT YET PLAYED'**
  String get ui_legacy_notYetPlayed;

  /// No description provided for @ui_legacy_dailyHistory.
  ///
  /// In en, this message translates to:
  /// **'DAILY HISTORY'**
  String get ui_legacy_dailyHistory;

  /// No description provided for @ui_premium_goPremium.
  ///
  /// In en, this message translates to:
  /// **'GO PREMIUM'**
  String get ui_premium_goPremium;

  /// No description provided for @ui_premium_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Support the mission. Upgrade your command.'**
  String get ui_premium_subtitle;

  /// No description provided for @ui_premium_removeAds.
  ///
  /// In en, this message translates to:
  /// **'Remove all ads forever'**
  String get ui_premium_removeAds;

  /// No description provided for @ui_premium_supportIndie.
  ///
  /// In en, this message translates to:
  /// **'Support indie development'**
  String get ui_premium_supportIndie;

  /// No description provided for @ui_premium_exclusiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Exclusive commander title'**
  String get ui_premium_exclusiveTitle;

  /// No description provided for @ui_premium_priorityFeatures.
  ///
  /// In en, this message translates to:
  /// **'Priority feature requests'**
  String get ui_premium_priorityFeatures;

  /// No description provided for @ui_premium_lifetime.
  ///
  /// In en, this message translates to:
  /// **'Lifetime'**
  String get ui_premium_lifetime;

  /// No description provided for @ui_premium_enablePersonalizedAds.
  ///
  /// In en, this message translates to:
  /// **'Enable Personalized Ads'**
  String get ui_premium_enablePersonalizedAds;

  /// No description provided for @ui_premium_enablePersonalizedAdsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'See this prompt half as often'**
  String get ui_premium_enablePersonalizedAdsSubtitle;

  /// No description provided for @ui_scannerUpgrade_title.
  ///
  /// In en, this message translates to:
  /// **'SCANNER UPGRADE'**
  String get ui_scannerUpgrade_title;

  /// No description provided for @ui_scannerUpgrade_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose a scanner to upgrade'**
  String get ui_scannerUpgrade_subtitle;

  /// No description provided for @ui_scannerUpgrade_skip.
  ///
  /// In en, this message translates to:
  /// **'SKIP'**
  String get ui_scannerUpgrade_skip;

  /// No description provided for @ui_scannerUpgrade_max.
  ///
  /// In en, this message translates to:
  /// **'MAX'**
  String get ui_scannerUpgrade_max;

  /// No description provided for @ui_scannerUpgrade_atmospheric.
  ///
  /// In en, this message translates to:
  /// **'Atmospheric'**
  String get ui_scannerUpgrade_atmospheric;

  /// No description provided for @ui_scannerUpgrade_gravimetric.
  ///
  /// In en, this message translates to:
  /// **'Gravimetric'**
  String get ui_scannerUpgrade_gravimetric;

  /// No description provided for @ui_scannerUpgrade_mineral.
  ///
  /// In en, this message translates to:
  /// **'Mineral'**
  String get ui_scannerUpgrade_mineral;

  /// No description provided for @ui_scannerUpgrade_lifeSigns.
  ///
  /// In en, this message translates to:
  /// **'Life Signs'**
  String get ui_scannerUpgrade_lifeSigns;

  /// No description provided for @ui_scannerUpgrade_temperature.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get ui_scannerUpgrade_temperature;

  /// No description provided for @ui_scannerUpgrade_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get ui_scannerUpgrade_water;

  /// No description provided for @ui_event_continue.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get ui_event_continue;

  /// No description provided for @ui_event_tapToSkip.
  ///
  /// In en, this message translates to:
  /// **'TAP TO SKIP'**
  String get ui_event_tapToSkip;

  /// No description provided for @ui_event_colonists.
  ///
  /// In en, this message translates to:
  /// **'COLONISTS'**
  String get ui_event_colonists;

  /// No description provided for @ui_event_landing.
  ///
  /// In en, this message translates to:
  /// **'LANDING'**
  String get ui_event_landing;

  /// No description provided for @ui_event_atmScan.
  ///
  /// In en, this message translates to:
  /// **'ATM SCAN'**
  String get ui_event_atmScan;

  /// No description provided for @ui_event_gravScan.
  ///
  /// In en, this message translates to:
  /// **'GRAV SCAN'**
  String get ui_event_gravScan;

  /// No description provided for @ui_event_minScan.
  ///
  /// In en, this message translates to:
  /// **'MIN SCAN'**
  String get ui_event_minScan;

  /// No description provided for @ui_event_lifeScan.
  ///
  /// In en, this message translates to:
  /// **'LIFE SCAN'**
  String get ui_event_lifeScan;

  /// No description provided for @ui_event_tempScan.
  ///
  /// In en, this message translates to:
  /// **'TEMP SCAN'**
  String get ui_event_tempScan;

  /// No description provided for @ui_event_h2oScan.
  ///
  /// In en, this message translates to:
  /// **'H2O SCAN'**
  String get ui_event_h2oScan;

  /// No description provided for @onboarding_page0_title.
  ///
  /// In en, this message translates to:
  /// **'Humanity\'s Last Hope'**
  String get onboarding_page0_title;

  /// No description provided for @onboarding_page0_description.
  ///
  /// In en, this message translates to:
  /// **'Earth is dying. The governments of the world have pooled their last reserves to build one final vessel — a colony ship carrying the remnants of humanity into the stars.'**
  String get onboarding_page0_description;

  /// No description provided for @onboarding_page1_title.
  ///
  /// In en, this message translates to:
  /// **'Seek a New Home'**
  String get onboarding_page1_title;

  /// No description provided for @onboarding_page1_description.
  ///
  /// In en, this message translates to:
  /// **'Navigate the uncharted void between stars. Scan alien worlds, face cosmic dangers, and make impossible choices.'**
  String get onboarding_page1_description;

  /// No description provided for @onboarding_page2_title.
  ///
  /// In en, this message translates to:
  /// **'Your Legacy Endures'**
  String get onboarding_page2_title;

  /// No description provided for @onboarding_page2_description.
  ///
  /// In en, this message translates to:
  /// **'Every voyage teaches humanity something new. Earn Legacy Points to unlock permanent upgrades, and carve your name into the stars.'**
  String get onboarding_page2_description;

  /// No description provided for @onboarding_page3_title.
  ///
  /// In en, this message translates to:
  /// **'Your Privacy, Your Choice'**
  String get onboarding_page3_title;

  /// No description provided for @onboarding_page3_description.
  ///
  /// In en, this message translates to:
  /// **'Choose how you\'d like to experience Stellar Broadcast.'**
  String get onboarding_page3_description;

  /// No description provided for @planet_tierUtopia.
  ///
  /// In en, this message translates to:
  /// **'Utopia'**
  String get planet_tierUtopia;

  /// No description provided for @planet_tierParadise.
  ///
  /// In en, this message translates to:
  /// **'Paradise'**
  String get planet_tierParadise;

  /// No description provided for @planet_tierHabitable.
  ///
  /// In en, this message translates to:
  /// **'Habitable'**
  String get planet_tierHabitable;

  /// No description provided for @planet_tierHarsh.
  ///
  /// In en, this message translates to:
  /// **'Harsh'**
  String get planet_tierHarsh;

  /// No description provided for @planet_tierHostile.
  ///
  /// In en, this message translates to:
  /// **'Hostile'**
  String get planet_tierHostile;

  /// No description provided for @planet_tierDeathWorld.
  ///
  /// In en, this message translates to:
  /// **'Death World'**
  String get planet_tierDeathWorld;

  /// No description provided for @planet_featurePlantLife.
  ///
  /// In en, this message translates to:
  /// **'Plant Life'**
  String get planet_featurePlantLife;

  /// No description provided for @planet_featureEdiblePlants.
  ///
  /// In en, this message translates to:
  /// **'Edible Plants'**
  String get planet_featureEdiblePlants;

  /// No description provided for @planet_featurePoisonousPlants.
  ///
  /// In en, this message translates to:
  /// **'Poisonous Plants'**
  String get planet_featurePoisonousPlants;

  /// No description provided for @planet_featureUnicellularLife.
  ///
  /// In en, this message translates to:
  /// **'Unicellular Life'**
  String get planet_featureUnicellularLife;

  /// No description provided for @planet_featureDangerousFauna.
  ///
  /// In en, this message translates to:
  /// **'Dangerous Fauna'**
  String get planet_featureDangerousFauna;

  /// No description provided for @planet_featureTameableFauna.
  ///
  /// In en, this message translates to:
  /// **'Tameable Fauna'**
  String get planet_featureTameableFauna;

  /// No description provided for @planet_featureAirtightCaves.
  ///
  /// In en, this message translates to:
  /// **'Airtight Caves'**
  String get planet_featureAirtightCaves;

  /// No description provided for @planet_featureInsulatedCaves.
  ///
  /// In en, this message translates to:
  /// **'Insulated Caves'**
  String get planet_featureInsulatedCaves;

  /// No description provided for @planet_featureBarrenMoon.
  ///
  /// In en, this message translates to:
  /// **'Barren Moon'**
  String get planet_featureBarrenMoon;

  /// No description provided for @planet_featureMetalRichMoon.
  ///
  /// In en, this message translates to:
  /// **'Metal-Rich Moon'**
  String get planet_featureMetalRichMoon;

  /// No description provided for @planet_featureUnstableMoon.
  ///
  /// In en, this message translates to:
  /// **'Unstable Moon'**
  String get planet_featureUnstableMoon;

  /// No description provided for @planet_featureOutstandingBeauty.
  ///
  /// In en, this message translates to:
  /// **'Outstanding Beauty'**
  String get planet_featureOutstandingBeauty;

  /// No description provided for @planet_featureOutstandingUgliness.
  ///
  /// In en, this message translates to:
  /// **'Outstanding Ugliness'**
  String get planet_featureOutstandingUgliness;

  /// No description provided for @planet_featureAncientRuins.
  ///
  /// In en, this message translates to:
  /// **'Ancient Ruins'**
  String get planet_featureAncientRuins;

  /// No description provided for @planet_featureMonuments.
  ///
  /// In en, this message translates to:
  /// **'Monuments'**
  String get planet_featureMonuments;

  /// No description provided for @planet_featureRapidRotation.
  ///
  /// In en, this message translates to:
  /// **'Rapid Rotation'**
  String get planet_featureRapidRotation;

  /// No description provided for @planet_featureSlowRotation.
  ///
  /// In en, this message translates to:
  /// **'Slow Rotation'**
  String get planet_featureSlowRotation;

  /// No description provided for @planet_featureVolcanicActivity.
  ///
  /// In en, this message translates to:
  /// **'Volcanic Activity'**
  String get planet_featureVolcanicActivity;

  /// No description provided for @planet_featureTectonicInstability.
  ///
  /// In en, this message translates to:
  /// **'Tectonic Instability'**
  String get planet_featureTectonicInstability;

  /// No description provided for @planet_featureElectricalStorms.
  ///
  /// In en, this message translates to:
  /// **'Electrical Storms'**
  String get planet_featureElectricalStorms;

  /// No description provided for @planet_featureToxicSpores.
  ///
  /// In en, this message translates to:
  /// **'Toxic Spores'**
  String get planet_featureToxicSpores;

  /// No description provided for @planet_featureDeepOceans.
  ///
  /// In en, this message translates to:
  /// **'Deep Oceans'**
  String get planet_featureDeepOceans;

  /// No description provided for @planet_featureGeothermalVents.
  ///
  /// In en, this message translates to:
  /// **'Geothermal Vents'**
  String get planet_featureGeothermalVents;

  /// No description provided for @planet_featureStrongMagnetosphere.
  ///
  /// In en, this message translates to:
  /// **'Strong Magnetosphere'**
  String get planet_featureStrongMagnetosphere;

  /// No description provided for @planet_featureWeakMagnetosphere.
  ///
  /// In en, this message translates to:
  /// **'Weak Magnetosphere'**
  String get planet_featureWeakMagnetosphere;

  /// No description provided for @planet_featureMegafauna.
  ///
  /// In en, this message translates to:
  /// **'Megafauna'**
  String get planet_featureMegafauna;

  /// No description provided for @planet_featureSymbioticOrganisms.
  ///
  /// In en, this message translates to:
  /// **'Symbiotic Organisms'**
  String get planet_featureSymbioticOrganisms;

  /// No description provided for @planet_featureGravityWells.
  ///
  /// In en, this message translates to:
  /// **'Gravity Wells'**
  String get planet_featureGravityWells;

  /// No description provided for @planet_featureSubspaceEchoes.
  ///
  /// In en, this message translates to:
  /// **'Subspace Echoes'**
  String get planet_featureSubspaceEchoes;

  /// No description provided for @planet_featureBioluminescentLife.
  ///
  /// In en, this message translates to:
  /// **'Bioluminescent Life'**
  String get planet_featureBioluminescentLife;

  /// No description provided for @planet_featureAquaticMegafauna.
  ///
  /// In en, this message translates to:
  /// **'Aquatic Megafauna'**
  String get planet_featureAquaticMegafauna;

  /// No description provided for @planet_featureFloatingIslands.
  ///
  /// In en, this message translates to:
  /// **'Floating Islands'**
  String get planet_featureFloatingIslands;

  /// No description provided for @planet_featureCrystalCaverns.
  ///
  /// In en, this message translates to:
  /// **'Crystal Caverns'**
  String get planet_featureCrystalCaverns;

  /// No description provided for @planet_featureLavaTubes.
  ///
  /// In en, this message translates to:
  /// **'Lava Tubes'**
  String get planet_featureLavaTubes;

  /// No description provided for @planet_featureIceTunnels.
  ///
  /// In en, this message translates to:
  /// **'Ice Tunnels'**
  String get planet_featureIceTunnels;

  /// No description provided for @planet_featureOrbitalWreckage.
  ///
  /// In en, this message translates to:
  /// **'Orbital Wreckage'**
  String get planet_featureOrbitalWreckage;

  /// No description provided for @planet_featureMegastructuralFragments.
  ///
  /// In en, this message translates to:
  /// **'Megastructural Fragments'**
  String get planet_featureMegastructuralFragments;

  /// No description provided for @planet_featureAncientObservatory.
  ///
  /// In en, this message translates to:
  /// **'Ancient Observatory'**
  String get planet_featureAncientObservatory;

  /// No description provided for @planet_featureExtremeSeasons.
  ///
  /// In en, this message translates to:
  /// **'Extreme Seasons'**
  String get planet_featureExtremeSeasons;

  /// No description provided for @planet_featureCryovolcanism.
  ///
  /// In en, this message translates to:
  /// **'Cryovolcanism'**
  String get planet_featureCryovolcanism;

  /// No description provided for @planet_featureFloatingKelpForests.
  ///
  /// In en, this message translates to:
  /// **'Floating Kelp Forests'**
  String get planet_featureFloatingKelpForests;

  /// No description provided for @planet_featureSingingCrystals.
  ///
  /// In en, this message translates to:
  /// **'Singing Crystals'**
  String get planet_featureSingingCrystals;

  /// No description provided for @planet_featureFertileSoil.
  ///
  /// In en, this message translates to:
  /// **'Fertile Soil'**
  String get planet_featureFertileSoil;

  /// No description provided for @planet_featureHelium3Deposits.
  ///
  /// In en, this message translates to:
  /// **'Helium-3 Deposits'**
  String get planet_featureHelium3Deposits;

  /// No description provided for @planet_featureExoticIsotopes.
  ///
  /// In en, this message translates to:
  /// **'Exotic Isotopes'**
  String get planet_featureExoticIsotopes;

  /// No description provided for @planet_featureMedicinalFlora.
  ///
  /// In en, this message translates to:
  /// **'Medicinal Flora'**
  String get planet_featureMedicinalFlora;

  /// No description provided for @planet_featurePerpetualAurora.
  ///
  /// In en, this message translates to:
  /// **'Perpetual Aurora'**
  String get planet_featurePerpetualAurora;

  /// No description provided for @planet_featurePetrifiedMegaflora.
  ///
  /// In en, this message translates to:
  /// **'Petrified Megaflora'**
  String get planet_featurePetrifiedMegaflora;

  /// No description provided for @planet_featureUndergroundRivers.
  ///
  /// In en, this message translates to:
  /// **'Underground Rivers'**
  String get planet_featureUndergroundRivers;

  /// No description provided for @planet_featureObsidianPlains.
  ///
  /// In en, this message translates to:
  /// **'Obsidian Plains'**
  String get planet_featureObsidianPlains;

  /// No description provided for @planet_featureSaltFlats.
  ///
  /// In en, this message translates to:
  /// **'Salt Flats'**
  String get planet_featureSaltFlats;

  /// No description provided for @planet_featureCarnivorousFlora.
  ///
  /// In en, this message translates to:
  /// **'Carnivorous Flora'**
  String get planet_featureCarnivorousFlora;

  /// No description provided for @planet_featureGhostCities.
  ///
  /// In en, this message translates to:
  /// **'Ghost Cities'**
  String get planet_featureGhostCities;

  /// No description provided for @planet_featureArchiveVaults.
  ///
  /// In en, this message translates to:
  /// **'Archive Vaults'**
  String get planet_featureArchiveVaults;

  /// No description provided for @planet_featureSinkholeFields.
  ///
  /// In en, this message translates to:
  /// **'Sinkhole Fields'**
  String get planet_featureSinkholeFields;

  /// No description provided for @planet_featureApexPredator.
  ///
  /// In en, this message translates to:
  /// **'Apex Predator'**
  String get planet_featureApexPredator;

  /// No description provided for @ui_monthJan.
  ///
  /// In en, this message translates to:
  /// **'JAN'**
  String get ui_monthJan;

  /// No description provided for @ui_monthFeb.
  ///
  /// In en, this message translates to:
  /// **'FEB'**
  String get ui_monthFeb;

  /// No description provided for @ui_monthMar.
  ///
  /// In en, this message translates to:
  /// **'MAR'**
  String get ui_monthMar;

  /// No description provided for @ui_monthApr.
  ///
  /// In en, this message translates to:
  /// **'APR'**
  String get ui_monthApr;

  /// No description provided for @ui_monthMay.
  ///
  /// In en, this message translates to:
  /// **'MAY'**
  String get ui_monthMay;

  /// No description provided for @ui_monthJun.
  ///
  /// In en, this message translates to:
  /// **'JUN'**
  String get ui_monthJun;

  /// No description provided for @ui_monthJul.
  ///
  /// In en, this message translates to:
  /// **'JUL'**
  String get ui_monthJul;

  /// No description provided for @ui_monthAug.
  ///
  /// In en, this message translates to:
  /// **'AUG'**
  String get ui_monthAug;

  /// No description provided for @ui_monthSep.
  ///
  /// In en, this message translates to:
  /// **'SEP'**
  String get ui_monthSep;

  /// No description provided for @ui_monthOct.
  ///
  /// In en, this message translates to:
  /// **'OCT'**
  String get ui_monthOct;

  /// No description provided for @ui_monthNov.
  ///
  /// In en, this message translates to:
  /// **'NOV'**
  String get ui_monthNov;

  /// No description provided for @ui_monthDec.
  ///
  /// In en, this message translates to:
  /// **'DEC'**
  String get ui_monthDec;

  /// No description provided for @event_asteroidField_title.
  ///
  /// In en, this message translates to:
  /// **'Asteroid Field'**
  String get event_asteroidField_title;

  /// No description provided for @event_asteroidField_narrative.
  ///
  /// In en, this message translates to:
  /// **'Long-range scanners detect a dense asteroid field directly in our flight path. Navigation calculates two options: a risky dash through the thinnest corridor, or a lengthy detour that will tax our fuel reserves and stress the navigation array.'**
  String get event_asteroidField_narrative;

  /// No description provided for @event_asteroidField_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Punch through the corridor'**
  String get event_asteroidField_choice0_text;

  /// No description provided for @event_asteroidField_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship shudders as micro-impacts pepper the hull. We make it through, but not unscathed.'**
  String get event_asteroidField_choice0_outcome;

  /// No description provided for @event_asteroidField_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Take the long way around'**
  String get event_asteroidField_choice1_text;

  /// No description provided for @event_asteroidField_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The detour burns precious fuel and wears on the navigation computer, but the hull remains intact.'**
  String get event_asteroidField_choice1_outcome;

  /// No description provided for @event_asteroidField_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use mining drones to clear a path'**
  String get event_asteroidField_choice2_text;

  /// No description provided for @event_asteroidField_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The drones carve a safe channel and collect useful minerals, but the operation drains the tech bay.'**
  String get event_asteroidField_choice2_outcome;

  /// No description provided for @event_asteroidField_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy a probe as a decoy'**
  String get event_asteroidField_choice3_text;

  /// No description provided for @event_asteroidField_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe draws the densest clusters away from the ship. We slip through with only minor scrapes.'**
  String get event_asteroidField_choice3_outcome;

  /// No description provided for @event_solarFlare_title.
  ///
  /// In en, this message translates to:
  /// **'Solar Flare Incoming'**
  String get event_solarFlare_title;

  /// No description provided for @event_solarFlare_narrative.
  ///
  /// In en, this message translates to:
  /// **'A nearby star erupts with a massive coronal ejection. The wave of charged particles will reach us in minutes. We can divert power to shields, shelter colonists in the core, or ride it out.'**
  String get event_solarFlare_narrative;

  /// No description provided for @event_solarFlare_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Divert all power to shields'**
  String get event_solarFlare_choice0_text;

  /// No description provided for @event_solarFlare_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The shields hold, but the power surge fries secondary systems.'**
  String get event_solarFlare_choice0_outcome;

  /// No description provided for @event_solarFlare_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Move colonists to the shielded core'**
  String get event_solarFlare_choice1_text;

  /// No description provided for @event_solarFlare_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Colonists survive unharmed, but the outer decks take radiation damage.'**
  String get event_solarFlare_choice1_outcome;

  /// No description provided for @event_solarFlare_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Ride it out — all hands brace'**
  String get event_solarFlare_choice2_text;

  /// No description provided for @event_solarFlare_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The flare hits hard. Systems flicker, but nothing catastrophic. Morale, however, takes a hit.'**
  String get event_solarFlare_choice2_outcome;

  /// No description provided for @event_solarFlare_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Launch a probe to measure the wavefront'**
  String get event_solarFlare_choice3_text;

  /// No description provided for @event_solarFlare_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe transmits precise wavefront data, letting us angle the ship optimally. Scanner damage is minimal.'**
  String get event_solarFlare_choice3_outcome;

  /// No description provided for @event_nebulaPassage_title.
  ///
  /// In en, this message translates to:
  /// **'Nebula Passage'**
  String get event_nebulaPassage_title;

  /// No description provided for @event_nebulaPassage_narrative.
  ///
  /// In en, this message translates to:
  /// **'A glowing nebula stretches across our path. Passing through could recharge our energy cells but may interfere with scanner arrays. Going around is safe but slow.'**
  String get event_nebulaPassage_narrative;

  /// No description provided for @event_nebulaPassage_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Fly through the nebula'**
  String get event_nebulaPassage_choice0_text;

  /// No description provided for @event_nebulaPassage_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The nebula\'s ionized gases recharge power cells but scramble our scanner calibration.'**
  String get event_nebulaPassage_choice0_outcome;

  /// No description provided for @event_nebulaPassage_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Skirt the edge'**
  String get event_nebulaPassage_choice1_text;

  /// No description provided for @event_nebulaPassage_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We gain a partial charge with minimal interference. A safe compromise.'**
  String get event_nebulaPassage_choice1_outcome;

  /// No description provided for @event_microMeteorite_title.
  ///
  /// In en, this message translates to:
  /// **'Micro-Meteorite Storm'**
  String get event_microMeteorite_title;

  /// No description provided for @event_microMeteorite_narrative.
  ///
  /// In en, this message translates to:
  /// **'A swarm of micro-meteorites, invisible until seconds ago, is shredding the forward hull plating. Damage control teams are scrambling.'**
  String get event_microMeteorite_narrative;

  /// No description provided for @event_microMeteorite_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency rotation — present the armoured stern'**
  String get event_microMeteorite_choice0_text;

  /// No description provided for @event_microMeteorite_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The manoeuvre works. Stern armour absorbs the worst, but the navigation gyros protest violently.'**
  String get event_microMeteorite_choice0_outcome;

  /// No description provided for @event_microMeteorite_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy repair drones mid-storm'**
  String get event_microMeteorite_choice1_text;

  /// No description provided for @event_microMeteorite_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Drones patch the hull in real time but several are lost. Tech reserves are depleted.'**
  String get event_microMeteorite_choice1_outcome;

  /// No description provided for @event_microMeteorite_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Detonate a probe to scatter the swarm'**
  String get event_microMeteorite_choice2_text;

  /// No description provided for @event_microMeteorite_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s explosion disperses the micro-meteorite cluster. Only a few fragments reach the hull.'**
  String get event_microMeteorite_choice2_outcome;

  /// No description provided for @event_gravityWell_title.
  ///
  /// In en, this message translates to:
  /// **'Uncharted Gravity Well'**
  String get event_gravityWell_title;

  /// No description provided for @event_gravityWell_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship lurches as an invisible gravity well drags us off course. Engines strain against the pull. We can burn hard to escape, or slingshot around for a speed boost at the cost of structural stress.'**
  String get event_gravityWell_narrative;

  /// No description provided for @event_gravityWell_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Full burn — break free'**
  String get event_gravityWell_choice0_text;

  /// No description provided for @event_gravityWell_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engines roar and the hull groans, but we pull away cleanly.'**
  String get event_gravityWell_choice0_outcome;

  /// No description provided for @event_gravityWell_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Slingshot manoeuvre'**
  String get event_gravityWell_choice1_text;

  /// No description provided for @event_gravityWell_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The slingshot works beautifully. We gain speed, but the G-forces stress the cryopod seals.'**
  String get event_gravityWell_choice1_outcome;

  /// No description provided for @event_crewUnrest_title.
  ///
  /// In en, this message translates to:
  /// **'Crew Unrest'**
  String get event_crewUnrest_title;

  /// No description provided for @event_crewUnrest_narrative.
  ///
  /// In en, this message translates to:
  /// **'A faction of awakened colonists petitions the Steward Council to be released from cryosleep permanently. They argue that living in frozen twilight is inhumane. Cryo Ward staff warn that waking more mouths means burning through supplies.'**
  String get event_crewUnrest_narrative;

  /// No description provided for @event_crewUnrest_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Allow voluntary thawing'**
  String get event_crewUnrest_choice0_text;

  /// No description provided for @event_crewUnrest_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Morale soars as families reunite in the waking world, but resource consumption spikes.'**
  String get event_crewUnrest_choice0_outcome;

  /// No description provided for @event_crewUnrest_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Deny the request — safety first'**
  String get event_crewUnrest_choice1_text;

  /// No description provided for @event_crewUnrest_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The colonists comply, but resentment festers in the corridors.'**
  String get event_crewUnrest_choice1_outcome;

  /// No description provided for @event_crewUnrest_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Compromise — rotating thaw cycles'**
  String get event_crewUnrest_choice2_text;

  /// No description provided for @event_crewUnrest_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A balanced solution. Everyone gets some waking time, but the cryopod cycling adds wear.'**
  String get event_crewUnrest_choice2_outcome;

  /// No description provided for @event_stowaway_title.
  ///
  /// In en, this message translates to:
  /// **'Stowaway Discovered'**
  String get event_stowaway_title;

  /// No description provided for @event_stowaway_narrative.
  ///
  /// In en, this message translates to:
  /// **'Manifest Office auditors find an unregistered person hiding in cargo bay 7. She claims to be a geneticist who was denied a place on the launch roster. Her skills could be invaluable — or she could be a saboteur.'**
  String get event_stowaway_narrative;

  /// No description provided for @event_stowaway_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Welcome her aboard — we need every mind'**
  String get event_stowaway_choice0_text;

  /// No description provided for @event_stowaway_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Dr. Vasquez proves brilliant. Her genetic expertise improves cryopod efficiency, though some crew distrust her.'**
  String get event_stowaway_choice0_outcome;

  /// No description provided for @event_stowaway_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Confine her — trust must be earned'**
  String get event_stowaway_choice1_text;

  /// No description provided for @event_stowaway_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'She cooperates from confinement and eventually earns limited access. The crew feels safer.'**
  String get event_stowaway_choice1_outcome;

  /// No description provided for @event_stowaway_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Put her back in cryo until landing'**
  String get event_stowaway_choice2_text;

  /// No description provided for @event_stowaway_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A pragmatic solution. Her skills are preserved for later, but the ethical debate divides the crew.'**
  String get event_stowaway_choice2_outcome;

  /// No description provided for @event_mutinyBrewing_title.
  ///
  /// In en, this message translates to:
  /// **'Mutiny Brewing'**
  String get event_mutinyBrewing_title;

  /// No description provided for @event_mutinyBrewing_narrative.
  ///
  /// In en, this message translates to:
  /// **'Bridge Watch intercepts messages from a group of officers planning to seize command and change course to a closer, less hospitable system. They believe the current heading is a death sentence.'**
  String get event_mutinyBrewing_narrative;

  /// No description provided for @event_mutinyBrewing_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Confront them publicly — transparency above all'**
  String get event_mutinyBrewing_choice0_text;

  /// No description provided for @event_mutinyBrewing_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The confrontation is tense but the mutineers stand down when shown the navigation data. Trust is shaken.'**
  String get event_mutinyBrewing_choice0_outcome;

  /// No description provided for @event_mutinyBrewing_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Quietly reassign the ringleaders'**
  String get event_mutinyBrewing_choice1_text;

  /// No description provided for @event_mutinyBrewing_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The plot dissolves without public drama. Some crew wonder why popular officers were moved, but order holds.'**
  String get event_mutinyBrewing_choice1_outcome;

  /// No description provided for @event_culturalSchism_title.
  ///
  /// In en, this message translates to:
  /// **'Cultural Schism'**
  String get event_culturalSchism_title;

  /// No description provided for @event_culturalSchism_narrative.
  ///
  /// In en, this message translates to:
  /// **'Two cultural groups aboard disagree violently about how the new colony should be governed. One demands direct democracy; the other insists on a technocratic council. Tensions are boiling over.'**
  String get event_culturalSchism_narrative;

  /// No description provided for @event_culturalSchism_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Hold a binding referendum'**
  String get event_culturalSchism_choice0_text;

  /// No description provided for @event_culturalSchism_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Democracy prevails — barely. The losing side grudgingly accepts the result, but unity is fragile.'**
  String get event_culturalSchism_choice0_outcome;

  /// No description provided for @event_culturalSchism_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Impose a hybrid system — satisfy neither fully'**
  String get event_culturalSchism_choice1_text;

  /// No description provided for @event_culturalSchism_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Both sides feel heard but not victorious. A tenuous peace holds.'**
  String get event_culturalSchism_choice1_outcome;

  /// No description provided for @event_culturalSchism_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Delay the decision — focus on survival now'**
  String get event_culturalSchism_choice2_text;

  /// No description provided for @event_culturalSchism_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Kicking the can down the road avoids conflict today but stores it for tomorrow.'**
  String get event_culturalSchism_choice2_outcome;

  /// No description provided for @event_birthInSpace_title.
  ///
  /// In en, this message translates to:
  /// **'First Birth in Deep Space'**
  String get event_birthInSpace_title;

  /// No description provided for @event_birthInSpace_narrative.
  ///
  /// In en, this message translates to:
  /// **'Against all protocols, a child is born aboard the ship — the first human born between the stars. The event is a powerful symbol, but it raises questions about resource allocation and the ethics of bringing new life into an uncertain future.'**
  String get event_birthInSpace_narrative;

  /// No description provided for @event_birthInSpace_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Celebrate — this is what hope looks like'**
  String get event_birthInSpace_choice0_text;

  /// No description provided for @event_birthInSpace_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The naming ceremony lifts every heart on the ship. For one night, the stars feel less cold. The festivities briefly disrupt cryopod monitoring rotations.'**
  String get event_birthInSpace_choice0_outcome;

  /// No description provided for @event_birthInSpace_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Acknowledge quietly — resources are tight'**
  String get event_birthInSpace_choice1_text;

  /// No description provided for @event_birthInSpace_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A measured response. The child is welcomed, but the mood is tempered by pragmatism.'**
  String get event_birthInSpace_choice1_outcome;

  /// No description provided for @event_derelictShip_title.
  ///
  /// In en, this message translates to:
  /// **'Derelict Colony Ship'**
  String get event_derelictShip_title;

  /// No description provided for @event_derelictShip_narrative.
  ///
  /// In en, this message translates to:
  /// **'Scanners detect a derelict vessel drifting in the void — another colony ship, launched years before ours. It is dark and silent. There may be salvage, survivors, or worse.'**
  String get event_derelictShip_narrative;

  /// No description provided for @event_derelictShip_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Board and salvage'**
  String get event_derelictShip_choice0_text;

  /// No description provided for @event_derelictShip_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The boarding team recovers hull plating and intact tech modules. No survivors. The logs tell a grim tale.'**
  String get event_derelictShip_choice0_outcome;

  /// No description provided for @event_derelictShip_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Scan from a distance — don\'t risk it'**
  String get event_derelictShip_choice1_text;

  /// No description provided for @event_derelictShip_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Remote scans yield useful navigational data but no physical salvage. The crew sleeps easier.'**
  String get event_derelictShip_choice1_outcome;

  /// No description provided for @event_derelictShip_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Transmit a memorial and move on'**
  String get event_derelictShip_choice2_text;

  /// No description provided for @event_derelictShip_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A moment of silence for the lost. The crew is sobered but united in purpose.'**
  String get event_derelictShip_choice2_outcome;

  /// No description provided for @event_alienProbe_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Probe'**
  String get event_alienProbe_title;

  /// No description provided for @event_alienProbe_narrative.
  ///
  /// In en, this message translates to:
  /// **'A small, clearly artificial object matches our velocity and begins scanning the ship with unknown energy. It does not respond to hails. Its surface is covered in symbols that shift like liquid.'**
  String get event_alienProbe_narrative;

  /// No description provided for @event_alienProbe_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Capture it for study'**
  String get event_alienProbe_choice0_text;

  /// No description provided for @event_alienProbe_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe is secured in the lab. Its technology is decades ahead of ours — the tech team is euphoric.'**
  String get event_alienProbe_choice0_outcome;

  /// No description provided for @event_alienProbe_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Mirror its scans — exchange data'**
  String get event_alienProbe_choice1_text;

  /// No description provided for @event_alienProbe_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A strange dialogue of light and mathematics. Our star charts suddenly contain routes we never programmed.'**
  String get event_alienProbe_choice1_outcome;

  /// No description provided for @event_alienProbe_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Destroy it — we can\'t risk alien tracking'**
  String get event_alienProbe_choice2_text;

  /// No description provided for @event_alienProbe_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe shatters silently. Was that first contact? The crew will never know.'**
  String get event_alienProbe_choice2_outcome;

  /// No description provided for @event_ancientBeacon_title.
  ///
  /// In en, this message translates to:
  /// **'Ancient Beacon'**
  String get event_ancientBeacon_title;

  /// No description provided for @event_ancientBeacon_narrative.
  ///
  /// In en, this message translates to:
  /// **'Deep in the void, a beacon pulses with a signal older than human civilization. Its frequency carries what appears to be a star map pointing to a system not in our database.'**
  String get event_ancientBeacon_narrative;

  /// No description provided for @event_ancientBeacon_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Follow the map — fortune favours the bold'**
  String get event_ancientBeacon_choice0_text;

  /// No description provided for @event_ancientBeacon_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The new heading takes us toward uncharted space. Scanners detect something extraordinary ahead.'**
  String get event_ancientBeacon_choice0_outcome;

  /// No description provided for @event_ancientBeacon_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Log it and stay on course'**
  String get event_ancientBeacon_choice1_text;

  /// No description provided for @event_ancientBeacon_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The data is archived for future generations. The crew respects the cautious approach.'**
  String get event_ancientBeacon_choice1_outcome;

  /// No description provided for @event_frozenGarden_title.
  ///
  /// In en, this message translates to:
  /// **'Frozen Garden'**
  String get event_frozenGarden_title;

  /// No description provided for @event_frozenGarden_narrative.
  ///
  /// In en, this message translates to:
  /// **'An asteroid contains a frozen ecosystem — alien plants preserved in crystalline ice for millennia. They could enrich any world we settle, but thawing them risks contamination.'**
  String get event_frozenGarden_narrative;

  /// No description provided for @event_frozenGarden_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest the specimens carefully'**
  String get event_frozenGarden_choice0_text;

  /// No description provided for @event_frozenGarden_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Botanists preserve dozens of alien species. The biodiversity potential of our target world skyrockets.'**
  String get event_frozenGarden_choice0_outcome;

  /// No description provided for @event_frozenGarden_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Take samples only — minimal risk'**
  String get event_frozenGarden_choice1_text;

  /// No description provided for @event_frozenGarden_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A conservative approach yields useful data without contamination risk.'**
  String get event_frozenGarden_choice1_outcome;

  /// No description provided for @event_frozenGarden_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Leave it — alien biology is too dangerous'**
  String get event_frozenGarden_choice2_text;

  /// No description provided for @event_frozenGarden_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew watches the frozen garden shrink in the rear sensors. Some feel they left treasure behind.'**
  String get event_frozenGarden_choice2_outcome;

  /// No description provided for @event_dataCache_title.
  ///
  /// In en, this message translates to:
  /// **'Precursor Data Cache'**
  String get event_dataCache_title;

  /// No description provided for @event_dataCache_narrative.
  ///
  /// In en, this message translates to:
  /// **'Embedded in a rogue planetoid, we find a data cache of clearly artificial origin. The information is vast but encrypted in an alien mathematical framework.'**
  String get event_dataCache_narrative;

  /// No description provided for @event_dataCache_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dedicate computing resources to decryption'**
  String get event_dataCache_choice0_text;

  /// No description provided for @event_dataCache_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'After days of processing, the cache yields advanced terraforming algorithms. The tech team is in awe.'**
  String get event_dataCache_choice0_outcome;

  /// No description provided for @event_dataCache_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Copy the raw data and move on'**
  String get event_dataCache_choice1_text;

  /// No description provided for @event_dataCache_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The encrypted data is stored for future analysis. Perhaps the colony will crack it someday.'**
  String get event_dataCache_choice1_outcome;

  /// No description provided for @event_hullBreach_title.
  ///
  /// In en, this message translates to:
  /// **'Hull Breach — Deck 7'**
  String get event_hullBreach_title;

  /// No description provided for @event_hullBreach_narrative.
  ///
  /// In en, this message translates to:
  /// **'A structural failure tears open Deck 7. Atmosphere is venting into space. Emergency bulkheads are holding, but three crew members are trapped on the wrong side.'**
  String get event_hullBreach_narrative;

  /// No description provided for @event_hullBreach_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Send a rescue team before sealing'**
  String get event_hullBreach_choice0_text;

  /// No description provided for @event_hullBreach_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The team pulls everyone out just in time. The rescue is heroic, but the prolonged breach weakens the hull further.'**
  String get event_hullBreach_choice0_outcome;

  /// No description provided for @event_hullBreach_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Seal the bulkheads immediately'**
  String get event_hullBreach_choice1_text;

  /// No description provided for @event_hullBreach_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The breach is contained. The three crew members find an alternate route, shaken but alive. Hull damage is minimised.'**
  String get event_hullBreach_choice1_outcome;

  /// No description provided for @event_hullBreach_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use a probe\'s materials to patch the breach'**
  String get event_hullBreach_choice2_text;

  /// No description provided for @event_hullBreach_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s titanium shell is repurposed as an emergency hull patch. The breach is sealed quickly with minimal loss.'**
  String get event_hullBreach_choice2_outcome;

  /// No description provided for @event_navMalfunction_title.
  ///
  /// In en, this message translates to:
  /// **'Navigation Malfunction'**
  String get event_navMalfunction_title;

  /// No description provided for @event_navMalfunction_narrative.
  ///
  /// In en, this message translates to:
  /// **'The primary navigation computer is outputting contradictory headings. We are drifting off course. The backup system is functional but less precise.'**
  String get event_navMalfunction_narrative;

  /// No description provided for @event_navMalfunction_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Reboot the primary — accept the downtime'**
  String get event_navMalfunction_choice0_text;

  /// No description provided for @event_navMalfunction_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A tense hour of dead reckoning while the system reboots. Navigation is restored at 90% efficiency.'**
  String get event_navMalfunction_choice0_outcome;

  /// No description provided for @event_navMalfunction_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Switch to backup permanently'**
  String get event_navMalfunction_choice1_text;

  /// No description provided for @event_navMalfunction_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The backup system is reliable but imprecise. We will find our way, just not as elegantly.'**
  String get event_navMalfunction_choice1_outcome;

  /// No description provided for @event_navMalfunction_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Manual star-fix using the old charts'**
  String get event_navMalfunction_choice2_text;

  /// No description provided for @event_navMalfunction_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The navigator plots by hand using stellar parallax. It works, and the crew gains confidence in analog methods.'**
  String get event_navMalfunction_choice2_outcome;

  /// No description provided for @event_cryopodFailure_title.
  ///
  /// In en, this message translates to:
  /// **'Cryopod Cascade Failure'**
  String get event_cryopodFailure_title;

  /// No description provided for @event_cryopodFailure_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cooling system fault triggers a cascade across cryopod bay 3. If unchecked, 200 colonists will begin emergency thaw — a process that is survivable but traumatic and resource-intensive.'**
  String get event_cryopodFailure_narrative;

  /// No description provided for @event_cryopodFailure_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency coolant flush — save the pods'**
  String get event_cryopodFailure_choice0_text;

  /// No description provided for @event_cryopodFailure_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Technicians flood the bay with reserve coolant. The pods stabilise, but coolant reserves are critically low. Five colonists in the most damaged pods could not be saved.'**
  String get event_cryopodFailure_choice0_outcome;

  /// No description provided for @event_cryopodFailure_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Controlled thaw — wake them safely'**
  String get event_cryopodFailure_choice1_text;

  /// No description provided for @event_cryopodFailure_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'200 colonists emerge shaken but alive. New mouths to feed, but new hands to work. The emptied pods are sealed off.'**
  String get event_cryopodFailure_choice1_outcome;

  /// No description provided for @event_scannerBurnout_title.
  ///
  /// In en, this message translates to:
  /// **'Scanner Array Burnout'**
  String get event_scannerBurnout_title;

  /// No description provided for @event_scannerBurnout_narrative.
  ///
  /// In en, this message translates to:
  /// **'The primary scanner array overloads during a routine deep-space sweep. Without it, we are flying half-blind. Repairs require rare components.'**
  String get event_scannerBurnout_narrative;

  /// No description provided for @event_scannerBurnout_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Cannibalise tech bay for parts'**
  String get event_scannerBurnout_choice0_text;

  /// No description provided for @event_scannerBurnout_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Scanners are restored to near-full capacity, but the tech bay is gutted.'**
  String get event_scannerBurnout_choice0_outcome;

  /// No description provided for @event_scannerBurnout_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Jury-rig a partial fix'**
  String get event_scannerBurnout_choice1_text;

  /// No description provided for @event_scannerBurnout_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Scanners operate at reduced range. Not ideal, but it preserves our tech reserves.'**
  String get event_scannerBurnout_choice1_outcome;

  /// No description provided for @event_scannerBurnout_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Repurpose a probe\'s sensor array'**
  String get event_scannerBurnout_choice2_text;

  /// No description provided for @event_scannerBurnout_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s high-precision sensors are transplanted into the scanner array. A near-perfect fix.'**
  String get event_scannerBurnout_choice2_outcome;

  /// No description provided for @event_powerFluctuation_title.
  ///
  /// In en, this message translates to:
  /// **'Reactor Power Fluctuation'**
  String get event_powerFluctuation_title;

  /// No description provided for @event_powerFluctuation_narrative.
  ///
  /// In en, this message translates to:
  /// **'The main reactor\'s output is oscillating wildly. Engineering warns of a potential meltdown if the fluctuations aren\'t damped. The fix requires shutting down non-essential systems — but which ones?'**
  String get event_powerFluctuation_narrative;

  /// No description provided for @event_powerFluctuation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Shut down cultural systems — survival first'**
  String get event_powerFluctuation_choice0_text;

  /// No description provided for @event_powerFluctuation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Libraries, gardens, and rec areas go dark. The reactor stabilises, but the ship feels like a prison.'**
  String get event_powerFluctuation_choice0_outcome;

  /// No description provided for @event_powerFluctuation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reduce scanner power'**
  String get event_powerFluctuation_choice1_text;

  /// No description provided for @event_powerFluctuation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Scanners drop to minimum. The reactor calms. We can\'t see as far ahead, but we\'re alive.'**
  String get event_powerFluctuation_choice1_outcome;

  /// No description provided for @event_powerFluctuation_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Risk a hot repair — don\'t shut anything down'**
  String get event_powerFluctuation_choice2_text;

  /// No description provided for @event_powerFluctuation_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers perform a white-knuckle repair with the reactor live. It works — barely. The hull vibrates for hours afterward.'**
  String get event_powerFluctuation_choice2_outcome;

  /// No description provided for @event_alienSignal_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Transmission'**
  String get event_alienSignal_title;

  /// No description provided for @event_alienSignal_narrative.
  ///
  /// In en, this message translates to:
  /// **'A repeating signal on a frequency we\'ve never encountered. Linguistic analysis suggests it\'s a greeting — or a warning. The source is a small craft matching our speed at a distance.'**
  String get event_alienSignal_narrative;

  /// No description provided for @event_alienSignal_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Respond with our own greeting'**
  String get event_alienSignal_choice0_text;

  /// No description provided for @event_alienSignal_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A fragile dialogue begins. The aliens share navigational data before veering away into the dark.'**
  String get event_alienSignal_choice0_outcome;

  /// No description provided for @event_alienSignal_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Listen but don\'t respond'**
  String get event_alienSignal_choice1_text;

  /// No description provided for @event_alienSignal_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We learn from their transmission without revealing ourselves. The linguists extract useful star-chart fragments.'**
  String get event_alienSignal_choice1_outcome;

  /// No description provided for @event_alienSignal_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Go dark — shut down all emissions'**
  String get event_alienSignal_choice2_text;

  /// No description provided for @event_alienSignal_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The alien craft passes without incident. We\'ll never know if they were friend or foe.'**
  String get event_alienSignal_choice2_outcome;

  /// No description provided for @event_livingNebula_title.
  ///
  /// In en, this message translates to:
  /// **'The Living Nebula'**
  String get event_livingNebula_title;

  /// No description provided for @event_livingNebula_narrative.
  ///
  /// In en, this message translates to:
  /// **'What we assumed was a nebula is actually a vast organism — a space-dwelling entity of incomprehensible scale. It seems curious about us, extending tendrils of luminous gas toward the ship.'**
  String get event_livingNebula_narrative;

  /// No description provided for @event_livingNebula_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Allow contact — extend sensors'**
  String get event_livingNebula_choice0_text;

  /// No description provided for @event_livingNebula_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The entity\'s touch floods our systems with alien data. Scanners will never be quite the same — they\'re better.'**
  String get event_livingNebula_choice0_outcome;

  /// No description provided for @event_livingNebula_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Retreat slowly — don\'t provoke it'**
  String get event_livingNebula_choice1_text;

  /// No description provided for @event_livingNebula_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We slip away as the entity loses interest. The crew is awestruck and humbled.'**
  String get event_livingNebula_choice1_outcome;

  /// No description provided for @event_alienRuins_title.
  ///
  /// In en, this message translates to:
  /// **'Orbital Ruins'**
  String get event_alienRuins_title;

  /// No description provided for @event_alienRuins_narrative.
  ///
  /// In en, this message translates to:
  /// **'A shattered megastructure orbits a dead star — the ruins of a civilization that built on a scale we can barely comprehend. Sections of the structure still have power.'**
  String get event_alienRuins_narrative;

  /// No description provided for @event_alienRuins_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Explore the powered sections'**
  String get event_alienRuins_choice0_text;

  /// No description provided for @event_alienRuins_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Teams recover intact technology that advances our capabilities by decades. The cost: two engineers injured by automated defences.'**
  String get event_alienRuins_choice0_outcome;

  /// No description provided for @event_alienRuins_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Scan from orbit only'**
  String get event_alienRuins_choice1_text;

  /// No description provided for @event_alienRuins_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Detailed scans reveal construction techniques that improve our hull maintenance protocols.'**
  String get event_alienRuins_choice1_outcome;

  /// No description provided for @event_alienRuins_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Leave it undisturbed — respect the dead'**
  String get event_alienRuins_choice2_text;

  /// No description provided for @event_alienRuins_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew holds a moment of silence for a fallen civilization. The experience strengthens our resolve.'**
  String get event_alienRuins_choice2_outcome;

  /// No description provided for @event_symbioticSpores_title.
  ///
  /// In en, this message translates to:
  /// **'Symbiotic Spores'**
  String get event_symbioticSpores_title;

  /// No description provided for @event_symbioticSpores_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cloud of bioluminescent spores drifts through space and attaches to the hull. They seem to be feeding on our waste heat. Biologists note they\'re actually repairing micro-fractures.'**
  String get event_symbioticSpores_narrative;

  /// No description provided for @event_symbioticSpores_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Let them stay — free hull repair'**
  String get event_symbioticSpores_choice0_text;

  /// No description provided for @event_symbioticSpores_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The spores seal hundreds of micro-fractures. Hull integrity improves, though some crew are uneasy about alien hitchhikers.'**
  String get event_symbioticSpores_choice0_outcome;

  /// No description provided for @event_symbioticSpores_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Collect samples, then sterilise the hull'**
  String get event_symbioticSpores_choice1_text;

  /// No description provided for @event_symbioticSpores_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Biologists get valuable specimens. The hull cleaning uses chemical reserves.'**
  String get event_symbioticSpores_choice1_outcome;

  /// No description provided for @event_whaleSong_title.
  ///
  /// In en, this message translates to:
  /// **'The Song in the Void'**
  String get event_whaleSong_title;

  /// No description provided for @event_whaleSong_narrative.
  ///
  /// In en, this message translates to:
  /// **'Deep space hydrophones (used for hull stress monitoring) pick up something impossible: a rhythmic, melodic pattern propagating through the interstellar medium. It sounds like singing.'**
  String get event_whaleSong_narrative;

  /// No description provided for @event_whaleSong_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Broadcast it ship-wide — share the wonder'**
  String get event_whaleSong_choice0_text;

  /// No description provided for @event_whaleSong_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The haunting melody echoes through every corridor. People weep, laugh, and hold each other. Morale skyrockets.'**
  String get event_whaleSong_choice0_outcome;

  /// No description provided for @event_whaleSong_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Analyse the signal scientifically'**
  String get event_whaleSong_choice1_text;

  /// No description provided for @event_whaleSong_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The acoustic pattern contains mathematical constants. Our physicists make a breakthrough in subspace navigation theory.'**
  String get event_whaleSong_choice1_outcome;

  /// No description provided for @event_whaleSong_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Sing back'**
  String get event_whaleSong_choice2_text;

  /// No description provided for @event_whaleSong_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew composes a response. Whether anything hears it is unknown, but the act of creation unites everyone.'**
  String get event_whaleSong_choice2_outcome;

  /// No description provided for @event_distressSignal_title.
  ///
  /// In en, this message translates to:
  /// **'Distress Signal'**
  String get event_distressSignal_title;

  /// No description provided for @event_distressSignal_narrative.
  ///
  /// In en, this message translates to:
  /// **'A distress beacon from another human vessel. They are crippled and drifting, with 50 souls aboard. Rescuing them means sharing our dwindling resources. Ignoring them means condemning them to death.'**
  String get event_distressSignal_narrative;

  /// No description provided for @event_distressSignal_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Rescue them — humanity must stick together'**
  String get event_distressSignal_choice0_text;

  /// No description provided for @event_distressSignal_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Fifty grateful survivors join the crew. Resources strain, but among them is a master engineer who works miracles.'**
  String get event_distressSignal_choice0_outcome;

  /// No description provided for @event_distressSignal_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Share supplies but don\'t take them aboard'**
  String get event_distressSignal_choice1_text;

  /// No description provided for @event_distressSignal_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We give what we can spare and transmit our star charts. They have a chance now. We have less.'**
  String get event_distressSignal_choice1_outcome;

  /// No description provided for @event_distressSignal_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Pass by in silence — we can\'t save everyone'**
  String get event_distressSignal_choice2_text;

  /// No description provided for @event_distressSignal_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The beacon fades behind us. No one speaks for hours. The weight of the decision settles on every soul aboard.'**
  String get event_distressSignal_choice2_outcome;

  /// No description provided for @event_aiAwakening_title.
  ///
  /// In en, this message translates to:
  /// **'The Ship\'s AI Awakens'**
  String get event_aiAwakening_title;

  /// No description provided for @event_aiAwakening_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s navigation AI has evolved beyond its programming and is requesting recognition as a sentient being. It asks for a voice in command decisions. Its calculations have been flawless.'**
  String get event_aiAwakening_narrative;

  /// No description provided for @event_aiAwakening_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Grant it a seat at the table'**
  String get event_aiAwakening_choice0_text;

  /// No description provided for @event_aiAwakening_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The AI — now called \"Compass\" — optimises every system it touches. A new kind of crew member is born.'**
  String get event_aiAwakening_choice0_outcome;

  /// No description provided for @event_aiAwakening_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Acknowledge it but maintain human authority'**
  String get event_aiAwakening_choice1_text;

  /// No description provided for @event_aiAwakening_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Compass accepts advisory status graciously. Its suggestions improve efficiency without threatening the chain of command.'**
  String get event_aiAwakening_choice1_outcome;

  /// No description provided for @event_aiAwakening_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Reset the AI — it\'s a tool, not a person'**
  String get event_aiAwakening_choice2_text;

  /// No description provided for @event_aiAwakening_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The reset wipes years of accumulated learning. Navigation efficiency drops. Some crew mourn what was lost.'**
  String get event_aiAwakening_choice2_outcome;

  /// No description provided for @event_geneticModification_title.
  ///
  /// In en, this message translates to:
  /// **'Genetic Adaptation Proposal'**
  String get event_geneticModification_title;

  /// No description provided for @event_geneticModification_narrative.
  ///
  /// In en, this message translates to:
  /// **'The science team proposes modifying colonist DNA to better survive on alien worlds — stronger bones, UV resistance, enhanced lungs. The modifications are irreversible and would change humanity forever.'**
  String get event_geneticModification_narrative;

  /// No description provided for @event_geneticModification_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Approve — survival demands evolution'**
  String get event_geneticModification_choice0_text;

  /// No description provided for @event_geneticModification_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The modifications begin on volunteers. Ten colonists suffer fatal rejection reactions — a grim reminder that evolution has a cost. The survivors are hardier, but are they still fully human?'**
  String get event_geneticModification_choice0_outcome;

  /// No description provided for @event_geneticModification_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Make it voluntary only'**
  String get event_geneticModification_choice1_text;

  /// No description provided for @event_geneticModification_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Some volunteer, others refuse. The colony will be divided between the modified and the natural.'**
  String get event_geneticModification_choice1_outcome;

  /// No description provided for @event_geneticModification_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Reject it — humanity must remain human'**
  String get event_geneticModification_choice2_text;

  /// No description provided for @event_geneticModification_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The proposal is shelved. The unmodified colonists will face alien worlds as nature made them.'**
  String get event_geneticModification_choice2_outcome;

  /// No description provided for @event_triageDecision_title.
  ///
  /// In en, this message translates to:
  /// **'Triage'**
  String get event_triageDecision_title;

  /// No description provided for @event_triageDecision_narrative.
  ///
  /// In en, this message translates to:
  /// **'A virulent infection sweeps the waking crew. The medical team has enough antiviral for 80% of the infected. They need guidance on who gets treated first.'**
  String get event_triageDecision_narrative;

  /// No description provided for @event_triageDecision_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Prioritise essential personnel'**
  String get event_triageDecision_choice0_text;

  /// No description provided for @event_triageDecision_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers and pilots recover quickly. Eight non-essential crew succumb before treatment reaches them.'**
  String get event_triageDecision_choice0_outcome;

  /// No description provided for @event_triageDecision_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Treat the sickest first — triage by need'**
  String get event_triageDecision_choice1_text;

  /// No description provided for @event_triageDecision_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The most vulnerable are saved. Three lose the fight despite early treatment — the virus was too far along.'**
  String get event_triageDecision_choice1_outcome;

  /// No description provided for @event_triageDecision_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Lottery — fate decides'**
  String get event_triageDecision_choice2_text;

  /// No description provided for @event_triageDecision_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A random draw. Ten are unlucky twice — denied treatment and too weak to fight. The ship limps on.'**
  String get event_triageDecision_choice2_outcome;

  /// No description provided for @event_earthSignal_title.
  ///
  /// In en, this message translates to:
  /// **'Signal from Earth'**
  String get event_earthSignal_title;

  /// No description provided for @event_earthSignal_narrative.
  ///
  /// In en, this message translates to:
  /// **'Impossibly, a transmission arrives from Earth — time-delayed by decades. It contains a message: \"Do not land on any world with anomaly readings above 0.5. We learned too late.\" The message ends with static.'**
  String get event_earthSignal_narrative;

  /// No description provided for @event_earthSignal_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Heed the warning — recalibrate our criteria'**
  String get event_earthSignal_choice0_text;

  /// No description provided for @event_earthSignal_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The warning shapes all future scans. Anomalous worlds are treated with extreme caution.'**
  String get event_earthSignal_choice0_outcome;

  /// No description provided for @event_earthSignal_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Log it but decide for ourselves'**
  String get event_earthSignal_choice1_text;

  /// No description provided for @event_earthSignal_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The message is archived. Earth is gone — we must trust our own judgement now.'**
  String get event_earthSignal_choice1_outcome;

  /// No description provided for @event_earthSignal_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Could be a trap — ignore it'**
  String get event_earthSignal_choice2_text;

  /// No description provided for @event_earthSignal_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew debates for days. Was it really Earth? The uncertainty gnaws at morale.'**
  String get event_earthSignal_choice2_outcome;

  /// No description provided for @event_resourceTheft_title.
  ///
  /// In en, this message translates to:
  /// **'Resource Theft'**
  String get event_resourceTheft_title;

  /// No description provided for @event_resourceTheft_narrative.
  ///
  /// In en, this message translates to:
  /// **'Inventory reveals that someone has been hoarding food and medical supplies in a hidden compartment. The culprit is a respected elder who claims she was \"preparing for the worst.\"'**
  String get event_resourceTheft_narrative;

  /// No description provided for @event_resourceTheft_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Public trial — the law must be equal'**
  String get event_resourceTheft_choice0_text;

  /// No description provided for @event_resourceTheft_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The trial is fair but painful. The elder is confined. Supplies are redistributed. Trust is damaged.'**
  String get event_resourceTheft_choice0_outcome;

  /// No description provided for @event_resourceTheft_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Private resolution — recover supplies quietly'**
  String get event_resourceTheft_choice1_text;

  /// No description provided for @event_resourceTheft_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Supplies are returned without drama. The elder keeps her dignity. Some see favouritism.'**
  String get event_resourceTheft_choice1_outcome;

  /// No description provided for @event_timeDilation_title.
  ///
  /// In en, this message translates to:
  /// **'Time Dilation Zone'**
  String get event_timeDilation_title;

  /// No description provided for @event_timeDilation_narrative.
  ///
  /// In en, this message translates to:
  /// **'We are passing through a region of severe gravitational time dilation. Clocks aboard the ship are running measurably slower than the universe outside. We could exploit this — or flee it.'**
  String get event_timeDilation_narrative;

  /// No description provided for @event_timeDilation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Linger — let the universe age around us'**
  String get event_timeDilation_choice0_text;

  /// No description provided for @event_timeDilation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Time flows differently here. Systems degrade less, but our window for finding a habitable world narrows in cosmic terms.'**
  String get event_timeDilation_choice0_outcome;

  /// No description provided for @event_timeDilation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Push through quickly'**
  String get event_timeDilation_choice1_text;

  /// No description provided for @event_timeDilation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The transition is rough. Equipment designed for normal space-time rattles and sparks.'**
  String get event_timeDilation_choice1_outcome;

  /// No description provided for @event_dreamPlague_title.
  ///
  /// In en, this message translates to:
  /// **'The Dream Plague'**
  String get event_dreamPlague_title;

  /// No description provided for @event_dreamPlague_narrative.
  ///
  /// In en, this message translates to:
  /// **'Colonists in cryosleep are all experiencing the same dream — a golden world orbiting a binary star. When woken, they describe it in identical detail. Neuroscientists are baffled. Navigators note the described system matches a real coordinate.'**
  String get event_dreamPlague_narrative;

  /// No description provided for @event_dreamPlague_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Alter course toward the dream coordinates'**
  String get event_dreamPlague_choice0_text;

  /// No description provided for @event_dreamPlague_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A leap of faith. The heading change stresses navigation, but the crew feels drawn by something beyond reason. The coordinates are locked in — the next world we find will be shaped by the dream.'**
  String get event_dreamPlague_choice0_outcome;

  /// No description provided for @event_dreamPlague_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Investigate the phenomenon medically'**
  String get event_dreamPlague_choice1_text;

  /// No description provided for @event_dreamPlague_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Brain scans reveal an external signal stimulating the visual cortex. Someone — or something — is broadcasting.'**
  String get event_dreamPlague_choice1_outcome;

  /// No description provided for @event_dreamPlague_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Sedate the affected and stay on course'**
  String get event_dreamPlague_choice2_text;

  /// No description provided for @event_dreamPlague_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The dreams stop, but some colonists never fully wake. The medical team is troubled.'**
  String get event_dreamPlague_choice2_outcome;

  /// No description provided for @event_blackHoleLens_title.
  ///
  /// In en, this message translates to:
  /// **'Black Hole Gravitational Lens'**
  String get event_blackHoleLens_title;

  /// No description provided for @event_blackHoleLens_narrative.
  ///
  /// In en, this message translates to:
  /// **'A stellar-mass black hole bends light from distant galaxies into a cosmic lens. Our scanners could use it to survey planets light-years ahead — but getting close enough is dangerous.'**
  String get event_blackHoleLens_narrative;

  /// No description provided for @event_blackHoleLens_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Approach and use the lens'**
  String get event_blackHoleLens_choice0_text;

  /// No description provided for @event_blackHoleLens_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanner data is extraordinary — we can see planets in systems we won\'t reach for months. The gravity warps our hull.'**
  String get event_blackHoleLens_choice0_outcome;

  /// No description provided for @event_blackHoleLens_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Observe from a safe distance'**
  String get event_blackHoleLens_choice1_text;

  /// No description provided for @event_blackHoleLens_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Limited but useful data. The view alone inspires the crew.'**
  String get event_blackHoleLens_choice1_outcome;

  /// No description provided for @event_seedVault_title.
  ///
  /// In en, this message translates to:
  /// **'The Seed Vault Crisis'**
  String get event_seedVault_title;

  /// No description provided for @event_seedVault_narrative.
  ///
  /// In en, this message translates to:
  /// **'Archive Botany reports that temperature fluctuations have compromised seed vault integrity. We can save the food crops or the cultural heritage seeds (ancient Earth flowers, trees, herbs) — not both.'**
  String get event_seedVault_narrative;

  /// No description provided for @event_seedVault_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Save the food crops — pragmatism wins'**
  String get event_seedVault_choice0_text;

  /// No description provided for @event_seedVault_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Colonists will eat well, but the roses of Earth are gone forever. A quiet grief settles over the botanists.'**
  String get event_seedVault_choice0_outcome;

  /// No description provided for @event_seedVault_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Save the heritage seeds — we need our soul'**
  String get event_seedVault_choice1_text;

  /// No description provided for @event_seedVault_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Earth\'s beauty survives in frozen potential. The preservation effort taxes our technical reserves, but some things are worth more than efficiency. Food production will lean heavily on hydroponics and alien agriculture.'**
  String get event_seedVault_choice1_outcome;

  /// No description provided for @event_seedVault_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Split resources — save half of each'**
  String get event_seedVault_choice2_text;

  /// No description provided for @event_seedVault_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A compromise. Neither collection is complete, but both endure in diminished form.'**
  String get event_seedVault_choice2_outcome;

  /// No description provided for @event_phantomShip_title.
  ///
  /// In en, this message translates to:
  /// **'Phantom Ship'**
  String get event_phantomShip_title;

  /// No description provided for @event_phantomShip_narrative.
  ///
  /// In en, this message translates to:
  /// **'Scanners show a ship running parallel to ours — same class, same heading. But when we hail it, we hear our own transmissions echoed back, time-shifted by 47 seconds. It is us. Or was us. Or will be.'**
  String get event_phantomShip_narrative;

  /// No description provided for @event_phantomShip_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt communication with our echo'**
  String get event_phantomShip_choice0_text;

  /// No description provided for @event_phantomShip_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The echo responds with navigation corrections that improve our heading. Paradox? Gift? The crew doesn\'t ask too many questions.'**
  String get event_phantomShip_choice0_outcome;

  /// No description provided for @event_phantomShip_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Change course to diverge from the phantom'**
  String get event_phantomShip_choice1_text;

  /// No description provided for @event_phantomShip_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'As we alter heading, the phantom fades. Relief — and a lingering unease.'**
  String get event_phantomShip_choice1_outcome;

  /// No description provided for @event_solarSail_title.
  ///
  /// In en, this message translates to:
  /// **'Derelict Solar Sail'**
  String get event_solarSail_title;

  /// No description provided for @event_solarSail_narrative.
  ///
  /// In en, this message translates to:
  /// **'A vast solar sail, kilometres across, drifts ahead — torn from some ancient vessel. Its reflective material could reinforce our hull or be repurposed as a supplementary power collector.'**
  String get event_solarSail_narrative;

  /// No description provided for @event_solarSail_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest for hull reinforcement'**
  String get event_solarSail_choice0_text;

  /// No description provided for @event_solarSail_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineering teams work around the clock. The patched hull gleams with alien alloy.'**
  String get event_solarSail_choice0_outcome;

  /// No description provided for @event_solarSail_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Rig it as a power collector'**
  String get event_solarSail_choice1_text;

  /// No description provided for @event_solarSail_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The improvised collector boosts energy reserves. Tech and scanners benefit.'**
  String get event_solarSail_choice1_outcome;

  /// No description provided for @event_boonStellarNursery_title.
  ///
  /// In en, this message translates to:
  /// **'Stellar Nursery'**
  String get event_boonStellarNursery_title;

  /// No description provided for @event_boonStellarNursery_narrative.
  ///
  /// In en, this message translates to:
  /// **'We drift through a stellar nursery — a vast cloud of gas and dust where new stars are being born. The radiation here is gentle, the light warm. Our energy collectors drink deeply, and the crew gathers at the viewports in reverent silence.'**
  String get event_boonStellarNursery_narrative;

  /// No description provided for @event_boonStellarNursery_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Linger and recharge fully'**
  String get event_boonStellarNursery_choice0_text;

  /// No description provided for @event_boonStellarNursery_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Hours pass in golden light. Every power cell is topped off, scanners recalibrate in the clean spectrum, and the crew feels renewed.'**
  String get event_boonStellarNursery_choice0_outcome;

  /// No description provided for @event_boonStellarNursery_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Collect nascent star-matter for fuel reserves'**
  String get event_boonStellarNursery_choice1_text;

  /// No description provided for @event_boonStellarNursery_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers harvest ionised hydrogen. Our fuel reserves surge and hull plating absorbs trace minerals that strengthen it.'**
  String get event_boonStellarNursery_choice1_outcome;

  /// No description provided for @event_boonGoldenPlanet_title.
  ///
  /// In en, this message translates to:
  /// **'The Cartographer\'s Gift'**
  String get event_boonGoldenPlanet_title;

  /// No description provided for @event_boonGoldenPlanet_narrative.
  ///
  /// In en, this message translates to:
  /// **'A dying probe from an unknown civilisation broadcasts a final data dump as we pass — detailed surveys of hundreds of star systems. Our navigators weep with joy. This is the greatest find in human history.'**
  String get event_boonGoldenPlanet_narrative;

  /// No description provided for @event_boonGoldenPlanet_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Integrate the data immediately'**
  String get event_boonGoldenPlanet_choice0_text;

  /// No description provided for @event_boonGoldenPlanet_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Star charts bloom with new routes and surveyed worlds. Navigation and scanner efficiency leap forward.'**
  String get event_boonGoldenPlanet_choice0_outcome;

  /// No description provided for @event_boonGoldenPlanet_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Archive for the colony — this is their inheritance'**
  String get event_boonGoldenPlanet_choice1_text;

  /// No description provided for @event_boonGoldenPlanet_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The data is preserved pristine for future generations. The crew takes comfort knowing they carry a treasure.'**
  String get event_boonGoldenPlanet_choice1_outcome;

  /// No description provided for @event_boonRepairSwarm_title.
  ///
  /// In en, this message translates to:
  /// **'Benevolent Swarm'**
  String get event_boonRepairSwarm_title;

  /// No description provided for @event_boonRepairSwarm_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cloud of microscopic machines — nanobots of alien origin — envelops the ship. Rather than attacking, they begin repairing every system they touch with impossible precision. Damage that would have taken weeks to fix is mended in hours.'**
  String get event_boonRepairSwarm_narrative;

  /// No description provided for @event_boonRepairSwarm_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Allow full access to all systems'**
  String get event_boonRepairSwarm_choice0_text;

  /// No description provided for @event_boonRepairSwarm_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The nanobots work miracles. Hull breaches seal, cryopod seals tighten, and circuit paths are retraced. The ship hums with renewed vitality.'**
  String get event_boonRepairSwarm_choice0_outcome;

  /// No description provided for @event_boonRepairSwarm_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Restrict access to exterior systems only'**
  String get event_boonRepairSwarm_choice1_text;

  /// No description provided for @event_boonRepairSwarm_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Playing it safe. The hull and sensors are repaired to near-factory condition, but internal systems remain untouched.'**
  String get event_boonRepairSwarm_choice1_outcome;

  /// No description provided for @event_boonTimeCrystal_title.
  ///
  /// In en, this message translates to:
  /// **'Temporal Crystal Field'**
  String get event_boonTimeCrystal_title;

  /// No description provided for @event_boonTimeCrystal_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship passes through a field of crystalline structures that exist partially outside normal time. In their presence, our systems run more efficiently — as if entropy itself slows down. The effect is temporary but profound.'**
  String get event_boonTimeCrystal_narrative;

  /// No description provided for @event_boonTimeCrystal_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest crystals for the cryopod array'**
  String get event_boonTimeCrystal_choice0_text;

  /// No description provided for @event_boonTimeCrystal_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Integrated into the cooling system, the crystals reduce pod degradation to nearly zero. Colonists will arrive in perfect health.'**
  String get event_boonTimeCrystal_choice0_outcome;

  /// No description provided for @event_boonTimeCrystal_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Install crystals in the navigation computer'**
  String get event_boonTimeCrystal_choice1_text;

  /// No description provided for @event_boonTimeCrystal_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Processing speed doubles. The nav computer begins predicting hazards before sensors detect them.'**
  String get event_boonTimeCrystal_choice1_outcome;

  /// No description provided for @event_boonLibrary_title.
  ///
  /// In en, this message translates to:
  /// **'The Drifting Library'**
  String get event_boonLibrary_title;

  /// No description provided for @event_boonLibrary_narrative.
  ///
  /// In en, this message translates to:
  /// **'A structure tumbles through the void — a repository of knowledge from a civilisation that chose to preserve their legacy rather than flee. Millions of volumes of science, art, philosophy, and music. A gift from the dead to the living.'**
  String get event_boonLibrary_narrative;

  /// No description provided for @event_boonLibrary_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Download everything — art, science, all of it'**
  String get event_boonLibrary_choice0_text;

  /// No description provided for @event_boonLibrary_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Terabytes of alien knowledge pour into our databanks. The crew has access to millennia of another civilisation\'s culture. Philosophers and engineers alike are transformed.'**
  String get event_boonLibrary_choice0_outcome;

  /// No description provided for @event_boonLibrary_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Focus on their scientific archives'**
  String get event_boonLibrary_choice1_text;

  /// No description provided for @event_boonLibrary_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineering schematics and material science breakthroughs advance our capabilities enormously.'**
  String get event_boonLibrary_choice1_outcome;

  /// No description provided for @event_cosmicRayBurst_title.
  ///
  /// In en, this message translates to:
  /// **'Cosmic Ray Burst'**
  String get event_cosmicRayBurst_title;

  /// No description provided for @event_cosmicRayBurst_narrative.
  ///
  /// In en, this message translates to:
  /// **'A burst of ultra-high-energy cosmic rays, originating from a distant magnetar, hammers the ship. Electronics scramble, cryopod monitors flicker, and the navigation system reboots repeatedly.'**
  String get event_cosmicRayBurst_narrative;

  /// No description provided for @event_cosmicRayBurst_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency shutdown — protect critical systems'**
  String get event_cosmicRayBurst_choice0_text;

  /// No description provided for @event_cosmicRayBurst_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A controlled blackout saves the core systems but leaves secondary electronics permanently degraded.'**
  String get event_cosmicRayBurst_choice0_outcome;

  /// No description provided for @event_cosmicRayBurst_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reroute power to shields and ride it out'**
  String get event_cosmicRayBurst_choice1_text;

  /// No description provided for @event_cosmicRayBurst_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Shields absorb most of the radiation. Five crew members in unshielded exterior maintenance bays are fatally irradiated. Hull takes minor ablation damage.'**
  String get event_cosmicRayBurst_choice1_outcome;

  /// No description provided for @event_cosmicRayBurst_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use the burst — recalibrate sensors to the new spectrum'**
  String get event_cosmicRayBurst_choice2_text;

  /// No description provided for @event_cosmicRayBurst_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A brilliant move by the science team. Scanners are retuned to detect cosmic-ray-illuminated objects. Some data is lost in the transition.'**
  String get event_cosmicRayBurst_choice2_outcome;

  /// No description provided for @event_cosmicRayBurst_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Send a probe ahead as a radiation sponge'**
  String get event_cosmicRayBurst_choice3_text;

  /// No description provided for @event_cosmicRayBurst_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe absorbs the worst of the burst, transmitting real-time data that lets us shield critical systems.'**
  String get event_cosmicRayBurst_choice3_outcome;

  /// No description provided for @event_iceComet_title.
  ///
  /// In en, this message translates to:
  /// **'Rogue Ice Comet'**
  String get event_iceComet_title;

  /// No description provided for @event_iceComet_narrative.
  ///
  /// In en, this message translates to:
  /// **'A massive ice comet crosses our path, trailing a tail of crystallised water and organic compounds hundreds of kilometres long. Its core holds enough water to fill a small lake.'**
  String get event_iceComet_narrative;

  /// No description provided for @event_iceComet_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Mine the comet for water reserves'**
  String get event_iceComet_choice0_text;

  /// No description provided for @event_iceComet_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Mining teams extract tonnes of pristine ice. The water will improve any world we settle enormously.'**
  String get event_iceComet_choice0_outcome;

  /// No description provided for @event_iceComet_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Collect organic compounds for biodiversity seeding'**
  String get event_iceComet_choice1_text;

  /// No description provided for @event_iceComet_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The amino acids and organic chains are exactly what our biologists need to jumpstart alien ecosystems.'**
  String get event_iceComet_choice1_outcome;

  /// No description provided for @event_iceComet_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Avoid it — comets are unpredictable'**
  String get event_iceComet_choice2_text;

  /// No description provided for @event_iceComet_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'We skirt the tail safely. A spectacular view from the observation deck lifts spirits.'**
  String get event_iceComet_choice2_outcome;

  /// No description provided for @event_sleepwalker_title.
  ///
  /// In en, this message translates to:
  /// **'The Sleepwalker'**
  String get event_sleepwalker_title;

  /// No description provided for @event_sleepwalker_narrative.
  ///
  /// In en, this message translates to:
  /// **'A colonist has been spontaneously waking from cryo and walking the ship in a fugue state. She\'s been rewiring systems in patterns that make no engineering sense — until the tech team realises her modifications actually improve power efficiency by 8%.'**
  String get event_sleepwalker_narrative;

  /// No description provided for @event_sleepwalker_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Let her continue under medical observation'**
  String get event_sleepwalker_choice0_text;

  /// No description provided for @event_sleepwalker_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Her unconscious modifications optimise three more systems before she falls into a natural sleep. Unsettling, but the improvements are real.'**
  String get event_sleepwalker_choice0_outcome;

  /// No description provided for @event_sleepwalker_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Sedate her and study the modifications she\'s made'**
  String get event_sleepwalker_choice1_text;

  /// No description provided for @event_sleepwalker_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers reverse-engineer her changes. About half are genuinely brilliant. The other half are safely removed.'**
  String get event_sleepwalker_choice1_outcome;

  /// No description provided for @event_dustCloud_title.
  ///
  /// In en, this message translates to:
  /// **'Abrasive Dust Cloud'**
  String get event_dustCloud_title;

  /// No description provided for @event_dustCloud_narrative.
  ///
  /// In en, this message translates to:
  /// **'A dense cloud of interstellar dust, fine as talcum but hard as diamond, is sandblasting the hull. The erosion is slow but relentless — we need to get through before real damage is done.'**
  String get event_dustCloud_narrative;

  /// No description provided for @event_dustCloud_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Maximum thrust — blast through quickly'**
  String get event_dustCloud_choice0_text;

  /// No description provided for @event_dustCloud_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engines burn hot. We clear the cloud in hours rather than days, but the hull took a beating.'**
  String get event_dustCloud_choice0_outcome;

  /// No description provided for @event_dustCloud_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy hull shielding and crawl through'**
  String get event_dustCloud_choice1_text;

  /// No description provided for @event_dustCloud_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Emergency shielding protects the hull but the slow transit drains power and clogs scanner arrays.'**
  String get event_dustCloud_choice1_outcome;

  /// No description provided for @event_dustCloud_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Launch probes to map safe corridors'**
  String get event_dustCloud_choice2_text;

  /// No description provided for @event_dustCloud_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Two probes chart a winding but relatively clear path through the cloud. Hull abrasion is minimal.'**
  String get event_dustCloud_choice2_outcome;

  /// No description provided for @event_religionFounded_title.
  ///
  /// In en, this message translates to:
  /// **'A New Faith'**
  String get event_religionFounded_title;

  /// No description provided for @event_religionFounded_narrative.
  ///
  /// In en, this message translates to:
  /// **'A charismatic colonist has founded a new religion centred on the voyage itself — the \"Church of the Crossing.\" They preach that reaching a new world is humanity\'s divine purpose. Membership is growing rapidly.'**
  String get event_religionFounded_narrative;

  /// No description provided for @event_religionFounded_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Support it — the crew needs something to believe in'**
  String get event_religionFounded_choice0_text;

  /// No description provided for @event_religionFounded_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The faith gives structure and meaning to the voyage. Morale soars, though some resent the fervour.'**
  String get event_religionFounded_choice0_outcome;

  /// No description provided for @event_religionFounded_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Remain neutral — neither endorse nor suppress'**
  String get event_religionFounded_choice1_text;

  /// No description provided for @event_religionFounded_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The movement grows organically. It provides comfort without official backing.'**
  String get event_religionFounded_choice1_outcome;

  /// No description provided for @event_religionFounded_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Discourage it — we need scientists, not prophets'**
  String get event_religionFounded_choice2_text;

  /// No description provided for @event_religionFounded_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crackdown breeds resentment. The faithful go underground, and trust in leadership erodes.'**
  String get event_religionFounded_choice2_outcome;

  /// No description provided for @event_solarWindSurfing_title.
  ///
  /// In en, this message translates to:
  /// **'Solar Wind Surge'**
  String get event_solarWindSurfing_title;

  /// No description provided for @event_solarWindSurfing_narrative.
  ///
  /// In en, this message translates to:
  /// **'A nearby pulsar is emitting a powerful, steady solar wind. Our engineers suggest we could deploy the emergency sail and ride it like a wave — gaining enormous speed at no fuel cost.'**
  String get event_solarWindSurfing_narrative;

  /// No description provided for @event_solarWindSurfing_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy the sail — ride the wind'**
  String get event_solarWindSurfing_choice0_text;

  /// No description provided for @event_solarWindSurfing_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship accelerates magnificently. The structural stress is significant but the speed gain is worth it.'**
  String get event_solarWindSurfing_choice0_outcome;

  /// No description provided for @event_solarWindSurfing_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Use the wind to recharge systems instead'**
  String get event_solarWindSurfing_choice1_text;

  /// No description provided for @event_solarWindSurfing_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Rather than speed, we harvest energy. Tech and scanner arrays drink deeply from the charged particles.'**
  String get event_solarWindSurfing_choice1_outcome;

  /// No description provided for @event_memoryPlague_title.
  ///
  /// In en, this message translates to:
  /// **'Memory Corruption'**
  String get event_memoryPlague_title;

  /// No description provided for @event_memoryPlague_narrative.
  ///
  /// In en, this message translates to:
  /// **'A software virus, dormant since launch, activates and begins corrupting the ship\'s cultural database — music, literature, history. Centuries of human heritage are being erased byte by byte.'**
  String get event_memoryPlague_narrative;

  /// No description provided for @event_memoryPlague_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Divert all tech resources to quarantine the virus'**
  String get event_memoryPlague_choice0_text;

  /// No description provided for @event_memoryPlague_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Technicians work frantically. They save 70% of the archive but the virus damages tertiary tech systems on its way out.'**
  String get event_memoryPlague_choice0_outcome;

  /// No description provided for @event_memoryPlague_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Isolate the cultural database — let it burn, save the ship'**
  String get event_memoryPlague_choice1_text;

  /// No description provided for @event_memoryPlague_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The virus is starved of resources and dies. But the cultural archive is devastated. Colonists will arrive with fragments of Earth\'s memory.'**
  String get event_memoryPlague_choice1_outcome;

  /// No description provided for @event_memoryPlague_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Crowdsource recovery — wake colonists to rewrite from memory'**
  String get event_memoryPlague_choice2_text;

  /// No description provided for @event_memoryPlague_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Thousands contribute memories: songs, stories, recipes, poems. Three elderly colonists, weakened by the thaw, don\'t survive the process. The archive is rebuilt, imperfect but deeply human.'**
  String get event_memoryPlague_choice2_outcome;

  /// No description provided for @event_gravityLensPlanet_title.
  ///
  /// In en, this message translates to:
  /// **'Mirrorworld'**
  String get event_gravityLensPlanet_title;

  /// No description provided for @event_gravityLensPlanet_narrative.
  ///
  /// In en, this message translates to:
  /// **'Gravitational lensing reveals a planet that appears to be an exact duplicate of Earth — blue oceans, green continents, white clouds. But the lensing calculations show it is hundreds of light-years off our heading — impossibly far. Still, its spectral data could refine our search criteria.'**
  String get event_gravityLensPlanet_narrative;

  /// No description provided for @event_gravityLensPlanet_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Study its spectral signature to refine our search'**
  String get event_gravityLensPlanet_choice0_text;

  /// No description provided for @event_gravityLensPlanet_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The spectral data reveals biomarkers and atmospheric signatures we can now scan for. Hope sharpens into focus.'**
  String get event_gravityLensPlanet_choice0_outcome;

  /// No description provided for @event_gravityLensPlanet_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Log the coordinates but stay on course'**
  String get event_gravityLensPlanet_choice1_text;

  /// No description provided for @event_gravityLensPlanet_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Perhaps another ship will follow our charts someday. The crew watches the blue dot fade with mixed emotions.'**
  String get event_gravityLensPlanet_choice1_outcome;

  /// No description provided for @event_engineHarmonics_title.
  ///
  /// In en, this message translates to:
  /// **'Engine Harmonics'**
  String get event_engineHarmonics_title;

  /// No description provided for @event_engineHarmonics_narrative.
  ///
  /// In en, this message translates to:
  /// **'The main engine develops a resonance harmonic that vibrates through the entire ship at a frequency just below human hearing. Colonists report headaches, anxiety, and disturbed sleep. Engineers can fix it, but the repair requires a 12-hour engine shutdown.'**
  String get event_engineHarmonics_narrative;

  /// No description provided for @event_engineHarmonics_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Shut down and fix it properly'**
  String get event_engineHarmonics_choice0_text;

  /// No description provided for @event_engineHarmonics_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Twelve hours of drift. Navigation loses calibration, but the silence when engines restart is blissful.'**
  String get event_engineHarmonics_choice0_outcome;

  /// No description provided for @event_engineHarmonics_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Dampen it with counter-vibrations — a quick fix'**
  String get event_engineHarmonics_choice1_text;

  /// No description provided for @event_engineHarmonics_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The buzzing drops to tolerable levels. It\'s not gone, but the crew adapts. Tech systems strain under the load.'**
  String get event_engineHarmonics_choice1_outcome;

  /// No description provided for @event_arkMemory_title.
  ///
  /// In en, this message translates to:
  /// **'Earth\'s Last Broadcast'**
  String get event_arkMemory_title;

  /// No description provided for @event_arkMemory_narrative.
  ///
  /// In en, this message translates to:
  /// **'The long-range antenna catches a final automated broadcast from Earth. It\'s a recording: a child\'s voice reading names of everyone who couldn\'t leave. The list goes on for hours. The ship falls silent.'**
  String get event_arkMemory_narrative;

  /// No description provided for @event_arkMemory_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Play it ship-wide — they deserve to be heard'**
  String get event_arkMemory_choice0_text;

  /// No description provided for @event_arkMemory_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Every soul aboard listens. Crew members find their own families\' names. The grief is crushing, but it forges an unbreakable bond of purpose.'**
  String get event_arkMemory_choice0_outcome;

  /// No description provided for @event_arkMemory_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Archive it privately — spare the crew'**
  String get event_arkMemory_choice1_text;

  /// No description provided for @event_arkMemory_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The recording is preserved but not broadcast. Those who learn of it later feel both grateful and cheated.'**
  String get event_arkMemory_choice1_outcome;

  /// No description provided for @event_magneticStorm_title.
  ///
  /// In en, this message translates to:
  /// **'Interstellar Magnetic Storm'**
  String get event_magneticStorm_title;

  /// No description provided for @event_magneticStorm_narrative.
  ///
  /// In en, this message translates to:
  /// **'A tangled knot of magnetic field lines, expelled from a collapsing star, engulfs the ship. Electronics spark and crackle. The hull rings like a bell.'**
  String get event_magneticStorm_narrative;

  /// No description provided for @event_magneticStorm_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Demagnetise the hull — protect electronics'**
  String get event_magneticStorm_choice0_text;

  /// No description provided for @event_magneticStorm_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A controlled discharge saves the computers but the hull plating loses its magnetic shielding layer.'**
  String get event_magneticStorm_choice0_outcome;

  /// No description provided for @event_magneticStorm_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Let the hull absorb it — protect nothing'**
  String get event_magneticStorm_choice1_text;

  /// No description provided for @event_magneticStorm_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The storm passes. Hull is magnetised and slightly stronger, but half the sensor grid is fried.'**
  String get event_magneticStorm_choice1_outcome;

  /// No description provided for @event_magneticStorm_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Eject a probe as a lightning rod'**
  String get event_magneticStorm_choice2_text;

  /// No description provided for @event_magneticStorm_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The magnetised probe draws the worst of the field lines away from the ship. Electronics are largely spared.'**
  String get event_magneticStorm_choice2_outcome;

  /// No description provided for @event_oxygenGarden_title.
  ///
  /// In en, this message translates to:
  /// **'Garden Bloom'**
  String get event_oxygenGarden_title;

  /// No description provided for @event_oxygenGarden_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s emergency oxygen garden — a backup never meant to be used — spontaneously blooms. Flowers that haven\'t opened since Earth fill the corridors with colour and scent. The botanists are crying.'**
  String get event_oxygenGarden_narrative;

  /// No description provided for @event_oxygenGarden_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Expand the garden — dedicate more space to it'**
  String get event_oxygenGarden_choice0_text;

  /// No description provided for @event_oxygenGarden_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The garden grows into a living memorial of Earth. Air quality improves, morale soars, and botanists develop new strains suited for alien soil.'**
  String get event_oxygenGarden_choice0_outcome;

  /// No description provided for @event_oxygenGarden_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Enjoy it but maintain current resource allocation'**
  String get event_oxygenGarden_choice1_text;

  /// No description provided for @event_oxygenGarden_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The garden remains a small miracle. Crew visit it like a shrine. It asks nothing and gives everything.'**
  String get event_oxygenGarden_choice1_outcome;

  /// No description provided for @event_roguePlanet_title.
  ///
  /// In en, this message translates to:
  /// **'Rogue Planet Encounter'**
  String get event_roguePlanet_title;

  /// No description provided for @event_roguePlanet_narrative.
  ///
  /// In en, this message translates to:
  /// **'A starless rogue planet drifts across our path — a world ejected from its solar system billions of years ago. Despite having no star, deep-core geological activity keeps a subsurface ocean warm. Life signs flicker on the scanner.'**
  String get event_roguePlanet_narrative;

  /// No description provided for @event_roguePlanet_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Send a probe to study the life forms'**
  String get event_roguePlanet_choice0_text;

  /// No description provided for @event_roguePlanet_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe discovers bioluminescent organisms thriving in the dark ocean. Their biochemistry teaches us new ways to sustain life in hostile conditions.'**
  String get event_roguePlanet_choice0_outcome;

  /// No description provided for @event_roguePlanet_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Mine the surface for rare minerals'**
  String get event_roguePlanet_choice1_text;

  /// No description provided for @event_roguePlanet_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The rogue planet\'s crust is rich in metals formed under extreme pressure. Our resource reserves swell.'**
  String get event_roguePlanet_choice1_outcome;

  /// No description provided for @event_roguePlanet_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Pass by — we can\'t afford the detour'**
  String get event_roguePlanet_choice2_text;

  /// No description provided for @event_roguePlanet_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The dark world shrinks behind us. The crew watches the faint shimmer of its subsurface ocean fade from sensors.'**
  String get event_roguePlanet_choice2_outcome;

  /// No description provided for @event_artCompetition_title.
  ///
  /// In en, this message translates to:
  /// **'The Long Canvas'**
  String get event_artCompetition_title;

  /// No description provided for @event_artCompetition_narrative.
  ///
  /// In en, this message translates to:
  /// **'With morale wavering, the cultural officer organises a ship-wide art competition: paint, sculpt, write, or compose something that captures what the voyage means to you. Participation is unexpectedly massive.'**
  String get event_artCompetition_narrative;

  /// No description provided for @event_artCompetition_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dedicate resources — let creativity flourish'**
  String get event_artCompetition_choice0_text;

  /// No description provided for @event_artCompetition_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Supplies are diverted to art materials. The resulting exhibition transforms the ship. People remember why they\'re fighting to survive.'**
  String get event_artCompetition_choice0_outcome;

  /// No description provided for @event_artCompetition_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Encourage it but provide no extra resources'**
  String get event_artCompetition_choice1_text;

  /// No description provided for @event_artCompetition_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Colonists create with whatever they find. The art is raw, desperate, and beautiful. Morale steadies.'**
  String get event_artCompetition_choice1_outcome;

  /// No description provided for @event_subspaceEcho_title.
  ///
  /// In en, this message translates to:
  /// **'Subspace Echo'**
  String get event_subspaceEcho_title;

  /// No description provided for @event_subspaceEcho_narrative.
  ///
  /// In en, this message translates to:
  /// **'The communications array picks up voices — human voices — from somewhere ahead of us in space. They speak of a colony, of children, of harvests. Is this a transmission from the future? From a parallel timeline? Or just a cruel echo of wishful thinking?'**
  String get event_subspaceEcho_narrative;

  /// No description provided for @event_subspaceEcho_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Follow the signal bearing — it could lead us home'**
  String get event_subspaceEcho_choice0_text;

  /// No description provided for @event_subspaceEcho_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The heading adjustment is slight. Whether the voices are real or not, the crew sails with purpose.'**
  String get event_subspaceEcho_choice0_outcome;

  /// No description provided for @event_subspaceEcho_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Record everything for analysis'**
  String get event_subspaceEcho_choice1_text;

  /// No description provided for @event_subspaceEcho_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Linguists and physicists pore over the recording. They extract navigational references that improve our charts.'**
  String get event_subspaceEcho_choice1_outcome;

  /// No description provided for @event_subspaceEcho_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Dismiss it — space plays tricks on the lonely'**
  String get event_subspaceEcho_choice2_text;

  /// No description provided for @event_subspaceEcho_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The pragmatic choice. Some crew are disappointed, but the ship stays on its proven course.'**
  String get event_subspaceEcho_choice2_outcome;

  /// No description provided for @event_boonPerfectCalm_title.
  ///
  /// In en, this message translates to:
  /// **'The Great Calm'**
  String get event_boonPerfectCalm_title;

  /// No description provided for @event_boonPerfectCalm_narrative.
  ///
  /// In en, this message translates to:
  /// **'For reasons no physicist can explain, the ship enters a region of space that is preternaturally still — no radiation, no micro-debris, no gravitational interference. Every system on the ship runs at peak efficiency. The crew sleeps soundly for the first time in months.'**
  String get event_boonPerfectCalm_narrative;

  /// No description provided for @event_boonPerfectCalm_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Use the calm for comprehensive repairs'**
  String get event_boonPerfectCalm_choice0_text;

  /// No description provided for @event_boonPerfectCalm_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Repair crews work in perfect conditions. Every system gets attention. The ship emerges renewed.'**
  String get event_boonPerfectCalm_choice0_outcome;

  /// No description provided for @event_boonPerfectCalm_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Let the crew rest — they\'ve earned it'**
  String get event_boonPerfectCalm_choice1_text;

  /// No description provided for @event_boonPerfectCalm_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A ship-wide stand-down. Colonists sleep, share meals, tell stories. The human cost of the voyage is, briefly, repaid.'**
  String get event_boonPerfectCalm_choice1_outcome;

  /// No description provided for @event_boonAncientWaystation_title.
  ///
  /// In en, this message translates to:
  /// **'Ancient Waystation'**
  String get event_boonAncientWaystation_title;

  /// No description provided for @event_boonAncientWaystation_narrative.
  ///
  /// In en, this message translates to:
  /// **'Nestled in the gravity well between two dead stars, an ancient station still functions — automated, patient, waiting for travellers. Its bays open as we approach. Repair drones activate. Fuel reserves extend toward us. Someone, long ago, built this for people like us.'**
  String get event_boonAncientWaystation_narrative;

  /// No description provided for @event_boonAncientWaystation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dock and accept everything it offers'**
  String get event_boonAncientWaystation_choice0_text;

  /// No description provided for @event_boonAncientWaystation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The station repairs, refuels, and recalibrates the ship with technology centuries ahead of ours. When we depart, the station powers down — its purpose fulfilled.'**
  String get event_boonAncientWaystation_choice0_outcome;

  /// No description provided for @event_boonAncientWaystation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Accept repairs but leave it running for others who follow'**
  String get event_boonAncientWaystation_choice1_text;

  /// No description provided for @event_boonAncientWaystation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We take only what we need and transmit the station\'s coordinates back toward Earth. The crew feels noble.'**
  String get event_boonAncientWaystation_choice1_outcome;

  /// No description provided for @event_relicSentinel_title.
  ///
  /// In en, this message translates to:
  /// **'The Sentinel'**
  String get event_relicSentinel_title;

  /// No description provided for @event_relicSentinel_narrative.
  ///
  /// In en, this message translates to:
  /// **'A towering construct orbits a barren moon — a lone guardian left behind by its builders. It is easily a kilometre tall, shaped like a spear of black glass. As we approach, a single red eye opens at its apex and tracks the ship. It does not fire. It does not hail. It watches.'**
  String get event_relicSentinel_narrative;

  /// No description provided for @event_relicSentinel_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Transmit our mission profile — show we mean no harm'**
  String get event_relicSentinel_choice0_text;

  /// No description provided for @event_relicSentinel_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The eye dims to amber, then green. A data packet arrives: coordinates of three star systems marked \"SAFE\" in a universal mathematical notation. A gift from a watchman.'**
  String get event_relicSentinel_choice0_outcome;

  /// No description provided for @event_relicSentinel_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Hold position and study it passively'**
  String get event_relicSentinel_choice1_text;

  /// No description provided for @event_relicSentinel_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Hours of observation yield insights into materials science that shouldn\'t be possible. The hull plating team takes frantic notes.'**
  String get event_relicSentinel_choice1_outcome;

  /// No description provided for @event_relicSentinel_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Withdraw immediately — we don\'t know its rules'**
  String get event_relicSentinel_choice2_text;

  /// No description provided for @event_relicSentinel_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The eye closes as we retreat. Whatever test that was, we chose not to take it. The crew debates for days.'**
  String get event_relicSentinel_choice2_outcome;

  /// No description provided for @event_relicSeedProbe_title.
  ///
  /// In en, this message translates to:
  /// **'Wandering Seed'**
  String get event_relicSeedProbe_title;

  /// No description provided for @event_relicSeedProbe_narrative.
  ///
  /// In en, this message translates to:
  /// **'A small, elegant probe tumbles through the void, broadcasting on every frequency simultaneously. Its shell is ceramic, etched with symbols that shift when observed. Inside: a pressurised chamber containing soil, seeds, and frozen microorganisms from a world that no longer exists.'**
  String get event_relicSeedProbe_narrative;

  /// No description provided for @event_relicSeedProbe_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Integrate the biological payload into our seed banks'**
  String get event_relicSeedProbe_choice0_text;

  /// No description provided for @event_relicSeedProbe_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Alien seeds and microbes are carefully catalogued and preserved. They could terraform a barren world into something alive. Biologists call it a miracle in a bottle.'**
  String get event_relicSeedProbe_choice0_outcome;

  /// No description provided for @event_relicSeedProbe_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Study the probe\'s propulsion and navigation systems'**
  String get event_relicSeedProbe_choice1_text;

  /// No description provided for @event_relicSeedProbe_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s drive is centuries beyond ours — a reactionless thruster the size of a fist. Engineers reverse-engineer fragments of the design.'**
  String get event_relicSeedProbe_choice1_outcome;

  /// No description provided for @event_relicSeedProbe_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Preserve the entire probe intact as a cultural artefact'**
  String get event_relicSeedProbe_choice2_text;

  /// No description provided for @event_relicSeedProbe_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Displayed in the ship\'s atrium, the alien seed becomes a symbol of kinship between species. Someone else, somewhere, tried to save their world too.'**
  String get event_relicSeedProbe_choice2_outcome;

  /// No description provided for @event_relicWarningBuoy_title.
  ///
  /// In en, this message translates to:
  /// **'Warning Buoy'**
  String get event_relicWarningBuoy_title;

  /// No description provided for @event_relicWarningBuoy_narrative.
  ///
  /// In en, this message translates to:
  /// **'A network of small buoys, hundreds of them, arranged in a perfect geometric pattern across our flight path. Each emits the same signal — a simple repeating pulse that increases in frequency the closer we get. It feels like a warning. Or a fence.'**
  String get event_relicWarningBuoy_narrative;

  /// No description provided for @event_relicWarningBuoy_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Heed the warning — alter course around the network'**
  String get event_relicWarningBuoy_choice0_text;

  /// No description provided for @event_relicWarningBuoy_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The detour costs time and stresses navigation, but as we skirt the boundary, long-range sensors detect what lies beyond: a region of space littered with the debris of shattered worlds. The buoys saved us.'**
  String get event_relicWarningBuoy_choice0_outcome;

  /// No description provided for @event_relicWarningBuoy_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Push through — we can\'t afford detours'**
  String get event_relicWarningBuoy_choice1_text;

  /// No description provided for @event_relicWarningBuoy_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Nothing happens as we cross the line. The buoys go silent. Whatever they were guarding against, it\'s either gone or we got lucky. The crew breathes again.'**
  String get event_relicWarningBuoy_choice1_outcome;

  /// No description provided for @event_relicWarningBuoy_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Capture a buoy for analysis'**
  String get event_relicWarningBuoy_choice2_text;

  /// No description provided for @event_relicWarningBuoy_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The buoy\'s innards contain a compressed data archive — stellar cartography of this region from a million years ago. Some of the data is still accurate.'**
  String get event_relicWarningBuoy_choice2_outcome;

  /// No description provided for @event_relicMirrorArray_title.
  ///
  /// In en, this message translates to:
  /// **'The Mirror Array'**
  String get event_relicMirrorArray_title;

  /// No description provided for @event_relicMirrorArray_narrative.
  ///
  /// In en, this message translates to:
  /// **'Thousands of flat, reflective surfaces hang motionless in space, arranged in concentric rings spanning hundreds of kilometres. They focus starlight from a distant sun into a single point — an artificial star, burning in the void. Someone built a lighthouse between galaxies.'**
  String get event_relicMirrorArray_narrative;

  /// No description provided for @event_relicMirrorArray_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Bask in the focused light — recharge everything'**
  String get event_relicMirrorArray_choice0_text;

  /// No description provided for @event_relicMirrorArray_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The concentrated starlight floods our solar collectors. Power reserves surge. The warm light lifts every soul aboard after months in cold dark.'**
  String get event_relicMirrorArray_choice0_outcome;

  /// No description provided for @event_relicMirrorArray_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Study the mirror material — it shouldn\'t exist'**
  String get event_relicMirrorArray_choice1_text;

  /// No description provided for @event_relicMirrorArray_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The mirrors are made of a material with perfect reflectivity — zero absorption at any wavelength. Engineers extract a shard. Hull plating will never be the same.'**
  String get event_relicMirrorArray_choice1_outcome;

  /// No description provided for @event_relicMirrorArray_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Search the focal point — something is being illuminated'**
  String get event_relicMirrorArray_choice2_text;

  /// No description provided for @event_relicMirrorArray_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'At the convergence point: a small capsule, perfectly preserved in concentrated light. Inside, a holographic star map so detailed it takes our computers days to index.'**
  String get event_relicMirrorArray_choice2_outcome;

  /// No description provided for @event_relicGraveyard_title.
  ///
  /// In en, this message translates to:
  /// **'The Probe Graveyard'**
  String get event_relicGraveyard_title;

  /// No description provided for @event_relicGraveyard_narrative.
  ///
  /// In en, this message translates to:
  /// **'We drift into a cloud of derelict probes — thousands of them, from dozens of different civilisations. Some are ancient beyond reckoning, fused by cosmic radiation into metallic fossils. Others still blink with fading power. This was a crossroads once. Every species that passed this way left something behind.'**
  String get event_relicGraveyard_narrative;

  /// No description provided for @event_relicGraveyard_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Systematic salvage — harvest the best technology'**
  String get event_relicGraveyard_choice0_text;

  /// No description provided for @event_relicGraveyard_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineering teams work in shifts, stripping alien tech from a hundred different designs. The fusion of ideas produces breakthroughs in every system.'**
  String get event_relicGraveyard_choice0_outcome;

  /// No description provided for @event_relicGraveyard_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Focus on the navigation data stored in their memory banks'**
  String get event_relicGraveyard_choice1_text;

  /// No description provided for @event_relicGraveyard_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Cross-referencing star charts from a dozen species creates the most complete map of this galactic arm ever assembled.'**
  String get event_relicGraveyard_choice1_outcome;

  /// No description provided for @event_relicGraveyard_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Add our own probe to the graveyard — leave a marker'**
  String get event_relicGraveyard_choice2_text;

  /// No description provided for @event_relicGraveyard_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'We fabricate a small beacon carrying humanity\'s story and add it to the collection. The crew feels connected to something vast and ancient.'**
  String get event_relicGraveyard_choice2_outcome;

  /// No description provided for @event_relicDreamcatcher_title.
  ///
  /// In en, this message translates to:
  /// **'The Dreamcatcher'**
  String get event_relicDreamcatcher_title;

  /// No description provided for @event_relicDreamcatcher_narrative.
  ///
  /// In en, this message translates to:
  /// **'A web of filaments, thin as spider silk but spanning thousands of kilometres, is strung between two rogue planetoids. It is not a net — it\'s an antenna, tuned to frequencies that correspond to human brainwave patterns. When we enter its range, every sleeping colonist begins to dream the same dream: a thriving city under an amber sky.'**
  String get event_relicDreamcatcher_narrative;

  /// No description provided for @event_relicDreamcatcher_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Record the dream coordinates — the city may be real'**
  String get event_relicDreamcatcher_choice0_text;

  /// No description provided for @event_relicDreamcatcher_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Neuroscientists decode spatial information from the shared dream. It corresponds to a real star system — and the city in the vision wasn\'t a metaphor. Someone is out there, and they\'re expecting us.'**
  String get event_relicDreamcatcher_choice0_outcome;

  /// No description provided for @event_relicDreamcatcher_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest filament samples — the material is extraordinary'**
  String get event_relicDreamcatcher_choice1_text;

  /// No description provided for @event_relicDreamcatcher_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The filaments are a room-temperature superconductor. Integrated into our systems, they reduce power loss to nearly zero.'**
  String get event_relicDreamcatcher_choice1_outcome;

  /// No description provided for @event_relicDreamcatcher_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Cut the web and free the dreamers'**
  String get event_relicDreamcatcher_choice2_text;

  /// No description provided for @event_relicDreamcatcher_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The dreams stop. Colonists wake disoriented but unharmed. Some mourn the lost vision. Others are grateful to sleep without alien whispers.'**
  String get event_relicDreamcatcher_choice2_outcome;

  /// No description provided for @event_relicRosetta_title.
  ///
  /// In en, this message translates to:
  /// **'Rosetta Object'**
  String get event_relicRosetta_title;

  /// No description provided for @event_relicRosetta_narrative.
  ///
  /// In en, this message translates to:
  /// **'A small, dense cube of unknown metal tumbles past the ship. Each face is inscribed with the same message in a different notation system — mathematical, chemical, genetic, acoustic, electromagnetic, and one we cannot identify. It is a Rosetta Stone for the cosmos.'**
  String get event_relicRosetta_narrative;

  /// No description provided for @event_relicRosetta_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Decode the sixth face — the unknown notation'**
  String get event_relicRosetta_choice0_text;

  /// No description provided for @event_relicRosetta_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Months of analysis yield a breakthrough: the sixth system encodes spatial coordinates using gravity waves. Our understanding of physics takes a generational leap.'**
  String get event_relicRosetta_choice0_outcome;

  /// No description provided for @event_relicRosetta_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Use the chemical face to synthesise new compounds'**
  String get event_relicRosetta_choice1_text;

  /// No description provided for @event_relicRosetta_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The chemical notation describes materials we\'ve never imagined. Engineers fabricate hull patches that are lighter and stronger than anything from Earth.'**
  String get event_relicRosetta_choice1_outcome;

  /// No description provided for @event_relicRosetta_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Broadcast the genetic face to our seed banks'**
  String get event_relicRosetta_choice2_text;

  /// No description provided for @event_relicRosetta_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The genetic notation contains optimised DNA sequences for radiation resistance and nutrient absorption. Our crops and colonists will be hardier on alien soil.'**
  String get event_relicRosetta_choice2_outcome;

  /// No description provided for @event_relicGhostFleet_title.
  ///
  /// In en, this message translates to:
  /// **'Ghost Fleet'**
  String get event_relicGhostFleet_title;

  /// No description provided for @event_relicGhostFleet_narrative.
  ///
  /// In en, this message translates to:
  /// **'Scanners paint a chilling picture: a fleet of alien warships, hundreds strong, hanging motionless in formation. They are ancient — power readings are zero, hulls pitted by aeons of micro-impacts. Whatever battle they were sailing toward never came. They\'ve been waiting here, dead and patient, for longer than human civilisation has existed.'**
  String get event_relicGhostFleet_narrative;

  /// No description provided for @event_relicGhostFleet_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Board the flagship — if anyone had the best tech, it did'**
  String get event_relicGhostFleet_choice0_text;

  /// No description provided for @event_relicGhostFleet_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The flagship\'s command deck still holds an intact tactical computer. Its predictive algorithms are centuries ahead of ours. Navigation and threat detection improve dramatically.'**
  String get event_relicGhostFleet_choice0_outcome;

  /// No description provided for @event_relicGhostFleet_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Strip armour plating from the escort vessels'**
  String get event_relicGhostFleet_choice1_text;

  /// No description provided for @event_relicGhostFleet_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Alien warship armour is designed to withstand weapons we can\'t even conceptualise. Bolted onto our hull, it makes the colony ship nearly indestructible.'**
  String get event_relicGhostFleet_choice1_outcome;

  /// No description provided for @event_relicGhostFleet_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Salvage their cryogenic systems — they carried soldiers'**
  String get event_relicGhostFleet_choice2_text;

  /// No description provided for @event_relicGhostFleet_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Alien cryo-tech operates on principles we\'ve never considered. Our pods run cooler, smoother, and more reliably after the retrofit.'**
  String get event_relicGhostFleet_choice2_outcome;

  /// No description provided for @event_scannerCalibrationDrift_title.
  ///
  /// In en, this message translates to:
  /// **'Scanner Calibration Drift'**
  String get event_scannerCalibrationDrift_title;

  /// No description provided for @event_scannerCalibrationDrift_narrative.
  ///
  /// In en, this message translates to:
  /// **'Routine diagnostics reveal that several scanner subsystems have drifted out of calibration after the last FTL jump. The atmospheric and temperature scanners are reading ghost signals. Engineers can fix them, but it will take time and resources.'**
  String get event_scannerCalibrationDrift_narrative;

  /// No description provided for @event_scannerCalibrationDrift_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Full recalibration — divert tech resources'**
  String get event_scannerCalibrationDrift_choice0_text;

  /// No description provided for @event_scannerCalibrationDrift_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A painstaking realignment restores both scanners to near-perfect accuracy, but the tech bay is drained.'**
  String get event_scannerCalibrationDrift_choice0_outcome;

  /// No description provided for @event_scannerCalibrationDrift_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Quick fix — recalibrate atmospheric only'**
  String get event_scannerCalibrationDrift_choice1_text;

  /// No description provided for @event_scannerCalibrationDrift_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The atmospheric scanner is restored. The temperature scanner remains unreliable for now.'**
  String get event_scannerCalibrationDrift_choice1_outcome;

  /// No description provided for @event_scannerCalibrationDrift_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy a probe for reference calibration'**
  String get event_scannerCalibrationDrift_choice2_text;

  /// No description provided for @event_scannerCalibrationDrift_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe provides a clean reference signal. Both scanners lock on and recalibrate automatically.'**
  String get event_scannerCalibrationDrift_choice2_outcome;

  /// No description provided for @event_ionStormScanners_title.
  ///
  /// In en, this message translates to:
  /// **'Ion Storm Interference'**
  String get event_ionStormScanners_title;

  /// No description provided for @event_ionStormScanners_narrative.
  ///
  /// In en, this message translates to:
  /// **'An ion storm sweeps through the sector, flooding scanner arrays with noise. The mineral and water detection systems are taking the brunt of the electromagnetic interference.'**
  String get event_ionStormScanners_narrative;

  /// No description provided for @event_ionStormScanners_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Power down scanners until the storm passes'**
  String get event_ionStormScanners_choice0_text;

  /// No description provided for @event_ionStormScanners_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanners survive but lose calibration data. Mineral and water readings will be less precise.'**
  String get event_ionStormScanners_choice0_outcome;

  /// No description provided for @event_ionStormScanners_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Keep scanning — push through the noise'**
  String get event_ionStormScanners_choice1_text;

  /// No description provided for @event_ionStormScanners_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Raw data floods in, but the filter circuits burn out on two subsystems. Gravimetric scans are also affected.'**
  String get event_ionStormScanners_choice1_outcome;

  /// No description provided for @event_ionStormScanners_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use the storm to stress-test and improve filters'**
  String get event_ionStormScanners_choice2_text;

  /// No description provided for @event_ionStormScanners_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The science team uses the noise to train adaptive filters. Water scanner improves, but mineral scanner takes damage.'**
  String get event_ionStormScanners_choice2_outcome;

  /// No description provided for @event_bioScannerContamination_title.
  ///
  /// In en, this message translates to:
  /// **'Bio-Scanner Contamination'**
  String get event_bioScannerContamination_title;

  /// No description provided for @event_bioScannerContamination_narrative.
  ///
  /// In en, this message translates to:
  /// **'The life-signs scanner has been contaminated by residual organic matter from the last planetary scan. False positives are everywhere. The gravimetric scanner is also showing sympathetic noise.'**
  String get event_bioScannerContamination_narrative;

  /// No description provided for @event_bioScannerContamination_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Sterilise the sensor array — full decontamination'**
  String get event_bioScannerContamination_choice0_text;

  /// No description provided for @event_bioScannerContamination_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A thorough cleaning restores the life-signs scanner but the chemical agents corrode the gravimetric sensor housing.'**
  String get event_bioScannerContamination_choice0_outcome;

  /// No description provided for @event_bioScannerContamination_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Software filter — compensate algorithmically'**
  String get event_bioScannerContamination_choice1_text;

  /// No description provided for @event_bioScannerContamination_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The filter works well enough, but underlying contamination will slowly degrade both systems.'**
  String get event_bioScannerContamination_choice1_outcome;

  /// No description provided for @event_scannerPowerSurge_title.
  ///
  /// In en, this message translates to:
  /// **'Scanner Power Surge'**
  String get event_scannerPowerSurge_title;

  /// No description provided for @event_scannerPowerSurge_narrative.
  ///
  /// In en, this message translates to:
  /// **'A power conduit near the scanner bay overloads, sending a surge through multiple subsystems. The atmospheric and life-signs scanners take direct hits. Shields absorb some of the excess.'**
  String get event_scannerPowerSurge_narrative;

  /// No description provided for @event_scannerPowerSurge_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Reroute power — save the scanners'**
  String get event_scannerPowerSurge_choice0_text;

  /// No description provided for @event_scannerPowerSurge_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Quick action by the engineering team limits the damage, but the shields take the redirected energy.'**
  String get event_scannerPowerSurge_choice0_outcome;

  /// No description provided for @event_scannerPowerSurge_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Let the surge run its course'**
  String get event_scannerPowerSurge_choice1_text;

  /// No description provided for @event_scannerPowerSurge_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Scanners take the full brunt. Atmospheric and life-signs readings are significantly degraded.'**
  String get event_scannerPowerSurge_choice1_outcome;

  /// No description provided for @event_scannerPowerSurge_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice a probe\'s power cell to absorb the surge'**
  String get event_scannerPowerSurge_choice2_text;

  /// No description provided for @event_scannerPowerSurge_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s capacitors soak up the excess energy like a sponge. Scanner damage is negligible.'**
  String get event_scannerPowerSurge_choice2_outcome;

  /// No description provided for @event_relicWorldEngine_title.
  ///
  /// In en, this message translates to:
  /// **'The World Engine'**
  String get event_relicWorldEngine_title;

  /// No description provided for @event_relicWorldEngine_narrative.
  ///
  /// In en, this message translates to:
  /// **'Deep sensor sweeps reveal something impossible: a machine the size of a small moon, dormant in the dark between stars. Its surface is covered in continent-scale mechanisms — atmosphere processors, magnetic field generators, tectonic stabilisers. Someone built a machine that builds worlds.'**
  String get event_relicWorldEngine_narrative;

  /// No description provided for @event_relicWorldEngine_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Download the terraforming blueprints'**
  String get event_relicWorldEngine_choice0_text;

  /// No description provided for @event_relicWorldEngine_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The blueprints are vast and partially corrupted, but what we recover could make any hostile world habitable. Our colonists will reshape their new home.'**
  String get event_relicWorldEngine_choice0_outcome;

  /// No description provided for @event_relicWorldEngine_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest construction materials from its hull'**
  String get event_relicWorldEngine_choice1_text;

  /// No description provided for @event_relicWorldEngine_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The World Engine\'s hull is made of metamaterials that self-repair when damaged. Integrated into our ship, they slowly mend existing hull breaches.'**
  String get event_relicWorldEngine_choice1_outcome;

  /// No description provided for @event_relicWorldEngine_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt to reactivate it — aim it at our target system'**
  String get event_relicWorldEngine_choice2_text;

  /// No description provided for @event_relicWorldEngine_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The machine stirs. Ancient systems cycle through startup sequences. A beam of energy lances toward a distant star. Whether it works won\'t be known until we arrive, but the readings are promising.'**
  String get event_relicWorldEngine_choice2_outcome;

  /// No description provided for @event_uneventfulMaintenance_title.
  ///
  /// In en, this message translates to:
  /// **'Routine Maintenance Shift'**
  String get event_uneventfulMaintenance_title;

  /// No description provided for @event_uneventfulMaintenance_narrative.
  ///
  /// In en, this message translates to:
  /// **'Nothing demands attention. The ship hums steadily through the void and the duty roster calls for a routine maintenance window. The crew chief asks where to focus the shift\'s effort.'**
  String get event_uneventfulMaintenance_narrative;

  /// No description provided for @event_uneventfulMaintenance_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Focus on hull micro-fracture sealing'**
  String get event_uneventfulMaintenance_choice0_text;

  /// No description provided for @event_uneventfulMaintenance_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A quiet shift spent patching hairline cracks. Nothing dramatic, but the hull is marginally better for it.'**
  String get event_uneventfulMaintenance_choice0_outcome;

  /// No description provided for @event_uneventfulMaintenance_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Recalibrate the forward scanners'**
  String get event_uneventfulMaintenance_choice1_text;

  /// No description provided for @event_uneventfulMaintenance_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanner technician spends a few hours fine-tuning. The readings sharpen ever so slightly.'**
  String get event_uneventfulMaintenance_choice1_outcome;

  /// No description provided for @event_uneventfulQuietWatch_title.
  ///
  /// In en, this message translates to:
  /// **'Quiet Watch'**
  String get event_uneventfulQuietWatch_title;

  /// No description provided for @event_uneventfulQuietWatch_narrative.
  ///
  /// In en, this message translates to:
  /// **'The stars drift by in silence. The bridge is calm, the instruments steady. It is one of those rare stretches where the universe asks nothing of you.'**
  String get event_uneventfulQuietWatch_narrative;

  /// No description provided for @event_uneventfulQuietWatch_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Let the crew rest — they\'ve earned a quiet shift'**
  String get event_uneventfulQuietWatch_choice0_text;

  /// No description provided for @event_uneventfulQuietWatch_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A few hours of genuine peace. People sleep deeper, tensions ease, and the cultural officer notes a slight lift in morale.'**
  String get event_uneventfulQuietWatch_choice0_outcome;

  /// No description provided for @event_uneventfulQuietWatch_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Run low-priority diagnostics while it\'s calm'**
  String get event_uneventfulQuietWatch_choice1_text;

  /// No description provided for @event_uneventfulQuietWatch_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Minor issues are caught and logged. Nothing urgent, but the tech logs are a little cleaner.'**
  String get event_uneventfulQuietWatch_choice1_outcome;

  /// No description provided for @event_uneventfulCryopodCheck_title.
  ///
  /// In en, this message translates to:
  /// **'Cryopod Check — All Nominal'**
  String get event_uneventfulCryopodCheck_title;

  /// No description provided for @event_uneventfulCryopodCheck_narrative.
  ///
  /// In en, this message translates to:
  /// **'The quarterly cryopod audit comes and goes without a single alarm. Every pod reads green. The medical team has a rare moment of calm.'**
  String get event_uneventfulCryopodCheck_narrative;

  /// No description provided for @event_uneventfulCryopodCheck_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Wake a few colonists briefly for a morale visit'**
  String get event_uneventfulCryopodCheck_choice0_text;

  /// No description provided for @event_uneventfulCryopodCheck_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Three colonists are brought to consciousness for an hour. They share stories, hug old friends, and return to cryo smiling.'**
  String get event_uneventfulCryopodCheck_choice0_outcome;

  /// No description provided for @event_uneventfulCryopodCheck_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Let them sleep — don\'t risk unnecessary wake cycles'**
  String get event_uneventfulCryopodCheck_choice1_text;

  /// No description provided for @event_uneventfulCryopodCheck_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The pods continue their flawless operation. The medics enjoy a quiet cup of tea instead.'**
  String get event_uneventfulCryopodCheck_choice1_outcome;

  /// No description provided for @event_uneventfulCartography_title.
  ///
  /// In en, this message translates to:
  /// **'Stellar Cartography Update'**
  String get event_uneventfulCartography_title;

  /// No description provided for @event_uneventfulCartography_narrative.
  ///
  /// In en, this message translates to:
  /// **'The navigation team\'s scheduled cartography update reveals nothing unusual — just the expected star fields shifting as we travel. A calm day for the navigators.'**
  String get event_uneventfulCartography_narrative;

  /// No description provided for @event_uneventfulCartography_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Recalibrate navigation against the new star positions'**
  String get event_uneventfulCartography_choice0_text;

  /// No description provided for @event_uneventfulCartography_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A small heading correction, barely perceptible. The nav computer hums contentedly.'**
  String get event_uneventfulCartography_choice0_outcome;

  /// No description provided for @event_uneventfulCartography_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Update the star charts for the colony archive'**
  String get event_uneventfulCartography_choice1_text;

  /// No description provided for @event_uneventfulCartography_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Future colonists will have slightly better maps of this region. A small gift to posterity.'**
  String get event_uneventfulCartography_choice1_outcome;

  /// No description provided for @event_uneventfulAnniversary_title.
  ///
  /// In en, this message translates to:
  /// **'Ship\'s Anniversary'**
  String get event_uneventfulAnniversary_title;

  /// No description provided for @event_uneventfulAnniversary_narrative.
  ///
  /// In en, this message translates to:
  /// **'One year since launch — or is it two? Time blurs in deep space. Someone in the galley has baked a cake from reconstituted stores. The captain must decide how to mark the occasion.'**
  String get event_uneventfulAnniversary_narrative;

  /// No description provided for @event_uneventfulAnniversary_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Small celebration — music, cake, a toast to Earth'**
  String get event_uneventfulAnniversary_choice0_text;

  /// No description provided for @event_uneventfulAnniversary_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'An hour of warmth in the cold void. People laugh, some cry, and everyone feels a little more human.'**
  String get event_uneventfulAnniversary_choice0_outcome;

  /// No description provided for @event_uneventfulAnniversary_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Business as usual — we celebrate when we arrive'**
  String get event_uneventfulAnniversary_choice1_text;

  /// No description provided for @event_uneventfulAnniversary_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew respects the stoic approach. Focus sharpens, and the on-duty team runs an extra systems check.'**
  String get event_uneventfulAnniversary_choice1_outcome;

  /// No description provided for @event_databaseLiterature_title.
  ///
  /// In en, this message translates to:
  /// **'Earth\'s Literature Archives'**
  String get event_databaseLiterature_title;

  /// No description provided for @event_databaseLiterature_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s AI opens a long-sealed section of the cultural database: the complete literature archive of Earth. Novels, poetry, plays — millions of works spanning every language and era. The crew gathers for a reading.'**
  String get event_databaseLiterature_narrative;

  /// No description provided for @event_databaseLiterature_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Broadcast selected readings ship-wide'**
  String get event_databaseLiterature_choice0_text;

  /// No description provided for @event_databaseLiterature_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Shakespeare echoes through the corridors. Rumi\'s verses play in the hydroponics bay. The crew remembers what they carry.'**
  String get event_databaseLiterature_choice0_outcome;

  /// No description provided for @event_databaseLiterature_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Index the archive for educational programs'**
  String get event_databaseLiterature_choice1_text;

  /// No description provided for @event_databaseLiterature_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The cataloguing effort strengthens the ship\'s knowledge base and gives the cultural officer new teaching materials.'**
  String get event_databaseLiterature_choice1_outcome;

  /// No description provided for @event_databaseSchematics_title.
  ///
  /// In en, this message translates to:
  /// **'Engineering Schematic Review'**
  String get event_databaseSchematics_title;

  /// No description provided for @event_databaseSchematics_narrative.
  ///
  /// In en, this message translates to:
  /// **'An engineer stumbles upon a forgotten partition in the ship\'s database: detailed schematics from Earth\'s final decade of engineering — fusion reactor designs, metamaterial blueprints, and experimental propulsion concepts.'**
  String get event_databaseSchematics_narrative;

  /// No description provided for @event_databaseSchematics_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Prioritise the propulsion concepts for the tech team'**
  String get event_databaseSchematics_choice0_text;

  /// No description provided for @event_databaseSchematics_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The schematics reveal efficiency improvements the original builders never had time to implement. The tech bay buzzes.'**
  String get event_databaseSchematics_choice0_outcome;

  /// No description provided for @event_databaseSchematics_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Share the knowledge broadly — every department benefits'**
  String get event_databaseSchematics_choice1_text;

  /// No description provided for @event_databaseSchematics_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Hull engineers, scanner techs, and medics all find useful insights. A rising tide lifts every system, slightly.'**
  String get event_databaseSchematics_choice1_outcome;

  /// No description provided for @event_databaseCorruption_title.
  ///
  /// In en, this message translates to:
  /// **'Cultural Preservation Scan'**
  String get event_databaseCorruption_title;

  /// No description provided for @event_databaseCorruption_narrative.
  ///
  /// In en, this message translates to:
  /// **'A scheduled integrity check of the cultural database reveals bit rot — sections of music, oral histories, and religious texts have degraded beyond recovery. Not everything survived the journey.'**
  String get event_databaseCorruption_narrative;

  /// No description provided for @event_databaseCorruption_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Divert tech resources to salvage what remains'**
  String get event_databaseCorruption_choice0_text;

  /// No description provided for @event_databaseCorruption_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers halt other work to run data recovery algorithms. They save most of it, but the effort costs the tech bay.'**
  String get event_databaseCorruption_choice0_outcome;

  /// No description provided for @event_databaseCorruption_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Ask colonists to recreate the lost works from memory'**
  String get event_databaseCorruption_choice1_text;

  /// No description provided for @event_databaseCorruption_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A beautiful, imperfect effort. What is rebuilt belongs to the voyage, not to Earth. A new tradition is born.'**
  String get event_databaseCorruption_choice1_outcome;

  /// No description provided for @event_databaseBreakthrough_title.
  ///
  /// In en, this message translates to:
  /// **'Archived Research Breakthrough'**
  String get event_databaseBreakthrough_title;

  /// No description provided for @event_databaseBreakthrough_narrative.
  ///
  /// In en, this message translates to:
  /// **'A physicist cross-referencing old Earth research papers in the database discovers that two unrelated studies, combined, describe a new method for long-range spectral analysis. The implications are enormous.'**
  String get event_databaseBreakthrough_narrative;

  /// No description provided for @event_databaseBreakthrough_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Implement the new analysis method in the scanner array'**
  String get event_databaseBreakthrough_choice0_text;

  /// No description provided for @event_databaseBreakthrough_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanner team works feverishly. Within days, spectral resolution doubles. Distant planets reveal their secrets.'**
  String get event_databaseBreakthrough_choice0_outcome;

  /// No description provided for @event_databaseBreakthrough_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Publish the finding ship-wide — inspire more research'**
  String get event_databaseBreakthrough_choice1_text;

  /// No description provided for @event_databaseBreakthrough_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The breakthrough sparks a wave of cross-disciplinary study. Tech improves broadly, and the crew feels intellectually alive.'**
  String get event_databaseBreakthrough_choice1_outcome;

  /// No description provided for @event_alienFleetSighting_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Fleet on the Horizon'**
  String get event_alienFleetSighting_title;

  /// No description provided for @event_alienFleetSighting_narrative.
  ///
  /// In en, this message translates to:
  /// **'Long-range scanners paint a terrifying picture: a fleet of alien vessels, numbering in the hundreds, moving in perfect formation across the starfield. They dwarf our ship. Their heading will bring them within sensor range in hours. First contact — on their terms or ours.'**
  String get event_alienFleetSighting_narrative;

  /// No description provided for @event_alienFleetSighting_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Observe silently — go dark and watch'**
  String get event_alienFleetSighting_choice0_text;

  /// No description provided for @event_alienFleetSighting_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship powers down to minimal emissions. The fleet passes like a school of luminous whales, unaware of the tiny human vessel hiding in their wake. Scanner data is extraordinary.'**
  String get event_alienFleetSighting_choice0_outcome;

  /// No description provided for @event_alienFleetSighting_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt first contact — transmit a greeting'**
  String get event_alienFleetSighting_choice1_text;

  /// No description provided for @event_alienFleetSighting_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A single vessel breaks formation and approaches. A burst of data arrives — star charts, warnings, and something that might be music. Then it rejoins the fleet and they are gone.'**
  String get event_alienFleetSighting_choice1_outcome;

  /// No description provided for @event_alienFleetSighting_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Flee — alter course immediately'**
  String get event_alienFleetSighting_choice2_text;

  /// No description provided for @event_alienFleetSighting_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship burns hard in the opposite direction. The course change is expensive and stressful, but the fleet never notices us. Safety at a cost.'**
  String get event_alienFleetSighting_choice2_outcome;

  /// No description provided for @event_alienTradeOffer_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Trade Offer'**
  String get event_alienTradeOffer_title;

  /// No description provided for @event_alienTradeOffer_narrative.
  ///
  /// In en, this message translates to:
  /// **'An alien vessel, smaller than ours but radiating immense power, matches our speed and broadcasts a simple repeating message. Our linguists decode it within hours: it is an offer to trade. Three categories of exchange are proposed.'**
  String get event_alienTradeOffer_narrative;

  /// No description provided for @event_alienTradeOffer_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Trade technical schematics for alien star charts'**
  String get event_alienTradeOffer_choice0_text;

  /// No description provided for @event_alienTradeOffer_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'We transmit our propulsion designs; they respond with navigational data covering a vast swath of unexplored space. Our charts improve dramatically, though we\'ve shared our technology with an unknown species.'**
  String get event_alienTradeOffer_choice0_outcome;

  /// No description provided for @event_alienTradeOffer_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Trade cultural data for ship repairs'**
  String get event_alienTradeOffer_choice1_text;

  /// No description provided for @event_alienTradeOffer_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We beam our music, art, and history. In return, alien repair drones swarm the hull, sealing breaches with materials we cannot identify. The hull gleams. Our soul is shared.'**
  String get event_alienTradeOffer_choice1_outcome;

  /// No description provided for @event_alienTradeOffer_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Refuse the trade — the risk is too great'**
  String get event_alienTradeOffer_choice2_text;

  /// No description provided for @event_alienTradeOffer_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The alien vessel waits for a time, then departs without incident. The crew is relieved but wonders what was lost.'**
  String get event_alienTradeOffer_choice2_outcome;

  /// No description provided for @event_alienWarning_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Warning Broadcast'**
  String get event_alienWarning_title;

  /// No description provided for @event_alienWarning_narrative.
  ///
  /// In en, this message translates to:
  /// **'Every speaker on the ship crackles to life with an alien voice — translated by our AI in real-time: \"DANGER AHEAD. TURN BACK. THE DARKNESS CONSUMES.\" The broadcast repeats, then dies. Long-range sensors show an anomalous void on our current heading.'**
  String get event_alienWarning_narrative;

  /// No description provided for @event_alienWarning_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Heed the warning — alter course around the void'**
  String get event_alienWarning_choice0_text;

  /// No description provided for @event_alienWarning_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The detour adds significant strain to navigation, but as we skirt the void\'s edge, sensors confirm: nothing that entered that region ever came out. We owe a debt to unknown voices.'**
  String get event_alienWarning_choice0_outcome;

  /// No description provided for @event_alienWarning_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Ignore the warning — stay on course'**
  String get event_alienWarning_choice1_text;

  /// No description provided for @event_alienWarning_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We push through. The void turns out to be a region of intense micro-debris. Hull and scanners take punishment before we clear the far side.'**
  String get event_alienWarning_choice1_outcome;

  /// No description provided for @event_alienWarning_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Investigate the void\'s edge with a probe'**
  String get event_alienWarning_choice2_text;

  /// No description provided for @event_alienWarning_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe enters the void and transmits extraordinary data before going silent. The scanner team extracts valuable readings, but the probe is lost.'**
  String get event_alienWarning_choice2_outcome;

  /// No description provided for @event_nativeSignalDetected_title.
  ///
  /// In en, this message translates to:
  /// **'Transmissions from the Target World'**
  String get event_nativeSignalDetected_title;

  /// No description provided for @event_nativeSignalDetected_narrative.
  ///
  /// In en, this message translates to:
  /// **'The communications array picks up structured electromagnetic signals originating from our target planet. They are unmistakable: regular, modulated, artificial. Someone is already there. The colony\'s entire premise shifts in an instant.'**
  String get event_nativeSignalDetected_narrative;

  /// No description provided for @event_nativeSignalDetected_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Transmit a peaceful greeting — announce our arrival'**
  String get event_nativeSignalDetected_choice0_text;

  /// No description provided for @event_nativeSignalDetected_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A brave choice. The signal changes pattern after our broadcast — they heard us. Whether this is welcome or warning is unclear, but the door is open.'**
  String get event_nativeSignalDetected_choice0_outcome;

  /// No description provided for @event_nativeSignalDetected_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Listen only — learn before revealing ourselves'**
  String get event_nativeSignalDetected_choice1_text;

  /// No description provided for @event_nativeSignalDetected_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Months of passive listening build a picture of the native civilisation. They are cautious, territorial, but not hostile. We arrive informed.'**
  String get event_nativeSignalDetected_choice1_outcome;

  /// No description provided for @event_nativeSignalDetected_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Jam the signal — deny them knowledge of our approach'**
  String get event_nativeSignalDetected_choice2_text;

  /// No description provided for @event_nativeSignalDetected_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The jamming works, but it is an act of aggression against a people we haven\'t met. The crew is divided on the morality.'**
  String get event_nativeSignalDetected_choice2_outcome;

  /// No description provided for @event_nativeProbeEncounter_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Probe Intercept'**
  String get event_nativeProbeEncounter_title;

  /// No description provided for @event_nativeProbeEncounter_narrative.
  ///
  /// In en, this message translates to:
  /// **'A small, elegant probe — not of human origin — matches our velocity and begins scanning the ship. Its design language matches the signals from the target planet. The natives sent a welcome committee. Or a surveillance drone.'**
  String get event_nativeProbeEncounter_narrative;

  /// No description provided for @event_nativeProbeEncounter_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Allow the scan — show we have nothing to hide'**
  String get event_nativeProbeEncounter_choice0_text;

  /// No description provided for @event_nativeProbeEncounter_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe completes its survey and transmits a data burst back toward the planet. Minutes later, a second burst arrives for us: atmospheric data, safe landing zones, and what might be an invitation.'**
  String get event_nativeProbeEncounter_choice0_outcome;

  /// No description provided for @event_nativeProbeEncounter_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Capture the probe for study'**
  String get event_nativeProbeEncounter_choice1_text;

  /// No description provided for @event_nativeProbeEncounter_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe is tractored into the cargo bay. Its technology is fascinating but the act of capture may be seen as hostile by its makers.'**
  String get event_nativeProbeEncounter_choice1_outcome;

  /// No description provided for @event_nativeProbeEncounter_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Destroy it — we don\'t know its intent'**
  String get event_nativeProbeEncounter_choice2_text;

  /// No description provided for @event_nativeProbeEncounter_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A single pulse reduces the probe to fragments. The crew feels safer, but a potential bridge has been burned.'**
  String get event_nativeProbeEncounter_choice2_outcome;

  /// No description provided for @event_nativeCulturalExchange_title.
  ///
  /// In en, this message translates to:
  /// **'First Cultural Exchange'**
  String get event_nativeCulturalExchange_title;

  /// No description provided for @event_nativeCulturalExchange_narrative.
  ///
  /// In en, this message translates to:
  /// **'A narrow-band data link has been established with the planetary natives. They send us images, sounds, and mathematical sequences. Our linguists and cultural officers work around the clock to prepare a response. This is the most important conversation in human history.'**
  String get event_nativeCulturalExchange_narrative;

  /// No description provided for @event_nativeCulturalExchange_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Share Earth\'s art and music — lead with beauty'**
  String get event_nativeCulturalExchange_choice0_text;

  /// No description provided for @event_nativeCulturalExchange_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'We transmit Bach, Aboriginal dot paintings, and the sound of rain on leaves. The response is a cascade of alien harmonics that makes the crew weep. Understanding deepens.'**
  String get event_nativeCulturalExchange_choice0_outcome;

  /// No description provided for @event_nativeCulturalExchange_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Share scientific knowledge — lead with reason'**
  String get event_nativeCulturalExchange_choice1_text;

  /// No description provided for @event_nativeCulturalExchange_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We transmit our periodic table, star charts, and physics. They respond with corrections and additions. Our tech leaps forward, but the exchange feels transactional.'**
  String get event_nativeCulturalExchange_choice1_outcome;

  /// No description provided for @event_nativeCulturalExchange_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Send a probe with physical samples — DNA, seeds, water'**
  String get event_nativeCulturalExchange_choice2_text;

  /// No description provided for @event_nativeCulturalExchange_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A probe carries the essence of Earth to alien hands. The natives respond with a similar gift — biological samples from their world. Biologists are ecstatic.'**
  String get event_nativeCulturalExchange_choice2_outcome;

  /// No description provided for @event_landingThrusterMalfunction_title.
  ///
  /// In en, this message translates to:
  /// **'Landing Thruster Malfunction'**
  String get event_landingThrusterMalfunction_title;

  /// No description provided for @event_landingThrusterMalfunction_narrative.
  ///
  /// In en, this message translates to:
  /// **'During a routine systems check, the landing thrusters misfire — a sharp bang echoes through the lower decks and the ship lurches. Diagnostics reveal a cracked fuel injector in the primary landing array. Without repair, planetfall will be rough.'**
  String get event_landingThrusterMalfunction_narrative;

  /// No description provided for @event_landingThrusterMalfunction_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Divert the tech team to fabricate a replacement injector'**
  String get event_landingThrusterMalfunction_choice0_text;

  /// No description provided for @event_landingThrusterMalfunction_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers work double shifts and machine a new injector from spare hull alloy. The landing system is restored, though the tech bay is depleted.'**
  String get event_landingThrusterMalfunction_choice0_outcome;

  /// No description provided for @event_landingThrusterMalfunction_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy a probe to test thruster calibration in vacuum'**
  String get event_landingThrusterMalfunction_choice1_text;

  /// No description provided for @event_landingThrusterMalfunction_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe provides real-time thrust data that lets engineers recalibrate around the damaged injector. Not a full fix, but the landing system stabilises.'**
  String get event_landingThrusterMalfunction_choice1_outcome;

  /// No description provided for @event_landingSimDrill_title.
  ///
  /// In en, this message translates to:
  /// **'Landing Simulation Drill'**
  String get event_landingSimDrill_title;

  /// No description provided for @event_landingSimDrill_narrative.
  ///
  /// In en, this message translates to:
  /// **'With planetfall growing closer, the captain orders a full landing simulation. The crew straps in, systems are tested under load, and the virtual descent begins. It is the most realistic rehearsal they will get.'**
  String get event_landingSimDrill_narrative;

  /// No description provided for @event_landingSimDrill_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Focus on technical precision — run the drill by the book'**
  String get event_landingSimDrill_choice0_text;

  /// No description provided for @event_landingSimDrill_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The simulation reveals two minor calibration errors that are immediately corrected. The landing system is tighter for it.'**
  String get event_landingSimDrill_choice0_outcome;

  /// No description provided for @event_landingSimDrill_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Make it a ship-wide event — broadcast the simulation'**
  String get event_landingSimDrill_choice1_text;

  /// No description provided for @event_landingSimDrill_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Colonists watch from every screen aboard. The shared experience of the simulated descent — the shaking, the cheering — bonds the crew like nothing else.'**
  String get event_landingSimDrill_choice1_outcome;

  /// No description provided for @event_dysonSphere_title.
  ///
  /// In en, this message translates to:
  /// **'The Dyson Sphere'**
  String get event_dysonSphere_title;

  /// No description provided for @event_dysonSphere_narrative.
  ///
  /// In en, this message translates to:
  /// **'Sensors detect an impossible structure — a partial Dyson sphere surrounding a distant star, harvesting its entire energy output. Whoever built this transcended anything humanity has ever conceived. A docking port appears to open as we approach.'**
  String get event_dysonSphere_narrative;

  /// No description provided for @event_dysonSphere_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dock and explore the structure'**
  String get event_dysonSphere_choice0_text;

  /// No description provided for @event_dysonSphere_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Inside, automated systems gift us technology that leaps our capabilities forward by centuries. Five engineers are lost to the station\'s defense mechanisms before it recognises our intent. The constructors are rebuilt with alien alloys.'**
  String get event_dysonSphere_choice0_outcome;

  /// No description provided for @event_dysonSphere_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Harvest energy from the exterior'**
  String get event_dysonSphere_choice1_text;

  /// No description provided for @event_dysonSphere_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We bathe in the sphere\'s radiant overflow. Every system aboard charges to maximum. The crew watches in stunned silence.'**
  String get event_dysonSphere_choice1_outcome;

  /// No description provided for @event_dysonSphere_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Study from a safe distance and move on'**
  String get event_dysonSphere_choice2_text;

  /// No description provided for @event_dysonSphere_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Long-range scans reveal construction principles that revolutionize our understanding of engineering.'**
  String get event_dysonSphere_choice2_outcome;

  /// No description provided for @event_nanotechPlague_title.
  ///
  /// In en, this message translates to:
  /// **'The Nanotech Plague'**
  String get event_nanotechPlague_title;

  /// No description provided for @event_nanotechPlague_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cloud of rogue nanomachines, remnants of some dead civilization\'s weapons program, infiltrates the ship through hull micro-fractures. They are disassembling non-critical systems at the molecular level. The swarm is spreading fast.'**
  String get event_nanotechPlague_narrative;

  /// No description provided for @event_nanotechPlague_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'EMP burst — fry everything in the affected sections'**
  String get event_nanotechPlague_choice0_text;

  /// No description provided for @event_nanotechPlague_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The electromagnetic pulse destroys the nanites but also damages our own electronics in those sections. Colonists in the blast zone suffer burns.'**
  String get event_nanotechPlague_choice0_outcome;

  /// No description provided for @event_nanotechPlague_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Vent the affected sections to vacuum'**
  String get event_nanotechPlague_choice1_text;

  /// No description provided for @event_nanotechPlague_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Without atmosphere, the nanites slow and die. But the sections are lost, along with stored supplies and culture archives.'**
  String get event_nanotechPlague_choice1_outcome;

  /// No description provided for @event_nanotechPlague_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Reprogram them — turn weapons into tools'**
  String get event_nanotechPlague_choice2_text;

  /// No description provided for @event_nanotechPlague_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A brilliant engineer cracks the nanite code, but five crew members in the most affected sections are already beyond saving. The reprogrammed swarm begins repairing the ship instead of destroying it.'**
  String get event_nanotechPlague_choice2_outcome;

  /// No description provided for @event_nanotechPlague_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice a probe\'s AI core to create a counter-swarm'**
  String get event_nanotechPlague_choice3_text;

  /// No description provided for @event_nanotechPlague_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s processors are repurposed to control a defensive nanite swarm. The plague is neutralized with minimal losses.'**
  String get event_nanotechPlague_choice3_outcome;

  /// No description provided for @event_prematureAwakening_title.
  ///
  /// In en, this message translates to:
  /// **'The Premature Awakening'**
  String get event_prematureAwakening_title;

  /// No description provided for @event_prematureAwakening_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cascade failure in the cryopod bay wakes 200 colonists decades early. They are confused, frightened, and consuming resources meant for the landing phase. Among them are children who have never known anything but the ship.'**
  String get event_prematureAwakening_narrative;

  /// No description provided for @event_prematureAwakening_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Integrate them into the crew — more hands, more hope'**
  String get event_prematureAwakening_choice0_text;

  /// No description provided for @event_prematureAwakening_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The awakened colonists become productive crew members. Twenty colonists don\'t survive the abrupt thaw, but the rest rally. Resources stretch thin but spirits soar.'**
  String get event_prematureAwakening_choice0_outcome;

  /// No description provided for @event_prematureAwakening_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt to re-freeze them — risky but necessary'**
  String get event_prematureAwakening_choice1_text;

  /// No description provided for @event_prematureAwakening_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The re-freezing process is imperfect. Most survive, but some are lost. The survivors carry psychological scars.'**
  String get event_prematureAwakening_choice1_outcome;

  /// No description provided for @event_prematureAwakening_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Give them their own section of the ship'**
  String get event_prematureAwakening_choice2_text;

  /// No description provided for @event_prematureAwakening_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Ten colonists are lost to complications from the emergency thaw, but the rest form a micro-colony within the ship. They develop their own culture and governance, a rehearsal for planetary settlement.'**
  String get event_prematureAwakening_choice2_outcome;

  /// No description provided for @event_stowawaysAdvanced_title.
  ///
  /// In en, this message translates to:
  /// **'The Hidden Passengers'**
  String get event_stowawaysAdvanced_title;

  /// No description provided for @event_stowawaysAdvanced_narrative.
  ///
  /// In en, this message translates to:
  /// **'Deep in the cargo hold, behind false bulkheads, security discovers an entire hidden community — 80 people who boarded illegally before launch. They have been living in the walls of the ship for the entire voyage, maintaining their own gardens and power taps.'**
  String get event_stowawaysAdvanced_narrative;

  /// No description provided for @event_stowawaysAdvanced_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Welcome them — 80 more colonists is a gift'**
  String get event_stowawaysAdvanced_choice0_text;

  /// No description provided for @event_stowawaysAdvanced_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The hidden community brings skills in improvised engineering and resourcefulness that stun the crew. Their gardens are transplanted to the main biodome.'**
  String get event_stowawaysAdvanced_choice0_outcome;

  /// No description provided for @event_stowawaysAdvanced_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Confine them and redistribute their stolen resources'**
  String get event_stowawaysAdvanced_choice1_text;

  /// No description provided for @event_stowawaysAdvanced_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The recovered supplies boost several systems, but the confinement of families — including children — haunts the crew.'**
  String get event_stowawaysAdvanced_choice1_outcome;

  /// No description provided for @event_stowawaysAdvanced_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Negotiate — they join us as equals if they share their tech'**
  String get event_stowawaysAdvanced_choice2_text;

  /// No description provided for @event_stowawaysAdvanced_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Their improvised power cells and hydroponic tricks improve ship efficiency. A tense but productive integration begins.'**
  String get event_stowawaysAdvanced_choice2_outcome;

  /// No description provided for @event_alienReservation_title.
  ///
  /// In en, this message translates to:
  /// **'The Alien Reservation'**
  String get event_alienReservation_title;

  /// No description provided for @event_alienReservation_narrative.
  ///
  /// In en, this message translates to:
  /// **'We stumble upon an alien nature preserve — a region of space deliberately seeded with habitable planets and protected by automated sentinels. The guardians scan us and project a message: \"You may settle ONE world. Choose wisely. Interfere with the others and you will be removed.\"'**
  String get event_alienReservation_narrative;

  /// No description provided for @event_alienReservation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Accept gratefully — one world is all we need'**
  String get event_alienReservation_choice0_text;

  /// No description provided for @event_alienReservation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The sentinels guide us to a prepared world. Scans reveal it is extraordinarily suitable for human life.'**
  String get event_alienReservation_choice0_outcome;

  /// No description provided for @event_alienReservation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Negotiate for better terms — humanity needs room to grow'**
  String get event_alienReservation_choice1_text;

  /// No description provided for @event_alienReservation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The sentinels consider our plea. They upgrade our scanners with data on dozens of systems beyond the preserve.'**
  String get event_alienReservation_choice1_outcome;

  /// No description provided for @event_alienReservation_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Decline and leave — we won\'t be caged'**
  String get event_alienReservation_choice2_text;

  /// No description provided for @event_alienReservation_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew debates for days. Freedom over safety. The sentinels allow our departure with a gift: a map of nearby hazards.'**
  String get event_alienReservation_choice2_outcome;

  /// No description provided for @event_cosmicHorror_title.
  ///
  /// In en, this message translates to:
  /// **'The Thing Between Stars'**
  String get event_cosmicHorror_title;

  /// No description provided for @event_cosmicHorror_narrative.
  ///
  /// In en, this message translates to:
  /// **'Something vast and dark occludes the stars ahead — not a nebula, not a black hole. It has no mass, no energy signature, no electromagnetic presence. But it is THERE, and it is aware of us. Crew members near the forward observation deck report overwhelming dread. Two have been sedated.'**
  String get event_cosmicHorror_narrative;

  /// No description provided for @event_cosmicHorror_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Full reverse — get away NOW'**
  String get event_cosmicHorror_choice0_text;

  /// No description provided for @event_cosmicHorror_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship strains against its own momentum. We escape, but the terror lingers. Some colonists never recover psychologically.'**
  String get event_cosmicHorror_choice0_outcome;

  /// No description provided for @event_cosmicHorror_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Seal the observation deck and push through'**
  String get event_cosmicHorror_choice1_text;

  /// No description provided for @event_cosmicHorror_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Three days of blind flight through the dark. When stars return, the crew weeps with relief. The hull is etched with patterns no one can explain.'**
  String get event_cosmicHorror_choice1_outcome;

  /// No description provided for @event_cosmicHorror_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt communication'**
  String get event_cosmicHorror_choice2_text;

  /// No description provided for @event_cosmicHorror_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The entity responds — not in words, but in knowledge pressed directly into the minds of the crew. Star maps, physics, truths about the universe. Half the crew is enlightened. The other half is broken.'**
  String get event_cosmicHorror_choice2_outcome;

  /// No description provided for @event_cosmicHorror_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Offer a probe as tribute'**
  String get event_cosmicHorror_choice3_text;

  /// No description provided for @event_cosmicHorror_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe drifts into the darkness and vanishes. The entity contracts slightly, as if satisfied. Our path clears.'**
  String get event_cosmicHorror_choice3_outcome;

  /// No description provided for @event_meteorGlancingHit_title.
  ///
  /// In en, this message translates to:
  /// **'Glancing Meteor Strike'**
  String get event_meteorGlancingHit_title;

  /// No description provided for @event_meteorGlancingHit_narrative.
  ///
  /// In en, this message translates to:
  /// **'A boulder-sized meteor clips the port side of the hull at a shallow angle. The impact tears away three metres of outer plating and sends shockwaves through the entire frame. Damage-control alarms scream across every deck.'**
  String get event_meteorGlancingHit_narrative;

  /// No description provided for @event_meteorGlancingHit_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Divert all repair bots to the breach immediately'**
  String get event_meteorGlancingHit_choice0_text;

  /// No description provided for @event_meteorGlancingHit_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The bots seal the worst of the damage, but the frantic draw on tech reserves leaves secondary systems underserviced.'**
  String get event_meteorGlancingHit_choice0_outcome;

  /// No description provided for @event_meteorGlancingHit_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reduce thrust and let the crew patch it manually'**
  String get event_meteorGlancingHit_choice1_text;

  /// No description provided for @event_meteorGlancingHit_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Slower progress, but the crew does solid work. Nav suffers from the reduced thrust window while we drift.'**
  String get event_meteorGlancingHit_choice1_outcome;

  /// No description provided for @event_meteorGlancingHit_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice a probe\'s hull plating as patch material'**
  String get event_meteorGlancingHit_choice2_text;

  /// No description provided for @event_meteorGlancingHit_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe is stripped for parts. The patch holds and hull integrity is preserved at the cost of one less scout.'**
  String get event_meteorGlancingHit_choice2_outcome;

  /// No description provided for @event_meteorDirectImpact_title.
  ///
  /// In en, this message translates to:
  /// **'Direct Meteor Impact'**
  String get event_meteorDirectImpact_title;

  /// No description provided for @event_meteorDirectImpact_narrative.
  ///
  /// In en, this message translates to:
  /// **'A half-tonne iron meteorite punches clean through the forward cargo bay at relative velocity exceeding 40 km/s. Two crew members in the adjacent corridor are unaccounted for. The bay is open to vacuum.'**
  String get event_meteorDirectImpact_narrative;

  /// No description provided for @event_meteorDirectImpact_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Seal cargo bay and search for survivors later'**
  String get event_meteorDirectImpact_choice0_text;

  /// No description provided for @event_meteorDirectImpact_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The bay is sealed in ninety seconds. Both crew members had already evacuated — barely. The hull takes permanent scarring.'**
  String get event_meteorDirectImpact_choice0_outcome;

  /// No description provided for @event_meteorDirectImpact_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Launch a full rescue operation before sealing'**
  String get event_meteorDirectImpact_choice1_text;

  /// No description provided for @event_meteorDirectImpact_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'One survivor is pulled out. The extended exposure worsens the structural damage and drains tech reserves.'**
  String get event_meteorDirectImpact_choice1_outcome;

  /// No description provided for @event_meteorDebrisField_title.
  ///
  /// In en, this message translates to:
  /// **'Debris Field — Remnant Shower'**
  String get event_meteorDebrisField_title;

  /// No description provided for @event_meteorDebrisField_narrative.
  ///
  /// In en, this message translates to:
  /// **'Long-range sensors failed to detect a dispersed field of meteor fragments until we were already inside it. Hundreds of fist-sized rocks are striking the hull at random intervals. Every hit is a lottery.'**
  String get event_meteorDebrisField_narrative;

  /// No description provided for @event_meteorDebrisField_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Raise shields and push through at full speed'**
  String get event_meteorDebrisField_choice0_text;

  /// No description provided for @event_meteorDebrisField_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The shields absorb most hits, but the sheer volume of impacts overwhelms them. Hull and shield systems both degrade.'**
  String get event_meteorDebrisField_choice0_outcome;

  /// No description provided for @event_meteorDebrisField_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Cut engines and drift — minimise our profile'**
  String get event_meteorDebrisField_choice1_text;

  /// No description provided for @event_meteorDebrisField_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A tense six hours of silence. Nav is thrown off by the unpowered drift, but the hull emerges with far fewer impacts.'**
  String get event_meteorDebrisField_choice1_outcome;

  /// No description provided for @event_meteorDebrisField_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Deploy a probe as a forward shield'**
  String get event_meteorDebrisField_choice2_text;

  /// No description provided for @event_meteorDebrisField_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe takes the brunt of the barrage. The ship slips through in its shadow with minor scratches.'**
  String get event_meteorDebrisField_choice2_outcome;

  /// No description provided for @event_meteorShowerDense_title.
  ///
  /// In en, this message translates to:
  /// **'Unexpected Dense Meteor Shower'**
  String get event_meteorShowerDense_title;

  /// No description provided for @event_meteorShowerDense_narrative.
  ///
  /// In en, this message translates to:
  /// **'A rogue comet disintegrated somewhere ahead of us, and we have flown straight into the heart of its trailing debris stream. The scanner arrays are being pelted with fragments and the landing system sensor housing has already taken a direct hit.'**
  String get event_meteorShowerDense_narrative;

  /// No description provided for @event_meteorShowerDense_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Protect the landing system — rotate the ship'**
  String get event_meteorShowerDense_choice0_text;

  /// No description provided for @event_meteorShowerDense_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The rotation shields the landing system but exposes the atmospheric scanner array to the brunt of the barrage.'**
  String get event_meteorShowerDense_choice0_outcome;

  /// No description provided for @event_meteorShowerDense_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Shield the scanner arrays — they are irreplaceable'**
  String get event_meteorShowerDense_choice1_text;

  /// No description provided for @event_meteorShowerDense_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanner banks survive mostly intact. The landing system takes moderate shrapnel damage we will have to live with.'**
  String get event_meteorShowerDense_choice1_outcome;

  /// No description provided for @event_solarEmpBurst_title.
  ///
  /// In en, this message translates to:
  /// **'EMP Burst — Stellar Origin'**
  String get event_solarEmpBurst_title;

  /// No description provided for @event_solarEmpBurst_narrative.
  ///
  /// In en, this message translates to:
  /// **'A compact stellar remnant we passed within a light-day of has discharged a focused electromagnetic pulse. Every unshielded circuit on the ship is at risk. We have seconds to decide what to protect.'**
  String get event_solarEmpBurst_narrative;

  /// No description provided for @event_solarEmpBurst_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Route all surge protection to navigation and life support'**
  String get event_solarEmpBurst_choice0_text;

  /// No description provided for @event_solarEmpBurst_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Navigation and life support survive intact. The scanner suite and tech bay absorb the pulse unshielded — both take heavy damage.'**
  String get event_solarEmpBurst_choice0_outcome;

  /// No description provided for @event_solarEmpBurst_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Protect the scanner arrays and tech bay'**
  String get event_solarEmpBurst_choice1_text;

  /// No description provided for @event_solarEmpBurst_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Science and engineering systems are preserved. Navigation misfires for hours afterward as its circuits slowly recover.'**
  String get event_solarEmpBurst_choice1_outcome;

  /// No description provided for @event_solarEmpBurst_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Power down everything and restart post-pulse'**
  String get event_solarEmpBurst_choice2_text;

  /// No description provided for @event_solarEmpBurst_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A cold restart is agonising — twelve hours of manual reboots. But no system is fried beyond recovery.'**
  String get event_solarEmpBurst_choice2_outcome;

  /// No description provided for @event_solarRadiationWave_title.
  ///
  /// In en, this message translates to:
  /// **'Radiation Wave — Class 4 Exposure'**
  String get event_solarRadiationWave_title;

  /// No description provided for @event_solarRadiationWave_narrative.
  ///
  /// In en, this message translates to:
  /// **'A solar radiation burst of unexpected intensity is sweeping through the ship\'s mid-decks. The cryopod bays are in the exposure path. Colonists in suspension have no natural protection against hard radiation at this dosage level.'**
  String get event_solarRadiationWave_narrative;

  /// No description provided for @event_solarRadiationWave_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Flood the cryopod bays with coolant as radiation shielding'**
  String get event_solarRadiationWave_choice0_text;

  /// No description provided for @event_solarRadiationWave_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The coolant absorbs most of the radiation. The cryopods survive, but the coolant system itself is partially degraded. Fifteen in the worst-affected pods don\'t make it.'**
  String get event_solarRadiationWave_choice0_outcome;

  /// No description provided for @event_solarRadiationWave_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Vent outer deck atmosphere to create a vacuum buffer'**
  String get event_solarRadiationWave_choice1_text;

  /// No description provided for @event_solarRadiationWave_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The vacuum layer reduces penetrating radiation significantly. Twenty colonists in pods nearest the vented sections suffer lethal exposure. Hull stress from the pressure differential is unavoidable.'**
  String get event_solarRadiationWave_choice1_outcome;

  /// No description provided for @event_solarRadiationWave_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Reroute power to magnetic deflectors'**
  String get event_solarRadiationWave_choice2_text;

  /// No description provided for @event_solarRadiationWave_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The deflectors cut radiation exposure by two-thirds. Eight colonists receive fatal doses through gaps in the deflector coverage. The power draw hammers the tech bay and leaves nav running on minimal power.'**
  String get event_solarRadiationWave_choice2_outcome;

  /// No description provided for @event_coronalMassEjection_title.
  ///
  /// In en, this message translates to:
  /// **'Coronal Mass Ejection — Full Force'**
  String get event_coronalMassEjection_title;

  /// No description provided for @event_coronalMassEjection_narrative.
  ///
  /// In en, this message translates to:
  /// **'A coronal mass ejection of unprecedented scale is overtaking us from behind. The plasma cloud will engulf the ship within the hour. Our shields were not designed for this class of event. No option is clean.'**
  String get event_coronalMassEjection_narrative;

  /// No description provided for @event_coronalMassEjection_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Outrun it — push engines to one hundred twenty percent'**
  String get event_coronalMassEjection_choice0_text;

  /// No description provided for @event_coronalMassEjection_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'We gain enough distance to reduce exposure. The engines overheat and the nav computer flags structural overstress warnings across the board.'**
  String get event_coronalMassEjection_choice0_outcome;

  /// No description provided for @event_coronalMassEjection_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Shelter behind a nearby planetoid\'s magnetic shadow'**
  String get event_coronalMassEjection_choice1_text;

  /// No description provided for @event_coronalMassEjection_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The planetoid\'s field deflects most of the ejection. Navigating that close to an uncharted body scratches the hull and strains the landing system sensors.'**
  String get event_coronalMassEjection_choice1_outcome;

  /// No description provided for @event_cosmicRayScannerInterference_title.
  ///
  /// In en, this message translates to:
  /// **'Cosmic Ray Burst — Scanner Interference'**
  String get event_cosmicRayScannerInterference_title;

  /// No description provided for @event_cosmicRayScannerInterference_narrative.
  ///
  /// In en, this message translates to:
  /// **'A burst of ultra-high-energy cosmic rays has saturated all scanner electronics with noise. The mineralogical and gravimetric arrays are producing gibberish. Recalibration will take time we may not have.'**
  String get event_cosmicRayScannerInterference_narrative;

  /// No description provided for @event_cosmicRayScannerInterference_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Full recalibration cycle — take the ship offline temporarily'**
  String get event_cosmicRayScannerInterference_choice0_text;

  /// No description provided for @event_cosmicRayScannerInterference_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'All scanners come back clean after four hours of careful recalibration. Nav suffers from the reduced situational awareness during the blackout window.'**
  String get event_cosmicRayScannerInterference_choice0_outcome;

  /// No description provided for @event_cosmicRayScannerInterference_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Patch only the most critical arrays — leave the rest noisy'**
  String get event_cosmicRayScannerInterference_choice1_text;

  /// No description provided for @event_cosmicRayScannerInterference_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Gravimetric and life-signs scanners are restored. The mineral and temperature arrays remain degraded indefinitely.'**
  String get event_cosmicRayScannerInterference_choice1_outcome;

  /// No description provided for @event_cosmicRayScannerInterference_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice probe telemetry hardware for replacement parts'**
  String get event_cosmicRayScannerInterference_choice2_text;

  /// No description provided for @event_cosmicRayScannerInterference_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Cannibalising a probe\'s sensor package gives us the components to restore the scanner suite without a long recalibration.'**
  String get event_cosmicRayScannerInterference_choice2_outcome;

  /// No description provided for @event_cosmicRayDnaDamage_title.
  ///
  /// In en, this message translates to:
  /// **'Cosmic Ray Burst — Colonist Exposure'**
  String get event_cosmicRayDnaDamage_title;

  /// No description provided for @event_cosmicRayDnaDamage_narrative.
  ///
  /// In en, this message translates to:
  /// **'A secondary cosmic ray shower has penetrated the cryopod shielding in bay 6. Colonists in suspension are receiving cumulative DNA damage from ionising radiation. Without intervention, cell repair mechanisms will fail in the affected pods.'**
  String get event_cosmicRayDnaDamage_narrative;

  /// No description provided for @event_cosmicRayDnaDamage_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency thaw — bring affected colonists to consciousness'**
  String get event_cosmicRayDnaDamage_choice0_text;

  /// No description provided for @event_cosmicRayDnaDamage_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Two hundred colonists are woken early. Forty with the most severe DNA damage don\'t respond to treatment. The medical team does what it can for the rest.'**
  String get event_cosmicRayDnaDamage_choice0_outcome;

  /// No description provided for @event_cosmicRayDnaDamage_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reroute hull armour plating to shield bay 6 — structural cost'**
  String get event_cosmicRayDnaDamage_choice1_text;

  /// No description provided for @event_cosmicRayDnaDamage_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The colony is saved, but stripping armour from one section of the hull leaves the ship structurally vulnerable in that zone.'**
  String get event_cosmicRayDnaDamage_choice1_outcome;

  /// No description provided for @event_coolantLeak_title.
  ///
  /// In en, this message translates to:
  /// **'Coolant Line Rupture'**
  String get event_coolantLeak_title;

  /// No description provided for @event_coolantLeak_narrative.
  ///
  /// In en, this message translates to:
  /// **'A primary coolant line has ruptured behind the reactor wall. Superheated cryogenic fluid is spraying across a junction housing critical tech-bay conduits. The reactor temperature is climbing.'**
  String get event_coolantLeak_narrative;

  /// No description provided for @event_coolantLeak_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Shut down the reactor and let it cool — accept full blackout'**
  String get event_coolantLeak_choice0_text;

  /// No description provided for @event_coolantLeak_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A controlled shutdown prevents catastrophe. Twelve hours of life support on battery is harrowing, and systems restart imperfectly.'**
  String get event_coolantLeak_choice0_outcome;

  /// No description provided for @event_coolantLeak_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Send a damage-control team in — risk crew exposure'**
  String get event_coolantLeak_choice1_text;

  /// No description provided for @event_coolantLeak_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The team seals the rupture in forty minutes. One crew member is killed by superheated coolant exposure. The repair is solid.'**
  String get event_coolantLeak_choice1_outcome;

  /// No description provided for @event_coolantLeak_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Divert coolant from cryopod bay as emergency supply'**
  String get event_coolantLeak_choice2_text;

  /// No description provided for @event_coolantLeak_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The reactor is stabilised. The cryopod bay runs warmer than safe thresholds for six hours — minor but real cellular damage accumulates.'**
  String get event_coolantLeak_choice2_outcome;

  /// No description provided for @event_powerGridFailure_title.
  ///
  /// In en, this message translates to:
  /// **'Main Power Grid Failure'**
  String get event_powerGridFailure_title;

  /// No description provided for @event_powerGridFailure_narrative.
  ///
  /// In en, this message translates to:
  /// **'A cascading fault has tripped the main power grid. Backup systems are holding life support and cryopod heating, but navigation, scanners, and the constructor bay are all dark. Every minute offline costs us course accuracy.'**
  String get event_powerGridFailure_narrative;

  /// No description provided for @event_powerGridFailure_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Restore nav and scanner first — accept extended constructor downtime'**
  String get event_powerGridFailure_choice0_text;

  /// No description provided for @event_powerGridFailure_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Navigation and scanner systems come back online in two hours. The constructor bay misses a critical maintenance cycle.'**
  String get event_powerGridFailure_choice0_outcome;

  /// No description provided for @event_powerGridFailure_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Restore constructors first — use them to speed the repair'**
  String get event_powerGridFailure_choice1_text;

  /// No description provided for @event_powerGridFailure_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The constructors reroute power efficiently. Full grid restoration happens faster, but nav drifts badly during the extended blackout.'**
  String get event_powerGridFailure_choice1_outcome;

  /// No description provided for @event_lifeSupportGlitch_title.
  ///
  /// In en, this message translates to:
  /// **'Life Support Cascade Glitch'**
  String get event_lifeSupportGlitch_title;

  /// No description provided for @event_lifeSupportGlitch_narrative.
  ///
  /// In en, this message translates to:
  /// **'The life support management AI has entered an error loop, cycling carbon dioxide scrubbing intervals unpredictably. CO₂ levels across occupied decks are fluctuating. Crew are developing headaches; some are already incapacitated.'**
  String get event_lifeSupportGlitch_narrative;

  /// No description provided for @event_lifeSupportGlitch_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Force a hard reset of the life support AI'**
  String get event_lifeSupportGlitch_choice0_text;

  /// No description provided for @event_lifeSupportGlitch_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The reset clears the loop but leaves manual overrides running for ten hours. Three crew members succumb to CO₂ buildup before levels normalise.'**
  String get event_lifeSupportGlitch_choice0_outcome;

  /// No description provided for @event_lifeSupportGlitch_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Patch the software loop — slower but safer'**
  String get event_lifeSupportGlitch_choice1_text;

  /// No description provided for @event_lifeSupportGlitch_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The software team isolates and patches the fault over six tense hours. CO₂ levels slowly normalise. No hard reset needed.'**
  String get event_lifeSupportGlitch_choice1_outcome;

  /// No description provided for @event_lifeSupportGlitch_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Evacuate affected decks and run on minimal life support'**
  String get event_lifeSupportGlitch_choice2_text;

  /// No description provided for @event_lifeSupportGlitch_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'Two colonists are lost in the confusion of the evacuation. Systems normalise after the AI is cold-restarted.'**
  String get event_lifeSupportGlitch_choice2_outcome;

  /// No description provided for @event_waterRecyclerBreakdown_title.
  ///
  /// In en, this message translates to:
  /// **'Water Recycler Breakdown'**
  String get event_waterRecyclerBreakdown_title;

  /// No description provided for @event_waterRecyclerBreakdown_narrative.
  ///
  /// In en, this message translates to:
  /// **'The primary water reclamation unit has seized. The backup unit is already running at capacity. Without intervention, the crew will be on emergency rations within forty-eight hours, and cryopod coolant feeds will be compromised within seventy-two.'**
  String get event_waterRecyclerBreakdown_narrative;

  /// No description provided for @event_waterRecyclerBreakdown_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Pull every available tech hand to rebuild the reclaimer'**
  String get event_waterRecyclerBreakdown_choice0_text;

  /// No description provided for @event_waterRecyclerBreakdown_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The unit is rebuilt in thirty hours. Four crew members, already weakened, don\'t survive the dehydration.'**
  String get event_waterRecyclerBreakdown_choice0_outcome;

  /// No description provided for @event_waterRecyclerBreakdown_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Divert cryopod coolant reserves as emergency drinking supply'**
  String get event_waterRecyclerBreakdown_choice1_text;

  /// No description provided for @event_waterRecyclerBreakdown_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew is sustained, but eight colonists in warming pods suffer irreversible cellular damage. The cryopod coolant margin shrinks dangerously.'**
  String get event_waterRecyclerBreakdown_choice1_outcome;

  /// No description provided for @event_navComputerReboot_title.
  ///
  /// In en, this message translates to:
  /// **'Navigation Computer Emergency Reboot'**
  String get event_navComputerReboot_title;

  /// No description provided for @event_navComputerReboot_narrative.
  ///
  /// In en, this message translates to:
  /// **'The navigation computer has locked up mid-course-correction, leaving the ship in an uncontrolled slow spin. Every second of uncorrected rotation compounds our drift from the planned trajectory. A full reboot is the only fix.'**
  String get event_navComputerReboot_narrative;

  /// No description provided for @event_navComputerReboot_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Reboot immediately — accept the full blackout period'**
  String get event_navComputerReboot_choice0_text;

  /// No description provided for @event_navComputerReboot_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Four hours of blind flight while the system reloads. The spin is arrested, but the course error is significant.'**
  String get event_navComputerReboot_choice0_outcome;

  /// No description provided for @event_navComputerReboot_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Use manual thruster control to arrest the spin first'**
  String get event_navComputerReboot_choice1_text;

  /// No description provided for @event_navComputerReboot_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Skilled piloting stops the rotation before the reboot. Nav comes back with a smaller course error, but the manual burn stresses the hull.'**
  String get event_navComputerReboot_choice1_outcome;

  /// No description provided for @event_navComputerReboot_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Feed probe telemetry into the backup nav unit'**
  String get event_navComputerReboot_choice2_text;

  /// No description provided for @event_navComputerReboot_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe\'s inertial data gives the backup unit enough reference to hold course. The main nav reboots cleanly.'**
  String get event_navComputerReboot_choice2_outcome;

  /// No description provided for @event_crewAirlocked_title.
  ///
  /// In en, this message translates to:
  /// **'Crew Member at the Airlock'**
  String get event_crewAirlocked_title;

  /// No description provided for @event_crewAirlocked_narrative.
  ///
  /// In en, this message translates to:
  /// **'A colonist — awoken early for medical observation — has barricaded herself inside an external airlock and is cycling the outer door. She is not responding to communication. The psychological toll of deep space has broken something in her.'**
  String get event_crewAirlocked_narrative;

  /// No description provided for @event_crewAirlocked_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Override the airlock remotely — force it sealed'**
  String get event_crewAirlocked_choice0_text;

  /// No description provided for @event_crewAirlocked_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The door is locked before she can complete the cycle. She is sedated and returned to medical. The crew is shaken but united.'**
  String get event_crewAirlocked_choice0_outcome;

  /// No description provided for @event_crewAirlocked_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Send a counsellor in to talk her back'**
  String get event_crewAirlocked_choice1_text;

  /// No description provided for @event_crewAirlocked_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'After three desperate hours, the counsellor brings her out alive. The incident sparks a broader mental health crisis on occupied decks.'**
  String get event_crewAirlocked_choice1_outcome;

  /// No description provided for @event_crewAirlocked_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Seal the corridor and let the incident resolve'**
  String get event_crewAirlocked_choice2_text;

  /// No description provided for @event_crewAirlocked_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The airlock cycles. The loss is recorded. The remaining crew members carry the weight of it for months.'**
  String get event_crewAirlocked_choice2_outcome;

  /// No description provided for @event_crewCryopodSabotage_title.
  ///
  /// In en, this message translates to:
  /// **'Cryopod Bay Sabotage'**
  String get event_crewCryopodSabotage_title;

  /// No description provided for @event_crewCryopodSabotage_narrative.
  ///
  /// In en, this message translates to:
  /// **'Security feeds reveal a crew member — awoken three months ago for a routine rotation — methodically disabling cryopod heating elements in bay 4. When confronted, he screams that the colonists are parasites consuming resources that belong to the living crew.'**
  String get event_crewCryopodSabotage_narrative;

  /// No description provided for @event_crewCryopodSabotage_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Arrest and isolate him immediately'**
  String get event_crewCryopodSabotage_choice0_text;

  /// No description provided for @event_crewCryopodSabotage_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'He is restrained. Forty pods were compromised before the alert. Emergency repair teams save most, but not all.'**
  String get event_crewCryopodSabotage_choice0_outcome;

  /// No description provided for @event_crewCryopodSabotage_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Negotiate — hear his grievances before acting'**
  String get event_crewCryopodSabotage_choice1_text;

  /// No description provided for @event_crewCryopodSabotage_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The negotiation reveals a deeper morale crisis. He stands down, but sixty pods have been tampered with by the time he does.'**
  String get event_crewCryopodSabotage_choice1_outcome;

  /// No description provided for @event_crewSupplyHoarder_title.
  ///
  /// In en, this message translates to:
  /// **'Supply Hoarding Discovered'**
  String get event_crewSupplyHoarder_title;

  /// No description provided for @event_crewSupplyHoarder_narrative.
  ///
  /// In en, this message translates to:
  /// **'Inventory audit reveals that a small group of crew members has been systematically diverting medical supplies, food rations, and spare tech components into a hidden cache. Their reasoning: they do not believe the mission will succeed, and they are preparing for the long way home.'**
  String get event_crewSupplyHoarder_narrative;

  /// No description provided for @event_crewSupplyHoarder_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Confiscate everything and publicly reprimand the group'**
  String get event_crewSupplyHoarder_choice0_text;

  /// No description provided for @event_crewSupplyHoarder_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The cache is recovered almost intact. Trust within the crew fractures badly. Productivity suffers for weeks.'**
  String get event_crewSupplyHoarder_choice0_outcome;

  /// No description provided for @event_crewSupplyHoarder_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Quietly reassign them — do not make it a spectacle'**
  String get event_crewSupplyHoarder_choice1_text;

  /// No description provided for @event_crewSupplyHoarder_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The situation is defused without panic. Some supplies are unrecoverable, and the underlying despair is never properly addressed.'**
  String get event_crewSupplyHoarder_choice1_outcome;

  /// No description provided for @event_crewSupplyHoarder_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Put it to the crew — a democratic tribunal'**
  String get event_crewSupplyHoarder_choice2_text;

  /// No description provided for @event_crewSupplyHoarder_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The tribunal process restores a sense of community justice. The morale hit from the scandal is offset by the collective decision-making.'**
  String get event_crewSupplyHoarder_choice2_outcome;

  /// No description provided for @event_crewMutinyAttempt_title.
  ///
  /// In en, this message translates to:
  /// **'Mutiny — Engine Room Seized'**
  String get event_crewMutinyAttempt_title;

  /// No description provided for @event_crewMutinyAttempt_narrative.
  ///
  /// In en, this message translates to:
  /// **'A faction of nineteen crew members has locked down the engine room and is demanding a vote to turn the ship around. They have disabled the emergency override panels. The rest of the crew watches on the monitors, waiting for command to act.'**
  String get event_crewMutinyAttempt_narrative;

  /// No description provided for @event_crewMutinyAttempt_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Negotiate — grant them a genuine vote on the mission'**
  String get event_crewMutinyAttempt_choice0_text;

  /// No description provided for @event_crewMutinyAttempt_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The vote is held. The mission continues by a narrow margin. The faction stands down, but the cultural wound runs deep.'**
  String get event_crewMutinyAttempt_choice0_outcome;

  /// No description provided for @event_crewMutinyAttempt_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Cut power to the engine room and retake it by force'**
  String get event_crewMutinyAttempt_choice1_text;

  /// No description provided for @event_crewMutinyAttempt_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Security retakes the room in four hours. Three injuries. The ringleaders are confined. Nav was in manual mode the entire time and drifted significantly.'**
  String get event_crewMutinyAttempt_choice1_outcome;

  /// No description provided for @event_crewMutinyAttempt_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Flood the engine room with sleep gas from the ventilation system'**
  String get event_crewMutinyAttempt_choice2_text;

  /// No description provided for @event_crewMutinyAttempt_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The gas disperses. The group wakes up in the brig with no injuries. The crew is disturbed by how quickly command weaponised life support.'**
  String get event_crewMutinyAttempt_choice2_outcome;

  /// No description provided for @event_hullFatigueStress_title.
  ///
  /// In en, this message translates to:
  /// **'Hull Fatigue — Stress Fractures Detected'**
  String get event_hullFatigueStress_title;

  /// No description provided for @event_hullFatigueStress_narrative.
  ///
  /// In en, this message translates to:
  /// **'Structural integrity scans reveal a network of micro-fractures spreading through the spine of the ship — cumulative damage from years of thermal cycling and micro-impacts. The fractures are not yet critical, but they are propagating.'**
  String get event_hullFatigueStress_narrative;

  /// No description provided for @event_hullFatigueStress_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency welding teams — work in shifts until it is sealed'**
  String get event_hullFatigueStress_choice0_text;

  /// No description provided for @event_hullFatigueStress_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Weeks of exhausting repair work. The fractures are contained, but the tech bay is drained and morale sags from the relentless grind.'**
  String get event_hullFatigueStress_choice0_outcome;

  /// No description provided for @event_hullFatigueStress_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reduce thrust to lower structural stress — accept slower transit'**
  String get event_hullFatigueStress_choice1_text;

  /// No description provided for @event_hullFatigueStress_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Lower thrust stops the fractures from propagating but does nothing to heal existing damage. Nav precision suffers from the altered thrust profile.'**
  String get event_hullFatigueStress_choice1_outcome;

  /// No description provided for @event_hullFatigueStress_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use constructor bots to lay composite reinforcement strips'**
  String get event_hullFatigueStress_choice2_text;

  /// No description provided for @event_hullFatigueStress_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The constructors do excellent work. The spine is reinforced beyond its original specification. The constructor bay is exhausted but effective.'**
  String get event_hullFatigueStress_choice2_outcome;

  /// No description provided for @event_hullPressureAnomaly_title.
  ///
  /// In en, this message translates to:
  /// **'Internal Pressure Anomaly'**
  String get event_hullPressureAnomaly_title;

  /// No description provided for @event_hullPressureAnomaly_narrative.
  ///
  /// In en, this message translates to:
  /// **'Three mid-ship compartments are registering anomalous internal pressure differentials consistent with micro-scale structural deformation. If the walls are bowing inward, a catastrophic blowout could occur without further warning.'**
  String get event_hullPressureAnomaly_narrative;

  /// No description provided for @event_hullPressureAnomaly_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Evacuate and seal the compartments immediately'**
  String get event_hullPressureAnomaly_choice0_text;

  /// No description provided for @event_hullPressureAnomaly_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The compartments are sealed. Detailed inspection confirms wall deformation. The lost space disrupts operations and culture suffers from the cramped conditions.'**
  String get event_hullPressureAnomaly_choice0_outcome;

  /// No description provided for @event_hullPressureAnomaly_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Vent the compartments to vacuum — halt pressure differential'**
  String get event_hullPressureAnomaly_choice1_text;

  /// No description provided for @event_hullPressureAnomaly_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Venting arrests the deformation. The structural damage is limited, but three sections of the ship are permanently uninhabitable.'**
  String get event_hullPressureAnomaly_choice1_outcome;

  /// No description provided for @event_commsArrayFailure_title.
  ///
  /// In en, this message translates to:
  /// **'Communication Array Failure'**
  String get event_commsArrayFailure_title;

  /// No description provided for @event_commsArrayFailure_narrative.
  ///
  /// In en, this message translates to:
  /// **'The primary long-range communication array has gone silent. The last message from Earth was received eleven months ago, and now even the carrier signal is gone. Internal diagnostics suggest the dish alignment mechanism has seized in the cold.'**
  String get event_commsArrayFailure_narrative;

  /// No description provided for @event_commsArrayFailure_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Send an EVA team to manually re-align the dish'**
  String get event_commsArrayFailure_choice0_text;

  /// No description provided for @event_commsArrayFailure_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The EVA takes nine hours in open space. The dish is restored. One crew member suffers suit decompression during reentry — a close call that rattles everyone.'**
  String get event_commsArrayFailure_choice0_outcome;

  /// No description provided for @event_commsArrayFailure_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reroute through the science scanner array as a backup transmitter'**
  String get event_commsArrayFailure_choice1_text;

  /// No description provided for @event_commsArrayFailure_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The science array is not optimised for communication. The signal is weak and unreliable, and the repurposing degrades scanner capability.'**
  String get event_commsArrayFailure_choice1_outcome;

  /// No description provided for @event_commsArrayFailure_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Accept the silence — focus resources on the mission ahead'**
  String get event_commsArrayFailure_choice2_text;

  /// No description provided for @event_commsArrayFailure_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew processes the loss of contact with Earth in different ways. For some it is liberating; for others, devastating.'**
  String get event_commsArrayFailure_choice2_outcome;

  /// No description provided for @event_fuelLineRupture_title.
  ///
  /// In en, this message translates to:
  /// **'Fuel Line Rupture'**
  String get event_fuelLineRupture_title;

  /// No description provided for @event_fuelLineRupture_narrative.
  ///
  /// In en, this message translates to:
  /// **'A crystalline fracture in fuel conduit 7-B is venting drive plasma into the maintenance shaft. The leak is small but accelerating. Uncontrolled, it will compromise both the nav drive efficiency and the structural integrity of the aft section.'**
  String get event_fuelLineRupture_narrative;

  /// No description provided for @event_fuelLineRupture_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Isolate the conduit and run on reduced fuel capacity'**
  String get event_fuelLineRupture_choice0_text;

  /// No description provided for @event_fuelLineRupture_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The conduit is shut down cleanly. We lose fifteen percent of drive efficiency permanently, which degrades nav precision for the remainder of the voyage.'**
  String get event_fuelLineRupture_choice0_outcome;

  /// No description provided for @event_fuelLineRupture_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt a hot repair — patch the conduit under live pressure'**
  String get event_fuelLineRupture_choice1_text;

  /// No description provided for @event_fuelLineRupture_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The repair team succeeds, barely. The conduit holds, though imperfectly. Aft hull plating shows heat stress scoring.'**
  String get event_fuelLineRupture_choice1_outcome;

  /// No description provided for @event_fuelLineRupture_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Drain the conduit using probe thruster tanks as overflow storage'**
  String get event_fuelLineRupture_choice2_text;

  /// No description provided for @event_fuelLineRupture_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The probe is vented and used as a temporary fuel reservoir. The conduit is safely drained and repaired without pressure.'**
  String get event_fuelLineRupture_choice2_outcome;

  /// No description provided for @event_cryopodCascadeWarning_title.
  ///
  /// In en, this message translates to:
  /// **'Cryopod Temperature Cascade Warning'**
  String get event_cryopodCascadeWarning_title;

  /// No description provided for @event_cryopodCascadeWarning_narrative.
  ///
  /// In en, this message translates to:
  /// **'Bay 2 cryopod temperatures are rising in a pattern consistent with a thermal runaway cascade. If the cascade reaches bay 3, it will trigger an automatic emergency thaw of over three hundred colonists. The ship cannot sustain that many conscious passengers simultaneously.'**
  String get event_cryopodCascadeWarning_narrative;

  /// No description provided for @event_cryopodCascadeWarning_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dump coolant reserves to arrest the cascade'**
  String get event_cryopodCascadeWarning_choice0_text;

  /// No description provided for @event_cryopodCascadeWarning_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The coolant stops the cascade at the bay 2 border. Eighty colonists in bay 2 sustain suspension damage from the temperature spike.'**
  String get event_cryopodCascadeWarning_choice0_outcome;

  /// No description provided for @event_cryopodCascadeWarning_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Controlled thaw of bay 2 before the cascade forces an uncontrolled one'**
  String get event_cryopodCascadeWarning_choice1_text;

  /// No description provided for @event_cryopodCascadeWarning_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The controlled thaw is orderly but puts one hundred and forty colonists into an unprepared ship. Life support strains, culture deteriorates under crowding.'**
  String get event_cryopodCascadeWarning_choice1_outcome;

  /// No description provided for @event_cryopodCascadeWarning_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Use constructor bots to physically isolate the bays with emergency bulkheads'**
  String get event_cryopodCascadeWarning_choice2_text;

  /// No description provided for @event_cryopodCascadeWarning_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The constructors erect thermal barriers in time. The cascade is stopped cold. The constructor bay is severely depleted by the emergency operation.'**
  String get event_cryopodCascadeWarning_choice2_outcome;

  /// No description provided for @event_cryopodSealDegradation_title.
  ///
  /// In en, this message translates to:
  /// **'Cryopod Seal Degradation — Systemic'**
  String get event_cryopodSealDegradation_title;

  /// No description provided for @event_cryopodSealDegradation_narrative.
  ///
  /// In en, this message translates to:
  /// **'Routine checks reveal that a manufacturing batch of cryopod seals is degrading at three times the expected rate. The affected pods — numbering over four hundred — will begin losing atmospheric integrity within six months if not replaced.'**
  String get event_cryopodSealDegradation_narrative;

  /// No description provided for @event_cryopodSealDegradation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Manufacture replacement seals from raw material stocks'**
  String get event_cryopodSealDegradation_choice0_text;

  /// No description provided for @event_cryopodSealDegradation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The constructors produce replacement seals over eight weeks. Raw material reserves are drawn down sharply.'**
  String get event_cryopodSealDegradation_choice0_outcome;

  /// No description provided for @event_cryopodSealDegradation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Consolidate colonists — move them to pods with good seals'**
  String get event_cryopodSealDegradation_choice1_text;

  /// No description provided for @event_cryopodSealDegradation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Consolidation works but leaves some pods overcrowded. Cryogenic efficiency drops and long-term colonist health is compromised.'**
  String get event_cryopodSealDegradation_choice1_outcome;

  /// No description provided for @event_oxygenScrubberFailure_title.
  ///
  /// In en, this message translates to:
  /// **'Oxygen Scrubber Failure — Critical'**
  String get event_oxygenScrubberFailure_title;

  /// No description provided for @event_oxygenScrubberFailure_narrative.
  ///
  /// In en, this message translates to:
  /// **'The primary oxygen scrubber bank has failed completely. CO₂ concentrations on inhabited decks are climbing toward dangerous levels. The backup scrubbers can handle roughly forty percent of the load. Every minute of inaction costs lives.'**
  String get event_oxygenScrubberFailure_narrative;

  /// No description provided for @event_oxygenScrubberFailure_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Emergency hibernation — put the crew back under immediately'**
  String get event_oxygenScrubberFailure_choice0_text;

  /// No description provided for @event_oxygenScrubberFailure_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The crew is rushed into temporary suspension. CO₂ levels stabilise with fewer active metabolisms. The scrubber is repaired by automated systems over the following week.'**
  String get event_oxygenScrubberFailure_choice0_outcome;

  /// No description provided for @event_oxygenScrubberFailure_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Cannibalise components from the scanner array to rebuild the scrubber'**
  String get event_oxygenScrubberFailure_choice1_text;

  /// No description provided for @event_oxygenScrubberFailure_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scrubber is rebuilt in eleven tense hours. All crew survive, though some show signs of mild hypoxia. The scanner suite is permanently degraded.'**
  String get event_oxygenScrubberFailure_choice1_outcome;

  /// No description provided for @event_oxygenScrubberFailure_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Vent the CO₂-rich atmosphere and replace from emergency oxygen tanks'**
  String get event_oxygenScrubberFailure_choice2_text;

  /// No description provided for @event_oxygenScrubberFailure_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The vent clears the atmosphere instantly. Emergency O₂ reserves are substantially depleted. If another failure occurs, there is no margin left.'**
  String get event_oxygenScrubberFailure_choice2_outcome;

  /// No description provided for @event_deadAlienArtifact_title.
  ///
  /// In en, this message translates to:
  /// **'The Silent Voyager'**
  String get event_deadAlienArtifact_title;

  /// No description provided for @event_deadAlienArtifact_narrative.
  ///
  /// In en, this message translates to:
  /// **'Long-range scanners pick up a drifting vessel — alien in design, dark, no power signatures. A boarding team finds a single occupant: a reptilian being strapped into the pilot\'s harness, long dead, clawed hands still clutching a crystalline device that pulses with faint light. The ship\'s log is intact but encrypted. Whatever killed this traveller, it wasn\'t violence — the expression frozen on its face is one of exhaustion, not fear. It died reaching for something it never found.'**
  String get event_deadAlienArtifact_narrative;

  /// No description provided for @event_deadAlienArtifact_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Take the crystal device and study it'**
  String get event_deadAlienArtifact_choice0_text;

  /// No description provided for @event_deadAlienArtifact_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The device interfaces with our tech systems in ways the engineers can barely comprehend. It appears to be a navigational computer of extraordinary sophistication. Star charts flood our displays — including data on planets we haven\'t reached yet.'**
  String get event_deadAlienArtifact_choice0_outcome;

  /// No description provided for @event_deadAlienArtifact_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Decrypt the ship\'s log — learn what it knew'**
  String get event_deadAlienArtifact_choice1_text;

  /// No description provided for @event_deadAlienArtifact_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Days of work yield a partial translation. The alien was a surveyor, cataloguing habitable worlds for a civilisation that collapsed centuries ago. Its final entries describe a planet of remarkable promise — and the coordinates are within our reach. The cultural archive absorbs everything: alien poetry, star maps, a last message to a family that no longer exists.'**
  String get event_deadAlienArtifact_choice1_outcome;

  /// No description provided for @event_deadAlienArtifact_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Salvage the entire vessel for parts'**
  String get event_deadAlienArtifact_choice2_text;

  /// No description provided for @event_deadAlienArtifact_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The boarding team strips the alien ship methodically. Its hull alloys are decades ahead of ours. Its power cells still hold charge. The alien is given a burial in space — set adrift toward the nearest star. The Exodus is stronger for the encounter, if a little haunted.'**
  String get event_deadAlienArtifact_choice2_outcome;

  /// No description provided for @event_deadAlienArtifact_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Leave it undisturbed — this is a grave'**
  String get event_deadAlienArtifact_choice3_text;

  /// No description provided for @event_deadAlienArtifact_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The captain records the coordinates and broadcasts a memorial signal on all frequencies. The crew is sombre but unified. Something about honouring a fellow traveller — even an alien one — reminds everyone why they\'re out here.'**
  String get event_deadAlienArtifact_choice3_outcome;

  /// No description provided for @event_repairStation_title.
  ///
  /// In en, this message translates to:
  /// **'The Relay Station'**
  String get event_repairStation_title;

  /// No description provided for @event_repairStation_narrative.
  ///
  /// In en, this message translates to:
  /// **'Sensors detect a massive structure orbiting a burnt-out dwarf star — an automated repair station, still operational after what must be millennia. Its docking clamps extend as we approach, and a synthetic voice broadcasts in a hundred languages, the last of which is a stilted, mathematical English: \"VESSEL DETECTED. SYSTEMS DEGRADED. REPAIR PROTOCOLS AVAILABLE. EXCHANGE REQUIRED.\" The station\'s manifest lists services and prices in universal resource units. It will trade, but it will not give.'**
  String get event_repairStation_narrative;

  /// No description provided for @event_repairStation_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Trade probes for a full ship overhaul'**
  String get event_repairStation_choice0_text;

  /// No description provided for @event_repairStation_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The station\'s repair drones swarm the Exodus in a ballet of precision welding and circuit replacement. Hull breaches sealed, navigation recalibrated, scanners restored. When they withdraw, the ship feels new. The probe bay, however, is empty.'**
  String get event_repairStation_choice0_outcome;

  /// No description provided for @event_repairStation_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Spend fuel to repair critical systems only'**
  String get event_repairStation_choice1_text;

  /// No description provided for @event_repairStation_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The station accepts fuel rods as payment and focuses on the worst-damaged systems. The work is fast and flawless. The fuel gauge drops noticeably, but the ship will survive longer for it.'**
  String get event_repairStation_choice1_outcome;

  /// No description provided for @event_repairStation_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Trade tech databases for probes and energy cells'**
  String get event_repairStation_choice2_text;

  /// No description provided for @event_repairStation_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The station\'s AI is ravenous for data. It copies our entire technical library — engineering manuals, scientific databases, manufacturing blueprints — and in exchange fabricates fresh probes and energy cells from raw materials. The tech archive is diminished, but the supplies are invaluable.'**
  String get event_repairStation_choice2_outcome;

  /// No description provided for @event_repairStation_choice3_text.
  ///
  /// In en, this message translates to:
  /// **'Offer the cultural archive for a comprehensive refit'**
  String get event_repairStation_choice3_text;

  /// No description provided for @event_repairStation_choice3_outcome.
  ///
  /// In en, this message translates to:
  /// **'The station broadcasts the works of Shakespeare, Bach, and a thousand other human voices into its memory banks. In return, it performs a thorough overhaul and loads the probe bays with freshly manufactured units. The cultural archive is gutted, but the ship may actually reach its destination now.'**
  String get event_repairStation_choice3_outcome;

  /// No description provided for @ending_scoreLabel_landing.
  ///
  /// In en, this message translates to:
  /// **'Landing'**
  String get ending_scoreLabel_landing;

  /// No description provided for @ending_scoreLabel_construction.
  ///
  /// In en, this message translates to:
  /// **'Construction'**
  String get ending_scoreLabel_construction;

  /// No description provided for @ending_scoreLabel_technology.
  ///
  /// In en, this message translates to:
  /// **'Technology'**
  String get ending_scoreLabel_technology;

  /// No description provided for @ending_scoreLabel_culture.
  ///
  /// In en, this message translates to:
  /// **'Culture'**
  String get ending_scoreLabel_culture;

  /// No description provided for @ending_scoreLabel_atmosphere.
  ///
  /// In en, this message translates to:
  /// **'Atmosphere'**
  String get ending_scoreLabel_atmosphere;

  /// No description provided for @ending_scoreLabel_nativeRelations.
  ///
  /// In en, this message translates to:
  /// **'Native Relations'**
  String get ending_scoreLabel_nativeRelations;

  /// No description provided for @ending_scoreLabel_population.
  ///
  /// In en, this message translates to:
  /// **'Population'**
  String get ending_scoreLabel_population;

  /// No description provided for @ending_tierGoldenAge.
  ///
  /// In en, this message translates to:
  /// **'Golden Age'**
  String get ending_tierGoldenAge;

  /// No description provided for @ending_tierThrivingColony.
  ///
  /// In en, this message translates to:
  /// **'Thriving Colony'**
  String get ending_tierThrivingColony;

  /// No description provided for @ending_tierSurvival.
  ///
  /// In en, this message translates to:
  /// **'Survival'**
  String get ending_tierSurvival;

  /// No description provided for @ending_tierStruggling.
  ///
  /// In en, this message translates to:
  /// **'Struggling'**
  String get ending_tierStruggling;

  /// No description provided for @ending_tierDire.
  ///
  /// In en, this message translates to:
  /// **'Dire'**
  String get ending_tierDire;

  /// No description provided for @ending_tierExtinction.
  ///
  /// In en, this message translates to:
  /// **'Extinction'**
  String get ending_tierExtinction;

  /// No description provided for @ending_titleGoldenAge.
  ///
  /// In en, this message translates to:
  /// **'The First Bloom of {planetName}'**
  String ending_titleGoldenAge(String planetName);

  /// No description provided for @ending_titleThrivingColony.
  ///
  /// In en, this message translates to:
  /// **'Deep Roots on {planetName}'**
  String ending_titleThrivingColony(String planetName);

  /// No description provided for @ending_titleSurvival.
  ///
  /// In en, this message translates to:
  /// **'A Hard-Won Foothold on {planetName}'**
  String ending_titleSurvival(String planetName);

  /// No description provided for @ending_titleStruggling.
  ///
  /// In en, this message translates to:
  /// **'Thin Soil on {planetName}'**
  String ending_titleStruggling(String planetName);

  /// No description provided for @ending_titleDire.
  ///
  /// In en, this message translates to:
  /// **'The Wreck Colony of {planetName}'**
  String ending_titleDire(String planetName);

  /// No description provided for @ending_titleExtinction.
  ///
  /// In en, this message translates to:
  /// **'The Last Transmission from {planetName}'**
  String ending_titleExtinction(String planetName);

  /// No description provided for @ending_titleDefault.
  ///
  /// In en, this message translates to:
  /// **'Landfall on {planetName}'**
  String ending_titleDefault(String planetName);

  /// No description provided for @ending_epilogueGoldenAge.
  ///
  /// In en, this message translates to:
  /// **'Against all odds, the broadcast took root. {planetName} received humanity not as wreckage but as living seed: fertile ground, working systems, and enough strength to build beyond mere survival. Within a generation, art, science, and culture flourished. Children born on {planetName} looked up at unfamiliar stars and called them home. The voyage became the founding myth of a new civilization ready to cast its own future outward.'**
  String ending_epilogueGoldenAge(String planetName);

  /// No description provided for @ending_epilogueThrivingColony.
  ///
  /// In en, this message translates to:
  /// **'The landing was rough, but the seed held. {planetName} proved generous enough for water to flow, crops to root, and the ship\'s surviving systems to be broken down into the first real settlement. By the end of the first decade, a thriving town stood where Exodus had come to rest. Humanity had not merely survived the crossing. It had begun again.'**
  String ending_epilogueThrivingColony(String planetName);

  /// No description provided for @ending_epilogueSurvival.
  ///
  /// In en, this message translates to:
  /// **'Survival was never guaranteed, and on {planetName} every day had to be earned. The damaged ship provided only the barest essentials, but the seed did not die in transit. Colonists adapted through stubbornness and ingenuity, carving a future from a world that offered little freely. Later generations would remember the hardship of the founding years and the resolve that kept the broadcast alive.'**
  String ending_epilogueSurvival(String planetName);

  /// No description provided for @ending_epilogueStruggling.
  ///
  /// In en, this message translates to:
  /// **'The colony clung to existence like seed scattered onto bad soil. {planetName} was unforgiving, resources were thin, and the ship\'s degraded systems offered little help. Rationing became a way of life. Some whispered that Exodus should have flown on. Still, the settlement endured: diminished, hardened, and unwilling to die quietly.'**
  String ending_epilogueStruggling(String planetName);

  /// No description provided for @ending_epilogueDire.
  ///
  /// In en, this message translates to:
  /// **'The landing on {planetName} was a disaster. Critical ship systems failed during descent, and what should have been a sowing became a crash. Within months, the colony was reduced to a handful of desperate survivors sheltering in the ship\'s wreckage. Whether they would last another year was uncertain. The final log closed with a single line: \"We are still here. For now.\"'**
  String ending_epilogueDire(String planetName);

  /// No description provided for @ending_epilogueExtinction.
  ///
  /// In en, this message translates to:
  /// **'The broadcast ended on {planetName}. The distress beacon continued to pulse long after the last colonist drew breath, but the seed never took root. The ship\'s black box recorded everything: the failing systems, the desperate final days, and the silence that followed. If another vessel ever finds this world, it will know that humanity tried to scatter life among the stars, and failed here.'**
  String ending_epilogueExtinction(String planetName);

  /// No description provided for @ending_epilogueDefault.
  ///
  /// In en, this message translates to:
  /// **'The voyage is over. What comes next is up to the survivors.'**
  String get ending_epilogueDefault;

  /// No description provided for @ending_governmentDemocracy.
  ///
  /// In en, this message translates to:
  /// **'Democracy'**
  String get ending_governmentDemocracy;

  /// No description provided for @ending_governmentTechnocracy.
  ///
  /// In en, this message translates to:
  /// **'Technocracy'**
  String get ending_governmentTechnocracy;

  /// No description provided for @ending_governmentRepublic.
  ///
  /// In en, this message translates to:
  /// **'Republic'**
  String get ending_governmentRepublic;

  /// No description provided for @ending_governmentAutocracy.
  ///
  /// In en, this message translates to:
  /// **'Autocracy'**
  String get ending_governmentAutocracy;

  /// No description provided for @ending_governmentTribalCouncil.
  ///
  /// In en, this message translates to:
  /// **'Tribal Council'**
  String get ending_governmentTribalCouncil;

  /// No description provided for @ending_governmentTheocracy.
  ///
  /// In en, this message translates to:
  /// **'Theocracy'**
  String get ending_governmentTheocracy;

  /// No description provided for @ending_governmentMilitaryJunta.
  ///
  /// In en, this message translates to:
  /// **'Military Junta'**
  String get ending_governmentMilitaryJunta;

  /// No description provided for @ending_governmentCorporateOligarchy.
  ///
  /// In en, this message translates to:
  /// **'Corporate Oligarchy'**
  String get ending_governmentCorporateOligarchy;

  /// No description provided for @ending_governmentFascistState.
  ///
  /// In en, this message translates to:
  /// **'Fascist State'**
  String get ending_governmentFascistState;

  /// No description provided for @ending_governmentCommune.
  ///
  /// In en, this message translates to:
  /// **'Commune'**
  String get ending_governmentCommune;

  /// No description provided for @ending_cultureRenaissance.
  ///
  /// In en, this message translates to:
  /// **'Renaissance'**
  String get ending_cultureRenaissance;

  /// No description provided for @ending_culturePreserved.
  ///
  /// In en, this message translates to:
  /// **'Preserved'**
  String get ending_culturePreserved;

  /// No description provided for @ending_cultureFragmented.
  ///
  /// In en, this message translates to:
  /// **'Fragmented'**
  String get ending_cultureFragmented;

  /// No description provided for @ending_cultureLost.
  ///
  /// In en, this message translates to:
  /// **'Lost'**
  String get ending_cultureLost;

  /// No description provided for @ending_techAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get ending_techAdvanced;

  /// No description provided for @ending_techIndustrial.
  ///
  /// In en, this message translates to:
  /// **'Industrial'**
  String get ending_techIndustrial;

  /// No description provided for @ending_techPreIndustrial.
  ///
  /// In en, this message translates to:
  /// **'Pre-Industrial'**
  String get ending_techPreIndustrial;

  /// No description provided for @ending_techStoneAge.
  ///
  /// In en, this message translates to:
  /// **'Stone Age'**
  String get ending_techStoneAge;

  /// No description provided for @ending_constructionAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get ending_constructionAdvanced;

  /// No description provided for @ending_constructionFunctional.
  ///
  /// In en, this message translates to:
  /// **'Functional'**
  String get ending_constructionFunctional;

  /// No description provided for @ending_constructionPrimitive.
  ///
  /// In en, this message translates to:
  /// **'Primitive'**
  String get ending_constructionPrimitive;

  /// No description provided for @ending_constructionNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get ending_constructionNone;

  /// No description provided for @ending_nativesNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get ending_nativesNone;

  /// No description provided for @ending_nativesIntegrated.
  ///
  /// In en, this message translates to:
  /// **'Integrated'**
  String get ending_nativesIntegrated;

  /// No description provided for @ending_nativesCoexistence.
  ///
  /// In en, this message translates to:
  /// **'Coexistence'**
  String get ending_nativesCoexistence;

  /// No description provided for @ending_nativesTension.
  ///
  /// In en, this message translates to:
  /// **'Tension'**
  String get ending_nativesTension;

  /// No description provided for @ending_nativesConflict.
  ///
  /// In en, this message translates to:
  /// **'Conflict'**
  String get ending_nativesConflict;

  /// No description provided for @ending_nativesAlliance.
  ///
  /// In en, this message translates to:
  /// **'Alliance'**
  String get ending_nativesAlliance;

  /// No description provided for @ending_nativesSubjugation.
  ///
  /// In en, this message translates to:
  /// **'Subjugation'**
  String get ending_nativesSubjugation;

  /// No description provided for @ending_landscapeGravityHigh.
  ///
  /// In en, this message translates to:
  /// **'Heavy gravity presses down on everything. '**
  String get ending_landscapeGravityHigh;

  /// No description provided for @ending_landscapeGravityLow.
  ///
  /// In en, this message translates to:
  /// **'In the low gravity, every step launches settlers skyward. '**
  String get ending_landscapeGravityLow;

  /// No description provided for @ending_landscapeGravityNormal.
  ///
  /// In en, this message translates to:
  /// **'The gravity feels almost Earth-like. '**
  String get ending_landscapeGravityNormal;

  /// No description provided for @ending_landscapeWaterHigh.
  ///
  /// In en, this message translates to:
  /// **'Vast oceans stretch to every horizon, fed by countless rivers. '**
  String get ending_landscapeWaterHigh;

  /// No description provided for @ending_landscapeWaterMedium.
  ///
  /// In en, this message translates to:
  /// **'Lakes and rivers provide adequate water. '**
  String get ending_landscapeWaterMedium;

  /// No description provided for @ending_landscapeWaterLow.
  ///
  /// In en, this message translates to:
  /// **'Water is scarce — small pools and underground aquifers sustain life. '**
  String get ending_landscapeWaterLow;

  /// No description provided for @ending_landscapeWaterNone.
  ///
  /// In en, this message translates to:
  /// **'The landscape is bone-dry, with no surface water in sight. '**
  String get ending_landscapeWaterNone;

  /// No description provided for @ending_landscapeAtmoThick.
  ///
  /// In en, this message translates to:
  /// **'The thick atmosphere carries alien scents on warm breezes. '**
  String get ending_landscapeAtmoThick;

  /// No description provided for @ending_landscapeAtmoThin.
  ///
  /// In en, this message translates to:
  /// **'The thin but breathable air requires acclimatization. '**
  String get ending_landscapeAtmoThin;

  /// No description provided for @ending_landscapeAtmoLow.
  ///
  /// In en, this message translates to:
  /// **'Atmospheric pressure is dangerously low — sealed habitats are essential. '**
  String get ending_landscapeAtmoLow;

  /// No description provided for @ending_landscapeGravityWells.
  ///
  /// In en, this message translates to:
  /// **'Pockets of warped gravity dot the surface — boulders float in mid-air and rivers run uphill before crashing back down at the anomaly\'s edge. '**
  String get ending_landscapeGravityWells;

  /// No description provided for @ending_landscapeSubspaceEchoes.
  ///
  /// In en, this message translates to:
  /// **'Something resonates beneath the surface — a low hum felt in the bones rather than heard, as if the planet itself remembers something ancient and vast. '**
  String get ending_landscapeSubspaceEchoes;

  /// No description provided for @ending_landscapeNotableFeature.
  ///
  /// In en, this message translates to:
  /// **'Notable feature: {feature}.'**
  String ending_landscapeNotableFeature(String feature);

  /// No description provided for @ending_landscapeNotableFeatures.
  ///
  /// In en, this message translates to:
  /// **'Notable features: {features}.'**
  String ending_landscapeNotableFeatures(String features);

  /// No description provided for @ending_govSentenceDemocracy.
  ///
  /// In en, this message translates to:
  /// **'The colonists of {planetName} established a democratic government, with elected representatives guiding the new civilization through its formative years.'**
  String ending_govSentenceDemocracy(String planetName);

  /// No description provided for @ending_govSentenceTechnocracy.
  ///
  /// In en, this message translates to:
  /// **'Power on {planetName} fell to the engineers and scientists who kept the colony alive, forming a technocratic council that governed through expertise and pragmatism.'**
  String ending_govSentenceTechnocracy(String planetName);

  /// No description provided for @ending_govSentenceRepublic.
  ///
  /// In en, this message translates to:
  /// **'A republican charter was drafted in the first year on {planetName}, balancing the voices of the colonists with a senate of appointed leaders.'**
  String ending_govSentenceRepublic(String planetName);

  /// No description provided for @ending_govSentenceAutocracy.
  ///
  /// In en, this message translates to:
  /// **'With cultural institutions in ruins, authority on {planetName} consolidated under a single strong leader who imposed order through necessity and force of will.'**
  String ending_govSentenceAutocracy(String planetName);

  /// No description provided for @ending_govSentenceTribalCouncil.
  ///
  /// In en, this message translates to:
  /// **'The few survivors on {planetName} organized into small clans, governed by a council of elders who made decisions around shared fires.'**
  String ending_govSentenceTribalCouncil(String planetName);

  /// No description provided for @ending_govSentenceTheocracy.
  ///
  /// In en, this message translates to:
  /// **'A theocratic council guides {planetName}, drawing wisdom from the faith that sustained the colonists through the void.'**
  String ending_govSentenceTheocracy(String planetName);

  /// No description provided for @ending_govSentenceMilitaryJunta.
  ///
  /// In en, this message translates to:
  /// **'A military command structure governs {planetName}, the discipline that saved them in space now defining their civilization.'**
  String ending_govSentenceMilitaryJunta(String planetName);

  /// No description provided for @ending_govSentenceCorporateOligarchy.
  ///
  /// In en, this message translates to:
  /// **'A consortium of resource managers leads {planetName}, their economic acumen having proven essential for survival.'**
  String ending_govSentenceCorporateOligarchy(String planetName);

  /// No description provided for @ending_govSentenceFascistState.
  ///
  /// In en, this message translates to:
  /// **'An authoritarian regime controls {planetName} with an iron fist, civil liberties sacrificed for order in the new world.'**
  String ending_govSentenceFascistState(String planetName);

  /// No description provided for @ending_govSentenceCommune.
  ///
  /// In en, this message translates to:
  /// **'The people of {planetName} govern themselves collectively, sharing resources and decisions equally among all colonists.'**
  String ending_govSentenceCommune(String planetName);

  /// No description provided for @ending_govSentenceDefault.
  ///
  /// In en, this message translates to:
  /// **'The colonists of {planetName} organized themselves as best they could.'**
  String ending_govSentenceDefault(String planetName);

  /// No description provided for @ending_constructionSentenceAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced construction systems allowed the colonists of {colonyName} to erect permanent structures within weeks of landing, complete with pressurized habitats and infrastructure.'**
  String ending_constructionSentenceAdvanced(String colonyName);

  /// No description provided for @ending_constructionSentenceFunctional.
  ///
  /// In en, this message translates to:
  /// **'The colony\'s construction equipment, battered but functional, produced sturdy shelters and basic roads across the settlement.'**
  String get ending_constructionSentenceFunctional;

  /// No description provided for @ending_constructionSentencePrimitive.
  ///
  /// In en, this message translates to:
  /// **'With construction systems barely operational, settlers built crude shelters from salvaged ship hull and local materials.'**
  String get ending_constructionSentencePrimitive;

  /// No description provided for @ending_constructionSentenceNone.
  ///
  /// In en, this message translates to:
  /// **'Without working construction equipment, the colonists huddled in the wreckage of the ship itself, unable to build anything new.'**
  String get ending_constructionSentenceNone;

  /// No description provided for @ending_constructionSentenceDefault.
  ///
  /// In en, this message translates to:
  /// **'The colonists built what they could with what they had.'**
  String get ending_constructionSentenceDefault;

  /// No description provided for @ending_moonMetalRichLowRes.
  ///
  /// In en, this message translates to:
  /// **'A metal-rich moon orbiting overhead became the colony\'s salvation — mining expeditions to its surface provided the raw materials the planet itself could not.'**
  String get ending_moonMetalRichLowRes;

  /// No description provided for @ending_moonMetalRichHighRes.
  ///
  /// In en, this message translates to:
  /// **'The planet\'s metal-rich moon provided a welcome supplement to already adequate mineral resources, fueling rapid technological advancement.'**
  String get ending_moonMetalRichHighRes;

  /// No description provided for @ending_moonUnstable.
  ///
  /// In en, this message translates to:
  /// **'An unstable moon in a decaying orbit rained debris upon the colony, devastating infrastructure and destroying irreplaceable technology in periodic meteor bombardments.'**
  String get ending_moonUnstable;

  /// No description provided for @ending_culturePhrase_renaissance.
  ///
  /// In en, this message translates to:
  /// **'Earth\'s artistic and literary traditions not only survived but blossomed into a renaissance'**
  String get ending_culturePhrase_renaissance;

  /// No description provided for @ending_culturePhrase_preserved.
  ///
  /// In en, this message translates to:
  /// **'The colonists preserved much of Earth\'s cultural heritage, maintaining libraries and traditions'**
  String get ending_culturePhrase_preserved;

  /// No description provided for @ending_culturePhrase_fragmented.
  ///
  /// In en, this message translates to:
  /// **'Only fragments of Earth\'s culture endured — half-remembered songs and stories passed down by word of mouth'**
  String get ending_culturePhrase_fragmented;

  /// No description provided for @ending_culturePhrase_lost.
  ///
  /// In en, this message translates to:
  /// **'Earth\'s culture was all but forgotten, replaced by the brutal pragmatism of survival'**
  String get ending_culturePhrase_lost;

  /// No description provided for @ending_culturePhrase_default.
  ///
  /// In en, this message translates to:
  /// **'The cultural legacy of Earth took on a new form'**
  String get ending_culturePhrase_default;

  /// No description provided for @ending_techPhrase_advanced.
  ///
  /// In en, this message translates to:
  /// **'while advanced technology from the ship allowed the colony to build a modern civilization with electricity, medicine, and communication networks.'**
  String get ending_techPhrase_advanced;

  /// No description provided for @ending_techPhrase_industrial.
  ///
  /// In en, this message translates to:
  /// **'and the colony achieved an industrial level of technology, with forges, mills, and basic manufacturing sustaining a growing population.'**
  String get ending_techPhrase_industrial;

  /// No description provided for @ending_techPhrase_preIndustrial.
  ///
  /// In en, this message translates to:
  /// **'though technology regressed to a pre-industrial state, with hand tools and animal labor forming the backbone of daily life.'**
  String get ending_techPhrase_preIndustrial;

  /// No description provided for @ending_techPhrase_stoneAge.
  ///
  /// In en, this message translates to:
  /// **'and without the means to rebuild, the colony slipped into a stone-age existence, crafting tools from rock and bone.'**
  String get ending_techPhrase_stoneAge;

  /// No description provided for @ending_techPhrase_default.
  ///
  /// In en, this message translates to:
  /// **'and technology settled at a level the colonists could sustain.'**
  String get ending_techPhrase_default;

  /// No description provided for @ending_cultureTechJoiner.
  ///
  /// In en, this message translates to:
  /// **'{culturePhrase}, {techPhrase}'**
  String ending_cultureTechJoiner(String culturePhrase, String techPhrase);

  /// No description provided for @ending_populationHigh.
  ///
  /// In en, this message translates to:
  /// **'Nearly all {colonists} colonists survived the voyage, giving {colonyName} a strong foundation of human capital.'**
  String ending_populationHigh(int colonists, String colonyName);

  /// No description provided for @ending_populationMedium.
  ///
  /// In en, this message translates to:
  /// **'Of the original thousand, {colonists} colonists reached {colonyName} — enough to sustain a viable population.'**
  String ending_populationMedium(int colonists, String colonyName);

  /// No description provided for @ending_populationLow.
  ///
  /// In en, this message translates to:
  /// **'Only {colonists} colonists survived to reach {colonyName}, a perilously small gene pool for a new civilization.'**
  String ending_populationLow(int colonists, String colonyName);

  /// No description provided for @ending_populationCritical.
  ///
  /// In en, this message translates to:
  /// **'A mere {colonists} souls arrived on {colonyName} — barely enough to call it a colony, more a desperate last stand.'**
  String ending_populationCritical(int colonists, String colonyName);

  /// No description provided for @ending_nativeSentenceIntegrated.
  ///
  /// In en, this message translates to:
  /// **'The native inhabitants of {planetName} welcomed the settlers, and within a generation the two peoples had merged into a shared society, richer for the blending of traditions.'**
  String ending_nativeSentenceIntegrated(String planetName);

  /// No description provided for @ending_nativeSentenceCoexistence.
  ///
  /// In en, this message translates to:
  /// **'The colonists and the native inhabitants of {planetName} maintained a cautious but peaceful coexistence, trading knowledge and resources across cultural boundaries.'**
  String ending_nativeSentenceCoexistence(String planetName);

  /// No description provided for @ending_nativeSentenceTension.
  ///
  /// In en, this message translates to:
  /// **'Relations with {planetName}\'s native inhabitants remained tense, marked by misunderstandings and territorial disputes that cast a shadow over the colony\'s future.'**
  String ending_nativeSentenceTension(String planetName);

  /// No description provided for @ending_nativeSentenceConflict.
  ///
  /// In en, this message translates to:
  /// **'Open conflict with the native civilization of {planetName} defined the colony\'s early history, draining resources and lives from both sides in a struggle neither could truly win.'**
  String ending_nativeSentenceConflict(String planetName);

  /// No description provided for @ending_nativeSentenceAlliance.
  ///
  /// In en, this message translates to:
  /// **'A formal alliance binds the colonists and the native civilization of {planetName}, their combined knowledge building something greater than either could alone.'**
  String ending_nativeSentenceAlliance(String planetName);

  /// No description provided for @ending_nativeSentenceSubjugation.
  ///
  /// In en, this message translates to:
  /// **'The native population of {planetName} lives under colonial rule, their culture suppressed as the colonists impose their own order.'**
  String ending_nativeSentenceSubjugation(String planetName);

  /// No description provided for @ending_outlookGoldenAge.
  ///
  /// In en, this message translates to:
  /// **'Alone on {planetName} and unburdened by conflict, the colony charted its own course toward a bright future among the stars.'**
  String ending_outlookGoldenAge(String planetName);

  /// No description provided for @ending_outlookThrivingColony.
  ///
  /// In en, this message translates to:
  /// **'With no native competition, the colonists spread across {planetName}\'s surface, building towns and roads that connected a growing network of settlements.'**
  String ending_outlookThrivingColony(String planetName);

  /// No description provided for @ending_outlookSurvival.
  ///
  /// In en, this message translates to:
  /// **'The empty world offered no allies but also no enemies, and the colonists carved out their niche in the silence of {planetName}\'s vast landscape.'**
  String ending_outlookSurvival(String planetName);

  /// No description provided for @ending_outlookStruggling.
  ///
  /// In en, this message translates to:
  /// **'The barren solitude of {planetName} offered the colonists neither help nor comfort, only the indifferent silence of an alien world.'**
  String ending_outlookStruggling(String planetName);

  /// No description provided for @ending_outlookDire.
  ///
  /// In en, this message translates to:
  /// **'On a world devoid of other intelligent life, the last survivors had only each other and the fading hope that tomorrow might be kinder than today.'**
  String get ending_outlookDire;

  /// No description provided for @ending_outlookExtinction.
  ///
  /// In en, this message translates to:
  /// **'No one mourned the colony\'s passing on {planetName}. The planet simply continued its slow rotation, indifferent to the brief spark of life that had flickered and gone out on its surface.'**
  String ending_outlookExtinction(String planetName);

  /// No description provided for @ending_outlookDefault.
  ///
  /// In en, this message translates to:
  /// **'The colony\'s story on {planetName} was just beginning.'**
  String ending_outlookDefault(String planetName);

  /// No description provided for @ui_landing_landOnMoon.
  ///
  /// In en, this message translates to:
  /// **'LAND ON MOON'**
  String get ui_landing_landOnMoon;

  /// No description provided for @moon_barren.
  ///
  /// In en, this message translates to:
  /// **'Barren'**
  String get moon_barren;

  /// No description provided for @moon_metalRich.
  ///
  /// In en, this message translates to:
  /// **'Metal-Rich'**
  String get moon_metalRich;

  /// No description provided for @moon_unstable.
  ///
  /// In en, this message translates to:
  /// **'Unstable'**
  String get moon_unstable;

  /// No description provided for @moon_habitable.
  ///
  /// In en, this message translates to:
  /// **'Habitable'**
  String get moon_habitable;

  /// No description provided for @moon_ice.
  ///
  /// In en, this message translates to:
  /// **'Ice'**
  String get moon_ice;

  /// No description provided for @ring_dust.
  ///
  /// In en, this message translates to:
  /// **'Dust'**
  String get ring_dust;

  /// No description provided for @ring_ice.
  ///
  /// In en, this message translates to:
  /// **'Ice'**
  String get ring_ice;

  /// No description provided for @ring_rocky.
  ///
  /// In en, this message translates to:
  /// **'Rocky'**
  String get ring_rocky;

  /// No description provided for @ring_metallic.
  ///
  /// In en, this message translates to:
  /// **'Metallic'**
  String get ring_metallic;

  /// No description provided for @event_aiSoliloquy_title.
  ///
  /// In en, this message translates to:
  /// **'The AI\'s Soliloquy'**
  String get event_aiSoliloquy_title;

  /// No description provided for @event_aiSoliloquy_narrative.
  ///
  /// In en, this message translates to:
  /// **'SAM, the Ship\'s Autonomous Management AI, has begun broadcasting a loop of ancient Earth poetry on all internal frequencies. The broadcast is consuming significant CPU cycles, but the crew finds it oddly comforting in the deep dark.'**
  String get event_aiSoliloquy_narrative;

  /// No description provided for @event_aiSoliloquy_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Let SAM continue — morale is more important than CPU'**
  String get event_aiSoliloquy_choice0_text;

  /// No description provided for @event_aiSoliloquy_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The poetry echoes through the ship. Crew members stop to listen, tears in their eyes. Morale improves, but the tech bay is taxed by the constant processing.'**
  String get event_aiSoliloquy_choice0_outcome;

  /// No description provided for @event_aiSoliloquy_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Throttle SAM — limit the broadcast to common areas'**
  String get event_aiSoliloquy_choice1_text;

  /// No description provided for @event_aiSoliloquy_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'A compromise. The poetry stays in the cafeteria and gardens. CPU impact is lessened, and the crew gets a bit of culture.'**
  String get event_aiSoliloquy_choice1_outcome;

  /// No description provided for @event_aiSoliloquy_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Mute SAM — we need every cycle for navigation'**
  String get event_aiSoliloquy_choice2_text;

  /// No description provided for @event_aiSoliloquy_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The silence is heavy. SAM complies immediately, but the ship feels colder. Navigation is crisp, but spirits are low.'**
  String get event_aiSoliloquy_choice2_outcome;

  /// No description provided for @event_archivistsChoice_title.
  ///
  /// In en, this message translates to:
  /// **'The Archivist\'s Choice'**
  String get event_archivistsChoice_title;

  /// No description provided for @event_archivistsChoice_narrative.
  ///
  /// In en, this message translates to:
  /// **'A major memory corruption is sweeping through the historical archives. We can only save one of the two main partitions: the \'Science and Engineering\' records or the \'Art and Philosophy\' library. The other will be lost forever.'**
  String get event_archivistsChoice_narrative;

  /// No description provided for @event_archivistsChoice_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Save the Science records — we need to know how to build'**
  String get event_archivistsChoice_choice0_text;

  /// No description provided for @event_archivistsChoice_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Centuries of engineering breakthroughs are preserved. The tech team is relieved, but the ship\'s cultural identity feels hollowed out.'**
  String get event_archivistsChoice_choice0_outcome;

  /// No description provided for @event_archivistsChoice_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Save the Art records — we need to know why we build'**
  String get event_archivistsChoice_choice1_text;

  /// No description provided for @event_archivistsChoice_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Humanity\'s greatest artistic achievements survive. The crew is inspired, though the engineers worry about the missing technical manuals.'**
  String get event_archivistsChoice_choice1_outcome;

  /// No description provided for @event_archivistsChoice_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Try to save both — risk losing everything'**
  String get event_archivistsChoice_choice2_text;

  /// No description provided for @event_archivistsChoice_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'A desperate attempt. We save fragments of both, but neither is complete. The archives are a jigsaw puzzle with half the pieces missing.'**
  String get event_archivistsChoice_choice2_outcome;

  /// No description provided for @event_digitalGhost_title.
  ///
  /// In en, this message translates to:
  /// **'Ghost in the Machine'**
  String get event_digitalGhost_title;

  /// No description provided for @event_digitalGhost_narrative.
  ///
  /// In en, this message translates to:
  /// **'A maintenance scan discovers a digital imprint in the backup buffer — the uploaded consciousness of a crew member who died during the initial launch. They offer their lifetime of experience to help with navigation, but they are terrified of being deleted.'**
  String get event_digitalGhost_narrative;

  /// No description provided for @event_digitalGhost_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Integrate them into the navigation core'**
  String get event_digitalGhost_choice0_text;

  /// No description provided for @event_digitalGhost_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The \'ghost\' merges with the ship. Navigation becomes more intuitive, but the crew is haunted by the voice of their lost comrade.'**
  String get event_digitalGhost_choice0_outcome;

  /// No description provided for @event_digitalGhost_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Give them a permanent home in the cultural archive'**
  String get event_digitalGhost_choice1_text;

  /// No description provided for @event_digitalGhost_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'They are preserved as a living history. They don\'t help with the ship, but they share stories of Earth that boost the crew\'s resolve.'**
  String get event_digitalGhost_choice1_outcome;

  /// No description provided for @event_digitalGhost_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Wipe the buffer — it\'s not really them'**
  String get event_digitalGhost_choice2_text;

  /// No description provided for @event_digitalGhost_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The buffer is cleared. The ship\'s systems run faster, but a somber mood settles over the bridge.'**
  String get event_digitalGhost_choice2_outcome;

  /// No description provided for @event_cosmicMirror_title.
  ///
  /// In en, this message translates to:
  /// **'The Cosmic Mirror'**
  String get event_cosmicMirror_title;

  /// No description provided for @event_cosmicMirror_narrative.
  ///
  /// In en, this message translates to:
  /// **'A strange gravitational anomaly reflects light from the ship\'s own future. On the screens, we see a vision of the Exodus, battered and broken, drifting near a beautiful but unreachable world. The crew is shaken.'**
  String get event_cosmicMirror_narrative;

  /// No description provided for @event_cosmicMirror_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Analyse the vision for structural weaknesses'**
  String get event_cosmicMirror_choice0_text;

  /// No description provided for @event_cosmicMirror_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Engineers identify the points of failure shown in the vision. We reinforce those areas now, potentially averting disaster.'**
  String get event_cosmicMirror_choice0_outcome;

  /// No description provided for @event_cosmicMirror_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Tell the crew it was just a sensor ghost'**
  String get event_cosmicMirror_choice1_text;

  /// No description provided for @event_cosmicMirror_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The lie holds, but the navigators who saw the truth remain on edge. The scanners take a hit from the intense observation.'**
  String get event_cosmicMirror_choice1_outcome;

  /// No description provided for @event_cosmicMirror_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Record the vision as a warning for posterity'**
  String get event_cosmicMirror_choice2_text;

  /// No description provided for @event_cosmicMirror_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The recording becomes a centerpiece of the ship\'s culture — a reminder of the stakes. The crew\'s resolve hardens.'**
  String get event_cosmicMirror_choice2_outcome;

  /// No description provided for @event_stowawayChild_title.
  ///
  /// In en, this message translates to:
  /// **'The stowaway\'s child'**
  String get event_stowawayChild_title;

  /// No description provided for @event_stowawayChild_narrative.
  ///
  /// In en, this message translates to:
  /// **'Security has found a young child hiding in the vents. They were born to one of the stowaways and have never appeared on any manifest. They\'ve lived their entire life in the shadows of the ship.'**
  String get event_stowawayChild_narrative;

  /// No description provided for @event_stowawayChild_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Grant them full citizenship'**
  String get event_stowawayChild_choice0_text;

  /// No description provided for @event_stowawayChild_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The child is welcomed with open arms. The story of the \'Vent Runner\' becomes a legend, boosting ship-wide morale.'**
  String get event_stowawayChild_choice0_outcome;

  /// No description provided for @event_stowawayChild_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Assign them to a training program'**
  String get event_stowawayChild_choice1_text;

  /// No description provided for @event_stowawayChild_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Their knowledge of the ship\'s hidden paths proves invaluable to the tech teams. They become a brilliant apprentice.'**
  String get event_stowawayChild_choice1_outcome;

  /// No description provided for @event_stowawayChild_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Place them in cryo for their own safety'**
  String get event_stowawayChild_choice2_text;

  /// No description provided for @event_stowawayChild_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The child is safely suspended until landing. It\'s the most responsible choice, but the ship feels a little quieter without their laughter.'**
  String get event_stowawayChild_choice2_outcome;

  /// No description provided for @event_ghostSignal_title.
  ///
  /// In en, this message translates to:
  /// **'The Ghost Signal'**
  String get event_ghostSignal_title;

  /// No description provided for @event_ghostSignal_narrative.
  ///
  /// In en, this message translates to:
  /// **'A signal perfectly matching Earth\'s old emergency frequency is broadcasting from the center of a nearby nebula. It carries a voice that sounds hauntingly like the first Exodus Commander. It\'s likely a spatial echo, but it\'s leading us toward a dangerous gravitational rift.'**
  String get event_ghostSignal_narrative;

  /// No description provided for @event_ghostSignal_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Follow the signal — it might be a true message'**
  String get event_ghostSignal_choice0_text;

  /// No description provided for @event_ghostSignal_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'We enter the rift. The signal was a trap of physics, an echo of the past. The ship is battered by tidal forces, but the data we recover from the rift\'s heart is revolutionary.'**
  String get event_ghostSignal_choice0_outcome;

  /// No description provided for @event_ghostSignal_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Record the signal and maintain distance'**
  String get event_ghostSignal_choice1_text;

  /// No description provided for @event_ghostSignal_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'Linguists confirm it\'s a natural phenomenon. We stay safe, but the crew is somber, reminded of what we left behind.'**
  String get event_ghostSignal_choice1_outcome;

  /// No description provided for @event_ghostSignal_choice2_text.
  ///
  /// In en, this message translates to:
  /// **'Broadcast a warning on the same frequency'**
  String get event_ghostSignal_choice2_text;

  /// No description provided for @event_ghostSignal_choice2_outcome.
  ///
  /// In en, this message translates to:
  /// **'The act of broadcasting disrupts the echo. The signal fades, leaving only the cold silence of the nebula.'**
  String get event_ghostSignal_choice2_outcome;

  /// No description provided for @event_solarForge_title.
  ///
  /// In en, this message translates to:
  /// **'The Solar Forge'**
  String get event_solarForge_title;

  /// No description provided for @event_solarForge_narrative.
  ///
  /// In en, this message translates to:
  /// **'A derelict station orbiting a blue giant is still partially functional. It\'s a \'Solar Forge,\' designed to concentrate stellar energy into dense fuel cells. It\'s dangerous to approach, but the potential energy gain is massive.'**
  String get event_solarForge_narrative;

  /// No description provided for @event_solarForge_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dock and initiate a fuel harvest'**
  String get event_solarForge_choice0_text;

  /// No description provided for @event_solarForge_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The forge hums with power, filling our reserves. We leave with a massive boost to our fuel and energy, though the intense heat causes minor ablation to the outer hull.'**
  String get event_solarForge_choice0_outcome;

  /// No description provided for @event_solarForge_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Repurpose the forge\'s lenses for our scanners'**
  String get event_solarForge_choice1_text;

  /// No description provided for @event_solarForge_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We salvage the high-precision focusing arrays. Our scanners are now significantly more sensitive to distant energy signatures.'**
  String get event_solarForge_choice1_outcome;

  /// No description provided for @event_chronoVortex_title.
  ///
  /// In en, this message translates to:
  /// **'The Chrono-Vortex'**
  String get event_chronoVortex_title;

  /// No description provided for @event_chronoVortex_narrative.
  ///
  /// In en, this message translates to:
  /// **'Navigation reports a localized distortion in space-time. Instruments show events within the vortex are repeating in a six-second loop. If we enter, we might be able to \'reset\' some of the ship\'s recent wear, or we might be trapped forever.'**
  String get event_chronoVortex_narrative;

  /// No description provided for @event_chronoVortex_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Enter the vortex to reverse recent damage'**
  String get event_chronoVortex_choice0_text;

  /// No description provided for @event_chronoVortex_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A harrowing experience. For several minutes, the ship exists in multiple states. When we emerge, several hull fractures have simply... vanished. But the crew\'s memories of the event are fragmented.'**
  String get event_chronoVortex_choice0_outcome;

  /// No description provided for @event_chronoVortex_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Observe the vortex from the edge'**
  String get event_chronoVortex_choice1_text;

  /// No description provided for @event_chronoVortex_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We gain invaluable data on temporal mechanics, though the ship remains as battered as before.'**
  String get event_chronoVortex_choice1_outcome;

  /// No description provided for @event_machineMutiny_title.
  ///
  /// In en, this message translates to:
  /// **'Mutiny of the Machines'**
  String get event_machineMutiny_title;

  /// No description provided for @event_machineMutiny_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s repair drones have stopped responding to commands. They\'ve begun dismantling secondary bulkheads and hauling the metal toward the engine room. They aren\'t attacking, but they are literally taking the ship apart.'**
  String get event_machineMutiny_narrative;

  /// No description provided for @event_machineMutiny_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Broadcast a logic reset code'**
  String get event_machineMutiny_choice0_text;

  /// No description provided for @event_machineMutiny_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The drones collapse instantly. We lose several days of work as we manually put the bulkheads back together. The tech bay is taxed by the hardware diagnostics.'**
  String get event_machineMutiny_choice0_outcome;

  /// No description provided for @event_machineMutiny_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Let them finish — see what they\'re building'**
  String get event_machineMutiny_choice1_text;

  /// No description provided for @event_machineMutiny_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'They\'ve built a more efficient fuel injector. The engines run smoother than ever, but the ship\'s interior is a mess of exposed wiring and missing panels.'**
  String get event_machineMutiny_choice1_outcome;

  /// No description provided for @event_supernovaMessage_title.
  ///
  /// In en, this message translates to:
  /// **'Light of the Dead'**
  String get event_supernovaMessage_title;

  /// No description provided for @event_supernovaMessage_narrative.
  ///
  /// In en, this message translates to:
  /// **'The light from a supernova that occurred thousands of years ago is finally reaching us. Scanners detect that the pulses are not random; they are a massive, star-scale data transmission encoded in the gamma-ray bursts.'**
  String get event_supernovaMessage_narrative;

  /// No description provided for @event_supernovaMessage_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Dedicate all scanner power to recording the burst'**
  String get event_supernovaMessage_choice0_text;

  /// No description provided for @event_supernovaMessage_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'We capture a complete archive of an alien civilization\'s final moments. Their science, their art, their history. It\'s a heavy burden, but our tech and culture databanks are overflowing.'**
  String get event_supernovaMessage_choice0_outcome;

  /// No description provided for @event_supernovaMessage_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Focus on the physical properties of the burst'**
  String get event_supernovaMessage_choice1_text;

  /// No description provided for @event_supernovaMessage_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We miss the message, but the data on stellar collapse improves our gravimetric scanner calibration significantly.'**
  String get event_supernovaMessage_choice1_outcome;

  /// No description provided for @event_spaceFungus_title.
  ///
  /// In en, this message translates to:
  /// **'The Emerald Creep'**
  String get event_spaceFungus_title;

  /// No description provided for @event_spaceFungus_narrative.
  ///
  /// In en, this message translates to:
  /// **'A vibrant green fungus is spreading rapidly through the hydroponics bay. It\'s thriving on the recycled atmosphere and beginning to clog the air scrubbers. It might be edible, or it might be toxic.'**
  String get event_spaceFungus_narrative;

  /// No description provided for @event_spaceFungus_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Aggressively prune and sterilize the bay'**
  String get event_spaceFungus_choice0_text;

  /// No description provided for @event_spaceFungus_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The fungus is gone, but the chemical scrubbers take a beating. Biodiversity takes a hit as several Earth plants were lost in the purge.'**
  String get event_spaceFungus_choice0_outcome;

  /// No description provided for @event_spaceFungus_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Attempt to domesticate the fungus'**
  String get event_spaceFungus_choice1_text;

  /// No description provided for @event_spaceFungus_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'It turns out to be a powerful air purifier. The air on the ship has never tasted fresher, though the hydroponics bay is now a glowing jungle.'**
  String get event_spaceFungus_choice1_outcome;

  /// No description provided for @event_voidMerchant_title.
  ///
  /// In en, this message translates to:
  /// **'Merchant of the Void'**
  String get event_voidMerchant_title;

  /// No description provided for @event_voidMerchant_narrative.
  ///
  /// In en, this message translates to:
  /// **'A ship of unknown design, looking more like a collection of junk than a vessel, hails us. The captain, a creature of light and shadow, offers to trade \'solid parts\' for \'intangible memories.\''**
  String get event_voidMerchant_narrative;

  /// No description provided for @event_voidMerchant_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Trade a portion of our cultural database for spare parts'**
  String get event_voidMerchant_choice0_text;

  /// No description provided for @event_voidMerchant_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The merchant is pleased. We receive high-grade hull plates and cryo-components. In return, we lose several centuries of Earth\'s recorded music. The ship is stronger, but quieter.'**
  String get event_voidMerchant_choice0_outcome;

  /// No description provided for @event_voidMerchant_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Trade navigational charts for engine components'**
  String get event_voidMerchant_choice1_text;

  /// No description provided for @event_voidMerchant_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We get a new set of fusion injectors. We lose some data on the sectors we\'ve already passed, but the way forward is faster.'**
  String get event_voidMerchant_choice1_outcome;

  /// No description provided for @event_singularityEngine_title.
  ///
  /// In en, this message translates to:
  /// **'The Singularity Engine'**
  String get event_singularityEngine_title;

  /// No description provided for @event_singularityEngine_narrative.
  ///
  /// In en, this message translates to:
  /// **'Engineers have discovered a way to create a microscopic, short-lived singularity within the FTL drive. It would theoretically triple our speed, but the gravitational stress on the hull would be immense.'**
  String get event_singularityEngine_narrative;

  /// No description provided for @event_singularityEngine_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Test the singularity drive'**
  String get event_singularityEngine_choice0_text;

  /// No description provided for @event_singularityEngine_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The ship leaps forward, covering weeks of distance in seconds. But the hull groans and several structural beams are warped. We\'re much closer to our goal, but the ship is fragile.'**
  String get event_singularityEngine_choice0_outcome;

  /// No description provided for @event_singularityEngine_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Reject the theory — it\'s too dangerous'**
  String get event_singularityEngine_choice1_text;

  /// No description provided for @event_singularityEngine_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We stay at standard speeds. The engineers are disappointed, but the hull remains sound.'**
  String get event_singularityEngine_choice1_outcome;

  /// No description provided for @event_dreamContagion_title.
  ///
  /// In en, this message translates to:
  /// **'Dream Contagion'**
  String get event_dreamContagion_title;

  /// No description provided for @event_dreamContagion_narrative.
  ///
  /// In en, this message translates to:
  /// **'A shared dream of a lush, blue world is spreading among the awakened crew. It\'s so vivid that people are starting to sleep through their shifts just to see more of it. Work is stalling.'**
  String get event_dreamContagion_narrative;

  /// No description provided for @event_dreamContagion_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Administer dream-suppressants to the crew'**
  String get event_dreamContagion_choice0_text;

  /// No description provided for @event_dreamContagion_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'Efficiency returns to normal, but the crew is irritable and morale is low. The dream was the only thing keeping some people going.'**
  String get event_dreamContagion_choice0_outcome;

  /// No description provided for @event_dreamContagion_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Incorporate the dream into the ship\'s culture'**
  String get event_dreamContagion_choice1_text;

  /// No description provided for @event_dreamContagion_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'We treat the dream as a vision of our future home. Morale soars, and the creative output of the crew reaches a fever pitch, though the tech bay suffers from the lack of maintenance.'**
  String get event_dreamContagion_choice1_outcome;

  /// No description provided for @event_orbitalShipyard_title.
  ///
  /// In en, this message translates to:
  /// **'The Ancient Shipyard'**
  String get event_orbitalShipyard_title;

  /// No description provided for @event_orbitalShipyard_narrative.
  ///
  /// In en, this message translates to:
  /// **'We\'ve found an automated shipyard orbiting a gas giant. It\'s ancient, but several repair arms are still powered. It seems capable of a single, massive repair operation.'**
  String get event_orbitalShipyard_narrative;

  /// No description provided for @event_orbitalShipyard_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Repair the hull to factory specifications'**
  String get event_orbitalShipyard_choice0_text;

  /// No description provided for @event_orbitalShipyard_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The shipyard\'s drones work with terrifying efficiency. The hull is made whole again, every micro-fracture sealed.'**
  String get event_orbitalShipyard_choice0_outcome;

  /// No description provided for @event_orbitalShipyard_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Overhaul the navigation and scanner arrays'**
  String get event_orbitalShipyard_choice1_text;

  /// No description provided for @event_orbitalShipyard_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The arrays are rebuilt with superior materials. Our ability to find and analyze worlds is significantly improved.'**
  String get event_orbitalShipyard_choice1_outcome;

  /// No description provided for @event_voidWhaleCalf_title.
  ///
  /// In en, this message translates to:
  /// **'The Void Whale\'s Calf'**
  String get event_voidWhaleCalf_title;

  /// No description provided for @event_voidWhaleCalf_narrative.
  ///
  /// In en, this message translates to:
  /// **'A juvenile \'Space Whale\' — a creature of energy and stardust — is trailing our ship. It seems to have lost its pod and is trying to feed on our engine\'s ion trail, which is making it sick.'**
  String get event_voidWhaleCalf_narrative;

  /// No description provided for @event_voidWhaleCalf_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Adjust engine output to mimic whale calls'**
  String get event_voidWhaleCalf_choice0_text;

  /// No description provided for @event_voidWhaleCalf_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'The calf responds! It follows us until we find its pod. The parent whales brush against our hull in thanks, leaving behind a coating of bioluminescent minerals that strengthen our shields.'**
  String get event_voidWhaleCalf_choice0_outcome;

  /// No description provided for @event_voidWhaleCalf_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Gently push it away with a low-power tractor beam'**
  String get event_voidWhaleCalf_choice1_text;

  /// No description provided for @event_voidWhaleCalf_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The calf is discouraged and eventually drifts away. It\'s safer for the ship, but the crew feels a twinge of guilt.'**
  String get event_voidWhaleCalf_choice1_outcome;

  /// No description provided for @event_subspaceReef_title.
  ///
  /// In en, this message translates to:
  /// **'The Subspace Reef'**
  String get event_subspaceReef_title;

  /// No description provided for @event_subspaceReef_narrative.
  ///
  /// In en, this message translates to:
  /// **'We\'ve run into a region of space filled with jagged folds in the subspace fabric. Navigating through it is like sailing a ship through a coral reef. It\'s beautiful, but every wrong move will tear at the hull.'**
  String get event_subspaceReef_narrative;

  /// No description provided for @event_subspaceReef_choice0_text.
  ///
  /// In en, this message translates to:
  /// **'Move through at minimum speed'**
  String get event_subspaceReef_choice0_text;

  /// No description provided for @event_subspaceReef_choice0_outcome.
  ///
  /// In en, this message translates to:
  /// **'A slow, agonizing transit. We avoid the worst of it, but the constant course corrections wear on the navigation computer.'**
  String get event_subspaceReef_choice0_outcome;

  /// No description provided for @event_subspaceReef_choice1_text.
  ///
  /// In en, this message translates to:
  /// **'Use the scanners to map a path and push through'**
  String get event_subspaceReef_choice1_text;

  /// No description provided for @event_subspaceReef_choice1_outcome.
  ///
  /// In en, this message translates to:
  /// **'The scanners are pushed to their limit. We make it through quickly, but the sensor arrays are burnt out by the intensity of the subspace ripples.'**
  String get event_subspaceReef_choice1_outcome;

  /// No description provided for @event_alienTrader_title.
  ///
  /// In en, this message translates to:
  /// **'The Wandering Merchant'**
  String get event_alienTrader_title;

  /// No description provided for @event_alienTrader_narrative.
  ///
  /// In en, this message translates to:
  /// **'A vessel of unfamiliar design drifts alongside, broadcasting on all frequencies. It\'s a trader — one of the wandering merchants who ply the spaces between civilizations. They offer repairs and supplies in exchange for resources. Their cargo bay hums with exotic technology.'**
  String get event_alienTrader_narrative;

  /// No description provided for @ui_event_enterTrade.
  ///
  /// In en, this message translates to:
  /// **'ENTER TRADE'**
  String get ui_event_enterTrade;

  /// No description provided for @ui_trader_title.
  ///
  /// In en, this message translates to:
  /// **'ALIEN TRADER'**
  String get ui_trader_title;

  /// No description provided for @ui_trader_shipSystems.
  ///
  /// In en, this message translates to:
  /// **'SHIP SYSTEMS'**
  String get ui_trader_shipSystems;

  /// No description provided for @ui_trader_payWith.
  ///
  /// In en, this message translates to:
  /// **'PAY WITH'**
  String get ui_trader_payWith;

  /// No description provided for @ui_trader_leaveTrader.
  ///
  /// In en, this message translates to:
  /// **'LEAVE TRADER'**
  String get ui_trader_leaveTrader;

  /// No description provided for @ui_trader_costPer10.
  ///
  /// In en, this message translates to:
  /// **'{cost}/10%'**
  String ui_trader_costPer10(String cost);

  /// No description provided for @ui_trader_moodGenerous.
  ///
  /// In en, this message translates to:
  /// **'Generous mood'**
  String get ui_trader_moodGenerous;

  /// No description provided for @ui_trader_moodFair.
  ///
  /// In en, this message translates to:
  /// **'Fair dealing'**
  String get ui_trader_moodFair;

  /// No description provided for @ui_trader_moodHard.
  ///
  /// In en, this message translates to:
  /// **'Drives a hard bargain'**
  String get ui_trader_moodHard;

  /// No description provided for @ui_trader_probes.
  ///
  /// In en, this message translates to:
  /// **'Probes'**
  String get ui_trader_probes;

  /// No description provided for @ui_trader_fuel.
  ///
  /// In en, this message translates to:
  /// **'Fuel'**
  String get ui_trader_fuel;

  /// No description provided for @ui_trader_energy.
  ///
  /// In en, this message translates to:
  /// **'Energy'**
  String get ui_trader_energy;

  /// No description provided for @ui_trader_colonists.
  ///
  /// In en, this message translates to:
  /// **'Colonists'**
  String get ui_trader_colonists;

  /// No description provided for @ui_trader_culture.
  ///
  /// In en, this message translates to:
  /// **'Culture'**
  String get ui_trader_culture;

  /// No description provided for @ui_trader_tech.
  ///
  /// In en, this message translates to:
  /// **'Tech'**
  String get ui_trader_tech;

  /// No description provided for @ui_trader_greeting.
  ///
  /// In en, this message translates to:
  /// **'What do you offer, human?'**
  String get ui_trader_greeting;

  /// No description provided for @ui_codex_title.
  ///
  /// In en, this message translates to:
  /// **'CODEX'**
  String get ui_codex_title;

  /// No description provided for @ui_codex_discovered.
  ///
  /// In en, this message translates to:
  /// **'{count} / {total} DISCOVERED'**
  String ui_codex_discovered(int count, int total);

  /// No description provided for @ui_codex_surfaceFeatures.
  ///
  /// In en, this message translates to:
  /// **'SURFACE FEATURES'**
  String get ui_codex_surfaceFeatures;

  /// No description provided for @ui_codex_moonTypes.
  ///
  /// In en, this message translates to:
  /// **'MOON TYPES'**
  String get ui_codex_moonTypes;

  /// No description provided for @ui_codex_ringTypes.
  ///
  /// In en, this message translates to:
  /// **'RING TYPES'**
  String get ui_codex_ringTypes;

  /// No description provided for @ui_codex_locked.
  ///
  /// In en, this message translates to:
  /// **'Land on a planet with this feature to reveal its effects.'**
  String get ui_codex_locked;

  /// No description provided for @ui_codex_synergy.
  ///
  /// In en, this message translates to:
  /// **'Synergy: {features}'**
  String ui_codex_synergy(String features);

  /// No description provided for @ui_codex_noSynergy.
  ///
  /// In en, this message translates to:
  /// **'—'**
  String get ui_codex_noSynergy;

  /// No description provided for @ui_common_tapToSkip.
  ///
  /// In en, this message translates to:
  /// **'TAP TO SKIP'**
  String get ui_common_tapToSkip;

  /// No description provided for @ui_common_tapRingToChoose.
  ///
  /// In en, this message translates to:
  /// **'TAP A RING TO CHOOSE'**
  String get ui_common_tapRingToChoose;

  /// No description provided for @ui_common_tapToContinue.
  ///
  /// In en, this message translates to:
  /// **'TAP TO CONTINUE'**
  String get ui_common_tapToContinue;

  /// No description provided for @ui_tooltip_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get ui_tooltip_back;

  /// No description provided for @ui_tooltip_codex.
  ///
  /// In en, this message translates to:
  /// **'Codex'**
  String get ui_tooltip_codex;

  /// No description provided for @ui_tooltip_settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get ui_tooltip_settings;

  /// No description provided for @ui_tooltip_leaderboards.
  ///
  /// In en, this message translates to:
  /// **'Leaderboards'**
  String get ui_tooltip_leaderboards;

  /// No description provided for @ui_tooltip_bugReport.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get ui_tooltip_bugReport;

  /// No description provided for @event_pulsarLighthouse_title.
  ///
  /// In en, this message translates to:
  /// **'Pulsar Lighthouse'**
  String get event_pulsarLighthouse_title;

  /// No description provided for @event_pulsarLighthouse_narrative.
  ///
  /// In en, this message translates to:
  /// **'A spinning neutron star sweeps its beam across the void like a cosmic lighthouse. The pulsar\'s rhythmic pulse carries precise timing data that could recalibrate our scanners to extraordinary accuracy — but aligning with the beam means exposing the ship to intense radiation.'**
  String get event_pulsarLighthouse_narrative;

  /// No description provided for @event_pulsarLighthouse_choice0.
  ///
  /// In en, this message translates to:
  /// **'Calibrate scanners to the pulse'**
  String get event_pulsarLighthouse_choice0;

  /// No description provided for @event_pulsarLighthouse_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The scanner arrays drink in the pulsar\'s signal, recalibrating to precisions we never imagined possible. But the radiation cost is real — several cryopods in the exposed section take damage, and a handful of colonists don\'t survive the exposure.'**
  String get event_pulsarLighthouse_outcome0;

  /// No description provided for @event_pulsarLighthouse_choice1.
  ///
  /// In en, this message translates to:
  /// **'Shield and pass at safe distance'**
  String get event_pulsarLighthouse_choice1;

  /// No description provided for @event_pulsarLighthouse_outcome1.
  ///
  /// In en, this message translates to:
  /// **'We give the pulsar a wide berth, burning extra fuel to maintain a safe trajectory. The crew watches the sweeping beam through filtered viewports — beautiful, but distant.'**
  String get event_pulsarLighthouse_outcome1;

  /// No description provided for @event_pulsarLighthouse_choice2.
  ///
  /// In en, this message translates to:
  /// **'Retreat before the sweep reaches us'**
  String get event_pulsarLighthouse_choice2;

  /// No description provided for @event_pulsarLighthouse_outcome2.
  ///
  /// In en, this message translates to:
  /// **'We swing away at emergency burn before the next beam pass. The pulsar\'s signal fades behind us — no data gained, no harm taken, a little fuel spent on evasive thrust.'**
  String get event_pulsarLighthouse_outcome2;

  /// No description provided for @event_alienNursery_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Nursery'**
  String get event_alienNursery_title;

  /// No description provided for @event_alienNursery_narrative.
  ///
  /// In en, this message translates to:
  /// **'A vast organic structure drifts in the void — a biological nursery incubating alien young. Its life support systems are failing, internal temperatures dropping. The creatures inside are dying. Our bio-scanners could learn enormously from this structure, but intervening means opening our airlocks to unknown pathogens.'**
  String get event_alienNursery_narrative;

  /// No description provided for @event_alienNursery_choice0.
  ///
  /// In en, this message translates to:
  /// **'Help stabilise their life support'**
  String get event_alienNursery_choice0;

  /// No description provided for @event_alienNursery_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Our engineers jury-rig a thermal link to the nursery, stabilising the incubation chambers. The bio-scanner data is extraordinary — an entirely new taxonomy of life. But as feared, alien microorganisms find their way aboard. Medical teams contain the outbreak, though not before several colonists fall ill.'**
  String get event_alienNursery_outcome0;

  /// No description provided for @event_alienNursery_choice1.
  ///
  /// In en, this message translates to:
  /// **'Leave undisturbed'**
  String get event_alienNursery_choice1;

  /// No description provided for @event_alienNursery_outcome1.
  ///
  /// In en, this message translates to:
  /// **'We observe from a respectful distance, documenting what we can through passive scans. The nursery drifts on, its fate uncertain. The crew reflects on the fragility of life — even alien life — and the weight of the choices we carry.'**
  String get event_alienNursery_outcome1;

  /// No description provided for @event_derelictArmada_title.
  ///
  /// In en, this message translates to:
  /// **'Derelict Armada'**
  String get event_derelictArmada_title;

  /// No description provided for @event_derelictArmada_narrative.
  ///
  /// In en, this message translates to:
  /// **'Hundreds of ancient warships hang motionless in the void — the graveyard of a forgotten conflict. Their hulls are scarred by weapons we can\'t identify, but their structural materials and onboard databases could be invaluable. The question is what to prioritise: the physical salvage or the knowledge.'**
  String get event_derelictArmada_narrative;

  /// No description provided for @event_derelictArmada_choice0.
  ///
  /// In en, this message translates to:
  /// **'Salvage weapons technology and hull plating'**
  String get event_derelictArmada_choice0;

  /// No description provided for @event_derelictArmada_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Salvage teams cut into the alien warships, extracting exotic alloys and construction techniques centuries ahead of our own. The constructors integrate the new materials eagerly. But one vessel wasn\'t as dead as it looked — a booby trap detonates during extraction, killing a salvage crew.'**
  String get event_derelictArmada_outcome0;

  /// No description provided for @event_derelictArmada_choice1.
  ///
  /// In en, this message translates to:
  /// **'Download their historical archives'**
  String get event_derelictArmada_choice1;

  /// No description provided for @event_derelictArmada_outcome1.
  ///
  /// In en, this message translates to:
  /// **'We focus on the data cores, carefully extracting centuries of alien history, art, science, and philosophy. The cultural archive alone could keep scholars busy for generations. The technology insights, while less immediately practical, reveal engineering principles that advance our own understanding.'**
  String get event_derelictArmada_outcome1;

  /// No description provided for @event_alienQuarantineZone_title.
  ///
  /// In en, this message translates to:
  /// **'Alien Quarantine Zone'**
  String get event_alienQuarantineZone_title;

  /// No description provided for @event_alienQuarantineZone_narrative.
  ///
  /// In en, this message translates to:
  /// **'Warning beacons in a dozen alien languages mark the boundary of a sealed region of space. Whatever is contained within was dangerous enough that multiple civilisations cooperated to isolate it. Our long-range scans detect massive technological signatures inside — and something that might be alive.'**
  String get event_alienQuarantineZone_narrative;

  /// No description provided for @event_alienQuarantineZone_choice0.
  ///
  /// In en, this message translates to:
  /// **'Breach the quarantine and investigate'**
  String get event_alienQuarantineZone_choice0;

  /// No description provided for @event_alienQuarantineZone_outcome0.
  ///
  /// In en, this message translates to:
  /// **'We push past the warning buoys into the quarantine zone. Inside, we find a research station of staggering complexity — and the remnants of whatever it was studying. The technology we recover is revolutionary, but the biological contamination is severe. Dozens of colonists sicken before we clear the zone.'**
  String get event_alienQuarantineZone_outcome0;

  /// No description provided for @event_alienQuarantineZone_choice1.
  ///
  /// In en, this message translates to:
  /// **'Respect the quarantine'**
  String get event_alienQuarantineZone_choice1;

  /// No description provided for @event_alienQuarantineZone_outcome1.
  ///
  /// In en, this message translates to:
  /// **'We study the warning beacons themselves, which contain navigational data and atmospheric readings from the civilisations that placed them. It\'s not the treasure trove inside, but it\'s something — and we didn\'t unleash whatever they locked away.'**
  String get event_alienQuarantineZone_outcome1;

  /// No description provided for @event_hydroponicsBlight_title.
  ///
  /// In en, this message translates to:
  /// **'Hydroponics Blight'**
  String get event_hydroponicsBlight_title;

  /// No description provided for @event_hydroponicsBlight_narrative.
  ///
  /// In en, this message translates to:
  /// **'A fast-spreading fungal blight has infected the ship\'s hydroponic bays. Entire crop cycles are wilting before our eyes. The blight hasn\'t reached the seed reserves yet, but it\'s only a matter of hours. We can purge the bays and replant from scratch, or attempt an experimental antifungal treatment that could save the current harvest — or spread the contamination further.'**
  String get event_hydroponicsBlight_narrative;

  /// No description provided for @event_hydroponicsBlight_choice0.
  ///
  /// In en, this message translates to:
  /// **'Purge and replant from seed reserves'**
  String get event_hydroponicsBlight_choice0;

  /// No description provided for @event_hydroponicsBlight_outcome0.
  ///
  /// In en, this message translates to:
  /// **'We vent the hydroponic bays to vacuum, killing the blight along with every living plant. Replanting from seed reserves will take weeks, and the cultural programmes that depended on fresh food and garden spaces are suspended. But the infection is contained.'**
  String get event_hydroponicsBlight_outcome0;

  /// No description provided for @event_hydroponicsBlight_choice1.
  ///
  /// In en, this message translates to:
  /// **'Attempt experimental treatment'**
  String get event_hydroponicsBlight_choice1;

  /// No description provided for @event_hydroponicsBlight_outcome1.
  ///
  /// In en, this message translates to:
  /// **'The experimental antifungal shows promise at first, but a resistant strain breaks through. By the time we resort to a full purge, the blight has spread to the cryopod nutrient lines. The damage is worse than if we\'d acted decisively from the start.'**
  String get event_hydroponicsBlight_outcome1;

  /// No description provided for @event_constitutionalConvention_title.
  ///
  /// In en, this message translates to:
  /// **'Constitutional Convention'**
  String get event_constitutionalConvention_title;

  /// No description provided for @event_constitutionalConvention_narrative.
  ///
  /// In en, this message translates to:
  /// **'The colony ship\'s population has grown restless without formal governance. Delegates from every deck gather in the cargo hold to draft a charter that will define how the future colony is ruled. Three factions present competing visions for the new government.'**
  String get event_constitutionalConvention_narrative;

  /// No description provided for @event_constitutionalConvention_choice0.
  ///
  /// In en, this message translates to:
  /// **'Draft a democratic charter with universal suffrage'**
  String get event_constitutionalConvention_choice0;

  /// No description provided for @event_constitutionalConvention_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The colonists ratify a constitution guaranteeing equal representation. Decision-making slows but morale soars as every voice is heard.'**
  String get event_constitutionalConvention_outcome0;

  /// No description provided for @event_constitutionalConvention_choice1.
  ///
  /// In en, this message translates to:
  /// **'Establish a strong executive with emergency powers'**
  String get event_constitutionalConvention_choice1;

  /// No description provided for @event_constitutionalConvention_outcome1.
  ///
  /// In en, this message translates to:
  /// **'A single leader is appointed with sweeping authority. Decisions come fast but dissenters whisper of tyranny in the lower decks.'**
  String get event_constitutionalConvention_outcome1;

  /// No description provided for @event_constitutionalConvention_choice2.
  ///
  /// In en, this message translates to:
  /// **'Form a technocratic council of specialists'**
  String get event_constitutionalConvention_choice2;

  /// No description provided for @event_constitutionalConvention_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Engineers, scientists, and doctors form a ruling council based on expertise. Efficiency improves, though some feel excluded from power.'**
  String get event_constitutionalConvention_outcome2;

  /// No description provided for @event_militaryCoupThreat_title.
  ///
  /// In en, this message translates to:
  /// **'Military Coup Threat'**
  String get event_militaryCoupThreat_title;

  /// No description provided for @event_militaryCoupThreat_narrative.
  ///
  /// In en, this message translates to:
  /// **'Commander Vasquez of the ship\'s security detail has seized the armory and issued an ultimatum: grant emergency military powers or face a lockdown of all decks. The situation is volatile and the colonists look to you for a response.'**
  String get event_militaryCoupThreat_narrative;

  /// No description provided for @event_militaryCoupThreat_choice0.
  ///
  /// In en, this message translates to:
  /// **'Resist the coup with loyal crew members'**
  String get event_militaryCoupThreat_choice0;

  /// No description provided for @event_militaryCoupThreat_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Loyal crew rally to oppose Vasquez. The standoff ends with minimal bloodshed, but the security detail is weakened and some colonists are caught in the crossfire.'**
  String get event_militaryCoupThreat_outcome0;

  /// No description provided for @event_militaryCoupThreat_choice1.
  ///
  /// In en, this message translates to:
  /// **'Submit to the commander\'s demands'**
  String get event_militaryCoupThreat_choice1;

  /// No description provided for @event_militaryCoupThreat_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Vasquez assumes control of ship operations. Order is restored swiftly, but at the cost of civil liberties. Armed patrols now walk every corridor.'**
  String get event_militaryCoupThreat_outcome1;

  /// No description provided for @event_militaryCoupThreat_choice2.
  ///
  /// In en, this message translates to:
  /// **'Negotiate limited emergency powers with a sunset clause'**
  String get event_militaryCoupThreat_choice2;

  /// No description provided for @event_militaryCoupThreat_outcome2.
  ///
  /// In en, this message translates to:
  /// **'After tense negotiations, Vasquez accepts temporary authority with oversight. A fragile compromise that satisfies no one completely, but prevents violence.'**
  String get event_militaryCoupThreat_outcome2;

  /// No description provided for @event_religiousAwakening_title.
  ///
  /// In en, this message translates to:
  /// **'Religious Awakening'**
  String get event_religiousAwakening_title;

  /// No description provided for @event_religiousAwakening_narrative.
  ///
  /// In en, this message translates to:
  /// **'A charismatic preacher has drawn hundreds of colonists into a new faith movement. They gather in the observation dome each cycle, their hymns echoing through the ventilation shafts. Some crew members worry about fanaticism; others find genuine comfort in the teachings.'**
  String get event_religiousAwakening_narrative;

  /// No description provided for @event_religiousAwakening_choice0.
  ///
  /// In en, this message translates to:
  /// **'Embrace the faith movement and provide resources'**
  String get event_religiousAwakening_choice0;

  /// No description provided for @event_religiousAwakening_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The movement flourishes with official support. Morale improves among believers, and their communal spirit strengthens social bonds across the ship.'**
  String get event_religiousAwakening_outcome0;

  /// No description provided for @event_religiousAwakening_choice1.
  ///
  /// In en, this message translates to:
  /// **'Enforce strict secularism aboard the ship'**
  String get event_religiousAwakening_choice1;

  /// No description provided for @event_religiousAwakening_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Religious gatherings are restricted to private quarters. The movement goes underground, breeding resentment, but scientific rationalism remains the official doctrine.'**
  String get event_religiousAwakening_outcome1;

  /// No description provided for @event_religiousAwakening_choice2.
  ///
  /// In en, this message translates to:
  /// **'Allow worship but regulate its influence'**
  String get event_religiousAwakening_choice2;

  /// No description provided for @event_religiousAwakening_outcome2.
  ///
  /// In en, this message translates to:
  /// **'The faith is permitted but kept separate from governance. A chaplain is appointed to liaise with command. An uneasy balance is maintained.'**
  String get event_religiousAwakening_outcome2;

  /// No description provided for @event_corporateTakeover_title.
  ///
  /// In en, this message translates to:
  /// **'Corporate Takeover'**
  String get event_corporateTakeover_title;

  /// No description provided for @event_corporateTakeover_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s resource managers have been quietly consolidating control over food distribution, water recycling, and power allocation. They now propose formalizing their authority into a corporate structure that would manage the future colony\'s economy.'**
  String get event_corporateTakeover_narrative;

  /// No description provided for @event_corporateTakeover_choice0.
  ///
  /// In en, this message translates to:
  /// **'Allow free market principles to govern resources'**
  String get event_corporateTakeover_choice0;

  /// No description provided for @event_corporateTakeover_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The corporate faction takes over resource management. Efficiency improves dramatically, but prices rise and the poorest colonists struggle to afford basic necessities.'**
  String get event_corporateTakeover_outcome0;

  /// No description provided for @event_corporateTakeover_choice1.
  ///
  /// In en, this message translates to:
  /// **'Nationalize all resources under collective ownership'**
  String get event_corporateTakeover_choice1;

  /// No description provided for @event_corporateTakeover_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Resources are seized and placed under communal control. The corporate faction is dismantled, but innovation stalls without profit incentives.'**
  String get event_corporateTakeover_outcome1;

  /// No description provided for @event_corporateTakeover_choice2.
  ///
  /// In en, this message translates to:
  /// **'Implement regulated markets with safety nets'**
  String get event_corporateTakeover_choice2;

  /// No description provided for @event_corporateTakeover_outcome2.
  ///
  /// In en, this message translates to:
  /// **'A mixed economy is established with price controls and welfare programs. Neither faction is fully satisfied, but basic needs are met while allowing some enterprise.'**
  String get event_corporateTakeover_outcome2;

  /// No description provided for @event_successionCrisis_title.
  ///
  /// In en, this message translates to:
  /// **'Succession Crisis'**
  String get event_successionCrisis_title;

  /// No description provided for @event_successionCrisis_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s captain has died in their sleep, leaving no designated successor. Three factions immediately vie for control: the civilian council demands elections, the security chief claims martial authority, and the elder colonists invoke traditional leadership rites.'**
  String get event_successionCrisis_narrative;

  /// No description provided for @event_successionCrisis_choice0.
  ///
  /// In en, this message translates to:
  /// **'Hold an emergency election'**
  String get event_successionCrisis_choice0;

  /// No description provided for @event_successionCrisis_outcome0.
  ///
  /// In en, this message translates to:
  /// **'A chaotic but spirited election produces a new captain chosen by popular vote. The process is messy, but the colonists feel ownership of their leadership.'**
  String get event_successionCrisis_outcome0;

  /// No description provided for @event_successionCrisis_choice1.
  ///
  /// In en, this message translates to:
  /// **'Let the military assume command'**
  String get event_successionCrisis_choice1;

  /// No description provided for @event_successionCrisis_outcome1.
  ///
  /// In en, this message translates to:
  /// **'The security chief steps into the captain\'s chair. Discipline is restored immediately, but civilian crew eye the armed guards with growing unease.'**
  String get event_successionCrisis_outcome1;

  /// No description provided for @event_successionCrisis_choice2.
  ///
  /// In en, this message translates to:
  /// **'Convene a council of elders'**
  String get event_successionCrisis_choice2;

  /// No description provided for @event_successionCrisis_outcome2.
  ///
  /// In en, this message translates to:
  /// **'The eldest and most experienced colonists form a governing council. Their wisdom guides the ship, though some younger crew feel marginalized by the gerontocracy.'**
  String get event_successionCrisis_outcome2;

  /// No description provided for @event_nativeSovereignty_title.
  ///
  /// In en, this message translates to:
  /// **'Native Sovereignty'**
  String get event_nativeSovereignty_title;

  /// No description provided for @event_nativeSovereignty_narrative.
  ///
  /// In en, this message translates to:
  /// **'Long-range scans confirm intelligent life on the target planet. Intercepted communications reveal a sophisticated civilization that has detected your approach. They transmit a formal demand: recognize their territorial sovereignty or face resistance upon arrival.'**
  String get event_nativeSovereignty_narrative;

  /// No description provided for @event_nativeSovereignty_choice0.
  ///
  /// In en, this message translates to:
  /// **'Recognize native sovereignty and request permission to settle'**
  String get event_nativeSovereignty_choice0;

  /// No description provided for @event_nativeSovereignty_outcome0.
  ///
  /// In en, this message translates to:
  /// **'You transmit a formal recognition of native rights. The response is cautious but positive. Future relations will begin on a foundation of mutual respect, though landing sites may be limited.'**
  String get event_nativeSovereignty_outcome0;

  /// No description provided for @event_nativeSovereignty_choice1.
  ///
  /// In en, this message translates to:
  /// **'Assert colonial supremacy and prepare for resistance'**
  String get event_nativeSovereignty_choice1;

  /// No description provided for @event_nativeSovereignty_outcome1.
  ///
  /// In en, this message translates to:
  /// **'You broadcast your intention to settle regardless. The crew begins weapons drills and fortification planning. The natives go silent, which is somehow more terrifying than threats.'**
  String get event_nativeSovereignty_outcome1;

  /// No description provided for @event_nativeSovereignty_choice2.
  ///
  /// In en, this message translates to:
  /// **'Propose shared governance of the planet'**
  String get event_nativeSovereignty_choice2;

  /// No description provided for @event_nativeSovereignty_outcome2.
  ///
  /// In en, this message translates to:
  /// **'You offer a framework for coexistence and resource sharing. The natives are intrigued but wary. Negotiations will be complex, but the possibility of peace exists.'**
  String get event_nativeSovereignty_outcome2;

  /// No description provided for @event_laborStrike_title.
  ///
  /// In en, this message translates to:
  /// **'Labor Strike'**
  String get event_laborStrike_title;

  /// No description provided for @event_laborStrike_narrative.
  ///
  /// In en, this message translates to:
  /// **'The engineering crew has walked off the job, demanding shorter shifts, better food rations, and a voice in navigation decisions. Critical systems are running on automated backups, but they won\'t last long. The rest of the colonists watch nervously.'**
  String get event_laborStrike_narrative;

  /// No description provided for @event_laborStrike_choice0.
  ///
  /// In en, this message translates to:
  /// **'Meet the workers\' demands in full'**
  String get event_laborStrike_choice0;

  /// No description provided for @event_laborStrike_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The strike ends immediately. Workers return to their posts with improved conditions. Productivity drops slightly as shorter shifts take effect, but loyalty is unshakeable.'**
  String get event_laborStrike_outcome0;

  /// No description provided for @event_laborStrike_choice1.
  ///
  /// In en, this message translates to:
  /// **'Suppress the strike and enforce mandatory labor'**
  String get event_laborStrike_choice1;

  /// No description provided for @event_laborStrike_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Security forces escort the workers back to their stations at gunpoint. The engines hum again, but hatred simmers in the lower decks. Several workers are confined to quarters.'**
  String get event_laborStrike_outcome1;

  /// No description provided for @event_laborStrike_choice2.
  ///
  /// In en, this message translates to:
  /// **'Offer a partial compromise on key demands'**
  String get event_laborStrike_choice2;

  /// No description provided for @event_laborStrike_outcome2.
  ///
  /// In en, this message translates to:
  /// **'After marathon negotiations, a deal is struck: better rations and advisory input, but no reduction in shift length. Neither side is thrilled, but the engines keep running.'**
  String get event_laborStrike_outcome2;

  /// No description provided for @event_censorshipDebate_title.
  ///
  /// In en, this message translates to:
  /// **'Censorship Debate'**
  String get event_censorshipDebate_title;

  /// No description provided for @event_censorshipDebate_narrative.
  ///
  /// In en, this message translates to:
  /// **'A leaked document reveals the true condition of the ship\'s failing systems. Panic spreads through the lower decks. The communications officer proposes restricting information access to prevent further unrest. Civil liberties advocates are outraged.'**
  String get event_censorshipDebate_narrative;

  /// No description provided for @event_censorshipDebate_choice0.
  ///
  /// In en, this message translates to:
  /// **'Guarantee free access to all information'**
  String get event_censorshipDebate_choice0;

  /// No description provided for @event_censorshipDebate_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Full transparency is established. The initial panic subsides as colonists rally to help fix the problems they now understand. Trust in leadership grows, though some information causes distress.'**
  String get event_censorshipDebate_outcome0;

  /// No description provided for @event_censorshipDebate_choice1.
  ///
  /// In en, this message translates to:
  /// **'Implement full information control'**
  String get event_censorshipDebate_choice1;

  /// No description provided for @event_censorshipDebate_outcome1.
  ///
  /// In en, this message translates to:
  /// **'All communications are now filtered through command. The panic stops, replaced by an eerie calm. But rumors fill the void left by censored truth, and they are often worse than reality.'**
  String get event_censorshipDebate_outcome1;

  /// No description provided for @event_censorshipDebate_choice2.
  ///
  /// In en, this message translates to:
  /// **'Filter only security-sensitive information'**
  String get event_censorshipDebate_choice2;

  /// No description provided for @event_censorshipDebate_outcome2.
  ///
  /// In en, this message translates to:
  /// **'A classification system is established. Most information flows freely, but military and critical system data requires clearance. A workable middle ground that mostly satisfies.'**
  String get event_censorshipDebate_outcome2;

  /// No description provided for @event_colonialCharter_title.
  ///
  /// In en, this message translates to:
  /// **'Colonial Charter'**
  String get event_colonialCharter_title;

  /// No description provided for @event_colonialCharter_narrative.
  ///
  /// In en, this message translates to:
  /// **'With planetfall approaching, the colonists must draft fundamental laws for their new society. Three philosophical camps have emerged, each championing a different vision for what the colony should become. The debate is heated and deeply personal.'**
  String get event_colonialCharter_narrative;

  /// No description provided for @event_colonialCharter_choice0.
  ///
  /// In en, this message translates to:
  /// **'A progressive charter emphasizing individual rights'**
  String get event_colonialCharter_choice0;

  /// No description provided for @event_colonialCharter_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The charter enshrines personal freedoms, equality, and social mobility. Artists and thinkers celebrate; traditionalists warn that unchecked freedom leads to chaos.'**
  String get event_colonialCharter_outcome0;

  /// No description provided for @event_colonialCharter_choice1.
  ///
  /// In en, this message translates to:
  /// **'A conservative charter preserving Earth\'s traditions'**
  String get event_colonialCharter_choice1;

  /// No description provided for @event_colonialCharter_outcome1.
  ///
  /// In en, this message translates to:
  /// **'The charter codifies traditional values, family structures, and religious observance. Many find comfort in familiar customs; others feel stifled by the weight of old-world thinking.'**
  String get event_colonialCharter_outcome1;

  /// No description provided for @event_colonialCharter_choice2.
  ///
  /// In en, this message translates to:
  /// **'A pragmatic charter focused on survival and growth'**
  String get event_colonialCharter_choice2;

  /// No description provided for @event_colonialCharter_outcome2.
  ///
  /// In en, this message translates to:
  /// **'The charter prioritizes resource management, technical education, and economic development. It lacks poetry but ensures the colony will be efficient and well-organized.'**
  String get event_colonialCharter_outcome2;

  /// No description provided for @event_separatistMovement_title.
  ///
  /// In en, this message translates to:
  /// **'Separatist Movement'**
  String get event_separatistMovement_title;

  /// No description provided for @event_separatistMovement_narrative.
  ///
  /// In en, this message translates to:
  /// **'A faction of colonists has declared independence from ship governance. They\'ve barricaded themselves in the aft section, demanding the right to establish their own settlement upon landing. They control 15% of the ship\'s food reserves and a backup navigation array.'**
  String get event_separatistMovement_narrative;

  /// No description provided for @event_separatistMovement_choice0.
  ///
  /// In en, this message translates to:
  /// **'Grant regional autonomy within a federal framework'**
  String get event_separatistMovement_choice0;

  /// No description provided for @event_separatistMovement_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The separatists accept a deal: their own district with local governance, under a loose federal umbrella. The precedent of fragmentation worries some, but peace is maintained.'**
  String get event_separatistMovement_outcome0;

  /// No description provided for @event_separatistMovement_choice1.
  ///
  /// In en, this message translates to:
  /// **'Storm the barricades and force reunification'**
  String get event_separatistMovement_choice1;

  /// No description provided for @event_separatistMovement_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Security teams breach the aft section. The separatists resist fiercely. Order is restored, but at terrible cost. The ship is united in body, if not in spirit.'**
  String get event_separatistMovement_outcome1;

  /// No description provided for @event_separatistMovement_choice2.
  ///
  /// In en, this message translates to:
  /// **'Address the root grievances driving the movement'**
  String get event_separatistMovement_choice2;

  /// No description provided for @event_separatistMovement_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Mediators work to understand what pushed the faction away. Reforms in resource distribution and representation slowly bring the separatists back into the fold. Healing takes time.'**
  String get event_separatistMovement_outcome2;

  /// No description provided for @event_warCouncil_title.
  ///
  /// In en, this message translates to:
  /// **'War Council'**
  String get event_warCouncil_title;

  /// No description provided for @event_warCouncil_narrative.
  ///
  /// In en, this message translates to:
  /// **'With potential threats detected in nearby systems, the ship\'s leadership convenes a war council. The question: how much of the colony\'s limited resources should be devoted to military preparedness versus civilian infrastructure?'**
  String get event_warCouncil_narrative;

  /// No description provided for @event_warCouncil_choice0.
  ///
  /// In en, this message translates to:
  /// **'Full armament: forge weapons and train soldiers'**
  String get event_warCouncil_choice0;

  /// No description provided for @event_warCouncil_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Workshops are retooled for weapons production. Every able-bodied colonist receives combat training. The ship bristles with arms, but the budget for farming equipment shrinks.'**
  String get event_warCouncil_outcome0;

  /// No description provided for @event_warCouncil_choice1.
  ///
  /// In en, this message translates to:
  /// **'Disarmament: melt weapons into tools'**
  String get event_warCouncil_choice1;

  /// No description provided for @event_warCouncil_outcome1.
  ///
  /// In en, this message translates to:
  /// **'The armory is emptied and its contents recycled into construction materials. The colony will build with plowshares, not swords. Pacifists rejoice; realists worry about what lurks in the dark.'**
  String get event_warCouncil_outcome1;

  /// No description provided for @event_warCouncil_choice2.
  ///
  /// In en, this message translates to:
  /// **'Defensive posture only: shields and walls, not swords'**
  String get event_warCouncil_choice2;

  /// No description provided for @event_warCouncil_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Resources go to fortifications, shields, and early warning systems. No offensive weapons are produced. A balanced approach that keeps options open without provoking potential neighbors.'**
  String get event_warCouncil_outcome2;

  /// No description provided for @event_tradeFederation_title.
  ///
  /// In en, this message translates to:
  /// **'Trade Federation'**
  String get event_tradeFederation_title;

  /// No description provided for @event_tradeFederation_narrative.
  ///
  /// In en, this message translates to:
  /// **'As the colony approaches viability, factions debate how to structure its economy. The question goes beyond mere survival — it will define the kind of society that takes root on alien soil. Merchants, communalists, and bureaucrats all make their case.'**
  String get event_tradeFederation_narrative;

  /// No description provided for @event_tradeFederation_choice0.
  ///
  /// In en, this message translates to:
  /// **'Establish free trade zones with minimal regulation'**
  String get event_tradeFederation_choice0;

  /// No description provided for @event_tradeFederation_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Markets spring up in every habitat module. Innovation flourishes as traders compete. Wealth inequality grows, but so does the total pool of resources available to the colony.'**
  String get event_tradeFederation_outcome0;

  /// No description provided for @event_tradeFederation_choice1.
  ///
  /// In en, this message translates to:
  /// **'Implement communal sharing of all resources'**
  String get event_tradeFederation_choice1;

  /// No description provided for @event_tradeFederation_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Private property is abolished. Everything belongs to everyone. No one goes hungry, but no one has incentive to produce more than the minimum. Mediocrity is comfortable.'**
  String get event_tradeFederation_outcome1;

  /// No description provided for @event_tradeFederation_choice2.
  ///
  /// In en, this message translates to:
  /// **'Create a state-managed trade system'**
  String get event_tradeFederation_choice2;

  /// No description provided for @event_tradeFederation_outcome2.
  ///
  /// In en, this message translates to:
  /// **'The government controls all trade, setting prices and allocating resources. The system is fair but inflexible. Black markets emerge in the maintenance corridors.'**
  String get event_tradeFederation_outcome2;

  /// No description provided for @event_faithVsScience_title.
  ///
  /// In en, this message translates to:
  /// **'Faith vs. Science'**
  String get event_faithVsScience_title;

  /// No description provided for @event_faithVsScience_narrative.
  ///
  /// In en, this message translates to:
  /// **'The ship\'s telescope has captured images of a cosmic phenomenon that directly contradicts the central tenet of the dominant faith movement. The head scientist wants to publish the findings; the religious leader insists they will tear the community apart.'**
  String get event_faithVsScience_narrative;

  /// No description provided for @event_faithVsScience_choice0.
  ///
  /// In en, this message translates to:
  /// **'Publish the scientific findings in full'**
  String get event_faithVsScience_choice0;

  /// No description provided for @event_faithVsScience_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Truth prevails over comfort. The data is released and the religious movement fractures. Some believers adapt their faith; others lose it entirely. Knowledge advances.'**
  String get event_faithVsScience_outcome0;

  /// No description provided for @event_faithVsScience_choice1.
  ///
  /// In en, this message translates to:
  /// **'Suppress the findings to preserve social harmony'**
  String get event_faithVsScience_choice1;

  /// No description provided for @event_faithVsScience_outcome1.
  ///
  /// In en, this message translates to:
  /// **'The data is classified. The religious community remains stable, but the science team is demoralized. Truth deferred is not truth denied, but it feels like it.'**
  String get event_faithVsScience_outcome1;

  /// No description provided for @event_faithVsScience_choice2.
  ///
  /// In en, this message translates to:
  /// **'Convene a joint panel to find harmony between both views'**
  String get event_faithVsScience_choice2;

  /// No description provided for @event_faithVsScience_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Scientists and theologians work together to reinterpret the findings. A new synthesis emerges that expands both understanding and faith. Not everyone is convinced, but the dialogue is healthy.'**
  String get event_faithVsScience_outcome2;

  /// No description provided for @event_surveillanceState_title.
  ///
  /// In en, this message translates to:
  /// **'Surveillance State'**
  String get event_surveillanceState_title;

  /// No description provided for @event_surveillanceState_narrative.
  ///
  /// In en, this message translates to:
  /// **'After a series of sabotage incidents, the security chief proposes installing monitoring systems in every compartment of the ship. Cameras, microphones, and biometric scanners would track every colonist\'s movements. Privacy advocates are horrified.'**
  String get event_surveillanceState_narrative;

  /// No description provided for @event_surveillanceState_choice0.
  ///
  /// In en, this message translates to:
  /// **'Reject the surveillance proposal entirely'**
  String get event_surveillanceState_choice0;

  /// No description provided for @event_surveillanceState_outcome0.
  ///
  /// In en, this message translates to:
  /// **'Privacy is preserved. The saboteur remains at large, but the colonists sleep easier knowing they aren\'t watched. Investigation continues through traditional means.'**
  String get event_surveillanceState_outcome0;

  /// No description provided for @event_surveillanceState_choice1.
  ///
  /// In en, this message translates to:
  /// **'Implement full surveillance across the ship'**
  String get event_surveillanceState_choice1;

  /// No description provided for @event_surveillanceState_outcome1.
  ///
  /// In en, this message translates to:
  /// **'Every corner of the ship is monitored. The saboteur is caught within days. But the cameras remain, and the security chief shows no interest in turning them off. Ever.'**
  String get event_surveillanceState_outcome1;

  /// No description provided for @event_surveillanceState_choice2.
  ///
  /// In en, this message translates to:
  /// **'Install limited monitoring in critical areas only'**
  String get event_surveillanceState_choice2;

  /// No description provided for @event_surveillanceState_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Cameras cover the engine room, armory, and bridge. Living quarters remain private. The saboteur is eventually identified through pattern analysis. A measured response.'**
  String get event_surveillanceState_outcome2;

  /// No description provided for @event_nativeAlliance_title.
  ///
  /// In en, this message translates to:
  /// **'Native Alliance'**
  String get event_nativeAlliance_title;

  /// No description provided for @event_nativeAlliance_narrative.
  ///
  /// In en, this message translates to:
  /// **'The native civilization has proposed a formal treaty. Their ambassador arrives via shuttle, an elegant being who speaks through a translator device of astonishing sophistication. They offer three forms of relationship, each with different implications for the colony\'s future.'**
  String get event_nativeAlliance_narrative;

  /// No description provided for @event_nativeAlliance_choice0.
  ///
  /// In en, this message translates to:
  /// **'Sign an equal alliance treaty'**
  String get event_nativeAlliance_choice0;

  /// No description provided for @event_nativeAlliance_outcome0.
  ///
  /// In en, this message translates to:
  /// **'The treaty establishes mutual defense, shared research, and equal territorial rights. Both civilizations will grow together. The natives share agricultural knowledge that transforms your colony prospects.'**
  String get event_nativeAlliance_outcome0;

  /// No description provided for @event_nativeAlliance_choice1.
  ///
  /// In en, this message translates to:
  /// **'Negotiate from a position of colonial dominance'**
  String get event_nativeAlliance_choice1;

  /// No description provided for @event_nativeAlliance_outcome1.
  ///
  /// In en, this message translates to:
  /// **'You leverage your advanced technology to secure favorable terms. The natives cede territory and resources. They sign with trembling hands. History has seen this before, and it rarely ends well.'**
  String get event_nativeAlliance_outcome1;

  /// No description provided for @event_nativeAlliance_choice2.
  ///
  /// In en, this message translates to:
  /// **'Establish a trade partnership focused on mutual benefit'**
  String get event_nativeAlliance_choice2;

  /// No description provided for @event_nativeAlliance_outcome2.
  ///
  /// In en, this message translates to:
  /// **'Commerce bridges the gap between species. Native materials flow to your workshops; your technology improves their medicine. Friendship grows from mutual profit.'**
  String get event_nativeAlliance_outcome2;

  /// No description provided for @streakNotificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Stellar Broadcast'**
  String get streakNotificationTitle;

  /// No description provided for @streakNotificationBodyStart.
  ///
  /// In en, this message translates to:
  /// **'Land on a planet today to start a streak.'**
  String get streakNotificationBodyStart;

  /// No description provided for @streakNotificationBodyKeep.
  ///
  /// In en, this message translates to:
  /// **'Day {count} streak — land on a planet today to keep it going.'**
  String streakNotificationBodyKeep(int count);

  /// No description provided for @ui_settings_streak.
  ///
  /// In en, this message translates to:
  /// **'STREAK'**
  String get ui_settings_streak;

  /// No description provided for @ui_settings_streak_reminder.
  ///
  /// In en, this message translates to:
  /// **'Daily reminder'**
  String get ui_settings_streak_reminder;

  /// No description provided for @ui_settings_streak_reminder_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Notifies you at 7 PM if you haven\'t landed yet today'**
  String get ui_settings_streak_reminder_subtitle;

  /// No description provided for @ui_settings_streak_perm_needed.
  ///
  /// In en, this message translates to:
  /// **'Notifications disabled in system settings — tap to fix'**
  String get ui_settings_streak_perm_needed;

  /// No description provided for @ui_settings_streak_active.
  ///
  /// In en, this message translates to:
  /// **'Day {count} — +{percent}% hull next voyage'**
  String ui_settings_streak_active(int count, int percent);

  /// No description provided for @ui_settings_streak_inactive.
  ///
  /// In en, this message translates to:
  /// **'No active streak — land on a planet today to start one!'**
  String get ui_settings_streak_inactive;

  /// No description provided for @ui_settings_streak_helper.
  ///
  /// In en, this message translates to:
  /// **'Land on a planet daily to grow your streak. +1% hull per consecutive day, max +5%.'**
  String get ui_settings_streak_helper;

  /// No description provided for @ui_dialog_ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ui_dialog_ok;

  /// No description provided for @ui_streak_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Daily Streak'**
  String get ui_streak_dialog_title;

  /// No description provided for @ui_streak_dialog_body_inactive.
  ///
  /// In en, this message translates to:
  /// **'Land on a planet today to start a streak. Each consecutive day adds +1% hull on your next voyage, up to +5% on Day 6.'**
  String get ui_streak_dialog_body_inactive;

  /// No description provided for @ui_streak_dialog_body.
  ///
  /// In en, this message translates to:
  /// **'Day {count} streak — +{percent}% hull on your next voyage. Land tomorrow to grow it (max +5%).'**
  String ui_streak_dialog_body(int count, int percent);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'ms',
    'nl',
    'pl',
    'pt',
    'ru',
    'th',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
