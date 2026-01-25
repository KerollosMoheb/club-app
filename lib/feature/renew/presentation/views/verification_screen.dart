import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/renew/presentation/views/pending_verification_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Membership Renewal'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Image.asset('assets/images/screenshot.png', width: 300.w),
                SizedBox(height: 40.h),
                Text(
                  'Application Under Review',
                  style: AppTextstyles.font14blackW600.copyWith(fontSize: 24),
                ),
                SizedBox(height: 20.h),
                PendingVerificationContainer(),
                SizedBox(height: 20.h),
                Text(
                  'We\'ve received your documents! Our management team is currently reviewing your application details. This process ensures everything meets our community guidelines.',
                  textAlign: TextAlign.center,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Well notify you via push notification once you\'re cleared to proceed to the final payment step.',
                  textAlign: TextAlign.center,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 40.h),
                CustomButton(
                  text: 'Back to Home',
                  color: AppColors.mainGreen,
                  style: AppTextstyles.font20whiteW600,
                  onTap: () {
                    context.pushNamed(Routes.homeScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
