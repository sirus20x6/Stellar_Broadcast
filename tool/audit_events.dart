// ignore_for_file: avoid_print
//
// Audits events.yaml for narrative-effect mismatches, balance issues,
// dead choices, outliers, and structural problems.
//
// Usage:
//   dart run tool/audit_events.dart [events.yaml] [app_en.arb]
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:yaml/yaml.dart';

// ── Sentiment word lists ──────────────────────────────────────────────

const _positiveWords = {
  'safe', 'safely', 'success', 'successfully', 'grateful', 'miracles',
  'miracle', 'thrive', 'thriving', 'boost', 'repair', 'repaired', 'restored',
  'upgrade', 'upgraded', 'improves', 'improved', 'improvement', 'benefit',
  'beneficial', 'gift', 'treasure', 'fortune', 'fortunate', 'lucky',
  'pristine', 'perfect', 'excellent', 'brilliant', 'heroic', 'hero',
  'salvation', 'saved', 'rescued', 'unharmed', 'unscathed', 'intact',
  'celebrated', 'celebration', 'joy', 'hopeful', 'hope', 'optimistic',
  'strengthen', 'strengthened', 'allies', 'alliance', 'friend', 'friendly',
  'cooperative', 'cooperate', 'generous', 'generosity', 'reward', 'rewarded',
  'discovery', 'discovered', 'breakthrough', 'bonanza', 'windfall',
  'calm', 'peaceful', 'peace', 'harmony', 'harmonious', 'stable',
};

const _negativeWords = {
  'damage', 'damaged', 'destroy', 'destroyed', 'destruction', 'catastrophic',
  'catastrophe', 'disaster', 'disastrous', 'fatal', 'fatally', 'dead',
  'death', 'die', 'dies', 'dying', 'killed', 'kill', 'lost', 'loss',
  'casualty', 'casualties', 'sacrifice', 'sacrificed', 'shattered',
  'broken', 'breach', 'breached', 'rupture', 'ruptured', 'fail', 'fails',
  'failed', 'failure', 'malfunction', 'malfunctions', 'overload',
  'overloaded', 'collapse', 'collapsed', 'panic', 'panicked', 'terror',
  'horrified', 'horror', 'trauma', 'traumatic', 'crisis', 'critical',
  'devastating', 'devasted', 'ruin', 'ruined', 'shudders', 'weakens',
  'weakened', 'strain', 'strained', 'scarred', 'scars', 'wounds',
  'wounded', 'infection', 'infected', 'pathogen', 'contamination',
  'contaminated', 'hostile', 'hostility', 'attack', 'attacked', 'violent',
  'violence', 'threat', 'threatens', 'burns', 'burned', 'scorched',
  'irradiated', 'radiation', 'explosion', 'explodes', 'detonation',
  'fracture', 'fractured', 'crippled', 'cripple', 'sabotage', 'sabotaged',
  'mutiny', 'rebellion', 'desert', 'deserted', 'abandon', 'abandoned',
  'flee', 'fled', 'retreat', 'retreats', 'barely', 'desperate',
};

// ── Effect norms (from scanning the full event pool) ──────────────────

// We compute these dynamically, but these are sanity thresholds.
const _extremeEffectThreshold = 0.25; // flag single deltas > ±25%

