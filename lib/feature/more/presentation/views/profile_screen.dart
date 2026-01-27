import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/profile_header.dart';
import 'package:club_app/feature/more/presentation/widgets/profile_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.profile),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const ProfileHeader(showEditIcon: true),
            SizedBox(height: 40.h),
            ProfileInfoTile(
              title: AppStrings.fullName,
              value: AppStrings.hebafullname,
              icon: Icons.person,
              onEditTap: () {},
            ),
            ProfileInfoTile(
              title: AppStrings.email,
              value: AppStrings.hebaEmail,
              icon: Icons.email,
              onEditTap: () {},
            ),
            ProfileInfoTile(
              title: AppStrings.phoneNumber,
              value: AppStrings.number,
              icon: Icons.phone,
              onEditTap: () {},
            ),
            ProfileInfoTile(
              title: AppStrings.date,
              value: AppStrings.birth,
              icon: Icons.calendar_today,
              onEditTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
