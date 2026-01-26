import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/core/widgets/custom_text_form_field.dart';
import 'package:club_app/feature/auth/presentation/widgets/google_and_facebook.dart';
import 'package:club_app/feature/auth/presentation/widgets/terms_and_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() => context.pop(), ''),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 64.h),
              Center(child: Image.asset(Assets.imagesItihad, height: 165)),
              SizedBox(height: 84.h),
              CustomTextFormField(text: AppStrings.email),
              SizedBox(height: 30.h),
              CustomButton(
                text: AppStrings.continueText,
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW600,
                onTap: () {
                  context.pushReplacementNamed(Routes.mainScreen);
                },
              ),
              SizedBox(height: 26.h),
              Text('or', style: AppTextstyles.font20orTextW400),
              SizedBox(height: 26.h),
              GoogleAndFacebook(
                imagePath: Assets.imagesGoogle,
                text: AppStrings.continueWithGoogle,
                onTap: () {},
              ),
              SizedBox(height: 24.h),
              GoogleAndFacebook(
                imagePath: Assets.imagesFacebook,
                text: AppStrings.continueWithFacebook,
                onTap: () {},
              ),
              SizedBox(height: 24.h),
              TermsAndPolicy(),
              SizedBox(height: 21.h),
            ],
          ),
        ),
      ),
    );
  }
}
