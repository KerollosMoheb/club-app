import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/call_info.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/sports_activities/presentation/widgets/days_sport_schedual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({
    super.key,
    required this.name,
    required this.price,
    required this.age,
    required this.image,
  });
  final String name;
  final String price;
  final String age;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() => context.pop(), name),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5.h),
            Image.asset(image, width: 105.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 31.h),
                  Text(
                    '$price EGP/ Month',
                    style: AppTextstyles.font16darkGreyW600,
                  ),
                  SizedBox(height: 21.h),
                  Divider(),
                  SizedBox(height: 15.h),
                  Text(age, style: AppTextstyles.font15darkGreyW400),
                  SizedBox(height: 15.h),
                  Divider(),
                  SizedBox(height: 18.h),
                  Text(
                    AppStrings.workingHours,
                    style: AppTextstyles.font16alreadyTextW600.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  DaysSportSchedual(),
                  SizedBox(height: 30.h),
                  CallInfo(
                    lefttitle: AppStrings.whatsapp,
                    leftIcon: FontAwesomeIcons.whatsapp,
                    rightTitle: AppStrings.call,
                    rightIcon: FontAwesomeIcons.phone,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Icon(FontAwesomeIcons.locationDot, size: 24.sp),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        AppStrings.plungePool,
                        style: AppTextstyles.font14blackW500.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                  SizedBox(height: 11.h),
                  Center(
                    child: CustomButton(
                      text: AppStrings.bookNow,
                      color: AppColors.mainGreen,
                      style: AppTextstyles.font20whiteW600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
