import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

// ── Theme constants ────────────────────────────────────────────────────────

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = Color(0xFFE0E0E0);
const _kStarCore = Colors.white;
const _kStarGlow = Color(0xFFBBDEFB);
const _kMirrorBase = Color(0xFFEEEEEE);
const _kInnerLabel = Colors.white;
const _kMiddleLabel = Color(0xFFFFB74D);
const _kOuterLabel = Color(0xFF4DD0E1);

/// Interactive mirror array event screen.
///
/// The player discovers thousands of reflective surfaces arranged in concentric
/// rings, focusing starlight into an artificial star. Three rings map to three
/// choices: study optics, harvest material, or map star routes.
class MirrorArrayScreen extends ConsumerStatefulWidget {
  const MirrorArrayScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<MirrorArrayScreen> createState() => _MirrorArrayScreenState();
}

class _MirrorArrayScreenState extends ConsumerState<MirrorArrayScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<MirrorArrayScreen> {
  // ── Animation controllers ──────────────────────────────────────────────

  /// Drives mirror orbit and beam cycling (60 s full rotation).
  late final AnimationController _starController;

  /// Title silver glow oscillation.
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;

  /// Central star pulse.
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnim;

  /// Merged listenable that drives the ring painter's AnimatedBuilder.
  /// Hoisted into a field so the `Listenable.merge` wrapper is allocated once
  /// at mount rather than on every rebuild — the typewriter calls `setState`
  /// every 30 ms, and without this each rebuild forced AnimatedBuilder to
  /// detach/reattach its listener to both underlying controllers.
  late final Listenable _ringAnimation;

  // ── Typewriter state ───────────────────────────────────────────────────

  // ── Choice state ───────────────────────────────────────────────────────

