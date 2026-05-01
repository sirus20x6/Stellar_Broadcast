import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_audio/quickapps_audio.dart';
import 'package:quickapps_iap/quickapps_iap.dart';

import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/providers/game_providers.dart'
    show legacyProvider, localeProvider, statsOnLeftProvider;
import 'package:stellar_broadcast/services/streak_reminder_scheduler.dart';
import 'package:quickapps_ui/quickapps_ui.dart';
import 'package:stellar_broadcast/screens/premium_paywall.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/utils/scroll_padding.dart';
import 'package:stellar_broadcast/widgets/event_screen_common.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

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

const _kBgColor = SpaceColors.deepSpace;
const _kAccent = SpaceColors.cyan;

/// Settings screen with music, SFX, and haptics controls.
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field.
          const EventStarField(
            farStarCount: 60,
            midStarCount: 20,
            nearStarCount: 8,
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
                          tooltip: context.l10n.ui_tooltip_back,
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: _kAccent,
                            size: 22,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            context.l10n.ui_settings_title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: ScreenInfo.of(
                                context,
                              ).scaledFontSize(24),
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

                  // Settings sections.
                  Expanded(
                    child: ListView(
                      padding: ScrollPadding.symmetricHorizontal(
                        context,
                        horizontal: 20,
                      ),
                      children: [
                        const SizedBox(height: 16),
                        _buildSectionTitle(context.l10n.ui_settings_music),
                        const SizedBox(height: 12),
                        _MusicSection(),
                        const SizedBox(height: 28),
                        _buildSectionTitle(
                          context.l10n.ui_settings_soundEffects,
                        ),
                        const SizedBox(height: 12),
                        _SfxSection(),
                        const SizedBox(height: 28),
                        _buildSectionTitle(context.l10n.ui_settings_haptics),
                        const SizedBox(height: 12),
                        _HapticsSection(),
                        const SizedBox(height: 28),
                        _buildSectionTitle(context.l10n.ui_settings_streak),
                        const SizedBox(height: 12),
                        _StreakSection(),
                        const SizedBox(height: 28),
                        _buildSectionTitle(context.l10n.ui_settings_language),
                        const SizedBox(height: 12),
                        _LanguageSection(),
                        // Layout preference (only on widescreen).
                        if (ScreenInfo.of(context).screenClass !=
                            ScreenClass.compact) ...[
                          const SizedBox(height: 28),
                          _buildSectionTitle('LAYOUT'),
                          const SizedBox(height: 12),
                          _SettingsCard(children: [_StatsPositionToggle()]),
                        ],
                        // Native ad (hidden for premium).
                        const SizedBox(height: 28),
                        PremiumAdGate(
                          child: AdaptiveNativeAd(
                            fallback: AdaptiveBannerAd(
                              size: QaBannerSize.mrec,
                              fallback: AdFallbackBanner(
                                height: 250,
                                onRemoveAds: () => showPremiumPaywall(context),
                              ),
                            ),
                          ),
                        ),

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
                                    Icon(
                                      Icons.star,
                                      color: const Color(0xFFFFD740),
                                      size: 20,
                                    ),
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
                                    Icon(
                                      Icons.chevron_right,
                                      color: _kAccent.withValues(alpha: 0.5),
                                    ),
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
          onChanged: (v) {
            setState(() => _music.enabled = v);
            AnalyticsService().logEvent(
              name: QaEvents.settingsChanged,
              parameters: {'setting': 'music', 'value': v.toString()},
            );
          },
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
          onChanged: (v) {
            setState(() => _sfx.enabled = v);
            AnalyticsService().logEvent(
              name: QaEvents.settingsChanged,
              parameters: {'setting': 'sfx', 'value': v.toString()},
            );
          },
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
                    AnalyticsService().logEvent(
                      name: QaEvents.settingsChanged,
                      parameters: {'setting': 'haptics', 'value': level.name},
                    );
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
                    // Uniform typography across all four pills — the longest
                    // label ("IMPORTANT") fits at this size on the narrowest
                    // supported phone, so every label renders identically
                    // (no per-label scaling).
                    child: Text(
                      _labels[i],
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: selected
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: selected
                            ? _kAccent
                            : Colors.white.withValues(alpha: 0.4),
                        letterSpacing: 0.6,
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

// ── Streak section ───────────────────────────────────────────────────────────

class _StreakSection extends ConsumerStatefulWidget {
  @override
  ConsumerState<_StreakSection> createState() => _StreakSectionState();
}

class _StreakSectionState extends ConsumerState<_StreakSection>
    with WidgetsBindingObserver {
  bool? _permissionGranted;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refreshPermissionStatus();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // User may have granted/revoked the notification permission in system
    // settings while we were backgrounded — re-query on resume so the
    // "tap to fix" subtitle stays accurate.
    if (state == AppLifecycleState.resumed) {
      _refreshPermissionStatus();
    }
  }

  Future<void> _refreshPermissionStatus() async {
    final status = await Permission.notification.status;
    if (!mounted) return;
    setState(() => _permissionGranted = status.isGranted);
  }

  Future<void> _handleToggle(bool enabled) async {
    final notifier = ref.read(legacyProvider.notifier);
    if (enabled) {
      // Lazy permission request on toggle-on. If denied, we still flip
      // the toggle in state so the UI shows "tap to fix" — the user's
      // intent is captured; only the system-side block is missing.
      final granted = await StreakReminderScheduler.requestPermissionLazy();
      if (!mounted) return;
      setState(() => _permissionGranted = granted);
      await notifier.setStreakReminderEnabled(true);
      if (granted && mounted) {
        await StreakReminderScheduler.rescheduleIfEnabled(
          ref.read(legacyProvider),
          context.l10n,
        );
      }
    } else {
      await notifier.setStreakReminderEnabled(false);
      await StreakReminderScheduler.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final legacy = ref.watch(legacyProvider);
    final streakCount = legacy.streakCount;
    final percent = (streakCount - 1).clamp(0, 5);
    final showPermFix =
        legacy.streakReminderEnabled && _permissionGranted == false;

    return _SettingsCard(
      children: [
        // Status line
        Row(
          children: [
            Icon(
              streakCount > 0
                  ? Icons.local_fire_department
                  : Icons.local_fire_department_outlined,
              color: streakCount > 0
                  ? _kAccent
                  : Colors.white.withValues(alpha: 0.4),
              size: 20,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                streakCount > 0
                    ? l10n.ui_settings_streak_active(streakCount, percent)
                    : l10n.ui_settings_streak_inactive,
                style: TextStyle(
                  color: streakCount > 0
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.6),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Divider(color: _kAccent.withValues(alpha: 0.15), height: 1),
        const SizedBox(height: 16),
        // Reminder toggle
        _SettingsToggle(
          label: l10n.ui_settings_streak_reminder,
          value: legacy.streakReminderEnabled,
          onChanged: _handleToggle,
        ),
        const SizedBox(height: 6),
        if (showPermFix)
          // Tap-to-fix affordance — opens system notification settings.
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => openAppSettings(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.amber.withValues(alpha: 0.85),
                    size: 14,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      l10n.ui_settings_streak_perm_needed,
                      style: TextStyle(
                        color: Colors.amber.withValues(alpha: 0.85),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          Text(
            l10n.ui_settings_streak_reminder_subtitle,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.45),
              fontSize: 12,
            ),
          ),
        const SizedBox(height: 12),
        Text(
          l10n.ui_settings_streak_helper,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.4),
            fontSize: 12,
            fontStyle: FontStyle.italic,
          ),
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
              Icon(Icons.chevron_right, color: _kAccent.withValues(alpha: 0.5)),
            ],
          ),
        ),
      ],
    );
  }

  void _showLanguagePicker(
    BuildContext context,
    WidgetRef ref,
    Locale? current,
  ) {
    final locales = AppLocalizations.supportedLocales;

    showModalBottomSheet(
      context: context,
      backgroundColor: SpaceColors.deepSpace,
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
                  padding: EdgeInsets.only(
                    bottom: ScrollPadding.bottom(ctx, extra: 24),
                  ),
                  shrinkWrap: true,
                  children: [
                    // System default option.
                    _LanguageTile(
                      label: context.l10n.ui_settings_systemDefault,
                      selected: current == null,
                      onTap: () {
                        ref.read(localeProvider.notifier).set(null);
                        AnalyticsService().logEvent(
                          name: QaEvents.settingsChanged,
                          parameters: {
                            'setting': 'language',
                            'value': 'system',
                          },
                        );
                        Navigator.pop(ctx);
                      },
                    ),
                    const Divider(
                      color: Colors.white12,
                      height: 1,
                      indent: 16,
                      endIndent: 16,
                    ),
                    // All supported locales.
                    for (final locale in locales)
                      _LanguageTile(
                        label:
                            _localeNames[locale.toLanguageTag().replaceAll(
                              '-',
                              '_',
                            )] ??
                            _localeNames[locale.languageCode] ??
                            locale.toLanguageTag(),
                        selected:
                            current != null &&
                            locale.languageCode == current.languageCode &&
                            locale.countryCode == current.countryCode,
                        onTap: () {
                          ref.read(localeProvider.notifier).set(locale);
                          AnalyticsService().logEvent(
                            name: QaEvents.settingsChanged,
                            parameters: {
                              'setting': 'language',
                              'value': locale.languageCode,
                            },
                          );
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
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            l10n.ui_settings_statsPosition,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SegmentedButton<bool>(
          segments: [
            ButtonSegment(value: true, label: Text(l10n.ui_settings_statsLeft)),
            ButtonSegment(
              value: false,
              label: Text(l10n.ui_settings_statsRight),
            ),
          ],
          selected: {statsOnLeft},
          onSelectionChanged: (v) =>
              ref.read(statsOnLeftProvider.notifier).toggle(),
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
            side: WidgetStateProperty.all(
              BorderSide(color: _kAccent.withValues(alpha: 0.3)),
            ),
            textStyle: WidgetStateProperty.all(
              const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
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
          child: Slider(value: value, onChanged: enabled ? onChanged : null),
        ),
      ],
    );
  }
}
