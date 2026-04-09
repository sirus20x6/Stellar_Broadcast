// ignore_for_file: avoid_print
//
// Generates an SVG event graph with one event per row.
//
// Usage:
//   dart run tool/event_graph.dart [-o output.svg] [input.yaml]
import 'dart:io';
import 'dart:math';

import 'package:yaml/yaml.dart';

const _categoryColors = {
  'early': '#3a7ca5',
  'common': '#2a6496',
  'rare': '#6a1b9a',
  'uneventful': '#455a64',
  'malfunction': '#b71c1c',
  'boon': '#1b5e20',
};

const _eventBoxW = 240;
const _eventBoxH = 60;
const _choiceBoxW = 220;
const _choiceBoxH = 50;
const _choiceGap = 16;
const _arrowGap = 40;
const _leftPad = 20;
const _topPad = 20;

void main(List<String> args) {
  String? outputPath;
  String? inputPath;
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '-o' && i + 1 < args.length) {
      outputPath = args[++i];
    } else {
      inputPath = args[i];
    }
  }
  final path = inputPath ?? 'assets/events/events.yaml';
  final file = File(path);
  if (!file.existsSync()) {
    stderr.writeln('File not found: $path');
    exit(1);
  }

  final doc = loadYaml(file.readAsStringSync()) as YamlMap;
  final events = doc['events'] as YamlList;

  // First pass: compute layout heights per event row.
  final rows = <_EventRow>[];
  for (final raw in events) {
    final event = raw as YamlMap;
    final choices = event['choices'] as YamlList? ?? YamlList();

    // Count total choice nodes (weighted outcomes expand).
    var choiceCount = 0;
    for (final c in choices) {
      final choice = c as YamlMap;
      final outcomes = choice['outcomes'] as YamlList?;
      if (outcomes != null) {
        choiceCount += outcomes.length + 1; // RNG node + outcomes
      } else {
        choiceCount += 1;
      }
    }

    final rowH = max(_eventBoxH + 20, choiceCount * (_choiceBoxH + _choiceGap) + 20);
    rows.add(_EventRow(event: event, height: rowH, choiceCount: choiceCount));
  }

  // Total SVG dimensions.
  final totalHeight = rows.fold<int>(0, (sum, r) => sum + r.height) + _topPad * 2;
  final maxChoices = rows.fold<int>(0, (sum, r) => max(sum, r.choiceCount));
  final totalWidth = _leftPad + _eventBoxW + _arrowGap + (maxChoices > 0 ? _choiceBoxW + 40 : 0) + _leftPad;

  final buf = StringBuffer();
  buf.writeln('<svg xmlns="http://www.w3.org/2000/svg" width="$totalWidth" height="$totalHeight" style="background:#0d1117">');
  buf.writeln('<defs>');
  buf.writeln('  <marker id="arrow" viewBox="0 0 10 10" refX="10" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-auto">');
  buf.writeln('    <path d="M 0 0 L 10 5 L 0 10 z" fill="#666"/>');
  buf.writeln('  </marker>');
  buf.writeln('  <marker id="dasharrow" viewBox="0 0 10 10" refX="10" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-auto">');
  buf.writeln('    <path d="M 0 0 L 10 5 L 0 10 z" fill="#ff8f00"/>');
  buf.writeln('  </marker>');
  buf.writeln('</defs>');

  var y = _topPad;

  for (final row in rows) {
    final event = row.event;
    final title = _stripL10n(event['title'].toString());
    final category = event['category']?.toString() ?? 'common';
    final guard = event['guard']?.toString();
    final color = _categoryColors[category] ?? '#2a6496';
    final choices = event['choices'] as YamlList? ?? YamlList();

    // Row background stripe.
    buf.writeln('  <rect x="0" y="$y" width="$totalWidth" height="${row.height}" fill="#0d1117" stroke="#1a1a2e" stroke-width="1"/>');

    // Event box.
    final ex = _leftPad;
    final ey = y + (row.height - _eventBoxH) ~/ 2;
    buf.writeln('  <rect x="$ex" y="$ey" width="$_eventBoxW" height="$_eventBoxH" rx="6" fill="$color" stroke="#fff" stroke-width="1" opacity="0.9"/>');

    // Event title.
    final titleTrunc = _truncate(title, 28);
    buf.writeln('  <text x="${ex + _eventBoxW ~/ 2}" y="${ey + 22}" text-anchor="middle" fill="#fff" font-family="monospace" font-size="12" font-weight="bold">${_xmlEsc(titleTrunc)}</text>');

    // Category + guard subtitle.
    var subtitle = category;
    if (guard != null) subtitle += ' | guard: ${_truncate(guard, 25)}';
    buf.writeln('  <text x="${ex + _eventBoxW ~/ 2}" y="${ey + 40}" text-anchor="middle" fill="#ccc" font-family="monospace" font-size="10">${_xmlEsc(subtitle)}</text>');

    // Choice nodes.
    final choiceX = _leftPad + _eventBoxW + _arrowGap;
    var choiceY = y + 10;
    final eventCenterY = ey + _eventBoxH ~/ 2;

    for (var i = 0; i < choices.length; i++) {
      final choice = choices[i] as YamlMap;
      final choiceText = _truncate(_stripL10n(choice['text'].toString()), 22);
      final effects = _summarizeEffects(choice);
      final outcomes = choice['outcomes'] as YamlList?;
      final chain = choice['chain'] as YamlMap?;

      if (outcomes != null) {
        // RNG diamond.
        final rngCx = choiceX + 20;
        final rngCy = choiceY + 20;
        buf.writeln('  <polygon points="$rngCx,${rngCy - 14} ${rngCx + 14},$rngCy $rngCx,${rngCy + 14} ${rngCx - 14},$rngCy" fill="#ff8f00" stroke="#fff" stroke-width="1"/>');
        buf.writeln('  <text x="$rngCx" y="${rngCy + 4}" text-anchor="middle" fill="#fff" font-size="10">RNG</text>');

        // Arrow from event to RNG.
        _drawArrow(buf, ex + _eventBoxW, eventCenterY, rngCx - 14, rngCy);
        choiceY += 36;

        // Outcome nodes.
        for (var j = 0; j < outcomes.length; j++) {
          final outcome = outcomes[j] as YamlMap;
          final weight = outcome['weight'] ?? '?';
          final oEffects = _summarizeOutcomeEffects(outcome);
          final netColor = _netColor(outcome);

          final ox = choiceX + 50;
          final oy = choiceY;
          buf.writeln('  <rect x="$ox" y="$oy" width="$_choiceBoxW" height="$_choiceBoxH" rx="4" fill="$netColor" stroke="#555" stroke-width="1"/>');
          buf.writeln('  <text x="${ox + 6}" y="${oy + 18}" fill="#fff" font-family="monospace" font-size="11" font-weight="bold">${_xmlEsc('$weight%')}</text>');
          buf.writeln('  <text x="${ox + 6}" y="${oy + 34}" fill="#ccc" font-family="monospace" font-size="9">${_xmlEsc(_truncate(oEffects, 30))}</text>');

          // Arrow from RNG to outcome.
          _drawArrow(buf, rngCx + 14, rngCy, ox, oy + _choiceBoxH ~/ 2);

          // Chain arrow.
          final outcomeChain = outcome['chain'] as YamlMap?;
          if (outcomeChain != null) {
            final delay = outcomeChain['delay'] ?? '?';
            buf.writeln('  <text x="${ox + _choiceBoxW + 8}" y="${oy + _choiceBoxH ~/ 2 + 4}" fill="#ff8f00" font-family="monospace" font-size="9">⟶ +$delay enc</text>');
          }

          choiceY += _choiceBoxH + _choiceGap;
        }
      } else {
        // Single-outcome choice.
        final netColor = _netColorChoice(choice);

        buf.writeln('  <rect x="$choiceX" y="$choiceY" width="$_choiceBoxW" height="$_choiceBoxH" rx="4" fill="$netColor" stroke="#555" stroke-width="1"/>');
        buf.writeln('  <text x="${choiceX + 6}" y="${choiceY + 18}" fill="#fff" font-family="monospace" font-size="11">${_xmlEsc(choiceText)}</text>');
        buf.writeln('  <text x="${choiceX + 6}" y="${choiceY + 34}" fill="#ccc" font-family="monospace" font-size="9">${_xmlEsc(_truncate(effects, 30))}</text>');

        // Arrow from event to choice.
        final choiceCenterY = choiceY + _choiceBoxH ~/ 2;
        _drawArrow(buf, ex + _eventBoxW, eventCenterY, choiceX, choiceCenterY);

        // Chain annotation.
        if (chain != null) {
          final delay = chain['delay'] ?? '?';
          buf.writeln('  <text x="${choiceX + _choiceBoxW + 8}" y="${choiceCenterY + 4}" fill="#ff8f00" font-family="monospace" font-size="9">⟶ chain +$delay enc</text>');
        }

        choiceY += _choiceBoxH + _choiceGap;
      }
    }

    y += row.height;
  }

  buf.writeln('</svg>');

  final output = buf.toString();
  if (outputPath != null) {
    File(outputPath).writeAsStringSync(output);
    stderr.writeln('Wrote ${rows.length} events to $outputPath');
  } else {
    print(output);
  }
}

