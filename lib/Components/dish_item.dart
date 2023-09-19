import 'package:flutter/material.dart';

class DishItem extends StatelessWidget {
  String dishImage, dishTitle, dishSubTitle, dishPrice, dishLeft ;
   DishItem({super.key,
     required this.dishImage,
     required this.dishTitle,
     required this.dishSubTitle,
     required this.dishPrice,
     required this.dishLeft
   });

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
                image: DecorationImage(
                    image: AssetImage(
                      dishImage,
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
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dishTitle,
                        style: const TextStyle(
                          color: Color(0xff3E4462),
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                       Text(
                        dishSubTitle,
                        style: const TextStyle(
                            color: Color(0xff7E7E7E),
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                       Text(
                        dishPrice,
                        style: const TextStyle(
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
                      child:  Center(
                        child: Text(
                          '$dishLeft Left',
                          style: const TextStyle(
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
