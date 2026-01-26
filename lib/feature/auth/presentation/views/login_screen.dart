import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/core/widgets/custom_text_form_field.dart';
import 'package:club_app/feature/auth/presentation/widgets/first_time_register.dart';
import 'package:club_app/feature/auth/presentation/widgets/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              SizedBox(height: 71.h),
              CustomTextFormField(text: AppStrings.membershipId),
              SizedBox(height: 26.h),
              CustomTextFormField(text: AppStrings.password),
              SizedBox(height: 11.h),
              ForgotPassword(),
              SizedBox(height: 19.h),
              CustomButton(
                text: AppStrings.login,
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW600,
                onTap: () {
                  context.pushReplacementNamed(Routes.mainScreen);
                },
              ),
              SizedBox(height: 12.h),
              FirstTimeRegister(),
              SizedBox(height: 21.h),
            ],
          ),
        ),
      ),
    );
  }
}
