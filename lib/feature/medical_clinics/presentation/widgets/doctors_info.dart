import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsInfo extends StatelessWidget {
  const DoctorsInfo({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.specialty,
    required this.available,
    this.onTap,
  });
  final String image;
  final String name;
  final String location;
  final String specialty;
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
                      style: AppTextstyles.font14mainGreenW500.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      location,
                      style: AppTextstyles.font11blackW400.copyWith(
                        color: AppColors.lightGrey,
                      ),
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      specialty,
                      style: AppTextstyles.font10blackW300.copyWith(
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
