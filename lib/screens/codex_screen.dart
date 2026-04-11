import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stellar_broadcast/data/codex_data.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show legacyProvider;
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/planet_l10n.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Effect-key to human-readable label mapping.
const _effectLabels = {
  'resources': 'Resources',
  'tech': 'Tech',
  'technology': 'Tech',
  'culture': 'Culture',
  'population': 'Population',
  'construction': 'Construction',
  'water': 'Water',
  'atmosphere': 'Atmosphere',
  'temperature': 'Temp',
  'landing': 'Landing',
};

class CodexScreen extends ConsumerWidget {
  const CodexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final legacy = ref.watch(legacyProvider);
    final discovered = legacy.discoveredFeatures;
    final allEntries = codexEntries;
    final total = allEntries.length;
    final discoveredCount =
        allEntries.keys.where((k) => discovered.contains(k)).length;
    final progress = total > 0 ? discoveredCount / total : 0.0;

    // Group entries by category.
    final surfaceEntries = <String, CodexEntry>{};
    final moonEntries = <String, CodexEntry>{};
    final ringEntries = <String, CodexEntry>{};

    for (final entry in allEntries.entries) {
      switch (entry.value.category) {
        case 'surface':
          surfaceEntries[entry.key] = entry.value;
        case 'moon':
          moonEntries[entry.key] = entry.value;
        case 'ring':
          ringEntries[entry.key] = entry.value;
      }
    }

    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field background.
          Positioned.fill(
            child: RepaintBoundary(
              child: _AnimatedStarField(),
            ),
          ),

          // Content.
          SafeArea(
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
                          context.l10n.ui_codex_title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: ScreenInfo.of(context).scaledFontSize(24),
                            fontWeight: FontWeight.bold,
                            color: _kAccent,
                            letterSpacing: 4,
                            fontFamily: 'monospace',
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                    ],
                  ),
                ),

                // Progress.
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: Column(
                    children: [
                      Text(
                        context.l10n
                            .ui_codex_discovered(discoveredCount, total),
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: _kAccent.withValues(alpha: 0.7),
                          letterSpacing: 2,
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

                // Decorative line.
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
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

                      // Surface features.
                      _SectionTitle(
                          title: context.l10n.ui_codex_surfaceFeatures),
                      const SizedBox(height: 12),
                      ...surfaceEntries.entries.map((e) => _CodexEntryCard(
                            entryKey: e.key,
                            entry: e.value,
                            discovered: discovered.contains(e.key),
                          )),

                      const SizedBox(height: 24),

                      // Moon types.
                      _SectionTitle(title: context.l10n.ui_codex_moonTypes),
                      const SizedBox(height: 12),
                      ...moonEntries.entries.map((e) => _CodexEntryCard(
                            entryKey: e.key,
                            entry: e.value,
                            discovered: discovered.contains(e.key),
                          )),

                      const SizedBox(height: 24),

                      // Ring types.
                      _SectionTitle(title: context.l10n.ui_codex_ringTypes),
                      const SizedBox(height: 12),
                      ...ringEntries.entries.map((e) => _CodexEntryCard(
                            entryKey: e.key,
                            entry: e.value,
                            discovered: discovered.contains(e.key),
                          )),

                      const SizedBox(height: 40),
                    ],
                  ),
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

// ── Animated star field ──────────────────────────────────────────────────────

class _AnimatedStarField extends StatefulWidget {
  @override
  State<_AnimatedStarField> createState() => _AnimatedStarFieldState();
}

class _AnimatedStarFieldState extends State<_AnimatedStarField>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) => Semantics(
        label: 'Animated star field background',
        excludeSemantics: true,
        child: CustomPaint(
          painter: StarFieldPainter(
            animationValue: _controller.value,
            farStarCount: 60,
            midStarCount: 20,
            nearStarCount: 8,
          ),
        ),
      ),
    );
  }
}

// ── Section title ────────────────────────────────────────────────────────────

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
                  color: _kAccent.withValues(alpha: 0.5), blurRadius: 6),
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

