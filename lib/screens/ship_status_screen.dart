import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

/// Displays a top-down colony ship diagram with per-system health bars,
/// damage effects (cracks, scorch marks, critical pulse), shields, scanner
/// pods, engine glow, and nav beam.  Translated from the HTML canvas
/// prototype at `prototype/ship_damage_viz.html`.
class ShipStatusScreen extends ConsumerStatefulWidget {
  const ShipStatusScreen({super.key});

  @override
  ConsumerState<ShipStatusScreen> createState() => _ShipStatusScreenState();
}

class _ShipStatusScreenState extends ConsumerState<ShipStatusScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ship = ref.watch(voyageProvider.select((v) => v.ship));

    return Scaffold(
      backgroundColor: SpaceColors.deepSpace,
      body: Stack(
        children: [
          // Star field background.
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, _) => CustomPaint(
                  painter: StarFieldPainter(
                    animationValue: _controller.value,
                  ),
                  size: Size.infinite,
                ),
              ),
            ),
          ),
          // Ship damage overlay.
          Positioned.fill(
            child: SafeArea(
              child: ResponsiveContent(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, _) => CustomPaint(
                    painter: _ShipDamagePainter(
                      ship: ship,
                      animationValue: _controller.value,
                    ),
                    size: Size.infinite,
                  ),
                ),
              ),
            ),
          ),
          // Back button.
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: SpaceColors.cyan.withValues(alpha: 0.7),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Health color helpers
// ---------------------------------------------------------------------------

List<int> _healthRgb(double v) {
  if (v > 0.7) return [0, 229, 255]; // cyan
  if (v > 0.4) return [255, 152, 0]; // orange
  return [255, 23, 68]; // red
}

Color _healthColor(double v, [double a = 1.0]) {
  final c = _healthRgb(v);
  return Color.fromRGBO(c[0], c[1], c[2], a);
}

// ---------------------------------------------------------------------------
// Spark particle
// ---------------------------------------------------------------------------

class _Spark {
  _Spark(this.x, this.y, Random rng)
      : vx = (rng.nextDouble() - 0.5) * 5,
        vy = (rng.nextDouble() - 0.5) * 5 - 2,
        life = 1.0,
        decay = 0.02 + rng.nextDouble() * 0.04,
        size = 1 + rng.nextDouble() * 2.5;

  double x, y, vx, vy, life, decay, size;

  bool tick() {
    x += vx;
    y += vy;
    vx *= 0.96;
    vy *= 0.96;
    life -= decay;
    return life > 0;
  }
}

// ---------------------------------------------------------------------------
// Scanner pod definition
// ---------------------------------------------------------------------------

class _ScannerPod {
  const _ScannerPod({
    required this.x,
    required this.y,
    required this.angle,
    required this.systemName,
    required this.label,
  });

  final double x, y, angle;
  final String systemName;
  final String label;
  double get barY => y; // will be spaced in painter
}

// ---------------------------------------------------------------------------
// Bar definition
// ---------------------------------------------------------------------------

class _BarDef {
  const _BarDef({
    required this.systemName,
    required this.label,
    required this.side,
    required this.barY,
  });

  final String systemName;
  final String label;
  final String side; // 'left' | 'right'
  final double barY;
}

// ---------------------------------------------------------------------------
// Section bounds
// ---------------------------------------------------------------------------

class _Bounds {
  const _Bounds(this.xMin, this.yMin, this.xMax, this.yMax);
  final double xMin, yMin, xMax, yMax;
}

// ---------------------------------------------------------------------------
// Ship Damage Painter
// ---------------------------------------------------------------------------

class _ShipDamagePainter extends CustomPainter {
  _ShipDamagePainter({
    required this.ship,
    required this.animationValue,
  });

  final ShipSystems ship;
  final double animationValue;

  // Persistent sparks list — re-seeded each frame from animation value.
  static final List<_Spark> _sparks = [];

  // Canvas reference coordinates (matching HTML prototype).
  static const double _refW = 840;
  static const double _refH = 1400;

  // frame counter derived from animation (60s cycle * 60fps ≈ 3600 frames)
  int get _frame => (animationValue * 3600).round();

