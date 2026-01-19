import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
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
              child: Container(
                width: 324.w,
                height: 122.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: AppColors.mainGreen),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login OTP',
                        style: AppTextstyles.font15alreadyTextW500.copyWith(
                          color: AppColors.mainGreen,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Your OTP for login is: 852000',
                        style: AppTextstyles.font12mainGreenW400.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '5 Jan 2026, 2:19',
                        style: AppTextstyles.font10blackW300,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
