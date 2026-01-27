import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/call_info.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.helpSupport),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Text(
              AppStrings.howCanWeHelp,
              style: AppTextstyles.font20whiteW700.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.topQuestions,
                  style: AppTextstyles.font20whiteW700.copyWith(
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.seeAll,
                    style: AppTextstyles.font10blackW300.copyWith(
                      color: AppColors.mainGreen,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            _buildSupportTile(Icons.bookmark, AppStrings.membershipRenewals),
            _buildSupportTile(Icons.calendar_today, AppStrings.bookings),
            _buildSupportTile(Icons.sync, AppStrings.rules),
            SizedBox(height: 40.h),
            Text(
              AppStrings.stillNeedHelp,
              style: AppTextstyles.font20whiteW700.copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
              text: AppStrings.startLiveChat,
              color: AppColors.mainGreen,
              style: AppTextstyles.font20whiteW600,
              onTap: () {
                context.pushNamed(Routes.chatWithAlexScreen);
              },
            ),
            SizedBox(height: 45.h),
            CallInfo(
              lefttitle: AppStrings.call,
              leftIcon: FontAwesomeIcons.phone,
              rightTitle: AppStrings.email,
              rightIcon: FontAwesomeIcons.envelope,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportTile(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.deepGrey)),
      ),
      child: ExpansionTile(
        leading: Icon(icon, color: AppColors.mainGreen, size: 26),
        title: Text(
          title,
          style: AppTextstyles.font14blackW500.copyWith(fontSize: 16),
        ),
        trailing: const Icon(Icons.keyboard_arrow_down),
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: const Text("Sample FAQ content goes here..."),
          ),
        ],
      ),
    );
  }
}
