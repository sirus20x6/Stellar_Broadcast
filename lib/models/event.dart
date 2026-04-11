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

  /// Optional tags for filtering and visualization (e.g. [hazard, alien]).
  final List<String> tags;

  /// Guard expression evaluated against [VoyageState]. If non-null and
  /// evaluates to false, this event is excluded from the candidate pool.
  final String? guard;

  /// Dedicated screen route (e.g. "/black-hole"). If null, uses the
  /// generic "/event" route.
  final String? route;

  const GameEvent({
    required this.id,
    required this.title,
    required this.narrative,
    required this.choices,
    this.category = EventCategory.common,
    this.openTraderScreen = false,
    this.tags = const [],
    this.guard,
    this.route,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'narrative': narrative,
        'choices': choices.map((c) => c.toJson()).toList(),
        'category': category.name,
        'openTraderScreen': openTraderScreen,
        'tags': tags,
        'guard': guard,
        'route': route,
      };

  factory GameEvent.fromJson(Map<String, dynamic> json) => GameEvent(
        id: json['id'] as String,
        title: json['title'] as String,
        narrative: json['narrative'] as String,
        choices: (json['choices'] as List<dynamic>)
            .map((c) => EventChoice.fromJson(c as Map<String, dynamic>))
            .toList(),
        category: json['category'] != null
            ? EventCategory.values.byName(json['category'] as String)
            : EventCategory.common,
        openTraderScreen: json['openTraderScreen'] as bool? ?? false,
        tags: (json['tags'] as List<dynamic>?)?.cast<String>() ?? const [],
        guard: json['guard'] as String?,
        route: json['route'] as String?,
      );

  @override
  String toString() => 'GameEvent($id: $title)';
}

class EventChoice {
  /// Button / option text shown to the player.
  final String text;

  /// Narrative result text displayed after the choice is made.
  /// Ignored when [outcomes] is non-null (weighted outcomes supply their own).
  final String outcome;

  /// Deltas applied to [ShipSystems] fields. Keys must match
  /// [ShipSystems.systemNames]. Positive values boost, negative degrade.
  /// Ignored when [outcomes] is non-null.
  final Map<String, double> shipEffects;

  /// Deltas applied to the current [Planet] stats. Keys must match
  /// [Planet.statNames]. Typically used for discoveries that reframe the
  /// planet's viability. Ignored when [outcomes] is non-null.
  final Map<String, double> planetModifiers;

  /// Deltas applied to the *next* planet scanned (not the current one).
  /// Used for events that narratively target a future destination, such as
  /// activating a terraforming device aimed at a distant system.
  /// Ignored when [outcomes] is non-null.
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

  /// Guard expression evaluated against [VoyageState]. If non-null and
  /// evaluates to false, this choice is greyed out in the UI.
  final String? guard;

  /// Weighted outcomes — if non-null, one is randomly selected at resolution
  /// time instead of using [outcome]/[shipEffects]/etc directly.
  final List<WeightedOutcome>? outcomes;

  /// Follow-up event triggered after a delay. Only used when [outcomes] is
  /// null (single-outcome choices). Weighted outcomes carry their own chains.
  final EventChain? chain;

  /// Governance ideology axis deltas (each defaults to 0.0).
  final double authorityDelta;   // -1 = anarchist, +1 = authoritarian
  final double cultureDelta;     // -1 = traditionalist, +1 = progressive
  final double economyDelta;     // -1 = collectivist, +1 = corporatist
  final double faithDelta;       // -1 = secular, +1 = theocratic
  final double militaryDelta;    // -1 = pacifist, +1 = militarist

  const EventChoice({
    required this.text,
    this.outcome = '',
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
    this.guard,
    this.outcomes,
    this.chain,
    this.authorityDelta = 0.0,
    this.cultureDelta = 0.0,
    this.economyDelta = 0.0,
    this.faithDelta = 0.0,
    this.militaryDelta = 0.0,
  });

