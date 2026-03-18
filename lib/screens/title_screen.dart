import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starbound_exodus/widgets/holographic_button.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

/// The title / main-menu screen for Starbound Exodus.
///
/// Features an animated parallax star field, glowing title text, and
/// holographic action buttons.
class TitleScreen extends ConsumerStatefulWidget {
  const TitleScreen({super.key});

  @override
  ConsumerState<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends ConsumerState<TitleScreen>
    with SingleTickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _starController;

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // — Parallax star field —
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (context, _) {
                return CustomPaint(
                  painter: StarFieldPainter(
                    animationValue: _starController.value,
                  ),
                  size: Size.infinite,
                );
              },
            ),
          ),

          // — Ship silhouette at bottom —
          Positioned(
            bottom: -20,
            left: 0,
            right: 0,
            child: Center(
              child: CustomPaint(
                size: Size(screenSize.width * 0.35, 100),
                painter: _ShipSilhouettePainter(accent: _accent),
              ),
            ),
          ),

          // — Foreground UI —
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 3),

                // Title.
                Text(
                  'STARBOUND',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 42,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    color: _accent,
                    shadows: [
                      Shadow(
                        color: _accent.withValues(alpha: 0.8),
                        blurRadius: 20,
                      ),
                      Shadow(
                        color: _accent.withValues(alpha: 0.5),
                        blurRadius: 40,
                      ),
                      Shadow(
                        color: _accent.withValues(alpha: 0.3),
                        blurRadius: 60,
                      ),
                    ],
                  ),
                ),
                Text(
                  'EXODUS',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 42,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 18,
                    color: _accent,
                    shadows: [
                      Shadow(
                        color: _accent.withValues(alpha: 0.8),
                        blurRadius: 20,
                      ),
                      Shadow(
                        color: _accent.withValues(alpha: 0.5),
                        blurRadius: 40,
                      ),
                      Shadow(
                        color: _accent.withValues(alpha: 0.3),
                        blurRadius: 60,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                // Subtitle.
                Text(
                  "Humanity's Last Voyage",
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 14,
                    letterSpacing: 3,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),

                const Spacer(flex: 3),

                // Buttons.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: HolographicButton(
                    label: 'BEGIN VOYAGE',
                    onPressed: () => Navigator.pushNamed(context, '/voyage'),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: HolographicButton(
                    label: 'LEGACY HUB',
                    isPrimary: false,
                    onPressed: () => Navigator.pushNamed(context, '/legacy'),
                  ),
                ),

                const Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Paints a simple geometric colony-ship silhouette.
class _ShipSilhouettePainter extends CustomPainter {
  _ShipSilhouettePainter({required this.accent});

  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final bottom = size.height;

    // Main hull — elongated triangle pointing up.
    final hullPath = Path()
      ..moveTo(cx, 0)
      ..lineTo(cx - size.width * 0.12, bottom * 0.7)
      ..lineTo(cx - size.width * 0.18, bottom)
      ..lineTo(cx + size.width * 0.18, bottom)
      ..lineTo(cx + size.width * 0.12, bottom * 0.7)
      ..close();

    // Left wing.
    final leftWing = Path()
      ..moveTo(cx - size.width * 0.12, bottom * 0.55)
      ..lineTo(cx - size.width * 0.45, bottom * 0.95)
      ..lineTo(cx - size.width * 0.18, bottom * 0.85)
      ..close();

    // Right wing.
    final rightWing = Path()
      ..moveTo(cx + size.width * 0.12, bottom * 0.55)
      ..lineTo(cx + size.width * 0.45, bottom * 0.95)
      ..lineTo(cx + size.width * 0.18, bottom * 0.85)
      ..close();

    final fillPaint = Paint()
      ..color = accent.withValues(alpha: 0.08)
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = accent.withValues(alpha: 0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    for (final path in [hullPath, leftWing, rightWing]) {
      canvas.drawPath(path, fillPaint);
      canvas.drawPath(path, strokePaint);
    }

    // Engine glow dot.
    final glowPaint = Paint()
      ..color = accent.withValues(alpha: 0.35)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawCircle(Offset(cx, bottom * 0.9), 4, glowPaint);
  }

  @override
  bool shouldRepaint(covariant _ShipSilhouettePainter oldDelegate) => false;
}
