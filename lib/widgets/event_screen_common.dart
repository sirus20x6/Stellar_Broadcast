import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quickapps_ui/quickapps_ui.dart' show ScreenInfo;

import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

/// Mixin that provides typewriter narrative animation state for event screens.
///
/// Use by calling [initTypewriter] from [State.initState] (or the method
/// that kicks off animations) with the full narrative string, and
/// [disposeTypewriter] from [State.dispose]. The state class must mix in
/// `TickerProviderStateMixin` so it can drive the timer's setState calls.
///
/// Exposes [displayedText], [typewriterDone], and [skipTypewriter] for
/// the screen's build to use.
mixin EventTypewriterMixin<T extends StatefulWidget> on State<T> {
  String _typeDisplayedText = '';
  int _typeCharIndex = 0;
  Timer? _typeTimer;
  bool _typeDone = false;
  late String _typeFullText;

  /// Text revealed so far.
  String get displayedText => _typeDisplayedText;

  /// Whether the typewriter has finished revealing the full narrative.
  bool get typewriterDone => _typeDone;

  /// Start the typewriter for [narrative]. If the narrative is empty,
  /// the typewriter completes immediately. Honors
  /// [PlatformConfig.skipAnimations] for QA screenshot runs.
  void initTypewriter(String narrative) {
    _typeFullText = narrative;
    if (narrative.isEmpty) {
      _typeDone = true;
      return;
    }
    if (PlatformConfig.skipAnimations) {
      skipTypewriter();
      return;
    }
    _typeTimer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      if (_typeCharIndex >= _typeFullText.length) {
        timer.cancel();
        if (mounted) setState(() => _typeDone = true);
        return;
      }
      if (mounted) {
        setState(() {
          _typeCharIndex++;
          _typeDisplayedText = _typeFullText.substring(0, _typeCharIndex);
        });
      }
    });
  }

  /// Skip the animation and show the full narrative immediately.
  void skipTypewriter() {
    _typeTimer?.cancel();
    if (!mounted) return;
    setState(() {
      _typeDisplayedText = _typeFullText;
      _typeCharIndex = _typeFullText.length;
      _typeDone = true;
    });
  }

  /// Cancel the typewriter timer. Call from [State.dispose].
  void disposeTypewriter() {
    _typeTimer?.cancel();
  }
}

/// Full-screen animated star field background used by all event screens.
///
/// Pass [controller] when the screen needs to share the same animation
/// driver with other widgets (e.g. pulse-synced overlays). When omitted,
/// the widget creates and disposes its own [AnimationController] with the
/// given [duration], so callers don't have to wire up initState/dispose.
/// Wrapped in a [RepaintBoundary] so it doesn't invalidate siblings.
class EventStarField extends StatefulWidget {
  const EventStarField({
    super.key,
    this.controller,
    this.duration = const Duration(seconds: 60),
    this.farStarCount = 80,
    this.midStarCount = 30,
    this.nearStarCount = 10,
  });

  final AnimationController? controller;
  final Duration duration;
  final int farStarCount;
  final int midStarCount;
  final int nearStarCount;

  @override
  State<EventStarField> createState() => _EventStarFieldState();
}

