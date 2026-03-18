import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/theme/app_theme.dart';
import 'package:starbound_exodus/screens/title_screen.dart';
import 'package:starbound_exodus/screens/voyage_screen.dart';
import 'package:starbound_exodus/screens/scan_screen.dart';
import 'package:starbound_exodus/models/event.dart';
import 'package:starbound_exodus/screens/event_screen.dart';
import 'package:starbound_exodus/screens/landing_screen.dart';
import 'package:starbound_exodus/screens/ending_screen.dart';
import 'package:starbound_exodus/screens/legacy_screen.dart';
import 'package:starbound_exodus/screens/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbound Exodus',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const TitleScreen(),
        '/voyage': (context) => const VoyageScreen(),
        '/scan': (context) => const ScanScreen(),
        '/landing': (context) => const LandingScreen(),
        '/ending': (context) => const EndingScreen(),
        '/legacy': (context) => const LegacyScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/event') {
          final event = settings.arguments as GameEvent;
          return MaterialPageRoute(
            builder: (context) => EventScreen(event: event),
          );
        }
        return null;
      },
    );
  }
}
