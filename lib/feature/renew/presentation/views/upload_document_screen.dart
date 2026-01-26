import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
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
      }, AppStrings.uploadDocuments),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  AppStrings.uploadDocumentsInstructions,
                  style: AppTextstyles.font10blackW300.copyWith(fontSize: 14),
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: AppStrings.membershipCard,
                  subtitle: AppStrings.uploadMembershipCardSub,
                  image: Assets.imagesCard,
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: AppStrings.nationalId,
                  subtitle: AppStrings.uploadIdSub,
                  image: Assets.imagesId,
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomDocumentContainer(
                  title: AppStrings.personalImage,
                  subtitle: AppStrings.personalImageSub,
                  image: Assets.imagesImage,
                  onTap: () {},
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: AppStrings.continueText,
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
