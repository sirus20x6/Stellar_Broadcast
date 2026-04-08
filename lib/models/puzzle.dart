import 'package:stellar_broadcast/models/event.dart';

/// The alien species that sends the probe. Determines number system and personality.
enum AlienSpecies {
  /// Binary number system. Forgiving — no wrong-answer penalty.
  synthetic,

  /// Geometric shapes (point, line, triangle...). Neutral — mild penalty.
  geometric,

  /// Crystalline lattice notation. Harsh — significant penalty.
  crystalline,
}

/// The type of puzzle challenge.
enum SequenceType { piDigits, fibonacci, primes, spectralId, starCluster, chirality }

/// A puzzle encounter from an alien probe.
class AlienPuzzle {
  final String id;
  final AlienSpecies species;
  final SequenceType sequenceType;

  /// Localised title (e.g. "Synthetic Probe Signal").
  final String title;

  /// Flavour text introducing the puzzle (typewriter effect).
  final String narrative;

  /// The sequence displayed to the player, in alien notation.
  /// One entry is the placeholder "?" at [blankIndex].
  final List<String> displayedSequence;

  /// Index of the "?" in [displayedSequence].
  final int blankIndex;

  /// The correct answer in alien notation.
  final String correctAnswer;

  /// Wrong answers in alien notation, shuffled with [correctAnswer] in the UI.
  final List<String> distractors;

  /// Effects applied on a correct answer.
  final EventChoice reward;

  /// Effects applied on a wrong answer. Null means no penalty (forgiving species).
  final EventChoice? penalty;

  /// Narrative shown after a correct answer.
  final String correctOutcome;

  /// Narrative shown after a wrong answer.
  final String incorrectOutcome;

  const AlienPuzzle({
    required this.id,
    required this.species,
    required this.sequenceType,
    required this.title,
    required this.narrative,
    required this.displayedSequence,
    required this.blankIndex,
    required this.correctAnswer,
    required this.distractors,
    required this.reward,
    this.penalty,
    required this.correctOutcome,
    required this.incorrectOutcome,
  });
}
