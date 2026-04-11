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
const _kAccent = Color(0xFF76FF03);
const _kGlitch = Color(0xFFFF4081);
const _kEcho = Color(0xFFB2FF59);
const _kLeftWindowColor = Color(0xFF76FF03);
const _kRightWindowColor = Color(0xFF00E5FF);

class PhantomShipScreen extends ConsumerStatefulWidget {
  const PhantomShipScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<PhantomShipScreen> createState() => _PhantomShipScreenState();
}

class _PhantomShipScreenState extends ConsumerState<PhantomShipScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _phaseController;
  late final AnimationController _glitchController;

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
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);
    _titleGlowAnim = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _titleGlow, curve: Curves.easeInOut),
    );

    _phaseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();

    _glitchController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
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
    _phaseController.dispose();
    _glitchController.dispose();
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
        'TEMPORAL ECHO',
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
              color: _kGlitch.withValues(alpha: _titleGlowAnim.value * 0.3),
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
            animation: Listenable.merge([_phaseController, _glitchController]),
            builder: (_, __) => CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: _PhantomShipPainter(
                phaseValue: _phaseController.value,
                glitchValue: _glitchController.value,
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
      return Text(
        'TAP TO SKIP',
        style: TextStyle(
          color: _kAccent.withValues(alpha: 0.5),
          fontSize: 12,
          letterSpacing: 2,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

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
    if (!_typewriterDone) {
      _skipTypewriter();
      return;
    }
    final size = Size(constraints.maxWidth, constraints.maxHeight);
    final tapPos = details.localPosition;

    // Choice zone centers (must match painter positions).
    final leftCenter = Offset(size.width * 0.25, size.height * 0.82);
    final rightCenter = Offset(size.width * 0.75, size.height * 0.82);
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

// ─── Phantom Ship Painter ────────────────────────────────────────────────────

class _PhantomShipPainter extends CustomPainter {
  _PhantomShipPainter({
    required this.phaseValue,
    required this.glitchValue,
    required this.selectedWindow,
    required this.isResolved,
  });

  final double phaseValue;
  final double glitchValue;
  final int? selectedWindow;
  final bool isResolved;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.42;

    // Phase offset: phantom ship drifts through your ship on a sine wave.
    final phaseAngle = phaseValue * 2 * pi;
    final phantomOffsetX = sin(phaseAngle) * size.width * 0.18;

    // Glitch flicker intensity (0..1, fast).
    final glitchIntensity = (sin(glitchValue * 2 * pi * 3) * 0.5 + 0.5);

    // 1. Temporal echo rings from the overlap point.
    _drawEchoRings(canvas, cx, cy, phaseValue, glitchIntensity);

    // 2. Static noise bands in the overlap zone.
    _drawNoiseBands(canvas, size, cx, cy, glitchIntensity);

    // 3. Reality fracture lines.
    _drawFractureLines(canvas, size, glitchIntensity);

    // 4. Your ship (solid white outline, low-opacity fill).
    _drawShip(
      canvas,
      center: Offset(cx, cy),
      scale: size.width * 0.22,
      fillColor: Colors.white.withValues(alpha: 0.08),
      strokeColor: Colors.white.withValues(alpha: 0.7),
      strokeWidth: 1.5,
      mirrored: false,
    );

    // 5. Phantom ship (ghostly green, flickering, offset via sine wave).
    final phantomAlpha = (0.35 + 0.25 * glitchIntensity).clamp(0.0, 1.0);
    _drawShip(
      canvas,
      center: Offset(cx + phantomOffsetX, cy),
      scale: size.width * 0.22,
      fillColor: _kAccent.withValues(alpha: phantomAlpha * 0.25),
      strokeColor: _kAccent.withValues(alpha: phantomAlpha),
      strokeWidth: 1.2,
      mirrored: true,
      glowColor: _kEcho.withValues(alpha: phantomAlpha * 0.4),
      glowRadius: 10,
    );

    // 6. Choice zones.
    _drawChoiceZones(canvas, size);
  }

  /// Draw a simple angular spaceship silhouette.
  ///
  /// Shape: triangle nose pointing up, rectangular body, two engine pods
  /// flanking the base. [mirrored] flips it horizontally.
  void _drawShip(
    Canvas canvas, {
    required Offset center,
    required double scale,
    required Color fillColor,
    required Color strokeColor,
    required double strokeWidth,
    required bool mirrored,
    Color? glowColor,
    double glowRadius = 0,
  }) {
    final flip = mirrored ? -1.0 : 1.0;

    // All coordinates are relative to center, in a normalised space where
    // scale=1 is the half-height of the ship.
    //
    //        nose
    //         /\
    //        /  \
    //       /    \
    //      /------\   <- shoulder
    //     |   body |
    //      \------/   <- hip
    //   pod/|    |\pod
    //     /_|    |_\
    //      exhaust

    final s = scale;

    // Main hull path.
    final hull = Path();
    // Nose tip (top).
    hull.moveTo(center.dx, center.dy - s * 0.55);
    // Right shoulder.
    hull.lineTo(center.dx + flip * s * 0.38, center.dy - s * 0.05);
    // Right hip.
    hull.lineTo(center.dx + flip * s * 0.32, center.dy + s * 0.20);
    // Right engine pod outer.
    hull.lineTo(center.dx + flip * s * 0.50, center.dy + s * 0.30);
    hull.lineTo(center.dx + flip * s * 0.50, center.dy + s * 0.55);
    // Right engine pod inner.
    hull.lineTo(center.dx + flip * s * 0.28, center.dy + s * 0.45);
    // Exhaust centre notch.
    hull.lineTo(center.dx + flip * s * 0.12, center.dy + s * 0.55);
    hull.lineTo(center.dx, center.dy + s * 0.45);
    // Mirror left side (always symmetric regardless of flip — we handle that
    // by negating the x offset on both sides using flip above, but here we
    // close the symmetric left side explicitly).
    hull.lineTo(center.dx - flip * s * 0.12, center.dy + s * 0.55);
    hull.lineTo(center.dx - flip * s * 0.28, center.dy + s * 0.45);
    hull.lineTo(center.dx - flip * s * 0.50, center.dy + s * 0.55);
    hull.lineTo(center.dx - flip * s * 0.50, center.dy + s * 0.30);
    hull.lineTo(center.dx - flip * s * 0.32, center.dy + s * 0.20);
    hull.lineTo(center.dx - flip * s * 0.38, center.dy - s * 0.05);
    hull.close();

    // Optional glow pass (drawn first, under the fill).
    if (glowColor != null && glowRadius > 0) {
      final glowPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth + glowRadius
        ..color = glowColor
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, glowRadius);
      canvas.drawPath(hull, glowPaint);
    }

    // Fill.
    canvas.drawPath(hull, Paint()..color = fillColor);

    // Stroke outline.
    canvas.drawPath(
      hull,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..color = strokeColor,
    );

    // Cockpit window — small circle near nose.
    final cockpitCenter = Offset(center.dx, center.dy - s * 0.25);
    final cockpitR = s * 0.07;
    canvas.drawCircle(
      cockpitCenter,
      cockpitR,
      Paint()..color = strokeColor.withValues(alpha: 0.5),
    );

    // Engine glow dots on pods.
    for (final side in [-1.0, 1.0]) {
      final podCenter = Offset(
        center.dx + flip * side * s * 0.39,
        center.dy + s * 0.50,
      );
      canvas.drawCircle(
        podCenter,
        s * 0.045,
        Paint()
          ..color = strokeColor.withValues(alpha: 0.6)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
      );
    }
  }

  /// Concentric expanding echo rings from the overlap centre.
  void _drawEchoRings(
    Canvas canvas,
    double cx,
    double cy,
    double phaseValue,
    double glitchIntensity,
  ) {
    const ringCount = 4;
    for (int i = 0; i < ringCount; i++) {
      // Each ring expands at a different rate offset by phase.
      final t = ((phaseValue + i / ringCount) % 1.0);
      final radius = t * 80 + 10;
      final alpha = (1.0 - t) * (0.25 + 0.15 * glitchIntensity);
      final ringPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.0
        ..color = _kEcho.withValues(alpha: alpha.clamp(0.0, 1.0))
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      canvas.drawCircle(Offset(cx, cy), radius, ringPaint);
    }
  }

  /// Horizontal static noise bands — TV interference effect.
  void _drawNoiseBands(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double glitchIntensity,
  ) {
    // 5 bands, seeded positions so they don't jump every frame.
    const bandCount = 5;
    final bandRng = Random(17);
    for (int i = 0; i < bandCount; i++) {
      final bandY = cy - 60 + bandRng.nextDouble() * 120;
      final bandH = 2.0 + bandRng.nextDouble() * 5.0;
      final bandAlpha = glitchIntensity * (0.04 + bandRng.nextDouble() * 0.06);

      // Fill with small fragmented rectangles to mimic analogue noise.
      double x = cx - size.width * 0.28;
      final noiseRng = Random(i * 31 + (glitchIntensity * 20).toInt());
      while (x < cx + size.width * 0.28) {
        final w = 2.0 + noiseRng.nextDouble() * 8.0;
        final alpha = bandAlpha * noiseRng.nextDouble();
        canvas.drawRect(
          Rect.fromLTWH(x, bandY, w, bandH),
          Paint()
            ..color = Colors.white.withValues(alpha: alpha.clamp(0.0, 1.0)),
        );
        x += w + noiseRng.nextDouble() * 4;
      }
    }
  }

  /// Jagged diagonal fracture lines across the canvas.
  void _drawFractureLines(
    Canvas canvas,
    Size size,
    double glitchIntensity,
  ) {
    const lineCount = 4;
    final fracturePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8
      ..color = _kGlitch
          .withValues(alpha: (0.15 + 0.25 * glitchIntensity).clamp(0.0, 1.0));

    // Fixed seed so lines stay stable; vary only the alpha with glitch.
    final rng = Random(99);
    for (int i = 0; i < lineCount; i++) {
      final startX = rng.nextDouble() * size.width;
      final startY = rng.nextDouble() * size.height * 0.6;
      final path = Path()..moveTo(startX, startY);

      // Build jagged line with 5–7 segments.
      double x = startX;
      double y = startY;
      final segments = 5 + rng.nextInt(3);
      for (int s = 0; s < segments; s++) {
        x += (rng.nextDouble() - 0.3) * size.width * 0.18;
        y += (rng.nextDouble() - 0.2) * size.height * 0.12;
        path.lineTo(x.clamp(0, size.width), y.clamp(0, size.height));
      }
      canvas.drawPath(path, fracturePaint);
    }
  }

  /// Circular choice zones with labels.
  void _drawChoiceZones(Canvas canvas, Size size) {
    final leftCenter = Offset(size.width * 0.25, size.height * 0.82);
    final rightCenter = Offset(size.width * 0.75, size.height * 0.82);
    final zoneRadius = size.width * 0.10;

    // Pulse based on phase (slower feel than glitch).
    final pulse = sin(phaseValue * 2 * pi) * 0.5 + 0.5;

    _drawSingleZone(
      canvas,
      center: leftCenter,
      radius: zoneRadius,
      rimColor: _kLeftWindowColor,
      label: 'COMMUNICATE',
      zoneIndex: 0,
      pulse: pulse,
    );

    _drawSingleZone(
      canvas,
      center: rightCenter,
      radius: zoneRadius,
      rimColor: _kRightWindowColor,
      label: 'OBSERVE',
      zoneIndex: 1,
      pulse: pulse,
    );
  }

  void _drawSingleZone(
    Canvas canvas, {
    required Offset center,
    required double radius,
    required Color rimColor,
    required String label,
    required int zoneIndex,
    required double pulse,
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
      rimOpacity = 0.5 + 0.3 * pulse;
    }

    // Outer glow.
    if (!isDimmed) {
      final glowPaint = Paint()
        ..color = activeRim.withValues(alpha: 0.12 + 0.12 * pulse)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 14);
      canvas.drawCircle(center, radius * 1.2, glowPaint);
    }

    // Dark interior.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color =
            const Color(0xFF050510).withValues(alpha: isDimmed ? 0.3 : 0.80),
    );

    // Rim.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = isSelected && isResolved ? 2.5 : 1.8
        ..color = activeRim.withValues(alpha: rimOpacity),
    );

    // Small icon dots inside — suggest signal/eye motif.
    if (!isDimmed) {
      final dotPaint = Paint()
        ..color = activeRim.withValues(alpha: 0.5 + 0.3 * pulse)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      // Centre dot.
      canvas.drawCircle(center, 3.0, dotPaint);
      // Ring of 6 smaller dots.
      for (int d = 0; d < 6; d++) {
        final angle = d / 6 * 2 * pi + phaseValue * pi;
        final dx = center.dx + cos(angle) * radius * 0.45;
        final dy = center.dy + sin(angle) * radius * 0.45;
        canvas.drawCircle(Offset(dx, dy), 1.5, dotPaint);
      }
    }

    // Label below zone.
    final labelOpacity = isDimmed ? 0.2 : 0.7 + 0.2 * pulse;
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
  bool shouldRepaint(covariant _PhantomShipPainter oldDelegate) =>
      phaseValue != oldDelegate.phaseValue ||
      glitchValue != oldDelegate.glitchValue ||
      selectedWindow != oldDelegate.selectedWindow ||
      isResolved != oldDelegate.isResolved;
}
