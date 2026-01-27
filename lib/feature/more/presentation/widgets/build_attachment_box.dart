import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/more/presentation/widgets/dashed_border_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildAttachmentBox() {
  return Container(
    height: 160.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.deepGrey,
      borderRadius: BorderRadius.circular(15.r),
      border: Border.all(
        color: AppColors.mainGreen.withOpacity(0.5),
        style: BorderStyle.none,
      ),
    ),
    child: CustomPaint(
      painter: DashedBorderPainter(
        color: AppColors.mainGreen,
        strokeWidth: 1.5,
        gap: 5.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_a_photo, size: 40.sp, color: AppColors.mainGreen),
          SizedBox(height: 10.h),
          Text(AppStrings.tapToUpload, style: AppTextstyles.font14blackW500),
          SizedBox(height: 5.h),
          Text(
            AppStrings.proofHelp,
            style: AppTextstyles.font11blackW400.copyWith(fontSize: 12.sp),
          ),
        ],
      ),
    ),
  );
}
