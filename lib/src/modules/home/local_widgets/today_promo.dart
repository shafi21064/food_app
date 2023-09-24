import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/dish_item.dart';
import 'package:food_app/src/modules/cart/cart_screen.dart';
import 'package:provider/provider.dart';

class TodayPromo extends StatelessWidget {
  dynamic buttonWork;
   TodayPromo({super.key, this.buttonWork});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 280.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemProvider.itemList.length,
          itemBuilder: (context, index){
            return Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        CartScreen(
                          dishTitle: itemProvider.itemList[index]['item_name'],
                          disSubTitle: itemProvider.itemList[index]['item_subname'],
                        )));
                  },
                  child: DishItem(
                    dishImage: itemProvider.itemList[index]['item_pic'],
                    dishTitle: itemProvider.itemList[index]['item_name'],
                    dishSubTitle: itemProvider.itemList[index]['item_subname'],
                    dishPrice: itemProvider.itemList[index]['special_price'],
                    dishRegularPrice: itemProvider.itemList[index]['regular_price'],
                    dishLeft: itemProvider.itemList[index]['item_left'],
                  ),
                ),
                SizedBox(width: 10.w,)
              ],
            );
          }
      ),
    );
  }
}
