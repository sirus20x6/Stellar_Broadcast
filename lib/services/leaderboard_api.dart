import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:stellar_broadcast/utils/constants.dart';

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

  /// Guard so the "no pins configured" warning only logs once per process.
  static bool _warnedNoPins = false;

  /// Runs a certificate-pinning handshake probe against [url]. Returns true
  /// when the server's SPKI matches [CertPins.leaderboard], or when the pin
  /// list is empty (fall back to standard HTTPS trust). Returns false when
  /// pins are configured but the server fingerprint does not match — this
  /// is the fail-closed path that blocks MITM.
  static Future<bool> _verifyPin(Uri url) async {
    if (CertPins.leaderboard.isEmpty) {
      if (!_warnedNoPins) {
        _warnedNoPins = true;
        QaLogger.app.warning(
          'LeaderboardApi: no SPKI pins configured; '
          'falling back to standard HTTPS trust',
        );
      }
      return true;
    }
    try {
      final result = await HttpCertificatePinning.check(
        serverURL: url.toString(),
        sha: SHA.SHA256,
        allowedSHAFingerprints: CertPins.leaderboard,
        timeout: 10,
      );
      if (result.contains('CONNECTION_SECURE')) return true;
      QaLogger.app.warning('LeaderboardApi cert pinning failed: $result');
      return false;
    } catch (e, st) {
      QaLogger.app.warning('LeaderboardApi cert pinning error', e, st);
      return false;
    }
  }

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
      if (seed != null) 'seed': seed,
      if (version != null) 'version': version,
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

  /// Attempts pending submissions from the persistent queue. Successful
  /// entries are removed; on the first failure we stop (to avoid thrashing
  /// a flaky network) and leave the remaining entries for next time.
  static Future<void> flushPendingSubmissions() async {
    if (kIsWeb) return;
    final queue = await _readQueue();
    if (queue.isEmpty) return;

    final remaining = <Map<String, dynamic>>[];
    var stopped = false;
    for (var i = 0; i < queue.length; i++) {
      final entry = queue[i];
      if (stopped) {
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
      } else {
        // Stop on first failure. Keep this and all subsequent entries.
        stopped = true;
        remaining.add(entry);
      }
    }
    await _writeQueue(remaining);
  }

  /// Performs the HTTP POST. Returns true on 2xx, false otherwise (timeout,
  /// network error, non-2xx response, or web platform).
  static Future<bool> _post(String path, Map<String, dynamic> body) async {
    if (kIsWeb) return false; // dart:io HttpClient not available on web
    final uri = Uri.parse('$_baseUrl$path');
    // Cert-pin handshake probe runs before the real request. Fails closed
    // when pins are configured and the server fingerprint doesn't match;
    // no-op when the pin list is empty.
    if (!await _verifyPin(uri)) return false;
    HttpClient? client;
    try {
      client = HttpClient();
      client.connectionTimeout = const Duration(seconds: 5);
      final request = await client.postUrl(uri);
      request.headers.set('Content-Type', 'application/json');
      request.headers.set('X-API-Key', _apiKey);
      request.write(jsonEncode(body));
      final response = await request.close().timeout(const Duration(seconds: 5));
      await response.drain<void>();
      final ok = response.statusCode >= 200 && response.statusCode < 300;
      if (!ok) {
        QaLogger.app.warning(
          'LeaderboardApi POST $path returned ${response.statusCode}',
        );
      }
      return ok;
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

