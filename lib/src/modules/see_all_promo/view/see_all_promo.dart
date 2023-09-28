import 'package:flutter/material.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/see_all_promo/local_widgets/product.dart';
import 'package:provider/provider.dart';

class SeeAllPromo extends StatelessWidget {
  const SeeAllPromo({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        title: Text('All Promo'),
        backgroundColor: Colors.white10
      ),
      // body: ListView.builder(
      //   itemCount: itemProvider.itemList.length,
      //     itemBuilder: (context, index){
      //     return Product();
      // }),

      body: Product(),
    );
  }
}
