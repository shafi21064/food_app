import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/bottom_navigation.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';

class ConfirmMessage extends StatelessWidget {
  const ConfirmMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 255.w,
      //color: Colors.deepOrange,
      child: Center(
        child: Column(
          children: [
            TextWidget(
                title: 'Your order is confirmed!',
                fontSize: 20.sp,
                color: CustomColor.deepBlue),
            SpaceInHeight(height: 20.h),
            Text(
              textAlign: TextAlign.center,
              "we'll deliver your order immediately, \nmake sure your order put on the doorstep",
              style: TextStyle(fontSize: 12.sp, color: CustomColor.fadedBlack),
            ),
            SpaceInHeight(height: 20.h),
            CustomButton(
                onPress: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()),
                      (route) => false);
                },
                buttonName: 'Continue Shopping',
                widthSize: 220.w)
          ],
        ),
      ),
    );
  }
}
