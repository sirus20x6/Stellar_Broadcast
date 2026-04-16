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
const _kAccent = Color(0xFF4DD0E1);
const _kCommunicate = Color(0xFF4DD0E1);
const _kRetreat = Color(0xFFCE93D8);

class LivingNebulaScreen extends ConsumerStatefulWidget {
  const LivingNebulaScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<LivingNebulaScreen> createState() => _LivingNebulaScreenState();
}

class _LivingNebulaScreenState extends ConsumerState<LivingNebulaScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<LivingNebulaScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;
  late final AnimationController _nebulaController;

  // Typewriter state.

  // Choice state.
  int? _selectedPath; // 0 = communicate, 1 = retreat
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
      duration: const Duration(milliseconds: 2500),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _nebulaController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();

    GameSfx().playLong(GameSfx.spaceWhales);
  }

  void _onChoiceMade(int path) {
    if (_resolved) return;
    if (path < 0 || path >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedPath = path;
      _resolved = true;
    });

    // Apply effects via provider.
    unawaited(
      ref.read(voyageProvider.notifier).handleEvent(widget.event.choices[path]),
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
    _nebulaController.dispose();
    super.dispose();
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
    text: 'LIVING NEBULA',
    glow: _titleGlowAnim,
    accentColor: _kAccent,
  );

  Widget _buildNarrativeCard() {
    if (!_resolved && widget.event.narrative.isNotEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withValues(alpha: 0.05),
          border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
        ),
        child: Text(
          displayedText,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 15,
            height: 1.5,
          ),
        ),
      );
    }
    if (_resolved && _selectedPath != null) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: (_selectedPath == 0 ? _kCommunicate : _kRetreat).withValues(
            alpha: 0.1,
          ),
          border: Border.all(
            color: (_selectedPath == 0 ? _kCommunicate : _kRetreat).withValues(
              alpha: 0.4,
            ),
          ),
        ),
        child: Text(
          widget.event.choices[_selectedPath!].outcome,
          style: TextStyle(
            color: _selectedPath == 0 ? _kCommunicate : _kRetreat,
            fontSize: 15,
            height: 1.5,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildVisualAreaWidget() {
    return RepaintBoundary(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedBuilder(
            animation: Listenable.merge([_nebulaController, _pulseAnim]),
            builder: (context, _) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapDown: _resolved
                    ? null
                    : (details) => _handleTap(details, constraints),
                child: CustomPaint(
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: _NebulaPainter(
                    animationValue: _nebulaController.value,
                    pulseValue: _pulseAnim.value,
                    selectedPath: _selectedPath,
                    isResolved: _resolved,
                  ),
                ),
              );
            },
          );
        },
      ),
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
                const SizedBox(height: 16),
                _buildNarrativeCard(),
                const SizedBox(height: 12),
                if (typewriterDone) Expanded(child: _buildVisualAreaWidget()),
                if (!typewriterDone) ...[
                  const Spacer(),
                  _buildHintOrContinue(),
                ],
                if (_showEffects) ...[
                  const SizedBox(height: 12),
                  _buildEffectChips(),
                ],
                if (_resolved) ...[
                  const SizedBox(height: 4),
                  _buildHintOrContinue(),
                ],
                const SizedBox(height: 4),
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
                  child: _buildVisualAreaWidget(),
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
    if (widget.event.choices.length < 2) return;

    final tapPos = details.localPosition;
    final w = constraints.maxWidth;
    final h = constraints.maxHeight;

    // Communicate tap zone: bottom-left area near the path label.
    final communicateCenter = Offset(w * 0.2, h * 0.82);
    // Retreat tap zone: bottom-right area near the path label.
    final retreatCenter = Offset(w * 0.8, h * 0.82);

    final distComm = (tapPos - communicateCenter).distance;
    final distRetreat = (tapPos - retreatCenter).distance;

    const tapRadius = 80.0;

    if (distComm < tapRadius) {
      _onChoiceMade(0);
    } else if (distRetreat < tapRadius) {
      _onChoiceMade(1);
    }
  }

  Widget _buildEffectChips() {
    if (_selectedPath == null ||
        _selectedPath! >= widget.event.choices.length) {
      return const SizedBox.shrink();
    }

    final choice = widget.event.choices[_selectedPath!];
    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
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
    if (choice.colonistDelta != 0) {
      final sign = choice.colonistDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Colonists',
          delta: '$sign${choice.colonistDelta}',
          isPositive: choice.colonistDelta > 0,
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

// ---------------------------------------------------------------------------
// Effect chip
// ---------------------------------------------------------------------------

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

// ---------------------------------------------------------------------------
// Nebula CustomPainter
// ---------------------------------------------------------------------------

class _NebulaPainter extends CustomPainter {
  _NebulaPainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedPath,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedPath;
  final bool isResolved;

  // Tendril definitions: angle offset, length multiplier, color index.
  static const _tendrilCount = 6;

  // Tendril base colors.
  static const _tendrilColors = [
    Color(0xFF26C6DA),
    Color(0xFF7E57C2),
    Color(0xFF00BFA5),
    Color(0xFF26C6DA),
    Color(0xFF7E57C2),
    Color(0xFF00BFA5),
  ];

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height * 0.42;
    final coreRadius = size.width * 0.20;

    // 1. Dark background with transparency.
    final bgPaint = Paint()..color = const Color(0x44050A18);
    canvas.drawRect(Offset.zero & size, bgPaint);

    // 2. Tendrils (behind central mass for layering).
    _drawTendrils(canvas, size, cx, cy, coreRadius);

    // 3. Particles drifting along tendrils.
    _drawParticles(canvas, size, cx, cy, coreRadius);

    // 4. Central mass — large radial gradient with pulse.
    _drawCentralMass(canvas, cx, cy, coreRadius);

    // 5. Approach paths (before resolution).
    if (!isResolved) {
      _drawCommunicatePath(canvas, size, cx, cy);
      _drawRetreatPath(canvas, size, cx, cy);
    } else {
      // After resolution: selected path glows, other fades.
      if (selectedPath == 0) {
        _drawCommunicatePath(canvas, size, cx, cy, bright: true);
        _drawRetreatPath(canvas, size, cx, cy, faded: true);
      } else {
        _drawCommunicatePath(canvas, size, cx, cy, faded: true);
        _drawRetreatPath(canvas, size, cx, cy, bright: true);
      }
    }

    // 6. Post-resolution brightness change on central mass.
    if (isResolved) {
      final overlayColor = selectedPath == 0
          ? _kCommunicate.withValues(alpha: 0.08)
          : SpaceColors.deepSpace.withValues(alpha: 0.15);
      final overlayPaint = Paint()
        ..color = overlayColor
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);
      canvas.drawCircle(Offset(cx, cy), coreRadius * 1.3, overlayPaint);
    }
  }

  void _drawCentralMass(Canvas canvas, double cx, double cy, double r) {
    final pulseScale = 0.95 + pulseValue * 0.10;
    final scaledR = r * pulseScale;

    // Outer glow.
    final outerGlow = Paint()
      ..shader =
          RadialGradient(
            colors: [
              const Color(0xFF7B1FA2).withValues(alpha: 0.15),
              const Color(0xFF7B1FA2).withValues(alpha: 0.0),
            ],
          ).createShader(
            Rect.fromCircle(center: Offset(cx, cy), radius: scaledR * 2.0),
          )
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);
    canvas.drawCircle(Offset(cx, cy), scaledR * 2.0, outerGlow);

    // Mid glow.
    final midGlow = Paint()
      ..shader =
          RadialGradient(
            colors: [
              const Color(0xFF00897B).withValues(alpha: 0.4),
              const Color(0xFF7B1FA2).withValues(alpha: 0.15),
              const Color(0xFF7B1FA2).withValues(alpha: 0.0),
            ],
            stops: const [0.0, 0.6, 1.0],
          ).createShader(
            Rect.fromCircle(center: Offset(cx, cy), radius: scaledR * 1.5),
          )
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawCircle(Offset(cx, cy), scaledR * 1.5, midGlow);

    // Core gradient.
    final corePaint = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0xFF00897B).withValues(alpha: 0.9),
          const Color(0xFF00897B).withValues(alpha: 0.6),
          const Color(0xFF7B1FA2).withValues(alpha: 0.4),
          const Color(0xFF7B1FA2).withValues(alpha: 0.0),
        ],
        stops: const [0.0, 0.35, 0.7, 1.0],
      ).createShader(Rect.fromCircle(center: Offset(cx, cy), radius: scaledR))
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
    canvas.drawCircle(Offset(cx, cy), scaledR, corePaint);

    // Bright inner spot.
    final innerPaint = Paint()
      ..color = const Color(
        0xFF4DD0E1,
      ).withValues(alpha: 0.25 + pulseValue * 0.15)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
    canvas.drawCircle(Offset(cx, cy), scaledR * 0.35, innerPaint);
  }

  void _drawTendrils(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double coreRadius,
  ) {
    for (var i = 0; i < _tendrilCount; i++) {
      final baseAngle = (i / _tendrilCount) * 2 * pi;
      final swayOffset = sin(animationValue * 2 * pi + i * 1.1) * 0.3;
      final angle = baseAngle + swayOffset;
      final length = coreRadius * (2.2 + 0.4 * sin(i * 2.7));

      final endX = cx + cos(angle) * length;
      final endY = cy + sin(angle) * length;

      // Control point offset perpendicular to tendril direction for curvature.
      final perpAngle = angle + pi / 2;
      final ctrlOffset =
          sin(animationValue * 2 * pi + i * 1.7) * coreRadius * 0.6;
      final ctrlX =
          cx + cos(angle) * length * 0.5 + cos(perpAngle) * ctrlOffset;
      final ctrlY =
          cy + sin(angle) * length * 0.5 + sin(perpAngle) * ctrlOffset;

      final color = _tendrilColors[i];

      // Outer glow layer.
      final outerPaint = Paint()
        ..color = color.withValues(alpha: 0.12)
        ..strokeWidth = 14
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
      final outerPath = Path()
        ..moveTo(cx, cy)
        ..quadraticBezierTo(ctrlX, ctrlY, endX, endY);
      canvas.drawPath(outerPath, outerPaint);

      // Inner tendril.
      final innerPaint = Paint()
        ..color = color.withValues(alpha: 0.35 + pulseValue * 0.15)
        ..strokeWidth = 8 + i % 3 * 2.0
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      canvas.drawPath(outerPath, innerPaint);

      // Bright core line.
      final corePaint = Paint()
        ..color = color.withValues(alpha: 0.5 + pulseValue * 0.2)
        ..strokeWidth = 2.5
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);
      canvas.drawPath(outerPath, corePaint);
    }
  }

  void _drawParticles(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double coreRadius,
  ) {
    final rng = Random(
      42,
    ); // Deterministic seed for consistent particle layout.

    for (var i = 0; i < 20; i++) {
      // Each particle rides a tendril.
      final tendrilIdx = i % _tendrilCount;
      final baseAngle = (tendrilIdx / _tendrilCount) * 2 * pi;
      final swayOffset = sin(animationValue * 2 * pi + tendrilIdx * 1.1) * 0.3;
      final angle = baseAngle + swayOffset;
      final length = coreRadius * (2.2 + 0.4 * sin(tendrilIdx * 2.7));

      final endX = cx + cos(angle) * length;
      final endY = cy + sin(angle) * length;

      final perpAngle = angle + pi / 2;
      final ctrlOffset =
          sin(animationValue * 2 * pi + tendrilIdx * 1.7) * coreRadius * 0.6;
      final ctrlX =
          cx + cos(angle) * length * 0.5 + cos(perpAngle) * ctrlOffset;
      final ctrlY =
          cy + sin(angle) * length * 0.5 + sin(perpAngle) * ctrlOffset;

      // Particle travels along the bezier at varying speeds.
      final speed = 0.3 + rng.nextDouble() * 0.7;
      final phaseOffset = rng.nextDouble();
      final t = (animationValue * speed + phaseOffset) % 1.0;

      // Quadratic bezier: B(t) = (1-t)^2 * P0 + 2(1-t)t * C + t^2 * P1
      final mt = 1.0 - t;
      final px = mt * mt * cx + 2 * mt * t * ctrlX + t * t * endX;
      final py = mt * mt * cy + 2 * mt * t * ctrlY + t * t * endY;

      final radius = 1.5 + rng.nextDouble() * 1.5;
      final color = _tendrilColors[tendrilIdx];

      // Tiny glow.
      final glowPaint = Paint()
        ..color = color.withValues(alpha: 0.25)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      canvas.drawCircle(Offset(px, py), radius * 2.5, glowPaint);

      // Particle core.
      final particlePaint = Paint()
        ..color = color.withValues(alpha: 0.7 + pulseValue * 0.2);
      canvas.drawCircle(Offset(px, py), radius, particlePaint);
    }
  }

  void _drawCommunicatePath(
    Canvas canvas,
    Size size,
    double cx,
    double cy, {
    bool bright = false,
    bool faded = false,
  }) {
    final startX = size.width * 0.15;
    final startY = size.height * 0.88;
    final ctrlX = size.width * 0.15;
    final ctrlY = size.height * 0.55;

    double alpha;
    if (faded) {
      alpha = 0.1;
    } else if (bright) {
      alpha = 0.8 + pulseValue * 0.2;
    } else {
      alpha = 0.4 + pulseValue * 0.25;
    }

    final path = Path()
      ..moveTo(startX, startY)
      ..quadraticBezierTo(ctrlX, ctrlY, cx, cy);

    // Dashed path approximation.
    _drawDashedBezier(
      canvas,
      startX,
      startY,
      ctrlX,
      ctrlY,
      cx,
      cy,
      _kCommunicate.withValues(alpha: alpha),
      3.0,
      bright ? 8.0 : 4.0,
    );

    // Glow.
    final glowPaint = Paint()
      ..color = _kCommunicate.withValues(alpha: alpha * 0.3)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawPath(path, glowPaint);

    // Label.
    if (!faded) {
      _drawLabel(
        canvas,
        'COMMUNICATE',
        Offset(startX, startY + 4),
        _kCommunicate.withValues(alpha: alpha),
      );
    }
  }

  void _drawRetreatPath(
    Canvas canvas,
    Size size,
    double cx,
    double cy, {
    bool bright = false,
    bool faded = false,
  }) {
    final startX = size.width * 0.85;
    final startY = size.height * 0.88;
    final ctrlX = size.width * 0.85;
    final ctrlY = size.height * 0.55;
    final endX = size.width * 0.92;
    final endY = size.height * 0.08;

    double alpha;
    if (faded) {
      alpha = 0.1;
    } else if (bright) {
      alpha = 0.8 + pulseValue * 0.2;
    } else {
      alpha = 0.4 + pulseValue * 0.25;
    }

    final path = Path()
      ..moveTo(startX, startY)
      ..quadraticBezierTo(ctrlX, ctrlY, endX, endY);

    // Dashed path.
    _drawDashedBezier(
      canvas,
      startX,
      startY,
      ctrlX,
      ctrlY,
      endX,
      endY,
      _kRetreat.withValues(alpha: alpha),
      3.0,
      bright ? 8.0 : 4.0,
    );

    // Glow.
    final glowPaint = Paint()
      ..color = _kRetreat.withValues(alpha: alpha * 0.3)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawPath(path, glowPaint);

    // Label.
    if (!faded) {
      _drawLabel(
        canvas,
        'RETREAT',
        Offset(startX - 40, startY + 4),
        _kRetreat.withValues(alpha: alpha),
      );
    }
  }

  void _drawDashedBezier(
    Canvas canvas,
    double x0,
    double y0,
    double cx,
    double cy,
    double x1,
    double y1,
    Color color,
    double strokeWidth,
    double blurRadius,
  ) {
    const segments = 30;
    const dashLength = 2;
    const gapLength = 2;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurRadius);

    var drawing = true;
    var segCount = 0;

    for (var i = 0; i < segments; i++) {
      final t0 = i / segments;
      final t1 = (i + 1) / segments;

      if (drawing) {
        final mt0 = 1.0 - t0;
        final mt1 = 1.0 - t1;
        final px0 = mt0 * mt0 * x0 + 2 * mt0 * t0 * cx + t0 * t0 * x1;
        final py0 = mt0 * mt0 * y0 + 2 * mt0 * t0 * cy + t0 * t0 * y1;
        final px1 = mt1 * mt1 * x0 + 2 * mt1 * t1 * cx + t1 * t1 * x1;
        final py1 = mt1 * mt1 * y0 + 2 * mt1 * t1 * cy + t1 * t1 * y1;
        canvas.drawLine(Offset(px0, py0), Offset(px1, py1), paint);
      }

      segCount++;
      if (drawing && segCount >= dashLength) {
        drawing = false;
        segCount = 0;
      } else if (!drawing && segCount >= gapLength) {
        drawing = true;
        segCount = 0;
      }
    }
  }

  void _drawLabel(Canvas canvas, String text, Offset position, Color color) {
    final tp = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(canvas, Offset(position.dx - tp.width / 2, position.dy));
  }

  @override
  bool shouldRepaint(covariant _NebulaPainter old) =>
      animationValue != old.animationValue ||
      pulseValue != old.pulseValue ||
      selectedPath != old.selectedPath ||
      isResolved != old.isResolved;
}
