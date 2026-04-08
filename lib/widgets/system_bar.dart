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

  /// Current value — normally 0.0–1.0, but culture/tech can reach up to 1.5.
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

  /// Golden color for over-repaired systems (> 1.0).
  static const _goldenOverflow = Color(0xFFFFD700);

  Color _barColor(double v) {
    if (widget.overrideColor != null) return widget.overrideColor!;
    if (v > 1.0) return _goldenOverflow;
    if (v > 0.7) return const Color(0xFF00E676);
    if (v > 0.4) return const Color(0xFFFFD600);
    return const Color(0xFFFF1744);
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '${widget.label} ${(widget.value * 100).round()}%',
      child: AnimatedBuilder(
        animation: _valueAnimation,
        builder: (context, _) {
          final rawValue = _valueAnimation.value;
          final isOverflow = rawValue > 1.0;
          final barFill = rawValue.clamp(0.0, 1.0);
          final color = _barColor(rawValue);
          final pct = (rawValue * 100).round();

          return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            children: [
              // Label.
              SizedBox(
                width: 64,
                child: Text(
                  widget.label.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 9,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: _accent.withValues(alpha: 0.85),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              // Bar.
              Expanded(
                child: Container(
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white.withValues(alpha: 0.06),
                    border: Border.all(
                      color: isOverflow
                          ? _goldenOverflow.withValues(alpha: 0.4)
                          : _accent.withValues(alpha: 0.15),
                      width: isOverflow ? 1.0 : 0.5,
                    ),
                    boxShadow: isOverflow
                        ? [
                            BoxShadow(
                              color: _goldenOverflow.withValues(alpha: 0.25),
                              blurRadius: 8,
                              spreadRadius: 1,
                            ),
                          ]
                        : null,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: barFill,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(
                            colors: isOverflow
                                ? [
                                    color.withValues(alpha: 0.95),
                                    const Color(0xFF00E676).withValues(alpha: 0.7),
                                    color.withValues(alpha: 0.9),
                                  ]
                                : [
                                    color.withValues(alpha: 0.9),
                                    color.withValues(alpha: 0.6),
                                  ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: color.withValues(alpha: isOverflow ? 0.6 : 0.4),
                              blurRadius: isOverflow ? 10 : 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              // Percentage.
              SizedBox(
                width: 34,
                child: Text(
                  '$pct%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: color,
                    shadows: [
                      Shadow(
                        color: color.withValues(alpha: isOverflow ? 0.8 : 0.5),
                        blurRadius: isOverflow ? 8 : 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      ),
    );
  }
}
