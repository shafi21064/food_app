import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class ItemInfo extends StatelessWidget {
  String dishTitle, subTitle;
   ItemInfo({super.key, required this.dishTitle, required this.subTitle});

var customColor = const CustomColor();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 250.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            TextWidget(
                title: dishTitle,
              fontSize: 26.sp,
              color: customColor.deepBlue,
            ),
            TextWidget(
                title: subTitle,
              color: customColor.fadedBlack,
              fontSize: 18.sp,
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    title: 'Open',
                  fontSize: 16.sp,
                    color: customColor.deepBlue
                ),
                SizedBox(width: 10.w,),
                TextWidget(
                    title: '8am - 8pm',
                  fontSize: 16.sp,
                  color: customColor.fadedBlack,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/location.png'),
                    SizedBox(width: 5.w,),
                    TextWidget(
                        title: '1',
                        fontSize: 18.sp,
                        color: customColor.deepBlue)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/star.png'),
                    SizedBox(width: 5.w,),
                    TextWidget(
                        title: '5.0',
                        fontSize: 18.sp,
                        color: customColor.deepBlue)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/check.png'),
                    SizedBox(width: 5.w,),
                    TextWidget(
                        title: 'verified',
                        fontSize: 18.sp,
                        color: customColor.deepBlue)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
