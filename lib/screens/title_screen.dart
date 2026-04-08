import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/data/events.dart';
import 'package:stellar_broadcast/logic/puzzle_generator.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/widgets/holographic_button.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/services/play_games_service.dart';
import 'package:stellar_broadcast/widgets/premium_ad_gate.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _dailyAccent = Color(0xFFFFD740);

/// The title / main-menu screen for Stellar Broadcast.
///
/// Features an animated parallax star field, glowing title text, and
/// holographic action buttons.
class TitleScreen extends ConsumerStatefulWidget {
  const TitleScreen({super.key});

  @override
  ConsumerState<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends ConsumerState<TitleScreen>
    with SingleTickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _starController;
  Timer? _bgMusicTimer;
  bool _bgMusicStarted = false;
  String _buildLabel = '';

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((info) {
      if (mounted) setState(() => _buildLabel = 'v${info.version}+${info.buildNumber}');
    });
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    // Play intro logo (15s), then start bgmusic at 10s.
    GameSfx().playIntroLogo();
    _bgMusicTimer = Timer(const Duration(seconds: 10), () {
      _startBgMusic();
    });
  }

  @override
  void dispose() {
    _bgMusicTimer?.cancel();
    GameSfx().stopIntroLogo();
    _starController.dispose();
    super.dispose();
  }

  void _startBgMusic() {
    if (_bgMusicStarted) return;
    _bgMusicStarted = true;
    GameMusic().playBgMusic();
  }

  void _handleVersionTap() {
    final upgrades = ref.read(legacyProvider).upgrades;
    ref.read(voyageProvider.notifier).startVoyage(upgrades: upgrades, l10n: context.l10n);
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

  void _ensureVoyageStarted() {
    final voyage = ref.read(voyageProvider);
    if (voyage.encounterCount == 0 && !voyage.isComplete) {
      final upgrades = ref.read(legacyProvider).upgrades;
      ref.read(voyageProvider.notifier).startVoyage(upgrades: upgrades, l10n: context.l10n);
    }
  }

  void _showDebugMenu() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF0B1426),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        final accent = const Color(0xFF00E5FF);
        Widget btn(String label, VoidCallback onTap) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pop(ctx);
                  onTap();
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: accent.withValues(alpha: 0.3)),
                    color: accent.withValues(alpha: 0.06),
                  ),
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: accent, fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('DEBUG MENU', style: TextStyle(color: accent, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 2)),
              const SizedBox(height: 12),
              btn('Puzzle (Random)', () {
                final puzzle = PuzzleGenerator.generate(Random(), const VoyageState(encounterCount: 10));
                Navigator.pushNamed(context, '/puzzle', arguments: puzzle);
              }),
              btn('Puzzle (Synthetic)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.species != AlienSpecies.synthetic) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              btn('Puzzle (Geometric)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.species != AlienSpecies.geometric) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              btn('Puzzle (Crystalline)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.species != AlienSpecies.crystalline) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              btn('Puzzle (Spectral)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.sequenceType != SequenceType.spectralId) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              btn('Puzzle (Star Cluster)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.sequenceType != SequenceType.starCluster) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              btn('Puzzle (Chirality)', () {
                AlienPuzzle? p;
                final r = Random();
                while (p == null || p.sequenceType != SequenceType.chirality) {
                  p = PuzzleGenerator.generate(r, const VoyageState(encounterCount: 10));
                }
                Navigator.pushNamed(context, '/puzzle', arguments: p);
              }),
              const SizedBox(height: 8),
              Text('VISUAL EVENTS', style: TextStyle(color: accent.withValues(alpha: 0.5), fontSize: 11, letterSpacing: 2)),
              const SizedBox(height: 4),
              btn('Black Hole Lens', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'black_hole_lens');
                Navigator.pushNamed(context, '/black-hole', arguments: event);
              }),
              btn('Living Nebula', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'living_nebula');
                Navigator.pushNamed(context, '/living-nebula', arguments: event);
              }),
              btn('Seed Vault', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'seed_vault');
                Navigator.pushNamed(context, '/seed-vault', arguments: event);
              }),
              btn('Dyson Sphere', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'dyson_sphere');
                Navigator.pushNamed(context, '/dyson-sphere', arguments: event);
              }),
              btn('World Engine', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'relic_world_engine');
                Navigator.pushNamed(context, '/world-engine', arguments: event);
              }),
              btn('Mirror Array', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'relic_mirror_array');
                Navigator.pushNamed(context, '/mirror-array', arguments: event);
              }),
              btn('Chrono Vortex', () {
                final pool = buildEventPool(context.l10n);
                final event = pool.firstWhere((e) => e.id == 'chrono_vortex');
                Navigator.pushNamed(context, '/chrono-vortex', arguments: event);
              }),
              const SizedBox(height: 8),
              btn('Ship Status (Damaged)', () {
                _handleVersionTap();
              }),
              btn('Voyage', () {
                _ensureVoyageStarted();
                Navigator.pushNamed(context, '/voyage');
              }),
              btn('Scan', () {
                _ensureVoyageStarted();
                ref.read(voyageProvider.notifier).scanPlanet();
                Navigator.pushNamed(context, '/scan');
              }),
              btn('Trader', () {
                _ensureVoyageStarted();
                Navigator.pushNamed(context, '/trader');
              }),
              btn('Landing', () {
                _ensureVoyageStarted();
                ref.read(voyageProvider.notifier).scanPlanet();
                Navigator.pushNamed(context, '/landing');
              }),
              btn('Ending', () {
                _ensureVoyageStarted();
                ref.read(voyageProvider.notifier).scanPlanet();
                Navigator.pushNamed(context, '/ending');
              }),
              btn('Game Over', () {
                Navigator.pushNamed(context, '/gameover');
              }),
              btn('Legacy', () {
                Navigator.pushNamed(context, '/legacy');
              }),
              btn('Codex', () {
                Navigator.pushNamed(context, '/codex');
              }),
              btn('Settings', () {
                Navigator.pushNamed(context, '/settings');
              }),
            ],
          ),
        );
      },
    );
  }

  void _beginVoyage({int? seed, bool isDaily = false}) {
    GameSfx().play(GameSfx.buttonClick);
    GameSfx().stopIntroLogo();
    _startBgMusic();
    final upgrades = ref.read(legacyProvider).upgrades;
    ref
        .read(voyageProvider.notifier)
        .startVoyage(seed: seed, isDaily: isDaily, upgrades: upgrades, l10n: context.l10n);
    Navigator.pushNamed(context, '/voyage');
  }

  void _showSeedDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: const Color(0xFF0B1426),
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
                Navigator.pop(ctx);
                final seed = codeToSeed(text);
                _beginVoyage(seed: seed);
              },
              child: Text(context.l10n.ui_title_startVoyage, style: TextStyle(color: _accent)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // — Parallax star field —
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _starController,
                builder: (context, _) {
                  return Semantics(
                    label: 'Animated star field background',
                    excludeSemantics: true,
                    child: CustomPaint(
                      painter: StarFieldPainter(
                        animationValue: _starController.value,
                      ),
                      size: Size.infinite,
                    ),
                  );
                },
              ),
            ),
          ),

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
                  onDoubleTap: _handleVersionTap,
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
                  tooltip: 'Settings',
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
            child: Column(
              children: [
                const Spacer(flex: 4),

                // Title.
                Text(
                  context.l10n.ui_title_stellar,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 42,
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
                    fontSize: 42,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 18,
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

                const Spacer(flex: 3),

                // Buttons.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: HolographicButton(
                    label: context.l10n.ui_title_beginVoyage,
                    onPressed: _beginVoyage,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: _DailyVoyageButton(
                    onPressed: () => _beginVoyage(isDaily: true),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: HolographicButton(
                    label: context.l10n.ui_title_customSeed,
                    isPrimary: false,
                    onPressed: _showSeedDialog,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: HolographicButton(
                    label: context.l10n.ui_title_legacyHub,
                    isPrimary: false,
                    onPressed: () {
                      GameSfx().play(GameSfx.buttonClick);
                      Navigator.pushNamed(context, '/legacy');
                    },
                  ),
                ),
                const SizedBox(height: 12),
                // Utility row.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      tooltip: 'Leaderboards',
                      onPressed: () async {
                        final shown = await PlayGamesService.showAllLeaderboards();
                        if (!shown && context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Play Games unavailable. View leaderboards at stellarbroadcast.org'),
                              duration: Duration(seconds: 4),
                            ),
                          );
                        }
                      },
                      icon: Icon(Icons.leaderboard, color: _accent.withValues(alpha: 0.6), size: 24),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      tooltip: 'Settings',
                      onPressed: () => Navigator.pushNamed(context, '/settings'),
                      icon: Icon(Icons.settings, color: _accent.withValues(alpha: 0.6), size: 24),
                    ),
                  ],
                ),

                const Spacer(flex: 2),

                // Banner ad.
                SizedBox(
                  height: 58,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: PremiumAdGate(child: AdaptiveBannerAd(
                      fallback: AdFallbackBanner(
                        onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Daily Voyage button with gold accent, date label, and played-today check.
class _DailyVoyageButton extends ConsumerWidget {
  const _DailyVoyageButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyPlayed = ref.watch(dailyPlayedProvider);
    final played = dailyPlayed.valueOrNull ?? false;

    // Format today's date as "MAR 19" style.
    final now = DateTime.now().toUtc();
    final months = [
      context.l10n.ui_monthJan,
      context.l10n.ui_monthFeb,
      context.l10n.ui_monthMar,
      context.l10n.ui_monthApr,
      context.l10n.ui_monthMay,
      context.l10n.ui_monthJun,
      context.l10n.ui_monthJul,
      context.l10n.ui_monthAug,
      context.l10n.ui_monthSep,
      context.l10n.ui_monthOct,
      context.l10n.ui_monthNov,
      context.l10n.ui_monthDec,
    ];
    final dateLabel = '${months[now.month - 1]} ${now.day}';

    return Opacity(
      opacity: played ? 0.4 : 1.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: played
              ? null
              : [
                  BoxShadow(
                    color: _dailyAccent.withValues(alpha: 0.25),
                    blurRadius: 12,
                    spreadRadius: 1,
                  ),
                ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: played ? null : onPressed,
            borderRadius: BorderRadius.circular(8),
            splashColor: _dailyAccent.withValues(alpha: 0.3),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
              decoration: BoxDecoration(
                color: _dailyAccent.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _dailyAccent.withValues(alpha: played ? 0.3 : 0.8),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    played ? context.l10n.ui_title_dailyCompleted : context.l10n.ui_title_dailyVoyage,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      color: _dailyAccent,
                      shadows: played
                          ? null
                          : [
                              Shadow(
                                color: _dailyAccent.withValues(alpha: 0.6),
                                blurRadius: 8,
                              ),
                            ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: _dailyAccent.withValues(alpha: 0.15),
                    ),
                    child: Text(
                      dateLabel,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        color: _dailyAccent.withValues(alpha: 0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
