import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      height: 190.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              title: 'Payment',
              fontSize: 20.sp,
              color: CustomColor.deepBlue
          ),
          SpaceInHeight(height: 20.h),
          TextDetailsRow(
            pricingPurpose: 'Item total',
            price: '120',
          ),
          SpaceInHeight(height: 20.h),
          TextDetailsRow(
            pricingPurpose: 'Item total',
            price: '0',
          ),
          SpaceInHeight(height: 5.h),
          Container(
            height: 1.h,
            width: MediaQuery.sizeOf(context).width,
            color: CustomColor.fadedWhite,
          ),
          SpaceInHeight(height: 20.h),
          TextDetailsRow(
            pricingPurpose: 'To Pay',
            price: '120',
          ),
        ],
      ),
    );
  }
}
