import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/controller/wish_list_controller.dart';
import 'package:provider/provider.dart';

class WishIcon extends StatelessWidget {
  const WishIcon({super.key});

  @override
  Widget build(BuildContext context) {
    var wishLIstProvider = Provider.of<WishListController>(context);
    return InkWell(
        onTap: () {
          wishLIstProvider.setIsFavorite();
        },
        child: Container(
          height: 40.h,
          width: 40.w,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: wishLIstProvider.isFavorite == true
              ? const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                )
              : const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
        ));
  }
}
