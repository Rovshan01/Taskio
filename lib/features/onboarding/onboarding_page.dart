import 'package:Taskio/core/constants/app_assets.dart';
import 'package:Taskio/core/constants/app_texts.dart';
import 'package:Taskio/features/onboarding/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  late final size = MediaQuery.of(context).size;

  late final screenWidth = size.width;

  final List<Map<String, dynamic>> _pages = [
    {
      'image': AppAssets.onboarding1,
      'title': AppTexts.onboarding1Title,
      'subtitle': AppTexts.onboarding1Subtitle,
      'bottomImage': AppAssets.onboarding1Bottom,
    },
    {
      'image': AppAssets.onboarding2,
      'title': AppTexts.onboarding2Title,
      'subtitle': AppTexts.onboarding2Subtitle,
      'bottomImage': AppAssets.onboarding2Bottom,
    },
    {
      'image': AppAssets.onboarding3,
      'title': AppTexts.onboarding3Title,
      'subtitle': AppTexts.onboarding3Subtitle,
      'bottomImage': AppAssets.onboarding3Bottom,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              final pages = _pages[index];
              return OnboardingItem(
                image: pages['image'],
                title: pages['title'],
                subtitle: pages['subtitle'],
                bottomImage: pages['bottomImage'],
              );
            },
          ),
          Positioned(
            bottom: 60.0,
            child: Container(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Indicator
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: _pages.length,
                  ),

                  /// Get Started Button
                  SizedBox(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          width: screenWidth,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white70,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        /// Log in Button
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
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
}
