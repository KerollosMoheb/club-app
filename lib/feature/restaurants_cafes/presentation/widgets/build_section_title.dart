import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20.h),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppTextstyles.font16alreadyTextW600.copyWith(
          color: AppColors.black,
        ),
      ),
    ),
  );
}
