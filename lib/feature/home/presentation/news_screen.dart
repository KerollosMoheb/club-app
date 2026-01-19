import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/home/presentation/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, 'All News'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 22.h),
                NewsWidget(),
                SizedBox(height: 40.h),
                NewsWidget(),
                SizedBox(height: 22.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
