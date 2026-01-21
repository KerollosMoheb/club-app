import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeAndEatMethod extends StatelessWidget {
  const TimeAndEatMethod({
    super.key,
    required this.icon,
    required this.colorText,
    required this.text,
    required this.colorBackground,
  });
  final IconData icon;
  final Color colorText;
  final Color colorBackground;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Row(
          children: [
            Icon(icon, color: colorText, size: 20),
            SizedBox(width: 7.w),
            Text(
              text,
              style: AppTextstyles.font12mainGreenW400.copyWith(
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
