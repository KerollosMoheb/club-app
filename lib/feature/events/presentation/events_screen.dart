import 'package:club_app/core/helper/extentions.dart';
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
    'All',
    'Competition',
    'Workshop',
    'Education',
  ];

  final List<EventModel> allEvents = [
    EventModel(
      image: 'assets/images/marathon.png',
      title: 'Annual Marathon Challenge',
      date: '20 Jan 2026',
      time: '6:00 AM',
      location: 'Track',
      members: '156/200',
      category: 'Competition',
    ),
    EventModel(
      image: 'assets/images/yoga.png',
      title: 'Yoga & Wellness Workshop',
      date: '22 Jan 2026',
      time: '10:00 AM',
      location: 'Studio A',
      members: '22 / 30',
      category: 'Workshop',
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
      appBar: customAppBar(() => context.pop(), 'Upcoming Events'),
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