  /// Visual-fill version: clamped to [0,1] so painters don't draw outside
  /// their bar / arc geometry. Use [_vRaw] for the displayed percentage so
  /// players can see legacy-upgrade headroom (e.g. 110% hull).
  double _v(String name) => ship.getSystem(name).clamp(0.0, 1.0);
  double _vRaw(String name) => ship.getSystem(name);

  // ---------------------------------------------------------------------------
  // Scanner pods (reference coordinates, CX = 420)
  // ---------------------------------------------------------------------------

  static const double _cx = _refW / 2;

  static final List<_ScannerPod> _scannerPods = [
    _ScannerPod(x: _cx - 80, y: 350, angle: -0.3, systemName: 'atmosphericScanner', label: 'ATMOSPHERIC'),
    _ScannerPod(x: _cx + 80, y: 420, angle: 0.3, systemName: 'gravimetricScanner', label: 'GRAVIMETRIC'),
    _ScannerPod(x: _cx - 80, y: 500, angle: -0.2, systemName: 'mineralScanner', label: 'MINERAL'),
    _ScannerPod(x: _cx + 80, y: 570, angle: 0.2, systemName: 'lifeSignsScanner', label: 'LIFE SIGNS'),
    _ScannerPod(x: _cx - 135, y: 990, angle: -0.4, systemName: 'temperatureScanner', label: 'TEMPERATURE'),
    _ScannerPod(x: _cx + 135, y: 1060, angle: 0.4, systemName: 'waterScanner', label: 'WATER'),
  ];

  // ---------------------------------------------------------------------------
  // Left-column bar definitions
  // ---------------------------------------------------------------------------

  static final List<_BarDef> _leftBars = [
    const _BarDef(systemName: 'hull', label: 'HULL', side: 'left', barY: 120),
    const _BarDef(systemName: 'nav', label: 'NAVIGATION', side: 'left', barY: 195),
    const _BarDef(systemName: 'cryopods', label: 'CRYOPODS', side: 'left', barY: 460),
    const _BarDef(systemName: 'culture', label: 'CULTURE', side: 'left', barY: 670),
    const _BarDef(systemName: 'tech', label: 'TECHNOLOGY', side: 'left', barY: 815),
    const _BarDef(systemName: 'constructors', label: 'CONSTRUCTORS', side: 'left', barY: 1005),
    const _BarDef(systemName: 'landingSystem', label: 'LANDING', side: 'left', barY: 1198),
  ];

  // Right-column: shields bar
  static const _BarDef _shieldsBar =
      _BarDef(systemName: 'shields', label: 'SHIELDS', side: 'right', barY: 120);

  // ---------------------------------------------------------------------------
  // Section bounds (reference coordinates)
  // ---------------------------------------------------------------------------

  static final Map<String, _Bounds> _sectionBounds = {
    'nav': _Bounds(_cx - 55, 80, _cx + 55, 310),
    'cryopods': _Bounds(_cx - 75, 310, _cx + 75, 610),
    'culture': _Bounds(_cx - 62, 610, _cx + 62, 730),
    'tech': _Bounds(_cx - 75, 730, _cx + 75, 900),
    'constructors': _Bounds(_cx - 140, 900, _cx + 140, 1110),
    'landingSystem': _Bounds(_cx - 72, 1095, _cx + 72, 1300),
  };

  // ---------------------------------------------------------------------------
  // Section path builders (reference coordinates)
  // ---------------------------------------------------------------------------

  Path _pathNav() {
    return Path()
      ..moveTo(_cx, 80)
      ..cubicTo(_cx + 12, 130, _cx + 40, 200, _cx + 55, 270)
      ..lineTo(_cx + 48, 290)
      ..lineTo(_cx + 35, 310)
      ..lineTo(_cx - 35, 310)
      ..lineTo(_cx - 48, 290)
      ..lineTo(_cx - 55, 270)
      ..cubicTo(_cx - 40, 200, _cx - 12, 130, _cx, 80)
      ..close();
  }

  Path _pathCryopods() {
    return Path()
      ..moveTo(_cx - 35, 310)
      ..lineTo(_cx - 50, 320)
      ..lineTo(_cx - 68, 350)
      ..cubicTo(_cx - 76, 400, _cx - 78, 500, _cx - 72, 580)
      ..lineTo(_cx - 55, 610)
      ..lineTo(_cx + 55, 610)
      ..lineTo(_cx + 72, 580)
      ..cubicTo(_cx + 78, 500, _cx + 76, 400, _cx + 68, 350)
      ..lineTo(_cx + 50, 320)
      ..lineTo(_cx + 35, 310)
      ..close();
  }

