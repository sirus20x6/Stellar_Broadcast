import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

void main() {
  group('VoyageState schema versioning', () {
    test('toJson always writes the current schema version', () {
      const original = VoyageState();
      final json = original.toJson();
      expect(json['schemaVersion'], VoyageState.currentSchemaVersion);
    });

    test('fromJson accepts saves missing schemaVersion (pre-v1)', () {
      // Older saves — prior to the versioning commit — had no schemaVersion
      // field. fromJson treats those as v1.
      final s = VoyageState.fromJson(const {'encounterCount': 5});
      expect(s.encounterCount, 5);
    });

    test('fromJson refuses a future schemaVersion (no silent data loss)', () {
      // A save from a newer app version must not be decoded optimistically:
      // silently dropping unknown fields and then re-saving would overwrite
      // the richer blob with our lossy reconstruction. fromJson throws a
      // FormatException so the caller can decide whether to clear or
      // preserve the forward save.
      expect(
        () => VoyageState.fromJson(const {
          'schemaVersion': 999,
          'encounterCount': 3,
        }),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('VoyageState JSON round-trip', () {
    test('default state round-trips', () {
      const original = VoyageState();
      final json = jsonEncode(original.toJson());
      final decoded = VoyageState.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );
      final reencoded = jsonEncode(decoded.toJson());
      expect(reencoded, equals(json));
    });

    test('rich state with all fields round-trips stably', () {
      final original = VoyageState(
        ship: const ShipSystems(
          hull: 0.85,
          nav: 0.72,
          cryopods: 0.91,
          culture: 0.65,
          tech: 0.55,
          constructors: 0.40,
          shields: 0.33,
          landingSystem: 0.88,
          atmosphericScanner: 0.70,
          gravimetricScanner: 0.60,
          mineralScanner: 0.80,
          lifeSignsScanner: 0.45,
          temperatureScanner: 0.90,
          waterScanner: 0.77,
        ),
        currentPlanet: const Planet(
          name: 'Test-World',
          description: 'test description',
          atmosphere: 0.6,
          temperature: 0.5,
          water: 0.7,
          resources: 0.4,
          gravity: 0.3,
          biodiversity: 0.8,
          anomaly: 0.2,
          radiation: 0.1,
          nativePresence: 0.0,
          nativeDisposition: 0.5,
          surfaceFeatures: ['plant_life', 'deep_oceans'],
          moons: [Moon(type: MoonType.habitable, size: 0.6, habitability: 0.5)],
          rings: RingSystem(type: RingType.ice, density: 0.5, tiltDegrees: 15),
        ),
        encounterCount: 12,
        maxEncounters: 30,
        log: const ['Left Earth.', 'Scanned Alpha-1.', 'Encountered trader.'],
        seenEventIds: const ['event_1', 'event_2'],
        probes: 7,
        probedStats: const {'atmosphere', 'water'},
        revealedFeatures: const {'deep_oceans'},
        colonists: 950,
        planetsScanned: 2,
        nextPlanetEncounter: 15,
        fuel: 150,
        energy: 28,
        totalDamageTaken: 3.2,
        voyageStartTime: DateTime.utc(2026, 4, 11, 12, 0, 0),
        seed: 42,
        isDaily: true,
        authorityAxis: 0.3,
        cultureAxis: -0.2,
        economyAxis: 0.5,
        faithAxis: 0.0,
        militaryAxis: -0.4,
      );

      final json = jsonEncode(original.toJson());
      final decoded = VoyageState.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );
      final reencoded = jsonEncode(decoded.toJson());

      // Full-circle stability is what matters — a second encode must
      // match the first to guarantee saves don't mutate under load.
      expect(reencoded, equals(json));

      expect(decoded.encounterCount, 12);
      expect(decoded.colonists, 950);
      expect(decoded.fuel, 150);
      expect(decoded.probedStats, containsAll(['atmosphere', 'water']));
      expect(decoded.seed, 42);
      expect(decoded.isDaily, isTrue);
      expect(decoded.currentPlanet?.name, 'Test-World');
      expect(decoded.currentPlanet?.moons.length, 1);
      expect(decoded.currentPlanet?.moons.first.type, MoonType.habitable);
    });
  });

  group('VoyageState.fromJson defensive parsing', () {
    test('empty map → all defaults, no crash', () {
      final s = VoyageState.fromJson(const {});
      expect(s.encounterCount, 0);
      expect(s.fuel, 0);
      expect(s.log, isEmpty);
      expect(s.currentPlanet, isNull);
    });

    test('missing ship field → default ShipSystems', () {
      final s = VoyageState.fromJson(const {'encounterCount': 5});
      expect(s.ship.hull, 1.0); // _readStat defaults to 1.0
      expect(s.encounterCount, 5);
    });

    test('wrong type on int field → default', () {
      final s = VoyageState.fromJson(const {'fuel': 'not_a_number'});
      expect(s.fuel, 0);
    });

    test('wrong type on bool field → default', () {
      final s = VoyageState.fromJson(const {'isGameOver': 'yes'});
      expect(s.isGameOver, isFalse);
    });

    test('non-list log field → empty list', () {
      final s = VoyageState.fromJson(const {'log': 'corrupted'});
      expect(s.log, isEmpty);
    });

    test('mixed-type elements in log → only strings kept', () {
      final s = VoyageState.fromJson(const {
        'log': ['ok', 123, null, 'also ok', {}, 'third'],
      });
      expect(s.log, ['ok', 'also ok', 'third']);
    });

    test('oversize log list → capped at _maxListEntries', () {
      final hugeLog = List<String>.generate(20000, (i) => 'entry_$i');
      final s = VoyageState.fromJson({'log': hugeLog});
      expect(s.log.length, 10000); // _maxListEntries
    });

    test('malformed currentPlanet → null, not crash', () {
      final s = VoyageState.fromJson(const {'currentPlanet': 'not_a_map'});
      expect(s.currentPlanet, isNull);
    });

    test('malformed voyageStartTime → null', () {
      final s = VoyageState.fromJson(const {
        'voyageStartTime': 'not-an-iso-date',
      });
      expect(s.voyageStartTime, isNull);
    });

    test('scannerReadings with non-string keys → skipped', () {
      final s = VoyageState.fromJson(const {
        'scannerReadings': {'atmosphere': 0.5, 42: 'bad_key'},
      });
      expect(s.scannerReadings['atmosphere'], closeTo(0.5, 1e-9));
      expect(s.scannerReadings.length, 1);
    });

    test('ShipSystems clamps out-of-range values', () {
      final s = VoyageState.fromJson(const {
        'ship': {'hull': 5.0, 'nav': -1.0},
      });
      expect(s.ship.hull, 1.0); // clamped to 1.0
      expect(s.ship.nav, 0.0); // clamped to 0.0
    });

    test('unknown MoonType string → barren fallback', () {
      final s = VoyageState.fromJson({
        'currentPlanet': {
          'name': 'X',
          'description': '',
          'atmosphere': 0.5,
          'temperature': 0.5,
          'water': 0.5,
          'resources': 0.5,
          'gravity': 0.5,
          'biodiversity': 0.5,
          'anomaly': 0.0,
          'moons': [
            {'type': 'unknown_from_future', 'size': 0.5},
          ],
        },
      });
      expect(s.currentPlanet?.moons.first.type, MoonType.barren);
    });

    test('unknown RingType string → dust fallback', () {
      final s = VoyageState.fromJson({
        'currentPlanet': {
          'name': 'X',
          'description': '',
          'atmosphere': 0.5,
          'temperature': 0.5,
          'water': 0.5,
          'resources': 0.5,
          'gravity': 0.5,
          'biodiversity': 0.5,
          'anomaly': 0.0,
          'rings': {'type': 'unknown', 'density': 0.5, 'tiltDegrees': 10.0},
        },
      });
      expect(s.currentPlanet?.rings?.type, RingType.dust);
    });

    test('non-string elements in surfaceFeatures → filtered', () {
      final s = VoyageState.fromJson({
        'currentPlanet': {
          'name': 'X',
          'description': '',
          'atmosphere': 0.5,
          'temperature': 0.5,
          'water': 0.5,
          'resources': 0.5,
          'gravity': 0.5,
          'biodiversity': 0.5,
          'anomaly': 0.0,
          'surfaceFeatures': ['plant_life', 42, null, 'deep_oceans'],
        },
      });
      expect(s.currentPlanet?.surfaceFeatures, ['plant_life', 'deep_oceans']);
    });
  });
}
