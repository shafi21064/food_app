import 'package:flutter/material.dart';
class WishListController extends ChangeNotifier {
  bool _isFavorite = true ;
  bool get isFavorite => _isFavorite;

  void setIsFavorite(){
    _isFavorite = !_isFavorite;
    notifyListeners();
  }

}

// import 'package:flutter/material.dart';
// class Wishpro extends ChangeNotifier {
//   dynamic _a = [];
//   get a => _a;
//   void addItewm(value){
//     _a.add(value);
//     notifyListeners();
//   }
//   void removeItewm(value){
//     _a.removeAt(value);
//     notifyListeners();
//   }
//
// }