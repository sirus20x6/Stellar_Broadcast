import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flame_audio/flame_audio.dart';
import 'services/game_music.dart';
import 'package:flutter/material.dart';
import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_logging/quickapps_logging.dart';
import 'package:quickapps_onboarding/quickapps_onboarding.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'models/event.dart';
import 'models/puzzle.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'screens/event_screen.dart';
import 'screens/puzzle_screen.dart';
import 'screens/game_over_screen.dart';
import 'screens/landing_screen.dart';
import 'screens/landing_sequence_screen.dart';
import 'screens/ending_screen.dart';
import 'screens/codex_screen.dart';
import 'screens/legacy_screen.dart';
import 'screens/scan_screen.dart';
import 'screens/ship_status_screen.dart';
import 'screens/settings_screen.dart' as local;
import 'screens/title_screen.dart';
import 'screens/trader_screen.dart';
import 'screens/black_hole_screen.dart';
import 'screens/living_nebula_screen.dart';
import 'screens/seed_vault_screen.dart';
import 'screens/dyson_sphere_screen.dart';
import 'screens/world_engine_screen.dart';
import 'screens/mirror_array_screen.dart';
import 'screens/chrono_vortex_screen.dart';
import 'screens/voyage_screen.dart';
import 'services/play_games_service.dart';
import 'providers/game_providers.dart' show voyageProvider, legacyProvider, codeToSeed, localeProvider;
import 'theme/app_theme.dart';

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
    appLinks.getInitialLink().then((uri) {
      if (uri != null) _handleDeepLink(uri);
    }).catchError((e) {
      QaLogger.app.warning('Failed to get initial link', e);
    });

    // Warm start.
    _linkSub = appLinks.uriLinkStream.listen(_handleDeepLink);
  }

  void _handleDeepLink(Uri uri) {
    final seed = uri.queryParameters['seed'];
    if (seed == null || seed.isEmpty) return;

    // Store and defer if not yet loaded or still onboarding.
    if (_showOnboarding || !_loaded) {
      _pendingDeepLink = uri;
      return;
    }

    // Don't interrupt an active voyage.
    final voyage = ref.read(voyageProvider);
    if (!voyage.isComplete && !voyage.isGameOver && voyage.encounterCount > 0) return;

    try {
      final seedInt = codeToSeed(seed);
      final upgrades = ref.read(legacyProvider).upgrades;
      final navContext = _navigatorKey.currentContext;
      if (navContext == null) return;
      final l10n = Localizations.of<AppLocalizations>(navContext, AppLocalizations);
      if (l10n == null) return;
      ref.read(voyageProvider.notifier).startVoyage(seed: seedInt, upgrades: upgrades, l10n: l10n);
      _navigatorKey.currentState?.pushNamedAndRemoveUntil('/voyage', (r) => r.isFirst);
    } catch (e, st) {
      QaLogger.app.warning('Failed to handle deep link', e, st);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      FlameAudio.bgm.pause();
      GameMusic().pauseEngineHum();
    } else if (state == AppLifecycleState.resumed) {
      FlameAudio.bgm.resume();
      GameMusic().resumeEngineHum();
    }
  }

  Future<void> _checkOnboarding() async {
    var completed = await QaOnboardingScreen.isCompleted();
    // Skip onboarding for returning premium users (e.g. after reinstall).
    if (!completed && QaIapService().isPremium.value) {
      SettingsRepository().setBool('onboarding_completed', true);
      completed = true;
    }
    setState(() {
      _showOnboarding = !completed;
      _loaded = true;
    });
    _processPendingDeepLink();
    if (completed) PlayGamesService.signIn();
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
    setState(() => _showOnboarding = false);
    _processPendingDeepLink();
    PlayGamesService.signIn();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
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
      navigatorObservers: [QaAnalyticsObserver()],
      home: !_loaded
          ? const Scaffold(
              backgroundColor: SpaceColors.deepSpace,
              body: Center(child: CircularProgressIndicator()),
            )
          : _showOnboarding
              ? Builder(builder: (ctx) => QaOnboardingScreen(
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
                        onChoiceLogged: (choice) =>
                            AnalyticsService().logEvent(
                          name: QaEvents.featureUsed,
                          parameters: {'feature': choice},
                        ),
                        appNoun: 'game',
                      ),
                    ),
                  ],
                  onComplete: _onOnboardingComplete,
                ))
              : const TitleScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => const TitleScreen());
          case '/voyage':
            return MaterialPageRoute(
                builder: (context) => const VoyageScreen());
          case '/scan':
            return MaterialPageRoute(
                builder: (context) => const ScanScreen());
          case '/landing':
            return MaterialPageRoute(
                builder: (context) => const LandingScreen());
          case '/landing-sequence':
            return MaterialPageRoute(
                builder: (context) => const LandingSequenceScreen());
          case '/ending':
            return MaterialPageRoute(
                builder: (context) => const EndingScreen());
          case '/legacy':
            return MaterialPageRoute(
                builder: (context) => const LegacyScreen());
          case '/codex':
            return MaterialPageRoute(
                builder: (context) => const CodexScreen());
          case '/settings':
            return MaterialPageRoute(
                builder: (context) => const local.SettingsScreen());
          case '/gameover':
            return MaterialPageRoute(
                builder: (context) => const GameOverScreen());
          case '/trader':
            return MaterialPageRoute(
                builder: (context) => const TraderScreen());
          case '/ship-status':
            return MaterialPageRoute(
                builder: (context) => const ShipStatusScreen());
          case '/debug-trader':
            return MaterialPageRoute(
                builder: (context) => const TraderScreen());
          case '/event':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => EventScreen(event: event),
            );
          case '/puzzle':
            final puzzle = settings.arguments as AlienPuzzle;
            return MaterialPageRoute(
              builder: (context) => PuzzleScreen(puzzle: puzzle),
            );
          case '/black-hole':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => BlackHoleScreen(event: event),
            );
          case '/living-nebula':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => LivingNebulaScreen(event: event),
            );
          case '/seed-vault':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => SeedVaultScreen(event: event),
            );
          case '/dyson-sphere':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => DysonSphereScreen(event: event),
            );
          case '/world-engine':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => WorldEngineScreen(event: event),
            );
          case '/mirror-array':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => MirrorArrayScreen(event: event),
            );
          case '/chrono-vortex':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              builder: (context) => ChronoVortexScreen(event: event),
            );
          default:
            return null;
        }
      },
    );
  }
}
