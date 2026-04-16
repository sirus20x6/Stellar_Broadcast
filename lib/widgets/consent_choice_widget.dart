import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:quickapps_ads/quickapps_ads.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

enum _ConsentOption { personalized, adFree, limited }

/// A polished consent-choice widget for the final onboarding page.
///
/// Presents three non-blocking options:
/// 1. Enable personalized ads (triggers UMP form)
/// 2. Go ad-free ($5.99 lifetime)
/// 3. Continue with limited ads
class ConsentChoiceWidget extends StatefulWidget {
  final VoidCallback onComplete;

  const ConsentChoiceWidget({super.key, required this.onComplete});

  @override
  State<ConsentChoiceWidget> createState() => _ConsentChoiceWidgetState();
}

class _ConsentChoiceWidgetState extends State<ConsentChoiceWidget>
    with SingleTickerProviderStateMixin {
  _ConsentOption _selected = _ConsentOption.personalized;
  bool _isLoading = false;
  late final AnimationController _shimmerCtrl;

  // Gradient palette (matches qa_paywall.dart)
  static const _gradientStart = Color(0xFF6366F1);
  static const _gradientMid = Color(0xFF8B5CF6);
  static const _gradientEnd = Color(0xFFEC4899);

  @override
  void initState() {
    super.initState();
    _shimmerCtrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _shimmerCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final onSurface = theme.colorScheme.onSurface;
    final muted = isDark ? const Color(0xFF9CA3AF) : const Color(0xFF6B7280);

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Animated shield icon
          AnimatedBuilder(
            animation: _shimmerCtrl,
            builder: (_, __) {
              final phase = _shimmerCtrl.value * 2 * math.pi;
              final glowAlpha = 0.15 + 0.1 * math.sin(phase);
              return Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      _gradientStart.withValues(alpha: glowAlpha + 0.1),
                      _gradientEnd.withValues(alpha: glowAlpha + 0.05),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: _gradientMid.withValues(alpha: glowAlpha),
                      blurRadius: 24,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.shield_rounded,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 14),

          // Info text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text.rich(
              TextSpan(
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: onSurface.withValues(alpha: 0.85),
                  height: 1.5,
                ),
                children: const [
                  TextSpan(
                      text: 'Personalized ads help keep this game free. '
                          'Without them, we earn about '),
                  TextSpan(
                    text: '80\u2009% less revenue',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 18),

          // Option cards
          _buildOptionCard(
            option: _ConsentOption.personalized,
            label: 'Personalized Ads',
            subtitle: 'Free with relevant ads',
            badge: 'RECOMMENDED',
            emoji: '\u{1F60A}',
            theme: theme,
            isDark: isDark,
            onSurface: onSurface,
            muted: muted,
          ),
          const SizedBox(height: 8),
          _buildOptionCard(
            option: _ConsentOption.adFree,
            label: 'Go Ad-Free',
            subtitle: '\$5.99 one-time',
            emoji: '\u{1F929}',
            theme: theme,
            isDark: isDark,
            onSurface: onSurface,
            muted: muted,
          ),
          const SizedBox(height: 8),
          _buildOptionCard(
            option: _ConsentOption.limited,
            label: 'Limited Ads',
            subtitle: 'Free with generic ads',
            emoji: '\u{1F622}',
            theme: theme,
            isDark: isDark,
            onSurface: onSurface,
            muted: muted,
          ),
          const SizedBox(height: 20),

          // CTA button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [_gradientStart, _gradientMid, _gradientEnd],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: _gradientMid.withValues(alpha: 0.3),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: FilledButton(
                  onPressed: _isLoading ? null : _onContinue,
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    disabledBackgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Footnote
          Text(
            'You can change this anytime in Settings',
            style: theme.textTheme.bodySmall?.copyWith(
              color: muted.withValues(alpha: 0.7),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard({
    required _ConsentOption option,
    required String label,
    required String subtitle,
    String? badge,
    String? emoji,
    required ThemeData theme,
    required bool isDark,
    required Color onSurface,
    required Color muted,
  }) {
    final isSelected = _selected == option;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () => setState(() => _selected = option),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isSelected
                  ? _gradientMid
                  : (isDark
                      ? const Color(0xFF2A2A2A)
                      : const Color(0xFFE5E7EB)),
              width: isSelected ? 2 : 1,
            ),
            gradient: isSelected
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      _gradientStart.withValues(alpha: isDark ? 0.15 : 0.08),
                      _gradientEnd.withValues(alpha: isDark ? 0.08 : 0.04),
                    ],
                  )
                : null,
            color: isSelected
                ? null
                : (isDark ? const Color(0xFF1A1A1A) : Colors.transparent),
          ),
          child: Row(
            children: [
              // Radio indicator
              Container(
                width: 22,
                height: 22,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: isSelected
                      ? const LinearGradient(
                          colors: [_gradientStart, _gradientEnd],
                        )
                      : null,
                  border: isSelected
                      ? null
                      : Border.all(
                          color: muted.withValues(alpha: 0.4),
                          width: 2,
                        ),
                ),
                child: isSelected
                    ? const Icon(Icons.check, size: 13, color: Colors.white)
                    : null,
              ),
              const SizedBox(width: 12),
              // Label + subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          label,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: onSurface,
                          ),
                        ),
                        if (badge != null) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [_gradientStart, _gradientEnd],
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              badge,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: isSelected ? _gradientMid : muted,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              if (emoji != null) ...[
                const SizedBox(width: 8),
                Text(
                  emoji,
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onContinue() async {
    setState(() => _isLoading = true);

    try {
      switch (_selected) {
        case _ConsentOption.personalized:
          await QaConsentManager.showConsentForm();
          AnalyticsService().logEvent(
            name: QaEvents.featureUsed,
            parameters: {'feature': 'consent_personalized'},
          );
          break;

        case _ConsentOption.adFree:
          final purchased = await QaIapService().buy('premium_lifetime');
          if (!purchased && mounted) {
            // Purchase failed or canceled — don't proceed, let user pick again.
            setState(() => _isLoading = false);
            return;
          }
          AnalyticsService().logEvent(
            name: QaEvents.featureUsed,
            parameters: {'feature': 'consent_ad_free'},
          );
          break;

        case _ConsentOption.limited:
          await QaConsentManager.showConsentForm();
          AnalyticsService().logEvent(
            name: QaEvents.featureUsed,
            parameters: {'feature': 'consent_limited'},
          );
          break;
      }
    } catch (e, st) {
      // Onboarding completion must not be blocked by analytics/IAP failures,
      // but log so we can spot regressions in those subsystems.
      QaLogger.app.warning('Consent choice handler failed', e, st);
    }

    if (mounted) {
      setState(() => _isLoading = false);
      widget.onComplete();
    }
  }
}
