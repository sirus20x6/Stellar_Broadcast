import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:share_plus/share_plus.dart';

import 'package:stellar_broadcast/models/voyage_log_entry.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/leaderboard_api.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:stellar_broadcast/utils/constants.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = SpaceColors.cyan;
const _kWarning = Color(0xFFFF1744);

/// Dramatic game-over screen shown when the voyage ends in catastrophic failure.
class GameOverScreen extends ConsumerStatefulWidget {
  const GameOverScreen({super.key});

  @override
  ConsumerState<GameOverScreen> createState() => _GameOverScreenState();
}

class _GameOverScreenState extends ConsumerState<GameOverScreen>
    with TickerProviderStateMixin {
  // Phase controllers — staggered reveal.
  late final AnimationController _phase1Controller; // Warning icon + "MISSION FAILED"
  late final AnimationController _phase2Controller; // Game over reason
  late final AnimationController _phase3Controller; // Epilogue
  late final AnimationController _phase4Controller; // Voyage stats
  late final AnimationController _phase5Controller; // Buttons

  // Warning icon pulse.
  late final AnimationController _pulseController;

  // Phase 1 glow animations.
  late final Animation<double> _glowExpand;
  late final Animation<double> _glowOpacity;

  String _reason = '';
  int _encountersSurvived = 0;
  int _probesRemaining = 0;
  double _finalHealthAvg = 0.0;
  int _colonistsRemaining = 0;
  int _planetsSkipped = 0;
  double _totalDamageTaken = 0.0;
  int _fuelRemaining = 0;
  int _energyRemaining = 0;
  String _seedCode = '';

  @override
  void initState() {
    super.initState();

    // Read voyage state.
    final voyage = ref.read(voyageProvider);
    _reason = voyage.gameOverReason;
    _encountersSurvived = voyage.encounterCount;
    _probesRemaining = voyage.probes;
    _finalHealthAvg = voyage.ship.averageHealth;
    _colonistsRemaining = voyage.colonists;
    _planetsSkipped = voyage.planetsSkipped;
    _totalDamageTaken = voyage.totalDamageTaken;
    _fuelRemaining = voyage.fuel;
    _energyRemaining = voyage.energy;
    _seedCode = seedToCode(voyage.seed);

    // Fade out music for dramatic silence, then alarm + haptics. Cancel
    // any encounter-screen long audio WITHOUT resuming bg music — game over
    // wants silence.
    GameSfx().stopAllLongAudio(resumeBgMusic: false);
    GameMusic().stop(fadeOutSeconds: 0.5);
    GameSfx().play(GameSfx.criticalAlarm, volume: 0.9);
    HapticService().heavy();
    Future.delayed(const Duration(milliseconds: 200), () {
      HapticService().error();
    });

    // Defer legacy update to avoid modifying provider state during build.
    final voyageSeed = voyage.seed;
    final voyageIsDaily = voyage.isDaily;
    final reason = _reason;
    final voyageEncounters = voyage.encounterCount;
    final voyageColonists = voyage.colonists;
    final voyagePlanetsScanned = voyage.planetsScanned;
    final voyagePlanetsSkipped = voyage.planetsSkipped;
    final voyageFuelConsumed = voyage.fuelConsumed;
    final voyageEnergyConsumed = voyage.energyConsumed;
    final voyageDamageTaken = voyage.totalDamageTaken;
    final voyageKeyEvents = List<String>.from(voyage.seenEventIds);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(legacyProvider.notifier).addVoyageResult(
        VoyageLogEntry(
          isGameOver: true,
          gameOverReason: reason,
          seed: voyageSeed,
          encounterCount: voyageEncounters,
          colonistsLanded: voyageColonists,
          planetsScanned: voyagePlanetsScanned,
          planetsSkipped: voyagePlanetsSkipped,
          fuelConsumed: voyageFuelConsumed,
          energyConsumed: voyageEnergyConsumed,
          totalDamageTaken: voyageDamageTaken,
          keyEvents: voyageKeyEvents,
          timestamp: DateTime.now().millisecondsSinceEpoch,
          isDaily: voyageIsDaily,
        ),
        isDaily: voyageIsDaily,
      );

      // Encounters still count on game over.
      PlayGamesService.submitScore(voyageEncounters,
        androidId: AppConstants.kLeaderboardEncountersAndroid,
        iosId: AppConstants.kLeaderboardEncountersIos,
      );

      // Submit to self-hosted leaderboard.
      final cmdName = PlayGamesService.playerName ?? 'Commander';
      LeaderboardApi.submitScore(
        player: cmdName, score: voyageEncounters, board: 'encounters',
      );

      AnalyticsService().logEvent(
        name: QaEvents.leaderboardSubmitted,
        parameters: {'board': 'encounters', 'score': voyageEncounters},
      );
    });

    // Warning icon pulse — continuous.
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    // Phase 1: Warning icon + "MISSION FAILED" text with red glow.
    _phase1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _glowExpand = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _phase1Controller, curve: Curves.easeOutCubic),
    );
    _glowOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _phase1Controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeOut),
      ),
    );

    // Phase 2: Game over reason.
    _phase2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Phase 3: Epilogue.
    _phase3Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    // Phase 4: Stats.
    _phase4Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Phase 5: Buttons.
    _phase5Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _startPhaseSequence();
  }

  String _getEpilogue(BuildContext context) {
    final lowerReason = _reason.toLowerCase();

    if (lowerReason.contains('colonist') || lowerReason.contains('empty')) {
      return context.l10n.ui_gameOver_epilogueColonists;
    } else if (lowerReason.contains('hull')) {
      return context.l10n.ui_gameOver_epilogueHull;
    } else if (lowerReason.contains('nav')) {
      return context.l10n.ui_gameOver_epilogueNav;
    } else if (lowerReason.contains('cryopod')) {
      return context.l10n.ui_gameOver_epilogueCryopod;
    }

    return context.l10n.ui_gameOver_epilogueDefault;
  }

  Future<void> _startPhaseSequence() async {
    if (PlatformConfig.skipAnimations) {
      _phase1Controller.value = 1.0;
      _phase2Controller.value = 1.0;
      _phase3Controller.value = 1.0;
      _phase4Controller.value = 1.0;
      _phase5Controller.value = 1.0;
      return;
    }
    await Future.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    await _phase1Controller.forward();

    await Future.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;
    await _phase2Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase3Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase4Controller.forward();

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await _phase5Controller.forward();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _phase1Controller.dispose();
    _phase2Controller.dispose();
    _phase3Controller.dispose();
    _phase4Controller.dispose();
    _phase5Controller.dispose();
    super.dispose();
  }

  Widget _buildWarningAndReason(BuildContext context, ScreenInfo screen, String epilogue) {
    return Column(
      children: [
        // Phase 1: Pulsing warning icon + "MISSION FAILED".
        AnimatedBuilder(
          animation: _phase1Controller,
          builder: (_, __) => Opacity(
            opacity: _glowOpacity.value,
            child: Column(
              children: [
                // Pulsing warning icon with red glow.
                AnimatedBuilder(
                  animation: _pulseController,
                  builder: (_, __) {
                    final pulse = 0.7 + 0.3 * _pulseController.value;
                    return Container(
                      width: 120 + _glowExpand.value * 60,
                      height: 120 + _glowExpand.value * 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: _kWarning.withValues(
                                alpha: 0.4 *
                                    _glowOpacity.value *
                                    pulse),
                            blurRadius:
                                40 + _glowExpand.value * 40,
                            spreadRadius:
                                _glowExpand.value * 20 * pulse,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        size: 80 + _glowExpand.value * 20,
                        color: _kWarning.withValues(
                            alpha: _glowOpacity.value * pulse),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
                Text(
                  context.l10n.ui_gameOver_missionFailed,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screen.scaledFontSize(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                        .withValues(alpha: _glowOpacity.value),
                    letterSpacing: 4,
                    fontFamily: 'monospace',
                    shadows: [
                      Shadow(
                        color: _kWarning.withValues(
                            alpha: _glowOpacity.value * 0.8),
                        blurRadius: 30,
                      ),
                      Shadow(
                        color: _kWarning.withValues(
                            alpha: _glowOpacity.value * 0.4),
                        blurRadius: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        if (_reason.isNotEmpty) const SizedBox(height: 40),

        // Phase 2: Game over reason text. Skipped entirely if there's no
        // reason set — otherwise we'd render an empty red box, which shipped
        // once via a QA screenshot.
        if (_reason.isNotEmpty)
          AnimatedBuilder(
          animation: _phase2Controller,
          builder: (_, __) {
            final opacity =
                _phase2Controller.value.clamp(0.0, 1.0);
            final slide =
                15.0 * (1.0 - _phase2Controller.value);
            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(0, slide),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color:
                            _kWarning.withValues(alpha: 0.6)),
                    color: _kWarning.withValues(alpha: 0.08),
                    boxShadow: [
                      BoxShadow(
                        color:
                            _kWarning.withValues(alpha: 0.15),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Text(
                    _reason,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: _kWarning,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monospace',
                      letterSpacing: 2,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            );
          },
        ),

        const SizedBox(height: 36),

        // Phase 3: Epilogue text.
        AnimatedBuilder(
          animation: _phase3Controller,
          builder: (_, __) {
            final opacity =
                _phase3Controller.value.clamp(0.0, 1.0);
            final slide =
                20.0 * (1.0 - _phase3Controller.value);
            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(0, slide),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color:
                            _kWarning.withValues(alpha: 0.15)),
                    color: _kBgColor.withValues(alpha: 0.85),
                  ),
                  child: Text(
                    epilogue,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      height: 1.6,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildStatsAndButtons(BuildContext context) {
    return Column(
      children: [
        // Phase 4: Voyage stats.
        AnimatedBuilder(
          animation: _phase4Controller,
          builder: (_, __) {
            final opacity =
                _phase4Controller.value.clamp(0.0, 1.0);
            final scale =
                0.9 + 0.1 * _phase4Controller.value;
            return Opacity(
              opacity: opacity,
              child: Transform.scale(
                scale: scale,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color:
                            _kAccent.withValues(alpha: 0.25)),
                    color: _kBgColor.withValues(alpha: 0.9),
                  ),
                  child: Column(
                    children: [
                      Text(
                        context.l10n.ui_gameOver_voyageRecord,
                        style: TextStyle(
                          color:
                              _kAccent.withValues(alpha: 0.7),
                          fontSize: 14,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'monospace',
                        ),
                      ),
                      const SizedBox(height: 16),
                      _StatRow(
                        label: context.l10n.ui_gameOver_encountersSurvived,
                        value: '$_encountersSurvived',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_probesRemaining,
                        value: '$_probesRemaining',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_colonistsRemaining,
                        value: '$_colonistsRemaining',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_finalShipHealth,
                        value:
                            '${(_finalHealthAvg * 100).toStringAsFixed(1)}%',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_planetsSkipped,
                        value: '$_planetsSkipped',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_damageTaken,
                        value:
                            '${(_totalDamageTaken * 100).toStringAsFixed(1)}%',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_fuelRemaining,
                        value: '$_fuelRemaining',
                      ),
                      const SizedBox(height: 10),
                      _StatRow(
                        label: context.l10n.ui_gameOver_energyRemaining,
                        value: '$_energyRemaining',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        const SizedBox(height: 48),

        // Phase 5: Buttons.
        AnimatedBuilder(
          animation: _phase5Controller,
          builder: (_, __) {
            final opacity =
                _phase5Controller.value.clamp(0.0, 1.0);
            return Opacity(
              opacity: opacity,
              child: Column(
                children: [
                  _GameOverButton(
                    label: context.l10n.ui_gameOver_challengeFriend,
                    isPrimary: false,
                    icon: Icons.share,
                    onTap: () {
                      final text = context.l10n.ui_gameOver_shareText(_reason, _seedCode);
                      Share.share(text);
                    },
                  ),
                  const SizedBox(height: 16),
                  _GameOverButton(
                    label: context.l10n.ui_gameOver_viewLegacy,
                    isPrimary: true,
                    onTap: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil(
                      '/legacy',
                      (route) => route.isFirst,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _GameOverButton(
                    label: context.l10n.ui_gameOver_newVoyage,
                    isPrimary: false,
                    onTap: () {
                      ref
                          .read(voyageProvider.notifier)
                          .startVoyage(l10n: context.l10n);
                      Navigator.of(context)
                          .pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, ScreenInfo screen, String epilogue) {
    final isLandscape = screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side: warning icon, reason, epilogue.
            Expanded(
              child: SingleChildScrollView(
                child: _buildWarningAndReason(context, screen, epilogue),
              ),
            ),
            const SizedBox(width: 24),
            // Right side: stats + buttons.
            Expanded(
              child: SingleChildScrollView(
                child: _buildStatsAndButtons(context),
              ),
            ),
          ],
        ),
      );
    }

    // Portrait: original vertical layout.
    return Column(
      children: [
        const SizedBox(height: 60),
        _buildWarningAndReason(context, screen, epilogue),
        const SizedBox(height: 36),
        _buildStatsAndButtons(context),
        const SizedBox(height: 40),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final epilogue = _getEpilogue(context);
    final screen = ScreenInfo.of(context);

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          const EventStarField(
            farStarCount: 100,
            midStarCount: 40,
            nearStarCount: 15,
          ),

          // Content.
          SafeArea(
            child: SingleChildScrollView(
              child: ResponsiveContent(
                child: _buildContent(context, screen, epilogue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Stat row ─────────────────────────────────────────────────────────────────

class _StatRow extends StatelessWidget {
  const _StatRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.5),
            fontSize: 13,
            fontFamily: 'monospace',
            letterSpacing: 1,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'monospace',
          ),
        ),
      ],
    );
  }
}

// ── Game over button ─────────────────────────────────────────────────────────

class _GameOverButton extends StatelessWidget {
  const _GameOverButton({
    required this.label,
    required this.isPrimary,
    required this.onTap,
    this.icon,
  });

  final String label;
  final bool isPrimary;
  final VoidCallback onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final color = isPrimary ? _kWarning : _kAccent;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isPrimary ? color : color.withValues(alpha: 0.4),
            width: isPrimary ? 2 : 1,
          ),
          color: isPrimary
              ? color.withValues(alpha: 0.15)
              : Colors.transparent,
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: color.withValues(alpha: 0.2),
                    blurRadius: 16,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: isPrimary ? Colors.white : color, size: 20),
              const SizedBox(width: 10),
            ],
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isPrimary ? Colors.white : color,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
