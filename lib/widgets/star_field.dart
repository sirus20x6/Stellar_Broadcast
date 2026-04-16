import 'dart:collection';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

/// A deterministic, multi-layer parallax star field rendered via [CustomPainter].
///
/// Three depth layers (far, mid, near) scroll at different speeds driven by
/// [animationValue] (expected to cycle 0.0 → 1.0 continuously).
class StarFieldPainter extends CustomPainter {
  StarFieldPainter({
    required this.animationValue,
    this.seed = 42,
    this.farStarCount = 120,
    this.midStarCount = 60,
    this.nearStarCount = 25,
  });

  final double animationValue;
  final int seed;
  final int farStarCount;
  final int midStarCount;
  final int nearStarCount;

  // ---------------------------------------------------------------------------
  // Reusable Paint instances — mutated in place each frame to avoid per-draw
  // allocations. Never used concurrently because CustomPainter.paint() is
  // called on a single thread.
  // ---------------------------------------------------------------------------

  /// Used for each star's base fill in [_drawLayer].
  final _starPaint = Paint();

  /// Used for the soft glow bloom on larger near-layer stars.
  final _glowPaint = Paint()
    ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);

  /// Used for the cross-hair lens sparkle on the brightest near stars.
  final _sparklePaint = Paint()..strokeWidth = 0.8;

  /// Used for each nebula atmosphere cloud in [_drawAtmosphere].
  final _atmospherePaint = Paint()..blendMode = BlendMode.plus;

  /// Used for the dust-lane path in [_drawDust].
  final _dustPaint = Paint();

  /// Used for each motion-streak line in [_drawStreaks].
  final _streakPaint = Paint()
    ..strokeWidth = 0.9
    ..strokeCap = StrokeCap.round;

  // ---------------------------------------------------------------------------
  // Pre-computed star data — positions, radii, and color flags are deterministic
  // from the seed, so we compute them once and cache.
  // ---------------------------------------------------------------------------

  /// Key used to detect when star data needs recomputation.
  int _cachedSeed = -1;
  int _cachedFar = -1;
  int _cachedMid = -1;
  int _cachedNear = -1;

  late List<_StarData> _farStars;
  late List<_StarData> _midStars;
  late List<_StarData> _nearStars;

  /// Pre-computed atmosphere cloud data (centres, radii, color sets).
  late List<_AtmosphereData> _atmosphereClouds;

  /// Pre-computed streak base data.
  late List<_StreakData> _streakStars;

  void _ensureStarData() {
    if (_cachedSeed == seed &&
        _cachedFar == farStarCount &&
        _cachedMid == midStarCount &&
        _cachedNear == nearStarCount) {
      return;
    }
    _cachedSeed = seed;
    _cachedFar = farStarCount;
    _cachedMid = midStarCount;
    _cachedNear = nearStarCount;

    _farStars = _precomputeLayer(farStarCount, 0, 0.3, 0.8);
    _midStars = _precomputeLayer(midStarCount, 1000, 0.6, 1.4);
    _nearStars = _precomputeLayer(nearStarCount, 2000, 1.0, 2.2);
    _precomputeAtmosphere();
    _precomputeStreaks();
  }

  List<_StarData> _precomputeLayer(
    int count,
    int seedOffset,
    double minR,
    double maxR,
  ) {
    final rng = Random(seed + seedOffset);
    final result = <_StarData>[];
    for (int i = 0; i < count; i++) {
      result.add(
        _StarData(
          baseX: rng.nextDouble(),
          baseY: rng.nextDouble(),
          radius: lerpDouble(minR, maxR, rng.nextDouble())!,
          isBlueWhite: rng.nextDouble() > 0.6,
        ),
      );
    }
    return result;
  }

  void _precomputeAtmosphere() {
    final rng = Random(seed + 5000);
    _atmosphereClouds = [];
    for (int i = 0; i < 3; i++) {
      final cx = 0.15 + rng.nextDouble() * 0.7;
      final cy = 0.12 + rng.nextDouble() * 0.55;
      final rf = 0.28 + rng.nextDouble() * 0.24;
      final colors = switch (i) {
        0 => [
          const Color(0x2200E5FF),
          const Color(0x1100B8D4),
          Colors.transparent,
        ],
        1 => [
          const Color(0x18A5D6FF),
          const Color(0x101B6B9B),
          Colors.transparent,
        ],
        _ => [
          const Color(0x14FFF3C4),
          const Color(0x0D7FDBFF),
          Colors.transparent,
        ],
      };
      _atmosphereClouds.add(_AtmosphereData(cx, cy, rf, colors, i));
    }
  }

  void _precomputeStreaks() {
    final rng = Random(seed + 9000);
    final count = max(1, nearStarCount ~/ 10);
    _streakStars = [];
    for (int i = 0; i < count; i++) {
      _streakStars.add(
        _StreakData(
          baseX: rng.nextDouble(),
          baseY: rng.nextDouble(),
          length: 10 + rng.nextDouble() * 22,
          angle: 0.35 + rng.nextDouble() * 0.35,
        ),
      );
    }
  }

  // ---------------------------------------------------------------------------
  // Static shader cache — survives across painter rebuilds (AnimatedBuilder
  // instantiates a fresh StarFieldPainter each frame, so instance caches were
  // dead weight). Keyed by (purpose, roundedWidth, roundedHeight). Size is
  // rounded to the nearest 4px to dodge sub-pixel layout wobble while still
  // catching real size changes (rotation, orientation, window resize).
  //
  // Bounded by LRU eviction: at ~16 entries we cover all 5 shader purposes
  // (3 atmosphere indices + dust + streak + vignette) across a couple of
  // canvas sizes (phone portrait/landscape, tablet, etc.) with headroom.
  // ---------------------------------------------------------------------------
  static const int _shaderCacheCap = 24;
  static final LinkedHashMap<_ShaderKey, Shader> _shaderCache =
      LinkedHashMap<_ShaderKey, Shader>();

  /// Returns a cached shader for [key], creating it via [build] on miss.
  /// On access, the entry is promoted to the MRU end. On overflow, the LRU
  /// entry is evicted (and its GPU resource disposed).
  static Shader _cachedShader(_ShaderKey key, Shader Function() build) {
    final existing = _shaderCache.remove(key);
    if (existing != null) {
      _shaderCache[key] = existing; // re-insert at MRU end
      return existing;
    }
    final shader = build();
    _shaderCache[key] = shader;
    if (_shaderCache.length > _shaderCacheCap) {
      final evictKey = _shaderCache.keys.first;
      final evicted = _shaderCache.remove(evictKey);
      evicted?.dispose();
    }
    return shader;
  }

  static int _roundSize(double v) => (v / 4).round() * 4;

  final List<RadialGradient> _atmosphereGradients = [
    const RadialGradient(
      colors: [Color(0x2200E5FF), Color(0x1100B8D4), Colors.transparent],
      stops: [0.0, 0.45, 1.0],
    ),
    const RadialGradient(
      colors: [Color(0x18A5D6FF), Color(0x101B6B9B), Colors.transparent],
      stops: [0.0, 0.45, 1.0],
    ),
    const RadialGradient(
      colors: [Color(0x14FFF3C4), Color(0x0D7FDBFF), Colors.transparent],
      stops: [0.0, 0.45, 1.0],
    ),
  ];

  static const _dustGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0x0008141F), Color(0x1108141F), Color(0x33040A14)],
    stops: [0.0, 0.45, 1.0],
  );

  static const _vignetteGradient = RadialGradient(
    center: Alignment(0, -0.1),
    radius: 1.1,
    colors: [Colors.transparent, Color(0x14000000), Color(0x3A000000)],
    stops: [0.55, 0.82, 1.0],
  );

  @override
  void paint(Canvas canvas, Size size) {
    _ensureStarData();
    _drawAtmosphere(canvas, size);
    _drawLayerCached(canvas, size, _farStars, 0.15, 0.4);
    _drawLayerCached(canvas, size, _midStars, 0.4, 0.7);
    _drawLayerCached(canvas, size, _nearStars, 0.8, 1.0);
    _drawDust(canvas, size);
    _drawStreaks(canvas, size);
    _drawVignette(canvas, size);
  }

  void _drawAtmosphere(Canvas canvas, Size size) {
    for (final cloud in _atmosphereClouds) {
      final center = Offset(size.width * cloud.cx, size.height * cloud.cy);
      final radius = size.shortestSide * cloud.radiusFactor;
      final driftX = sin(animationValue * 2 * pi + cloud.index) * 18;
      final driftY = cos(animationValue * 2 * pi * 0.7 + cloud.index) * 12;
      final drifted = center.translate(driftX, driftY);

      // Cache one shader per cloud-index, built at the origin with the
      // stable rect size. canvas.translate shifts it into place each frame
      // so the per-frame drift costs zero shader allocations.
      final diameter = radius * 2;
      final key = _ShaderKey(
        id: 0x100 | cloud.index,
        w: _roundSize(diameter),
        h: _roundSize(diameter),
      );
      final originRect = Rect.fromLTWH(0, 0, diameter, diameter);
      final shader = _cachedShader(
        key,
        () => _atmosphereGradients[cloud.index].createShader(originRect),
      );

      _atmospherePaint.shader = shader;
      canvas.save();
      canvas.translate(drifted.dx - radius, drifted.dy - radius);
      canvas.drawCircle(Offset(radius, radius), radius, _atmospherePaint);
      canvas.restore();
    }
  }

  void _drawLayerCached(
    Canvas canvas,
    Size size,
    List<_StarData> stars,
    double speed,
    double opacity,
  ) {
    final offset = animationValue * speed * size.height;

    for (int i = 0; i < stars.length; i++) {
      final star = stars[i];
      final baseX = star.baseX * size.width;
      final baseY = star.baseY * size.height;
      final radius = star.radius;

      // Scroll vertically and wrap around.
      final y = (baseY + offset) % size.height;
      final xDrift =
          sin((animationValue * 2 * pi * speed) + i * 0.31) * radius * 1.8;
      final x = (baseX + xDrift) % size.width;

      // Subtle twinkle via sine wave keyed to star index.
      final twinkle = 0.7 + 0.3 * sin(animationValue * 2 * pi * 3 + i * 0.7);

      final color = star.isBlueWhite
          ? Color.fromRGBO(180, 220, 255, opacity * twinkle)
          : Color.fromRGBO(255, 255, 255, opacity * twinkle);

      _starPaint.color = color;
      canvas.drawCircle(Offset(x, y), radius, _starPaint);

      // Add a soft glow to the larger near-layer stars.
      if (radius > 1.5) {
        _glowPaint.color = color.withValues(alpha: 0.15 * twinkle);
        canvas.drawCircle(Offset(x, y), radius * 2.5, _glowPaint);
      }

      // Give the brightest near stars a tiny lens sparkle so the field feels
      // less like uniformly plotted dots.
      if (radius > 1.7 && opacity > 0.9 && i % 3 == 0) {
        _sparklePaint.color = color.withValues(alpha: 0.18 * twinkle);
        canvas.drawLine(
          Offset(x - radius * 2.8, y),
          Offset(x + radius * 2.8, y),
          _sparklePaint,
        );
        canvas.drawLine(
          Offset(x, y - radius * 2.8),
          Offset(x, y + radius * 2.8),
          _sparklePaint,
        );
      }
    }
  }

  void _drawDust(Canvas canvas, Size size) {
    final dustPath = Path();
    final baseY = size.height * 0.72;
    dustPath.moveTo(0, size.height);
    dustPath.lineTo(0, baseY + sin(animationValue * 2 * pi * 0.3) * 12);

    for (double x = 0; x <= size.width; x += size.width / 6) {
      final wave =
          sin((x / size.width) * pi * 1.8 + animationValue * 2 * pi) * 16;
      final sag = cos((x / size.width) * pi * 3.2) * 10;
      dustPath.lineTo(x, baseY + wave + sag);
    }

    dustPath.lineTo(size.width, size.height);
    dustPath.close();

    final dustKey = _ShaderKey(
      id: 0x200,
      w: _roundSize(size.width),
      h: _roundSize(size.height),
    );
    _dustPaint.shader = _cachedShader(
      dustKey,
      () => _dustGradient.createShader(Offset.zero & size),
    );

    canvas.drawPath(dustPath, _dustPaint);
  }

  static const _streakGradient = LinearGradient(
    colors: [Colors.transparent, Color(0x66D7F5FF), Colors.transparent],
  );

  void _drawStreaks(Canvas canvas, Size size) {
    for (int i = 0; i < _streakStars.length; i++) {
      final streak = _streakStars[i];
      final progress = (animationValue + i * 0.23) % 1.0;
      final startX = streak.baseX * size.width;
      final startY =
          ((streak.baseY * size.height) + progress * size.height) % size.height;
      final dx = -cos(streak.angle) * streak.length;
      final dy = -sin(streak.angle) * streak.length;
      final end = Offset(startX + dx, startY + dy);

      // The streak's bounding rect size is constant per-streak (length and
      // angle are precomputed). Build the shader once at the origin and
      // translate the canvas so the cached shader lines up with the moving
      // segment each frame.
      final rectW = dx.abs();
      final rectH = dy.abs();
      final key = _ShaderKey(
        id: 0x300 | i,
        w: _roundSize(rectW),
        h: _roundSize(rectH),
      );
      final originRect = Rect.fromLTWH(0, 0, rectW, rectH);
      _streakPaint.shader = _cachedShader(
        key,
        () => _streakGradient.createShader(originRect),
      );

      // Canvas translate aligns the cached origin-anchored shader with the
      // current segment's bounding rect origin (min of start/end).
      final originX = dx < 0 ? end.dx : startX;
      final originY = dy < 0 ? end.dy : startY;
      canvas.save();
      canvas.translate(originX, originY);
      canvas.drawLine(
        Offset(startX - originX, startY - originY),
        Offset(end.dx - originX, end.dy - originY),
        _streakPaint,
      );
      canvas.restore();
    }
  }

  final _vignettePaint = Paint();

  void _drawVignette(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final key = _ShaderKey(
      id: 0x400,
      w: _roundSize(size.width),
      h: _roundSize(size.height),
    );
    _vignettePaint.shader = _cachedShader(
      key,
      () => _vignetteGradient.createShader(rect),
    );
    canvas.drawRect(rect, _vignettePaint);
  }

  @override
  bool shouldRepaint(covariant StarFieldPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue ||
      oldDelegate.seed != seed ||
      oldDelegate.farStarCount != farStarCount ||
      oldDelegate.midStarCount != midStarCount ||
      oldDelegate.nearStarCount != nearStarCount;
}

