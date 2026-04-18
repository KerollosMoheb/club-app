import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // في النص
      children: [
        Icon(Icons.location_on_outlined, size: 20.sp, color: Colors.black),
        SizedBox(width: 6.w),
        Flexible(
          // 👈 عشان النص الطويل ميكسرش
          child: Text(
            location,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
