import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/dish_item.dart';
import 'package:food_app/src/modules/home/home_package.dart';
import 'package:provider/provider.dart';

class DishItemList extends StatefulWidget {
  const DishItemList({super.key});

  @override
  State<DishItemList> createState() => _DishItemListState();
}

class _DishItemListState extends State<DishItemList> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 270.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemProvider.itemList.length,
          itemBuilder: (context, index){
            return Row(
              children: [
                DishItem(
                  onPress:(){
                    itemProvider.setIsFavorite(index);
                  },
                  onPressDetails: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex)=>
                            PromoScreen(
                                onPress:(){
                                  itemProvider.setIsFavorite(index);
                                },
                                favorite: itemProvider.itemList[index]['is_favorite'],
                                dishName: itemProvider.itemLists[index]['item_name'],
                                subTitle: itemProvider.itemLists[index]['item_name']
                            )));
                  },
                  favorite : itemProvider.itemList[index]['is_favorite'],
                  dishImage: itemProvider.itemList[index]['item_pic'],
                  dishTitle: itemProvider.itemList[index]['item_name'],
                  dishSubTitle: itemProvider.itemList[index]['item_subname'],
                  dishPrice: itemProvider.itemList[index]['special_price'],
                  dishRegularPrice: itemProvider.itemList[index]['regular_price'],
                  dishLeft: itemProvider.itemList[index]['item_left'],
                ),
                SizedBox(width: 10,)
              ],
            );
          }
      ),
    );
  }
}
