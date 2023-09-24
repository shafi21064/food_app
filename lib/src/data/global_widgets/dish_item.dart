import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class DishItem extends StatelessWidget {
  String dishImage,
      dishTitle,
      dishSubTitle,
      dishPrice,
      dishLeft,
      dishRegularPrice;
  var customColor =const CustomColor();
  DishItem(
      {super.key,
      required this.dishImage,
      required this.dishTitle,
      required this.dishSubTitle,
      required this.dishPrice,
      required this.dishLeft,
      required this.dishRegularPrice});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        padding:  EdgeInsets.all(8.w),
        height: 200.h,
        width: 300.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  dishImage,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.red),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: Container(
          alignment: Alignment.center,
          height: 40.h,
          width: 40.w,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/love.png',
          ),
        ),
      ),
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
                    dishTitle,
                    style:  TextStyle(
                      color: customColor.deepBlue,
                      fontSize: 20.sp,
                    ),
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    dishSubTitle,
                    style:
                         TextStyle(color: customColor.fadedBlack, fontSize: 18),
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        dishPrice,
                        style:  TextStyle(
                            color: customColor.fadedBlack, fontSize: 16.sp),
                      ),
                       SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        dishRegularPrice,
                        style: TextStyle(
                            color: customColor.fadedBlack,
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
                child: Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: customColor.lightYellow,
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
      )
    ]);
  }
}
