import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/item_info.dart';
import 'package:provider/provider.dart';

class ResturantBackground extends StatelessWidget {
  String dishTitle, disSubTitle;
  ResturantBackground(
      {super.key, required this.dishTitle, required this.disSubTitle});

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
              child: InkWell(
                onTap: () {
                  provider.setIsFavorite();
                },
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: provider.isFavorite
                      ? const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                ),
              ),
            )
          ],
        ),
        Positioned(
            bottom: -100,
            child: ItemInfo(dishTitle: dishTitle, subTitle: disSubTitle))
      ],
    );
  }
}