  Path _pathCulture() {
    return Path()
      ..moveTo(_cx - 55, 610)
      ..cubicTo(_cx - 62, 635, _cx - 65, 670, _cx - 60, 710)
      ..lineTo(_cx - 50, 730)
      ..lineTo(_cx + 50, 730)
      ..lineTo(_cx + 60, 710)
      ..cubicTo(_cx + 65, 670, _cx + 62, 635, _cx + 55, 610)
      ..close();
  }

  Path _pathTech() {
    return Path()
      ..moveTo(_cx - 50, 730)
      ..lineTo(_cx - 62, 745)
      ..lineTo(_cx - 72, 785)
      ..lineTo(_cx - 78, 850)
      ..lineTo(_cx - 65, 900)
      ..lineTo(_cx + 65, 900)
      ..lineTo(_cx + 78, 850)
      ..lineTo(_cx + 72, 785)
      ..lineTo(_cx + 62, 745)
      ..lineTo(_cx + 50, 730)
      ..close();
  }

  Path _pathConstructors() {
    return Path()
      ..moveTo(_cx - 65, 900)
      ..lineTo(_cx - 82, 915)
      ..lineTo(_cx - 125, 960)
      ..lineTo(_cx - 142, 1020)
      ..lineTo(_cx - 130, 1080)
      ..lineTo(_cx - 100, 1110)
      ..lineTo(_cx - 75, 1110)
      ..lineTo(_cx - 60, 1095)
      ..lineTo(_cx + 60, 1095)
      ..lineTo(_cx + 75, 1110)
      ..lineTo(_cx + 100, 1110)
      ..lineTo(_cx + 130, 1080)
      ..lineTo(_cx + 142, 1020)
      ..lineTo(_cx + 125, 960)
      ..lineTo(_cx + 82, 915)
      ..lineTo(_cx + 65, 900)
      ..close();
  }

  Path _pathLanding() {
    return Path()
      ..moveTo(_cx - 60, 1095)
      ..lineTo(_cx - 72, 1120)
      ..cubicTo(_cx - 78, 1160, _cx - 72, 1210, _cx - 55, 1260)
      ..cubicTo(_cx - 35, 1290, _cx - 12, 1300, _cx, 1305)
      ..cubicTo(_cx + 12, 1300, _cx + 35, 1290, _cx + 55, 1260)
      ..cubicTo(_cx + 72, 1210, _cx + 78, 1160, _cx + 72, 1120)
      ..lineTo(_cx + 60, 1095)
      ..close();
  }

  Path _pathFullShip() {
    return Path()
      ..moveTo(_cx, 80)
      ..cubicTo(_cx + 12, 130, _cx + 40, 200, _cx + 55, 270)
      ..lineTo(_cx + 68, 350)
      ..cubicTo(_cx + 78, 440, _cx + 78, 540, _cx + 72, 580)
      ..lineTo(_cx + 62, 640)
      ..lineTo(_cx + 72, 785)
      ..lineTo(_cx + 78, 850)
      ..lineTo(_cx + 82, 915)
      ..lineTo(_cx + 125, 960)
      ..lineTo(_cx + 142, 1020)
      ..lineTo(_cx + 130, 1080)
      ..lineTo(_cx + 100, 1110)
      ..lineTo(_cx + 78, 1160)
      ..cubicTo(_cx + 72, 1210, _cx + 55, 1260, _cx + 30, 1290)
      ..cubicTo(_cx + 12, 1302, _cx, 1305, _cx, 1305)
      ..cubicTo(_cx, 1305, _cx - 12, 1302, _cx - 30, 1290)
      ..cubicTo(_cx - 55, 1260, _cx - 72, 1210, _cx - 78, 1160)
      ..lineTo(_cx - 100, 1110)
      ..lineTo(_cx - 130, 1080)
      ..lineTo(_cx - 142, 1020)
      ..lineTo(_cx - 125, 960)
      ..lineTo(_cx - 82, 915)
      ..lineTo(_cx - 78, 850)
      ..lineTo(_cx - 72, 785)
      ..lineTo(_cx - 62, 640)
      ..lineTo(_cx - 72, 580)
      ..cubicTo(_cx - 78, 540, _cx - 78, 440, _cx - 68, 350)
      ..lineTo(_cx - 55, 270)
      ..cubicTo(_cx - 40, 200, _cx - 12, 130, _cx, 80)
      ..close();
  }

