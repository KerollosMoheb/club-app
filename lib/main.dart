import 'package:club_app/core/routing/app_router.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ClubApp(appRouter: AppRouter()));
}

class ClubApp extends StatelessWidget {
  const ClubApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: AppFonts.primary,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.mainScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
