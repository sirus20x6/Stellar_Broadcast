import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = Color(0xFF7C4DFF);
const _kContainment = Color(0xFFFFD54F);
const _kEnergy = Color(0xFFE040FB);
const _kLeftWindowColor = Color(0xFFFFD54F);
const _kRightWindowColor = SpaceColors.cyan;

class SingularityEngineScreen extends ConsumerStatefulWidget {
  const SingularityEngineScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<SingularityEngineScreen> createState() =>
      _SingularityEngineScreenState();
}

class _SingularityEngineScreenState
    extends ConsumerState<SingularityEngineScreen>
    with
        TickerProviderStateMixin,
        EventTypewriterMixin<SingularityEngineScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;
  late final AnimationController _ringController;
  late final AnimationController _arcController;

  // Choice state.
  int? _selectedWindow;
  bool _resolved = false;
  bool _showEffects = false;

  @override
  void initState() {
    super.initState();

    _titleGlow = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _titleGlowAnim = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _titleGlow, curve: Curves.easeInOut));

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _ringController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..repeat();

    _arcController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    initTypewriter(widget.event.narrative);
    GameSfx().playLong(GameSfx.alienTech);
  }

  void _onChoiceMade(int index) {
    if (_resolved) return;
    if (index < 0 || index >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedWindow = index;
      _resolved = true;
    });

    unawaited(
      ref
          .read(voyageProvider.notifier)
          .handleEvent(widget.event.choices[index]),
    );

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) setState(() => _showEffects = true);
    });
  }

  @override
  void dispose() {
    disposeTypewriter();
    _titleGlow.dispose();
    _pulseController.dispose();
    _ringController.dispose();
    _arcController.dispose();
    super.dispose();
  }

  /// Whether the selected choice has net-positive effects.
  bool get _isPositiveOutcome {
    if (_selectedWindow == null) return true;
    final choice = widget.event.choices[_selectedWindow!];
    double sum = 0;
    for (final v in choice.shipEffects.values) {
      sum += v;
    }
    sum += choice.fuelDelta + choice.energyDelta + choice.probeDelta;
    return sum >= 0;
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
    text: 'SINGULARITY ENGINE',
    glow: _titleGlowAnim,
    accentColor: _kAccent,
    letterSpacing: 2,
  );

  Widget _buildNarrativeCard() => EventNarrativeCard(
    accentColor: _kAccent,
    displayText: displayedText,
    outcomeText: (_resolved && _selectedWindow != null)
        ? widget.event.choices[_selectedWindow!].outcome
        : null,
    outcomeIsPositive: _isPositiveOutcome,
  );

  Widget _buildVisualArea() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: _resolved
              ? null
              : (details) => _handleTap(details, constraints),
          child: AnimatedBuilder(
            animation: Listenable.merge([
              _ringController,
              _arcController,
              _pulseController,
            ]),
            builder: (_, __) => CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: _SingularityEnginePainter(
                ringValue: _ringController.value,
                arcValue: _arcController.value,
                pulseValue: _pulseAnim.value,
                selectedWindow: _selectedWindow,
                isResolved: _resolved,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHintOrContinue() => EventHintOrContinue(
    resolved: _resolved,
    typewriterDone: typewriterDone,
    accentColor: _kAccent,
    onContinue: () {
      GameSfx().playVaried(GameSfx.buttonClick);
      Navigator.of(context).pop();
    },
  );

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    return EventPopScope(
      resolved: _resolved,
      child: Scaffold(
        backgroundColor: _kBgColor,
        body: Stack(
          children: [
            // Star field.
            const EventStarField(
              farStarCount: 80,
              midStarCount: 30,
              nearStarCount: 10,
            ),

            // Content.
            SafeArea(
              bottom: false,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: typewriterDone ? null : skipTypewriter,
                child: isLandscape ? _buildLandscape() : _buildPortrait(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortrait() {
    return Column(
      children: [
        Expanded(
          child: ResponsiveContent(
            child: Column(
              children: [
                const SizedBox(height: 32),
                _buildTitle(),
                const SizedBox(height: 20),
                _buildNarrativeCard(),
                const SizedBox(height: 12),
                Expanded(child: _buildVisualArea()),
                if (!typewriterDone) const Spacer(),
                if (_showEffects) ...[
                  const SizedBox(height: 8),
                  _buildEffectChips(),
                ],
                if (_resolved || !typewriterDone) ...[
                  const SizedBox(height: 12),
                  _buildHintOrContinue(),
                ],
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
        PremiumAdGate(child: AdaptiveBannerAd()),
      ],
    );
  }

  Widget _buildLandscape() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 12, 8),
                  child: Column(
                    children: [
                      _buildTitle(),
                      const SizedBox(height: 12),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildNarrativeCard(),
                              if (_showEffects) ...[
                                const SizedBox(height: 8),
                                _buildEffectChips(),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildHintOrContinue(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 24, 8),
                  child: _buildVisualArea(),
                ),
              ),
            ],
          ),
        ),
        PremiumAdGate(child: AdaptiveBannerAd()),
      ],
    );
  }

  void _handleTap(TapDownDetails details, BoxConstraints constraints) {
    if (!typewriterDone) {
      skipTypewriter();
      return;
    }
    final size = Size(constraints.maxWidth, constraints.maxHeight);
    final tapPos = details.localPosition;

    // Choice zone centers (must match painter positions).
    final leftCenter = Offset(size.width * 0.30, size.height * 0.35);
    final rightCenter = Offset(size.width * 0.70, size.height * 0.35);
    final hitRadius = size.width * 0.12;

    final distLeft = (tapPos - leftCenter).distance;
    final distRight = (tapPos - rightCenter).distance;

    if (distLeft <= hitRadius && widget.event.choices.isNotEmpty) {
      _onChoiceMade(0);
    } else if (distRight <= hitRadius && widget.event.choices.length > 1) {
      _onChoiceMade(1);
    }
  }

  Widget _buildEffectChips() {
    if (_selectedWindow == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedWindow!];

    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      final isPositive = entry.value > 0;
      chips.add(
        _EffectChip(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: isPositive,
        ),
      );
    }

    for (final entry in choice.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
        ),
      );
    }

    if (choice.probeDelta != 0) {
      final sign = choice.probeDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Probes',
          delta: '$sign${choice.probeDelta}',
          isPositive: choice.probeDelta > 0,
        ),
      );
    }
    if (choice.fuelDelta != 0) {
      final sign = choice.fuelDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Fuel',
          delta: '$sign${choice.fuelDelta}',
          isPositive: choice.fuelDelta > 0,
        ),
      );
    }
    if (choice.energyDelta != 0) {
      final sign = choice.energyDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Energy',
          delta: '$sign${choice.energyDelta}',
          isPositive: choice.energyDelta > 0,
        ),
      );
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(
        const _EffectChip(
          label: 'Nav Data',
          delta: 'Acquired',
          isPositive: true,
        ),
      );
    }

    if (chips.isEmpty) {
      return Text(
        'No effect',
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.5),
          fontSize: 13,
        ),
      );
    }

    return Wrap(
      spacing: 8,
      runSpacing: 6,
      alignment: WrapAlignment.center,
      children: chips,
    );
  }
}

