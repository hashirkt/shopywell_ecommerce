import 'package:flutter/material.dart';
import 'package:shopywell/presentation/auth/signin_screen/signin_screen.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': ImageRes.splash1,
      'title': 'Choose Products',
      'desc':
          'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
    },
    {
      'image': ImageRes.splash2,
      'title': 'Make Payment',
      'desc':
          'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
    },
    {
      'image': ImageRes.splash3,
      'title': 'Get Your Order',
      'desc':
          'Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\n consequat duis enim velit mollit.',
    },
  ];

  void _next() {
    if (_currentIndex < _onboardingData.length - 1) {
      setState(() => _currentIndex++);
    } else {
      _goToLogin();
    }
  }

  void _previous() {
    if (_currentIndex > 0) {
      setState(() => _currentIndex--);
    }
  }

  void _skip() => _goToLogin();

  void _goToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SigninScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = _onboardingData[_currentIndex];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${_currentIndex + 1}/${_onboardingData.length}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: _skip,
                  child: Text(
                    "Skip",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(data['image']!, height: 250),
                  const SizedBox(height: 20),
                  Text(
                    data['title']!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data['desc']!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: _currentIndex == 0 ? null : _previous,
                  child: Text(
                    "Prev",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color:
                          _currentIndex == 0
                              ? AppTheme.borderColor
                              : AppTheme.black,
                    ),
                  ),
                ),

                // Indicator
                Row(
                  children: List.generate(_onboardingData.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            index == _currentIndex
                                ? AppTheme.black
                                : AppTheme.borderColor,
                      ),
                    );
                  }),
                ),

                // Next / Get Started
                TextButton(
                  onPressed: _next,
                  child: Text(
                    _currentIndex == _onboardingData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
