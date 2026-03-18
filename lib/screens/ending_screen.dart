import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/logic/ending_calculator.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Dramatic ending reveal with phased animations.
class EndingScreen extends ConsumerStatefulWidget {
  const EndingScreen({super.key});

  @override
  ConsumerState<EndingScreen> createState() => _EndingScreenState();
}

class _EndingScreenState extends ConsumerState<EndingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;

  // Phase controllers — staggered reveal.
  late final AnimationController _phase1Controller; // "COLONY ESTABLISHED"
  late final AnimationController _phase2Controller; // Score count-up
  late final AnimationController _phase3Controller; // Tier badge
  late final AnimationController _phase4Controller; // Epilogue
  late final AnimationController _phase5Controller; // Legacy points

  // Glow expansion for phase 1.
  late final Animation<double> _glowExpand;
  late final Animation<double> _glowOpacity;

  // Score count animation.
  late final Animation<int> _scoreCount;
  int _finalScore = 0;
  String _tier = '';
  String _epilogue = '';
  int _legacyPoints = 0;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    // Calculate ending results.
    final voyage = ref.read(voyageProvider);
    final result = EndingCalculator.calculate(
      voyage.ship,
      voyage.currentPlanet!,
    );
    _finalScore = result.score;
    _tier = result.tier;
    _epilogue = result.epilogue;
    _legacyPoints = (result.score / 10).ceil();

    // Phase 1: Colony established text + expanding glow.
    _phase1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _glowExpand = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _phase1Controller, curve: Curves.easeOutCubic),
    );
    _glowOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _phase1Controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    // Phase 2: Score counting.
    _phase2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _scoreCount = IntTween(begin: 0, end: _finalScore).animate(
      CurvedAnimation(parent: _phase2Controller, curve: Curves.easeOutCubic),
    );

    // Phase 3: Tier badge.
    _phase3Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Phase 4: Epilogue.
    _phase4Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Phase 5: Legacy points.
    _phase5Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _startPhaseSequence();
  }

  Future<void> _startPhaseSequence() async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;
    await _phase1Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase2Controller.forward();

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await _phase3Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase4Controller.forward();

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await _phase5Controller.forward();
  }

  @override
  void dispose() {
    _starController.dispose();
    _phase1Controller.dispose();
    _phase2Controller.dispose();
    _phase3Controller.dispose();
    _phase4Controller.dispose();
    _phase5Controller.dispose();
    super.dispose();
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Golden Age':
        return const Color(0xFFFFD700);
      case 'Thriving Colony':
        return const Color(0xFF4CAF50);
      case 'Survival':
        return _kAccent;
      case 'Struggling':
        return const Color(0xFFFF9800);
      case 'Dire':
        return const Color(0xFFF44336);
      case 'Extinction':
        return const Color(0xFF880000);
      default:
        return _kAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    final tierColor = _tierColor(_tier);

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (_, __) => CustomPaint(
                painter: StarFieldPainter(
                  animationValue: _starController.value,
                  farStarCount: 100,
                  midStarCount: 40,
                  nearStarCount: 15,
                ),
              ),
            ),
          ),

          // Content.
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  const SizedBox(height: 60),

                  // Phase 1: "COLONY ESTABLISHED" with expanding glow.
                  AnimatedBuilder(
                    animation: _phase1Controller,
                    builder: (_, __) => Opacity(
                      opacity: _glowOpacity.value,
                      child: Column(
                        children: [
                          // Glow ring.
                          Container(
                            width: 120 + _glowExpand.value * 60,
                            height: 120 + _glowExpand.value * 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: _kAccent.withValues(
                                      alpha: 0.3 * _glowOpacity.value),
                                  blurRadius: 40 + _glowExpand.value * 40,
                                  spreadRadius: _glowExpand.value * 20,
                                ),
                              ],
                            ),
                            child: Icon(
                              Icons.public,
                              size: 80 + _glowExpand.value * 20,
                              color: _kAccent.withValues(
                                  alpha: _glowOpacity.value),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'COLONY ESTABLISHED',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                                  .withValues(alpha: _glowOpacity.value),
                              letterSpacing: 4,
                              shadows: [
                                Shadow(
                                  color: _kAccent.withValues(
                                      alpha: _glowOpacity.value * 0.8),
                                  blurRadius: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 48),

                  // Phase 2: Score reveal with counting animation.
                  AnimatedBuilder(
                    animation: _phase2Controller,
                    builder: (_, __) {
                      final opacity = _phase2Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Column(
                          children: [
                            Text(
                              'COLONY SCORE',
                              style: TextStyle(
                                color: _kAccent.withValues(alpha: 0.7),
                                fontSize: 14,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${_scoreCount.value}',
                              style: TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color:
                                        _kAccent.withValues(alpha: 0.6),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 32),

                  // Phase 3: Tier badge reveal.
                  AnimatedBuilder(
                    animation: _phase3Controller,
                    builder: (_, __) {
                      final scale = Curves.elasticOut
                          .transform(_phase3Controller.value.clamp(0.0, 1.0));
                      final opacity =
                          _phase3Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Transform.scale(
                          scale: scale,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: tierColor, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: tierColor.withValues(alpha: 0.3),
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                ),
                              ],
                              color: tierColor.withValues(alpha: 0.15),
                            ),
                            child: Text(
                              _tier.toUpperCase(),
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: tierColor,
                                letterSpacing: 3,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 40),

                  // Phase 4: Epilogue text.
                  AnimatedBuilder(
                    animation: _phase4Controller,
                    builder: (_, __) {
                      final opacity =
                          _phase4Controller.value.clamp(0.0, 1.0);
                      final slide =
                          20.0 * (1.0 - _phase4Controller.value);
                      return Opacity(
                        opacity: opacity,
                        child: Transform.translate(
                          offset: Offset(0, slide),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: _kAccent.withValues(alpha: 0.2)),
                              color: _kBgColor.withValues(alpha: 0.85),
                            ),
                            child: Text(
                              _epilogue,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                height: 1.6,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 32),

                  // Phase 5: Legacy points earned with sparkle effect.
                  AnimatedBuilder(
                    animation: _phase5Controller,
                    builder: (_, __) {
                      final opacity =
                          _phase5Controller.value.clamp(0.0, 1.0);
                      final scale = 0.8 + 0.2 * _phase5Controller.value;
                      return Opacity(
                        opacity: opacity,
                        child: Transform.scale(
                          scale: scale,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [
                                  _kAccent.withValues(alpha: 0.1),
                                  _kAccent.withValues(alpha: 0.2),
                                  _kAccent.withValues(alpha: 0.1),
                                ],
                              ),
                              border: Border.all(
                                  color: _kAccent.withValues(alpha: 0.5)),
                              boxShadow: [
                                BoxShadow(
                                  color: _kAccent.withValues(alpha: 0.2),
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.auto_awesome,
                                    color: _kAccent, size: 24),
                                const SizedBox(width: 12),
                                Text(
                                  'LEGACY POINTS EARNED: +$_legacyPoints',
                                  style: const TextStyle(
                                    color: _kAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 48),

                  // Bottom buttons.
                  AnimatedBuilder(
                    animation: _phase5Controller,
                    builder: (_, __) {
                      final opacity =
                          _phase5Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Column(
                          children: [
                            _EndingButton(
                              label: 'VIEW LEGACY',
                              isPrimary: true,
                              onTap: () => Navigator.of(context)
                                  .pushReplacementNamed('/legacy'),
                            ),
                            const SizedBox(height: 16),
                            _EndingButton(
                              label: 'NEW VOYAGE',
                              isPrimary: false,
                              onTap: () {
                                ref
                                    .read(voyageProvider.notifier)
                                    .startVoyage();
                                Navigator.of(context)
                                    .pushReplacementNamed('/');
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Ending button ───────────────────────────────────────────────────────────

class _EndingButton extends StatelessWidget {
  const _EndingButton({
    required this.label,
    required this.isPrimary,
    required this.onTap,
  });

  final String label;
  final bool isPrimary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isPrimary ? _kAccent : _kAccent.withValues(alpha: 0.4),
            width: isPrimary ? 2 : 1,
          ),
          color: isPrimary ? _kAccent.withValues(alpha: 0.15) : Colors.transparent,
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: _kAccent.withValues(alpha: 0.2),
                    blurRadius: 16,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isPrimary ? Colors.white : _kAccent,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
