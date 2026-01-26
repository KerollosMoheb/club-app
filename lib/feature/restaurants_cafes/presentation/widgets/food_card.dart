import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/restaurants_cafes/data/food_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodCard extends StatelessWidget {
  final FoodItemModel foodItem;

  const FoodCard({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          _buildFoodImage(),
          SizedBox(width: 16.w),
          _buildFoodDetails(),
        ],
      ),
    );
  }

  Widget _buildFoodImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: Image.asset(
        foodItem.image,
        width: 68.w,
        height: 68.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFoodDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(foodItem.title, style: AppTextstyles.font14blackW500),
          SizedBox(height: 8.h),
          Text(
            foodItem.price,
            style: AppTextstyles.font14mainGreenW500.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
