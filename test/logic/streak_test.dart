import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/models/legacy.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show applyLandingToStreak, yesterdayDateKey;

/// Pinned behaviour for the daily-streak system. The pure transition function
/// `applyLandingToStreak(LegacyData, today)` is the system's testable kernel —
/// every other call site (provider, scheduler, settings UI) flows through it.
/// If a refactor breaks any of these, the streak feature is broken from the
/// player's perspective.
void main() {
  group('yesterdayDateKey', () {
    test('subtracts one day on a normal date', () {
      expect(yesterdayDateKey('2026-04-30'), '2026-04-29');
    });

    test('handles month rollover (May 1 → Apr 30)', () {
      expect(yesterdayDateKey('2026-05-01'), '2026-04-30');
    });

    test('handles year rollover (Jan 1 → Dec 31)', () {
      expect(yesterdayDateKey('2026-01-01'), '2025-12-31');
    });

    test('handles leap-year boundary (Mar 1 → Feb 29 in 2024)', () {
      expect(yesterdayDateKey('2024-03-01'), '2024-02-29');
    });

    test('handles non-leap-year (Mar 1 → Feb 28 in 2026)', () {
      expect(yesterdayDateKey('2026-03-01'), '2026-02-28');
    });
  });

  group('applyLandingToStreak transitions', () {
    test('first landing ever sets count to 1, records today', () {
      const initial = LegacyData(); // streakCount=0, lastStreakDate=null
      final after = applyLandingToStreak(initial, '2026-04-30');
      expect(after.streakCount, 1);
      expect(after.lastStreakDate, '2026-04-30');
    });

    test('landing yesterday → today advances count', () {
      const initial = LegacyData(
        streakCount: 3,
        lastStreakDate: '2026-04-29',
      );
      final after = applyLandingToStreak(initial, '2026-04-30');
      expect(after.streakCount, 4);
      expect(after.lastStreakDate, '2026-04-30');
    });

    test('two-day gap resets streak to 1', () {
      const initial = LegacyData(
        streakCount: 5,
        lastStreakDate: '2026-04-27',
      );
      final after = applyLandingToStreak(initial, '2026-04-30');
      expect(after.streakCount, 1);
      expect(after.lastStreakDate, '2026-04-30');
    });

    test('idempotent within the same day (returns same instance)', () {
      const initial = LegacyData(
        streakCount: 2,
        lastStreakDate: '2026-04-30',
      );
      final after = applyLandingToStreak(initial, '2026-04-30');
      expect(after.streakCount, 2);
      expect(identical(after, initial), true,
          reason: 'same-day no-op should return the same reference');
    });

    test('month rollover: April 30 → May 1 advances streak', () {
      const initial = LegacyData(
        streakCount: 1,
        lastStreakDate: '2026-04-30',
      );
      final after = applyLandingToStreak(initial, '2026-05-01');
      expect(after.streakCount, 2);
      expect(after.lastStreakDate, '2026-05-01');
    });

    test('year rollover: Dec 31 → Jan 1 advances streak', () {
      const initial = LegacyData(
        streakCount: 7,
        lastStreakDate: '2025-12-31',
      );
      final after = applyLandingToStreak(initial, '2026-01-01');
      expect(after.streakCount, 8);
    });

    test('preserves unrelated legacy fields across transitions', () {
      const initial = LegacyData(
        legacyPoints: 42,
        bestScore: 9001,
        totalVoyages: 17,
        streakCount: 0,
      );
      final after = applyLandingToStreak(initial, '2026-04-30');
      expect(after.legacyPoints, 42);
      expect(after.bestScore, 9001);
      expect(after.totalVoyages, 17);
    });
  });

  group('streakHullBoost', () {
    test('day 0 (no streak) → 0% boost', () {
      const l = LegacyData();
      expect(l.streakHullBoost, 0.0);
    });

    test('day 1 (first landing ever) → 0% boost', () {
      const l = LegacyData(streakCount: 1);
      expect(l.streakHullBoost, closeTo(0.0, 1e-9));
    });

    test('day 2 → +1%', () {
      const l = LegacyData(streakCount: 2);
      expect(l.streakHullBoost, closeTo(0.01, 1e-9));
    });

    test('day 6 → +5% (cap reached)', () {
      const l = LegacyData(streakCount: 6);
      expect(l.streakHullBoost, closeTo(0.05, 1e-9));
    });

    test('day 30 → still +5% (cap holds)', () {
      const l = LegacyData(streakCount: 30);
      expect(l.streakHullBoost, closeTo(0.05, 1e-9));
    });

    test('day 365 → still +5% (long-term sanity)', () {
      const l = LegacyData(streakCount: 365);
      expect(l.streakHullBoost, closeTo(0.05, 1e-9));
    });
  });

  group('LegacyData copyWith for streak fields', () {
    test('updates streakCount in isolation', () {
      const initial = LegacyData(streakCount: 3);
      final updated = initial.copyWith(streakCount: 4);
      expect(updated.streakCount, 4);
      expect(updated.lastStreakDate, isNull);
    });

    test('clearLastStreakDate explicitly nulls the date', () {
      const initial = LegacyData(
        streakCount: 5,
        lastStreakDate: '2026-04-30',
      );
      final cleared = initial.copyWith(clearLastStreakDate: true);
      expect(cleared.lastStreakDate, isNull);
      expect(cleared.streakCount, 5);
    });

    test('toggling streakReminderEnabled does not touch other fields', () {
      const initial = LegacyData(
        streakCount: 4,
        lastStreakDate: '2026-04-30',
        streakReminderEnabled: true,
      );
      final off = initial.copyWith(streakReminderEnabled: false);
      expect(off.streakReminderEnabled, false);
      expect(off.streakCount, 4);
      expect(off.lastStreakDate, '2026-04-30');
    });
  });

  group('LegacyData defaults (migration safety)', () {
    test('default constructor: streakCount=0, lastStreakDate=null, '
        'streakReminderEnabled=true', () {
      const l = LegacyData();
      expect(l.streakCount, 0);
      expect(l.lastStreakDate, isNull);
      expect(l.streakReminderEnabled, true,
          reason: 'reminder is default-on so first-time players get '
              'the retention hook without digging into Settings');
    });

    test('reading a pre-streak JSON shape does not fail or corrupt state', () {
      // This mirrors how `_loadFromStorage` reconstructs LegacyData when the
      // saved JSON predates the streak feature. The loader uses null-coalesce
      // defaults; we validate that path here without instantiating the
      // notifier (which needs Riverpod scaffolding).
      final preStreakJson = {
        'totalVoyages': 12,
        'bestScore': 50000,
        'achievements': <String>[],
        'upgrades': <String, bool>{},
        'legacyPoints': 100,
        'voyageLogs': <Map<String, dynamic>>[],
        'highScores': <Map<String, dynamic>>[],
        'dailyScores': <Map<String, dynamic>>[],
        'discoveredFeatures': <String>[],
        'legacyBestScore': 0,
        'scoreVersion': 2,
      };
      // Round-trip via JSON to make sure the fields would survive a real
      // disk write/read cycle.
      final encoded = jsonEncode(preStreakJson);
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;

      // Reconstruct using the same null-coalesce pattern as _loadFromStorage.
      final l = LegacyData(
        totalVoyages: decoded['totalVoyages'] as int? ?? 0,
        bestScore: decoded['bestScore'] as int? ?? 0,
        legacyPoints: decoded['legacyPoints'] as int? ?? 0,
        streakCount: (decoded['streakCount'] as int?) ?? 0,
        lastStreakDate: decoded['lastStreakDate'] as String?,
        streakReminderEnabled:
            (decoded['streakReminderEnabled'] as bool?) ?? true,
      );

      expect(l.streakCount, 0);
      expect(l.lastStreakDate, isNull);
      expect(l.streakReminderEnabled, true);
      expect(l.totalVoyages, 12, reason: 'old fields still read correctly');
    });

    test('post-streak JSON preserves all three fields', () {
      const original = LegacyData(
        streakCount: 4,
        lastStreakDate: '2026-04-30',
        streakReminderEnabled: false,
      );
      // Mirror the keys written by _saveToStorage.
      final map = {
        'streakCount': original.streakCount,
        if (original.lastStreakDate != null)
          'lastStreakDate': original.lastStreakDate,
        'streakReminderEnabled': original.streakReminderEnabled,
      };
      final restored = LegacyData(
        streakCount: (map['streakCount'] as int?) ?? 0,
        lastStreakDate: map['lastStreakDate'] as String?,
        streakReminderEnabled:
            (map['streakReminderEnabled'] as bool?) ?? true,
      );
      expect(restored.streakCount, 4);
      expect(restored.lastStreakDate, '2026-04-30');
      expect(restored.streakReminderEnabled, false);
    });
  });
}
