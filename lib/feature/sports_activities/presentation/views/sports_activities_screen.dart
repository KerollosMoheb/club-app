import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/sports_activities/data/sport_model.dart';
import 'package:club_app/feature/sports_activities/presentation/widgets/sports_categories.dart';
import 'package:club_app/feature/sports_activities/presentation/widgets/sports_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportsActivitiesScreen extends StatefulWidget {
  const SportsActivitiesScreen({super.key});

  @override
  State<SportsActivitiesScreen> createState() => _SportsActivitiesScreenState();
}

class _SportsActivitiesScreenState extends State<SportsActivitiesScreen> {
  int _selectedCategoryIndex = 0;

  final List<String> categories = [
    AppStrings.all,
    AppStrings.swimmingWaterGames,
    AppStrings.football,
    AppStrings.handball,
    AppStrings.volleyball,
  ];

  final List<SportModel> allSports = [
    SportModel(
      image: Assets.imagesWaterPolo,
      name: AppStrings.waterPoloAcademy,
      age: AppStrings.ageFourToTen,
      price: AppStrings.price1500,
      available: AppStrings.availableDays,
      category: AppStrings.swimmingWaterGames,
    ),
    SportModel(
      image: Assets.imagesVolleyBall,
      name: AppStrings.volleyballAcademy,
      age: AppStrings.ageSevenToEight,
      price: AppStrings.price1500,
      available: AppStrings.availableDays,
      category: AppStrings.volleyball,
    ),
    SportModel(
      image: Assets.imagesHandBall,
      name: AppStrings.handballSchools,
      age: AppStrings.ageEightToSixteen,
      price: AppStrings.price1200,
      available: AppStrings.availableDays,
      category: AppStrings.handball,
    ),
    SportModel(
      image: Assets.imagesBasketball,
      name: AppStrings.girlsBasketball,
      age: AppStrings.ageEightToSixteen,
      price: AppStrings.price1200,
      available: AppStrings.availableDays,
      category: AppStrings.basketball,
    ),
    SportModel(
      image: Assets.imagesFootall,
      name: AppStrings.boysFootball,
      age: AppStrings.ageEightToSixteen,
      price: AppStrings.price1200,
      available: AppStrings.availableDays,
      category: AppStrings.football,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final filteredSports = _selectedCategoryIndex == 0
        ? allSports
        : allSports
              .where(
                (sport) => sport.category == categories[_selectedCategoryIndex],
              )
              .toList();

    return Scaffold(
      appBar: customAppBar(() => context.pop(), AppStrings.sportsActivities),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              SportsCategories(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategoryChanged: (index) {
                  setState(() => _selectedCategoryIndex = index);
                },
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: filteredSports.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final sport = filteredSports[index];
                    return SportsInfo(
                      image: sport.image,
                      name: sport.name,
                      age: sport.age,
                      price: sport.price,
                      available: sport.available,
                      onTap: () {
                        context.pushNamed(
                          Routes.sportScreen,
                          arguments: {
                            'name': sport.name,
                            'price': sport.price,
                            'age': sport.age,
                            'image': sport.image,
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
