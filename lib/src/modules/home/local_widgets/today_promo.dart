// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_app/src/controller/item_provider.dart';
// import 'package:food_app/src/modules/home/local_widgets/dish_item.dart';
// import 'package:food_app/src/modules/home/views/promo_screen.dart';
// import 'package:provider/provider.dart';
//
// class TodayPromo extends StatefulWidget {
//   dynamic buttonWork;
//    TodayPromo({super.key, this.buttonWork});
//
//   @override
//   State<TodayPromo> createState() => _TodayPromoState();
// }
//
// class _TodayPromoState extends State<TodayPromo> {
//   @override
//   Widget build(BuildContext context) {
//     var itemProvider = Provider.of<ItemProvider>(context);
//     return SizedBox(
//       height: 280.h,
//       width: MediaQuery.sizeOf(context).width,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: itemProvider.itemList.length,
//           itemBuilder: (context, index){
//             return Row(
//               children: [
//                 InkWell(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                         PromoScreen(
//                         )));
//                     setState(() {
//                       itemProvider.pageIndex = index;
//                     });
//                   },
//                   child: DishItem(
//                     dishImage: itemProvider.itemList[index]['item_pic'],
//                     dishTitle: itemProvider.itemList[index]['item_name'],
//                     dishSubTitle: itemProvider.itemList[index]['item_subname'],
//                     dishPrice: itemProvider.itemList[index]['special_price'],
//                     dishRegularPrice: itemProvider.itemList[index]['regular_price'],
//                     dishLeft: itemProvider.itemList[index]['item_left'],
//                   ),
//                 ),
//                 SizedBox(width: 10.w,)
//               ],
//             );
//           }
//       ),
//     );
//   }
// }
