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
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFFFFB74D);
const _kDiskStart = Color(0xFFFF6D00);
const _kDiskEnd = Color(0xFFFFD54F);
const _kLeftWindowColor = Color(0xFFFFB74D);
const _kRightWindowColor = Color(0xFF00E5FF);

class BlackHoleScreen extends ConsumerStatefulWidget {
  const BlackHoleScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<BlackHoleScreen> createState() => _BlackHoleScreenState();
}

class _BlackHoleScreenState extends ConsumerState<BlackHoleScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;
  late final AnimationController _diskController;

  // Typewriter state.
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // Choice state.
  int? _selectedWindow;
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
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _diskController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    )..repeat();

    if (widget.event.narrative.isEmpty) {
      _typewriterDone = true;
    } else {
      _startTypewriter();
    }
    if (PlatformConfig.skipAnimations) _skipTypewriter();
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
      _selectedWindow = index;
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
    _diskController.dispose();
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

  Widget _buildTitle() {
    final screen = ScreenInfo.of(context);
    return AnimatedBuilder(
      animation: _titleGlowAnim,
      builder: (_, __) => Text(
        'GRAVITATIONAL LENS',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: screen.scaledFontSize(24),
          fontWeight: FontWeight.bold,
          color: _kAccent,
          letterSpacing: 2,
          shadows: [
            Shadow(
              color: _kAccent.withValues(alpha: _titleGlowAnim.value),
              blurRadius: 20,
            ),
            Shadow(
              color: _kAccent.withValues(alpha: _titleGlowAnim.value * 0.5),
              blurRadius: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNarrativeCard() {
    final event = widget.event;
    if (!_resolved && event.narrative.isNotEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withValues(alpha: 0.05),
          border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
        ),
        child: Text(
          _displayedText,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 15,
            height: 1.5,
          ),
        ),
      );
    }
    if (_resolved && _selectedWindow != null) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: (_isPositiveOutcome ? Colors.green : Colors.red)
              .withValues(alpha: 0.1),
          border: Border.all(
            color: (_isPositiveOutcome ? Colors.green : Colors.red)
                .withValues(alpha: 0.4),
          ),
        ),
        child: Text(
          event.choices[_selectedWindow!].outcome,
          style: TextStyle(
            color: _isPositiveOutcome ? Colors.greenAccent : Colors.redAccent,
            fontSize: 15,
            height: 1.5,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildVisualArea() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTapDown: _resolved
              ? null
              : (details) => _handleTap(details, constraints),
          child: AnimatedBuilder(
            animation: Listenable.merge([_diskController, _pulseController]),
            builder: (_, __) => CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: _BlackHolePainter(
                animationValue: _diskController.value,
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

  Widget _buildHintOrContinue() {
    if (_resolved) {
      return Padding(
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
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: _kAccent.withValues(alpha: 0.6)),
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
      );
    }
    if (!_typewriterDone) {
      return Text('TAP TO SKIP', style: TextStyle(color: _kAccent.withValues(alpha: 0.5), fontSize: 12, letterSpacing: 2));
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape = screen.isLandscape && screen.screenClass != ScreenClass.compact;

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
            bottom: false,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: _typewriterDone ? null : _skipTypewriter,
              child: isLandscape ? _buildLandscape() : _buildPortrait(),
            ),
          ),
        ],
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
          if (!_typewriterDone) const Spacer(),
          if (_showEffects) ...[
            const SizedBox(height: 8),
            _buildEffectChips(),
          ],
          if (_resolved || !_typewriterDone) ...[
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
    if (!_typewriterDone) { _skipTypewriter(); return; }
    final size = Size(constraints.maxWidth, constraints.maxHeight);
    final tapPos = details.localPosition;

    // Window centers (must match painter positions).
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
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: isPositive,
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
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(const _EffectChip(
        label: 'Nav Data',
        delta: 'Acquired',
        isPositive: true,
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

// ─── Black Hole Painter ─────────────────────────────────────────────────────

class _BlackHolePainter extends CustomPainter {
  _BlackHolePainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedWindow,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedWindow;
  final bool isResolved;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.55;
    final eventHorizonRadius = size.width * 0.15;

    // 1. Dark overlay background.
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..color = const Color(0x88050510),
    );

    // 2. Light rays bending around the black hole.
    _drawLightRays(canvas, size, cx, cy, eventHorizonRadius);

    // 3. Accretion disk — back half (behind the black hole).
    _drawAccretionDisk(canvas, size, cx, cy, eventHorizonRadius,
        drawFrontHalf: false);

    // 4. Event horizon (solid black).
    _drawEventHorizon(canvas, cx, cy, eventHorizonRadius);

    // 5. Accretion disk — front half (in front of the black hole).
    _drawAccretionDisk(canvas, size, cx, cy, eventHorizonRadius,
        drawFrontHalf: true);

    // 7. Two magnified windows.
    _drawWindows(canvas, size);
  }

  void _drawLightRays(
      Canvas canvas, Size size, double cx, double cy, double radius) {
    final rayPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

    final rayCount = 8;
    for (int i = 0; i < rayCount; i++) {
      final angle = (i / rayCount) * 2 * pi + animationValue * 0.5;

      // Origin: edge of canvas.
      final edgeDist = size.width * 0.55;
      final startX = cx + cos(angle) * edgeDist;
      final startY = cy + sin(angle) * edgeDist;

      // End: opposite edge.
      final endAngle = angle + pi + 0.3 * sin(animationValue * 2 * pi + i);
      final endX = cx + cos(endAngle) * edgeDist;
      final endY = cy + sin(endAngle) * edgeDist;

      // Control points bend toward the black hole center.
      final bendStrength = radius * 1.4;
      final midAngle = (angle + endAngle) / 2;
      final cp1x = cx + cos(angle + 0.4) * bendStrength;
      final cp1y = cy + sin(angle + 0.4) * bendStrength;
      final cp2x = cx + cos(midAngle - 0.4) * bendStrength;
      final cp2y = cy + sin(midAngle - 0.4) * bendStrength;

      final path = Path()
        ..moveTo(startX, startY)
        ..cubicTo(cp1x, cp1y, cp2x, cp2y, endX, endY);

      final opacity = 0.08 + 0.06 * sin(animationValue * 2 * pi + i * 0.7);
      rayPaint.color = Colors.white.withValues(alpha: opacity.clamp(0.0, 1.0));
      canvas.drawPath(path, rayPaint);
    }
  }

  void _drawAccretionDisk(Canvas canvas, Size size, double cx, double cy,
      double eventHorizonRadius,
      {required bool drawFrontHalf}) {
    final diskWidth = size.width * 0.42;
    final diskHeight = diskWidth * 0.22; // Flattened ellipse (~30deg view).
    final rotation = animationValue * 2 * pi;

    canvas.save();
    canvas.translate(cx, cy);

    // Slight tilt for 3D perspective.
    final diskRect = Rect.fromCenter(
      center: Offset.zero,
      width: diskWidth * 2,
      height: diskHeight * 2,
    );

    // Sweep angles for front/back halves.
    final sweepStart = drawFrontHalf ? 0.0 : pi;
    final sweepEnd = drawFrontHalf ? pi : 2 * pi;

    // Draw multiple rings for thickness.
    for (int ring = 0; ring < 5; ring++) {
      final t = ring / 4.0;
      final ringScale = 0.8 + t * 0.4;
      final ringRect = Rect.fromCenter(
        center: Offset.zero,
        width: diskRect.width * ringScale,
        height: diskRect.height * ringScale,
      );

      final opacity = (0.4 - t * 0.2).clamp(0.0, 1.0);
      final color = Color.lerp(_kDiskStart, _kDiskEnd, t)!;

      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = drawFrontHalf ? 6.0 - ring * 0.8 : 4.0 - ring * 0.5
        ..maskFilter = MaskFilter.blur(
            BlurStyle.normal, drawFrontHalf ? 4.0 : 6.0)
        ..color = color.withValues(
            alpha: (opacity * (drawFrontHalf ? 0.9 : 0.5)));

      final path = Path();
      // Draw arc segments.
      final steps = 40;
      for (int s = 0; s <= steps; s++) {
        final frac = s / steps;
        final angle = sweepStart + frac * (sweepEnd - sweepStart) + rotation;
        final px = ringRect.width / 2 * cos(angle);
        final py = ringRect.height / 2 * sin(angle);
        if (s == 0) {
          path.moveTo(px, py);
        } else {
          path.lineTo(px, py);
        }
      }

      canvas.drawPath(path, paint);
    }

    // Hot spots — bright knots in the disk.
    if (drawFrontHalf) {
      for (int i = 0; i < 3; i++) {
        final knotAngle = rotation + i * (pi / 3);
        if (sin(knotAngle) < 0) continue; // Only front half.
        final kx = diskRect.width / 2 * 0.9 * cos(knotAngle);
        final ky = diskRect.height / 2 * 0.9 * sin(knotAngle);

        final glow = Paint()
          ..color = _kDiskEnd.withValues(alpha: 0.5 + 0.3 * sin(knotAngle * 3))
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
        canvas.drawCircle(Offset(kx, ky), 4, glow);
      }
    }

    canvas.restore();
  }

  void _drawEventHorizon(
      Canvas canvas, double cx, double cy, double radius) {
    // Outer shadow glow.
    final shadowPaint = Paint()
      ..color = const Color(0xFF0B1426)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 16);
    canvas.drawCircle(Offset(cx, cy), radius * 1.15, shadowPaint);

    // Solid black event horizon.
    final blackPaint = Paint()..color = const Color(0xFF000000);
    canvas.drawCircle(Offset(cx, cy), radius, blackPaint);

    // Inner gradient edge — subtle dark purple rim.
    final rimPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..shader = RadialGradient(
        colors: [
          Colors.transparent,
          const Color(0xFF1A0030).withValues(alpha: 0.5),
          Colors.transparent,
        ],
        stops: const [0.0, 0.5, 1.0],
      ).createShader(
        Rect.fromCircle(center: Offset(cx, cy), radius: radius),
      );
    canvas.drawCircle(Offset(cx, cy), radius, rimPaint);
  }

  void _drawWindows(Canvas canvas, Size size) {
    final windowRadius = size.width * 0.10;
    final leftCenter = Offset(size.width * 0.30, size.height * 0.35);
    final rightCenter = Offset(size.width * 0.70, size.height * 0.35);

    _drawSingleWindow(
      canvas,
      center: leftCenter,
      radius: windowRadius,
      rimColor: _kLeftWindowColor,
      label: 'APPROACH',
      windowIndex: 0,
      size: size,
    );

    _drawSingleWindow(
      canvas,
      center: rightCenter,
      radius: windowRadius,
      rimColor: _kRightWindowColor,
      label: 'OBSERVE',
      windowIndex: 1,
      size: size,
    );
  }

  void _drawSingleWindow(
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

    // Determine visual state colors.
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
        ..color = activeRim.withValues(alpha: (0.15 + 0.15 * pulseValue))
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 14);
      canvas.drawCircle(center, radius * 1.2, glowPaint);
    }

    // Dark interior (space through the lens).
    final interiorPaint = Paint()
      ..color = Color(0xFF050510).withValues(alpha: isDimmed ? 0.3 : 0.85);
    canvas.drawCircle(center, radius, interiorPaint);

    // Star dots inside the window (tiny distant systems).
    final starSeed = Random(windowIndex * 1000 + 7);
    final starCount = windowIndex == 0 ? 12 : 8;
    for (int i = 0; i < starCount; i++) {
      final sx = center.dx + (starSeed.nextDouble() - 0.5) * radius * 1.6;
      final sy = center.dy + (starSeed.nextDouble() - 0.5) * radius * 1.6;
      final dist = (Offset(sx, sy) - center).distance;
      if (dist > radius * 0.9) continue;

      final brightness = isDimmed
          ? 0.1
          : 0.4 + 0.4 * starSeed.nextDouble() + 0.2 * pulseValue;
      final starSize = 0.8 + starSeed.nextDouble() * 1.5;

      final starColor = windowIndex == 0
          ? Color.lerp(Colors.white, _kLeftWindowColor, starSeed.nextDouble())!
          : Color.lerp(Colors.white, _kRightWindowColor, starSeed.nextDouble())!;

      final starPaint = Paint()
        ..color = starColor.withValues(alpha: brightness.clamp(0.0, 1.0));
      canvas.drawCircle(Offset(sx, sy), starSize, starPaint);

      // Tiny glow on brighter stars.
      if (starSize > 1.5 && !isDimmed) {
        final glowP = Paint()
          ..color = starColor.withValues(alpha: 0.15)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
        canvas.drawCircle(Offset(sx, sy), starSize * 2, glowP);
      }
    }

    // A prominent central star/system in each window.
    if (!isDimmed) {
      final centralColor = windowIndex == 0 ? _kLeftWindowColor : _kRightWindowColor;
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

    // Label below window.
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
      Offset(
        center.dx - textPainter.width / 2,
        center.dy + radius + 8,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant _BlackHolePainter oldDelegate) =>
      animationValue != oldDelegate.animationValue ||
      pulseValue != oldDelegate.pulseValue ||
      selectedWindow != oldDelegate.selectedWindow ||
      isResolved != oldDelegate.isResolved;
}
