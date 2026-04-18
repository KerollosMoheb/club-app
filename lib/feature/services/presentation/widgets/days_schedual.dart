import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DaysSchedual extends StatelessWidget {
  const DaysSchedual({super.key});

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
                  'Daily',
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
                    Text('8:00 AM'),
                    SizedBox(width: 10.w),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 13,
                      color: AppColors.inkBlack,
                    ),
                    SizedBox(width: 10.w),
                    Text('10:00 PM'),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
