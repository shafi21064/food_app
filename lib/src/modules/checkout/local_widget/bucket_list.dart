import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/small_widget/item_left_button.dart';
import 'package:food_app/src/data/global_widgets/small_widget/small_custom_button.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/global_widgets/space_in_height.dart';
import 'package:food_app/src/data/global_widgets/space_in_width.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/data/global_widgets/cart_count.dart';
import 'package:provider/provider.dart';

class BucketList extends StatelessWidget {
  var customColor = CustomColor();
   BucketList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      height: 200.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                  title: 'My Bucket',
                  fontSize: 20.sp,
                  color: customColor.deepBlue
              ),
              TextButton(
                  onPressed: (){},
                  child: TextWidget(
                    title: '+ Add item',
                    fontSize: 14.sp,
                    color: customColor.cRed,
                  )
              )
            ],
          ),
          SpaceInHeight(height: 10.h),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80.h,
                width: 72.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    image: DecorationImage(
                        image: AssetImage(
                          itemProvider.itemList[0]['item_pic'],
                        ),
                        fit: BoxFit.cover)),
              ),
              SpaceInWidth(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      title: itemProvider.itemList[0]['item_name'],
                      fontSize: 18.sp,
                      color: Colors.black),
                  SpaceInHeight(height: 10.h),
                  TextWidget(
                      title: itemProvider.itemList[0]
                      ['special_price'],
                      fontSize: 14.sp,
                      color: customColor.fadedBlack),
                  SpaceInHeight(height: 10.h),
                  Row(
                    children: [
                      Icon(
                        Icons.delivery_dining_outlined,
                        color: customColor.fadedBlack,
                      ),
                      SpaceInWidth(width: 5.w),
                      TextWidget(
                          title: 'Free Delivery',
                          fontSize: 14.sp,
                          color: customColor.fadedBlack),
                    ],
                  ),
                ],
              ),
              SpaceInWidth(width: 70.w),
              Icon(Icons.delete_rounded, color: customColor.cRed,)
            ],
          ),
          SpaceInHeight(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CartCount(),
            ],
          )
        ],
      ),
    );
  }
}
