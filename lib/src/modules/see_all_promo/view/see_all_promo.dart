import 'package:flutter/material.dart';
import 'package:food_app/src/modules/see_all_promo/see_all_package.dart';
import 'package:provider/provider.dart';


class SeeAllPromo extends StatelessWidget {
  const SeeAllPromo({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        title: const Text('All Promo'),
        centerTitle: true,
        backgroundColor: CustomColor.cRed
      ),
      // body: ListView.builder(
      //   itemCount: itemProvider.itemList.length,
      //     itemBuilder: (context, index){
      //     return Product();
      // }),

      body: const ProductList(),
    );
  }
}
