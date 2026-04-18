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
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
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

/// Tracks whether the IAP service finished initializing. Hoisted to top-level
/// so the background retry (scheduled on timeout/failure) can short-circuit
/// once a later attempt succeeds. QaIapService does not expose a public
/// `isInitialized` flag, so we track it here.
bool _iapInitialized = false;

/// Whether IAP initialization has completed. Exposed so the lifecycle
/// observer in `app.dart` can opportunistically re-trigger init on
/// `AppLifecycleState.resumed` after network returns.
bool get iapInitialized => _iapInitialized;

/// How many retry attempts have been scheduled so far. Used to back off
/// exponentially up to a maximum.
int _iapRetryAttempts = 0;

/// Maximum number of background retries before we stop. After these, the
/// app still has a lifecycle hook (app.dart resume) that will call
/// [tryReinitializeIap] to cover users returning from a backgrounded state.
const int _kMaxIapRetries = 4;

/// Base delay; each attempt doubles (30s, 60s, 120s, 240s).
const Duration _kIapRetryBaseDelay = Duration(seconds: 30);

/// Schedule a background retry of IAP initialization with exponential
/// backoff. Used when the initial attempt times out or fails — e.g. slow
/// Play Store / cold network. Without retries, a user who paid for
/// premium would keep seeing ads until the next cold start, because the
/// premium listener only fires on state *changes* and the initial state
/// was never loaded.
///
/// Gives up after [_kMaxIapRetries] attempts; beyond that, the lifecycle
/// observer's resume handler is the recovery path.
void _scheduleIapRetry() {
  if (_iapInitialized) return;
  if (_iapRetryAttempts >= _kMaxIapRetries) {
    QaLogger.app.warning(
      'IAP retry giving up after $_iapRetryAttempts attempts — '
      'will retry on next app resume',
    );
    return;
  }
  final attempt = _iapRetryAttempts;
  final delay = _kIapRetryBaseDelay * (1 << attempt); // 30, 60, 120, 240
  _iapRetryAttempts++;
  Future.delayed(delay, () async {
    if (_iapInitialized) return;
    final ok = await _attemptIapInit();
    if (!ok) _scheduleIapRetry();
  });
}

/// Attempt one IAP init. Returns true on success. Safe to call repeatedly.
Future<bool> _attemptIapInit() async {
  if (_iapInitialized) return true;
  try {
    await QaIapService()
        .initialize(productIds: {'premium_lifetime'})
        .timeout(const Duration(seconds: 15));
    _iapInitialized = true;
    // Reconcile ad config with the now-known premium state. The listener
    // registered earlier will also fire on any transition, but this
    // handles the case where the cached premium flag was already true
    // before the listener was attached (addPremiumListener doesn't
    // deliver the current value).
    if (!kDebugMode || PlatformConfig.forcePremium) {
      QaAdConfig.isPremium = QaIapService().isPremium;
    }
    return true;
  } catch (e, st) {
    QaLogger.app.warning('IAP init attempt failed', e, st);
    return false;
  }
}

