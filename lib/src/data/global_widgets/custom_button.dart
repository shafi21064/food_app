import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/const_color.dart';

class CustomButton extends StatelessWidget {
  String buttonName;
  var customColor = const CustomColor();
   CustomButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: customColor.cRed,
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextWidget(
          title: buttonName,
          color: Colors.white,
          fontSize: 18.sp,)
      ),
    );
  }
}
