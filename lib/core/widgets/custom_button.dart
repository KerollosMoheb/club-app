import 'package:club_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.style,
    this.onTap,
    this.width,
    this.height,
  });
  final String text;
  final Color color;
  final TextStyle style;
  final void Function()? onTap;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 300.w,
        height: height ?? 53.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.mainGreen),
        ),
        child: Center(child: Text(text, style: style)),
      ),
    );
  }
}
