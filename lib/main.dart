import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/controller/cart_controller.dart';
import 'package:food_app/src/controller/wish_list_controller.dart';
import 'package:food_app/src/data/global_widgets/bottom_navigation.dart';
import 'package:food_app/src/controller/item_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ItemProvider()),
            ChangeNotifierProvider(create: (_)=> WishListController()),
            ChangeNotifierProvider(create: (_)=> CartController())
          ],
          child:MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primaryColor: Colors.black,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: BottomNavigation(),

          ) ,

        );
      },
    );
  }
}
