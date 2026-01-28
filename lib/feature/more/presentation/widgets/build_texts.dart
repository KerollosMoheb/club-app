import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSectionHeader(String title) {
  return Padding(
    padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
    child: Text(
      title,
      style: AppTextstyles.font16alreadyTextW600.copyWith(
        color: AppColors.black,
      ), // Bold & Larger
    ),
  );
}

// Helper to build Paragraphs
Widget buildBodyText(String text) {
  return Text(
    text,
    style: AppTextstyles.font11blackW400.copyWith(fontSize: 14),
  );
}

// Helper to build Bullet Points
Widget buildBulletPoint(String text) {
  return Padding(
    padding: EdgeInsets.only(left: 12.w, top: 4.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "• ",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextstyles.font11blackW400.copyWith(fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
