import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountCategories extends StatelessWidget {
  const DiscountCategories({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategoryChanged,
  });
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          bool isSelected = selectedIndex == index;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.5.w),
            child: GestureDetector(
              onTap: () => onCategoryChanged(index),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: isSelected
                      ? AppColors.mainGreen
                      : AppColors.brightGreen,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Text(
                  categories[index],
                  style: AppTextstyles.font14mainGreenW500.copyWith(
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.white : AppColors.mainGreen,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
