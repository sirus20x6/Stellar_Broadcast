// ignore_for_file: avoid_print
import 'dart:io';
import 'package:yaml/yaml.dart';

// ---------------------------------------------------------------------------
// Valid ship system names
// ---------------------------------------------------------------------------
const _validShipSystems = {
  'hull',
  'nav',
  'cryopods',
  'culture',
  'tech',
  'constructors',
  'shields',
  'landingSystem',
  'atmosphericScanner',
  'gravimetricScanner',
  'mineralScanner',
  'lifeSignsScanner',
  'temperatureScanner',
  'waterScanner',
  'scanners',
};

// ---------------------------------------------------------------------------
// Valid guard expression operators / keywords
// ---------------------------------------------------------------------------
const _validOperators = {'>', '<', '>=', '<=', '==', '!=', 'and', 'or', 'not'};

// ---------------------------------------------------------------------------
// Guard tokenizer / validator
// Returns a list of error strings, empty if the expression looks fine.
// ---------------------------------------------------------------------------
List<String> _validateGuard(String guard, String context) {
  final errors = <String>[];

  // Tokenize: split on whitespace, parentheses are stripped as grouping.
  final tokens = guard
      .replaceAll('(', ' ')
      .replaceAll(')', ' ')
      .split(RegExp(r'\s+'))
      .where((t) => t.isNotEmpty)
      .toList();

  if (tokens.isEmpty) {
    errors.add('$context: guard expression is empty');
    return errors;
  }

  // State machine: alternate between operand and operator positions.
  // operand  = identifier or numeric literal
  // operator = one of _validOperators (binary), or 'not' (unary prefix)
  //
  // Simple rule: an odd-indexed token (0,2,4…) must be an operand or 'not',
  // an even-indexed token that is not 0 must be a binary operator.
  // We allow 'not' to appear anywhere before an operand.

  bool expectingOperand = true;

  for (final token in tokens) {
    if (expectingOperand) {
      if (token == 'not') {
        // unary prefix — still expecting an operand next
        continue;
      }
      // Must be an identifier or number
      final isIdentifier = RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$').hasMatch(token);
      final isNumber = RegExp(r'^-?\d+(\.\d+)?$').hasMatch(token);
      if (!isIdentifier && !isNumber) {
        errors.add(
            '$context: unexpected token in guard (expected operand): "$token"');
      }
      expectingOperand = false;
    } else {
      // Expecting a binary operator
      if (!_validOperators.contains(token) || token == 'not') {
        errors.add(
            '$context: unexpected token in guard (expected operator): "$token"');
      }
      // After 'and'/'or' we expect an operand again; after comparison we also
      // expect the RHS operand next.
      expectingOperand = true;
    }
  }

  if (expectingOperand && tokens.last != 'not') {
    errors.add('$context: guard expression ends unexpectedly (trailing operator?)');
  }

  return errors;
}

