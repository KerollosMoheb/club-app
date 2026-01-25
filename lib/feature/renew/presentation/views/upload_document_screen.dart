import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/renew/presentation/widgets/custom_document_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Upload Documents'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Please upload the following documents to continue with your renewal process. High-quality images help us verify your identity faster.',
                  style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: 'Membership Card',
                  subtitle: 'Upload your current membership card',
                  image: 'assets/images/card.png',
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: 'National ID',
                  subtitle: 'Upload your ID Card',
                  image: 'assets/images/id.png',
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: 'Personal Image',
                  subtitle: 'A recent photo showing your face clearly',
                  image: 'assets/images/image.png',
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Continue',
                  color: AppColors.mainGreen,
                  style: AppTextstyles.font20whiteW600,
                  onTap: () {
                    context.pushNamed(Routes.verificationScreen);
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
