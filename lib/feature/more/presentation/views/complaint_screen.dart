import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/more/presentation/widgets/build_attachment_box.dart';
import 'package:club_app/feature/more/presentation/widgets/build_description_feild.dart';
import 'package:club_app/feature/more/presentation/widgets/build_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.submitComplaint),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.helpUsImprove,
              textAlign: TextAlign.center,
              style: AppTextstyles.font20whiteW600.copyWith(
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              AppStrings.complaintDescription,
              textAlign: TextAlign.center,
              style: AppTextstyles.font11blackW400.copyWith(fontSize: 16),
            ),
            SizedBox(height: 20.h),
            _buildLabel(AppStrings.category),
            SizedBox(height: 8.h),
            buildDropdown(),
            SizedBox(height: 20.h),
            _buildLabel(AppStrings.description),
            SizedBox(height: 8.h),
            buildDescriptionField(),
            SizedBox(height: 20.h),
            _buildLabel(AppStrings.attachments),
            SizedBox(height: 8.h),
            buildAttachmentBox(),
            SizedBox(height: 30.h),
            CustomButton(
              text: AppStrings.submit,
              color: AppColors.mainGreen,
              style: AppTextstyles.font20whiteW600,
              onTap: () {},
              width: double.infinity,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Text(
      label,
      style: AppTextstyles.font12blackW500.copyWith(fontSize: 20.sp),
    );
  }
}
