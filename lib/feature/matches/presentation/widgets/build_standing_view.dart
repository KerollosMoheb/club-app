import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildStandingView() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesCup, width: 26.w),
            SizedBox(width: 8.w),
            Text(
              AppStrings.leagueCup,
              style: AppTextstyles.font18blackW500.copyWith(fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SizedBox(
              width: 20.w,
              child: Text("#", style: AppTextstyles.font12blackW700),
            ),
            Expanded(child: Text("Club", style: AppTextstyles.font12blackW700)),
            SizedBox(
              width: 30.w,
              child: Center(
                child: Text("PL", style: AppTextstyles.font12blackW700),
              ),
            ),
            SizedBox(
              width: 30.w,
              child: Center(
                child: Text("W", style: AppTextstyles.font12blackW700),
              ),
            ),
            SizedBox(
              width: 30.w,
              child: Center(
                child: Text("D", style: AppTextstyles.font12blackW700),
              ),
            ),
            SizedBox(
              width: 30.w,
              child: Center(
                child: Text("L", style: AppTextstyles.font12blackW700),
              ),
            ),
            SizedBox(
              width: 30.w,
              child: Center(
                child: Text("PTS", style: AppTextstyles.font12blackW700),
              ),
            ),
          ],
        ),
        Divider(),
        _buildStandingRow("1", "Al-Masry", "6", "3", "2", "1", "11"),
        _buildStandingRow("2", "ZED FC", "5", "3", "1", "1", "10"),
        _buildStandingRow("3", "Smouha SC", "6", "2", "2", "2", "8"),
        _buildStandingRow(
          "4",
          "Al Ittihad Alexandria",
          "5",
          "1",
          "4",
          "0",
          "7",
          highlight: true,
        ),
        _buildStandingRow("5", "Zamalek SC", "6", "2", "2", "3", "7"),
        _buildStandingRow("6", "Ismailia EC", "5", "0", "5", "0", "5"),
        _buildStandingRow("7", "Haras El Hodoud", "5", "0", "1", "4", "1"),
      ],
    ),
  );
}

Widget _buildStandingRow(
  String rank,
  String club,
  String pl,
  String w,
  String d,
  String l,
  String pts, {
  bool highlight = false,
}) {
  return Container(
    color: highlight ? AppColors.brightGreen : Colors.transparent,
    padding: EdgeInsets.symmetric(vertical: 12.h),
    child: Row(
      children: [
        SizedBox(
          width: 20.w,
          child: Text(rank, style: AppTextstyles.font12blackW500),
        ),
        Expanded(child: Text(club, style: AppTextstyles.font12blackW500)),
        SizedBox(
          width: 30.w,
          child: Center(child: Text(pl, style: AppTextstyles.font12blackW500)),
        ),
        SizedBox(
          width: 30.w,
          child: Center(child: Text(w, style: AppTextstyles.font12blackW500)),
        ),
        SizedBox(
          width: 30.w,
          child: Center(child: Text(d, style: AppTextstyles.font12blackW500)),
        ),
        SizedBox(
          width: 30.w,
          child: Center(child: Text(l, style: AppTextstyles.font12blackW500)),
        ),
        SizedBox(
          width: 30.w,
          child: Center(
            child: Text(
              pts,
              style: AppTextstyles.font20whiteW700.copyWith(
                color: AppColors.mainGreen,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
