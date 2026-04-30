import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' as intl;
import 'package:path_provider/path_provider.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:share_plus/share_plus.dart';

import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show voyageProvider, seedToCode;
import 'package:stellar_broadcast/services/leaderboard_api.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:stellar_broadcast/utils/constants.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/scroll_padding.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/widgets/share_run_card.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = SpaceColors.cyan;

/// Locale-aware integer formatter cache. NumberFormat instances are
/// expensive to construct, so we cache one per locale tag and reuse it across
/// the score tween (which calls _formatScore on every frame).
final Map<String, intl.NumberFormat> _scoreFormatters = {};

intl.NumberFormat _formatterFor(BuildContext context) {
  final tag = Localizations.localeOf(context).toLanguageTag();
  return _scoreFormatters.putIfAbsent(
    tag,
    () => intl.NumberFormat.decimalPattern(tag),
  );
}

/// Format an integer with locale-appropriate grouping separators
/// (e.g. en: 85,200 / de: 85.200 / fr: 85 200 / hi: 85,200).
String _formatScore(BuildContext context, int score) =>
    _formatterFor(context).format(score);

Map<String, String> _achievementNames(BuildContext context) => {
  'first_landing': context.l10n.ui_ending_achievementFirstLanding,
  'golden_age': context.l10n.ui_ending_achievementGoldenAge,
  'survivor': context.l10n.ui_ending_achievementSurvivor,
  'explorer': context.l10n.ui_ending_achievementExplorer,
  'perfectionist': context.l10n.ui_ending_achievementPerfectionist,
  'death_world_survivor': context.l10n.ui_ending_achievementDeathWorldSurvivor,
  'full_crew': context.l10n.ui_ending_achievementFullCrew,
  'probe_master': context.l10n.ui_ending_achievementProbeMaster,
  'iron_hull': context.l10n.ui_ending_achievementIronHull,
  'no_scan': context.l10n.ui_ending_achievementLeapOfFaith,
};

/// Dramatic ending reveal with phased animations.
class EndingScreen extends ConsumerStatefulWidget {
  const EndingScreen({super.key});

  @override
  ConsumerState<EndingScreen> createState() => _EndingScreenState();
}

