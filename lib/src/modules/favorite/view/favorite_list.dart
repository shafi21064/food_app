import 'package:flutter/material.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/favorite/local_widget/favorite_item.dart';
import 'package:food_app/src/modules/favorite/local_widget/favorite_item_list.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          title: 'Favorite',
          color: CustomColor.deepBlue,
          fontSize: 20,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: CustomColor.backGround,
      body: FavoriteItemList(),
    );
  }
}