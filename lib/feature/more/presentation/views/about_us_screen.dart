import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.aboutUs),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAboutParagraph(AppStrings.aboutUsPara1),
            SizedBox(height: 24.h),
            _buildAboutParagraph(AppStrings.aboutUsPara2),
            SizedBox(height: 24.h),
            _buildAboutParagraph(AppStrings.aboutUsPara3),
            SizedBox(height: 32.h),
            Text(
              AppStrings.aboutUsWelcome,
              style: AppTextstyles.font11blackW400.copyWith(
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutParagraph(String text) {
    return Text(
      text,
      style: AppTextstyles.font11blackW400.copyWith(fontSize: 14, height: 1.6),
    );
  }
}
