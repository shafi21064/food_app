import 'package:flutter/material.dart';
import 'package:food_app/src/controller/wish_list_controller.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //var wishListProvider = Provider.of<WishListController>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context, index){
          return Text(index.toString());
      })
    );
  }
}
