import 'package:flutter/material.dart';

class SpaceInWidth extends StatelessWidget {
  double width;
  SpaceInWidth({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}