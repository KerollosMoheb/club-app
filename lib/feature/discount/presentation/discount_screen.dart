import 'package:club_app/core/helper/extentions.dart';
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

  final List<String> categories = ['All', 'Medical', 'Hotels', 'Restaurants'];

  final List<DiscountModel> allDiscount = [
    DiscountModel(
      image: "assets/images/protoMarina.png",
      name: "Porto Marina",
      discount: "20% discount",
      category: "Medical",
    ),
    DiscountModel(
      image: "assets/images/saudiHospital.png",
      name: "Saudi German Hospital",
      discount: "50% discount on clinic consultations",
      category: "Medical",
    ),
    DiscountModel(
      image: "assets/images/tolipHotel.png",
      name: "Tolip Paradise Hotel",
      discount: "15% discount",
      category: "Hotels",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final filteredDiscount = _selectedCategoryIndex == 0
        ? allDiscount
        : allDiscount
              .where(
                (dis) => dis.category == categories[_selectedCategoryIndex],
              )
              .toList();

    return Scaffold(
      appBar: customAppBar(() => context.pop(), "Discount"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              DiscountCategories(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategoryChanged: (index) {
                  setState(() => _selectedCategoryIndex = index);
                },
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: filteredDiscount.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final sport = filteredDiscount[index];
                    return DiscountInfo(
                      image: sport.image,
                      name: sport.name,
                      discount: sport.discount,
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
