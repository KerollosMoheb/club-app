import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot Password?',
                style: AppTextstyles.font15alreadyTextW500,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                   // context.pushReplacementNamed(Routes.forgetPasswordScreen);
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}