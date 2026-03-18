import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:starbound_exodus/models/legacy.dart';
import 'package:starbound_exodus/providers/game_providers.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Legacy Hub -- meta-progression screen with upgrades, achievements, and logs.
class LegacyScreen extends ConsumerStatefulWidget {
  const LegacyScreen({super.key});

  @override
  ConsumerState<LegacyScreen> createState() => _LegacyScreenState();
}

class _LegacyScreenState extends ConsumerState<LegacyScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _starController;

  @override
  void initState() {
    super.initState();
    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _starController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final legacy = ref.watch(legacyProvider);
    final voyageLogs = <String>[];

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (_, __) => CustomPaint(
                painter: StarFieldPainter(
                  animationValue: _starController.value,
                  farStarCount: 60,
                  midStarCount: 20,
                  nearStarCount: 8,
                ),
              ),
            ),
          ),

          // Content.
          SafeArea(
            child: Column(
              children: [
                // Header.
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.arrow_back_ios,
                            color: _kAccent, size: 22),
                      ),
                      const Expanded(
                        child: Text(
                          'LEGACY HUB',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
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
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      const SizedBox(height: 16),

                      // Section 1: Stats overview.
                      _SectionTitle(title: 'COMMANDER STATS'),
                      const SizedBox(height: 12),
                      _StatsOverview(legacy: legacy),

                      const SizedBox(height: 28),

                      // Section 2: Upgrades grid.
                      _SectionTitle(title: 'UPGRADES'),
                      const SizedBox(height: 12),
                      _UpgradesGrid(
                        legacy: legacy,
                        onPurchase: (id, cost) {
                          ref
                              .read(legacyProvider.notifier)
                              .purchaseUpgrade(id, cost: cost);
                        },
                      ),

                      const SizedBox(height: 28),

                      // Section 3: Achievements.
                      _SectionTitle(title: 'ACHIEVEMENTS'),
                      const SizedBox(height: 12),
                      _AchievementsList(legacy: legacy),

                      const SizedBox(height: 28),

                      // Section 4: Captain's log.
                      _SectionTitle(title: "CAPTAIN'S LOG"),
                      const SizedBox(height: 12),
                      _CaptainsLog(logs: voyageLogs),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
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
              BoxShadow(
                color: _kAccent.withValues(alpha: 0.5),
                blurRadius: 6,
              ),
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
          _StatColumn(
              label: 'VOYAGES', value: '${legacy.totalVoyages}'),
          _StatDivider(),
          _StatColumn(label: 'BEST SCORE', value: '${legacy.bestScore}'),
          _StatDivider(),
          _StatColumn(
            label: 'LEGACY PTS',
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
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 28,
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
    id: 'reinforced_hull',
    name: 'Reinforced Hull',
    description: 'Start with +10% hull',
    cost: 50,
    icon: Icons.shield_outlined,
  ),
  _UpgradeInfo(
    id: 'advanced_scanner',
    name: 'Advanced Scanner',
    description: 'Start with +10% scanner',
    cost: 50,
    icon: Icons.radar,
  ),
  _UpgradeInfo(
    id: 'navigation_ai',
    name: 'Navigation AI',
    description: 'Start with +10% nav',
    cost: 50,
    icon: Icons.explore_outlined,
  ),
  _UpgradeInfo(
    id: 'cryo_stabilizer',
    name: 'Cryo Stabilizer',
    description: 'Start with +10% cryopods',
    cost: 50,
    icon: Icons.ac_unit,
  ),
  _UpgradeInfo(
    id: 'cultural_archive',
    name: 'Cultural Archive',
    description: 'Start with +10% culture',
    cost: 50,
    icon: Icons.menu_book_outlined,
  ),
  _UpgradeInfo(
    id: 'tech_backup',
    name: 'Tech Backup',
    description: 'Start with +10% tech',
    cost: 50,
    icon: Icons.memory,
  ),
  _UpgradeInfo(
    id: 'extra_encounter',
    name: 'Extra Encounter',
    description: '+1 max encounter per voyage',
    cost: 100,
    icon: Icons.add_circle_outline,
  ),
  _UpgradeInfo(
    id: 'emergency_reserve',
    name: 'Emergency Reserve',
    description: 'Start with emergency repair',
    cost: 150,
    icon: Icons.health_and_safety_outlined,
  ),
];

class _UpgradesGrid extends StatelessWidget {
  const _UpgradesGrid({
    required this.legacy,
    required this.onPurchase,
  });

  final LegacyData legacy;
  final void Function(String id, int cost) onPurchase;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.85,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
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
    description: 'Achieve a Golden Age ending',
    icon: Icons.star_outline,
  ),
  _AchievementDef(
    id: 'survivor',
    name: 'Survivor',
    description: 'Complete a voyage with a system below 10%',
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
  const _AchievementTile({
    required this.achievement,
    required this.unlocked,
  });

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

// ── Captain's log ───────────────────────────────────────────────────────────

class _CaptainsLog extends StatelessWidget {
  const _CaptainsLog({required this.logs});

  final List<String> logs;

  @override
  Widget build(BuildContext context) {
    if (logs.isEmpty) {
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
      constraints: const BoxConstraints(maxHeight: 300),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.2)),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        itemCount: logs.length,
        separatorBuilder: (_, __) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Divider(
            color: _kAccent.withValues(alpha: 0.1),
            height: 1,
          ),
        ),
        itemBuilder: (_, index) {
          final logIndex = logs.length - 1 - index; // Most recent first.
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'V${logIndex + 1}',
                style: TextStyle(
                  color: _kAccent.withValues(alpha: 0.6),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  logs[logIndex],
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