  // Map system name to path builder and section identifier.
  late final List<(String systemName, Path Function() pathBuilder)> _sectionDefs = [
    ('nav', _pathNav),
    ('cryopods', _pathCryopods),
    ('culture', _pathCulture),
    ('tech', _pathTech),
    ('constructors', _pathConstructors),
    ('landingSystem', _pathLanding),
  ];

  // ---------------------------------------------------------------------------
  // Main paint
  // ---------------------------------------------------------------------------

  @override
  void paint(Canvas canvas, Size size) {
    final sx = size.width / _refW;
    final sy = size.height / _refH;

    canvas.save();
    canvas.scale(sx, sy);

    _drawTitle(canvas);
    _drawNavBeam(canvas);
    _drawShields(canvas);
    _drawShipBase(canvas);
    for (final def in _sectionDefs) {
      _drawSectionFill(canvas, def.$1, def.$2);
    }
    _drawScannerPods(canvas);
    _drawEngines(canvas);
    _drawSparks(canvas);

    // Health bars.
    for (final bar in _leftBars) {
      _drawHealthBar(canvas, bar);
    }
    _drawHealthBar(canvas, _shieldsBar);

    // Scanner bars (right column, spaced).
    final sortedPods = List<_ScannerPod>.from(_scannerPods)
      ..sort((a, b) => a.y.compareTo(b.y));
    double lastY = 120 + 70; // after shields bar
    final spacedBarYs = <String, double>{};
    for (final sp in sortedPods) {
      final idealY = sp.y;
      final barY = max(idealY, lastY);
      spacedBarYs[sp.systemName] = barY;
      lastY = barY + 70;
    }
    for (final sp in _scannerPods) {
      _drawScannerBar(canvas, sp, spacedBarYs[sp.systemName] ?? sp.y);
    }

    canvas.restore();
  }

  // ---------------------------------------------------------------------------
  // Title
  // ---------------------------------------------------------------------------

  void _drawTitle(Canvas canvas) {
    final tp = TextPainter(
      text: TextSpan(
        text: 'SHIP STATUS',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 4,
          color: _healthColor(1.0, 0.6),
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(canvas, Offset(_cx - tp.width / 2, 40));
  }

  // ---------------------------------------------------------------------------
  // Nav beam
  // ---------------------------------------------------------------------------

  void _drawNavBeam(Canvas canvas) {
    final nv = _v('nav');
    if (nv < 0.05) return;
    final pulse = sin(_frame * 0.04) * 0.3 + 0.7;
    final path = Path()
      ..moveTo(_cx - 8, 85)
      ..lineTo(_cx - 22, 10)
      ..lineTo(_cx + 22, 10)
      ..lineTo(_cx + 8, 85)
      ..close();
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(_cx, 85),
        Offset(_cx, 10),
        [_healthColor(nv, nv * pulse * 0.35), const Color(0x00000000)],
      );
    canvas.drawPath(path, paint);
  }

  // ---------------------------------------------------------------------------
  // Shields
  // ---------------------------------------------------------------------------

  void _drawShields(Canvas canvas) {
    final val = _v('shields');
    final c = _healthRgb(val);
    const segs = 16;
    final active = (val * segs).ceil();

    canvas.save();
    for (int i = 0; i < segs; i++) {
      if (i >= active && ((i * 137) % 3 != 0)) continue;
      final angle = (pi * 2 / segs) * i - pi / 2;
      final next = angle + (pi * 2 / segs) * 0.75;
      final shimmer = sin(_frame * 0.04 + i * 0.9) * 0.3 + 0.7;
      final a = (0.04 + val * 0.18) * shimmer;

      final paint = Paint()
        ..color = Color.fromRGBO(c[0], c[1], c[2], a)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, a * 0.4 * 10);

      // Ellipse arc — approximate with path arc.
      final rect = Rect.fromCenter(center: Offset(_cx, 690), width: 330, height: 1260);
      canvas.drawArc(rect, angle, next - angle, false, paint);
    }
    canvas.restore();
  }

