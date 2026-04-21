import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Wraps Firebase Remote Config and applies the fetched values to the ad
/// layer at startup. Lets us remotely:
///   - Kill all ads (`ads_enabled` = false) during an incident.
///   - Disable ads on old versions (`ads_disabled_below_version` = "2.3.0").
///   - Retune the click throttle thresholds (`ad_clicks_per_day_cap`, etc.)
/// without shipping a new release.
///
/// Call [apply] once during app startup, after `Firebase.initializeApp` but
/// before `QaAdConfig.initialize`.
class RemoteConfigService {
  RemoteConfigService._();

  static const _kAdsEnabled = 'ads_enabled';
  static const _kDisabledBelowVersion = 'ads_disabled_below_version';
  static const _kClicksPerDay = 'ad_clicks_per_day_cap';
  static const _kClicksPerHour = 'ad_clicks_per_hour_cap';

  /// Fetch Remote Config with a modest timeout, then apply values to
  /// [AdClickThrottle] and [QaAdConfig]. Never throws — if RC fails, we
  /// fall back to whatever the baked-in defaults are.
  static Future<void> apply() async {
    try {
      final rc = FirebaseRemoteConfig.instance;
      await rc.setDefaults(const {
        _kAdsEnabled: true,
        _kDisabledBelowVersion: '0.0.0',
        _kClicksPerDay: 3,
        _kClicksPerHour: 3,
      });
      await rc.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 8),
          // 1 hour interval — aggressive enough that a kill-switch flip
          // reaches most devices within the hour, conservative enough that
          // we don't hammer the RC backend.
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );
      // Don't block startup on the fetch. If the network is slow/offline,
      // cached values (or defaults) are used instead.
      try {
        await rc.fetchAndActivate();
      } catch (e) {
        QaLogger.app.warning('Remote Config fetch failed, using cache', e);
      }

      AdClickThrottle.maxClicksPerDay = rc.getInt(_kClicksPerDay);
      AdClickThrottle.maxClicksPerHour = rc.getInt(_kClicksPerHour);

      final adsEnabled = rc.getBool(_kAdsEnabled);
      final minVersion = rc.getString(_kDisabledBelowVersion);
      final info = await PackageInfo.fromPlatform();
      final belowMin = _versionBelow(info.version, minVersion);

      if (!adsEnabled || belowMin) {
        QaAdConfig.remoteDisabled = true;
        QaLogger.app.info(
          'Remote Config disabled ads: adsEnabled=$adsEnabled, '
          'appVersion=${info.version}, minVersion=$minVersion',
        );
      }
    } catch (e, st) {
      // RC is best-effort. If anything blows up (missing plugin, init
      // failure, parse error), we want ads to keep working on their
      // baked-in defaults — not to crash the app.
      QaLogger.app.warning('RemoteConfigService.apply failed', e, st);
    }
  }

  /// Compare dotted version strings ("2.2.7" vs "2.3.0"). Returns true if
  /// [version] < [minVersion]. Non-numeric suffixes are ignored.
  static bool _versionBelow(String version, String minVersion) {
    int seg(String s) => int.tryParse(s.replaceAll(RegExp(r'\D.*$'), '')) ?? 0;
    final a = version.split('.').map(seg).toList();
    final b = minVersion.split('.').map(seg).toList();
    for (var i = 0; i < b.length; i++) {
      final av = i < a.length ? a[i] : 0;
      final bv = b[i];
      if (av < bv) return true;
      if (av > bv) return false;
    }
    return false;
  }
}
