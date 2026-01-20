import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/feature/home/presentation/widgets/home_items.dart';
import 'package:flutter/material.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key, required this.homeItems});

  final List<Map<String, dynamic>> homeItems;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 23,
        childAspectRatio: .75,
      ),
      itemCount: homeItems.length,
      itemBuilder: (context, index) {
        return HomeItems(
          text: homeItems[index]['title'],
          icon: homeItems[index]['icon'],
          onTap: () {
            context.pushNamed(homeItems[index]['route']);
          },
        );
      },
    );
  }
}