void _drawArrow(StringBuffer buf, int x1, int y1, int x2, int y2) {
  buf.writeln('  <line x1="$x1" y1="$y1" x2="$x2" y2="$y2" stroke="#666" stroke-width="1.5" marker-end="url(#arrow)"/>');
}

String _summarizeEffects(YamlMap choice) {
  final parts = <String>[];
  final ship = choice['ship'] as YamlMap?;
  if (ship != null) {
    for (final e in ship.entries) {
      final v = (e.value as num).toDouble();
      final sign = v >= 0 ? '+' : '';
      final pct = (v * 100).round();
      parts.add('${_shortName(e.key.toString())} $sign$pct%');
    }
  }
  for (final key in ['fuel', 'energy', 'probes', 'colonists']) {
    final v = choice[key] as int?;
    if (v != null && v != 0) {
      final sign = v > 0 ? '+' : '';
      parts.add('$key $sign$v');
    }
  }
  if (choice['probeCost'] != null && (choice['probeCost'] as int) > 0) {
    parts.add('probe -${choice["probeCost"]}');
  }
  return parts.isEmpty ? '—' : parts.join(', ');
}

String _summarizeOutcomeEffects(YamlMap outcome) {
  final parts = <String>[];
  final ship = outcome['ship'] as YamlMap?;
  if (ship != null) {
    for (final e in ship.entries) {
      final v = (e.value as num).toDouble();
      final sign = v >= 0 ? '+' : '';
      final pct = (v * 100).round();
      parts.add('${_shortName(e.key.toString())} $sign$pct%');
    }
  }
  for (final key in ['fuel', 'energy', 'probes', 'colonists']) {
    final v = outcome[key] as int?;
    if (v != null && v != 0) {
      final sign = v > 0 ? '+' : '';
      parts.add('$key $sign$v');
    }
  }
  return parts.isEmpty ? '—' : parts.join(', ');
}

