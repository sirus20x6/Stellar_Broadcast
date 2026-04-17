import 'package:flutter/material.dart';
import 'package:quickapps_ads/quickapps_ads.dart' show QaConsentManager;
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';

/// Shows the Stellar Broadcast premium paywall.
///
/// When the user is already seeing personalized ads (UMP consent obtained
/// or not required), the sheet offers only the lifetime purchase + an X to
/// dismiss. When the user is on limited/anonymous ads it additionally
/// offers an "Enable Personalized Ads" action — opting in generates more
/// revenue per impression, and (per scan_screen's paywall cadence) halves
/// how often this sheet nags going forward.
Future<void> showPremiumPaywall(BuildContext context) {
  final onPersonalized = QaConsentManager.canShowPersonalizedAds;
  return QaPaywall.show(
    context,
    title: context.l10n.ui_premium_goPremium,
    subtitle: context.l10n.ui_premium_subtitle,
    features: [
      context.l10n.ui_premium_removeAds,
      context.l10n.ui_premium_supportIndie,
      context.l10n.ui_premium_exclusiveTitle,
      context.l10n.ui_premium_priorityFeatures,
    ],
    plans: [
      QaPlan(
        productId: 'premium_lifetime',
        label: context.l10n.ui_premium_lifetime,
        fallbackPrice: '\$5.99',
        badge: null,
      ),
    ],
    onEnablePersonalizedAds: onPersonalized
        ? null
        : () {
            // The paywall has already popped itself by the time this
            // fires; the consent form appears over the underlying route.
            QaConsentManager.showConsentForm();
          },
    enablePersonalizedAdsLabel: onPersonalized
        ? null
        : context.l10n.ui_premium_enablePersonalizedAds,
    enablePersonalizedAdsSubtitle: onPersonalized
        ? null
        : context.l10n.ui_premium_enablePersonalizedAdsSubtitle,
  );
}
