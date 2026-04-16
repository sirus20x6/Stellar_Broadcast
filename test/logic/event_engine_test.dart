import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/logic/event_engine.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

void main() {
  group('EventEngine.resolveOutcome', () {
    test('no outcomes → returns original choice', () {
      const choice = EventChoice(text: 'X', outcome: 'y');
      final resolved = EventEngine.resolveOutcome(choice, Random(0));
      expect(identical(resolved, choice), isTrue);
    });

    test('single outcome → resolves to that outcome', () {
      const choice = EventChoice(
        text: 'do it',
        outcome: '',
        outcomes: [
          WeightedOutcome(
            weight: 100,
            outcome: 'great',
            shipEffects: {'hull': 0.1},
          ),
        ],
      );
      final resolved = EventEngine.resolveOutcome(choice, Random(0));
      expect(resolved.outcome, 'great');
      expect(resolved.shipEffects['hull'], 0.1);
    });

    test('weighted outcomes respect distribution (~1% tolerance)', () {
      const choice = EventChoice(
        text: 'roll',
        outcome: '',
        outcomes: [
          WeightedOutcome(weight: 80, outcome: 'A'),
          WeightedOutcome(weight: 20, outcome: 'B'),
        ],
      );

      final rng = Random(42);
      var aCount = 0;
      var bCount = 0;
      for (var i = 0; i < 10000; i++) {
        final r = EventEngine.resolveOutcome(choice, rng);
        if (r.outcome == 'A') aCount++;
        if (r.outcome == 'B') bCount++;
      }
      // Expect 80%/20% ± 1.5% (6sigma for 10k samples)
      expect(aCount / 10000, closeTo(0.8, 0.015));
      expect(bCount / 10000, closeTo(0.2, 0.015));
    });

    test('always picks an outcome (never returns no result)', () {
      const choice = EventChoice(
        text: 'x',
        outcome: '',
        outcomes: [
          WeightedOutcome(weight: 1, outcome: 'a'),
          WeightedOutcome(weight: 1, outcome: 'b'),
          WeightedOutcome(weight: 1, outcome: 'c'),
        ],
      );
      for (var seed = 0; seed < 100; seed++) {
        final r = EventEngine.resolveOutcome(choice, Random(seed));
        expect(['a', 'b', 'c'], contains(r.outcome));
      }
    });
  });

  group('EventEngine.applyChoice — ship effects', () {
    const start = VoyageState();

    test('positive hull delta boosts hull, clamps to 1.0', () {
      const choice = EventChoice(
        text: 'repair',
        outcome: 'ok',
        shipEffects: {'hull': 0.3},
      );
      final before = start.copyWith(ship: const ShipSystems(hull: 0.5));
      final after = EventEngine.applyChoice(before, choice, Random(0));
      expect(after.ship.hull, closeTo(0.8, 1e-9));
    });

    test('negative hull delta degrades, clamps to 0.0', () {
      const choice = EventChoice(
        text: 'take damage',
        outcome: 'hurt',
        shipEffects: {'hull': -0.3},
      );
      final before = start.copyWith(ship: const ShipSystems(hull: 0.5));
      final after = EventEngine.applyChoice(before, choice, Random(0));
      expect(after.ship.hull, closeTo(0.2, 1e-9));
    });

    test("'scanners' meta-key distributes across all 6 subsystems", () {
      const choice = EventChoice(
        text: 'boost',
        outcome: '',
        shipEffects: {'scanners': 0.6},
      );
      final before = start.copyWith(
        ship: const ShipSystems(
          atmosphericScanner: 0.0,
          gravimetricScanner: 0.0,
          mineralScanner: 0.0,
          lifeSignsScanner: 0.0,
          temperatureScanner: 0.0,
          waterScanner: 0.0,
        ),
      );
      final after = EventEngine.applyChoice(before, choice, Random(0));
      // 0.6 split across 6 scanners = 0.1 each
      for (final name in ShipSystems.scannerSubsystemNames) {
        expect(after.ship.getSystem(name), closeTo(0.1, 1e-9));
      }
    });
  });

  group('EventEngine.applyChoice — resources', () {
    const start = VoyageState(fuel: 100, energy: 20, probes: 5);

    test('probe cost deducted from probes', () {
      const choice = EventChoice(text: 'use probe', outcome: '', probeCost: 2);
      final after = EventEngine.applyChoice(start, choice, Random(0));
      expect(after.probes, 3);
    });

    test('probe delta is separate from probe cost', () {
      const choice = EventChoice(
        text: 'use 2, gain 3',
        outcome: '',
        probeCost: 2,
        probeDelta: 3,
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      expect(after.probes, 6);
    });

    test('fuel and energy deltas apply', () {
      const choice = EventChoice(
        text: 'refuel',
        outcome: '',
        fuelDelta: 25,
        energyDelta: 10,
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      expect(after.fuel, 125);
      expect(after.energy, 30);
    });

    test('resource deltas clamp to zero (cannot go negative)', () {
      const choice = EventChoice(
        text: 'steal',
        outcome: '',
        fuelDelta: -500,
        energyDelta: -500,
        probeDelta: -500,
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      expect(after.fuel, 0);
      expect(after.energy, 0);
      expect(after.probes, 0);
    });
  });

  group('EventEngine.applyChoice — cryopod damage kills colonists', () {
    test('cryopod damage scales colonist loss by damage * 0.5', () {
      const start = VoyageState(colonists: 1000);
      const choice = EventChoice(
        text: 'cryopod failure',
        outcome: 'bad',
        shipEffects: {'cryopods': -0.4}, // 40% damage
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      // Expected kill = round(1000 * 0.4 * 0.5) = 200
      expect(after.colonists, 800);
    });

    test('positive cryopod boost does NOT kill colonists', () {
      const start = VoyageState(colonists: 1000);
      const choice = EventChoice(
        text: 'cryopod repair',
        outcome: '',
        shipEffects: {'cryopods': 0.2},
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      expect(after.colonists, 1000);
    });

    test('colonist delta + cryopod damage both apply', () {
      const start = VoyageState(colonists: 1000);
      const choice = EventChoice(
        text: 'catastrophic failure',
        outcome: '',
        shipEffects: {'cryopods': -0.2},
        colonistDelta: -50,
      );
      final after = EventEngine.applyChoice(start, choice, Random(0));
      // delta applied first (1000 → 950), then cryopod kill:
      // round(950 * 0.2 * 0.5) = 95 → 855
      expect(after.colonists, 855);
    });
  });

  group('EventEngine.applyChoice — chained events', () {
    test('delay 0 schedules the chain for the next encounter', () {
      const start = VoyageState(encounterCount: 8);
      const choice = EventChoice(
        text: 'boost signal',
        outcome: 'response incoming',
        chain: EventChain(eventId: 'earth_goodbye', delay: 0),
      );

      final after = EventEngine.applyChoice(start, choice, Random(0));

      expect(after.pendingChains, hasLength(1));
      expect(after.pendingChains.single.eventId, 'earth_goodbye');
      expect(after.pendingChains.single.triggerAtEncounter, 9);
    });

    test('already-fired chains are still cleaned up', () {
      const start = VoyageState(
        encounterCount: 8,
        pendingChains: [
          PendingChain(eventId: 'old_news', triggerAtEncounter: 8),
        ],
      );

      final after = EventEngine.applyChoice(
        start,
        const EventChoice(text: 'continue', outcome: ''),
        Random(0),
      );

      expect(after.pendingChains, isEmpty);
    });
  });
}
