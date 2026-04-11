import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/app.dart' show routeObserver;
import 'package:stellar_broadcast/providers/game_providers.dart'
    show voyageProvider, seedToCode;
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

/// The main voyage HUD screen displaying ship systems, encounter progress,
/// and action buttons.
class VoyageScreen extends ConsumerStatefulWidget {
  const VoyageScreen({super.key});

  @override
  ConsumerState<VoyageScreen> createState() => _VoyageScreenState();
}

class _VoyageScreenState extends ConsumerState<VoyageScreen>
    with TickerProviderStateMixin, RouteAware {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _starController;
  late final AnimationController _warningController;
  bool _wasCritical = false;
  int _adRefreshCount = 0;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _starController.dispose();
    _warningController.dispose();
    super.dispose();
  }

  @override
  void didPopNext() {
    // A child screen (scan, event, puzzle, etc.) popped back to us.
    // Refresh the banner ad so AdMob counts a new impression.
    setState(() => _adRefreshCount++);
  }

  /// Returns true when any ship system is critically low (<20 %).
  bool _hasCritical(ShipSystems ship) {
    return ShipSystems.systemNames.any((s) => ship.getSystem(s) < 0.2);
  }

  @override
  Widget build(BuildContext context) {
    // Use select() to avoid rebuilding on unrelated state changes (e.g. log
    // updates shouldn't rebuild the HUD).
    final ship = ref.watch(voyageProvider.select((v) => v.ship));
    final encounterCount = ref.watch(voyageProvider.select((v) => v.encounterCount));
    final probes = ref.watch(voyageProvider.select((v) => v.probes));
    final fuel = ref.watch(voyageProvider.select((v) => v.fuel));
    final energy = ref.watch(voyageProvider.select((v) => v.energy));
    final colonists = ref.watch(voyageProvider.select((v) => v.colonists));
    final seed = ref.watch(voyageProvider.select((v) => v.seed));
    final pendingPlanetModifiers = ref.watch(
        voyageProvider.select((v) => v.pendingPlanetModifiers));
    final isCritical = _hasCritical(ship);
    final canScan = ref.read(voyageProvider.notifier).canScanPlanet;

    // Fire critical haptic when entering critical state (deferred to avoid side effect in build).
    if (isCritical && !_wasCritical) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        HapticService().error();
      });
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
            bottom: false,
            child: _buildLayout(
              ship: ship,
              isCritical: isCritical,
              canScan: canScan,
              encounterCount: encounterCount,
              probes: probes,
              fuel: fuel,
              energy: energy,
              colonists: colonists,
              seed: seed,
              pendingPlanetModifiers: pendingPlanetModifiers,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLayout({
    required ShipSystems ship,
    required bool isCritical,
    required bool canScan,
    required int encounterCount,
    required int probes,
    required int fuel,
    required int energy,
    required int colonists,
    required int seed,
    required Map<String, double> pendingPlanetModifiers,
  }) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      // Tablet landscape: native ad on left, HUD on right.
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Row(
          children: [
            // Left: native ad centered in full left half of screen.
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PremiumAdGate(
                      child: AdaptiveNativeAd(
                        size: QaNativeAdSize.medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Right: HUD content.
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: _buildHudPortrait(
                  ship: ship,
                  isCritical: isCritical,
                  canScan: canScan,
                  encounterCount: encounterCount,
                  probes: probes,
                  fuel: fuel,
                  energy: energy,
                  colonists: colonists,
                  seed: seed,
                  pendingPlanetModifiers: pendingPlanetModifiers,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Expanded(
          child: ResponsiveContent(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: _buildHudContent(
                ship: ship,
                isCritical: isCritical,
                canScan: canScan,
                encounterCount: encounterCount,
                probes: probes,
                fuel: fuel,
                energy: energy,
                colonists: colonists,
                seed: seed,
                pendingPlanetModifiers: pendingPlanetModifiers,
              ),
            ),
          ),
        ),
        PremiumAdGate(
          child: AdaptiveBannerAd(key: ValueKey('voyage_banner_$_adRefreshCount')),
        ),
      ],
    );
  }

  /// Right-column HUD for tablet landscape (no ad, no landscape branching).
  Widget _buildHudPortrait({
    required ShipSystems ship,
    required bool isCritical,
    required bool canScan,
    required int encounterCount,
    required int probes,
    required int fuel,
    required int energy,
    required int colonists,
    required int seed,
    required Map<String, double> pendingPlanetModifiers,
  }) {
    return Column(
      children: [
        _buildHeader(
          encounterCount: encounterCount,
          probes: probes,
          fuel: fuel,
          energy: energy,
          colonists: colonists,
        ),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSystemsPanelLandscape(ship, isCritical),
                const SizedBox(height: 12),
                _buildNarrative(
                  encounterCount: encounterCount,
                  pendingPlanetModifiers: pendingPlanetModifiers,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        _buildActions(canScan),
        const SizedBox(height: 6),
        Text(
          context.l10n.ui_voyage_seed(seedToCode(seed)),
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 10,
            letterSpacing: 2,
            color: _accent.withValues(alpha: 0.35),
          ),
        ),
      ],
    );
  }

  Widget _buildHudContent({
    required ShipSystems ship,
    required bool isCritical,
    required bool canScan,
    required int encounterCount,
    required int probes,
    required int fuel,
    required int energy,
    required int colonists,
    required int seed,
    required Map<String, double> pendingPlanetModifiers,
  }) {
    // Portrait / phone layout only (landscape is handled by _buildLayout).
    return Column(
      children: [
        _buildHeader(
          encounterCount: encounterCount,
          probes: probes,
          fuel: fuel,
          energy: energy,
          colonists: colonists,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSystemsPanel(ship, isCritical),
                const SizedBox(height: 20),
                _buildNarrative(
                  encounterCount: encounterCount,
                  pendingPlanetModifiers: pendingPlanetModifiers,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        _buildActions(canScan),
        const SizedBox(height: 8),
        Text(
          context.l10n.ui_voyage_seed(seedToCode(seed)),
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 10,
            letterSpacing: 2,
            color: _accent.withValues(alpha: 0.35),
          ),
        ),
      ],
    );
  }

  Map<String, String> _coreLabels(l10n) => {
    'hull': l10n.ui_voyage_systemHull,
    'nav': l10n.ui_voyage_systemNav,
    'cryopods': l10n.ui_voyage_systemCryopods,
    'culture': l10n.ui_voyage_systemCulture,
    'tech': l10n.ui_voyage_systemTech,
    'constructors': l10n.ui_voyage_systemConstruct,
    'shields': l10n.ui_voyage_systemShields,
    'landingSystem': l10n.ui_voyage_systemLanding,
  };

  Map<String, String> _scannerLabels(l10n) => {
    'atmosphericScanner': l10n.ui_voyage_scannerAtmo,
    'gravimetricScanner': l10n.ui_voyage_scannerGrav,
    'mineralScanner': l10n.ui_voyage_scannerMineral,
    'lifeSignsScanner': l10n.ui_voyage_scannerLife,
    'temperatureScanner': l10n.ui_voyage_scannerTemp,
    'waterScanner': l10n.ui_voyage_scannerWater,
  };

  /// Landscape version of the systems panel with 2-column grid.
  Widget _buildSystemsPanelLandscape(ShipSystems ship, bool isCritical) {
    final coreLabels = _coreLabels(context.l10n);
    final scannerLabels = _scannerLabels(context.l10n);

    final coreNames = [
      'hull', 'nav', 'cryopods', 'culture',
      'tech', 'constructors', 'shields', 'landingSystem',
    ];
    final scannerNames = ShipSystems.scannerSubsystemNames.toList();

    // Interleave into 2-column pairs for core systems.
    final coreWidgets = <Widget>[];
    for (var i = 0; i < coreNames.length; i += 2) {
      coreWidgets.add(Row(
        children: [
          Expanded(
            child: SystemBar(
              label: coreLabels[coreNames[i]] ?? coreNames[i],
              value: ship.getSystem(coreNames[i]),
            ),
          ),
          const SizedBox(width: 8),
          if (i + 1 < coreNames.length)
            Expanded(
              child: SystemBar(
                label: coreLabels[coreNames[i + 1]] ?? coreNames[i + 1],
                value: ship.getSystem(coreNames[i + 1]),
              ),
            )
          else
            const Expanded(child: SizedBox.shrink()),
        ],
      ));
    }

    // Interleave into 2-column pairs for scanner systems.
    final scannerWidgets = <Widget>[];
    for (var i = 0; i < scannerNames.length; i += 2) {
      scannerWidgets.add(Row(
        children: [
          Expanded(
            child: SystemBar(
              label: scannerLabels[scannerNames[i]] ?? scannerNames[i],
              value: ship.getSystem(scannerNames[i]),
            ),
          ),
          const SizedBox(width: 8),
          if (i + 1 < scannerNames.length)
            Expanded(
              child: SystemBar(
                label: scannerLabels[scannerNames[i + 1]] ?? scannerNames[i + 1],
                value: ship.getSystem(scannerNames[i + 1]),
              ),
            )
          else
            const Expanded(child: SizedBox.shrink()),
        ],
      ));
    }

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
          ...coreWidgets,
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
          ...scannerWidgets,
        ],
      ),
    );
  }

  Widget _buildHeader({
    required int encounterCount,
    required int probes,
    required int fuel,
    required int energy,
    required int colonists,
  }) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      alignment: WrapAlignment.spaceBetween,
      children: [
        // Sector counter.
        _HudChip(
          icon: null,
          label: context.l10n.ui_voyage_sector(encounterCount),
          color: _accent,
        ),
        // Probe counter.
        _HudChip(
          icon: Icons.satellite_alt,
          label: '$probes',
          color: probes > 3 ? _accent : Colors.orange,
          warn: probes <= 3,
        ),
        // Fuel counter.
        _HudChip(
          icon: Icons.local_gas_station,
          label: '$fuel',
          color: fuel > 60 ? _accent : Colors.orange,
          warn: fuel <= 60,
        ),
        // Energy counter.
        _HudChip(
          icon: Icons.bolt,
          label: '$energy',
          color: energy > 10 ? _accent : Colors.orange,
          warn: energy <= 10,
        ),
        // Colonist counter.
        _HudChip(
          icon: Icons.people,
          label: '$colonists',
          color: colonists > 500 ? _accent : Colors.orange,
          warn: colonists <= 500,
        ),
      ],
    );
  }

  Widget _buildSystemsPanel(ShipSystems ship, bool isCritical) {
    final coreLabels = _coreLabels(context.l10n);
    final scannerLabels = _scannerLabels(context.l10n);

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

  Widget _buildNarrative({
    required int encounterCount,
    required Map<String, double> pendingPlanetModifiers,
  }) {
    final sector = encounterCount;
    final String message;

    if (sector == 0) {
      message = context.l10n.ui_voyage_narrative0;
    } else if (sector == 1) {
      message = context.l10n.ui_voyage_narrative1;
    } else if (sector == 2) {
      message = context.l10n.ui_voyage_narrative2;
    } else if (!ref.read(voyageProvider.notifier).canScanPlanet) {
      if (pendingPlanetModifiers.isNotEmpty) {
        message = context.l10n.ui_voyage_narrativeFlaggedSystem;
      } else {
        message = context.l10n.ui_voyage_narrativeCalibrating;
      }
    } else if (pendingPlanetModifiers.isNotEmpty) {
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
            autofocus: true,
            onPressed: hasEnergy
                ? () {
                    HapticService().medium();
                    GameSfx().play(GameSfx.scanningPlanet);
                    Navigator.pushNamed(context, '/scan');
                    // Generate planet after navigation so the scan animation
                    // plays while ONNX inference runs on the next frame.
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      notifier.scanPlanet();
                    });
                  }
                : null,
          ),
        if (canScan) const SizedBox(height: 12),
        HolographicButton(
          label: context.l10n.ui_voyage_pressOn,
          isPrimary: !canScan,
          autofocus: !canScan,
          onPressed: () {
            GameSfx().play(GameSfx.buttonClick);
            final notifier2 = ref.read(voyageProvider.notifier);

            final Future<Object?> nav;
            if (notifier2.shouldTriggerPuzzle()) {
              final puzzle = notifier2.generatePuzzle();
              nav = Navigator.pushNamed(context, '/puzzle', arguments: puzzle);
            } else {
              final event = notifier2.triggerEvent();
              // Event.route is authoritative if set (YAML-defined events).
              // Fall back to legacy hardcoded map for Dart-defined events.
              const legacyRoutes = {
                'black_hole_lens': '/black-hole',
                'living_nebula': '/living-nebula',
                'seed_vault': '/seed-vault',
                'dyson_sphere': '/dyson-sphere',
                'relic_world_engine': '/world-engine',
                'relic_mirror_array': '/mirror-array',
                'chrono_vortex': '/chrono-vortex',
              };
              final route = event.route ?? legacyRoutes[event.id] ?? '/event';
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
