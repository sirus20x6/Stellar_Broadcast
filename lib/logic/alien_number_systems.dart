import 'package:stellar_broadcast/models/puzzle.dart';

/// Converts integers to alien notation strings.
abstract class AlienNumberSystem {
  String convert(int value);

  factory AlienNumberSystem.forSpecies(AlienSpecies species) {
    switch (species) {
      case AlienSpecies.synthetic:
        return const BinarySystem();
      case AlienSpecies.geometric:
        return const GeometricSystem();
      case AlienSpecies.crystalline:
        return const CrystallineSystem();
    }
  }
}

/// Artificial life communicates in binary.
class BinarySystem implements AlienNumberSystem {
  const BinarySystem();

  @override
  String convert(int value) => value.toRadixString(2);
}

/// Geometric beings count with shapes: sides = value.
class GeometricSystem implements AlienNumberSystem {
  const GeometricSystem();

  static const _shapes = <int, String>{
    0: '\u25CB',  // ○  void/circle
    1: '\u2022',  // •  point
    2: '\u2014',  // —  line
    3: '\u25B3',  // △  triangle
    4: '\u25A1',  // □  square
    5: '\u2B1F',  // ⬟  pentagon
    6: '\u2B21',  // ⬡  hexagon
    7: '\u2726',  // ✦  heptagon-star
    8: '\u2733',  // ✳  octagram
    9: '\u2739',  // ✹  nonagram
  };

  @override
  String convert(int value) {
    // Multi-digit: convert each digit to its shape.
    if (value < 0) return '-${convert(-value)}';
    if (value < 10) return _shapes[value] ?? '$value';
    final digits = value.toString().split('');
    return digits.map((d) => _shapes[int.parse(d)] ?? d).join('');
  }
}

/// Crystalline entities express numbers as atomic structure — nucleus + electron
/// orbitals rendered visually. The [convert] method returns the atomic number
/// prefixed with "Z:" so the UI can parse it and draw the atom diagram.
class CrystallineSystem implements AlienNumberSystem {
  const CrystallineSystem();

  @override
  String convert(int value) {
    if (value <= 0) return 'Z:0';
    return 'Z:$value';
  }

  /// Electron shell capacities: 2, 8, 8, 18, ...
  static List<int> electronShells(int z) {
    if (z <= 0) return [];
    final shells = <int>[];
    final caps = [2, 8, 8, 18, 18, 32];
    var remaining = z;
    for (final cap in caps) {
      if (remaining <= 0) break;
      final inShell = remaining < cap ? remaining : cap;
      shells.add(inShell);
      remaining -= inShell;
    }
    if (remaining > 0) shells.add(remaining);
    return shells;
  }
}
