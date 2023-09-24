import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/const_color.dart';

class HomeGreeting extends StatelessWidget {

  var constColor = const CustomColor();

   HomeGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70.h,
        width: 200.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Yahya',
              style: TextStyle(fontSize: 28.sp, color: constColor.deepBlue),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'What do you want to eat?',
              style: TextStyle(fontSize: 16.sp, color: constColor.fadedBlack),
            )
          ],
        ));
  }
}
