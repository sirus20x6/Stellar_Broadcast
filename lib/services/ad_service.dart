import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Wraps Google Mobile Ads SDK for banner, interstitial, and rewarded ads.
///
/// All ad unit IDs default to Google-provided test IDs. Replace with
/// production IDs before publishing (see [AppConstants] for placeholders).
class AdService {
  AdService._();

  // ---------------------------------------------------------------------------
  // Test ad unit IDs
  // ---------------------------------------------------------------------------

  static String get _bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/2934735716';

  static String get _interstitialAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/1033173712'
      : 'ca-app-pub-3940256099942544/4411468910';

  static String get _rewardedAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/5224354917'
      : 'ca-app-pub-3940256099942544/1712485313';

  // ---------------------------------------------------------------------------
  // Loaded ad references
  // ---------------------------------------------------------------------------

  static InterstitialAd? _interstitialAd;
  static RewardedAd? _rewardedAd;

  // ---------------------------------------------------------------------------
  // Initialization
  // ---------------------------------------------------------------------------

  /// Initialize the Mobile Ads SDK. Call once at app startup.
  static Future<void> initialize() async {
    try {
      await MobileAds.instance.initialize();
      debugPrint('AdService: Mobile Ads SDK initialized');
    } catch (e) {
      debugPrint('AdService: Failed to initialize Mobile Ads SDK — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Banner
  // ---------------------------------------------------------------------------

  /// Creates a [BannerAd] sized to adaptive banner width.
  ///
  /// The caller is responsible for loading and disposing the returned ad.
  static BannerAd createBanner({
    AdSize adSize = AdSize.banner,
    void Function(Ad, LoadAdError)? onFailedToLoad,
  }) {
    return BannerAd(
      adUnitId: _bannerAdUnitId,
      size: adSize,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('AdService: Banner ad loaded');
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('AdService: Banner failed to load — $error');
          ad.dispose();
          onFailedToLoad?.call(ad, error);
        },
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Interstitial
  // ---------------------------------------------------------------------------

  /// Pre-loads an interstitial ad so it is ready to show immediately.
  static Future<void> loadInterstitial() async {
    try {
      await InterstitialAd.load(
        adUnitId: _interstitialAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            _interstitialAd = ad;
            debugPrint('AdService: Interstitial ad loaded');
          },
          onAdFailedToLoad: (error) {
            _interstitialAd = null;
            debugPrint('AdService: Interstitial failed to load — $error');
          },
        ),
      );
    } catch (e) {
      debugPrint('AdService: Error loading interstitial — $e');
    }
  }

  /// Shows the pre-loaded interstitial ad if one is available.
  static void showInterstitial() {
    if (_interstitialAd == null) {
      debugPrint('AdService: No interstitial ad ready');
      return;
    }
    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _interstitialAd = null;
        loadInterstitial(); // pre-load the next one
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        debugPrint('AdService: Interstitial failed to show — $error');
        ad.dispose();
        _interstitialAd = null;
      },
    );
    _interstitialAd!.show();
  }

  // ---------------------------------------------------------------------------
  // Rewarded
  // ---------------------------------------------------------------------------

  /// Pre-loads a rewarded ad.
  static Future<void> loadRewarded() async {
    try {
      await RewardedAd.load(
        adUnitId: _rewardedAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            _rewardedAd = ad;
            debugPrint('AdService: Rewarded ad loaded');
          },
          onAdFailedToLoad: (error) {
            _rewardedAd = null;
            debugPrint('AdService: Rewarded ad failed to load — $error');
          },
        ),
      );
    } catch (e) {
      debugPrint('AdService: Error loading rewarded ad — $e');
    }
  }

  /// Shows the pre-loaded rewarded ad and invokes [onReward] when the user
  /// earns the reward.
  static void showRewarded(Function onReward) {
    if (_rewardedAd == null) {
      debugPrint('AdService: No rewarded ad ready');
      return;
    }
    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _rewardedAd = null;
        loadRewarded(); // pre-load the next one
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        debugPrint('AdService: Rewarded ad failed to show — $error');
        ad.dispose();
        _rewardedAd = null;
      },
    );
    _rewardedAd!.show(
      onUserEarnedReward: (ad, reward) {
        debugPrint(
          'AdService: User earned reward — '
          '${reward.amount} ${reward.type}',
        );
        onReward();
      },
    );
  }
}
