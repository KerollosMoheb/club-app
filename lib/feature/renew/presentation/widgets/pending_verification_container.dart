import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingVerificationContainer extends StatelessWidget {
  const PendingVerificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.paleYellow,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.circle, color: AppColors.warningYellow, size: 10.w),
          SizedBox(width: 5.w),
          Text(
            AppStrings.pendingVerification,
            style: AppTextstyles.font16alreadyTextW600.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.bronze,
            ),
          ),
        ],
      ),
    );
  }
}
