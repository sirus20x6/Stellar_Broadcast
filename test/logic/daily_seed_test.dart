import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/providers/game_providers.dart';

void main() {
  group('dailySeedForDate', () {
    test('is stable for known UTC dates', () {
      expect(dailySeedForDate('2026-04-16'), 11399034);
      expect(dailySeedForDate('2030-01-01'), 1753829156);
    });

    test('matches displayed seed-code contract', () {
      expect(seedToCode(dailySeedForDate('2026-04-16')), '06SBJU');
      expect(seedToCode(dailySeedForDate('2030-01-01')), 'T06N8K');
    });
  });
}
