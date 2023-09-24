import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';

class ReviewsTab extends StatelessWidget {
  ReviewsTab({super.key});

  var customColor = const CustomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TextWidget(title: 'Review', fontSize: 16.sp, color: Colors.red),
              // SizedBox(
              //   height: 20.h,
              // ),
              RichText(
                  text: TextSpan(
                      text: '5.0',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: '/',
                        style: TextStyle(
                            fontSize: 14.sp, color: customColor.fadedBlack)),
                    TextSpan(
                        text: '5.0',
                        style: TextStyle(
                            fontSize: 14.sp, color: customColor.fadedBlack))
                  ])),
              // SizedBox(
              //   height: 25.h,
              // ),
              TextWidget(title: '20 Reviews', fontSize: 16, color: Colors.red),
              // SizedBox(
              //   height: 20.h,
              // ),
              RatingBar.builder(
                itemSize: 20,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: 1,
            color: Colors.black,
          ),
          Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextWidget(
                    title: 'Add Review',
                    fontSize: 15,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  TextWidget(title: '1 Star', fontSize: 16, color: Colors.black),
                  SizedBox(width: 2.w,),
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  TextWidget(title: '(6)', fontSize: 16, color: Colors.red),
                ],
              ),

              SizedBox(height: 10.h,),

              Row(
                children: [
                  TextWidget(title: '2 Star', fontSize: 16, color: Colors.black),
                  SizedBox(width: 2.w,),
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 2,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  TextWidget(title: '(5)', fontSize: 16, color: Colors.red),
                ],
              ),

              SizedBox(height: 10.h,),

              Row(
                children: [
                  TextWidget(title: '3 Star', fontSize: 16, color: Colors.black),
                  SizedBox(width: 2.w,),
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  TextWidget(title: '(5)', fontSize: 16, color: Colors.red),
                ],
              ),

              SizedBox(height: 10.h,),

              Row(
                children: [
                  TextWidget(title: '4 Star', fontSize: 16, color: Colors.black),
                  SizedBox(width: 2.w,),
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  TextWidget(title: '(5)', fontSize: 16, color: Colors.red),
                ],
              ),

              SizedBox(height: 10.h,),

              Row(
                children: [
                  TextWidget(title: '5 Star', fontSize: 16, color: Colors.black),
                  SizedBox(width: 2.w,),
                  RatingBar.builder(
                    itemSize: 25,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  TextWidget(title: '(5)', fontSize: 16, color: Colors.red),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
