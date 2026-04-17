import 'package:stellar_broadcast/utils/l10n_extensions.dart';
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

/// Theme constants.
const _kBgColor = SpaceColors.deepSpace;
const _kAccent = Color(0xFFB388FF);

// Vortex palette.
const _kVortexInner = Color(0xFF6A1B9A);
const _kVortexMid = Color(0xFF7C4DFF);
const _kVortexOuter = Color(0xFF448AFF);
const _kVortexEdge = Color(0xFF00BCD4);
const _kGhostShip = Color(0xFFCE93D8);
const _kSingularity = Color(0xFFEA80FC);
const _kEnterZone = Color(0xFF7C4DFF);
const _kObserveZone = Color(0xFF4DD0E1);

/// Interactive chrono-vortex event screen. The player encounters a time-loop
/// distortion repeating in 6-second cycles and must choose to enter or observe.
class ChronoVortexScreen extends ConsumerStatefulWidget {
  const ChronoVortexScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<ChronoVortexScreen> createState() => _ChronoVortexScreenState();
}

class _ChronoVortexScreenState extends ConsumerState<ChronoVortexScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<ChronoVortexScreen> {
  // Star field background.

  // Title glow.
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;

  // Central pulse.
  late final AnimationController _pulseController;

  // Time-loop vortex — 6 seconds is the loop.
  late final AnimationController _vortexController;

  // Typewriter state.

  // Choice state.
  int? _selectedChoiceIndex;
  bool _showingOutcome = false;
  bool _showEffectChips = false;

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

    _vortexController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();

