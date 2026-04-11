import 'dart:async';
import 'dart:math';

import 'package:app_links/app_links.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_onboarding/quickapps_onboarding.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:quickapps_ui/quickapps_ui.dart';

import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/data/events.dart';
import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/logic/puzzle_generator.dart';
import 'package:stellar_broadcast/models/event.dart';
import 'package:stellar_broadcast/models/puzzle.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show voyageProvider, legacyProvider, codeToSeed, localeProvider;
import 'package:stellar_broadcast/screens/black_hole_screen.dart';
import 'package:stellar_broadcast/screens/chrono_vortex_screen.dart';
import 'package:stellar_broadcast/screens/codex_screen.dart';
import 'package:stellar_broadcast/screens/dyson_sphere_screen.dart';
import 'package:stellar_broadcast/screens/ending_screen.dart';
import 'package:stellar_broadcast/screens/event_screen.dart';
import 'package:stellar_broadcast/screens/game_over_screen.dart';
import 'package:stellar_broadcast/screens/landing_screen.dart';
import 'package:stellar_broadcast/screens/landing_sequence_screen.dart';
import 'package:stellar_broadcast/screens/legacy_screen.dart';
import 'package:stellar_broadcast/screens/living_nebula_screen.dart';
import 'package:stellar_broadcast/screens/mirror_array_screen.dart';
import 'package:stellar_broadcast/screens/phantom_ship_screen.dart';
import 'package:stellar_broadcast/screens/pulsar_lighthouse_screen.dart';
import 'package:stellar_broadcast/screens/puzzle_screen.dart';
import 'package:stellar_broadcast/screens/scan_screen.dart';
import 'package:stellar_broadcast/screens/seed_vault_screen.dart';
import 'package:stellar_broadcast/screens/settings_screen.dart' as local;
import 'package:stellar_broadcast/screens/ship_status_screen.dart';
import 'package:stellar_broadcast/screens/singularity_engine_screen.dart';
import 'package:stellar_broadcast/screens/title_screen.dart';
import 'package:stellar_broadcast/screens/trader_screen.dart';
import 'package:stellar_broadcast/screens/void_whale_screen.dart';
import 'package:stellar_broadcast/screens/voyage_screen.dart';
import 'package:stellar_broadcast/screens/world_engine_screen.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';

/// App-specific route labels for screen coverage tracking.
const Map<String, String> _screenRouteLabels = {
  '/': 'Title',
  '/voyage': 'Voyage',
  '/scan': 'Scan',
  '/landing': 'Landing',
  '/landing-sequence': 'Land Seq',
  '/ending': 'Ending',
  '/legacy': 'Legacy',
  '/codex': 'Codex',
  '/settings': 'Settings',
  '/gameover': 'Game Over',
  '/trader': 'Trader',
  '/ship-status': 'Ship Status',
  '/event': 'Event',
  '/puzzle': 'Puzzle',
  '/black-hole': 'Black Hole',
  '/living-nebula': 'Nebula',
  '/seed-vault': 'Seed Vault',
  '/dyson-sphere': 'Dyson Sphere',
  '/world-engine': 'World Engine',
  '/mirror-array': 'Mirror Array',
  '/chrono-vortex': 'Chrono Vortex',
  '/void-whale': 'Void Whale',
  '/phantom-ship': 'Phantom Ship',
  '/singularity-engine': 'Singularity Engine',
  '/pulsar-lighthouse': 'Pulsar Lighthouse',
};

final _coverageService = ScreenCoverageService.init(_screenRouteLabels);

ThemeData _patchTheme(ThemeData base) {
  return base.copyWith(
    textTheme: base.textTheme.copyWith(
      headlineMedium: base.textTheme.headlineMedium?.copyWith(
        color: Colors.white,
      ),
    ),
  );
}

class StellarBroadcastApp extends ConsumerStatefulWidget {
  const StellarBroadcastApp({super.key});

  @override
  ConsumerState<StellarBroadcastApp> createState() =>
      _StellarBroadcastAppState();
}

/// Global route observer for screens that need to detect when they come back
/// into view (e.g., to refresh banner ads after a child screen pops).
final routeObserver = RouteObserver<ModalRoute<void>>();

