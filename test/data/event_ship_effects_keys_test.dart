import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/data/events.dart';
import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/models/ship.dart';

/// Regression test for shipEffects key typos.
///
/// Every value in a [EventChoice.shipEffects] map is looked up by string
/// against [ShipSystems._applyDelta]; unknown keys throw ArgumentError at
/// runtime when the player selects that choice. Two such typos shipped in
/// v2.2.0 (`'technology'` instead of `'tech'`, and `'scanners'` with no
/// matching case) and surfaced as Firebase Crashlytics fatals.
///
/// Rather than maintain a duplicate whitelist here, this test exercises
/// [ShipSystems.boost] with every key every event uses — if a key is
/// invalid, boost throws and the test fails. Runs on every CI.
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  test('every shipEffects key across all events is a valid ship system',
      () async {
    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    final events = buildEventPool(l10n);

    const baseline = ShipSystems(
      hull: 0.5,
      nav: 0.5,
      cryopods: 0.5,
      culture: 0.5,
      tech: 0.5,
      constructors: 0.5,
      shields: 0.5,
      landingSystem: 0.5,
      atmosphericScanner: 0.5,
      gravimetricScanner: 0.5,
      mineralScanner: 0.5,
      lifeSignsScanner: 0.5,
      temperatureScanner: 0.5,
      waterScanner: 0.5,
    );

    final offenders = <String>{};
    for (final event in events) {
      for (final choice in event.choices) {
        for (final key in choice.shipEffects.keys) {
          try {
            // boost() routes through _applyDelta which is where the
            // ArgumentError fires. A zero delta is enough to hit the
            // switch statement without mutating anything meaningful.
            baseline.boost(key, 0.0);
          } on ArgumentError {
            offenders.add('event="${event.id}" key="$key"');
          }
        }
      }
    }

    expect(
      offenders,
      isEmpty,
      reason:
          'Events reference unknown ship system keys — these would throw '
          'ArgumentError when the player selects the choice. Either fix '
          'the typo or add a case in ShipSystems._applyDelta.\n'
          '${offenders.join('\n')}',
    );
  });
}
