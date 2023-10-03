import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/global_widgets/space_in_height.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/checkout/local_widget/text_details_row.dart';

class PaymentDetails extends StatelessWidget {
  var customColor = CustomColor();
  PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16),
      height: 185.h,
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
              color: customColor.deepBlue
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
            color: customColor.fadedWhite,
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
