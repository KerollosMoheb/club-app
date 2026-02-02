import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/core/widgets/custom_text_form_field.dart';
import 'package:club_app/feature/auth/presentation/widgets/already_have_registered.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() => context.pop(), ''),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset(Assets.imagesItihad, height: 165)),
              SizedBox(height: 22.h),
              CustomTextFormField(text: AppStrings.membershipId),
              SizedBox(height: 25.h),
              CustomTextFormField(text: AppStrings.email),
              SizedBox(height: 25.h),
              CustomTextFormField(text: AppStrings.phoneNumber),
              SizedBox(height: 25.h),
              CustomTextFormField(text: AppStrings.password),
              SizedBox(height: 25.h),
              CustomTextFormField(text: AppStrings.confirmPassword),
              SizedBox(height: 25.h),
              CustomButton(
                text: AppStrings.register,
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW600,
                height: 48.h,
                onTap: () {
                  context.pushReplacementNamed(Routes.mainScreen);
                },
              ),
              SizedBox(height: 12.h),
              AlreadyHaveRegistered(),
              SizedBox(height: 21.h),
            ],
          ),
        ),
      ),
    );
  }
}
