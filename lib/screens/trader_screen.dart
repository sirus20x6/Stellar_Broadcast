import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/widgets/holographic_button.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';
import 'package:stellar_broadcast/widgets/system_bar.dart';

/// The Alien Trader freeform shop screen.
///
/// Allows the player to spend resources (probes, fuel, energy, colonists,
/// culture, tech) to repair ship systems. Multiple trades are allowed.
class TraderScreen extends ConsumerStatefulWidget {
  const TraderScreen({super.key});

  @override
  ConsumerState<TraderScreen> createState() => _TraderScreenState();
}

class _TraderScreenState extends ConsumerState<TraderScreen>
    with TickerProviderStateMixin {
  static const _background = Color(0xFF0B1426);
  static const _accent = Color(0xFF00E5FF);

  late final AnimationController _starController;
  late final double _markup;
  TradeResource _selectedResource = TradeResource.probes;

  /// Track which system just got repaired for the flash effect.
  String? _flashSystem;

  /// Track which resource to shake on failure.
  bool _shakePayment = false;

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 90),
    )..repeat();

    // Random markup 0.8 - 1.2.
    _markup = 0.8 + Random().nextDouble() * 0.4;
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  /// Base costs per 10 % repair — must stay in sync with VoyageNotifier.tradeRepair.
  double _costFor(TradeResource resource) {
    const baseCosts = <TradeResource, double>{
      TradeResource.probes: 1,
      TradeResource.fuel: 25,
      TradeResource.energy: 8,
      TradeResource.colonists: 30,
      TradeResource.culture: 0.10,
      TradeResource.tech: 0.10,
    };
    return baseCosts[resource]! * _markup;
  }

  bool _canAfford(TradeResource resource) {
    final voyage = ref.read(voyageProvider);
    final cost = _costFor(resource);
    switch (resource) {
      case TradeResource.probes:
        return voyage.probes >= cost.ceil();
      case TradeResource.fuel:
        return voyage.fuel >= cost.ceil();
      case TradeResource.energy:
        return voyage.energy >= cost.ceil();
      case TradeResource.colonists:
        return voyage.colonists >= cost.ceil();
      case TradeResource.culture:
        return voyage.ship.culture >= cost;
      case TradeResource.tech:
        return voyage.ship.tech >= cost;
    }
  }

  String _costLabel(TradeResource resource) {
    final cost = _costFor(resource);
    if (resource == TradeResource.culture || resource == TradeResource.tech) {
      return cost.toStringAsFixed(2);
    }
    return '${cost.ceil()}';
  }

  String _currentAmount(TradeResource resource) {
    final voyage = ref.read(voyageProvider);
    switch (resource) {
      case TradeResource.probes:
        return '${voyage.probes}';
      case TradeResource.fuel:
        return '${voyage.fuel}';
      case TradeResource.energy:
        return '${voyage.energy}';
      case TradeResource.colonists:
        return '${voyage.colonists}';
      case TradeResource.culture:
        return '${(voyage.ship.culture * 100).round()}%';
      case TradeResource.tech:
        return '${(voyage.ship.tech * 100).round()}%';
    }
  }

  IconData _resourceIcon(TradeResource resource) {
    switch (resource) {
      case TradeResource.probes:
        return Icons.satellite_alt;
      case TradeResource.fuel:
        return Icons.local_gas_station;
      case TradeResource.energy:
        return Icons.bolt;
      case TradeResource.colonists:
        return Icons.people;
      case TradeResource.culture:
        return Icons.theater_comedy;
      case TradeResource.tech:
        return Icons.memory;
    }
  }

  String _resourceName(TradeResource resource) {
    switch (resource) {
      case TradeResource.probes:
        return context.l10n.ui_trader_probes;
      case TradeResource.fuel:
        return context.l10n.ui_trader_fuel;
      case TradeResource.energy:
        return context.l10n.ui_trader_energy;
      case TradeResource.colonists:
        return context.l10n.ui_trader_colonists;
      case TradeResource.culture:
        return context.l10n.ui_trader_culture;
      case TradeResource.tech:
        return context.l10n.ui_trader_tech;
    }
  }

  void _onRepair(String system) {
    final success = ref
        .read(voyageProvider.notifier)
        .tradeRepair(system, _selectedResource, _markup);

    if (success) {
      HapticService().medium();
      setState(() => _flashSystem = system);
      Future.delayed(const Duration(milliseconds: 400), () {
        if (mounted) setState(() => _flashSystem = null);
      });
    } else {
      HapticService().error();
      setState(() => _shakePayment = true);
      Future.delayed(const Duration(milliseconds: 400), () {
        if (mounted) setState(() => _shakePayment = false);
      });
    }
  }

  Widget _buildMoodText() {
    final String text;
    final Color color;

    if (_markup < 0.9) {
      text = context.l10n.ui_trader_moodGenerous;
      color = const Color(0xFF00E676);
    } else if (_markup <= 1.1) {
      text = context.l10n.ui_trader_moodFair;
      color = _accent;
    } else {
      text = context.l10n.ui_trader_moodHard;
      color = Colors.orange;
    }

    return Text(
      text,
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: 12,
        letterSpacing: 1,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final voyage = ref.watch(voyageProvider);
    final ship = voyage.ship;

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

    final coreSystems = [
      'hull',
      'nav',
      'cryopods',
      'culture',
      'tech',
      'constructors',
      'shields',
      'landingSystem',
    ];

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // Star field background.
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

          // Main content.
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  // Header.
                  Text(
                    context.l10n.ui_trader_title,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 6,
                      color: _accent,
                      shadows: [
                        Shadow(
                          color: _accent.withValues(alpha: 0.8),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  _buildMoodText(),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.ui_trader_greeting,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Ship systems + payment selector in scrollable area.
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Ship Systems section.
                          _sectionLabel(context.l10n.ui_trader_shipSystems),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withValues(alpha: 0.03),
                              border: Border.all(
                                color: _accent.withValues(alpha: 0.12),
                              ),
                            ),
                            child: Column(
                              children: [
                                // Core systems.
                                ...coreSystems.map((name) {
                                  return _buildSystemRow(
                                    name,
                                    coreLabels[name] ?? name,
                                    ship,
                                  );
                                }),
                                // Divider.
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Row(
                                    children: [
                                      Text(
                                        context.l10n.ui_voyage_scanners,
                                        style: TextStyle(
                                          fontFamily: 'monospace',
                                          fontSize: 9,
                                          letterSpacing: 2,
                                          color:
                                              _accent.withValues(alpha: 0.4),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Container(
                                          height: 1,
                                          color:
                                              _accent.withValues(alpha: 0.1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Scanner subsystems.
                                ...ShipSystems.scannerSubsystemNames.map(
                                    (name) {
                                  return _buildSystemRow(
                                    name,
                                    scannerLabels[name] ?? name,
                                    ship,
                                  );
                                }),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Payment selector section.
                          _sectionLabel(context.l10n.ui_trader_payWith),
                          const SizedBox(height: 6),
                          ...TradeResource.values.map((resource) {
                            return _buildPaymentOption(resource);
                          }),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Leave button.
                  HolographicButton(
                    label: context.l10n.ui_trader_leaveTrader,
                    isPrimary: false,
                    onPressed: () => Navigator.of(context).pop(),
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

  Widget _sectionLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: 11,
        fontWeight: FontWeight.bold,
        letterSpacing: 3,
        color: _accent.withValues(alpha: 0.6),
      ),
    );
  }

  Widget _buildSystemRow(String systemName, String label, ShipSystems ship) {
    final value = ship.getSystem(systemName);
    final canRepair = value < 1.0 && _canAfford(_selectedResource);
    final isFlashing = _flashSystem == systemName;

    return Row(
      children: [
        // System bar (expanded).
        Expanded(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: isFlashing
                  ? _accent.withValues(alpha: 0.12)
                  : Colors.transparent,
            ),
            child: SystemBar(
              label: label,
              value: value,
            ),
          ),
        ),
        // Repair button.
        SizedBox(
          width: 32,
          height: 24,
          child: value < 1.0
              ? IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 18,
                    color: canRepair
                        ? _accent
                        : Colors.white.withValues(alpha: 0.15),
                  ),
                  onPressed: canRepair ? () => _onRepair(systemName) : null,
                  tooltip: 'Repair $label',
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildPaymentOption(TradeResource resource) {
    final isSelected = _selectedResource == resource;
    final affordable = _canAfford(resource);
    final costText = context.l10n.ui_trader_costPer10(_costLabel(resource));

    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: TweenAnimationBuilder<double>(
        tween: Tween(
          begin: 0.0,
          end: (_shakePayment && isSelected) ? 1.0 : 0.0,
        ),
        duration: const Duration(milliseconds: 400),
        builder: (context, shakeValue, child) {
          final offset = sin(shakeValue * pi * 4) * 6 * (1 - shakeValue);
          return Transform.translate(
            offset: Offset(offset, 0),
            child: child,
          );
        },
        child: GestureDetector(
          onTap: () => setState(() => _selectedResource = resource),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: isSelected
                  ? _accent.withValues(alpha: 0.08)
                  : Colors.white.withValues(alpha: 0.02),
              border: Border.all(
                color: isSelected
                    ? _accent.withValues(alpha: 0.7)
                    : Colors.white.withValues(alpha: 0.08),
                width: isSelected ? 1.5 : 1.0,
              ),
            ),
            child: Row(
              children: [
                // Icon (fixed).
                Icon(
                  _resourceIcon(resource),
                  size: 16,
                  color: isSelected
                      ? _accent
                      : Colors.white.withValues(alpha: 0.4),
                ),
                const SizedBox(width: 8),
                // Name (fixed width).
                SizedBox(
                  width: 80,
                  child: Text(
                    _resourceName(resource),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      color: isSelected
                          ? _accent
                          : Colors.white.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                // Amount (fills middle, center-aligned).
                Expanded(
                  child: Text(
                    _currentAmount(resource),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 11,
                      color: affordable
                          ? Colors.white.withValues(alpha: 0.7)
                          : Colors.red.withValues(alpha: 0.6),
                    ),
                  ),
                ),
                // Cost per 10% (fixed width, right-aligned).
                SizedBox(
                  width: 56,
                  child: Text(
                    costText,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 10,
                      color: isSelected
                          ? _accent.withValues(alpha: 0.7)
                          : Colors.white.withValues(alpha: 0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
