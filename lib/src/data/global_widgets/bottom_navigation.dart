import 'package:flutter/material.dart';
import 'package:food_app/src/modules/checkout/view/checkout.dart';
import 'package:food_app/src/modules/home/views/home.dart';
import 'package:food_app/src/modules/search/search_screen.dart';
import 'package:food_app/src/modules/account/user_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  var  pages = [HomeScreen(), CheckOut(), SearchScreen(), UserScreen()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_home.png'), label: '' ),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_cart.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_search.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_user.png'), label: '')
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
