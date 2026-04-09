import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_iap/quickapps_iap.dart';

import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/providers/game_providers.dart' show localeProvider, statsOnLeftProvider;
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/screens/premium_paywall.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/widgets/star_field.dart';

const _localeNames = <String, String>{
  'ar': 'العربية',
  'de': 'Deutsch',
  'en': 'English',
  'es': 'Español',
  'fr': 'Français',
  'hi': 'हिन्दी',
  'id': 'Bahasa Indonesia',
  'it': 'Italiano',
  'ja': '日本語',
  'ko': '한국어',
  'ms': 'Bahasa Melayu',
  'nl': 'Nederlands',
  'pl': 'Polski',
  'pt': 'Português',
  'ru': 'Русский',
  'th': 'ไทย',
  'tr': 'Türkçe',
  'vi': 'Tiếng Việt',
  'zh': '简体中文',
  'zh_TW': '繁體中文',
};

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// Settings screen with music, SFX, and haptics controls.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen>
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
                        icon: const Icon(Icons.arrow_back_ios,
                            color: _kAccent, size: 22),
                      ),
                      Expanded(
                        child: Text(
                          context.l10n.ui_settings_title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: _kAccent,
                            letterSpacing: 4,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
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

                // Settings sections.
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      const SizedBox(height: 16),
                      _buildSectionTitle(context.l10n.ui_settings_music),
                      const SizedBox(height: 12),
                      _MusicSection(),
                      const SizedBox(height: 28),
                      _buildSectionTitle(context.l10n.ui_settings_soundEffects),
                      const SizedBox(height: 12),
                      _SfxSection(),
                      const SizedBox(height: 28),
                      _buildSectionTitle(context.l10n.ui_settings_haptics),
                      const SizedBox(height: 12),
                      _HapticsSection(),
                      const SizedBox(height: 28),
                      _buildSectionTitle(context.l10n.ui_settings_language),
                      const SizedBox(height: 12),
                      _LanguageSection(),
                      // Layout preference (only on widescreen).
                      if (ScreenInfo.of(context).screenClass != ScreenClass.compact) ...[
                        const SizedBox(height: 28),
                        _buildSectionTitle('LAYOUT'),
                        const SizedBox(height: 12),
                        _SettingsCard(
                          children: [
                            _StatsPositionToggle(),
                          ],
                        ),
                      ],
                      // Native ad (hidden for premium).
                      const SizedBox(height: 28),
                      PremiumAdGate(child: AdaptiveNativeAd(
                        fallback: AdaptiveBannerAd(
                          size: QaBannerSize.mrec,
                          fallback: AdFallbackBanner(
                            height: 250,
                            onRemoveAds: () => showPremiumPaywall(context),
                          ),
                        ),
                      )),

                      if (!ref.watch(isPremiumProvider)) ...[
                        const SizedBox(height: 28),
                        _buildSectionTitle(context.l10n.ui_settings_premium),
                        const SizedBox(height: 12),
                        _SettingsCard(
                          children: [
                            GestureDetector(
                              onTap: () => showPremiumPaywall(context),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      color: const Color(0xFFFFD740), size: 20),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(
                                      context.l10n.ui_settings_goPremium,
                                      style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.chevron_right,
                                      color: _kAccent.withValues(alpha: 0.5)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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

  Widget _buildSectionTitle(String title) {
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

// ── Music section ────────────────────────────────────────────────────────────

class _MusicSection extends StatefulWidget {
  @override
  State<_MusicSection> createState() => _MusicSectionState();
}

class _MusicSectionState extends State<_MusicSection> {
  final _music = MusicPlayer();

  @override
  Widget build(BuildContext context) {
    return _SettingsCard(
      children: [
        _SettingsToggle(
          label: context.l10n.ui_settings_enabled,
          value: _music.enabled,
          onChanged: (v) => setState(() => _music.enabled = v),
        ),
        const SizedBox(height: 12),
        _SettingsSlider(
          label: context.l10n.ui_settings_volume,
          value: _music.volume,
          enabled: _music.enabled,
          onChanged: (v) => setState(() => _music.volume = v),
        ),
      ],
    );
  }
}

// ── SFX section ──────────────────────────────────────────────────────────────

class _SfxSection extends StatefulWidget {
  @override
  State<_SfxSection> createState() => _SfxSectionState();
}

class _SfxSectionState extends State<_SfxSection> {
  final _sfx = SfxPlayer();

  @override
  Widget build(BuildContext context) {
    return _SettingsCard(
      children: [
        _SettingsToggle(
          label: context.l10n.ui_settings_enabled,
          value: _sfx.enabled,
          onChanged: (v) => setState(() => _sfx.enabled = v),
        ),
        const SizedBox(height: 12),
        _SettingsSlider(
          label: context.l10n.ui_settings_volume,
          value: _sfx.volume,
          enabled: _sfx.enabled,
          onChanged: (v) => setState(() => _sfx.volume = v),
        ),
      ],
    );
  }
}

// ── Haptics section ──────────────────────────────────────────────────────────

class _HapticsSection extends StatefulWidget {
  @override
  State<_HapticsSection> createState() => _HapticsSectionState();
}

class _HapticsSectionState extends State<_HapticsSection> {
  final _haptic = HapticService();

  static const _labels = ['OFF', 'CRITICAL', 'IMPORTANT', 'ALL'];

  @override
  Widget build(BuildContext context) {
    return _SettingsCard(
      children: [
        Row(
          children: List.generate(HapticLevel.values.length, (i) {
            final level = HapticLevel.values[i];
            final selected = _haptic.level == level;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: i == 0 ? 0 : 6),
                child: GestureDetector(
                  onTap: () {
                    setState(() => _haptic.level = level);
                    if (level != HapticLevel.off) _haptic.medium();
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: selected
                          ? _kAccent.withValues(alpha: 0.15)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: selected
                            ? _kAccent
                            : _kAccent.withValues(alpha: 0.2),
                        width: selected ? 1.5 : 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      _labels[i],
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight:
                            selected ? FontWeight.w700 : FontWeight.w500,
                        color: selected
                            ? _kAccent
                            : Colors.white.withValues(alpha: 0.4),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

// ── Language section ─────────────────────────────────────────────────────────

class _LanguageSection extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(localeProvider);
    final label = current == null
        ? context.l10n.ui_settings_systemDefault
        : _localeNames[current.toLanguageTag().replaceAll('-', '_')] ??
            _localeNames[current.languageCode] ??
            current.toLanguageTag();

    return _SettingsCard(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => _showLanguagePicker(context, ref, current),
          child: Row(
            children: [
              const Icon(Icons.language, color: _kAccent, size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(Icons.chevron_right,
                  color: _kAccent.withValues(alpha: 0.5)),
            ],
          ),
        ),
      ],
    );
  }

  void _showLanguagePicker(
      BuildContext context, WidgetRef ref, Locale? current) {
    final locales = AppLocalizations.supportedLocales;

    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF0B1426),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 12),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    // System default option.
                    _LanguageTile(
                      label: context.l10n.ui_settings_systemDefault,
                      selected: current == null,
                      onTap: () {
                        ref.read(localeProvider.notifier).set(null);
                        Navigator.pop(ctx);
                      },
                    ),
                    const Divider(
                        color: Colors.white12, height: 1, indent: 16, endIndent: 16),
                    // All supported locales.
                    for (final locale in locales)
                      _LanguageTile(
                        label: _localeNames[locale.toLanguageTag().replaceAll('-', '_')] ??
                            _localeNames[locale.languageCode] ??
                            locale.toLanguageTag(),
                        selected: current != null &&
                            locale.languageCode == current.languageCode &&
                            locale.countryCode == current.countryCode,
                        onTap: () {
                          ref.read(localeProvider.notifier).set(locale);
                          Navigator.pop(ctx);
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: selected ? _kAccent : Colors.white70,
          fontWeight: selected ? FontWeight.w700 : FontWeight.w400,
          fontSize: 16,
        ),
      ),
      trailing: selected
          ? const Icon(Icons.check, color: _kAccent, size: 20)
          : null,
      onTap: onTap,
    );
  }
}

// ── Stats position toggle ───────────────────────────────────────────────────

class _StatsPositionToggle extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsOnLeft = ref.watch(statsOnLeftProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Text(
            'Stats & buttons position',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SegmentedButton<bool>(
          segments: const [
            ButtonSegment(value: true, label: Text('LEFT')),
            ButtonSegment(value: false, label: Text('RIGHT')),
          ],
          selected: {statsOnLeft},
          onSelectionChanged: (v) => ref.read(statsOnLeftProvider.notifier).toggle(),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return _kAccent.withValues(alpha: 0.15);
              }
              return Colors.transparent;
            }),
            foregroundColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) return _kAccent;
              return Colors.white38;
            }),
            side: WidgetStateProperty.all(BorderSide(color: _kAccent.withValues(alpha: 0.3))),
            textStyle: WidgetStateProperty.all(const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              letterSpacing: 2,
            )),
          ),
        ),
      ],
    );
  }
}

// ── Shared widgets ───────────────────────────────────────────────────────────

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _kBgColor.withValues(alpha: 0.85),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _kAccent.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _SettingsToggle extends StatelessWidget {
  const _SettingsToggle({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeThumbColor: _kAccent,
          activeTrackColor: _kAccent.withValues(alpha: 0.3),
          inactiveThumbColor: Colors.white38,
          inactiveTrackColor: Colors.white.withValues(alpha: 0.1),
        ),
      ],
    );
  }
}

class _SettingsSlider extends StatelessWidget {
  const _SettingsSlider({
    required this.label,
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  final String label;
  final double value;
  final bool enabled;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: enabled ? Colors.white70 : Colors.white30,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '${(value * 100).round()}%',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: enabled ? _kAccent : _kAccent.withValues(alpha: 0.3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: _kAccent.withValues(alpha: enabled ? 0.7 : 0.2),
            inactiveTrackColor: Colors.white.withValues(alpha: 0.08),
            thumbColor: enabled ? _kAccent : Colors.white38,
            overlayColor: _kAccent.withValues(alpha: 0.15),
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
          ),
          child: Slider(
            value: value,
            onChanged: enabled ? onChanged : null,
          ),
        ),
      ],
    );
  }
}
