import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDocumentContainer extends StatelessWidget {
  const CustomDocumentContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final String image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: AppColors.surfaceGrey,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.mainGreen),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  subtitle,
                  style: AppTextstyles.font14blackW500.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 30.h),
                _buildUploadButton(),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          Image.asset(image, width: 100.w, fit: BoxFit.contain),
        ],
      ),
    );
  }

  Widget _buildUploadButton() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.mainGreen,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.upload,
              style: AppTextstyles.font14blackW600.copyWith(
                color: AppColors.white,
              ),
            ),
            SizedBox(width: 8.w),
            Icon(FontAwesomeIcons.upload, size: 18.sp, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}
