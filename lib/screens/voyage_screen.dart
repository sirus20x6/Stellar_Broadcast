import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/models/ship.dart';
import 'package:starbound_exodus/models/voyage_state.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/holographic_button.dart';
import 'package:starbound_exodus/widgets/star_field.dart';
import 'package:starbound_exodus/widgets/system_bar.dart';

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

    return Scaffold(
      backgroundColor: _background,
      body: Stack(
        children: [
          // Background star field (slow drift).
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (context, _) {
                return CustomPaint(
                  painter: StarFieldPainter(
                    animationValue: _starController.value,
                    farStarCount: 80,
                    midStarCount: 30,
                    nearStarCount: 10,
                  ),
                  size: Size.infinite,
                );
              },
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
                  _buildSystemsPanel(ship, isCritical),

                  const Spacer(),

                  // — Encounter info —
                  _buildEncounterInfo(voyage),

                  const Spacer(),

                  // — Action buttons —
                  _buildActions(),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'SHIP STATUS',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 13,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color: _accent.withValues(alpha: 0.85),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: _accent.withValues(alpha: 0.3)),
          ),
          child: Text(
            'SECTOR ${voyage.encounterCount}',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 11,
              letterSpacing: 2,
              color: _accent.withValues(alpha: 0.7),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSystemsPanel(ShipSystems ship, bool isCritical) {
    const labels = {
      'hull': 'Hull',
      'scanner': 'Scanner',
      'nav': 'Nav',
      'cryopods': 'Cryopods',
      'culture': 'Culture',
      'tech': 'Tech',
    };

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withValues(alpha: 0.03),
        border: Border.all(
          color: isCritical
              ? Colors.red.withValues(alpha: 0.4)
              : _accent.withValues(alpha: 0.12),
        ),
      ),
      child: Column(
        children: ShipSystems.systemNames.map((name) {
          final value = ship.getSystem(name);
          return SystemBar(
            label: labels[name] ?? name,
            value: value,
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEncounterInfo(VoyageState voyage) {
    return Column(
      children: [
        // Encounter counter.
        Text(
          'ENCOUNTER ${voyage.encounterCount} OF ${voyage.maxEncounters}',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            color: _accent,
            shadows: [
              Shadow(color: _accent.withValues(alpha: 0.5), blurRadius: 10),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // Thin decorative line.
        Container(
          width: 120,
          height: 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                _accent.withValues(alpha: 0.0),
                _accent.withValues(alpha: 0.5),
                _accent.withValues(alpha: 0.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Column(
      children: [
        HolographicButton(
          label: 'SCAN PLANET',
          onPressed: () => Navigator.pushNamed(context, '/scan'),
        ),
        const SizedBox(height: 12),
        HolographicButton(
          label: 'PRESS ON',
          isPrimary: false,
          onPressed: () {
            ref.read(voyageProvider.notifier).pressOn();
          },
        ),
      ],
    );
  }
}
