import 'dart:convert';
import 'dart:io';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Fire-and-forget client for the self-hosted leaderboard API.
/// All calls are non-blocking and silently fail if the server is unreachable.
class LeaderboardApi {
  LeaderboardApi._();

  static const _baseUrl = 'https://stellarbroadcast.org/api';
  static const _apiKey =
      'e4d6aacedf116502980f691f79db10d6ddc44b8bf8fc5ad498d505183d6e2a8c';

  /// Submit a score to the leaderboard. Fire-and-forget.
  static void submitScore({
    required String player,
    required int score,
    required String board,
    String? seed,
    String? version,
  }) {
    _post('/score', {
      'player': player,
      'score': score,
      'board': board,
      if (seed != null) 'seed': seed,
      if (version != null) 'version': version,
    });
  }

  static Future<void> _post(String path, Map<String, dynamic> body) async {
    try {
      final client = HttpClient();
      client.connectionTimeout = const Duration(seconds: 5);
      final request = await client.postUrl(Uri.parse('$_baseUrl$path'));
      request.headers.set('Content-Type', 'application/json');
      request.headers.set('X-API-Key', _apiKey);
      request.write(jsonEncode(body));
      final response = await request.close().timeout(const Duration(seconds: 5));
      await response.drain<void>();
      client.close();
    } catch (e, st) {
      QaLogger.app.warning('LeaderboardApi POST $path failed', e, st);
    }
  }
}
