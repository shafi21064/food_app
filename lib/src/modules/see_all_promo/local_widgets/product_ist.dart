import 'package:flutter/material.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/see_all_promo/local_widgets/product.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return ListView.builder(
      itemCount: itemProvider.itemList.length,
        itemBuilder: (context, index){
        return Product();
        }
    );
  }
}
