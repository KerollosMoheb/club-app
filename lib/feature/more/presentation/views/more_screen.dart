import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/feature/more/presentation/widgets/build_logout_button.dart';
import 'package:club_app/feature/more/presentation/widgets/more_tile.dart';
import 'package:club_app/feature/more/presentation/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const Center(child: ProfileHeader()),
              SizedBox(height: 30.h),
              _buildSectionTitle(AppStrings.account),
              SizedBox(height: 10.h),
              MoreTile(
                title: AppStrings.profile,
                icon: Icons.person,
                onTap: () {
                  context.pushNamed(Routes.profileScreen);
                },
              ),
              MoreTile(
                title: AppStrings.notifications,
                icon: Icons.notifications,
                onTap: () {
                  context.pushNamed(Routes.notificationScreen);
                },
              ),
              MoreTile(
                title: AppStrings.language,
                icon: Icons.translate,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'English',
                      style: AppTextstyles.font14blackW500.copyWith(
                        color: AppColors.lighterGrey,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColors.mainGreen,
                    ),
                  ],
                ),
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              _buildSectionTitle(AppStrings.preferences),
              SizedBox(height: 10.h),
              MoreTile(
                title: AppStrings.reservations,
                icon: Icons.calendar_today,
                onTap: () {
                  context.pushNamed(Routes.myReservationsScreen);
                },
              ),
              MoreTile(
                title: AppStrings.complaints,
                icon: Icons.chat_bubble_outline,
                onTap: () {
                  context.pushNamed(Routes.complaintScreen);
                },
              ),
              MoreTile(
                title: AppStrings.abouttheclub,
                icon: Icons.info_outline,
                onTap: () {
                  context.pushNamed(Routes.aboutUsScreen);
                },
              ),
              MoreTile(
                title: AppStrings.board,
                icon: Icons.groups,
                onTap: () {
                  context.pushNamed(Routes.directorsScreen);
                },
              ),
              SizedBox(height: 20.h),
              _buildSectionTitle(AppStrings.support),
              SizedBox(height: 10.h),
              MoreTile(
                title: AppStrings.helpSupport,
                icon: Icons.help_outline,
                onTap: () {
                  context.pushNamed(Routes.helpAndSupportScreen);
                },
              ),
              MoreTile(
                title: AppStrings.privacyPolicy,
                icon: Icons.security,
                onTap: () {
                  context.pushNamed(Routes.privacyAndPolicyScreen);
                },
              ),
              SizedBox(height: 30.h),
              buildLogoutButton(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTextstyles.font18blackW500.copyWith(fontSize: 20.sp),
    );
  }
}
