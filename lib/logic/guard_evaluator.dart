import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/models/voyage_state.dart';

/// Evaluates guard expressions against [VoyageState].
///
/// Grammar (v1, no parentheses):
///   expr     = orExpr
///   orExpr   = andExpr ("or" andExpr)*
///   andExpr  = cmpExpr ("and" cmpExpr)*
///   cmpExpr  = "not" cmpExpr | value op value
///   op       = ">" | "<" | ">=" | "<=" | "==" | "!="
///   value    = number | stateRef
///   stateRef = bare system name (hull) or dotted (ship.hull), or
///              resource name (fuel, energy, probes, colonists, encounter, planetsScanned)
class GuardEvaluator {
  GuardEvaluator._();

  /// Returns true if [guardExpr] passes for the given [state].
  /// Returns true if [guardExpr] is null or empty.
  static bool evaluate(String? guardExpr, VoyageState state) {
    if (guardExpr == null || guardExpr.trim().isEmpty) return true;
    final tokens = _tokenize(guardExpr);
    final parser = _Parser(tokens, state);
    return parser.parseOr();
  }

  static List<String> _tokenize(String expr) {
    final result = <String>[];
    final buf = StringBuffer();

    for (var i = 0; i < expr.length; i++) {
      final c = expr[i];

      if (c == ' ' || c == '\t') {
        if (buf.isNotEmpty) {
          result.add(buf.toString());
          buf.clear();
        }
        continue;
      }

      // Two-character operators.
      if (i + 1 < expr.length) {
        final two = expr.substring(i, i + 2);
        if (two == '>=' || two == '<=' || two == '==' || two == '!=') {
          if (buf.isNotEmpty) {
            result.add(buf.toString());
            buf.clear();
          }
          result.add(two);
          i++;
          continue;
        }
      }

      // Single-character operators.
      if (c == '>' || c == '<') {
        if (buf.isNotEmpty) {
          result.add(buf.toString());
          buf.clear();
        }
        result.add(c);
        continue;
      }

      buf.write(c);
    }

    if (buf.isNotEmpty) result.add(buf.toString());
    return result;
  }

  /// Resolves a named reference to a double from [VoyageState].
  static double resolveValue(String name, VoyageState state) {
    // Strip optional "ship." prefix.
    final resolved = name.startsWith('ship.') ? name.substring(5) : name;

    // Ship systems.
    if (ShipSystems.systemNames.contains(resolved)) {
      return state.ship.getSystem(resolved);
    }

    // Resources and counters.
    switch (resolved) {
      case 'fuel':
        return state.fuel.toDouble();
      case 'energy':
        return state.energy.toDouble();
      case 'probes':
        return state.probes.toDouble();
      case 'colonists':
        return state.colonists.toDouble();
      case 'encounter':
        return state.encounterCount.toDouble();
      case 'planetsScanned':
        return state.planetsScanned.toDouble();
      default:
        throw FormatException('Unknown guard variable: "$name"');
    }
  }
}

class _Parser {
  final List<String> _tokens;
  final VoyageState _state;
  int _pos = 0;

  _Parser(this._tokens, this._state);

  String? _peek() => _pos < _tokens.length ? _tokens[_pos] : null;

  String _advance() {
    if (_pos >= _tokens.length) {
      throw const FormatException('Unexpected end of guard expression');
    }
    return _tokens[_pos++];
  }

  bool parseOr() {
    var result = parseAnd();
    while (_peek() == 'or') {
      _advance();
      result = parseAnd() || result; // always evaluate both sides
    }
    return result;
  }

  bool parseAnd() {
    var result = parseCmp();
    while (_peek() == 'and') {
      _advance();
      result = parseCmp() && result; // always evaluate both sides
    }
    return result;
  }

  bool parseCmp() {
    if (_peek() == 'not') {
      _advance();
      return !parseCmp();
    }

    final left = _resolveToken(_advance());
    final op = _advance();
    final right = _resolveToken(_advance());

    switch (op) {
      case '>':
        return left > right;
      case '<':
        return left < right;
      case '>=':
        return left >= right;
      case '<=':
        return left <= right;
      case '==':
        return left == right;
      case '!=':
        return left != right;
      default:
        throw FormatException('Unknown operator: "$op"');
    }
  }

  double _resolveToken(String token) {
    final number = double.tryParse(token);
    if (number != null) return number;
    return GuardEvaluator.resolveValue(token, _state);
  }
}
