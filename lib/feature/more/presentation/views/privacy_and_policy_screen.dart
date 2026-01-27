import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/build_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyAndPolicyScreen extends StatelessWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.privacyPolicy),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        children: [
          buildSectionHeader(AppStrings.introHeader),
          buildBodyText(AppStrings.privacyIntroBody),

          buildSectionHeader(AppStrings.infoCollectHeader),
          buildBodyText(
            'We may collect the following information to provide better services:',
          ),
          buildBulletPoint(
            'Personal details (such as name, phone number, email)',
          ),
          buildBulletPoint('Membership information'),
          buildBulletPoint(
            'Service usage data (activities, bookings, matches, events)',
          ),
          buildBulletPoint('Device and app usage information'),

          buildSectionHeader(AppStrings.howWeUseHeader),
          buildBodyText('We use your information to:'),
          buildBulletPoint('Manage your club membership and subscriptions'),
          buildBulletPoint('Provide access to club services and activities'),
          buildBulletPoint('Share match schedules, events, and offers'),

          buildSectionHeader(AppStrings.dataSharingHeader),
          buildBodyText(
            'We do not sell or rent your personal data. Your information may only be shared with:',
          ),
          buildBulletPoint(
            'Trusted service providers (medical clinics, partners, or facilities related to the club)',
          ),
          buildBulletPoint('Legal authorities if required by law'),

          buildSectionHeader(AppStrings.dataSecurityHeader),
          buildBodyText(AppStrings.dataSecurityBody),

          buildSectionHeader(AppStrings.userChoicesHeader),
          buildBodyText('You can:'),
          buildBulletPoint('View and update your personal information'),
          buildBulletPoint('Manage notification preferences'),
          buildBulletPoint(
            'Request account deactivation by contacting support',
          ),
          buildSectionHeader(AppStrings.thirdPartyHeader),
          buildBodyText(AppStrings.thirdPartyBody),

          buildSectionHeader(AppStrings.childrenPrivacyHeader),
          buildBodyText(AppStrings.childrenPrivacyBody),

          buildSectionHeader(AppStrings.updatesPolicyHeader),
          buildBodyText(AppStrings.updatesPolicyBody),

          buildSectionHeader(AppStrings.contactUsHeader),
          buildBodyText(AppStrings.contactUsBody),

          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
