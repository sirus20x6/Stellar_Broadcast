import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/models/event.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

/// Theme constants.
const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Displays a narrative event with player choices and a typewriter text effect.
class EventScreen extends ConsumerStatefulWidget {
  const EventScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends ConsumerState<EventScreen>
    with TickerProviderStateMixin {
  // Star field animation.
  late final AnimationController _starController;

  // Typewriter state.
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // Choice state.
  int? _selectedChoiceIndex;
  bool _showingOutcome = false;

  // Title glow animation.
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;

  @override
  void initState() {
    super.initState();

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

    _startTypewriter();
  }

  void _startTypewriter() {
    _typewriterTimer = Timer.periodic(
      const Duration(milliseconds: 30),
      (timer) {
        if (_charIndex >= widget.event.narrative.length) {
          timer.cancel();
          if (mounted) setState(() => _typewriterDone = true);
          return;
        }
        if (mounted) {
          setState(() {
            _charIndex++;
            _displayedText = widget.event.narrative.substring(0, _charIndex);
          });
        }
      },
    );
  }

  void _skipTypewriter() {
    _typewriterTimer?.cancel();
    setState(() {
      _displayedText = widget.event.narrative;
      _charIndex = widget.event.narrative.length;
      _typewriterDone = true;
    });
  }

  void _onChoiceSelected(int index) {
    if (_showingOutcome) return;
    final choice = widget.event.choices[index];

    setState(() {
      _selectedChoiceIndex = index;
      _showingOutcome = true;
    });

    // Apply effects via provider.
    ref.read(voyageProvider.notifier).handleEvent(choice);

    // Show outcome briefly, then navigate back.
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _starController.dispose();
    _titleGlow.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final event = widget.event;

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field background.
          Positioned.fill(
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

          // Content.
          SafeArea(
            child: GestureDetector(
              onTap: _typewriterDone ? null : _skipTypewriter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 32),

                    // Title with glowing cyan.
                    AnimatedBuilder(
                      animation: _titleGlowAnim,
                      builder: (_, __) => Text(
                        event.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: _kAccent,
                          letterSpacing: 2,
                          shadows: [
                            Shadow(
                              color: _kAccent.withValues(
                                  alpha: _titleGlowAnim.value),
                              blurRadius: 20,
                            ),
                            Shadow(
                              color: _kAccent.withValues(
                                  alpha: _titleGlowAnim.value * 0.5),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Narrative card.
                    Expanded(
                      child: _NarrativeCard(
                        text: _showingOutcome
                            ? event.choices[_selectedChoiceIndex!].outcome
                            : _displayedText,
                        isOutcome: _showingOutcome,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Choice buttons (visible after typewriter completes).
                    if (_typewriterDone && !_showingOutcome)
                      ...event.choices.asMap().entries.map(
                            (entry) => _ChoiceButton(
                              text: entry.value.text,
                              onTap: () => _onChoiceSelected(entry.key),
                            ),
                          ),

                    if (!_typewriterDone)
                      Text(
                        'TAP TO SKIP',
                        style: TextStyle(
                          color: _kAccent.withValues(alpha: 0.5),
                          fontSize: 12,
                          letterSpacing: 2,
                        ),
                      ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Narrative card ──────────────────────────────────────────────────────────

class _NarrativeCard extends StatelessWidget {
  const _NarrativeCard({required this.text, required this.isOutcome});

  final String text;
  final bool isOutcome;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isOutcome
              ? _kAccent.withValues(alpha: 0.8)
              : _kAccent.withValues(alpha: 0.3),
          width: isOutcome ? 2 : 1,
        ),
        boxShadow: isOutcome
            ? [
                BoxShadow(
                  color: _kAccent.withValues(alpha: 0.15),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ]
            : null,
      ),
      child: SingleChildScrollView(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child: Text(
            text,
            key: ValueKey(isOutcome ? 'outcome' : 'narrative'),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 1.6,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}

// ── Choice button ───────────────────────────────────────────────────────────

class _ChoiceButton extends StatefulWidget {
  const _ChoiceButton({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  State<_ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<_ChoiceButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shimmer;

  @override
  void initState() {
    super.initState();
    _shimmer = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat();
  }

  @override
  void dispose() {
    _shimmer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: AnimatedBuilder(
        animation: _shimmer,
        builder: (_, __) {
          final shimmerAlpha =
              0.15 * (0.5 + 0.5 * sin(_shimmer.value * 2 * pi));
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: _kAccent.withValues(alpha: 0.6),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      _kAccent.withValues(alpha: 0.05),
                      _kAccent.withValues(alpha: shimmerAlpha),
                      _kAccent.withValues(alpha: 0.05),
                    ],
                    stops: [0.0, _shimmer.value, 1.0],
                  ),
                ),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: _kAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
