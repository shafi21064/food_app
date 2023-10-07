import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void seeAllButton() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SeeAllPromo()));
    }

    return Scaffold(
        backgroundColor: const Color(0xffF8F5F2),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const CustomAppBar(),
          elevation: 0,
          backgroundColor: const Color(0xffF8F5F2),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
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
                      onPress: () {
                        seeAllButton();
                      },
                      title: 'Today\'s promo',
                      buttonText: 'See all',
                    ),
                    DishItemList(),
                    //SizedBox(height: 5.h,),
                    //const TodayPromo(),
                  ]),
            )));
  }
}
