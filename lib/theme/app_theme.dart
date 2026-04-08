import 'package:flutter/material.dart';

/// Game-specific space colors used throughout Stellar Broadcast.
///
/// The app theme itself is provided by [QaTheme.dark] in app.dart.
/// These constants are used by game-specific widgets for the sci-fi aesthetic.
class SpaceColors {
  SpaceColors._();

  // Core colors
  static const Color deepSpace = Color(0xFF0B1426);
  static const Color cyan = Color(0xFF00E5FF);
  static const Color cyanDark = Color(0xFF00B8D4);
  static const Color cyanLight = Color(0xFF80F0FF);

  // Status colors
  static const Color warning = Color(0xFFFF9800);
  static const Color danger = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);
  static const Color gold = Color(0xFFFFD700);

  // Surface variants
  static const Color surfaceLight = Color(0xFF152238);
  static const Color surfaceMid = Color(0xFF0E1B2E);
}

/// Game-specific decorations and text styles.
class SpaceStyles {
  SpaceStyles._();

  static BoxDecoration get holographicBorder {
    return BoxDecoration(
      border:
          Border.all(color: SpaceColors.cyan.withValues(alpha: 0.6), width: 1.5),
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: SpaceColors.cyan.withValues(alpha: 0.15),
          blurRadius: 12,
          spreadRadius: 1,
        ),
      ],
    );
  }

  static TextStyle get titleStyle {
    return const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: SpaceColors.cyan,
      shadows: [
        Shadow(
          color: SpaceColors.cyan,
          blurRadius: 12,
        ),
      ],
    );
  }

  static TextStyle get bodyStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }
}
