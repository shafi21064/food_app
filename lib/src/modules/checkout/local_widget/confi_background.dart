import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfiBackground extends StatelessWidget {
  const ConfiBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 293.h,
      width: 267.w,
      child: Image.asset('assets/images/confi_back.png'),
    );
  }
}
