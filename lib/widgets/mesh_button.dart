import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show Ticker;
import 'package:quickapps_audio/quickapps_audio.dart';

/// Platforms where pointer hover is a real concept. Android/iOS return false,
/// which matters for Waydroid — it reports as Android but emits mouse events
/// that, combined with the moving wobble hit-test, cause onEnter/onExit to
/// strobe and the button to flash.
bool get _hoverPlatform =>
    kIsWeb ||
    defaultTargetPlatform == TargetPlatform.linux ||
    defaultTargetPlatform == TargetPlatform.macOS ||
    defaultTargetPlatform == TargetPlatform.windows;

// ── Idle wobble ──────────────────────────────────────────────────────
//
// The Unreal source's defaults were (0, 0, 2) px and 2°/1° — tuned for a 3D
// viewport where camera parallax sells the motion. Flutter's flat viewport
// needs larger amplitudes, but "larger" has a sweet spot where it reads as
// a gentle drift rather than a swaying mess.
const double _kTranslationSpeed = 1.0;
const double _kRotationSpeed = 0.8;
const double _kPhaseOffsetPerButton = 1.5;
const double _kBobX = 2.0;
const double _kBobY = 1.3;
const double _kBobZ = 10.0;
const double _kYawDeg = 3.0;
const double _kPitchDeg = 1.8;

/// Duration over which the idle wobble amplitude ramps from 0 → full after
/// a button's fly-in completes. Without this, the wobble hard-starts at full
/// amplitude the instant flyInProgress hits 1.0 and the button visibly jumps.
const Duration _kIdleRampDuration = Duration(milliseconds: 1000);

// ── Hover / press ────────────────────────────────────────────────────
const double _kHoverScale = 1.05;
const double _kPressScale = 0.95;
const double _kPressYawDeg = 30.0;
const double _kPressPitchDeg = 10.0;
const double _kInterpSpeed = 5.0;
const Duration _kPressHoldDuration = Duration(milliseconds: 100);

// ── Fly-in ────────────────────────────────────────────────────────────
const double _kFlyInOffsetX = -400.0;
const Duration _kFlyInDuration = Duration(milliseconds: 1500);
const Duration _kFlyInStagger = Duration(milliseconds: 200);

/// Owns the shared time source that drives idle wobble on every descendant
/// [MeshButton]. Uses a single [Ticker] so every button advances on the same
/// frame and the stagger/phase math lines up.
class MeshButtonMenu extends StatefulWidget {
  const MeshButtonMenu({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<MeshButtonMenu> createState() => _MeshButtonMenuState();
}

class _MeshButtonMenuState extends State<MeshButtonMenu>
    with TickerProviderStateMixin {
  Ticker? _ticker;
  double _menuTime = 0.0;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((elapsed) {
      setState(() {
        _menuTime = elapsed.inMicroseconds / 1e6;
      });
    })
      ..start();
  }

  @override
  void dispose() {
    _ticker?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _MeshButtonMenuScope(
      menuTime: _menuTime,
      child: widget.child,
    );
  }
}

/// InheritedWidget passing the shared menuTime down to MeshButton descendants.
class _MeshButtonMenuScope extends InheritedWidget {
  const _MeshButtonMenuScope({
    required this.menuTime,
    required super.child,
  });

  final double menuTime;

  static _MeshButtonMenuScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_MeshButtonMenuScope>();
  }

  @override
  bool updateShouldNotify(_MeshButtonMenuScope oldWidget) {
    return oldWidget.menuTime != menuTime;
  }
}

/// A button with 3D idle wobble, hover response, press feedback, and
/// staggered fly-in from offscreen left. Drop inside a [MeshButtonMenu].
///
/// The transform is composed each frame as:
///   perspective * translate * rotateY * rotateX * scale
/// on a shared menuTime clock, so each button at a different [index] traces
/// its own Lissajous curve — the irrational ratios on detuned axes ensure
/// the motion never exactly repeats.
class MeshButton extends StatefulWidget {
  const MeshButton({
    super.key,
    required this.index,
    required this.label,
    required this.onPressed,
    this.accentColor = const Color(0xFF00E5FF),
    this.autofocus = false,
  });

  final int index;
  final String label;

  /// Accepts sync or async callbacks. Async callbacks returning a `Future`
  /// are awaited and the button is locked out until the future resolves,
  /// preventing double-tap races.
  final FutureOr<void> Function()? onPressed;
  final Color accentColor;
  final bool autofocus;

