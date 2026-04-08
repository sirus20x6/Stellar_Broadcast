import 'dart:math' as math show Random, cos, sin, pi, sqrt;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/providers/game_providers.dart' show voyageProvider, seedToCode;
import 'package:stellar_broadcast/screens/premium_paywall.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/planet_l10n.dart';
import 'package:stellar_broadcast/widgets/holographic_button.dart';
import 'package:stellar_broadcast/widgets/scanner_upgrade_dialog.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

/// Dramatic planet-scan screen with phased reveal animation.
///
/// Phase 1: Cyan scan lines sweep down the screen.
/// Phase 2: Planet visualization and stats are revealed one-by-one.
class ScanScreen extends ConsumerStatefulWidget {
  const ScanScreen({super.key});

  @override
  ConsumerState<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends ConsumerState<ScanScreen>
    with TickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  /// Features detectable from orbit (visible on scan screen).
  static const _obviousFeatures = {
    'caves', 'airtight_caves', 'insulated_caves',
    'outstanding_beauty', 'outstanding_ugliness',
    'plant_life', 'unicellular_life',
    'floating_islands', 'orbital_wreckage', 'megastructural_fragments',
    'bioluminescent_life', 'cryovolcanism',
  };

  // Master timeline: 0.0 -> 0.35 = scan phase, 0.35 -> 1.0 = reveal phase.
  late final AnimationController _masterController;
  late final Animation<double> _scanProgress;
  late final Animation<double> _revealProgress;

  // Continuous star field.
  late final AnimationController _starController;

  // Interstitial ad for the 2:1 ad/nudge cycle.
  late final AdaptiveInterstitialAd _interstitial;

