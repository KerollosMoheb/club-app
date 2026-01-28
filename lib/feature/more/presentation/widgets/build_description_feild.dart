import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDescriptionField() {
  return Container(
    height: 150.h,
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    decoration: BoxDecoration(
      color: AppColors.surfaceGrey,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: TextField(
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: AppStrings.descriptionPlaceholder,
        hintStyle: AppTextstyles.font14darkerGreyW400,
      ),
    ),
  );
}
