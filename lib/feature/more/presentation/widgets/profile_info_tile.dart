import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoTile extends StatelessWidget {
  const ProfileInfoTile({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    this.onEditTap,
  });

  final String title;
  final String value;
  final IconData icon;
  final VoidCallback? onEditTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(height: 10.h),
                Icon(icon, color: AppColors.mainGreen, size: 32.sp),
              ],
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextstyles.font16alreadyTextW600.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    value,
                    style: AppTextstyles.font14darkerGreyW400.copyWith(
                      color: AppColors.black,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: onEditTap,
                  child: Icon(
                    Icons.edit,
                    color: AppColors.mainGreen,
                    size: 24.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Divider(color: Colors.grey[200]),
        SizedBox(height: 10.h),
      ],
    );
  }
}
