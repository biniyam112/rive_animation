import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/size_config.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextInputField(
            title: 'Email',
            imagePath: 'assets/icons/email.svg',
            onChanged: (value) {},
          ),
          verticalSpacing(24),
          CustomTextInputField(
            title: 'Password',
            imagePath: 'assets/icons/password.svg',
            onChanged: (value) {},
            isPassword: true,
          ),
          verticalSpacing(32),
          SizedBox(
            height: 56,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfff77d8e),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(4),
                  ),
                ),
              ),
              label: const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              icon: const Icon(
                CupertinoIcons.arrow_right,
                color: Color.fromARGB(255, 224, 72, 34),
              ),
            ),
          ),
          verticalSpacing(16),
          Row(
            children: const [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.black38, fontSize: 14),
                ),
              ),
              Expanded(child: Divider()),
            ],
          ),
          verticalSpacing(16),
          Text(
            'Continue with Apple or Google',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/google_box.svg',
                  height: 64,
                  width: 64,
                ),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/apple_box.svg',
                  height: 64,
                  width: 64,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTextInputField extends StatelessWidget {
  const CustomTextInputField({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onChanged,
    this.isPassword = false,
  });
  final String title;
  final bool isPassword;
  final String imagePath;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        verticalSpacing(12),
        TextFormField(
          obscureText: isPassword,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(4),
              child: SvgPicture.asset(
                imagePath,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
