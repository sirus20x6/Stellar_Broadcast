import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';

import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/navigation/app_navigator_observers.dart';
import 'package:stellar_broadcast/screens/black_hole_screen.dart';
import 'package:stellar_broadcast/screens/chrono_vortex_screen.dart';
import 'package:stellar_broadcast/screens/dyson_sphere_screen.dart';
import 'package:stellar_broadcast/screens/earth_goodbye_screen.dart';
import 'package:stellar_broadcast/screens/event_screen.dart';
import 'package:stellar_broadcast/screens/living_nebula_screen.dart';
import 'package:stellar_broadcast/screens/mirror_array_screen.dart';
import 'package:stellar_broadcast/screens/phantom_ship_screen.dart';
import 'package:stellar_broadcast/screens/pulsar_lighthouse_screen.dart';
import 'package:stellar_broadcast/screens/puzzle_screen.dart';
import 'package:stellar_broadcast/screens/scan_screen.dart';
import 'package:stellar_broadcast/screens/seed_vault_screen.dart';
import 'package:stellar_broadcast/screens/ship_status_screen.dart';
import 'package:stellar_broadcast/screens/singularity_engine_screen.dart';
import 'package:stellar_broadcast/screens/trader_screen.dart';
import 'package:stellar_broadcast/screens/void_whale_screen.dart';
import 'package:stellar_broadcast/screens/voyage_screen.dart';
import 'package:stellar_broadcast/screens/world_engine_screen.dart';

/// Wraps the in-session gameplay flow (voyage hub + events + scan + puzzle +
/// trader) in a nested Navigator so the shell itself stays mounted across
/// every session-internal transition. PR 2 will hang a persistent banner off
/// this shell; today it's just the navigation plumbing.
///
/// Root-level screens (title, gameover, ending, landing cinematics, legacy,
/// codex, settings, landing) remain on the root Navigator and are reached via
/// `Navigator.of(context, rootNavigator: true)` from screens inside the shell.
class VoyageShell extends ConsumerStatefulWidget {
  const VoyageShell({super.key});

  @override
  ConsumerState<VoyageShell> createState() => _VoyageShellState();
}

class _VoyageShellState extends ConsumerState<VoyageShell> {
  final GlobalKey<NavigatorState> _innerNavKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // The banner sits OUTSIDE the inner Navigator so it survives every
    // push/pop within the session. AdMob's 60-second refresh timer ticks
    // on the same widget instance the whole time, instead of resetting
    // each time the user navigates voyage → event → voyage. The
    // per-screen `AdaptiveBannerAd`s on the event-style screens were
    // removed when this moved here (PR2 of the persistent-banner
    // refactor); native ads on /_home, /scan, /event-tablet stay where
    // they are and coexist with this banner.
    return NavigatorPopHandler(
      onPopWithResult: (result) {
        _innerNavKey.currentState?.maybePop(result);
      },
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          children: [
            Expanded(
              child: Navigator(
                key: _innerNavKey,
                initialRoute: '/_home',
                observers: buildNavigatorObservers(voyageRouteObserver),
                onGenerateRoute: _onGenerateInnerRoute,
              ),
            ),
            const PremiumAdGate(child: AdaptiveBannerAd()),
          ],
        ),
      ),
    );
  }

  Route<dynamic>? _onGenerateInnerRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/_home':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const VoyageScreen(),
        );
      case '/scan':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ScanScreen(),
        );
      case '/event':
        final event = settings.arguments as GameEvent;
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => EventScreen(event: event),
        );
      case '/puzzle':
        final puzzle = settings.arguments as AlienPuzzle;
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => PuzzleScreen(puzzle: puzzle),
        );
      case '/trader':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TraderScreen(),
        );
      case '/ship-status':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ShipStatusScreen(),
        );
      case '/black-hole':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              BlackHoleScreen(event: settings.arguments as GameEvent),
        );
      case '/living-nebula':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              LivingNebulaScreen(event: settings.arguments as GameEvent),
        );
      case '/seed-vault':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              SeedVaultScreen(event: settings.arguments as GameEvent),
        );
      case '/dyson-sphere':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              DysonSphereScreen(event: settings.arguments as GameEvent),
        );
      case '/world-engine':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              WorldEngineScreen(event: settings.arguments as GameEvent),
        );
      case '/mirror-array':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              MirrorArrayScreen(event: settings.arguments as GameEvent),
        );
      case '/chrono-vortex':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              ChronoVortexScreen(event: settings.arguments as GameEvent),
        );
      case '/void-whale':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              VoidWhaleScreen(event: settings.arguments as GameEvent),
        );
      case '/phantom-ship':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              PhantomShipScreen(event: settings.arguments as GameEvent),
        );
      case '/earth-goodbye':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              EarthGoodbyeScreen(event: settings.arguments as GameEvent),
        );
      case '/singularity-engine':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              SingularityEngineScreen(event: settings.arguments as GameEvent),
        );
      case '/pulsar-lighthouse':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              PulsarLighthouseScreen(event: settings.arguments as GameEvent),
        );
      default:
        return null;
    }
  }
}