/// Public entry point for app.dart's lifecycle observer: try IAP init
/// once on app resume if it never completed. Does NOT reschedule a
/// backoff chain — just one best-effort retry per resume.
Future<void> tryReinitializeIap() async {
  if (_iapInitialized) return;
  await _attemptIapInit();
}

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
  //
  // Register the premium listener BEFORE initialize() so any state
  // transition observed during init (e.g. cached premium flag loading,
  // or a late-arriving restore) is reconciled into QaAdConfig. If we
  // register after a failed/timed-out init, the listener would miss
  // any premium state set by a retry before this point.
  // Keep QaAdConfig in sync with premium state. The purchase/restore
  // analytics events are logged inside QaIapService._handlePurchaseUpdate
  // with the correct event name (premiumPurchased vs premiumRestored) —
  // do NOT log here or we'd double-count on real purchases and mis-label
  // cached-premium cold starts as fresh purchases.
  QaIapService().addPremiumListener((isPremium) {
    QaAdConfig.isPremium = isPremium;
  });

  if (PlatformConfig.supportsIap) {
    try {
      // In debug, skip auto-restore. A test purchase on the signed-in
      // Google/Apple ID would otherwise fire a restored event mid-boot
      // and flip premium back on — hiding ads, which is exactly the
      // opposite of what we want while QAing ad layouts.
      await QaIapService()
          .initialize(
            productIds: {'premium_lifetime'},
            autoRestore: !kDebugMode,
          )
          .timeout(const Duration(seconds: 5));
      _iapInitialized = true;
    } on TimeoutException catch (e, st) {
      QaLogger.app.warning('IAP init timed out after 5s', e, st);
      _scheduleIapRetry();
    } catch (e, st) {
      QaLogger.app.warning('IAP init failed', e, st);
      _scheduleIapRetry();
    }
  }

  // Set premium flag before ad init so ads never load for premium users.
  // If IAP init didn't complete, default to non-premium (safer than
  // reading an uninitialized service and assuming premium). A late-
  // arriving retry will flip this via the listener registered above.
  QaAdConfig.isPremium = _iapInitialized && QaIapService().isPremium;

  // Desktop, web, Amazon, and Huawei builds run as premium-only (no ad SDK).
  if (PlatformConfig.forcePremium) {
    QaAdConfig.isPremium = true;
  }

  // Debug builds always show ads so the dev's premium grant doesn't hide
  // the ad surface during QA. kDebugMode is the single toggle — release
  // builds always respect premium.
  if (kDebugMode && !PlatformConfig.forcePremium) {
    QaAdConfig.isPremium = false;
    QaIapService().setPremium(false);
  }

  // iOS: request App Tracking Transparency authorization BEFORE the ad
  // SDK initializes. Apple's review team rejects apps that start the ads
  // SDK (SKAdNetwork post-backs, mediation handshakes, etc.) while the
  // ATT status is still "not determined". The system prompt only shows
  // once per install, so calling this on every launch is safe: subsequent
  // calls are a no-op and return the cached decision.
  if (Platform.isIOS) {
    try {
      await AppTrackingTransparency.requestTrackingAuthorization();
    } catch (e, st) {
      QaLogger.app.warning('ATT request failed', e, st);
    }
  }

  // Prime Google UMP's consent state so the onboarding consent form can
  // render instantly (no cold round-trip) and the ads SDK has a known
  // consent state when it initializes a few lines below. This call does
  // NOT show the UI — it just queries Google whether consent is
  // required for this user's region. The actual form is shown inside
  // QaConsentChoice during onboarding.
  //
  // Firebase Analytics note: we fire appOpened + user-property events
  // in Phase 4 below without a hard consent gate. This is compliant
  // under Apple's rules (Firebase Analytics does not use IDFA and none
  // of the parameters include PII), and for GDPR we rely on UMP being
  // shown during onboarding before any ad request — analytics events
  // here are session identity + language only.
  try {
    await QaConsentManager.updateConsentInfo()
        .timeout(const Duration(seconds: 2));
  } catch (e, st) {
    QaLogger.app.warning('UMP updateConsentInfo failed/timed out', e, st);
  }

  // Phase 3: Ads init (depends on premium status from phase 2 and, on
  // iOS, on ATT having resolved above).
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
                admobBannerIos: AppConstants.testBannerIos,
                admobInterstitialIos: AppConstants.testInterstitialIos,
                admobNativeIos: AppConstants.testNativeIos,
              )
            : const QaAdUnitIds(
                admobBannerAndroid: AppConstants.prodBannerAndroid,
                admobInterstitialAndroid: AppConstants.prodInterstitialAndroid,
                admobNativeAndroid: AppConstants.prodNativeAndroid,
                admobBannerIos: AppConstants.prodBannerIos,
                admobInterstitialIos: AppConstants.prodInterstitialIos,
                admobNativeIos: AppConstants.prodNativeIos,
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
  unawaited(
    PackageInfo.fromPlatform().then((info) {
      AnalyticsService()
          .setUserProperty(name: 'app_version', value: info.version)
          .catchError((e, st) {
        QaLogger.app.warning('setUserProperty(app_version) failed', e, st);
      });
    }).catchError((e, st) {
      QaLogger.app.warning('PackageInfo.fromPlatform failed', e, st);
    }),
  );

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
