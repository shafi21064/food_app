
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
      'is_favorite' : false,
      'in_cart' : false
    },
    {
      'id' : 2,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name2',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '140',
      'regular_price' : '190',
      'item_left' : '5',
      'is_favorite' : false,
      'in_cart' : false
    },
    {
      'id' : 3,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name3',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'is_favorite' : false,
      'in_cart' : false
    },
    {
      'id' : 4,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name4',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'is_favorite' : false,
      'in_cart' : false
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
      print(wishlists);
       notifyListeners();
    }

  void removeToWishlist(item) {
    itemList.asMap().forEach((ind, value) =>
    {
      if (item["id"] == value["id"])
        {_wishlist.remove(item), itemList[ind]['is_favorite'] = false}
    });
    notifyListeners();
  }


  //List get itemLists => itemList;

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



////////////////////////////////////////////////////////////////

  List _cartList = [];
  var _count = 1;
  get count => _count;

  List get cartList => _cartList;


  void addToCartItem(item) {
    if (item["in_cart"]) {
      _cartList.add(item);
    } else {
      _cartList.remove(item);
    }
    print(_cartList.length);
    print(cartList);
    notifyListeners();
  }

  void removeFromCart(item) {
    itemList.asMap().forEach((ind, value) =>
    {
      if (item["id"] == value["id"])
        {_cartList.remove(item), itemList[ind]['in_cart'] = false},
    });
    notifyListeners();
  }


  void setAddToCart(index) {
    if (itemList[index]['in_cart']) {
      itemList[index]['in_cart'] = false;
      addToCartItem(itemList[index]);
    } else {
      itemList[index]['in_cart'] = true;
      addToCartItem(itemList[index]);
    }
    notifyListeners();
  }

}