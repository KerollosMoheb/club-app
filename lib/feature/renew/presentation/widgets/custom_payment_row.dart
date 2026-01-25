import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomPaymentRow extends StatelessWidget {
  const CustomPaymentRow({
    super.key,
    required this.title,
    required this.price,
    this.style1,
    this.style2,
  });
  final String title;
  final String price;
  final TextStyle? style1;
  final TextStyle? style2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:
              style1 ??
              AppTextstyles.font16alreadyTextW600.copyWith(
                fontWeight: FontWeight.w400,
                color: Color(0xff4A5565),
              ),
        ),
        Spacer(),
        Text(
          price,
          style:
              style2 ??
              AppTextstyles.font16alreadyTextW600.copyWith(
                color: Color(0xff0A0A0A),
              ),
        ),
      ],
    );
  }
}
