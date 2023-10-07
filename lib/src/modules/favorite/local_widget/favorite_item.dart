import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';
import 'package:provider/provider.dart';

class FavoriteItem extends StatelessWidget {
  String itemPic, itemName, itemPrice;
  dynamic onpress;
  bool favorite;
  FavoriteItem({
    super.key,
    this.onpress,
    required this.favorite,
    required this.itemPic,
    required this.itemName,
    required this.itemPrice
  });
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);

    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: const EdgeInsets.all(10),
      height: 130.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
      child: Stack(
        children: [
          Positioned(
            top: 10,
              right: 10,
              child: WishIcon(
                onPress: onpress,
                favorite: favorite
                  ,
              )),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        image: DecorationImage(
                            image: AssetImage(
                              itemPic,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                          title: itemName,
                          fontSize: 18.sp,
                          color: Colors.black),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextWidget(
                          title: itemPrice,
                          fontSize: 14.sp,
                          color: CustomColor.fadedBlack),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.delivery_dining_outlined,
                            color: CustomColor.fadedBlack,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
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
              SizedBox(
                height: 10.h,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
