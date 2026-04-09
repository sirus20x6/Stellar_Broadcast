import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stellar_broadcast/logic/planet_namer.dart';
import 'package:stellar_broadcast/models/planet.dart';
import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/planet_l10n.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Features visible from orbit (same as scan_screen).
const _obviousFeatures = {
  'caves', 'airtight_caves', 'insulated_caves',
  'outstanding_beauty', 'outstanding_ugliness',
  'plant_life', 'unicellular_life',
  'floating_islands', 'orbital_wreckage', 'megastructural_fragments',
  'bioluminescent_life', 'cryovolcanism',
};

/// Landing decision screen -- "Accept this planet or press on?"
class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({super.key});

  @override
  ConsumerState<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;
  late final AnimationController _pulseController;
  late final AnimationController _entryController;
  late final Animation<double> _entryFade;
  late final Animation<double> _entrySlide;
  late final TextEditingController _colonyNameController;

  @override
  void initState() {
    super.initState();

    // Initialize colony name with suggestion.
    final planet = ref.read(voyageProvider).currentPlanet;
    final suggestedName = planet != null ? PlanetNamer.suggestName(planet) : '';
    _colonyNameController = TextEditingController(text: suggestedName);

    // Play appropriate planet discovery SFX.
    if (planet != null && planet.habitabilityScore > 0.7) {
      GameSfx().play(GameSfx.alienEden, volume: 0.5);
    }

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);

    _entryController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..forward();
    _entryFade = CurvedAnimation(
      parent: _entryController,
      curve: Curves.easeOut,
    );
    _entrySlide = Tween<double>(begin: 40, end: 0).animate(
      CurvedAnimation(parent: _entryController, curve: Curves.easeOutCubic),
    );
  }

  @override
  void dispose() {
    _colonyNameController.dispose();
    _starController.dispose();
    _pulseController.dispose();
    _entryController.dispose();
    super.dispose();
  }

  /// Estimate remaining encounters based on lowest system health.
  int _estimateRemainingEncounters(ShipSystems ship) {
    final lowest = ShipSystems.systemNames
        .map((n) => ship.getSystem(n))
        .reduce(min);
    return (lowest / 0.12).floor().clamp(0, 99);
  }

  Color _tierColor(String tier) {
    switch (tier) {
      case 'Utopia':
        return const Color(0xFFFFD700);
      case 'Paradise':
        return const Color(0xFF4CAF50);
      case 'Habitable':
        return _kAccent;
      case 'Harsh':
        return const Color(0xFFFF9800);
      case 'Hostile':
        return const Color(0xFFF44336);
      case 'Death World':
        return const Color(0xFF880000);
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    final voyage = ref.watch(voyageProvider);
    final planet = voyage.currentPlanet;
    final ship = voyage.ship;

    if (planet == null) {
      return const Scaffold(
        backgroundColor: _kBgColor,
        body: Center(child: CircularProgressIndicator(color: _kAccent)),
      );
    }

    final avgHealth = ship.averageHealth;
    final lowestVal = ShipSystems.systemNames
        .map((n) => ship.getSystem(n))
        .reduce(min);
    final remaining = _estimateRemainingEncounters(ship);
    final shipCritical = lowestVal < 0.15;

    return PopScope(
      canPop: false, // No going back once you're deciding to land.
      child: Scaffold(
      backgroundColor: _kBgColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          // Star field background.
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
                      farStarCount: 80,
                      midStarCount: 30,
                      nearStarCount: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Main content.
          SafeArea(
            child: AnimatedBuilder(
              animation: _entryController,
              builder: (_, child) => Opacity(
                opacity: _entryFade.value,
                child: Transform.translate(
                  offset: Offset(0, _entrySlide.value),
                  child: child,
                ),
              ),
              child: _buildLandingContent(
                  planet: planet,
                  voyage: voyage,
                  ship: ship,
                  avgHealth: avgHealth,
                  remaining: remaining,
                  shipCritical: shipCritical,
                ),
            ),
          ),
        ],
      ),
    ),
    );
  }

  Widget _buildLandingContent({
    required Planet planet,
    required dynamic voyage,
    required ShipSystems ship,
    required double avgHealth,
    required int remaining,
    required bool shipCritical,
  }) {
    final screen = ScreenInfo.of(context);
    final isLandscape =
        screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: screen.horizontalPadding),
        child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left column: planet info, visualization, planet stats, features.
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  _buildPlanetHeader(planet),
                  const SizedBox(height: 24),
                  _buildPlanetVisualization(planet),
                  const SizedBox(height: 24),
                  _buildPlanetStatsCard(planet),
                  if (planet.surfaceFeatures.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    _buildSurfaceFeatures(planet, voyage),
                  ],
                  if (planet.moons.isNotEmpty || planet.rings != null) ...[
                    const SizedBox(height: 16),
                    _buildMoonsAndRings(planet),
                  ],
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          const SizedBox(width: 24),
          // Right column: ship status, risk, colony name, actions.
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  _buildShipStatsCard(ship, avgHealth),
                  const SizedBox(height: 16),
                  _buildFuelStatus(voyage),
                  if (ship.landingSystem < 0.7) ...[
                    const SizedBox(height: 16),
                    _buildLandingRisk(ship),
                  ],
                  const SizedBox(height: 16),
                  _buildRiskAssessment(remaining, shipCritical),
                  const SizedBox(height: 24),
                  _buildColonyNameField(),
                  const SizedBox(height: 24),
                  _buildActionButtons(planet),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
      );
    }

    // Portrait layout (original).
    return ResponsiveContent(child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          _buildPlanetHeader(planet),
          const SizedBox(height: 32),
          _buildPlanetVisualization(planet),
          const SizedBox(height: 32),
          _buildPlanetStatsCard(planet),
          const SizedBox(height: 16),
          _buildShipStatsCard(ship, avgHealth),
          const SizedBox(height: 16),
          _buildFuelStatus(voyage),
          if (ship.landingSystem < 0.7) ...[
            const SizedBox(height: 16),
            _buildLandingRisk(ship),
          ],
          const SizedBox(height: 16),
          _buildRiskAssessment(remaining, shipCritical),
          if (planet.surfaceFeatures.isNotEmpty) ...[
            const SizedBox(height: 16),
            _buildSurfaceFeatures(planet, voyage),
          ],
          if (planet.moons.isNotEmpty || planet.rings != null) ...[
            const SizedBox(height: 16),
            _buildMoonsAndRings(planet),
          ],
          const SizedBox(height: 24),
          _buildColonyNameField(),
          const SizedBox(height: 24),
          _buildActionButtons(planet),
          const SizedBox(height: 40),
        ],
      ),
    ));
  }

  Widget _buildPlanetHeader(Planet planet) {
    return Column(
      children: [
        Text(
          planet.name.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: _kAccent.withValues(alpha: 0.5)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            localizedTier(context.l10n, planet.tier).toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: _tierColor(planet.tier),
              letterSpacing: 3,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlanetVisualization(Planet planet) {
    return Semantics(
      label: 'Planet visualization showing ${planet.tier} world with ${planet.moons.length} moons${planet.rings != null ? " and a ${planet.rings!.type.name} ring system" : ""}',
      child: AnimatedBuilder(
        animation: _pulseController,
        builder: (_, __) => _PlanetVisualization(
          planet: planet,
          pulse: _pulseController.value,
        ),
      ),
    );
  }

  Widget _buildPlanetStatsCard(Planet planet) {
    return _StatsCard(
      title: context.l10n.ui_landing_planetAnalysis,
      entries: [
        _StatEntry(context.l10n.ui_landing_statAtmosphere, planet.atmosphere),
        _StatEntry(context.l10n.ui_landing_statTemperature, planet.temperature),
        _StatEntry(context.l10n.ui_landing_statWater, planet.water),
        _StatEntry(context.l10n.ui_landing_statResources, planet.resources),
        _StatEntry(context.l10n.ui_landing_statGravity, planet.gravity),
        _StatEntry(context.l10n.ui_landing_statBiodiversity, planet.biodiversity),
      ],
    );
  }

  Widget _buildShipStatsCard(ShipSystems ship, double avgHealth) {
    return _StatsCard(
      title: context.l10n.ui_landing_shipStatus,
      entries: [
        _StatEntry(context.l10n.ui_landing_statAvgHealth, avgHealth),
        _StatEntry(context.l10n.ui_landing_statHull, ship.hull),
        _StatEntry(context.l10n.ui_landing_statNavigation, ship.nav),
        _StatEntry(context.l10n.ui_landing_statCryopods, ship.cryopods),
        _StatEntry(context.l10n.ui_landing_statCulture, ship.culture),
        _StatEntry(context.l10n.ui_landing_statTech, ship.tech),
        _StatEntry(context.l10n.ui_landing_statConstructors, ship.constructors),
        _StatEntry(context.l10n.ui_landing_statShields, ship.shields),
        _StatEntry(context.l10n.ui_landing_statLandingSys, ship.landingSystem),
      ],
    );
  }

  Widget _buildFuelStatus(dynamic voyage) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: voyage.fuel < 60
              ? Colors.orange.withValues(alpha: 0.5)
              : _kAccent.withValues(alpha: 0.3),
        ),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.local_gas_station,
            color: voyage.fuel < 60
                ? Colors.orange
                : _kAccent.withValues(alpha: 0.7),
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            context.l10n.ui_landing_fuel(voyage.fuel),
            style: TextStyle(
              color: voyage.fuel < 60 ? Colors.orange : _kAccent,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontFamily: 'monospace',
            ),
          ),
          if (voyage.fuel < 60) ...[
            const SizedBox(width: 12),
            Text(
              context.l10n.ui_landing_lowFuelWarning,
              style: TextStyle(
                color: Colors.orange.withValues(alpha: 0.8),
                fontSize: 11,
                letterSpacing: 1,
                fontFamily: 'monospace',
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLandingRisk(ShipSystems ship) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ship.landingSystem < 0.3
              ? const Color(0xFFF44336).withValues(alpha: 0.6)
              : const Color(0xFFFF9800).withValues(alpha: 0.5),
        ),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: ship.landingSystem < 0.3
                    ? const Color(0xFFF44336)
                    : const Color(0xFFFF9800),
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                ship.landingSystem < 0.3
                    ? context.l10n.ui_landing_landingRiskCritical
                    : context.l10n.ui_landing_landingRiskElevated,
                style: TextStyle(
                  color: ship.landingSystem < 0.3
                      ? const Color(0xFFF44336)
                      : const Color(0xFFFF9800),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            ship.landingSystem < 0.3
                ? context.l10n.ui_landing_landingRiskCriticalDesc
                : context.l10n.ui_landing_landingRiskElevatedDesc,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.7),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRiskAssessment(int remaining, bool shipCritical) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: shipCritical
              ? const Color(0xFFF44336).withValues(alpha: 0.6)
              : _kAccent.withValues(alpha: 0.3),
        ),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Column(
        children: [
          Text(
            context.l10n.ui_landing_riskAssessment,
            style: TextStyle(
              color: _kAccent.withValues(alpha: 0.7),
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.ui_landing_encountersRemaining(remaining),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          if (shipCritical) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFF44336).withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFF44336).withValues(alpha: 0.4),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.warning_amber_rounded,
                      color: Color(0xFFF44336), size: 20),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      context.l10n.ui_landing_shipMayNotSurvive,
                      style: const TextStyle(
                        color: Color(0xFFF44336),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSurfaceFeatures(Planet planet, dynamic voyage) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.ui_landing_surfaceFeatures,
            style: TextStyle(
              color: _kAccent.withValues(alpha: 0.7),
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: planet.surfaceFeatures.map((f) {
              final isRevealed = _obviousFeatures.contains(f) ||
                  voyage.revealedFeatures.contains(f);
              final label = isRevealed
                  ? localizedSurfaceFeature(context.l10n, f)
                  : '??? Unknown';
              final chipColor =
                  isRevealed ? _kAccent : Colors.white.withValues(alpha: 0.4);
              return Tooltip(
                message:
                    isRevealed ? label : 'Requires landing to identify',
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: chipColor.withValues(alpha: 0.3),
                    ),
                    color: chipColor.withValues(alpha: 0.08),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!isRevealed) ...[
                        Icon(Icons.lock_outline,
                            size: 10,
                            color: chipColor.withValues(alpha: 0.8)),
                        const SizedBox(width: 4),
                      ],
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: 12,
                          color: chipColor.withValues(alpha: 0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildMoonsAndRings(Planet planet) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (planet.moons.isNotEmpty) ...[
            Text(
              'MOONS',
              style: TextStyle(
                color: _kAccent.withValues(alpha: 0.7),
                fontSize: 12,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ...planet.moons.map((moon) {
              final color = _moonTypeColor(moon.type);
              final label = _moonTypeLabel(moon.type);
              final sizeLabel = moon.size > 0.7
                  ? 'Large'
                  : moon.size > 0.3
                      ? 'Medium'
                      : 'Small';
              return Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        boxShadow: [
                          if (moon.type == MoonType.habitable)
                            BoxShadow(
                              color: color.withValues(alpha: 0.5),
                              blurRadius: 6,
                              spreadRadius: 1,
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$label Moon',
                      style: TextStyle(
                        color: color,
                        fontSize: 13,
                        fontWeight: moon.type == MoonType.habitable
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      sizeLabel,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.5),
                        fontSize: 12,
                      ),
                    ),
                    if (moon.type == MoonType.habitable &&
                        moon.habitability != null) ...[
                      const Spacer(),
                      Text(
                        '${(moon.habitability! * 100).round()}% hab.',
                        style: TextStyle(
                          color: const Color(0xFF4CAF50),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              );
            }),
          ],
          if (planet.rings != null) ...[
            if (planet.moons.isNotEmpty) const SizedBox(height: 12),
            Text(
              'RINGS',
              style: TextStyle(
                color: _kAccent.withValues(alpha: 0.7),
                fontSize: 12,
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.trip_origin,
                  size: 14,
                  color: _ringTypeColor(planet.rings!.type),
                ),
                const SizedBox(width: 8),
                Text(
                  '${_ringTypeLabel(planet.rings!.type)} Ring System',
                  style: TextStyle(
                    color: _ringTypeColor(planet.rings!.type),
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                Text(
                  'Density: ${(planet.rings!.density * 100).round()}%',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildColonyNameField() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
        color: _kBgColor.withValues(alpha: 0.85),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.ui_landing_nameYourColony,
            style: TextStyle(
              color: _kAccent.withValues(alpha: 0.7),
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _colonyNameController,
            maxLines: 1,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.text,
            enableInteractiveSelection: true,
            textCapitalization: TextCapitalization.words,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            decoration: InputDecoration(
              hintText: 'Name your colony',
              hintStyle: TextStyle(
                color: _kAccent.withValues(alpha: 0.3),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: _kAccent.withValues(alpha: 0.3)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: _kAccent.withValues(alpha: 0.7)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(Planet planet) {
    return Column(
      children: [
        _GlowingActionButton(
          label: context.l10n.ui_landing_establishColony,
          isPrimary: true,
          pulseController: _pulseController,
          onTap: () {
            GameSfx().play(GameSfx.buttonClick);
            final name = _colonyNameController.text.trim();
            if (name.isNotEmpty) {
              ref.read(voyageProvider.notifier).setColonyName(name);
            }
            Navigator.of(context).pushReplacementNamed('/landing-sequence');
          },
        ),
        const SizedBox(height: 16),
        if (planet.canLandOnMoon) ...[
          _GlowingActionButton(
            label: 'LAND ON MOON',
            isPrimary: true,
            accentColor: const Color(0xFF4CAF50),
            pulseController: _pulseController,
            onTap: () {
              GameSfx().play(GameSfx.buttonClick);
              final name = _colonyNameController.text.trim();
              if (name.isNotEmpty) {
                ref.read(voyageProvider.notifier).setColonyName(name);
              }
              ref.read(voyageProvider.notifier).setLandedOnMoon(true);
              Navigator.of(context).pushReplacementNamed('/landing-sequence');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Moon: ${(planet.bestHabitableMoon!.habitability! * 100).round()}%',
                  style: const TextStyle(
                    color: Color(0xFF4CAF50),
                    fontSize: 12,
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '  vs  ',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontSize: 12,
                    fontFamily: 'monospace',
                  ),
                ),
                Text(
                  'Planet: ${(planet.habitabilityScore * 100).round()}%',
                  style: TextStyle(
                    color: _kAccent,
                    fontSize: 12,
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Lower gravity — easier landing',
              style: TextStyle(
                color: const Color(0xFF4CAF50).withValues(alpha: 0.7),
                fontSize: 11,
                fontFamily: 'monospace',
                fontStyle: FontStyle.italic,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
        _GlowingActionButton(
          label: context.l10n.ui_landing_pressOnward,
          isPrimary: false,
          pulseController: _pulseController,
          onTap: () {
            GameSfx().play(GameSfx.buttonClick);
            GameMusic().returnToBgMusic();
            GameMusic().startEngineHum();
            ref.read(voyageProvider.notifier).pressOn();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

// ── Planet visualization ────────────────────────────────────────────────────

class _PlanetVisualization extends StatelessWidget {
  const _PlanetVisualization({required this.planet, required this.pulse});

  final Planet planet;
  final double pulse;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screen = ScreenInfo.of(context);
    // On tablets in landscape, use a fraction of half the screen (column width).
    // On phones, use 55% of screen width. Cap at 300px to leave room for moons/rings.
    final maxDiameter = (screen.isLandscape && screen.screenClass != ScreenClass.compact)
        ? screenWidth * 0.25
        : screenWidth * 0.55;
    final diameter = maxDiameter.clamp(120.0, 300.0);
    final glowIntensity = 0.15 + pulse * 0.1;
    final colors = _buildPlanetColors(planet);

    return SizedBox(
      width: diameter + 80,
      height: diameter + 80,
      child: Center(
        child: Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: colors,
              stops: const [0.0, 0.4, 0.75, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: colors[1].withValues(alpha: glowIntensity),
                blurRadius: 40,
                spreadRadius: 8,
              ),
              BoxShadow(
                color: colors[2].withValues(alpha: glowIntensity * 0.5),
                blurRadius: 80,
                spreadRadius: 16,
              ),
            ],
          ),
          child: CustomPaint(
            painter: _PlanetDetailPainter(
              planet: planet,
              animValue: pulse,
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _buildPlanetColors(Planet planet) {
    final blue = planet.water * 0.8;
    final green = planet.biodiversity * 0.7;
    final red = planet.temperature * 0.6;
    final grey = (1.0 - planet.habitabilityScore) * 0.5;

    final r =
        ((red * 200 + grey * 120) / (red + grey + 0.01)).clamp(30.0, 255.0);
    final g = ((green * 220 + grey * 100) / (green + grey + 0.01))
        .clamp(30.0, 255.0);
    final b =
        ((blue * 255 + grey * 100) / (blue + grey + 0.01)).clamp(40.0, 255.0);

    final coreColor = Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1.0);
    final midColor = Color.lerp(coreColor, const Color(0xFF1A2940), 0.3)!;
    final edgeColor = Color.lerp(coreColor, const Color(0xFF0B1426), 0.6)!;

    return [
      Color.lerp(Colors.white, coreColor, 0.5)!,
      coreColor,
      midColor,
      edgeColor,
    ];
  }
}

class _PlanetDetailPainter extends CustomPainter {
  _PlanetDetailPainter({required this.planet, required this.animValue});

  final Planet planet;
  final double animValue;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Atmospheric ring for planets with decent atmosphere.
    if (planet.atmosphere > 0.3) {
      final atmPaint = Paint()
        ..color = _kAccent.withValues(alpha: planet.atmosphere * 0.15)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2 + planet.atmosphere * 4
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);
      canvas.drawCircle(center, radius + 4, atmPaint);
    }

    // Surface latitude bands.
    final linePaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.08)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    for (int i = 1; i < 5; i++) {
      final y = center.dy - radius + (radius * 2 * i / 5);
      final halfWidth =
          sqrt(max(0, radius * radius - pow(y - center.dy, 2)));
      canvas.drawArc(
        Rect.fromCenter(
          center: center,
          width: halfWidth * 2,
          height: radius * 0.3,
        ),
        0,
        pi,
        false,
        linePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _PlanetDetailPainter old) =>
      old.animValue != animValue;
}

// ── Stats card ──────────────────────────────────────────────────────────────

class _StatEntry {
  final String label;
  final double value;
  const _StatEntry(this.label, this.value);
}

class _StatsCard extends StatelessWidget {
  const _StatsCard({required this.title, required this.entries});

  final String title;
  final List<_StatEntry> entries;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: _kAccent.withValues(alpha: 0.7),
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          ...entries.map((e) => _StatBar(label: e.label, value: e.value)),
        ],
      ),
    );
  }
}

class _StatBar extends StatelessWidget {
  const _StatBar({required this.label, required this.value});

  final String label;
  final double value;

  @override
  Widget build(BuildContext context) {
    final clamped = value.clamp(0.0, 1.0);
    Color barColor;
    if (clamped > 0.6) {
      barColor = _kAccent;
    } else if (clamped > 0.3) {
      barColor = const Color(0xFFFF9800);
    } else {
      barColor = const Color(0xFFF44336);
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
              Text(
                '${(clamped * 100).toInt()}%',
                style: TextStyle(
                  color: barColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: SizedBox(
              height: 6,
              child: LinearProgressIndicator(
                value: clamped,
                backgroundColor: Colors.white.withValues(alpha: 0.1),
                valueColor: AlwaysStoppedAnimation(barColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Glowing action button ───────────────────────────────────────────────────

class _GlowingActionButton extends StatelessWidget {
  const _GlowingActionButton({
    required this.label,
    required this.isPrimary,
    required this.pulseController,
    required this.onTap,
    this.accentColor,
  });

  final String label;
  final bool isPrimary;
  final AnimationController pulseController;
  final VoidCallback onTap;
  final Color? accentColor;

  @override
  Widget build(BuildContext context) {
    final color = accentColor ?? _kAccent;

    return AnimatedBuilder(
      animation: pulseController,
      builder: (_, __) {
        final glowAlpha =
            isPrimary ? 0.2 + pulseController.value * 0.15 : 0.0;

        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    isPrimary ? color : color.withValues(alpha: 0.4),
                width: isPrimary ? 2 : 1,
              ),
              color: isPrimary
                  ? color.withValues(alpha: 0.15)
                  : Colors.transparent,
              boxShadow: isPrimary
                  ? [
                      BoxShadow(
                        color: color.withValues(alpha: glowAlpha),
                        blurRadius: 20,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isPrimary ? Colors.white : color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
        );
      },
    );
  }
}

// ── Moon/Ring helper functions ──────────────────────────────────────────────

Color _moonTypeColor(MoonType type) {
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

String _moonTypeLabel(MoonType type) {
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

Color _ringTypeColor(RingType type) {
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

String _ringTypeLabel(RingType type) {
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
