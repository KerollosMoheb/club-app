import 'package:club_app/core/themeing/app_colors.dart';
import 'package:club_app/core/themeing/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditDebitCard extends StatelessWidget {
  const CreditDebitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.deepGrey,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.mainGreen),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(),
          SizedBox(height: 10.h),
          Text('CARD NUMBER', style: AppTextstyles.font14blackW500),
          SizedBox(height: 10.h),
          TextField(decoration: _buildInputDecoration('0000 0000 0000 0000')),
          SizedBox(height: 10.h),
          _buildExpiryAndCvvLabels(),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: TextField(decoration: _buildInputDecoration('MM/YY')),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: TextField(decoration: _buildInputDecoration('123')),
              ),
            ],
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(FontAwesomeIcons.creditCard, size: 20),
        SizedBox(width: 12.w),
        Text('Credit or Debit Card', style: AppTextstyles.font14blackW500),
        const Spacer(),
        Radio(
          value: true,
          groupValue: true,
          onChanged: (value) {},
          activeColor: AppColors.mainGreen,
        ),
      ],
    );
  }

  Widget _buildExpiryAndCvvLabels() {
    return Row(
      children: [
        Expanded(
          child: Text('EXPIRY DATE', style: AppTextstyles.font14blackW500),
        ),
        SizedBox(width: 20.w),
        Expanded(child: Text('CVV', style: AppTextstyles.font14blackW500)),
      ],
    );
  }

  InputDecoration _buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
      hintStyle: AppTextstyles.font16alreadyTextW600.copyWith(
        color: const Color(0xff0A0A0A).withOpacity(0.2),
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(color: const Color(0xff0A0A0A).withOpacity(0.2)),
    );
  }
}
