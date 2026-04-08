import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickapps_iap/quickapps_iap.dart';

/// Wraps an ad widget and renders [SizedBox.shrink] for premium users.
/// Reactively watches [isPremiumProvider] so ads vanish instantly on purchase.
class PremiumAdGate extends ConsumerWidget {
  final Widget child;
  const PremiumAdGate({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(isPremiumProvider)) return const SizedBox.shrink();
    return child;
  }
}