// ── Codex entry card ─────────────────────────────────────────────────────────

class _CodexEntryCard extends StatelessWidget {
  const _CodexEntryCard({
    required this.entryKey,
    required this.entry,
    required this.discovered,
  });

  final String entryKey;
  final CodexEntry entry;
  final bool discovered;

  String _localizedName(BuildContext context) {
    switch (entry.category) {
      case 'surface':
        return localizedSurfaceFeature(context.l10n, entryKey);
      case 'moon':
        // Moon keys like 'barren_moon' -> l10n key 'moon_barren' etc.
        final shortKey = entryKey.replaceAll('_moon', '');
        return _moonLabel(context, shortKey);
      case 'ring':
        final shortKey = entryKey.replaceAll('_ring', '');
        return _ringLabel(context, shortKey);
      default:
        return entryKey;
    }
  }

  String _moonLabel(BuildContext context, String key) {
    // Fallback to capitalized key if no l10n match.
    try {
      switch (key) {
        case 'barren':
          return context.l10n.moon_barren;
        case 'metal_rich':
          return context.l10n.moon_metalRich;
        case 'metalRich':
          return context.l10n.moon_metalRich;
        case 'unstable':
          return context.l10n.moon_unstable;
        case 'habitable':
          return context.l10n.moon_habitable;
        case 'ice':
          return context.l10n.moon_ice;
        default:
          return _capitalize(key);
      }
    } catch (_) {
      return _capitalize(key);
    }
  }

  String _ringLabel(BuildContext context, String key) {
    try {
      switch (key) {
        case 'dust':
          return context.l10n.ring_dust;
        case 'ice':
          return context.l10n.ring_ice;
        case 'metallic':
          return context.l10n.ring_metallic;
        case 'rocky':
          return context.l10n.ring_rocky;
        default:
          return _capitalize(key);
      }
    } catch (_) {
      return _capitalize(key);
    }
  }

  static String _capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}'.replaceAll('_', ' ');

  @override
  Widget build(BuildContext context) {
    final name = _localizedName(context);

    if (!discovered) {
      return _LockedCard(name: name);
    }

    return _DiscoveredCard(
      name: name,
      entry: entry,
    );
  }
}

// ── Discovered card ──────────────────────────────────────────────────────────

class _DiscoveredCard extends StatelessWidget {
  const _DiscoveredCard({required this.name, required this.entry});

  final String name;
  final CodexEntry entry;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          // Cyan accent bar on the left.
          Container(
            width: 3,
            decoration: BoxDecoration(
              color: _kAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: Container(
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Feature name.
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 8),

          // Effect chips.
          if (entry.effects.isNotEmpty)
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: entry.effects.entries.map((e) {
                final label = _effectLabels[e.key] ?? _capitalize(e.key);
                final value = e.value;
                final isPositive = value > 0;
                final sign = isPositive ? '+' : '';
                final color = isPositive
                    ? const Color(0xFF4CAF50)
                    : const Color(0xFFEF5350);
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: color.withValues(alpha: 0.3)),
                  ),
                  child: Text(
                    '$sign${value.toStringAsFixed(1)} $label',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                );
              }).toList(),
            ),

          const SizedBox(height: 6),

          // Synergy line.
          Text(
            entry.synergies.isNotEmpty
                ? context.l10n.ui_codex_synergy(entry.synergies.join(', '))
                : context.l10n.ui_codex_noSynergy,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              color: entry.synergies.isNotEmpty
                  ? _kAccent.withValues(alpha: 0.8)
                  : Colors.white.withValues(alpha: 0.3),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    ),
          ),
        ],
      ),
    );
  }

  static String _capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}'.replaceAll('_', ' ');
}

// ── Locked card ──────────────────────────────────────────────────────────────

class _LockedCard extends StatelessWidget {
  const _LockedCard({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lock_outline,
                size: 16,
                color: Colors.white.withValues(alpha: 0.4),
              ),
              const SizedBox(width: 8),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.4),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            context.l10n.ui_codex_locked,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.3),
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
