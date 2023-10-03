import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/global_widgets/space_in_height.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class DeliveryDetails extends StatelessWidget {
   const DeliveryDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(16.w),
      height: 136.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      title: 'Delivery to',
                      fontSize: 14.sp,
                      color: CustomColor.fadedBlack
                  ),
                  SpaceInHeight(height: 10),
                  TextWidget(
                      title: 'Jl. Jayakatwang no 301',
                      fontSize: 18.sp,
                      color: CustomColor.deepBlue
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
                  width: 32.w,
                  child: Image.asset('assets/images/location_icon.png'))
            ],
          ),
          Container(
            height: 40.h,
            color: CustomColor.fadedWhite,
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.text_snippet_outlined),
                hintText: 'Add a note of delivery address'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
