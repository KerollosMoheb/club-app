import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/feature/services/presentation/widgets/service_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({super.key});

  final List<Map<String, dynamic>> serviceItems = [
    {
      'title': AppStrings.medicalClinics,
      'icon': Image.asset(Assets.imagesStethoscope),
      'route': '/medicalClinicsScreen',
    },
    {
      'title': AppStrings.sports,
      'icon': Image.asset(Assets.imagesTrophy),
      'route': '/sportsActivitiesScreen',
    },
    {
      'title': AppStrings.gyms,
      'icon': Image.asset(Assets.imagesFitnessCenter),
      'route': '/gymScreen',
    },
    {
      'title': AppStrings.shops,
      'icon': Image.asset(Assets.imagesStore),
      'route': '/shopScreen',
    },
    {
      'title': AppStrings.restaurantsCafes,
      'icon': Image.asset(Assets.imagesFastfood),
      'route': '/restaurantsAndCafesScreen',
    },
    {
      'title': AppStrings.events,
      'icon': Image.asset(Assets.imagesEventList),
      'route': '/eventsScreen',
    },
    {
      'title': AppStrings.busRoutes,
      'icon': Image.asset(Assets.imagesDirectionsBus),
      'route': '/medicalClinicsScreen',
    },
    {
      'title': AppStrings.trips,
      'icon': Image.asset(Assets.imagesTravel),
      'route': '/medicalClinicsScreen',
    },
    {
      'title': AppStrings.discount,
      'icon': Image.asset(Assets.imagesPercentDiscount),
      'route': '/medicalClinicsScreen',
    },
    {
      'title': AppStrings.renewMembership,
      'icon': Image.asset(Assets.imagesAutorenew),
      'route': '/renewScreen',
    },
    {
      'title': AppStrings.others,
      'icon': Image.asset(Assets.imagesMore),
      'route': '/medicalClinicsScreen',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: ServiceGridView(serviceItems: serviceItems),
        ),
      ),
    );
  }
}
