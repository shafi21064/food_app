import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';

class SocialDistance extends StatefulWidget {
  const SocialDistance({super.key});

  @override
  State<SocialDistance> createState() => _SocialDistanceState();
}

class _SocialDistanceState extends State<SocialDistance> {
  var switchIsOn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      height: 90.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                  title: 'Keep Social Distancing',
                  fontSize: 18.sp,
                  color: CustomColor.deepBlue),
              SpaceInHeight(height: 8.h),
              TextWidget(
                  title: 'Leave your order on the doorstep',
                  fontSize: 14.sp,
                  color: CustomColor.fadedBlack)
            ],
          ),
          CupertinoSwitch(
              activeColor: CustomColor.cRed,
              value: switchIsOn,
              onChanged: (value) {
                setState(() {
                  switchIsOn = !switchIsOn;
                });
              })
        ],
      ),
    );
  }
}
