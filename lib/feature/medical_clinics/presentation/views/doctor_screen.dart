import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/call_info.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/medical_clinics/presentation/widgets/days_doctor_schedual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({
    super.key,
    required this.name,
    required this.specialty,
    required this.location,
    required this.image,
  });
  final String name;
  final String specialty;
  final String location;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() => context.pop(), name),
      body: SafeArea(
        child: SingleChildScrollView(
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
                    Text(specialty, style: AppTextstyles.font16darkGreyW600),
                    SizedBox(height: 21.h),
                    Divider(color: AppColors.deepGrey),
                    SizedBox(height: 15.h),
                    Text(location, style: AppTextstyles.font15darkGreyW400),
                    SizedBox(height: 15.h),
                    Divider(color: AppColors.deepGrey),
                    SizedBox(height: 18.h),
                    Text(
                      AppStrings.workingHours,
                      style: AppTextstyles.font16alreadyTextW600.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    DaysDoctorSchedual(),
                    SizedBox(height: 30.h),
                    CallInfo(
                      lefttitle: AppStrings.whatsapp,
                      leftIcon: FontAwesomeIcons.whatsapp,
                      rightTitle: AppStrings.call,
                      rightIcon: FontAwesomeIcons.phone,
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Icon(
                            FontAwesomeIcons.locationDot,
                            size: 24.sp,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            location,
                            style: AppTextstyles.font14blackW500.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
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
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
