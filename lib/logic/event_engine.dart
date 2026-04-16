import 'dart:math';

import 'package:stellar_broadcast/logic/guard_evaluator.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Result of [EventEngine.getRandomEvent]: the selected event plus the
/// chain's [eventId] when the event came from [VoyageState.pendingChains].
typedef EventSelection = ({GameEvent event, String? chainEventId});

/// Core event resolution engine.
class EventEngine {
  EventEngine._();

  /// Picks a category-aware random event from [eventPool].
  ///
  /// The voyage is harsh — malfunctions are frequent and escalate over time.
  /// - encounter < 2: safe early events only
  /// - encounter 2-5: 30% malfunction, 10% boon, rest common/rare
  /// - encounter 6+: 40-65% malfunction (escalating), 5% boon, rest common
  ///
  /// If a chained event is due this encounter, it fires instead of the
  /// normal selection.
  ///
  /// Returns an [EventSelection] record so the caller knows which chain
  /// fired (if any) and can pass [chainEventId] through to [applyChoice].
  static EventSelection getRandomEvent(
    Random random,
    VoyageState state,
    List<GameEvent> eventPool, {
    Map<String, GameEvent>? eventIndex,
  }) {
    // Build an index for O(1) lookup of chained events by ID.
    final indexedEvents =
        eventIndex ?? <String, GameEvent>{for (final e in eventPool) e.id: e};

    // Check for pending chained events first.
    // We only return the first one found; others remain in pendingChains.
    for (final chain in state.pendingChains) {
      if (state.encounterCount >= chain.triggerAtEncounter) {
        final chained = indexedEvents[chain.eventId];
        if (chained != null) {
          return (event: chained, chainEventId: chain.eventId);
        }
      }
    }

    final encounter = state.encounterCount;

    // Convert seenEventIds to Set for O(1) contains checks.
    final seenSet = state.seenEventIds.toSet();

    // Build the filtered pool once: prefer unseen events, then apply guards.
    final unseen = eventPool.where((e) => !seenSet.contains(e.id)).toList();
    final pool = unseen.isNotEmpty ? unseen : eventPool;
    final guarded = pool
        .where((e) => GuardEvaluator.evaluate(e.guard, state))
        .toList();
    final available = guarded.isNotEmpty ? guarded : pool;

    // Pre-index available events by category — one pass instead of many.
    final byCategory = <EventCategory, List<GameEvent>>{};
    for (final e in available) {
      byCategory.putIfAbsent(e.category, () => []).add(e);
    }

    final malfunctions = byCategory[EventCategory.malfunction] ?? [];
    final boons = byCategory[EventCategory.boon] ?? [];
    final common = byCategory[EventCategory.common] ?? [];
    final rare = byCategory[EventCategory.rare] ?? [];
    final uneventful = byCategory[EventCategory.uneventful] ?? [];
    final early = byCategory[EventCategory.early] ?? [];

    List<GameEvent> candidates;

    if (encounter < 2) {
      // Early game: safe events only.
      candidates = [...early, ...uneventful, ...common];
    } else if (encounter < 6) {
      // Mid game: 30% malfunction, 10% boon.
      final roll = random.nextDouble();
      if (roll < 0.30) {
        if (malfunctions.isNotEmpty) {
          return _noChain(malfunctions[random.nextInt(malfunctions.length)]);
        }
      } else if (roll < 0.40) {
        if (boons.isNotEmpty) {
          return _noChain(boons[random.nextInt(boons.length)]);
        }
      }

      candidates = [...common, ...rare, ...uneventful];
    } else {
      // Late game: escalating malfunction chance (40% to 65%).
      final malfunctionChance =
          0.40 + ((encounter - 6).clamp(0, 10)) * 0.025; // 40% to 65%
      final roll = random.nextDouble();

      if (roll < malfunctionChance) {
        if (malfunctions.isNotEmpty) {
          return _noChain(malfunctions[random.nextInt(malfunctions.length)]);
        }
      } else if (roll < malfunctionChance + 0.05) {
        if (boons.isNotEmpty) {
          return _noChain(boons[random.nextInt(boons.length)]);
        }
      }

      // Rare events still possible but uncommon.
      candidates = [...common, ...rare, ...malfunctions];
    }

    if (candidates.isEmpty) candidates = available;
    if (candidates.isEmpty) candidates = pool; // fallback: skip guards
    if (candidates.isEmpty) {
      // Last-resort fallback. eventPool is normally non-empty (loaded from
      // YAML on startup), but if a future code path supplies an empty pool
      // we degrade to a no-op event rather than crashing.
      if (eventPool.isEmpty) return _noChain(_emptyEvent);
      return _noChain(eventPool[random.nextInt(eventPool.length)]);
    }
    return _noChain(candidates[random.nextInt(candidates.length)]);
  }

  /// Wraps a non-chain event in the [EventSelection] record.
  static EventSelection _noChain(GameEvent event) =>
      (event: event, chainEventId: null);

