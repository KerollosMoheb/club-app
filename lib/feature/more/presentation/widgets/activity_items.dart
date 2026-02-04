import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityItem {
  final int points;
  final String title;
  final String description;
  final IconData icon;
  final IconData badgeIcon;
  final Color iconBgColor;

  const ActivityItem({
    required this.points,
    required this.title,
    required this.description,
    required this.icon,
    required this.iconBgColor,
    required this.badgeIcon,
  });
}

class ActivityCard extends StatelessWidget {
  final ActivityItem item;
  const ActivityCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceGrey,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.surfaceGrey,
            blurRadius: 8,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 6.h,
                        ),
                        child: Row(
                          children: [
                             Icon(
                              item.badgeIcon,
                              size: 20,
                              color: AppColors.mainGreen,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '+${item.points} pts',
                              style: AppTextstyles.font30blackW700.copyWith(
                                fontSize: 16,
                                color: AppColors.mainGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item.title,
                    style: AppTextstyles.font30blackW700.copyWith(fontSize: 18),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item.description,
                    style: AppTextstyles.font15darkGreyW400.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    width: 152.w,
                    height: 48.h,
                    onTap: () {},
                    text: _buttonLabel(item),
                    color: AppColors.mainGreen,
                    style: AppTextstyles.font30blackW700.copyWith(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                color: item.iconBgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(item.icon, size: 36, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  String _buttonLabel(ActivityItem item) {
    // Simple heuristic for button text
    if (item.title.toLowerCase().contains('refer')) return 'Refer Friend';
    if (item.title.toLowerCase().contains('renew')) return 'Renew Now';
    if (item.title.toLowerCase().contains('survey')) return 'Start Survey';
    return 'Start';
  }
}
