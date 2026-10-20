import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTimeDateRow extends StatelessWidget {
  const CustomTimeDateRow({
    super.key,
    required this.date,
    required this.time,
    required this.leftIcon,
    required this.rightIcon,
  });
  final String date;
  final String time;
  final FaIconData leftIcon;
  final FaIconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(leftIcon, color: AppColors.mainGreen, size: 20),
        SizedBox(width: 8.w),
        Text(date, style: AppTextstyles.font10blackW300.copyWith(fontSize: 14)),
        SizedBox(width: 17.w),
        FaIcon(rightIcon, color: AppColors.mainGreen, size: 20),
        SizedBox(width: 8.w),
        Text(time, style: AppTextstyles.font10blackW300.copyWith(fontSize: 14)),
      ],
    );
  }
}

class CustomLocationMembersRow extends StatelessWidget {
  const CustomLocationMembersRow({
    super.key,
    required this.location,
    required this.members,
    required this.leftIcon,
    required this.rightIcon,
  });

  final String location;
  final String members;
  final FaIconData leftIcon;
  final FaIconData rightIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(leftIcon, color: AppColors.mainGreen, size: 20),
        SizedBox(width: 8.w),
        Text(
          location,
          style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
        ),
        SizedBox(width: 60.w),
        FaIcon(rightIcon, color: AppColors.mainGreen, size: 20),
        SizedBox(width: 8.w),
        Text(
          members,
          style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
