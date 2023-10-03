import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class TextDetailsRow extends StatelessWidget {
  var customColor = CustomColor();
  String pricingPurpose, price;
  TextDetailsRow({super.key, required this.pricingPurpose, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
            title: pricingPurpose,
            fontSize: 16.sp,
            color: customColor.deepBlue
        ),
        TextWidget(
            title: price,
            fontSize: 16.sp,
            color: customColor.deepBlue
        )
      ],
    );
  }
}
