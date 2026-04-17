import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/logic/event_engine.dart';
import 'package:stellar_broadcast/logic/guard_evaluator.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

/// Theme constants.
const _kBgColor = SpaceColors.deepSpace;
const _kAccent = SpaceColors.cyan;

/// Displays a narrative event with player choices and a typewriter text effect.
class EventScreen extends ConsumerStatefulWidget {
  const EventScreen({super.key, required this.event});

  final GameEvent event;

  @override
  ConsumerState<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends ConsumerState<EventScreen>
    with TickerProviderStateMixin {
  // Typewriter state.
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typewriterTimer;
  bool _typewriterDone = false;

  // Choice state.
  int? _selectedChoiceIndex;
  EventChoice? _resolvedChoice; // Holds the weighted-outcome-resolved choice.
  bool _showingOutcome = false;

  // Effect chips animation.
  bool _showEffectChips = false;

  // Keyboard navigation for web.
  int _focusedChoiceIndex = 0;
  final FocusNode _keyboardFocusNode = FocusNode();

  // Title glow animation.
  late final AnimationController _titleGlow;
  late final Animation<double> _titleGlowAnim;

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

    _startTypewriter();
    if (PlatformConfig.skipAnimations) _skipTypewriter();

    // Play SFX based on event category.
    _playEventSfx(widget.event);
  }

  void _playEventSfx(GameEvent event) {
    final sfx = GameSfx();
    switch (event.category) {
      case EventCategory.malfunction:
        sfx.play(GameSfx.minorDamage);
        break;
      case EventCategory.boon:
        sfx.play(GameSfx.interestingFind);
        break;
      case EventCategory.rare:
        // Pick between exotic sounds for rare events.
        final id = event.id.toLowerCase();
        if (id.contains('ghost') ||
            id.contains('derelict') ||
            id.contains('wreck')) {
          sfx.playLong(GameSfx.ghostShip);
        } else if (id.contains('alien') ||
            id.contains('native') ||
            id.contains('mothership')) {
          sfx.playLong(GameSfx.mothershipFlyBy);
        } else if (id.contains('whale') ||
            id.contains('creature') ||
            id.contains('leviathan')) {
          sfx.playLong(GameSfx.spaceWhales);
        } else if (id.contains('ruins') ||
            id.contains('library') ||
            id.contains('database') ||
            id.contains('dyson')) {
          sfx.playLong(GameSfx.alienTech);
        } else {
          sfx.playLong(GameSfx.interestingFind);
        }
        break;
      default:
        break;
    }
  }

  void _startTypewriter() {
    // Reveal 3 chars per 90ms tick (~33 chars/sec) — same visual cadence as
    // 1 char per 30ms but 1/3 the rebuilds, reducing battery/thermal drain.
    const charsPerTick = 3;
    _typewriterTimer = Timer.periodic(const Duration(milliseconds: 90), (
      timer,
    ) {
      if (_charIndex >= widget.event.narrative.length) {
        timer.cancel();
        if (mounted) setState(() => _typewriterDone = true);
        return;
      }
      if (mounted) {
        setState(() {
          _charIndex = (_charIndex + charsPerTick).clamp(
            0,
            widget.event.narrative.length,
          );
          _displayedText = widget.event.narrative.substring(0, _charIndex);
        });
      }
    });
  }

  void _skipTypewriter() {
    _typewriterTimer?.cancel();
    setState(() {
      _displayedText = widget.event.narrative;
      _charIndex = widget.event.narrative.length;
      _typewriterDone = true;
    });
  }

