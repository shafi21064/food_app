import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class CartCount extends StatelessWidget {
  var customColor = const CustomColor();
   CartCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: customColor.cWhite,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: customColor.fadedWhite,
              borderRadius: BorderRadius.circular(5)
            ),
            child: const Icon(Icons.minimize_rounded, color: Colors.white,),
          ),

          TextWidget(title: '1', fontSize: 16, color: customColor.deepBlue),

          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                color: customColor.cRed,
                borderRadius: BorderRadius.circular(5)
            ),
            child: const Icon(Icons.add, color: Colors.white,),
          )
        ],
      ),
    );
  }
}
