import 'package:club_app/core/themeing/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.style, this.onTap,
  });
  final String text;
  final Color color;
  final TextStyle style;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 53,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.darkGreen)
        ),
        child: Center(child: Text(text, style: style)),
      ),
    );
  }
}
