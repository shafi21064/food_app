import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/item_info.dart';
import 'package:food_app/src/data/global_widgets/wish_icon.dart';
import 'package:provider/provider.dart';

class ResturantBackground extends StatelessWidget {

 const ResturantBackground({super.key, });

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
            const Positioned(
              top: 50,
              right: 16,
              child: WishIcon()
            )
          ],
        ),
        Positioned(
            bottom: -100,
            child: ItemInfo(
              dishTitle: provider.itemList[provider.pageIndex]['item_name'],
              subTitle: provider.itemList[provider.pageIndex]['item_subname'],
            ))
      ],
    );
  }
}
