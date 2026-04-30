import 'package:flutter_test/flutter_test.dart';
import 'package:stellar_broadcast/models/ship.dart';

void main() {
  group('ShipSystems._applyDelta clamping', () {
    test('default ceiling is 1.0 — boost on pristine stays at 1.0', () {
      const s = ShipSystems();
      final after = s.boost('hull', 0.10);
      expect(after.hull, 1.0);
    });

    test('legacy override raises hull ceiling to 1.10 — boost reaches it', () {
      final s = const ShipSystems().copyWith(
        hull: 1.10,
        maxOverrides: const {'hull': 1.10},
      );
      final after = s.boost('hull', 0.10);
      expect(after.hull, closeTo(1.10, 1e-9));
    });

    test('above-ceiling current value is preserved on further boost', () {
      // Some intermediate event somehow pushed hull to 1.20 without the
      // legacy override; subsequent boosts must not clip it back.
      final s = const ShipSystems().copyWith(hull: 1.20);
      final after = s.boost('hull', 0.05);
      expect(after.hull, closeTo(1.20, 1e-9));
    });

    test('damage below 1.0 then repair restores up to legacy ceiling, not 1.0', () {
      final pristine = const ShipSystems().copyWith(
        hull: 1.10,
        maxOverrides: const {'hull': 1.10},
      );
      final damaged = pristine.degrade('hull', 0.60); // 0.50
      expect(damaged.hull, closeTo(0.50, 1e-9));
      final repaired = damaged.boost('hull', 0.80); // tries 1.30
      expect(repaired.hull, closeTo(1.10, 1e-9),
          reason: 'should restore the legacy ceiling, not cap at 1.0');
    });

    test('culture default ceiling is 1.5 even without override', () {
      const s = ShipSystems(culture: 1.4);
      final after = s.boost('culture', 0.20);
      expect(after.culture, closeTo(1.5, 1e-9));
    });

    test('damage clamps at 0', () {
      const s = ShipSystems(hull: 0.10);
      final after = s.degrade('hull', 0.50);
      expect(after.hull, 0.0);
    });
  });

  group('ShipSystems.fromJson', () {
    test('hull=5.0 without maxOverrides clamps to 1.0', () {
      final s = ShipSystems.fromJson({'hull': 5.0});
      expect(s.hull, 1.0);
    });

    test('hull=1.10 with matching maxOverrides loads as 1.10', () {
      final s = ShipSystems.fromJson({
        'hull': 1.10,
        'maxOverrides': {'hull': 1.10},
      });
      expect(s.hull, closeTo(1.10, 1e-9));
      expect(s.maxFor('hull'), closeTo(1.10, 1e-9));
    });

    test('culture=1.6 without override clamps to 1.5', () {
      final s = ShipSystems.fromJson({'culture': 1.6});
      expect(s.culture, 1.5);
    });

    test('round-trip preserves maxOverrides', () {
      final original = const ShipSystems(hull: 1.10).copyWith(
        maxOverrides: const {'hull': 1.10, 'cryopods': 1.10},
      );
      final restored = ShipSystems.fromJson(original.toJson());
      expect(restored.hull, closeTo(1.10, 1e-9));
      expect(restored.maxFor('hull'), closeTo(1.10, 1e-9));
      expect(restored.maxFor('cryopods'), closeTo(1.10, 1e-9));
      expect(restored.maxFor('shields'), 1.0,
          reason: 'systems with no override fall back to default 1.0');
    });

    test('toJson omits empty maxOverrides', () {
      const s = ShipSystems();
      expect(s.toJson().containsKey('maxOverrides'), false);
    });

    test('negative values clamp to 0', () {
      final s = ShipSystems.fromJson({'nav': -1.0});
      expect(s.nav, 0.0);
    });

    test('maxOverrides with unknown system name is dropped', () {
      final s = ShipSystems.fromJson({
        'hull': 1.10,
        'maxOverrides': {'hull': 1.10, 'wormhole_drive': 1.50},
      });
      expect(s.maxFor('hull'), closeTo(1.10, 1e-9));
      expect(
        s.maxOverrides.containsKey('wormhole_drive'),
        false,
        reason: 'unknown system names must be filtered out',
      );
    });

    test('maxOverrides ceiling below 1.0 is dropped', () {
      // A negative ceiling would make the per-system clamp throw, and
      // ceilings below 1.0 don't make sense (1.0 is the natural full-
      // health value). Drop silently rather than failing the load.
      final s = ShipSystems.fromJson({
        'hull': 1.0,
        'maxOverrides': {'hull': -0.5},
      });
      expect(s.maxFor('hull'), 1.0);
    });

    test('maxOverrides ceiling above hard cap is dropped', () {
      // 1.99 is a tampered-save signal — no current legitimate upgrade
      // pushes any system above 1.15. Override must be rejected so a
      // tampered hull can't load as 1.99 nor be repaired to 1.99.
      final s = ShipSystems.fromJson({
        'hull': 1.50,
        'maxOverrides': {'hull': 1.99},
      });
      expect(s.maxFor('hull'), 1.0,
          reason: '1.99 above 1.25 absolute cap → override rejected');
      expect(s.hull, 1.0,
          reason: 'with rejected override, hull=1.50 clamps to default 1.0');
    });

    test('maxOverrides with NaN/Infinity is dropped', () {
      final s = ShipSystems.fromJson({
        'hull': 1.0,
        'maxOverrides': {'hull': double.nan, 'nav': double.infinity},
      });
      expect(s.maxFor('hull'), 1.0);
      expect(s.maxFor('nav'), 1.0);
    });
  });

  group('ShipSystems.maxFor', () {
    test('defaults: 1.0 for most, 1.5 for culture/tech', () {
      const s = ShipSystems();
      expect(s.maxFor('hull'), 1.0);
      expect(s.maxFor('shields'), 1.0);
      expect(s.maxFor('culture'), 1.5);
      expect(s.maxFor('tech'), 1.5);
    });

    test('override beats default', () {
      const s = ShipSystems(maxOverrides: {'hull': 1.20, 'culture': 1.30});
      expect(s.maxFor('hull'), 1.20);
      expect(s.maxFor('culture'), 1.30,
          reason: 'override is authoritative even when below the 1.5 default');
    });
  });
}
