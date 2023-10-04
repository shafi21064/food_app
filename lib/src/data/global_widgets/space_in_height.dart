import 'package:flutter/material.dart';

class SpaceInHeight extends StatelessWidget {
  double height;
  SpaceInHeight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
