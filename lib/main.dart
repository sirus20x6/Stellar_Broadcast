import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import 'providers/game_providers.dart';
import 'services/planet_name_service_loader.dart';
import 'services/sfx_service.dart';
import 'utils/constants.dart';
import 'utils/platform_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (PlatformConfig.isDesktop) {
    await windowManager.ensureInitialized();
    await windowManager.setTitle('Stellar Broadcast');
    await windowManager.setMinimumSize(const Size(400, 700));
    await windowManager.setSize(const Size(500, 900));
  }

  // Phase 1: Parallel init of independent services.
  await Future.wait([
    if (PlatformConfig.supportsFirebase)
      Firebase.initializeApp()
          .then<void>((_) {})
          .catchError((e, st) { QaLogger.app.warning('Firebase init failed', e, st); }),
    StorageService.initialize()
        .catchError((e, st) { QaLogger.app.warning('Storage init failed', e, st); }),
    if (!kIsWeb) ...[
      AudioSettings.initialize()
          .catchError((e, st) { QaLogger.app.warning('Audio init failed', e, st); }),
      FlameAudio.bgm.initialize()
          .catchError((e, st) { QaLogger.app.warning('BGM init failed', e, st); }),
      GameSfx().initialize()
          .catchError((e, st) { QaLogger.app.warning('SFX init failed', e, st); }),
    ],
  ]);

  // Phase 2: IAP must complete before ads so premium status is known.
  if (PlatformConfig.supportsIap) {
    try {
      await QaIapService().initialize(productIds: {'premium_lifetime'});
    } catch (e, st) { QaLogger.app.warning('IAP init failed', e, st); }
  }

  // Set premium flag before ad init so ads never load for premium users.
  QaAdConfig.isPremium = QaIapService().isPremium;
  QaIapService().addPremiumListener((v) => QaAdConfig.isPremium = v);

  // Desktop, web, Amazon, and Huawei builds run as premium-only (no ad SDK).
  if (PlatformConfig.forcePremium) {
    QaAdConfig.isPremium = true;
  }

  // QA override: --dart-define=FORCE_ADS=true forces ads on regardless of
  // premium status. Usage:
  //   flutter run --dart-define=FORCE_ADS=true
  //   flutter build apk --dart-define=FORCE_ADS=true
  const forceAds = bool.fromEnvironment('FORCE_ADS');
  if (forceAds) {
    QaAdConfig.isPremium = false;
    QaIapService().setPremium(false);
  }

  // Phase 3: Ads init (depends on premium status from phase 2).
  if (PlatformConfig.supportsAds) {
    try {
      final adTelemetry = QaAdTelemetry(
        logEvent: (name, params) => AnalyticsService().logEvent(name: name, parameters: params),
        setUserProperty: (name, value) => AnalyticsService().setUserProperty(name: name, value: value),
      );
      await QaAdConfig.initialize(
        adUnitIds: const QaAdUnitIds(
          admobBannerAndroid: AppConstants.prodBannerAndroid,
          admobInterstitialAndroid: AppConstants.prodInterstitialAndroid,
          admobNativeAndroid: AppConstants.prodNativeAndroid,
        ),
        telemetry: adTelemetry,
      );
    } catch (e, st) { QaLogger.app.warning('Ad config init failed', e, st); }
  }

  // Phase 4: Non-blocking analytics (fire and forget).
  EngagementTracker.recordActive()
      .catchError((e, st) { QaLogger.app.warning('EngagementTracker failed', e, st); });
  AnalyticsService().logEvent(name: QaEvents.appOpened)
      .catchError((e, st) { QaLogger.app.warning('Analytics appOpened failed', e, st); });
  AnalyticsService().setUserProperty(
    name: 'premium_status',
    value: QaIapService().isPremium ? 'premium' : 'free',
  ).catchError((e, st) {});
  if (!kIsWeb) {
    AnalyticsService().setUserProperty(name: 'language', value: Platform.localeName)
        .catchError((e, st) {});
  }
  PackageInfo.fromPlatform().then((info) {
    AnalyticsService().setUserProperty(name: 'app_version', value: info.version)
        .catchError((e, st) {});
  });

  // Track premium purchase when IAP status changes.
  QaIapService().addPremiumListener((isPremium) {
    if (isPremium) {
      AnalyticsService().logEvent(name: QaEvents.premiumPurchased);
    }
  });

  // Planet name ML model loads in background — procedural fallback until ready.
  final nameService = PlanetNameService();
  nameService.init()
      .catchError((e, st) { QaLogger.app.warning('PlanetNameService init failed', e, st); });

  runApp(
    ProviderScope(
      overrides: [
        planetNameServiceProvider.overrideWithValue(nameService),
      ],
      child: const StellarBroadcastApp(),
    ),
  );
}
