import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';
import 'package:provider/provider.dart';

class BucketItemList extends StatelessWidget {
  const BucketItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 190.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        itemCount: itemProvider.cartList.length,
          itemBuilder: (context, index){
          return BucketItem(
            onDelete: (){
              itemProvider.removeFromCart(itemProvider.cartList[index]);
            },
              minimizeTap: (){
              itemProvider.setAddToCart(index);
              },
              addTap: (){
              itemProvider.setAddToCart(index);
              },

              itemName: itemProvider.cartList[index]['item_name'],
              itemPic: itemProvider.cartList[index]['item_pic'],
              itemPrice: itemProvider.cartList[index]['special_price']
          );
          }
      ),
    );
  }
}
