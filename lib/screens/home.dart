import 'package:flutter/material.dart';
import 'package:food_app/Components/bottom_navigation.dart';
import 'package:food_app/Components/dish_item.dart';
import 'package:food_app/Components/menu_box.dart';
import 'package:food_app/provider/item_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color(0xff7E7E7E),
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Color(0xff7E7E7E)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffF8F5F2),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_alert_rounded,
                color: Color(0xff7E7E7E),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 36,
              width: 238,
              decoration: BoxDecoration(
                color: const Color(0xffE84C4F).withOpacity(.2),
                borderRadius: BorderRadius.circular(36),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 16, color: Color(0xff7E7E7E)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff7E7E7E),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 66,
                width: 183,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Yahya',
                      style: TextStyle(fontSize: 28, color: Color(0xff3E4462)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'What do you want to eat?',
                      style: TextStyle(fontSize: 16, color: Color(0xff7E7E7E)),
                    )
                  ],
                )),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 105,
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
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                     // color: Colors.red,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Today's Promo",
                                style: TextStyle(fontSize: 23, color: Color(0xff3E4462)),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'See all',
                                    style: TextStyle(
                                        color: const Color(0xff84C4F).withOpacity(.9)),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 270,
                            width: MediaQuery.sizeOf(context).width,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: itemProvider.itemList.length,
                                itemBuilder: (context, index){
                                  return Row(
                                    children: [
                                      DishItem(
                                        dishImage: itemProvider.itemList[index]['item_pic'],
                                        dishTitle: itemProvider.itemList[index]['item_name'],
                                        dishSubTitle: itemProvider.itemList[index]['item_subname'],
                                        dishPrice: itemProvider.itemList[index]['special_price'],
                                        dishRegularPrice: itemProvider.itemList[index]['regular_price'],
                                        dishLeft: itemProvider.itemList[index]['item_left'],
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  );
                                }
                            ),
                          ),
                          SizedBox(height: 30,),

                          Container(
                            height: 270,
                            width: MediaQuery.sizeOf(context).width,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: itemProvider.itemList.length,
                                itemBuilder: (context, index){
                                  return Row(
                                    children: [
                                      DishItem(
                                        dishImage: itemProvider.itemList[index]['item_pic'],
                                        dishTitle: itemProvider.itemList[index]['item_name'],
                                        dishSubTitle: itemProvider.itemList[index]['item_subname'],
                                        dishPrice: itemProvider.itemList[index]['special_price'],
                                        dishRegularPrice: itemProvider.itemList[index]['regular_price'],
                                        dishLeft: itemProvider.itemList[index]['item_left'],
                                      ),
                                      SizedBox(width: 10,)
                                    ],
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
