import 'package:flutter/material.dart';

/// A holographic system-health bar used on the Voyage Dashboard.
///
/// Displays a [label] on the left, an animated fill bar in the middle, and
/// the current percentage on the right. The bar color shifts from green to
/// yellow to red as [value] drops.
class SystemBar extends StatefulWidget {
  const SystemBar({
    super.key,
    required this.label,
    required this.value,
    this.overrideColor,
  });

  /// Display label (e.g. "Hull").
  final String label;

  /// Current value in the range 0.0 – 1.0.
  final double value;

  /// If non-null, overrides the automatic green/yellow/red color.
  final Color? overrideColor;

  @override
  State<SystemBar> createState() => _SystemBarState();
}

class _SystemBarState extends State<SystemBar>
    with SingleTickerProviderStateMixin {
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _controller;
  late Animation<double> _valueAnimation;
  double _previousValue = 0.0;

  @override
  void initState() {
    super.initState();
    _previousValue = widget.value;
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _valueAnimation = Tween<double>(
      begin: widget.value,
      end: widget.value,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
  }

  @override
  void didUpdateWidget(covariant SystemBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _previousValue = _valueAnimation.value;
      _valueAnimation = Tween<double>(
        begin: _previousValue,
        end: widget.value,
      ).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
      _controller
        ..reset()
        ..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color _barColor(double v) {
    if (widget.overrideColor != null) return widget.overrideColor!;
    if (v > 0.7) return const Color(0xFF00E676);
    if (v > 0.4) return const Color(0xFFFFD600);
    return const Color(0xFFFF1744);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _valueAnimation,
      builder: (context, _) {
        final animatedValue = _valueAnimation.value.clamp(0.0, 1.0);
        final color = _barColor(animatedValue);
        final pct = (animatedValue * 100).round();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              // Label.
              SizedBox(
                width: 78,
                child: Text(
                  widget.label.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w600,
                    color: _accent.withValues(alpha: 0.85),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Bar.
              Expanded(
                child: Container(
                  height: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white.withValues(alpha: 0.06),
                    border: Border.all(
                      color: _accent.withValues(alpha: 0.15),
                      width: 0.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: animatedValue,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(
                            colors: [
                              color.withValues(alpha: 0.9),
                              color.withValues(alpha: 0.6),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: color.withValues(alpha: 0.4),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Percentage.
              SizedBox(
                width: 38,
                child: Text(
                  '$pct%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: color,
                    shadows: [
                      Shadow(
                        color: color.withValues(alpha: 0.5),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
