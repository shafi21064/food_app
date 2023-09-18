import 'package:flutter/material.dart';

class MenuBox extends StatelessWidget {
  String menuTitle, menuIcon;
   MenuBox({
    super.key,
    required this.menuIcon,
    required this.menuTitle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 74,
      //color: Colors.deepOrange,
      child: Column(
        children: [
          Container(
            height: 74,
            width: 74,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset(menuIcon),
          ),
          const SizedBox(
            height: 5,
          ),
           Text(
            menuTitle,
            style: const TextStyle(
                color: Color(0xff7E7E7E),
                fontSize: 14,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
