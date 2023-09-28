import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/data/global_widgets/custom_button.dart';
import 'package:food_app/src/modules/home/local_widgets/dish_item.dart';
import 'package:food_app/src/modules/home/local_widgets/returant_background.dart';
import 'package:food_app/src/modules/home/local_widgets/tab_bar_view.dart';
import 'package:provider/provider.dart';


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
                       ResturantBackground(),
                       const SizedBox(height: 100,),
                       TabBarViewCart()
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