void main(List<String> args) {
  final yamlPath = args.isNotEmpty ? args[0] : 'assets/events/events.yaml';
  final arbPath = args.length > 1
      ? args[1]
      : 'lib/l10n/app_en.arb';

  final yamlFile = File(yamlPath);
  final arbFile = File(arbPath);
  if (!yamlFile.existsSync()) {
    stderr.writeln('YAML not found: $yamlPath');
    exit(1);
  }

  // Load l10n strings for @-key resolution.
  final l10n = <String, String>{};
  if (arbFile.existsSync()) {
    final arbJson = jsonDecode(arbFile.readAsStringSync()) as Map<String, dynamic>;
    for (final e in arbJson.entries) {
      if (!e.key.startsWith('@') && e.value is String) {
        l10n[e.key] = e.value as String;
      }
    }
    print('Loaded ${l10n.length} l10n strings from $arbPath\n');
  } else {
    print('WARNING: ARB file not found at $arbPath — @-key outcomes cannot be analyzed\n');
  }

  final doc = loadYaml(yamlFile.readAsStringSync()) as YamlMap;
  final events = doc['events'] as YamlList;

  // Collect all effect deltas for outlier detection.
  final allDeltas = <double>[];
  final allColonistDeltas = <int>[];

  for (final raw in events) {
    final event = raw as YamlMap;
    final choices = event['choices'] as YamlList? ?? YamlList();
    for (final c in choices) {
      final choice = c as YamlMap;
      _collectDeltas(choice, allDeltas, allColonistDeltas);
      final outcomes = choice['outcomes'] as YamlList?;
      if (outcomes != null) {
        for (final o in outcomes) {
          _collectDeltas(o as YamlMap, allDeltas, allColonistDeltas);
        }
      }
    }
  }

  // Compute stats for outlier detection.
  final meanDelta = allDeltas.isEmpty ? 0.0 : allDeltas.reduce((a, b) => a + b) / allDeltas.length;
  final stdDelta = allDeltas.isEmpty
      ? 0.1
      : sqrt(allDeltas.map((d) => (d - meanDelta) * (d - meanDelta)).reduce((a, b) => a + b) / allDeltas.length);

  print('Effect stats: mean=${meanDelta.toStringAsFixed(3)}, '
      'std=${stdDelta.toStringAsFixed(3)}, '
      'range=[${allDeltas.reduce(min).toStringAsFixed(2)}, ${allDeltas.reduce(max).toStringAsFixed(2)}]\n');

  // ── Run audits ──────────────────────────────────────────────────────

  final issues = <_Issue>[];

  for (final raw in events) {
    final event = raw as YamlMap;
    final eventId = event['id'] as String;
    final choices = event['choices'] as YamlList? ?? YamlList();

    // 1. Structural checks.
    if (choices.isEmpty && event['openTraderScreen'] != true) {
      issues.add(_Issue(eventId, 'STRUCTURAL', 'Event has no choices and is not a trader event'));
    }

    // 2. Per-choice audits.
    final choiceScores = <_ChoiceScore>[];

    for (var i = 0; i < choices.length; i++) {
      final choice = choices[i] as YamlMap;
      final choiceText = _resolve(choice['text'], l10n);
      final outcomes = choice['outcomes'] as YamlList?;

      if (outcomes != null) {
        // Weighted outcomes audit.
        var totalWeight = 0;
        for (var j = 0; j < outcomes.length; j++) {
          final outcome = outcomes[j] as YamlMap;
          final weight = outcome['weight'] as int? ?? 0;
          totalWeight += weight;
          final outcomeText = _resolve(outcome['outcome'], l10n);

          // Sentiment check on each outcome.
          _checkSentiment(issues, eventId, 'choice $i outcome $j ($weight%)',
              outcomeText, outcome);

          // Outlier check.
          _checkOutliers(issues, eventId, 'choice $i outcome $j',
              outcome, stdDelta);
        }

        if (totalWeight != 100) {
          issues.add(_Issue(eventId, 'WEIGHTS',
              'Choice $i weights sum to $totalWeight (expected 100)'));
        }

        // Expected value for dominance check.
        final ev = _expectedValue(outcomes);
        choiceScores.add(_ChoiceScore(i, ev, choiceText));
      } else {
        // Single outcome.
        final outcomeText = _resolve(choice['outcome'], l10n);

        if (outcomeText.isEmpty || outcomeText == choice['outcome'].toString()) {
          // @-key that couldn't be resolved — skip text analysis.
        } else {
          _checkSentiment(issues, eventId, 'choice $i', outcomeText, choice);
        }

        _checkOutliers(issues, eventId, 'choice $i', choice, stdDelta);

        final net = _netEffect(choice);
        choiceScores.add(_ChoiceScore(i, net, choiceText));
      }
    }

    // 3. Dead/dominated choice detection.
    if (choiceScores.length >= 2) {
      for (var i = 0; i < choiceScores.length; i++) {
        for (var j = 0; j < choiceScores.length; j++) {
          if (i == j) continue;
          // Check if choice j strictly dominates choice i.
          // Simple heuristic: if j's EV is much better and i has no
          // unique upside (like probeCost gating or planet effects).
          final ci = choices[choiceScores[i].index] as YamlMap;
          final cj = choices[choiceScores[j].index] as YamlMap;
          final diff = choiceScores[j].ev - choiceScores[i].ev;
          if (diff > 0.15 &&
              _hasPlanetEffects(ci) == false &&
              _hasPlanetEffects(cj) == true) {
            // j is better AND has planet effects — i might still be
            // valid if it's cheaper (no probe cost).
            continue;
          }
          if (diff > 0.20) {
            final iCost = ci['probeCost'] as int? ?? 0;
            final jCost = cj['probeCost'] as int? ?? 0;
            if (iCost == 0 && jCost == 0) {
              issues.add(_Issue(eventId, 'DOMINATED',
                  'Choice ${choiceScores[i].index} ("${_truncate(choiceScores[i].label, 30)}") '
                  'is dominated by choice ${choiceScores[j].index} '
                  '(EV diff: ${diff.toStringAsFixed(2)})'));
            }
          }
        }
      }
    }

    // 4. All-negative event detection.
    if (choiceScores.isNotEmpty && choiceScores.every((c) => c.ev < -0.05)) {
      issues.add(_Issue(eventId, 'ALL-NEGATIVE',
          'Every choice has negative expected value — no hope'));
    }

    // 5. Risk/reward asymmetry for weighted outcomes.
    for (var i = 0; i < choices.length; i++) {
      final choice = choices[i] as YamlMap;
      final outcomes = choice['outcomes'] as YamlList?;
      if (outcomes == null || outcomes.length < 2) continue;

      // Find worst and best outcomes.
      double worstNet = double.infinity;
      double bestNet = double.negativeInfinity;
      int worstWeight = 0;
      int bestWeight = 0;
      for (final o in outcomes) {
        final om = o as YamlMap;
        final net = _netEffect(om);
        final w = om['weight'] as int? ?? 0;
        if (net < worstNet) {
          worstNet = net;
          worstWeight = w;
        }
        if (net > bestNet) {
          bestNet = net;
          bestWeight = w;
        }
      }

      // Flag if bad outcome is more likely than good but less impactful.
      if (worstWeight > bestWeight && worstNet.abs() < bestNet.abs() * 0.5) {
        issues.add(_Issue(eventId, 'RISK-IMBALANCE',
            'Choice $i: bad outcome is more likely ($worstWeight%) '
            'but much weaker than good outcome — low tension'));
      }
    }
  }

  // ── Report ──────────────────────────────────────────────────────────

  if (issues.isEmpty) {
    print('\nNo issues found!');
    return;
  }

  // Group by type.
  final byType = <String, List<_Issue>>{};
  for (final issue in issues) {
    byType.putIfAbsent(issue.type, () => []).add(issue);
  }

  print('═══════════════════════════════════════════════════════════════');
  print('  AUDIT RESULTS: ${issues.length} issues across ${byType.length} categories');
  print('═══════════════════════════════════════════════════════════════\n');

  for (final type in ['SENTIMENT', 'OUTLIER', 'DOMINATED', 'ALL-NEGATIVE',
      'RISK-IMBALANCE', 'WEIGHTS', 'STRUCTURAL']) {
    final typeIssues = byType[type];
    if (typeIssues == null) continue;

    print('── $type (${typeIssues.length}) ${"─" * (50 - type.length)}');
    for (final issue in typeIssues) {
      print('  ${issue.eventId}: ${issue.message}');
    }
    print('');
  }

  print('Total: ${issues.length} issues');
}

