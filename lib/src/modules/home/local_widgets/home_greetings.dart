import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class HomeGreeting extends StatelessWidget {

   const HomeGreeting({super.key});

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
              style: TextStyle(fontSize: 28.sp, color: CustomColor.deepBlue),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'What do you want to eat?',
              style: TextStyle(fontSize: 16.sp, color: CustomColor.fadedBlack),
            )
          ],
        ));
  }
}
