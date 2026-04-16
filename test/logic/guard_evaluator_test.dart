import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/logic/guard_evaluator.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

void main() {
  VoyageState stateWith({
    ShipSystems ship = const ShipSystems(),
    int fuel = 200,
    int energy = 40,
    int probes = 5,
    int colonists = 1000,
    int encounterCount = 0,
    int planetsScanned = 0,
  }) => VoyageState(
    ship: ship,
    fuel: fuel,
    energy: energy,
    probes: probes,
    colonists: colonists,
    encounterCount: encounterCount,
    planetsScanned: planetsScanned,
  );

  group('null/empty guards pass', () {
    test('null guard returns true', () {
      expect(GuardEvaluator.evaluate(null, stateWith()), isTrue);
    });
    test('empty string returns true', () {
      expect(GuardEvaluator.evaluate('', stateWith()), isTrue);
    });
    test('whitespace-only returns true', () {
      expect(GuardEvaluator.evaluate('   ', stateWith()), isTrue);
    });
  });

  group('comparison operators', () {
    final state = stateWith(fuel: 100, energy: 20);

    test(
      '> true',
      () => expect(GuardEvaluator.evaluate('fuel > 50', state), isTrue),
    );
    test(
      '> false',
      () => expect(GuardEvaluator.evaluate('fuel > 200', state), isFalse),
    );
    test(
      '< true',
      () => expect(GuardEvaluator.evaluate('fuel < 200', state), isTrue),
    );
    test(
      '>= boundary',
      () => expect(GuardEvaluator.evaluate('fuel >= 100', state), isTrue),
    );
    test(
      '<= boundary',
      () => expect(GuardEvaluator.evaluate('fuel <= 100', state), isTrue),
    );
    test(
      '== true',
      () => expect(GuardEvaluator.evaluate('fuel == 100', state), isTrue),
    );
    test(
      '!= true',
      () => expect(GuardEvaluator.evaluate('fuel != 99', state), isTrue),
    );
    test(
      '!= false',
      () => expect(GuardEvaluator.evaluate('fuel != 100', state), isFalse),
    );
  });

  group('logical connectives', () {
    final state = stateWith(fuel: 100, energy: 20, probes: 5);

    test('and — both true', () {
      expect(
        GuardEvaluator.evaluate('fuel > 50 and energy > 10', state),
        isTrue,
      );
    });
    test('and — one false', () {
      expect(
        GuardEvaluator.evaluate('fuel > 50 and energy > 30', state),
        isFalse,
      );
    });
    test('or — both true', () {
      expect(
        GuardEvaluator.evaluate('fuel > 50 or energy > 10', state),
        isTrue,
      );
    });
    test('or — one true', () {
      expect(
        GuardEvaluator.evaluate('fuel > 500 or energy > 10', state),
        isTrue,
      );
    });
    test('or — both false', () {
      expect(
        GuardEvaluator.evaluate('fuel > 500 or energy > 100', state),
        isFalse,
      );
    });
    test('not inverts', () {
      expect(GuardEvaluator.evaluate('not fuel > 500', state), isTrue);
      expect(GuardEvaluator.evaluate('not fuel > 50', state), isFalse);
    });
    test('chained and', () {
      expect(
        GuardEvaluator.evaluate(
          'fuel > 50 and energy > 10 and probes > 0',
          state,
        ),
        isTrue,
      );
    });
  });

  group('state variable resolution', () {
    test('encounter counter', () {
      expect(
        GuardEvaluator.evaluate('encounter >= 5', stateWith(encounterCount: 5)),
        isTrue,
      );
    });
    test('planetsScanned', () {
      expect(
        GuardEvaluator.evaluate(
          'planetsScanned > 2',
          stateWith(planetsScanned: 3),
        ),
        isTrue,
      );
    });
    test('colonists', () {
      expect(
        GuardEvaluator.evaluate('colonists > 500', stateWith(colonists: 1000)),
        isTrue,
      );
    });
    test('bare ship system name', () {
      final state = stateWith(ship: const ShipSystems(hull: 0.4));
      expect(GuardEvaluator.evaluate('hull < 0.5', state), isTrue);
    });
    test('dotted ship.system name', () {
      final state = stateWith(ship: const ShipSystems(nav: 0.8));
      expect(GuardEvaluator.evaluate('ship.nav > 0.7', state), isTrue);
    });
    test('scanner subsystem', () {
      final state = stateWith(ship: const ShipSystems(atmosphericScanner: 0.3));
      expect(
        GuardEvaluator.evaluate('atmosphericScanner < 0.5', state),
        isTrue,
      );
    });
  });

  group('malformed guards fail open', () {
    final state = stateWith();

    test('unknown variable → true (fail open, not crash)', () {
      expect(GuardEvaluator.evaluate('nonsense > 5', state), isTrue);
    });
    test('missing right operand → true', () {
      expect(GuardEvaluator.evaluate('fuel >', state), isTrue);
    });
    test('unknown operator → true', () {
      expect(GuardEvaluator.evaluate('fuel ~ 50', state), isTrue);
    });
    test('completely garbage → true', () {
      expect(GuardEvaluator.evaluate('!@#\$%', state), isTrue);
    });
  });

  group('numeric literal parsing', () {
    final state = stateWith(fuel: 100);
    test('integer literal', () {
      expect(GuardEvaluator.evaluate('fuel > 50', state), isTrue);
    });
    test('decimal literal', () {
      expect(GuardEvaluator.evaluate('fuel > 50.5', state), isTrue);
    });
    test('zero literal', () {
      expect(GuardEvaluator.evaluate('fuel > 0', state), isTrue);
    });
    test('negative literal would fail parse — fails open', () {
      // Tokenizer splits '-' from digits; not supported grammar.
      expect(GuardEvaluator.evaluate('fuel > -5', state), isTrue);
    });
  });

  group('realistic event guards', () {
    test('early-voyage guard', () {
      expect(
        GuardEvaluator.evaluate('encounter < 3', stateWith(encounterCount: 1)),
        isTrue,
      );
      expect(
        GuardEvaluator.evaluate('encounter < 3', stateWith(encounterCount: 5)),
        isFalse,
      );
    });
    test('low-fuel emergency', () {
      expect(
        GuardEvaluator.evaluate('fuel <= 20', stateWith(fuel: 15)),
        isTrue,
      );
    });
    test('critical hull guard', () {
      final crit = stateWith(ship: const ShipSystems(hull: 0.1));
      final ok = stateWith(ship: const ShipSystems(hull: 0.9));
      expect(GuardEvaluator.evaluate('hull < 0.25', crit), isTrue);
      expect(GuardEvaluator.evaluate('hull < 0.25', ok), isFalse);
    });
    test('compound resource guard', () {
      final state = stateWith(fuel: 30, probes: 2);
      expect(
        GuardEvaluator.evaluate('fuel >= 20 and probes >= 1', state),
        isTrue,
      );
    });
  });
}
