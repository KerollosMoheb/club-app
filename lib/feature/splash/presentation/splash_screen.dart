import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.startScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 305.h),
            Center(
              child: Image.asset(
                'assets/images/Smouha_SC_logo 1.png',
                height: 165,
              ),
            ),
            Spacer(),
            Text('Powered by ifikra', style: AppTextstyles.font14darkGreenW500),
            SizedBox(height: 37.h),
          ],
        ),
      ),
    );
  }
}
