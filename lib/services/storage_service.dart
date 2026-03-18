import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starbound_exodus/models/legacy.dart';

/// Persistent local storage backed by [SharedPreferences].
///
/// Call [init] once at app startup before using any other method.
class StorageService {
  StorageService._();

  static SharedPreferences? _prefs;

  // Storage keys
  static const String _keyLegacy = 'legacy_data';
  static const String _keyOnboarding = 'onboarding_complete';
  static const String _keyVoyageLog = 'voyage_log';

  // ---------------------------------------------------------------------------
  // Initialization
  // ---------------------------------------------------------------------------

  /// Initialize the [SharedPreferences] instance. Must be called before any
  /// other [StorageService] method.
  static Future<void> init() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      debugPrint('StorageService: initialized');
    } catch (e) {
      debugPrint('StorageService: Failed to initialize — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Legacy data
  // ---------------------------------------------------------------------------

  /// Serialize and persist [data] to local storage.
  static Future<void> saveLegacy(LegacyData data) async {
    try {
      final map = {
        'totalVoyages': data.totalVoyages,
        'bestScore': data.bestScore,
        'achievements': data.achievements,
        'upgrades': data.upgrades,
        'legacyPoints': data.legacyPoints,
      };
      await _prefs?.setString(_keyLegacy, jsonEncode(map));
    } catch (e) {
      debugPrint('StorageService: Failed to save legacy — $e');
    }
  }

  /// Load and deserialize [LegacyData] from local storage.
  ///
  /// Returns a default [LegacyData] if nothing is stored yet.
  static Future<LegacyData> loadLegacy() async {
    try {
      final raw = _prefs?.getString(_keyLegacy);
      if (raw == null) return const LegacyData();

      final map = jsonDecode(raw) as Map<String, dynamic>;
      return LegacyData(
        totalVoyages: map['totalVoyages'] as int? ?? 0,
        bestScore: map['bestScore'] as int? ?? 0,
        achievements: List<String>.from(map['achievements'] as List? ?? []),
        upgrades: Map<String, bool>.from(map['upgrades'] as Map? ?? {}),
        legacyPoints: map['legacyPoints'] as int? ?? 0,
      );
    } catch (e) {
      debugPrint('StorageService: Failed to load legacy — $e');
      return const LegacyData();
    }
  }

  // ---------------------------------------------------------------------------
  // Onboarding
  // ---------------------------------------------------------------------------

  /// Returns `true` if the user has completed the onboarding flow.
  static Future<bool> isOnboardingComplete() async {
    try {
      return _prefs?.getBool(_keyOnboarding) ?? false;
    } catch (e) {
      debugPrint('StorageService: Failed to read onboarding flag — $e');
      return false;
    }
  }

  /// Mark the onboarding flow as complete.
  static Future<void> setOnboardingComplete() async {
    try {
      await _prefs?.setBool(_keyOnboarding, true);
    } catch (e) {
      debugPrint('StorageService: Failed to set onboarding flag — $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Voyage log
  // ---------------------------------------------------------------------------

  /// Append a single [entry] to the captain's voyage log.
  static Future<void> saveVoyageLog(String entry) async {
    try {
      final existing = _prefs?.getStringList(_keyVoyageLog) ?? [];
      existing.add(entry);
      await _prefs?.setStringList(_keyVoyageLog, existing);
    } catch (e) {
      debugPrint('StorageService: Failed to save voyage log entry — $e');
    }
  }

  /// Retrieve all voyage log entries in chronological order.
  static Future<List<String>> getVoyageLog() async {
    try {
      return _prefs?.getStringList(_keyVoyageLog) ?? [];
    } catch (e) {
      debugPrint('StorageService: Failed to load voyage log — $e');
      return [];
    }
  }
}
