
import 'package:flutter/cupertino.dart';

class ItemProvider extends ChangeNotifier{

  dynamic pageIndex = 0;

  dynamic itemList = [
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    },
    {
      'id' : 2,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name2',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '140',
      'regular_price' : '190',
      'item_left' : '5'
    },
    {
      'id' : 3,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name3',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    },
    {
      'id' : 4,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name4',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    }
  ];

}