import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/app_bar.dart';
import 'package:food_app/src/data/global_widgets/title_with_see_all.dart';
import 'package:food_app/src/modules/home/local_widgets/home_greetings.dart';
import 'package:food_app/src/modules/home/local_widgets/home_icon_list.dart';
import 'package:food_app/src/modules/home/local_widgets/home_location.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:food_app/src/modules/home/local_widgets/today_promo.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CustomAppBar(),
        elevation: 0,
        backgroundColor: const Color(0xffF8F5F2),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               HomeLocation(),
               SizedBox(
                height: 20.h,
              ),
               HomeGreeting(),
               SizedBox(
                height: 10.h,
              ),
              const MenuIconList(),
             TitleWithSeeAll(
               title: 'Today\'s promo',
               buttonText: 'See all',
             ),
              TodayPromo(),
              //SizedBox(height: 5.h,),
              //const TodayPromo(),

]
    ),
        )
    )
    );






  }
}
