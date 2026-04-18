import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_storage/quickapps_storage.dart';

/// Client for the self-hosted leaderboard API.
///
/// Submissions are non-blocking from the caller's perspective (the public
/// [submitScore] remains a fire-and-forget `void` method so callers don't
/// need to await it). Under the hood, a POST that fails is serialized and
/// appended to a persistent retry queue stored via [SettingsRepository].
/// The queue is opportunistically flushed whenever a later submission
/// succeeds, so no background timer is needed.
class LeaderboardApi {
  LeaderboardApi._();

  static const _baseUrl = 'https://stellarbroadcast.org/api';

  /// Persistent queue of submissions that failed to POST. Capped to avoid
  /// unbounded growth on a device that never recovers connectivity.
  ///
  /// Privacy note: queue entries contain the player-supplied `player`
  /// name plus game metadata (score, seed, board). They persist via
  /// [SettingsRepository] (Hive on Android, NSUserDefaults on iOS), both
  /// unencrypted at rest. For this game it's acceptable — the only
  /// identifying field is the voluntary leaderboard handle — but it is
  /// worth knowing:
  ///   * On iOS, the values are included in iCloud backup if the user
  ///     has iCloud Backup enabled for the app (default: yes).
  ///   * App uninstall clears the queue on both platforms.
  /// If we ever start queueing actual PII (email, precise location, etc.)
  /// this should move to an encrypted Hive box.
  @visibleForTesting
  static const pendingQueueKey = 'leaderboard.pending_submissions';

  /// Maximum number of queued submissions to retain. Older entries are
  /// dropped first when the cap is exceeded.
  static const _maxQueueEntries = 20;

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

  static final _settings = SettingsRepository();

  /// Submit a score to the leaderboard. Fire-and-forget from the caller's
  /// perspective: returns immediately, retries persist on network failure.
  static void submitScore({
    required String player,
    required int score,
    required String board,
    String? seed,
    String? version,
  }) {
    final payload = <String, dynamic>{
      'player': player,
      'score': score,
      'board': board,
      'seed': ?seed,
      'version': ?version,
      'ts': DateTime.now().toUtc().toIso8601String(),
    };
    // Schedule async work without blocking the caller.
    unawaited(_submit('/score', payload));
  }

  /// Attempt a single submission. On success, opportunistically flushes
  /// any previously-queued submissions. On failure, enqueues the payload.
  static Future<void> _submit(String path, Map<String, dynamic> body) async {
    final ok = await _post(path, body);
    if (ok) {
      // Known-good network: try to drain any pending submissions too.
      await flushPendingSubmissions();
    } else {
      await _enqueue(path, body);
    }
  }

  /// Number of consecutive per-entry failures allowed during a flush
  /// before we abort and leave the rest for next time. This keeps a
  /// single bad entry (or genuinely-down network) from stalling the
  /// queue forever while also not thrashing a dead connection across
  /// 20 POSTs.
  static const _flushConsecutiveFailureLimit = 3;

  /// Attempts pending submissions from the persistent queue. Each entry
  /// is tried independently: successful ones are dropped, failed ones
  /// are kept. We only abort the flush after
  /// [_flushConsecutiveFailureLimit] consecutive failures, so a single
  /// bad or server-rejected entry at the front of the queue can't pin
  /// the rest forever.
  static Future<void> flushPendingSubmissions() async {
    if (kIsWeb) return;
    final queue = await _readQueue();
    if (queue.isEmpty) return;

    final remaining = <Map<String, dynamic>>[];
    var consecutiveFailures = 0;
    var aborted = false;
    for (var i = 0; i < queue.length; i++) {
      final entry = queue[i];
      if (aborted) {
        remaining.add(entry);
        continue;
      }
      final path = entry['path'] as String? ?? '/score';
      final body = entry['body'];
      if (body is! Map<String, dynamic>) {
        // Malformed entry — drop it rather than retry forever.
        QaLogger.app.warning('LeaderboardApi dropping malformed queued entry');
        continue;
      }
      final ok = await _post(path, body);
      if (ok) {
        QaLogger.app.info('LeaderboardApi flushed queued submission');
        consecutiveFailures = 0;
      } else {
        remaining.add(entry);
        consecutiveFailures++;
        if (consecutiveFailures >= _flushConsecutiveFailureLimit) {
          // Network probably down — stop hammering. Keep remaining
          // entries for next flush.
          aborted = true;
        }
      }
    }
    await _writeQueue(remaining);
  }

  /// Hard wall-clock cap on a single POST (connect + send + response +
  /// drain). Without this, a half-open socket could stall writeBytes /
  /// drain for much longer than the connection/read timeouts suggest.
  static const _postOverallTimeout = Duration(seconds: 10);

  /// Performs the HTTP POST. Returns true on 2xx, false otherwise (timeout,
  /// network error, non-2xx response, or web platform).
  static Future<bool> _post(String path, Map<String, dynamic> body) async {
    if (kIsWeb) return false; // dart:io HttpClient not available on web
    final uri = Uri.parse('$_baseUrl$path');
    HttpClient? client;
    try {
      return await () async {
        client = HttpClient();
        client!.connectionTimeout = const Duration(seconds: 5);
        final request = await client!.postUrl(uri);
        request.headers.set('Content-Type', 'application/json');
        request.headers.set('X-API-Key', _apiKey);
        request.write(jsonEncode(body));
        final response =
            await request.close().timeout(const Duration(seconds: 5));
        await response.drain<void>();
        final ok = response.statusCode >= 200 && response.statusCode < 300;
        if (!ok) {
          QaLogger.app.warning(
            'LeaderboardApi POST $path returned ${response.statusCode}',
          );
        }
        return ok;
      }()
          .timeout(_postOverallTimeout);
    } catch (e, st) {
      QaLogger.app.warning('LeaderboardApi POST $path failed', e, st);
      return false;
    } finally {
      client?.close();
    }
  }

  static Future<void> _enqueue(String path, Map<String, dynamic> body) async {
    final queue = await _readQueue();
    queue.add({'path': path, 'body': body});
    // Cap size: drop oldest entries if we exceed the limit.
    while (queue.length > _maxQueueEntries) {
      queue.removeAt(0);
    }
    await _writeQueue(queue);
    QaLogger.app.warning(
      'LeaderboardApi queued submission for retry (${queue.length} pending)',
    );
  }

  static Future<List<Map<String, dynamic>>> _readQueue() async {
    try {
      final raw = await _settings.getString(pendingQueueKey);
      if (raw.isEmpty) return <Map<String, dynamic>>[];
      final decoded = jsonDecode(raw);
      if (decoded is! List) return <Map<String, dynamic>>[];
      return decoded
          .whereType<Map>()
          .map((e) => e.map((k, v) => MapEntry(k.toString(), v)))
          .toList();
    } catch (e, st) {
      QaLogger.app.warning('LeaderboardApi queue read failed, resetting', e, st);
      await _settings.remove(pendingQueueKey);
      return <Map<String, dynamic>>[];
    }
  }

  static Future<void> _writeQueue(List<Map<String, dynamic>> queue) async {
    if (queue.isEmpty) {
      await _settings.remove(pendingQueueKey);
      return;
    }
    await _settings.setString(pendingQueueKey, jsonEncode(queue));
  }
}