// ─── Effect chip ────────────────────────────────────────────────────────────

class _EffectChip extends StatelessWidget {
  const _EffectChip({
    required this.label,
    required this.delta,
    required this.isPositive,
  });

  final String label;
  final String delta;
  final bool isPositive;

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

// ─── Singularity Engine Painter ─────────────────────────────────────────────

class _SingularityEnginePainter extends CustomPainter {
  _SingularityEnginePainter({
    required this.ringValue,
    required this.arcValue,
    required this.pulseValue,
    required this.selectedWindow,
    required this.isResolved,
  });

  final double ringValue;
  final double arcValue;
  final double pulseValue;
  final int? selectedWindow;
  final bool isResolved;

  // Seeded random for stable particle/arc positions.
  static final _rng = Random(42);
  static final List<_ParticleAnchor> _particles = List.generate(
    13,
    (i) => _ParticleAnchor(_rng),
  );
  static final List<_ArcAnchor> _arcs = List.generate(
    5,
    (i) => _ArcAnchor(_rng),
  );

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.55;
    final singularityR = size.width * 0.08;

    // Background overlay.
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..color = const Color(0x88050510),
    );

    // Draw in order: gravitational lensing lines, containment rings, energy
    // arcs, particles, singularity core, choice zones.
    _drawGravitationalLensing(canvas, size, cx, cy, singularityR);
    _drawContainmentRings(canvas, size, cx, cy, singularityR);
    _drawEnergyArcs(canvas, size, cx, cy, singularityR);
    _drawOrbitingParticles(canvas, size, cx, cy, singularityR);
    _drawSingularityCore(canvas, cx, cy, singularityR);
    _drawChoiceZones(canvas, size);
  }

  void _drawGravitationalLensing(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double singularityR,
  ) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

    const lineCount = 7;
    for (int i = 0; i < lineCount; i++) {
      final baseAngle = (i / lineCount) * 2 * pi + ringValue * 2 * pi * 0.05;
      final startDist = singularityR * 3.0;
      final endDist = singularityR * 5.5;

      final bendOffset = 0.15 * sin(ringValue * 2 * pi + i);
      final startAngle = baseAngle + bendOffset;
      final endAngle = baseAngle - bendOffset;

      final startX = cx + cos(startAngle) * startDist;
      final startY = cy + sin(startAngle) * startDist;
      final endX = cx + cos(endAngle) * endDist;
      final endY = cy + sin(endAngle) * endDist;

      // Control point slightly off-axis for gentle curve.
      final cpAngle = baseAngle + pi / 2;
      final cpDist = singularityR * 1.2;
      final cpX = cx + cos(cpAngle) * cpDist;
      final cpY = cy + sin(cpAngle) * cpDist;

      final path = Path()
        ..moveTo(startX, startY)
        ..quadraticBezierTo(cpX, cpY, endX, endY);

      paint.color = Colors.white.withValues(alpha: 0.06 + 0.03 * pulseValue);
      canvas.drawPath(path, paint);
    }
  }

  void _drawContainmentRings(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double singularityR,
  ) {
    // Ring specs: [xRadiusFactor, yRadiusFactor, angleMultiplier, strokeWidth]
    final ringSpecs = [
      (3.2, 1.1, ringValue * 2 * pi, 2.5),
      (2.5, 0.85, ringValue * 2 * pi * -0.7, 1.8),
      (1.9, 0.65, ringValue * 2 * pi * 0.4, 1.4),
    ];

    for (int r = 0; r < ringSpecs.length; r++) {
      final (xFactor, yFactor, angle, strokeW) = ringSpecs[r];
      final rx = singularityR * xFactor;
      final ry = singularityR * yFactor;

      // Glow pass.
      final glowPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeW + 4
        ..color = _kContainment.withValues(alpha: 0.12 + 0.06 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      _drawRotatedEllipse(canvas, cx, cy, rx, ry, angle, glowPaint);

      // Main ring pass.
      final ringPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeW
        ..color = _kContainment.withValues(alpha: 0.7 + 0.2 * pulseValue);
      _drawRotatedEllipse(canvas, cx, cy, rx, ry, angle, ringPaint);
    }
  }

  void _drawRotatedEllipse(
    Canvas canvas,
    double cx,
    double cy,
    double rx,
    double ry,
    double rotation,
    Paint paint,
  ) {
    final path = Path();
    const steps = 60;
    for (int s = 0; s <= steps; s++) {
      final t = (s / steps) * 2 * pi;
      // Parametric ellipse, then rotate by `rotation`.
      final lx = rx * cos(t);
      final ly = ry * sin(t);
      final rx2 = lx * cos(rotation) - ly * sin(rotation);
      final ry2 = lx * sin(rotation) + ly * cos(rotation);
      if (s == 0) {
        path.moveTo(cx + rx2, cy + ry2);
      } else {
        path.lineTo(cx + rx2, cy + ry2);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  /// Returns a point on the r-th containment ring at parametric angle t.
  Offset _ringPoint(
    double cx,
    double cy,
    double singularityR,
    int ring,
    double t,
    double ringAngle,
  ) {
    final specs = [(3.2, 1.1), (2.5, 0.85), (1.9, 0.65)];
    final (xF, yF) = specs[ring.clamp(0, 2)];
    final rx = singularityR * xF;
    final ry = singularityR * yF;
    final lx = rx * cos(t);
    final ly = ry * sin(t);
    final px = lx * cos(ringAngle) - ly * sin(ringAngle);
    final py = lx * sin(ringAngle) + ly * cos(ringAngle);
    return Offset(cx + px, cy + py);
  }

  void _drawEnergyArcs(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double singularityR,
  ) {
    final ringAngles = [
      ringValue * 2 * pi,
      ringValue * 2 * pi * -0.7,
      ringValue * 2 * pi * 0.4,
    ];

    for (int a = 0; a < _arcs.length; a++) {
      final arc = _arcs[a];
      final flicker =
          0.4 + 0.6 * (0.5 + 0.5 * sin(arcValue * 2 * pi + a * 1.3));

      // Start on outer ring, end on middle ring.
      final p0 = _ringPoint(cx, cy, singularityR, 0, arc.t0, ringAngles[0]);
      final p1 = _ringPoint(cx, cy, singularityR, 1, arc.t1, ringAngles[1]);

      // Control point biased toward the singularity.
      final cpX = cx + (p0.dx - cx) * 0.3 + (p1.dx - cx) * 0.3;
      final cpY = cy + (p0.dy - cy) * 0.3 + (p1.dy - cy) * 0.3;

      final path = Path()
        ..moveTo(p0.dx, p0.dy)
        ..quadraticBezierTo(cpX, cpY, p1.dx, p1.dy);

      // Glow.
      final glowPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4.0
        ..color = _kEnergy.withValues(alpha: 0.15 * flicker)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5);
      canvas.drawPath(path, glowPaint);

      // Core arc.
      final arcPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2
        ..color = _kEnergy.withValues(alpha: 0.75 * flicker);
      canvas.drawPath(path, arcPaint);
    }
  }

  void _drawOrbitingParticles(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double singularityR,
  ) {
    final ringAngles = [
      ringValue * 2 * pi,
      ringValue * 2 * pi * -0.7,
      ringValue * 2 * pi * 0.4,
    ];

    for (int i = 0; i < _particles.length; i++) {
      final p = _particles[i];
      final t = p.baseT + ringValue * 2 * pi * p.speedMult;
      final pos = _ringPoint(
        cx,
        cy,
        singularityR,
        p.ringIndex,
        t,
        ringAngles[p.ringIndex],
      );

      final brightness = 0.5 + 0.4 * pulseValue;

      // Glow.
      final glowPaint = Paint()
        ..color = _kContainment.withValues(alpha: 0.25 * brightness)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
      canvas.drawCircle(pos, 4, glowPaint);

      // Dot.
      final dotPaint = Paint()
        ..color = _kContainment.withValues(alpha: 0.9 * brightness);
      canvas.drawCircle(pos, 1.8, dotPaint);
    }
  }

  void _drawSingularityCore(
    Canvas canvas,
    double cx,
    double cy,
    double singularityR,
  ) {
    final center = Offset(cx, cy);

    // Outermost violet glow.
    final outerGlow = Paint()
      ..color = _kAccent.withValues(alpha: 0.18 + 0.10 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 28);
    canvas.drawCircle(center, singularityR * 2.0, outerGlow);

    // Gold mid glow.
    final midGlow = Paint()
      ..color = _kContainment.withValues(alpha: 0.22 + 0.12 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 14);
    canvas.drawCircle(center, singularityR * 1.4, midGlow);

    // Violet core glow.
    final coreGlow = Paint()
      ..color = _kAccent.withValues(alpha: 0.55 + 0.25 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7);
    canvas.drawCircle(center, singularityR * 1.05, coreGlow);

    // Solid black singularity.
    final blackPaint = Paint()..color = const Color(0xFF000000);
    canvas.drawCircle(center, singularityR, blackPaint);

    // Subtle violet rim.
    final rimPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = _kAccent.withValues(alpha: 0.45 + 0.3 * pulseValue);
    canvas.drawCircle(center, singularityR, rimPaint);
  }

  void _drawChoiceZones(Canvas canvas, Size size) {
    final windowRadius = size.width * 0.10;
    final leftCenter = Offset(size.width * 0.30, size.height * 0.35);
    final rightCenter = Offset(size.width * 0.70, size.height * 0.35);

    _drawSingleZone(
      canvas,
      center: leftCenter,
      radius: windowRadius,
      rimColor: _kLeftWindowColor,
      label: 'HARNESS',
      windowIndex: 0,
      size: size,
    );

    _drawSingleZone(
      canvas,
      center: rightCenter,
      radius: windowRadius,
      rimColor: _kRightWindowColor,
      label: 'STUDY',
      windowIndex: 1,
      size: size,
    );
  }

  void _drawSingleZone(
    Canvas canvas, {
    required Offset center,
    required double radius,
    required Color rimColor,
    required String label,
    required int windowIndex,
    required Size size,
  }) {
    final isSelected = selectedWindow == windowIndex;
    final isDimmed = isResolved && !isSelected;

    Color activeRim;
    double rimOpacity;
    if (isResolved && isSelected) {
      activeRim = Colors.greenAccent;
      rimOpacity = 0.9;
    } else if (isDimmed) {
      activeRim = rimColor;
      rimOpacity = 0.15;
    } else {
      activeRim = rimColor;
      rimOpacity = 0.5 + 0.3 * pulseValue;
    }

    // Outer glow.
    if (!isDimmed) {
      final glowPaint = Paint()
        ..color = activeRim.withValues(alpha: 0.15 + 0.15 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 14);
      canvas.drawCircle(center, radius * 1.2, glowPaint);
    }

    // Dark interior.
    final interiorPaint = Paint()
      ..color = const Color(
        0xFF050510,
      ).withValues(alpha: isDimmed ? 0.3 : 0.82);
    canvas.drawCircle(center, radius, interiorPaint);

    // Energy texture inside — small sparks.
    if (!isDimmed) {
      final sparkRng = Random(windowIndex * 999 + 13);
      for (int i = 0; i < 8; i++) {
        final sx = center.dx + (sparkRng.nextDouble() - 0.5) * radius * 1.6;
        final sy = center.dy + (sparkRng.nextDouble() - 0.5) * radius * 1.6;
        if ((Offset(sx, sy) - center).distance > radius * 0.9) continue;
        final brightness = 0.3 + 0.5 * sparkRng.nextDouble() + 0.2 * pulseValue;
        final sparkColor = windowIndex == 0
            ? Color.lerp(_kContainment, _kEnergy, sparkRng.nextDouble())!
            : Color.lerp(_kRightWindowColor, _kEnergy, sparkRng.nextDouble())!;
        final sparkPaint = Paint()
          ..color = sparkColor.withValues(alpha: brightness.clamp(0.0, 1.0));
        canvas.drawCircle(
          Offset(sx, sy),
          1.2 + sparkRng.nextDouble(),
          sparkPaint,
        );
      }

      // Central energy dot.
      final centralColor = windowIndex == 0
          ? _kContainment
          : _kRightWindowColor;
      final centralGlow = Paint()
        ..color = centralColor.withValues(alpha: 0.3 + 0.2 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      canvas.drawCircle(center, 3, centralGlow);
      final centralDot = Paint()
        ..color = Colors.white.withValues(alpha: 0.8 + 0.2 * pulseValue);
      canvas.drawCircle(center, 1.5, centralDot);
    }

    // Rim circle.
    final rimPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = isSelected && isResolved ? 2.5 : 1.8
      ..color = activeRim.withValues(alpha: rimOpacity);
    canvas.drawCircle(center, radius, rimPaint);

    // Label below zone.
    final labelOpacity = isDimmed ? 0.2 : 0.7 + 0.2 * pulseValue;
    final textPainter = TextPainter(
      text: TextSpan(
        text: label,
        style: TextStyle(
          color: activeRim.withValues(alpha: labelOpacity.clamp(0.0, 1.0)),
          fontSize: 10,
          fontWeight: FontWeight.w600,
          letterSpacing: 2,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textPainter.paint(
      canvas,
      Offset(center.dx - textPainter.width / 2, center.dy + radius + 8),
    );
  }

  @override
  bool shouldRepaint(covariant _SingularityEnginePainter oldDelegate) =>
      ringValue != oldDelegate.ringValue ||
      arcValue != oldDelegate.arcValue ||
      pulseValue != oldDelegate.pulseValue ||
      selectedWindow != oldDelegate.selectedWindow ||
      isResolved != oldDelegate.isResolved;
}

// ─── Stable anchor data for particles and arcs ──────────────────────────────

class _ParticleAnchor {
  _ParticleAnchor(Random rng)
    : ringIndex = rng.nextInt(3),
      baseT = rng.nextDouble() * 2 * pi,
      speedMult = 0.5 + rng.nextDouble();

  final int ringIndex;
  final double baseT;
  final double speedMult;
}

class _ArcAnchor {
  _ArcAnchor(Random rng)
    : t0 = rng.nextDouble() * 2 * pi,
      t1 = rng.nextDouble() * 2 * pi;

  final double t0;
  final double t1;
}
