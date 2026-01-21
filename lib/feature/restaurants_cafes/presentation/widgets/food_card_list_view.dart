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
      image: 'assets/images/peanutButter.png',
      title: 'Abu Auf Chocolate Peanut Butter - 330 Gm',
      price: 'EGP 125.00',
    ),
    FoodItemModel(
      image: 'assets/images/datePlain.png',
      title: 'Abu Auf Date Spread Plain - 230 Gm',
      price: 'EGP 75.00',
    ),
    FoodItemModel(
      image: 'assets/images/dateCinnamon.png',
      title: 'Abu Auf Date Spread Cinnamon - 230 Gm',
      price: 'EGP 75.00',
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
