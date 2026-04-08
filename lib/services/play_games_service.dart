import 'package:games_services/games_services.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Fire-and-forget wrapper for Google Play Games / Game Center.
/// All calls silently fail if unavailable — the game works fully offline.
class PlayGamesService {
  PlayGamesService._();

  /// Cached player display name from sign-in.
  static String? _playerName;

  /// Returns the signed-in player name, or null if unavailable.
  static String? get playerName => _playerName;

  static Future<void> signIn() async {
    try {
      await GamesServices.signIn();
    } catch (e, st) {
      QaLogger.app.warning('Games sign-in failed', e, st);
    }
    try {
      _playerName = await GamesServices.getPlayerName();
    } catch (_) {}
  }

  static Future<void> submitScore(
    int score, {
    required String androidId,
    required String iosId,
  }) async {
    try {
      await GamesServices.submitScore(
        score: Score(
          androidLeaderboardID: androidId,
          iOSLeaderboardID: iosId,
          value: score,
        ),
      );
    } catch (e, st) {
      QaLogger.app.warning('Games submitScore failed', e, st);
    }
  }

  static Future<void> showLeaderboard({
    required String androidId,
    required String iosId,
  }) async {
    try {
      await GamesServices.showLeaderboards(
        androidLeaderboardID: androidId,
        iOSLeaderboardID: iosId,
      );
    } catch (e, st) {
      QaLogger.app.warning('Games showLeaderboard failed', e, st);
    }
  }

  /// Returns true if the native leaderboard UI was shown successfully.
  static Future<bool> showAllLeaderboards() async {
    try {
      await GamesServices.showLeaderboards();
      return true;
    } catch (e, st) {
      QaLogger.app.warning('Games showAllLeaderboards failed', e, st);
      return false;
    }
  }

  static Future<void> unlockAchievement({
    required String androidId,
    required String iosId,
  }) async {
    try {
      await GamesServices.unlock(
        achievement: Achievement(
          androidID: androidId,
          iOSID: iosId,
        ),
      );
    } catch (e, st) {
      QaLogger.app.warning('Games unlockAchievement failed', e, st);
    }
  }

  static Future<void> showAchievements() async {
    try {
      await GamesServices.showAchievements();
    } catch (e, st) {
      QaLogger.app.warning('Games showAchievements failed', e, st);
    }
  }
}
