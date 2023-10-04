import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/global_widgets/space_in_height.dart';
import 'package:food_app/src/data/global_widgets/space_in_width.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:provider/provider.dart';

class ItemInfo extends StatelessWidget {
  String dishTitle, subTitle;
   ItemInfo({super.key, required this.dishTitle, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
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
              color: CustomColor.deepBlue,
            ),
            TextWidget(
                title: subTitle,
              color: CustomColor.fadedBlack,
              fontSize: 18.sp,
            ),
            SpaceInHeight(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                    title: 'Open',
                  fontSize: 16.sp,
                    color: CustomColor.deepBlue
                ),
                SpaceInWidth(width: 10.w),
                TextWidget(
                    title: '8am - 8pm',
                  fontSize: 16.sp,
                  color: CustomColor.fadedBlack,
                )
              ],
            ),
            SpaceInHeight(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/location.png'),
                    SpaceInWidth(width: 5.w),
                    TextWidget(
                        title: '1',
                        fontSize: 18.sp,
                        color: CustomColor.deepBlue)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/star.png'),
                    SpaceInWidth(width: 5.w),
                    TextWidget(
                        title: '5.0',
                        fontSize: 18.sp,
                        color: CustomColor.deepBlue)
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/check.png'),
                    SpaceInWidth(width: 5.w),
                    TextWidget(
                        title: 'verified',
                        fontSize: 18.sp,
                        color: CustomColor.deepBlue)
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
