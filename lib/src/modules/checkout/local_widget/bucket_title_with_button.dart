import 'package:flutter/material.dart';
import 'package:food_app/src/data/global_widgets/title_with_see_all.dart';
class BucketTitleWithAddItem extends StatelessWidget {
  const BucketTitleWithAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: TitleWithSeeAll(
        title: 'My Bucket',
        buttonText: '+ Add item',
      ),
    );
  }
}