void main(List<String> args) {
  final path = args.isNotEmpty ? args[0] : 'assets/events/events.yaml';
  final f = File(path);
  if (!f.existsSync()) {
    stderr.writeln('File not found: $path');
    exit(1);
  }

  final doc = loadYaml(f.readAsStringSync()) as YamlMap;
  final events = doc['events'] as YamlList;
  print('Total events: ${events.length}');
  print('');

  // -------------------------------------------------------------------------
  // Pass 1 — collect all known IDs (needed for chain-target validation)
  // -------------------------------------------------------------------------
  final allIds = <String>{};
  for (final e in events) {
    final id = (e as YamlMap)['id'];
    if (id is String) allIds.add(id);
  }

  // -------------------------------------------------------------------------
  // Pass 2 — full validation
  // -------------------------------------------------------------------------
  final seen = <String>{};
  var dupes = 0;
  final issues = <String>[];

  for (final rawEvent in events) {
    final event = rawEvent as YamlMap;

    // --- Duplicate ID check (original behaviour) ---
    final id = event['id'];
    final idStr = id is String ? id : '<missing>';
    if (id is String) {
      if (!seen.add(idStr)) {
        issues.add('DUPLICATE id: $idStr');
        dupes++;
      }
    }

    final ctx = 'event "$idStr"';

    // --- 1. Required fields ---
    final hasId = id is String && id.isNotEmpty;
    final hasTitle = event['title'] != null;
    final hasChoices = event['choices'] != null;
    final isTraderScreen = event['openTraderScreen'] == true;

    if (!hasId) {
      issues.add('$ctx: missing required field "id"');
    }
    if (!hasTitle) {
      issues.add('$ctx: missing required field "title"');
    }
    if (!hasChoices && !isTraderScreen) {
      issues.add('$ctx: missing required field "choices" (and openTraderScreen is not true)');
    }

    // --- 2. Guard expression syntax (event-level guard) ---
    final eventGuard = event['guard'];
    if (eventGuard is String) {
      issues.addAll(_validateGuard(eventGuard, '$ctx guard'));
    }

    // --- 3–5. Per-choice checks ---
    final choices = event['choices'];
    if (choices is YamlList) {
      for (var ci = 0; ci < choices.length; ci++) {
        final choice = choices[ci] as YamlMap;
        final choiceCtx = '$ctx choice[$ci]';

        // 2b. Guard on choice
        final choiceGuard = choice['guard'];
        if (choiceGuard is String) {
          issues.addAll(_validateGuard(choiceGuard, '$choiceCtx guard'));
        }

        // 3. Chain target validation
        final chain = choice['chain'];
        if (chain is YamlMap) {
          final target = chain['event'];
          if (target is String) {
            if (!allIds.contains(target)) {
              issues.add('$choiceCtx: chain target "$target" not found in event pool');
            }
          } else {
            issues.add('$choiceCtx: chain block is missing "event" field');
          }
        }

        // Nested chain inside outcomes
        final outcomes = choice['outcomes'];
        if (outcomes is YamlList) {
          // 4. Weight total check
          var totalWeight = 0;
          var allWeightsNumeric = true;
          for (final outcome in outcomes) {
            if (outcome is YamlMap) {
              final w = outcome['weight'];
              if (w is int) {
                totalWeight += w;
              } else {
                allWeightsNumeric = false;
              }

              // Chain inside outcome branch
              final outChain = outcome['chain'];
              if (outChain is YamlMap) {
                final target = outChain['event'];
                if (target is String) {
                  if (!allIds.contains(target)) {
                    issues.add(
                        '$choiceCtx outcome: chain target "$target" not found in event pool');
                  }
                } else {
                  issues.add('$choiceCtx outcome: chain block is missing "event" field');
                }
              }
            }
          }

          if (allWeightsNumeric && totalWeight != 100) {
            issues.add(
                '$choiceCtx: outcomes weights sum to $totalWeight (expected 100)');
          } else if (!allWeightsNumeric) {
            issues.add('$choiceCtx: outcomes contain non-integer weight value(s)');
          }
        }

        // 5. Ship system name validation
        final ship = choice['ship'];
        if (ship is YamlMap) {
          for (final key in ship.keys) {
            if (!_validShipSystems.contains(key as String)) {
              issues.add('$choiceCtx ship: unknown system name "$key"');
            }
          }
        }

        // Also check ship inside outcome branches
        if (outcomes is YamlList) {
          for (var oi = 0; oi < outcomes.length; oi++) {
            final outcome = outcomes[oi];
            if (outcome is YamlMap) {
              final outShip = outcome['ship'];
              if (outShip is YamlMap) {
                for (final key in outShip.keys) {
                  if (!_validShipSystems.contains(key as String)) {
                    issues.add(
                        '$choiceCtx outcome[$oi] ship: unknown system name "$key"');
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  // -------------------------------------------------------------------------
  // Report
  // -------------------------------------------------------------------------
  print('Unique IDs: ${seen.length}');
  if (dupes > 0) print('$dupes duplicate(s) found!');
  print('');

  if (issues.isEmpty) {
    print('No issues found.');
  } else {
    for (final issue in issues) {
      print('  ISSUE: $issue');
    }
  }

  print('');
  print('${seen.length} events validated, ${issues.length} issue(s) found.');

  if (issues.isNotEmpty) exit(1);
}
