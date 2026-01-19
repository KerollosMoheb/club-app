import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113.w,
      height: 118.h,
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Container(
            width: 52.w,
            height: 52.h,
            margin: EdgeInsets.only(top: 15.h),
            decoration: BoxDecoration(
              color: AppColors.brightGreen,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, color: AppColors.mainGreen, size: 24.sp),
          ),
          SizedBox(height: 3.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextstyles.font14blackW500.copyWith(
                color: AppColors.semiLightBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