    GameSfx().playLong(GameSfx.alienTech);
  }

  void _onChoiceSelected(int index) {
    if (_showingOutcome) return;
    final choice = widget.event.choices[index];

    final probes = ref.read(voyageProvider).probes;
    if (choice.probeCost > 0 && probes < choice.probeCost) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedChoiceIndex = index;
      _showingOutcome = true;
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _showEffectChips = true);
    });

    unawaited(ref.read(voyageProvider.notifier).handleEvent(choice));
  }

  Size? _paintSize;

  void _handleTapDown(TapDownDetails details) {
    if (_showingOutcome) return;
    if (!typewriterDone) skipTypewriter();
    if (widget.event.choices.length < 2) return;
    final size = _paintSize;
    if (size == null) {
      debugPrint('ChronoVortex: tap before layout — ignoring');
      return;
    }

    final local = details.localPosition;

    // Enter zone: 25% from left, 50% height.
    final enterCenter = Offset(size.width * 0.25, size.height * 0.50);
    // Observe zone: 75% from left, 70% height.
    final observeCenter = Offset(size.width * 0.75, size.height * 0.70);

    const hitRadius = 60.0;

    if ((local - enterCenter).distance <= hitRadius) {
      _onChoiceSelected(0);
    } else if ((local - observeCenter).distance <= hitRadius) {
      _onChoiceSelected(1);
    }
  }

  @override
  void dispose() {
    disposeTypewriter();
    _titleGlow.dispose();
    _pulseController.dispose();
    _vortexController.dispose();
    super.dispose();
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
    text: 'CHRONO-VORTEX',
    glow: _titleGlowAnim,
    accentColor: _kAccent,
    fontSize: 26,
    secondaryGlowColor: _kVortexInner,
    secondaryGlowAlphaScale: 0.6,
  );

  Widget _buildNarrativeCard() {
    final resolvedChoice = _showingOutcome && _selectedChoiceIndex != null
        ? widget.event.choices[_selectedChoiceIndex!]
        : null;
    return _NarrativeCard(
      text: resolvedChoice?.outcome ?? displayedText,
      isOutcome: _showingOutcome,
      choice: resolvedChoice,
      showEffectChips: _showEffectChips,
    );
  }

  Widget _buildVisualArea() {
    return LayoutBuilder(
      builder: (context, constraints) {
        _paintSize = Size(constraints.maxWidth, constraints.maxHeight);
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: _handleTapDown,
          child: AnimatedBuilder(
            animation: Listenable.merge([_vortexController, _pulseController]),
            builder: (_, _) => CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: _ChronoVortexPainter(
                animationValue: _vortexController.value,
                pulseValue: _pulseController.value,
                selectedChoice: _selectedChoiceIndex,
                isResolved: _showingOutcome,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHintOrContinue() {
    if (_showingOutcome) {
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
    if (!typewriterDone) {
      return Text(
        context.l10n.ui_common_tapToSkip,
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

    return EventPopScope(
      resolved: _showingOutcome,
      child: Scaffold(
        backgroundColor: _kBgColor,
        body: Stack(
          children: [
            // Star field background.
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
                const SizedBox(height: 16),
                _buildNarrativeCard(),
                const SizedBox(height: 8),
                Expanded(child: _buildVisualArea()),
                const SizedBox(height: 8),
                _buildHintOrContinue(),
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
                          child: _buildNarrativeCard(),
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
}

// ── Narrative card ──────────────────────────────────────────────────────────

class _NarrativeCard extends StatelessWidget {
  const _NarrativeCard({
    required this.text,
    required this.isOutcome,
    this.choice,
    this.showEffectChips = false,
  });

  final String text;
  final bool isOutcome;
  final EventChoice? choice;
  final bool showEffectChips;

  List<_EffectChipData> _buildChips() {
    final c = choice;
    if (c == null) return [];
    final chips = <_EffectChipData>[];

    for (final entry in c.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
        ),
      );
    }

    if (c.colonistDelta != 0) {
      final sign = c.colonistDelta > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: 'COLONISTS',
          delta: '$sign${c.colonistDelta}',
          isPositive: c.colonistDelta > 0,
          color: Colors.orange,
        ),
      );
    }

    for (final entry in c.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
          color: SpaceColors.cyan,
        ),
      );
    }

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    final chips = _buildChips();

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.3,
      ),
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
                    for (var i = 0; i < chips.length; i++) _buildChip(chips[i]),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(_EffectChipData d) {
    final chipColor = d.color ?? (d.isPositive ? Colors.green : Colors.red);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: chipColor.withValues(alpha: 0.15),
        border: Border.all(color: chipColor.withValues(alpha: 0.5)),
        boxShadow: [
          BoxShadow(color: chipColor.withValues(alpha: 0.2), blurRadius: 8),
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
    );
  }
}

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

// ── Chrono Vortex CustomPainter ─────────────────────────────────────────────

class _ChronoVortexPainter extends CustomPainter {
  _ChronoVortexPainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedChoice,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedChoice;
  final bool isResolved;

  static const _spiralArms = 4;
  static const _vortexColors = [
    _kVortexInner,
    _kVortexMid,
    _kVortexOuter,
    _kVortexEdge,
  ];

  // Pre-laid-out zone labels. Static so TextPainter.layout() runs once per app
  // lifetime instead of on every paint call.
  static final _enterLabelPainter = _makeZoneLabel('ENTER', _kEnterZone);
  static final _observeLabelPainter = _makeZoneLabel('OBSERVE', _kObserveZone);

  static TextPainter _makeZoneLabel(String label, Color color) {
    return TextPainter(
      text: TextSpan(
        text: label,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width * 0.5;
    final cy = size.height * 0.5;
    final center = Offset(cx, cy);
    final maxRadius = size.shortestSide * 0.40;

    _drawVortexSpiral(canvas, center, maxRadius);
    _drawTimeEchoes(canvas, center, maxRadius);
    _drawClockMarkers(canvas, center, maxRadius);
    _drawCentralSingularity(canvas, center);

    if (!isResolved) {
      _drawChoiceZones(canvas, size);
    } else {
      _drawResolvedState(canvas, center, maxRadius, size);
    }
  }

  void _drawVortexSpiral(Canvas canvas, Offset center, double maxRadius) {
    for (int arm = 0; arm < _spiralArms; arm++) {
      final armOffset = (arm / _spiralArms) * 2 * pi;

      // Draw spiral as a series of dots along the arm.
      const steps = 80;
      for (int i = 0; i < steps; i++) {
        final t = i / steps; // 0..1 distance from center.
        final radius = t * maxRadius;

        // Inner parts rotate faster — multiply animation by higher factor near center.
        final speedFactor = 1.0 + (1.0 - t) * 3.0;
        final angle =
            armOffset +
            t * 4 * pi + // base spiral winding
            animationValue * 2 * pi * speedFactor; // rotation

        final x = center.dx + cos(angle) * radius;
        final y = center.dy + sin(angle) * radius;

        // Color shifts along spiral.
        final colorIndex = (t * (_vortexColors.length - 1)).floor();
        final colorT = (t * (_vortexColors.length - 1)) - colorIndex;
        final nextIndex = min(colorIndex + 1, _vortexColors.length - 1);
        final color = Color.lerp(
          _vortexColors[colorIndex],
          _vortexColors[nextIndex],
          colorT,
        )!;

        // Fade out at the very center and at the edges.
        final alphaFade = (t < 0.05)
            ? t / 0.05
            : (t > 0.9)
            ? (1.0 - t) / 0.1
            : 1.0;

        // Pulsate the whole spiral subtly.
        final pulseAlpha = 0.35 + 0.25 * pulseValue;
        final dotRadius = 1.2 + t * 2.5;

        final paint = Paint()
          ..color = color.withValues(alpha: alphaFade * pulseAlpha)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, 2.0 + t * 3.0);

        canvas.drawCircle(Offset(x, y), dotRadius, paint);

        // Brighter core dot without blur for crispness.
        if (i % 3 == 0) {
          final corePaint = Paint()
            ..color = color.withValues(alpha: alphaFade * pulseAlpha * 0.7);
          canvas.drawCircle(Offset(x, y), dotRadius * 0.5, corePaint);
        }
      }
    }
  }

  void _drawTimeEchoes(Canvas canvas, Offset center, double maxRadius) {
    // 4 ghost ships at different phase offsets along the spiral.
    const echoCount = 4;
    for (int i = 0; i < echoCount; i++) {
      final phase = (animationValue + i * 0.25) % 1.0;
      final orbitRadius = maxRadius * (0.25 + i * 0.12);
      final angle = phase * 2 * pi;
      final echoCenter = Offset(
        center.dx + cos(angle) * orbitRadius,
        center.dy + sin(angle) * orbitRadius,
      );

      // Opacity decreases for older echoes.
      final alpha = (1.0 - i * 0.22).clamp(0.15, 0.8);

      // If resolved as "enter", echoes converge toward center.
      final resolvedOffset = (isResolved && selectedChoice == 0)
          ? Offset.lerp(echoCenter, center, 0.5 * pulseValue)!
          : echoCenter;

      _drawGhostShip(canvas, resolvedOffset, angle + pi * 0.5, alpha);
    }
  }

  void _drawGhostShip(
    Canvas canvas,
    Offset pos,
    double rotation,
    double alpha,
  ) {
    final paint = Paint()
      ..color = _kGhostShip.withValues(alpha: alpha)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.0);

    // Simple triangular ship silhouette.
    const shipSize = 8.0;
    final path = Path();
    path.moveTo(
      pos.dx + cos(rotation) * shipSize,
      pos.dy + sin(rotation) * shipSize,
    );
    path.lineTo(
      pos.dx + cos(rotation + 2.5) * shipSize * 0.7,
      pos.dy + sin(rotation + 2.5) * shipSize * 0.7,
    );
    path.lineTo(
      pos.dx + cos(rotation - 2.5) * shipSize * 0.7,
      pos.dy + sin(rotation - 2.5) * shipSize * 0.7,
    );
    path.close();

    canvas.drawPath(path, paint);

    // Bright core.
    final corePaint = Paint()
      ..color = _kGhostShip.withValues(alpha: alpha * 0.4)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4.0);
    canvas.drawCircle(pos, shipSize * 0.5, corePaint);
  }

  void _drawCentralSingularity(Canvas canvas, Offset center) {
    // Inverse pulse — brightens when pulseValue is low.
    final inversePulse = 1.0 - pulseValue;
    final brightness = 0.5 + inversePulse * 0.5;

    // Outer purple glow.
    final glowPaint = Paint()
      ..color = _kSingularity.withValues(alpha: 0.3 * brightness)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 16.0);
    canvas.drawCircle(center, 18, glowPaint);

    // Mid glow.
    final midPaint = Paint()
      ..color = _kSingularity.withValues(alpha: 0.5 * brightness)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8.0);
    canvas.drawCircle(center, 8, midPaint);

    // Bright point.
    final pointPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.9 * brightness);
    canvas.drawCircle(center, 2.5, pointPaint);
  }

  void _drawClockMarkers(Canvas canvas, Offset center, double maxRadius) {
    const markerCount = 6;
    final markerRadius = maxRadius + 16;

    // Determine which marker is "lit" based on animation value.
    final activeIndex = (animationValue * markerCount).floor() % markerCount;

    for (int i = 0; i < markerCount; i++) {
      final angle = (i / markerCount) * 2 * pi - pi / 2; // Start from top.
      final pos = Offset(
        center.dx + cos(angle) * markerRadius,
        center.dy + sin(angle) * markerRadius,
      );

      final isActive = i == activeIndex;
      final dotAlpha = isActive ? 1.0 : 0.25;
      final dotRadius = isActive ? 4.0 : 2.5;

      final paint = Paint()..color = _kAccent.withValues(alpha: dotAlpha);
      canvas.drawCircle(pos, dotRadius, paint);

      if (isActive) {
        final glowPaint = Paint()
          ..color = _kAccent.withValues(alpha: 0.4)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6.0);
        canvas.drawCircle(pos, dotRadius * 2, glowPaint);
      }
    }
  }

  void _drawChoiceZones(Canvas canvas, Size size) {
    // Enter zone — inside the vortex (center-left).
    final enterCenter = Offset(size.width * 0.25, size.height * 0.50);
    _drawZone(
      canvas,
      enterCenter,
      _enterLabelPainter,
      _kEnterZone,
      showInwardArrow: true,
    );

    // Observe zone — outside the vortex (bottom-right).
    final observeCenter = Offset(size.width * 0.75, size.height * 0.70);
    _drawZone(
      canvas,
      observeCenter,
      _observeLabelPainter,
      _kObserveZone,
      showInwardArrow: false,
    );
  }

  void _drawZone(
    Canvas canvas,
    Offset center,
    TextPainter labelPainter,
    Color color, {
    required bool showInwardArrow,
  }) {
    const radius = 40.0;

    // Pulsing glow circle.
    final glowAlpha = 0.1 + 0.12 * pulseValue;
    final glowPaint = Paint()
      ..color = color.withValues(alpha: glowAlpha)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12.0);
    canvas.drawCircle(center, radius, glowPaint);

    // Border ring.
    final ringPaint = Paint()
      ..color = color.withValues(alpha: 0.5 + 0.3 * pulseValue)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawCircle(center, radius, ringPaint);

    // Label (pre-laid-out at class level).
    labelPainter.paint(
      canvas,
      Offset(
        center.dx - labelPainter.width / 2,
        center.dy - labelPainter.height / 2,
      ),
    );

    // Arrow indicator.
    if (showInwardArrow) {
      // Small inward-pointing arrow below the label.
      final arrowPaint = Paint()
        ..color = color.withValues(alpha: 0.7)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..strokeCap = StrokeCap.round;

      final arrowY = center.dy + 18;
      canvas.drawLine(
        Offset(center.dx - 6, arrowY - 3),
        Offset(center.dx, arrowY + 3),
        arrowPaint,
      );
      canvas.drawLine(
        Offset(center.dx + 6, arrowY - 3),
        Offset(center.dx, arrowY + 3),
        arrowPaint,
      );
    }
  }

  void _drawResolvedState(
    Canvas canvas,
    Offset center,
    double maxRadius,
    Size size,
  ) {
    if (selectedChoice == 0) {
      // "Enter" — vortex intensifies. Draw extra radial energy lines.
      final intensePaint = Paint()
        ..color = _kEnterZone.withValues(alpha: 0.15 + 0.15 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6.0);

      for (int i = 0; i < 12; i++) {
        final angle = (i / 12) * 2 * pi + animationValue * 2 * pi * 0.5;
        final inner = Offset(
          center.dx + cos(angle) * maxRadius * 0.15,
          center.dy + sin(angle) * maxRadius * 0.15,
        );
        final outer = Offset(
          center.dx + cos(angle) * maxRadius * 0.9,
          center.dy + sin(angle) * maxRadius * 0.9,
        );
        intensePaint.strokeWidth = 2.0;
        canvas.drawLine(inner, outer, intensePaint);
      }
    } else if (selectedChoice == 1) {
      // "Observe" — calm observation glow at the edge.
      final observePos = Offset(size.width * 0.75, size.height * 0.70);
      final observeGlow = Paint()
        ..color = _kObserveZone.withValues(alpha: 0.12 + 0.08 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20.0);
      canvas.drawCircle(observePos, 50, observeGlow);

      // Subtle scanning lines emanating from observation point.
      final scanPaint = Paint()
        ..color = _kObserveZone.withValues(alpha: 0.1)
        ..strokeWidth = 0.8;
      for (int i = 0; i < 5; i++) {
        final angle = (animationValue * 2 * pi) + (i / 5) * pi * 0.8 - pi * 0.4;
        final end = Offset(
          observePos.dx + cos(angle) * 80,
          observePos.dy + sin(angle) * 80,
        );
        canvas.drawLine(observePos, end, scanPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _ChronoVortexPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue ||
      oldDelegate.pulseValue != pulseValue ||
      oldDelegate.selectedChoice != selectedChoice ||
      oldDelegate.isResolved != isResolved;
}
