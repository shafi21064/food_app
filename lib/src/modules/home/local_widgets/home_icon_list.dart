import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/global_widgets/menu_box.dart';

class MenuIconList extends StatelessWidget {
  const MenuIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: MediaQuery.sizeOf(context).width,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuBox(
            menuIcon: 'assets/images/love.png',
            menuTitle: 'Favorite',
          ),
          MenuBox(
            menuIcon: 'assets/images/cheap.png',
            menuTitle: 'Cheap',
          ),
          MenuBox(
            menuIcon: 'assets/images/trend.png',
            menuTitle: 'Trend',
          ),
          MenuBox(
            menuIcon: 'assets/images/more.png',
            menuTitle: 'More',
          ),
        ],
      ),
    );
  }
}
