import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildMatchHeader(
  String time,
  String homeTeamName,
  String awayTeamName,
  String homeScore,
  String awayScore,
  String homeLogo,
  String awayLogo,
  String homeScorers,
  String awayScorers,
) {
  return Column(
    children: [
      Text(
        time,
        style: AppTextstyles.font14blackW600.copyWith(fontSize: 14.sp),
      ),
      SizedBox(height: 16.h),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTeamColumn(homeTeamName, homeLogo),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text(
                "$homeScore - $awayScore",
                style: AppTextstyles.font20mainGreenW600.copyWith(
                  fontSize: 24.sp,
                ),
              ),
            ),
            _buildTeamColumn(awayTeamName, awayLogo),
          ],
        ),
      ),
      SizedBox(height: 16.h),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SizedBox(
          width: double.infinity,
          child: Text(
            formatScorers(homeScorers, awayScorers),
            textAlign: TextAlign.start,
            style: AppTextstyles.font14blackW500,
          ),
        ),
      ),
    ],
  );
}

Widget _buildTeamColumn(String name, String logo) {
  return Column(
    children: [
      if (logo.isNotEmpty)
        Image.asset(logo, width: 60.w, height: 60.h)
      else
        Icon(Icons.shield, size: 60.sp, color: AppColors.mainGreen),
      SizedBox(height: 8.h),
    ],
  );
}

String formatScorers(String homeScorers, String awayScorers) {
  String result = "";
  if (homeScorers.isNotEmpty) result += homeScorers;
  if (homeScorers.isNotEmpty && awayScorers.isNotEmpty) result += "\n";
  if (awayScorers.isNotEmpty) result += awayScorers;
  return result;
}
