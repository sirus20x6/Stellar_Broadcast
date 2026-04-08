import 'package:stellar_broadcast/models/planet.dart';

/// Generates thematic colony name suggestions based on planet attributes.
class PlanetNamer {
  PlanetNamer._();

  static String suggestName(Planet planet) {
    // Pick name based on dominant characteristic.
    if (planet.water > 0.7) return _waterNames[planet.name.length % _waterNames.length];
    if (planet.biodiversity > 0.7) return _bioNames[planet.name.length % _bioNames.length];
    if (planet.temperature > 0.7) return _warmNames[planet.name.length % _warmNames.length];
    if (planet.atmosphere > 0.7) return _skyNames[planet.name.length % _skyNames.length];
    if (planet.resources > 0.7) return _richNames[planet.name.length % _richNames.length];
    if (planet.anomaly > 0.7) return _mysteryNames[planet.name.length % _mysteryNames.length];

    // Low stats — harsh names.
    if (planet.habitabilityScore < 0.3) {
      return _harshNames[planet.name.length % _harshNames.length];
    }

    // Default — hopeful names.
    return _hopeNames[planet.name.length % _hopeNames.length];
  }

  static const _waterNames = [
    'New Atlantis',
    'Oceana',
    'Bluefall',
    'Tidereach',
    'Aqua Haven',
    'Deepwater',
    'Coral Dawn',
  ];

  static const _bioNames = [
    'Eden Prime',
    'Verdania',
    'Greenreach',
    'Lifebloom',
    'Sylva Nova',
    'Floraheart',
    'Biovale',
  ];

  static const _warmNames = [
    'Solace',
    'Hearthstone',
    'Ember Landing',
    'Sunforge',
    'Warmhaven',
    'Goldlight',
    'Daybreak',
  ];

  static const _skyNames = [
    'Aethon',
    'Cloudreach',
    'Skyfall',
    'Zephyr Landing',
    'Windswept',
    'Breathe',
    'Horizon',
  ];

  static const _richNames = [
    'Bonanza',
    'Ironheart',
    'Motherload',
    'Foundry',
    'Ore Haven',
    'Richvein',
    'Deepmine',
  ];

  static const _mysteryNames = [
    'Enigma',
    'Whisper Landing',
    'Threshold',
    'The Anomaly',
    'Veilbreak',
    'Signal Point',
    'Resonance',
  ];

  static const _harshNames = [
    'Endurance',
    'Last Stand',
    'Grimhold',
    'Defiance',
    'Hardscrabble',
    'Ashfall',
    'Grit',
  ];

  static const _hopeNames = [
    'New Hope',
    'Landfall',
    'Promisekeep',
    'First Light',
    'Voyager\'s Rest',
    'New Terra',
    'Haven',
  ];
}
