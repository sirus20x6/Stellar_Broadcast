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
import 'package:quickapps_notifications/quickapps_notifications.dart';
import 'package:quickapps_onboarding/quickapps_onboarding.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:quickapps_storage/quickapps_storage.dart';
import 'package:quickapps_ui/quickapps_ui.dart';

import 'package:stellar_broadcast/main.dart' show tryReinitializeIap;
import 'package:stellar_broadcast/utils/platform_config.dart';
import 'package:stellar_broadcast/navigation/app_navigator_observers.dart';
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
import 'package:stellar_broadcast/screens/earth_goodbye_screen.dart';
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
import 'package:stellar_broadcast/screens/title_proto_screen.dart';
import 'package:stellar_broadcast/screens/title_screen.dart';
import 'package:stellar_broadcast/screens/trader_screen.dart';
import 'package:stellar_broadcast/screens/void_whale_screen.dart';
import 'package:stellar_broadcast/screens/world_engine_screen.dart';
import 'package:stellar_broadcast/widgets/voyage_shell.dart';
import 'package:stellar_broadcast/services/game_music.dart';
import 'package:stellar_broadcast/services/sfx_service.dart';
import 'package:stellar_broadcast/services/streak_reminder_scheduler.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _initDeepLinks();
      _initStreakReminder();
    });
  }

  /// Initialises the local-notifications plugin and (re)schedules the daily
  /// streak reminder. Runs once on app start. Permission is NOT requested
  /// here — that's lazy, fired only when the user toggles the reminder ON
  /// from Settings. Safe to call before legacy state has loaded; we await
  /// the loaded future explicitly so the body string reflects the persisted
  /// streak count.
  Future<void> _initStreakReminder() async {
    try {
      await NotificationService().initialize();
      await ref.read(legacyProvider.notifier).loaded;
      if (!mounted) return;
      final l10n = AppLocalizations.of(context);
      await StreakReminderScheduler.rescheduleIfEnabled(
        ref.read(legacyProvider),
        l10n,
      );
    } catch (e, st) {
      QaLogger.app.warning('Streak reminder bootstrap failed', e, st);
    }
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
        .catchError((Object e, StackTrace st) {
          QaLogger.app.warning('Failed to get initial link', e, st);
        });

    // Warm start.
    _linkSub = appLinks.uriLinkStream.listen(_handleDeepLink);
  }

  void _handleDeepLink(Uri uri) {
    // The AndroidManifest restricts accepted schemes to stellarbroadcast://play
    // but we still validate scheme/host defensively — a misconfigured intent
    // filter or an iOS universal link could route other URIs here.
    if (uri.scheme != 'stellarbroadcast' || uri.host != 'play') {
      QaLogger.app.fine('Ignoring deep link with unexpected scheme/host: $uri');
      return;
    }

    // Debug: ?screen=<route> navigates directly to a screen for QA screenshots.
    // Optional &skip=true skips animations for instant screenshot capture.
    // Gated to debug builds OR release builds compiled with QA_MODE=true so a
    // malicious deep link can't wipe a live voyage on a Play Store install.
    // QA_MODE is a compile-time constant (--dart-define=QA_MODE=true) and is
    // never set on public builds.
    final screenParam = uri.queryParameters['screen'];
    const qaMode = bool.fromEnvironment('QA_MODE', defaultValue: false);
    if ((kDebugMode || qaMode) &&
        screenParam != null &&
        screenParam.isNotEmpty) {
      PlatformConfig.skipAnimations = (uri.queryParameters['skip'] == 'true');
      if (_showOnboarding || !_loaded) {
        _pendingDeepLink = uri;
        return;
      }
      _navigateToDebugScreen(screenParam, uri.queryParameters);
      return;
    }

    final seed = uri.queryParameters['seed'];
    if (seed == null || seed.isEmpty) return;

    // Canonical seed is exactly 6 base-36 characters (matches the share-
    // code format produced by `seedToCode`). Reject anything else without
    // logging the raw value — deep-link input is untrusted and could be
    // crafted to spam logs / bug reports with attacker-controlled text.
    if (!RegExp(r'^[0-9A-Za-z]{6}$').hasMatch(seed)) {
      QaLogger.app.warning(
        'Deep link rejected: seed format invalid (length=${seed.length})',
      );
      return;
    }

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

    final int seedInt;
    final Map<String, bool> upgrades;
    final AppLocalizations l10n;
    try {
      final parsed = codeToSeed(seed);
      if (parsed == null) {
        QaLogger.app.warning('Deep link seed parse failed (length 6, base36)');
        return;
      }
      seedInt = parsed;
      upgrades = ref.read(legacyProvider).upgrades;
      final navContext = _navigatorKey.currentContext;
      if (navContext == null) return;
      final resolved = Localizations.of<AppLocalizations>(
        navContext,
        AppLocalizations,
      );
      if (resolved == null) return;
      l10n = resolved;
    } catch (e, st) {
      QaLogger.app.warning('Deep link parse/resolve failed', e, st);
      return;
    }

    // Only navigate if startVoyage succeeds. Previously this was inside
    // a shared try/catch, so a thrown startVoyage would still fall
    // through to the logger but the navigator push either wouldn't
    // happen (because the exception jumped out) or would land on a
    // half-initialized voyage in the middle of the reconciliation
    // window. Separating the phases makes the failure mode explicit.
    try {
      ref
          .read(voyageProvider.notifier)
          .startVoyage(seed: seedInt, upgrades: upgrades, l10n: l10n);
    } catch (e, st) {
      QaLogger.app.warning('Deep link startVoyage failed', e, st);
      return;
    }

    _navigatorKey.currentState?.pushNamedAndRemoveUntil(
      '/voyage',
      (r) => r.isFirst,
    );
  }

  /// Debug: navigate directly to a named screen for QA screenshot automation.
  /// Deferred to ensure widget tree is ready. [params] are the URI query
  /// parameters — used by some screens (`puzzle`, `scan`) to deterministically
  /// pick a variant so iPad screenshot CI doesn't have to re-roll randomly
  /// generated content until the right type appears.
  void _navigateToDebugScreen(String screen, Map<String, String> params) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _doNavigateDebugScreen(screen, params);
    });
  }

  Future<void> _doNavigateDebugScreen(
    String screen,
    Map<String, String> params,
  ) async {
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

    // Title — pop back to the home route (screenshot kick-off pushes /voyage
    // so the stack is Title → Voyage; popUntil isFirst leaves us at Title).
    if (screen == 'title') {
      nav.popUntil((r) => r.isFirst);
      return;
    }

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

    // Screens that need a planet — scan and wait for ONNX. /scan additionally
    // accepts `?moons=N&rings=true|<type>` to deterministically pick a planet
    // matching those traits (capped retry budget). The CI screenshot job uses
    // this to capture a "ringed planet with 3 moons" without externally
    // re-rolling 60 times.
    const needsPlanet = {'scan', 'landing', 'landing-sequence', 'ending'};
    if (needsPlanet.contains(screen)) {
      final wantMoons = int.tryParse(params['moons'] ?? '');
      final wantRings = params['rings'];
      final hasFilter = wantMoons != null || (wantRings != null && wantRings.isNotEmpty);
      if (hasFilter) {
        for (var i = 0; i < 200; i++) {
          notifier.reset();
          notifier.startVoyage(upgrades: upgrades, l10n: l10n);
          await notifier.scanPlanet();
          if (!mounted) return;
          final p = ref.read(voyageProvider).currentPlanet;
          if (p == null) continue;
          if (wantMoons != null && p.moons.length != wantMoons) continue;
          if (wantRings != null && wantRings.isNotEmpty) {
            final wantTrue = wantRings == 'true';
            if (wantTrue && p.rings == null) continue;
            if (!wantTrue && wantRings != 'true' && p.rings?.type.name != wantRings) {
              continue;
            }
          }
          break;
        }
      } else if (ref.read(voyageProvider).currentPlanet == null) {
        await notifier.scanPlanet();
        if (!mounted) return;
      }
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
      'void-whale': 'void_whale_calf',
      'phantom-ship': 'phantom_ship',
      'singularity-engine': 'singularity_engine',
      'pulsar-lighthouse': 'pulsar_lighthouse',
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

    // Puzzle screen — generate one. Accepts `?species=geometric` and/or
    // `?sequenceType=chirality` to deterministically pick a matching variant
    // (capped retry budget). CI screenshot automation relies on these to
    // capture the geometric and chirality puzzles in one shot each instead
    // of re-rolling 60+ times externally.
    if (screen == 'puzzle') {
      final wantSpecies = params['species'];
      final wantSeq = params['sequenceType'];
      final voyage = ref.read(voyageProvider);
      AlienPuzzle puzzle = PuzzleGenerator.generate(Random(), voyage);
      if (wantSpecies != null || wantSeq != null) {
        for (var i = 0; i < 200; i++) {
          puzzle = PuzzleGenerator.generate(Random(), voyage);
          if (wantSpecies != null && puzzle.species.name != wantSpecies) {
            continue;
          }
          if (wantSeq != null && puzzle.sequenceType.name != wantSeq) {
            continue;
          }
          break;
        }
      }
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

    // Game over — set a sample failure reason so the Phase 2 red box isn't
    // empty, then navigate. (Normal play sets this via _checkGameOver.)
    if (screen == 'gameover') {
      notifier.debugSetGameOverReason(
        'HULL BREACH CRITICAL — STRUCTURAL COLLAPSE',
      );
      nav.pushNamed('/gameover');
      return;
    }

    nav.pushNamed('/$screen');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Flutter 3.13+ splits background lifecycle into inactive → hidden →
    // paused. We pause on hidden/paused/detached (real "user can't hear
    // us" states — screen off, app backgrounded, process detached) but
    // NOT on inactive. `inactive` fires on every transient focus loss —
    // notification-shade pulls, ad popups, system dialogs, sometimes even
    // when focusing a TextField — and pausing/resuming on those choppy
    // events caused playback to break entirely (the FlameAudio bgm player
    // can't reliably ride a rapid pause→resume cycle while it's still
    // negotiating the audio focus, so the resume silently fails and the
    // track stays muted forever).
    final isBackgrounded = state == AppLifecycleState.paused ||
        state == AppLifecycleState.hidden ||
        state == AppLifecycleState.detached;
    if (isBackgrounded) {
      if (!kIsWeb) {
        FlameAudio.bgm.pause();
        GameMusic().pauseEngineHum();
        GameSfx().pauseLongAudio();
      }
      // Save active voyage so it survives if the OS kills the process.
      unawaited(
        ref.read(voyageProvider.notifier).saveState().catchError((
          Object e,
          StackTrace st,
        ) {
          QaLogger.app.warning('Save state failed on lifecycle pause', e, st);
        }),
      );
    } else if (state == AppLifecycleState.resumed) {
      if (!kIsWeb) {
        // Resume long audio first, then check whether BGM should come
        // back. If encounter long audio is still active it intentionally
        // owns the music slot — resuming BGM here would stack tracks.
        GameSfx().resumeLongAudio();
        if (!GameSfx().hasActiveLongAudio) {
          FlameAudio.bgm.resume();
        }
        GameMusic().resumeEngineHum();
      }
      // Re-check purchases in case a promo code was redeemed while backgrounded.
      QaIapService().restore().catchError((Object e, StackTrace st) {
        QaLogger.app.warning('IAP restore failed on resume', e, st);
      });
      // If IAP init never completed at bootstrap (background retries
      // exhausted), try one more time now that the user has returned
      // with presumably better network. No-op if already initialized.
      unawaited(tryReinitializeIap());
    }
    // inactive: deliberately no-op. See comment above.
  }

  Future<void> _checkOnboarding() async {
    var completed = await QaOnboardingScreen.isCompleted();
    // Skip onboarding for returning premium users (e.g. after reinstall).
    if (!completed && QaIapService().isPremium) {
      SettingsRepository().setBool('onboarding_completed', true);
      completed = true;
    }
    // QA builds bypass onboarding so deep-link-driven screenshot
    // workflows can route directly to gameplay screens.
    const qaMode = bool.fromEnvironment('QA_MODE', defaultValue: false);
    if (!completed && qaMode) {
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
      navigatorObservers: buildNavigatorObservers(rootRouteObserver),
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
          case '/title-proto':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const TitleProtoScreen(),
            );
          case '/voyage':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const VoyageShell(),
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
          case '/earth-goodbye':
            final event = settings.arguments as GameEvent;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => EarthGoodbyeScreen(event: event),
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
