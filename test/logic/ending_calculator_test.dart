import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/l10n/app_localizations_en.dart';
import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

void main() {
  final l10n = AppLocalizationsEn();

  Planet planet({
    double atmosphere = 0.7,
    double temperature = 0.6,
    double water = 0.7,
    double resources = 0.6,
    double gravity = 0.5,
    double biodiversity = 0.6,
    double radiation = 0.3,
    double nativePresence = 0.0,
    double nativeDisposition = 0.5,
    List<String> surfaceFeatures = const [],
    List<Moon> moons = const [],
    RingSystem? rings,
  }) => Planet(
    name: 'TestWorld',
    description: '',
    atmosphere: atmosphere,
    temperature: temperature,
    water: water,
    resources: resources,
    gravity: gravity,
    biodiversity: biodiversity,
    anomaly: 0.0,
    radiation: radiation,
    nativePresence: nativePresence,
    nativeDisposition: nativeDisposition,
    surfaceFeatures: surfaceFeatures,
    moons: moons,
    rings: rings,
  );

  group('score bounds', () {
    test('perfect run stays inside [0, 100000]', () {
      final result = EndingCalculator.calculate(
        const ShipSystems(),
        planet(
          atmosphere: 1.0,
          temperature: 0.9,
          water: 0.9,
          resources: 0.9,
          biodiversity: 0.9,
          radiation: 0.0,
        ),
        l10n,
        colonists: 1000,
        fuel: 200,
        voyage: const VoyageState(),
      );
      expect(result.score, greaterThanOrEqualTo(0));
      expect(result.score, lessThanOrEqualTo(100000));
    });

    test('worst case stays inside [0, 100000] and does not go negative', () {
      const brokenShip = ShipSystems(
        hull: 0.01,
        nav: 0.01,
        cryopods: 0.01,
        culture: 0.01,
        tech: 0.01,
        constructors: 0.01,
        shields: 0.0,
        landingSystem: 0.0,
        atmosphericScanner: 0.0,
        gravimetricScanner: 0.0,
        mineralScanner: 0.0,
        lifeSignsScanner: 0.0,
        temperatureScanner: 0.0,
        waterScanner: 0.0,
      );
      final result = EndingCalculator.calculate(
        brokenShip,
        planet(
          atmosphere: 0.0,
          temperature: 0.0,
          water: 0.0,
          resources: 0.0,
          biodiversity: 0.0,
          radiation: 1.0,
        ),
        l10n,
        colonists: 10,
        fuel: 0,
        voyage: const VoyageState(),
      );
      expect(result.score, greaterThanOrEqualTo(0));
      expect(result.score, lessThanOrEqualTo(100000));
    });

    test('degenerate inputs do not crash or NaN', () {
      final result = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        colonists: 0,
        voyage: const VoyageState(),
      );
      expect(result.score.isFinite, isTrue);
      expect(result.score, greaterThanOrEqualTo(0));
    });
  });

  group('determinism', () {
    test('same inputs → identical score', () {
      final ship = const ShipSystems(hull: 0.8, nav: 0.7);
      final p = planet(atmosphere: 0.75);

      final a = EndingCalculator.calculate(
        ship,
        p,
        l10n,
        colonists: 900,
        voyage: const VoyageState(),
      );
      final b = EndingCalculator.calculate(
        ship,
        p,
        l10n,
        colonists: 900,
        voyage: const VoyageState(),
      );

      expect(a.score, equals(b.score));
      expect(a.tier, equals(b.tier));
      expect(a.breakdown.total, equals(b.breakdown.total));
    });
  });

  group('monotonicity — better inputs should not score worse', () {
    test('higher habitability → equal or higher score', () {
      final lowScore = EndingCalculator.calculate(
        const ShipSystems(),
        planet(atmosphere: 0.3, water: 0.3, temperature: 0.3),
        l10n,
        voyage: const VoyageState(),
      ).score;
      final highScore = EndingCalculator.calculate(
        const ShipSystems(),
        planet(atmosphere: 0.9, water: 0.9, temperature: 0.7),
        l10n,
        voyage: const VoyageState(),
      ).score;
      expect(highScore, greaterThan(lowScore));
    });

    test('healthier ship → equal or higher score', () {
      final damaged = EndingCalculator.calculate(
        const ShipSystems(hull: 0.3, nav: 0.3, cryopods: 0.3, culture: 0.3),
        planet(),
        l10n,
        voyage: const VoyageState(),
      ).score;
      final pristine = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        voyage: const VoyageState(),
      ).score;
      expect(pristine, greaterThanOrEqualTo(damaged));
    });

    test('more colonists → equal or higher score', () {
      final few = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        colonists: 100,
        voyage: const VoyageState(),
      ).score;
      final many = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        colonists: 1000,
        voyage: const VoyageState(),
      ).score;
      expect(many, greaterThanOrEqualTo(few));
    });
  });

  group('tier assignment follows score', () {
    test('high-score run gets positive tier', () {
      final r = EndingCalculator.calculate(
        const ShipSystems(),
        planet(
          atmosphere: 1.0,
          temperature: 0.85,
          water: 0.9,
          resources: 0.9,
          biodiversity: 0.9,
          radiation: 0.0,
        ),
        l10n,
        colonists: 1000,
        voyage: const VoyageState(),
      );
      // A near-perfect run should be Golden Age / Thriving / Habitable
      // range — the exact tier depends on internal thresholds but it
      // must NOT be one of the failure tiers.
      expect(r.tier.toLowerCase(), isNot(contains('extinction')));
      expect(r.tier.toLowerCase(), isNot(contains('death')));
      expect(r.score, greaterThan(20000));
    });

    test('near-zero run gets a low tier', () {
      final r = EndingCalculator.calculate(
        const ShipSystems(hull: 0.05, cryopods: 0.05),
        planet(atmosphere: 0.05, water: 0.05, resources: 0.05, radiation: 0.9),
        l10n,
        colonists: 20,
        voyage: const VoyageState(),
      );
      expect(r.score, lessThan(30000));
    });
  });

  group('feature interactions affect score', () {
    test('adding rare surface features raises the score', () {
      final base = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        voyage: const VoyageState(),
      ).score;
      final withRares = EndingCalculator.calculate(
        const ShipSystems(),
        planet(
          surfaceFeatures: const [
            'singing_crystals',
            'helium3_deposits',
            'ancient_observatory',
          ],
        ),
        l10n,
        voyage: const VoyageState(),
      ).score;
      expect(withRares, greaterThan(base));
    });

    test('hazardous combo (sinkholes + tectonic instability) penalizes', () {
      final base = EndingCalculator.calculate(
        const ShipSystems(),
        planet(),
        l10n,
        voyage: const VoyageState(),
      ).score;
      final hazardous = EndingCalculator.calculate(
        const ShipSystems(),
        planet(
          surfaceFeatures: const ['sinkhole_fields', 'tectonic_instability'],
        ),
        l10n,
        voyage: const VoyageState(),
      ).score;
      expect(hazardous, lessThan(base));
    });
  });
}