  static final GameEvent _emptyEvent = GameEvent(
    id: 'empty_fallback',
    title: '',
    narrative: '',
    choices: const [],
  );

  /// Resolves a weighted outcome for [choice] using [random].
  ///
  /// If the choice has [EventChoice.outcomes], picks one based on weights
  /// and returns a synthetic [EventChoice] with that outcome's effects.
  /// Otherwise returns the original choice unchanged.
  static EventChoice resolveOutcome(EventChoice choice, Random random) {
    final outcomes = choice.outcomes;
    if (outcomes == null || outcomes.isEmpty) return choice;

    final totalWeight = outcomes.fold<int>(0, (sum, o) => sum + o.weight);
    // Defensive: if every outcome has weight 0 (malformed YAML), pick the
    // first outcome uniformly instead of crashing on Random.nextInt(0).
    final WeightedOutcome selected;
    if (totalWeight <= 0) {
      selected = outcomes[random.nextInt(outcomes.length)];
    } else {
      var roll = random.nextInt(totalWeight);
      WeightedOutcome pick = outcomes.first;
      for (final o in outcomes) {
        roll -= o.weight;
        if (roll < 0) {
          pick = o;
          break;
        }
      }
      selected = pick;
    }

    return EventChoice(
      text: choice.text,
      outcome: selected.outcome,
      shipEffects: selected.shipEffects,
      planetModifiers: selected.planetModifiers,
      nextPlanetModifiers: selected.nextPlanetModifiers,
      probeCost: choice.probeCost, // cost is on the choice, not outcome
      probeDelta: selected.probeDelta,
      fuelDelta: selected.fuelDelta,
      energyDelta: selected.energyDelta,
      colonistDelta: selected.colonistDelta,
      opensPlanetScreen: selected.opensPlanetScreen,
      immediatePlanetMinHabitability: selected.immediatePlanetMinHabitability,
      guard: choice.guard,
      chain: selected.chain ?? choice.chain,
      authorityDelta: selected.authorityDelta,
      cultureDelta: selected.cultureDelta,
      economyDelta: selected.economyDelta,
      faithDelta: selected.faithDelta,
      militaryDelta: selected.militaryDelta,
    );
  }

  /// Applies a player's [choice] to the current [state], returning a new
  /// [VoyageState] with updated ship systems, planet modifiers, colonists,
  /// log, and probe deductions.
  ///
  /// If the choice has weighted outcomes, call [resolveOutcome] first to
  /// flatten it to a single-outcome choice before passing it here.
  static VoyageState applyChoice(
    VoyageState state,
    EventChoice choice,
    Random random, {
    String? triggeredEventId,
  }) {
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
        final perScanner =
            entry.value / ShipSystems.scannerSubsystemNames.length;
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
          pendingMods[entry.key] =
              (pendingMods[entry.key] ?? 0.0) + entry.value;
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

    // Schedule chained events. A delay of 0 means "the next encounter", not
    // "this already-resolving encounter"; otherwise the cleanup below would
    // immediately discard the chain before selection can see it.
    var pendingChains = List<PendingChain>.from(state.pendingChains);
    if (choice.chain != null) {
      final delay = max(1, choice.chain!.delay);
      pendingChains.add(
        PendingChain(
          eventId: choice.chain!.eventId,
          triggerAtEncounter: state.encounterCount + delay,
        ),
      );
    }

    // Remove the chain that just fired, and any ancient orphans.
    pendingChains = pendingChains.where((c) {
      // Keep if it's in the future.
      if (c.triggerAtEncounter > state.encounterCount) return true;
      // Keep if it's due but wasn't the one that just fired.
      if (triggeredEventId != null && c.eventId != triggeredEventId) {
        return true;
      }
      // Drop if it's the one that fired, or it's an old expired orphan.
      return false;
    }).toList();

    // Apply governance axis shifts.
    final authorityAxis = (state.authorityAxis + choice.authorityDelta).clamp(
      -1.0,
      1.0,
    );
    final cultureAxis = (state.cultureAxis + choice.cultureDelta).clamp(
      -1.0,
      1.0,
    );
    final economyAxis = (state.economyAxis + choice.economyDelta).clamp(
      -1.0,
      1.0,
    );
    final faithAxis = (state.faithAxis + choice.faithDelta).clamp(-1.0, 1.0);
    final militaryAxis = (state.militaryAxis + choice.militaryDelta).clamp(
      -1.0,
      1.0,
    );

    return state.copyWith(
      ship: ship,
      currentPlanet: planet,
      probes: probes,
      fuel: fuel,
      energy: energy,
      colonists: colonists,
      pendingPlanetModifiers: pendingMods,
      pendingChains: pendingChains,
      log: List<String>.of(state.log)..add(choice.outcome),
      authorityAxis: authorityAxis,
      cultureAxis: cultureAxis,
      economyAxis: economyAxis,
      faithAxis: faithAxis,
      militaryAxis: militaryAxis,
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
      double apply(double current) => (current + entry.value).clamp(0.0, 1.0);

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
