import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/system_labels.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kFoodColor = Color(0xFF66BB6A);
const _kHeritageColor = Color(0xFFFFB74D);

/// Snap positions for the allocation slider (7 gradations).
const _kSnapPositions = [0.05, 0.17, 0.33, 0.50, 0.67, 0.83, 0.95];

class SeedVaultScreen extends ConsumerStatefulWidget {
  const SeedVaultScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<SeedVaultScreen> createState() => _SeedVaultScreenState();
}

class _SeedVaultScreenState extends ConsumerState<SeedVaultScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<SeedVaultScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _waveController;
  late final AnimationController _snapController;
  late final Animation<double> _snapAnim;

  // Typewriter state.

  // Slider / choice state.
  double _sliderValue = 0.5;
  double _snapFrom = 0.5;
  int? _snappedPosition; // 0, 1, or 2 index into _kSnapPositions
  bool _isDragging = false;
  bool _resolved = false;
  EventChoice? _selectedChoice;
  bool _showEffects = false;

  @override
  void initState() {
    super.initState();

    _titleGlow = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
    _titleGlowAnim = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _titleGlow, curve: Curves.easeInOut));

    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();

    _snapController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _snapAnim = CurvedAnimation(parent: _snapController, curve: Curves.easeOut);
    _snapController.addListener(_onSnapTick);

    // Initial snap to center.
    _snappedPosition = 3;

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();

    GameSfx().playLong(GameSfx.criticalAlarm);
  }

  // ── Slider logic ─────────────────────────────────────────────────────

  int _nearestSnapIndex(double value) {
    double minDist = double.infinity;
    int best = 1;
    for (int i = 0; i < _kSnapPositions.length; i++) {
      final d = (value - _kSnapPositions[i]).abs();
      if (d < minDist) {
        minDist = d;
        best = i;
      }
    }
    return best;
  }

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
      _isDragging = true;
      _snappedPosition = null;
    });
  }

  void _onSliderEnd(double value) {
    final target = _nearestSnapIndex(value);
    _snapFrom = value;
    _isDragging = false;
    _snapController.forward(from: 0.0);
    setState(() => _snappedPosition = target);
  }

  void _onSnapTick() {
    if (_snappedPosition == null) return;
    final target = _kSnapPositions[_snappedPosition!];
    setState(() {
      _sliderValue = _snapFrom + (_snapAnim.value * (target - _snapFrom));
    });
  }

  // ── Confirm ──────────────────────────────────────────────────────────

  void _onConfirm() {
    if (_resolved || _snappedPosition == null) return;

    // Map snap to choice index:
    //   snap 0-1 (food-heavy)  → choices[0]
    //   snap 2-4 (balanced)    → choices[2]
    //   snap 5-6 (heritage-heavy) → choices[1]
    final choiceIndex = switch (_snappedPosition!) {
      0 || 1 => 0, // food priority
      2 || 3 || 4 => 2, // balanced
      5 || 6 => 1, // heritage priority
      _ => 2,
    };

    if (choiceIndex >= widget.event.choices.length) return;

    final choice = widget.event.choices[choiceIndex];

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _resolved = true;
      _selectedChoice = choice;
    });

    unawaited(ref.read(voyageProvider.notifier).handleEvent(choice));

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) setState(() => _showEffects = true);
    });
  }

  @override
  void dispose() {
    disposeTypewriter();
    _snapController.removeListener(_onSnapTick);
    _titleGlow.dispose();
    _waveController.dispose();
    _snapController.dispose();
    super.dispose();
  }

  // ── Shared widget builders ──────────────────────────────────────────

  Color get _titleColor => Color.lerp(
    _kFoodColor,
    _kHeritageColor,
    0.5 + 0.5 * sin(_titleGlow.value * pi),
  )!;

  Widget _buildTitle() {
    final screen = ScreenInfo.of(context);
    return AnimatedBuilder(
      animation: _titleGlowAnim,
      builder: (_, _) {
        final titleColor = _titleColor;
        return Text(
          'SEED VAULT CRITICAL',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: screen.scaledFontSize(22),
            fontWeight: FontWeight.bold,
            color: titleColor,
            letterSpacing: 2,
            shadows: [
              Shadow(
                color: titleColor.withValues(alpha: _titleGlowAnim.value),
                blurRadius: 20,
              ),
              Shadow(
                color: titleColor.withValues(alpha: _titleGlowAnim.value * 0.5),
                blurRadius: 40,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNarrativeCard() {
    final event = widget.event;
    final titleColor = _titleColor;
    if (!_resolved && event.narrative.isNotEmpty) {
      return GestureDetector(
        onTap: typewriterDone ? null : skipTypewriter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white.withValues(alpha: 0.05),
            border: Border.all(color: titleColor.withValues(alpha: 0.2)),
          ),
          child: Text(
            displayedText,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
      );
    }
    if (_resolved && _selectedChoice != null) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: _kFoodColor.withValues(alpha: 0.08),
          border: Border.all(color: _kFoodColor.withValues(alpha: 0.3)),
        ),
        child: Text(
          _selectedChoice!.outcome,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
            height: 1.5,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildHintOrContinue() {
    if (_resolved) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Semantics(
          button: true,
          label: 'Continue',
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                GameSfx().playVaried(GameSfx.buttonClick);
                Navigator.of(context).pop();
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: _kFoodColor.withValues(alpha: 0.6)),
                  color: _kFoodColor.withValues(alpha: 0.08),
                ),
                child: const Text(
                  'CONTINUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: _kFoodColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    if (!typewriterDone) {
      return Text(
        context.l10n.ui_common_tapToSkip,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.4),
          fontSize: 11,
          letterSpacing: 2,
        ),
      );
    }
    return const SizedBox.shrink();
  }

  // ── Build ────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    return EventPopScope(
      resolved: _resolved,
      child: Scaffold(
        backgroundColor: _kBgColor,
        body: Stack(
          children: [
            // Star field.
            const EventStarField(
              farStarCount: 80,
              midStarCount: 30,
              nearStarCount: 10,
            ),

            // Content.
            SafeArea(
              bottom: false,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: typewriterDone ? null : skipTypewriter,
                child: isLandscape ? _buildLandscape() : _buildPortrait(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortrait() {
    return Column(
      children: [
        Expanded(
          child: ResponsiveContent(
            child: Column(
              children: [
                const SizedBox(height: 24),
                _buildTitle(),
                const SizedBox(height: 16),
                _buildNarrativeCard(),
                if (!typewriterDone)
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: _buildHintOrContinue(),
                  ),
                const SizedBox(height: 12),
                if (typewriterDone) ...[
                  Expanded(child: _buildVisualArea()),
                ] else
                  const Spacer(),
                if (_showEffects) ...[
                  const SizedBox(height: 8),
                  _buildEffectChips(),
                ],
                if (_resolved) ...[
                  const SizedBox(height: 10),
                  _buildHintOrContinue(),
                ],
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscape() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
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
                              if (_showEffects) ...[
                                const SizedBox(height: 8),
                                _buildEffectChips(),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildHintOrContinue(),
                    ],
                  ),
                ),
              ),
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
      ],
    );
  }

  // ── Visual area: tanks + slider ──────────────────────────────────────

  Widget _buildVisualArea() {
    final foodFill = 1.0 - _sliderValue;
    final heritageFill = _sliderValue;

    return Column(
      children: [
        // Tanks row. RepaintBoundary isolates the wave animation so its
        // 60fps ticks don't force the whole screen to repaint.
        Expanded(
          child: RepaintBoundary(
            child: Row(
              children: [
                Expanded(
                  child: AnimatedBuilder(
                    animation: _waveController,
                    builder: (_, _) => _SeedTank(
                      label: 'FOOD CROPS',
                      fillPercent: foodFill,
                      accentColor: _kFoodColor,
                      waveValue: _waveController.value,
                      isWarning: foodFill < 0.20,
                      titleGlowValue: _titleGlowAnim.value,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AnimatedBuilder(
                    animation: _waveController,
                    builder: (_, _) => _SeedTank(
                      label: 'HERITAGE',
                      fillPercent: heritageFill,
                      accentColor: _kHeritageColor,
                      waveValue: _waveController.value,
                      isWarning: heritageFill < 0.20,
                      titleGlowValue: _titleGlowAnim.value,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Slider.
        if (!_resolved) ...[
          _buildSlider(),
          const SizedBox(height: 8),
          _buildSliderLabels(),
          const SizedBox(height: 12),

          // Confirm button.
          if (_snappedPosition != null && !_isDragging)
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _onConfirm,
                borderRadius: BorderRadius.circular(8),
                child: AnimatedBuilder(
                  animation: _titleGlowAnim,
                  builder: (_, _) {
                    final glowAlpha = 0.15 + _titleGlowAnim.value * 0.15;
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: _kFoodColor.withValues(alpha: 0.6),
                        ),
                        color: _kFoodColor.withValues(alpha: glowAlpha),
                        boxShadow: [
                          BoxShadow(
                            color: _kFoodColor.withValues(
                              alpha: _titleGlowAnim.value * 0.2,
                            ),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: const Text(
                        'CONFIRM ALLOCATION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: _kFoodColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
        ],
      ],
    );
  }

  Widget _buildSlider() {
    return Column(
      children: [
        // Tick marks showing snap positions.
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_kSnapPositions.length, (i) {
              final isActive = _snappedPosition == i && !_isDragging;
              return Container(
                width: isActive ? 3 : 2,
                height: isActive ? 12 : 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Color.lerp(
                    _kFoodColor,
                    _kHeritageColor,
                    _kSnapPositions[i],
                  )!.withValues(alpha: isActive ? 0.9 : 0.35),
                ),
              );
            }),
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 6,
            thumbShape: _GlowingThumbShape(glowColor: _kFoodColor),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
            activeTrackColor: _kFoodColor,
            inactiveTrackColor: _kHeritageColor.withValues(alpha: 0.4),
            overlayColor: _kFoodColor.withValues(alpha: 0.15),
          ),
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [_kFoodColor, _kHeritageColor],
            ).createShader(bounds),
            blendMode: BlendMode.srcIn,
            child: Slider(
              value: _sliderValue,
              onChanged: _resolved ? null : _onSliderChanged,
              onChangeEnd: _resolved ? null : _onSliderEnd,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSliderLabels() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _snapLabel('FOOD\nPRIORITY', {0, 1}),
        _snapLabel('BALANCED', {2, 3, 4}),
        _snapLabel('HERITAGE\nPRIORITY', {5, 6}),
      ],
    );
  }

  Widget _snapLabel(String text, Set<int> indices) {
    final isActive =
        _snappedPosition != null &&
        indices.contains(_snappedPosition!) &&
        !_isDragging;
    final color = isActive
        ? Colors.white
        : Colors.white.withValues(alpha: 0.35);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
        letterSpacing: 1.2,
        height: 1.3,
      ),
    );
  }

  // ── Effect chips ─────────────────────────────────────────────────────

  Widget _buildEffectChips() {
    final choice = _selectedChoice;
    if (choice == null) {
      return Text(
        'No effect',
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.5),
          fontSize: 13,
        ),
      );
    }

    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: systemLabel(entry.key),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
        ),
      );
    }

    if (choice.colonistDelta != 0) {
      final sign = choice.colonistDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Colonists',
          delta: '$sign${choice.colonistDelta}',
          isPositive: choice.colonistDelta > 0,
        ),
      );
    }
    if (choice.probeDelta != 0) {
      final sign = choice.probeDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Probes',
          delta: '$sign${choice.probeDelta}',
          isPositive: choice.probeDelta > 0,
        ),
      );
    }
    if (choice.fuelDelta != 0) {
      final sign = choice.fuelDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Fuel',
          delta: '$sign${choice.fuelDelta}',
          isPositive: choice.fuelDelta > 0,
        ),
      );
    }
    if (choice.energyDelta != 0) {
      final sign = choice.energyDelta > 0 ? '+' : '';
      chips.add(
        _EffectChip(
          label: 'Energy',
          delta: '$sign${choice.energyDelta}',
          isPositive: choice.energyDelta > 0,
        ),
      );
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(
        const _EffectChip(
          label: 'Nav Data',
          delta: 'Acquired',
          isPositive: true,
        ),
      );
    }

    return Wrap(
      spacing: 8,
      runSpacing: 6,
      alignment: WrapAlignment.center,
      children: chips,
    );
  }
}

// ════════════════════════════════════════════════════════════════════════════
// Seed Tank
// ════════════════════════════════════════════════════════════════════════════

class _SeedTank extends StatelessWidget {
  const _SeedTank({
    required this.label,
    required this.fillPercent,
    required this.accentColor,
    required this.waveValue,
    required this.isWarning,
    required this.titleGlowValue,
  });

  final String label;
  final double fillPercent;
  final Color accentColor;
  final double waveValue;
  final bool isWarning;
  final double titleGlowValue;

  @override
  Widget build(BuildContext context) {
    final pct = (fillPercent * 100).round().clamp(0, 100);

    return LayoutBuilder(
      builder: (context, constraints) {
        final tankHeight = constraints.maxHeight;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: accentColor.withValues(alpha: 0.3),
              width: 1.5,
            ),
            color: Colors.black.withValues(alpha: 0.4),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              // Fill level.
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeOut,
                  height: fillPercent.clamp(0.0, 1.0) * tankHeight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        accentColor.withValues(alpha: 0.35),
                        accentColor.withValues(alpha: 0.12),
                      ],
                    ),
                  ),
                ),
              ),

              // Wave at the surface.
              Positioned(
                left: 0,
                right: 0,
                bottom: fillPercent.clamp(0.0, 1.0) * tankHeight - 8,
                child: SizedBox(
                  height: 16,
                  child: CustomPaint(
                    painter: _WavePainter(
                      animationValue: waveValue,
                      color: accentColor.withValues(alpha: 0.5),
                    ),
                    size: Size.infinite,
                  ),
                ),
              ),

              // Floating seed dots.
              ..._buildSeedDots(tankHeight),

              // Label at top.
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: accentColor.withValues(alpha: 0.8),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
                ),
              ),

              // Percentage centered.
              Center(
                child: Text(
                  '$pct%',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.9),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: accentColor.withValues(alpha: 0.6),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
              ),

              // Warning indicator.
              if (isWarning)
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Opacity(
                    opacity: 0.5 + 0.5 * sin(titleGlowValue * pi * 2),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.redAccent,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'LOW',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
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

  List<Widget> _buildSeedDots(double tankHeight) {
    final rng = Random(label.hashCode);
    final fillH = fillPercent.clamp(0.0, 1.0) * tankHeight;
    if (fillH < 20) return [];

    return List.generate(5, (i) {
      final baseY = rng.nextDouble() * (fillH - 20) + 10;
      final xFrac = 0.15 + rng.nextDouble() * 0.7;
      final bobPhase = rng.nextDouble() * 2 * pi;
      final bobAmp = 3.0 + rng.nextDouble() * 4.0;
      final yOffset = sin(waveValue * 2 * pi + bobPhase) * bobAmp;
      final dotSize = 4.0 + rng.nextDouble() * 3.0;
      final opacity = 0.3 + rng.nextDouble() * 0.4;

      return Positioned(
        bottom: baseY + yOffset,
        left: 0,
        right: 0,
        child: FractionallySizedBox(
          alignment: Alignment(xFrac * 2 - 1, 0),
          widthFactor: 0.0,
          child: Container(
            width: dotSize,
            height: dotSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: accentColor.withValues(alpha: opacity),
              boxShadow: [
                BoxShadow(
                  color: accentColor.withValues(alpha: opacity * 0.5),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

// ════════════════════════════════════════════════════════════════════════════
// Wave Painter
// ════════════════════════════════════════════════════════════════════════════

class _WavePainter extends CustomPainter {
  _WavePainter({required this.animationValue, required this.color});

  final double animationValue;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.width <= 0 || size.height <= 0) return;

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    final midY = size.height / 2;
    final amplitude = 3.0;
    final phaseShift = animationValue * 2 * pi;

    path.moveTo(0, size.height);
    for (double x = 0; x <= size.width; x += 2) {
      final y = midY + sin((x / size.width) * 2 * pi + phaseShift) * amplitude;
      path.lineTo(x, y);
    }
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_WavePainter old) => old.animationValue != animationValue;
}

// ════════════════════════════════════════════════════════════════════════════
// Glowing Slider Thumb
// ════════════════════════════════════════════════════════════════════════════

class _GlowingThumbShape extends SliderComponentShape {
  const _GlowingThumbShape({required this.glowColor});

  final Color glowColor;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) =>
      const Size.fromRadius(12);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    // Outer glow.
    canvas.drawCircle(
      center,
      16,
      Paint()
        ..color = glowColor.withValues(alpha: 0.15)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
    );

    // Mid glow.
    canvas.drawCircle(
      center,
      10,
      Paint()
        ..color = glowColor.withValues(alpha: 0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
    );

    // Thumb body.
    canvas.drawCircle(center, 8, Paint()..color = glowColor);

    // Inner highlight.
    canvas.drawCircle(
      center,
      4,
      Paint()..color = Colors.white.withValues(alpha: 0.6),
    );
  }
}

// ════════════════════════════════════════════════════════════════════════════
// Effect Chip
// ════════════════════════════════════════════════════════════════════════════

class _EffectChip extends StatelessWidget {
  const _EffectChip({
    required this.label,
    required this.delta,
    required this.isPositive,
  });

  final String label;
  final String delta;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    final color = isPositive ? Colors.greenAccent : Colors.redAccent;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color.withValues(alpha: 0.1),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        '$label $delta',
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
