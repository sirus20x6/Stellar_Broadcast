/// App-wide constants for Starbound Exodus.
class AppConstants {
  AppConstants._();

  // ---------------------------------------------------------------------------
  // App metadata
  // ---------------------------------------------------------------------------

  static const String appName = 'Starbound Exodus';
  static const String appVersion = '1.0.0';
  static const String packageName = 'com.quickapps.starboundexodus';

  // ---------------------------------------------------------------------------
  // Monetization
  // ---------------------------------------------------------------------------

  static const double premiumMonthlyPrice = 2.99;
  static const double premiumLifetimePrice = 5.99;

  // ---------------------------------------------------------------------------
  // Gameplay
  // ---------------------------------------------------------------------------

  static const int defaultMaxEncounters = 8;
  static const int legacyPointsPerScore = 1;

  // ---------------------------------------------------------------------------
  // Ad unit IDs — Test
  // ---------------------------------------------------------------------------

  static const String testBannerAndroid =
      'ca-app-pub-3940256099942544/6300978111';
  static const String testBannerIos =
      'ca-app-pub-3940256099942544/2934735716';

  static const String testInterstitialAndroid =
      'ca-app-pub-3940256099942544/1033173712';
  static const String testInterstitialIos =
      'ca-app-pub-3940256099942544/4411468910';

  static const String testRewardedAndroid =
      'ca-app-pub-3940256099942544/5224354917';
  static const String testRewardedIos =
      'ca-app-pub-3940256099942544/1712485313';

  // ---------------------------------------------------------------------------
  // Ad unit IDs — Production (replace before publishing)
  // ---------------------------------------------------------------------------

  static const String prodBannerAndroid = 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
  static const String prodBannerIos = 'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';

  static const String prodInterstitialAndroid =
      'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
  static const String prodInterstitialIos =
      'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';

  static const String prodRewardedAndroid =
      'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';
  static const String prodRewardedIos =
      'ca-app-pub-XXXXXXXXXXXXXXXX/XXXXXXXXXX';

  // ---------------------------------------------------------------------------
  // Upgrade costs (Legacy Points)
  // ---------------------------------------------------------------------------

  static const Map<String, int> upgradeCosts = {
    'reinforced_hull': 50,
    'advanced_scanner': 75,
    'warp_nav': 100,
    'cryo_shield': 60,
    'culture_archive': 80,
    'tech_boost': 90,
    'star_charts': 120,
    'emergency_reserve': 40,
  };

  // ---------------------------------------------------------------------------
  // Achievements
  // ---------------------------------------------------------------------------

  static const Map<String, String> achievements = {
    'first_voyage': 'First Voyage — Complete your first voyage',
    'utopia_found': 'Utopia Found — Achieve a Utopia ending',
    'ten_voyages': 'Seasoned Captain — Complete 10 voyages',
    'all_upgrades': 'Fully Equipped — Purchase every upgrade',
    'perfect_systems': 'Peak Performance — Land with all systems above 80%',
    'rock_bottom': 'Against All Odds — Land with all systems below 20%',
    'explorer': 'Deep Space Explorer — Scan 50 planets across all voyages',
    'collector': 'Anomaly Collector — Encounter 10 anomalies',
    'survivor': 'Survivor — Complete a voyage without repairing any system',
    'generous': 'Generous Soul — Choose every altruistic event option in one voyage',
  };
}
