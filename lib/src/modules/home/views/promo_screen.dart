import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';

class PromoScreen extends StatefulWidget {

   const PromoScreen({super.key});

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
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
                       const ResturantBackground(),
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
