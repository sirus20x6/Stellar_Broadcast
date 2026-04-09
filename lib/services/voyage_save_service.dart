import 'dart:convert';

import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Persists and restores mid-run voyage state via Hive storage.
class VoyageSaveService {
  static const _key = 'active_voyage';
  static final _settings = SettingsRepository();

  static Future<void> save(VoyageState state) async {
    await _settings.setString(_key, jsonEncode(state.toJson()));
  }

  static Future<VoyageState?> load() async {
    final raw = await _settings.getString(_key);
    if (raw.isEmpty) return null;
    try {
      return VoyageState.fromJson(
        jsonDecode(raw) as Map<String, dynamic>,
      );
    } catch (_) {
      await clear();
      return null;
    }
  }

  static Future<void> clear() async {
    await _settings.remove(_key);
  }

  static Future<bool> hasSave() async {
    final raw = await _settings.getString(_key);
    return raw.isNotEmpty;
  }
}
