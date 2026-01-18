import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: AppTextstyles.font18blackW500,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.darkGreen),
          ),
        ),
      ),
    );
  }
}
