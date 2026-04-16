import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Persists and restores mid-run voyage state.
///
/// Writes are atomic: the JSON blob is staged under a pending key and the
/// primary key is only updated after the stage write succeeds. A crash
/// mid-write leaves the previous save intact (or no save at all) rather
/// than a half-written corrupted blob.
class VoyageSaveService {
  static const _key = 'active_voyage';
  static const _stagingKey = 'active_voyage_pending';
  static final _settings = SettingsRepository();

  static String _encodeJson(Map<String, dynamic> json) => jsonEncode(json);

  static Future<void> save(VoyageState state) async {
    final json = state.toJson();
    final encoded = await compute(_encodeJson, json);
    // Stage first, then swap. If the app force-closes between these two
    // writes, the previous _key value is still the source of truth.
    await _settings.setString(_stagingKey, encoded);
    await _settings.setString(_key, encoded);
    // Best-effort cleanup; a leftover stage entry is harmless.
    await _settings.remove(_stagingKey);
  }

  static Future<VoyageState?> load() async {
    final raw = await _settings.getString(_key);
    if (raw.isEmpty) {
      // Recover from a crash during a save: if the primary key is empty
      // but there's a staged blob, it's the most recent complete write
      // we have. Promote it.
      final staged = await _settings.getString(_stagingKey);
      if (staged.isEmpty) return null;
      QaLogger.app.warning(
        'Primary save missing; recovering from staged write',
      );
      try {
        final recovered = VoyageState.fromJson(
          jsonDecode(staged) as Map<String, dynamic>,
        );
        await _settings.setString(_key, staged);
        await _settings.remove(_stagingKey);
        return recovered;
      } catch (e, st) {
        QaLogger.app.severe('Staged save also corrupt, clearing', e, st);
        await clear();
        return null;
      }
    }
    try {
      return VoyageState.fromJson(jsonDecode(raw) as Map<String, dynamic>);
    } catch (e, st) {
      QaLogger.app.severe('Save data corrupted, clearing', e, st);
      await clear();
      return null;
    }
  }

  static Future<void> clear() async {
    await _settings.remove(_key);
    await _settings.remove(_stagingKey);
  }

  static Future<bool> hasSave() async {
    final raw = await _settings.getString(_key);
    if (raw.isNotEmpty) return true;
    final staged = await _settings.getString(_stagingKey);
    return staged.isNotEmpty;
  }
}
