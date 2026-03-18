import 'package:starbound_exodus/models/planet.dart';
import 'package:starbound_exodus/models/ship.dart';

/// Snapshot of an in-progress voyage.
class VoyageState {
  final ShipSystems ship;
  final Planet? currentPlanet;
  final int encounterCount;
  final int maxEncounters;
  final List<String> log;
  final bool isComplete;

  /// IDs of events already seen this voyage, used to avoid repeats.
  final List<String> seenEventIds;

  const VoyageState({
    this.ship = const ShipSystems(),
    this.currentPlanet,
    this.encounterCount = 0,
    this.maxEncounters = 8,
    this.log = const [],
    this.isComplete = false,
    this.seenEventIds = const [],
  });

  VoyageState copyWith({
    ShipSystems? ship,
    Planet? currentPlanet,
    bool clearPlanet = false,
    int? encounterCount,
    int? maxEncounters,
    List<String>? log,
    bool? isComplete,
    List<String>? seenEventIds,
  }) {
    return VoyageState(
      ship: ship ?? this.ship,
      currentPlanet: clearPlanet ? null : (currentPlanet ?? this.currentPlanet),
      encounterCount: encounterCount ?? this.encounterCount,
      maxEncounters: maxEncounters ?? this.maxEncounters,
      log: log ?? this.log,
      isComplete: isComplete ?? this.isComplete,
      seenEventIds: seenEventIds ?? this.seenEventIds,
    );
  }

  @override
  String toString() =>
      'VoyageState(encounter: $encounterCount/$maxEncounters, '
      'planet: ${currentPlanet?.name ?? "none"}, complete: $isComplete)';
}
