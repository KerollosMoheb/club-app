import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/feature/services/presentation/widgets/service_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceGridView extends StatelessWidget {
  const ServiceGridView({super.key, required this.serviceItems});

  final List<Map<String, dynamic>> serviceItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: GridView.builder(
        itemCount: serviceItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 1, // يخلي الكارد مربع زي الفيجما تقريبًا
        ),
        itemBuilder: (context, index) {
          return ServiceItems(
            text: serviceItems[index]['title'],
            icon: serviceItems[index]['icon'],
            onTap: () {
                          context.pushNamed(serviceItems[index]['route']);

            },
          );
        },
      ),
    );
  }
}
