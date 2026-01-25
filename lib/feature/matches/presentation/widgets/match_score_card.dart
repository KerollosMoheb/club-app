import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchScoreCard extends StatelessWidget {
  final String date;
  final String time;
  final String homeTeam;
  final String awayTeam;
  final String homeLogo;
  final String awayLogo;

  const MatchScoreCard({
    super.key,
    required this.date,
    required this.time,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeLogo,
    required this.awayLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(date, style: AppTextstyles.font14mainGreenW500),
              SizedBox(height: 4.h),
              Text(
                time,
                style: AppTextstyles.font14mainGreenW500.copyWith(
                  color: AppColors.mainGreen,
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          Container(
            width: 1.w,
            height: 40.h,
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTeamRow(homeTeam, homeLogo),
                SizedBox(height: 8.h),
                _buildTeamRow(awayTeam, awayLogo),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamRow(String name, String logo) {
    return Row(
      children: [
        Image.asset(logo, width: 24.w),
        SizedBox(width: 12.w),
        Text(name, style: AppTextstyles.font14blackW500),
      ],
    );
  }
}
