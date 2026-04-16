import 'package:flutter/material.dart';

import 'package:stellar_broadcast/theme/app_theme.dart';

/// Plain data class — everything the [ShareRunCard] needs to render. Built
/// once on the ending screen and passed to the modal preview.
class ShareRunCardData {
  final int score;
  final String tier;
  final Color tierColor;
  final String planetName;
  final String governmentType;
  final int colonists;
  final int planetsScanned;
  final String seedCode;

  const ShareRunCardData({
    required this.score,
    required this.tier,
    required this.tierColor,
    required this.planetName,
    required this.governmentType,
    required this.colonists,
    required this.planetsScanned,
    required this.seedCode,
  });
}

/// A fixed-size, paint-friendly summary of a completed voyage. Designed to
/// be captured via `RenderRepaintBoundary.toImage()` and shared as a PNG —
/// **do not** rely on `MediaQuery` or `ScreenInfo` here. The widget assumes
/// it's mounted inside a `SizedBox(width: cardWidth, height: cardHeight)`.
class ShareRunCard extends StatelessWidget {
  final ShareRunCardData data;

  const ShareRunCard({super.key, required this.data});

  /// Logical pixel dimensions. The capture pipeline upscales these via
  /// `pixelRatio: 2.0` to get a ~2160×2700 PNG suitable for social feeds.
  static const double cardWidth = 1080;
  static const double cardHeight = 1350;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(0, -0.3),
          radius: 1.1,
          colors: [
            Color.alphaBlend(
              data.tierColor.withValues(alpha: 0.15),
              SpaceColors.deepSpace,
            ),
            SpaceColors.deepSpace,
          ],
        ),
        border: Border.all(color: SpaceColors.cyan.withValues(alpha: 0.4), width: 4),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80, 60, 80, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 60),
            _buildScoreBlock(),
            const SizedBox(height: 40),
            _buildTierBadge(),
            const SizedBox(height: 30),
            _buildPlanetLine(),
            const SizedBox(height: 50),
            _buildStatsGrid(),
            const Spacer(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Icon_512.png', width: 96, height: 96),
            const SizedBox(width: 24),
            const Text(
              'STELLAR BROADCAST',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w900,
                color: SpaceColors.cyan,
                letterSpacing: 4,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 600,
          height: 2,
          color: SpaceColors.cyan.withValues(alpha: 0.5),
        ),
      ],
    );
  }

  Widget _buildScoreBlock() {
    return Column(
      children: [
        Text(
          'FINAL SCORE',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: SpaceColors.cyan.withValues(alpha: 0.7),
            letterSpacing: 6,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          _formatScore(data.score),
          style: TextStyle(
            fontSize: 180,
            fontWeight: FontWeight.w900,
            color: data.tierColor,
            height: 1.0,
            shadows: [
              Shadow(
                color: data.tierColor.withValues(alpha: 0.6),
                blurRadius: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTierBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 18),
      decoration: BoxDecoration(
        color: Color.alphaBlend(
          data.tierColor.withValues(alpha: 0.18),
          SpaceColors.deepSpace,
        ),
        border: Border.all(color: data.tierColor, width: 3),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(
        data.tier.toUpperCase(),
        style: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.w800,
          color: data.tierColor,
          letterSpacing: 5,
        ),
      ),
    );
  }

  Widget _buildPlanetLine() {
    return Text(
      'on ${data.planetName}',
      style: const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildStatsGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _statRow('COLONISTS', data.colonists.toString()),
        const SizedBox(height: 16),
        _statRow('PLANETS SCANNED', data.planetsScanned.toString()),
        const SizedBox(height: 16),
        _statRow('GOVERNMENT', data.governmentType),
      ],
    );
  }

  Widget _statRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: SpaceColors.cyan.withValues(alpha: 0.8),
              letterSpacing: 3,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        Container(
          width: 600,
          height: 2,
          color: SpaceColors.cyan.withValues(alpha: 0.3),
        ),
        const SizedBox(height: 24),
        Text(
          'PLAY THIS VOYAGE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white.withValues(alpha: 0.6),
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'SEED: ${data.seedCode}',
          style: const TextStyle(
            fontSize: 44,
            fontWeight: FontWeight.w800,
            color: SpaceColors.cyan,
            letterSpacing: 6,
            fontFamily: 'monospace',
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'STELLARBROADCAST.ORG',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: SpaceColors.cyanLight,
            letterSpacing: 4,
          ),
        ),
      ],
    );
  }

  /// Card-local score formatter — keeps the widget self-contained so it can
  /// be rendered without a BuildContext that has localizations bound.
  /// Uses simple comma grouping (en-US convention).
  String _formatScore(int score) {
    final s = score.toString();
    final buf = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
      buf.write(s[i]);
    }
    return buf.toString();
  }
}
