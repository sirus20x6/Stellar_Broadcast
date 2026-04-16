import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Save-file corruption resilience tests.
///
/// `VoyageSaveService` itself is a thin wrapper around `SettingsRepository`
/// (Hive-backed), which requires platform channel / on-disk initialisation
/// that isn't set up in pure `flutter test`. Rather than pulling in a heavy
/// mocking stack, these tests exercise the exact serialization pipeline the
/// service uses — `jsonEncode(state.toJson())` on save, and
/// `VoyageState.fromJson(jsonDecode(raw))` on load — against corrupted
/// payloads. This is the surface where bad data actually leads to crashes;
/// the Hive read/write itself is platform code we trust.
void main() {
  group('VoyageSaveService save-file corruption resilience', () {
    VoyageState baseline() => const VoyageState().copyWith(
          ship: const ShipSystems(hull: 0.8, nav: 0.7),
          encounterCount: 8,
          fuel: 120,
          energy: 25,
          colonists: 850,
          seed: 42,
          isDaily: true,
          log: const ['Left Earth.', 'Scanned Alpha.'],
          authorityAxis: 0.3,
          militaryAxis: -0.2,
        );

    /// Round-trip a state through the same pipeline the service uses,
    /// optionally mutating the decoded JSON before re-parsing.
    VoyageState roundTrip(
      VoyageState state, {
      void Function(Map<String, dynamic>)? corrupt,
    }) {
      final encoded = jsonEncode(state.toJson());
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;
      if (corrupt != null) corrupt(decoded);
      return VoyageState.fromJson(decoded);
    }

    test('clean round-trip preserves all fields', () {
      final state = baseline();
      final decoded = roundTrip(state);

      expect(decoded.encounterCount, state.encounterCount);
      expect(decoded.fuel, state.fuel);
      expect(decoded.energy, state.energy);
      expect(decoded.colonists, state.colonists);
      expect(decoded.seed, state.seed);
      expect(decoded.isDaily, state.isDaily);
      expect(decoded.log, state.log);
      expect(decoded.ship.hull, closeTo(state.ship.hull, 1e-9));
      expect(decoded.ship.nav, closeTo(state.ship.nav, 1e-9));
      expect(decoded.authorityAxis, closeTo(state.authorityAxis, 1e-9));
      expect(decoded.militaryAxis, closeTo(state.militaryAxis, 1e-9));
    });

    test('corrupt int field (fuel → string) falls back to 0', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) => j['fuel'] = 'oh no',
      );
      // _readInt falls back to its default (0) when the JSON type is wrong.
      expect(decoded.fuel, 0);
      // Unrelated fields survive.
      expect(decoded.encounterCount, 8);
      expect(decoded.colonists, 850);
    });

    test('corrupt double field (totalDamageTaken → bool) falls back to 0.0', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) => j['totalDamageTaken'] = true,
      );
      expect(decoded.totalDamageTaken, 0.0);
      expect(decoded.fuel, 120);
    });

    test('corrupt bool field (isDaily → int) falls back to false', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) => j['isDaily'] = 1,
      );
      expect(decoded.isDaily, isFalse);
      expect(decoded.seed, 42);
    });

    test('corrupt log (list → string) falls back to empty list', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) => j['log'] = 'this is not a list',
      );
      expect(decoded.log, isEmpty);
      expect(decoded.encounterCount, 8);
    });

    test('corrupt ship (map → null) falls back to default ShipSystems', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) => j['ship'] = null,
      );
      // Default ShipSystems has all stats at 1.0.
      expect(decoded.ship.hull, 1.0);
      expect(decoded.ship.nav, 1.0);
    });

    test('corrupt multiple fields at once — each falls back independently', () {
      final decoded = roundTrip(
        baseline(),
        corrupt: (j) {
          j['fuel'] = 'x';
          j['energy'] = 'y';
          j['authorityAxis'] = 'not a number';
          j['log'] = 12345;
        },
      );
      expect(decoded.fuel, 0);
      expect(decoded.energy, 0);
      expect(decoded.authorityAxis, 0.0);
      expect(decoded.log, isEmpty);
      // Uncorrupted fields still intact.
      expect(decoded.colonists, 850);
      expect(decoded.seed, 42);
    });

    test('voyageStartTime corrupted to junk string → parses to null', () {
      final decoded = roundTrip(
        baseline().copyWith(voyageStartTime: DateTime.utc(2026, 4, 11)),
        corrupt: (j) => j['voyageStartTime'] = 'not-a-date',
      );
      expect(decoded.voyageStartTime, isNull);
    });

    test('scannerReadings with a non-num value → that key is null', () {
      final decoded = roundTrip(
        baseline().copyWith(
          scannerReadings: const {'atmosphere': 0.5, 'water': 0.7},
        ),
        corrupt: (j) {
          final readings = j['scannerReadings'] as Map<String, dynamic>;
          readings['water'] = 'bogus';
        },
      );
      expect(decoded.scannerReadings['atmosphere'], closeTo(0.5, 1e-9));
      // Non-num values become null per the parser.
      expect(decoded.scannerReadings['water'], isNull);
    });
  });

  group('VoyageSaveService schema version guard', () {
    test('schemaVersion > currentSchemaVersion is rejected', () {
      // A newer save format must not be silently downgraded on load, or the
      // next save would overwrite a richer blob with our lossy view. The
      // save service catches this FormatException and clears the save, but
      // the important contract is that fromJson refuses to decode.
      final state = const VoyageState().copyWith(encounterCount: 5);
      final encoded = jsonEncode(state.toJson());
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;
      decoded['schemaVersion'] = VoyageState.currentSchemaVersion + 1;

      expect(
        () => VoyageState.fromJson(decoded),
        throwsA(isA<FormatException>()),
      );
    });

    test('schemaVersion equal to current decodes normally', () {
      final state = const VoyageState().copyWith(encounterCount: 5);
      final encoded = jsonEncode(state.toJson());
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;
      expect(decoded['schemaVersion'], VoyageState.currentSchemaVersion);
      final parsed = VoyageState.fromJson(decoded);
      expect(parsed.encounterCount, 5);
    });

    test('schemaVersion far in the future is rejected', () {
      final decoded = <String, dynamic>{
        'schemaVersion': 9999,
        'encounterCount': 1,
      };
      expect(
        () => VoyageState.fromJson(decoded),
        throwsA(isA<FormatException>()),
      );
    });
  });
}
