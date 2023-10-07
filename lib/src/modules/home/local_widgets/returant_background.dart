import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';
import 'package:provider/provider.dart';

class ResturantBackground extends StatelessWidget {
String dishName, subTitle;
dynamic onPress;
bool favorite;
 ResturantBackground({
   super.key,
   required this.dishName,
   required this.subTitle,
   required this.onPress,
   required this.favorite });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ItemProvider>(context);
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 200.h,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset(
                'assets/images/resturant_background.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50,
              left: 16,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Image.asset('assets/images/back.png'),
                ),
              ),
            ),
             Positioned(
              top: 50,
              right: 16,
              child: WishIcon(
                onPress: onPress,
                favorite: favorite,
              )
            )
          ],
        ),
        Positioned(
            bottom: -100,
            child: ItemInfo(
              dishTitle: dishName,
              subTitle: subTitle,
            ))
      ],
    );
  }
}