class _StellarBroadcastAppState extends ConsumerState<StellarBroadcastApp>
    with WidgetsBindingObserver {
  final _navigatorKey = GlobalKey<NavigatorState>();
  bool _showOnboarding = true;
  bool _loaded = false;
  StreamSubscription<Uri>? _linkSub;
  Uri? _pendingDeepLink;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkOnboarding();
    _initDeepLinks();
  }

  @override
  void dispose() {
    _linkSub?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _initDeepLinks() {
    final appLinks = AppLinks();

    // Cold start.
    appLinks
        .getInitialLink()
        .then((uri) {
          if (uri != null) _handleDeepLink(uri);
        })
        .catchError((e) {
          QaLogger.app.warning('Failed to get initial link', e);
        });

    // Warm start.
    _linkSub = appLinks.uriLinkStream.listen(_handleDeepLink);
  }

  void _handleDeepLink(Uri uri) {
    // Debug: ?screen=<route> navigates directly to a screen for QA screenshots.
    // Optional &skip=true skips animations for instant screenshot capture.
    final screenParam = uri.queryParameters['screen'];
    if (screenParam != null && screenParam.isNotEmpty) {
      PlatformConfig.skipAnimations =
          (uri.queryParameters['skip'] == 'true');
      if (_showOnboarding || !_loaded) {
        _pendingDeepLink = uri;
        return;
      }
      _navigateToDebugScreen(screenParam);
      return;
    }

    final seed = uri.queryParameters['seed'];
    if (seed == null || seed.isEmpty) return;

    // Store and defer if not yet loaded or still onboarding.
    if (_showOnboarding || !_loaded) {
      _pendingDeepLink = uri;
      return;
    }

    // Don't interrupt an active voyage.
    final voyage = ref.read(voyageProvider);
    if (!voyage.isComplete && !voyage.isGameOver && voyage.encounterCount > 0) {
      return;
    }

    try {
      final seedInt = codeToSeed(seed);
      final upgrades = ref.read(legacyProvider).upgrades;
      final navContext = _navigatorKey.currentContext;
      if (navContext == null) return;
      final l10n = Localizations.of<AppLocalizations>(
        navContext,
        AppLocalizations,
      );
      if (l10n == null) return;
      ref
          .read(voyageProvider.notifier)
          .startVoyage(seed: seedInt, upgrades: upgrades, l10n: l10n);
      _navigatorKey.currentState?.pushNamedAndRemoveUntil(
        '/voyage',
        (r) => r.isFirst,
      );
    } catch (e, st) {
      QaLogger.app.warning('Failed to handle deep link', e, st);
    }
  }

  /// Debug: navigate directly to a named screen for QA screenshot automation.
  /// Deferred to ensure widget tree is ready.
  void _navigateToDebugScreen(String screen) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doNavigateDebugScreen(screen);
    });
  }

  Future<void> _doNavigateDebugScreen(String screen) async {
    final nav = _navigatorKey.currentState;
    if (nav == null) return;

    final navContext = _navigatorKey.currentContext;
    if (navContext == null) return;
    final l10n = Localizations.of<AppLocalizations>(
      navContext,
      AppLocalizations,
    );
    if (l10n == null) return;

    final notifier = ref.read(voyageProvider.notifier);

    // Screens that don't need game state — navigate directly.
    const noStateNeeded = {'settings', 'legacy', 'codex'};
    if (noStateNeeded.contains(screen)) {
      nav.pushNamed('/$screen');
      return;
    }

    // Start a fresh voyage for debug screens (don't restore saved state).
    notifier.reset();
    final upgrades = ref.read(legacyProvider).upgrades;
    notifier.startVoyage(upgrades: upgrades, l10n: l10n);

    // Screens that need a planet — scan and wait for ONNX.
    const needsPlanet = {'scan', 'landing', 'landing-sequence', 'ending'};
    if (needsPlanet.contains(screen) &&
        ref.read(voyageProvider).currentPlanet == null) {
      await notifier.scanPlanet();
    }

    // Visual event screens — need a GameEvent argument.
    final pool = getEventPool(l10n);
    final eventScreens = <String, String>{
      'black-hole': 'black_hole_lens',
      'living-nebula': 'living_nebula',
      'seed-vault': 'seed_vault',
      'dyson-sphere': 'dyson_sphere',
      'world-engine': 'relic_world_engine',
      'mirror-array': 'relic_mirror_array',
      'chrono-vortex': 'chrono_vortex',
    };

    if (eventScreens.containsKey(screen)) {
      final eventId = eventScreens[screen]!;
      final matches = pool.where((e) => e.id == eventId);
      if (matches.isEmpty) {
        QaLogger.app.warning('Debug screen: event "$eventId" not found');
        return;
      }
      nav.pushNamed('/$screen', arguments: matches.first);
      return;
    }

    // Event screen — pick a random event.
    if (screen == 'event') {
      final event = pool.isNotEmpty ? pool.first : null;
      if (event != null) {
        nav.pushNamed('/event', arguments: event);
      }
      return;
    }

    // Puzzle screen — generate one.
    if (screen == 'puzzle') {
      final puzzle = PuzzleGenerator.generate(
        Random(),
        ref.read(voyageProvider),
      );
      nav.pushNamed('/puzzle', arguments: puzzle);
      return;
    }

    // Ship status needs degraded systems for visual testing.
    if (screen == 'ship-status') {
      notifier.debugDegradeSystem('hull', 0.40);
      notifier.debugDegradeSystem('nav', 0.60);
      notifier.debugDegradeSystem('shields', 0.70);
      notifier.debugDegradeSystem('constructors', 0.50);
      notifier.debugDegradeSystem('landingSystem', 0.55);
    }

    // Game over — navigate to /gameover directly (it reads state from provider).
    if (screen == 'gameover') {
      nav.pushNamed('/gameover');
      return;
    }

    nav.pushNamed('/$screen');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      if (!kIsWeb) {
        FlameAudio.bgm.pause();
        GameMusic().pauseEngineHum();
        GameSfx().pauseLongAudio();
      }
      // Save active voyage so it survives if the OS kills the process.
      ref.read(voyageProvider.notifier).saveState();
    } else if (state == AppLifecycleState.resumed) {
      if (!kIsWeb) {
        FlameAudio.bgm.resume();
        GameMusic().resumeEngineHum();
        GameSfx().resumeLongAudio();
      }
    }
  }

  Future<void> _checkOnboarding() async {
    var completed = await QaOnboardingScreen.isCompleted();
    // Skip onboarding for returning premium users (e.g. after reinstall).
    if (!completed && QaIapService().isPremium) {
      SettingsRepository().setBool('onboarding_completed', true);
      completed = true;
    }
    if (!completed) {
      AnalyticsService().logEvent(name: QaEvents.onboardingStarted);
    }
    setState(() {
      _showOnboarding = !completed;
      _loaded = true;
    });
    _processPendingDeepLink();
    if (completed && PlatformConfig.supportsPlayGames) {
      PlayGamesService.signIn();
    }
  }

  void _processPendingDeepLink() {
    final pending = _pendingDeepLink;
    if (pending != null && _loaded && !_showOnboarding) {
      _pendingDeepLink = null;
      _handleDeepLink(pending);
    }
  }

  void _onOnboardingComplete() {
    // Persist completion so onboarding doesn't re-show on next launch.
    // (The QaConsentChoice widget bypasses the onboarding screen's own
    // _complete() when hideDefaultButton is true.)
    SettingsRepository().setBool('onboarding_completed', true);
    AnalyticsService().logEvent(name: QaEvents.onboardingCompleted);
    setState(() => _showOnboarding = false);
    _processPendingDeepLink();
    if (PlatformConfig.supportsPlayGames) PlayGamesService.signIn();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return Actions(
          actions: <Type, Action<Intent>>{
            DismissIntent: CallbackAction<DismissIntent>(
              onInvoke: (_) => Navigator.of(context).maybePop(),
            ),
          },
          child: child!,
        );
      },
      title: 'Stellar Broadcast',
      debugShowCheckedModeBanner: false,
      locale: ref.watch(localeProvider),
      localeResolutionCallback: (locale, supported) {
        // If the device locale matches a supported locale, use it.
        if (locale != null) {
          for (final s in supported) {
            if (s.languageCode == locale.languageCode) return s;
          }
        }
        // Fall back to English.
        return const Locale('en');
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: _patchTheme(QaTheme.dark(seedColor: SpaceColors.cyan)),
      darkTheme: _patchTheme(QaTheme.dark(seedColor: SpaceColors.cyan)),
      themeMode: ThemeMode.dark,
      navigatorObservers: [
        routeObserver,
        QaAnalyticsObserver(),
        ScreenCoverageObserver(_coverageService),
      ],
      home: !_loaded
          ? const Scaffold(
              backgroundColor: SpaceColors.deepSpace,
              body: Center(child: CircularProgressIndicator()),
            )
          : _showOnboarding
          ? Builder(
              builder: (ctx) => QaOnboardingScreen(
                pages: [
                  OnboardingPage(
                    title: ctx.l10n.onboarding_page0_title,
                    description: ctx.l10n.onboarding_page0_description,
                    icon: Icons.public,
                    iconColor: Color(0xFFFF6B35),
                  ),
                  OnboardingPage(
                    title: ctx.l10n.onboarding_page1_title,
                    description: ctx.l10n.onboarding_page1_description,
                    icon: Icons.auto_awesome,
                    iconColor: SpaceColors.cyan,
                  ),
                  OnboardingPage(
                    title: ctx.l10n.onboarding_page2_title,
                    description: ctx.l10n.onboarding_page2_description,
                    icon: Icons.flag,
                    iconColor: Color(0xFFFFD700),
                  ),
                  OnboardingPage(
                    title: ctx.l10n.onboarding_page3_title,
                    description: ctx.l10n.onboarding_page3_description,
                    icon: Icons.shield,
                    iconColor: Color(0xFF8B5CF6),
                    hideDefaultButton: true,
                    customWidget: QaConsentChoice(
                      adFreePrice: '\$5.99 one-time',
                      adFreeProductId: 'premium_lifetime',
                      onPurchase: (id) => QaIapService().buy(id),
                      onComplete: _onOnboardingComplete,
                      onChoiceLogged: (choice) => AnalyticsService().logEvent(
                        name: QaEvents.featureUsed,
                        parameters: {'feature': choice},
                      ),
                      appNoun: 'game',
                    ),
                  ),
                ],
                onComplete: _onOnboardingComplete,
              ),
            )
          : const TitleScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const TitleScreen(),
            );
          case '/voyage':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const VoyageScreen(),
            );
          case '/scan':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const ScanScreen(),
            );
          case '/landing':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const LandingScreen(),
            );
          case '/landing-sequence':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const LandingSequenceScreen(),
            );
          case '/ending':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const EndingScreen(),
            );
          case '/legacy':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const LegacyScreen(),
            );
          case '/codex':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const CodexScreen(),
            );
          case '/settings':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const local.SettingsScreen(),
            );
          case '/gameover':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const GameOverScreen(),
            );
          case '/trader':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const TraderScreen(),
            );
          case '/ship-status':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const ShipStatusScreen(),
            );
          case '/debug-trader':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const TraderScreen(),
            );
          case '/event':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => EventScreen(event: event),
            );
          case '/puzzle':
            final puzzle = settings.arguments as AlienPuzzle;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => PuzzleScreen(puzzle: puzzle),
            );
          case '/black-hole':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => BlackHoleScreen(event: event),
            );
          case '/living-nebula':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => LivingNebulaScreen(event: event),
            );
          case '/seed-vault':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => SeedVaultScreen(event: event),
            );
          case '/dyson-sphere':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => DysonSphereScreen(event: event),
            );
          case '/world-engine':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => WorldEngineScreen(event: event),
            );
          case '/mirror-array':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => MirrorArrayScreen(event: event),
            );
          case '/chrono-vortex':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => ChronoVortexScreen(event: event),
            );
          case '/void-whale':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => VoidWhaleScreen(event: event),
            );
          case '/phantom-ship':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => PhantomShipScreen(event: event),
            );
          case '/singularity-engine':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => SingularityEngineScreen(event: event),
            );
          case '/pulsar-lighthouse':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => PulsarLighthouseScreen(event: event),
            );
          default:
            return null;
        }
      },
    );
  }
}
