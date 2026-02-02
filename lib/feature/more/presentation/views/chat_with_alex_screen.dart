import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_images.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/feature/more/presentation/widgets/build_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatWithAlexScreen extends StatelessWidget {
  const ChatWithAlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.helpSupport),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: Image.asset(Assets.imagesBot, width: 108.w),
                ),
                SizedBox(height: 8.h),
                Text(
                  AppStrings.chatWithAlex,
                  style: AppTextstyles.font20whiteW600.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 140.h),
          Text(
            AppStrings.todayTime,
            style: AppTextstyles.font11blackW400.copyWith(fontSize: 16.sp),
          ),

          // Chat Messages Area
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              children: [
                buildChatBubble(
                  AppStrings.chatWelcomeMessage,
                  AppStrings.messageTime1,
                  isAlex: true,
                ),
                buildChatBubble(
                  AppStrings.chatUserQuery,
                  AppStrings.messageTime2,
                  isAlex: false,
                ),
                buildChatBubble(
                  AppStrings.chatAlexResponse,
                  AppStrings.messageTime3,
                  isAlex: true,
                ),
              ],
            ),
          ),

          // Message Input Bar
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      decoration: BoxDecoration(color: AppColors.surfaceGrey),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          children: [
            Icon(Icons.add, color: AppColors.mainGreen),
            SizedBox(width: 10.w),
            SizedBox(
              width: 245.w,
              height: 32.h,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.mainGreen),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.mainGreen),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.mainGreen),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Icon(Icons.camera_alt_outlined, color: AppColors.mainGreen),
            SizedBox(width: 10.w),
            Icon(Icons.mic_none_outlined, color: AppColors.mainGreen),
          ],
        ),
      ),
    );
  }
}
