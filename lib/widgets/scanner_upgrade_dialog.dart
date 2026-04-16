import 'package:flutter/material.dart';

import 'package:stellar_broadcast/models/ship.dart';
import 'package:stellar_broadcast/utils/l10n_extensions.dart';
import 'package:stellar_broadcast/theme/app_theme.dart';

const _kAccent = SpaceColors.cyan;
const _kBgColor = SpaceColors.deepSpace;

/// Modal dialog letting the player upgrade one scanner subsystem.
class ScannerUpgradeDialog extends StatelessWidget {
  const ScannerUpgradeDialog({
    super.key,
    required this.scannerLevels,
    required this.onUpgrade,
    required this.onDismiss,
  });

  final Map<String, int> scannerLevels;
  final ValueChanged<String> onUpgrade;
  final VoidCallback onDismiss;

  static Map<String, String> _scannerLabels(BuildContext context) => {
    'atmosphericScanner': context.l10n.ui_scannerUpgrade_atmospheric,
    'gravimetricScanner': context.l10n.ui_scannerUpgrade_gravimetric,
    'mineralScanner': context.l10n.ui_scannerUpgrade_mineral,
    'lifeSignsScanner': context.l10n.ui_scannerUpgrade_lifeSigns,
    'temperatureScanner': context.l10n.ui_scannerUpgrade_temperature,
    'waterScanner': context.l10n.ui_scannerUpgrade_water,
  };

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: _kBgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: _kAccent.withValues(alpha: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.upgrade, color: _kAccent, size: 36),
            const SizedBox(height: 12),
            Text(
              context.l10n.ui_scannerUpgrade_title,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
                color: _kAccent,
                shadows: [
                  Shadow(
                    color: _kAccent.withValues(alpha: 0.5),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.ui_scannerUpgrade_subtitle,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                color: Colors.white.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 20),
            ...ShipSystems.scannerSubsystemNames.map((name) {
              final level = scannerLevels[name] ?? 0;
              final maxed = level >= 2;
              final label = _scannerLabels(context)[name] ?? name;
              return _ScannerOption(
                label: label,
                level: level,
                maxed: maxed,
                onTap: maxed ? null : () => onUpgrade(name),
              );
            }),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: onDismiss,
              child: Text(
                context.l10n.ui_scannerUpgrade_skip,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  letterSpacing: 2,
                  color: _kAccent.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScannerOption extends StatelessWidget {
  const _ScannerOption({
    required this.label,
    required this.level,
    required this.maxed,
    required this.onTap,
  });

  final String label;
  final int level;
  final bool maxed;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: maxed
                  ? Colors.grey.withValues(alpha: 0.3)
                  : _kAccent.withValues(alpha: 0.4),
            ),
            color: maxed ? null : _kAccent.withValues(alpha: 0.05),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label.toUpperCase(),
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 13,
                    letterSpacing: 1,
                    color: maxed
                        ? Colors.grey.withValues(alpha: 0.5)
                        : _kAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Level badges.
              ...List.generate(2, (i) {
                final filled = i < level;
                return Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: filled
                          ? _kAccent.withValues(alpha: 0.8)
                          : Colors.white.withValues(alpha: 0.1),
                      border: Border.all(
                        color: _kAccent.withValues(alpha: filled ? 0.8 : 0.3),
                      ),
                    ),
                  ),
                );
              }),
              if (maxed)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    context.l10n.ui_scannerUpgrade_max,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 10,
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
