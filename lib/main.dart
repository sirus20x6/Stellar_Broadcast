import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

import 'app.dart';
import 'providers/game_providers.dart';
import 'services/planet_name_service_loader.dart';
import 'services/sfx_service.dart';
import 'utils/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp();
  } catch (e, st) { QaLogger.app.warning('Firebase init failed', e, st); }
  try {
    await StorageService.initialize();
  } catch (e, st) { QaLogger.app.warning('Storage init failed', e, st); }
  // IAP must init before ads so premium status is known before ads load.
  try {
    await QaIapService().initialize(productIds: {'premium_lifetime'});
  } catch (e, st) { QaLogger.app.warning('IAP init failed', e, st); }

  // Set premium flag before ad init so ads never load for premium users.
  QaAdConfig.isPremium = QaIapService().isPremium;
  QaIapService().addPremiumListener((v) => QaAdConfig.isPremium = v);

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
  if (!kIsWeb) {
    try {
      await AudioSettings.initialize();
    } catch (e, st) { QaLogger.app.warning('Audio init failed', e, st); }
    try {
      await FlameAudio.bgm.initialize();
    } catch (e, st) { QaLogger.app.warning('BGM init failed', e, st); }
    try {
      await GameSfx().initialize();
    } catch (e, st) { QaLogger.app.warning('SFX init failed', e, st); }
  }
  try {
    await AnalyticsService().logEvent(name: QaEvents.appOpened);
    await AnalyticsService().setUserProperty(
      name: 'premium_status',
      value: QaIapService().isPremium ? 'premium' : 'free',
    );
  } catch (e, st) { QaLogger.app.warning('Analytics appOpened failed', e, st); }

  // Load ML planet name generator (non-fatal if it fails).
  final nameService = PlanetNameService();
  try {
    await nameService.init();
  } catch (e, st) { QaLogger.app.warning('PlanetNameService init failed', e, st); }

  runApp(
    ProviderScope(
      overrides: [
        planetNameServiceProvider.overrideWithValue(nameService),
      ],
      child: const StellarBroadcastApp(),
    ),
  );
}
