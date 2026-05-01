import 'package:stellar_broadcast/models/voyage_log_entry.dart';

/// A single high-score entry with seed and timestamp context.
class HighScoreEntry {
  final int score;
  final int seed;
  final int timestamp;

  /// UTC date string (YYYY-MM-DD) for daily voyage entries, null otherwise.
  final String? date;

  const HighScoreEntry({
    required this.score,
    this.seed = 0,
    this.timestamp = 0,
    this.date,
  });

  /// 6-char alphanumeric seed code (e.g. A3F2K1).
  String get seedCode =>
      seed == 0 ? '------' : (seed.abs() % 2176782336).toRadixString(36).toUpperCase().padLeft(6, '0');

  factory HighScoreEntry.fromJson(Map<String, dynamic> json) {
    return HighScoreEntry(
      score: json['score'] as int? ?? 0,
      seed: json['seed'] as int? ?? 0,
      timestamp: json['timestamp'] as int? ?? 0,
      date: json['date'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'score': score,
        'seed': seed,
        'timestamp': timestamp,
        if (date != null) 'date': date,
      };
}

/// Persistent meta-progression data that survives across voyages.
class LegacyData {
  final int totalVoyages;
  final int bestScore;
  final List<String> achievements;
  final Map<String, bool> upgrades;
  final int legacyPoints;
  final List<VoyageLogEntry> voyageLogs;
  final List<HighScoreEntry> highScores;

  /// Scores from daily voyages, stored separately from regular high scores.
  final List<HighScoreEntry> dailyScores;

  /// Set of all planet feature keys the player has encountered across voyages.
  final Set<String> discoveredFeatures;

  /// Preserves the best score from the old 0-130 scoring system.
  final int legacyBestScore;

  /// Score version: 1 = old 0-130, 2 = new 0-100K. Used for migration.
  final int scoreVersion;

  /// Consecutive days the player has landed on at least one planet. Reset to
  /// 1 the first time a landing happens after a gap (or first ever); only
  /// advances when [lastStreakDate] is exactly yesterday in device-local time.
  /// Drives the per-voyage hull boost (capped at +5% on day 6+).
  final int streakCount;

  /// Date string (YYYY-MM-DD, device-local) of the last landing that
  /// advanced the streak. Null until the first landing ever. Device-local —
  /// distinct from the daily-challenge UTC marker by design.
  final String? lastStreakDate;

  /// Whether the daily 7 PM streak reminder is enabled. Default-on so the
  /// retention hook works for new players without a settings safari.
  final bool streakReminderEnabled;

  const LegacyData({
    this.totalVoyages = 0,
    this.bestScore = 0,
    this.achievements = const [],
    this.upgrades = const {},
    this.legacyPoints = 0,
    this.voyageLogs = const [],
    this.highScores = const [],
    this.dailyScores = const [],
    this.discoveredFeatures = const {},
    this.legacyBestScore = 0,
    this.scoreVersion = 2,
    this.streakCount = 0,
    this.lastStreakDate,
    this.streakReminderEnabled = true,
  });

  LegacyData copyWith({
    int? totalVoyages,
    int? bestScore,
    List<String>? achievements,
    Map<String, bool>? upgrades,
    int? legacyPoints,
    List<VoyageLogEntry>? voyageLogs,
    List<HighScoreEntry>? highScores,
    List<HighScoreEntry>? dailyScores,
    Set<String>? discoveredFeatures,
    int? legacyBestScore,
    int? scoreVersion,
    int? streakCount,
    String? lastStreakDate,
    bool clearLastStreakDate = false,
    bool? streakReminderEnabled,
  }) {
    return LegacyData(
      totalVoyages: totalVoyages ?? this.totalVoyages,
      bestScore: bestScore ?? this.bestScore,
      achievements: achievements ?? this.achievements,
      upgrades: upgrades ?? this.upgrades,
      legacyPoints: legacyPoints ?? this.legacyPoints,
      voyageLogs: voyageLogs ?? this.voyageLogs,
      highScores: highScores ?? this.highScores,
      dailyScores: dailyScores ?? this.dailyScores,
      discoveredFeatures: discoveredFeatures ?? this.discoveredFeatures,
      legacyBestScore: legacyBestScore ?? this.legacyBestScore,
      scoreVersion: scoreVersion ?? this.scoreVersion,
      streakCount: streakCount ?? this.streakCount,
      lastStreakDate:
          clearLastStreakDate ? null : (lastStreakDate ?? this.lastStreakDate),
      streakReminderEnabled:
          streakReminderEnabled ?? this.streakReminderEnabled,
    );
  }

  /// Boost applied to next voyage's hull from the current streak.
  /// Day 1 = 0%, Day 2 = 1%, capped at 5% on Day 6+.
  double get streakHullBoost =>
      ((streakCount - 1).clamp(0, 5)) * 0.01;

  @override
  String toString() =>
      'LegacyData(voyages: $totalVoyages, best: $bestScore, '
      'points: $legacyPoints, achievements: ${achievements.length}, '
      'scoreVersion: $scoreVersion, streak: $streakCount@$lastStreakDate)';
}