  Map<String, dynamic> toJson() => {
        'text': text,
        'outcome': outcome,
        'shipEffects': shipEffects,
        'planetModifiers': planetModifiers,
        'nextPlanetModifiers': nextPlanetModifiers,
        'probeCost': probeCost,
        'probeDelta': probeDelta,
        'fuelDelta': fuelDelta,
        'energyDelta': energyDelta,
        'colonistDelta': colonistDelta,
        'opensPlanetScreen': opensPlanetScreen,
        'immediatePlanetMinHabitability': immediatePlanetMinHabitability,
        'guard': guard,
        'outcomes': outcomes?.map((o) => o.toJson()).toList(),
        'chain': chain?.toJson(),
        'authorityDelta': authorityDelta,
        'cultureDelta': cultureDelta,
        'economyDelta': economyDelta,
        'faithDelta': faithDelta,
        'militaryDelta': militaryDelta,
      };

  factory EventChoice.fromJson(Map<String, dynamic> json) => EventChoice(
        text: json['text'] as String,
        outcome: json['outcome'] as String? ?? '',
        shipEffects: (json['shipEffects'] as Map<String, dynamic>? ?? {})
            .map((k, v) => MapEntry(k, (v as num).toDouble())),
        planetModifiers:
            (json['planetModifiers'] as Map<String, dynamic>? ?? {})
                .map((k, v) => MapEntry(k, (v as num).toDouble())),
        nextPlanetModifiers:
            (json['nextPlanetModifiers'] as Map<String, dynamic>? ?? {})
                .map((k, v) => MapEntry(k, (v as num).toDouble())),
        probeCost: json['probeCost'] as int? ?? 0,
        probeDelta: json['probeDelta'] as int? ?? 0,
        fuelDelta: json['fuelDelta'] as int? ?? 0,
        energyDelta: json['energyDelta'] as int? ?? 0,
        colonistDelta: json['colonistDelta'] as int? ?? 0,
        opensPlanetScreen: json['opensPlanetScreen'] as bool? ?? false,
        immediatePlanetMinHabitability:
            (json['immediatePlanetMinHabitability'] as num?)?.toDouble() ?? 0.0,
        guard: json['guard'] as String?,
        outcomes: (json['outcomes'] as List<dynamic>?)
            ?.map((o) => WeightedOutcome.fromJson(o as Map<String, dynamic>))
            .toList(),
        chain: json['chain'] == null
            ? null
            : EventChain.fromJson(json['chain'] as Map<String, dynamic>),
        authorityDelta: (json['authorityDelta'] as num?)?.toDouble() ?? 0.0,
        cultureDelta: (json['cultureDelta'] as num?)?.toDouble() ?? 0.0,
        economyDelta: (json['economyDelta'] as num?)?.toDouble() ?? 0.0,
        faithDelta: (json['faithDelta'] as num?)?.toDouble() ?? 0.0,
        militaryDelta: (json['militaryDelta'] as num?)?.toDouble() ?? 0.0,
      );

  @override
  String toString() => 'EventChoice("$text")';
}

/// One possible outcome in a weighted-outcome choice.
class WeightedOutcome {
  final int weight;
  final String outcome;
  final Map<String, double> shipEffects;
  final Map<String, double> planetModifiers;
  final Map<String, double> nextPlanetModifiers;
  final int probeDelta;
  final int fuelDelta;
  final int energyDelta;
  final int colonistDelta;
  final bool opensPlanetScreen;
  final double immediatePlanetMinHabitability;
  final EventChain? chain;
  final double authorityDelta;
  final double cultureDelta;
  final double economyDelta;
  final double faithDelta;
  final double militaryDelta;

  const WeightedOutcome({
    required this.weight,
    required this.outcome,
    this.shipEffects = const {},
    this.planetModifiers = const {},
    this.nextPlanetModifiers = const {},
    this.probeDelta = 0,
    this.fuelDelta = 0,
    this.energyDelta = 0,
    this.colonistDelta = 0,
    this.opensPlanetScreen = false,
    this.immediatePlanetMinHabitability = 0.0,
    this.chain,
    this.authorityDelta = 0.0,
    this.cultureDelta = 0.0,
    this.economyDelta = 0.0,
    this.faithDelta = 0.0,
    this.militaryDelta = 0.0,
  });

