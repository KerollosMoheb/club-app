import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/discount/data/discount_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountInfo extends StatelessWidget {
  final DiscountModel model;

  const DiscountInfo({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          _buildImage(),
          SizedBox(width: 16.w),
          _buildTextContent(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: Image.asset(
        model.image,
        width: 68.w,
        height: 68.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildTextContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.name,
            style: AppTextstyles.font15alreadyTextW500.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            model.discount,
            style: AppTextstyles.font11blackW400.copyWith(
              color: AppColors.lightGrey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
