import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String title;
  double fontSize;
  dynamic color;
   TextWidget({
     super.key,
     required this.title,
     required this.fontSize,
    required this.color
   });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: fontSize,
          color: color
      ),
    );
  }
}
