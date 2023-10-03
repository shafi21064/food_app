import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/small_widget/item_left_button.dart';
import 'package:food_app/src/data/global_widgets/wish_icon.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/home/views/promo_screen.dart';
import 'package:provider/provider.dart';

class DishItem extends StatefulWidget {
  const DishItem({super.key});
  @override
  State<DishItem> createState() => _DishItemState();
}

class _DishItemState extends State<DishItem> {

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 210.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemProvider.itemList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              child: Stack(alignment: Alignment.center, children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PromoScreen()));

                    setState(() {
                      itemProvider.pageIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.w),
                    height: 200.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              itemProvider.itemList[index]['item_pic'],
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.red),
                  ),
                ),
                const Positioned(top: 10, right: 10, child: WishIcon()),
                Positioned(
                  bottom: 15,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 110.h,
                    width: 250.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemProvider.itemList[index]['item_name'],
                              style: TextStyle(
                                color: CustomColor.deepBlue,
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              itemProvider.itemList[index]['item_subname'],
                              style: TextStyle(
                                  color: CustomColor.fadedBlack, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  itemProvider.itemList[index]['special_price'],
                                  style: TextStyle(
                                      color: CustomColor.fadedBlack,
                                      fontSize: 16.sp),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  itemProvider.itemList[index]['regular_price'],
                                  style: TextStyle(
                                      color: CustomColor.fadedBlack,
                                      fontSize: 14.sp,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: ItemLeftButton(
                              dishLeft: itemProvider.itemList[index]
                                  ['item_left'],
                            ))
                      ],
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
