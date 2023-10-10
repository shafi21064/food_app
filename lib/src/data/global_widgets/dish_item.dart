import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';
import 'package:provider/provider.dart';

class DishItem extends StatelessWidget {
  String dishImage,
      dishTitle,
      dishSubTitle,
      dishPrice,
      dishLeft,
      dishRegularPrice;
  bool favorite;
    dynamic onPress, onPressDetails ;
  DishItem(
      {super.key,
        required this.favorite,
        required this.dishImage,
        required this.dishTitle,
        required this.dishSubTitle,
        required this.dishPrice,
        required this.dishLeft,
        required this.dishRegularPrice,
        required this.onPress,
        this.onPressDetails
      });

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Stack(alignment: Alignment.center, children: [
      Container(
        height: 200.h,
        width: 300.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  dishImage,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            color: Colors.red),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: WishIcon(
          favorite: favorite,
          onPress: onPress,
        )
      ),
      Positioned(
        bottom: 15,
        child: InkWell(
          onTap: onPressDetails,
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 100.h,
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
                      dishTitle,
                      style: const TextStyle(
                        color: Color(0xff3E4462),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      dishSubTitle,
                      style:
                      const TextStyle(color: Color(0xff7E7E7E), fontSize: 18),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          dishPrice,
                          style: const TextStyle(
                              color: Color(0xff7E7E7E), fontSize: 16),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          dishRegularPrice,
                          style: const TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDA345),
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Center(
                      child: Text(
                        '$dishLeft Left',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
