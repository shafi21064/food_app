
import 'package:flutter/cupertino.dart';

class ItemProvider extends ChangeNotifier{


  dynamic itemList = [
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'is_favorite' : false
    },
    {
      'id' : 2,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name2',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '140',
      'regular_price' : '190',
      'item_left' : '5',
      'is_favorite' : false
    },
    {
      'id' : 3,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name3',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'is_favorite' : false
    },
    {
      'id' : 4,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name4',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'is_favorite' : false
    }
  ];

  List _wishlist = [];

  List get wishlists => _wishlist;


  void setToWishlistItem(item) {
    if (item["is_favorite"]) {
      _wishlist.add(item);
      } else {
        _wishlist.remove(item);
      }
      print(_wishlist.length);
      print("wishlist");
       notifyListeners();
    }

  // void removeFromWishList(item){
  //   if(item['is_favorite'] == false) {
  //     _wishlist.remove(item);
  //   }
  //   notifyListeners();
  // }


  List get itemLists => itemList;

  void setIsFavorite(index) {
    if (itemList[index]['is_favorite']) {
      itemList[index]['is_favorite'] = false;
      setToWishlistItem(itemList[index]);
    } else {
      itemList[index]['is_favorite'] = true;
      setToWishlistItem(itemList[index]);
    }
    notifyListeners();
  }

}