// ── Helpers ────────────────────────────────────────────────────────────

String _resolve(dynamic value, Map<String, String> l10n) {
  if (value == null) return '';
  final s = value.toString();
  if (s.startsWith('@')) {
    final key = s.substring(1);
    return l10n[key] ?? s;
  }
  return s;
}

void _collectDeltas(YamlMap map, List<double> deltas, List<int> colonistDeltas) {
  final ship = map['ship'] as YamlMap?;
  if (ship != null) {
    for (final v in ship.values) {
      deltas.add((v as num).toDouble());
    }
  }
  final col = map['colonists'] as int?;
  if (col != null && col != 0) colonistDeltas.add(col);
}

double _netEffect(YamlMap map) {
  var net = 0.0;
  final ship = map['ship'] as YamlMap?;
  if (ship != null) {
    for (final v in ship.values) {
      net += (v as num).toDouble();
    }
  }
  for (final key in ['fuel', 'energy', 'probes', 'colonists']) {
    final v = map[key] as int?;
    if (v != null) net += v / 100; // normalize to ship-effect scale
  }
  // Count planet and nextPlanet effects as partial value (deferred but real).
  for (final key in ['planet', 'nextPlanet']) {
    final pm = map[key] as YamlMap?;
    if (pm != null) {
      for (final v in pm.values) {
        net += (v as num).toDouble() * 0.5; // discount deferred effects
      }
    }
  }
  return net;
}

double _expectedValue(YamlList outcomes) {
  var totalWeight = 0;
  var weightedSum = 0.0;
  for (final o in outcomes) {
    final om = o as YamlMap;
    final w = om['weight'] as int? ?? 0;
    totalWeight += w;
    weightedSum += w * _netEffect(om);
  }
  return totalWeight > 0 ? weightedSum / totalWeight : 0.0;
}

