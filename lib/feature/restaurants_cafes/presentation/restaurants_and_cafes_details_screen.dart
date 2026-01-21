import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_card_list_view.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/food_categories.dart';
import 'package:club_app/feature/restaurants_cafes/presentation/widgets/time_and_eat_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestaurantsAndCafesDetailsScreen extends StatefulWidget {
  const RestaurantsAndCafesDetailsScreen({
    super.key,
    required this.name,
    required this.details,
    required this.image,
  });
  final String name;
  final String details;
  final String image;
  @override
  State<RestaurantsAndCafesDetailsScreen> createState() =>
      _RestaurantsAndCafesDetailsScreenState();
}

class _RestaurantsAndCafesDetailsScreenState
    extends State<RestaurantsAndCafesDetailsScreen> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Healthy Food',
    'Hot Drinks',
    'Cold Drinks',
    'Crackers',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, widget.name),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5.h),
              Container(
                width: 87.w,
                height: 87.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  //border: Border.all(color: Color(0xffF2F2F2)),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    Text(
                      widget.details,
                      style: AppTextstyles.font11blackW400.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 21.h),
                    Row(
                      children: [
                        TimeAndEatMethod(
                          icon: FontAwesomeIcons.clock,
                          colorText: Color(0xff266CED),
                          colorBackground: Color(0xffEFF6FF),
                          text: '15 - 20 min',
                        ),
                        SizedBox(width: 5.w),
                        TimeAndEatMethod(
                          icon: FontAwesomeIcons.utensils,
                          colorText: Color(0xffCA3734),
                          colorBackground: Color(0xffFFF7ED),
                          text: 'Dine in & Takeaway',
                        ),
                      ],
                    ),
                    SizedBox(height: 21.h),
                    FoodCategories(
                      categories: categories,
                      selectedIndex: selectedIndex,
                      onCategoryChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(height: 21.h),
                    Text(
                      'Healthy Food',
                      style: AppTextstyles.font16alreadyTextW600.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 21.h),
                    FoodCardListView(),
                    CustomButton(
                      text: 'Call to Order',
                      color: AppColors.mainGreen,
                      style: AppTextstyles.font20whiteW600,
                    ),
                    SizedBox(height: 21.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
