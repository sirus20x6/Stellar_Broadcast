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

  @override
  void paint(Canvas canvas, Size size) {
    _drawLayer(
      canvas,
      size,
      count: farStarCount,
      seedOffset: 0,
      speed: 0.15,
      minRadius: 0.3,
      maxRadius: 0.8,
      opacity: 0.4,
    );
    _drawLayer(
      canvas,
      size,
      count: midStarCount,
      seedOffset: 1000,
      speed: 0.4,
      minRadius: 0.6,
      maxRadius: 1.4,
      opacity: 0.7,
    );
    _drawLayer(
      canvas,
      size,
      count: nearStarCount,
      seedOffset: 2000,
      speed: 0.8,
      minRadius: 1.0,
      maxRadius: 2.2,
      opacity: 1.0,
    );
  }

  void _drawLayer(
    Canvas canvas,
    Size size, {
    required int count,
    required int seedOffset,
    required double speed,
    required double minRadius,
    required double maxRadius,
    required double opacity,
  }) {
    final rng = Random(seed + seedOffset);
    final offset = animationValue * speed * size.height;

    for (int i = 0; i < count; i++) {
      final baseX = rng.nextDouble() * size.width;
      final baseY = rng.nextDouble() * size.height;
      final radius = lerpDouble(minRadius, maxRadius, rng.nextDouble())!;
      final isBlueWhite = rng.nextDouble() > 0.6;

      // Scroll vertically and wrap around.
      final y = (baseY + offset) % size.height;

      // Subtle twinkle via sine wave keyed to star index.
      final twinkle =
          0.7 + 0.3 * sin(animationValue * 2 * pi * 3 + i * 0.7);

      final color = isBlueWhite
          ? Color.fromRGBO(180, 220, 255, opacity * twinkle)
          : Color.fromRGBO(255, 255, 255, opacity * twinkle);

      final paint = Paint()..color = color;

      canvas.drawCircle(Offset(baseX, y), radius, paint);

      // Add a soft glow to the larger near-layer stars.
      if (radius > 1.5) {
        final glowPaint = Paint()
          ..color = color.withValues(alpha: 0.15 * twinkle)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
        canvas.drawCircle(Offset(baseX, y), radius * 2.5, glowPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant StarFieldPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue;
}
