import 'package:flutter/material.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

/// A holographic-styled button used throughout Stellar Broadcast.
///
/// [isPrimary] controls whether the button is filled (semi-transparent cyan)
/// or outline-only. Both variants feature a subtle pulsing glow animation.
class HolographicButton extends StatefulWidget {
  const HolographicButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
    this.compact = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final bool compact;

  @override
  State<HolographicButton> createState() => _HolographicButtonState();
}

class _HolographicButtonState extends State<HolographicButton>
    with SingleTickerProviderStateMixin {
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _pulseAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    if (widget.onPressed != null) _pulseController.repeat(reverse: true);
  }

  @override
  void didUpdateWidget(covariant HolographicButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    final wasDisabled = oldWidget.onPressed == null;
    final isDisabled = widget.onPressed == null;
    if (wasDisabled && !isDisabled) {
      _pulseController.repeat(reverse: true);
    } else if (!wasDisabled && isDisabled) {
      _pulseController.stop();
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final disabled = widget.onPressed == null;

    return Semantics(
      button: true,
      label: widget.label,
      child: AnimatedBuilder(
        animation: _pulseAnimation,
        builder: (context, child) {
          final glowOpacity = disabled ? 0.2 : _pulseAnimation.value;

          return Opacity(
          opacity: disabled ? 0.4 : 1.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: disabled
                  ? null
                  : [
                      BoxShadow(
                        color: _accent.withValues(alpha: 0.3 * glowOpacity),
                        blurRadius: 12 * glowOpacity,
                        spreadRadius: 1,
                      ),
                    ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onPressed == null
                    ? null
                    : () {
                        HapticService().light();
                        widget.onPressed!();
                      },
                borderRadius: BorderRadius.circular(8),
                splashColor: _accent.withValues(alpha: 0.3),
                highlightColor: _accent.withValues(alpha: 0.1),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: widget.compact ? 10 : 16,
                      horizontal: widget.compact ? 20 : 32),
                  decoration: BoxDecoration(
                    color: widget.isPrimary
                        ? _accent.withValues(alpha: 0.15)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: _accent.withValues(
                        alpha: widget.isPrimary ? 0.9 : 0.5 * glowOpacity,
                      ),
                      width: widget.isPrimary ? 1.5 : 1.0,
                    ),
                  ),
                  child: Text(
                    widget.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: widget.compact ? 13 : 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: widget.compact ? 2 : 3,
                      color: _accent,
                      shadows: [
                        Shadow(
                          color: _accent.withValues(alpha: 0.6 * glowOpacity),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}
