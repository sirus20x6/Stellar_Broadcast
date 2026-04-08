import 'dart:math';

import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Core event resolution engine.
class EventEngine {
  EventEngine._();

  /// Picks a category-aware random event from [eventPool].
  ///
  /// The voyage is harsh — malfunctions are frequent and escalate over time.
  /// - encounter < 2: safe early events only
  /// - encounter 2-5: 30% malfunction, 10% boon, rest common/rare
  /// - encounter 6+: 40-65% malfunction (escalating), 5% boon, rest common
  static GameEvent getRandomEvent(
    Random random,
    VoyageState state,
    List<GameEvent> eventPool,
  ) {
    final encounter = state.encounterCount;
    final unseen =
        eventPool.where((e) => !state.seenEventIds.contains(e.id)).toList();
    final pool = unseen.isNotEmpty ? unseen : eventPool;

    List<GameEvent> candidates;

    if (encounter < 2) {
      // Early game: safe events only.
      candidates = pool
          .where((e) =>
              e.category == EventCategory.early ||
              e.category == EventCategory.uneventful ||
              e.category == EventCategory.common)
          .toList();
    } else if (encounter < 6) {
      // Mid game: 30% malfunction, 10% boon.
      final roll = random.nextDouble();
      if (roll < 0.30) {
        final malfunctions =
            pool.where((e) => e.category == EventCategory.malfunction).toList();
        if (malfunctions.isNotEmpty) {
          return malfunctions[random.nextInt(malfunctions.length)];
        }
      } else if (roll < 0.40) {
        final boons =
            pool.where((e) => e.category == EventCategory.boon).toList();
        if (boons.isNotEmpty) return boons[random.nextInt(boons.length)];
      }

      candidates = pool
          .where((e) =>
              e.category == EventCategory.common ||
              e.category == EventCategory.rare ||
              e.category == EventCategory.uneventful)
          .toList();
    } else {
      // Late game: escalating malfunction chance (40% to 65%).
      final malfunctionChance =
          0.40 + ((encounter - 6).clamp(0, 10)) * 0.025; // 40% to 65%
      final roll = random.nextDouble();

      if (roll < malfunctionChance) {
        final malfunctions =
            pool.where((e) => e.category == EventCategory.malfunction).toList();
        if (malfunctions.isNotEmpty) {
          return malfunctions[random.nextInt(malfunctions.length)];
        }
      }

      if (roll < malfunctionChance + 0.05) {
        final boons =
            pool.where((e) => e.category == EventCategory.boon).toList();
        if (boons.isNotEmpty) return boons[random.nextInt(boons.length)];
      }

      // Rare events still possible but uncommon.
      candidates = pool
          .where((e) =>
              e.category == EventCategory.common ||
              e.category == EventCategory.rare ||
              e.category == EventCategory.malfunction)
          .toList();
    }

    if (candidates.isEmpty) candidates = pool;
    return candidates[random.nextInt(candidates.length)];
  }

  /// Applies a player's [choice] to the current [state], returning a new
  /// [VoyageState] with updated ship systems, planet modifiers, colonists,
  /// log, and probe deductions.
  static VoyageState applyChoice(VoyageState state, EventChoice choice, Random random) {
    // Deduct probe cost, then apply probe delta.
    var probes = state.probes;
    if (choice.probeCost > 0) {
      probes = (probes - choice.probeCost).clamp(0, 999);
    }
    if (choice.probeDelta != 0) {
      probes = (probes + choice.probeDelta).clamp(0, 999);
    }

    // Apply fuel and energy deltas.
    var fuel = state.fuel;
    if (choice.fuelDelta != 0) {
      fuel = (fuel + choice.fuelDelta).clamp(0, 999);
    }
    var energy = state.energy;
    if (choice.energyDelta != 0) {
      energy = (energy + choice.energyDelta).clamp(0, 999);
    }

    // Expand meta-keys: 'scanners' splits effect equally across all 6 scanner subsystems.
    final remapped = <String, double>{};
    for (final entry in choice.shipEffects.entries) {
      if (entry.key == 'scanners') {
        final perScanner = entry.value / ShipSystems.scannerSubsystemNames.length;
        for (final sub in ShipSystems.scannerSubsystemNames) {
          remapped[sub] = (remapped[sub] ?? 0) + perScanner;
        }
      } else {
        remapped[entry.key] = (remapped[entry.key] ?? 0) + entry.value;
      }
    }

    // Apply ship system effects.
    var ship = state.ship;
    for (final entry in remapped.entries) {
      final delta = entry.value;
      if (delta >= 0) {
        ship = ship.boost(entry.key, delta);
      } else {
        ship = ship.degrade(entry.key, delta.abs());
      }
    }

    // Apply colonist delta.
    var colonists = state.colonists;
    if (choice.colonistDelta != 0) {
      colonists = (colonists + choice.colonistDelta).clamp(0, 99999);
    }

    // On cryopod damage, kill proportional colonists.
    if (choice.shipEffects.containsKey('cryopods') &&
        choice.shipEffects['cryopods']! < 0) {
      final cryoDamage = choice.shipEffects['cryopods']!.abs();
      final killed = (colonists * cryoDamage * 0.5).round();
      colonists = (colonists - killed).clamp(0, 99999);
    }

    // Apply planet modifiers to the current planet if one is scanned,
    // otherwise store them as pending for the next planet scan.
    var planet = state.currentPlanet;
    var pendingMods = Map<String, double>.from(state.pendingPlanetModifiers);

    if (choice.planetModifiers.isNotEmpty) {
      if (planet != null) {
        planet = _applyPlanetModifiers(planet, choice.planetModifiers);
      } else {
        // No current planet — store as pending for next scan.
        for (final entry in choice.planetModifiers.entries) {
          pendingMods[entry.key] = (pendingMods[entry.key] ?? 0.0) + entry.value;
        }
      }
    }

    // Accumulate explicit next-planet modifiers (always deferred,
    // e.g. "aim terraforming device at our target system").
    if (choice.nextPlanetModifiers.isNotEmpty) {
      for (final entry in choice.nextPlanetModifiers.entries) {
        pendingMods[entry.key] = (pendingMods[entry.key] ?? 0.0) + entry.value;
      }
    }

    return state.copyWith(
      ship: ship,
      currentPlanet: planet,
      probes: probes,
      fuel: fuel,
      energy: energy,
      colonists: colonists,
      pendingPlanetModifiers: pendingMods,
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
    var rad = planet.radiation;
    var natPres = planet.nativePresence;
    var natDisp = planet.nativeDisposition;

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
        case 'radiation':
          rad = apply(rad);
          break;
        case 'nativePresence':
          natPres = apply(natPres);
          break;
        case 'nativeDisposition':
          natDisp = apply(natDisp);
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
      radiation: rad,
      nativePresence: natPres,
      nativeDisposition: natDisp,
    );
  }
}
