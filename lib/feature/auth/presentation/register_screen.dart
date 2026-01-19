import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
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
              SizedBox(height: 64.h),
              Center(
                child: Image.asset(
                  'assets/images/Smouha_SC_logo 1.png',
                  height: 165,
                ),
              ),
              SizedBox(height: 22.h),
              CustomTextFormField(text: 'Membership ID'),
              SizedBox(height: 40.h),
              CustomTextFormField(text: 'Email'),
              SizedBox(height: 40.h),
              CustomTextFormField(text: 'Phone Number'),
              SizedBox(height: 40.h),
              CustomTextFormField(text: 'Password'),
              SizedBox(height: 40.h),
              CustomTextFormField(text: 'Confirm Password'),
              SizedBox(height: 24.h),
              CustomButton(
                text: 'Register',
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW600,
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
