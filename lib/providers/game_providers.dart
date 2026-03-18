import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/logic/ending_calculator.dart';
import 'package:starbound_exodus/logic/event_engine.dart';
import 'package:starbound_exodus/logic/planet_generator.dart';
import 'package:starbound_exodus/models/event.dart';
import 'package:starbound_exodus/models/legacy.dart';
import 'package:starbound_exodus/models/ship.dart';
import 'package:starbound_exodus/models/voyage_state.dart';

// ═══════════════════════════════════════════════════════════════════════════
// Voyage
// ═══════════════════════════════════════════════════════════════════════════

final voyageProvider =
    StateNotifierProvider<VoyageNotifier, VoyageState>((ref) {
  return VoyageNotifier();
});

class VoyageNotifier extends StateNotifier<VoyageState> {
  VoyageNotifier() : super(const VoyageState());

  final Random _random = Random();

  /// Begins a fresh voyage with pristine ship systems.
  void startVoyage() {
    state = const VoyageState();
  }

  /// Generates a new planet and assigns it as the current scan target.
  void scanPlanet() {
    final planet = PlanetGenerator.generate(_random);
    state = state.copyWith(
      currentPlanet: planet,
      log: [...state.log, 'Scanned ${planet.name} — ${planet.tier}.'],
    );
  }

  /// Triggers a random narrative event and returns it for the UI to display.
  GameEvent triggerEvent() {
    final event = EventEngine.getRandomEvent(_random, state);
    state = state.copyWith(
      seenEventIds: [...state.seenEventIds, event.id],
    );
    return event;
  }

  /// Applies the player's chosen [EventChoice] to the current state.
  void handleEvent(EventChoice choice) {
    state = EventEngine.applyChoice(state, choice);
    state = state.copyWith(
      encounterCount: state.encounterCount + 1,
    );

    // Auto-complete if max encounters reached.
    if (state.encounterCount >= state.maxEncounters) {
      state = state.copyWith(isComplete: true);
    }
  }

  /// Accept the current planet and end the voyage (triggers ending).
  EndingResult landOnPlanet() {
    if (state.currentPlanet == null) {
      throw StateError('No planet scanned — cannot land.');
    }

    final result =
        EndingCalculator.calculate(state.ship, state.currentPlanet!);

    state = state.copyWith(
      isComplete: true,
      log: [
        ...state.log,
        'Landed on ${state.currentPlanet!.name}. Score: ${result.score}.',
      ],
    );

    return result;
  }

  /// Reject the current planet and continue the voyage.
  void pressOn() {
    state = state.copyWith(
      clearPlanet: true,
      encounterCount: state.encounterCount + 1,
      log: [
        ...state.log,
        if (state.currentPlanet != null)
          'Left ${state.currentPlanet!.name} behind and pressed on.',
      ],
    );

    // Degrade a random system slightly for the continued journey.
    final system =
        ShipSystems.systemNames[_random.nextInt(ShipSystems.systemNames.length)];
    final degraded = state.ship.degrade(system, 0.03 + _random.nextDouble() * 0.05);
    state = state.copyWith(ship: degraded);

    // Auto-complete if max encounters reached.
    if (state.encounterCount >= state.maxEncounters) {
      state = state.copyWith(isComplete: true);
    }
  }

  /// Resets the voyage to the initial state.
  void reset() {
    state = const VoyageState();
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Legacy (meta-progression)
// ═══════════════════════════════════════════════════════════════════════════

final legacyProvider =
    StateNotifierProvider<LegacyNotifier, LegacyData>((ref) {
  return LegacyNotifier();
});

class LegacyNotifier extends StateNotifier<LegacyData> {
  LegacyNotifier() : super(const LegacyData());

  /// Records a completed voyage and awards legacy points based on [score].
  void addVoyageResult(int score) {
    final points = (score / 10).ceil(); // 1-10 points per voyage
    state = state.copyWith(
      totalVoyages: state.totalVoyages + 1,
      bestScore: score > state.bestScore ? score : state.bestScore,
      legacyPoints: state.legacyPoints + points,
    );
  }

  /// Unlocks a named achievement if not already present.
  void unlockAchievement(String achievement) {
    if (state.achievements.contains(achievement)) return;
    state = state.copyWith(
      achievements: [...state.achievements, achievement],
      legacyPoints: state.legacyPoints + 5, // bonus for new achievement
    );
  }

  /// Purchases a named upgrade if not already owned and enough points.
  bool purchaseUpgrade(String upgrade, {int cost = 10}) {
    if (state.upgrades[upgrade] == true) return false;
    if (state.legacyPoints < cost) return false;

    state = state.copyWith(
      upgrades: {...state.upgrades, upgrade: true},
      legacyPoints: state.legacyPoints - cost,
    );
    return true;
  }

  /// Spends legacy points (generic deduction).
  bool spendPoints(int amount) {
    if (state.legacyPoints < amount) return false;
    state = state.copyWith(legacyPoints: state.legacyPoints - amount);
    return true;
  }
}
