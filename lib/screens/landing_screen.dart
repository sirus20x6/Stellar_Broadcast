import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/models/planet.dart';
import 'package:starbound_exodus/models/ship.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Landing decision screen -- "Accept this planet or press on?"
class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({super.key});

  @override
  ConsumerState<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;
  late final AnimationController _pulseController;
  late final AnimationController _entryController;
  late final Animation<double> _entryFade;
  late final Animation<double> _entrySlide;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    _entryController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();
    _entryFade = CurvedAnimation(
      parent: _entryController,
      curve: Curves.easeOut,
    );
    _entrySlide = Tween<double>(begin: 40, end: 0).animate(
      CurvedAnimation(parent: _entryController, curve: Curves.easeOutCubic),
    );
  }

  @override
  void dispose() {
    _starController.dispose();
    _pulseController.dispose();
    _entryController.dispose();
    super.dispose();
  }

  /// Estimate remaining encounters based on lowest system health.
  int _estimateRemainingEncounters(ShipSystems ship) {
    final lowest = ShipSystems.systemNames
        .map((n) => ship.getSystem(n))
        .reduce(min);
    return (lowest / 0.12).floor().clamp(0, 99);
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Utopia':
        return const Color(0xFFFFD700);
      case 'Paradise':
        return const Color(0xFF4CAF50);
      case 'Habitable':
        return _kAccent;
      case 'Harsh':
        return const Color(0xFFFF9800);
      case 'Hostile':
        return const Color(0xFFF44336);
      case 'Death World':
        return const Color(0xFF880000);
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final voyage = ref.watch(voyageProvider);
    final planet = voyage.currentPlanet;
    final ship = voyage.ship;

    if (planet == null) {
      return const Scaffold(
        backgroundColor: _kBgColor,
        body: Center(child: CircularProgressIndicator(color: _kAccent)),
      );
    }

    final avgHealth = ship.averageHealth;
    final lowestVal = ShipSystems.systemNames
        .map((n) => ship.getSystem(n))
        .reduce(min);
    final remaining = _estimateRemainingEncounters(ship);
    final shipCritical = lowestVal < 0.15;

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

          // Main content.
          SafeArea(
            child: AnimatedBuilder(
              animation: _entryController,
              builder: (_, child) => Opacity(
                opacity: _entryFade.value,
                child: Transform.translate(
                  offset: Offset(0, _entrySlide.value),
                  child: child,
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 24),

                    // Planet name.
                    Text(
                      planet.name.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 4,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Tier badge.
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: _kAccent.withValues(alpha: 0.5)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        planet.tier.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: _tierColor(planet.tier),
                          letterSpacing: 3,
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Planet visualization circle.
                    AnimatedBuilder(
                      animation: _pulseController,
                      builder: (_, __) => _PlanetVisualization(
                        planet: planet,
                        pulse: _pulseController.value,
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Planet stats card.
                    _StatsCard(
                      title: 'PLANET ANALYSIS',
                      entries: [
                        _StatEntry('Atmosphere', planet.atmosphere),
                        _StatEntry('Temperature', planet.temperature),
                        _StatEntry('Water', planet.water),
                        _StatEntry('Resources', planet.resources),
                        _StatEntry('Gravity', planet.gravity),
                        _StatEntry('Biodiversity', planet.biodiversity),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Ship status card.
                    _StatsCard(
                      title: 'SHIP STATUS',
                      entries: [
                        _StatEntry('Avg Health', avgHealth),
                        _StatEntry('Hull', ship.hull),
                        _StatEntry('Scanner', ship.scanner),
                        _StatEntry('Navigation', ship.nav),
                        _StatEntry('Cryopods', ship.cryopods),
                        _StatEntry('Culture', ship.culture),
                        _StatEntry('Tech', ship.tech),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Risk assessment panel.
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: shipCritical
                              ? const Color(0xFFF44336).withValues(alpha: 0.6)
                              : _kAccent.withValues(alpha: 0.3),
                        ),
                        color: _kBgColor.withValues(alpha: 0.85),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'RISK ASSESSMENT',
                            style: TextStyle(
                              color: _kAccent.withValues(alpha: 0.7),
                              fontSize: 12,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Your ship can sustain ~$remaining more encounters',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          if (shipCritical) ...[
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF44336)
                                    .withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: const Color(0xFFF44336)
                                      .withValues(alpha: 0.4),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.warning_amber_rounded,
                                      color: Color(0xFFF44336), size: 20),
                                  SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      'Your ship may not survive another voyage',
                                      style: TextStyle(
                                        color: Color(0xFFF44336),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Establish colony — primary glowing button.
                    _GlowingActionButton(
                      label: 'ESTABLISH COLONY',
                      isPrimary: true,
                      pulseController: _pulseController,
                      onTap: () {
                        ref.read(voyageProvider.notifier).landOnPlanet();
                        Navigator.of(context)
                            .pushReplacementNamed('/ending');
                      },
                    ),
                    const SizedBox(height: 16),

                    // Press onward — secondary button.
                    _GlowingActionButton(
                      label: 'PRESS ONWARD',
                      isPrimary: false,
                      pulseController: _pulseController,
                      onTap: () {
                        ref.read(voyageProvider.notifier).pressOn();
                        Navigator.of(context).pop();
                      },
                    ),

                    const SizedBox(height: 40),
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

// ── Planet visualization ────────────────────────────────────────────────────

class _PlanetVisualization extends StatelessWidget {
  const _PlanetVisualization({required this.planet, required this.pulse});

  final Planet planet;
  final double pulse;

  @override
  Widget build(BuildContext context) {
    final diameter = MediaQuery.of(context).size.width * 0.55;
    final glowIntensity = 0.15 + pulse * 0.1;
    final colors = _buildPlanetColors(planet);

    return SizedBox(
      width: diameter + 40,
      height: diameter + 40,
      child: Center(
        child: Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: colors,
              stops: const [0.0, 0.4, 0.75, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: colors[1].withValues(alpha: glowIntensity),
                blurRadius: 40,
                spreadRadius: 8,
              ),
              BoxShadow(
                color: colors[2].withValues(alpha: glowIntensity * 0.5),
                blurRadius: 80,
                spreadRadius: 16,
              ),
            ],
          ),
          child: CustomPaint(
            painter: _PlanetDetailPainter(
              planet: planet,
              animValue: pulse,
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _buildPlanetColors(Planet planet) {
    final blue = planet.water * 0.8;
    final green = planet.biodiversity * 0.7;
    final red = planet.temperature * 0.6;
    final grey = (1.0 - planet.habitabilityScore) * 0.5;

    final r =
        ((red * 200 + grey * 120) / (red + grey + 0.01)).clamp(30.0, 255.0);
    final g = ((green * 220 + grey * 100) / (green + grey + 0.01))
        .clamp(30.0, 255.0);
    final b =
        ((blue * 255 + grey * 100) / (blue + grey + 0.01)).clamp(40.0, 255.0);

    final coreColor = Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1.0);
    final midColor = Color.lerp(coreColor, const Color(0xFF1A2940), 0.3)!;
    final edgeColor = Color.lerp(coreColor, const Color(0xFF0B1426), 0.6)!;

    return [
      Color.lerp(Colors.white, coreColor, 0.5)!,
      coreColor,
      midColor,
      edgeColor,
    ];
  }
}

class _PlanetDetailPainter extends CustomPainter {
  _PlanetDetailPainter({required this.planet, required this.animValue});

  final Planet planet;
  final double animValue;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Atmospheric ring for planets with decent atmosphere.
    if (planet.atmosphere > 0.3) {
      final atmPaint = Paint()
        ..color = _kAccent.withValues(alpha: planet.atmosphere * 0.15)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2 + planet.atmosphere * 4
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      canvas.drawCircle(center, radius + 4, atmPaint);
    }

    // Surface latitude bands.
    final linePaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.08)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    for (int i = 1; i < 5; i++) {
      final y = center.dy - radius + (radius * 2 * i / 5);
      final halfWidth =
          sqrt(max(0, radius * radius - pow(y - center.dy, 2)));
      canvas.drawArc(
        Rect.fromCenter(
          center: center,
          width: halfWidth * 2,
          height: radius * 0.3,
        ),
        0,
        pi,
        false,
        linePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _PlanetDetailPainter old) =>
      old.animValue != animValue;
}

// ── Stats card ──────────────────────────────────────────────────────────────

class _StatEntry {
  final String label;
  final double value;
  const _StatEntry(this.label, this.value);
}

class _StatsCard extends StatelessWidget {
  const _StatsCard({required this.title, required this.entries});

  final String title;
  final List<_StatEntry> entries;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: _kAccent.withValues(alpha: 0.7),
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...entries.map((e) => _StatBar(label: e.label, value: e.value)),
        ],
      ),
    );
  }
}

class _StatBar extends StatelessWidget {
  const _StatBar({required this.label, required this.value});

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    final clamped = value.clamp(0.0, 1.0);
    Color barColor;
    if (clamped > 0.6) {
      barColor = _kAccent;
    } else if (clamped > 0.3) {
      barColor = const Color(0xFFFF9800);
    } else {
      barColor = const Color(0xFFF44336);
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
              Text(
                '${(clamped * 100).toInt()}%',
                style: TextStyle(
                  color: barColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: SizedBox(
              height: 6,
              child: LinearProgressIndicator(
                value: clamped,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
                valueColor: AlwaysStoppedAnimation(barColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Glowing action button ───────────────────────────────────────────────────

class _GlowingActionButton extends StatelessWidget {
  const _GlowingActionButton({
    required this.label,
    required this.isPrimary,
    required this.pulseController,
    required this.onTap,
  });

  final String label;
  final bool isPrimary;
  final AnimationController pulseController;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pulseController,
      builder: (_, __) {
        final glowAlpha =
            isPrimary ? 0.2 + pulseController.value * 0.15 : 0.0;

        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    isPrimary ? _kAccent : _kAccent.withValues(alpha: 0.4),
                width: isPrimary ? 2 : 1,
              ),
              color: isPrimary
                  ? _kAccent.withValues(alpha: 0.15)
                  : Colors.transparent,
              boxShadow: isPrimary
                  ? [
                      BoxShadow(
                        color: _kAccent.withValues(alpha: glowAlpha),
                        blurRadius: 20,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isPrimary ? Colors.white : _kAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
        );
      },
    );
  }
}