  Future<void> _onChoiceSelected(int index) async {
    if (_showingOutcome) return;
    final choice = widget.event.choices[index];

    // Check guard and probe cost.
    final voyage = ref.read(voyageProvider);
    if (!GuardEvaluator.evaluate(choice.guard, voyage)) return;
    final probes = voyage.probes;
    if (choice.probeCost > 0 && probes < choice.probeCost) return;

    HapticService().selection();
    GameSfx().playVaried(GameSfx.buttonClick);

    // Resolve weighted outcomes (no-op for single-outcome choices).
    final resolved = EventEngine.resolveOutcome(
      choice,
      ref.read(voyageProvider.notifier).seededRandom,
    );

    setState(() {
      _selectedChoiceIndex = index;
      _resolvedChoice = resolved;
      _showingOutcome = true;
    });

    // Show effect chips after a delay so the player reads the outcome first.
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) setState(() => _showEffectChips = true);
    });

    // Play outcome SFX synchronously so audio feedback is immediate.
    _playOutcomeSfx(resolved);

    // Apply effects via provider. Must await — handleEvent triggers async
    // planet generation for choices with opensPlanetScreen, and the continue
    // button at line ~393 reads currentPlanet to decide navigation.
    await ref.read(voyageProvider.notifier).handleEvent(resolved);
  }

  void _playOutcomeSfx(EventChoice choice) {
    final sfx = GameSfx();
    final haptic = HapticService();
    // Check if this was mostly damage or mostly repair.
    final totalDelta = choice.shipEffects.values.fold(0.0, (a, b) => a + b);
    if (choice.colonistDelta < -50) {
      sfx.play(GameSfx.criticalAlarm, volume: 0.8);
      haptic.error();
    } else if (totalDelta < -0.1) {
      sfx.play(GameSfx.minorDamage, volume: 0.7);
      haptic.heavy();
    } else if (totalDelta > 0.1) {
      sfx.play(GameSfx.systemRepair, volume: 0.7);
      haptic.success();
    }
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final choiceCount = widget.event.choices.length;

    if (!_typewriterDone) {
      // Any key skips typewriter.
      if (event.logicalKey == LogicalKeyboardKey.space ||
          event.logicalKey == LogicalKeyboardKey.enter) {
        _skipTypewriter();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    }

    if (_showingOutcome) {
      // Enter/Space triggers continue.
      if (event.logicalKey == LogicalKeyboardKey.enter ||
          event.logicalKey == LogicalKeyboardKey.space) {
        final selectedChoice =
            _resolvedChoice ??
            (_selectedChoiceIndex != null
                ? widget.event.choices[_selectedChoiceIndex!]
                : null);
        if (selectedChoice == null) return KeyEventResult.ignored;
        final hasPlanet = ref.read(voyageProvider).currentPlanet != null;
        if (selectedChoice.opensPlanetScreen && hasPlanet) {
          Navigator.of(context).pushReplacementNamed('/scan');
        } else {
          Navigator.of(context).pop();
        }
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    }

    // Navigate choices with arrow keys.
    if (event.logicalKey == LogicalKeyboardKey.arrowUp ||
        event.logicalKey == LogicalKeyboardKey.arrowLeft) {
      setState(() {
        _focusedChoiceIndex = (_focusedChoiceIndex - 1).clamp(
          0,
          choiceCount - 1,
        );
      });
      return KeyEventResult.handled;
    }
    if (event.logicalKey == LogicalKeyboardKey.arrowDown ||
        event.logicalKey == LogicalKeyboardKey.arrowRight) {
      setState(() {
        _focusedChoiceIndex = (_focusedChoiceIndex + 1).clamp(
          0,
          choiceCount - 1,
        );
      });
      return KeyEventResult.handled;
    }
    // Select choice with Enter/Space.
    if (event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.space) {
      if (_focusedChoiceIndex < choiceCount) {
        unawaited(_onChoiceSelected(_focusedChoiceIndex));
      }
      return KeyEventResult.handled;
    }
    // Number keys 1-9 select choices directly.
    final digit = _digitFromKey(event.logicalKey);
    if (digit != null && digit >= 1 && digit <= choiceCount) {
      unawaited(_onChoiceSelected(digit - 1));
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }

  int? _digitFromKey(LogicalKeyboardKey key) {
    final digitKeys = {
      LogicalKeyboardKey.digit1: 1,
      LogicalKeyboardKey.digit2: 2,
      LogicalKeyboardKey.digit3: 3,
      LogicalKeyboardKey.digit4: 4,
      LogicalKeyboardKey.digit5: 5,
      LogicalKeyboardKey.digit6: 6,
      LogicalKeyboardKey.digit7: 7,
      LogicalKeyboardKey.digit8: 8,
      LogicalKeyboardKey.digit9: 9,
    };
    return digitKeys[key];
  }

  @override
  void dispose() {
    _typewriterTimer?.cancel();
    _titleGlow.dispose();
    _keyboardFocusNode.dispose();
    super.dispose();
  }

  // ── Helper builders ──────────────────────────────────────────────────────

  Widget _buildTitle() {
    return AnimatedBuilder(
      animation: _titleGlowAnim,
      builder: (_, _) => Text(
        widget.event.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: ScreenInfo.of(context).scaledFontSize(26),
          fontWeight: FontWeight.bold,
          color: _kAccent,
          letterSpacing: 2,
          shadows: [
            Shadow(
              color: _kAccent.withValues(alpha: _titleGlowAnim.value),
              blurRadius: 20,
            ),
            Shadow(
              color: _kAccent.withValues(alpha: _titleGlowAnim.value * 0.5),
              blurRadius: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNarrativeCard({bool expanded = true}) {
    final resolvedForCard = _showingOutcome && _selectedChoiceIndex != null
        ? (_resolvedChoice ?? widget.event.choices[_selectedChoiceIndex!])
        : null;
    final card = _NarrativeCard(
      text: resolvedForCard?.outcome ?? _displayedText,
      isOutcome: _showingOutcome,
      choice: resolvedForCard,
      showEffectChips: _showEffectChips,
    );
    return expanded ? Expanded(child: card) : card;
  }

  Widget _buildTraderButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            GameSfx().playVaried(GameSfx.buttonClick);
            Navigator.of(context).pushReplacementNamed('/trader');
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: _kAccent.withValues(alpha: 0.6)),
              color: _kAccent.withValues(alpha: 0.08),
            ),
            child: Text(
              context.l10n.ui_event_enterTrade,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _kAccent,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChoiceButtons() {
    final event = widget.event;
    // Watch only fields that guards commonly reference. Avoids rebuilding
    // on unrelated voyage state changes (log entries, scanner readings, etc.).
    ref.watch(voyageProvider.select((v) => v.ship));
    ref.watch(voyageProvider.select((v) => v.probes));
    ref.watch(voyageProvider.select((v) => v.fuel));
    ref.watch(voyageProvider.select((v) => v.energy));
    ref.watch(voyageProvider.select((v) => v.colonists));
    ref.watch(voyageProvider.select((v) => v.encounterCount));
    ref.watch(voyageProvider.select((v) => v.planetsScanned));
    final voyage = ref.read(voyageProvider);
    final probes = voyage.probes;
    return event.choices.asMap().entries.map((entry) {
      final choice = entry.value;
      final hasProbes = probes >= choice.probeCost;
      final guardPasses = GuardEvaluator.evaluate(choice.guard, voyage);
      final disabled = (choice.probeCost > 0 && !hasProbes) || !guardPasses;
      return _ChoiceButton(
        text: choice.text,
        probeCost: choice.probeCost,
        disabled: disabled,
        guardFailed: !guardPasses,
        isFocused:
            _focusedChoiceIndex == entry.key &&
            _typewriterDone &&
            !_showingOutcome,
        onTap: disabled ? null : () => _onChoiceSelected(entry.key),
      );
    }).toList();
  }

  Widget _buildContinueButton() {
    final event = widget.event;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            GameSfx().playVaried(GameSfx.buttonClick);
            final selectedChoice =
                _resolvedChoice ??
                (_selectedChoiceIndex != null
                    ? event.choices[_selectedChoiceIndex!]
                    : null);
            if (selectedChoice == null) return;
            final hasPlanet = ref.read(voyageProvider).currentPlanet != null;
            if (selectedChoice.opensPlanetScreen && hasPlanet) {
              Navigator.of(context).pushReplacementNamed('/scan');
              return;
            }
            Navigator.of(context).pop();
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: _kAccent.withValues(alpha: 0.6)),
              color: _kAccent.withValues(alpha: 0.08),
            ),
            child: Text(
              context.l10n.ui_event_continue,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _kAccent,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTapHint() {
    return Text(
      context.l10n.ui_event_tapToSkip,
      style: TextStyle(
        color: _kAccent.withValues(alpha: 0.5),
        fontSize: 12,
        letterSpacing: 2,
      ),
    );
  }

  Widget _buildAdBanner() {
    return PremiumAdGate(child: AdaptiveBannerAd());
  }

  /// All action widgets: trader button, choice buttons, or continue button.
  List<Widget> _buildActions() {
    final event = widget.event;
    return [
      if (_typewriterDone && !_showingOutcome && event.openTraderScreen)
        _buildTraderButton(),
      if (_typewriterDone && !_showingOutcome && !event.openTraderScreen)
        FocusTraversalGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _buildChoiceButtons(),
          ),
        ),
      if (_showingOutcome) _buildContinueButton(),
      if (!_typewriterDone) _buildTapHint(),
    ];
  }

  // ── Portrait layout ─────────────────────────────────────────────────────

  Widget _buildPortrait() {
    final compact = ScreenInfo.of(context).isCompact;
    return ResponsiveContent(
      child: Column(
        children: [
          // Push the title toward the very top on compact phones — with ads
          // eating the bottom, every vertical dp saved here goes to the
          // narrative text box which otherwise clips outcome text/rewards.
          SizedBox(height: compact ? 4 : 32),
          _buildTitle(),
          SizedBox(height: compact ? 12 : 32),
          _buildNarrativeCard(),
          SizedBox(height: compact ? 14 : 24),
          ..._buildActions(),
          SizedBox(height: compact ? 6 : 12),
        ],
      ),
    );
  }

  // ── Landscape layout ────────────────────────────────────────────────────

  Widget _buildLandscape() {
    return Row(
      children: [
        // Left: title + narrative card (scrollable).
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
                    child: _buildNarrativeCard(expanded: false),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Right: choice buttons or continue button + effect chips.
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 24, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [..._buildActions(), const SizedBox(height: 8)],
            ),
          ),
        ),
      ],
    );
  }

  // ── Build ───────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    return EventPopScope(
      resolved: _showingOutcome,
      child: Focus(
        focusNode: _keyboardFocusNode,
        autofocus: true,
        onKeyEvent: _handleKeyEvent,
        child: Scaffold(
          backgroundColor: _kBgColor,
          body: Stack(
            children: [
              // Star field background.
              const EventStarField(),

              // Content.
              SafeArea(
                bottom: false,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: _typewriterDone ? null : _skipTypewriter,
                  child: Column(
                    children: [
                      Expanded(
                        child: isLandscape
                            ? _buildLandscape()
                            : _buildPortrait(),
                      ),
                      _buildAdBanner(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Narrative card ──────────────────────────────────────────────────────────

class _NarrativeCard extends StatelessWidget {
  const _NarrativeCard({
    required this.text,
    required this.isOutcome,
    this.choice,
    this.showEffectChips = false,
  });

  final String text;
  final bool isOutcome;
  final EventChoice? choice;
  final bool showEffectChips;

  /// Builds the list of effect chip data from the choice.
  List<_EffectChipData> _buildEffectChips(BuildContext context) {
    final c = choice;
    if (c == null) return [];
    final chips = <_EffectChipData>[];

    // Ship system effects.
    for (final entry in c.shipEffects.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: _systemLabel(entry.key, context),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
        ),
      );
    }

    // Colonist delta.
    if (c.colonistDelta != 0) {
      final sign = c.colonistDelta > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: context.l10n.ui_event_colonists,
          delta: '$sign${c.colonistDelta}',
          isPositive: c.colonistDelta > 0,
          color: Colors.orange,
        ),
      );
    }

    // Planet modifiers.
    for (final entry in c.planetModifiers.entries) {
      if (entry.value == 0) continue;
      final pct = (entry.value * 100).round();
      final sign = pct > 0 ? '+' : '';
      chips.add(
        _EffectChipData(
          label: entry.key.toUpperCase(),
          delta: '$sign$pct%',
          isPositive: entry.value > 0,
          color: SpaceColors.cyan,
        ),
      );
    }

    return chips;
  }

  static String _systemLabel(String key, BuildContext context) {
    switch (key) {
      case 'landingSystem':
        return context.l10n.ui_event_landing;
      case 'atmosphericScanner':
        return context.l10n.ui_event_atmScan;
      case 'gravimetricScanner':
        return context.l10n.ui_event_gravScan;
      case 'mineralScanner':
        return context.l10n.ui_event_minScan;
      case 'lifeSignsScanner':
        return context.l10n.ui_event_lifeScan;
      case 'temperatureScanner':
        return context.l10n.ui_event_tempScan;
      case 'waterScanner':
        return context.l10n.ui_event_h2oScan;
      default:
        return key.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    final chips = _buildEffectChips(context);
    final compact = ScreenInfo.of(context).isCompact;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 16 : 24,
        vertical: compact ? 14 : 24,
      ),
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: Text(
                text,
                key: ValueKey(isOutcome ? 'outcome' : 'narrative'),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.6,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            if (chips.isNotEmpty && showEffectChips) ...[
              const SizedBox(height: 16),
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
    );
  }
}

// ── Effect chip data ────────────────────────────────────────────────────────

class _EffectChipData {
  final String label;
  final String delta;
  final bool isPositive;
  final Color? color; // Override color (e.g. orange for colonists).

  const _EffectChipData({
    required this.label,
    required this.delta,
    required this.isPositive,
    this.color,
  });
}

// ── Effect chip widget ──────────────────────────────────────────────────────

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

// ── Choice button ───────────────────────────────────────────────────────────

class _ChoiceButton extends StatefulWidget {
  const _ChoiceButton({
    required this.text,
    this.probeCost = 0,
    this.disabled = false,
    this.guardFailed = false,
    this.isFocused = false,
    required this.onTap,
  });

  final String text;
  final int probeCost;
  final bool disabled;

  /// True when the choice is disabled because its guard expression failed.
  final bool guardFailed;

  /// True when this choice has keyboard focus (web/desktop).
  final bool isFocused;
  final VoidCallback? onTap;

  @override
  State<_ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<_ChoiceButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shimmer;

  @override
  void initState() {
    super.initState();
    _shimmer = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat();
  }

  @override
  void dispose() {
    _shimmer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDisabled = widget.disabled;
    final isFocused = widget.isFocused && !isDisabled;
    final borderColor = isDisabled
        ? Colors.grey.withValues(alpha: 0.3)
        : isFocused
        ? _kAccent
        : _kAccent.withValues(alpha: 0.6);
    final textColor = isDisabled
        ? Colors.grey.withValues(alpha: 0.4)
        : _kAccent;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: _shimmer,
          builder: (_, _) {
            final shimmerAlpha = isDisabled
                ? 0.0
                : 0.15 * (0.5 + 0.5 * sin(_shimmer.value * 2 * pi));
            return Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onTap,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: borderColor,
                      width: isFocused ? 2.0 : 1.0,
                    ),
                    gradient: isDisabled
                        ? null
                        : LinearGradient(
                            colors: [
                              _kAccent.withValues(
                                alpha: isFocused ? 0.12 : 0.05,
                              ),
                              _kAccent.withValues(alpha: shimmerAlpha),
                              _kAccent.withValues(
                                alpha: isFocused ? 0.12 : 0.05,
                              ),
                            ],
                            stops: [0.0, _shimmer.value, 1.0],
                          ),
                    boxShadow: isFocused
                        ? [
                            BoxShadow(
                              color: _kAccent.withValues(alpha: 0.3),
                              blurRadius: 12,
                            ),
                          ]
                        : null,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.text,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      if (widget.guardFailed)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Icon(
                            Icons.lock_outline,
                            size: 16,
                            color: Colors.grey.withValues(alpha: 0.4),
                          ),
                        ),
                      if (widget.probeCost > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: isDisabled
                                ? Colors.grey.withValues(alpha: 0.1)
                                : Colors.orange.withValues(alpha: 0.2),
                            border: Border.all(
                              color: isDisabled
                                  ? Colors.grey.withValues(alpha: 0.3)
                                  : Colors.orange.withValues(alpha: 0.5),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.satellite_alt,
                                size: 12,
                                color: isDisabled
                                    ? Colors.grey.withValues(alpha: 0.4)
                                    : Colors.orange,
                              ),
                              const SizedBox(width: 3),
                              Text(
                                '${widget.probeCost}',
                                style: TextStyle(
                                  fontFamily: 'monospace',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: isDisabled
                                      ? Colors.grey.withValues(alpha: 0.4)
                                      : Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
