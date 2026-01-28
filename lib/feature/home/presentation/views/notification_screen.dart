import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Notifications'),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 22.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.w),
              child: Column(
                children: [
                  customNotification(
                    title: AppStrings.loginOtp,
                    subtitle: AppStrings.yourOTP,
                    date: AppStrings.jan20265,
                  ),
                  SizedBox(height: 20.h),
                  customNotification(
                    title: AppStrings.documentReviewSuccessful,
                    subtitle: AppStrings.membershipRenewalRequest,
                    date: AppStrings.jan202610,
                    showPayButton: true,
                    onTap: () {
                      context.pushNamed(Routes.paymentDetailsScreen);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customNotification({
    required String title,
    required String subtitle,
    required String date,
    bool showPayButton = false,
    Function? onTap,
  }) {
    return Container(
      width: 324.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.mainGreen),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextstyles.font15alreadyTextW500.copyWith(
                color: AppColors.mainGreen,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              subtitle,
              style: AppTextstyles.font12mainGreenW400.copyWith(
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(date, style: AppTextstyles.font10blackW300),
            if (showPayButton) ...[
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  onTap!();
                },
                child: Center(
                  child: Container(
                    width: 136.w,
                    height: 50.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mainGreen,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                      child: Text(
                        'Pay Now',
                        style: AppTextstyles.font16darkGreyW600.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
