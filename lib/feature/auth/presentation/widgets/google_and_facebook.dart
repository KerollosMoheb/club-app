import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleAndFacebook extends StatelessWidget {
  const GoogleAndFacebook({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
  });
  final String imagePath;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300.w,
        height: 53.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.mainGreen),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 30.w),
            SizedBox(width: 13.w),
            Text(text, style: AppTextstyles.font14blackW600),
          ],
        ),
      ),
    );
  }
}
