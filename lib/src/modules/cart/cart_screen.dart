import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/custom_button.dart';
import 'package:food_app/src/data/global_widgets/dish_item.dart';
import 'package:food_app/src/modules/cart/local_widget/returant_background.dart';

class CartScreen extends StatelessWidget {
  String? dishTitle, disSubTitle;
   CartScreen({super.key,  this.dishTitle,  this.disSubTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF8F5F2),
      body:
           Column(
             children: [
               Expanded(
                 flex: 8,
                 child: SingleChildScrollView(

                   child: Column(
                     children: [
                       ResturantBackground(
                         dishTitle: '$dishTitle',
                         disSubTitle: '$disSubTitle',
                       ),
                       SizedBox(height: 200.h,),
                       ResturantBackground(
                         dishTitle: '$dishTitle',
                         disSubTitle: '$disSubTitle',
                       ),
                       SizedBox(height: 200.h,),
                       ResturantBackground(
                         dishTitle: '$dishTitle',
                         disSubTitle: '$disSubTitle',
                       ),
                       SizedBox(height: 200.h,),
                       ResturantBackground(
                         dishTitle: '$dishTitle',
                         disSubTitle: '$disSubTitle',
                       ),
                       SizedBox(height: 200.h,),
                       ResturantBackground(
                         dishTitle: '$dishTitle',
                         disSubTitle: '$disSubTitle',
                       ),
                     ],
                   ),
                 ),
               ),


               
               Expanded(
                 //flex: 1,
                 child: CustomButton(
                   buttonName: 'Add To Cart',
                 ),
               )
             ],
           ),

    );
  }
}
