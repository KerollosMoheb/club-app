import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DaysDoctorSchedual extends StatelessWidget {
  const DaysDoctorSchedual({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.deepGrey,
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
                      color: Color(0xff1C1B1F),
                    ),
                    SizedBox(width: 20.w),
                    Text('10:00 AM'),
                    SizedBox(width: 10.w),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 13,
                      color: Color(0xff1C1B1F),
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
            color: AppColors.deepGrey,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sunday',
                  style: AppTextstyles.font14blackW500.copyWith(fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 17,
                      color: Color(0xff1C1B1F),
                    ),
                    SizedBox(width: 20.w),
                    Text('10:00 AM'),
                    SizedBox(width: 10.w),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 13,
                      color: Color(0xff1C1B1F),
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
