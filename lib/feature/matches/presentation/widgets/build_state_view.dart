import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildStatisticView() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        _buildStatRow("11", "Shoot", "2"),
        _buildStatRow("3", "Shoot on Target", "1"),
        _buildStatRow("60%", "Ball Possession", "40%"),
        _buildStatRow("24", "Pass", "10"),
        _buildStatRow("80%", "Pass Accuracy", "20%"),
        _buildStatRow("7", "Foul", "11"),
        _buildStatRow("1", "Yellow Card", "2"),
        _buildStatRow("0", "Red Card", "0"),
        _buildStatRow("1", "Offside", "3"),
        _buildStatRow("7", "Corner Kick", "3"),
      ],
    ),
  );
}

Widget _buildStatRow(String homeVal, String label, String awayVal) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 12.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(homeVal, style: AppTextstyles.font14blackW500),
        Text(
          label,
          style: AppTextstyles.font14mainGreenW500.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(awayVal, style: AppTextstyles.font14blackW500),
      ],
    ),
  );
}
