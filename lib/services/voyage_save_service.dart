import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Persists and restores mid-run voyage state via Hive storage.
class VoyageSaveService {
  static const _key = 'active_voyage';
  static final _settings = SettingsRepository();

  static String _encodeJson(Map<String, dynamic> json) => jsonEncode(json);

  static Future<void> save(VoyageState state) async {
    final json = state.toJson();
    final encoded = await compute(_encodeJson, json);
    await _settings.setString(_key, encoded);
  }

  static Future<VoyageState?> load() async {
    final raw = await _settings.getString(_key);
    if (raw.isEmpty) return null;
    try {
      return VoyageState.fromJson(
        jsonDecode(raw) as Map<String, dynamic>,
      );
    } catch (e) {
      QaLogger.app.severe('Save data corrupted, clearing: $e');
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
