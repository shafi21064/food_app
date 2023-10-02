import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/cart_controller.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/small_widget/small_custom_button.dart';
import 'package:food_app/src/data/global_widgets/small_widget/item_left_button.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/data/global_widgets/cart_count.dart';
import 'package:provider/provider.dart';

class Product extends StatelessWidget {
  Product({super.key});

  var customColor = const CustomColor();
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            height: 160.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 96.h,
                      width: 72.w,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 82.h,
                            width: 72.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                image: DecorationImage(
                                    image: AssetImage(
                                      itemProvider.itemList[0]['item_pic'],
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              bottom: 0,
                              child: ItemLeftButton(
                                dishLeft: '5',
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                            title: itemProvider.itemList[0]['item_name'],
                            fontSize: 18.sp,
                            color: Colors.black),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextWidget(
                            title: itemProvider.itemList[0]
                                ['special_price'],
                            fontSize: 14.sp,
                            color: customColor.fadedBlack),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining_outlined,
                              color: customColor.fadedBlack,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            TextWidget(
                                title: 'Free Delivery',
                                fontSize: 14.sp,
                                color: customColor.fadedBlack),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CartCount(),
                    ContainerButton(buttonName: 'Add To Cart')
                  ],
                )
              ],
            ),
          );
  }
}