  @override
  State<MeshButton> createState() => _MeshButtonState();
}

class _MeshButtonState extends State<MeshButton> {
  bool _hovered = false;
  bool _pressed = false;
  bool _inFlight = false;
  Timer? _pressTimer;

  /// Invokes the callback and, if it returned a Future, awaits it while
  /// locking out additional taps. Prevents double-tap races on async handlers.
  Future<void> _dispatch() async {
    final cb = widget.onPressed;
    if (cb == null || _inFlight) return;
    HapticService().light();
    final result = cb();
    if (result is Future) {
      setState(() => _inFlight = true);
      try {
        await result;
      } finally {
        if (mounted) setState(() => _inFlight = false);
      }
    }
  }

  // Per-button eased hover/press state (toward targets each frame).
  double _scale = 1.0;
  double _hoverYawDeg = 0.0;
  double _hoverPitchDeg = 0.0;

  // Stopwatch starts at mount — drives the fly-in with per-button stagger.
  final Stopwatch _mountedAt = Stopwatch();

  // Track prior menuTime so we can compute dt for exponential easing.
  double _lastMenuTime = 0.0;
  bool _seenTime = false;

  @override
  void initState() {
    super.initState();
    _mountedAt.start();
  }

  @override
  void dispose() {
    _pressTimer?.cancel();
    super.dispose();
  }

  void _onTapDown() {
    _pressTimer?.cancel();
    setState(() => _pressed = true);
    _pressTimer = Timer(_kPressHoldDuration, () {
      if (mounted) setState(() => _pressed = false);
    });
  }

  void _onTapCancel() {
    _pressTimer?.cancel();
    if (mounted) setState(() => _pressed = false);
  }

  @override
  Widget build(BuildContext context) {
    final menuTime = _MeshButtonMenuScope.of(context)?.menuTime ?? 0.0;
    // dt in seconds, clamped so a frame drop or tab-suspend can't snap the
    // eased state all the way to its target.
    final dt = _seenTime
        ? math.max(0.0, menuTime - _lastMenuTime).clamp(0.0, 0.1)
        : 0.0;
    _lastMenuTime = menuTime;
    _seenTime = true;

    // Targets — press takes precedence over hover, both decay back to rest.
    final targetScale = _pressed
        ? _kPressScale
        : (_hovered ? _kHoverScale : 1.0);
    final targetYawDeg = _pressed ? _kPressYawDeg : 0.0;
    final targetPitchDeg = _pressed ? _kPressPitchDeg : 0.0;

    // Framerate-independent exponential ease — same shape as FInterpTo.
    final k = 1.0 - math.exp(-_kInterpSpeed * dt);
    _scale = lerpDouble(_scale, targetScale, k) ?? targetScale;
    _hoverYawDeg = lerpDouble(_hoverYawDeg, targetYawDeg, k) ?? targetYawDeg;
    _hoverPitchDeg =
        lerpDouble(_hoverPitchDeg, targetPitchDeg, k) ?? targetPitchDeg;

    // Fly-in: each button starts flying after index * stagger ms elapsed.
    final mountedMs = _mountedAt.elapsedMilliseconds;
    final flyInDelayMs = widget.index * _kFlyInStagger.inMilliseconds;
    final flyInElapsed = math.max(0, mountedMs - flyInDelayMs);
    final flyInProgress =
        (flyInElapsed / _kFlyInDuration.inMilliseconds).clamp(0.0, 1.0);
    final flyInEased = Curves.easeOutCubic.transform(flyInProgress.toDouble());
    final flyInOffsetX = _kFlyInOffsetX * (1.0 - flyInEased);

    // Idle wobble ramp: 0 while the button is still flying in, then smoothly
    // eases from 0 → 1 over _kIdleRampDuration once it has settled. Multiplied
    // into every bob/rotation amplitude so the motion fades in instead of
    // snapping on the frame flyInProgress hits 1.0.
    final flyInEndMs = flyInDelayMs + _kFlyInDuration.inMilliseconds;
    final rampElapsed = mountedMs - flyInEndMs;
    final rampRaw =
        (rampElapsed / _kIdleRampDuration.inMilliseconds).clamp(0.0, 1.0);
    final idleAmplitude =
        Curves.easeOutCubic.transform(rampRaw.toDouble());

    double idleYawDeg = 0.0;
    double idlePitchDeg = 0.0;
    double bobX = 0.0;
    double bobY = 0.0;
    double bobZ = 0.0;
    if (idleAmplitude > 0) {
      final phase = widget.index * _kPhaseOffsetPerButton;
      final tTrans = menuTime * _kTranslationSpeed + phase;
      final tRot = menuTime * _kRotationSpeed + phase;
      // Deliberately irrational ratios (1.0 / 1.1 / 0.8 and 1.0 / 1.3) so
      // the motion traces a Lissajous curve that never exactly repeats.
      bobX = _kBobX * math.sin(tTrans) * idleAmplitude;
      bobY = _kBobY * math.cos(tTrans * 1.1) * idleAmplitude;
      bobZ = _kBobZ * math.sin(tTrans * 0.8) * idleAmplitude;
      idleYawDeg = _kYawDeg * math.sin(tRot) * idleAmplitude;
      idlePitchDeg = _kPitchDeg * math.cos(tRot * 1.3) * idleAmplitude;
    }

    final totalYawRad = (idleYawDeg + _hoverYawDeg) * math.pi / 180.0;
    final totalPitchRad = (idlePitchDeg + _hoverPitchDeg) * math.pi / 180.0;

    // IMPORTANT: the 4th args to translateByDouble and scaleByDouble are the
    // coefficients applied to the current m[15] (the w component) during the
    // post-multiply. They MUST be 1.0 — not 0 — or the perspective m[3][2]=0.001
    // gets destroyed and m[15] collapses to ~0.001*bobZ, which makes the
    // perspective divide explode and paints a single button across the whole
    // viewport as bobZ swings through zero. Deprecated translate()/scale()
    // both pass 1.0 here for exactly this reason.
    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001) // perspective projection so rotations are visible
      ..translateByDouble(flyInOffsetX + bobX, bobY, bobZ, 1)
      ..rotateY(totalYawRad)
      ..rotateX(totalPitchRad)
      ..scaleByDouble(_scale, _scale, _scale, 1);

