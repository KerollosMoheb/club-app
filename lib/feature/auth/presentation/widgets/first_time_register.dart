import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FirstTimeRegister extends StatelessWidget {
  const FirstTimeRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'First time? Register Now',
            style: AppTextstyles.font15alreadyTextW500,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
               // context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}