  Map<String, dynamic> toJson() => {
        'weight': weight,
        'outcome': outcome,
        'shipEffects': shipEffects,
        'planetModifiers': planetModifiers,
        'nextPlanetModifiers': nextPlanetModifiers,
        'probeDelta': probeDelta,
        'fuelDelta': fuelDelta,
        'energyDelta': energyDelta,
        'colonistDelta': colonistDelta,
        'opensPlanetScreen': opensPlanetScreen,
        'immediatePlanetMinHabitability': immediatePlanetMinHabitability,
        'chain': chain?.toJson(),
        'authorityDelta': authorityDelta,
        'cultureDelta': cultureDelta,
        'economyDelta': economyDelta,
        'faithDelta': faithDelta,
        'militaryDelta': militaryDelta,
      };

  factory WeightedOutcome.fromJson(Map<String, dynamic> json) =>
      WeightedOutcome(
        weight: json['weight'] as int,
        outcome: json['outcome'] as String,
        shipEffects: (json['shipEffects'] as Map<String, dynamic>? ?? {})
            .map((k, v) => MapEntry(k, (v as num).toDouble())),
        planetModifiers:
            (json['planetModifiers'] as Map<String, dynamic>? ?? {})
                .map((k, v) => MapEntry(k, (v as num).toDouble())),
        nextPlanetModifiers:
            (json['nextPlanetModifiers'] as Map<String, dynamic>? ?? {})
                .map((k, v) => MapEntry(k, (v as num).toDouble())),
        probeDelta: json['probeDelta'] as int? ?? 0,
        fuelDelta: json['fuelDelta'] as int? ?? 0,
        energyDelta: json['energyDelta'] as int? ?? 0,
        colonistDelta: json['colonistDelta'] as int? ?? 0,
        opensPlanetScreen: json['opensPlanetScreen'] as bool? ?? false,
        immediatePlanetMinHabitability:
            (json['immediatePlanetMinHabitability'] as num?)?.toDouble() ?? 0.0,
        chain: json['chain'] == null
            ? null
            : EventChain.fromJson(json['chain'] as Map<String, dynamic>),
        authorityDelta: (json['authorityDelta'] as num?)?.toDouble() ?? 0.0,
        cultureDelta: (json['cultureDelta'] as num?)?.toDouble() ?? 0.0,
        economyDelta: (json['economyDelta'] as num?)?.toDouble() ?? 0.0,
        faithDelta: (json['faithDelta'] as num?)?.toDouble() ?? 0.0,
        militaryDelta: (json['militaryDelta'] as num?)?.toDouble() ?? 0.0,
      );
}

/// A follow-up event triggered after a delay.
class EventChain {
  final String eventId;

  /// Number of encounters from now before the chained event fires.
  final int delay;

  const EventChain({required this.eventId, required this.delay});

  Map<String, dynamic> toJson() => {
        'eventId': eventId,
        'delay': delay,
      };

  factory EventChain.fromJson(Map<String, dynamic> json) => EventChain(
        eventId: json['eventId'] as String,
        delay: json['delay'] as int,
      );
}

/// A pending chained event waiting to fire at a future encounter.
class PendingChain {
  final String eventId;
  final int triggerAtEncounter;

  const PendingChain({
    required this.eventId,
    required this.triggerAtEncounter,
  });

  Map<String, dynamic> toJson() => {
        'eventId': eventId,
        'triggerAtEncounter': triggerAtEncounter,
      };

  factory PendingChain.fromJson(Map<String, dynamic> json) => PendingChain(
        eventId: json['eventId'] as String,
        triggerAtEncounter: json['triggerAtEncounter'] as int,
      );
}
