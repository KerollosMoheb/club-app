import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/renew/presentation/widgets/membership_status_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RenewScreen extends StatelessWidget {
  const RenewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.membershipRenewal),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            Text(
              AppStrings.annualMembershipRenewal,
              textAlign: TextAlign.center,
              style: AppTextstyles.font20whiteW600.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 11.h),
            Text(
              AppStrings.renewalDescription,
              textAlign: TextAlign.center,
              style: AppTextstyles.font14blackW500.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 70.h),
            MembershipStatusContainer(),
            SizedBox(height: 70.h),
            CustomButton(
              text: AppStrings.renew,
              color: AppColors.mainGreen,
              style: AppTextstyles.font20whiteW600,
              onTap: () {
                context.pushNamed(Routes.uploadDocumentScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
