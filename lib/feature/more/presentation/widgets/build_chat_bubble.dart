import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildChatBubble(String message, String time, {required bool isAlex}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15.h),
    child: Row(
      mainAxisAlignment: isAlex
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isAlex) _buildSmallAvatar(Assets.imagesBot),
        SizedBox(width: 8.w),
        Flexible(
          child: Column(
            crossAxisAlignment: isAlex
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: isAlex
                      ? AppColors.softGreenBg
                      : AppColors.lightGreen,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  message,
                  style: AppTextstyles.font11blackW400.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                time,
                style: AppTextstyles.font20whiteW600.copyWith(
                  fontSize: 7,
                  color: AppColors.charcolGrey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 8.w),
        if (!isAlex) _buildSmallAvatar(Assets.imagesGirl),
      ],
    ),
  );
}

Widget _buildSmallAvatar(String path) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50.r),
    child: Image.asset(path, width: 50.w),
  );
}
