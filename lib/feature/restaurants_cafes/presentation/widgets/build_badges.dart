import 'package:club_app/feature/restaurants_cafes/presentation/widgets/time_and_eat_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildBadges() {
  return Row(
    children: [
      TimeAndEatMethod(
        icon: FontAwesomeIcons.clock,
        colorText: Color(0xff266CED),
        colorBackground: Color(0xffEFF6FF),
        text: '15-20 min',
      ),
      SizedBox(width: 8.w),
      TimeAndEatMethod(
        icon: FontAwesomeIcons.utensils,
        colorText: Color(0xffCA3734),
        colorBackground: Color(0xffFFF7ED),
        text: 'Dine in',
      ),
    ],
  );
}
