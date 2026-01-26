import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/feature/restaurants_cafes/data/food_item_model.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodCardListView extends StatefulWidget {
  const FoodCardListView({super.key});

  @override
  State<FoodCardListView> createState() => _FoodCardListViewState();
}

class _FoodCardListViewState extends State<FoodCardListView> {
  static List<FoodItemModel> foodItems = [
    FoodItemModel(
      image: Assets.imagesPeanutButter,
      title: AppStrings.abuAufChocolatePeanutButter,
      price: AppStrings.priceEgp125,
    ),
    FoodItemModel(
      image: Assets.imagesDatePlain,
      title: AppStrings.abuAufDateSpreadPlain,
      price: AppStrings.priceEgp75,
    ),
    FoodItemModel(
      image: Assets.imagesDateCinnamon,
      title: AppStrings.abuAufDateSpreadCinnamon,
      price: AppStrings.priceEgp75,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodItems.length,
      itemBuilder: (context, index) => FoodCard(foodItem: foodItems[index]),
    );
  }
}
