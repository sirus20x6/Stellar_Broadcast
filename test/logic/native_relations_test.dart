import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/l10n/app_localizations_en.dart';
import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Pins the bucket boundaries of `_nativeRelationsKeyFor`. The classifier
/// is private; we drive it through `EndingCalculator.calculate` and assert
/// the localized label, which is a stable 1:1 mapping (see
/// `ending_calculator.dart:_localizeNativeRelations`).
void main() {
  final l10n = AppLocalizationsEn();

  Planet planet({
    double presence = 0.5,
    double disposition = 0.5,
  }) =>
      Planet(
        name: 'X',
        description: '',
        atmosphere: 0.5,
        temperature: 0.5,
        water: 0.5,
        resources: 0.5,
        gravity: 0.5,
        biodiversity: 0.5,
        anomaly: 0.0,
        radiation: 0.3,
        nativePresence: presence,
        nativeDisposition: disposition,
      );

  String labelFor({
    required double presence,
    required double disposition,
    double militaryAxis = 0.0,
    double authorityAxis = 0.0,
    double culture = 1.0,
  }) {
    // The classifier reads `voyage.ship.culture`, not the standalone ship
    // argument — they're always the same instance in real play, but the
    // test must mirror that.
    final ship = ShipSystems(culture: culture);
    final result = EndingCalculator.calculate(
      ship,
      planet(presence: presence, disposition: disposition),
      l10n,
      colonists: 1000,
      fuel: 200,
      voyage: VoyageState(
        ship: ship,
        militaryAxis: militaryAxis,
        authorityAxis: authorityAxis,
      ),
    );
    return result.nativeRelationsLabel;
  }

  group('native relations buckets', () {
    test('no presence → None', () {
      expect(labelFor(presence: 0.05, disposition: 0.5), 'None');
    });

    test('high disposition + pacifist → Integrated', () {
      expect(
        labelFor(presence: 0.5, disposition: 0.8, militaryAxis: -0.1),
        'Integrated',
      );
    });

    test('disposition >0.5 + non-authoritarian → Alliance', () {
      expect(
        labelFor(presence: 0.5, disposition: 0.6, authorityAxis: 0.1),
        'Alliance',
      );
    });

    test('disposition just over 0.3 with hostile axes → Coexistence', () {
      // Coexistence beats Alliance because authorityAxis=0.5 disqualifies
      // Alliance, and beats Subjugation because we hit the disposition>0.3
      // branch first.
      expect(
        labelFor(presence: 0.5, disposition: 0.35, authorityAxis: 0.5),
        'Coexistence',
      );
    });

    test('low disposition + warlike + authoritarian → Subjugation', () {
      // Subjugation is checked AFTER Coexistence (>0.3) but BEFORE Tension
      // (0.1–0.3), so disposition 0.2 with hostile axes is Subjugation.
      expect(
        labelFor(
          presence: 0.5,
          disposition: 0.2,
          militaryAxis: 0.5,
          authorityAxis: 0.5,
        ),
        'Subjugation',
      );
      expect(
        labelFor(
          presence: 0.5,
          disposition: 0.05,
          militaryAxis: 0.5,
          authorityAxis: 0.5,
        ),
        'Subjugation',
      );
    });

    test('disposition <0.1 + presence >0.3 + neutral axes → Conflict', () {
      expect(labelFor(presence: 0.5, disposition: 0.05), 'Conflict');
    });
  });

  group('culture bonus crosses bucket thresholds', () {
    test('disposition 0.48 + max culture (1.5) flips to Alliance', () {
      // 0.48 alone is Coexistence; with culture 1.5 the bonus is +0.10 →
      // effective disposition 0.58, which crosses the 0.5 Alliance bar.
      expect(
        labelFor(
          presence: 0.5,
          disposition: 0.48,
          authorityAxis: 0.0,
          culture: 1.0,
        ),
        'Coexistence',
      );
      expect(
        labelFor(
          presence: 0.5,
          disposition: 0.48,
          authorityAxis: 0.0,
          culture: 1.5,
        ),
        'Alliance',
      );
    });

    test('disposition 0.05 + destroyed culture (0.0) stays Conflict', () {
      // Conflict requires disposition <0.1 AND presence >0.3. Culture 0.0
      // gives a -0.20 penalty, so effective disposition is 0 → still
      // Conflict. (No way for the bonus to flip Conflict into something
      // friendlier; that's the design intent.)
      expect(
        labelFor(presence: 0.5, disposition: 0.05, culture: 0.0),
        'Conflict',
      );
    });

    test('low culture can drag Coexistence into Tension', () {
      // disposition 0.35 with culture 1.0 → 0.35 → Coexistence.
      // disposition 0.35 with culture 0.0 → -0.20 → 0.15 → Tension band.
      expect(
        labelFor(presence: 0.5, disposition: 0.35, culture: 1.0),
        'Coexistence',
      );
      expect(
        labelFor(presence: 0.5, disposition: 0.35, culture: 0.0),
        'Tension',
      );
    });
  });
}
