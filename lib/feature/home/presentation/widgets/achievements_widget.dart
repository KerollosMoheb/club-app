import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/feature/home/presentation/widgets/custom_home_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 380.h,
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/tennis.png'),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              'A New Global Achievement for a Smouha Athlete ',
              style: AppTextstyles.font14blackW600.copyWith(fontSize: 18),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              'Smouha Sporting Club extends its sincere congratulations to professional player Nour Ashraf Heikal, Smouha Club athlete, on joining the Egyptian National Squash Team 🇪🇬',
              style: AppTextstyles.font11blackW400.copyWith(fontSize: 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: CustomRowText(
              firstText: 'abdullah',
              secondtText: '1 Jan, 2026',
              style1: AppTextstyles.font14lightGreenW300,
              style2: AppTextstyles.font14lightGreenW300,
            ),
          ),
        ],
      ),
    );
  }
}
