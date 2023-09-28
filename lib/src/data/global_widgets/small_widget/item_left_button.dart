import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class ItemLeftButton extends StatelessWidget {
  var customColor = const CustomColor();
  String dishLeft;
   ItemLeftButton({super.key, required this.dishLeft});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: customColor.lightYellow,
          borderRadius: BorderRadius.circular(5.r)),
      child: Text(
        '$dishLeft Left',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
