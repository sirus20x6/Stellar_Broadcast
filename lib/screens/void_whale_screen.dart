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
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = SpaceColors.cyan;
const _kBioGlow = Color(0xFF4DD0E1);
const _kNebulaViolet = Color(0xFFCE93D8);

class VoidWhaleScreen extends ConsumerStatefulWidget {
  const VoidWhaleScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<VoidWhaleScreen> createState() => _VoidWhaleScreenState();
}

class _VoidWhaleScreenState extends ConsumerState<VoidWhaleScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<VoidWhaleScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;
  late final AnimationController _whaleController;
  late final AnimationController _glowController;
  late final Animation<double> _glowAnim;

  // Typewriter state.

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

    _whaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();

    _glowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);
    _glowAnim = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(parent: _glowController, curve: Curves.easeInOut),
    );

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
    _whaleController.dispose();
    _glowController.dispose();
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
    text: 'VOID WHALE CALF',
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
        return Semantics(
          button: !_resolved,
          enabled: !_resolved,
          label: _resolved
              ? 'Void whale anomaly visualization'
              : 'Tap a glowing window on the whale to choose your approach',
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: _resolved
                ? null
                : (details) => _handleTap(details, constraints),
            child: AnimatedBuilder(
              animation: Listenable.merge([
                _whaleController,
                _glowController,
                _pulseController,
              ]),
              builder: (_, __) => CustomPaint(
                size: Size(constraints.maxWidth, constraints.maxHeight),
                painter: _VoidWhalePainter(
                  animationValue: _whaleController.value,
                  glowValue: _glowAnim.value,
                  pulseValue: _pulseAnim.value,
                  selectedWindow: _selectedWindow,
                  isResolved: _resolved,
                ),
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

    // Zone centers (must match painter positions).
    final bondCenter = Offset(size.width * 0.28, size.height * 0.75);
    final releaseCenter = Offset(size.width * 0.72, size.height * 0.75);
    final hitRadius = size.width * 0.12;

    final distBond = (tapPos - bondCenter).distance;
    final distRelease = (tapPos - releaseCenter).distance;

    if (distBond <= hitRadius && widget.event.choices.isNotEmpty) {
      _onChoiceMade(0);
    } else if (distRelease <= hitRadius && widget.event.choices.length > 1) {
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

// ─── Void Whale Painter ──────────────────────────────────────────────────────

class _VoidWhalePainter extends CustomPainter {
  _VoidWhalePainter({
    required this.animationValue,
    required this.glowValue,
    required this.pulseValue,
    required this.selectedWindow,
    required this.isResolved,
  });

  final double animationValue;
  final double glowValue;
  final double pulseValue;
  final int? selectedWindow;
  final bool isResolved;

  // Pre-seeded offsets for bioluminescent spots (relative to whale body).
  static final List<Offset> _spotOffsets = List.generate(10, (i) {
    final r = Random(i * 31 + 7);
    // Spread along body: x in [-0.30, 0.30], y in [-0.06, 0.06].
    return Offset((r.nextDouble() - 0.5) * 0.60, (r.nextDouble() - 0.5) * 0.12);
  });

  // Pre-seeded wake particles (relative to tail tip).
  static final List<_WakeParticle> _wakeParticles = List.generate(18, (i) {
    final r = Random(i * 17 + 3);
    return _WakeParticle(
      dx: -(0.05 + r.nextDouble() * 0.22),
      dy: (r.nextDouble() - 0.5) * 0.10,
      size: 1.0 + r.nextDouble() * 2.0,
      opacity: 0.15 + r.nextDouble() * 0.45,
      phase: r.nextDouble(),
    );
  });

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    // Gentle vertical bob: ±3% of height over the 20s cycle.
    final bobOffset = sin(animationValue * 2 * pi) * size.height * 0.03;
    // Gentle horizontal drift: ±2% of width.
    final driftOffset = cos(animationValue * 2 * pi * 0.7) * size.width * 0.02;

    final cy = size.height * 0.42 + bobOffset;
    final whaleCx = cx + driftOffset;

    // Whale half-sizes in canvas units.
    final bodyW = size.width * 0.38;
    final bodyH = size.height * 0.11;

    // 1. Nebula wisps (background, very low opacity).
    _drawNebulaWisps(canvas, size);

    // 2. Trailing particle wake.
    _drawWake(canvas, whaleCx, cy, bodyW, bodyH);

    // 3. Whale body.
    _drawWhaleBody(canvas, whaleCx, cy, bodyW, bodyH);

    // 4. Bioluminescent spots.
    _drawBioSpots(canvas, whaleCx, cy, bodyW, bodyH);

    // 5. Two choice zones.
    _drawChoiceZones(canvas, size);
  }

  void _drawNebulaWisps(Canvas canvas, Size size) {
    // 4 large soft gradient circles: alternating violet/teal, opacity 0.04–0.08.
    final specs = [
      (
        size.width * 0.20,
        size.height * 0.25,
        size.width * 0.45,
        _kNebulaViolet,
        0.06,
      ),
      (
        size.width * 0.75,
        size.height * 0.60,
        size.width * 0.38,
        _kBioGlow,
        0.05,
      ),
      (
        size.width * 0.60,
        size.height * 0.18,
        size.width * 0.30,
        _kNebulaViolet,
        0.04,
      ),
      (
        size.width * 0.30,
        size.height * 0.72,
        size.width * 0.35,
        _kBioGlow,
        0.04,
      ),
    ];

    for (final s in specs) {
      final (wx, wy, wr, color, opacity) = s;
      final paint = Paint()
        ..shader = RadialGradient(
          colors: [
            color.withValues(alpha: opacity),
            color.withValues(alpha: 0.0),
          ],
        ).createShader(Rect.fromCircle(center: Offset(wx, wy), radius: wr));
      canvas.drawCircle(Offset(wx, wy), wr, paint);
    }
  }

  void _drawWake(
    Canvas canvas,
    double cx,
    double cy,
    double bodyW,
    double bodyH,
  ) {
    // Tail tip is at roughly cx - bodyW * 1.05 (left side, since whale faces right).
    final tailX = cx - bodyW * 0.95;
    final tailY = cy;

    final paint = Paint()..style = PaintingStyle.fill;

    for (final p in _wakeParticles) {
      // Particles drift leftward with time, wrapping in phase.
      final phase = (p.phase + animationValue * 0.4) % 1.0;
      final px = tailX + p.dx * bodyW * 2 - phase * bodyW * 0.18;
      final py = tailY + p.dy * bodyW;
      final alpha = p.opacity * (1.0 - phase * 0.7);
      paint.color = _kBioGlow.withValues(alpha: alpha.clamp(0.0, 1.0));
      paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
      canvas.drawCircle(Offset(px, py), p.size, paint);
    }
  }

  void _drawWhaleBody(
    Canvas canvas,
    double cx,
    double cy,
    double bodyW,
    double bodyH,
  ) {
    // ── Body silhouette via bezier curves ──────────────────────────────
    // The whale faces right. Body is an ellipse-ish shape, tail tapers left.

    final path = Path();

    // Head (right side): rounded front.
    final headX = cx + bodyW * 0.70;
    // Dorsal (top) curve start.
    final dorsalStartX = cx - bodyW * 0.10;
    final dorsalStartY = cy - bodyH * 0.65;
    // Belly (bottom) curve start.
    final bellyStartX = cx - bodyW * 0.10;
    final bellyStartY = cy + bodyH * 0.65;
    // Tail tip.
    final tailTipX = cx - bodyW * 1.10;
    final tailTipY = cy;

    // Start at tail tip.
    path.moveTo(tailTipX, tailTipY - bodyH * 0.15);

    // Dorsal fin bump.
    path.quadraticBezierTo(
      cx - bodyW * 0.55,
      cy - bodyH * 1.6, // fin peak
      cx - bodyW * 0.15,
      cy - bodyH * 0.90, // fin base back
    );

    // Dorsal curve toward head.
    path.cubicTo(
      dorsalStartX,
      dorsalStartY,
      cx + bodyW * 0.30,
      cy - bodyH * 0.85,
      headX,
      cy - bodyH * 0.10,
    );

    // Head round (front of whale).
    path.cubicTo(
      headX + bodyW * 0.08,
      cy + bodyH * 0.30,
      headX + bodyW * 0.04,
      cy + bodyH * 0.60,
      cx + bodyW * 0.40,
      cy + bodyH * 0.70,
    );

    // Belly curve back toward tail.
    path.cubicTo(
      bellyStartX,
      bellyStartY,
      cx - bodyW * 0.60,
      cy + bodyH * 0.55,
      tailTipX,
      tailTipY + bodyH * 0.15,
    );

    // Close at tail tip.
    path.lineTo(tailTipX, tailTipY - bodyH * 0.15);
    path.close();

    // Dark blue-gray fill.
    final bodyFill = Paint()..color = const Color(0xFF1A2A4A);
    canvas.drawPath(path, bodyFill);

    // Soft edge glow — teal, blurred stroke.
    final edgeGlow = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = _kBioGlow.withValues(alpha: 0.25 + 0.15 * glowValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawPath(path, edgeGlow);

    // Thinner inner highlight.
    final innerHighlight = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = _kAccent.withValues(alpha: 0.12 + 0.08 * glowValue);
    canvas.drawPath(path, innerHighlight);

    // ── Flippers ──────────────────────────────────────────────────────
    _drawFlipper(canvas, cx, cy, bodyW, bodyH);
  }

  void _drawFlipper(
    Canvas canvas,
    double cx,
    double cy,
    double bodyW,
    double bodyH,
  ) {
    // Small pectoral flipper on the visible side.
    final flipPath = Path();
    final fx = cx + bodyW * 0.15;
    final fy = cy + bodyH * 0.55;

    flipPath.moveTo(fx, fy);
    flipPath.cubicTo(
      fx + bodyW * 0.18,
      fy + bodyH * 0.6,
      fx + bodyW * 0.30,
      fy + bodyH * 0.9,
      fx + bodyW * 0.22,
      fy + bodyH * 1.1,
    );
    flipPath.cubicTo(
      fx + bodyW * 0.08,
      fy + bodyH * 0.9,
      fx - bodyW * 0.02,
      fy + bodyH * 0.55,
      fx,
      fy,
    );
    flipPath.close();

    final flipFill = Paint()..color = const Color(0xFF162238);
    canvas.drawPath(flipPath, flipFill);

    final flipEdge = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = _kBioGlow.withValues(alpha: 0.18 + 0.10 * glowValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawPath(flipPath, flipEdge);
  }

  void _drawBioSpots(
    Canvas canvas,
    double cx,
    double cy,
    double bodyW,
    double bodyH,
  ) {
    for (int i = 0; i < _spotOffsets.length; i++) {
      final off = _spotOffsets[i];
      // Spots sit along the body, offset slightly toward the dorsal side.
      final sx = cx + off.dx * bodyW + bodyW * 0.10;
      final sy = cy + off.dy * bodyH - bodyH * 0.10;

      // Individual phase offset for organic variation.
      final phase = (i / _spotOffsets.length) * 2 * pi;
      final pulse = 0.4 + 0.6 * (0.5 + 0.5 * sin(glowValue * pi + phase));

      final spotRadius = 2.5 + 1.5 * pulse;

      // Outer glow.
      final glowPaint = Paint()
        ..color = _kBioGlow.withValues(alpha: 0.20 * pulse)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, spotRadius * 2.5);
      canvas.drawCircle(Offset(sx, sy), spotRadius * 2.0, glowPaint);

      // Core dot.
      final corePaint = Paint()
        ..color = _kAccent.withValues(alpha: 0.55 + 0.35 * pulse);
      canvas.drawCircle(Offset(sx, sy), spotRadius * 0.55, corePaint);
    }
  }

  void _drawChoiceZones(Canvas canvas, Size size) {
    final bondCenter = Offset(size.width * 0.28, size.height * 0.75);
    final releaseCenter = Offset(size.width * 0.72, size.height * 0.75);
    final zoneRadius = size.width * 0.10;

    _drawSingleZone(
      canvas,
      center: bondCenter,
      radius: zoneRadius,
      rimColor: _kAccent,
      label: 'BOND',
      zoneIndex: 0,
      size: size,
    );

    _drawSingleZone(
      canvas,
      center: releaseCenter,
      radius: zoneRadius,
      rimColor: _kNebulaViolet,
      label: 'RELEASE',
      zoneIndex: 1,
      size: size,
    );
  }

  void _drawSingleZone(
    Canvas canvas, {
    required Offset center,
    required double radius,
    required Color rimColor,
    required String label,
    required int zoneIndex,
    required Size size,
  }) {
    final isSelected = selectedWindow == zoneIndex;
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

    // Interior fill (dark, translucent).
    final interiorPaint = Paint()
      ..color = const Color(
        0xFF050510,
      ).withValues(alpha: isDimmed ? 0.3 : 0.75);
    canvas.drawCircle(center, radius, interiorPaint);

    // Small decorative star dots inside zone.
    final rng = Random(zoneIndex * 999 + 13);
    for (int i = 0; i < 8; i++) {
      final sx = center.dx + (rng.nextDouble() - 0.5) * radius * 1.6;
      final sy = center.dy + (rng.nextDouble() - 0.5) * radius * 1.6;
      if ((Offset(sx, sy) - center).distance > radius * 0.88) continue;

      final brightness = isDimmed
          ? 0.1
          : 0.3 + 0.4 * rng.nextDouble() + 0.15 * pulseValue;
      final starSize = 0.7 + rng.nextDouble() * 1.2;
      final starColor = Color.lerp(Colors.white, rimColor, rng.nextDouble())!;

      canvas.drawCircle(
        Offset(sx, sy),
        starSize,
        Paint()
          ..color = starColor.withValues(alpha: brightness.clamp(0.0, 1.0)),
      );
    }

    // Central icon glyph: a tiny whale silhouette or simply a glowing core.
    if (!isDimmed) {
      final coreGlow = Paint()
        ..color = activeRim.withValues(alpha: 0.30 + 0.20 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      canvas.drawCircle(center, 3.5, coreGlow);

      final coreDot = Paint()
        ..color = Colors.white.withValues(alpha: 0.80 + 0.20 * pulseValue);
      canvas.drawCircle(center, 1.8, coreDot);
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
  bool shouldRepaint(covariant _VoidWhalePainter oldDelegate) =>
      animationValue != oldDelegate.animationValue ||
      glowValue != oldDelegate.glowValue ||
      pulseValue != oldDelegate.pulseValue ||
      selectedWindow != oldDelegate.selectedWindow ||
      isResolved != oldDelegate.isResolved;
}

// ─── Internal helpers ────────────────────────────────────────────────────────

class _WakeParticle {
  const _WakeParticle({
    required this.dx,
    required this.dy,
    required this.size,
    required this.opacity,
    required this.phase,
  });

  final double dx;
  final double dy;
  final double size;
  final double opacity;
  final double phase;
}
