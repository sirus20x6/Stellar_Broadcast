import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/widgets/premium_ad_gate.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFFFFD54F);
const _kStarWhite = Color(0xFFFFFFFF);
const _kStarGold = Color(0xFFFFD54F);
const _kStarDeep = Color(0xFFFF8F00);
const _kRingColor = Color(0xFFFFB74D);
const _kBeamColor = Color(0xFFFFE082);
const _kBoardColor = Color(0xFFFFB74D);
const _kSalvageColor = Color(0xFF00E5FF);
const _kStudyColor = Color(0xFF69F0AE);

class DysonSphereScreen extends ConsumerStatefulWidget {
  const DysonSphereScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<DysonSphereScreen> createState() => _DysonSphereScreenState();
}

class _DysonSphereScreenState extends ConsumerState<DysonSphereScreen>
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

  // Choice state.
  int? _selectedSection;
  bool _resolved = false;
  bool _showEffects = false;

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

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    if (widget.event.narrative.isEmpty) {
      _typewriterDone = true;
    } else {
      _startTypewriter();
    }
    GameSfx().playLong(GameSfx.alienTech);
  }

  void _startTypewriter() {
    _typewriterTimer =
        Timer.periodic(const Duration(milliseconds: 30), (timer) {
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
    });
  }

  void _skipTypewriter() {
    _typewriterTimer?.cancel();
    setState(() {
      _displayedText = widget.event.narrative;
      _charIndex = widget.event.narrative.length;
      _typewriterDone = true;
    });
  }

  void _onChoiceMade(int index) {
    if (_resolved) return;
    if (index < 0 || index >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedSection = index;
      _resolved = true;
    });

    ref.read(voyageProvider.notifier).handleEvent(widget.event.choices[index]);

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
    super.dispose();
  }

  /// Whether the selected choice has net-positive effects.
  bool get _isPositiveOutcome {
    if (_selectedSection == null) return true;
    final choice = widget.event.choices[_selectedSection!];
    double sum = 0;
    for (final v in choice.shipEffects.values) {
      sum += v;
    }
    sum += choice.colonistDelta;
    return sum >= 0;
  }

  @override
  Widget build(BuildContext context) {
    final event = widget.event;

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

                    // Title with golden glow.
                    AnimatedBuilder(
                      animation: _titleGlowAnim,
                      builder: (_, __) => Text(
                        'DYSON SPHERE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: _kAccent,
                          letterSpacing: 3,
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

                    const SizedBox(height: 20),

                    // Narrative (typewriter).
                    if (!_resolved && event.narrative.isNotEmpty)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white.withValues(alpha: 0.05),
                          border: Border.all(
                              color: _kAccent.withValues(alpha: 0.2)),
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
                    if (_resolved && _selectedSection != null)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: (_isPositiveOutcome
                                  ? Colors.green
                                  : Colors.red)
                              .withValues(alpha: 0.1),
                          border: Border.all(
                            color: (_isPositiveOutcome
                                    ? Colors.green
                                    : Colors.red)
                                .withValues(alpha: 0.4),
                          ),
                        ),
                        child: Text(
                          event.choices[_selectedSection!].outcome,
                          style: TextStyle(
                            color: _isPositiveOutcome
                                ? Colors.greenAccent
                                : Colors.redAccent,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),

                    const SizedBox(height: 12),

                    // Dyson sphere visual area.
                    if (_typewriterDone)
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return GestureDetector(
                              onTapDown: _resolved
                                  ? null
                                  : (details) =>
                                      _handleTap(details, constraints),
                              child: AnimatedBuilder(
                                animation: Listenable.merge(
                                    [_starController, _pulseController]),
                                builder: (_, __) => CustomPaint(
                                  size: Size(constraints.maxWidth,
                                      constraints.maxHeight),
                                  painter: _DysonSpherePainter(
                                    animationValue: _starController.value,
                                    pulseValue: _pulseAnim.value,
                                    selectedSection: _selectedSection,
                                    isResolved: _resolved,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                    if (!_typewriterDone) const Spacer(),

                    // Effect chips.
                    if (_showEffects) ...[
                      const SizedBox(height: 8),
                      _buildEffectChips(),
                    ],

                    // Continue button.
                    if (_resolved)
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 12),
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
                                  color: _kAccent.withValues(alpha: 0.6),
                                ),
                                color: _kAccent.withValues(alpha: 0.08),
                              ),
                              child: Text(
                                'CONTINUE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _kAccent,
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
                          color: _kAccent.withValues(alpha: 0.5),
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

  void _handleTap(TapDownDetails details, BoxConstraints constraints) {
    if (!_typewriterDone) { _skipTypewriter(); return; }
    final size = Size(constraints.maxWidth, constraints.maxHeight);
    final tapPos = details.localPosition;
    final cx = size.width / 2;
    final cy = size.height * 0.48;

    // Zone centers must match painter positions.
    final innerRadius = size.width * 0.25;
    final middleRadius = size.width * 0.35;
    final outerRadius = size.width * 0.45;

    // Zone 0: BOARD STATION — near inner ring, upper-left quadrant.
    final zone0 = Offset(cx - innerRadius * 0.55, cy - innerRadius * 0.75);
    // Zone 1: SALVAGE TECH — near middle ring, right side.
    final zone1 = Offset(cx + middleRadius * 0.70, cy - middleRadius * 0.15);
    // Zone 2: STUDY FROM DISTANCE — near outer ring, lower area.
    final zone2 = Offset(cx - outerRadius * 0.35, cy + outerRadius * 0.60);

    const hitRadius = 50.0;

    final dist0 = (tapPos - zone0).distance;
    final dist1 = (tapPos - zone1).distance;
    final dist2 = (tapPos - zone2).distance;

    if (dist0 <= hitRadius && widget.event.choices.isNotEmpty) {
      _onChoiceMade(0);
    } else if (dist1 <= hitRadius && widget.event.choices.length > 1) {
      _onChoiceMade(1);
    } else if (dist2 <= hitRadius && widget.event.choices.length > 2) {
      _onChoiceMade(2);
    }
  }

  Widget _buildEffectChips() {
    if (_selectedSection == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedSection!];

    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    if (choice.colonistDelta != 0) {
      final sign = choice.colonistDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Colonists',
        delta: '$sign${choice.colonistDelta}',
        isPositive: choice.colonistDelta > 0,
      ));
    }

    for (final entry in choice.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    if (choice.probeDelta != 0) {
      final sign = choice.probeDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Probes',
        delta: '$sign${choice.probeDelta}',
        isPositive: choice.probeDelta > 0,
      ));
    }
    if (choice.fuelDelta != 0) {
      final sign = choice.fuelDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Fuel',
        delta: '$sign${choice.fuelDelta}',
        isPositive: choice.fuelDelta > 0,
      ));
    }
    if (choice.energyDelta != 0) {
      final sign = choice.energyDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Energy',
        delta: '$sign${choice.energyDelta}',
        isPositive: choice.energyDelta > 0,
      ));
    }

    if (chips.isEmpty) {
      return Text(
        'No effect',
        style:
            TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 13),
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

// ─── Effect chip ──────────────────────────────────────────────────────────────

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

// ─── Dyson Sphere Painter ─────────────────────────────────────────────────────

class _DysonSpherePainter extends CustomPainter {
  _DysonSpherePainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedSection,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedSection;
  final bool isResolved;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.48;

    // 1. Dim background overlay for depth.
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..color = const Color(0x44050510),
    );

    // 2. Energy beams (behind the star glow so they emerge from it).
    _drawEnergyBeams(canvas, size, cx, cy);

    // 3. Central star with layered glow.
    _drawCentralStar(canvas, cx, cy, size.width);

    // 4. Dyson structure — three concentric incomplete ring arcs.
    _drawDysonRings(canvas, size, cx, cy);

    // 5. Tappable zones.
    _drawTapZones(canvas, size, cx, cy);
  }

  void _drawCentralStar(Canvas canvas, double cx, double cy, double width) {
    final baseRadius = width * 0.12;
    final pulseRadius = baseRadius * (1.0 + 0.04 * pulseValue);

    // Outermost diffuse glow.
    final outerGlow = Paint()
      ..color = _kStarDeep.withValues(alpha: 0.08 + 0.04 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 60);
    canvas.drawCircle(Offset(cx, cy), pulseRadius * 3.5, outerGlow);

    // Wide golden corona.
    final coronaGlow = Paint()
      ..color = _kStarGold.withValues(alpha: 0.12 + 0.06 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 35);
    canvas.drawCircle(Offset(cx, cy), pulseRadius * 2.2, coronaGlow);

    // Mid glow layer.
    final midGlow = Paint()
      ..color = _kStarGold.withValues(alpha: 0.25 + 0.1 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 18);
    canvas.drawCircle(Offset(cx, cy), pulseRadius * 1.4, midGlow);

    // Core radial gradient fill.
    final corePaint = Paint()
      ..shader = RadialGradient(
        colors: [
          _kStarWhite,
          _kStarWhite.withValues(alpha: 0.95),
          _kStarGold,
          _kStarDeep,
          _kStarDeep.withValues(alpha: 0.0),
        ],
        stops: const [0.0, 0.2, 0.5, 0.8, 1.0],
      ).createShader(
        Rect.fromCircle(center: Offset(cx, cy), radius: pulseRadius),
      );
    canvas.drawCircle(Offset(cx, cy), pulseRadius, corePaint);

    // Bright white center.
    final hotCenter = Paint()
      ..color = _kStarWhite.withValues(alpha: 0.9 + 0.1 * pulseValue)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawCircle(Offset(cx, cy), pulseRadius * 0.3, hotCenter);
  }

  void _drawDysonRings(
      Canvas canvas, Size size, double cx, double cy) {
    // Ring definitions: radius factor, arc sweep (degrees), tilt (degrees),
    // rotation speed multiplier.
    final rings = [
      _RingDef(0.25, 240, 15, 1.0),
      _RingDef(0.35, 200, -10, 0.7),
      _RingDef(0.45, 180, 5, 0.4),
    ];

    for (int i = 0; i < rings.length; i++) {
      final ring = rings[i];
      final radius = size.width * ring.radiusFactor;
      final sweepRad = ring.sweepDeg * pi / 180;
      final tiltRad = ring.tiltDeg * pi / 180;
      final rotation = animationValue * 2 * pi * ring.speedMul;

      final isSelected = selectedSection == i;
      final isDimmed = isResolved && !isSelected;

      // Determine ring opacity.
      double ringAlpha;
      if (isResolved && isSelected) {
        ringAlpha = 1.0;
      } else if (isDimmed) {
        ringAlpha = 0.15;
      } else {
        ringAlpha = 0.6 + 0.2 * pulseValue;
      }

      // Draw segmented panels along the arc.
      final panelCount = (ring.sweepDeg / 6).floor(); // ~6 degrees per panel.
      final gapAngle = 1.5 * pi / 180; // 1.5-degree gaps.
      final panelSweep = (sweepRad - gapAngle * panelCount) / panelCount;
      final startAngle = -sweepRad / 2 + rotation;

      canvas.save();
      canvas.translate(cx, cy);

      for (int p = 0; p < panelCount; p++) {
        final a0 = startAngle + p * (panelSweep + gapAngle);
        final aMid = a0 + panelSweep / 2;

        // Panel center on the tilted ellipse.
        final px = radius * cos(aMid);
        final py = radius * sin(aMid) * cos(tiltRad);

        // Panel dimensions.
        final panelW = radius * panelSweep * 0.85;
        final panelH = 3.0 + (i == 0 ? 2.0 : i == 1 ? 1.5 : 1.0);

        // Subtle gradient across panel for metallic feel.
        final gradientShift = 0.5 + 0.5 * sin(aMid * 3 + animationValue * pi);
        final panelColor = Color.lerp(
          _kRingColor,
          _kStarGold,
          gradientShift * 0.4,
        )!;

        final panelPaint = Paint()
          ..color = panelColor.withValues(alpha: ringAlpha)
          ..maskFilter = MaskFilter.blur(
            BlurStyle.normal,
            isSelected && isResolved ? 3.0 : 1.5,
          );

        // Draw each panel as a small rotated rectangle.
        canvas.save();
        canvas.translate(px, py);
        canvas.rotate(aMid + pi / 2);
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromCenter(
              center: Offset.zero,
              width: panelW,
              height: panelH,
            ),
            const Radius.circular(0.5),
          ),
          panelPaint,
        );
        canvas.restore();
      }

      // Outer glow along ring path for selected ring.
      if (isSelected && isResolved) {
        final glowPaint = Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 6
          ..color = _kStarGold.withValues(alpha: 0.25)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
        final arcRect = Rect.fromCenter(
          center: Offset.zero,
          width: radius * 2,
          height: radius * 2 * cos(tiltRad).abs(),
        );
        canvas.drawArc(
            arcRect, startAngle, sweepRad, false, glowPaint);
      }

      canvas.restore();
    }
  }

  void _drawEnergyBeams(
      Canvas canvas, Size size, double cx, double cy) {
    final rng = Random(42);

    for (int i = 0; i < 4; i++) {
      final angle = (i / 4) * 2 * pi +
          animationValue * pi * 0.3 +
          rng.nextDouble() * 0.5;
      final ringIdx = i % 3;
      final radiusFactor = [0.25, 0.35, 0.45][ringIdx];
      final radius = size.width * radiusFactor;

      // Source point on ring.
      final sx = cx + radius * cos(angle);
      final sy = cy + radius * sin(angle) * 0.85;

      // Oscillating beam opacity.
      final opacity =
          0.08 + 0.12 * sin(animationValue * 2 * pi * 3 + i * 1.5).abs();

      final isDimmed = isResolved && selectedSection != ringIdx;
      final beamAlpha = isDimmed ? opacity * 0.2 : opacity;

      // Beam line.
      final beamPaint = Paint()
        ..color = _kBeamColor.withValues(alpha: beamAlpha.clamp(0.0, 1.0))
        ..strokeWidth = 1.2
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      canvas.drawLine(Offset(sx, sy), Offset(cx, cy), beamPaint);

      // Wider glow along beam.
      final glowPaint = Paint()
        ..color =
            _kBeamColor.withValues(alpha: (beamAlpha * 0.4).clamp(0.0, 1.0))
        ..strokeWidth = 4
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
      canvas.drawLine(Offset(sx, sy), Offset(cx, cy), glowPaint);
    }
  }

  void _drawTapZones(
      Canvas canvas, Size size, double cx, double cy) {
    final innerRadius = size.width * 0.25;
    final middleRadius = size.width * 0.35;
    final outerRadius = size.width * 0.45;

    // Zone positions (must match _handleTap).
    final zone0 = Offset(cx - innerRadius * 0.55, cy - innerRadius * 0.75);
    final zone1 = Offset(cx + middleRadius * 0.70, cy - middleRadius * 0.15);
    final zone2 = Offset(cx - outerRadius * 0.35, cy + outerRadius * 0.60);

    final zones = [
      _ZoneDef(zone0, 'BOARD STATION', _kBoardColor, 0),
      _ZoneDef(zone1, 'SALVAGE TECH', _kSalvageColor, 1),
      _ZoneDef(zone2, 'STUDY FROM\nDISTANCE', _kStudyColor, 2),
    ];

    for (final zone in zones) {
      final isSelected = selectedSection == zone.index;
      final isDimmed = isResolved && !isSelected;

      double zoneAlpha;
      if (isResolved && isSelected) {
        zoneAlpha = 1.0;
      } else if (isDimmed) {
        zoneAlpha = 0.12;
      } else {
        zoneAlpha = 0.35 + 0.35 * pulseValue;
      }

      // Skip drawing entirely if fully resolved and not selected.
      if (isDimmed && zoneAlpha < 0.15) {
        // Still draw very faint to show it existed.
        final dimCircle = Paint()
          ..color = zone.color.withValues(alpha: 0.06)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1;
        canvas.drawCircle(zone.center, 22, dimCircle);
        continue;
      }

      // Outer pulse glow.
      final pulseGlow = Paint()
        ..color = zone.color.withValues(alpha: zoneAlpha * 0.2)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 14);
      canvas.drawCircle(
          zone.center, 28 + 6 * pulseValue, pulseGlow);

      // Zone circle.
      final circlePaint = Paint()
        ..color = zone.color.withValues(alpha: zoneAlpha * 0.15)
        ..style = PaintingStyle.fill;
      canvas.drawCircle(zone.center, 24, circlePaint);

      // Zone border.
      final borderPaint = Paint()
        ..color = zone.color.withValues(alpha: zoneAlpha)
        ..style = PaintingStyle.stroke
        ..strokeWidth = isSelected && isResolved ? 2.5 : 1.5;
      canvas.drawCircle(zone.center, 24, borderPaint);

      // Inner dot.
      final dotPaint = Paint()
        ..color = zone.color.withValues(alpha: zoneAlpha * 0.8);
      canvas.drawCircle(zone.center, 3, dotPaint);

      // Label below zone.
      final labelAlpha = isDimmed ? 0.12 : 0.6 + 0.25 * pulseValue;
      final textPainter = TextPainter(
        text: TextSpan(
          text: zone.label,
          style: TextStyle(
            color:
                zone.color.withValues(alpha: labelAlpha.clamp(0.0, 1.0)),
            fontSize: 9,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.5,
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: 100);

      textPainter.paint(
        canvas,
        Offset(
          zone.center.dx - textPainter.width / 2,
          zone.center.dy + 30,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _DysonSpherePainter oldDelegate) => true;
}

// ─── Ring definition helper ───────────────────────────────────────────────────

class _RingDef {
  final double radiusFactor;
  final double sweepDeg;
  final double tiltDeg;
  final double speedMul;

  const _RingDef(this.radiusFactor, this.sweepDeg, this.tiltDeg, this.speedMul);
}

// ─── Zone definition helper ───────────────────────────────────────────────────

class _ZoneDef {
  final Offset center;
  final String label;
  final Color color;
  final int index;

  const _ZoneDef(this.center, this.label, this.color, this.index);
}
