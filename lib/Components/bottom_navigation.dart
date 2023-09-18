import 'package:flutter/material.dart';
import 'package:food_app/screens/Item_screen.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/search_screen.dart';
import 'package:food_app/screens/user_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  static const pages = [HomeScreen(), ItemScreen(),SearchScreen(), UserScreen(),];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('lib/assets/images/b_home.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('lib/assets/images/b_item.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('lib/assets/images/b_search.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('lib/assets/images/b_user.png'), label: '')
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
