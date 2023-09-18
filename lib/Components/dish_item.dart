import 'package:flutter/material.dart';

class DishItem extends StatelessWidget {
  const DishItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: MediaQuery.sizeOf(context).height,
            width: 325,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'lib/assets/images/dish_one.png',
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red
            ),
          ),
          Positioned (
            bottom: 15,
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 125,
              width: 290,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dish Name',
                        style: TextStyle(
                          color: Color(0xff3E4462),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Subtitle',
                        style: TextStyle(
                            color: Color(0xff7E7E7E),
                            fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '180.00',
                        style: TextStyle(
                            color: Color(0xff7E7E7E),
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 47,
                      decoration: BoxDecoration(
                          color: const Color(0xffEDA345),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Center(
                        child: Text(
                          '5 Left',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]);
  }
}
