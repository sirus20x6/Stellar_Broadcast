import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/models/planet.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/holographic_button.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

/// Dramatic planet-scan screen with phased reveal animation.
///
/// Phase 1: Cyan scan lines sweep down the screen.
/// Phase 2: Planet visualization and stats are revealed one-by-one.
class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen>
    with TickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  // Master timeline: 0.0 -> 0.35 = scan phase, 0.35 -> 1.0 = reveal phase.
  late final AnimationController _masterController;
  late final Animation<double> _scanProgress;
  late final Animation<double> _revealProgress;

  // Continuous star field.
  late final AnimationController _starController;

  @override
  void initState() {
    super.initState();

    _masterController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    )..forward();

    _scanProgress = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _masterController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeInOut),
      ),
    );

    _revealProgress = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _masterController,
        curve: const Interval(0.35, 1.0, curve: Curves.easeOut),
      ),
    );

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 90),
    )..repeat();
  }

  @override
  void dispose() {
    _masterController.dispose();
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final planet = ref.watch(voyageProvider).currentPlanet;
    if (planet == null) {
      return const Scaffold(
        backgroundColor: _background,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: _background,
      body: AnimatedBuilder(
        animation: _masterController,
        builder: (context, _) {
          return Stack(
            children: [
              // Background stars.
              Positioned.fill(
                child: CustomPaint(
                  painter: StarFieldPainter(
                    animationValue: _starController.value,
                    farStarCount: 60,
                    midStarCount: 20,
                    nearStarCount: 8,
                  ),
                  size: Size.infinite,
                ),
              ),

              // Scan lines overlay (phase 1).
              if (_scanProgress.value < 1.0)
                Positioned.fill(
                  child: CustomPaint(
                    painter: _ScanLinePainter(
                      progress: _scanProgress.value,
                      accent: _accent,
                    ),
                  ),
                ),

              // Content (fades in during phase 2).
              Positioned.fill(
                child: SafeArea(
                  child: Opacity(
                    opacity: _revealProgress.value.clamp(0.0, 1.0),
                    child: _buildContent(planet),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(Planet planet) {
    final statNames = Planet.statNames;
    final revealFraction = _revealProgress.value;
    // Each stat reveals sequentially across the reveal phase.
    final stagger = 1.0 / (statNames.length + 1);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const SizedBox(height: 12),

          // Planet name.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.0,
            child: Text(
              planet.name.toUpperCase(),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 28,
                fontWeight: FontWeight.w900,
                letterSpacing: 6,
                color: _accent,
                shadows: [
                  Shadow(
                    color: _accent.withValues(alpha: 0.7),
                    blurRadius: 16,
                  ),
                  Shadow(
                    color: _accent.withValues(alpha: 0.4),
                    blurRadius: 32,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Planet description.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: stagger * 0.5,
            child: Text(
              planet.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                letterSpacing: 1,
                color: Colors.white.withValues(alpha: 0.6),
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Planet visualization.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: stagger,
            child: _PlanetVisualization(planet: planet, accent: _accent),
          ),

          const SizedBox(height: 24),

          // Stats.
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: statNames.length,
              itemBuilder: (context, i) {
                final name = statNames[i];
                final value = planet.getStat(name);
                final t = stagger * (i + 2);

                return _revealedWidget(
                  revealFraction: revealFraction,
                  threshold: t,
                  child: _PlanetStatRow(name: name, value: value),
                );
              },
            ),
          ),

          // Habitability badge.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.85,
            child: _HabitabilityBadge(planet: planet, accent: _accent),
          ),

          const SizedBox(height: 16),

          // Action buttons.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.92,
            child: Column(
              children: [
                HolographicButton(
                  label: 'LAND HERE',
                  onPressed: () =>
                      Navigator.pushNamed(context, '/landing'),
                ),
                const SizedBox(height: 10),
                HolographicButton(
                  label: 'PRESS ON',
                  isPrimary: false,
                  onPressed: () {
                    ref.read(voyageProvider.notifier).pressOn();
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }

  /// Fades and slides in [child] when [revealFraction] surpasses [threshold].
  Widget _revealedWidget({
    required double revealFraction,
    required double threshold,
    required Widget child,
  }) {
    final local = ((revealFraction - threshold) / 0.15).clamp(0.0, 1.0);
    return Opacity(
      opacity: local,
      child: Transform.translate(
        offset: Offset(0, 12 * (1 - local)),
        child: child,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Sub-widgets
// ---------------------------------------------------------------------------

/// Scan-line effect drawn during phase 1.
class _ScanLinePainter extends CustomPainter {
  _ScanLinePainter({required this.progress, required this.accent});

  final double progress;
  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    const lineCount = 30;
    final sweepY = progress * size.height;

    for (int i = 0; i < lineCount; i++) {
      final y = (sweepY - i * 8).clamp(0.0, size.height);
      final opacity = (1.0 - i / lineCount) * 0.5 * (1.0 - progress);
      final paint = Paint()
        ..color = accent.withValues(alpha: opacity)
        ..strokeWidth = 1.0;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }

    // Bright leading edge.
    final edgePaint = Paint()
      ..color = accent.withValues(alpha: 0.8 * (1.0 - progress))
      ..strokeWidth = 2.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawLine(
      Offset(0, sweepY),
      Offset(size.width, sweepY),
      edgePaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ScanLinePainter old) =>
      old.progress != progress;
}

/// A simple circle with gradient coloring based on planet stats.
class _PlanetVisualization extends StatelessWidget {
  const _PlanetVisualization({required this.planet, required this.accent});

  final Planet planet;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    // Derive dominant color from stats.
    final tempInfluence = planet.temperature;
    final bioInfluence = planet.biodiversity;

    final baseColor = Color.lerp(
      Color.lerp(
        const Color(0xFF1565C0), // blue — water
        const Color(0xFFD84315), // red  — hot
        tempInfluence,
      ),
      const Color(0xFF2E7D32), // green — bio
      bioInfluence * 0.5,
    )!;

    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: const Alignment(-0.3, -0.3),
          colors: [
            baseColor.withValues(alpha: 0.9),
            baseColor.withValues(alpha: 0.5),
            const Color(0xFF0B1426),
          ],
          stops: const [0.0, 0.6, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: baseColor.withValues(alpha: 0.35),
            blurRadius: 24,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: accent.withValues(alpha: 0.08),
            blurRadius: 40,
            spreadRadius: 8,
          ),
        ],
      ),
    );
  }
}

/// A single planet stat row with label, bar, and percentage.
class _PlanetStatRow extends StatelessWidget {
  const _PlanetStatRow({required this.name, required this.value});

  static const _accent = Color(0xFF00E5FF);

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    final pct = (value * 100).round();
    final color = _statColor(name, value);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Text(
              _displayName(name),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                letterSpacing: 1,
                color: _accent.withValues(alpha: 0.8),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white.withValues(alpha: 0.05),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: value.clamp(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        color.withValues(alpha: 0.9),
                        color.withValues(alpha: 0.5),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(alpha: 0.4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 35,
            child: Text(
              '$pct%',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _displayName(String name) {
    switch (name) {
      case 'atmosphere':
        return 'ATMOS';
      case 'temperature':
        return 'TEMP';
      case 'water':
        return 'WATER';
      case 'resources':
        return 'RESOURCE';
      case 'gravity':
        return 'GRAVITY';
      case 'biodiversity':
        return 'BIO';
      case 'anomaly':
        return 'ANOMALY';
      default:
        return name.toUpperCase();
    }
  }

  Color _statColor(String name, double v) {
    switch (name) {
      case 'water':
        return const Color(0xFF42A5F5);
      case 'temperature':
        return Color.lerp(
          const Color(0xFF42A5F5),
          const Color(0xFFEF5350),
          v,
        )!;
      case 'biodiversity':
        return const Color(0xFF66BB6A);
      case 'anomaly':
        return const Color(0xFFAB47BC);
      default:
        return const Color(0xFF00E5FF);
    }
  }
}

/// Prominently shows the habitability score with a tier badge.
class _HabitabilityBadge extends StatelessWidget {
  const _HabitabilityBadge({required this.planet, required this.accent});

  final Planet planet;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final score = planet.habitabilityScore;
    final tier = planet.tier;
    final pct = (score * 100).round();

    final tierColor = _tierColor(tier);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: tierColor.withValues(alpha: 0.5)),
        color: tierColor.withValues(alpha: 0.08),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'HABITABILITY',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              letterSpacing: 2,
              color: accent.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '$pct%',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: tierColor,
              shadows: [
                Shadow(
                  color: tierColor.withValues(alpha: 0.6),
                  blurRadius: 8,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tierColor.withValues(alpha: 0.2),
              border: Border.all(color: tierColor.withValues(alpha: 0.5)),
            ),
            child: Text(
              tier.toUpperCase(),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: tierColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Utopia':
        return const Color(0xFFFFD700);
      case 'Paradise':
        return const Color(0xFF00E676);
      case 'Habitable':
        return const Color(0xFF42A5F5);
      case 'Harsh':
        return const Color(0xFFFFCA28);
      case 'Hostile':
        return const Color(0xFFFF7043);
      case 'Death World':
        return const Color(0xFFFF1744);
      default:
        return accent;
    }
  }
}
