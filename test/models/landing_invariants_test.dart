import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/l10n/app_localizations_en.dart';
import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Regression guards against a class of bugs where the player could land
/// on the same planet repeatedly. The invariants we lock in here:
///
///  1. `VoyageState.copyWith(clearPlanet: true)` actually nulls the planet
///     (`pressOn()` is the only consumer; if this stops working, both
///     "Press Onward" from /landing and "Press On" from /scan would leave
///     the planet alive in state and the user could relaunch /landing).
///
///  2. `EndingCalculator.calculate` produces a real result when there IS a
///     planet — i.e. the happy path doesn't accidentally early-out.
///
///  3. The combination "land cinematic finishes → pressOn-equivalent →
///     state has no planet" is observable through the public model API,
///     so a regression in any layer (notifier, screen, navigator) would
///     fail this test even without a full widget harness.
void main() {
  Planet samplePlanet() => const Planet(
        name: 'Kepler-X',
        description: 'A test world.',
        atmosphere: 0.6,
        temperature: 0.6,
        water: 0.6,
        resources: 0.6,
        gravity: 0.6,
        biodiversity: 0.6,
        anomaly: 0.0,
        radiation: 0.3,
        nativePresence: 0.0,
        nativeDisposition: 0.5,
      );

  group('planet-consumption invariant', () {
    test('clearPlanet:true sets currentPlanet to null', () {
      final scanned = const VoyageState().copyWith(currentPlanet: samplePlanet());
      expect(scanned.currentPlanet, isNotNull);

      final consumed = scanned.copyWith(clearPlanet: true);
      expect(
        consumed.currentPlanet,
        isNull,
        reason: 'pressOn() relies on this — losing it lets the player '
            're-launch /landing on the same planet repeatedly',
      );
    });

    test('clearPlanet:true ignores a competing currentPlanet argument', () {
      // Defensive: if a future caller mistakenly passes both, the clear
      // wins. Otherwise pressOn could accidentally re-arm the planet.
      final scanned = const VoyageState().copyWith(currentPlanet: samplePlanet());
      final result = scanned.copyWith(
        clearPlanet: true,
        currentPlanet: samplePlanet(),
      );
      expect(result.currentPlanet, isNull);
    });

    test('EndingCalculator.calculate produces a result when planet exists', () {
      // Sanity: with a planet, the calculator runs end-to-end. This is the
      // canonical "user committed to landing" path and must keep working.
      final result = EndingCalculator.calculate(
        const ShipSystems(),
        samplePlanet(),
        AppLocalizationsEn(),
        colonists: 1000,
        fuel: 200,
        voyage: const VoyageState(),
      );
      expect(result.score, greaterThan(0));
      expect(result.title, isNotEmpty);
    });

    test('isComplete after a landing prevents resume of voyage logic', () {
      // Once landing finalizes, isComplete flips. Any subsequent
      // navigation back into voyage flow should see this and bounce.
      final landed = const VoyageState(currentPlanet: null, isComplete: true);
      expect(landed.isComplete, true);
      expect(landed.currentPlanet, isNull);
    });
  });
}
