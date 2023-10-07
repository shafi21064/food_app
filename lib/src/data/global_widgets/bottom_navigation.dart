import 'package:flutter/material.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/checkout/view/checkout.dart';
import 'package:food_app/src/modules/favorite/view/favorite_list.dart';
import 'package:food_app/src/modules/home/views/home.dart';
import 'package:food_app/src/modules/account/user_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  var  pages = [HomeScreen(), CheckOut(), Favorite(), UserScreen()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        backgroundColor: CustomColor.cRed,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, ), label: '' ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: '')
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
