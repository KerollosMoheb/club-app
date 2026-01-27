import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreTile extends StatelessWidget {
  const MoreTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.trailing,
    this.isLogout = false,
  });

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.mainGreen, size: 24.sp),
      title: Text(
        title,
        style: AppTextstyles.font14blackW600.copyWith(fontSize: 16.sp),
      ),
      trailing:
          trailing ??
          Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: AppColors.mainGreen,
          ),
    );
  }
}
