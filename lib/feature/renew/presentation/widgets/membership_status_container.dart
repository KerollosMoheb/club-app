import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MembershipStatusContainer extends StatelessWidget {
  const MembershipStatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.deepGrey,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.mainGreen),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.calendar,
                    size: 20.sp,
                    color: AppColors.mainGreen,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    AppStrings.currentMembershipStatus,
                    style: AppTextstyles.font14blackW500,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                AppStrings.balancedMembership,
                style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
              ),
              SizedBox(height: 33.h),
              Text(
                AppStrings.renewalDate,
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                AppStrings.renewalDateValue,
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 33.h),
              Text(
                AppStrings.memberSince,
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                AppStrings.memberSinceValue,
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
