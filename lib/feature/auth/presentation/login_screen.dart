import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/core/widgets/custom_text_form_field.dart';
import 'package:club_app/feature/auth/presentation/widgets/build_app_bar.dart';
import 'package:club_app/feature/auth/presentation/widgets/first_time_register.dart';
import 'package:club_app/feature/auth/presentation/widgets/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            SizedBox(height: 71.h),
            CustomTextFormField(text: 'Membership ID'),
            SizedBox(height: 40.h),
            CustomTextFormField(text: 'Email'),
            SizedBox(height: 19.h),
            ForgotPassword(),
            SizedBox(height: 33.h),
            CustomButton(
              text: 'Register',
              color: AppColors.darkGreen,
              style: AppTextstyles.font20whiteW700,
              onTap: () {},
            ),
            SizedBox(height: 12.h),
            FirstTimeRegister()
          ],
        ),
      ),
    );
  }
}
