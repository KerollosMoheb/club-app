import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/discount/data/discount_model.dart';
import 'package:club_app/feature/discount/presentation/widgets/discount_categories.dart';
import 'package:club_app/feature/discount/presentation/widgets/discount_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({super.key});

  @override
  State<DiscountScreen> createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  int _selectedCategoryIndex = 0;
  final List<String> categories = [
    AppStrings.all,
    AppStrings.medical,
    AppStrings.hotels,
    AppStrings.restaurants,
  ];

  final List<DiscountModel> allDiscounts = [
    DiscountModel(
      image: Assets.imagesProtoMarina,
      name: AppStrings.portoMarina,
      discount: AppStrings.discount20,
      category: AppStrings.medical,
    ),
    DiscountModel(
      image: Assets.imagesSaudiHospital,
      name: AppStrings.saudiGermanHospital,
      discount: AppStrings.discount50,
      category: AppStrings.medical,
    ),
    DiscountModel(
      image: Assets.imagesTolipHotel,
      name: AppStrings.tolipParadiseHotel,
      discount: AppStrings.discount15,
      category: AppStrings.hotels,
    ),
    DiscountModel(
      image: Assets.imagesMokhtabar,
      name: AppStrings.mokhtabar,
      discount: AppStrings.discount20,
      category: AppStrings.medical,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredDiscounts = _selectedCategoryIndex == 0
        ? allDiscounts
        : allDiscounts
              .where((d) => d.category == categories[_selectedCategoryIndex])
              .toList();

    return Scaffold(
      appBar: customAppBar(() => context.pop(), AppStrings.discount),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              DiscountCategories(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategoryChanged: (index) =>
                    setState(() => _selectedCategoryIndex = index),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: filteredDiscounts.isEmpty
                    ? _buildEmptyState()
                    : _buildDiscountList(filteredDiscounts),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDiscountList(List<DiscountModel> items) {
    return ListView.separated(
      itemCount: items.length,
      padding: EdgeInsets.only(bottom: 20.h),
      separatorBuilder: (_, __) => SizedBox(height: 16.h),
      itemBuilder: (context, index) => DiscountInfo(model: items[index]),
    );
  }

  Widget _buildEmptyState() {
    return const Center(child: Text("No discounts available in this category"));
  }
}
