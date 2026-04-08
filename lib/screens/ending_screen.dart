import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:share_plus/share_plus.dart';

import 'package:stellar_broadcast/logic/ending_calculator.dart';
import 'package:stellar_broadcast/models/voyage_log_entry.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show voyageProvider, legacyProvider, seedToCode;
import 'package:stellar_broadcast/services/leaderboard_api.dart';
import 'package:stellar_broadcast/services/play_games_service.dart';
import 'package:stellar_broadcast/utils/constants.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/widgets/premium_ad_gate.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

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
  late final AnimationController _starController;

  // Phase controllers — staggered reveal.
  late final AnimationController _phase1Controller; // "COLONY ESTABLISHED"
  late final AnimationController _phase2Controller; // Score count-up
  late final AnimationController _phase3Controller; // Tier badge
  late final AnimationController _phase4Controller; // Epilogue
  late final AnimationController _phase5Controller; // Legacy points

  // Glow expansion for phase 1.
  late final Animation<double> _glowExpand;
  late final Animation<double> _glowOpacity;

  // Score count animation.
  late final Animation<int> _scoreCount;
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

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_hasCalculated) return;
    _hasCalculated = true;

    // Calculate ending results.
    final voyage = ref.read(voyageProvider);
    final planet = voyage.currentPlanet;
    if (planet == null) {
      // Shouldn't happen — navigate home as fallback.
      _initFallbackControllers();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) Navigator.of(context).pushReplacementNamed('/');
      });
      return;
    }
    final result = EndingCalculator.calculate(
      voyage.ship,
      planet,
      context.l10n,
      colonists: voyage.colonists,
      colonyName: voyage.colonyName,
      fuel: voyage.fuel,
      landedOnMoon: voyage.landedOnMoon,
    );
    _finalScore = result.score;
    _tier = result.tier;
    _epilogue = result.epilogue;
    _legacyPoints = (result.score / 10).ceil();
    _governmentType = result.governmentType;
    _cultureLevel = result.cultureLevel;
    _technologyLevel = result.technologyLevel;
    _constructionLevel = result.constructionLevel;
    _nativeRelations = result.nativeRelations;
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

    // Defer legacy updates to avoid modifying provider state during build.
    final planetName = planet.name;
    final voyageSeed = voyage.seed;
    final voyageIsDaily = voyage.isDaily;
    final resultScore = result.score;
    final resultTier = result.tier;

    // Collect all discoverable feature keys from this planet.
    final discoveries = <String>[
      ...planet.surfaceFeatures,
      for (final moon in planet.moons) 'moon_${moon.type.name}',
      if (planet.rings != null) 'ring_${planet.rings!.type.name}',
    ];

    final voyageEncounters = voyage.encounterCount;
    final voyageColonists = voyage.colonists;
    final voyagePlanetsScanned = voyage.planetsScanned;
    final voyagePlanetsSkipped = voyage.planetsSkipped;
    final voyageFuelConsumed = voyage.fuelConsumed;
    final voyageEnergyConsumed = voyage.energyConsumed;
    final voyageDamageTaken = voyage.totalDamageTaken;
    final voyageKeyEvents = List<String>.from(voyage.seenEventIds);
    final voyageLandedOnMoon = voyage.landedOnMoon;

    // Capture planet details for the log.
    final planetFeatures = List<String>.from(planet.surfaceFeatures);
    final planetMoons = planet.moons.map((m) => m.type.name).toList();
    final planetRingType = planet.rings?.type.name;
    final planetNativeDesc = planet.nativeDescription;
    final resultGovernment = result.governmentType;
    final resultCulture = result.cultureLevel;
    final resultTech = result.technologyLevel;
    final resultNativeRelations = result.nativeRelations;
    final resultLandscape = result.landscapeDescription;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final legacyNotifier = ref.read(legacyProvider.notifier);
      legacyNotifier.addVoyageResult(
        VoyageLogEntry(
          planetName: planetName,
          tier: resultTier,
          score: resultScore,
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
          surfaceFeatures: planetFeatures,
          moonTypes: planetMoons,
          ringType: planetRingType,
          nativeDescription: planetNativeDesc,
          governmentType: resultGovernment,
          cultureLevel: resultCulture,
          technologyLevel: resultTech,
          nativeRelations: resultNativeRelations,
          landscapeDescription: resultLandscape,
          landedOnMoon: voyageLandedOnMoon,
        ),
        isDaily: voyageIsDaily,
      );
      legacyNotifier.recordDiscoveries(discoveries);
      final newAch = legacyNotifier.checkAchievements(
        score: resultScore,
        voyage: voyage,
      );
      if (mounted && newAch.isNotEmpty) {
        setState(() => _newAchievements = newAch);
      }

      // Submit to Play Games leaderboards.
      PlayGamesService.submitScore(resultScore,
        androidId: AppConstants.kLeaderboardBestScoreAndroid,
        iosId: AppConstants.kLeaderboardBestScoreIos,
      );
      if (voyageIsDaily) {
        PlayGamesService.submitScore(resultScore,
          androidId: AppConstants.kLeaderboardDailyAndroid,
          iosId: AppConstants.kLeaderboardDailyIos,
        );
      }
      PlayGamesService.submitScore(voyageEncounters,
        androidId: AppConstants.kLeaderboardEncountersAndroid,
        iosId: AppConstants.kLeaderboardEncountersIos,
      );

      // Submit to self-hosted leaderboard.
      final cmdName = PlayGamesService.playerName ?? 'Commander';
      final seedCode = voyageSeed > 0
          ? voyageSeed.toRadixString(36).toUpperCase()
          : null;
      LeaderboardApi.submitScore(
        player: cmdName, score: resultScore, board: 'best', seed: seedCode,
      );
      if (voyageIsDaily) {
        LeaderboardApi.submitScore(
          player: cmdName, score: resultScore, board: 'daily', seed: seedCode,
        );
      }
      LeaderboardApi.submitScore(
        player: cmdName, score: voyageEncounters, board: 'encounters', seed: seedCode,
      );
    });

    // Phase 1: Colony established text + expanding glow.
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

    // Phase 2: Score counting.
    _phase2Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _scoreCount = IntTween(begin: 0, end: _finalScore).animate(
      CurvedAnimation(parent: _phase2Controller, curve: Curves.easeOutCubic),
    );

    // Phase 3: Tier badge.
    _phase3Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Phase 4: Epilogue.
    _phase4Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Phase 5: Legacy points.
    _phase5Controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _startPhaseSequence();

    // Stop engine hum, crossfade to background music for ending.
    GameMusic().stopEngineHum();
    GameMusic().returnToBgMusic();

    // Play success SFX based on score tier.
    if (_finalScore >= 70) {
      GameSfx().play(GameSfx.success2);
    } else if (_finalScore >= 30) {
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
    _starController.dispose();
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

    return PopScope(
      canPop: false,
      child: Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _starController,
                builder: (_, __) => Semantics(
                  label: 'Animated star field background',
                  excludeSemantics: true,
                  child: CustomPaint(
                    painter: StarFieldPainter(
                      animationValue: _starController.value,
                      farStarCount: 100,
                      midStarCount: 40,
                      nearStarCount: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Content.
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  const SizedBox(height: 60),

                  // Phase 1: "COLONY ESTABLISHED" with expanding glow.
                  AnimatedBuilder(
                    animation: _phase1Controller,
                    builder: (_, __) => Opacity(
                      opacity: _glowOpacity.value,
                      child: Column(
                        children: [
                          // Glow ring.
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
                              color: _kAccent.withValues(
                                alpha: _glowOpacity.value,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            context.l10n.ui_ending_colonyEstablished,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withValues(
                                alpha: _glowOpacity.value,
                              ),
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

                  // Phase 2: Score reveal with counting animation.
                  AnimatedBuilder(
                    animation: _phase2Controller,
                    builder: (_, __) {
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
                              '${_scoreCount.value}',
                              style: TextStyle(
                                fontSize: 64,
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

                  // Phase 3: Tier badge reveal.
                  AnimatedBuilder(
                    animation: _phase3Controller,
                    builder: (_, __) {
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

                  AnimatedBuilder(
                    animation: _phase3Controller,
                    builder: (_, __) {
                      final opacity = _phase3Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
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
                      );
                    },
                  ),

                  const SizedBox(height: 40),

                  // Phase 4: Epilogue text.
                  AnimatedBuilder(
                    animation: _phase4Controller,
                    builder: (_, __) {
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
                              border: Border.all(
                                color: _kAccent.withValues(alpha: 0.2),
                              ),
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

                  // Colony details (appears with phase 4).
                  AnimatedBuilder(
                    animation: _phase4Controller,
                    builder: (_, __) {
                      final opacity = _phase4Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: _kAccent.withValues(alpha: 0.2),
                            ),
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
                              _ColonyDetailRow(
                                label: 'Government',
                                value: _governmentType,
                              ),
                              _ColonyDetailRow(
                                label: 'Culture',
                                value: _cultureLevel,
                              ),
                              _ColonyDetailRow(
                                label: 'Technology',
                                value: _technologyLevel,
                              ),
                              _ColonyDetailRow(
                                label: 'Construction',
                                value: _constructionLevel,
                              ),
                              if (_nativeRelations != 'None')
                                _ColonyDetailRow(
                                  label: 'Natives',
                                  value: _nativeRelations,
                                ),
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
                      );
                    },
                  ),

                  // Landscape description (appears with phase 4).
                  if (_landscapeDescription.isNotEmpty)
                    AnimatedBuilder(
                      animation: _phase4Controller,
                      builder: (_, __) {
                        final opacity = _phase4Controller.value.clamp(0.0, 1.0);
                        return Opacity(
                          opacity: opacity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: _kAccent.withValues(alpha: 0.2),
                                ),
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
                                      color: Colors.white.withValues(
                                        alpha: 0.6,
                                      ),
                                      fontSize: 12,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),

                  const SizedBox(height: 16),

                  // Voyage record card (appears with phase 4).
                  AnimatedBuilder(
                    animation: _phase4Controller,
                    builder: (_, __) {
                      final opacity = _phase4Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: _kAccent.withValues(alpha: 0.2),
                            ),
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
                                value:
                                    '${(_totalDamageTaken * 100).toStringAsFixed(1)}%',
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
                      );
                    },
                  ),

                  const SizedBox(height: 24),

                  // Score breakdown (appears after phase 4).
                  if (_breakdown != null)
                    AnimatedBuilder(
                      animation: _phase4Controller,
                      builder: (_, __) {
                        final opacity = _phase4Controller.value.clamp(0.0, 1.0);
                        return Opacity(
                          opacity: opacity,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: _kAccent.withValues(alpha: 0.2),
                              ),
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
                                ..._breakdown!.localizedEntries(context.l10n).map(
                                  (entry) => _ScoreRow(
                                    label: entry.key,
                                    score: entry.value,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Container(
                                  height: 1,
                                  color: _kAccent.withValues(alpha: 0.2),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                        );
                      },
                    ),

                  const SizedBox(height: 32),

                  // Native ad between score and legacy points.
                  PremiumAdGate(child: AdaptiveNativeAd(
                    fallback: AdaptiveBannerAd(
                      size: QaBannerSize.mrec,
                      fallback: AdFallbackBanner(
                        height: 250,
                        onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
                      ),
                    ),
                  )),

                  const SizedBox(height: 32),

                  // Phase 5: Legacy points earned with sparkle effect.
                  AnimatedBuilder(
                    animation: _phase5Controller,
                    builder: (_, __) {
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
                              border: Border.all(
                                color: _kAccent.withValues(alpha: 0.5),
                              ),
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
                                const Icon(
                                  Icons.auto_awesome,
                                  color: _kAccent,
                                  size: 24,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  'LEGACY POINTS EARNED: +$_legacyPoints',
                                  style: const TextStyle(
                                    color: _kAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
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
                    AnimatedBuilder(
                      animation: _phase5Controller,
                      builder: (_, __) {
                        final opacity = _phase5Controller.value.clamp(0.0, 1.0);
                        return Opacity(
                          opacity: opacity,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(
                                    0xFFFFD700,
                                  ).withValues(alpha: 0.4),
                                ),
                                color: const Color(
                                  0xFFFFD700,
                                ).withValues(alpha: 0.08),
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
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                      ),
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
                        );
                      },
                    ),

                  const SizedBox(height: 48),

                  // Bottom buttons.
                  AnimatedBuilder(
                    animation: _phase5Controller,
                    builder: (_, __) {
                      final opacity = _phase5Controller.value.clamp(0.0, 1.0);
                      return Opacity(
                        opacity: opacity,
                        child: Column(
                          children: [
                            _EndingButton(
                              label: context.l10n.ui_ending_challengeFriend,
                              isPrimary: true,
                              onTap: () {
                                final text =
                                    '🚀 STELLAR BROADCAST\n'
                                    '\n'
                                    'I scored $_finalScore on $_planetName!\n'
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
                              label: context.l10n.ui_ending_copySeed,
                              isPrimary: false,
                              onTap: () {
                                Clipboard.setData(
                                  ClipboardData(
                                    text: seedToCode(_voyageSeed),
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Seed ${seedToCode(_voyageSeed)} copied!',
                                    ),
                                    backgroundColor: _kAccent.withValues(
                                      alpha: 0.9,
                                    ),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                            _EndingButton(
                              label: context.l10n.ui_ending_viewLegacy,
                              isPrimary: false,
                              onTap: () => Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                '/legacy',
                                (route) => route.isFirst,
                              ),
                            ),
                            const SizedBox(height: 16),
                            _EndingButton(
                              label: context.l10n.ui_ending_newVoyage,
                              isPrimary: false,
                              onTap: () {
                                ref.read(voyageProvider.notifier).startVoyage(l10n: context.l10n);
                                Navigator.of(context).pushReplacementNamed('/');
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
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
    // Allow scores up to 15 for over-repaired culture/tech.
    final clamped = score.clamp(0.0, 15.0);
    final fraction = (clamped / 15.0).clamp(0.0, 1.0);
    final isOverflow = score > 10.0;

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
            width: 30,
            child: Text(
              clamped.toStringAsFixed(1),
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
    return GestureDetector(
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
    );
  }
}
