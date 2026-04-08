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
    _drawAtmosphere(canvas, size);
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
    _drawDust(canvas, size);
    _drawStreaks(canvas, size);
    _drawVignette(canvas, size);
  }

  void _drawAtmosphere(Canvas canvas, Size size) {
    final rng = Random(seed + 5000);

    for (int i = 0; i < 3; i++) {
      final center = Offset(
        size.width * (0.15 + rng.nextDouble() * 0.7),
        size.height * (0.12 + rng.nextDouble() * 0.55),
      );
      final radius = size.shortestSide * (0.28 + rng.nextDouble() * 0.24);
      final driftX = sin(animationValue * 2 * pi + i) * 18;
      final driftY = cos(animationValue * 2 * pi * 0.7 + i) * 12;
      final rect = Rect.fromCircle(
        center: center.translate(driftX, driftY),
        radius: radius,
      );

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

      final paint = Paint()
        ..shader = RadialGradient(
          colors: colors,
          stops: const [0.0, 0.45, 1.0],
        ).createShader(rect)
        ..blendMode = BlendMode.plus;

      canvas.drawCircle(rect.center, radius, paint);
    }
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
      final xDrift =
          sin((animationValue * 2 * pi * speed) + i * 0.31) * radius * 1.8;
      final x = (baseX + xDrift) % size.width;

      // Subtle twinkle via sine wave keyed to star index.
      final twinkle = 0.7 + 0.3 * sin(animationValue * 2 * pi * 3 + i * 0.7);

      final color = isBlueWhite
          ? Color.fromRGBO(180, 220, 255, opacity * twinkle)
          : Color.fromRGBO(255, 255, 255, opacity * twinkle);

      final paint = Paint()..color = color;

      canvas.drawCircle(Offset(x, y), radius, paint);

      // Add a soft glow to the larger near-layer stars.
      if (radius > 1.5) {
        final glowPaint = Paint()
          ..color = color.withValues(alpha: 0.15 * twinkle)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
        canvas.drawCircle(Offset(x, y), radius * 2.5, glowPaint);
      }

      // Give the brightest near stars a tiny lens sparkle so the field feels
      // less like uniformly plotted dots.
      if (radius > 1.7 && opacity > 0.9 && i % 3 == 0) {
        final sparklePaint = Paint()
          ..color = color.withValues(alpha: 0.18 * twinkle)
          ..strokeWidth = 0.8;
        canvas.drawLine(
          Offset(x - radius * 2.8, y),
          Offset(x + radius * 2.8, y),
          sparklePaint,
        );
        canvas.drawLine(
          Offset(x, y - radius * 2.8),
          Offset(x, y + radius * 2.8),
          sparklePaint,
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

    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0x0008141F),
          const Color(0x1108141F),
          const Color(0x33040A14),
        ],
        stops: const [0.0, 0.45, 1.0],
      ).createShader(Offset.zero & size);

    canvas.drawPath(dustPath, paint);
  }

  void _drawStreaks(Canvas canvas, Size size) {
    final rng = Random(seed + 9000);
    final streakCount = max(1, nearStarCount ~/ 10);

    for (int i = 0; i < streakCount; i++) {
      final progress = (animationValue + i * 0.23) % 1.0;
      final startX = rng.nextDouble() * size.width;
      final startY =
          ((rng.nextDouble() * size.height) + progress * size.height) %
          size.height;
      final length = 10 + rng.nextDouble() * 22;
      final angle = 0.35 + rng.nextDouble() * 0.35;
      final end = Offset(
        startX - cos(angle) * length,
        startY - sin(angle) * length,
      );

      final paint = Paint()
        ..shader = LinearGradient(
          colors: [
            Colors.transparent,
            const Color(0x66D7F5FF),
            Colors.transparent,
          ],
        ).createShader(Rect.fromPoints(Offset(startX, startY), end))
        ..strokeWidth = 0.9
        ..strokeCap = StrokeCap.round;

      canvas.drawLine(Offset(startX, startY), end, paint);
    }
  }

  void _drawVignette(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final paint = Paint()
      ..shader = RadialGradient(
        center: const Alignment(0, -0.1),
        radius: 1.1,
        colors: [
          Colors.transparent,
          const Color(0x14000000),
          const Color(0x3A000000),
        ],
        stops: const [0.55, 0.82, 1.0],
      ).createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant StarFieldPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue ||
      oldDelegate.seed != seed ||
      oldDelegate.farStarCount != farStarCount ||
      oldDelegate.midStarCount != midStarCount ||
      oldDelegate.nearStarCount != nearStarCount;
}
