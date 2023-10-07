import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:provider/provider.dart';

class WishIcon extends StatelessWidget {
  dynamic onPress;
  bool favorite;
   WishIcon({super.key, required this.onPress, required this.favorite});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    // return InkWell(
    //   onTap: (){
    //     itemProvider.setIsFavorite(0);
    //   },
    //   child: Container(
    //     height: 40.h,
    //     width: 40.w,
    //     decoration:
    //         const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    //     child:itemProvider.itemLists.isNotEmpty
    //         ? const Icon(
    //             Icons.favorite_border,
    //             color: Colors.red,
    //           )
    //         : const Icon(
    //             Icons.favorite,
    //             color: Colors.red,
    //           ),
    //   ),
    // );

    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        width: 40.w,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: favorite ?
        Icon( Icons.favorite,color: Colors.deepOrange,) :
        Icon(Icons.favorite_border,color: Colors.deepOrange),
      ),
    );
  }
}
