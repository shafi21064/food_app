import 'package:flutter/material.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class ContainerButton extends StatelessWidget {
  String buttonName;
   ContainerButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color: CustomColor.cRed,
            borderRadius: BorderRadius.circular(5)),
        child: TextWidget(
          title: buttonName,
          fontSize: 15,
          color: Colors.white,
        ));
  }
}
