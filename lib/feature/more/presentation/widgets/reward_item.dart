import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardItem {
  final String title;
  final int points;
  final String image;

  const RewardItem({
    required this.title,
    required this.points,
    required this.image,
  });
}

class RewardCard extends StatelessWidget {
  final RewardItem item;
  const RewardCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceGrey,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.surfaceGrey,
            blurRadius: 10,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: AspectRatio(
              aspectRatio: 3 / 2.3,
              child: Image.asset(item.image, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTextstyles.font14blackW500.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  '${item.points} Points',
                  style: AppTextstyles.font14mainGreenW300.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  width: 133.w,
                  height: 43.h,
                  text: 'Redeem',
                  color: AppColors.mainGreen,
                  style: AppTextstyles.font20whiteW600.copyWith(fontSize: 16),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