double _netValue(YamlMap map) {
  var net = 0.0;
  final ship = map['ship'] as YamlMap?;
  if (ship != null) {
    for (final v in ship.values) {
      net += (v as num).toDouble();
    }
  }
  for (final key in ['fuel', 'energy', 'probes', 'colonists']) {
    final v = map[key] as int?;
    if (v != null) net += v / 100;
  }
  return net;
}

String _netColor(YamlMap map) {
  final net = _netValue(map);
  if (net > 0.02) return '#1b4332';
  if (net < -0.02) return '#5c1a1a';
  return '#2d333b';
}

String _netColorChoice(YamlMap choice) {
  final net = _netValue(choice);
  if (net > 0.02) return '#1b4332';
  if (net < -0.02) return '#5c1a1a';
  return '#2d333b';
}

String _shortName(String name) {
  const abbrev = {
    'hull': 'hull', 'nav': 'nav', 'cryopods': 'cryo', 'culture': 'cult',
    'tech': 'tech', 'constructors': 'cons', 'shields': 'shld',
    'landingSystem': 'land', 'atmosphericScanner': 'atm⌕',
    'gravimetricScanner': 'grav⌕', 'mineralScanner': 'min⌕',
    'lifeSignsScanner': 'life⌕', 'temperatureScanner': 'temp⌕',
    'waterScanner': 'h2o⌕', 'scanners': 'scan⌕',
  };
  return abbrev[name] ?? name;
}

String _stripL10n(String s) {
  if (s.startsWith('@')) return s.substring(1).replaceAll('_', ' ');
  return s;
}

String _xmlEsc(String s) => s
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;');

String _truncate(String s, int max) =>
    s.length > max ? '${s.substring(0, max)}...' : s;

class _EventRow {
  final YamlMap event;
  final int height;
  final int choiceCount;
  _EventRow({required this.event, required this.height, required this.choiceCount});
}
