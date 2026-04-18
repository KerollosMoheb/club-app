import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/services/models/gym_model.dart';
import 'package:club_app/feature/services/models/shop_model.dart';
import 'package:club_app/feature/services/presentation/widgets/gym_list_view.dart';
import 'package:club_app/feature/services/presentation/widgets/shop_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<ShopModel> allShops = [
    ShopModel(
      image: Assets.imagesShop1,
      name: AppStrings.shop1,
      description:
          "Sells various kinds of sweets, chocolates, juices and carbonated drinks.",
    ),
    ShopModel(
      image: Assets.imagesShop2,
      name: AppStrings.shop2,
      description: "Sports clothing store",
    ),
    ShopModel(
      image: Assets.imagesShop3,
      name: AppStrings.shop3,
      description:
          "Sells various kinds of sweets, chocolates, juices and carbonated drinks.",
    ),
    ShopModel(
      image: Assets.imagesShop4,
      name: AppStrings.shop4,
      description: "Sports supplies",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'Shops'),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: ShopListView(allShops: allShops),
      ),
    );
  }
}
