import 'dart:math';

import 'package:starbound_exodus/data/events.dart';
import 'package:starbound_exodus/models/event.dart';
import 'package:starbound_exodus/models/planet.dart';
import 'package:starbound_exodus/models/voyage_state.dart';

/// Core event resolution engine.
class EventEngine {
  EventEngine._();

  /// Picks a random event from [eventPool] that hasn't been seen this voyage.
  ///
  /// If all events have been seen the pool resets (shouldn't happen with 30+
  /// events and 8 encounters, but safety first).
  static GameEvent getRandomEvent(Random random, VoyageState state) {
    final unseen =
        eventPool.where((e) => !state.seenEventIds.contains(e.id)).toList();

    final pool = unseen.isNotEmpty ? unseen : eventPool;
    return pool[random.nextInt(pool.length)];
  }

  /// Applies a player's [choice] to the current [state], returning a new
  /// [VoyageState] with updated ship systems, planet modifiers, and log.
  static VoyageState applyChoice(VoyageState state, EventChoice choice) {
    // Apply ship system effects.
    var ship = state.ship;
    for (final entry in choice.shipEffects.entries) {
      final delta = entry.value;
      if (delta >= 0) {
        ship = ship.boost(entry.key, delta);
      } else {
        ship = ship.degrade(entry.key, delta.abs());
      }
    }

    // Apply planet modifiers (if a planet is currently scanned).
    var planet = state.currentPlanet;
    if (planet != null && choice.planetModifiers.isNotEmpty) {
      planet = _applyPlanetModifiers(planet, choice.planetModifiers);
    }

    return state.copyWith(
      ship: ship,
      currentPlanet: planet,
      log: [...state.log, choice.outcome],
    );
  }

  static Planet _applyPlanetModifiers(
    Planet planet,
    Map<String, double> modifiers,
  ) {
    var atm = planet.atmosphere;
    var temp = planet.temperature;
    var wat = planet.water;
    var res = planet.resources;
    var grav = planet.gravity;
    var bio = planet.biodiversity;
    var anom = planet.anomaly;

    for (final entry in modifiers.entries) {
      double apply(double current) =>
          (current + entry.value).clamp(0.0, 1.0);

      switch (entry.key) {
        case 'atmosphere':
          atm = apply(atm);
          break;
        case 'temperature':
          temp = apply(temp);
          break;
        case 'water':
          wat = apply(wat);
          break;
        case 'resources':
          res = apply(res);
          break;
        case 'gravity':
          grav = apply(grav);
          break;
        case 'biodiversity':
          bio = apply(bio);
          break;
        case 'anomaly':
          anom = apply(anom);
          break;
      }
    }

    return planet.copyWith(
      atmosphere: atm,
      temperature: temp,
      water: wat,
      resources: res,
      gravity: grav,
      biodiversity: bio,
      anomaly: anom,
    );
  }
}
