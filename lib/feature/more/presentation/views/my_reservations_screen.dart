import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/reservation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationsScreen extends StatefulWidget {
  const MyReservationsScreen({super.key});

  @override
  State<MyReservationsScreen> createState() => _MyReservationsScreenState();
}

class _MyReservationsScreenState extends State<MyReservationsScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'My Reservations'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            buildTabBar(),
            SizedBox(height: 30.h),
            ReservationContainer(
              title: 'Yoga Wellness Workshop',
              date: '22 Jan 2026',
              time: '10:00 AM - 1:00PM',
              status: 'Pending',
              image: Assets.imagesYoga,
              statusColor: Color(0xffEAB308),
            ),
            SizedBox(height: 30.h),
            ReservationContainer(
              title: 'Dr.Rasha Saleh',
              date: '14 Jan 2026',
              time: '11:00 AM - 11:30 AM',
              status: 'Confirmed',
              image: Assets.imagesFemaleDoctor,
              statusColor: Color(0xff13EC5B),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.brightGreen,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _selectedTabIndex = 0),
              child: Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Container(
                  width: 178.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: _selectedTabIndex == 0
                        ? AppColors.mainGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Upcoming',
                    style: _selectedTabIndex == 0
                        ? AppTextstyles.font20whiteW600.copyWith(
                            fontWeight: FontWeight.w500,
                          )
                        : AppTextstyles.font20mainGreenW600.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => _selectedTabIndex = 1),
              child: Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Container(
                  width: 178.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: _selectedTabIndex == 1
                        ? AppColors.mainGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'History',
                    style: _selectedTabIndex == 1
                        ? AppTextstyles.font20whiteW600.copyWith(
                            fontWeight: FontWeight.w500,
                          )
                        : AppTextstyles.font20mainGreenW600.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
