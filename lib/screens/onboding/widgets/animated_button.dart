import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../../../utils/size_config.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required RiveAnimationController btnAnimationController,
    required VoidCallback onTap,
  })  : _btnAnimationController = btnAnimationController,
        _onTap = onTap;

  final RiveAnimationController _btnAnimationController;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              'assets/riveAssets/button.riv',
              controllers: [_btnAnimationController],
            ),
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.black87,
                  ),
                  horizontalSpacing(8),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      'Start with animation',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
