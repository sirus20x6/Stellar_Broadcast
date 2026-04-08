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

// ── Theme constants ────────────────────────────────────────────────────────

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFFE0E0E0);
const _kStarCore = Colors.white;
const _kStarGlow = Color(0xFFBBDEFB);
const _kMirrorBase = Color(0xFFEEEEEE);
const _kInnerLabel = Colors.white;
const _kMiddleLabel = Color(0xFFFFB74D);
const _kOuterLabel = Color(0xFF4DD0E1);

/// Interactive mirror array event screen.
///
/// The player discovers thousands of reflective surfaces arranged in concentric
/// rings, focusing starlight into an artificial star. Three rings map to three
/// choices: study optics, harvest material, or map star routes.
class MirrorArrayScreen extends ConsumerStatefulWidget {
  const MirrorArrayScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<MirrorArrayScreen> createState() => _MirrorArrayScreenState();
}

class _MirrorArrayScreenState extends ConsumerState<MirrorArrayScreen>
    with TickerProviderStateMixin {
  // ── Animation controllers ──────────────────────────────────────────────

  /// Drives mirror orbit and beam cycling (60 s full rotation).
  late final AnimationController _starController;

  /// Title silver glow oscillation.
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;

  /// Central star pulse.
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;

  // ── Typewriter state ───────────────────────────────────────────────────

  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // ── Choice state ───────────────────────────────────────────────────────

  int? _selectedRing;
  bool _showingOutcome = false;
  bool _showEffectChips = false;

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
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _startTypewriter();

    // SFX on load.
    GameSfx().playLong(GameSfx.alienTech);
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

  void _onTapDown(TapDownDetails details, BoxConstraints constraints) {
    if (_showingOutcome) return;
    if (!_typewriterDone) _skipTypewriter();
    if (widget.event.choices.isEmpty) return;

    final w = constraints.maxWidth;
    final h = constraints.maxHeight;
    final cx = w / 2;
    final cy = h / 2;
    final tapPos = details.localPosition;

    // Find the closest ring label to the tap position.
    const radii = [0.18, 0.30, 0.42]; // matches _rings
    int? ring;
    double bestDist = double.infinity;
    for (var r = 0; r < 3; r++) {
      final labelY = cy - w * radii[r] - 10;
      final dist = (tapPos.dy - labelY).abs();
      if (dist < bestDist && dist < 22 && (tapPos.dx - cx).abs() < w * 0.35) {
        bestDist = dist;
        ring = r;
      }
    }

    if (ring == null) return;
    if (ring >= widget.event.choices.length) return;

    // Check probe cost.
    final choice = widget.event.choices[ring];
    final probes = ref.read(voyageProvider).probes;
    if (choice.probeCost > 0 && probes < choice.probeCost) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedRing = ring;
      _showingOutcome = true;
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _showEffectChips = true);
    });

    ref.read(voyageProvider.notifier).handleEvent(choice);
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _starController.dispose();
    _titleGlow.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  Widget _buildEffectChipsRow() {
    if (_selectedRing == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedRing!];
    final chips = <Widget>[];

    for (final e in choice.shipEffects.entries) {
      if (e.value == 0) continue;
      final pct = (e.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      final color = e.value > 0 ? Colors.greenAccent : Colors.redAccent;
      chips.add(_chip('${systemLabel(e.key)} $sign$pct%', color));
    }
    for (final e in choice.planetModifiers.entries) {
      if (e.value == 0) continue;
      final pct = (e.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_chip('${systemLabel(e.key)} $sign$pct%', const Color(0xFF00E5FF)));
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(_chip('NAV DATA Acquired', Colors.greenAccent));
    }
    if (choice.fuelDelta != 0) chips.add(_chip('FUEL ${choice.fuelDelta > 0 ? "+" : ""}${choice.fuelDelta}', choice.fuelDelta > 0 ? Colors.greenAccent : Colors.redAccent));
    if (choice.probeDelta != 0) chips.add(_chip('PROBES ${choice.probeDelta > 0 ? "+" : ""}${choice.probeDelta}', choice.probeDelta > 0 ? Colors.greenAccent : Colors.redAccent));

    return Wrap(
      spacing: 6, runSpacing: 4,
      alignment: WrapAlignment.center,
      children: chips,
    );
  }

  Widget _chip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color.withValues(alpha: 0.1),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(text, style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w600)),
    );
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 8),

                  // ── Title ────────────────────────────────────────────────
                  AnimatedBuilder(
                    animation: _titleGlowAnim,
                    builder: (_, __) => Text(
                      'MIRROR ARRAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: _kAccent,
                        letterSpacing: 3,
                        shadows: [
                          Shadow(
                            color: _kAccent.withValues(
                              alpha: _titleGlowAnim.value,
                            ),
                            blurRadius: 20,
                          ),
                          Shadow(
                            color: _kStarGlow.withValues(
                              alpha: _titleGlowAnim.value * 0.4,
                            ),
                            blurRadius: 40,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── Narrative / outcome text ─────────────────────────────
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: _typewriterDone ? null : _skipTypewriter,
                    child: _OutcomeCard(
                      text: _showingOutcome
                          ? event.choices[_selectedRing!].outcome
                          : _displayedText,
                      isOutcome: _showingOutcome,
                      choice: null,
                      showEffectChips: false,
                    ),
                  ),

                  if (_showEffectChips) ...[
                    const SizedBox(height: 6),
                    _buildEffectChipsRow(),
                  ],

                  const SizedBox(height: 8),

                  // ── Visual area ──────────────────────────────────────────
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return GestureDetector(
                          onTapDown: (d) => _onTapDown(d, constraints),
                          child: AnimatedBuilder(
                            animation: Listenable.merge([
                              _starController,
                              _pulseAnim,
                            ]),
                            builder: (_, __) => CustomPaint(
                              size: Size(
                                constraints.maxWidth,
                                constraints.maxHeight,
                              ),
                              painter: _MirrorArrayPainter(
                                animationValue: _starController.value,
                                pulseValue: _pulseAnim.value,
                                selectedRing: _selectedRing,
                                isResolved: _showingOutcome,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ── Tap hint ─────────────────────────────────────────────
                  if (!_typewriterDone)
                    Text(
                      'TAP TO SKIP',
                      style: TextStyle(
                        color: _kAccent.withValues(alpha: 0.5),
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),

                  if (_typewriterDone && !_showingOutcome)
                    Text(
                      'TAP A RING TO CHOOSE',
                      style: TextStyle(
                        color: _kAccent.withValues(alpha: 0.6),
                        fontSize: 12,
                        letterSpacing: 2,
                      ),
                    ),

                  // ── Continue button ──────────────────────────────────────
                  if (_showingOutcome)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
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
                            child: const Text(
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

                  const SizedBox(height: 8),

                  // ── Ad banner ────────────────────────────────────────────
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
        ],
      ),
    );
  }
}

// ── Outcome / narrative card ───────────────────────────────────────────────

class _OutcomeCard extends StatelessWidget {
  const _OutcomeCard({
    required this.text,
    required this.isOutcome,
    this.choice,
    this.showEffectChips = false,
  });

  final String text;
  final bool isOutcome;
  final EventChoice? choice;
  final bool showEffectChips;

  List<_EffectChipData> _buildEffectChips() {
    if (choice == null) return [];
    final chips = <_EffectChipData>[];

    for (final entry in choice!.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    if (choice!.colonistDelta != 0) {
      final sign = choice!.colonistDelta > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: 'COLONISTS',
        delta: '$sign${choice!.colonistDelta}',
        isPositive: choice!.colonistDelta > 0,
        color: Colors.orange,
      ));
    }

    for (final entry in choice!.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
        color: _kOuterLabel,
      ));
    }

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    final chips = _buildEffectChips();

    return SizedBox(
      width: double.infinity,
      height: 190,
      child: Container(
      padding: const EdgeInsets.all(16),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: Text(
                text,
                key: ValueKey(isOutcome ? 'outcome' : 'narrative'),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.5,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            if (chips.isNotEmpty && showEffectChips) ...[
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (var i = 0; i < chips.length; i++)
                    _EffectChip(
                      data: chips[i],
                      delay: Duration(milliseconds: 80 * i),
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    ),
    );
  }
}

// ── Effect chip helpers ────────────────────────────────────────────────────

class _EffectChipData {
  final String label;
  final String delta;
  final bool isPositive;
  final Color? color;

  const _EffectChipData({
    required this.label,
    required this.delta,
    required this.isPositive,
    this.color,
  });
}

class _EffectChip extends StatefulWidget {
  const _EffectChip({required this.data, this.delay = Duration.zero});

  final _EffectChipData data;
  final Duration delay;

  @override
  State<_EffectChip> createState() => _EffectChipState();
}

class _EffectChipState extends State<_EffectChip>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(widget.delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.data;
    final chipColor = d.color ?? (d.isPositive ? Colors.green : Colors.red);

    return SlideTransition(
      position: _slide,
      child: FadeTransition(
        opacity: _opacity,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: chipColor.withValues(alpha: 0.15),
            border: Border.all(color: chipColor.withValues(alpha: 0.5)),
            boxShadow: [
              BoxShadow(
                color: chipColor.withValues(alpha: 0.2),
                blurRadius: 8,
              ),
            ],
          ),
          child: Text(
            '${d.label}  ${d.delta}',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: chipColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

// ── CustomPainter: Mirror Array ────────────────────────────────────────────

class _MirrorArrayPainter extends CustomPainter {
  _MirrorArrayPainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedRing,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedRing;
  final bool isResolved;

  // Ring configuration: radiusFraction, mirrorCount, mirrorSize, orbitSpeed.
  static const _rings = [
    (radius: 0.18, count: 16, size: 3.5, speed: 1.0),
    (radius: 0.30, count: 18, size: 5.0, speed: 0.7),
    (radius: 0.42, count: 20, size: 6.5, speed: 0.45),
  ];

  static const _ringLabels = ['STUDY OPTICS', 'HARVEST MATERIAL', 'MAP ROUTES'];
  static const _ringLabelColors = [_kInnerLabel, _kMiddleLabel, _kOuterLabel];

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final center = Offset(cx, cy);
    final w = size.width;

    // ── Light beams (behind mirrors) ─────────────────────────────────────
    _drawBeams(canvas, center, w);

    // ── Mirror rings ─────────────────────────────────────────────────────
    for (var r = _rings.length - 1; r >= 0; r--) {
      _drawRing(canvas, center, w, r);
    }

    // ── Central artificial star ──────────────────────────────────────────
    _drawStar(canvas, center, w);

    // ── Ring labels and tap zones (before resolution only) ────────────────
    if (!isResolved) {
      _drawTapZones(canvas, center, w, size);
      _drawLabels(canvas, center, w, size);
    }
  }

  void _drawStar(Canvas canvas, Offset center, double w) {
    final baseRadius = w * 0.05;
    final pulseRadius = baseRadius * (0.85 + 0.15 * pulseValue);

    // Outer purple glow.
    canvas.drawCircle(
      center,
      pulseRadius * 3.0,
      Paint()
        ..color = const Color(0xFF9C27B0).withValues(alpha: 0.06 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30),
    );

    // Mid blue glow.
    canvas.drawCircle(
      center,
      pulseRadius * 2.0,
      Paint()
        ..color = _kStarGlow.withValues(alpha: 0.12 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );

    // Inner white-hot glow.
    canvas.drawCircle(
      center,
      pulseRadius * 1.3,
      Paint()
        ..color = _kStarCore.withValues(alpha: 0.25 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12),
    );

    // Core.
    canvas.drawCircle(
      center,
      pulseRadius * 0.4,
      Paint()..color = _kStarCore.withValues(alpha: 0.95),
    );

    // Bright core point.
    canvas.drawCircle(
      center,
      pulseRadius * 0.15,
      Paint()..color = _kStarCore,
    );
  }

  void _drawRing(Canvas canvas, Offset center, double w, int ringIndex) {
    final ring = _rings[ringIndex];
    final radius = w * ring.radius;
    final count = ring.count;
    final mSize = ring.size;
    final orbitOffset = animationValue * 2 * pi * ring.speed;

    final isSelected = selectedRing == ringIndex;
    final isDimmed = isResolved && !isSelected;

    for (var i = 0; i < count; i++) {
      final angle = (2 * pi * i / count) + orbitOffset;
      final mx = center.dx + radius * cos(angle);
      final my = center.dy + radius * sin(angle);

      // Rainbow shimmer: slight hue shift based on angle + animation.
      final hue = ((angle + animationValue * 2 * pi) * 180 / pi) % 360;
      final shimmer = HSLColor.fromAHSL(1.0, hue, 0.15, 0.88).toColor();

      double alpha = isDimmed ? 0.2 : 1.0;
      if (isResolved && isSelected) {
        alpha = 0.85 + 0.15 * pulseValue;
      }

      final mirrorColor = Color.lerp(_kMirrorBase, shimmer, 0.3)!
          .withValues(alpha: alpha);

      // Draw mirror as a small rotated rectangle facing the center.
      canvas.save();
      canvas.translate(mx, my);
      canvas.rotate(angle + pi / 2); // orient radially

      final rect = Rect.fromCenter(
        center: Offset.zero,
        width: mSize * 0.5,
        height: mSize * 1.8,
      );

      // Mirror body.
      canvas.drawRect(
        rect,
        Paint()..color = mirrorColor,
      );

      // Specular highlight on mirror.
      if (!isDimmed) {
        canvas.drawRect(
          Rect.fromCenter(
            center: Offset(0, -mSize * 0.3),
            width: mSize * 0.3,
            height: mSize * 0.4,
          ),
          Paint()..color = _kStarCore.withValues(alpha: 0.4 * alpha),
        );
      }

      // Glow for selected ring.
      if (isResolved && isSelected) {
        canvas.drawCircle(
          Offset.zero,
          mSize * 1.5,
          Paint()
            ..color = _ringLabelColors[ringIndex].withValues(
              alpha: 0.15 * pulseValue,
            )
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
        );
      }

      canvas.restore();
    }

    // Faint orbit ring guide.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = _kAccent.withValues(alpha: isDimmed ? 0.03 : 0.08)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5,
    );
  }

  void _drawBeams(Canvas canvas, Offset center, double w) {
    final rng = Random(42);
    const beamCount = 10;

    for (var b = 0; b < beamCount; b++) {
      // Deterministic ring and mirror index, shifted by animation.
      final ringIdx = isResolved && selectedRing != null
          ? selectedRing!
          : b % _rings.length;
      final ring = _rings[ringIdx];
      final mirrorIdx = (b * 7 + (animationValue * ring.count * 2).floor()) %
          ring.count;
      final orbitOffset = animationValue * 2 * pi * ring.speed;
      final angle = (2 * pi * mirrorIdx / ring.count) + orbitOffset;
      final radius = w * ring.radius;

      final mirrorPos = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );

      final isDimmed = isResolved && selectedRing != ringIdx;
      final beamAlpha = isDimmed ? 0.0 : (0.06 + 0.04 * rng.nextDouble());

      if (beamAlpha <= 0) continue;

      final beamPaint = Paint()
        ..color = _kStarCore.withValues(alpha: beamAlpha * pulseValue)
        ..strokeWidth = 0.8
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

      canvas.drawLine(mirrorPos, center, beamPaint);
    }
  }

  /// Semi-transparent tap zone indicators.
  void _drawTapZones(Canvas canvas, Offset center, double w, Size size) {
    for (var r = 0; r < _rings.length; r++) {
      final ring = _rings[r];
      final radius = w * ring.radius;
      final color = _ringLabelColors[r];
      final zonePaint = Paint()
        ..color = color.withValues(alpha: 0.08)
        ..style = PaintingStyle.fill;
      final zoneBorder = Paint()
        ..color = color.withValues(alpha: 0.15)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1;
      // Draw a horizontal band around the label position.
      final labelY = center.dy - radius - 10;
      final rect = RRect.fromRectAndRadius(
        Rect.fromCenter(center: Offset(center.dx, labelY), width: w * 0.5, height: 36),
        const Radius.circular(8),
      );
      canvas.drawRRect(rect, zonePaint);
      canvas.drawRRect(rect, zoneBorder);
    }
  }

  void _drawLabels(Canvas canvas, Offset center, double w, Size size) {
    for (var r = 0; r < _rings.length; r++) {
      final ring = _rings[r];
      final radius = w * ring.radius;
      final label = _ringLabels[r];
      final color = _ringLabelColors[r];

      final textSpan = TextSpan(
        text: label,
        style: TextStyle(
          color: color.withValues(alpha: 0.9),
          fontSize: 10,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
          shadows: [
            Shadow(
              color: color.withValues(alpha: 0.6),
              blurRadius: 8,
            ),
          ],
        ),
      );

      final tp = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      )..layout();

      final labelX = center.dx - tp.width / 2;
      final labelY = center.dy - radius - tp.height - 4;

      // Only draw if within bounds.
      if (labelY > 0) {
        tp.paint(canvas, Offset(labelX, labelY));
      }
    }
  }

  @override
  bool shouldRepaint(_MirrorArrayPainter old) => true;
}
