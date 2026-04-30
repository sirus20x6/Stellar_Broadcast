import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Thin Firebase Remote Config wiring for the shared ad-layer kill switch.
///
/// The actual policy logic — version gate, global kill switch, throttle
/// caps — lives in [QaAdRemoteConfig] in `quickapps_ads`, so adding a new
/// Firebase-enabled app to the defense stack is just a copy of this file
/// (swap the package-info usage if needed) plus a single
/// `RemoteConfigService.apply()` call in main.dart before `QaAdConfig.initialize`.
///
/// Non-Firebase apps in the monorepo don't need this file at all; they
/// still get the baked-in throttle defaults from `quickapps_ads`.
class RemoteConfigService {
  RemoteConfigService._();

  /// Fetch Remote Config, then feed the values into the shared ad layer.
  /// Never throws — fetch/parse failures fall back to baked-in defaults.
  static Future<void> apply() async {
    try {
      final rc = FirebaseRemoteConfig.instance;
      await rc.setDefaults(QaAdRemoteConfig.defaults);
      await rc.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 8),
          // 1 hour interval — aggressive enough that a kill-switch flip
          // reaches most devices within the hour, conservative enough that
          // we don't hammer the RC backend.
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );
      try {
        await rc.fetchAndActivate();
      } catch (e) {
        QaLogger.app.warning('Remote Config fetch failed, using cache', e);
      }

      final info = await PackageInfo.fromPlatform();
      QaAdRemoteConfig.apply(
        appVersion: info.version,
        adsEnabled: rc.getBool(QaAdRemoteConfig.keyAdsEnabled),
        adsDisabledBelowVersion:
            rc.getString(QaAdRemoteConfig.keyAdsDisabledBelowVersion),
        clicksPerDayCap: rc.getInt(QaAdRemoteConfig.keyClicksPerDayCap),
        clicksPerHourCap: rc.getInt(QaAdRemoteConfig.keyClicksPerHourCap),
      );
    } catch (e, st) {
      QaLogger.app.warning('RemoteConfigService.apply failed', e, st);
    }
  }
}
