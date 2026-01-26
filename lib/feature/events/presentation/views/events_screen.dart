import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/events/data/event_model.dart';
import 'package:club_app/feature/events/presentation/widgets/events_card.dart';
import 'package:club_app/feature/events/presentation/widgets/events_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  int selectedIndex = 0;
  final List<String> categories = [
    AppStrings.all,
    AppStrings.competition,
    AppStrings.workshop,
    AppStrings.education,
  ];

  final List<EventModel> allEvents = [
    EventModel(
      image: Assets.imagesMarathon,
      title: AppStrings.annualMarathonChallenge,
      date: AppStrings.marathonDate,
      time: AppStrings.marathonTime,
      location: AppStrings.trackLocation,
      members: AppStrings.marathonMembers,
      category: AppStrings.competition,
    ),
    EventModel(
      image: Assets.imagesYoga,
      title: AppStrings.yogaWellnessWorkshop,
      date: AppStrings.yogaDate,
      time: AppStrings.yogaTime,
      location: AppStrings.studioALocation,
      members: AppStrings.yogaMembers,
      category: AppStrings.workshop,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredEvents = selectedIndex == 0
        ? allEvents
        : allEvents
              .where((e) => e.category == categories[selectedIndex])
              .toList();

    return Scaffold(
      appBar: customAppBar(() => context.pop(), AppStrings.upcomingEvents),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              EventsCategories(
                categories: categories,
                selectedIndex: selectedIndex,
                onCategoryChanged: (index) =>
                    setState(() => selectedIndex = index),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: filteredEvents.length,
                  separatorBuilder: (_, __) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) =>
                      EventsCard(event: filteredEvents[index]),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
