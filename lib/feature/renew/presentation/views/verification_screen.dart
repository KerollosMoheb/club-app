import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
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
      }, AppStrings.membershipRenewal),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Image.asset(Assets.imagesScreenshot, width: 300.w),
                SizedBox(height: 40.h),
                Text(
                  AppStrings.applicationUnderReview,
                  style: AppTextstyles.font14blackW600.copyWith(fontSize: 24),
                ),
                SizedBox(height: 20.h),
                PendingVerificationContainer(),
                SizedBox(height: 20.h),
                Text(
                  AppStrings.renewalDescription,
                  textAlign: TextAlign.center,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  AppStrings.reviewNotificationNote,
                  textAlign: TextAlign.center,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 40.h),
                CustomButton(
                  text: AppStrings.backToHome,
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
