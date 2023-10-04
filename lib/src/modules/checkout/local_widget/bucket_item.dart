import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';
import 'package:provider/provider.dart';

class BucketItem extends StatelessWidget {
   const BucketItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      padding: const EdgeInsets.all(16),
      height: 170.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r)),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.delete_rounded, color: CustomColor.cRed,)),
          Column(
            children: [
              SpaceInHeight(height: 10.h),
              Row(
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
                          color: CustomColor.fadedBlack),
                      SpaceInHeight(height: 10.h),
                      Row(
                        children: [
                          Icon(
                            Icons.delivery_dining_outlined,
                            color: CustomColor.fadedBlack,
                          ),
                          SpaceInWidth(width: 5.w),
                          TextWidget(
                              title: 'Free Delivery',
                              fontSize: 14.sp,
                              color: CustomColor.fadedBlack),
                        ],
                      ),
                    ],
                  ),
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
        ],
      ),
    );
  }
}