    // Emissive text: snap bright on hover (matches the Unreal source which
    // uses SetScalarParameterValue, not an interp). Backed by Flutter shadows.
    final baseColor = widget.accentColor;
    final textColor = _hovered
        ? Color.lerp(baseColor, Colors.white, 0.55) ?? baseColor
        : baseColor;
    final shadows = _hovered
        ? <Shadow>[
            Shadow(
              blurRadius: 8,
              color: baseColor.withValues(alpha: 0.9),
            ),
            Shadow(
              blurRadius: 16,
              color: baseColor.withValues(alpha: 0.5),
            ),
            Shadow(
              blurRadius: 24,
              color: baseColor.withValues(alpha: 0.25),
            ),
          ]
        : <Shadow>[
            Shadow(
              blurRadius: 6,
              color: baseColor.withValues(alpha: 0.35),
            ),
          ];

    final disabled = widget.onPressed == null || _inFlight;

    return Transform(
      alignment: Alignment.center,
      transform: transform,
      // transformHitTests: false keeps hit testing on the un-wobbled rect.
      // If this were true, the cursor's local position would oscillate as the
      // button moves under it and MouseRegion would strobe onEnter/onExit.
      transformHitTests: false,
      child: MouseRegion(
        cursor: disabled
            ? SystemMouseCursors.forbidden
            : SystemMouseCursors.click,
        onEnter: _hoverPlatform
            ? (_) {
                if (!disabled && mounted) setState(() => _hovered = true);
              }
            : null,
        onExit: _hoverPlatform
            ? (_) {
                if (mounted) setState(() => _hovered = false);
              }
            : null,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: disabled ? null : _dispatch,
          onTapDown: disabled ? null : (_) => _onTapDown(),
          onTapCancel: disabled ? null : _onTapCancel,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: baseColor.withValues(alpha: _hovered ? 0.22 : 0.15),
              border: Border.all(
                color: baseColor.withValues(alpha: _hovered ? 1.0 : 0.9),
                width: _hovered ? 2.0 : 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: baseColor.withValues(alpha: _hovered ? 0.45 : 0.25),
                  blurRadius: _hovered ? 22 : 12,
                  spreadRadius: _hovered ? 2 : 1,
                ),
              ],
            ),
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: disabled ? textColor.withValues(alpha: 0.4) : textColor,
                shadows: disabled ? null : shadows,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
