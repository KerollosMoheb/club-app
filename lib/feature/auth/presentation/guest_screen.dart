import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/core/widgets/custom_text_form_field.dart';
import 'package:club_app/feature/auth/presentation/widgets/build_app_bar.dart';
import 'package:club_app/feature/auth/presentation/widgets/google_and_facebook.dart';
import 'package:club_app/feature/auth/presentation/widgets/terms_and_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(() => context.pop()),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 64.h),
            Center(
              child: Image.asset(
                'assets/images/Smouha_SC_logo 1.png',
                height: 165,
              ),
            ),
            SizedBox(height: 84.h),
            CustomTextFormField(text: 'Email'),
            SizedBox(height: 30.h),
            CustomButton(
              text: 'Continue',
              color: AppColors.mainGreen,
              style: AppTextstyles.font20whiteW600,
              onTap: () {},
            ),
            SizedBox(height: 26.h),
            Text('or', style: AppTextstyles.font20orTextW400),
            SizedBox(height: 26.h),
            GoogleAndFacebook(
              imagePath: 'assets/images/devicon_google.png',
              text: 'Continue with Google',
              onTap: () {},
            ),
            SizedBox(height: 24.h),
            GoogleAndFacebook(
              imagePath: 'assets/images/logos_facebook.png',
              text: 'Continue with Facebook',
              onTap: () {},
            ),
            SizedBox(height: 24.h),
            TermsAndPolicy(),
          ],
        ),
      ),
    );
  }
}
