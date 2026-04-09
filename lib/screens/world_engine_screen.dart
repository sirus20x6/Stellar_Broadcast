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
import 'package:stellar_broadcast/widgets/star_field.dart';

// ── Theme constants ────────────────────────────────────────────────────────

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF26A69A);
const _kPlanetCore = Color(0xFF37474F);
const _kPlanetSurface = Color(0xFF546E7A);
const _kAtmosphere = Color(0xFF4FC3F7);
const _kSalvage = Color(0xFFFFB74D);
const _kTerraformer = Color(0xFF66BB6A);

/// Interactive visual event screen for a planet-scale world engine encounter.
///
/// The player discovers an ancient terraforming machine orbiting a planet and
/// selects one of three subsystems to interact with: atmosphere processor,
/// salvage hull plates, or activate the full terraformer.
class WorldEngineScreen extends ConsumerStatefulWidget {
  const WorldEngineScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<WorldEngineScreen> createState() => _WorldEngineScreenState();
}

class _WorldEngineScreenState extends ConsumerState<WorldEngineScreen>
    with TickerProviderStateMixin {
  // ── Animation controllers ──────────────────────────────────────────────

  late final AnimationController _starController;
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _pulseController;
  late final AnimationController _energyController;

  // ── Typewriter state ───────────────────────────────────────────────────

  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // ── Choice state ───────────────────────────────────────────────────────

  int? _selectedSystem;
  bool _isResolved = false;
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
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _energyController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();

    _startTypewriter();

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

  void _onSystemSelected(int index) {
    if (_isResolved) return;
    if (index < 0 || index >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedSystem = index;
      _isResolved = true;
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _showEffectChips = true);
    });

    ref.read(voyageProvider.notifier).handleEvent(widget.event.choices[index]);
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _starController.dispose();
    _titleGlow.dispose();
    _pulseController.dispose();
    _energyController.dispose();
    super.dispose();
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
            child: () {
              final screen = ScreenInfo.of(context);
              final isLandscape = screen.isLandscape && screen.screenClass != ScreenClass.compact;
              return isLandscape ? _buildLandscape(event) : _buildPortrait(event);
            }(),
          ),
        ],
      ),
    );
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() {
    return AnimatedBuilder(
      animation: _titleGlowAnim,
      builder: (_, __) => Text(
        'WORLD ENGINE',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: _kAccent,
          letterSpacing: 3,
          shadows: [
            Shadow(color: _kAccent.withValues(alpha: _titleGlowAnim.value), blurRadius: 20),
            Shadow(color: _kAccent.withValues(alpha: _titleGlowAnim.value * 0.5), blurRadius: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildNarrativeCard(GameEvent event) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _typewriterDone ? null : _skipTypewriter,
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(maxHeight: 140),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _kBgColor.withValues(alpha: 0.85),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _isResolved ? _kAccent.withValues(alpha: 0.8) : _kAccent.withValues(alpha: 0.3),
              width: _isResolved ? 2 : 1,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: Text(
                    _isResolved ? event.choices[_selectedSystem!].outcome : _displayedText,
                    key: ValueKey(_isResolved ? 'outcome' : 'narrative'),
                    style: const TextStyle(color: Colors.white, fontSize: 14, height: 1.5, letterSpacing: 0.3),
                  ),
                ),
                if (_isResolved && _showEffectChips) ...[
                  const SizedBox(height: 10),
                  _buildEffectChips(),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVisualArea() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTapDown: _typewriterDone && !_isResolved
              ? (details) => _handleTap(details, constraints.biggest)
              : null,
          child: AnimatedBuilder(
            animation: Listenable.merge([_pulseController, _energyController]),
            builder: (_, __) => CustomPaint(
              size: constraints.biggest,
              painter: _WorldEnginePainter(
                animationValue: _energyController.value,
                pulseValue: _pulseController.value,
                selectedSystem: _selectedSystem,
                isResolved: _isResolved,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHintOrContinue() {
    if (_isResolved) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
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
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: _kAccent.withValues(alpha: 0.6)),
                color: _kAccent.withValues(alpha: 0.08),
              ),
              child: const Text(
                'CONTINUE',
                textAlign: TextAlign.center,
                style: TextStyle(color: _kAccent, fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 2),
              ),
            ),
          ),
        ),
      );
    }
    if (!_typewriterDone) {
      return Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text('TAP TO SKIP', style: TextStyle(color: _kAccent.withValues(alpha: 0.5), fontSize: 11, letterSpacing: 2)),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildPortrait(GameEvent event) {
    return ResponsiveContent(
      child: Column(
        children: [
          const SizedBox(height: 24),
          _buildTitle(),
          const SizedBox(height: 12),
          _buildNarrativeCard(event),
          if (!_typewriterDone)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text('TAP TO SKIP', style: TextStyle(color: _kAccent.withValues(alpha: 0.5), fontSize: 11, letterSpacing: 2)),
            ),
          const SizedBox(height: 8),
          Expanded(child: _buildVisualArea()),
          const SizedBox(height: 12),
          if (_isResolved) _buildHintOrContinue(),
          const SizedBox(
            height: 58,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: PremiumAdGate(child: AdaptiveBannerAd()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLandscape(GameEvent event) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              // Left: narrative + buttons.
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
                          child: _buildNarrativeCard(event),
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildHintOrContinue(),
                    ],
                  ),
                ),
              ),
              // Right: world engine visualization (full height).
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
        // Ad banner full width at bottom.
        SizedBox(
          height: 58,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: PremiumAdGate(child: AdaptiveBannerAd()),
          ),
        ),
      ],
    );
  }

  /// Calculate subsystem node positions for a given canvas size.
  static List<Offset> _nodePositions(Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final planetR = size.width * 0.15;
    return [
      // 0: Atmosphere — upper-left of planet.
      Offset(cx - planetR * 2.2, cy - planetR * 1.8),
      // 1: Salvage — right of planet.
      Offset(cx + planetR * 2.5, cy),
      // 2: Terraformer — below planet.
      Offset(cx, cy + planetR * 2.4),
    ];
  }

  void _handleTap(TapDownDetails details, Size canvasSize) {
    if (!_typewriterDone) { _skipTypewriter(); return; }
    final nodes = _nodePositions(canvasSize);
    const hitRadius = 50.0;

    for (int i = 0; i < nodes.length; i++) {
      if ((details.localPosition - nodes[i]).distance < hitRadius) {
        _onSystemSelected(i);
        return;
      }
    }
  }

  Widget _buildEffectChips() {
    if (_selectedSystem == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedSystem!];
    final chips = <_EffectChipData>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    for (final entry in choice.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
        color: _kAtmosphere,
      ));
    }

    for (final entry in choice.nextPlanetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChipData(
        label: 'NEXT ${systemLabel(entry.key)}',
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
        color: _kTerraformer,
      ));
    }

    if (chips.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: chips
          .map((d) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: (d.color ?? (d.isPositive ? Colors.green : Colors.red))
                      .withValues(alpha: 0.15),
                  border: Border.all(
                    color:
                        (d.color ?? (d.isPositive ? Colors.green : Colors.red))
                            .withValues(alpha: 0.5),
                  ),
                ),
                child: Text(
                  '${d.label}  ${d.delta}',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: d.color ??
                        (d.isPositive ? Colors.green : Colors.red),
                    letterSpacing: 0.4,
                  ),
                ),
              ))
          .toList(),
    );
  }
}

