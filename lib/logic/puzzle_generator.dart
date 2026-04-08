import 'dart:math';

import 'package:stellar_broadcast/logic/alien_number_systems.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

class PuzzleGenerator {
  PuzzleGenerator._();

  // -----------------------------------------------------------------------
  // Raw sequences
  // -----------------------------------------------------------------------

  static const _piDigits = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9, 3, 2, 3, 8, 4];
  static const _fibonacci = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765];
  static const _primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];

  // -----------------------------------------------------------------------
  // Titles & narratives (hardcoded English — l10n wired later)
  // -----------------------------------------------------------------------

  static const _titles = {
    AlienSpecies.synthetic: 'SYNTHETIC PROBE SIGNAL',
    AlienSpecies.geometric: 'GEOMETRIC ENTITY CONTACT',
    AlienSpecies.crystalline: 'CRYSTALLINE TRANSMISSION',
  };

  static const _narratives = {
    AlienSpecies.synthetic:
        'A swarm of self-replicating probes encircles the ship. '
        'Their transmissions resolve into a pattern of binary pulses — '
        'they seem to be testing our intelligence before sharing data.',
    AlienSpecies.geometric:
        'An enormous being of folded light drifts alongside the ship. '
        'It projects geometric shapes onto the hull in a deliberate sequence, '
        'waiting for us to complete the pattern.',
    AlienSpecies.crystalline:
        'A lattice of crystalline filaments blooms across the sensor array. '
        'Within its structure, symbols pulse in a repeating pattern — '
        'a challenge etched in crystal logic.',
  };

  static const _correctOutcomes = {
    AlienSpecies.synthetic:
        'The probes chirp in unison and begin repairing micro-fractures '
        'along the hull. They approve.',
    AlienSpecies.geometric:
        'The entity flares with brilliant light and folds a gift into '
        'our navigation array before drifting away.',
    AlienSpecies.crystalline:
        'The lattice restructures into a navigational chart of extraordinary '
        'detail. Star routes we never knew existed flow into our computers.',
  };

  static const _incorrectOutcomes = {
    AlienSpecies.synthetic:
        'The probes pause, then scatter. One clips a survey probe on its way out — a small price for a failed test.',
    AlienSpecies.geometric:
        'The entity dims and contracts. A pulse of energy rattles the hull '
        'as it withdraws — displeasure, perhaps.',
    AlienSpecies.crystalline:
        'The lattice shatters. Crystal shards pierce the outer hull before '
        'dissolving into subspace. The transmission was not forgiving of error.',
  };

  // -----------------------------------------------------------------------
  // Public API
  // -----------------------------------------------------------------------

  static AlienPuzzle generate(Random random, VoyageState state) {
    final species = AlienSpecies.values[random.nextInt(AlienSpecies.values.length)];
    final seqType = SequenceType.values[random.nextInt(SequenceType.values.length)];

    // Visual identification puzzles use their own generators.
    if (seqType == SequenceType.spectralId) {
      return _generateSpectralPuzzle(random, species, state);
    }
    if (seqType == SequenceType.starCluster) {
      return _generateStarClusterPuzzle(random, species, state);
    }
    if (seqType == SequenceType.chirality) {
      return _generateChiralityPuzzle(random, species, state);
    }

    final system = AlienNumberSystem.forSpecies(species);

    // Difficulty based on encounter count.
    final enc = state.encounterCount;
    final seqLength = enc < 6 ? 5 : (enc < 12 ? 6 : 7);
    final distractorCount = enc < 6 ? 3 : (enc < 12 ? 4 : 5);

    // Pick sequence and starting offset.
    // Cap how deep we go based on species — binary only works with small
    // numbers, geometric digits map 0-9, crystalline can handle more.
    final rawSeq = _rawSequence(seqType);
    final maxElements = _maxSequenceDepth(species, seqType);
    final usable = rawSeq.length < maxElements ? rawSeq.length : maxElements;

    // Pi and Fibonacci must always start from the beginning — the pattern
    // is only recognisable from its origin. Primes are identifiable from
    // any starting point.
    int start;
    if (seqType == SequenceType.primes) {
      final maxStart = (usable - seqLength).clamp(0, rawSeq.length - seqLength);
      start = maxStart <= 0 ? 0 : random.nextInt(maxStart);
    } else {
      start = 0;
    }
    final slice = rawSeq.sublist(start, start + seqLength);

    // Blank position: always last for easy, can be earlier for hard.
    int blankIndex;
    if (enc < 6) {
      blankIndex = seqLength - 1;
    } else if (enc < 12) {
      blankIndex = seqLength - 1 - random.nextInt(2); // last or penultimate
    } else {
      blankIndex = seqLength - 1 - random.nextInt(3); // last 3
    }

    final correctValue = slice[blankIndex];
    final correctAnswer = system.convert(correctValue);

    // Build displayed sequence with "?" at blankIndex.
    final displayed = <String>[];
    for (var i = 0; i < slice.length; i++) {
      displayed.add(i == blankIndex ? '?' : system.convert(slice[i]));
    }

    // Generate distractors: nearby values that are plausible but wrong.
    final distractors = _generateDistractors(
      correctValue, seqType, rawSeq, distractorCount, random, system,
    );

    final reward = _buildReward(species, enc);
    final penalty = _buildPenalty(species, enc);

    final id = 'puzzle_${species.name}_${seqType.name}_$enc';

    return AlienPuzzle(
      id: id,
      species: species,
      sequenceType: seqType,
      title: _titles[species]!,
      narrative: _narratives[species]!,
      displayedSequence: displayed,
      blankIndex: blankIndex,
      correctAnswer: correctAnswer,
      distractors: distractors,
      reward: reward,
      penalty: penalty,
      correctOutcome: _correctOutcomes[species]!,
      incorrectOutcome: _incorrectOutcomes[species]!,
    );
  }

  // -----------------------------------------------------------------------
  // Internals
  // -----------------------------------------------------------------------

  // -----------------------------------------------------------------------
  // Spectral identification puzzle
  // -----------------------------------------------------------------------

  /// Spectral line wavelengths (nm) for each compound.
  /// These are the prominent visible/UV absorption lines players see.
  /// Real spectral emission/absorption lines (nm) in the 200-900nm range.
  /// Sources: NIST Atomic Spectra Database, VPL Molecular Spectral Database.
  static const _spectralCompounds = {
    // O: green nebula lines (O III 496, 501) + green ionised cluster (O II 538)
    //    + auroral green (557.7) + red auroral (630) + NIR triplet (777)
    'O\u2082': [495.9, 500.7, 538.0, 557.7, 630.0, 777.4],
    // NH₃: UV vibronic bands (202-221) + visible overtone at 550
    'NH\u2083': [201.8, 209.2, 217.1, 221.6, 550.0],
    // CH₄: weak visible/NIR overtone bands
    'CH\u2084': [619.0, 727.0, 790.0, 890.0],
    // SO₂: UV B-band absorber (240-320) + weak A-band (340-390)
    'SO\u2082': [265.0, 280.0, 295.0, 310.0, 360.0],
  };

  static AlienPuzzle _generateSpectralPuzzle(
    Random random,
    AlienSpecies species,
    VoyageState state,
  ) {
    // Shuffle compound order so oxygen isn't always in the same position.
    final keys = _spectralCompounds.keys.toList()..shuffle(random);
    const correctKey = 'O\u2082';

    // Encode all 4 compounds' wavelengths into displayedSequence.
    // Format: "key|wl1,wl2,wl3,wl4" per entry. The puzzle screen parses
    // these and renders each as a tappable spectrum bar.
    final displayed = keys.map((key) {
      final wls = _spectralCompounds[key]!.map((w) => w.toStringAsFixed(1)).join(',');
      return '$key|$wls';
    }).toList();

    return AlienPuzzle(
      id: 'puzzle_spectral_${species.name}_${state.encounterCount}',
      species: species,
      sequenceType: SequenceType.spectralId,
      title: 'WHAT DO YOU SEEK?',
      narrative: '',
      displayedSequence: displayed,
      blankIndex: -1,
      correctAnswer: correctKey,
      distractors: const [], // Not used — answers are the spectrums themselves.
      reward: const EventChoice(
        text: 'Correct',
        outcome: '',
        nextPlanetModifiers: {
          'atmosphere': 0.08,
          'water': 0.05,
          'biodiversity': 0.04,
        },
        shipEffects: {'atmosphericScanner': 0.03},
      ),
      penalty: const EventChoice(
        text: 'Incorrect',
        outcome: '',
        shipEffects: {'atmosphericScanner': -0.03},
      ),
      correctOutcome:
          'Oxygen. The unmistakable signature of a living atmosphere. '
          'Navigation banks updated — our next target looks far more promising.',
      incorrectOutcome:
          'The alien considers our answer, then dims. A pulse of '
          'interference scrambles the atmospheric scanner as it withdraws.',
    );
  }

  // -----------------------------------------------------------------------
  // Star cluster identification puzzle
  // -----------------------------------------------------------------------

  /// Star spectral classes with temperature (K), color, and size range.
  /// Each cluster is a mix of stars from one dominant class.
  static const _starClasses = {
    // label: [temp_min, temp_max, red, green, blue, min_radius, max_radius]
    'O': [30000, 50000, 0x9B, 0xB0, 0xFF, 3.0, 6.0],   // blue-white giants
    'B': [10000, 30000, 0xAA, 0xBF, 0xFF, 2.5, 5.0],    // blue-white
    'A': [7500, 10000, 0xCA, 0xD7, 0xFF, 2.0, 4.0],     // white
    'F': [6000, 7500, 0xF8, 0xF7, 0xFF, 1.8, 3.5],      // yellow-white
    'G': [5200, 6000, 0xFF, 0xF4, 0xE0, 1.5, 3.0],      // yellow (Sun-like!)
    'K': [3700, 5200, 0xFF, 0xCC, 0x6F, 1.2, 2.5],      // orange
    'M': [2400, 3700, 0xFF, 0x6B, 0x35, 1.0, 2.0],      // red dwarf
  };

  static AlienPuzzle _generateStarClusterPuzzle(
    Random random,
    AlienSpecies species,
    VoyageState state,
  ) {
    // All groups: main sequence + giants + supergiants + white dwarfs.
    // Format: "group_id|x1,y1,r1;x2,y2,r2;..."
    // The puzzle screen maps group_id to HR position and color.
    const mainSeq = ['O', 'B', 'A', 'F', 'G', 'K', 'M'];
    const giants = ['gK', 'gM', 'gG']; // red/orange/yellow giants
    const supergiants = ['sB', 'sA', 'sK', 'sM']; // supergiants
    const whiteDwarfs = ['wO', 'wB', 'wA', 'wF', 'wG']; // white dwarf sequence

    String makeStars(String cls, int count, double minR, double maxR) {
      final stars = <String>[];
      for (var s = 0; s < count; s++) {
        final x = random.nextDouble();
        final y = random.nextDouble();
        final r = minR + random.nextDouble() * (maxR - minR);
        stars.add('${x.toStringAsFixed(3)},${y.toStringAsFixed(3)},${r.toStringAsFixed(1)}');
      }
      return '$cls|${stars.join(';')}';
    }

    final displayed = <String>[
      // Main sequence: more stars.
      for (final cls in mainSeq)
        makeStars(cls, 12 + random.nextInt(8), // 12-19 stars
          ((_starClasses[cls]![5]) as num).toDouble(),
          ((_starClasses[cls]![6]) as num).toDouble()),
      // Giants: large, fewer.
      for (final g in giants) makeStars(g, 3 + random.nextInt(4), 3.0, 5.5),
      // Supergiants: very large, rare.
      for (final sg in supergiants) makeStars(sg, 1 + random.nextInt(3), 4.5, 7.0),
      // White dwarfs: tiny, scattered.
      for (final wd in whiteDwarfs) makeStars(wd, 4 + random.nextInt(5), 0.8, 1.5),
    ];

    return AlienPuzzle(
      id: 'puzzle_stars_${species.name}_${state.encounterCount}',
      species: species,
      sequenceType: SequenceType.starCluster,
      title: 'WHERE IS HOME?',
      narrative: '',
      displayedSequence: displayed,
      blankIndex: -1,
      correctAnswer: 'G',
      distractors: const [],
      reward: const EventChoice(
        text: 'Correct',
        outcome: '',
        nextPlanetModifiers: {
          'atmosphere': 0.10,
          'temperature': 0.08,
          'water': 0.06,
        },
        shipEffects: {'nav': 0.05},
      ),
      penalty: const EventChoice(
        text: 'Incorrect',
        outcome: '',
        shipEffects: {'nav': -0.05},
      ),
      correctOutcome:
          'G-type stars. Yellow dwarfs like the one that warmed Earth. '
          'The navigation computer locks onto the cluster — our next '
          'destination will orbit a familiar kind of sun.',
      incorrectOutcome:
          'The stars are beautiful, but wrong. Not the kind of sun '
          'that could nurture a world like the one we left behind.',
    );
  }

  // -----------------------------------------------------------------------
  // Chirality puzzle
  // -----------------------------------------------------------------------

  /// Generates a chirality puzzle showing L- and D-alanine as mirror-image
  /// molecular structures. The player must pick the L (left-handed) form,
  /// which is the chirality used by Earth life.
  ///
  /// displayedSequence format: "hand|nh2_angle,cooh_angle,ch3_angle,h_angle"
  /// where hand is 'L' or 'D', and angles are degrees from top for each
  /// substituent around the central carbon.
  static AlienPuzzle _generateChiralityPuzzle(
    Random random,
    AlienSpecies species,
    VoyageState state,
  ) {
    // L-alanine and D-alanine are mirror images.
    // We encode substituent positions as clockwise angles from 12 o'clock.
    // L-alanine: NH₂ top-left, COOH top-right, CH₃ bottom-left, H bottom-right
    // D-alanine: NH₂ top-right, COOH top-left, CH₃ bottom-right, H bottom-left
    // Randomise the overall rotation so it's not always the same orientation.
    final rotation = random.nextInt(360);

    final displayed = <String>[
      'L|$rotation',
      'D|$rotation',
    ];
    // Shuffle so L isn't always first.
    displayed.shuffle(random);

    return AlienPuzzle(
      id: 'puzzle_chirality_${species.name}_${state.encounterCount}',
      species: species,
      sequenceType: SequenceType.chirality,
      title: 'WHICH HAND IS LIFE?',
      narrative: '',
      displayedSequence: displayed,
      blankIndex: -1,
      correctAnswer: 'L',
      distractors: const [],
      reward: const EventChoice(
        text: 'Correct',
        outcome: '',
        nextPlanetModifiers: {
          'biodiversity': 0.15,
          'atmosphere': 0.06,
        },
      ),
      penalty: const EventChoice(
        text: 'Incorrect',
        outcome: '',
        nextPlanetModifiers: {
          'biodiversity': -0.12,
          'atmosphere': -0.04,
        },
      ),
      correctOutcome:
          'Left-handed. The same chirality as every amino acid that '
          'built every protein on Earth. The probe pulses with recognition — '
          'our next destination may harbour familiar biochemistry.',
      incorrectOutcome:
          'The mirror image. A world built on D-amino acids would be alien '
          'at the molecular level — its proteins incompatible, its food '
          'poisonous. The navigation computer adjusts expectations downward.',
    );
  }

  /// species. Binary needs small numbers, geometric uses single-digit mapping
  /// so multi-digit gets confusing fast, crystalline can handle a bit more.
  static int _maxSequenceDepth(AlienSpecies species, SequenceType seqType) {
    switch (species) {
      case AlienSpecies.synthetic:
        // Binary: keep values ≤ 13 (Fib), ≤ 13 (primes), all pi digits fine.
        return seqType == SequenceType.piDigits ? 20 : 8;
      case AlienSpecies.geometric:
        // Shapes are per-digit so multi-digit works, but keep it recognisable.
        return seqType == SequenceType.piDigits ? 20 : 10;
      case AlienSpecies.crystalline:
        // Atom diagrams only look distinct up to ~Z=20. Cap sequences
        // so values stay small enough for readable nucleus polygons.
        return seqType == SequenceType.piDigits ? 20 : 8;
    }
  }

  static List<int> _rawSequence(SequenceType type) {
    switch (type) {
      case SequenceType.piDigits:
        return _piDigits;
      case SequenceType.fibonacci:
        return _fibonacci;
      case SequenceType.primes:
        return _primes;
      case SequenceType.spectralId:
      case SequenceType.starCluster:
      case SequenceType.chirality:
        return const []; // Never called — visual puzzles use separate path.
    }
  }

  static List<String> _generateDistractors(
    int correct,
    SequenceType seqType,
    List<int> rawSeq,
    int count,
    Random random,
    AlienNumberSystem system,
  ) {
    final candidates = <int>{};

    // Add nearby sequence members.
    for (final v in rawSeq) {
      if (v != correct) candidates.add(v);
    }

    // Add values close to correct.
    for (var delta = 1; delta <= 3; delta++) {
      if (correct + delta > 0) candidates.add(correct + delta);
      if (correct - delta > 0) candidates.add(correct - delta);
    }

    // Remove the correct answer.
    candidates.remove(correct);

    final pool = candidates.toList()..shuffle(random);
    final picked = pool.take(count).toList();

    // If we don't have enough, pad with random positives.
    while (picked.length < count) {
      final v = 1 + random.nextInt(correct.clamp(2, 100));
      if (v != correct && !picked.contains(v)) picked.add(v);
    }

    return picked.map(system.convert).toList();
  }

  static EventChoice _buildReward(AlienSpecies species, int encounter) {
    switch (species) {
      case AlienSpecies.synthetic:
        // Forgiving: ship repairs.
        return const EventChoice(
          text: 'Correct',
          outcome: '',
          shipEffects: {'hull': 0.12, 'shields': 0.08, 'tech': 0.05},
        );
      case AlienSpecies.geometric:
        // Neutral: navigation data + minor resources.
        return const EventChoice(
          text: 'Correct',
          outcome: '',
          nextPlanetModifiers: {
            'temperature': 0.06,
            'gravity': 0.05,
          },
          energyDelta: 5,
          probeDelta: 1,
        );
      case AlienSpecies.crystalline:
        // Harsh: nav data + probes.
        return const EventChoice(
          text: 'Correct',
          outcome: '',
          nextPlanetModifiers: {
            'atmosphere': 0.08,
            'water': 0.06,
            'biodiversity': 0.05,
          },
          probeDelta: 2,
        );
    }
  }

  static EventChoice? _buildPenalty(AlienSpecies species, int encounter) {
    switch (species) {
      case AlienSpecies.synthetic:
        // Forgiving but not free: minor probe loss.
        return const EventChoice(
          text: 'Incorrect',
          outcome: '',
          probeDelta: -1,
        );
      case AlienSpecies.geometric:
        // Neutral: mild penalty.
        return const EventChoice(
          text: 'Incorrect',
          outcome: '',
          shipEffects: {'hull': -0.05},
        );
      case AlienSpecies.crystalline:
        // Harsh: significant penalty.
        return const EventChoice(
          text: 'Incorrect',
          outcome: '',
          shipEffects: {'hull': -0.10, 'nav': -0.05},
        );
    }
  }
}
