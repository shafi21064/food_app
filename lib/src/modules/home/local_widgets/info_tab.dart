import 'package:flutter/material.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextWidget(title: 'this is info',color: Colors.black,fontSize: 19,);
  }
}