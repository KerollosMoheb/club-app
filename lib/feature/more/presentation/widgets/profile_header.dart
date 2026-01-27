import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, this.showEditIcon = false});
  final bool showEditIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage(Assets.imagesGirl),
            ),
            if (showEditIcon)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: const BoxDecoration(
                    color: AppColors.brightGreen,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: AppColors.mainGreen,
                    size: 20.sp,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          AppStrings.heba,
          style: AppTextstyles.font20whiteW600.copyWith(
            color: const Color(0xff181D27),
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppColors.mainGreen,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Text(
            '77421',
            style: AppTextstyles.font16darkGreyW600.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
