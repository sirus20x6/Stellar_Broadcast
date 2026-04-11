import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:stellar_broadcast/app.dart' show routeObserver;

import 'package:flutter/services.dart';
import 'package:stellar_broadcast/data/codex_data.dart';
import 'package:quickapps_play_games/quickapps_play_games.dart';
import 'package:stellar_broadcast/models/legacy.dart';
import 'package:stellar_broadcast/models/voyage_log_entry.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show legacyProvider, dailySeedCode, dailyPlayedProvider;
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);
const _kDailyAccent = Color(0xFFFFD740);

/// Defers building [child] until the slot is scrolled into the viewport.
///
/// Prevents native ad requests from firing when the ad is below the fold,
/// avoiding matched-but-never-shown waste that tanks show rate.
class _LazyAdSlot extends StatefulWidget {
  final double height;
  final WidgetBuilder builder;
  const _LazyAdSlot({required this.height, required this.builder});

  @override
  State<_LazyAdSlot> createState() => _LazyAdSlotState();
}

class _LazyAdSlotState extends State<_LazyAdSlot> {
  bool _activated = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_activated) _checkVisibility();
  }

  void _checkVisibility() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _activated) return;
      final ro = context.findRenderObject();
      if (ro == null || !ro.attached) return;
      final viewport = RenderAbstractViewport.maybeOf(ro);
      if (viewport == null) return;
      final offset = viewport.getOffsetToReveal(ro, 0.0).offset;
      final scrollable = Scrollable.maybeOf(context);
      if (scrollable == null) return;
      final pixels = scrollable.position.pixels;
      final viewportHeight = scrollable.position.viewportDimension;
      // Activate if the slot is within one viewport height of the current scroll.
      if (offset < pixels + viewportHeight * 2) {
        setState(() => _activated = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_activated) return widget.builder(context);

    // Placeholder that listens for scroll to check visibility.
    return NotificationListener<ScrollNotification>(
      onNotification: (_) {
        _checkVisibility();
        return false;
      },
      child: SizedBox(height: widget.height),
    );
  }
}

/// Legacy Hub -- meta-progression screen with upgrades, achievements, and logs.
class LegacyScreen extends ConsumerStatefulWidget {
  const LegacyScreen({super.key});

  @override
  ConsumerState<LegacyScreen> createState() => _LegacyScreenState();
}

