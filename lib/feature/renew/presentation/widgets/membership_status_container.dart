import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
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
                    'Current Membership Status',
                    style: AppTextstyles.font14blackW500,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Balanced Membership',
                style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
              ),
              SizedBox(height: 33.h),
              Text(
                'Renewal Date ',
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '20 Dec 2026',
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 33.h),
              Text(
                'Member Since ',
                style: AppTextstyles.font14blackW600.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Feb 2018',
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
