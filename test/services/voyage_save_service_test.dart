import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/services/voyage_save_service.dart';

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
      // save service catches this ForwardSchemaException and preserves the
      // blob; the important contract is that fromJson refuses to decode.
      final state = const VoyageState().copyWith(encounterCount: 5);
      final encoded = jsonEncode(state.toJson());
      final decoded = jsonDecode(encoded) as Map<String, dynamic>;
      decoded['schemaVersion'] = VoyageState.currentSchemaVersion + 1;

      expect(
        () => VoyageState.fromJson(decoded),
        throwsA(isA<ForwardSchemaException>()),
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
        throwsA(isA<ForwardSchemaException>()),
      );
    });
  });

  group('VoyageSaveService end-to-end', () {
    // Same baseline state used by the corruption-resilience group, duplicated
    // here so the groups stay independently readable.
    VoyageState e2eBaseline() => const VoyageState().copyWith(
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

    const primaryKey = 'active_voyage';
    const stagingKey = 'active_voyage_pending';

    late _MapAdapter adapter;

    setUp(() {
      adapter = _MapAdapter();
      VoyageSaveService.adapter = adapter;
    });

    tearDown(() {
      VoyageSaveService.resetAdapter();
    });

    test('save() then load() returns an equivalent VoyageState', () async {
      final state = e2eBaseline();
      await VoyageSaveService.save(state);
      final loaded = await VoyageSaveService.load();

      expect(loaded, isNotNull);
      expect(loaded!.encounterCount, state.encounterCount);
      expect(loaded.fuel, state.fuel);
      expect(loaded.energy, state.energy);
      expect(loaded.colonists, state.colonists);
      expect(loaded.seed, state.seed);
      expect(loaded.isDaily, state.isDaily);
      expect(loaded.log, state.log);
      expect(loaded.ship.hull, closeTo(state.ship.hull, 1e-9));
      expect(loaded.ship.nav, closeTo(state.ship.nav, 1e-9));
      expect(loaded.authorityAxis, closeTo(state.authorityAxis, 1e-9));
      expect(loaded.militaryAxis, closeTo(state.militaryAxis, 1e-9));
    });

    test('hasSave() is false initially, true after save, false after clear',
        () async {
      expect(await VoyageSaveService.hasSave(), isFalse);
      await VoyageSaveService.save(e2eBaseline());
      expect(await VoyageSaveService.hasSave(), isTrue);
      await VoyageSaveService.clear();
      expect(await VoyageSaveService.hasSave(), isFalse);
    });

    test('clear() removes both primary and staged keys', () async {
      // Seed both keys directly so we can prove clear() hits both.
      await adapter.setString(primaryKey, '{"schemaVersion":2}');
      await adapter.setString(stagingKey, '{"schemaVersion":2}');
      expect(adapter.store.containsKey(primaryKey), isTrue);
      expect(adapter.store.containsKey(stagingKey), isTrue);

      await VoyageSaveService.clear();

      expect(adapter.store.containsKey(primaryKey), isFalse);
      expect(adapter.store.containsKey(stagingKey), isFalse);
    });

    test('atomic write: crash between stage and primary recovers from staged',
        () async {
      final state = e2eBaseline();

      // Fault adapter throws on the SECOND setString call — i.e. the swap
      // into the primary key. The staged write (call #1) has already
      // committed, simulating a force-close between the two writes.
      final fault = _FaultAdapter(throwOnSetStringCallNumber: 2);
      VoyageSaveService.adapter = fault;

      await expectLater(VoyageSaveService.save(state), throwsException);

      // Primary never got written, but staged did.
      expect(fault.store.containsKey(primaryKey), isFalse);
      expect(fault.store.containsKey(stagingKey), isTrue);

      // Disarm the fault and retry load() — service should promote staged.
      fault.disarm();
      final loaded = await VoyageSaveService.load();

      expect(loaded, isNotNull);
      expect(loaded!.encounterCount, state.encounterCount);
      expect(loaded.colonists, state.colonists);
      // After recovery the primary key is populated and staged is gone.
      expect(fault.store.containsKey(primaryKey), isTrue);
      expect(fault.store.containsKey(stagingKey), isFalse);
    });

    test(
        'forward-version guard: load() returns null and primary blob is preserved',
        () async {
      final state = e2eBaseline();
      final json = state.toJson();
      json['schemaVersion'] = VoyageState.currentSchemaVersion + 10;
      final forwardBlob = jsonEncode(json);

      await adapter.setString(primaryKey, forwardBlob);

      final loaded = await VoyageSaveService.load();
      expect(loaded, isNull);

      // Crucial: the forward-version blob must survive — a future app
      // version needs to be able to read it.
      final stillThere = await adapter.getString(primaryKey);
      expect(stillThere, isNotEmpty);
      expect(stillThere, forwardBlob);
    });

    test(
        'corruption fallback: junk primary + valid staged → load() returns '
        'staged state and primary is healed', () async {
      final state = e2eBaseline();
      final validBlob = jsonEncode(state.toJson());

      // Valid JSON whose top-level type is wrong (a JSON array instead of
      // an object). jsonDecode succeeds, but the `as Map<String, dynamic>`
      // cast throws a TypeError, which lands in the generic catch branch —
      // the one that triggers the staged-fallback recovery. A pure parse
      // failure (malformed JSON) also lands in that generic catch now;
      // forward-schema is a dedicated [ForwardSchemaException] path.
      await adapter.setString(primaryKey, '[1,2,3]');
      await adapter.setString(stagingKey, validBlob);

      final loaded = await VoyageSaveService.load();
      expect(loaded, isNotNull);
      expect(loaded!.encounterCount, state.encounterCount);
      expect(loaded.colonists, state.colonists);

      // Primary has been healed with the staged contents; staged is cleared.
      expect(adapter.store[primaryKey], validBlob);
      expect(adapter.store.containsKey(stagingKey), isFalse);
    });

    test(
        'truncated/malformed primary JSON is NOT treated as forward-schema: '
        'staged recovery runs and primary is healed', () async {
      // Regression: jsonDecode() throws FormatException on malformed JSON,
      // and the load() path used to catch FormatException to mean
      // "forward-schema, preserve the blob forever". That misclassified
      // corrupt saves as future saves — data loss risk. The fix uses a
      // dedicated ForwardSchemaException, so malformed JSON falls through
      // to the generic catch and the staged recovery path runs.
      final state = e2eBaseline();
      final validBlob = jsonEncode(state.toJson());

      // Truncated, not a valid JSON document at all. jsonDecode will
      // throw FormatException.
      const truncated = '{"partial';
      await adapter.setString(primaryKey, truncated);
      await adapter.setString(stagingKey, validBlob);

      final loaded = await VoyageSaveService.load();
      expect(loaded, isNotNull,
          reason: 'corrupt primary must fall through to staged recovery, '
              'not be preserved as a forward-schema blob');
      expect(loaded!.encounterCount, state.encounterCount);
      expect(loaded.colonists, state.colonists);

      // Primary has been healed and staged consumed — the corrupt blob is
      // gone, not preserved forever.
      expect(adapter.store[primaryKey], validBlob);
      expect(adapter.store.containsKey(stagingKey), isFalse);
    });
  });
}

