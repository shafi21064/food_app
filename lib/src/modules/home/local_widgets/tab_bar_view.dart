import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/home/home_package.dart';

class TabBarViewCart extends StatefulWidget {
   TabBarViewCart({super.key});

  @override
  State<TabBarViewCart> createState() => _TabBarViewCartState();
}

class _TabBarViewCartState extends State<TabBarViewCart> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.w),
          height: 60.h,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            
          ),
          child: TabBar(
            controller: _tabcontroller,
              tabs: const [
            Tab(
              child: Text('Reviws', style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text('Info', style: TextStyle(color: Colors.black),),
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 16, right: 16),
          height: 260.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
            color: Colors.white,

          ),
          child: TabBarView(
            controller: _tabcontroller,
            children: [
              ReviewsTab(),
              const InfoTab()
            ],
          ),
        )
      ],
    );
  }
}

