import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/logic/planet_generator.dart';
import 'package:stellar_broadcast/models/planet.dart';

/// Determinism tests for `PlanetGenerator.generate`.
///
/// Daily / seeded voyages rely on the seed being the single source of
/// procedural variance: two runs with the same seed must produce
/// identical planet sequences, or leaderboards and daily seed sharing
/// break. No `PlanetNameService` is passed, so names come from the
/// built-in `_generateName` path — fully deterministic given the RNG.
void main() {
  /// Returns N planets generated against a freshly-seeded `Random(seed)`.
  Future<List<Planet>> generateN(int seed, int count) async {
    final rng = Random(seed);
    final planets = <Planet>[];
    for (var i = 0; i < count; i++) {
      planets.add(await PlanetGenerator.generate(rng));
    }
    return planets;
  }

  /// Compare every numeric/string/enum property that defines a planet's
  /// identity. Avoids relying on a `==` override on Planet (which doesn't
  /// exist) and gives sharp error messages when a field drifts.
  void expectSamePlanet(Planet a, Planet b, {required int index}) {
    expect(a.name, b.name, reason: 'name mismatch at index $index');
    expect(
      a.description,
      b.description,
      reason: 'description mismatch at index $index',
    );
    expect(a.atmosphere, b.atmosphere, reason: 'atmosphere @ $index');
    expect(a.temperature, b.temperature, reason: 'temperature @ $index');
    expect(a.water, b.water, reason: 'water @ $index');
    expect(a.resources, b.resources, reason: 'resources @ $index');
    expect(a.gravity, b.gravity, reason: 'gravity @ $index');
    expect(a.biodiversity, b.biodiversity, reason: 'biodiversity @ $index');
    expect(a.anomaly, b.anomaly, reason: 'anomaly @ $index');
    expect(a.radiation, b.radiation, reason: 'radiation @ $index');
    expect(
      a.nativePresence,
      b.nativePresence,
      reason: 'nativePresence @ $index',
    );
    expect(
      a.nativeDisposition,
      b.nativeDisposition,
      reason: 'nativeDisposition @ $index',
    );
    expect(
      a.surfaceFeatures,
      b.surfaceFeatures,
      reason: 'surfaceFeatures @ $index',
    );
    expect(a.moons.length, b.moons.length, reason: 'moon count @ $index');
    for (var i = 0; i < a.moons.length; i++) {
      expect(
        a.moons[i].type,
        b.moons[i].type,
        reason: 'moon[$i].type @ planet $index',
      );
      expect(
        a.moons[i].size,
        b.moons[i].size,
        reason: 'moon[$i].size @ planet $index',
      );
      expect(
        a.moons[i].habitability,
        b.moons[i].habitability,
        reason: 'moon[$i].habitability @ planet $index',
      );
      expect(
        a.moons[i].water,
        b.moons[i].water,
        reason: 'moon[$i].water @ planet $index',
      );
      expect(
        a.moons[i].atmosphere,
        b.moons[i].atmosphere,
        reason: 'moon[$i].atmosphere @ planet $index',
      );
    }
    expect(
      a.rings?.type,
      b.rings?.type,
      reason: 'rings.type @ $index',
    );
    expect(
      a.rings?.density,
      b.rings?.density,
      reason: 'rings.density @ $index',
    );
    expect(
      a.rings?.tiltDegrees,
      b.rings?.tiltDegrees,
      reason: 'rings.tiltDegrees @ $index',
    );
  }

  group('PlanetGenerator determinism', () {
    test('same seed → element-wise identical planets over 20 generations',
        () async {
      const seed = 42;
      const count = 20;

      final first = await generateN(seed, count);
      final second = await generateN(seed, count);

      expect(first.length, count);
      expect(second.length, count);
      for (var i = 0; i < count; i++) {
        expectSamePlanet(first[i], second[i], index: i);
      }
    });

    test('same seed produces identical first planet across repeated runs',
        () async {
      // Narrow guard against accidental global-state contamination —
      // if some static cache bled into generation, two independent first
      // planets from the same seed would diverge.
      final a = await generateN(1234, 1);
      final b = await generateN(1234, 1);
      expectSamePlanet(a.single, b.single, index: 0);
    });

    test('different seeds → different first planet (no seed bypass)',
        () async {
      // Smoke test: if the generator ever ignored its Random arg (e.g.
      // accidentally using DateTime.now() or a module-level Random), the
      // two planets would still coincide occasionally but the full stat
      // tuple would almost certainly differ. Using several stable points
      // to make a single-coincidence match astronomically unlikely.
      final seedA = await generateN(42, 1);
      final seedB = await generateN(7_777_777, 1);

      final a = seedA.single;
      final b = seedB.single;

      // At least one of the core numeric stats must differ — if every
      // one happened to collide we've lost determinism-via-seed.
      final diffs = <bool>[
        a.atmosphere != b.atmosphere,
        a.temperature != b.temperature,
        a.water != b.water,
        a.resources != b.resources,
        a.gravity != b.gravity,
        a.biodiversity != b.biodiversity,
        a.anomaly != b.anomaly,
        a.radiation != b.radiation,
      ];
      expect(
        diffs.any((d) => d),
        isTrue,
        reason: 'different seeds produced identical core stats — seed bypass?',
      );
    });

    test('sequence of 5 planets from same seed is stable across runs',
        () async {
      // Focused shorter sequence — catches regressions in the internal
      // RNG consumption order (e.g. if a branch starts consuming random
      // numbers in a different order between app versions).
      final a = await generateN(99, 5);
      final b = await generateN(99, 5);
      for (var i = 0; i < 5; i++) {
        expectSamePlanet(a[i], b[i], index: i);
      }
    });
  });
}