  // ---------------------------------------------------------------------------
  // Ship base (hull outline + grid)
  // ---------------------------------------------------------------------------

  void _drawShipBase(Canvas canvas) {
    final path = _pathFullShip();
    final hv = _v('hull');
    final c = _healthRgb(hv);

    // Dark fill.
    canvas.save();
    canvas.drawPath(path, Paint()..color = const Color(0xFF0C1524));

    // Grid lines clipped to hull.
    canvas.clipPath(path);
    final gridPaint = Paint()
      ..color = Color.fromRGBO(c[0], c[1], c[2], 0.035)
      ..strokeWidth = 0.5;
    for (double y = 90; y < 1300; y += 25) {
      canvas.drawLine(Offset(_cx - 150, y), Offset(_cx + 150, y), gridPaint);
    }
    for (double x = _cx - 150; x <= _cx + 150; x += 25) {
      canvas.drawLine(Offset(x, 80), Offset(x, 1300), gridPaint);
    }
    // Center line.
    final centerPaint = Paint()
      ..color = Color.fromRGBO(c[0], c[1], c[2], 0.08)
      ..strokeWidth = 1;
    canvas.drawLine(Offset(_cx, 90), Offset(_cx, 1300), centerPaint);
    canvas.restore();

    // Hull outline.
    final outlinePaint = Paint()
      ..color = _healthColor(hv, 0.5 + sin(_frame * 0.03) * 0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    canvas.drawPath(path, outlinePaint);

    // Glow outline.
    final glowPaint = Paint()
      ..color = _healthColor(hv, 0.12)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawPath(path, glowPaint);
  }

  // ---------------------------------------------------------------------------
  // Section fills with internal details + damage effects
  // ---------------------------------------------------------------------------

  void _drawSectionFill(Canvas canvas, String id, Path Function() pathBuilder) {
    final path = pathBuilder();
    final val = _v(id);
    final c = _healthRgb(val);
    final b = _sectionBounds[id];

    canvas.save();
    canvas.clipPath(path);

    // Fill.
    canvas.drawPath(
      path,
      Paint()..color = Color.fromRGBO(c[0], c[1], c[2], 0.02 + val * 0.06),
    );

    // Internal details.
    _drawInternalDetails(canvas, id, val, c);

    // Cracks (<50%).
    if (val < 0.5 && b != null) {
      _drawCracks(canvas, id, val, c, b);
    }

    // Scorch marks (<30%).
    if (val < 0.3 && b != null) {
      _drawScorch(canvas, id, val, b);
    }

    // Critical pulse (<20%).
    if (val < 0.2) {
      final pulse = sin(_frame * 0.15) * 0.5 + 0.5;
      canvas.drawPath(
        path,
        Paint()..color = Color.fromRGBO(255, 23, 68, pulse * 0.12),
      );
      // Spawn sparks.
      if (b != null && _frame % 4 == 0 && _sparks.length < 50) {
        final rng = Random(_frame + id.hashCode);
        _sparks.add(_Spark(
          b.xMin + rng.nextDouble() * (b.xMax - b.xMin),
          b.yMin + rng.nextDouble() * (b.yMax - b.yMin),
          rng,
        ));
      }
    }

    canvas.restore();

    // Section outline.
    canvas.drawPath(
      path,
      Paint()
        ..color = Color.fromRGBO(c[0], c[1], c[2], 0.12)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5,
    );
  }

  void _drawInternalDetails(Canvas canvas, String id, double val, List<int> c) {
    final detailPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;

    switch (id) {
      case 'cryopods':
        detailPaint.color = Color.fromRGBO(c[0], c[1], c[2], 0.05 + val * 0.1);
        for (int row = 0; row < 6; row++) {
          for (int col = -2; col <= 2; col++) {
            canvas.drawCircle(
              Offset(_cx + col * 26, 350 + row * 42),
              7,
              detailPaint,
            );
          }
        }
      case 'nav':
        detailPaint
          ..color = Color.fromRGBO(c[0], c[1], c[2], 0.15 + val * 0.25)
          ..strokeWidth = 1;
        for (int i = -1; i <= 1; i++) {
          canvas.drawOval(
            Rect.fromCenter(center: Offset(_cx + i * 22, 240), width: 14, height: 24),
            detailPaint,
          );
        }
      case 'culture':
        detailPaint
          ..color = Color.fromRGBO(c[0], c[1], c[2], 0.06 + val * 0.1)
          ..strokeWidth = 0.8;
        for (int i = 0; i < 3; i++) {
          canvas.drawCircle(Offset(_cx, 670), 22 + i * 14, detailPaint);
        }
      case 'tech':
        detailPaint.color = Color.fromRGBO(c[0], c[1], c[2], 0.04 + val * 0.06);
        for (double y = 750; y < 890; y += 18) {
          canvas.drawLine(Offset(_cx - 55, y), Offset(_cx + 55, y), detailPaint);
        }
      case 'constructors':
        detailPaint.color = Color.fromRGBO(c[0], c[1], c[2], 0.04 + val * 0.06);
        for (int i = -2; i <= 2; i++) {
          canvas.drawLine(
            Offset(_cx + i * 18, 920),
            Offset(_cx + i * 35, 1095),
            detailPaint,
          );
        }
    }
  }

  void _drawCracks(Canvas canvas, String id, double val, List<int> c, _Bounds b) {
    final n = ((1 - val) * 6).floor();
    final crackPaint = Paint()
      ..color = Color.fromRGBO(c[0], c[1], c[2], 0.15 + (1 - val) * 0.35)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.6;
    final bw = b.xMax - b.xMin;
    final bh = b.yMax - b.yMin;

    for (int i = 0; i < n; i++) {
      final seed = id.codeUnitAt(0) * 137 + i * 73;
      double x = b.xMin + ((seed * 7919) % bw.toInt());
      double y = b.yMin + ((seed * 104729) % bh.toInt());
      final ang = ((seed * 31) % 628) / 100;
      final seg = 6 + ((seed * 13) % 8);
      final path = Path()..moveTo(x, y);
      for (int j = 0; j < 5; j++) {
        final jit = ((seed * (j + 1) * 47) % 100 - 50) / 100;
        x += cos(ang + jit) * seg;
        y += sin(ang + jit) * seg;
        path.lineTo(x, y);
      }
      canvas.drawPath(path, crackPaint);
    }
  }

  void _drawScorch(Canvas canvas, String id, double val, _Bounds b) {
    final n = ((1 - val) * 5).floor();
    for (int i = 0; i < n; i++) {
      final seed = (id.codeUnits.length > 1 ? id.codeUnitAt(1) : 65) * 97 + i * 53;
      final px = b.xMin + ((seed * 7919) % (b.xMax - b.xMin).toInt());
      final py = b.yMin + ((seed * 31337) % (b.yMax - b.yMin).toInt());
      final pr = 5 + ((seed * 71) % 14).toDouble();
      final rect = Rect.fromCenter(center: Offset(px, py), width: pr * 2, height: pr * 1.2);
      final paint = Paint()
        ..shader = ui.Gradient.radial(
          Offset(px, py),
          pr,
          [
            Color.fromRGBO(0, 0, 0, 0.4 + (1 - val) * 0.3),
            const Color(0x00000000),
          ],
        );
      canvas.drawOval(rect, paint);
    }
  }

  // ---------------------------------------------------------------------------
  // Scanner pods
  // ---------------------------------------------------------------------------

  void _drawScannerPods(Canvas canvas) {
    for (final sp in _scannerPods) {
      final val = _v(sp.systemName);
      final c = _healthRgb(val);

      canvas.save();
      canvas.translate(sp.x, sp.y);
      canvas.rotate(sp.angle);

      // Pod body.
      canvas.drawOval(
        Rect.fromCenter(center: Offset.zero, width: 20, height: 12),
        Paint()..color = Color.fromRGBO(c[0], c[1], c[2], 0.15),
      );

      // Center dot.
      final dotPaint = Paint()..color = Color.fromRGBO(c[0], c[1], c[2], 0.4 + val * 0.6);
      canvas.drawCircle(Offset.zero, 3, dotPaint);
      canvas.drawCircle(
        Offset.zero,
        3,
        Paint()
          ..color = Color.fromRGBO(c[0], c[1], c[2], val * 0.4)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
      );

      // Sweep beam.
      if (val > 0.1) {
        final sa = (_frame * 0.04 + sp.x * 0.01) % (pi * 2);
        final len = 14 + val * 18;
        final endPt = Offset(cos(sa) * len, sin(sa) * len);
        final beamPaint = Paint()
          ..shader = ui.Gradient.linear(
            Offset.zero,
            endPt,
            [
              Color.fromRGBO(c[0], c[1], c[2], val * 0.3),
              Color.fromRGBO(c[0], c[1], c[2], 0),
            ],
          )
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
        canvas.drawLine(Offset.zero, endPt, beamPaint);
      }

      // Critical blink.
      if (val < 0.2 && _frame % 8 < 2) {
        canvas.drawCircle(Offset.zero, 5, Paint()..color = const Color(0xB3FF1744));
      }

      canvas.restore();
    }
  }

  // ---------------------------------------------------------------------------
  // Engines
  // ---------------------------------------------------------------------------

  void _drawEngines(Canvas canvas) {
    final tv = _v('tech');
    final pulse = sin(_frame * 0.06) * 0.3 + 0.7;
    final intensity = tv * pulse;

    for (final ex in [_cx - 30, _cx, _cx + 30]) {
      // Glow.
      canvas.drawOval(
        Rect.fromCenter(center: Offset(ex, 1320), width: 24, height: 70),
        Paint()
          ..shader = ui.Gradient.radial(
            Offset(ex, 1290),
            40,
            [
              Color.fromRGBO(100, 200, 255, intensity * 0.7),
              Color.fromRGBO(0, 229, 255, intensity * 0.4),
              const Color(0x000064C8),
            ],
            [0, 0.3, 1],
          ),
      );
      // Core.
      canvas.drawCircle(
        Offset(ex, 1298),
        4,
        Paint()..color = Color.fromRGBO(220, 240, 255, intensity * 0.8),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // Sparks
  // ---------------------------------------------------------------------------

  void _drawSparks(Canvas canvas) {
    for (int i = _sparks.length - 1; i >= 0; i--) {
      final s = _sparks[i];
      if (!s.tick()) {
        _sparks.removeAt(i);
        continue;
      }
      canvas.drawCircle(
        Offset(s.x, s.y),
        s.size * s.life,
        Paint()..color = Color.fromRGBO(255, 200, 100, s.life),
      );
      canvas.drawCircle(
        Offset(s.x, s.y),
        s.size * s.life * 0.6,
        Paint()
          ..color = Color.fromRGBO(255, 220, 150, s.life * 0.4)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // Health bars
  // ---------------------------------------------------------------------------

  void _drawHealthBar(Canvas canvas, _BarDef def) {
    final val = _v(def.systemName);
    final c = _healthRgb(val);
    final isLeft = def.side == 'left';

    const barW = 210.0;
    const barH = 34.0;
    final shipEdge = isLeft ? (_cx - 155) : (_cx + 155);
    final barX = isLeft ? (shipEdge - 10 - barW) : (shipEdge + 10);
    final barY = def.barY - barH / 2;

    // Leader line (dashed).
    _drawDashedLine(
      canvas,
      Offset(isLeft ? barX + barW + 2 : barX - 2, def.barY),
      Offset(isLeft ? shipEdge + 5 : shipEdge - 5, def.barY),
      Color.fromRGBO(c[0], c[1], c[2], 0.15),
    );

    // Bar background.
    final barRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(barX, barY, barW, barH),
      const Radius.circular(4),
    );
    canvas.drawRRect(barRect, Paint()..color = const Color(0x0AFFFFFF));
    canvas.drawRRect(
      barRect,
      Paint()
        ..color = Color.fromRGBO(c[0], c[1], c[2], 0.1)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5,
    );

    // Bar fill.
    final fillW = barW * val;
    if (fillW > 0) {
      final fillRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(barX, barY, fillW, barH),
        const Radius.circular(4),
      );
      canvas.drawRRect(
        fillRect,
        Paint()
          ..shader = ui.Gradient.linear(
            Offset(barX, barY),
            Offset(barX + fillW, barY),
            [_healthColor(val, 0.75), _healthColor(val, 0.4)],
          ),
      );
      // Glow.
      canvas.drawRRect(
        fillRect,
        Paint()
          ..color = _healthColor(val, 0.2)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
      );
    }

    // Label.
    _drawText(canvas, def.label, Offset(barX, barY - 26), 18,
        Color.fromRGBO(c[0], c[1], c[2], 0.6), TextAlign.left);

    // Percentage (uncapped — show 110%+ for legacy-upgraded systems).
    _drawText(canvas, '${(_vRaw(def.systemName) * 100).round()}%', Offset(barX + barW, barY - 26), 20,
        Color.fromRGBO(c[0], c[1], c[2], 0.9), TextAlign.right);
  }

  // ---------------------------------------------------------------------------
  // Scanner bars
  // ---------------------------------------------------------------------------

  void _drawScannerBar(Canvas canvas, _ScannerPod sp, double spacedBarY) {
    final val = _v(sp.systemName);
    final c = _healthRgb(val);

    const barW = 210.0;
    const barH = 34.0;
    final shipEdge = _cx + 155;
    final barX = shipEdge + 10;
    final barY = spacedBarY - barH / 2;

    // Leader line from bar to scanner pod (bent).
    final midX = shipEdge - 10;
    _drawDashedLine(
      canvas,
      Offset(barX - 2, spacedBarY),
      Offset(midX, spacedBarY),
      Color.fromRGBO(c[0], c[1], c[2], 0.12),
    );
    _drawDashedLine(
      canvas,
      Offset(midX, spacedBarY),
      Offset(sp.x + (sp.x > _cx ? 12 : -12), sp.y),
      Color.fromRGBO(c[0], c[1], c[2], 0.12),
    );

    // Bar background.
    final barRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(barX, barY, barW, barH),
      const Radius.circular(4),
    );
    canvas.drawRRect(barRect, Paint()..color = const Color(0x0AFFFFFF));
    canvas.drawRRect(
      barRect,
      Paint()
        ..color = Color.fromRGBO(c[0], c[1], c[2], 0.1)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5,
    );

    // Bar fill.
    final fillW = barW * val;
    if (fillW > 0) {
      final fillRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(barX, barY, fillW, barH),
        const Radius.circular(4),
      );
      canvas.drawRRect(
        fillRect,
        Paint()
          ..shader = ui.Gradient.linear(
            Offset(barX, barY),
            Offset(barX + fillW, barY),
            [_healthColor(val, 0.75), _healthColor(val, 0.4)],
          ),
      );
      canvas.drawRRect(
        fillRect,
        Paint()
          ..color = _healthColor(val, 0.2)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
      );
    }

    // Label.
    _drawText(canvas, sp.label, Offset(barX, barY - 26), 18,
        Color.fromRGBO(c[0], c[1], c[2], 0.6), TextAlign.left);

    // Percentage (uncapped — show 110%+ for legacy-upgraded scanners).
    _drawText(canvas, '${(_vRaw(sp.systemName) * 100).round()}%', Offset(barX + barW, barY - 26), 20,
        Color.fromRGBO(c[0], c[1], c[2], 0.9), TextAlign.right);
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  void _drawText(
    Canvas canvas,
    String text,
    Offset position,
    double fontSize,
    Color color,
    TextAlign align,
  ) {
    final tp = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final dx = align == TextAlign.right ? position.dx - tp.width : position.dx;
    tp.paint(canvas, Offset(dx, position.dy));
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Color color) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 0.5;
    final dx = end.dx - start.dx;
    final dy = end.dy - start.dy;
    final length = sqrt(dx * dx + dy * dy);
    if (length < 1) return;
    final ux = dx / length;
    final uy = dy / length;
    const dash = 2.0;
    const gap = 4.0;
    double t = 0;
    while (t < length) {
      final segEnd = min(t + dash, length);
      canvas.drawLine(
        Offset(start.dx + ux * t, start.dy + uy * t),
        Offset(start.dx + ux * segEnd, start.dy + uy * segEnd),
        paint,
      );
      t += dash + gap;
    }
  }

  @override
  bool shouldRepaint(covariant _ShipDamagePainter oldDelegate) =>
      oldDelegate.animationValue != animationValue || oldDelegate.ship != ship;
}
