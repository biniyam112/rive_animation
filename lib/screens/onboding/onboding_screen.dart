import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RiveAnimation.asset('assets/riveAssets/shapes.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              child: SizedBox(),
            ),
          ),
          Positioned(
            height: 100,
            width: ,
            child: Image.asset('assets/backgrounds/Spline.png'),
          ),
        ],
      ),
    );
  }
}
