import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class MenuBox extends StatelessWidget {
  String menuTitle, menuIcon;
  var customColor =  CustomColor();
   MenuBox({
    super.key,
    required this.menuIcon,
    required this.menuTitle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: 65.w,
      //color: Colors.deepOrange,
      child: Column(
        children: [
          Container(
            height: 65.h,
            width: 65.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r)
            ),
            child: Image.asset(menuIcon),
          ),
           SizedBox(
            height: 5.h,
          ),
           Text(
            menuTitle,
            style: TextStyle(
                color: customColor.fadedBlack,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
