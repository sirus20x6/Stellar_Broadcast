import 'package:permission_handler/permission_handler.dart';
import 'package:quickapps_notifications/quickapps_notifications.dart';

import 'package:stellar_broadcast/l10n/app_localizations.dart';
import 'package:stellar_broadcast/models/legacy.dart';

/// Schedules / cancels the daily 7 PM streak reminder.
///
/// Reads `LegacyData.streakReminderEnabled` to decide whether to schedule.
/// Reads `LegacyData.streakCount` to build a body string that reflects the
/// current streak. Idempotent — calling rescheduleIfEnabled multiple times in
/// one day just replaces the same notification ID.
class StreakReminderScheduler {
  /// Dedicated notification ID — chosen well above any other use in this app
  /// to avoid collisions with future per-item schedulers.
  static const int notificationId = 9000;
  static const int reminderHour = 19; // 7 PM device-local
  static const int reminderMinute = 0;

  /// Schedules the daily reminder if enabled and permission is granted.
  /// Cancels any existing reminder if disabled. Silently skips if
  /// notification permission has not been granted — the Settings UI will
  /// surface that state and prompt the user to fix it.
  static Future<void> rescheduleIfEnabled(
    LegacyData legacy,
    AppLocalizations l10n,
  ) async {
    final svc = NotificationService();
    if (!legacy.streakReminderEnabled) {
      await svc.cancel(notificationId);
      return;
    }

    final status = await Permission.notification.status;
    if (!status.isGranted) {
      // Don't request here — request is lazy (toggle ON path). Without
      // permission, just leave the reminder unscheduled; Settings will
      // show the "tap to fix" affordance.
      await svc.cancel(notificationId);
      return;
    }

    await svc.scheduleDaily(
      id: notificationId,
      title: l10n.streakNotificationTitle,
      body: _bodyFor(legacy, l10n),
      hour: reminderHour,
      minute: reminderMinute,
      channelId: 'streak_reminders',
      channelName: 'Streak Reminders',
    );
  }

  /// Cancels the reminder unconditionally. Useful when the user disables
  /// the toggle from Settings.
  static Future<void> cancel() async {
    await NotificationService().cancel(notificationId);
  }

  /// Lazy permission request — call when user toggles ON. Returns whether
  /// permission was granted (or was already granted).
  static Future<bool> requestPermissionLazy() async {
    final status = await Permission.notification.status;
    if (status.isGranted) return true;
    final result = await Permission.notification.request();
    return result.isGranted;
  }

  static String _bodyFor(LegacyData legacy, AppLocalizations l10n) {
    if (legacy.streakCount == 0) {
      return l10n.streakNotificationBodyStart;
    }
    return l10n.streakNotificationBodyKeep(legacy.streakCount);
  }
}
