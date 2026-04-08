import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show voyageProvider, seedToCode;
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/widgets/holographic_button.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';
import 'package:stellar_broadcast/widgets/system_bar.dart';

/// The main voyage HUD screen displaying ship systems, encounter progress,
/// and action buttons.
class VoyageScreen extends ConsumerStatefulWidget {
  const VoyageScreen({super.key});

  @override
  ConsumerState<VoyageScreen> createState() => _VoyageScreenState();
}

class _VoyageScreenState extends ConsumerState<VoyageScreen>
    with TickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _starController;
  late final AnimationController _warningController;
  bool _wasCritical = false;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 90),
    )..repeat();

    _warningController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    // Engine hum loops on top of bgmusic via SFX pool.
    GameMusic().startEngineHum();
  }

  @override
  void dispose() {
    _starController.dispose();
    _warningController.dispose();
    super.dispose();
  }

  /// Returns true when any ship system is critically low (<20 %).
  bool _hasCritical(ShipSystems ship) {
    return ShipSystems.systemNames.any((s) => ship.getSystem(s) < 0.2);
  }

  @override
  Widget build(BuildContext context) {
    final voyage = ref.watch(voyageProvider);
    final ship = voyage.ship;
    final isCritical = _hasCritical(ship);
    final canScan = ref.read(voyageProvider.notifier).canScanPlanet;

    // Fire critical haptic when entering critical state.
    if (isCritical && !_wasCritical) {
      HapticService().error();
    }
    _wasCritical = isCritical;

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // Background star field (slow drift).
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
                        farStarCount: 80,
                        midStarCount: 30,
                        nearStarCount: 10,
                      ),
                      size: Size.infinite,
                    ),
                  );
                },
              ),
            ),
          ),

          // Critical-warning overlay.
          if (isCritical)
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _warningController,
                builder: (context, _) {
                  return IgnorePointer(
                    child: Container(
                      color: Colors.red.withValues(
                        alpha: 0.06 * _warningController.value,
                      ),
                    ),
                  );
                },
              ),
            ),

          // HUD content.
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  // — Header —
                  _buildHeader(voyage),
                  const SizedBox(height: 16),

                  // — Ship systems —
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildSystemsPanel(ship, isCritical),
                          const SizedBox(height: 20),

                          // — Narrative context —
                          _buildNarrative(voyage),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // — Action buttons —
                  _buildActions(canScan),
                  const SizedBox(height: 6),
                  // Seed display.
                  Text(
                    context.l10n.ui_voyage_seed(seedToCode(voyage.seed)),
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 10,
                      letterSpacing: 2,
                      color: _accent.withValues(alpha: 0.35),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(VoyageState voyage) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      alignment: WrapAlignment.spaceBetween,
      children: [
        // Sector counter.
        _HudChip(
          icon: null,
          label: context.l10n.ui_voyage_sector(voyage.encounterCount),
          color: _accent,
        ),
        // Probe counter.
        _HudChip(
          icon: Icons.satellite_alt,
          label: '${voyage.probes}',
          color: voyage.probes > 3 ? _accent : Colors.orange,
          warn: voyage.probes <= 3,
        ),
        // Fuel counter.
        _HudChip(
          icon: Icons.local_gas_station,
          label: '${voyage.fuel}',
          color: voyage.fuel > 60 ? _accent : Colors.orange,
          warn: voyage.fuel <= 60,
        ),
        // Energy counter.
        _HudChip(
          icon: Icons.bolt,
          label: '${voyage.energy}',
          color: voyage.energy > 10 ? _accent : Colors.orange,
          warn: voyage.energy <= 10,
        ),
        // Colonist counter.
        _HudChip(
          icon: Icons.people,
          label: '${voyage.colonists}',
          color: voyage.colonists > 500 ? _accent : Colors.orange,
          warn: voyage.colonists <= 500,
        ),
      ],
    );
  }

  Widget _buildSystemsPanel(ShipSystems ship, bool isCritical) {
    final coreLabels = {
      'hull': context.l10n.ui_voyage_systemHull,
      'nav': context.l10n.ui_voyage_systemNav,
      'cryopods': context.l10n.ui_voyage_systemCryopods,
      'culture': context.l10n.ui_voyage_systemCulture,
      'tech': context.l10n.ui_voyage_systemTech,
      'constructors': context.l10n.ui_voyage_systemConstruct,
      'shields': context.l10n.ui_voyage_systemShields,
      'landingSystem': context.l10n.ui_voyage_systemLanding,
    };

    final scannerLabels = {
      'atmosphericScanner': context.l10n.ui_voyage_scannerAtmo,
      'gravimetricScanner': context.l10n.ui_voyage_scannerGrav,
      'mineralScanner': context.l10n.ui_voyage_scannerMineral,
      'lifeSignsScanner': context.l10n.ui_voyage_scannerLife,
      'temperatureScanner': context.l10n.ui_voyage_scannerTemp,
      'waterScanner': context.l10n.ui_voyage_scannerWater,
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withValues(alpha: 0.03),
        border: Border.all(
          color: isCritical
              ? Colors.red.withValues(alpha: 0.4)
              : _accent.withValues(alpha: 0.12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Core systems + shields.
          ...[
            'hull',
            'nav',
            'cryopods',
            'culture',
            'tech',
            'constructors',
            'shields',
            'landingSystem',
          ].map((name) {
            final value = ship.getSystem(name);
            return SystemBar(label: coreLabels[name] ?? name, value: value);
          }),
          // Divider.
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Text(
                  context.l10n.ui_voyage_scanners,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 9,
                    letterSpacing: 2,
                    color: _accent.withValues(alpha: 0.4),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 1,
                    color: _accent.withValues(alpha: 0.1),
                  ),
                ),
              ],
            ),
          ),
          // Scanner subsystems.
          ...ShipSystems.scannerSubsystemNames.map((name) {
            final value = ship.getSystem(name);
            return SystemBar(label: scannerLabels[name] ?? name, value: value);
          }),
        ],
      ),
    );
  }

  Widget _buildNarrative(VoyageState voyage) {
    final sector = voyage.encounterCount;
    final String message;

    if (sector == 0) {
      message = context.l10n.ui_voyage_narrative0;
    } else if (sector == 1) {
      message = context.l10n.ui_voyage_narrative1;
    } else if (sector == 2) {
      message = context.l10n.ui_voyage_narrative2;
    } else if (!ref.read(voyageProvider.notifier).canScanPlanet) {
      if (voyage.pendingPlanetModifiers.isNotEmpty) {
        message = context.l10n.ui_voyage_narrativeFlaggedSystem;
      } else {
        message = context.l10n.ui_voyage_narrativeCalibrating;
      }
    } else if (voyage.pendingPlanetModifiers.isNotEmpty) {
      message = context.l10n.ui_voyage_narrativeMarkedSystem;
    } else {
      final phrases = [
        context.l10n.ui_voyage_narrativePhrase0,
        context.l10n.ui_voyage_narrativePhrase1,
        context.l10n.ui_voyage_narrativePhrase2,
        context.l10n.ui_voyage_narrativePhrase3,
        context.l10n.ui_voyage_narrativePhrase4,
        context.l10n.ui_voyage_narrativePhrase5,
        context.l10n.ui_voyage_narrativePhrase6,
        context.l10n.ui_voyage_narrativePhrase7,
      ];
      message = phrases[sector % phrases.length];
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white.withValues(alpha: 0.03),
        border: Border.all(color: _accent.withValues(alpha: 0.08)),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          height: 1.5,
          letterSpacing: 0.5,
          color: Colors.white.withValues(alpha: 0.7),
        ),
      ),
    );
  }

  Widget _buildActions(bool canScan) {
    final notifier = ref.read(voyageProvider.notifier);
    final hasEnergy = notifier.canScanEnergy;
    return Column(
      children: [
        if (canScan)
          HolographicButton(
            label: hasEnergy ? context.l10n.ui_voyage_scanPlanet : context.l10n.ui_voyage_noEnergy,
            onPressed: hasEnergy
                ? () {
                    HapticService().medium();
                    GameSfx().play(GameSfx.scanningPlanet);
                    notifier.scanPlanet();
                    Navigator.pushNamed(context, '/scan');
                  }
                : null,
          ),
        if (canScan) const SizedBox(height: 12),
        HolographicButton(
          label: context.l10n.ui_voyage_pressOn,
          isPrimary: !canScan,
          onPressed: () {
            GameSfx().play(GameSfx.buttonClick);
            final notifier2 = ref.read(voyageProvider.notifier);

            final Future<Object?> nav;
            if (notifier2.shouldTriggerPuzzle()) {
              final puzzle = notifier2.generatePuzzle();
              nav = Navigator.pushNamed(context, '/puzzle', arguments: puzzle);
            } else {
              final event = notifier2.triggerEvent();
              // Route visual events to their dedicated screens.
              const visualRoutes = {
                'black_hole_lens': '/black-hole',
                'living_nebula': '/living-nebula',
                'seed_vault': '/seed-vault',
                'dyson_sphere': '/dyson-sphere',
                'relic_world_engine': '/world-engine',
                'relic_mirror_array': '/mirror-array',
                'chrono_vortex': '/chrono-vortex',
              };
              final route = visualRoutes[event.id] ?? '/event';
              nav = Navigator.pushNamed(context, route, arguments: event);
            }

            nav.then((_) {
              // Check for game over after returning from event/puzzle screen.
              if (mounted) {
                final state = ref.read(voyageProvider);
                if (state.isGameOver) {
                  Navigator.of(context).pushReplacementNamed('/gameover');
                }
              }
            });
          },
        ),
      ],
    );
  }
}

/// Compact HUD chip for the header row.
class _HudChip extends StatelessWidget {
  const _HudChip({
    required this.label,
    required this.color,
    this.icon,
    this.warn = false,
  });

  final IconData? icon;
  final String label;
  final Color color;
  final bool warn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: warn ? 0.5 : 0.3)),
        color: warn ? color.withValues(alpha: 0.08) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 10, color: color.withValues(alpha: 0.7)),
            const SizedBox(width: 3),
          ],
          Text(
            label,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: color.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
