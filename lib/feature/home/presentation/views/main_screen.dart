import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/feature/home/data/nav_item.dart';
import 'package:club_app/feature/home/presentation/views/home_screen.dart';
import 'package:club_app/feature/matches/presentation/views/matches_screen.dart';
import 'package:club_app/feature/services/presentation/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ServicesScreen(),
    MatchesScreen(),
    //test
    const Center(child: Text("More Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: AppColors.deepGrey,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.sp)),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(navItems.length, (index) {
              return _buildNavItem(index);
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index) {
    bool isActive = _currentIndex == index;
    var item = navItems[index];
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / navItems.length,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isActive ? item.activeImage : item.inactiveImage,
              height: 24,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 4.h),
            Text(
              item.label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isActive ? AppColors.mainGreen : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
