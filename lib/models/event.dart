/// Event categories for weighted selection.
enum EventCategory { early, common, rare, uneventful, malfunction, boon }

/// Narrative event model for Stellar Broadcast.
///
/// Each [GameEvent] presents a scenario with multiple [EventChoice]s that
/// carry consequences for ship systems and/or planet modifiers.
class GameEvent {
  final String id;
  final String title;
  final String narrative;
  final List<EventChoice> choices;
  final EventCategory category;

  /// When true, the event screen navigates to the trader screen instead of
  /// presenting choice buttons. The [choices] list is typically empty.
  final bool openTraderScreen;

  const GameEvent({
    required this.id,
    required this.title,
    required this.narrative,
    required this.choices,
    this.category = EventCategory.common,
    this.openTraderScreen = false,
  });

  @override
  String toString() => 'GameEvent($id: $title)';
}

class EventChoice {
  /// Button / option text shown to the player.
  final String text;

  /// Narrative result text displayed after the choice is made.
  final String outcome;

  /// Deltas applied to [ShipSystems] fields. Keys must match
  /// [ShipSystems.systemNames]. Positive values boost, negative degrade.
  final Map<String, double> shipEffects;

  /// Deltas applied to the current [Planet] stats. Keys must match
  /// [Planet.statNames]. Typically used for discoveries that reframe the
  /// planet's viability.
  final Map<String, double> planetModifiers;

  /// Deltas applied to the *next* planet scanned (not the current one).
  /// Used for events that narratively target a future destination, such as
  /// activating a terraforming device aimed at a distant system.
  final Map<String, double> nextPlanetModifiers;

  /// Number of probes consumed when this choice is selected.
  /// Choices with probeCost > 0 are disabled if the player lacks probes.
  final int probeCost;

  /// Change in probe count (positive = gain, negative = lose).
  /// Applied after probeCost deduction. Use for events that grant probes.
  final int probeDelta;

  /// Change in fuel (positive = gain, negative = lose).
  final int fuelDelta;

  /// Change in energy (positive = gain, negative = lose).
  final int energyDelta;

  /// Change in colonist count when this choice is selected.
  final int colonistDelta;

  /// Whether this choice should immediately generate a planet and open the
  /// scan flow instead of only modifying a future world.
  final bool opensPlanetScreen;

  /// Minimum habitability target when [opensPlanetScreen] is true.
  final double immediatePlanetMinHabitability;

  const EventChoice({
    required this.text,
    required this.outcome,
    this.shipEffects = const {},
    this.planetModifiers = const {},
    this.nextPlanetModifiers = const {},
    this.probeCost = 0,
    this.probeDelta = 0,
    this.fuelDelta = 0,
    this.energyDelta = 0,
    this.colonistDelta = 0,
    this.opensPlanetScreen = false,
    this.immediatePlanetMinHabitability = 0.0,
  });

  @override
  String toString() => 'EventChoice("$text")';
}
