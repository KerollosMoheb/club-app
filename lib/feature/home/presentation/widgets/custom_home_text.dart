import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({
    super.key,
    required this.firstText,
    required this.secondtText,
    this.style1,
    this.style2,
    this.onTap,
  });
  final String firstText;
  final String secondtText;
  final TextStyle? style1;
  final TextStyle? style2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          firstText,
          style:
              style1 ??
              AppTextstyles.font16alreadyTextW600.copyWith(color: Colors.black),
        ),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            secondtText,
            style: style2 ?? AppTextstyles.font12mainGreenW400,
          ),
        ),
      ],
    );
  }
}