class _LegacyScreenState extends ConsumerState<LegacyScreen>
    with SingleTickerProviderStateMixin, RouteAware {
  late final AnimationController _starController;
  int _adRefreshCount = 0;

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _starController.dispose();
    super.dispose();
  }

  @override
  void didPopNext() {
    setState(() => _adRefreshCount++);
  }

  Widget _buildLeaderboardsButton(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        AnalyticsService().logEvent(name: QaEvents.leaderboardViewed);
        final shown = await PlayGamesService.showAllLeaderboards();
        if (!shown && context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Play Games unavailable. View leaderboards at stellarbroadcast.org'),
              duration: Duration(seconds: 4),
            ),
          );
        }
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: _kAccent.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: _kAccent.withValues(alpha: 0.25)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.leaderboard, color: _kAccent, size: 20),
            const SizedBox(width: 10),
            Text(
              'LEADERBOARDS',
              style: TextStyle(
                color: _kAccent,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSections(BuildContext context, ScreenInfo screen, LegacyData legacy, List<VoyageLogEntry> voyageLogs) {
    final isLandscape = screen.isLandscape && screen.screenClass != ScreenClass.compact;

    if (isLandscape) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left: high scores, upgrades, ad, achievements.
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 16),
                if (legacy.highScores.isNotEmpty) ...[
                  _SectionTitle(title: context.l10n.ui_legacy_highScores),
                  const SizedBox(height: 12),
                  _HighScoresTable(scores: legacy.highScores),
                  const SizedBox(height: 28),
                ],
                _SectionTitle(title: context.l10n.ui_legacy_upgrades),
                const SizedBox(height: 12),
                _UpgradesGrid(
                  legacy: legacy,
                  onPurchase: (id, cost) {
                    ref.read(legacyProvider.notifier).purchaseUpgrade(id, cost: cost);
                    AnalyticsService().logEvent(
                      name: QaEvents.legacyUpgradePurchased,
                      parameters: {'upgrade_id': id, 'cost': cost},
                    );
                  },
                ),
                const SizedBox(height: 28),
                _LazyAdSlot(
                  height: 300,
                  builder: (_) => PremiumAdGate(child: AdaptiveNativeAd(
                    fallback: AdaptiveBannerAd(
                      size: QaBannerSize.mrec,
                      fallback: AdFallbackBanner(
                        height: 250,
                        onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
                      ),
                    ),
                  )),
                ),
                const SizedBox(height: 28),
                _SectionTitle(title: context.l10n.ui_legacy_achievements),
                const SizedBox(height: 12),
                _AchievementsList(legacy: legacy),
                const SizedBox(height: 40),
              ],
            ),
          ),
          const SizedBox(width: 24),
          // Right: commander stats, daily, codex, leaderboards, voyage log.
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 16),
                _SectionTitle(title: context.l10n.ui_legacy_commanderStats),
                const SizedBox(height: 12),
                _StatsOverview(legacy: legacy),
                const SizedBox(height: 28),
                _DailySection(legacy: legacy),
                const SizedBox(height: 28),
                _SectionTitle(title: context.l10n.ui_codex_title),
                const SizedBox(height: 12),
                _CodexCard(legacy: legacy),
                const SizedBox(height: 28),
                _buildLeaderboardsButton(context),
                const SizedBox(height: 28),
                _SectionTitle(title: context.l10n.ui_legacy_voyageLog),
                const SizedBox(height: 12),
                _VoyageLog(logs: voyageLogs),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      );
    }

    // Portrait: original single-column layout.
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(height: 16),

        // Section 1: Stats overview.
        _SectionTitle(title: context.l10n.ui_legacy_commanderStats),
        const SizedBox(height: 12),
        _StatsOverview(legacy: legacy),

        const SizedBox(height: 28),

        // Section: Daily voyage.
        _DailySection(legacy: legacy),
        const SizedBox(height: 28),

        // Section 2: High scores.
        if (legacy.highScores.isNotEmpty) ...[
          _SectionTitle(title: context.l10n.ui_legacy_highScores),
          const SizedBox(height: 12),
          _HighScoresTable(scores: legacy.highScores),
          const SizedBox(height: 28),
        ],

        // Section 3: Upgrades grid.
        _SectionTitle(title: context.l10n.ui_legacy_upgrades),
        const SizedBox(height: 12),
        _UpgradesGrid(
          legacy: legacy,
          onPurchase: (id, cost) {
            ref
                .read(legacyProvider.notifier)
                .purchaseUpgrade(id, cost: cost);
            AnalyticsService().logEvent(
              name: QaEvents.legacyUpgradePurchased,
              parameters: {'upgrade_id': id, 'cost': cost},
            );
          },
        ),

        const SizedBox(height: 28),

        // Native ad between sections (lazy-loaded on scroll).
        _LazyAdSlot(
          height: 300,
          builder: (_) => PremiumAdGate(child: AdaptiveNativeAd(
            fallback: AdaptiveBannerAd(
              size: QaBannerSize.mrec,
              fallback: AdFallbackBanner(
                height: 250,
                onRemoveAds: () => Navigator.pushNamed(context, '/settings'),
              ),
            ),
          )),
        ),

        const SizedBox(height: 28),

        // Section: Achievements.
        _SectionTitle(title: context.l10n.ui_legacy_achievements),
        const SizedBox(height: 12),
        _AchievementsList(legacy: legacy),

        const SizedBox(height: 28),

        // Section: Codex.
        _SectionTitle(title: context.l10n.ui_codex_title),
        const SizedBox(height: 12),
        _CodexCard(legacy: legacy),

        const SizedBox(height: 28),

        // Leaderboards button.
        _buildLeaderboardsButton(context),
        const SizedBox(height: 28),

        // Section 4: Voyage log.
        _SectionTitle(title: context.l10n.ui_legacy_voyageLog),
        const SizedBox(height: 12),
        _VoyageLog(logs: voyageLogs),

        const SizedBox(height: 40),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final legacy = ref.watch(legacyProvider);
    final voyageLogs = legacy.voyageLogs;
    final screen = ScreenInfo.of(context);

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: RepaintBoundary(
              child: AnimatedBuilder(
                animation: _starController,
                builder: (_, __) => Semantics(
                  label: 'Animated star field background',
                  excludeSemantics: true,
                  child: CustomPaint(
                    painter: StarFieldPainter(
                      animationValue: _starController.value,
                      farStarCount: 60,
                      midStarCount: 20,
                      nearStarCount: 8,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Content.
          SafeArea(
            bottom: false,
            child: ResponsiveContent(
              child: Column(
              children: [
                // Header.
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      IconButton(
                        tooltip: 'Back',
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: _kAccent,
                          size: 22,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          context.l10n.ui_legacy_title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screen.scaledFontSize(24),
                            fontWeight: FontWeight.bold,
                            color: _kAccent,
                            letterSpacing: 4,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48), // Balance back button.
                    ],
                  ),
                ),

                // Decorative line.
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 8,
                  ),
                  child: Container(
                    height: 1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          _kAccent.withValues(alpha: 0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                // Scrollable sections.
                Expanded(
                  child: _buildSections(context, screen, legacy, voyageLogs),
                ),

                // Banner ad.
                PremiumAdGate(
                  child: AdaptiveBannerAd(key: ValueKey('legacy_banner_$_adRefreshCount')),
                ),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Section title ───────────────────────────────────────────────────────────

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 16,
          decoration: BoxDecoration(
            color: _kAccent,
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(color: _kAccent.withValues(alpha: 0.5), blurRadius: 6),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            color: _kAccent.withValues(alpha: 0.8),
            fontSize: 13,
            fontWeight: FontWeight.w700,
            letterSpacing: 3,
          ),
        ),
      ],
    );
  }
}

// ── Stats overview ──────────────────────────────────────────────────────────

class _StatsOverview extends StatelessWidget {
  const _StatsOverview({required this.legacy});

  final LegacyData legacy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _StatColumn(label: context.l10n.ui_legacy_voyages, value: '${legacy.totalVoyages}'),
          _StatDivider(),
          _StatColumn(label: context.l10n.ui_legacy_bestScore, value: '${legacy.bestScore}'),
          _StatDivider(),
          _StatColumn(
            label: context.l10n.ui_legacy_legacyPts,
            value: '${legacy.legacyPoints}',
            valueColor: _kAccent,
          ),
        ],
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  const _StatColumn({
    required this.label,
    required this.value,
    this.valueColor = Colors.white,
  });

  final String label;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: screen.scaledFontSize(28),
            fontWeight: FontWeight.bold,
            color: valueColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white.withValues(alpha: 0.5),
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _StatDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 40,
      color: _kAccent.withValues(alpha: 0.15),
    );
  }
}

