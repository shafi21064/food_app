import 'package:flutter/material.dart';
import 'package:food_app/Components/bottom_navigation.dart';
import 'package:food_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff7E7E7E),
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}
