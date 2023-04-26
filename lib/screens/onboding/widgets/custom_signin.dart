import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import 'sign_in_form.dart';

Future<Object?> customSignInDialog(BuildContext context) {
  return showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: 'Sign in',
    context: context,
    transitionDuration: const Duration(milliseconds: 400),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      Tween<Offset> tween;
      tween = Tween(
        begin: const Offset(0, -1),
        end: Offset.zero,
      );
      return SlideTransition(
        position: tween.animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: SizeConfig.screenHeight * .8,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24),
                vertical: getProportionateScreenHeight(32),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    Text(
                      'Sign in',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    verticalSpacing(10),
                    Text(
                      'Minim adipisicing sunt nisi consectetur in aliqua fugiat laborum non est dolore.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    verticalSpacing(32),
                    const SignInForm()
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -16,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
