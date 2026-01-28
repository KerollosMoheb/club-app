import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationContainer extends StatelessWidget {
  const ReservationContainer({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.status,
    required this.image,
    required this.statusColor,
  });

  final String title;
  final String date;
  final String time;
  final String status;
  final String image;
  final Color statusColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.surfaceGrey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                image,
                width: 68.w,
                height: 74.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, color: statusColor, size: 10),
                      SizedBox(width: 5.w),
                      Text(
                        status,
                        style: AppTextstyles.font14mainGreenW500.copyWith(
                          color: statusColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(title, style: AppTextstyles.font14blackW500),
                  SizedBox(height: 10.h),
                  Text(
                    date,
                    style: AppTextstyles.font12blackW500.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    time,
                    style: AppTextstyles.font12blackW500.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
