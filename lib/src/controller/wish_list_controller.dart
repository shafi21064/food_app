import 'package:flutter/material.dart';
class WishListController extends ChangeNotifier {

  dynamic _wishList = [];
  get wishList => _wishList;
  void addItewm(value){
    _wishList.add(value);
    notifyListeners();
  }
  void removeItewm(value){
    _wishList.removeAt(value);
    notifyListeners();
  }
}