class _EndingScreenState extends ConsumerState<EndingScreen>
    with TickerProviderStateMixin {
  // Phase controllers — staggered reveal.
  late final AnimationController _phase1Controller; // "COLONY ESTABLISHED"
  late final AnimationController _phase2Controller; // Score count-up
  late final AnimationController _phase3Controller; // Tier badge
  late final AnimationController _phase4Controller; // Epilogue
  late final AnimationController _phase5Controller; // Legacy points

  // Glow expansion for phase 1.
  late final Animation<double> _glowExpand;
  late final Animation<double> _glowOpacity;

  // Score count animation. Not `final` because it's initialized with a
  // placeholder (AlwaysStoppedAnimation(0)) before the score is calculated,
  // then replaced with the real IntTween once [EndingCalculator.calculate]
  // returns. Deferring the calc keeps the first frame unblocked.
  late Animation<int> _scoreCount;
  int _finalScore = 0;
  String _tier = '';
  String _epilogue = '';
  int _legacyPoints = 0;
  String _governmentType = '';
  String _cultureLevel = '';
  String _technologyLevel = '';
  String _constructionLevel = '';
  String _nativeRelations = '';
  String _colonyDescription = '';
  String _landscapeDescription = '';
  String _planetName = '';
  ScoreBreakdown? _breakdown;
  List<String> _newAchievements = [];
  int _planetsSkipped = 0;
  double _totalDamageTaken = 0.0;
  int _fuelConsumed = 0;
  int _energyConsumed = 0;
  int _scannersUpgraded = 0;
  int _planetsScanned = 0;
  int _voyageSeed = 0;

  bool _hasCalculated = false;

  /// Anchors the off-stage [RepaintBoundary] inside the share-card modal so
  /// `_captureAndShareCard` can find the render object after the sheet has
  /// laid out. Lives on the parent so the GlobalKey isn't recreated when
  /// the sheet rebuilds.
  final GlobalKey _shareCardKey = GlobalKey();
  bool _shareSheetOpen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_hasCalculated) return;
    _hasCalculated = true;

    final voyage = ref.read(voyageProvider);
    final planet = voyage.currentPlanet;
    if (planet == null) {
      // Shouldn't happen — clear everything down to title.
      _initFallbackControllers();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/', (r) => false);
        }
      });
      return;
    }

    // Initialize phase controllers synchronously (cheap construction)
    // so build() can reference them immediately. _scoreCount starts as
    // a placeholder and is replaced with the real IntTween once the
    // scoring calculation finishes.
    _phase1Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
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
    _phase2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _scoreCount = const AlwaysStoppedAnimation(0);
    _phase3Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _phase4Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _phase5Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Defer the heavy scoring math + legacy/leaderboard/analytics work to
    // after the first frame paints. EndingCalculator.calculate() iterates
    // over ~50 feature interactions and is 30–50 ms on low-end devices;
    // running it synchronously would stutter the screen transition.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _computeResultsAndStartSequence(voyage, planet);
    });
  }

  void _computeResultsAndStartSequence(VoyageState voyage, Planet planet) {
    final result = EndingCalculator.calculate(
      voyage.ship,
      planet,
      context.l10n,
      colonists: voyage.colonists,
      colonyName: voyage.colonyName,
      fuel: voyage.fuel,
      landedOnMoon: voyage.landedOnMoon,
      voyage: voyage,
    );

    setState(() {
      _finalScore = result.score;
      _tier = result.tier;
      _epilogue = result.epilogue;
      _legacyPoints = (result.score / 8000).ceil();
      _governmentType = result.governmentType;
      _cultureLevel = result.cultureLevel;
      _technologyLevel = result.technologyLevel;
      _constructionLevel = result.constructionLevel;
      _nativeRelations = result.nativeRelationsLabel;
      _colonyDescription = result.colonyDescription;
      _landscapeDescription = result.landscapeDescription;
      _planetName = result.colonyName;
      _breakdown = result.breakdown;
      _planetsSkipped = voyage.planetsSkipped;
      _totalDamageTaken = voyage.totalDamageTaken;
      _fuelConsumed = voyage.fuelConsumed;
      _energyConsumed = voyage.energyConsumed;
      _scannersUpgraded = voyage.scannersUpgraded;
      _planetsScanned = voyage.planetsScanned;
      _voyageSeed = voyage.seed;
      // Swap the placeholder tween for one that animates to the real score.
      _scoreCount = IntTween(begin: 0, end: _finalScore).animate(
        CurvedAnimation(parent: _phase2Controller, curve: Curves.easeOutCubic),
      );
    });

    final voyageIsDaily = voyage.isDaily;
    final resultScore = result.score;
    final resultTier = result.tier;
    final voyageEncounters = voyage.encounterCount;
    final voyagePlanetsScanned = voyage.planetsScanned;
    final voyagePlanetsSkipped = voyage.planetsSkipped;
    final voyageColonists = voyage.colonists;
    final voyageFuelConsumed = voyage.fuelConsumed;
    final voyageSeed = voyage.seed;
    final voyageAuthorityAxis = voyage.authorityAxis;
    final voyageCultureAxis = voyage.cultureAxis;
    final voyageEconomyAxis = voyage.economyAxis;
    final voyageFaithAxis = voyage.faithAxis;
    final voyageMilitaryAxis = voyage.militaryAxis;
    final resultGovernment = result.governmentType;

    // Persist the landing — idempotent. If the landing cinematic already
    // finalized (common case: user tapped Continue to get here), this call
    // returns the cached achievement list without re-writing legacy state.
    // If the cinematic was somehow bypassed and we reached the ending fresh,
    // this is the save.
    ref
        .read(voyageProvider.notifier)
        .finalizeLanding(context.l10n)
        .then((newAch) {
          if (!mounted) return;
          if (newAch.isNotEmpty) {
            setState(() => _newAchievements = newAch);
          }
          for (final ach in newAch) {
            AnalyticsService().logEvent(
              name: QaEvents.achievementUnlocked,
              parameters: {'achievement_id': ach},
            );
          }
        })
        .onError((Object e, StackTrace st) {
          QaLogger.app.warning(
            'finalizeLanding failed on ending screen',
            e,
            st,
          );
        });

    // Submit to Play Games leaderboards.
    PlayGamesService.submitScore(
      resultScore,
      androidId: AppConstants.kLeaderboardBestScoreAndroid,
      iosId: AppConstants.kLeaderboardBestScoreIos,
    );
    if (voyageIsDaily) {
      PlayGamesService.submitScore(
        resultScore,
        androidId: AppConstants.kLeaderboardDailyAndroid,
        iosId: AppConstants.kLeaderboardDailyIos,
      );
    }
    PlayGamesService.submitScore(
      voyageEncounters,
      androidId: AppConstants.kLeaderboardEncountersAndroid,
      iosId: AppConstants.kLeaderboardEncountersIos,
    );

    // Submit to self-hosted leaderboard.
    final cmdName = PlayGamesService.playerName ?? 'Commander';
    final seedCode = voyageSeed > 0
        ? voyageSeed.toRadixString(36).toUpperCase()
        : null;
    LeaderboardApi.submitScore(
      player: cmdName,
      score: resultScore,
      board: 'best',
      seed: seedCode,
    );
    if (voyageIsDaily) {
      LeaderboardApi.submitScore(
        player: cmdName,
        score: resultScore,
        board: 'daily',
        seed: seedCode,
      );
    }
    LeaderboardApi.submitScore(
      player: cmdName,
      score: voyageEncounters,
      board: 'encounters',
      seed: seedCode,
    );

    // Analytics: voyage completion + achievements
    AnalyticsService().logEvent(
      name: QaEvents.voyageEnded,
      parameters: {
        'score': resultScore,
        'tier': resultTier,
        'planets_scanned': voyagePlanetsScanned,
        'planets_skipped': voyagePlanetsSkipped,
        'encounters': voyageEncounters,
        'colonists': voyageColonists,
        'fuel_consumed': voyageFuelConsumed,
        'is_daily': voyageIsDaily,
        'seed': voyageSeed,
      },
    );
    AnalyticsService().logEvent(
      name: QaEvents.leaderboardSubmitted,
      parameters: {'board': 'best', 'score': resultScore},
    );
    // Achievement-unlocked analytics live in the finalizeLanding().then()
    // callback above, since newAch is produced by that future.
    AnalyticsService().logEvent(
      name: 'governance_result',
      parameters: {
        'government_type': resultGovernment,
        'authority_axis': voyageAuthorityAxis,
        'culture_axis': voyageCultureAxis,
        'economy_axis': voyageEconomyAxis,
        'faith_axis': voyageFaithAxis,
        'military_axis': voyageMilitaryAxis,
      },
    );

    _startPhaseSequence();

    // Stop engine hum, crossfade to background music for ending.
    GameMusic().stopEngineHum();
    GameSfx().stopAllLongAudio();
    GameMusic().returnToBgMusic();

    // Play success SFX based on score tier.
    if (_finalScore >= 70000) {
      GameSfx().play(GameSfx.success2);
    } else if (_finalScore >= 30000) {
      GameSfx().play(GameSfx.success1, volume: 0.8);
    }
  }

  /// Initialize controllers to safe defaults (used if initState bails early).
  void _initFallbackControllers() {
    _phase1Controller = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _glowExpand = const AlwaysStoppedAnimation(0);
    _glowOpacity = const AlwaysStoppedAnimation(0);
    _phase2Controller = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _scoreCount = const AlwaysStoppedAnimation(0);
    _phase3Controller = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _phase4Controller = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _phase5Controller = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
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
    await Future.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;
    HapticService().success();
    await _phase1Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase2Controller.forward();

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await _phase3Controller.forward();

    await Future.delayed(const Duration(milliseconds: 400));
    if (!mounted) return;
    await _phase4Controller.forward();

    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    if (_newAchievements.isNotEmpty) {
      HapticService().success();
    }
    await _phase5Controller.forward();
  }

  @override
  void dispose() {
    _phase1Controller.dispose();
    _phase2Controller.dispose();
    _phase3Controller.dispose();
    _phase4Controller.dispose();
    _phase5Controller.dispose();
    super.dispose();
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Golden Age':
        return const Color(0xFFFFD700);
      case 'Thriving Colony':
        return const Color(0xFF4CAF50);
      case 'Survival':
        return _kAccent;
      case 'Struggling':
        return const Color(0xFFFF9800);
      case 'Dire':
        return const Color(0xFFF44336);
      case 'Extinction':
        return const Color(0xFF880000);
      default:
        return _kAccent;
    }
  }

  String _tierSubtitle(String tier) {
    switch (tier) {
      case 'Golden Age':
        return 'Seed Rooted In Rich Soil';
      case 'Thriving Colony':
        return 'Strong Root, Open Sky';
      case 'Survival':
        return 'Rooted By Will Alone';
      case 'Struggling':
        return 'Thin Soil, Stubborn Life';
      case 'Dire':
        return 'Wreckage Keeping Warm';
      case 'Extinction':
        return 'Signal Lost';
      default:
        return 'Unknown Outcome';
    }
  }

  @override
  Widget build(BuildContext context) {
    final tierColor = _tierColor(_tier);
    final screen = ScreenInfo.of(context);

    return PopScope(
      // canPop: false is an EXPLOIT GUARD on top of the stack-removal
      // performed by /landing-sequence → pushNamedAndRemoveUntil('/ending',
      // r.isFirst). Even though /voyage shouldn't be sitting under us
      // anymore, blocking back is defence in depth: if a future change
      // accidentally re-introduces a route below /ending, a back gesture
      // here would expose voyage state with isComplete=true plus a still-
      // populated currentPlanet, letting the player tap scan and re-
      // launch /landing on the same already-scored planet. Players exit
      // through "New Voyage" / "View Legacy" — both clear the stack via
      // pushNamedAndRemoveUntil('/', (r) => false).
      canPop: false,
      child: Scaffold(
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
              bottom: false,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: ScrollPadding.bottom(context, extra: 96),
                ),
                child: ResponsiveContent(
                  child: _buildContent(context, screen, tierColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the score + tier display (left side in landscape).
  Widget _buildScoreAndTier(
    BuildContext context,
    ScreenInfo screen,
    Color tierColor,
  ) {
    return Column(
      children: [
        // Phase 1: "COLONY ESTABLISHED" with expanding glow.
        AnimatedBuilder(
          animation: _phase1Controller,
          builder: (_, _) => Opacity(
            opacity: _glowOpacity.value,
            child: Column(
              children: [
                Container(
                  width: 120 + _glowExpand.value * 60,
                  height: 120 + _glowExpand.value * 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: _kAccent.withValues(
                          alpha: 0.3 * _glowOpacity.value,
                        ),
                        blurRadius: 40 + _glowExpand.value * 40,
                        spreadRadius: _glowExpand.value * 20,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.public,
                    size: 80 + _glowExpand.value * 20,
                    color: _kAccent.withValues(alpha: _glowOpacity.value),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  context.l10n.ui_ending_colonyEstablished,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screen.scaledFontSize(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withValues(alpha: _glowOpacity.value),
                    letterSpacing: 4,
                    shadows: [
                      Shadow(
                        color: _kAccent.withValues(
                          alpha: _glowOpacity.value * 0.8,
                        ),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 48),

        // Phase 2: Score reveal.
        AnimatedBuilder(
          animation: _phase2Controller,
          builder: (_, _) {
            final opacity = _phase2Controller.value.clamp(0.0, 1.0);
            return Opacity(
              opacity: opacity,
              child: Column(
                children: [
                  Text(
                    context.l10n.ui_ending_colonyScore,
                    style: TextStyle(
                      color: _kAccent.withValues(alpha: 0.7),
                      fontSize: 14,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _formatScore(context, _scoreCount.value),
                    style: TextStyle(
                      fontSize: screen.scaledFontSize(64),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: _kAccent.withValues(alpha: 0.6),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 32),

        // Phase 3: Tier badge.
        AnimatedBuilder(
          animation: _phase3Controller,
          builder: (_, _) {
            final scale = Curves.elasticOut.transform(
              _phase3Controller.value.clamp(0.0, 1.0),
            );
            final opacity = _phase3Controller.value.clamp(0.0, 1.0);
            return Opacity(
              opacity: opacity,
              child: Transform.scale(
                scale: scale,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: tierColor, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: tierColor.withValues(alpha: 0.3),
                        blurRadius: 20,
                        spreadRadius: 2,
                      ),
                    ],
                    color: tierColor.withValues(alpha: 0.15),
                  ),
                  child: Text(
                    _tier.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: tierColor,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            );
          },
        ),

        const SizedBox(height: 12),

        FadeTransition(
          opacity: _phase3Controller,
          child: Text(
            _tierSubtitle(_tier),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: tierColor.withValues(alpha: 0.8),
              fontSize: 13,
              letterSpacing: 2.2,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        const SizedBox(height: 40),

        // Phase 5: Legacy points earned.
        AnimatedBuilder(
          animation: _phase5Controller,
          builder: (_, _) {
            final opacity = _phase5Controller.value.clamp(0.0, 1.0);
            final scale = 0.8 + 0.2 * _phase5Controller.value;
            return Opacity(
              opacity: opacity,
              child: Transform.scale(
                scale: scale,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        _kAccent.withValues(alpha: 0.1),
                        _kAccent.withValues(alpha: 0.2),
                        _kAccent.withValues(alpha: 0.1),
                      ],
                    ),
                    border: Border.all(color: _kAccent.withValues(alpha: 0.5)),
                    boxShadow: [
                      BoxShadow(
                        color: _kAccent.withValues(alpha: 0.2),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.auto_awesome, color: _kAccent, size: 24),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Text(
                          'LEGACY POINTS EARNED: +${_formatScore(context, _legacyPoints)}',
                          style: const TextStyle(
                            color: _kAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

        // Newly unlocked achievements.
        if (_newAchievements.isNotEmpty)
          FadeTransition(
            opacity: _phase5Controller,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFFFD700).withValues(alpha: 0.4),
                  ),
                  color: const Color(0xFFFFD700).withValues(alpha: 0.08),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.emoji_events,
                          color: Color(0xFFFFD700),
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.ui_ending_achievementsUnlocked,
                          style: TextStyle(
                            color: const Color(
                              0xFFFFD700,
                            ).withValues(alpha: 0.9),
                            fontSize: 13,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ..._newAchievements.map((id) {
                      final names = _achievementNames(context);
                      final name = names[id] ?? id;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }

  /// Builds the breakdown + details (right side in landscape).
  Widget _buildBreakdownAndDetails(BuildContext context) {
    return Column(
      children: [
        // Phase 4: Epilogue text.
        AnimatedBuilder(
          animation: _phase4Controller,
          builder: (_, _) {
            final opacity = _phase4Controller.value.clamp(0.0, 1.0);
            final slide = 20.0 * (1.0 - _phase4Controller.value);
            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(0, slide),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
                    color: _kBgColor.withValues(alpha: 0.85),
                  ),
                  child: Text(
                    _epilogue,
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

        const SizedBox(height: 24),

        // Colony details.
        FadeTransition(
          opacity: _phase4Controller,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
              color: _kBgColor.withValues(alpha: 0.85),
            ),
            child: Column(
              children: [
                Text(
                  context.l10n.ui_ending_colonyProfile,
                  style: TextStyle(
                    color: _kAccent.withValues(alpha: 0.7),
                    fontSize: 12,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                _ColonyDetailRow(label: 'Government', value: _governmentType),
                _ColonyDetailRow(label: 'Culture', value: _cultureLevel),
                _ColonyDetailRow(label: 'Technology', value: _technologyLevel),
                _ColonyDetailRow(
                  label: 'Construction',
                  value: _constructionLevel,
                ),
                if (_nativeRelations != 'None')
                  _ColonyDetailRow(label: 'Natives', value: _nativeRelations),
                const SizedBox(height: 12),
                Text(
                  _colonyDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Landscape description.
        if (_landscapeDescription.isNotEmpty)
          FadeTransition(
            opacity: _phase4Controller,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
                  color: _kBgColor.withValues(alpha: 0.85),
                ),
                child: Column(
                  children: [
                    Text(
                      context.l10n.ui_ending_landscape,
                      style: TextStyle(
                        color: _kAccent.withValues(alpha: 0.7),
                        fontSize: 12,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _landscapeDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        const SizedBox(height: 16),

        // Voyage record card.
        FadeTransition(
          opacity: _phase4Controller,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
              color: _kBgColor.withValues(alpha: 0.85),
            ),
            child: Column(
              children: [
                Text(
                  context.l10n.ui_ending_voyageRecord,
                  style: TextStyle(
                    color: _kAccent.withValues(alpha: 0.7),
                    fontSize: 12,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                _ColonyDetailRow(
                  label: 'Planets Scanned',
                  value: '$_planetsScanned',
                ),
                _ColonyDetailRow(
                  label: 'Planets Skipped',
                  value: '$_planetsSkipped',
                ),
                _ColonyDetailRow(
                  label: 'Damage Taken',
                  value: '${(_totalDamageTaken * 100).toStringAsFixed(1)}%',
                ),
                _ColonyDetailRow(
                  label: 'Fuel Consumed',
                  value: '$_fuelConsumed',
                ),
                _ColonyDetailRow(
                  label: 'Energy Consumed',
                  value: '$_energyConsumed',
                ),
                _ColonyDetailRow(
                  label: 'Scanners Upgraded',
                  value: '$_scannersUpgraded',
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Score breakdown.
        if (_breakdown != null)
          FadeTransition(
            opacity: _phase4Controller,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
                color: _kBgColor.withValues(alpha: 0.85),
              ),
              child: Column(
                children: [
                  Text(
                    context.l10n.ui_ending_scoreBreakdown,
                    style: TextStyle(
                      color: _kAccent.withValues(alpha: 0.7),
                      fontSize: 12,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ..._breakdown!
                      .localizedEntries(context.l10n)
                      .map(
                        (entry) =>
                            _ScoreRow(label: entry.key, score: entry.value),
                      ),
                  const SizedBox(height: 8),
                  Container(height: 1, color: _kAccent.withValues(alpha: 0.2)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.ui_ending_total,
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: _kAccent.withValues(alpha: 0.9),
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        '${_breakdown!.total.round()}',
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  /// Opens the share-card preview sheet. The sheet hosts a fixed-size
  /// [ShareRunCard] inside a [RepaintBoundary] keyed to [_shareCardKey];
  /// once the user confirms, [_captureAndShareCard] turns it into a PNG.
  Future<void> _showShareCardSheet(BuildContext context) async {
    if (_shareSheetOpen) return;
    _shareSheetOpen = true;
    final cardData = ShareRunCardData(
      score: _finalScore,
      tier: _tier,
      tierColor: _tierColor(_tier),
      planetName: _planetName,
      governmentType: _governmentType,
      colonists: ref.read(voyageProvider).colonists,
      planetsScanned: _planetsScanned,
      seedCode: seedToCode(_voyageSeed),
    );
    GameSfx().play(GameSfx.buttonClick);
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: SpaceColors.deepSpace,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        side: BorderSide(color: SpaceColors.cyan, width: 1.5),
      ),
      builder: (sheetContext) => _ShareCardSheet(
        cardData: cardData,
        cardKey: _shareCardKey,
        onShare: () => _captureAndShareCard(sheetContext, cardData),
      ),
    ).whenComplete(() => _shareSheetOpen = false);
  }

  /// Renders the share card to a PNG via [RenderRepaintBoundary.toImage] and
  /// hands it to `share_plus`. Falls back to the existing text share if any
  /// step fails — the user always gets *something* even if capture breaks.
  Future<void> _captureAndShareCard(
    BuildContext sheetContext,
    ShareRunCardData data,
  ) async {
    final shareText = _buildShareText(data);
    try {
      final boundary =
          _shareCardKey.currentContext?.findRenderObject()
              as RenderRepaintBoundary?;
      if (boundary == null) {
        throw StateError('share card boundary not laid out');
      }
      final image = await boundary.toImage(pixelRatio: 2.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) {
        throw StateError('failed to encode share card png');
      }
      final bytes = byteData.buffer.asUint8List();
      final tempDir = await getTemporaryDirectory();
      final file = File(
        '${tempDir.path}/stellar_broadcast_run_${DateTime.now().millisecondsSinceEpoch}.png',
      );
      await file.writeAsBytes(bytes);
      await Share.shareXFiles([
        XFile(file.path, mimeType: 'image/png'),
      ], text: shareText);
    } catch (_) {
      await Share.share(shareText);
    }
    if (sheetContext.mounted) Navigator.of(sheetContext).pop();
  }

  String _buildShareText(ShareRunCardData data) =>
      '🚀 STELLAR BROADCAST\n'
      '\n'
      'I scored ${_formatScore(context, data.score)} on ${data.planetName}!\n'
      '🏆 ${data.tier} • ${data.governmentType}\n'
      '\n'
      'Think you can beat me? Tap to play the same voyage:\n'
      'stellarbroadcast://play?seed=${data.seedCode}\n'
      '\n'
      "Don't have the app?\n"
      'https://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';

  /// Builds the action buttons section.
  Widget _buildButtons(BuildContext context) {
    return FadeTransition(
      opacity: _phase5Controller,
      child: Column(
        children: [
          _EndingButton(
            label: context.l10n.ui_ending_challengeFriend,
            isPrimary: true,
            onTap: () {
              final text =
                  '🚀 STELLAR BROADCAST\n'
                  '\n'
                  'I scored ${_formatScore(context, _finalScore)} on $_planetName!\n'
                  '🏆 $_tier • $_governmentType\n'
                  '\n'
                  'Think you can beat me? Tap to play the same voyage:\n'
                  'stellarbroadcast://play?seed=${seedToCode(_voyageSeed)}\n'
                  '\n'
                  "Don't have the app?\n"
                  'https://play.google.com/store/apps/details?id=com.quickapps.stellar_broadcast';
              Share.share(text);
            },
          ),
          const SizedBox(height: 16),
          _EndingButton(
            label: context.l10n.ui_ending_shareCard,
            isPrimary: false,
            onTap: () => _showShareCardSheet(context),
          ),
          const SizedBox(height: 16),
          _EndingButton(
            label: context.l10n.ui_ending_copySeed,
            isPrimary: false,
            onTap: () {
              Clipboard.setData(ClipboardData(text: seedToCode(_voyageSeed)));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Seed ${seedToCode(_voyageSeed)} copied!'),
                  backgroundColor: _kAccent.withValues(alpha: 0.9),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          _EndingButton(
            label: context.l10n.ui_ending_viewLegacy,
            isPrimary: false,
            onTap: () => Navigator.of(
              context,
            ).pushNamedAndRemoveUntil('/legacy', (route) => route.isFirst),
          ),
          const SizedBox(height: 16),
          _EndingButton(
            label: context.l10n.ui_ending_newVoyage,
            isPrimary: false,
            onTap: () {
              ref.read(voyageProvider.notifier).startVoyage(l10n: context.l10n);
              // Tear down /ending plus anything underneath (e.g. a stale
              // /voyage left from before the cinematic transitions used
              // pushNamedAndRemoveUntil). Title becomes the only entry.
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (r) => false);
            },
          ),
        ],
      ),
    );
  }

  /// Builds the ad widget.
  Widget _buildAd(BuildContext context) {
    return PremiumAdGate(
      child: AdaptiveNativeAd(
        fallback: AdaptiveBannerAd(
          size: QaBannerSize.mrec,
          fallback: AdFallbackBanner(
            height: 250,
            onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    ScreenInfo screen,
    Color tierColor,
  ) {
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      return Column(
        children: [
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: score, tier, legacy points, achievements.
              Expanded(child: _buildScoreAndTier(context, screen, tierColor)),
              const SizedBox(width: 24),
              // Right side: breakdown, details, voyage record.
              Expanded(child: _buildBreakdownAndDetails(context)),
            ],
          ),
          const SizedBox(height: 32),
          _buildAd(context),
          const SizedBox(height: 32),
          _buildButtons(context),
          const SizedBox(height: 40),
        ],
      );
    }

    // Portrait: original vertical layout.
    return Column(
      children: [
        const SizedBox(height: 60),
        _buildScoreAndTier(context, screen, tierColor),
        const SizedBox(height: 40),
        _buildBreakdownAndDetails(context),
        const SizedBox(height: 32),
        _buildAd(context),
        const SizedBox(height: 32),
        _buildButtons(context),
        const SizedBox(height: 40),
      ],
    );
  }
}

// ── Colony detail row ────────────────────────────────────────────────────────

class _ColonyDetailRow extends StatelessWidget {
  const _ColonyDetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 11,
              letterSpacing: 1,
              color: _kAccent.withValues(alpha: 0.6),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'monospace',
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Score row ───────────────────────────────────────────────────────────

class _ScoreRow extends StatelessWidget {
  const _ScoreRow({required this.label, required this.score});

  final String label;
  final double score;

  @override
  Widget build(BuildContext context) {
    // Max sub-score in the 100k system is 25000 (planet quality).
    final clamped = score.clamp(0.0, 25000.0);
    final fraction = (clamped / 25000.0).clamp(0.0, 1.0);
    final isOverflow = score > 20000.0;

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                color: Colors.white.withValues(alpha: 0.6),
                letterSpacing: 0.5,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white.withValues(alpha: 0.05),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: fraction,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    gradient: isOverflow
                        ? const LinearGradient(
                            colors: [
                              Color(0xFFFFD700),
                              Color(0xFF00E676),
                              Color(0xFFFFD700),
                            ],
                          )
                        : null,
                    color: isOverflow ? null : _kAccent.withValues(alpha: 0.7),
                    boxShadow: isOverflow
                        ? [
                            BoxShadow(
                              color: const Color(
                                0xFFFFD700,
                              ).withValues(alpha: 0.4),
                              blurRadius: 6,
                            ),
                          ]
                        : null,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 50,
            child: Text(
              clamped.round().toString(),
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: isOverflow
                    ? const Color(0xFFFFD700)
                    : _kAccent.withValues(alpha: 0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Ending button ───────────────────────────────────────────────────────────

class _EndingButton extends StatelessWidget {
  const _EndingButton({
    required this.label,
    required this.isPrimary,
    required this.onTap,
  });

  final String label;
  final bool isPrimary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isPrimary ? _kAccent : _kAccent.withValues(alpha: 0.4),
              width: isPrimary ? 2 : 1,
            ),
            color: isPrimary
                ? _kAccent.withValues(alpha: 0.15)
                : Colors.transparent,
            boxShadow: isPrimary
                ? [
                    BoxShadow(
                      color: _kAccent.withValues(alpha: 0.2),
                      blurRadius: 16,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
          ),
          child: ExcludeSemantics(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isPrimary ? Colors.white : _kAccent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Share-card preview sheet ────────────────────────────────────────────────

/// Modal sheet that previews the [ShareRunCard] before capture. The card is
/// rendered at its native logical resolution (1080×1350) inside a
/// [RepaintBoundary]; a [FittedBox] scales the visible preview to whatever
/// width the sheet has, while the underlying boundary stays at full size so
/// `toImage(pixelRatio: 2.0)` produces a sharp ~2160×2700 PNG.
class _ShareCardSheet extends StatelessWidget {
  final ShareRunCardData cardData;
  final GlobalKey cardKey;
  final VoidCallback onShare;

  const _ShareCardSheet({
    required this.cardData,
    required this.cardKey,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.88;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 12,
          bottom: 16 + MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Drag handle.
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: SpaceColors.cyan.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  context.l10n.ui_ending_shareCardDialogTitle,
                  style: const TextStyle(
                    color: SpaceColors.cyan,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 16),
                // Card preview — RepaintBoundary stays at native resolution
                // so the captured PNG is sharp; FittedBox shrinks the on-
                // screen render to fit the sheet width.
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: RepaintBoundary(
                      key: cardKey,
                      child: SizedBox(
                        width: ShareRunCard.cardWidth,
                        height: ShareRunCard.cardHeight,
                        child: ShareRunCard(data: cardData),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _EndingButton(
                  label: context.l10n.ui_ending_shareCardShare,
                  isPrimary: true,
                  onTap: onShare,
                ),
                const SizedBox(height: 12),
                _EndingButton(
                  label: context.l10n.ui_ending_shareCardCancel,
                  isPrimary: false,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
