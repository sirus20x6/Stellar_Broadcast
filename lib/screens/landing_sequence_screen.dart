import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_audio/quickapps_audio.dart';

import 'package:stellar_broadcast/providers/game_providers.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);
const _kWarning = Color(0xFFFF9800);
const _kDanger = Color(0xFFFF1744);

/// 4-phase cinematic landing sequence.
///
/// Phases: Space → Atmosphere → Glide → Touchdown.
/// Applies conditional failures based on fuel, landing system damage,
/// dangerous terrain, and ocean worlds.
class LandingSequenceScreen extends ConsumerStatefulWidget {
  const LandingSequenceScreen({super.key});

  @override
  ConsumerState<LandingSequenceScreen> createState() =>
      _LandingSequenceScreenState();
}

class _LandingSequenceScreenState extends ConsumerState<LandingSequenceScreen>
    with TickerProviderStateMixin {
  late final AnimationController _starController;

  final _random = Random();
  final _lines = <_NarrativeLine>[];
  int _currentLine = 0;
  bool _sequenceComplete = false;
  bool _skipped = false;

  // Damage applied during landing.
  double _hullDamage = 0.0;
  double _cryopodDamage = 0.0;
  int _colonistLoss = 0;
  double _landingDamage = 0.0;

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _buildSequence();
    GameSfx().playLong(GameSfx.landingSequence);
    _playSequence();
  }

  void _buildSequence() {
    final voyage = ref.read(voyageProvider);
    final ship = voyage.ship;
    final planet = voyage.currentPlanet!;
    final fuel = voyage.fuel;

    final lowFuel = fuel < 60;
    final damagedLanding = ship.landingSystem < 0.3;
    final dangerousTerrain =
        planet.surfaceFeatures.contains('dangerous_fauna') ||
        planet.surfaceFeatures.contains('poisonous_plants');
    final oceanWorld = planet.water > 0.9;

    // Treacherous planet conditions.
    final thinAtmo = planet.atmosphere < 0.25;
    final extremeTemp = planet.temperature < 0.2;
    final highRad = planet.radiation > 0.75;
    final crushingGrav = planet.gravity < 0.2 || planet.gravity > 0.8;
    final noWater = planet.water < 0.15;

    // Phase 1: Space.
    _lines.add(_NarrativeLine('PHASE 1: ORBITAL COMMIT', isHeader: true));
    _lines.add(
      _NarrativeLine(
        'Orbital plane aligned with ${planet.name}. Descent window open.',
      ),
    );
    _lines.add(
      _NarrativeLine('Descent window open. Committing to entry.'),
    );
    if (lowFuel) {
      _lines.add(
        _NarrativeLine(
          'Fuel reserves critically low. Descent profile revised.',
          color: _kWarning,
        ),
      );
    }
    if (highRad) {
      _lines.add(
        _NarrativeLine(
          'Radiation exceeds safe limits. Cryopod shielding degrading under bombardment.',
          color: _kDanger,
        ),
      );
      _cryopodDamage += 0.12;
      _colonistLoss += 40 + _random.nextInt(60);
    }

    // Phase 2: Atmosphere.
    _lines.add(_NarrativeLine('PHASE 2: ATMOSPHERIC FIRE', isHeader: true));
    if (thinAtmo) {
      _lines.add(
        _NarrativeLine(
          'Atmosphere too thin for safe braking. Descent speed climbing.',
          color: _kDanger,
        ),
      );
      _hullDamage += 0.15;
      _landingDamage += 0.12;
      _colonistLoss += 30 + _random.nextInt(50);
    } else {
      _lines.add(
        _NarrativeLine(
          'Hull temperature rising. Plasma sheath established.',
        ),
      );
      _lines.add(_NarrativeLine('Hull temperature rising. Plasma sheath nominal.'));
    }
    if (damagedLanding) {
      _lines.add(
        _NarrativeLine(
          'Landing system fault. Heat-shield response outside tolerance.',
          color: _kDanger,
        ),
      );
      _hullDamage += 0.08;
      _cryopodDamage += 0.05;
      _colonistLoss += 20 + _random.nextInt(30);
    }
    if (extremeTemp) {
      _lines.add(
        _NarrativeLine(
          'Surface temperature incompatible with safe touchdown. Hull plating fracturing under shock.',
          color: _kDanger,
        ),
      );
      _hullDamage += 0.12;
      _cryopodDamage += 0.08;
      _colonistLoss += 50 + _random.nextInt(80);
    }
    if (oceanWorld) {
      _lines.add(
        _NarrativeLine(
          'Ocean coverage above ninety percent. Redirecting toward marginal landmass.',
          color: _kWarning,
        ),
      );
    }

    // Phase 3: Glide.
    _lines.add(_NarrativeLine('PHASE 3: FINAL APPROACH', isHeader: true));
    _lines.add(
      _NarrativeLine(
        'Control surfaces deployed. Riding lower through cloud and ash.',
      ),
    );
    if (crushingGrav) {
      final gravMsg = planet.gravity > 0.8
          ? 'Gravity well exceeds safe landing model. Structural stress rising fast.'
          : 'Low gravity is destabilising the approach vector. Thrusters are overcorrecting.';
      _lines.add(_NarrativeLine(gravMsg, color: _kDanger));
      _hullDamage += 0.10;
      _landingDamage += 0.08;
      _colonistLoss += 20 + _random.nextInt(40);
    }
    if (dangerousTerrain) {
      _lines.add(
        _NarrativeLine(
          'Biosign clusters and unstable terrain below the target corridor.',
          color: _kWarning,
        ),
      );
      _hullDamage += 0.03;
    }
    if (noWater) {
      _lines.add(
        _NarrativeLine(
          'No accessible surface water detected. Dust fronts buffeting the hull.',
          color: _kWarning,
        ),
      );
      _hullDamage += 0.04;
    }
    if (lowFuel) {
      _lines.add(
        _NarrativeLine(
          'Fuel pumps sputtering. Emergency reserves engaged.',
          color: _kDanger,
        ),
      );
      _landingDamage += 0.1;
      _colonistLoss += 10 + _random.nextInt(20);
    }
    _lines.add(_NarrativeLine('Final approach locked. Committing to touchdown.'));

    // Phase 4: Touchdown.
    _lines.add(_NarrativeLine('PHASE 4: TOUCHDOWN', isHeader: true));
    if (oceanWorld) {
      _lines.add(
        _NarrativeLine(
          'Ocean skim detected. Hull stress rising.',
          color: _kWarning,
        ),
      );
      _hullDamage += 0.05;
    }
    if (thinAtmo && crushingGrav) {
      _lines.add(
        _NarrativeLine(
          'Catastrophic impact likely. Braking margin exhausted. Emergency systems overloaded.',
          color: _kDanger,
        ),
      );
      _hullDamage += 0.15;
      _colonistLoss += 80 + _random.nextInt(100);
    } else if (damagedLanding && lowFuel) {
      _lines.add(
        _NarrativeLine(
          'Hard landing. Impact absorbers at maximum. Brace.',
          color: _kDanger,
        ),
      );
      _colonistLoss += 30 + _random.nextInt(40);
      _hullDamage += 0.05;
    } else if (damagedLanding || lowFuel || crushingGrav || thinAtmo) {
      _lines.add(
        _NarrativeLine(
          'Rough touchdown. Hull integrity holding.',
          color: _kWarning,
        ),
      );
    } else {
      _lines.add(
        _NarrativeLine('Touchdown stable. Landing struts locked.'),
      );
    }
    _lines.add(
      _NarrativeLine(
        'Engines quiet. All systems transitioning to surface mode.',
      ),
    );
  }

  void _skip() {
    if (_skipped) return;
    _skipped = true;
    setState(() {
      _currentLine = _lines.length;
    });
  }

  Future<void> _playSequence() async {
    await Future.delayed(const Duration(milliseconds: 800));
    for (int i = 0; i < _lines.length; i++) {
      if (!mounted || _skipped) break;
      setState(() => _currentLine = i + 1);
      // Play alarm SFX and haptics on warning/danger lines.
      if (_lines[i].color == _kDanger) {
        GameSfx().play(GameSfx.criticalAlarm, volume: 0.7);
        HapticService().error();
      } else if (_lines[i].color == _kWarning) {
        GameSfx().play(GameSfx.minorDamage, volume: 0.5);
        HapticService().heavy();
      } else if (_lines[i].isHeader && _lines[i].text.contains('TOUCHDOWN')) {
        HapticService().rigid();
      }
      final delay = _lines[i].isHeader ? 1200 : 1800;
      await Future.delayed(Duration(milliseconds: delay));
    }

    // Apply damage to ship/colonists before ending.
    if (!mounted) return;
    _applyLandingDamage();

    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    setState(() => _sequenceComplete = true);
  }

  void _applyLandingDamage() {
    final notifier = ref.read(voyageProvider.notifier);
    final voyage = ref.read(voyageProvider);
    var ship = voyage.ship;

    if (_hullDamage > 0) ship = ship.degrade('hull', _hullDamage);
    if (_cryopodDamage > 0) ship = ship.degrade('cryopods', _cryopodDamage);
    if (_landingDamage > 0) {
      ship = ship.degrade('landingSystem', _landingDamage);
    }

    // Consume landing fuel (20-30).
    final fuelCost = 20 + _random.nextInt(11);
    final newColonists = (voyage.colonists - _colonistLoss).clamp(0, 1000);

    // We need to update state directly through the notifier.
    // Use landOnPlanet which will set the ship state.
    // First update the ship and colonists via state.
    notifier.applyLandingDamage(
      ship: ship,
      colonists: newColonists,
      fuelCost: fuelCost,
    );
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: GestureDetector(
      onTap: _sequenceComplete ? null : _skip,
      child: Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _starController,
                builder: (_, __) => CustomPaint(
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

          // Narrative content.
          SafeArea(
            child: ResponsiveContent(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'LANDING SEQUENCE',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                      color: _kAccent,
                      shadows: [
                        Shadow(
                          color: _kAccent.withValues(alpha: 0.6),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Narrative lines.
                  Expanded(
                    child: ListView.builder(
                      itemCount: _currentLine,
                      itemBuilder: (context, i) {
                        final line = _lines[i];
                        return TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: 1),
                          duration: const Duration(milliseconds: 600),
                          builder: (context, value, child) {
                            return Opacity(
                              opacity: value,
                              child: Transform.translate(
                                offset: Offset(0, 10 * (1 - value)),
                                child: child,
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: line.isHeader ? 8 : 12,
                              top: line.isHeader ? 20 : 0,
                            ),
                            child: Text(
                              line.text,
                              style: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: line.isHeader ? 14 : 13,
                                fontWeight: line.isHeader
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                letterSpacing: line.isHeader ? 3 : 0.5,
                                height: 1.5,
                                color:
                                    line.color ??
                                    (line.isHeader
                                        ? _kAccent
                                        : Colors.white.withValues(alpha: 0.75)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  // Continue button.
                  if (_sequenceComplete)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: GestureDetector(
                        onTap: () {
                          GameSfx().play(GameSfx.buttonClick);
                          // Trigger landing and navigate to ending.
                          try {
                            ref.read(voyageProvider.notifier).landOnPlanet(context.l10n);
                          } catch (e) {
                            debugPrint('landOnPlanet error: $e');
                          }
                          Navigator.of(context).pushReplacementNamed('/ending');
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: _kAccent, width: 2),
                            color: _kAccent.withValues(alpha: 0.15),
                            boxShadow: [
                              BoxShadow(
                                color: _kAccent.withValues(alpha: 0.3),
                                blurRadius: 20,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: const Text(
                            'VIEW COLONY REPORT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}

class _NarrativeLine {
  final String text;
  final bool isHeader;
  final Color? color;

  const _NarrativeLine(this.text, {this.isHeader = false, this.color});
}
