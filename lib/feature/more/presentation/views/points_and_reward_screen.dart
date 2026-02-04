import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/reward_item.dart';
import 'package:flutter/material.dart';

class PointsAndRewardScreen extends StatelessWidget {
  const PointsAndRewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int currentPoints = 2450;
    const int targetPoints = 4000;
    final double progress = currentPoints / targetPoints;

    final List<RewardItem> rewards = [
      const RewardItem(
        title: 'Free Guest Pass',
        points: 1000,
        image: Assets.imagesPTSession,
      ),
      const RewardItem(
        title: 'Free Guest Pass',
        points: 500,
        image: Assets.imagesPTSession,
      ),
      const RewardItem(
        title: 'Free Guest Pass',
        points: 500,
        image: Assets.imagesPTSession,
      ),
      const RewardItem(
        title: 'Free Guest Pass',
        points: 500,
        image: Assets.imagesPTSession,
      ),
    ];

    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Points & Rewards'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Points circle
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 160,
                    height: 160,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 160,
                          height: 160,
                          child: CircularProgressIndicator(
                            value: progress.clamp(0.0, 1.0),
                            strokeWidth: 8,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                              AppColors.mainGreen,
                            ),
                            backgroundColor: AppColors.lightGreen,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '$currentPoints',
                              style: AppTextstyles.font12blackW500.copyWith(
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'POINTS',
                              style: AppTextstyles.font12blackW500.copyWith(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      context.pushNamed(Routes.increaseYourPointsScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.lightGreen,
                      foregroundColor: AppColors.mainGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Increase your Points ',
                          style: AppTextstyles.font12mainGreenW400,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.mainGreen,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Redeem header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Redeem Your Points',
                  style: AppTextstyles.font20whiteW600.copyWith(
                    color: AppColors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: AppTextstyles.font14mainGreenW500,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Grid of rewards
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: rewards.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, index) {
                final item = rewards[index];
                return RewardCard(item: item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
