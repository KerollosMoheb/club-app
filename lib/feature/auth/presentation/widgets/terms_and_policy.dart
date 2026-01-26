import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
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
            text: AppStrings.bycontinuing,
            style: AppTextstyles.font14blackW500,
          ),
          TextSpan(
            text: AppStrings.termsOfUse,
            style: AppTextstyles.font14blackW500.copyWith(
              color: AppColors.mainGreen,
              height: 1.5,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(Routes.privacyPilicyScreen);
              },
          ),
          TextSpan(text: AppStrings.and, style: AppTextstyles.font14blackW500),
          TextSpan(
            text: AppStrings.privacyPolicy,
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
