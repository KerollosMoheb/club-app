import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDropdown() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    decoration: BoxDecoration(
      color: AppColors.surfaceGrey,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text(
          AppStrings.selectCategory,
          style: AppTextstyles.font14blackW500.copyWith(color: AppColors.black),
        ),
        icon: const Icon(Icons.keyboard_arrow_down),
        items: [
          DropdownMenuItem(
            value: AppStrings.sports,
            child: Text(AppStrings.sports),
          ),
          DropdownMenuItem(
            value: AppStrings.medical,
            child: Text(AppStrings.medical),
          ),
          DropdownMenuItem(
            value: AppStrings.restaurants,
            child: Text(AppStrings.restaurants),
          ),
        ],
        onChanged: (value) {},
      ),
    ),
  );
}