// ── Effect chip data ──────────────────────────────────────────────────────

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

// ═══════════════════════════════════════════════════════════════════════════
// Custom painter — the world engine
// ═══════════════════════════════════════════════════════════════════════════

class _WorldEnginePainter extends CustomPainter {
  _WorldEnginePainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedSystem,
    required this.isResolved,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedSystem;
  final bool isResolved;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final planetR = size.width * 0.15;

    _drawMachineFramework(canvas, size, cx, cy, planetR);
    _drawPlanet(canvas, size, cx, cy, planetR);
    _drawAtmosphereShell(canvas, cx, cy, planetR);
    _drawConnectingLines(canvas, size, cx, cy, planetR);
    _drawSubsystemNodes(canvas, size, cx, cy, planetR);
    _drawNodeLabels(canvas, size, cx, cy, planetR);
  }

  /// Faint scaffolding arcs suggesting the massive scale of the engine.
  void _drawMachineFramework(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double planetR,
  ) {
    final framePaint = Paint()
      ..color = _kAccent.withValues(alpha: 0.06 + 0.03 * pulseValue)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;

    // Concentric orbital rings.
    for (int i = 1; i <= 4; i++) {
      final r = planetR * (1.3 + i * 0.5);
      canvas.drawArc(
        Rect.fromCircle(center: Offset(cx, cy), radius: r),
        -pi * 0.3 + i * 0.2 + animationValue * pi * 0.1,
        pi * 0.4 + i * 0.15,
        false,
        framePaint,
      );
      canvas.drawArc(
        Rect.fromCircle(center: Offset(cx, cy), radius: r),
        pi * 0.5 + i * 0.15 - animationValue * pi * 0.08,
        pi * 0.35,
        false,
        framePaint,
      );
    }

    // Faint grid lines — radial spokes.
    final spokePaint = Paint()
      ..color = _kAccent.withValues(alpha: 0.04)
      ..strokeWidth = 0.5;
    for (int i = 0; i < 12; i++) {
      final angle = (i / 12) * 2 * pi + animationValue * 0.2;
      final inner = planetR * 1.2;
      final outer = planetR * 3.5;
      canvas.drawLine(
        Offset(cx + cos(angle) * inner, cy + sin(angle) * inner),
        Offset(cx + cos(angle) * outer, cy + sin(angle) * outer),
        spokePaint,
      );
    }
  }

  /// The planet being terraformed — large circle with radial gradient and
  /// continent-like surface features.
  void _drawPlanet(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double planetR,
  ) {
    // Base planet.
    final planetRect = Rect.fromCircle(center: Offset(cx, cy), radius: planetR);

    // If the terraformer was activated, shift the surface color greener.
    final surfaceColor = (isResolved && selectedSystem == 2)
        ? Color.lerp(_kPlanetSurface, _kTerraformer, 0.3)!
        : _kPlanetSurface;

    final planetPaint = Paint()
      ..shader = RadialGradient(
        center: const Alignment(-0.3, -0.3),
        radius: 1.0,
        colors: [_kPlanetCore, surfaceColor],
        stops: const [0.0, 1.0],
      ).createShader(planetRect);

    canvas.drawCircle(Offset(cx, cy), planetR, planetPaint);

    // Continent-like shapes — subtle bezier patches.
    canvas.save();
    canvas.clipPath(
      Path()..addOval(planetRect),
    );

    final continentColor = surfaceColor.withValues(alpha: 0.35);
    final continentPaint = Paint()..color = continentColor;

    // Continent 1 — upper-left landmass.
    final c1 = Path()
      ..moveTo(cx - planetR * 0.6, cy - planetR * 0.3)
      ..cubicTo(
        cx - planetR * 0.4,
        cy - planetR * 0.7,
        cx - planetR * 0.05,
        cy - planetR * 0.55,
        cx + planetR * 0.1,
        cy - planetR * 0.2,
      )
      ..cubicTo(
        cx + planetR * 0.05,
        cy + planetR * 0.05,
        cx - planetR * 0.35,
        cy + planetR * 0.1,
        cx - planetR * 0.6,
        cy - planetR * 0.3,
      );
    canvas.drawPath(c1, continentPaint);

    // Continent 2 — lower-right landmass.
    final c2 = Path()
      ..moveTo(cx + planetR * 0.2, cy + planetR * 0.15)
      ..cubicTo(
        cx + planetR * 0.55,
        cy + planetR * 0.0,
        cx + planetR * 0.7,
        cy + planetR * 0.35,
        cx + planetR * 0.4,
        cy + planetR * 0.6,
      )
      ..cubicTo(
        cx + planetR * 0.15,
        cy + planetR * 0.55,
        cx + planetR * 0.05,
        cy + planetR * 0.35,
        cx + planetR * 0.2,
        cy + planetR * 0.15,
      );
    canvas.drawPath(c2, continentPaint);

    // Continent 3 — small island near bottom-left.
    final c3 = Path()
      ..moveTo(cx - planetR * 0.35, cy + planetR * 0.4)
      ..cubicTo(
        cx - planetR * 0.2,
        cy + planetR * 0.3,
        cx - planetR * 0.05,
        cy + planetR * 0.45,
        cx - planetR * 0.15,
        cy + planetR * 0.6,
      )
      ..cubicTo(
        cx - planetR * 0.3,
        cy + planetR * 0.55,
        cx - planetR * 0.4,
        cy + planetR * 0.5,
        cx - planetR * 0.35,
        cy + planetR * 0.4,
      );
    canvas.drawPath(c3, continentPaint);

    canvas.restore();

    // Atmospheric haze at the planet edge.
    final hazePaint = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.transparent,
          _kAccent.withValues(alpha: 0.05),
          _kAccent.withValues(alpha: 0.12),
          Colors.transparent,
        ],
        stops: const [0.75, 0.88, 0.95, 1.0],
      ).createShader(
        Rect.fromCircle(center: Offset(cx, cy), radius: planetR * 1.15),
      );
    canvas.drawCircle(Offset(cx, cy), planetR * 1.15, hazePaint);
  }

  /// Glowing atmosphere shell around the upper hemisphere.
  void _drawAtmosphereShell(
    Canvas canvas,
    double cx,
    double cy,
    double planetR,
  ) {
    final shellR = planetR * 1.08;
    final shimmer = 0.15 + 0.1 * sin(animationValue * 2 * pi * 3);

    final shellPaint = Paint()
      ..color = _kAtmosphere.withValues(alpha: shimmer)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);

    // Upper arc — from about 200 degrees to 340 degrees.
    canvas.drawArc(
      Rect.fromCircle(center: Offset(cx, cy), radius: shellR),
      -pi * 0.9,
      pi * 0.8,
      false,
      shellPaint,
    );

    // Second thinner shimmer layer.
    final shimmer2Paint = Paint()
      ..color = _kAtmosphere.withValues(
        alpha: 0.08 + 0.06 * cos(animationValue * 2 * pi * 5),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    canvas.drawArc(
      Rect.fromCircle(center: Offset(cx, cy), radius: shellR + 2),
      -pi * 0.7,
      pi * 0.5,
      false,
      shimmer2Paint,
    );
  }

  /// Connecting lines from subsystem nodes to the planet, with animated
  /// energy dots flowing along them.
  void _drawConnectingLines(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double planetR,
  ) {
    final nodes = _WorldEngineScreenState._nodePositions(size);
    final planetCenter = Offset(cx, cy);

    for (int i = 0; i < nodes.length; i++) {
      final nodePos = nodes[i];
      final color = _nodeColor(i);

      // Dim non-selected nodes after resolution.
      final alpha = isResolved
          ? (i == selectedSystem ? 0.6 : 0.1)
          : 0.25 + 0.1 * pulseValue;

      // Line from node to planet surface.
      final direction = (planetCenter - nodePos);
      final dist = direction.distance;
      final unitDir = direction / dist;
      final planetEdge = planetCenter - unitDir * planetR;

      final linePaint = Paint()
        ..color = color.withValues(alpha: alpha)
        ..strokeWidth = 1.5;

      canvas.drawLine(nodePos, planetEdge, linePaint);

      // Animated energy dots flowing along the line.
      if (!isResolved || i == selectedSystem) {
        final dotCount = 3;
        for (int d = 0; d < dotCount; d++) {
          final t = (animationValue + d / dotCount) % 1.0;
          final dotPos = Offset.lerp(nodePos, planetEdge, t)!;
          final dotAlpha = isResolved ? 0.9 : 0.5 + 0.3 * pulseValue;

          final dotPaint = Paint()
            ..color = color.withValues(alpha: dotAlpha);
          canvas.drawCircle(dotPos, 2.5, dotPaint);

          // Glow around the dot.
          final glowPaint = Paint()
            ..color = color.withValues(alpha: dotAlpha * 0.3)
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
          canvas.drawCircle(dotPos, 5, glowPaint);
        }
      }
    }
  }

  /// Draws the three subsystem nodes as distinct geometric shapes.
  void _drawSubsystemNodes(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double planetR,
  ) {
    final nodes = _WorldEngineScreenState._nodePositions(size);
    final nodeSize = planetR * 0.55;

    for (int i = 0; i < 3; i++) {
      final pos = nodes[i];
      final color = _nodeColor(i);

      // Dim non-selected after resolution.
      final brightness = isResolved
          ? (i == selectedSystem ? 1.0 : 0.15)
          : 0.6 + 0.4 * pulseValue;

      // Outer glow.
      final glowPaint = Paint()
        ..color = color.withValues(alpha: 0.15 * brightness)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
      canvas.drawCircle(pos, nodeSize * 1.2, glowPaint);

      switch (i) {
        case 0:
          _drawHexagon(canvas, pos, nodeSize * 0.7, color, brightness);
          break;
        case 1:
          _drawRectMech(canvas, pos, nodeSize * 0.65, color, brightness);
          break;
        case 2:
          _drawCog(canvas, pos, nodeSize * 0.75, color, brightness);
          break;
      }
    }
  }

  /// Hexagonal shape for the atmosphere processor.
  void _drawHexagon(
    Canvas canvas,
    Offset center,
    double radius,
    Color color,
    double brightness,
  ) {
    final path = Path();
    for (int i = 0; i < 6; i++) {
      final angle = (i / 6) * 2 * pi - pi / 2;
      final point = Offset(
        center.dx + cos(angle) * radius,
        center.dy + sin(angle) * radius,
      );
      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }
    path.close();

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.12 * brightness);
    canvas.drawPath(path, fillPaint);

    final strokePaint = Paint()
      ..color = color.withValues(alpha: 0.7 * brightness)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;
    canvas.drawPath(path, strokePaint);

    // Inner bright point.
    final dotPaint = Paint()
      ..color = color.withValues(alpha: 0.9 * brightness);
    canvas.drawCircle(center, 3, dotPaint);
  }

  /// Rectangular mechanical shape for the salvage option.
  void _drawRectMech(
    Canvas canvas,
    Offset center,
    double halfSize,
    Color color,
    double brightness,
  ) {
    final rect = Rect.fromCenter(
      center: center,
      width: halfSize * 2,
      height: halfSize * 1.4,
    );

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.12 * brightness);
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(4)),
      fillPaint,
    );

    final strokePaint = Paint()
      ..color = color.withValues(alpha: 0.7 * brightness)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(4)),
      strokePaint,
    );

    // Inner detail lines suggesting panels.
    final detailPaint = Paint()
      ..color = color.withValues(alpha: 0.3 * brightness)
      ..strokeWidth = 0.8;
    canvas.drawLine(
      Offset(center.dx - halfSize * 0.5, rect.top + 4),
      Offset(center.dx - halfSize * 0.5, rect.bottom - 4),
      detailPaint,
    );
    canvas.drawLine(
      Offset(center.dx + halfSize * 0.5, rect.top + 4),
      Offset(center.dx + halfSize * 0.5, rect.bottom - 4),
      detailPaint,
    );

    // Center dot.
    final dotPaint = Paint()
      ..color = color.withValues(alpha: 0.9 * brightness);
    canvas.drawCircle(center, 3, dotPaint);
  }

  /// Gear/cog shape for the terraformer.
  void _drawCog(
    Canvas canvas,
    Offset center,
    double radius,
    Color color,
    double brightness,
  ) {
    final teethCount = 8;
    final innerR = radius * 0.65;
    final outerR = radius;
    final toothWidth = 0.35; // in radians

    final path = Path();
    var firstPoint = true;
    for (int i = 0; i < teethCount; i++) {
      final baseAngle = (i / teethCount) * 2 * pi - pi / 2 +
          animationValue * 0.5; // slow rotation
      final halfTooth = toothWidth / 2;

      // Inner-left.
      final ilx = center.dx + cos(baseAngle - halfTooth * 1.2) * innerR;
      final ily = center.dy + sin(baseAngle - halfTooth * 1.2) * innerR;
      if (firstPoint) {
        path.moveTo(ilx, ily);
        firstPoint = false;
      } else {
        path.lineTo(ilx, ily);
      }
      // Outer-left.
      path.lineTo(
        center.dx + cos(baseAngle - halfTooth) * outerR,
        center.dy + sin(baseAngle - halfTooth) * outerR,
      );
      // Outer-right.
      path.lineTo(
        center.dx + cos(baseAngle + halfTooth) * outerR,
        center.dy + sin(baseAngle + halfTooth) * outerR,
      );
      // Inner-right.
      path.lineTo(
        center.dx + cos(baseAngle + halfTooth * 1.2) * innerR,
        center.dy + sin(baseAngle + halfTooth * 1.2) * innerR,
      );
    }
    path.close();

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.12 * brightness);
    canvas.drawPath(path, fillPaint);

    final strokePaint = Paint()
      ..color = color.withValues(alpha: 0.7 * brightness)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8;
    canvas.drawPath(path, strokePaint);

    // Center hub.
    canvas.drawCircle(
      center,
      innerR * 0.4,
      Paint()..color = color.withValues(alpha: 0.25 * brightness),
    );
    canvas.drawCircle(
      center,
      innerR * 0.4,
      Paint()
        ..color = color.withValues(alpha: 0.6 * brightness)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2,
    );

    // Activation beam removed — the connecting energy lines already show the link.
  }

  /// Text labels beneath each subsystem node.
  void _drawNodeLabels(
    Canvas canvas,
    Size size,
    double cx,
    double cy,
    double planetR,
  ) {
    final nodes = _WorldEngineScreenState._nodePositions(size);
    final labels = ['ATMOSPHERE\nPROCESSOR', 'SALVAGE\nHULL PLATES', 'ACTIVATE\nTERRAFORMER'];

    for (int i = 0; i < 3; i++) {
      final pos = nodes[i];
      final color = _nodeColor(i);
      final brightness = isResolved
          ? (i == selectedSystem ? 1.0 : 0.15)
          : 0.7 + 0.3 * pulseValue;

      final textPainter = TextPainter(
        text: TextSpan(
          text: labels[i],
          style: TextStyle(
            color: color.withValues(alpha: 0.85 * brightness),
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            height: 1.3,
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(maxWidth: 120);

      final nodeSize = planetR * 0.55;
      textPainter.paint(
        canvas,
        Offset(
          pos.dx - textPainter.width / 2,
          pos.dy + nodeSize + 6,
        ),
      );
    }
  }

  Color _nodeColor(int index) {
    switch (index) {
      case 0:
        return _kAtmosphere;
      case 1:
        return _kSalvage;
      case 2:
        return _kTerraformer;
      default:
        return _kAccent;
    }
  }

  @override
  bool shouldRepaint(covariant _WorldEnginePainter oldDelegate) =>
      oldDelegate.animationValue != animationValue ||
      oldDelegate.pulseValue != pulseValue ||
      oldDelegate.selectedSystem != selectedSystem ||
      oldDelegate.isResolved != isResolved;
}