  int? _selectedRing;
  bool _showingOutcome = false;
  bool _showEffectChips = false;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _titleGlow = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _titleGlowAnim = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _titleGlow, curve: Curves.easeInOut));

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnim = Tween<double>(begin: 0.7, end: 1.0).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _ringAnimation = Listenable.merge([_starController, _pulseAnim]);

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();

    // SFX on load.
    GameSfx().playLong(GameSfx.alienTech);
  }

  @override
  void dispose() {
    disposeTypewriter();
    _starController.dispose();
    _titleGlow.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  Widget _buildEffectChipsRow() {
    if (_selectedRing == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedRing!];
    final chips = <Widget>[];

    for (final e in choice.shipEffects.entries) {
      if (e.value == 0) continue;
      final pct = (e.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      final color = e.value > 0 ? Colors.greenAccent : Colors.redAccent;
      chips.add(_chip('${systemLabel(e.key)} $sign$pct%', color));
    }
    for (final e in choice.planetModifiers.entries) {
      if (e.value == 0) continue;
      final pct = (e.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_chip('${systemLabel(e.key)} $sign$pct%', SpaceColors.cyan));
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(_chip('NAV DATA Acquired', Colors.greenAccent));
    }
    if (choice.fuelDelta != 0) {
      chips.add(
        _chip(
          'FUEL ${choice.fuelDelta > 0 ? "+" : ""}${choice.fuelDelta}',
          choice.fuelDelta > 0 ? Colors.greenAccent : Colors.redAccent,
        ),
      );
    }
    if (choice.probeDelta != 0) {
      chips.add(
        _chip(
          'PROBES ${choice.probeDelta > 0 ? "+" : ""}${choice.probeDelta}',
          choice.probeDelta > 0 ? Colors.greenAccent : Colors.redAccent,
        ),
      );
    }

    return Wrap(
      spacing: 6,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: chips,
    );
  }

  Widget _chip(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color.withValues(alpha: 0.1),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
    text: 'MIRROR ARRAY',
    glow: _titleGlowAnim,
    accentColor: _kAccent,
    fontSize: 26,
    letterSpacing: 3,
    secondaryGlowColor: _kStarGlow,
    secondaryGlowAlphaScale: 0.4,
  );

  Widget _buildNarrativeCard() {
    // Reserved text = the FINAL string this card will display, used by an
    // invisible ghost layer inside the card so it takes its final height from
    // the first frame. Without this, the typewriter grows `displayedText` one
    // character at a time, each line-wrap nudges the card taller, and the
    // visual area below reflows one line at a time while the narrative plays.
    final displayed = _showingOutcome && _selectedRing != null
        ? widget.event.choices[_selectedRing!].outcome
        : displayedText;
    final reserved = _showingOutcome && _selectedRing != null
        ? widget.event.choices[_selectedRing!].outcome
        : widget.event.narrative;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: typewriterDone ? null : skipTypewriter,
      child: _OutcomeCard(
        text: displayed,
        reservedText: reserved,
        isOutcome: _showingOutcome,
        choice: null,
        showEffectChips: false,
      ),
    );
  }

  /// One ring-choice button. Shared between the bottom-row and left-column
  /// layouts so wiring (tap target, semantics, visuals) stays in one place —
  /// only positioning and the label string differ between the two layouts.
  Widget _buildChoiceButton({
    required int r,
    required String label,
    required Color color,
    required double fontSize,
  }) {
    return Semantics(
      button: true,
      enabled:
          widget.event.choices[r].probeCost == 0 ||
          ref.read(voyageProvider).probes >= widget.event.choices[r].probeCost,
      label: '$label — ${widget.event.choices[r].text}',
      child: GestureDetector(
        onTap: () {
          final choice = widget.event.choices[r];
          final probes = ref.read(voyageProvider).probes;
          if (choice.probeCost > 0 && probes < choice.probeCost) {
            return;
          }
          HapticService().selection();
          GameSfx().play(GameSfx.interestingFind);
          setState(() {
            _selectedRing = r;
            _showingOutcome = true;
          });
          Future.delayed(const Duration(milliseconds: 300), () {
            if (mounted) setState(() => _showEffectChips = true);
          });
          unawaited(ref.read(voyageProvider.notifier).handleEvent(choice));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // Opaque dark fill behind the accent wash so the rainbow mirror
            // glitter underneath doesn't show through and fight the label.
            color: Color.alphaBlend(
              color.withValues(alpha: 0.55),
              SpaceColors.deepSpace,
            ),
            border: Border.all(color: color, width: 2),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: 0.45),
                blurRadius: 12,
                spreadRadius: 1,
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              shadows: [
                Shadow(color: color.withValues(alpha: 0.6), blurRadius: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVisualArea({
    double scaleFactor = 1.0,
    bool buttonsLeft = false,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
        const labelColors = [_kInnerLabel, _kMiddleLabel, _kOuterLabel];

        // When the buttons stack on the left the column is wide enough to
        // fit 'HARVEST MATERIALS' without abbreviation. The bottom-row layout
        // has narrower slots and still needs the shortened form.
        final labels = buttonsLeft
            ? const ['STUDY OPTICS', 'HARVEST MATERIALS', 'MAP ROUTES']
            : const ['STUDY OPTICS', 'HARVEST MAT.', 'MAP ROUTES'];

        if (buttonsLeft) {
          // Phone layout: three buttons stacked vertically on the left,
          // mirror visualization drawn in the remaining space on the right.
          const buttonWidth = 148.0;
          const buttonHeight = 44.0;
          const buttonGap = 10.0;
          const buttonLeftMargin = 4.0;
          const ringGap = 10.0;
          final ringAreaLeft = buttonLeftMargin + buttonWidth + ringGap;
          final ringAreaWidth = (w - ringAreaLeft).clamp(0.0, double.infinity);
          final totalButtonsH = buttonHeight * 3 + buttonGap * 2;
          final buttonStartY = ((h - totalButtonsH) / 2).clamp(0.0, h);

          return Stack(
            children: [
              // Mirror visualization occupies the right portion. Giving the
              // painter its own narrower Size means ring radii (fractions of
              // width) shrink naturally to fit the reduced area. Wrapped in a
              // RepaintBoundary so the 60 fps ring/pulse repaints don't
              // invalidate the button column or the narrative card beside it.
              Positioned(
                left: ringAreaLeft,
                top: 0,
                right: 0,
                bottom: 0,
                child: RepaintBoundary(
                  child: AnimatedBuilder(
                    animation: _ringAnimation,
                    builder: (_, _) => CustomPaint(
                      size: Size(ringAreaWidth, h),
                      painter: _MirrorArrayPainter(
                        animationValue: _starController.value,
                        pulseValue: _pulseAnim.value,
                        selectedRing: _selectedRing,
                        isResolved: _showingOutcome,
                        scaleFactor: scaleFactor,
                      ),
                    ),
                  ),
                ),
              ),

              // Vertical button column on the left, centered on the axis.
              if (typewriterDone && !_showingOutcome)
                for (
                  var r = 0;
                  r < labels.length && r < widget.event.choices.length;
                  r++
                )
                  Positioned(
                    left: buttonLeftMargin,
                    width: buttonWidth,
                    top: buttonStartY + r * (buttonHeight + buttonGap),
                    height: buttonHeight,
                    child: _buildChoiceButton(
                      r: r,
                      label: labels[r],
                      color: labelColors[r],
                      fontSize: 12,
                    ),
                  ),
            ],
          );
        }

        // Default: buttons row pinned to the bottom of the visual area.
        const buttonHeight = 40.0;
        const buttonBottomMargin = 4.0;
        const buttonGap = 6.0;
        final slotWidth = (w - buttonGap * 2) / 3;
        final buttonTopY = h - buttonHeight - buttonBottomMargin;

        double slotLeftX(int r) => (slotWidth + buttonGap) * r;

        return Stack(
          children: [
            Positioned.fill(
              child: RepaintBoundary(
                child: AnimatedBuilder(
                  animation: _ringAnimation,
                  builder: (_, _) => CustomPaint(
                    size: Size(w, h),
                    painter: _MirrorArrayPainter(
                      animationValue: _starController.value,
                      pulseValue: _pulseAnim.value,
                      selectedRing: _selectedRing,
                      isResolved: _showingOutcome,
                      scaleFactor: scaleFactor,
                    ),
                  ),
                ),
              ),
            ),
            if (typewriterDone && !_showingOutcome)
              for (
                var r = 0;
                r < labels.length && r < widget.event.choices.length;
                r++
              )
                Positioned(
                  left: slotLeftX(r),
                  width: slotWidth,
                  top: buttonTopY,
                  height: buttonHeight,
                  child: _buildChoiceButton(
                    r: r,
                    label: labels[r],
                    color: labelColors[r],
                    fontSize: 11,
                  ),
                ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;
    // On compact/phone the buttons move into a left column, which leaves the
    // ring area narrower than the original full-width layout (~200px of ~360).
    // Bump the scale so rings fill the narrower area — without this the
    // graphic feels undersized next to the button column.
    final ringScale = screen.screenClass == ScreenClass.compact ? 1.15 : 1.0;

    return EventPopScope(
      resolved: _showingOutcome,
      child: Scaffold(
        backgroundColor: _kBgColor,
        body: Stack(
          children: [
            // Star field background.
            EventStarField(
              controller: _starController,
              farStarCount: 80,
              midStarCount: 30,
              nearStarCount: 10,
            ),

            // Content.
            SafeArea(
              bottom: false,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: !typewriterDone
                    ? skipTypewriter
                    : _showingOutcome
                    ? () {
                        GameSfx().playVaried(GameSfx.buttonClick);
                        Navigator.of(context).pop();
                      }
                    : null,
                child: isLandscape
                    ? _buildLandscape()
                    : _buildPortrait(ringScale: ringScale),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortrait({required double ringScale}) {
    return Column(
      children: [
        Expanded(
          child: ResponsiveContent(
            child: Column(
              children: [
                const SizedBox(height: 8),
                _buildTitle(),
                const SizedBox(height: 16),
                _buildNarrativeCard(),
                if (_showEffectChips) ...[
                  const SizedBox(height: 6),
                  _buildEffectChipsRow(),
                ],
                const SizedBox(height: 8),
                Expanded(
                  child: _buildVisualArea(
                    scaleFactor: ringScale,
                    buttonsLeft: true,
                  ),
                ),
                // Tap hint sits BELOW the visual area so it doesn't overlap
                // the HARVEST MATERIAL button at the top of the ring graphic.
                const SizedBox(height: 8),
                if (!typewriterDone)
                  Text(
                    context.l10n.ui_common_tapToSkip,
                    style: TextStyle(
                      color: _kAccent.withValues(alpha: 0.5),
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                  ),
                if (_showingOutcome)
                  Text(
                    context.l10n.ui_common_tapToContinue,
                    style: TextStyle(
                      color: _kAccent.withValues(alpha: 0.5),
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                  ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
        PremiumAdGate(child: AdaptiveBannerAd()),
      ],
    );
  }

  Widget _buildLandscape() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              // Left: narrative + buttons.
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 8, 12, 8),
                  child: Column(
                    children: [
                      _buildTitle(),
                      const SizedBox(height: 12),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _buildNarrativeCard(),
                              if (_showEffectChips) ...[
                                const SizedBox(height: 8),
                                _buildEffectChipsRow(),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (!typewriterDone)
                        Text(
                          context.l10n.ui_common_tapToSkip,
                          style: TextStyle(
                            color: _kAccent.withValues(alpha: 0.5),
                            fontSize: 12,
                            letterSpacing: 2,
                          ),
                        ),
                      if (_showingOutcome)
                        Text(
                          context.l10n.ui_common_tapToContinue,
                          style: TextStyle(
                            color: _kAccent.withValues(alpha: 0.5),
                            fontSize: 12,
                            letterSpacing: 2,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              // Right: mirror array visualization (full height).
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 24, 8),
                  child: _buildVisualArea(),
                ),
              ),
            ],
          ),
        ),
        // Ad banner full width at bottom.
        PremiumAdGate(child: AdaptiveBannerAd()),
      ],
    );
  }
}

// ── Outcome / narrative card ───────────────────────────────────────────────

class _OutcomeCard extends StatelessWidget {
  const _OutcomeCard({
    required this.text,
    required this.reservedText,
    required this.isOutcome,
    this.choice,
    this.showEffectChips = false,
  });

  /// Currently visible text (typewriter-animated subset, or the final outcome
  /// string once a choice has been selected).
  final String text;

  /// The FULL text this card will eventually display in its current state —
  /// drawn into an invisible ghost layer so the card reserves its final height
  /// immediately and doesn't grow line-by-line as the typewriter plays.
  final String reservedText;
  final bool isOutcome;
  final EventChoice? choice;
  final bool showEffectChips;

  List<_EffectChipData> _buildEffectChips() {
    final c = choice;
    if (c == null) return [];
    final chips = <_EffectChipData>[];

    for (final entry in c.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
        ),
      );
    }

    if (c.colonistDelta != 0) {
      final sign = c.colonistDelta > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: 'COLONISTS',
          delta: '$sign${c.colonistDelta}',
          isPositive: c.colonistDelta > 0,
          color: Colors.orange,
        ),
      );
    }

    for (final entry in c.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
          color: _kOuterLabel,
        ),
      );
    }

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    final chips = _buildEffectChips();
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
      height: 1.5,
      letterSpacing: 0.3,
    );

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: 190),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _kBgColor.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isOutcome
                ? _kAccent.withValues(alpha: 0.8)
                : _kAccent.withValues(alpha: 0.3),
            width: isOutcome ? 2 : 1,
          ),
          boxShadow: isOutcome
              ? [
                  BoxShadow(
                    color: _kAccent.withValues(alpha: 0.15),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ]
              : null,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ghost-backed narrative: invisible full text behind the
              // visible (growing) text. Pinning the width with SizedBox makes
              // both layers wrap at the same column so line breaks align and
              // the Stack's height stays pinned to the ghost from frame 1.
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0,
                      child: Text(reservedText, style: textStyle),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      child: Text(
                        text,
                        key: ValueKey(isOutcome ? 'outcome' : 'narrative'),
                        style: textStyle,
                      ),
                    ),
                  ],
                ),
              ),
              if (chips.isNotEmpty && showEffectChips) ...[
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (var i = 0; i < chips.length; i++)
                      _EffectChip(
                        data: chips[i],
                        delay: Duration(milliseconds: 80 * i),
                      ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ── Effect chip helpers ────────────────────────────────────────────────────

class _EffectChipData {
  final String label;
  final String delta;
  final bool isPositive;
  final Color? color;

  const _EffectChipData({
    required this.label,
    required this.delta,
    required this.isPositive,
    this.color,
  });
}

class _EffectChip extends StatefulWidget {
  const _EffectChip({required this.data, this.delay = Duration.zero});

  final _EffectChipData data;
  final Duration delay;

  @override
  State<_EffectChip> createState() => _EffectChipState();
}

class _EffectChipState extends State<_EffectChip>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _slide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(widget.delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.data;
    final chipColor = d.color ?? (d.isPositive ? Colors.green : Colors.red);

    return SlideTransition(
      position: _slide,
      child: FadeTransition(
        opacity: _opacity,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: chipColor.withValues(alpha: 0.15),
            border: Border.all(color: chipColor.withValues(alpha: 0.5)),
            boxShadow: [
              BoxShadow(color: chipColor.withValues(alpha: 0.2), blurRadius: 8),
            ],
          ),
          child: Text(
            '${d.label}  ${d.delta}',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: chipColor,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}

// ── CustomPainter: Mirror Array ────────────────────────────────────────────

class _MirrorArrayPainter extends CustomPainter {
  _MirrorArrayPainter({
    required this.animationValue,
    required this.pulseValue,
    required this.selectedRing,
    required this.isResolved,
    this.scaleFactor = 1.0,
  });

  final double animationValue;
  final double pulseValue;
  final int? selectedRing;
  final bool isResolved;

  /// Multiplies the effective width used for ring radii and star sizing so the
  /// whole graphic shrinks proportionally while staying centered in its slot.
  /// Set below 1.0 when the layout is tight (e.g. phone + banner ad visible).
  final double scaleFactor;

  // Ring configuration: radiusFraction, mirrorCount, mirrorSize, orbitSpeed.
  static const _rings = [
    (radius: 0.18, count: 16, size: 3.5, speed: 1.0),
    (radius: 0.30, count: 18, size: 5.0, speed: 0.7),
    (radius: 0.42, count: 20, size: 6.5, speed: 0.45),
  ];

  static const _ringLabelColors = [_kInnerLabel, _kMiddleLabel, _kOuterLabel];

  // Precomputed per-beam alpha values. The original code created a fresh
  // `Random(42)` on every paint to get a stable per-beam brightness sequence;
  // caching the list avoids the Random allocation while keeping the same
  // visual result.
  static final List<double> _beamAlphas = _computeBeamAlphas();

  static List<double> _computeBeamAlphas() {
    final rng = Random(42);
    return List<double>.generate(10, (_) => 0.06 + 0.04 * rng.nextDouble());
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final center = Offset(cx, cy);
    final w = size.width * scaleFactor;

    // ── Light beams (behind mirrors) ─────────────────────────────────────
    _drawBeams(canvas, center, w);

    // ── Mirror rings ─────────────────────────────────────────────────────
    for (var r = _rings.length - 1; r >= 0; r--) {
      _drawRing(canvas, center, w, r);
    }

    // ── Central artificial star ──────────────────────────────────────────
    _drawStar(canvas, center, w);

    // Ring labels and tap zones are now rendered as Flutter widgets
    // overlaid on top of the canvas (see _buildVisualArea).
  }

  void _drawStar(Canvas canvas, Offset center, double w) {
    final baseRadius = w * 0.05;
    final pulseRadius = baseRadius * (0.85 + 0.15 * pulseValue);

    // Outer purple glow.
    canvas.drawCircle(
      center,
      pulseRadius * 3.0,
      Paint()
        ..color = const Color(0xFF9C27B0).withValues(alpha: 0.06 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30),
    );

    // Mid blue glow.
    canvas.drawCircle(
      center,
      pulseRadius * 2.0,
      Paint()
        ..color = _kStarGlow.withValues(alpha: 0.12 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );

    // Inner white-hot glow.
    canvas.drawCircle(
      center,
      pulseRadius * 1.3,
      Paint()
        ..color = _kStarCore.withValues(alpha: 0.25 * pulseValue)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12),
    );

    // Core.
    canvas.drawCircle(
      center,
      pulseRadius * 0.4,
      Paint()..color = _kStarCore.withValues(alpha: 0.95),
    );

    // Bright core point.
    canvas.drawCircle(center, pulseRadius * 0.15, Paint()..color = _kStarCore);
  }

  void _drawRing(Canvas canvas, Offset center, double w, int ringIndex) {
    final ring = _rings[ringIndex];
    final radius = w * ring.radius;
    final count = ring.count;
    final mSize = ring.size;
    final orbitOffset = animationValue * 2 * pi * ring.speed;

    final isSelected = selectedRing == ringIndex;
    final isDimmed = isResolved && !isSelected;

    for (var i = 0; i < count; i++) {
      final angle = (2 * pi * i / count) + orbitOffset;
      final mx = center.dx + radius * cos(angle);
      final my = center.dy + radius * sin(angle);

      // Rainbow shimmer: slight hue shift based on angle + animation.
      final hue = ((angle + animationValue * 2 * pi) * 180 / pi) % 360;
      final shimmer = HSLColor.fromAHSL(1.0, hue, 0.15, 0.88).toColor();

      double alpha = isDimmed ? 0.2 : 1.0;
      if (isResolved && isSelected) {
        alpha = 0.85 + 0.15 * pulseValue;
      }

      final mirrorColor = Color.lerp(
        _kMirrorBase,
        shimmer,
        0.3,
      )!.withValues(alpha: alpha);

      // Draw mirror as a small rotated rectangle facing the center.
      canvas.save();
      canvas.translate(mx, my);
      canvas.rotate(angle + pi / 2); // orient radially

      final rect = Rect.fromCenter(
        center: Offset.zero,
        width: mSize * 0.5,
        height: mSize * 1.8,
      );

      // Mirror body.
      canvas.drawRect(rect, Paint()..color = mirrorColor);

      // Specular highlight on mirror.
      if (!isDimmed) {
        canvas.drawRect(
          Rect.fromCenter(
            center: Offset(0, -mSize * 0.3),
            width: mSize * 0.3,
            height: mSize * 0.4,
          ),
          Paint()..color = _kStarCore.withValues(alpha: 0.4 * alpha),
        );
      }

      // Glow for selected ring.
      if (isResolved && isSelected) {
        canvas.drawCircle(
          Offset.zero,
          mSize * 1.5,
          Paint()
            ..color = _ringLabelColors[ringIndex].withValues(
              alpha: 0.15 * pulseValue,
            )
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
        );
      }

      canvas.restore();
    }

    // Colored orbit ring guide — stronger separation between ring bands.
    final bandColor = _ringLabelColors[ringIndex];
    final guideAlpha = isDimmed
        ? 0.12
        : (isResolved && isSelected ? 0.85 : 0.45);
    final guideStroke = (isResolved && isSelected) ? 2.2 : 1.4;

    // Soft glow under the orbit line.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = bandColor.withValues(alpha: guideAlpha * 0.4)
        ..style = PaintingStyle.stroke
        ..strokeWidth = guideStroke + 3
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
    );

    // Solid orbit ring.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..color = bandColor.withValues(alpha: guideAlpha)
        ..style = PaintingStyle.stroke
        ..strokeWidth = guideStroke,
    );
  }

  void _drawBeams(Canvas canvas, Offset center, double w) {
    const beamCount = 10;

    for (var b = 0; b < beamCount; b++) {
      // Deterministic ring and mirror index, shifted by animation.
      final ringIdx = isResolved && selectedRing != null
          ? selectedRing!
          : b % _rings.length;
      final ring = _rings[ringIdx];
      final mirrorIdx =
          (b * 7 + (animationValue * ring.count * 2).floor()) % ring.count;
      final orbitOffset = animationValue * 2 * pi * ring.speed;
      final angle = (2 * pi * mirrorIdx / ring.count) + orbitOffset;
      final radius = w * ring.radius;

      final mirrorPos = Offset(
        center.dx + radius * cos(angle),
        center.dy + radius * sin(angle),
      );

      final isDimmed = isResolved && selectedRing != ringIdx;
      final beamAlpha = isDimmed ? 0.0 : _beamAlphas[b];

      if (beamAlpha <= 0) continue;

      final beamPaint = Paint()
        ..color = _kStarCore.withValues(alpha: beamAlpha * pulseValue)
        ..strokeWidth = 0.8
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2);

      canvas.drawLine(mirrorPos, center, beamPaint);
    }
  }

  @override
  bool shouldRepaint(_MirrorArrayPainter old) =>
      animationValue != old.animationValue ||
      pulseValue != old.pulseValue ||
      selectedRing != old.selectedRing ||
      isResolved != old.isResolved ||
      scaleFactor != old.scaleFactor;
}
