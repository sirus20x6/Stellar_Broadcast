import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

/// The Alien Trader freeform shop screen.
///
/// Allows the player to spend resources (probes, fuel, energy, colonists,
/// culture, tech) to repair ship systems. Multiple trades are allowed.
class TraderScreen extends ConsumerStatefulWidget {
  const TraderScreen({super.key});

  @override
  ConsumerState<TraderScreen> createState() => _TraderScreenState();
}

class _TraderScreenState extends ConsumerState<TraderScreen> {
  static const _background = SpaceColors.deepSpace;
  static const _accent = SpaceColors.cyan;

  late final double _markup;
  TradeResource _selectedResource = TradeResource.probes;

  /// Track which system just got repaired for the flash effect.
  String? _flashSystem;

  /// Track which resource to shake on failure.
  bool _shakePayment = false;

  @override
  void initState() {
    super.initState();

    // Random markup 0.8 - 1.2 — seeded for reproducibility.
    _markup =
        0.8 + ref.read(voyageProvider.notifier).seededRandom.nextDouble() * 0.4;
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

  bool _canAfford(VoyageState voyage, TradeResource resource) {
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

  String _currentAmount(VoyageState voyage, TradeResource resource) {
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
    // Watch only the fields whose changes should trigger rebuild. Avoids
    // rebuilding when unrelated voyage state (log entries, encounter count,
    // etc.) mutates.
    ref.watch(voyageProvider.select((v) => v.probes));
    ref.watch(voyageProvider.select((v) => v.fuel));
    ref.watch(voyageProvider.select((v) => v.energy));
    ref.watch(voyageProvider.select((v) => v.colonists));
    ref.watch(voyageProvider.select((v) => v.ship));
    final voyage = ref.read(voyageProvider);
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
          const EventStarField(duration: Duration(seconds: 90)),

          // Main content.
          SafeArea(
            child: ResponsiveContent(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: _buildTraderContent(
                  voyage: voyage,
                  ship: ship,
                  coreLabels: coreLabels,
                  scannerLabels: scannerLabels,
                  coreSystems: coreSystems,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTraderHeader() {
    final screen = ScreenInfo.of(context);
    return Column(
      children: [
        Text(
          context.l10n.ui_trader_title,
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: screen.scaledFontSize(28),
            fontWeight: FontWeight.w900,
            letterSpacing: 6,
            color: _accent,
            shadows: [
              Shadow(color: _accent.withValues(alpha: 0.8), blurRadius: 16),
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
      ],
    );
  }

  Widget _buildShipSystemsPanel({
    required VoyageState voyage,
    required ShipSystems ship,
    required Map<String, String> coreLabels,
    required Map<String, String> scannerLabels,
    required List<String> coreSystems,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionLabel(context.l10n.ui_trader_shipSystems),
        const SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: ScreenInfo.of(context).isCompact ? 4 : 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withValues(alpha: 0.03),
            border: Border.all(color: _accent.withValues(alpha: 0.12)),
          ),
          child: Column(
            children: [
              ...coreSystems.map((name) {
                return _buildSystemRow(
                  name,
                  coreLabels[name] ?? name,
                  ship,
                  voyage,
                );
              }),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: ScreenInfo.of(context).isCompact ? 1 : 3,
                ),
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
              ...ShipSystems.scannerSubsystemNames.map((name) {
                return _buildSystemRow(
                  name,
                  scannerLabels[name] ?? name,
                  ship,
                  voyage,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentSection(VoyageState voyage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionLabel(context.l10n.ui_trader_payWith),
        const SizedBox(height: 6),
        ...TradeResource.values.map((resource) {
          return _buildPaymentOption(voyage, resource);
        }),
      ],
    );
  }

  Widget _buildTraderContent({
    required VoyageState voyage,
    required ShipSystems ship,
    required Map<String, String> coreLabels,
    required Map<String, String> scannerLabels,
    required List<String> coreSystems,
  }) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      return Column(
        children: [
          _buildTraderHeader(),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left column: ship systems with repair buttons.
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: _buildShipSystemsPanel(
                      voyage: voyage,
                      ship: ship,
                      coreLabels: coreLabels,
                      scannerLabels: scannerLabels,
                      coreSystems: coreSystems,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Right column: payment selector.
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: _buildPaymentSection(voyage),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          HolographicButton(
            label: context.l10n.ui_trader_leaveTrader,
            isPrimary: false,
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(height: 8),
        ],
      );
    }

    // Portrait layout (original).
    return Column(
      children: [
        _buildTraderHeader(),
        const SizedBox(height: 12),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildShipSystemsPanel(
                  voyage: voyage,
                  ship: ship,
                  coreLabels: coreLabels,
                  scannerLabels: scannerLabels,
                  coreSystems: coreSystems,
                ),
                const SizedBox(height: 16),
                _buildPaymentSection(voyage),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        HolographicButton(
          label: context.l10n.ui_trader_leaveTrader,
          isPrimary: false,
          onPressed: () => Navigator.of(context).pop(),
        ),
        const SizedBox(height: 8),
      ],
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

  Widget _buildSystemRow(
    String systemName,
    String label,
    ShipSystems ship,
    VoyageState voyage,
  ) {
    final value = ship.getSystem(systemName);
    final canRepair = value < 1.0 && _canAfford(voyage, _selectedResource);
    final isFlashing = _flashSystem == systemName;
    final compact = ScreenInfo.of(context).isCompact;

    // Full-row tap target: the whole row is the repair button on compact
    // phones. A plain Icon (not IconButton) means row height is driven by
    // the SystemBar's intrinsic height, not by a 48/28 dp SizedBox minimum.
    // The row is wide enough that a short vertical span still gives a
    // comfortable tap area.
    return Semantics(
      button: value < 1.0,
      label: 'Repair $label',
      enabled: canRepair,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (value < 1.0 && canRepair)
              ? () => _onRepair(systemName)
              : null,
          borderRadius: BorderRadius.circular(4),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: isFlashing
                  ? _accent.withValues(alpha: 0.12)
                  : Colors.transparent,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SystemBar(
                    label: label,
                    value: value,
                    labelWidth: 80,
                    compact: compact,
                  ),
                ),
                const SizedBox(width: 6),
                // Plain Icon, not IconButton — IconButton enforces a 48 dp
                // minimum tap-target constraint that inflates the row.
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Icon(
                    value < 1.0
                        ? Icons.add_circle_outline
                        : Icons.check_circle_outline,
                    size: compact ? 16 : 22,
                    color: value < 1.0
                        ? (canRepair
                            ? _accent
                            : Colors.white.withValues(alpha: 0.15))
                        : _accent.withValues(alpha: 0.4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentOption(VoyageState voyage, TradeResource resource) {
    final isSelected = _selectedResource == resource;
    final affordable = _canAfford(voyage, resource);
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
          return Transform.translate(offset: Offset(offset, 0), child: child);
        },
        child: Semantics(
          button: true,
          selected: isSelected,
          enabled: affordable,
          label: '${_resourceName(resource)} — $costText',
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
                      _currentAmount(voyage, resource),
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
      ),
    );
  }
}
