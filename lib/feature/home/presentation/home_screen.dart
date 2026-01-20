import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/feature/home/presentation/widgets/achievements_widget.dart';
import 'package:club_app/feature/home/presentation/widgets/bell_and_background_image.dart';
import 'package:club_app/feature/home/presentation/widgets/custom_home_text.dart';
import 'package:club_app/feature/home/presentation/widgets/home_grid_view.dart';
import 'package:club_app/feature/home/presentation/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> homeItems = [
    {'title': 'Renew Membership', 'icon': FontAwesomeIcons.arrowsRotate},
    {
      'title': 'Sports',
      'icon': FontAwesomeIcons.trophy,
      'route': Routes.sportsActivitiesScreen,
    },
    {
      'title': 'Discount',
      'icon': FontAwesomeIcons.percentage,
      'route': Routes.discountScreen,
    },
    {
      'title': 'Medical Clinics',
      'icon': FontAwesomeIcons.stethoscope,
      'route': Routes.medicalClinicsScreen,
    },
    {'title': 'Restaurants & Cafes', 'icon': FontAwesomeIcons.burger},
    {'title': 'Events', 'icon': FontAwesomeIcons.listCheck},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 5.h),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: BellAndBackgroundImage()),
              SliverToBoxAdapter(child: SizedBox(height: 28.h)),
              SliverToBoxAdapter(child: HomeGridView(homeItems: homeItems)),
              SliverToBoxAdapter(child: SizedBox(height: 17.h)),
              SliverToBoxAdapter(
                child: CustomRowText(
                  firstText: 'Last News',
                  secondtText: 'See All',
                  onTap: () => context.pushNamed(Routes.newsScreen),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 23.h)),
              SliverToBoxAdapter(child: NewsWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 23.h)),
              SliverToBoxAdapter(
                child: CustomRowText(
                  firstText: 'Achievements',
                  secondtText: 'See All',
                  onTap: () => context.pushNamed(Routes.achievementsScreen),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 23.h)),
              SliverToBoxAdapter(child: AchievementsWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 19.h)),
            ],
          ),
        ),
      ),
    );
  }
}
