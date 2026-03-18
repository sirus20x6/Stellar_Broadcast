import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

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

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        surface: deepSpace,
        primary: cyan,
        onSurface: Colors.white,
        onPrimary: deepSpace,
        secondary: cyanDark,
        onSecondary: Colors.white,
      ),
      scaffoldBackgroundColor: deepSpace,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: cyan,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Colors.white),
        displayMedium: TextStyle(color: Colors.white),
        displaySmall: TextStyle(color: Colors.white),
        headlineLarge: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: Colors.white),
        headlineSmall: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
        titleSmall: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white70),
        labelLarge: TextStyle(color: Colors.white),
        labelMedium: TextStyle(color: Colors.white),
        labelSmall: TextStyle(color: Colors.white70),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: cyan,
          foregroundColor: deepSpace,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      cardTheme: const CardThemeData(
        color: surfaceMid,
        elevation: 0,
      ),
    );
  }

  static BoxDecoration get holographicBorder {
    return BoxDecoration(
      border: Border.all(color: cyan.withValues(alpha: 0.6), width: 1.5),
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: cyan.withValues(alpha: 0.15),
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
      color: cyan,
      shadows: [
        Shadow(
          color: cyan,
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
