import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By continuing, you have read and agree to\n Re-lease’s?',
            style: AppTextstyles.font14blackW500,
          ),
          TextSpan(
            text: ' Terms of Use ',
            style: AppTextstyles.font14blackW500.copyWith(
              color: AppColors.mainGreen,
              height: 1.5,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routes.privacyPilicyScreen);
              },
          ),
          TextSpan(text: 'and ', style: AppTextstyles.font14blackW500),
          TextSpan(
            text: 'Privacy Policy?',
            style: AppTextstyles.font14blackW500.copyWith(
              color: AppColors.mainGreen,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routes.privacyPilicyScreen);
              },
          ),
        ],
      ),
    );
  }
}
