import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/events/data/event_model.dart';
import 'package:club_app/feature/events/presentation/widgets/category_size.dart';
import 'package:club_app/feature/events/presentation/widgets/custom_events_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key, required this.event});
  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.deepGrey,
        border: Border.all(color: AppColors.mainGreen),
      ),
      child: Column(
        children: [
          Image.asset(event.image),
          SizedBox(height: 7.h),
          CategorySize(category: event.category),
          SizedBox(height: 10.h),
          Text(
            event.title,
            style: AppTextstyles.font16darkGreyW600.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          CustomTimeDateRow(
            date: event.date,
            time: event.time,
            leftIcon: FontAwesomeIcons.calendar,
            rightIcon: FontAwesomeIcons.clock,
          ),
          SizedBox(height: 10.h),
          CustomLocationMembersRow(
            location: event.location,
            members: event.members,
            leftIcon: FontAwesomeIcons.locationDot,
            rightIcon: FontAwesomeIcons.user,
          ),
          SizedBox(height: 10.h),
          CustomButton(
            width: 100.w,
            height: 32.h,
            text: 'Register',
            onTap: () {},
            color: AppColors.mainGreen,
            style: AppTextstyles.font16alreadyTextW600.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
