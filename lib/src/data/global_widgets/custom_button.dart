import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class CustomButton extends StatelessWidget {
  String buttonName;
  dynamic widthSize, onPress;
   CustomButton({super.key, required this.buttonName, required this.widthSize, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: InkWell(
        onTap: onPress,
        child: Container(
          alignment: Alignment.center,
          height: 50.h,
          width: widthSize,
          decoration: BoxDecoration(
            color: CustomColor.cRed,
            borderRadius: BorderRadius.circular(10.r)
          ),
          child: TextWidget(
            title: buttonName,
            color: Colors.white,
            fontSize: 18.sp,)
        ),
      ),
    );
  }
}
