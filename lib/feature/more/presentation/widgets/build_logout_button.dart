import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLogoutButton() {
  return GestureDetector(
    onTap: () {
      // Handle logout logic
    },
    child: Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainGreen),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout, color: AppColors.mainGreen),
          SizedBox(width: 10.w),
          Text(
            'Logout',
            style: AppTextstyles.font16darkGreyW600.copyWith(
              color: AppColors.mainGreen,
            ),
          ),
        ],
      ),
    ),
  );
}
