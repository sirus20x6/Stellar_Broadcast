import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// Fire-and-forget client for the self-hosted leaderboard API.
/// All calls are non-blocking and silently fail if the server is unreachable.
class LeaderboardApi {
  LeaderboardApi._();

  static const _baseUrl = 'https://stellarbroadcast.org/api';

  /// API key for the leaderboard endpoint. Supplied at build time via
  /// `--dart-define=LEADERBOARD_API_KEY=...`. Empty string when missing,
  /// in which case the server will reject the submission and the call
  /// silently fails (fire-and-forget design).
  ///
  /// This key is a basic throttle/identification token, not a secret — any
  /// compiled binary can be decompiled to extract it. Real abuse protection
  /// should live on the server (rate-limiting per IP/device).
  static const _apiKey =
      String.fromEnvironment('LEADERBOARD_API_KEY', defaultValue: '');

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
    if (kIsWeb) return; // dart:io HttpClient not available on web
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
