import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar customAppBar(void Function()? onPressed, String? text) {
  return AppBar(
    toolbarHeight: 45.0,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: onPressed,
      icon: Icon(FontAwesomeIcons.chevronLeft, color: AppColors.mainGreen),
    ),
    centerTitle: true,
    title: Text(
      text ?? '',
      style: AppTextstyles.font14mainGreenW500.copyWith(fontSize: 20),
    ),
  );
}
