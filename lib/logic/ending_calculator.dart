import 'package:starbound_exodus/models/planet.dart';
import 'package:starbound_exodus/models/ship.dart';

/// The computed ending of a voyage.
class EndingResult {
  final int score;
  final String tier;
  final String title;
  final String epilogue;

  const EndingResult({
    required this.score,
    required this.tier,
    required this.title,
    required this.epilogue,
  });

  @override
  String toString() => 'EndingResult($score — $tier)';
}

/// Combines ship health and planet habitability into a scored ending.
class EndingCalculator {
  EndingCalculator._();

  /// Ship health contributes 40 %, planet habitability 60 %.
  static EndingResult calculate(ShipSystems ship, Planet planet) {
    final shipFactor = ship.averageHealth;
    final planetFactor = planet.habitabilityScore;

    // Weighted composite clamped to 0-100.
    final raw = (shipFactor * 0.4 + planetFactor * 0.6) * 100;
    final score = raw.round().clamp(0, 100);

    final tier = _tierFor(score);
    final title = _titleFor(tier, planet.name);
    final epilogue = _epilogueFor(tier, planet, ship);

    return EndingResult(
      score: score,
      tier: tier,
      title: title,
      epilogue: epilogue,
    );
  }

  static String _tierFor(int score) {
    if (score >= 90) return 'Golden Age';
    if (score >= 70) return 'Thriving Colony';
    if (score >= 50) return 'Survival';
    if (score >= 30) return 'Struggling';
    if (score >= 10) return 'Dire';
    return 'Extinction';
  }

  static String _titleFor(String tier, String planetName) {
    switch (tier) {
      case 'Golden Age':
        return 'The Golden Age of $planetName';
      case 'Thriving Colony':
        return 'A New Dawn on $planetName';
      case 'Survival':
        return 'Survivors of $planetName';
      case 'Struggling':
        return 'The Hard Years on $planetName';
      case 'Dire':
        return 'Clinging to Life on $planetName';
      case 'Extinction':
        return 'The Last Transmission from $planetName';
      default:
        return 'Landfall on $planetName';
    }
  }

  static String _epilogueFor(String tier, Planet planet, ShipSystems ship) {
    switch (tier) {
      case 'Golden Age':
        return 'Against all odds, humanity found not just a home but a paradise. '
            'The colony ship\'s systems held strong, and ${planet.name}\'s fertile '
            'lands embraced the settlers like a long-lost mother. Within a generation, '
            'art, science, and culture flourished. Children born on ${planet.name} '
            'looked up at unfamiliar stars and called them home. The Golden Age had begun, '
            'and the sacrifices of the voyage became the founding myth of a civilization '
            'destined to reach even further into the cosmos.';

      case 'Thriving Colony':
        return 'The landing was rough, and the first months demanded everything the '
            'colonists had. But ${planet.name} proved generous — water flowed, crops '
            'took root, and the atmosphere, while not perfect, sustained life. The ship\'s '
            'remaining systems were cannibalized to build the first settlement. By the '
            'end of the first decade, a thriving town stood where the colony ship had '
            'landed. Humanity had a second chance, and this time they were determined '
            'not to waste it.';

      case 'Survival':
        return 'Survival was never guaranteed, and on ${planet.name} it was earned '
            'day by day. The damaged ship provided only the barest essentials. '
            'Colonists adapted to the alien environment through sheer stubbornness '
            'and ingenuity. Generations would remember the hardship of the founding '
            'years, but they would also remember the unbreakable spirit that kept '
            'humanity alive on a world that owed them nothing.';

      case 'Struggling':
        return 'The colony clung to existence like a candle in a storm. ${planet.name} '
            'was unforgiving — resources were scarce, the environment hostile, and the '
            'ship\'s degraded systems offered little help. Rationing became a way of life. '
            'Some whispered that they should have pressed on to another world. But the '
            'colony endured, diminished and hardened, a testament to humanity\'s refusal '
            'to die quietly.';

      case 'Dire':
        return 'The landing on ${planet.name} was a disaster. Critical ship systems '
            'failed during descent, and the world that greeted the survivors was '
            'merciless. Within months, the colony was reduced to a handful of '
            'desperate souls sheltering in the ship\'s wreckage. Whether they '
            'would last another year was uncertain. The captain\'s final log entry '
            'read simply: "We are still here. For now."';

      case 'Extinction':
        return 'The ship\'s distress beacon continued to pulse long after the last '
            'colonist drew their final breath. ${planet.name} had been a death sentence '
            'from the moment they entered orbit — but there was nowhere else to go. '
            'The ship\'s black box recorded everything: the failing systems, the '
            'desperate final days, the silence that followed. If another ship ever '
            'finds this world, they will know that humanity tried. They will know '
            'that we reached for the stars, even when the stars did not reach back.';

      default:
        return 'The voyage is over. What comes next is up to the survivors.';
    }
  }
}
