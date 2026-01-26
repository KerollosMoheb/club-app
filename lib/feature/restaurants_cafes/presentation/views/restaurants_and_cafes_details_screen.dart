import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/build_badges.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/build_header_image.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/build_section_title.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_card_list_view.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantsAndCafesDetailsScreen extends StatefulWidget {
  final String name, details, image;
  const RestaurantsAndCafesDetailsScreen({
    super.key,
    required this.name,
    required this.details,
    required this.image,
  });

  @override
  State<RestaurantsAndCafesDetailsScreen> createState() =>
      _DetailsScreenState();
}

class _DetailsScreenState extends State<RestaurantsAndCafesDetailsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() => context.pop(), widget.name),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              buildHeaderImage(widget),
              SizedBox(height: 16.h),
              Text(
                widget.details,
                style: AppTextstyles.font11blackW400.copyWith(fontSize: 13),
              ),
              SizedBox(height: 20.h),
              buildBadges(),
              SizedBox(height: 24.h),
              FoodCategories(
                categories: [
                  AppStrings.healthyFood,
                  AppStrings.hotDrinks,
                  AppStrings.coldDrinks,
                  AppStrings.crackers,
                ],
                selectedIndex: selectedIndex,
                onCategoryChanged: (i) => setState(() => selectedIndex = i),
              ),
              buildSectionTitle(AppStrings.healthyFood),
              const FoodCardListView(),
              CustomButton(
                text: AppStrings.callToOrder,
                color: AppColors.mainGreen,
                style: AppTextstyles.font20whiteW600,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
