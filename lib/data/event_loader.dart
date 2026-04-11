import 'package:flutter/services.dart' show rootBundle;
import 'package:yaml/yaml.dart';

import 'package:stellar_broadcast/models/event.dart';

/// Loads [GameEvent]s from YAML asset files.
class EventLoader {
  EventLoader._();

  /// Loads all events from [assetPath].
  ///
  /// [resolve] maps an l10n key (without the "@" prefix) to a localized
  /// string. Keys in YAML prefixed with "@" are passed through this function.
  /// Plain strings are used as-is.
  static Future<List<GameEvent>> loadEvents(
    String assetPath,
    String Function(String key) resolve,
  ) async {
    final yamlString = await rootBundle.loadString(assetPath);
    return parseEventsFromYaml(yamlString, resolve);
  }

  /// Parses events from a raw YAML string. Useful for testing without assets.
  static List<GameEvent> parseEventsFromYaml(
    String yamlString,
    String Function(String key) resolve,
  ) {
    final doc = loadYaml(yamlString);
    if (doc is! YamlMap || doc['events'] is! YamlList) {
      return const []; // Malformed YAML — return empty pool rather than crash
    }
    final eventList = doc['events'] as YamlList;
    final events = <GameEvent>[];
    for (final e in eventList) {
      try {
        events.add(_parseEvent(e as YamlMap, resolve));
      } catch (_) {
        // Skip malformed events rather than crash
      }
    }
    return events;
  }

  static GameEvent _parseEvent(
    YamlMap map,
    String Function(String) resolve,
  ) {
    final choices = (map['choices'] as YamlList?)
            ?.map((c) => _parseChoice(c as YamlMap, resolve))
            .toList() ??
        const [];

    return GameEvent(
      id: map['id']?.toString() ?? 'unknown',
      title: _resolveString(map['title'], resolve),
      narrative: _resolveString(map['narrative'], resolve),
      choices: choices,
      category: _parseCategory(map['category'] as String?),
      openTraderScreen: map['openTraderScreen'] as bool? ?? false,
      tags: _parseStringList(map['tags']),
      guard: map['guard'] as String?,
      route: map['route'] as String?,
    );
  }

  static EventChoice _parseChoice(
    YamlMap map,
    String Function(String) resolve,
  ) {
    final outcomesRaw = map['outcomes'] as YamlList?;
    final outcomes = outcomesRaw
        ?.map((o) => _parseWeightedOutcome(o as YamlMap, resolve))
        .toList();

    return EventChoice(
      text: _resolveString(map['text'], resolve),
      outcome: map['outcome'] != null
          ? _resolveString(map['outcome'], resolve)
          : '',
      shipEffects: _parseDoubleMap(map['ship']),
      planetModifiers: _parseDoubleMap(map['planet']),
      nextPlanetModifiers: _parseDoubleMap(map['nextPlanet']),
      probeCost: map['probeCost'] as int? ?? 0,
      probeDelta: map['probes'] as int? ?? 0,
      fuelDelta: map['fuel'] as int? ?? 0,
      energyDelta: map['energy'] as int? ?? 0,
      colonistDelta: map['colonists'] as int? ?? 0,
      opensPlanetScreen: map['opensPlanetScreen'] as bool? ?? false,
      immediatePlanetMinHabitability:
          (map['minHabitability'] as num?)?.toDouble() ?? 0.0,
      guard: map['guard'] as String?,
      outcomes: outcomes,
      chain: _parseChain(map['chain']),
      authorityDelta: (map['authority'] as num?)?.toDouble() ?? 0.0,
      cultureDelta: (map['culture'] as num?)?.toDouble() ?? 0.0,
      economyDelta: (map['economy'] as num?)?.toDouble() ?? 0.0,
      faithDelta: (map['faith'] as num?)?.toDouble() ?? 0.0,
      militaryDelta: (map['military'] as num?)?.toDouble() ?? 0.0,
    );
  }

  static WeightedOutcome _parseWeightedOutcome(
    YamlMap map,
    String Function(String) resolve,
  ) {
    return WeightedOutcome(
      weight: (map['weight'] as int?) ?? 50,
      outcome: _resolveString(map['outcome'], resolve),
      shipEffects: _parseDoubleMap(map['ship']),
      planetModifiers: _parseDoubleMap(map['planet']),
      nextPlanetModifiers: _parseDoubleMap(map['nextPlanet']),
      probeDelta: map['probes'] as int? ?? 0,
      fuelDelta: map['fuel'] as int? ?? 0,
      energyDelta: map['energy'] as int? ?? 0,
      colonistDelta: map['colonists'] as int? ?? 0,
      opensPlanetScreen: map['opensPlanetScreen'] as bool? ?? false,
      immediatePlanetMinHabitability:
          (map['minHabitability'] as num?)?.toDouble() ?? 0.0,
      chain: _parseChain(map['chain']),
      authorityDelta: (map['authority'] as num?)?.toDouble() ?? 0.0,
      cultureDelta: (map['culture'] as num?)?.toDouble() ?? 0.0,
      economyDelta: (map['economy'] as num?)?.toDouble() ?? 0.0,
      faithDelta: (map['faith'] as num?)?.toDouble() ?? 0.0,
      militaryDelta: (map['military'] as num?)?.toDouble() ?? 0.0,
    );
  }

  static EventChain? _parseChain(dynamic raw) {
    if (raw == null) return null;
    final map = raw as YamlMap;
    return EventChain(
      eventId: map['event'] as String,
      delay: map['delay'] as int,
    );
  }

  static EventCategory _parseCategory(String? raw) {
    if (raw == null) return EventCategory.common;
    switch (raw) {
      case 'early':
        return EventCategory.early;
      case 'common':
        return EventCategory.common;
      case 'rare':
        return EventCategory.rare;
      case 'uneventful':
        return EventCategory.uneventful;
      case 'malfunction':
        return EventCategory.malfunction;
      case 'boon':
        return EventCategory.boon;
      default:
        return EventCategory.common;
    }
  }

  static String _resolveString(dynamic value, String Function(String) resolve) {
    if (value == null) return '';
    final s = value.toString();
    if (s.startsWith('@')) return resolve(s.substring(1));
    return s;
  }

  static Map<String, double> _parseDoubleMap(dynamic raw) {
    if (raw == null) return const {};
    final map = raw as YamlMap;
    return map.map(
      (k, v) => MapEntry(k.toString(), (v as num).toDouble()),
    );
  }

  static List<String> _parseStringList(dynamic raw) {
    if (raw == null) return const [];
    return (raw as YamlList).map((e) => e.toString()).toList();
  }
}
