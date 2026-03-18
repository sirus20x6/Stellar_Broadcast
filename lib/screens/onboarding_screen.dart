import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starbound_exodus/widgets/star_field.dart';

const _kBgColor = Color(0xFF0B1426);
const _kAccent = Color(0xFF00E5FF);

/// 3-page onboarding flow introducing the game's narrative premise.
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  late final AnimationController _starController;
  late final AnimationController _pulseController;

  static const _totalPages = 3;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _starController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);
    if (mounted) {
      Navigator.of(context).pushReplacementNamed('/');
    }
  }

  void _nextPage() {
    if (_currentPage < _totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
      );
    } else {
      _completeOnboarding();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kBgColor,
      body: Stack(
        children: [
          // Star field background.
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _starController,
              builder: (_, __) => CustomPaint(
                painter: StarFieldPainter(
                  animationValue: _starController.value,
                  farStarCount: 100,
                  midStarCount: 40,
                  nearStarCount: 15,
                ),
              ),
            ),
          ),

          // PageView content.
          SafeArea(
            child: Column(
              children: [
                // Skip button.
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16, top: 8),
                    child: TextButton(
                      onPressed: _completeOnboarding,
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          color: _kAccent.withValues(alpha: 0.6),
                          fontSize: 14,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                // Pages.
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (page) =>
                        setState(() => _currentPage = page),
                    children: [
                      _OnboardingPage(
                        icon: Icons.public,
                        iconSecondary: Icons.whatshot,
                        title: "HUMANITY'S LAST HOPE",
                        body:
                            'Earth is dying. Rising seas, toxic skies, and dwindling '
                            'resources have pushed civilization to the brink. The '
                            'governments of the world have pooled their last reserves '
                            'to build one final vessel — a colony ship carrying the '
                            'remnants of humanity into the stars.',
                        pulseController: _pulseController,
                        accentColor: const Color(0xFFFF6B35),
                      ),
                      _OnboardingPage(
                        icon: Icons.auto_awesome,
                        iconSecondary: Icons.travel_explore,
                        title: 'SEEK A NEW HOME',
                        body:
                            'As the ship\'s AI commander, you must navigate the '
                            'uncharted void between stars. Scan alien worlds, face '
                            'cosmic dangers, and make impossible choices. Each planet '
                            'you discover could be humanity\'s salvation — or its tomb.',
                        pulseController: _pulseController,
                        accentColor: _kAccent,
                      ),
                      _OnboardingPage(
                        icon: Icons.flag,
                        iconSecondary: Icons.trending_up,
                        title: 'YOUR LEGACY ENDURES',
                        body:
                            'Every voyage teaches humanity something new. Even if a '
                            'colony fails, the knowledge gained strengthens the next '
                            'expedition. Earn Legacy Points to unlock permanent '
                            'upgrades, and carve your name into the stars.',
                        pulseController: _pulseController,
                        accentColor: const Color(0xFFFFD700),
                      ),
                    ],
                  ),
                ),

                // Page indicator dots.
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _totalPages,
                      (i) => _PageDot(isActive: i == _currentPage),
                    ),
                  ),
                ),

                // Next / Begin button.
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  child: AnimatedBuilder(
                    animation: _pulseController,
                    builder: (_, __) {
                      final isLast = _currentPage == _totalPages - 1;
                      final glowAlpha =
                          isLast ? 0.2 + _pulseController.value * 0.15 : 0.0;

                      return GestureDetector(
                        onTap: _nextPage,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isLast
                                  ? _kAccent
                                  : _kAccent.withValues(alpha: 0.5),
                              width: isLast ? 2 : 1,
                            ),
                            color: isLast
                                ? _kAccent.withValues(alpha: 0.15)
                                : Colors.transparent,
                            boxShadow: isLast
                                ? [
                                    BoxShadow(
                                      color: _kAccent.withValues(
                                          alpha: glowAlpha),
                                      blurRadius: 20,
                                      spreadRadius: 2,
                                    ),
                                  ]
                                : null,
                          ),
                          child: Text(
                            isLast ? 'BEGIN' : 'NEXT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isLast ? Colors.white : _kAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Onboarding page ─────────────────────────────────────────────────────────

class _OnboardingPage extends StatelessWidget {
  const _OnboardingPage({
    required this.icon,
    required this.iconSecondary,
    required this.title,
    required this.body,
    required this.pulseController,
    required this.accentColor,
  });

  final IconData icon;
  final IconData iconSecondary;
  final String title;
  final String body;
  final AnimationController pulseController;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pulseController,
      builder: (_, __) {
        final glowRadius = 30.0 + pulseController.value * 20.0;
        final glowAlpha = 0.2 + pulseController.value * 0.15;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon with glow.
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: accentColor.withValues(alpha: glowAlpha),
                      blurRadius: glowRadius,
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer ring.
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: accentColor.withValues(alpha: 0.3),
                          width: 2,
                        ),
                      ),
                    ),
                    // Inner ring.
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: accentColor.withValues(alpha: 0.08),
                        border: Border.all(
                          color: accentColor.withValues(alpha: 0.2),
                          width: 1,
                        ),
                      ),
                    ),
                    // Primary icon.
                    Icon(
                      icon,
                      size: 56,
                      color: accentColor.withValues(alpha: 0.9),
                    ),
                    // Secondary floating icon.
                    Positioned(
                      right: 12,
                      bottom: 12,
                      child: Icon(
                        iconSecondary,
                        size: 24,
                        color: accentColor.withValues(alpha: 0.5),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 48),

              // Title.
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 3,
                  shadows: [
                    Shadow(
                      color: accentColor.withValues(alpha: 0.5),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Body text.
              Text(
                body,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withValues(alpha: 0.7),
                  height: 1.7,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ── Page indicator dot ──────────────────────────────────────────────────────

class _PageDot extends StatelessWidget {
  const _PageDot({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 24 : 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isActive ? _kAccent : Colors.transparent,
        border: Border.all(
          color: isActive ? _kAccent : _kAccent.withValues(alpha: 0.4),
          width: 1.5,
        ),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: _kAccent.withValues(alpha: 0.4),
                  blurRadius: 8,
                ),
              ]
            : null,
      ),
    );
  }
}
