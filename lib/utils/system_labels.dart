/// Human-readable labels for ship system and planet stat keys.
String systemLabel(String key) {
  const labels = {
    'hull': 'HULL',
    'nav': 'NAV',
    'cryopods': 'CRYOPODS',
    'culture': 'CULTURE',
    'tech': 'TECH',
    'constructors': 'CONSTRUCTORS',
    'shields': 'SHIELDS',
    'landingSystem': 'LANDING',
    'atmosphericScanner': 'ATMO SCAN',
    'gravimetricScanner': 'GRAV SCAN',
    'mineralScanner': 'MINERAL SCAN',
    'lifeSignsScanner': 'LIFE SCAN',
    'temperatureScanner': 'TEMP SCAN',
    'waterScanner': 'WATER SCAN',
    'atmosphere': 'ATMOSPHERE',
    'temperature': 'TEMPERATURE',
    'water': 'WATER',
    'resources': 'RESOURCES',
    'gravity': 'GRAVITY',
    'biodiversity': 'BIODIVERSITY',
    'anomaly': 'ANOMALY',
    'radiation': 'RADIATION',
    'nativePresence': 'NATIVES',
    'nativeDisposition': 'DISPOSITION',
  };
  return labels[key] ?? key.toUpperCase();
}
