import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/matches/presentation/widgets/build_match_header.dart';
import 'package:club_app/feature/matches/presentation/widgets/build_standing_view.dart';
import 'package:club_app/feature/matches/presentation/widgets/build_state_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchDetailsScreen extends StatefulWidget {
  final String homeTeamName;
  final String awayTeamName;
  final String homeScore;
  final String awayScore;
  final String time;
  final String homeScorers;
  final String awayScorers;
  final String homeLogo;
  final String awayLogo;

  const MatchDetailsScreen({
    super.key,
    this.homeTeamName = '',
    this.awayTeamName = '',
    this.homeScore = '',
    this.awayScore = '',
    this.time = '',
    this.homeScorers = '',
    this.awayScorers = '',
    this.homeLogo = '',
    this.awayLogo = '',
  });

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: customAppBar(() => Navigator.pop(context), ""),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                buildMatchHeader(
                  widget.time,
                  widget.homeTeamName,
                  widget.awayTeamName,
                  widget.homeScore,
                  widget.awayScore,
                  widget.homeLogo,
                  widget.awayLogo,
                  widget.homeScorers,
                  widget.awayScorers,
                ),
                SizedBox(height: 24.h),
                _buildTabBar(),
                SizedBox(height: 24.h),
                _selectedTabIndex == 0
                    ? buildStatisticView()
                    : buildStandingView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.lightGreen,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _selectedTabIndex = 0),
              child: Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Container(
                  width: 178.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: _selectedTabIndex == 0
                        ? AppColors.mainGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.statistic,
                    style: _selectedTabIndex == 0
                        ? AppTextstyles.font20whiteW600.copyWith(
                            fontWeight: FontWeight.w500,
                          )
                        : AppTextstyles.font20mainGreenW600.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _selectedTabIndex = 1),
              child: Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Container(
                  width: 178.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: _selectedTabIndex == 1
                        ? AppColors.mainGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.standing,
                    style: _selectedTabIndex == 1
                        ? AppTextstyles.font20whiteW600.copyWith(
                            fontWeight: FontWeight.w500,
                          )
                        : AppTextstyles.font20mainGreenW600.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
