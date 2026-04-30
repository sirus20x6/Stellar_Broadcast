import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_debug/quickapps_debug.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:stellar_broadcast/navigation/app_navigator_observers.dart'
    show rootRouteObserver;
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/data/events.dart';
import 'package:stellar_broadcast/logic/puzzle_generator.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/scroll_padding.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:stellar_broadcast/services/voyage_save_service.dart';
import 'package:stellar_broadcast/widgets/bug_report_dialog.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/widgets/mesh_button.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _dailyAccent = Color(0xFFFFD740);

/// The title / main-menu screen for Stellar Broadcast.
///
/// Prototype variant of the main title screen with 3D hovering MeshButton
/// motion ported from an Unreal Engine reference. Access from the debug
/// menu on the main TitleScreen.
class TitleProtoScreen extends ConsumerStatefulWidget {
  const TitleProtoScreen({super.key});

  @override
  ConsumerState<TitleProtoScreen> createState() => _TitleProtoScreenState();
}

class _TitleProtoScreenState extends ConsumerState<TitleProtoScreen>
    with RouteAware {
  static const _background = SpaceColors.deepSpace;
  static const _accent = SpaceColors.cyan;

  Timer? _bgMusicTimer;
  bool _bgMusicStarted = false;
  String _buildLabel = '';
  bool _hasSavedVoyage = false;
  bool _leaderboardsInFlight = false;

  @override
  void initState() {
    super.initState();
    _checkSavedVoyage();
    PackageInfo.fromPlatform().then((info) {
      if (mounted) {
        setState(() => _buildLabel = 'v${info.version}+${info.buildNumber}');
      }
    });

    // Play intro logo (15s), then start bgmusic at 10s.
    GameSfx().playIntroLogo();
    _bgMusicTimer = Timer(const Duration(seconds: 10), () {
      _startBgMusic();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    rootRouteObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    rootRouteObserver.unsubscribe(this);
    _bgMusicTimer?.cancel();
    GameSfx().stopIntroLogo();
    super.dispose();
  }

  @override
  void didPopNext() {
    _checkSavedVoyage();
  }

  void _startBgMusic() {
    if (_bgMusicStarted) return;
    _bgMusicStarted = true;
    GameMusic().playBgMusic();
  }

  void _handleVersionTap() {
    final upgrades = ref.read(legacyProvider).upgrades;
    ref
        .read(voyageProvider.notifier)
        .startVoyage(upgrades: upgrades, l10n: context.l10n);
    // Degrade systems to various levels for visual testing.
    final notifier = ref.read(voyageProvider.notifier);
    notifier.debugDegradeSystem('hull', 0.40);
    notifier.debugDegradeSystem('nav', 0.60);
    notifier.debugDegradeSystem('shields', 0.70);
    notifier.debugDegradeSystem('constructors', 0.50);
    notifier.debugDegradeSystem('landingSystem', 0.55);
    notifier.debugDegradeSystem('cryopods', 0.10);
    notifier.debugDegradeSystem('tech', 0.20);
    notifier.debugDegradeSystem('atmosphericScanner', 0.30);
    notifier.debugDegradeSystem('temperatureScanner', 0.60);
    Navigator.pushNamed(context, '/ship-status');
  }

  void _handleVersionLongPress() {
    _showDebugMenu();
  }

  static bool _isSequenceType(SequenceType t) =>
      t == SequenceType.piDigits ||
      t == SequenceType.fibonacci ||
      t == SequenceType.primes;

  void _ensureVoyageStarted() {
    final voyage = ref.read(voyageProvider);
    if (voyage.encounterCount == 0 && !voyage.isComplete) {
      final upgrades = ref.read(legacyProvider).upgrades;
      ref
          .read(voyageProvider.notifier)
          .startVoyage(upgrades: upgrades, l10n: context.l10n);
    }
  }

  Future<void> _debugScanPlanet() async {
    try {
      await ref.read(voyageProvider.notifier).scanPlanet();
    } catch (e, st) {
      QaLogger.app.warning('debug scanPlanet failed', e, st);
    }
  }

  void _showDebugMenu() {
    final pool = getEventPool(context.l10n);

    QaDebugMenu.show(
      context: context,
      ref: ref,
      sections: [
        DebugSection('PUZZLES', [
          DebugButton('Puzzle (Random)', () {
            final puzzle = PuzzleGenerator.generate(
              Random(),
              const VoyageState(encounterCount: 10),
            );
            Navigator.pushNamed(context, '/puzzle', arguments: puzzle);
          }),
          DebugButton('Puzzle (Synthetic)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null ||
                p.species != AlienSpecies.synthetic ||
                !_isSequenceType(p.sequenceType)) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Geometric)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null ||
                p.species != AlienSpecies.geometric ||
                !_isSequenceType(p.sequenceType)) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Crystalline)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null ||
                p.species != AlienSpecies.crystalline ||
                !_isSequenceType(p.sequenceType)) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Spectral)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null || p.sequenceType != SequenceType.spectralId) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Star Cluster)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null || p.sequenceType != SequenceType.starCluster) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Chirality)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null || p.sequenceType != SequenceType.chirality) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Signal Filter)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null || p.sequenceType != SequenceType.signalFilter) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 10),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
          DebugButton('Puzzle (Signal Filter - Hard)', () {
            AlienPuzzle? p;
            final r = Random();
            while (p == null || p.sequenceType != SequenceType.signalFilter) {
              p = PuzzleGenerator.generate(
                r,
                const VoyageState(encounterCount: 15),
              );
            }
            Navigator.pushNamed(context, '/puzzle', arguments: p);
          }),
        ]),
        DebugSection('VISUAL EVENTS', [
          DebugButton('Black Hole Lens', () {
            final event = pool
                .where((e) => e.id == 'black_hole_lens')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/black-hole', arguments: event);
            }
          }),
          DebugButton('Living Nebula', () {
            final event = pool
                .where((e) => e.id == 'living_nebula')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/living-nebula', arguments: event);
            }
          }),
          DebugButton('Seed Vault', () {
            final event = pool.where((e) => e.id == 'seed_vault').firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/seed-vault', arguments: event);
            }
          }),
          DebugButton('Dyson Sphere', () {
            final event = pool.where((e) => e.id == 'dyson_sphere').firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/dyson-sphere', arguments: event);
            }
          }),
          DebugButton('World Engine', () {
            final event = pool
                .where((e) => e.id == 'relic_world_engine')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/world-engine', arguments: event);
            }
          }),
          DebugButton('Mirror Array', () {
            final event = pool
                .where((e) => e.id == 'relic_mirror_array')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/mirror-array', arguments: event);
            }
          }),
          DebugButton('Chrono Vortex', () {
            final event = pool
                .where((e) => e.id == 'chrono_vortex')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/chrono-vortex', arguments: event);
            }
          }),
          DebugButton('Void Whale Calf', () {
            final event = pool
                .where((e) => e.id == 'void_whale_calf')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/void-whale', arguments: event);
            }
          }),
          DebugButton('Phantom Ship', () {
            final event = pool.where((e) => e.id == 'phantom_ship').firstOrNull;
            if (event != null) {
              Navigator.pushNamed(context, '/phantom-ship', arguments: event);
            }
          }),
          DebugButton('Singularity Engine', () {
            final event = pool
                .where((e) => e.id == 'singularity_engine')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(
                context,
                '/singularity-engine',
                arguments: event,
              );
            }
          }),
          DebugButton('Pulsar Lighthouse', () {
            final event = pool
                .where((e) => e.id == 'pulsar_lighthouse')
                .firstOrNull;
            if (event != null) {
              Navigator.pushNamed(
                context,
                '/pulsar-lighthouse',
                arguments: event,
              );
            }
          }),
        ]),
        DebugSection('SCREENS', [
          DebugButton('Ship Status (Damaged)', () => _handleVersionTap()),
          DebugButton('Voyage', () {
            _ensureVoyageStarted();
            Navigator.pushNamed(context, '/voyage');
          }),
          DebugButton('Scan', () {
            _ensureVoyageStarted();
            unawaited(_debugScanPlanet());
            Navigator.pushNamed(context, '/scan');
          }),
          DebugButton('Trader', () {
            _ensureVoyageStarted();
            Navigator.pushNamed(context, '/trader');
          }),
          DebugButton('Landing', () {
            _ensureVoyageStarted();
            unawaited(_debugScanPlanet());
            Navigator.pushNamed(context, '/landing');
          }),
          DebugButton('Ending', () {
            _ensureVoyageStarted();
            unawaited(_debugScanPlanet());
            Navigator.pushNamed(context, '/ending');
          }),
          DebugButton(
            'Game Over',
            () => Navigator.pushNamed(context, '/gameover'),
          ),
          DebugButton('Legacy', () => Navigator.pushNamed(context, '/legacy')),
          DebugButton('Codex', () => Navigator.pushNamed(context, '/codex')),
          DebugButton(
            'Settings',
            () => Navigator.pushNamed(context, '/settings'),
          ),
        ]),
        DebugSection('ADS', [
          DebugButton('Open Ad Inspector', () {
            MobileAds.instance.openAdInspector((error) {
              if (error != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Ad Inspector error: ${error.message}'),
                  ),
                );
              }
            });
          }),
        ]),
      ],
    );
  }

  Future<void> _checkSavedVoyage() async {
    final has = await VoyageSaveService.hasSave();
    if (mounted) setState(() => _hasSavedVoyage = has);
  }

  Future<void> _resumeVoyage() async {
    GameSfx().play(GameSfx.buttonClick);
    GameSfx().stopIntroLogo();
    _startBgMusic();
    final restored = await ref
        .read(voyageProvider.notifier)
        .restoreState(context.l10n);
    if (restored && mounted) {
      Navigator.pushNamed(context, '/voyage');
    }
  }

  void _beginVoyage({int? seed, bool isDaily = false}) {
    GameSfx().play(GameSfx.buttonClick);
    GameSfx().stopIntroLogo();
    _startBgMusic();
    final upgrades = ref.read(legacyProvider).upgrades;
    ref
        .read(voyageProvider.notifier)
        .startVoyage(
          seed: seed,
          isDaily: isDaily,
          upgrades: upgrades,
          l10n: context.l10n,
        );
    Navigator.pushNamed(context, '/voyage');
  }

  void _showSeedDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: SpaceColors.deepSpace,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: _accent.withValues(alpha: 0.4)),
          ),
          title: Text(
            context.l10n.ui_title_customSeed,
            style: TextStyle(
              fontFamily: 'monospace',
              color: _accent,
              letterSpacing: 3,
              fontSize: 18,
            ),
          ),
          content: TextField(
            controller: controller,
            maxLength: 6,
            textCapitalization: TextCapitalization.characters,
            style: const TextStyle(
              fontFamily: 'monospace',
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 6,
            ),
            decoration: InputDecoration(
              hintText: 'A3F2K1',
              hintStyle: TextStyle(
                fontFamily: 'monospace',
                color: Colors.white.withValues(alpha: 0.2),
                letterSpacing: 6,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: _accent.withValues(alpha: 0.3)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: _accent),
              ),
              counterStyle: TextStyle(
                color: _accent.withValues(alpha: 0.5),
                fontFamily: 'monospace',
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(
                context.l10n.ui_title_cancel,
                style: TextStyle(color: _accent.withValues(alpha: 0.6)),
              ),
            ),
            TextButton(
              onPressed: () {
                final text = controller.text.trim().toUpperCase();
                if (text.isEmpty) return;
                final seed = codeToSeed(text);
                if (seed == null) {
                  // Invalid characters in the seed code. Shake the field via
                  // a snackbar instead of crashing.
                  ScaffoldMessenger.of(ctx).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.ui_title_seedInvalid),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                  return;
                }
                Navigator.pop(ctx);
                _beginVoyage(seed: seed);
              },
              child: Text(
                context.l10n.ui_title_startVoyage,
                style: TextStyle(color: _accent),
              ),
            ),
          ],
        );
      },
    ).then((_) => controller.dispose());
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screen = ScreenInfo.of(context);

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // — Parallax star field —
          const EventStarField(),

          // — Ship silhouette at top —
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Semantics(
                label: 'Colony ship silhouette',
                excludeSemantics: true,
                child: RepaintBoundary(
                  child: CustomPaint(
                    size: Size(screenSize.width * 0.35, 100),
                    painter: _ShipSilhouettePainter(accent: _accent),
                  ),
                ),
              ),
            ),
          ),

          // — Build number (triple-tap to open debug trader) —
          if (_buildLabel.isNotEmpty)
            Positioned(
              top: 0,
              left: 0,
              child: SafeArea(
                child: GestureDetector(
                  // Long-press only — see title_screen.dart for why the
                  // onDoubleTap was removed (gesture ambiguity with the
                  // long-press recognizer).
                  onLongPress: _handleVersionLongPress,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      _buildLabel,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 10,
                        color: _accent.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          // — Settings gear —
          Positioned(
            top: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: IconButton(
                  tooltip: context.l10n.ui_tooltip_settings,
                  onPressed: () {
                    HapticService().light();
                    Navigator.pushNamed(context, '/settings');
                  },
                  icon: Icon(
                    Icons.settings,
                    color: _accent.withValues(alpha: 0.6),
                    size: 26,
                  ),
                ),
              ),
            ),
          ),

          // — Foreground UI —
          SafeArea(
            bottom: false,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: ScrollPadding.bottom(context, extra: 104),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: screen.isCompact ? 40 : 96),

                        // Title.
                        Text(
                          context.l10n.ui_title_stellar,
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: screen.scaledFontSize(42),
                            fontWeight: FontWeight.w900,
                            letterSpacing: 10,
                            color: _accent,
                            shadows: [
                              Shadow(
                                color: _accent.withValues(alpha: 0.8),
                                blurRadius: 20,
                              ),
                              Shadow(
                                color: _accent.withValues(alpha: 0.5),
                                blurRadius: 40,
                              ),
                              Shadow(
                                color: _accent.withValues(alpha: 0.3),
                                blurRadius: 60,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          context.l10n.ui_title_broadcast,
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: screen.scaledFontSize(42),
                            fontWeight: FontWeight.w900,
                            // Matches STELLAR (10). Was 18 — BROADCAST is 9 letters,
                            // which at 18 wrapped to 2 lines on ~360dp-wide phones.
                            letterSpacing: 10,
                            color: _accent,
                            shadows: [
                              Shadow(
                                color: _accent.withValues(alpha: 0.8),
                                blurRadius: 20,
                              ),
                              Shadow(
                                color: _accent.withValues(alpha: 0.5),
                                blurRadius: 40,
                              ),
                              Shadow(
                                color: _accent.withValues(alpha: 0.3),
                                blurRadius: 60,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Subtitle.
                        Text(
                          "Humanity's Last Voyage",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 16,
                            letterSpacing: 3,
                            color: Colors.white.withValues(alpha: 0.7),
                            shadows: [
                              Shadow(
                                color: Colors.white.withValues(alpha: 0.3),
                                blurRadius: 8,
                              ),
                              Shadow(
                                color: Colors.white.withValues(alpha: 0.15),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: screen.isCompact ? 32 : 72),

                        // Buttons — 3D MeshButton variant wrapped in a single
                        // MeshButtonMenu so they share one time source for wobble,
                        // stagger their fly-in, and don't fight each other.
                        ResponsiveContent(
                          extraPadding: 24,
                          child: MeshButtonMenu(
                            child: Column(
                              children: [
                                if (_hasSavedVoyage) ...[
                                  MeshButton(
                                    index: 0,
                                    label: 'RESUME VOYAGE',
                                    autofocus: true,
                                    onPressed: _resumeVoyage,
                                  ),
                                  SizedBox(height: screen.isCompact ? 10 : 16),
                                ],
                                MeshButton(
                                  index: _hasSavedVoyage ? 1 : 0,
                                  label: context.l10n.ui_title_beginVoyage,
                                  autofocus: !_hasSavedVoyage,
                                  onPressed: () {
                                    unawaited(VoyageSaveService.clear());
                                    _beginVoyage();
                                  },
                                ),
                                SizedBox(height: screen.isCompact ? 10 : 16),
                                MeshButton(
                                  index: _hasSavedVoyage ? 2 : 1,
                                  label: context.l10n.ui_title_dailyVoyage,
                                  accentColor: _dailyAccent,
                                  onPressed: () => _beginVoyage(isDaily: true),
                                ),
                                SizedBox(height: screen.isCompact ? 10 : 16),
                                MeshButton(
                                  index: _hasSavedVoyage ? 3 : 2,
                                  label: context.l10n.ui_title_customSeed,
                                  onPressed: _showSeedDialog,
                                ),
                                SizedBox(height: screen.isCompact ? 10 : 16),
                                MeshButton(
                                  index: _hasSavedVoyage ? 4 : 3,
                                  label: context.l10n.ui_title_legacyHub,
                                  onPressed: () {
                                    GameSfx().play(GameSfx.buttonClick);
                                    Navigator.pushNamed(context, '/legacy');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screen.isCompact ? 6 : 12),
                        // Utility row.
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              tooltip: context.l10n.ui_tooltip_leaderboards,
                              onPressed: _leaderboardsInFlight
                                  ? null
                                  : () async {
                                      setState(
                                        () => _leaderboardsInFlight = true,
                                      );
                                      try {
                                        final shown =
                                            await PlayGamesService.showAllLeaderboards();
                                        if (!mounted) return;
                                        if (!shown && context.mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                'Play Games unavailable. View leaderboards at stellarbroadcast.org',
                                              ),
                                              duration: Duration(seconds: 4),
                                            ),
                                          );
                                        }
                                      } finally {
                                        if (mounted) {
                                          setState(
                                            () => _leaderboardsInFlight = false,
                                          );
                                        }
                                      }
                                    },
                              icon: Icon(
                                Icons.leaderboard,
                                color: _accent.withValues(alpha: 0.6),
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            IconButton(
                              tooltip: context.l10n.ui_tooltip_bugReport,
                              onPressed: () {
                                GameSfx().play(GameSfx.buttonClick);
                                showDialog<void>(
                                  context: context,
                                  builder: (_) => const BugReportDialog(),
                                );
                              },
                              icon: Icon(
                                Icons.bug_report_outlined,
                                color: _accent.withValues(alpha: 0.6),
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            IconButton(
                              tooltip: context.l10n.ui_tooltip_settings,
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/settings'),
                              icon: Icon(
                                Icons.settings,
                                color: _accent.withValues(alpha: 0.6),
                                size: 24,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: screen.isCompact ? 16 : 48),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Banner ad — outside SafeArea for flush bottom.
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: PremiumAdGate(
              child: AdaptiveBannerAd(
                key: const ValueKey('title_proto_banner'),
                fallback: AdFallbackBanner(
                  onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Paints a simple geometric colony-ship silhouette.
class _ShipSilhouettePainter extends CustomPainter {
  _ShipSilhouettePainter({required this.accent});

  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final bottom = size.height;

    // Main hull — elongated triangle pointing up.
    final hullPath = Path()
      ..moveTo(cx, 0)
      ..lineTo(cx - size.width * 0.12, bottom * 0.7)
      ..lineTo(cx - size.width * 0.18, bottom)
      ..lineTo(cx + size.width * 0.18, bottom)
      ..lineTo(cx + size.width * 0.12, bottom * 0.7)
      ..close();

    // Left wing.
    final leftWing = Path()
      ..moveTo(cx - size.width * 0.12, bottom * 0.55)
      ..lineTo(cx - size.width * 0.45, bottom * 0.95)
      ..lineTo(cx - size.width * 0.18, bottom * 0.85)
      ..close();

    // Right wing.
    final rightWing = Path()
      ..moveTo(cx + size.width * 0.12, bottom * 0.55)
      ..lineTo(cx + size.width * 0.45, bottom * 0.95)
      ..lineTo(cx + size.width * 0.18, bottom * 0.85)
      ..close();

    final fillPaint = Paint()
      ..color = accent.withValues(alpha: 0.08)
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = accent.withValues(alpha: 0.25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    for (final path in [hullPath, leftWing, rightWing]) {
      canvas.drawPath(path, fillPaint);
      canvas.drawPath(path, strokePaint);
    }

    // Engine glow dot.
    final glowPaint = Paint()
      ..color = accent.withValues(alpha: 0.35)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawCircle(Offset(cx, bottom * 0.9), 4, glowPaint);
  }

  @override
  bool shouldRepaint(covariant _ShipSilhouettePainter oldDelegate) => false;
}
