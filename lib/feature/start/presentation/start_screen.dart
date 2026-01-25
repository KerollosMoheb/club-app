import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 160.h),
              Center(
                child: Image.asset(
                  'assets/images/Smouha_SC_logo 1.png',
                  height: 165,
                ),
              ),
              SizedBox(height: 100.h),
              CustomButton(
                text: 'Register Now',
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW700,
                onTap: () {
                  context.pushNamed(Routes.registerScreen);
                },
              ),
              SizedBox(height: 31.h),
              CustomButton(
                text: 'Login as Member',
                color: Colors.transparent,
                style: AppTextstyles.font20mainGreenW600,
                onTap: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
              SizedBox(height: 31.h),
              CustomButton(
                text: 'Login as Guest',
                color: Colors.transparent,
                style: AppTextstyles.font20mainGreenW600,
                onTap: () {
                  context.pushNamed(Routes.guestScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
