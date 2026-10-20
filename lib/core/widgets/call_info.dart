import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({
    super.key,
    required this.lefttitle,
    required this.leftIcon,
    required this.rightTitle,
    required this.rightIcon,
  });
  final String lefttitle;
  final FaIconData leftIcon;
  final String rightTitle;
  final FaIconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 145.w,
          height: 53.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.mainGreen),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(leftIcon, color: AppColors.mainGreen),
                SizedBox(width: 10.w),
                Text(
                  lefttitle,
                  style: AppTextstyles.font20mainGreenW600.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 25.w),
        Container(
          width: 136.w,
          height: 53.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.mainGreen),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(rightIcon, color: AppColors.mainGreen, size: 20.sp),
              SizedBox(width: 10.w),
              Text(
                rightTitle,
                style: AppTextstyles.font20mainGreenW600.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