// ── High scores table ────────────────────────────────────────────────────────

class _HighScoresTable extends StatelessWidget {
  const _HighScoresTable({required this.scores});

  final List<HighScoreEntry> scores;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: List.generate(scores.length, (i) {
          final entry = scores[i];
          final isTop = i == 0;
          final color = isTop
              ? const Color(0xFFFFD700)
              : i < 3
              ? _kAccent
              : Colors.white.withValues(alpha: 0.6);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                SizedBox(
                  width: 32,
                  child: Text(
                    '#${i + 1}',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: color.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                // Seed code (dim, small).
                SizedBox(
                  width: 60,
                  child: Text(
                    entry.seedCode,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 10,
                      letterSpacing: 1,
                      color: Colors.white.withValues(alpha: 0.25),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: _kAccent.withValues(alpha: 0.08),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${entry.score}',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: isTop ? 22 : 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                    shadows: isTop
                        ? [
                            Shadow(
                              color: const Color(
                                0xFFFFD700,
                              ).withValues(alpha: 0.5),
                              blurRadius: 8,
                            ),
                          ]
                        : null,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

// ── Daily section ───────────────────────────────────────────────────────────

class _DailySection extends ConsumerWidget {
  const _DailySection({required this.legacy});

  final LegacyData legacy;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dailyPlayed = ref.watch(dailyPlayedProvider);
    final played = dailyPlayed.valueOrNull ?? false;

    // Today's date for display.
    final now = DateTime.now().toUtc();
    final months = [
      context.l10n.ui_monthJan,
      context.l10n.ui_monthFeb,
      context.l10n.ui_monthMar,
      context.l10n.ui_monthApr,
      context.l10n.ui_monthMay,
      context.l10n.ui_monthJun,
      context.l10n.ui_monthJul,
      context.l10n.ui_monthAug,
      context.l10n.ui_monthSep,
      context.l10n.ui_monthOct,
      context.l10n.ui_monthNov,
      context.l10n.ui_monthDec,
    ];
    final dateLabel = '${months[now.month - 1]} ${now.day}';
    final todayStr =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

    // Find today's daily score.
    final todayScore = legacy.dailyScores
        .where((e) => e.date == todayStr)
        .toList();

    // Historical daily scores (excluding today), most recent first.
    final history = legacy.dailyScores
        .where((e) => e.date != null && e.date != todayStr)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 3,
              height: 16,
              decoration: BoxDecoration(
                color: _kDailyAccent,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: _kDailyAccent.withValues(alpha: 0.5),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "TODAY'S DAILY",
              style: TextStyle(
                color: _kDailyAccent.withValues(alpha: 0.8),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _kBgColor.withValues(alpha: 0.85),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: _kDailyAccent.withValues(alpha: 0.3)),
          ),
          child: Column(
            children: [
              // Seed code + date header.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: _kDailyAccent.withValues(alpha: 0.7),
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        dateLabel,
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: _kDailyAccent,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'SEED: ${dailySeedCode()}',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 11,
                      color: Colors.white.withValues(alpha: 0.4),
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              // Today's score or status.
              if (played && todayScore.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${todayScore.first.score}',
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: ScreenInfo.of(context).scaledFontSize(36),
                        fontWeight: FontWeight.bold,
                        color: _kDailyAccent,
                        shadows: [
                          Shadow(
                            color: _kDailyAccent.withValues(alpha: 0.5),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: _kDailyAccent.withValues(alpha: 0.15),
                        border: Border.all(
                          color: _kDailyAccent.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Text(
                        context.l10n.ui_legacy_completed,
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: _kDailyAccent.withValues(alpha: 0.9),
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                )
              else
                Text(
                  context.l10n.ui_legacy_notYetPlayed,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.3),
                    letterSpacing: 2,
                  ),
                ),
            ],
          ),
        ),

        // Historical daily scores.
        if (history.isNotEmpty) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: _kBgColor.withValues(alpha: 0.85),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: _kDailyAccent.withValues(alpha: 0.15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.ui_legacy_dailyHistory,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 10,
                    color: _kDailyAccent.withValues(alpha: 0.5),
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                ...history.take(10).map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 72,
                          child: Text(
                            entry.date ?? '',
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 11,
                              color: Colors.white.withValues(alpha: 0.3),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          child: Text(
                            entry.seedCode,
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 10,
                              letterSpacing: 1,
                              color: Colors.white.withValues(alpha: 0.2),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: _kDailyAccent.withValues(alpha: 0.06),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${entry.score}',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: _kDailyAccent.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

// ── Upgrades grid ───────────────────────────────────────────────────────────

class _UpgradeInfo {
  final String id;
  final String name;
  final String description;
  final int cost;
  final IconData icon;

  const _UpgradeInfo({
    required this.id,
    required this.name,
    required this.description,
    required this.cost,
    required this.icon,
  });
}

const _upgrades = [
  _UpgradeInfo(
    id: 'extra_probe',
    name: 'Extra Probes',
    description: 'Start with +2 probes',
    cost: 40,
    icon: Icons.satellite_alt_outlined,
  ),
  _UpgradeInfo(
    id: 'reinforced_hull',
    name: 'Reinforced Hull',
    description: 'Start with +10% hull',
    cost: 50,
    icon: Icons.shield_outlined,
  ),
  _UpgradeInfo(
    id: 'cryo_shield',
    name: 'Cryo Shield',
    description: 'Start with +10% cryopods',
    cost: 60,
    icon: Icons.ac_unit,
  ),
  _UpgradeInfo(
    id: 'advanced_scanner',
    name: 'Advanced Scanner',
    description: 'Start with +10% scanner',
    cost: 75,
    icon: Icons.radar,
  ),
  _UpgradeInfo(
    id: 'culture_archive',
    name: 'Cultural Archive',
    description: 'Start with +10% culture',
    cost: 80,
    icon: Icons.menu_book_outlined,
  ),
  _UpgradeInfo(
    id: 'tech_boost',
    name: 'Tech Boost',
    description: 'Start with +10% tech',
    cost: 90,
    icon: Icons.memory,
  ),
  _UpgradeInfo(
    id: 'warp_nav',
    name: 'Warp Navigation',
    description: 'Start with +10% nav',
    cost: 100,
    icon: Icons.explore_outlined,
  ),
  _UpgradeInfo(
    id: 'star_charts',
    name: 'Star Charts',
    description: 'Start with +5% nav and scanner',
    cost: 120,
    icon: Icons.map_outlined,
  ),
];

class _UpgradesGrid extends StatelessWidget {
  const _UpgradesGrid({required this.legacy, required this.onPurchase});

  final LegacyData legacy;
  final void Function(String id, int cost) onPurchase;

  @override
  Widget build(BuildContext context) {
    final screen = ScreenInfo.of(context);
    final crossAxisCount = (screen.width / 200).floor().clamp(2, 4);
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: crossAxisCount > 2 ? 0.95 : 0.85,
      ),
      itemCount: _upgrades.length,
      itemBuilder: (context, index) {
        final upgrade = _upgrades[index];
        final purchased = legacy.upgrades[upgrade.id] == true;
        final canAfford = legacy.legacyPoints >= upgrade.cost;

        return _UpgradeCard(
          upgrade: upgrade,
          purchased: purchased,
          canAfford: canAfford,
          onTap: purchased || !canAfford
              ? null
              : () => onPurchase(upgrade.id, upgrade.cost),
        );
      },
    );
  }
}

class _UpgradeCard extends StatelessWidget {
  const _UpgradeCard({
    required this.upgrade,
    required this.purchased,
    required this.canAfford,
    this.onTap,
  });

  final _UpgradeInfo upgrade;
  final bool purchased;
  final bool canAfford;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final borderColor = purchased
        ? _kAccent.withValues(alpha: 0.6)
        : canAfford
        ? _kAccent.withValues(alpha: 0.3)
        : Colors.white.withValues(alpha: 0.1);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: purchased
              ? _kAccent.withValues(alpha: 0.08)
              : _kBgColor.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
          boxShadow: purchased
              ? [
                  BoxShadow(
                    color: _kAccent.withValues(alpha: 0.1),
                    blurRadius: 12,
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  upgrade.icon,
                  color: purchased ? _kAccent : Colors.white54,
                  size: 28,
                ),
                if (purchased)
                  const Icon(Icons.check_circle, color: _kAccent, size: 20)
                else
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: canAfford
                          ? _kAccent.withValues(alpha: 0.15)
                          : Colors.white.withValues(alpha: 0.05),
                    ),
                    child: Text(
                      '${upgrade.cost} LP',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: canAfford
                            ? _kAccent
                            : Colors.white.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
              ],
            ),
            const Spacer(),
            Text(
              upgrade.name,
              style: TextStyle(
                color: purchased ? _kAccent : Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              upgrade.description,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.5),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Achievements list ───────────────────────────────────────────────────────

class _AchievementDef {
  final String id;
  final String name;
  final String description;
  final IconData icon;

  const _AchievementDef({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
  });
}

const _achievements = [
  _AchievementDef(
    id: 'first_landing',
    name: 'First Landing',
    description: 'Complete your first voyage',
    icon: Icons.flag_outlined,
  ),
  _AchievementDef(
    id: 'golden_age',
    name: 'Golden Age',
    description: 'Achieve a Golden Age ending (95+)',
    icon: Icons.star_outline,
  ),
  _AchievementDef(
    id: 'survivor',
    name: 'Survivor',
    description: 'Land with a system below 10%',
    icon: Icons.favorite_outline,
  ),
  _AchievementDef(
    id: 'explorer',
    name: 'Explorer',
    description: 'Complete 10 voyages',
    icon: Icons.rocket_launch_outlined,
  ),
  _AchievementDef(
    id: 'perfectionist',
    name: 'Perfectionist',
    description: 'Score 95+',
    icon: Icons.workspace_premium_outlined,
  ),
  _AchievementDef(
    id: 'death_world_survivor',
    name: 'Death World Survivor',
    description: 'Land on a Death World and survive',
    icon: Icons.whatshot_outlined,
  ),
  _AchievementDef(
    id: 'full_crew',
    name: 'Full Crew',
    description: 'Land with 1000+ colonists',
    icon: Icons.groups_outlined,
  ),
  _AchievementDef(
    id: 'probe_master',
    name: 'Probe Master',
    description: 'Use all 10 probes in a single voyage',
    icon: Icons.satellite_alt_outlined,
  ),
  _AchievementDef(
    id: 'iron_hull',
    name: 'Iron Hull',
    description: 'Land with hull above 90%',
    icon: Icons.shield_outlined,
  ),
  _AchievementDef(
    id: 'no_scan',
    name: 'Leap of Faith',
    description: 'Land after scanning only 1 planet',
    icon: Icons.visibility_off_outlined,
  ),
];

class _AchievementsList extends StatelessWidget {
  const _AchievementsList({required this.legacy});

  final LegacyData legacy;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _achievements.map((ach) {
        final unlocked = legacy.achievements.contains(ach.id);
        return _AchievementTile(achievement: ach, unlocked: unlocked);
      }).toList(),
    );
  }
}

class _AchievementTile extends StatelessWidget {
  const _AchievementTile({required this.achievement, required this.unlocked});

  final _AchievementDef achievement;
  final bool unlocked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: unlocked
              ? _kAccent.withValues(alpha: 0.4)
              : Colors.white.withValues(alpha: 0.08),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: unlocked
                  ? _kAccent.withValues(alpha: 0.15)
                  : Colors.white.withValues(alpha: 0.05),
              border: Border.all(
                color: unlocked
                    ? _kAccent.withValues(alpha: 0.5)
                    : Colors.white.withValues(alpha: 0.1),
              ),
            ),
            child: Icon(
              unlocked ? achievement.icon : Icons.lock_outline,
              color: unlocked ? _kAccent : Colors.white.withValues(alpha: 0.3),
              size: 20,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  achievement.name,
                  style: TextStyle(
                    color: unlocked ? Colors.white : Colors.white54,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  achievement.description,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.4),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          if (unlocked)
            const Icon(Icons.check_circle, color: _kAccent, size: 20),
        ],
      ),
    );
  }
}

// ── Voyage log ───────────────────────────────────────────────────────────

class _VoyageLog extends StatefulWidget {
  const _VoyageLog({required this.logs});

  final List<VoyageLogEntry> logs;

  @override
  State<_VoyageLog> createState() => _VoyageLogState();
}

class _VoyageLogState extends State<_VoyageLog> {
  final _expanded = <int>{};

  static const _tierColors = <String, Color>{
    'Paradise': Color(0xFF00E5FF),
    'Garden World': Color(0xFF66BB6A),
    'Temperate': Color(0xFF81C784),
    'Marginal': Color(0xFFFFB74D),
    'Hostile': Color(0xFFFF7043),
    'Death World': Color(0xFFFF1744),
  };

  @override
  Widget build(BuildContext context) {
    if (widget.logs.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _kBgColor.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        ),
        child: Text(
          'No voyages recorded yet.\nBegin your first voyage to start the log.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.4),
            fontSize: 14,
            height: 1.5,
          ),
        ),
      );
    }

    return Container(
      constraints: const BoxConstraints(maxHeight: 400),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(12),
        itemCount: widget.logs.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (_, index) {
          final logIndex = widget.logs.length - 1 - index;
          final entry = widget.logs[logIndex];
          final isExpanded = _expanded.contains(logIndex);
          final tierColor = entry.isGameOver
              ? const Color(0xFFFF1744)
              : _tierColors[entry.tier] ?? _kAccent;

          return GestureDetector(
            onTap: () => setState(() {
              if (isExpanded) {
                _expanded.remove(logIndex);
              } else {
                _expanded.add(logIndex);
              }
            }),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: tierColor.withValues(alpha: isExpanded ? 0.08 : 0.04),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: tierColor.withValues(alpha: isExpanded ? 0.3 : 0.12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Collapsed header row.
                  Row(
                    children: [
                      // Voyage number badge.
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: tierColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'V${logIndex + 1}',
                          style: TextStyle(
                            color: tierColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Planet name or "SHIP LOST".
                      Expanded(
                        child: Text(
                          entry.isGameOver
                              ? 'SHIP LOST'
                              : entry.planetName.isNotEmpty
                                  ? entry.planetName
                                  : 'Unknown',
                          style: TextStyle(
                            color: entry.isGameOver
                                ? const Color(0xFFFF1744)
                                : Colors.white.withValues(alpha: 0.85),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // Score.
                      if (!entry.isGameOver && entry.score > 0)
                        Text(
                          '${entry.score}',
                          style: TextStyle(
                            color: tierColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'monospace',
                          ),
                        ),
                      const SizedBox(width: 8),
                      Icon(
                        isExpanded
                            ? Icons.expand_less
                            : Icons.expand_more,
                        color: Colors.white.withValues(alpha: 0.3),
                        size: 20,
                      ),
                    ],
                  ),
                  // Tier + seed subtitle.
                  if (!entry.isGameOver && entry.tier.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 2),
                      child: Text(
                        entry.tier,
                        style: TextStyle(
                          color: tierColor.withValues(alpha: 0.7),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  if (entry.isGameOver &&
                      entry.gameOverReason != null &&
                      entry.gameOverReason!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 2),
                      child: Text(
                        entry.gameOverReason!,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                          fontSize: 11,
                        ),
                      ),
                    ),

                  // Expanded details.
                  if (isExpanded) ...[
                    const SizedBox(height: 12),
                    Divider(
                        color: tierColor.withValues(alpha: 0.15), height: 1),
                    const SizedBox(height: 12),
                    // Stats grid.
                    _StatRow(
                      left: 'Encounters',
                      leftValue: '${entry.encounterCount}',
                      right: 'Colonists',
                      rightValue: '${entry.colonistsLanded}',
                    ),
                    const SizedBox(height: 6),
                    _StatRow(
                      left: 'Scanned',
                      leftValue: '${entry.planetsScanned}',
                      right: 'Skipped',
                      rightValue: '${entry.planetsSkipped}',
                    ),
                    const SizedBox(height: 6),
                    _StatRow(
                      left: 'Fuel used',
                      leftValue: '${entry.fuelConsumed}',
                      right: 'Energy used',
                      rightValue: '${entry.energyConsumed}',
                    ),
                    if (entry.totalDamageTaken > 0) ...[
                      const SizedBox(height: 6),
                      _StatRow(
                        left: 'Damage taken',
                        leftValue:
                            '${(entry.totalDamageTaken * 100).round()}%',
                        right: '',
                        rightValue: '',
                      ),
                    ],

                    // Planet details.
                    if (!entry.isGameOver && entry.surfaceFeatures.isNotEmpty) ...[
                      const SizedBox(height: 10),
                      Divider(color: tierColor.withValues(alpha: 0.10), height: 1),
                      const SizedBox(height: 10),
                      // Landscape.
                      if (entry.landscapeDescription != null &&
                          entry.landscapeDescription!.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            entry.landscapeDescription!,
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.5),
                              fontSize: 11,
                              fontStyle: FontStyle.italic,
                              height: 1.4,
                            ),
                          ),
                        ),
                      // Colony info row.
                      if (entry.governmentType != null)
                        _DetailChip(label: entry.governmentType!),
                      if (entry.cultureLevel != null)
                        _DetailChip(label: entry.cultureLevel!),
                      if (entry.technologyLevel != null)
                        _DetailChip(label: entry.technologyLevel!),
                      if (entry.nativeRelations != null &&
                          entry.nativeDescription != null &&
                          !entry.nativeDescription!.contains('No intelligent'))
                        _DetailChip(label: entry.nativeRelations!),
                      // Moons & rings.
                      if (entry.moonTypes.isNotEmpty || entry.ringType != null) ...[
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: [
                            if (entry.ringType != null)
                              _MiniChip(
                                label: '${entry.ringType!} rings',
                                color: const Color(0xFFCE93D8),
                              ),
                            for (final moon in entry.moonTypes)
                              _MiniChip(
                                label: '$moon moon',
                                color: const Color(0xFF90A4AE),
                              ),
                          ],
                        ),
                      ],
                      // Surface features.
                      if (entry.surfaceFeatures.isNotEmpty) ...[
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: [
                            for (final f in entry.surfaceFeatures)
                              _MiniChip(
                                label: _featureLabel(f),
                                color: tierColor,
                              ),
                          ],
                        ),
                      ],
                      if (entry.landedOnMoon) ...[
                        const SizedBox(height: 6),
                        _MiniChip(
                          label: 'Landed on moon',
                          color: const Color(0xFF81D4FA),
                        ),
                      ],
                    ],

                    // Seed code with copy.
                    if (entry.seed != 0) ...[
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: entry.seedCode));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Seed ${entry.seedCode} copied'),
                              duration: const Duration(seconds: 1),
                              backgroundColor:
                                  _kAccent.withValues(alpha: 0.9),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.copy,
                                color: _kAccent.withValues(alpha: 0.5),
                                size: 14),
                            const SizedBox(width: 6),
                            Text(
                              'SEED: ${entry.seedCode}',
                              style: TextStyle(
                                color: _kAccent.withValues(alpha: 0.6),
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                                fontFamily: 'monospace',
                              ),
                            ),
                            if (entry.isDaily) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: _kDailyAccent
                                      .withValues(alpha: 0.15),
                                  borderRadius:
                                      BorderRadius.circular(4),
                                  border: Border.all(
                                      color: _kDailyAccent
                                          .withValues(alpha: 0.3)),
                                ),
                                child: const Text(
                                  'DAILY',
                                  style: TextStyle(
                                    color: _kDailyAccent,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({
    required this.left,
    required this.leftValue,
    required this.right,
    required this.rightValue,
  });

  final String left;
  final String leftValue;
  final String right;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                left,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.4),
                  fontSize: 11,
                ),
              ),
              const Spacer(),
              Text(
                leftValue,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'monospace',
                ),
              ),
            ],
          ),
        ),
        if (right.isNotEmpty) ...[
          const SizedBox(width: 24),
          Expanded(
            child: Row(
              children: [
                Text(
                  right,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.4),
                    fontSize: 11,
                  ),
                ),
                const Spacer(),
                Text(
                  rightValue,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'monospace',
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _DetailChip extends StatelessWidget {
  const _DetailChip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Icon(Icons.arrow_right,
              color: _kAccent.withValues(alpha: 0.3), size: 14),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6),
                fontSize: 11,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniChip extends StatelessWidget {
  const _MiniChip({required this.label, required this.color});
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.20)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color.withValues(alpha: 0.7),
          fontSize: 9,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

String _featureLabel(String key) {
  // Use Planet's static map if available, else humanize the key.
  const labels = {
    'plant_life': 'Plant Life',
    'edible_plants': 'Edible Plants',
    'poisonous_plants': 'Poisonous Plants',
    'unicellular_life': 'Unicellular Life',
    'dangerous_fauna': 'Dangerous Fauna',
    'tameable_fauna': 'Tameable Fauna',
    'airtight_caves': 'Airtight Caves',
    'insulated_caves': 'Insulated Caves',
    'outstanding_beauty': 'Outstanding Beauty',
    'outstanding_ugliness': 'Outstanding Ugliness',
    'ancient_ruins': 'Ancient Ruins',
    'monuments': 'Monuments',
    'high_rotation': 'Rapid Rotation',
    'low_rotation': 'Slow Rotation',
    'volcanic_activity': 'Volcanic Activity',
    'tectonic_instability': 'Tectonic Instability',
    'electrical_storms': 'Electrical Storms',
    'toxic_spores': 'Toxic Spores',
    'deep_oceans': 'Deep Oceans',
    'geothermal_vents': 'Geothermal Vents',
    'strong_magnetosphere': 'Strong Magnetosphere',
    'weak_magnetosphere': 'Weak Magnetosphere',
    'megafauna': 'Megafauna',
    'symbiotic_organisms': 'Symbiotic Organisms',
    'bioluminescent_life': 'Bioluminescent Life',
    'floating_islands': 'Floating Islands',
    'crystal_caverns': 'Crystal Caverns',
    'fertile_soil': 'Fertile Soil',
    'helium3_deposits': 'Helium-3 Deposits',
    'medicinal_flora': 'Medicinal Flora',
    'singing_crystals': 'Singing Crystals',
  };
  return labels[key] ?? key.replaceAll('_', ' ');
}

// ── Codex card ───────────────────────────────────────────────────────────────

class _CodexCard extends StatelessWidget {
  const _CodexCard({required this.legacy});

  final LegacyData legacy;

  @override
  Widget build(BuildContext context) {
    final discovered = legacy.discoveredFeatures;
    final total = codexEntries.length;
    final count = codexEntries.keys.where((k) => discovered.contains(k)).length;
    final progress = total > 0 ? count / total : 0.0;

    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/codex'),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _kBgColor.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Icon(
              Icons.menu_book_outlined,
              color: _kAccent.withValues(alpha: 0.7),
              size: 28,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.ui_codex_discovered(count, total),
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withValues(alpha: 0.8),
                      letterSpacing: 1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 3,
                      backgroundColor: Colors.white.withValues(alpha: 0.1),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(_kAccent),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Icon(
              Icons.chevron_right,
              color: _kAccent.withValues(alpha: 0.5),
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
