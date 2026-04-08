import 'package:flutter/material.dart';
import 'package:quickapps_iap/quickapps_iap.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';

/// Shows the Stellar Broadcast premium paywall.
Future<void> showPremiumPaywall(BuildContext context) {
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
  );
}
