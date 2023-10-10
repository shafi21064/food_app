import 'package:flutter/material.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/favorite/local_widget/favorite_item.dart';
import 'package:provider/provider.dart';

class FavoriteItemList extends StatelessWidget {
  const FavoriteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var wishProvider = Provider.of<ItemProvider>(context);
    return ListView.builder(
        itemCount: wishProvider.wishlists.length,
        itemBuilder: (context, index){
          return FavoriteItem(
            itemName: wishProvider.wishlists[index]['item_name'],
            itemPic: wishProvider.wishlists[index]['item_pic'],
            itemPrice: wishProvider.wishlists[index]['special_price'],
            onpress: (){

                wishProvider.removeToWishlist(wishProvider.wishlists[index]);
            },
              favorite: wishProvider.wishlists[index]['is_favorite']
          );
        }
    );
  }
}
