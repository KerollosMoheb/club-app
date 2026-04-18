import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/widgets/call_info.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/services/models/gym_model.dart';
import 'package:club_app/feature/services/models/shop_model.dart';
import 'package:club_app/feature/services/presentation/widgets/custom_divider.dart';
import 'package:club_app/feature/services/presentation/widgets/days_schedual.dart';
import 'package:club_app/feature/services/presentation/widgets/location_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key, required this.shop});

  final ShopModel shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, shop.name),
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
                    shop.image,
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
                  shop.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
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
            ],
          ),
        ),
      ),
    );
  }
}