class _EventStarFieldState extends State<EventStarField>
    with SingleTickerProviderStateMixin {
  AnimationController? _ownController;

  AnimationController get _effectiveController =>
      widget.controller ??
      (_ownController ??= AnimationController(
        vsync: this,
        duration: widget.duration,
      )..repeat());

  @override
  void dispose() {
    _ownController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _effectiveController;
    return Positioned.fill(
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: controller,
          builder: (_, __) => Semantics(
            label: 'Animated star field background',
            excludeSemantics: true,
            child: CustomPaint(
              painter: StarFieldPainter(
                animationValue: controller.value,
                farStarCount: widget.farStarCount,
                midStarCount: widget.midStarCount,
                nearStarCount: widget.nearStarCount,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Title text with a pulsing glow effect, used as the anomaly screen header.
///
/// The caller provides a glow animation (typically a 2000ms
/// [AnimationController] with a 0.4→1.0 tween) and an accent color that
/// tints the glyph and the primary shadow. Optionally, a
/// [secondaryGlowColor] swaps the outer shadow to a different hue (e.g.
/// the chrono-vortex inner disk color) with a dimmer alpha scale.
///
/// [fontSize] is passed through `ScreenInfo.scaledFontSize` so tablet
/// layouts get proportionally larger text automatically.
class EventAnimatedTitle extends StatelessWidget {
  const EventAnimatedTitle({
    super.key,
    required this.text,
    required this.glow,
    required this.accentColor,
    this.fontSize = 24,
    this.letterSpacing = 4,
    this.secondaryGlowColor,
    this.secondaryGlowAlphaScale = 0.5,
  });

  final String text;
  final Animation<double> glow;
  final Color accentColor;
  final double fontSize;
  final double letterSpacing;

  /// Color used for the second, wider shadow. Defaults to [accentColor].
  final Color? secondaryGlowColor;

  /// Multiplier applied to the second shadow's alpha, producing a dimmer
  /// outer halo. Defaults to 0.5.
  final double secondaryGlowAlphaScale;

  @override
  Widget build(BuildContext context) {
    final scaled = ScreenInfo.of(context).scaledFontSize(fontSize);
    return AnimatedBuilder(
      animation: glow,
      builder: (_, __) {
        final secondary = secondaryGlowColor ?? accentColor;
        return Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: scaled,
            fontWeight: FontWeight.bold,
            color: accentColor,
            letterSpacing: letterSpacing,
            shadows: [
              Shadow(
                color: accentColor.withValues(alpha: glow.value),
                blurRadius: 20,
              ),
              Shadow(
                color: secondary.withValues(
                  alpha: glow.value * secondaryGlowAlphaScale,
                ),
                blurRadius: 40,
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Standard narrative card used in most anomaly screens. Shows the
/// typewriter [displayText] with an accent-colored border while an event
/// is unresolved, then swaps to a green/red tinted [outcomeText] once the
/// player has made their choice. A neutral resolved state (no tint) is
/// also supported by passing [outcomeIsPositive] as null.
///
/// Screens with bespoke card styling (chrono_vortex, mirror_array) keep
/// their own implementations.
class EventNarrativeCard extends StatelessWidget {
  const EventNarrativeCard({
    super.key,
    required this.accentColor,
    required this.displayText,
    this.outcomeText,
    this.outcomeIsPositive,
  });

  final Color accentColor;
  final String displayText;

  /// When non-null, the card shows this text instead of [displayText] and
  /// applies a positive/negative tint if [outcomeIsPositive] is set.
  final String? outcomeText;

  /// Null = neutral (no green/red tint); true = green; false = red.
  final bool? outcomeIsPositive;

  @override
  Widget build(BuildContext context) {
    if (outcomeText != null) {
      final positive = outcomeIsPositive;
      final Color fill;
      final Color border;
      final Color textColor;
      if (positive == null) {
        fill = Colors.white.withValues(alpha: 0.05);
        border = accentColor.withValues(alpha: 0.4);
        textColor = Colors.white70;
      } else {
        final base = positive ? Colors.green : Colors.red;
        fill = base.withValues(alpha: 0.1);
        border = base.withValues(alpha: 0.4);
        textColor = positive ? Colors.greenAccent : Colors.redAccent;
      }
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: fill,
          border: Border.all(color: border),
        ),
        child: Text(
          outcomeText!,
          style: TextStyle(color: textColor, fontSize: 15, height: 1.5),
        ),
      );
    }
    if (displayText.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withValues(alpha: 0.05),
        border: Border.all(color: accentColor.withValues(alpha: 0.2)),
      ),
      child: Text(
        displayText,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }
}

/// The "CONTINUE" button shown at the bottom of every anomaly event screen
/// once the player has selected a choice. Accent color varies per anomaly
/// theme; everything else is identical.
class EventContinueButton extends StatelessWidget {
  const EventContinueButton({
    super.key,
    required this.accentColor,
    required this.onTap,
    this.label = 'CONTINUE',
  });

  final Color accentColor;
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: accentColor.withValues(alpha: 0.6)),
            color: accentColor.withValues(alpha: 0.08),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: accentColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}

/// The standard bottom-bar slot used by every anomaly screen, which shows
/// one of three things depending on state:
/// - Nothing (the typewriter has finished and no choice has been made yet).
/// - A "tap to skip" hint (the typewriter is still animating).
/// - An [EventContinueButton] (the player has picked a choice and the
///   outcome is showing).
///
/// [resolved] controls whether the continue button appears. [typewriterDone]
/// controls whether the hint appears. [onContinue] is called when the
/// button is tapped; pass `() { GameSfx().playVaried(GameSfx.buttonClick);
/// Navigator.of(context).pop(); }` or similar.
class EventHintOrContinue extends StatelessWidget {
  const EventHintOrContinue({
    super.key,
    required this.resolved,
    required this.typewriterDone,
    required this.accentColor,
    required this.onContinue,
  });

  final bool resolved;
  final bool typewriterDone;
  final Color accentColor;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    if (resolved) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: EventContinueButton(accentColor: accentColor, onTap: onContinue),
      );
    }
    if (!typewriterDone) {
      return Text(
        context.l10n.ui_common_tapToSkip,
        style: TextStyle(
          color: accentColor.withValues(alpha: 0.5),
          fontSize: 12,
          letterSpacing: 2,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

/// Blocks system back navigation on event screens until the player has
/// committed to a choice. Prevents the reroll exploit where pressing back
/// mid-event would return to the voyage and allow a fresh roll on the
/// next Press On click. Once [resolved] is true, back works normally so
/// the continue flow is unaffected.
class EventPopScope extends StatelessWidget {
  const EventPopScope({super.key, required this.resolved, required this.child});

  final bool resolved;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(canPop: resolved, child: child);
  }
}
