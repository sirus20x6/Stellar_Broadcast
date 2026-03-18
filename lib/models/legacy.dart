/// Persistent meta-progression data that survives across voyages.
class LegacyData {
  final int totalVoyages;
  final int bestScore;
  final List<String> achievements;
  final Map<String, bool> upgrades;
  final int legacyPoints;

  const LegacyData({
    this.totalVoyages = 0,
    this.bestScore = 0,
    this.achievements = const [],
    this.upgrades = const {},
    this.legacyPoints = 0,
  });

  LegacyData copyWith({
    int? totalVoyages,
    int? bestScore,
    List<String>? achievements,
    Map<String, bool>? upgrades,
    int? legacyPoints,
  }) {
    return LegacyData(
      totalVoyages: totalVoyages ?? this.totalVoyages,
      bestScore: bestScore ?? this.bestScore,
      achievements: achievements ?? this.achievements,
      upgrades: upgrades ?? this.upgrades,
      legacyPoints: legacyPoints ?? this.legacyPoints,
    );
  }

  @override
  String toString() =>
      'LegacyData(voyages: $totalVoyages, best: $bestScore, '
      'points: $legacyPoints, achievements: ${achievements.length})';
}
