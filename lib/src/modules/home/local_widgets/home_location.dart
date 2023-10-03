import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class HomeLocation extends StatelessWidget {
   const HomeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 238.w,
      decoration: BoxDecoration(
        color: const Color(0xffE84C4F).withOpacity(.2),
        borderRadius: BorderRadius.circular(36.r),
      ),
      child:  Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Location',
              style: TextStyle(fontSize: 16.sp, color: CustomColor.fadedBlack),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: CustomColor.fadedBlack,
            )
          ],
        ),
      ),
    );
  }
}
