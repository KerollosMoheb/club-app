import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceItems extends StatelessWidget {
  const ServiceItems({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final Widget icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceGrey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          //  mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 52.w,
              height: 52.h,
              margin: EdgeInsets.only(top: 12.h),
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(child: icon),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: AppTextstyles.font14blackW500.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
