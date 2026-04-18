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

const _kBgColor = SpaceColors.deepSpace;
const _kEarthColor = Color(0xFF4FC3F7);
const _kWarmGold = Color(0xFFFFB74D);

class EarthGoodbyeScreen extends ConsumerStatefulWidget {
  const EarthGoodbyeScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<EarthGoodbyeScreen> createState() => _EarthGoodbyeScreenState();
}

class _EarthGoodbyeScreenState extends ConsumerState<EarthGoodbyeScreen>
    with TickerProviderStateMixin, EventTypewriterMixin<EarthGoodbyeScreen> {
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;
  late final AnimationController _signalWave;
  late final AnimationController _earthPulse;
  late final Animation<double> _earthPulseAnim;

  int? _selectedChoice;
  bool _resolved = false;
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

    _signalWave = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    )..repeat();

    _earthPulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    )..repeat(reverse: true);
    _earthPulseAnim = Tween<double>(begin: 0.55, end: 1.0).animate(
      CurvedAnimation(parent: _earthPulse, curve: Curves.easeInOut),
    );

    initTypewriter(widget.event.narrative);
    if (PlatformConfig.skipAnimations) skipTypewriter();

    GameSfx().playLong(GameSfx.alienTech);
  }

  @override
  void dispose() {
    disposeTypewriter();
    _titleGlow.dispose();
    _signalWave.dispose();
    _earthPulse.dispose();
    super.dispose();
  }

  void _onChoiceMade(int index) {
    if (_resolved) return;
    if (index < 0 || index >= widget.event.choices.length) return;

    HapticService().selection();
    GameSfx().play(GameSfx.interestingFind);

    setState(() {
      _selectedChoice = index;
      _resolved = true;
    });

    unawaited(
      ref.read(voyageProvider.notifier).handleEvent(widget.event.choices[index]),
    );

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) setState(() => _showEffects = true);
    });
  }

  bool get _isPositiveOutcome {
    if (_selectedChoice == null) return true;
    final choice = widget.event.choices[_selectedChoice!];
    double sum = 0;
    for (final v in choice.shipEffects.values) {
      sum += v;
    }
    sum += choice.fuelDelta + choice.energyDelta + choice.probeDelta;
    sum += choice.colonistDelta * 0.01;
    return sum >= 0;
  }

  // ── Build ────────────────────────────────────────────────────────────

  Widget _buildTitle() => EventAnimatedTitle(
        text: "HUMANITY'S LAST WORDS",
        glow: _titleGlowAnim,
        accentColor: _kWarmGold,
        letterSpacing: 3,
        secondaryGlowColor: _kEarthColor,
        secondaryGlowAlphaScale: 0.4,
      );

  Widget _buildNarrativeCard() => EventNarrativeCard(
        accentColor: _kEarthColor,
        displayText: displayedText,
        outcomeText: (_resolved && _selectedChoice != null)
            ? widget.event.choices[_selectedChoice!].outcome
            : null,
        outcomeIsPositive: _isPositiveOutcome,
      );

  Widget _buildVisualArea() {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: Listenable.merge([_signalWave, _earthPulse]),
        builder: (_, _) => CustomPaint(
          size: Size.infinite,
          painter: _EarthScenePainter(
            waveValue: _signalWave.value,
            pulseValue: _earthPulseAnim.value,
            faded: _resolved,
          ),
        ),
      ),
    );
  }

  Widget _buildChoices() {
    if (_resolved) return const SizedBox.shrink();
    final choices = widget.event.choices;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (int i = 0; i < choices.length; i++) ...[
          _ChoiceButton(
            icon: _iconForChoice(i),
            label: choices[i].text,
            accentColor: i == 0
                ? _kWarmGold
                : (i == 1 ? _kEarthColor : Colors.white70),
            glow: _titleGlowAnim,
            onTap: () => _onChoiceMade(i),
          ),
          if (i < choices.length - 1) const SizedBox(height: 10),
        ],
      ],
    );
  }

  IconData _iconForChoice(int i) {
    // Choice 0: broadcast to ship.
    // Choice 1: share with command crew only.
    // Choice 2: archive for the colony.
    switch (i) {
      case 0:
        return Icons.campaign_outlined;
      case 1:
        return Icons.groups_outlined;
      case 2:
        return Icons.lock_clock_outlined;
      default:
        return Icons.radio_outlined;
    }
  }

  Widget _buildContinue() {
    if (!_resolved) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: EventContinueButton(
        accentColor: _kWarmGold,
        onTap: () {
          GameSfx().playVaried(GameSfx.buttonClick);
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Widget _buildSkipHint() {
    if (_resolved || typewriterDone) return const SizedBox.shrink();
    return Text(
      'TAP TO SKIP',
      style: TextStyle(
        color: _kEarthColor.withValues(alpha: 0.5),
        fontSize: 12,
        letterSpacing: 2,
      ),
    );
  }

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
            const EventStarField(
              farStarCount: 90,
              midStarCount: 25,
              nearStarCount: 8,
            ),
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
                const SizedBox(height: 12),
                Expanded(child: _buildVisualArea()),
                if (typewriterDone && !_resolved) ...[
                  const SizedBox(height: 12),
                  _buildChoices(),
                ],
                if (_showEffects) ...[
                  const SizedBox(height: 10),
                  _buildEffectChips(),
                ],
                if (!_resolved && !typewriterDone) ...[
                  const SizedBox(height: 8),
                  _buildSkipHint(),
                ],
                if (_resolved) ...[
                  const SizedBox(height: 12),
                  _buildContinue(),
                ],
                const SizedBox(height: 12),
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
                              if (typewriterDone && !_resolved) ...[
                                const SizedBox(height: 12),
                                _buildChoices(),
                              ],
                              if (_showEffects) ...[
                                const SizedBox(height: 10),
                                _buildEffectChips(),
                              ],
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (!_resolved && !typewriterDone) _buildSkipHint(),
                      if (_resolved) _buildContinue(),
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
        PremiumAdGate(child: AdaptiveBannerAd()),
      ],
    );
  }

  Widget _buildEffectChips() {
    if (_selectedChoice == null) return const SizedBox.shrink();
    final choice = widget.event.choices[_selectedChoice!];

    final chips = <Widget>[];

    for (final entry in choice.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    for (final entry in choice.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: systemLabel(entry.key),
        delta: '$sign$pct%',
        isPositive: entry.value > 0,
      ));
    }

    if (choice.colonistDelta != 0) {
      final sign = choice.colonistDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Colonists',
        delta: '$sign${choice.colonistDelta}',
        isPositive: choice.colonistDelta > 0,
      ));
    }
    if (choice.fuelDelta != 0) {
      final sign = choice.fuelDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Fuel',
        delta: '$sign${choice.fuelDelta}',
        isPositive: choice.fuelDelta > 0,
      ));
    }
    if (choice.energyDelta != 0) {
      final sign = choice.energyDelta > 0 ? '+' : '';
      chips.add(_EffectChip(
        label: 'Energy',
        delta: '$sign${choice.energyDelta}',
        isPositive: choice.energyDelta > 0,
      ));
    }
    if (choice.nextPlanetModifiers.isNotEmpty) {
      chips.add(const _EffectChip(
        label: 'Legacy',
        delta: 'Inscribed',
        isPositive: true,
      ));
    }

    if (chips.isEmpty) {
      return Text(
        'Recorded',
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.5),
          fontSize: 13,
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

// ─── Choice button ────────────────────────────────────────────────────────

class _ChoiceButton extends StatelessWidget {
  const _ChoiceButton({
    required this.icon,
    required this.label,
    required this.accentColor,
    required this.glow,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color accentColor;
  final Animation<double> glow;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: glow,
      builder: (_, _) {
        final glowAlpha = 0.08 + glow.value * 0.10;
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: accentColor.withValues(alpha: 0.45)),
                color: accentColor.withValues(alpha: glowAlpha),
                boxShadow: [
                  BoxShadow(
                    color: accentColor.withValues(alpha: glow.value * 0.15),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(icon, color: accentColor, size: 22),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      label,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.92),
                        fontSize: 14,
                        height: 1.35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ─── Effect chip ──────────────────────────────────────────────────────────

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

// ─── Earth scene painter ─────────────────────────────────────────────────

class _EarthScenePainter extends CustomPainter {
  _EarthScenePainter({
    required this.waveValue,
    required this.pulseValue,
    required this.faded,
  });

  final double waveValue;
  final double pulseValue;
  final bool faded;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.width <= 0 || size.height <= 0) return;

    final dimmer = faded ? 0.5 : 1.0;
    final cx = size.width / 2;

    // Earth sits high in the frame; rings radiate toward the viewer (downward).
    final earthCenter = Offset(cx, size.height * 0.30);
    final earthRadius = min(size.width, size.height) * 0.055;

    _drawSignalRings(canvas, earthCenter, size, dimmer);
    _drawEarth(canvas, earthCenter, earthRadius, dimmer);
    _drawSpectrogram(canvas, size, dimmer);
  }

  void _drawSignalRings(
    Canvas canvas,
    Offset origin,
    Size size,
    double dimmer,
  ) {
    const ringCount = 5;
    final maxR = size.width * 0.55;
    for (int i = 0; i < ringCount; i++) {
      final t = ((waveValue + i / ringCount) % 1.0);
      final radius = 20.0 + t * maxR;
      final alpha = (1.0 - t) * 0.35 * dimmer;
      if (alpha <= 0) continue;
      canvas.drawCircle(
        origin,
        radius,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.2
          ..color = _kEarthColor.withValues(alpha: alpha.clamp(0.0, 1.0))
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
      );
    }
  }

  void _drawEarth(
    Canvas canvas,
    Offset center,
    double radius,
    double dimmer,
  ) {
    // Outer halo.
    canvas.drawCircle(
      center,
      radius * 3,
      Paint()
        ..color = _kEarthColor.withValues(alpha: 0.08 * pulseValue * dimmer)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius * 1.2),
    );
    // Mid glow.
    canvas.drawCircle(
      center,
      radius * 1.8,
      Paint()
        ..color = _kEarthColor.withValues(alpha: 0.20 * pulseValue * dimmer)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, radius * 0.6),
    );
    // Earth disc — radial gradient from warm gold sunlit side to shadowed cyan.
    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.3, -0.4),
          radius: 1.1,
          colors: [
            _kWarmGold.withValues(alpha: 0.9 * dimmer),
            _kEarthColor.withValues(alpha: 0.85 * dimmer),
            _kEarthColor.withValues(alpha: 0.55 * dimmer),
          ],
          stops: const [0.0, 0.55, 1.0],
        ).createShader(rect),
    );
    // Rim highlight.
    canvas.drawCircle(
      center,
      radius,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.8
        ..color = _kEarthColor.withValues(alpha: 0.9 * dimmer),
    );
    // Terminator shadow — soft dark crescent on the night side.
    canvas.drawCircle(
      Offset(center.dx + radius * 0.5, center.dy + radius * 0.3),
      radius * 0.95,
      Paint()
        ..color = Colors.black.withValues(alpha: 0.35 * dimmer)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6),
    );
  }

  void _drawSpectrogram(Canvas canvas, Size size, double dimmer) {
    // Voice waveform strip near the bottom of the visual area.
    final baseY = size.height * 0.82;
    final stripHeight = size.height * 0.14;
    final left = size.width * 0.08;
    final right = size.width * 0.92;
    final width = right - left;

    // Subtle frame.
    final framePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.6
      ..color = _kEarthColor.withValues(alpha: 0.25 * dimmer);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(left - 4, baseY - stripHeight / 2 - 4,
            width + 8, stripHeight + 8),
        const Radius.circular(6),
      ),
      framePaint,
    );

    // Waveform — amplitude modulated so it breathes like speech.
    final barCount = 48;
    final barSpacing = width / barCount;
    final rng = Random(7);
    final envelope = 0.55 + 0.45 * sin(waveValue * 2 * pi);
    for (int i = 0; i < barCount; i++) {
      // Phase-shift each bar so the wave rolls left-to-right.
      final phase = (i / barCount + waveValue) * 2 * pi;
      final base = 0.2 + 0.8 * rng.nextDouble();
      final amp = (sin(phase) * 0.6 + 0.4).abs() * base * envelope;
      final barHeight = stripHeight * amp;
      final x = left + i * barSpacing + barSpacing * 0.3;
      final barWidth = barSpacing * 0.5;
      final top = baseY - barHeight / 2;
      final color = Color.lerp(_kEarthColor, _kWarmGold, amp.clamp(0.0, 1.0))!
          .withValues(alpha: (0.45 + 0.45 * amp) * dimmer);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(x, top, barWidth, barHeight),
          const Radius.circular(1),
        ),
        Paint()..color = color,
      );
    }

    // Center scan line sweeping across, tinted warm gold.
    final scanX = left + (waveValue * width);
    canvas.drawRect(
      Rect.fromLTWH(scanX, baseY - stripHeight / 2, 1.5, stripHeight),
      Paint()
        ..color = _kWarmGold.withValues(alpha: 0.55 * dimmer)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3),
    );
  }

  @override
  bool shouldRepaint(_EarthScenePainter old) =>
      old.waveValue != waveValue ||
      old.pulseValue != pulseValue ||
      old.faded != faded;
}
