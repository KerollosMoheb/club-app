import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/widgets/call_info.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/services/models/gym_model.dart';
import 'package:club_app/feature/services/presentation/widgets/custom_divider.dart';
import 'package:club_app/feature/services/presentation/widgets/days_schedual.dart';
import 'package:club_app/feature/services/presentation/widgets/location_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GymDetails extends StatelessWidget {
  const GymDetails({super.key, required this.gym});

  final GymModel gym;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, gym.name),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 👈 يخلي الكلام شمال
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    gym.image,
                    width: 120.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  gym.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              CustomDivider(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text('12 classes'),
              ),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text('Aerobics Class: 50 EGP/ session'),
              ),
              SizedBox(height: 7.h),
              CustomDivider(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  'Working Hours',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              DaysSchedual(),
              SizedBox(height: 20.h),
              CallInfo(
                lefttitle: 'Whatsapp',
                leftIcon: FontAwesomeIcons.whatsapp,
                rightTitle: 'Phone',
                rightIcon: FontAwesomeIcons.phone,
              ),
              SizedBox(height: 20.h),
              LocationInfo(location: 'Next to Gate 1'),
              SizedBox(height: 30.h),
              Center(
                child: Expanded(
                  child: CustomButton(
                    text: 'Book Now',
                    color: AppColors.darkGreen,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