  @override
  void initState() {
    super.initState();
    _interstitial = AdaptiveInterstitialAd();
    if (!QaIapService().isPremium.value) {
      _interstitial.load();
    }

    _masterController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3500),
    )..forward().then((_) {
        if (mounted) {
          // Play scan data reveal SFX when scan completes.
          GameSfx().play(GameSfx.scanLineReveal, volume: 0.6);
          // Arrived at planet — stop engine hum, crossfade to planet music.
          GameMusic().stopEngineHum();
          final v = ref.read(voyageProvider);
          final p = v.currentPlanet;
          if (p != null) {
            GameMusic().playPlanetMusic(
              habitability: p.habitabilityScore,
              anomaly: p.anomaly,
              surfaceFeatures: p.surfaceFeatures,
            );
          }
          _showScannerUpgradeIfPending();
        }
      });

    _scanProgress = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _masterController,
        curve: const Interval(0.0, 0.35, curve: Curves.easeInOut),
      ),
    );

    _revealProgress = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _masterController,
        curve: const Interval(0.35, 1.0, curve: Curves.easeOut),
      ),
    );

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 90),
    )..repeat();
  }

  void _showScannerUpgradeIfPending() {
    final voyage = ref.read(voyageProvider);
    if (!voyage.pendingScannerUpgrade) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => ScannerUpgradeDialog(
        scannerLevels: voyage.scannerLevels,
        onUpgrade: (scannerName) {
          ref.read(voyageProvider.notifier).upgradeScanner(scannerName);
          Navigator.of(context).pop();
        },
        onDismiss: () {
          ref.read(voyageProvider.notifier).dismissScannerUpgrade();
          Navigator.of(context).pop();
        },
      ),
    );
  }

  @override
  void dispose() {
    _interstitial.dispose();
    _masterController.dispose();
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final voyage = ref.watch(voyageProvider);
    final planet = voyage.currentPlanet;
    if (planet == null) {
      return const Scaffold(
        backgroundColor: _background,
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      backgroundColor: _background,
      body: AnimatedBuilder(
        animation: Listenable.merge([_masterController, _starController]),
        builder: (context, _) {
          return Stack(
            children: [
              // Background stars.
              Positioned.fill(
                child: RepaintBoundary(
                  child: Semantics(
                    label: 'Animated star field background',
                    excludeSemantics: true,
                    child: CustomPaint(
                      painter: StarFieldPainter(
                        animationValue: _starController.value,
                        farStarCount: 60,
                        midStarCount: 20,
                        nearStarCount: 8,
                      ),
                      size: Size.infinite,
                    ),
                  ),
                ),
              ),

              // Scan lines overlay (phase 1).
              if (_scanProgress.value < 1.0)
                Positioned.fill(
                  child: Semantics(
                    label: 'Scanning planet',
                    excludeSemantics: true,
                    child: CustomPaint(
                      painter: _ScanLinePainter(
                        progress: _scanProgress.value,
                        accent: _accent,
                      ),
                    ),
                  ),
                ),

              // Content (fades in during phase 2).
              Positioned.fill(
                child: SafeArea(
                  child: Opacity(
                    opacity: _revealProgress.value.clamp(0.0, 1.0),
                    child: _buildContent(planet, voyage),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(Planet planet, dynamic voyage) {
    // Stats to show (scannable + radiation/anomaly).
    const scannerStats = ['atmosphere', 'gravity', 'resources', 'biodiversity', 'temperature', 'water'];
    final revealFraction = _revealProgress.value;
    final stagger = 1.0 / (scannerStats.length + 3); // +1 for radiation, +2 for header+planet
    final ship = voyage.ship as ShipSystems;
    final probedStats = voyage.probedStats as Set<String>;
    final probes = voyage.probes as int;
    final scannerReadings = voyage.scannerReadings as Map<String, double?>;

    // Calculate aggregate scanner uncertainty.
    double totalError = 0;
    int scannerCount = 0;
    for (final stat in scannerStats) {
      final scannerName = ShipSystems.scannerForStat[stat];
      if (scannerName != null) {
        final health = ship.getSystem(scannerName);
        final error = probedStats.contains(stat) ? 0.0 : (1.0 - health) * 0.4;
        totalError += error;
        scannerCount++;
      }
    }
    final avgUncertainty = scannerCount > 0 ? totalError / scannerCount : 0.0;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),

          // Planet name + codex button.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 36), // balance the icon on the right
                Flexible(
                  child: Text(
                    planet.name.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 6,
                      color: _accent,
                      shadows: [
                        Shadow(
                          color: _accent.withValues(alpha: 0.7),
                          blurRadius: 16,
                        ),
                        Shadow(
                          color: _accent.withValues(alpha: 0.4),
                          blurRadius: 32,
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/codex'),
                  tooltip: 'Codex',
                  icon: Icon(
                    Icons.menu_book_rounded,
                    size: 22,
                    color: _accent.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 6),

          // Planet description + probe counter.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: stagger * 0.5,
            child: Column(
              children: [
                Text(
                  planet.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Colors.white.withValues(alpha: 0.6),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.satellite_alt, size: 14,
                        color: _accent.withValues(alpha: 0.7)),
                    const SizedBox(width: 4),
                    Text(
                      'PROBES: $probes',
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 11,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: probes > 3
                            ? _accent.withValues(alpha: 0.7)
                            : Colors.orange,
                      ),
                    ),
                    if (avgUncertainty > 0.01) ...[
                      const SizedBox(width: 16),
                      Text(
                        'UNCERTAINTY: ±${(avgUncertainty * 100).round()}%',
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 11,
                          letterSpacing: 1,
                          color: avgUncertainty > 0.15
                              ? Colors.orange
                              : _accent.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Planet visualization.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: stagger,
            child: Semantics(
              label: 'Planet visualization showing ${planet.tier} world with ${planet.moons.length} moons${planet.rings != null ? " and a ${planet.rings!.type.name} ring system" : ""}',
              child: _PlanetVisualization(planet: planet, accent: _accent, pulse: _starController.value),
            ),
          ),

          const SizedBox(height: 10),

          // Stats.
          for (var i = 0; i < scannerStats.length; i++)
            () {
              final statName = scannerStats[i];
              final scannerName = ShipSystems.scannerForStat[statName]!;
              final scannerHealth = ship.getSystem(scannerName);
              final isProbed = probedStats.contains(statName);
              final rawReading = scannerReadings[statName];
              final scanFailed = rawReading == null && !isProbed;
              final displayedValue = rawReading ?? (isProbed ? planet.getStat(statName) : null);
              final maxError = isProbed ? 0.0 : (1.0 - scannerHealth) * 0.4;
              final t = stagger * (i + 2);
              final scannerLevel = voyage.scannerLevels[scannerName] ?? 0;

              return _revealedWidget(
                revealFraction: revealFraction,
                threshold: t,
                child: _PlanetStatRowWithProbe(
                  name: statName,
                  value: displayedValue,
                  isProbed: isProbed,
                  maxError: maxError,
                  scanFailed: scanFailed,
                  scannerLevel: scannerLevel,
                ),
              );
            }(),
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: stagger * (scannerStats.length + 2),
            child: _PlanetStatRow(name: 'radiation', value: planet.radiation),
          ),

          // Solar recharge notification.
          if (voyage.solarRechargeAmount > 0)
            _revealedWidget(
              revealFraction: revealFraction,
              threshold: stagger * (scannerStats.length + 2) + 0.05,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFFFD740).withValues(alpha: 0.4)),
                    color: const Color(0xFFFFD740).withValues(alpha: 0.06),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.wb_sunny, size: 16, color: const Color(0xFFFFD740)),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          "This star's spectrum is compatible with our solar arrays. +${voyage.solarRechargeAmount} energy recharged.",
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 13,
                            color: const Color(0xFFFFD740),
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          const SizedBox(height: 60),

          // LAUNCH PROBE button.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.82,
            child: _LaunchProbeButton(
              probeCount: probes,
              allProbed: scannerStats.every((s) => probedStats.contains(s)),
              onLaunch: () {
                HapticService().selection();
                ref.read(voyageProvider.notifier).useProbeAll();
              },
            ),
          ),

          const SizedBox(height: 4),

          // Habitability badge — based on scanner readings, not true stats.
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.85,
            child: _HabitabilityBadge(
              planet: planet,
              accent: _accent,
              scannerReadings: scannerReadings,
              probedStats: probedStats,
            ),
          ),

          // Surface features (obvious visible, hidden as "???").
          if (planet.surfaceFeatures.isNotEmpty)
            _revealedWidget(
              revealFraction: revealFraction,
              threshold: 0.88,
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  alignment: WrapAlignment.center,
                  children: planet.surfaceFeatures.map((f) {
                    final isRevealed = _obviousFeatures.contains(f) ||
                        voyage.revealedFeatures.contains(f);
                    final label = isRevealed
                        ? localizedSurfaceFeature(context.l10n, f)
                        : '??? Unknown';
                    final chipColor = !isRevealed
                        ? Colors.white.withValues(alpha: 0.4)
                        : _accent;
                    return Tooltip(
                      message: isRevealed
                          ? label
                          : 'Requires landing to identify',
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: chipColor.withValues(alpha: 0.3),
                          ),
                          color: chipColor.withValues(alpha: 0.06),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (!isRevealed) ...[
                              Icon(
                                Icons.lock_outline,
                                size: 10,
                                color: chipColor.withValues(alpha: 0.8),
                              ),
                              const SizedBox(width: 4),
                            ],
                            Text(
                              label,
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 10,
                                color: chipColor.withValues(alpha: 0.8),
                                letterSpacing: 0.5,
                                fontStyle: isRevealed
                                    ? FontStyle.normal
                                    : FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),

          // Moons section.
          if (planet.moons.isNotEmpty)
            _revealedWidget(
              revealFraction: revealFraction,
              threshold: 0.89,
              child: _MoonTagSection(moons: planet.moons),
            ),

          // Rings section.
          if (planet.rings != null)
            _revealedWidget(
              revealFraction: revealFraction,
              threshold: 0.90,
              child: _RingTagSection(rings: planet.rings!),
            ),

          const SizedBox(height: 6),

          // Action buttons (side by side).
          _revealedWidget(
            revealFraction: revealFraction,
            threshold: 0.92,
            child: Row(
              children: [
                Expanded(
                  child: HolographicButton(
                    label: context.l10n.ui_scan_landHere,
                    compact: true,
                    onPressed: () {
                      GameSfx().play(GameSfx.buttonClick);
                      Navigator.pushReplacementNamed(context, '/landing');
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: HolographicButton(
                    label: context.l10n.ui_scan_pressOn,
                    isPrimary: false,
                    compact: true,
                    onPressed: () async {
                      GameSfx().play(GameSfx.buttonClick);
                      GameMusic().returnToBgMusic();
                      GameMusic().startEngineHum();
                      final scanned = ref.read(voyageProvider).planetsScanned;
                      ref.read(voyageProvider.notifier).pressOn();
                      // Every 3 planets: 2 interstitial ads then 1 premium nudge.
                      if (scanned > 0 &&
                          scanned % 3 == 0 &&
                          !ref.read(isPremiumProvider)) {
                        // Cycle position: 1-based insertion number.
                        final insertion = scanned ~/ 3;
                        if (insertion % 3 == 0) {
                          await showPremiumPaywall(context);
                        } else {
                          _interstitial.show();
                        }
                      }
                      if (mounted) Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),

              ],
            ),
          ),
        ),
        // Seed display — always pinned at the very bottom.
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          child: Text(
            'SEED: ${seedToCode(voyage.seed as int)}',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 10,
              letterSpacing: 2,
              color: const Color(0xFF00E5FF).withValues(alpha: 0.35),
            ),
          ),
        ),
      ],
    );
  }

  /// Fades and slides in [child] when [revealFraction] surpasses [threshold].
  Widget _revealedWidget({
    required double revealFraction,
    required double threshold,
    required Widget child,
  }) {
    final local = ((revealFraction - threshold) / 0.15).clamp(0.0, 1.0);
    return Opacity(
      opacity: local,
      child: Transform.translate(
        offset: Offset(0, 12 * (1 - local)),
        child: child,
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Sub-widgets
// ---------------------------------------------------------------------------

/// Scan-line effect drawn during phase 1.
class _ScanLinePainter extends CustomPainter {
  _ScanLinePainter({required this.progress, required this.accent});

  final double progress;
  final Color accent;

  @override
  void paint(Canvas canvas, Size size) {
    const lineCount = 30;
    final sweepY = progress * size.height;

    for (int i = 0; i < lineCount; i++) {
      final y = (sweepY - i * 8).clamp(0.0, size.height);
      final opacity = (1.0 - i / lineCount) * 0.5 * (1.0 - progress);
      final paint = Paint()
        ..color = accent.withValues(alpha: opacity)
        ..strokeWidth = 1.0;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }

    // Bright leading edge.
    final edgePaint = Paint()
      ..color = accent.withValues(alpha: 0.8 * (1.0 - progress))
      ..strokeWidth = 2.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawLine(
      Offset(0, sweepY),
      Offset(size.width, sweepY),
      edgePaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ScanLinePainter old) =>
      old.progress != progress;
}

/// Planet visualization with ring that wraps around (behind and in front).
class _PlanetVisualization extends StatelessWidget {
  const _PlanetVisualization({required this.planet, required this.accent, this.pulse = 0.0});

  final Planet planet;
  final Color accent;
  final double pulse;

  @override
  Widget build(BuildContext context) {
    final tempInfluence = planet.temperature;
    final bioInfluence = planet.biodiversity;

    final baseColor = Color.lerp(
      Color.lerp(
        const Color(0xFF1565C0),
        const Color(0xFFD84315),
        tempInfluence,
      ),
      const Color(0xFF2E7D32),
      bioInfluence * 0.5,
    )!;

    const moonAngles = [0.3, 2.4, 4.2, 1.0, 5.5];
    final hasRings = planet.rings != null;

    // Use a fixed-size SizedBox so the ring painters have room.
    // The ring needs ~2.5x the planet diameter.
    const boxW = 280.0;
    const boxH = 180.0;

    return SizedBox(
      width: boxW,
      height: boxH,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // Back half of ring (behind planet).
          if (hasRings)
            Positioned(
              left: 0, top: 0, width: boxW, height: boxH,
              child: CustomPaint(
                painter: _RingPainter(
                  rings: planet.rings!,
                  pulse: pulse,
                  half: _RingHalf.back,
                ),
              ),
            ),

          // Planet sphere with procedural surface.
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: baseColor.withValues(alpha: 0.35),
                  blurRadius: 24,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: accent.withValues(alpha: 0.08),
                  blurRadius: 40,
                  spreadRadius: 8,
                ),
              ],
            ),
            child: CustomPaint(
              size: const Size(84, 84),
              painter: _PlanetSurfacePainter(
                planet: planet,
                baseColor: baseColor,
                rotation: pulse * 2 * math.pi,
              ),
            ),
          ),

          // Front half of ring (in front of planet).
          if (hasRings)
            Positioned(
              left: 0, top: 0, width: boxW, height: boxH,
              child: CustomPaint(
                painter: _RingPainter(
                  rings: planet.rings!,
                  pulse: pulse,
                  half: _RingHalf.front,
                ),
              ),
            ),

          // Moons — slowly orbiting.
          for (var i = 0; i < planet.moons.length && i < 5; i++)
            _PositionedMoonOrb(
              moon: planet.moons[i],
              angle: moonAngles[i] + pulse * 2 * math.pi * 0.3,
              orbitRadius: 55 + i * 6.0,
              center: const Offset(0, 0),
            ),
        ],
      ),
    );
  }
}

enum _RingHalf { back, front }

/// High-fidelity ring painter with back/front clipping, tilt, sparkles, glow, and fog.
class _RingPainter extends CustomPainter {
  _RingPainter({required this.rings, this.pulse = 0.0, required this.half});

  final RingSystem rings;
  final double pulse;
  final _RingHalf half;

  late final List<_Sparkle> _sparkles = _generateSparkles();

  List<_Sparkle> _generateSparkles() {
    final count = (40 + rings.density * 40).round();
    final rng = math.Random(rings.density.hashCode ^ rings.type.index);
    return List.generate(count, (_) => _Sparkle(
      angle: rng.nextDouble() * 2 * math.pi,
      band: 0.82 + rng.nextDouble() * 0.36,
      brightness: 0.2 + rng.nextDouble() * 0.8,
      phase: rng.nextDouble() * 2 * math.pi,
      size: 0.5 + rng.nextDouble() * 2.0,
      colorShift: -0.15 + rng.nextDouble() * 0.3,
    ));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final center = Offset(cx, cy);

    // Clip to back (top) or front (bottom) half.
    canvas.save();
    if (half == _RingHalf.back) {
      canvas.clipRect(Rect.fromLTWH(0, 0, size.width, cy));
    } else {
      canvas.clipRect(Rect.fromLTWH(0, cy, size.width, size.height - cy));
    }

    // Apply tilt rotation.
    final tiltRad = rings.tiltDegrees * math.pi / 180.0;
    canvas.translate(cx, cy);
    canvas.rotate(tiltRad);
    canvas.translate(-cx, -cy);

    final Color primary;
    final Color secondary;
    final Color highlight;
    switch (rings.type) {
      case RingType.dust:
        primary = const Color(0xFFBDBDBD);
        secondary = const Color(0xFF9E9E9E);
        highlight = const Color(0xFFE0E0E0);
      case RingType.ice:
        primary = const Color(0xFF81D4FA);
        secondary = const Color(0xFFB3E5FC);
        highlight = const Color(0xFFE1F5FE);
      case RingType.rocky:
        primary = const Color(0xFF8D6E63);
        secondary = const Color(0xFFA1887F);
        highlight = const Color(0xFFD7CCC8);
      case RingType.metallic:
        primary = const Color(0xFFFFD700);
        secondary = const Color(0xFFFFF176);
        highlight = const Color(0xFFFFFDE7);
    }

    final d = rings.density;
    final baseAlpha = 0.25 + d * 0.45;
    // Fixed ring dimensions — independent of container size.
    // Planet is 80px, rings should be ~2.5x wider.
    const ringW = 220.0;
    const ringH = 50.0;

    // ── Outer diffuse glow ──
    final glowPaint = Paint()
      ..color = primary.withValues(alpha: baseAlpha * 0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16.0 + d * 14.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawOval(
      Rect.fromCenter(center: center, width: ringW + 20, height: ringH + 8),
      glowPaint,
    );

    // ── Fog / nebulous haze ──
    final fogPaint = Paint()
      ..color = primary.withValues(alpha: baseAlpha * 0.06)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 24.0 + d * 18.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);
    canvas.drawOval(
      Rect.fromCenter(center: center, width: ringW * 0.95, height: ringH * 0.95),
      fogPaint,
    );

    // ── Light scattering halo (sunlit left side only) ──
    final scatterRect = Rect.fromCenter(center: center, width: ringW * 1.05, height: ringH * 1.05);
    final scatterPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.center,
        colors: [
          highlight.withValues(alpha: baseAlpha * 0.2),
          highlight.withValues(alpha: 0.0),
        ],
      ).createShader(scatterRect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0 + d * 8.0
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
    canvas.drawOval(scatterRect, scatterPaint);

    // ── Ring bands (10 bands with varying properties) ──
    final bands = <({double mul, double alpha, Color color, double stroke})>[
      (mul: 1.16, alpha: baseAlpha * 0.10, color: secondary, stroke: 0.8 + d * 0.8),
      (mul: 1.12, alpha: baseAlpha * 0.20, color: primary, stroke: 1.0 + d * 1.2),
      (mul: 1.08, alpha: baseAlpha * 0.40, color: secondary, stroke: 1.2 + d * 1.8),
      (mul: 1.04, alpha: baseAlpha * 0.65, color: primary, stroke: 1.8 + d * 2.5),
      (mul: 1.00, alpha: baseAlpha * 0.85, color: primary, stroke: 2.5 + d * 3.5),
      // Cassini gap — skip
      (mul: 0.94, alpha: baseAlpha * 0.75, color: secondary, stroke: 2.0 + d * 3.0),
      (mul: 0.90, alpha: baseAlpha * 0.55, color: primary, stroke: 1.5 + d * 2.0),
      (mul: 0.86, alpha: baseAlpha * 0.35, color: secondary, stroke: 1.2 + d * 1.5),
      (mul: 0.82, alpha: baseAlpha * 0.20, color: primary, stroke: 0.8 + d * 1.0),
      (mul: 0.78, alpha: baseAlpha * 0.08, color: secondary, stroke: 0.5 + d * 0.5),
    ];

    // Cassini-style gap.
    final gapPaint = Paint()
      ..color = const Color(0xFF0B1426).withValues(alpha: 0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawOval(
      Rect.fromCenter(center: center, width: ringW * 0.97, height: ringH * 0.97),
      gapPaint,
    );

    // Second smaller gap.
    canvas.drawOval(
      Rect.fromCenter(center: center, width: ringW * 0.88, height: ringH * 0.88),
      gapPaint..strokeWidth = 1.0,
    );

    for (final band in bands) {
      // Per-band gradient shader — brighter at edges, slightly dimmer center.
      final bandRect = Rect.fromCenter(
        center: center,
        width: ringW * band.mul,
        height: ringH * band.mul,
      );
      final paint = Paint()
        ..shader = LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            band.color.withValues(alpha: band.alpha * 1.2),
            band.color.withValues(alpha: band.alpha * 0.7),
            band.color.withValues(alpha: band.alpha * 1.0),
          ],
          stops: const [0.0, 0.5, 1.0],
        ).createShader(bandRect)
        ..style = PaintingStyle.stroke
        ..strokeWidth = band.stroke;
      canvas.drawOval(bandRect, paint);
    }

    // ── Sunlit edge highlight ──
    final highlightRect = Rect.fromCenter(center: center, width: ringW, height: ringH);
    final shimmerOffset = math.sin(pulse * 8 * math.pi) * 0.15; // oscillating highlight
    final highlightPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment(-0.8 + shimmerOffset, 0),
        end: Alignment(0.0 + shimmerOffset, 0),
        colors: [
          highlight.withValues(alpha: baseAlpha * 0.6),
          highlight.withValues(alpha: 0.0),
        ],
      ).createShader(highlightRect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0 + d * 3.0;
    canvas.drawOval(highlightRect, highlightPaint);

    // ── Sparkles / dust particles ──
    // Multiply pulse for visible sparkle speed (pulse cycles over 90s, we want ~3s twinkle).
    final shimmerPhase = pulse * 60 * math.pi;
    for (final s in _sparkles) {
      final rx = ringW * s.band * 0.5;
      final ry = ringH * s.band * 0.5;
      final x = cx + rx * math.cos(s.angle);
      final y = cy + ry * math.sin(s.angle);

      final twinkle = 0.2 + 0.8 * ((math.sin(shimmerPhase + s.phase) + 1.0) / 2.0);
      final alpha = (s.brightness * twinkle * baseAlpha * 1.8).clamp(0.0, 1.0);
      if (alpha < 0.03) continue;

      // Tinted sparkle color.
      final sparkleColor = Color.lerp(highlight, primary, (s.colorShift + 0.15) / 0.3)!;

      canvas.drawCircle(
        Offset(x, y),
        s.size * (0.8 + twinkle * 0.2),
        Paint()..color = sparkleColor.withValues(alpha: alpha),
      );

      // Glow halo on bright sparkles.
      if (s.brightness > 0.3 && s.size > 0.8) {
        canvas.drawCircle(
          Offset(x, y),
          s.size * 2.0,
          Paint()
            ..color = sparkleColor.withValues(alpha: alpha * 0.2)
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3),
        );
      }
    }

    // ── Front-half shadow band (planet shadow on ring) ──
    if (half == _RingHalf.front) {
      final shadowPaint = Paint()
        ..color = const Color(0xFF0B1426).withValues(alpha: 0.3)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6.0
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
      // Shadow only in center portion where planet would cast shadow.
      canvas.drawArc(
        Rect.fromCenter(center: center, width: ringW * 0.5, height: ringH * 0.5),
        0.3, // start angle
        math.pi * 0.4, // sweep
        false,
        shadowPaint,
      );
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _RingPainter old) =>
      old.rings != rings || old.pulse != pulse || old.half != half;
}

class _Sparkle {
  final double angle;
  final double band;
  final double brightness;
  final double phase;
  final double size;
  final double colorShift;
  const _Sparkle({
    required this.angle, required this.band, required this.brightness,
    required this.phase, required this.size, required this.colorShift,
  });
}

/// Procedural planet surface painter with continents, water, ice, clouds, and rotation.
class _PlanetSurfacePainter extends CustomPainter {
  _PlanetSurfacePainter({
    required this.planet,
    required this.baseColor,
    required this.rotation,
  });

  final Planet planet;
  final Color baseColor;
  final double rotation;

  // Deterministic surface patches seeded from planet name.
  late final List<_SurfacePatch> _patches = _generatePatches();

  List<_SurfacePatch> _generatePatches() {
    final rng = math.Random(planet.name.hashCode);
    final count = 20 + (planet.biodiversity * 20).round();
    return List.generate(count, (_) => _SurfacePatch(
      x: -1.0 + rng.nextDouble() * 2.0,
      y: -1.0 + rng.nextDouble() * 2.0,
      radius: 0.08 + rng.nextDouble() * 0.18,
      isWater: rng.nextDouble() < planet.water,
    ));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final r = size.width / 2;

    // Clip to circle.
    final circlePath = Path()..addOval(Rect.fromCircle(center: Offset(cx, cy), radius: r));
    canvas.clipPath(circlePath);

    // ── Opaque base fill ──
    final waterColor = Color.lerp(const Color(0xFF0D47A1), const Color(0xFF1565C0), 0.5)!;
    final landColor = Color.lerp(
      Color.lerp(const Color(0xFF2E7D32), const Color(0xFF8D6E63), 1.0 - planet.biodiversity)!,
      const Color(0xFFBF8040), // desert
      (planet.temperature - 0.5).clamp(0.0, 1.0),
    )!;

    // Base: water or barren depending on water stat.
    final baseFill = planet.water > 0.3 ? waterColor : Color.lerp(landColor, const Color(0xFF616161), 0.5)!;
    canvas.drawCircle(Offset(cx, cy), r, Paint()..color = baseFill);

    // ── Rotate for surface features ──
    canvas.save();
    canvas.translate(cx, cy);
    canvas.rotate(rotation);
    canvas.translate(-cx, -cy);

    // ── Continents / land patches ──
    for (final p in _patches) {
      final px = cx + p.x * r * 0.8;
      final py = cy + p.y * r * 0.8;
      final pr = p.radius * r;

      // Distance from center — patches near edge are foreshortened.
      final dx = px - cx;
      final dy = py - cy;
      final distFromCenter = math.sqrt(dx * dx + dy * dy);
      if (distFromCenter + pr > r * 1.1) continue; // skip patches too far out

      final foreshorten = (1.0 - distFromCenter / r).clamp(0.3, 1.0);
      final color = p.isWater ? waterColor.withValues(alpha: 0.7) : landColor;

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(px, py),
          width: pr * 2 * foreshorten,
          height: pr * 1.5 * foreshorten,
        ),
        Paint()
          ..color = color
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
      );
    }

    // ── Ice caps (cold planets) ──
    if (planet.temperature < 0.3) {
      final iceAlpha = (0.3 - planet.temperature) / 0.3; // 0→1 as temp drops
      final icePaint = Paint()
        ..color = Colors.white.withValues(alpha: iceAlpha * 0.6)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3);
      // North pole.
      canvas.drawOval(
        Rect.fromCenter(center: Offset(cx, cy - r * 0.75), width: r * 0.8, height: r * 0.4),
        icePaint,
      );
      // South pole.
      canvas.drawOval(
        Rect.fromCenter(center: Offset(cx, cy + r * 0.75), width: r * 0.7, height: r * 0.35),
        icePaint,
      );
    }

    // ── Desert bands (hot dry planets) ──
    if (planet.temperature > 0.7 && planet.water < 0.4) {
      final desertAlpha = ((planet.temperature - 0.7) / 0.3).clamp(0.0, 1.0);
      canvas.drawOval(
        Rect.fromCenter(center: Offset(cx, cy), width: r * 1.6, height: r * 0.5),
        Paint()
          ..color = const Color(0xFFD4A056).withValues(alpha: desertAlpha * 0.4)
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
      );
    }

    // ── Cloud wisps ──
    if (planet.atmosphere > 0.4) {
      final cloudRng = math.Random(planet.name.hashCode ^ 0xC10D);
      final cloudCount = 3 + (planet.atmosphere * 5).round();
      final cloudAlpha = (planet.atmosphere - 0.4) / 0.6 * 0.35;
      for (int i = 0; i < cloudCount; i++) {
        final cx2 = cx + (-0.6 + cloudRng.nextDouble() * 1.2) * r;
        final cy2 = cy + (-0.7 + cloudRng.nextDouble() * 1.4) * r;
        canvas.drawOval(
          Rect.fromCenter(
            center: Offset(cx2, cy2),
            width: r * (0.3 + cloudRng.nextDouble() * 0.5),
            height: r * (0.08 + cloudRng.nextDouble() * 0.12),
          ),
          Paint()
            ..color = Colors.white.withValues(alpha: cloudAlpha)
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
        );
      }
    }

    canvas.restore(); // end rotation

    // ── Fixed lighting overlay (doesn't rotate) ──
    // Sunlit highlight on left.
    canvas.drawCircle(
      Offset(cx, cy),
      r,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.4, -0.3),
          radius: 1.0,
          colors: [
            Colors.white.withValues(alpha: 0.15),
            Colors.white.withValues(alpha: 0.0),
          ],
          stops: const [0.0, 0.5],
        ).createShader(Rect.fromCircle(center: Offset(cx, cy), radius: r)),
    );

    // Terminator shadow on right.
    canvas.drawCircle(
      Offset(cx, cy),
      r,
      Paint()
        ..shader = LinearGradient(
          begin: const Alignment(0.2, 0),
          end: Alignment.centerRight,
          colors: [
            Colors.transparent,
            const Color(0xFF0B1426).withValues(alpha: 0.6),
          ],
        ).createShader(Rect.fromCircle(center: Offset(cx, cy), radius: r)),
    );

    // Atmosphere rim glow.
    canvas.drawCircle(
      Offset(cx, cy),
      r - 1,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0
        ..color = baseColor.withValues(alpha: 0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
    );
  }

  @override
  bool shouldRepaint(covariant _PlanetSurfacePainter old) =>
      old.rotation != rotation || old.planet != planet;
}

class _SurfacePatch {
  final double x, y, radius;
  final bool isWater;
  const _SurfacePatch({required this.x, required this.y, required this.radius, required this.isWater});
}

/// Positions a moon orb at an angle around the planet center.
class _PositionedMoonOrb extends StatelessWidget {
  const _PositionedMoonOrb({
    required this.moon,
    required this.angle,
    required this.orbitRadius,
    required this.center,
  });

  final Moon moon;
  final double angle;
  final double orbitRadius;
  final Offset center;

  @override
  Widget build(BuildContext context) {
    final dx = math.cos(angle) * orbitRadius;
    final dy = math.sin(angle) * orbitRadius * 0.4; // Elliptical orbit
    final diameter = 6.0 + moon.size * 10.0; // 6-16px

    return Transform.translate(
      offset: Offset(dx, dy),
      child: _MoonOrb(moon: moon, diameter: diameter),
    );
  }
}

class _MoonOrb extends StatelessWidget {
  const _MoonOrb({required this.moon, required this.diameter});

  final Moon moon;
  final double diameter;

  @override
  Widget build(BuildContext context) {
    final color = _moonColor(moon.type);
    final isHabitable = moon.type == MoonType.habitable;

    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: const Alignment(-0.3, -0.3),
          colors: [
            color.withValues(alpha: 0.9),
            color.withValues(alpha: 0.4),
            const Color(0xFF0B1426),
          ],
          stops: const [0.0, 0.6, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: isHabitable ? 0.6 : 0.4),
            blurRadius: isHabitable ? 10 : 6,
            spreadRadius: isHabitable ? 2 : 1,
          ),
        ],
      ),
    );
  }

  static Color _moonColor(MoonType type) {
    switch (type) {
      case MoonType.barren:
        return const Color(0xFF78909C);
      case MoonType.metalRich:
        return const Color(0xFFFFD700);
      case MoonType.unstable:
        return const Color(0xFFFF7043);
      case MoonType.habitable:
        return const Color(0xFF4CAF50);
      case MoonType.ice:
        return const Color(0xFF81D4FA);
    }
  }
}

/// Moon tags section displayed below surface features on scan screen.
class _MoonTagSection extends StatelessWidget {
  const _MoonTagSection({required this.moons});

  final List<Moon> moons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Text(
            'MOONS',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 9,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF00E5FF).withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 4),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            alignment: WrapAlignment.center,
            children: moons.map((moon) {
              final color = _MoonOrb._moonColor(moon.type);
              final label = _moonTypeLabel(moon.type);
              final isHabitable = moon.type == MoonType.habitable;
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: color.withValues(alpha: isHabitable ? 0.6 : 0.3),
                  ),
                  color: color.withValues(alpha: isHabitable ? 0.12 : 0.06),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isHabitable
                          ? Icons.eco
                          : moon.type == MoonType.unstable
                              ? Icons.warning_amber
                              : Icons.nightlight_round,
                      size: 10,
                      color: color.withValues(alpha: 0.8),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      label,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 10,
                        color: color.withValues(alpha: 0.8),
                        letterSpacing: 0.5,
                        fontWeight:
                            isHabitable ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    if (isHabitable && moon.habitability != null) ...[
                      const SizedBox(width: 4),
                      Text(
                        '${(moon.habitability! * 100).round()}%',
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                    ],
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  static String _moonTypeLabel(MoonType type) {
    switch (type) {
      case MoonType.barren:
        return 'Barren';
      case MoonType.metalRich:
        return 'Metal-Rich';
      case MoonType.unstable:
        return 'Unstable';
      case MoonType.habitable:
        return 'Habitable';
      case MoonType.ice:
        return 'Ice';
    }
  }
}

/// Ring type tag section for scan screen.
class _RingTagSection extends StatelessWidget {
  const _RingTagSection({required this.rings});

  final RingSystem rings;

  @override
  Widget build(BuildContext context) {
    final color = _ringColor(rings.type);
    final label = _ringTypeLabel(rings.type);

    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Text(
            'RINGS',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 9,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF00E5FF).withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withValues(alpha: 0.3)),
              color: color.withValues(alpha: 0.06),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.trip_origin,
                  size: 10,
                  color: color.withValues(alpha: 0.8),
                ),
                const SizedBox(width: 4),
                Text(
                  '$label Ring',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 10,
                    color: color.withValues(alpha: 0.8),
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '(${(rings.density * 100).round()}%)',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 9,
                    color: color.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Color _ringColor(RingType type) {
    switch (type) {
      case RingType.dust:
        return const Color(0xFFBDBDBD);
      case RingType.ice:
        return const Color(0xFF81D4FA);
      case RingType.rocky:
        return const Color(0xFF8D6E63);
      case RingType.metallic:
        return const Color(0xFFFFD700);
    }
  }

  static String _ringTypeLabel(RingType type) {
    switch (type) {
      case RingType.dust:
        return 'Dust';
      case RingType.ice:
        return 'Ice';
      case RingType.rocky:
        return 'Rocky';
      case RingType.metallic:
        return 'Metallic';
    }
  }
}

/// A planet stat row showing the scanner's reading with an error bar
/// indicating scanner uncertainty.
class _PlanetStatRowWithProbe extends StatelessWidget {
  const _PlanetStatRowWithProbe({
    required this.name,
    required this.value,
    required this.isProbed,
    required this.maxError,
    this.scannerLevel = 0,
    this.scanFailed = false,
  });

  static const _accent = Color(0xFF00E5FF);

  final String name;
  final double? value;
  final bool isProbed;
  final double maxError;
  final int scannerLevel;
  final bool scanFailed;

  @override
  Widget build(BuildContext context) {
    // If scan failed and not probed, show "???"
    if (value == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              child: Text(
                _displayName(name, context),
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 11,
                  letterSpacing: 1,
                  color: _accent.withValues(alpha: 0.8),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Container(
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white.withValues(alpha: 0.05),
                ),
                child: Center(
                  child: Container(
                    height: 1,
                    color: Colors.red.withValues(alpha: 0.3),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 4),
            SizedBox(
              width: 35,
              child: Text(
                '???',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.withValues(alpha: 0.8),
                ),
              ),
            ),
            const SizedBox(width: 4),
            SizedBox(
              width: 20,
              child: Icon(Icons.warning_amber, size: 14,
                  color: Colors.red.withValues(alpha: 0.6)),
            ),
            if (scannerLevel > 0) _scannerLevelBadge(),
          ],
        ),
      );
    }

    final pct = (value! * 100).round();
    final color = _statColor(name, value!);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              _displayName(name, context),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                letterSpacing: 1,
                color: _accent.withValues(alpha: 0.8),
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final barWidth = constraints.maxWidth;
                final reading = value!.clamp(0.0, 1.0);
                final errorLow = (reading - maxError).clamp(0.0, 1.0);
                final errorHigh = (reading + maxError).clamp(0.0, 1.0);

                return Container(
                  height: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white.withValues(alpha: 0.05),
                  ),
                  child: Stack(
                    children: [
                      // Error band (translucent).
                      if (maxError > 0.01)
                        Positioned(
                          left: errorLow * barWidth,
                          width: (errorHigh - errorLow) * barWidth,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange.withValues(alpha: 0.15),
                              border: Border.all(
                                color: Colors.orange.withValues(alpha: 0.25),
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      // Value bar.
                      FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: reading,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                              colors: [
                                color.withValues(alpha: 0.9),
                                color.withValues(alpha: 0.5),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: color.withValues(alpha: 0.4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 4),
          SizedBox(
            width: 35,
            child: Text(
              '$pct%',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          const SizedBox(width: 4),
          // Status indicator.
          SizedBox(
            width: 20,
            child: isProbed
                ? Icon(Icons.verified, size: 14,
                    color: const Color(0xFF00E676).withValues(alpha: 0.8))
                : maxError > 0.01
                    ? Text(
                        '±${(maxError * 100).round()}',
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 8,
                          color: Colors.orange.withValues(alpha: 0.7),
                        ),
                      )
                    : const SizedBox.shrink(),
          ),
          if (scannerLevel > 0) _scannerLevelBadge(),
        ],
      ),
    );
  }

  Widget _scannerLevelBadge() {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _accent.withValues(alpha: 0.15),
          border: Border.all(
            color: _accent.withValues(alpha: 0.5),
          ),
        ),
        child: Center(
          child: Text(
            '$scannerLevel',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: _accent.withValues(alpha: 0.9),
            ),
          ),
        ),
      ),
    );
  }

  String _displayName(String name, BuildContext context) {
    switch (name) {
      case 'atmosphere':
        return context.l10n.ui_scan_statAtmos;
      case 'temperature':
        return context.l10n.ui_scan_statTemp;
      case 'water':
        return context.l10n.ui_scan_statWater;
      case 'resources':
        return context.l10n.ui_scan_statResource;
      case 'gravity':
        return context.l10n.ui_scan_statGravity;
      case 'biodiversity':
        return context.l10n.ui_scan_statBio;
      default:
        return name.toUpperCase();
    }
  }

  Color _statColor(String name, double v) {
    switch (name) {
      case 'water':
        return const Color(0xFF42A5F5);
      case 'temperature':
        return Color.lerp(
          const Color(0xFF42A5F5),
          const Color(0xFFEF5350),
          v,
        )!;
      case 'biodiversity':
        return const Color(0xFF66BB6A);
      default:
        return const Color(0xFF00E5FF);
    }
  }
}

