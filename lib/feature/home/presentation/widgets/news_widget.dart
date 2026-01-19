import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/feature/home/presentation/widgets/custom_home_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 450.h,
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/managerSquad.png'),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              'The General Assembly authorizes the\n Board of Directors to research and \ndiscuss the agenda.',
              style: AppTextstyles.font14blackW600.copyWith(fontSize: 15.sp),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Text(
              'The General Assembly of Al-Ittihad Alexandria Club was held today, Friday, December 26, 2025, at the club\'s headquarters in Shatby. The meeting included the election of a new board of directors in a wonderful, familial atmosphere and with a large turnout of members, reflecting the usual high standards of the club\'s general assembly. The meeting was attended by the club\'s board of directors, headed by Mr. Mohamed Salama, Mr. Jasser Shams, the executive director, and Dr. Safaa El-Sherif',
              style: AppTextstyles.font11blackW400,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: CustomRowText(
              firstText: 'abdullah',
              secondtText: '1 Jan, 2026',
              style1: AppTextstyles.font14lightGreenW300,
              style2: AppTextstyles.font14lightGreenW300,
            ),
          ),
        ],
      ),
    );
  }
}
