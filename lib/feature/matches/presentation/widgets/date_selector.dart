import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DateSelector extends StatefulWidget {
  final List<DateTime> dates;
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final VoidCallback onCalendarTap;

  const DateSelector({
    super.key,
    required this.dates,
    required this.selectedDate,
    required this.onDateSelected,
    required this.onCalendarTap,
  });

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  late ScrollController _scrollController;
  final double _itemWidth = 68.w; // 60.w (width) + 8.w (margins)

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    // Scroll to the selected date after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSelected());
  }

  @override
  void didUpdateWidget(DateSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    // If the selected date changed (e.g., from the calendar), scroll to it
    if (widget.selectedDate != oldWidget.selectedDate) {
      _scrollToSelected();
    }
  }

  void _scrollToSelected() {
    final index = widget.dates.indexWhere(
      (d) => _isSameDay(d, widget.selectedDate),
    );
    if (index != -1 && _scrollController.hasClients) {
      _scrollController.animateTo(
        index * _itemWidth,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: AppColors.mainGreen,
              size: 16.sp,
            ),
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.offset - _itemWidth * 3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController, // Attach the controller
              scrollDirection: Axis.horizontal,
              itemCount: widget.dates.length,
              itemBuilder: (context, index) {
                final date = widget.dates[index];
                final isSelected = _isSameDay(date, widget.selectedDate);
                final isToday = _isSameDay(date, DateTime.now());

                return GestureDetector(
                  onTap: () => widget.onDateSelected(date),
                  child: Container(
                    width: 60.w,
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _getWeekday(date),
                          style: AppTextstyles.font14blackW500.copyWith(
                            color: isSelected ? AppColors.black : Colors.grey,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          isToday && isSelected
                              ? "Today"
                              : "${date.day} ${_getMonth(date)}",
                          style: AppTextstyles.font14blackW500.copyWith(
                            color: isSelected ? AppColors.black : Colors.grey,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        if (isSelected)
                          Container(
                            height: 3.h,
                            width: 40.w,
                            color: AppColors.mainGreen,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.calendarDay,
              color: AppColors.mainGreen,
              size: 18.sp,
            ),
            onPressed: widget.onCalendarTap,
          ),
        ],
      ),
    );
  }

  // Helper Methods
  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;
  String _getWeekday(DateTime date) =>
      ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][date.weekday - 1];
  String _getMonth(DateTime date) => [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ][date.month - 1];
}
