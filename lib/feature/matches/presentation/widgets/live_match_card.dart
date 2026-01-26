import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/matches/presentation/views/match_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveMatchCard extends StatelessWidget {
  final String homeTeamName;
  final String awayTeamName;
  final String homeScore;
  final String awayScore;
  final String time;
  final String homeScorers;
  final String awayScorers;
  final String homeLogo;
  final String awayLogo;

  const LiveMatchCard({
    super.key,
    required this.homeTeamName,
    required this.awayTeamName,
    required this.homeScore,
    required this.awayScore,
    required this.time,
    this.homeScorers = '',
    this.awayScorers = '',
    required this.homeLogo,
    required this.awayLogo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MatchDetailsScreen(
              homeTeamName: homeTeamName,
              awayTeamName: awayTeamName,
              homeScore: homeScore,
              awayScore: awayScore,
              time: time,
              homeScorers: homeScorers,
              awayScorers: awayScorers,
              homeLogo: homeLogo,
              awayLogo: awayLogo,
            ),
          ),
        );
      },
      child: Container(
        width: 230.w,
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.deepGrey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              time,
              style: AppTextstyles.font14blackW600.copyWith(fontSize: 12.sp),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTeamColumn(homeTeamName, homeLogo, homeScorers),
                Text(
                  "$homeScore - $awayScore",
                  style: AppTextstyles.font20mainGreenW600,
                ),
                _buildTeamColumn(awayTeamName, awayLogo, awayScorers),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamColumn(String name, String logo, String scorers) {
    return Column(
      children: [
        SizedBox(
          width: 45.w,
          height: 53.h,
          child: Center(child: Image.asset(logo, width: 45.w)),
        ),
        SizedBox(height: 8.h),
        if (scorers.isNotEmpty)
          Text(
            scorers,
            textAlign: TextAlign.center,
            style: AppTextstyles.font10blackW300.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
      ],
    );
  }
}