/// Pre-computed per-star data (normalized 0..1 positions).
class _StarData {
  const _StarData({
    required this.baseX,
    required this.baseY,
    required this.radius,
    required this.isBlueWhite,
  });
  final double baseX;
  final double baseY;
  final double radius;
  final bool isBlueWhite;
}

/// Pre-computed atmosphere cloud data.
class _AtmosphereData {
  const _AtmosphereData(
    this.cx,
    this.cy,
    this.radiusFactor,
    this.colors,
    this.index,
  );
  final double cx;
  final double cy;
  final double radiusFactor;
  final List<Color> colors;
  final int index;
}

/// Composite cache key for [StarFieldPainter]'s static shader cache.
///
/// [id] encodes the draw purpose plus any per-instance index (e.g. cloud
/// index for atmosphere, streak index for streaks). [w]/[h] are the rounded
/// rect dimensions used when the shader was built.
class _ShaderKey {
  const _ShaderKey({required this.id, required this.w, required this.h});
  final int id;
  final int w;
  final int h;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _ShaderKey && other.id == id && other.w == w && other.h == h);

  @override
  int get hashCode => Object.hash(id, w, h);
}

/// Pre-computed streak data (normalized positions).
class _StreakData {
  const _StreakData({
    required this.baseX,
    required this.baseY,
    required this.length,
    required this.angle,
  });
  final double baseX;
  final double baseY;
  final double length;
  final double angle;
}
