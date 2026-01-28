import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportsInfo extends StatelessWidget {
  const SportsInfo({
    super.key,
    required this.image,
    required this.name,
    required this.age,
    required this.price,
    required this.available,
    this.onTap,
  });
  final String image;
  final String name;
  final String age;
  final String price;
  final String available;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surfaceGrey,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.asset(image, width: 68.w),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppTextstyles.font15alreadyTextW500.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Text(
                      age,
                      style: AppTextstyles.font11blackW400.copyWith(
                        color: AppColors.lightGrey,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      price,
                      style: AppTextstyles.font14mainGreenW500.copyWith(
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      available,
                      style: AppTextstyles.font11blackW400.copyWith(
                        color: AppColors.lightGrey,
                        fontSize: 10,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
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
