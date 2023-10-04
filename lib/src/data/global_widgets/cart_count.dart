import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/cart_controller.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:provider/provider.dart';

class CartCount extends StatelessWidget {
  CartCount({super.key});

  @override
  Widget build(BuildContext context) {
    var cartController = Provider.of<CartController>(context);
    return Container(
      width: 100.w,
      height: 30.h,
      decoration: BoxDecoration(
          color: CustomColor.cWhite, borderRadius: BorderRadius.circular(5.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                color: CustomColor.fadedWhite,
                borderRadius: BorderRadius.circular(5.r)),
            child: InkWell(
                onTap: () {
                  if(cartController.count >1){
                    cartController.removeItem();
                  }
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                )),
          ),
          TextWidget(
              title: cartController.count.toString(),
              fontSize: 16.sp,
              color: CustomColor.deepBlue),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                color: CustomColor.cRed,
                borderRadius: BorderRadius.circular(5.r)),
            child: InkWell(
                onTap: () => cartController.addItem(),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