/// Prominent LAUNCH PROBE button that resolves all error bars at once.
class _LaunchProbeButton extends StatelessWidget {
  const _LaunchProbeButton({
    required this.probeCount,
    required this.allProbed,
    required this.onLaunch,
  });

  final int probeCount;
  final bool allProbed;
  final VoidCallback onLaunch;

  @override
  Widget build(BuildContext context) {
    final enabled = probeCount > 0 && !allProbed;

    return GestureDetector(
      onTap: enabled ? onLaunch : null,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: enabled
                ? Colors.orange.withValues(alpha: 0.7)
                : Colors.white.withValues(alpha: 0.1),
            width: enabled ? 1.5 : 1,
          ),
          color: enabled
              ? Colors.orange.withValues(alpha: 0.1)
              : Colors.white.withValues(alpha: 0.02),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.satellite_alt,
              size: 18,
              color: enabled
                  ? Colors.orange
                  : Colors.white.withValues(alpha: 0.2),
            ),
            const SizedBox(width: 10),
            Text(
              allProbed ? context.l10n.ui_scan_allStatsVerified : context.l10n.ui_scan_launchProbe,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: enabled
                    ? Colors.orange
                    : Colors.white.withValues(alpha: 0.3),
              ),
            ),
            if (!allProbed) ...[
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: enabled
                      ? Colors.orange.withValues(alpha: 0.2)
                      : Colors.white.withValues(alpha: 0.05),
                  border: Border.all(
                    color: enabled
                        ? Colors.orange.withValues(alpha: 0.4)
                        : Colors.white.withValues(alpha: 0.1),
                  ),
                ),
                child: Text(
                  'x$probeCount',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: enabled
                        ? Colors.orange.withValues(alpha: 0.9)
                        : Colors.white.withValues(alpha: 0.2),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// A single planet stat row with label, bar, and percentage (no error bar).
class _PlanetStatRow extends StatelessWidget {
  const _PlanetStatRow({required this.name, required this.value});

  static const _accent = Color(0xFF00E5FF);

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    final pct = (value * 100).round();
    final color = _statColor(name, value);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              _displayName(name, context),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                letterSpacing: 1,
                color: _accent.withValues(alpha: 0.8),
              ),
            ),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Container(
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white.withValues(alpha: 0.05),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: value.clamp(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      colors: [
                        color.withValues(alpha: 0.9),
                        color.withValues(alpha: 0.5),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(alpha: 0.4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          SizedBox(
            width: 35,
            child: Text(
              '$pct%',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          // Spacer to align with probe column.
          const SizedBox(width: 32),
        ],
      ),
    );
  }

  String _displayName(String name, BuildContext context) {
    switch (name) {
      case 'atmosphere':
        return context.l10n.ui_scan_statAtmos;
      case 'temperature':
        return context.l10n.ui_scan_statTemp;
      case 'water':
        return context.l10n.ui_scan_statWater;
      case 'resources':
        return context.l10n.ui_scan_statResource;
      case 'gravity':
        return context.l10n.ui_scan_statGravity;
      case 'biodiversity':
        return context.l10n.ui_scan_statBio;
      case 'anomaly':
        return context.l10n.ui_scan_statAnomaly;
      case 'radiation':
        return context.l10n.ui_scan_statRadiation;
      default:
        return name.toUpperCase();
    }
  }

  Color _statColor(String name, double v) {
    switch (name) {
      case 'water':
        return const Color(0xFF42A5F5);
      case 'temperature':
        return Color.lerp(
          const Color(0xFF42A5F5),
          const Color(0xFFEF5350),
          v,
        )!;
      case 'biodiversity':
        return const Color(0xFF66BB6A);
      case 'anomaly':
        return const Color(0xFFAB47BC);
      case 'radiation':
        return Color.lerp(
          const Color(0xFF00E676),
          const Color(0xFFFF1744),
          v, // low radiation = green, high radiation = red
        )!;
      default:
        return const Color(0xFF00E5FF);
    }
  }
}

/// Prominently shows the habitability score with a tier badge.
class _HabitabilityBadge extends StatelessWidget {
  const _HabitabilityBadge({
    required this.planet,
    required this.accent,
    required this.scannerReadings,
    required this.probedStats,
  });

  final Planet planet;
  final Color accent;
  final Map<String, double?> scannerReadings;
  final Set<String> probedStats;

  /// Perceived habitability based on scanner readings (inaccurate until probed).
  double _perceivedHabitability() {
    double stat(String name, double weight) {
      // Use true value if probed, scanner reading if available, or 0.5 (unknown) if failed.
      if (probedStats.contains(name)) return planet.getStat(name) * weight;
      final reading = scannerReadings[name];
      return (reading ?? 0.5) * weight;
    }
    return stat('water', 0.21) +
        stat('atmosphere', 0.20) +
        stat('temperature', 0.13) +
        stat('resources', 0.15) +
        stat('gravity', 0.08) +
        stat('biodiversity', 0.08) +
        (1.0 - planet.radiation) * 0.08 + // radiation is always accurate
        _nativeBonus() * 0.07; // native bonus — not scannable, use true value
  }

  double _nativeBonus() {
    if (planet.nativePresence < 0.1) return 0.5;
    return planet.nativeDisposition * planet.nativePresence;
  }

  String _tierFromScore(double s) {
    if (s > 0.9) return 'Utopia';
    if (s > 0.75) return 'Paradise';
    if (s > 0.6) return 'Habitable';
    if (s > 0.4) return 'Harsh';
    if (s > 0.2) return 'Hostile';
    return 'Death World';
  }

  @override
  Widget build(BuildContext context) {
    final score = _perceivedHabitability();
    final tier = _tierFromScore(score);
    final pct = (score * 100).round();

    final tierColor = _tierColor(tier);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: tierColor.withValues(alpha: 0.5)),
        color: tierColor.withValues(alpha: 0.08),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.l10n.ui_scan_habitability,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              letterSpacing: 2,
              color: accent.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '$pct%',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: tierColor,
              shadows: [
                Shadow(
                  color: tierColor.withValues(alpha: 0.6),
                  blurRadius: 8,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: tierColor.withValues(alpha: 0.2),
              border: Border.all(color: tierColor.withValues(alpha: 0.5)),
            ),
            child: Text(
              localizedTier(context.l10n, tier).toUpperCase(),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: tierColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Utopia':
        return const Color(0xFFFFD700);
      case 'Paradise':
        return const Color(0xFF00E676);
      case 'Habitable':
        return const Color(0xFF42A5F5);
      case 'Harsh':
        return const Color(0xFFFFCA28);
      case 'Hostile':
        return const Color(0xFFFF7043);
      case 'Death World':
        return const Color(0xFFFF1744);
      default:
        return accent;
    }
  }
}
