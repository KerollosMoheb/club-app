import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DaysSportSchedual extends StatelessWidget {
  const DaysSportSchedual({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.surfaceGrey,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saturday',
                  style: AppTextstyles.font14blackW500.copyWith(fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 17,
                      color: AppColors.inkBlack,
                    ),
                    SizedBox(width: 20.w),
                    Text('10:00 AM'),
                    SizedBox(width: 10.w),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 13,
                      color: AppColors.inkBlack,
                    ),
                    SizedBox(width: 10.w),
                    Text('11:00 AM'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surfaceGrey,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Monday',
                  style: AppTextstyles.font14blackW500.copyWith(fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 17,
                      color: AppColors.inkBlack,
                    ),
                    SizedBox(width: 20.w),
                    Text('3:00 AM'),
                    SizedBox(width: 10.w),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 13,
                      color: AppColors.inkBlack,
                    ),
                    SizedBox(width: 10.w),
                    Text('11:00 AM'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
