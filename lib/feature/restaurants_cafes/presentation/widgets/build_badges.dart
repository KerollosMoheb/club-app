import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/time_and_eat_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildBadges() {
  return Row(
    children: [
      TimeAndEatMethod(
        icon: Icons.access_time_filled,
        colorText: AppColors.linkBlue,
        colorBackground: AppColors.lightBlueBg,
        text: AppStrings.preparationTime15to20,
      ),
      SizedBox(width: 8.w),
      TimeAndEatMethod(
        icon: FontAwesomeIcons.utensils,
        colorText: AppColors.softRed,
        colorBackground: AppColors.lightOrangeBg,
        text: AppStrings.dineInTakeaway,
      ),
    ],
  );
}
