import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 143.w,
          height: 53.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.mainGreen),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.whatsapp, color: AppColors.mainGreen),
                SizedBox(width: 10.w),
                Text(
                  AppStrings.whatsapp,
                  style: AppTextstyles.font20mainGreenW600.copyWith(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 25.w),
        Container(
          width: 136.w,
          height: 53.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.mainGreen),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.phone, color: AppColors.mainGreen),
              SizedBox(width: 10.w),
              Text(
                AppStrings.callNow,
                style: AppTextstyles.font20mainGreenW600.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
