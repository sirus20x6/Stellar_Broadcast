import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

/// Loads ARB (Application Resource Bundle) JSON files at runtime for
/// resolving `@key` references in YAML event definitions.
///
/// This is a prototype shortcut — production would use the generated
/// [AppLocalizations] getters directly via a codegen map.
class L10nResolver {
  L10nResolver._(this._strings);

  final Map<String, String> _strings;

  /// Loads the ARB file for [locale] (e.g. "en") and builds a resolver.
  static Future<L10nResolver> load(String locale) async {
    final json =
        await rootBundle.loadString('packages/stellar_broadcast/lib/l10n/app_$locale.arb');
    final map = jsonDecode(json) as Map<String, dynamic>;
    final strings = <String, String>{};
    for (final entry in map.entries) {
      // Skip metadata keys (@@locale, @descriptions, etc.)
      if (!entry.key.startsWith('@') && entry.value is String) {
        strings[entry.key] = entry.value as String;
      }
    }
    return L10nResolver._(strings);
  }

  /// Resolves a key to its localized string. Returns [key] if not found.
  String resolve(String key) => _strings[key] ?? key;
}
