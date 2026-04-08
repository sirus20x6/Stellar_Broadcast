import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/logic/alien_number_systems.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/widgets/premium_ad_gate.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);

Color _accentFor(AlienSpecies species) {
  switch (species) {
    case AlienSpecies.synthetic:
      return const Color(0xFF00FF41); // matrix green
    case AlienSpecies.geometric:
      return const Color(0xFF00E5FF); // cyan
    case AlienSpecies.crystalline:
      return const Color(0xFF8B5CF6); // purple
  }
}

class PuzzleScreen extends ConsumerStatefulWidget {
  const PuzzleScreen({super.key, required this.puzzle});

  final AlienPuzzle puzzle;

  @override
  ConsumerState<PuzzleScreen> createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends ConsumerState<PuzzleScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;

  // Typewriter state.
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // Answer state.
  String? _selectedAnswer;
  bool _isCorrect = false;
  bool _resolved = false;
  bool _showEffects = false;

  // Shake animation for wrong answer.
  late final AnimationController _shakeController;
  late final Animation<double> _shakeAnim;

  late Color _accent;
  late List<String> _shuffledAnswers;

  @override
  void initState() {
    super.initState();
    _accent = _accentFor(widget.puzzle.species);

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _titleGlow = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _titleGlowAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _titleGlow, curve: Curves.easeInOut),
    );

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _shakeAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.elasticIn),
    );

    // Shuffle answers: correct + distractors.
    _shuffledAnswers = [
      widget.puzzle.correctAnswer,
      ...widget.puzzle.distractors,
    ]..shuffle(Random());

    if (widget.puzzle.narrative.isEmpty) {
      _typewriterDone = true;
    } else {
      _startTypewriter();
    }
    GameSfx().playLong(GameSfx.alienTech);
  }

  void _startTypewriter() {
    _typewriterTimer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (_charIndex >= widget.puzzle.narrative.length) {
        timer.cancel();
        if (mounted) setState(() => _typewriterDone = true);
        return;
      }
      if (mounted) {
        setState(() {
          _charIndex++;
          _displayedText = widget.puzzle.narrative.substring(0, _charIndex);
        });
      }
    });
  }

  void _skipTypewriter() {
    _typewriterTimer?.cancel();
    setState(() {
      _displayedText = widget.puzzle.narrative;
      _charIndex = widget.puzzle.narrative.length;
      _typewriterDone = true;
    });
  }

  void _onAnswerTapped(String answer) {
    if (_resolved) return;

    final correct = answer == widget.puzzle.correctAnswer;
    HapticService().selection();

    setState(() {
      _selectedAnswer = answer;
      _isCorrect = correct;
      _resolved = true;
    });

    if (correct) {
      GameSfx().play(GameSfx.systemRepair, volume: 0.8);
      HapticService().success();
      ref.read(voyageProvider.notifier).handlePuzzleResult(widget.puzzle.reward);
    } else {
      GameSfx().play(GameSfx.minorDamage, volume: 0.8);
      HapticService().error();
      _shakeController.forward();
      if (widget.puzzle.penalty != null) {
        ref.read(voyageProvider.notifier).handlePuzzleResult(widget.puzzle.penalty!);
      } else {
        // Still increment encounter even with no penalty.
        ref.read(voyageProvider.notifier).handlePuzzleResult(
          EventChoice(text: '', outcome: ''),
        );
      }
    }

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) setState(() => _showEffects = true);
    });
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _starController.dispose();
    _titleGlow.dispose();
    _pulseController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final puzzle = widget.puzzle;

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _starController,
                builder: (_, __) => CustomPaint(
                  painter: StarFieldPainter(
                    animationValue: _starController.value,
                    farStarCount: 80,
                    midStarCount: 30,
                    nearStarCount: 10,
                  ),
                ),
              ),
            ),
          ),

          // Content.
          SafeArea(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: _typewriterDone ? null : _skipTypewriter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 32),

                    // Title.
                    AnimatedBuilder(
                      animation: _titleGlowAnim,
                      builder: (_, __) => Text(
                        puzzle.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: _accent,
                          letterSpacing: 2,
                          shadows: [
                            Shadow(
                              color: _accent.withValues(alpha: _titleGlowAnim.value),
                              blurRadius: 20,
                            ),
                            Shadow(
                              color: _accent.withValues(alpha: _titleGlowAnim.value * 0.5),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Narrative (typewriter) — hidden for spectral puzzles.
                    if (!_resolved && puzzle.narrative.isNotEmpty)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withValues(alpha: 0.05),
                          border: Border.all(color: _accent.withValues(alpha: 0.2)),
                        ),
                        child: Text(
                          _displayedText,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),

                    // Outcome text.
                    if (_resolved)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: (_isCorrect ? Colors.green : Colors.red)
                              .withValues(alpha: 0.1),
                          border: Border.all(
                            color: (_isCorrect ? Colors.green : Colors.red)
                                .withValues(alpha: 0.4),
                          ),
                        ),
                        child: Text(
                          _isCorrect
                              ? puzzle.correctOutcome
                              : puzzle.incorrectOutcome,
                          style: TextStyle(
                            color: _isCorrect
                                ? Colors.greenAccent
                                : Colors.redAccent,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),

                    SizedBox(height: puzzle.sequenceType == SequenceType.spectralId ? 12 : 24),

                    // Display area.
                    if (_typewriterDone &&
                        puzzle.sequenceType == SequenceType.spectralId)
                      _buildSpectralChoices(),

                    if (_typewriterDone &&
                        puzzle.sequenceType == SequenceType.starCluster)
                      _buildStarClusterChoices(),

                    if (_typewriterDone &&
                        puzzle.sequenceType == SequenceType.chirality)
                      _buildChiralityChoices(),

                    if (_typewriterDone &&
                        puzzle.sequenceType != SequenceType.spectralId &&
                        puzzle.sequenceType != SequenceType.starCluster &&
                        puzzle.sequenceType != SequenceType.chirality) ...[
                      _buildSequenceRow(),

                      const SizedBox(height: 24),

                      // Answer grid.
                      if (!_resolved) ...[
                        Text(
                          'SELECT THE MISSING VALUE',
                          style: TextStyle(
                            color: _accent.withValues(alpha: 0.7),
                            fontSize: 12,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 12),
                        _buildAnswerGrid(),
                      ],
                    ],

                    // Effect chips.
                    if (_showEffects) ...[
                      const SizedBox(height: 16),
                      _buildEffectChips(),
                    ],

                    if (puzzle.sequenceType != SequenceType.spectralId &&
                        puzzle.sequenceType != SequenceType.starCluster &&
                        puzzle.sequenceType != SequenceType.chirality)
                      const Spacer(),

                    // Continue button.
                    if (_resolved)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              GameSfx().playVaried(GameSfx.buttonClick);
                              Navigator.of(context).pop();
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: _accent.withValues(alpha: 0.6),
                                ),
                                color: _accent.withValues(alpha: 0.08),
                              ),
                              child: Text(
                                'CONTINUE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _accent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    if (!_typewriterDone)
                      Text(
                        'TAP TO SKIP',
                        style: TextStyle(
                          color: _accent.withValues(alpha: 0.5),
                          fontSize: 12,
                          letterSpacing: 2,
                        ),
                      ),

                    const SizedBox(height: 12),

                    const SizedBox(
                      height: 58,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: PremiumAdGate(child: AdaptiveBannerAd()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSequenceRow() {
    final puzzle = widget.puzzle;

    return AnimatedBuilder(
      animation: _shakeAnim,
      builder: (_, child) {
        final dx = _resolved && !_isCorrect
            ? sin(_shakeAnim.value * pi * 4) * 8
            : 0.0;
        return Transform.translate(
          offset: Offset(dx, 0),
          child: child,
        );
      },
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 6,
        runSpacing: 6,
          children: List.generate(puzzle.displayedSequence.length, (i) {
            final isBlank = i == puzzle.blankIndex;
            final value = puzzle.displayedSequence[i];

            // After resolution, show the correct answer in the blank.
            String displayValue;
            if (isBlank && _resolved) {
              displayValue = _selectedAnswer ?? '?';
            } else {
              displayValue = value;
            }

            Color tileBg;
            Color tileBorder;
            if (isBlank && _resolved) {
              tileBg = (_isCorrect ? Colors.green : Colors.red)
                  .withValues(alpha: 0.2);
              tileBorder = _isCorrect ? Colors.green : Colors.red;
            } else if (isBlank) {
              tileBg = _accent.withValues(alpha: 0.1);
              tileBorder = _accent;
            } else {
              tileBg = Colors.white.withValues(alpha: 0.05);
              tileBorder = Colors.white.withValues(alpha: 0.2);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedBuilder(
                animation: _pulseAnim,
                builder: (_, child) {
                  final glow = isBlank && !_resolved ? _pulseAnim.value : 0.0;
                  return Container(
                    constraints: BoxConstraints(
                      minWidth: displayValue.startsWith('Z:') ? 56 : 48,
                      minHeight: displayValue.startsWith('Z:') ? 56 : 48,
                    ),
                    padding: EdgeInsets.all(
                      displayValue.startsWith('Z:') ? 2 : 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: tileBg,
                      border: Border.all(
                        color: tileBorder.withValues(alpha: isBlank && !_resolved
                            ? 0.4 + glow * 0.6
                            : 0.4),
                        width: isBlank ? 2 : 1,
                      ),
                      boxShadow: isBlank && !_resolved
                          ? [
                              BoxShadow(
                                color: _accent.withValues(alpha: glow * 0.3),
                                blurRadius: 12,
                              ),
                            ]
                          : null,
                    ),
                    child: displayValue.startsWith('Z:')
                        ? SizedBox(
                            width: 48,
                            height: 48,
                            child: CustomPaint(
                              painter: _AtomPainter(
                                atomicNumber: int.tryParse(displayValue.substring(2)) ?? 0,
                                color: isBlank && !_resolved
                                    ? _accent
                                    : Colors.white.withValues(alpha: 0.9),
                              ),
                            ),
                          )
                        : Text(
                            displayValue,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isBlank && !_resolved
                                  ? _accent
                                  : Colors.white.withValues(alpha: 0.9),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: widget.puzzle.species == AlienSpecies.synthetic
                                  ? 'monospace'
                                  : null,
                            ),
                          ),
                  );
                },
              ),
            );
          }),
      ),
    );
  }

  /// Renders 4 tappable spectrum bars — one per compound, no labels.
  Widget _buildSpectralChoices() {
    final puzzle = widget.puzzle;
    // Parse "key|wl1,wl2,..." entries.
    final entries = puzzle.displayedSequence.map((s) {
      final parts = s.split('|');
      final key = parts[0];
      final wls = parts[1].split(',').map((w) => double.parse(w)).toList();
      return MapEntry(key, wls);
    }).toList();

    return Expanded(
      child: Column(
        children: entries.map((entry) {
          final key = entry.key;
          final wls = entry.value;
          final isSelected = _selectedAnswer == key;
          final isCorrectChoice = key == puzzle.correctAnswer;

          Color borderColor;
          Color? glowColor;
          if (_resolved && isSelected) {
            borderColor = _isCorrect ? Colors.green : Colors.red;
            glowColor = borderColor.withValues(alpha: 0.3);
          } else if (_resolved && isCorrectChoice) {
            borderColor = Colors.green.withValues(alpha: 0.5);
            glowColor = Colors.green.withValues(alpha: 0.15);
          } else {
            borderColor = _accent.withValues(alpha: 0.3);
          }

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: GestureDetector(
                onTap: _resolved ? null : () => _onAnswerTapped(key),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                    border: Border.all(
                      color: borderColor,
                      width: (_resolved && (isSelected || isCorrectChoice)) ? 2 : 1,
                    ),
                    boxShadow: glowColor != null
                        ? [BoxShadow(color: glowColor, blurRadius: 12, spreadRadius: 2)]
                        : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: AnimatedBuilder(
                      animation: _starController,
                      builder: (_, __) => CustomPaint(
                        size: Size.infinite,
                        painter: _SpectralPainter(
                          wavelengths: wls,
                          animationValue: _starController.value,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  /// Renders an HR diagram with main sequence stars. Player taps a star group.
  Widget _buildStarClusterChoices() {
    final puzzle = widget.puzzle;
    // Parse all star groups from displayedSequence.
    final groups = puzzle.displayedSequence.map((s) {
      final parts = s.split('|');
      final cls = parts[0];
      final stars = parts[1].split(';').map((st) {
        final coords = st.split(',');
        return (
          x: double.parse(coords[0]),
          y: double.parse(coords[1]),
          r: double.parse(coords[2]),
        );
      }).toList();
      return MapEntry(cls, stars);
    }).toList();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return AnimatedBuilder(
              animation: _pulseController,
              builder: (_, __) => GestureDetector(
                onTapDown: _resolved ? null : (details) {
                  final w = constraints.maxWidth;
                  final h = constraints.maxHeight;
                  final tap = details.localPosition;
                  String? closest;
                  var closestDist = double.infinity;

                  for (final group in groups) {
                    for (final star in group.value) {
                      final isMs = group.key.length == 1;
                      final spread = isMs ? w * 0.11 : w * 0.06;
                      final perpSpread = isMs ? w * 0.07 : w * 0.06;
                      final cx = _hrX(group.key) * w;
                      final cy = _hrY(group.key) * h;
                      final along = (star.x - 0.5) * spread * 2;
                      final perp = (star.y - 0.5) * perpSpread * 2;
                      final sx = cx + along * 0.7 + perp * 0.7;
                      final sy = cy + along * 0.7 - perp * 0.7;
                      final dist = (Offset(sx, sy) - tap).distance;
                      if (dist < closestDist) {
                        closestDist = dist;
                        closest = group.key;
                      }
                    }
                  }
                  if (closest != null && closestDist < 40) {
                    _onAnswerTapped(closest);
                  }
                },
                child: CustomPaint(
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: _HRDiagramPainter(
                    groups: groups,
                    twinkle: _pulseController.value,
                    selectedClass: _selectedAnswer,
                    correctClass: puzzle.correctAnswer,
                    isResolved: _resolved,
                    isCorrect: _isCorrect,
                    accent: _accent,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static double _hrX(String cls) => _HRDiagramPainter._hrX(cls);
  static double _hrY(String cls) => _HRDiagramPainter._hrY(cls);

  /// Renders two tappable molecule diagrams — L-alanine and D-alanine.
  Widget _buildChiralityChoices() {
    final puzzle = widget.puzzle;
    // Parse "hand|rotation" entries.
    final entries = puzzle.displayedSequence.map((s) {
      final parts = s.split('|');
      return MapEntry(parts[0], int.parse(parts[1]));
    }).toList();

    return Expanded(
      child: Row(
        children: entries.map((entry) {
          final hand = entry.key;
          final rotation = entry.value;
          final isSelected = _selectedAnswer == hand;
          final isCorrectChoice = hand == puzzle.correctAnswer;

          Color borderColor;
          Color? glowColor;
          if (_resolved && isSelected) {
            borderColor = _isCorrect ? Colors.green : Colors.red;
            glowColor = borderColor.withValues(alpha: 0.3);
          } else if (_resolved && isCorrectChoice) {
            borderColor = Colors.green.withValues(alpha: 0.5);
            glowColor = Colors.green.withValues(alpha: 0.15);
          } else {
            borderColor = _accent.withValues(alpha: 0.3);
          }

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: _resolved ? null : () => _onAnswerTapped(hand),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0x88050510),
                    border: Border.all(
                      color: borderColor,
                      width: (_resolved && (isSelected || isCorrectChoice)) ? 2 : 1,
                    ),
                    boxShadow: glowColor != null
                        ? [BoxShadow(color: glowColor, blurRadius: 12, spreadRadius: 2)]
                        : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: AnimatedBuilder(
                      animation: _pulseController,
                      builder: (_, __) => CustomPaint(
                        size: Size.infinite,
                        painter: _AlaninePainter(
                          isL: hand == 'L',
                          rotationDeg: rotation.toDouble(),
                          accent: _accent,
                          pulseValue: _pulseAnim.value,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildAnswerGrid() {
    final crossAxisCount = _shuffledAnswers.length <= 4 ? 2 : 3;

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      childAspectRatio: widget.puzzle.species == AlienSpecies.crystalline ? 1.3 : 2.2,
      children: _shuffledAnswers.map((answer) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => _onAnswerTapped(answer),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: _accent.withValues(alpha: 0.4)),
                color: _accent.withValues(alpha: 0.06),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2),
              child: answer.startsWith('Z:')
                  ? LayoutBuilder(
                      builder: (context, constraints) {
                        final s = constraints.biggest.shortestSide;
                        return SizedBox(
                          width: s,
                          height: s,
                          child: CustomPaint(
                            painter: _AtomPainter(
                              atomicNumber: int.tryParse(answer.substring(2)) ?? 0,
                              color: _accent,
                            ),
                          ),
                        );
                      },
                    )
                  : Text(
                answer,
                style: TextStyle(
                  color: _accent,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: widget.puzzle.species == AlienSpecies.synthetic
                      ? 'monospace'
                      : null,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEffectChips() {
    final choice = _isCorrect ? widget.puzzle.reward : widget.puzzle.penalty;
    if (choice == null) {
      return Text(
        'No effect',
        style: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 13),
      );
    }

    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      final isPositive = entry.value > 0;
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: isPositive,
        accent: _accent,
      ));
    }

    if (choice.probeDelta != 0) {
      final sign = choice.probeDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Probes',
        delta: '$sign${choice.probeDelta}',
        isPositive: choice.probeDelta > 0,
        accent: _accent,
      ));
    }
    if (choice.fuelDelta != 0) {
      final sign = choice.fuelDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Fuel',
        delta: '$sign${choice.fuelDelta}',
        isPositive: choice.fuelDelta > 0,
        accent: _accent,
      ));
    }
    if (choice.energyDelta != 0) {
      final sign = choice.energyDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Energy',
        delta: '$sign${choice.energyDelta}',
        isPositive: choice.energyDelta > 0,
        accent: _accent,
      ));
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(_EffectChip(
        label: 'Nav Data',
        delta: 'Acquired',
        isPositive: true,
        accent: _accent,
      ));
    }

    return Wrap(
      spacing: 8,
      runSpacing: 6,
      alignment: WrapAlignment.center,
      children: chips,
    );
  }
}

class _EffectChip extends StatelessWidget {
  const _EffectChip({
    required this.label,
    required this.delta,
    required this.isPositive,
    required this.accent,
  });

  final String label;
  final String delta;
  final bool isPositive;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final color = isPositive ? Colors.greenAccent : Colors.redAccent;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color.withValues(alpha: 0.1),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        '$label $delta',
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// Paints emission spectral lines on a dark background with animated ripple.
class _SpectralPainter extends CustomPainter {
  const _SpectralPainter({required this.wavelengths, this.animationValue = 0.0});

  final List<double> wavelengths;
  final double animationValue;

  static const _minWl = 200.0;
  static const _maxWl = 900.0;

  double _frac(double wl) => ((wl - _minWl) / (_maxWl - _minWl)).clamp(0.0, 1.0);

  @override
  void paint(Canvas canvas, Size size) {
    // Mostly transparent dark background.
    final bgPaint = Paint()..color = const Color(0x88050510);
    canvas.drawRRect(
      RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(4)),
      bgPaint,
    );

    // Emission lines with colored glow and dark band animation.
    for (var i = 0; i < wavelengths.length; i++) {
      final wl = wavelengths[i];
      final x = _frac(wl) * size.width;
      final lineColor = _wavelengthToColor(wl);

      // Wide outer glow.
      final outerGlow = Paint()
        ..color = lineColor.withValues(alpha: 0.15)
        ..strokeWidth = 20.0
        ..style = PaintingStyle.stroke
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), outerGlow);

      // Mid glow.
      final midGlow = Paint()
        ..color = lineColor.withValues(alpha: 0.4)
        ..strokeWidth = 8.0
        ..style = PaintingStyle.stroke
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), midGlow);

      // Bright core.
      final corePaint = Paint()
        ..color = lineColor.withValues(alpha: 0.9)
        ..strokeWidth = 2.0
        ..style = PaintingStyle.stroke;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), corePaint);

      // White-hot center.
      final whitePaint = Paint()
        ..color = Colors.white.withValues(alpha: 0.6)
        ..strokeWidth = 0.8
        ..style = PaintingStyle.stroke;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), whitePaint);

      // Animated dark bands scrolling top-to-bottom at varying speeds.
      // Multiple overlapping band layers per line, each with different
      // speed and spacing so pulses overtake each other.
      final darkBand = Paint()
        ..color = const Color(0xFF050510).withValues(alpha: 0.5)
        ..strokeWidth = 14.0
        ..style = PaintingStyle.stroke
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

      // 3 band layers per line, different speeds and offsets.
      const speeds = [3.5, 5.2, 7.8];
      const spacings = [0.22, 0.16, 0.28];
      const offsets = [0.0, 0.37, 0.71];

      for (var layer = 0; layer < 3; layer++) {
        final speed = speeds[layer] + i * 0.9;
        final spacing = size.height * spacings[layer];
        final bandHeight = spacing * 0.5;
        final offset = offsets[layer] * size.height + i * size.height * 0.23;
        final scroll = (animationValue * size.height * speed + offset) % (spacing + bandHeight);

        for (var y = -spacing + scroll; y < size.height + spacing; y += spacing + bandHeight) {
          canvas.drawLine(Offset(x, y), Offset(x, y + bandHeight), darkBand);
        }
      }
    }

  }

  /// Maps a wavelength to an approximate visible color for the glow.
  static Color _wavelengthToColor(double wl) {
    if (wl < 380) return const Color(0xFF7F00FF); // UV → violet
    if (wl < 450) return Color.lerp(const Color(0xFF7F00FF), const Color(0xFF0000FF), (wl - 380) / 70)!;
    if (wl < 490) return Color.lerp(const Color(0xFF0000FF), const Color(0xFF00FF00), (wl - 450) / 40)!;
    if (wl < 570) return Color.lerp(const Color(0xFF00FF00), const Color(0xFFFFFF00), (wl - 490) / 80)!;
    if (wl < 590) return Color.lerp(const Color(0xFFFFFF00), const Color(0xFFFF7F00), (wl - 570) / 20)!;
    if (wl < 640) return Color.lerp(const Color(0xFFFF7F00), const Color(0xFFFF0000), (wl - 590) / 50)!;
    if (wl < 750) return const Color(0xFFFF0000);
    return const Color(0xFF800000); // near-IR → deep red
  }

  @override
  bool shouldRepaint(covariant _SpectralPainter old) => true;
}

/// Draws an HR diagram with main sequence line and star groups.
class _HRDiagramPainter extends CustomPainter {
  const _HRDiagramPainter({
    required this.groups,
    required this.twinkle,
    required this.selectedClass,
    required this.correctClass,
    required this.isResolved,
    required this.isCorrect,
    required this.accent,
  });

  final List<MapEntry<String, List<({double x, double y, double r})>>> groups;
  final double twinkle;
  final String? selectedClass;
  final String correctClass;
  final bool isResolved;
  final bool isCorrect;
  final Color accent;

  static const _classColors = <String, Color>{
    // Main sequence
    'O': Color(0xFF9BB0FF), 'B': Color(0xFFAABFFF), 'A': Color(0xFFCAD7FF),
    'F': Color(0xFFF8F7FF), 'G': Color(0xFFFFF4E0), 'K': Color(0xFFFFCC6F),
    'M': Color(0xFFFF6B35),
    // Giants (same base color, slightly warmer)
    'gG': Color(0xFFFFF4E0), 'gK': Color(0xFFFFCC6F), 'gM': Color(0xFFFF6B35),
    // Supergiants
    'sB': Color(0xFFAABFFF), 'sA': Color(0xFFCAD7FF),
    'sK': Color(0xFFFFCC6F), 'sM': Color(0xFFFF6B35),
    // White dwarfs (hot but dim, bluish-white)
    'wO': Color(0xFF9BB0FF), 'wB': Color(0xFFAABFFF),
    'wA': Color(0xFFCAD7FF), 'wF': Color(0xFFF8F7FF), 'wG': Color(0xFFFFF4E0),
  };

  // HR positions for all group types.
  // X = temperature (hot left, cool right).
  // Y = luminosity (bright top, dim bottom).
  static double _hrX(String cls) {
    const p = <String, double>{
      // Main sequence — pronounced S-curve with snaking
      'O': 0.05, 'B': 0.12, 'A': 0.28, 'F': 0.40, 'G': 0.50, 'K': 0.68, 'M': 0.92,
      // Giants: same temperature column, higher luminosity
      'gG': 0.50, 'gK': 0.68, 'gM': 0.92,
      // Supergiants: top of diagram
      'sB': 0.12, 'sA': 0.28, 'sK': 0.68, 'sM': 0.92,
      // White dwarfs: horizontal band across bottom-left
      'wO': 0.08, 'wB': 0.18, 'wA': 0.30, 'wF': 0.40, 'wG': 0.50,
    };
    return p[cls] ?? 0.5;
  }

  static double _hrY(String cls) {
    const p = <String, double>{
      // Main sequence — steep at hot end, flattens in F/G, steepens again in K/M
      'O': 0.08, 'B': 0.16, 'A': 0.30, 'F': 0.44, 'G': 0.50, 'K': 0.64, 'M': 0.78,
      // Giants: above main sequence
      'gG': 0.28, 'gK': 0.32, 'gM': 0.38,
      // Supergiants: top of diagram
      'sB': 0.06, 'sA': 0.06, 'sK': 0.10, 'sM': 0.14,
      // White dwarfs: nearly flat line below main sequence
      'wO': 0.74, 'wB': 0.75, 'wA': 0.76, 'wF': 0.77, 'wG': 0.78,
    };
    return p[cls] ?? 0.5;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // Background.
    final bgPaint = Paint()..color = const Color(0x88050510);
    canvas.drawRRect(
      RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(4)),
      bgPaint,
    );


    // Draw selection ring if resolved.
    if (isResolved && selectedClass != null) {
      final sx = _hrX(selectedClass!) * size.width;
      final sy = _hrY(selectedClass!) * size.height;
      final ringColor = isCorrect ? Colors.green : Colors.red;
      final ring = Paint()
        ..color = ringColor.withValues(alpha: 0.4)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0;
      canvas.drawCircle(Offset(sx, sy), size.width * 0.08, ring);
      final ringGlow = Paint()
        ..color = ringColor.withValues(alpha: 0.15)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
      canvas.drawCircle(Offset(sx, sy), size.width * 0.08, ringGlow);
    }
    if (isResolved && !isCorrect) {
      final cx = _hrX(correctClass) * size.width;
      final cy = _hrY(correctClass) * size.height;
      final ring = Paint()
        ..color = Colors.green.withValues(alpha: 0.3)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0;
      canvas.drawCircle(Offset(cx, cy), size.width * 0.08, ring);
    }

    // Draw stars per group.
    // Main sequence groups get elongated spread along the sequence direction
    // so adjacent classes feather into each other.
    const mainSeqClasses = ['O', 'B', 'A', 'F', 'G', 'K', 'M'];
    var starIdx = 0;
    for (final group in groups) {
      final cls = group.key;
      final stars = group.value;
      final color = _classColors[cls] ?? Colors.white;
      final cx = _hrX(cls) * size.width;
      final cy = _hrY(cls) * size.height;

      final isMainSeq = mainSeqClasses.contains(cls);
      // Main sequence: wide spread along the diagonal, narrow perpendicular.
      // Off-sequence: circular spread.
      final spreadAlong = isMainSeq ? size.width * 0.11 : size.width * 0.06;
      final spreadPerp = isMainSeq ? size.width * 0.07 : size.width * 0.06;

      for (final s in stars) {
        // Spread along main sequence diagonal (~45°) and perpendicular.
        final along = (s.x - 0.5) * spreadAlong * 2;
        final perp = (s.y - 0.5) * spreadPerp * 2;
        // Main sequence runs roughly top-left to bottom-right.
        final sx = cx + along * 0.7 + perp * 0.7;
        final sy = cy + along * 0.7 - perp * 0.7;

        final phase = twinkle * 2 * pi + starIdx * 2.3;
        final brightness = 0.6 + 0.4 * sin(phase);
        final radius = s.r * brightness;

        // Outer glow.
        final glow = Paint()
          ..color = color.withValues(alpha: 0.15 * brightness)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
        canvas.drawCircle(Offset(sx, sy), radius * 3, glow);

        // Inner glow.
        final inner = Paint()
          ..color = color.withValues(alpha: 0.4 * brightness)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
        canvas.drawCircle(Offset(sx, sy), radius * 1.5, inner);

        // Core.
        final core = Paint()..color = color.withValues(alpha: 0.8 + 0.2 * brightness);
        canvas.drawCircle(Offset(sx, sy), radius, core);

        // White-hot center.
        if (s.r > 2.0) {
          final white = Paint()..color = Colors.white.withValues(alpha: 0.5 * brightness);
          canvas.drawCircle(Offset(sx, sy), radius * 0.4, white);
        }
        starIdx++;
      }
    }
  }

  @override
  bool shouldRepaint(covariant _HRDiagramPainter old) => true;
}

/// Draws an atom diagram: nucleus cluster in the center, concentric orbital
/// rings with electron dots distributed around them.
class _AtomPainter extends CustomPainter {
  const _AtomPainter({required this.atomicNumber, required this.color});

  final int atomicNumber;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width / 2 - 2;

    if (atomicNumber <= 0) return;

    final shells = CrystallineSystem.electronShells(atomicNumber);

    // Draw orbital rings.
    final ringPaint = Paint()
      ..color = color.withValues(alpha: 0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    final shellCount = shells.length;
    for (var s = 0; s < shellCount; s++) {
      final r = maxRadius * (s + 1) / (shellCount + 0.5);
      canvas.drawCircle(center, r, ringPaint);
    }

    // Draw nucleus polygon: 1=dot, 2=line, 3=triangle, ... 12+=dodecagon.
    // Nucleus takes up ~35% of the radius so it's clearly visible.
    final nucleusRadius = maxRadius * 0.35;
    final nucleusPaint = Paint()
      ..color = color.withValues(alpha: 0.6)
      ..style = PaintingStyle.fill;
    final nucleusStroke = Paint()
      ..color = color.withValues(alpha: 0.9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final sides = atomicNumber.clamp(1, 8);
    if (sides <= 1) {
      canvas.drawCircle(center, 3.0, nucleusPaint);
      canvas.drawCircle(center, 3.0, nucleusStroke);
    } else if (sides == 2) {
      final p = Paint()
        ..color = color.withValues(alpha: 0.9)
        ..strokeWidth = 2.0
        ..strokeCap = StrokeCap.round;
      canvas.drawLine(
        Offset(center.dx - nucleusRadius, center.dy),
        Offset(center.dx + nucleusRadius, center.dy),
        p,
      );
    } else {
      final path = Path();
      for (var i = 0; i < sides; i++) {
        final angle = (i / sides) * 2 * pi - pi / 2;
        final x = center.dx + nucleusRadius * cos(angle);
        final y = center.dy + nucleusRadius * sin(angle);
        if (i == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }
      path.close();
      canvas.drawPath(path, nucleusPaint);
      canvas.drawPath(path, nucleusStroke);
    }


    // Draw electrons as dots on each orbital ring.
    final electronPaint = Paint()..color = color;
    final electronRadius = 2.5;

    for (var s = 0; s < shellCount; s++) {
      final r = maxRadius * (s + 1) / (shellCount + 0.5);
      final count = shells[s];
      for (var e = 0; e < count; e++) {
        final angle = (e / count) * 2 * pi - pi / 2;
        final ex = center.dx + r * cos(angle);
        final ey = center.dy + r * sin(angle);
        canvas.drawCircle(Offset(ex, ey), electronRadius, electronPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _AtomPainter old) =>
      old.atomicNumber != atomicNumber || old.color != color;
}

/// Renders L- or D-alanine as a tetrahedral projection around a central carbon.
///
/// Layout: central C atom with 4 substituents arranged tetrahedrally.
/// L-alanine (clockwise from top): NH₂, COOH, H, CH₃
/// D-alanine mirrors NH₂ and COOH (swapped left/right).
///
/// Bonds use wedge (coming toward viewer) and dash (going away) notation
/// to convey 3D chirality on a 2D surface.
class _AlaninePainter extends CustomPainter {
  const _AlaninePainter({
    required this.isL,
    required this.rotationDeg,
    required this.accent,
    required this.pulseValue,
  });

  final bool isL;
  final double rotationDeg;
  final Color accent;
  final double pulseValue;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final scale = size.shortestSide / 2 * 0.75;
    final rotRad = rotationDeg * pi / 180;

    // Fischer projection: cross layout with COOH top, CH₃ bottom, NH₂/H sides.
    // Vertical bonds (top/bottom) = dash (going away from viewer).
    // Horizontal bonds (left/right) = wedge (coming toward viewer).
    //
    // Positions: 0=top, 1=right, 2=bottom, 3=left
    // Base angles: top=-π/2, right=0, bottom=π/2, left=π
    const baseAngles = [-pi / 2, 0.0, pi / 2, pi];
    const distances = [0.85, 0.80, 0.85, 0.80]; // vertical slightly longer

    // Substituent data: [label, color, fontSize]
    // Fixed positions: COOH always top (0), CH₃ always bottom (2).
    // L-alanine: NH₂ left (3), H right (1).
    // D-alanine: NH₂ right (1), H left (3).
    final labels = [
      isL ? 'COOH' : 'HOOC',  // pos 0: top — reversed label for mirror
      isL ? 'H' : 'NH\u2082', // pos 1: right
      isL ? 'CH\u2083' : 'H\u2083C', // pos 2: bottom
      isL ? 'NH\u2082' : 'H', // pos 3: left
    ];
    final colors = [
      const Color(0xFFEF5350), // COOH — red (carboxyl)
      isL ? Colors.white70 : const Color(0xFF4FC3F7),
      const Color(0xFF66BB6A), // CH₃ — green (methyl)
      isL ? const Color(0xFF4FC3F7) : Colors.white70,
    ];
    final fontSizes = [12.0, isL ? 14.0 : 13.0, 13.0, isL ? 13.0 : 14.0];

    // Bond types per position: top=dash(1), right=wedge(0), bottom=dash(1), left=wedge(0)
    const bondTypes = [1, 0, 1, 0];

    final positions = <Offset>[];
    for (var i = 0; i < 4; i++) {
      final angle = baseAngles[i] + rotRad;
      final d = distances[i] * scale;
      positions.add(Offset(cx + cos(angle) * d, cy + sin(angle) * d));
    }

    // Draw bonds from center to each substituent.
    for (var i = 0; i < 4; i++) {
      final pos = positions[i];
      _drawBond(canvas, Offset(cx, cy), pos, bondTypes[i], accent);
    }

    // Draw central carbon atom.
    final carbonGlow = Paint()
      ..color = accent.withValues(alpha: 0.2 + pulseValue * 0.15)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawCircle(Offset(cx, cy), 16, carbonGlow);

    final carbonFill = Paint()..color = const Color(0xFF1A1A2E);
    canvas.drawCircle(Offset(cx, cy), 14, carbonFill);

    final carbonStroke = Paint()
      ..color = accent.withValues(alpha: 0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(Offset(cx, cy), 14, carbonStroke);

    // 'C' label on central atom.
    final cPainter = TextPainter(
      text: TextSpan(
        text: 'C',
        style: TextStyle(
          color: accent,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    cPainter.paint(canvas, Offset(cx - cPainter.width / 2, cy - cPainter.height / 2));

    // Draw substituent labels.
    for (var i = 0; i < 4; i++) {
      final pos = positions[i];
      final color = colors[i];
      final label = labels[i];
      final fontSize = fontSizes[i];

      // Background circle/pill for the substituent.
      final bgPaint = Paint()..color = color.withValues(alpha: 0.12);
      final bgStroke = Paint()
        ..color = color.withValues(alpha: 0.5)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.0;

      final tp = TextPainter(
        text: TextSpan(
          text: label,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();

      final bgW = tp.width + 12;
      final bgH = tp.height + 8;
      final bgRect = RRect.fromRectAndRadius(
        Rect.fromCenter(center: pos, width: bgW, height: bgH),
        const Radius.circular(10),
      );
      canvas.drawRRect(bgRect, bgPaint);
      canvas.drawRRect(bgRect, bgStroke);

      tp.paint(canvas, Offset(pos.dx - tp.width / 2, pos.dy - tp.height / 2));
    }

    // Mirror-plane indicator: a faint vertical dashed line.
    // This is subtle but helps the player see the reflection axis.
    final dashPaint = Paint()
      ..color = accent.withValues(alpha: 0.15)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;
    const dashLen = 6.0;
    const gapLen = 4.0;
    var dy = 0.0;
    while (dy < size.height) {
      canvas.drawLine(
        Offset(cx, dy),
        Offset(cx, (dy + dashLen).clamp(0, size.height)),
        dashPaint,
      );
      dy += dashLen + gapLen;
    }
  }

  void _drawBond(Canvas canvas, Offset from, Offset to, int type, Color accent) {
    // Direction vector.
    final dx = to.dx - from.dx;
    final dy = to.dy - from.dy;
    final len = sqrt(dx * dx + dy * dy);
    final nx = -dy / len; // perpendicular
    final ny = dx / len;

    // Shorten bonds so they don't overlap the atom circles.
    final t0 = 16 / len; // start past center atom
    final t1 = 1.0 - 18 / len; // end before substituent label
    final start = Offset(from.dx + dx * t0, from.dy + dy * t0);
    final end = Offset(from.dx + dx * t1, from.dy + dy * t1);

    switch (type) {
      case 0: // Wedge bond (toward viewer) — filled triangle widening from start to end.
        final wedgeWidth = 6.0;
        final path = Path()
          ..moveTo(start.dx, start.dy)
          ..lineTo(end.dx + nx * wedgeWidth, end.dy + ny * wedgeWidth)
          ..lineTo(end.dx - nx * wedgeWidth, end.dy - ny * wedgeWidth)
          ..close();
        final fill = Paint()..color = accent.withValues(alpha: 0.6);
        canvas.drawPath(path, fill);
        final stroke = Paint()
          ..color = accent.withValues(alpha: 0.8)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 0.8;
        canvas.drawPath(path, stroke);
        break;

      case 1: // Dash bond (away from viewer) — series of parallel lines.
        const segments = 7;
        for (var s = 0; s < segments; s++) {
          final t = s / (segments - 1);
          final mx = start.dx + (end.dx - start.dx) * t;
          final my = start.dy + (end.dy - start.dy) * t;
          final halfW = 2.0 + t * 4.0; // widen slightly
          final linePaint = Paint()
            ..color = accent.withValues(alpha: 0.6)
            ..strokeWidth = 1.2
            ..strokeCap = StrokeCap.round;
          canvas.drawLine(
            Offset(mx + nx * halfW, my + ny * halfW),
            Offset(mx - nx * halfW, my - ny * halfW),
            linePaint,
          );
        }
        break;

      default: // Plain bond — simple line.
        final linePaint = Paint()
          ..color = accent.withValues(alpha: 0.5)
          ..strokeWidth = 1.5
          ..strokeCap = StrokeCap.round;
        canvas.drawLine(start, end, linePaint);
        break;
    }
  }

  @override
  bool shouldRepaint(covariant _AlaninePainter old) =>
      old.isL != isL || old.rotationDeg != rotationDeg || old.pulseValue != pulseValue;
}
