import 'package:flutter/material.dart';

class CartController extends ChangeNotifier{

  var _count = 1;
  get count => _count;

  void addItem (){
    _count++;
    notifyListeners();
  }

  void removeItem(){
    _count--;
    notifyListeners();
  }

}