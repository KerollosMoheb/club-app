import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/splash/sport_model.dart';
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
    'All',
    'Swimming & Water Games',
    'Football',
    'Handball',
    'Volleyball',
  ];

  final List<SportModel> allSports = [
    SportModel(
      image: "assets/images/waterPolo.png",
      name: "Water Polo (Academy)",
      age: "Age: 4 Years - 10 Years",
      price: "Price: 1500",
      available: "Available: Saturday, Monday, Wednesday",
      category: "Swimming & Water Games",
    ),
    SportModel(
      image: "assets/images/volleyBall.png",
      name: "Volleyball (Academy)",
      age: "Age: 7 Years - 8 Years",
      price: "Price: 1500",
      available: "Available: Saturday, Monday, Wednesday",
      category: "Volleyball",
    ),
    SportModel(
      image: "assets/images/handBall.png",
      name: "Handball (Schools)",
      age: "Age: 8 Years - 16 Years",
      price: "Price: 1200",
      available: "Available: Saturday, Monday, Wednesday",
      category: "Handball",
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
      appBar: customAppBar(() => context.pop(), "Sports Activities"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
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
