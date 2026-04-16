import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Captures a rolling buffer of log records and POSTs bug reports to the
/// stellarbroadcast.org receiver.
class BugReportService {
  BugReportService._();

  static const String _endpoint = 'https://stellarbroadcast.org/api/bugreport';
  static const Duration _httpTimeout = Duration(seconds: 10);

  /// Reuses the leaderboard API key — the bug report endpoint is served by
  /// the same Go backend and gates on the same [X-API-Key] header.
  static const String _apiKey = String.fromEnvironment(
    'LEADERBOARD_API_KEY',
    defaultValue: '',
  );

  static const int _bufferSize = 200;
  static const int _maxLogLineLength = 1000;
  static final Queue<String> _logBuffer = Queue<String>();
  static bool _attached = false;

  static String _sanitizeLogLine(String line) {
    var sanitized = line.replaceAllMapped(
      RegExp(r'(api[-_ ]?key=)[^&\s]+', caseSensitive: false),
      (match) => '${match.group(1)}[redacted]',
    );
    sanitized = sanitized.replaceAllMapped(
      RegExp(r'(authorization:\s*bearer\s+)[^\s]+', caseSensitive: false),
      (match) => '${match.group(1)}[redacted]',
    );
    sanitized = sanitized.replaceAll(
      RegExp(r'AIza[0-9A-Za-z_\-]+'),
      '[redacted-google-key]',
    );
    if (sanitized.length > _maxLogLineLength) {
      sanitized = '${sanitized.substring(0, _maxLogLineLength)}...[truncated]';
    }
    return sanitized;
  }

  /// Attach to [Logger.root] so every future QaLogger record is captured.
  /// Safe to call more than once — subsequent calls are no-ops.
  static void attachLogListener() {
    if (_attached) return;
    _attached = true;
    Logger.root.onRecord.listen((record) {
      final line = StringBuffer()
        ..write(record.time.toIso8601String())
        ..write(' [')
        ..write(record.level.name)
        ..write('] ')
        ..write(record.loggerName)
        ..write(': ')
        ..write(record.message);
      if (record.error != null) {
        line.write(' | err=${record.error}');
      }
      _logBuffer.addLast(_sanitizeLogLine(line.toString()));
      while (_logBuffer.length > _bufferSize) {
        _logBuffer.removeFirst();
      }
    });
  }

  static Future<Map<String, dynamic>> _buildPayload(String userMessage) async {
    String appName = '';
    String packageName = '';
    String version = '';
    String buildNumber = '';
    try {
      final info = await PackageInfo.fromPlatform();
      appName = info.appName;
      packageName = info.packageName;
      version = info.version;
      buildNumber = info.buildNumber;
    } catch (_) {
      // PackageInfo unavailable — leave fields blank.
    }

    return {
      'timestamp': DateTime.now().toUtc().toIso8601String(),
      'userMessage': userMessage.trim(),
      'app': {
        'name': appName,
        'package': packageName,
        'version': version,
        'buildNumber': buildNumber,
      },
      'platform': {
        'os': Platform.operatingSystem,
        'osVersion': Platform.operatingSystemVersion,
        'locale': Platform.localeName,
        'cpus': Platform.numberOfProcessors,
      },
      'logs': _logBuffer.toList(growable: false),
    };
  }

  /// POST a bug report to the server. Returns nothing on success; throws
  /// [BugReportException] on any failure with a user-readable message.
  static Future<void> submit(String userMessage) async {
    final payload = await _buildPayload(userMessage);
    http.Response response;
    try {
      response = await http
          .post(
            Uri.parse(_endpoint),
            headers: {
              'Content-Type': 'application/json; charset=utf-8',
              'Accept': 'application/json',
              'X-API-Key': _apiKey,
            },
            body: jsonEncode(payload),
          )
          .timeout(_httpTimeout);
    } on SocketException catch (e) {
      throw BugReportException('No network connection: ${e.message}');
    } on HttpException catch (e) {
      throw BugReportException('HTTP error: ${e.message}');
    } on FormatException catch (e) {
      throw BugReportException('Bad response: ${e.message}');
    } catch (e) {
      throw BugReportException('Could not reach server: $e');
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw BugReportException(
        'Server returned ${response.statusCode}: ${response.reasonPhrase ?? ''}',
      );
    }
  }
}

class BugReportException implements Exception {
  BugReportException(this.message);
  final String message;
  @override
  String toString() => message;
}
