import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';

class PromoScreen extends StatelessWidget {
String dishName, subTitle;
dynamic onPress;
bool favorite;
    PromoScreen({
      super.key,
      required this.dishName,
      required this.subTitle,
      required this.onPress,
      required this.favorite
    });

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
                         dishName: dishName,
                         subTitle: subTitle,
                         onPress: onPress,
                         favorite: favorite,
                       ),
                       SizedBox(height: 100.h,),

                       TabBarViewCart()
                     ],
                   ),
                 ),
               ),


               Expanded(
                 //flex: 1,
                 child: CustomButton(
                   widthSize: MediaQuery.sizeOf(context).width,
                   buttonName: 'Add To Cart',
                 ),
               )
             ],
           ),

    );
  }
}
