import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/services/models/gym_model.dart';
import 'package:club_app/feature/services/presentation/widgets/gym_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GymScreen extends StatelessWidget {
  GymScreen({super.key});

  final List<GymModel> allGyms = [
    GymModel(
      image: Assets.imagesGym1,
      name: AppStrings.gym1,
      price: "Price: 200 EGP",
    ),
    GymModel(
      image: Assets.imagesGym2,
      name: AppStrings.gym2,
      price: "Price: 250 EGP",
    ),
    GymModel(
      image: Assets.imagesGym3,
      name: AppStrings.gym3,
      price: "Price: 300 EGP",
    ),
    GymModel(
      image: Assets.imagesGym4,
      name: AppStrings.gym4,
      price: "Price: 350 EGP",
    ),
    GymModel(
      image: Assets.imagesGym5,
      name: AppStrings.gym5,
      price: "Price: 400 EGP",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Gyms'),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GymListView(allGyms: allGyms),
      ),
    );
  }
}
