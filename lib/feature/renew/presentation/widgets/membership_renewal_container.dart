import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MembershipRenewalContainer extends StatelessWidget {
  const MembershipRenewalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.deepGrey,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Membership Renewal',
                  style: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: Color(0xff0A0A0A),
                  ),
                ),
                Spacer(),
                Text('STEP 3 OF 3', style: AppTextstyles.font14darkerGreyW400),
              ],
            ),
            SizedBox(height: 8.h),
            Divider(
              color: AppColors.mainGreen,
              thickness: 8,
              radius: BorderRadius.circular(44739200.r),
            ),
          ],
        ),
      ),
    );
  }
}
