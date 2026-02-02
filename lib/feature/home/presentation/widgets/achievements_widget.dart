import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/home/presentation/widgets/custom_home_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      decoration: BoxDecoration(
        color: AppColors.surfaceGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.imagesTennis),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              AppStrings.achievementTitle,
              style: AppTextstyles.font14blackW600.copyWith(fontSize: 18),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              AppStrings.achievementSubTitle,
              style: AppTextstyles.font11blackW400.copyWith(fontSize: 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: CustomRowText(
              firstText: AppStrings.abdullah,
              secondtText: AppStrings.jan20261,
              style1: AppTextstyles.font14mainGreenW300,
              style2: AppTextstyles.font14mainGreenW300,
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
