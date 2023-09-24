import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/custom_button.dart';
import 'package:food_app/src/data/global_widgets/dish_item.dart';
import 'package:food_app/src/modules/home/local_widgets/returant_background.dart';
import 'package:food_app/src/modules/home/local_widgets/tab_bar_view.dart';


class PromoScreen extends StatefulWidget {
  String? dishTitle, disSubTitle;
   PromoScreen({super.key,  this.dishTitle,  this.disSubTitle});

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
                       ResturantBackground(
                         dishTitle: '${widget.dishTitle}',
                         disSubTitle: '${widget.disSubTitle}',
                       ),
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
