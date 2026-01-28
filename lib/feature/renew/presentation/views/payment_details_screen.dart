import 'package:club_app/core/helper/extentions.dart';
import 'package:club_app/core/routing/routes.dart';
import 'package:club_app/core/utils/app_colors.dart';
import 'package:club_app/core/utils/app_strings.dart';
import 'package:club_app/core/utils/app_textstyles.dart';
import 'package:club_app/core/widgets/custom_app_bar.dart';
import 'package:club_app/core/widgets/custom_button.dart';
import 'package:club_app/feature/renew/presentation/widgets/credit_debit_card.dart';
import 'package:club_app/feature/renew/presentation/widgets/custom_payment_row.dart';
import 'package:club_app/feature/renew/presentation/widgets/membership_renewal_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(() {
        context.pop();
      }, AppStrings.paymentDetails),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                MembershipRenewalContainer(),
                SizedBox(height: 16.h),
                Text(
                  AppStrings.orderSummary,
                  style: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 16.h),
                CustomPaymentRow(
                  title: AppStrings.premiumAnnualMembership,
                  price: '1157.97',
                ),
                SizedBox(height: 12.h),
                CustomPaymentRow(
                  title: AppStrings.processingFee,
                  price: '43.76',
                ),
                SizedBox(height: 30.h),
                CustomPaymentRow(
                  title: AppStrings.totalAmount,
                  price: AppStrings.totalAmountValue,
                  style1: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  style2: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: AppColors.mainGreen,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  AppStrings.paymentMethod,
                  style: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 12.h),
                CreditDebitCard(),
                SizedBox(height: 16.h),
                Container(
                  width: double.infinity,
                  height: 59.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: AppColors.black.withOpacity(0.2)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.apple, size: 24.h),
                        SizedBox(width: 3.w),
                        Text(
                          AppStrings.applePay,
                          style: AppTextstyles.font16alreadyTextW600.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Radio(value: false),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                CustomButton(
                  width: double.infinity,
                  text: AppStrings.payNow,
                  color: AppColors.mainGreen,
                  style: AppTextstyles.font16alreadyTextW600.copyWith(
                    color: AppColors.white,
                  ),
                  onTap: () {
                    showSuccessDialog(context);
                  },
                ),
                SizedBox(height: 6.h),
                Text(
                  AppStrings.paymentAgreement,
                  textAlign: TextAlign.center,
                  style: AppTextstyles.font12mainGreenW400.copyWith(
                    color: AppColors.inkBlack3,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showSuccessDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Payment Successful'),
        content: Text('Your payment has been processed successfully.'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: GestureDetector(
              onTap: () {
                context.pushReplacementNamed(Routes.homeScreen);
              },
              child: Text('OK'),
            ),
          ),
        ],
      ),
    );
  }
}