bool _hasPlanetEffects(YamlMap choice) {
  return choice['planet'] != null || choice['nextPlanet'] != null;
}

int _sentimentScore(String text) {
  if (text.isEmpty) return 0;
  final words = text.toLowerCase().split(RegExp(r'[\s.,;:!?\-—"]+'));
  var score = 0;
  for (final word in words) {
    if (_positiveWords.contains(word)) score++;
    if (_negativeWords.contains(word)) score--;
  }
  return score;
}

void _checkSentiment(
  List<_Issue> issues,
  String eventId,
  String choiceLabel,
  String outcomeText,
  YamlMap effectsMap,
) {
  if (outcomeText.isEmpty || outcomeText.startsWith('@')) return;

  final textSentiment = _sentimentScore(outcomeText);
  final net = _netEffect(effectsMap);

  // Check for mixed-sentiment text (contains both positive and negative words).
  // Mixed narratives ("some are lost, but the rest thrive") are intentional.
  final posCount = outcomeText.toLowerCase().split(RegExp(r'[\s.,;:!?\-—"]+'))
      .where((w) => _positiveWords.contains(w)).length;
  final negCount = outcomeText.toLowerCase().split(RegExp(r'[\s.,;:!?\-—"]+'))
      .where((w) => _negativeWords.contains(w)).length;
  final isMixed = posCount > 0 && negCount > 0;

  // Strong mismatch: text says positive but effects are clearly negative.
  if (textSentiment >= 2 && net < -0.10 && !isMixed) {
    issues.add(_Issue(eventId, 'SENTIMENT',
        '$choiceLabel: text sounds positive (score=$textSentiment) '
        'but effects are negative (net=${net.toStringAsFixed(2)})\n'
        '      text: "${_truncate(outcomeText, 80)}"'));
  }

  // Strong mismatch: text says negative but effects are clearly positive.
  // Skip mixed narratives — "X are lost but Y thrive" is a valid net-positive story.
  if (textSentiment <= -2 && net > 0.10 && !isMixed) {
    issues.add(_Issue(eventId, 'SENTIMENT',
        '$choiceLabel: text sounds negative (score=$textSentiment) '
        'but effects are positive (net=${net.toStringAsFixed(2)})\n'
        '      text: "${_truncate(outcomeText, 80)}"'));
  }

  // Colonist death in text but no colonist effect.
  // Only flag when the text clearly refers to PEOPLE dying, not objects/concepts.
  final lowerText = outcomeText.toLowerCase();
  final peopleDeathPatterns = [
    'colonists are lost', 'colonists lost', 'crew lost', 'crew are lost',
    'people die', 'people are killed', 'killed in', 'casualties among',
    'lives are lost', 'lives lost', 'perish in', 'colonists die',
    'colonists perish', 'crew die', 'crew perish', 'crew members die',
    'are killed', 'were killed',
  ];
  // Exclude false positives: "drones lost", "virus dies", "dead reckoning",
  // "lost visions", "going silent", "the lost" (abstract mourning).
  final hasColonistDeath = peopleDeathPatterns.any((p) => lowerText.contains(p));
  // Also flag "X are/were lost" where X is a number.
  final numberedLoss = RegExp(r'\b\d+\s+(are|were)\s+lost\b').hasMatch(lowerText);

  final colonists = effectsMap['colonists'] as int? ?? 0;
  if ((hasColonistDeath || numberedLoss) && colonists >= 0) {
    issues.add(_Issue(eventId, 'SENTIMENT',
        '$choiceLabel: text describes colonist deaths but colonists delta is $colonists\n'
        '      text: "${_truncate(outcomeText, 80)}"'));
  }
}

void _checkOutliers(
  List<_Issue> issues,
  String eventId,
  String label,
  YamlMap effectsMap,
  double stdDelta,
) {
  final ship = effectsMap['ship'] as YamlMap?;
  if (ship == null) return;

  for (final e in ship.entries) {
    final v = (e.value as num).toDouble().abs();
    if (v > _extremeEffectThreshold) {
      issues.add(_Issue(eventId, 'OUTLIER',
          '$label: ${e.key} delta ${e.value} exceeds ±${(_extremeEffectThreshold * 100).round()}% threshold'));
    }
  }
}

String _truncate(String s, int maxLen) =>
    s.length > maxLen ? '${s.substring(0, maxLen)}...' : s;

class _Issue {
  final String eventId;
  final String type;
  final String message;
  _Issue(this.eventId, this.type, this.message);
}

class _ChoiceScore {
  final int index;
  final double ev;
  final String label;
  _ChoiceScore(this.index, this.ev, this.label);
}
