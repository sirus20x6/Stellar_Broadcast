import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
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
import 'services/bug_report_service.dart';
import 'services/planet_name_service_loader.dart';
import 'services/sfx_service.dart';
import 'utils/constants.dart';
import 'utils/platform_config.dart';

/// Set once Firebase + Crashlytics have completed init. Used by the
/// zone error handler to avoid calling into an uninitialized Crashlytics
/// instance (which itself throws) if an error fires early in bootstrap.
bool _crashlyticsReady = false;

Future<void> main() async {
  // Wrap the entire app in a guarded zone so unhandled async errors
  // are forwarded to Crashlytics instead of crashing silently.
  runZonedGuarded<Future<void>>(_bootstrap, (error, stack) {
    QaLogger.app.severe('Uncaught zone error', error, stack);
    // Guard the Crashlytics call: if the error happens before init
    // completes, recording it would throw and drop the original error.
    if (_crashlyticsReady) {
      try {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      } catch (_) {
        // Crashlytics itself failed — we've already logged via QaLogger.
      }
    }
  });
}

Future<void> _bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Attach the in-memory log buffer listener before any other init so every
  // subsequent QaLogger record is captured and available to bug reports.
  BugReportService.attachLogListener();

  // Initialize Firebase + Crashlytics first so every subsequent step
  // (including the desktop window, which can raise framework errors)
  // is covered by Crashlytics routing.
  if (PlatformConfig.supportsFirebase) {
    try {
      await Firebase.initializeApp();
      // Route Flutter framework errors (build failures, assertion errors)
      // to Crashlytics.
      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      };
      // Route errors from the Dart platform dispatcher (isolate errors,
      // bindings-level async failures) to Crashlytics. Returning true tells
      // the engine the error has been handled so it doesn't crash.
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
      // Debug builds generate a lot of noise; let the developer decide.
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
        !kDebugMode,
      );
      _crashlyticsReady = true;
      // Performance Monitoring: auto-captures app-start trace and slow/frozen
      // frame rates per screen, bucketed by device in the Firebase console.
      // Off in debug to avoid noisy data from development builds.
      await FirebasePerformance.instance.setPerformanceCollectionEnabled(
        !kDebugMode,
      );
    } catch (e, st) {
      QaLogger.app.warning('Firebase/Crashlytics init failed', e, st);
    }
  }

  if (PlatformConfig.isDesktop) {
    await windowManager.ensureInitialized();
    await windowManager.setTitle('Stellar Broadcast');
    await windowManager.setMinimumSize(const Size(400, 700));
    await windowManager.setSize(const Size(500, 900));
  }

  // Phase 1: Parallel init of independent services (Firebase already done
  // above so it stays sequenced before Crashlytics setup).
  await Future.wait([
    StorageService.initialize().catchError((e, st) {
      QaLogger.app.warning('Storage init failed', e, st);
    }),
    if (!kIsWeb) ...[
      AudioSettings.initialize().catchError((e, st) {
        QaLogger.app.warning('Audio init failed', e, st);
      }),
      FlameAudio.bgm.initialize().catchError((e, st) {
        QaLogger.app.warning('BGM init failed', e, st);
      }),
      GameSfx().initialize().catchError((e, st) {
        QaLogger.app.warning('SFX init failed', e, st);
      }),
    ],
  ]);

  // Phase 2: IAP must complete before ads so premium status is known.
  // A 5s timeout prevents a stuck Play Store / IAP service from hanging
  // the entire bootstrap (and therefore the ads init that follows).
  var iapInitialized = false;
  if (PlatformConfig.supportsIap) {
    try {
      await QaIapService()
          .initialize(productIds: {'premium_lifetime'})
          .timeout(const Duration(seconds: 5));
      iapInitialized = true;
    } on TimeoutException catch (e, st) {
      QaLogger.app.warning('IAP init timed out after 5s', e, st);
    } catch (e, st) {
      QaLogger.app.warning('IAP init failed', e, st);
    }
  }

  // Set premium flag before ad init so ads never load for premium users.
  // If IAP init didn't complete, default to non-premium (safer than
  // reading an uninitialized service and assuming premium).
  QaAdConfig.isPremium = iapInitialized && QaIapService().isPremium;
  // Single premium listener: keep the ad config in sync AND log purchases
  // for analytics. Previously there were two separate listener registrations
  // which stacked up on hot-restart.
  QaIapService().addPremiumListener((isPremium) {
    QaAdConfig.isPremium = isPremium;
    if (isPremium) {
      AnalyticsService().logEvent(name: QaEvents.premiumPurchased);
    }
  });

  // Desktop, web, Amazon, and Huawei builds run as premium-only (no ad SDK).
  if (PlatformConfig.forcePremium) {
    QaAdConfig.isPremium = true;
  }

  // Debug builds always show ads so the dev's premium grant doesn't hide
  // the ad surface during QA. kDebugMode is the single toggle — release
  // builds always respect premium.
  if (kDebugMode) {
    QaAdConfig.isPremium = false;
    QaIapService().setPremium(false);
  }

  // Phase 3: Ads init (depends on premium status from phase 2).
  if (PlatformConfig.supportsAds) {
    try {
      final adTelemetry = QaAdTelemetry(
        logEvent: (name, params) =>
            AnalyticsService().logEvent(name: name, parameters: params),
        setUserProperty: (name, value) =>
            AnalyticsService().setUserProperty(name: name, value: value),
      );
      await QaAdConfig.initialize(
        adUnitIds: kDebugMode
            ? const QaAdUnitIds(
                admobBannerAndroid: AppConstants.testBannerAndroid,
                admobInterstitialAndroid: AppConstants.testInterstitialAndroid,
                admobNativeAndroid: AppConstants.testNativeAndroid,
              )
            : const QaAdUnitIds(
                admobBannerAndroid: AppConstants.prodBannerAndroid,
                admobInterstitialAndroid: AppConstants.prodInterstitialAndroid,
                admobNativeAndroid: AppConstants.prodNativeAndroid,
              ),
        telemetry: adTelemetry,
        // VM/emulator test devices. Device hashes are VM-specific so
        // shipping them in release is safe — they won't collide with
        // real user devices. Mediation partners (Meta, Unity) respect
        // these hashes and serve test fills.
        testDeviceIds: const [
          '3B995515E46FEB5FB2E00A573E0F6ECA', // Waydroid
        ],
      );
    } catch (e, st) {
      QaLogger.app.warning('Ad config init failed', e, st);
    }
  }

  // Phase 4: Non-blocking analytics (fire and forget).
  EngagementTracker.recordActive().catchError((e, st) {
    QaLogger.app.warning('EngagementTracker failed', e, st);
  });
  AnalyticsService().logEvent(name: QaEvents.appOpened).catchError((e, st) {
    QaLogger.app.warning('Analytics appOpened failed', e, st);
  });
  AnalyticsService()
      .setUserProperty(
        name: 'premium_status',
        value: QaIapService().isPremium ? 'premium' : 'free',
      )
      .catchError((e, st) {
        QaLogger.app.warning('setUserProperty(premium_status) failed', e, st);
      });
  if (!kIsWeb) {
    AnalyticsService()
        .setUserProperty(name: 'language', value: Platform.localeName)
        .catchError((e, st) {
          QaLogger.app.warning('setUserProperty(language) failed', e, st);
        });
  }
  PackageInfo.fromPlatform().then((info) {
    AnalyticsService()
        .setUserProperty(name: 'app_version', value: info.version)
        .catchError((e, st) {
          QaLogger.app.warning('setUserProperty(app_version) failed', e, st);
        });
  });

  // (The premium purchase analytics event is already fired from the
  // combined premium listener registered earlier in bootstrap.)

  // Planet name ML model loads in background — procedural fallback until ready.
  final nameService = PlanetNameService();
  nameService.init().catchError((e, st) {
    QaLogger.app.warning('PlanetNameService init failed', e, st);
  });

  runApp(
    ProviderScope(
      overrides: [planetNameServiceProvider.overrideWithValue(nameService)],
      child: const StellarBroadcastApp(),
    ),
  );
}
