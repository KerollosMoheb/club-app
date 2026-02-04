import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/activity_items.dart';
import 'package:flutter/material.dart';

class IncreaseYourPointsScreen extends StatelessWidget {
  const IncreaseYourPointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ActivityItem> items = [
      const ActivityItem(
        badgeIcon: Icons.person_add_alt_1_outlined,
        points: 500,
        title: 'Refer a New Member',
        description: 'Invite a friend to join the club this season.',
        icon: Icons.person_add,
        iconBgColor: AppColors.warningYellow,
      ),
      const ActivityItem(
        badgeIcon: Icons.calendar_today_outlined,
        points: 200,
        title: 'Renew Membership Early',
        description: 'Secure your spot for the next season before Oct 1st.',
        icon: Icons.calendar_month,
        iconBgColor: AppColors.primaryBlue,
      ),
      const ActivityItem(
        badgeIcon: Icons.list_alt_outlined,
        points: 30,
        title: 'Complete a Club Survey',
        description: 'Your feedback helps us provide a better experience.',
        icon: Icons.assignment,
        iconBgColor: AppColors.darkRed,
      ),
    ];

    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Increase your Points'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Turn your activity\ninto rewards',
                textAlign: TextAlign.center,
                style: AppTextstyles.font30blackW700,
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                'Complete simple tasks to earn loyalty points\nand redeem them for exclusive club gear.',
                textAlign: TextAlign.center,
                style: AppTextstyles.font15darkGreyW400.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 18),

            // Activity cards
            Column(
              children: items
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: ActivityCard(item: e),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