/// In-memory [VoyageStorageAdapter] backed by a plain [Map].
///
/// Mirrors the real [SettingsRepository] semantics: missing keys return the
/// empty string from [getString]; [remove] is a no-op if the key is absent.
class _MapAdapter implements VoyageStorageAdapter {
  final Map<String, String> store = <String, String>{};

  @override
  Future<String> getString(String key) async => store[key] ?? '';

  @override
  Future<void> setString(String key, String value) async {
    store[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    store.remove(key);
  }
}

/// Test adapter that throws on a specific [setString] call number to simulate
/// a crash/interruption between the stage and swap writes.
///
/// `throwOnSetStringCallNumber` is 1-indexed: pass 2 to allow the first
/// setString to succeed and fail the second. Call [disarm] to return to
/// normal behaviour for subsequent calls.
class _FaultAdapter implements VoyageStorageAdapter {
  _FaultAdapter({required this.throwOnSetStringCallNumber});

  final Map<String, String> store = <String, String>{};
  int? throwOnSetStringCallNumber;
  int _setStringCalls = 0;

  void disarm() {
    throwOnSetStringCallNumber = null;
  }

  @override
  Future<String> getString(String key) async => store[key] ?? '';

  @override
  Future<void> setString(String key, String value) async {
    _setStringCalls++;
    if (throwOnSetStringCallNumber != null &&
        _setStringCalls == throwOnSetStringCallNumber) {
      throw Exception('simulated crash between stage and primary');
    }
    store[key] = value;
  }

  @override
  Future<void> remove(String key) async {
    store.remove(key);
  }
}
