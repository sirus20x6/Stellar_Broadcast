/// Narrative event model for Starbound Exodus.
///
/// Each [GameEvent] presents a scenario with multiple [EventChoice]s that
/// carry consequences for ship systems and/or planet modifiers.
class GameEvent {
  final String id;
  final String title;
  final String narrative;
  final List<EventChoice> choices;

  const GameEvent({
    required this.id,
    required this.title,
    required this.narrative,
    required this.choices,
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

  const EventChoice({
    required this.text,
    required this.outcome,
    this.shipEffects = const {},
    this.planetModifiers = const {},
  });

  @override
  String toString() => 'EventChoice("$text")';
}
