import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodCardListView extends StatefulWidget {
  const FoodCardListView({super.key});

  @override
  State<FoodCardListView> createState() => _FoodCardListViewState();
}

class _FoodCardListViewState extends State<FoodCardListView> {
  final List<Map<String, dynamic>> foodImages = [
    {
      'image': 'assets/images/peanutButter.png',
      'title': 'Abu Auf Chocolate Peanut Butter - 330 Gm',
      'price': 'EGP 125.00',
    },
    {
      'image': 'assets/images/datePlain.png',
      'title': 'Abu Auf Date Spread Plain - 230 Gm',
      'price': 'EGP 75.00',
    },
    {
      'image': 'assets/images/dateCinnamon.png',
      'title': 'Abu Auf Date Spread Cinnamon - 230 Gm',
      'price': 'EGP 75.00',
    },
    {
      'image': 'assets/images/datePlain.png',
      'title': 'Abu Auf Date Spread Plain - 230 Gm',
      'price': 'EGP 75.00',
    },
    {
      'image': 'assets/images/dateCinnamon.png',
      'title': 'Abu Auf Date Spread Cinnamon - 230 Gm',
      'price': 'EGP 75.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: FoodCard(
            image: foodImages[index]['image'],
            title: foodImages[index]['title'],
            price: foodImages[index]['price'],
          ),
        );
      },
    );
  }
}
