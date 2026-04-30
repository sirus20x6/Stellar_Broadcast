import 'dart:math' as math;

import 'package:flutter/material.dart';

class ScrollPadding {
  ScrollPadding._();

  /// Bottom slack for scrollable screens with action buttons near the end.
  ///
  /// Uses the physical bottom inset plus a fixed affordance so the final
  /// button can scroll clear of gesture bars, banner ads, and browser chrome.
  static double bottom(BuildContext context, {double extra = 96}) {
    final media = MediaQuery.of(context);
    return math.max(media.padding.bottom, media.viewPadding.bottom) + extra;
  }

  static EdgeInsets symmetricHorizontal(
    BuildContext context, {
    double horizontal = 20,
    double top = 0,
    double bottomExtra = 96,
  }) {
    return EdgeInsets.fromLTRB(
      horizontal,
      top,
      horizontal,
      bottom(context, extra: bottomExtra),
    );
  }
}
