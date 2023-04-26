import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../utils/size_config.dart';
import 'widgets/animated_button.dart';
import 'widgets/custom_signin.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      'active',
      autoplay: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 200,
            left: 100,
            width: SizeConfig.screenWidth,
            child: Image.asset('assets/backgrounds/Spline.png'),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              child: const SizedBox(),
            ),
          ),
          const RiveAnimation.asset('assets/riveAssets/shapes.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          AnimatedPositioned(
            top: _btnAnimationController.isActive ? -50 : 0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: 280,
                      child: Column(
                        children: [
                          Text(
                            'Learn design and code',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          verticalSpacing(12),
                          Text(
                            'Duis in eiusmod enim ipsum aliqua commodo.Dolore aute incididunt non amet labore duis cillum eiusmod eu amet excepteur ex.',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    verticalSpacing(40),
                    AnimatedButton(
                      onTap: () {
                        !_btnAnimationController.isActive
                            ? Future.delayed(
                                const Duration(milliseconds: 800),
                                () {
                                  customSignInDialog(context);
                                },
                              ).then(
                                (value) =>
                                    //todo under those circumstances
                                    _btnAnimationController.isActive = false,
                              )
                            : null;
                        _btnAnimationController.isActive = true;
                      },
                      btnAnimationController: _btnAnimationController,
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
