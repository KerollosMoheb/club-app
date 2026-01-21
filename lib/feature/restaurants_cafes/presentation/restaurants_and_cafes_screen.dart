import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/restaurants_cafes/data/restaurants_cafes_model.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/restaurant_cafe_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantsAndCafesScreen extends StatefulWidget {
  const RestaurantsAndCafesScreen({super.key});

  @override
  State<RestaurantsAndCafesScreen> createState() =>
      _RestaurantsAndCafesScreenState();
}

class _RestaurantsAndCafesScreenState extends State<RestaurantsAndCafesScreen> {
  final List<RestaurantsCafesModel> allRestaurantsCafes = [
    RestaurantsCafesModel(
      image: 'assets/images/abuAuf.png',
      name: 'Abu Auf',
      details:
          'Explore exquisite flavors at Abu Auf, your destination for premium coffee, nuts, and healthful delights. Elevate your taste experience with Abu Auf Now!',
    ),
    RestaurantsCafesModel(
      image: 'assets/images/albaraka.png',
      name: 'Al Baraka',
      details: 'El Baraka on your mind? Order your meal now and enjoy!',
    ),
    RestaurantsCafesModel(
      image: 'assets/images/abuAuf.png',
      name: 'Abu Auf',
      details:
          'Explore exquisite flavors at Abu Auf, your destination for premium coffee, nuts, and healthful delights. Elevate your taste experience with Abu Auf Now!',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Restaurants & Cafes'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.separated(
                  itemCount: allRestaurantsCafes.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final restaurantcafe = allRestaurantsCafes[index];
                    return RestaurantCafeInfo(
                      image: restaurantcafe.image,
                      name: restaurantcafe.name,
                      details: restaurantcafe.details,
                      onTap: () {
                        context.pushNamed(
                          Routes.restaurantsAndCafesDetailsScreen,
                          arguments: {
                            'name': restaurantcafe.name,
                            'details': restaurantcafe.details,
                            'image': restaurantcafe.image,
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
