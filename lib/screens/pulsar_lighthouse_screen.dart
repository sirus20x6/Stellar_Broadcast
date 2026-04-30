import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = Color(0xFFB3E5FC); // light blue
const _kBeam = Color(0xFFE1F5FE); // white-blue
const _kWarning = Color(0xFFFF5252); // red
const _kCore = Color(0xFF00BCD4); // teal

class PulsarLighthouseScreen extends ConsumerStatefulWidget {
  const PulsarLighthouseScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<PulsarLighthouseScreen> createState() =>
      _PulsarLighthouseScreenState();
}

class _PulsarLighthouseScreenState extends ConsumerState<PulsarLighthouseScreen>
    with
        TickerProviderStateMixin,
        EventTypewriterMixin<PulsarLighthouseScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;
  late final AnimationController _beamController;

  // Typewriter state.

  // Choice state.
  int? _selectedChoice;
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
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _beamController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();
    GameSfx().playLong(GameSfx.alienTech);
  }

  void _onChoiceMade(int index) {
    if (_resolved) return;
    if (index < 0 || index >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedChoice = index;
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
    _beamController.dispose();
    super.dispose();
  }

  /// Whether the selected choice has net-positive effects.
  bool get _isPositiveOutcome {
    if (_selectedChoice == null) return true;
    final choice = widget.event.choices[_selectedChoice!];
    double sum = 0;
    for (final v in choice.shipEffects.values) {
      sum += v;
    }
    sum += choice.fuelDelta + choice.energyDelta + choice.probeDelta;
    return sum >= 0;
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
    text: 'PULSAR LIGHTHOUSE',
    glow: _titleGlowAnim,
    accentColor: _kAccent,
    letterSpacing: 2,
    secondaryGlowColor: _kCore,
  );

  Widget _buildNarrativeCard() => EventNarrativeCard(
    accentColor: _kAccent,
    displayText: displayedText,
    outcomeText: (_resolved && _selectedChoice != null)
        ? widget.event.choices[_selectedChoice!].outcome
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
            animation: Listenable.merge([_beamController, _pulseController]),
            builder: (_, _) => CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: _PulsarLighthousePainter(
                beamValue: _beamController.value,
                pulseValue: _pulseAnim.value,
                selectedChoice: _selectedChoice,
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

    // Three zones across the bottom third of the visual area.
    final zoneTop = size.height * 0.72;
    final zoneBottom = size.height * 0.95;

    if (tapPos.dy < zoneTop || tapPos.dy > zoneBottom) return;

    final third = size.width / 3;
    final padding = size.width * 0.02;

    if (tapPos.dx >= padding && tapPos.dx < third - padding) {
      // RIDE BEAM — choice 0
      if (widget.event.choices.isNotEmpty) _onChoiceMade(0);
    } else if (tapPos.dx >= third + padding &&
        tapPos.dx < third * 2 - padding) {
      // SCAN — choice 1
      if (widget.event.choices.length > 1) _onChoiceMade(1);
    } else if (tapPos.dx >= third * 2 + padding &&
        tapPos.dx < size.width - padding) {
      // RETREAT — choice 2
      if (widget.event.choices.length > 2) _onChoiceMade(2);
    }
  }

  Widget _buildEffectChips() {
    if (_selectedChoice == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedChoice!];

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

// ─── Pulsar Lighthouse Painter ───────────────────────────────────────────────

class _PulsarLighthousePainter extends CustomPainter {
  _PulsarLighthousePainter({
    required this.beamValue,
    required this.pulseValue,
    required this.selectedChoice,
    required this.isResolved,
  });

  final double beamValue; // 0..1, drives beam rotation
  final double pulseValue; // 0..1, drives core pulsing
  final int? selectedChoice;
  final bool isResolved;

  static const _beamHalfAngleDeg = 7.5; // degrees — 15° total beam width
  static const _beamHalfAngle = _beamHalfAngleDeg * pi / 180;

  // Angle from the "viewer direction" (straight down, i.e. pi/2) within which
  // the beam appears brightest.
  static const _flashZoneHalfAngle = pi * 0.3; // 30% of rotation = ~54°

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.42;

    final coreRadius = size.width * 0.05;

    final beamAngle = beamValue * 2 * pi; // primary beam angle
    final oppositeAngle = beamAngle + pi; // twin beam

    // Determine flash intensity: how close the beam is to pointing at the
    // viewer (angle pi/2 = downward toward ship).
    final viewAngle = pi / 2;
    double angleDiff(double a, double b) {
      var d = (a - b).abs() % (2 * pi);
      if (d > pi) d = 2 * pi - d;
      return d;
    }

    final diffPrimary = angleDiff(beamAngle, viewAngle);
    final diffOpposite = angleDiff(oppositeAngle, viewAngle);
    final minDiff = diffPrimary < diffOpposite ? diffPrimary : diffOpposite;
    // flashIntensity goes to 1.0 when beam is aimed directly at viewer.
    final flashIntensity =
        (1.0 - (minDiff / _flashZoneHalfAngle).clamp(0.0, 1.0)).clamp(0.0, 1.0);

    // 1. Subtle dark overlay to contrast beam.
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..color = const Color(0x550B1020),
    );

    // 2. Magnetic field lines (dipole) — behind everything.
    _drawMagneticField(canvas, size, cx, cy, coreRadius);

    // 3. Radiation particles scattered in beam cone.
    _drawRadiationParticles(canvas, size, cx, cy, beamAngle, flashIntensity);

    // 4. Twin beams.
    _drawBeam(canvas, size, cx, cy, beamAngle, flashIntensity);
    _drawBeam(canvas, size, cx, cy, oppositeAngle, flashIntensity);

    // 5. Ship silhouette — illuminate when beam sweeps over.
    _drawShip(canvas, size, flashIntensity);

    // 6. Pulsar core — on top.
    _drawCore(canvas, cx, cy, coreRadius, flashIntensity);

    // 7. Three choice zones across the bottom.
    _drawChoiceZones(canvas, size);
  }

  void _drawMagneticField(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double coreRadius,
  ) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = _kCore.withValues(alpha: 0.18);

    // Draw 5 dipole field lines arcing from top pole to bottom pole.
    // Each line is a bezier that bulges out by a different amount.
    final topPole = Offset(cx, cy - coreRadius * 1.1);
    final bottomPole = Offset(cx, cy + coreRadius * 1.1);

    final bulgeAmounts = [
      size.width * 0.08,
      size.width * 0.18,
      size.width * 0.30,
      size.width * 0.18,
      size.width * 0.08,
    ];
    final sides = [-1.0, -1.0, 0.0, 1.0, 1.0]; // -1 left, 0 both, 1 right

    for (int i = 0; i < bulgeAmounts.length; i++) {
      final bulge = bulgeAmounts[i];
      final side = sides[i];

      final midY = (topPole.dy + bottomPole.dy) / 2;

      if (side == 0.0) {
        // Symmetric — draw both sides.
        for (final s in [-1.0, 1.0]) {
          final cp1 = Offset(
            cx + s * bulge,
            topPole.dy + (midY - topPole.dy) * 0.4,
          );
          final cp2 = Offset(
            cx + s * bulge,
            bottomPole.dy - (bottomPole.dy - midY) * 0.4,
          );
          final path = Path()
            ..moveTo(topPole.dx, topPole.dy)
            ..cubicTo(
              cp1.dx,
              cp1.dy,
              cp2.dx,
              cp2.dy,
              bottomPole.dx,
              bottomPole.dy,
            );
          canvas.drawPath(path, paint);
        }
      } else {
        final cp1 = Offset(
          cx + side * bulge,
          topPole.dy + (midY - topPole.dy) * 0.4,
        );
        final cp2 = Offset(
          cx + side * bulge,
          bottomPole.dy - (bottomPole.dy - midY) * 0.4,
        );
        final path = Path()
          ..moveTo(topPole.dx, topPole.dy)
          ..cubicTo(
            cp1.dx,
            cp1.dy,
            cp2.dx,
            cp2.dy,
            bottomPole.dx,
            bottomPole.dy,
          );
        canvas.drawPath(path, paint);
      }
    }
  }

  void _drawRadiationParticles(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double beamAngle,
    double flashIntensity,
  ) {
    final rng = Random(42); // fixed seed for stable positions
    const particleCount = 25;

    for (int i = 0; i < particleCount; i++) {
      // Distribute particles along/near the beam axes.
      final axis =
          (rng.nextBool() ? beamAngle : beamAngle + pi) +
          (rng.nextDouble() - 0.5) * _beamHalfAngle * 4;
      final dist = size.width * (0.15 + rng.nextDouble() * 0.35);
      final px = cx + cos(axis) * dist;
      final py = cy + sin(axis) * dist;

      // Skip particles that are off-canvas.
      if (px < 0 || px > size.width || py < 0 || py > size.height) continue;

      // Determine if this particle is inside the current beam cone.
      final particleAngle = atan2(py - cy, px - cx);
      double angDiff(double a, double b) {
        var d = (a - b).abs() % (2 * pi);
        if (d > pi) d = 2 * pi - d;
        return d;
      }

      final inBeam1 = angDiff(particleAngle, beamAngle) <= _beamHalfAngle * 2;
      final inBeam2 =
          angDiff(particleAngle, beamAngle + pi) <= _beamHalfAngle * 2;
      final inBeam = inBeam1 || inBeam2;

      final baseOpacity = 0.08 + rng.nextDouble() * 0.12;
      final beamBoost = inBeam ? 0.5 + flashIntensity * 0.4 : 0.0;
      final opacity = (baseOpacity + beamBoost).clamp(0.0, 1.0);

      final radius = 1.0 + rng.nextDouble() * 1.5;
      final color = inBeam
          ? Color.lerp(_kBeam, _kCore, rng.nextDouble())!
          : Colors.white;

      canvas.drawCircle(
        Offset(px, py),
        radius,
        Paint()..color = color.withValues(alpha: opacity),
      );
    }
  }

  void _drawBeam(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double angle,
    double flashIntensity,
  ) {
    // Each beam is a triangle from the core to the canvas edge.
    // The tip is at the core; the base extends to the edge.
    // We clip to ensure it doesn't bleed behind the core.

    final beamLength = size.width * 1.2; // slightly beyond canvas diagonal

    // Triangle vertices.
    final tip = Offset(cx, cy);
    final left = Offset(
      cx + cos(angle - _beamHalfAngle) * beamLength,
      cy + sin(angle - _beamHalfAngle) * beamLength,
    );
    final right = Offset(
      cx + cos(angle + _beamHalfAngle) * beamLength,
      cy + sin(angle + _beamHalfAngle) * beamLength,
    );

    final beamPath = Path()
      ..moveTo(tip.dx, tip.dy)
      ..lineTo(left.dx, left.dy)
      ..lineTo(right.dx, right.dy)
      ..close();

    // Core-to-edge gradient: bright white-blue at core, transparent at edge.
    final baseAlpha = 0.25 + flashIntensity * 0.45;
    final edgePoint = Offset(
      cx + cos(angle) * beamLength,
      cy + sin(angle) * beamLength,
    );

    final shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        _kBeam.withValues(alpha: baseAlpha),
        _kBeam.withValues(alpha: 0.0),
      ],
    ).createShader(Rect.fromPoints(tip, edgePoint));

    canvas.drawPath(
      beamPath,
      Paint()
        ..style = PaintingStyle.fill
        ..shader = shader
        ..maskFilter = MaskFilter.blur(
          BlurStyle.normal,
          6 + flashIntensity * 10,
        ),
    );

    // Extra bright inner beam core line.
    if (flashIntensity > 0.1) {
      canvas.drawPath(
        beamPath,
        Paint()
          ..style = PaintingStyle.fill
          ..color = _kBeam.withValues(
            alpha: (flashIntensity * 0.35).clamp(0.0, 1.0),
          )
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
      );
    }
  }

  void _drawCore(
    Canvas canvas,
    double cx,
    double cy,
    double baseRadius,
    double flashIntensity,
  ) {
    final pulsedRadius = baseRadius * (0.85 + pulseValue * 0.3);
    final flashExtra = flashIntensity * baseRadius * 0.4;
    final radius = pulsedRadius + flashExtra;

    // Outer glow.
    final outerGlowPaint = Paint()
      ..color = _kCore.withValues(
        alpha: (0.15 + 0.2 * pulseValue + 0.3 * flashIntensity),
      )
      ..maskFilter = MaskFilter.blur(
        BlurStyle.normal,
        20 + flashIntensity * 30 + pulseValue * 10,
      );
    canvas.drawCircle(Offset(cx, cy), radius * 2.5, outerGlowPaint);

    // Mid glow.
    final midGlowPaint = Paint()
      ..color = _kBeam.withValues(
        alpha: (0.3 + 0.3 * pulseValue + 0.4 * flashIntensity).clamp(0.0, 1.0),
      )
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8 + flashIntensity * 12);
    canvas.drawCircle(Offset(cx, cy), radius * 1.4, midGlowPaint);

    // Core circle.
    final corePaint = Paint()
      ..color = Color.lerp(_kCore, Colors.white, 0.4 + 0.6 * flashIntensity)!;
    canvas.drawCircle(Offset(cx, cy), radius, corePaint);

    // Bright center pinpoint.
    canvas.drawCircle(
      Offset(cx, cy),
      radius * 0.4,
      Paint()
        ..color = Colors.white.withValues(
          alpha: (0.8 + 0.2 * flashIntensity).clamp(0.0, 1.0),
        ),
    );
  }

  void _drawShip(Canvas canvas, Size size, double flashIntensity) {
    // Ship position: lower portion of the canvas.
    final sx = size.width / 2;
    final sy = size.height * 0.67;

    final shipWidth = size.width * 0.06;
    final shipHeight = shipWidth * 2.0;

    // Angular ship silhouette (isometric arrow shape).
    final shipPath = Path()
      ..moveTo(sx, sy - shipHeight * 0.5) // nose
      ..lineTo(sx + shipWidth * 0.5, sy + shipHeight * 0.3) // right wing tip
      ..lineTo(sx + shipWidth * 0.2, sy + shipHeight * 0.2) // right inner
      ..lineTo(sx + shipWidth * 0.2, sy + shipHeight * 0.5) // right tail corner
      ..lineTo(sx - shipWidth * 0.2, sy + shipHeight * 0.5) // left tail corner
      ..lineTo(sx - shipWidth * 0.2, sy + shipHeight * 0.2) // left inner
      ..lineTo(sx - shipWidth * 0.5, sy + shipHeight * 0.3) // left wing tip
      ..close();

    // Base silhouette.
    final baseOpacity = 0.15 + flashIntensity * 0.55;
    canvas.drawPath(
      shipPath,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..color = Colors.white.withValues(alpha: baseOpacity.clamp(0.0, 1.0)),
    );

    // Fill silhouette when illuminated by beam.
    if (flashIntensity > 0.3) {
      canvas.drawPath(
        shipPath,
        Paint()
          ..style = PaintingStyle.fill
          ..color = _kAccent.withValues(
            alpha: ((flashIntensity - 0.3) * 0.3).clamp(0.0, 1.0),
          ),
      );
    }

    // Engine glow dots.
    final engineGlow = Paint()
      ..color = _kCore.withValues(alpha: 0.6 + flashIntensity * 0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
    canvas.drawCircle(
      Offset(sx - shipWidth * 0.15, sy + shipHeight * 0.5),
      2,
      engineGlow,
    );
    canvas.drawCircle(
      Offset(sx + shipWidth * 0.15, sy + shipHeight * 0.5),
      2,
      engineGlow,
    );
  }

  void _drawChoiceZones(Canvas canvas, Size size) {
    final zoneTop = size.height * 0.72;
    final zoneBottom = size.height * 0.95;
    final zoneHeight = zoneBottom - zoneTop;
    final third = size.width / 3;
    final hPad = size.width * 0.015;
    final vPad = zoneHeight * 0.06;

    final zones = [
      _ChoiceZone(
        rect: Rect.fromLTWH(
          hPad,
          zoneTop + vPad,
          third - hPad * 2,
          zoneHeight - vPad * 2,
        ),
        color: _kAccent,
        label: 'RIDE BEAM',
        index: 0,
      ),
      _ChoiceZone(
        rect: Rect.fromLTWH(
          third + hPad,
          zoneTop + vPad,
          third - hPad * 2,
          zoneHeight - vPad * 2,
        ),
        color: _kCore,
        label: 'SCAN',
        index: 1,
      ),
      _ChoiceZone(
        rect: Rect.fromLTWH(
          third * 2 + hPad,
          zoneTop + vPad,
          third - hPad * 2,
          zoneHeight - vPad * 2,
        ),
        color: _kWarning,
        label: 'RETREAT',
        index: 2,
      ),
    ];

    for (final zone in zones) {
      _drawZone(canvas, zone);
    }
  }

  void _drawZone(Canvas canvas, _ChoiceZone zone) {
    final isSelected = selectedChoice == zone.index;
    final isDimmed = isResolved && !isSelected;

    Color activeColor;
    double borderOpacity;
    double bgOpacity;

    if (isResolved && isSelected) {
      activeColor = Colors.greenAccent;
      borderOpacity = 0.9;
      bgOpacity = 0.18;
    } else if (isDimmed) {
      activeColor = zone.color;
      borderOpacity = 0.12;
      bgOpacity = 0.03;
    } else {
      activeColor = zone.color;
      borderOpacity = 0.35 + 0.35 * pulseValue;
      bgOpacity = 0.06 + 0.06 * pulseValue;
    }

    final rRect = RRect.fromRectAndRadius(zone.rect, const Radius.circular(8));

    // Background fill.
    canvas.drawRRect(
      rRect,
      Paint()..color = activeColor.withValues(alpha: bgOpacity),
    );

    // Border — two-pass: outer glow + crisp inner line.
    if (!isDimmed) {
      canvas.drawRRect(
        rRect,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6
          ..color = activeColor.withValues(alpha: borderOpacity * 0.3)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
      );
    }
    canvas.drawRRect(
      rRect,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..color = activeColor.withValues(alpha: borderOpacity),
    );

    // Label text, centered.
    final labelOpacity = isDimmed ? 0.2 : 0.6 + 0.4 * pulseValue;
    final textPainter = TextPainter(
      text: TextSpan(
        text: zone.label,
        style: TextStyle(
          color: activeColor.withValues(alpha: labelOpacity.clamp(0.0, 1.0)),
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.8,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: zone.rect.width);

    textPainter.paint(
      canvas,
      Offset(
        zone.rect.left + (zone.rect.width - textPainter.width) / 2,
        zone.rect.top + (zone.rect.height - textPainter.height) / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant _PulsarLighthousePainter oldDelegate) =>
      beamValue != oldDelegate.beamValue ||
      pulseValue != oldDelegate.pulseValue ||
      selectedChoice != oldDelegate.selectedChoice ||
      isResolved != oldDelegate.isResolved;
}

// ─── Helper data class ───────────────────────────────────────────────────────

class _ChoiceZone {
  const _ChoiceZone({
    required this.rect,
    required this.color,
    required this.label,
    required this.index,
  });

  final Rect rect;
  final Color color;
  final String label;
  final int index;
}
