/// App-wide constants for Stellar Broadcast.
class AppConstants {
  AppConstants._();

  // ---------------------------------------------------------------------------
  // App metadata
  // ---------------------------------------------------------------------------

  static const String appName = 'Stellar Broadcast';
  static const String appVersion = '1.0.0';
  static const String packageName = 'com.quickapps.stellar_broadcast';

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
  static const String testBannerIos = 'ca-app-pub-3940256099942544/2934735716';

  static const String testInterstitialAndroid =
      'ca-app-pub-3940256099942544/1033173712';
  static const String testInterstitialIos =
      'ca-app-pub-3940256099942544/4411468910';

  static const String testRewardedAndroid =
      'ca-app-pub-3940256099942544/5224354917';
  static const String testRewardedIos =
      'ca-app-pub-3940256099942544/1712485313';

  static const String testNativeAndroid =
      'ca-app-pub-3940256099942544/2247696110';

  // ---------------------------------------------------------------------------
  // Ad unit IDs — Production
  // ---------------------------------------------------------------------------

  static const String prodBannerAndroid =
      'ca-app-pub-8340454950181235/3749920812';
  static const String prodInterstitialAndroid =
      'ca-app-pub-8340454950181235/7724095898';
  static const String prodNativeAndroid =
      'ca-app-pub-8340454950181235/5313554970';
  // iOS AdMob app ID: ca-app-pub-8340454950181235~6909599878 (see ios/Runner/Info.plist).
  // TODO: create iOS ad units in AdMob console and paste IDs here.
  static const String prodBannerIos = '';
  static const String prodInterstitialIos = '';
  static const String prodNativeIos = '';

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
    'extra_probe': 40,
  };

  // ---------------------------------------------------------------------------
  // Leaderboards (Android = Google Play Games, iOS = Game Center)
  // ---------------------------------------------------------------------------

  static const String kLeaderboardBestScoreAndroid = 'CgkIpeS6hMofEAIQAQ';
  static const String kLeaderboardDailyAndroid = 'CgkIpeS6hMofEAIQAg';
  static const String kLeaderboardEncountersAndroid = 'CgkIpeS6hMofEAIQAw';

  // Configure in App Store Connect > Game Center > Leaderboards
  static const String kLeaderboardBestScoreIos = 'stellar_best_score';
  static const String kLeaderboardDailyIos = 'stellar_daily';
  static const String kLeaderboardEncountersIos = 'stellar_encounters';

  // ---------------------------------------------------------------------------
  // Achievements (Android = Google Play Games, iOS = Game Center)
  // ---------------------------------------------------------------------------

  /// Maps local achievement IDs to Google Play Games achievement IDs.
  static const Map<String, String> achievementIdsAndroid = {
    'first_landing': 'CgkIpeS6hMofEAIQBA',
    'explorer': 'CgkIpeS6hMofEAIQBQ',
    'golden_age': 'CgkIpeS6hMofEAIQBg',
    'perfectionist': 'CgkIpeS6hMofEAIQBw',
    'survivor': 'CgkIpeS6hMofEAIQCA',
    'iron_hull': 'CgkIpeS6hMofEAIQCQ',
    'death_world_survivor': 'CgkIpeS6hMofEAIQCg',
    'full_crew': 'CgkIpeS6hMofEAIQCw',
    'probe_master': 'CgkIpeS6hMofEAIQDA',
    'no_scan': 'CgkIpeS6hMofEAIQDQ',
  };

  // Configure in App Store Connect > Game Center > Achievements
  static const Map<String, String> achievementIdsIos = {
    'first_landing': 'stellar_first_landing',
    'explorer': 'stellar_explorer',
    'golden_age': 'stellar_golden_age',
    'perfectionist': 'stellar_perfectionist',
    'survivor': 'stellar_survivor',
    'iron_hull': 'stellar_iron_hull',
    'death_world_survivor': 'stellar_death_world',
    'full_crew': 'stellar_full_crew',
    'probe_master': 'stellar_probe_master',
    'no_scan': 'stellar_no_scan',
  };
}
