import 'package:flutter/foundation.dart';

enum DistributionStore {
  googlePlay,
  amazonAppstore,
  samsungGalaxyStore,
  huaweiAppGallery,
  appleAppStore,
  microsoftStore,
  macAppStore,
  steam,
  epicGames,
  web,
  unknown,
}

class PlatformConfig {
  PlatformConfig._();

  static const _storeValue = String.fromEnvironment('STORE', defaultValue: '');

  static DistributionStore get store {
    if (kIsWeb) return DistributionStore.web;
    switch (_storeValue) {
      case 'amazon':
        return DistributionStore.amazonAppstore;
      case 'samsung':
        return DistributionStore.samsungGalaxyStore;
      case 'huawei':
        return DistributionStore.huaweiAppGallery;
      case 'apple':
        return DistributionStore.appleAppStore;
      case 'microsoft':
        return DistributionStore.microsoftStore;
      case 'mac_app_store':
        return DistributionStore.macAppStore;
      case 'steam':
        return DistributionStore.steam;
      case 'epic':
        return DistributionStore.epicGames;
      default:
        switch (defaultTargetPlatform) {
          case TargetPlatform.android:
            return DistributionStore.googlePlay;
          case TargetPlatform.iOS:
            return DistributionStore.appleAppStore;
          case TargetPlatform.macOS:
            return DistributionStore.macAppStore;
          case TargetPlatform.windows:
            return DistributionStore.microsoftStore;
          case TargetPlatform.linux:
            return DistributionStore.steam;
          default:
            return DistributionStore.unknown;
        }
    }
  }

  /// Ads only work on Android and iOS via AdMob/mediation.
  static bool get supportsAds =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);

  /// In-app purchases work on Android, iOS, and macOS.
  static bool get supportsIap =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.macOS);

  /// Play Games services only work on Android and iOS.
  static bool get supportsPlayGames =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);

  /// Firebase works on Android, iOS, macOS, and web.
  static bool get supportsFirebase =>
      kIsWeb ||
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS;

  /// Desktop platforms (Windows, macOS, Linux).
  static bool get isDesktop =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.windows ||
          defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.linux);

  /// When true, screens skip animations and jump to their final rendered
  /// state. Set by deep links with `&skip=true` for QA screenshot automation.
  static bool skipAnimations = false;

  /// Platforms without ad support must run as premium-only.
  static bool get forcePremium {
    if (isDesktop || kIsWeb) return true;
    if (store == DistributionStore.amazonAppstore) return true;
    if (store == DistributionStore.huaweiAppGallery) return true;
    return false;
  }
}
