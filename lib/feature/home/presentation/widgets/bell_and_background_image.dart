import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BellAndBackgroundImage extends StatelessWidget {
  const BellAndBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesBackGroundItihad),
        Positioned(
          top: 5.h,
          right: 9.w,
          child: IconButton(
            onPressed: () {
              context.pushNamed(Routes.notificationScreen);
            },
            icon: Image.asset(Assets.imagesNotifications, width: 16.sp),
          ),
        ),
      ],
    );
  }
}
