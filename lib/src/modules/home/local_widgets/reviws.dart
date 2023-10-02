import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/data/global_widgets/small_widget/small_custom_button.dart';
import 'package:food_app/src/data/global_widgets/small_widget/text_widget.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/home/local_widgets/start_rating.dart';

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
                itemBuilder: (context, _) => const Icon(
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
              ContainerButton(
                buttonName: 'Add Review',
              ),
              SizedBox(
                height: 20.h,
              ),
              StarRating(
                numberOfRating: '1',
                ratePeople: '6',
                initialRating: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              StarRating(
                numberOfRating: '2',
                ratePeople: '5',
                initialRating: 2,
              ),
              SizedBox(
                height: 10.h,
              ),
              StarRating(
                numberOfRating: '3',
                ratePeople: '6',
                initialRating: 3,
              ),
              SizedBox(
                height: 10.h,
              ),
              StarRating(
                numberOfRating: '4',
                ratePeople: '4',
                initialRating: 4,
              ),
              SizedBox(
                height: 10.h,
              ),
              StarRating(
                numberOfRating: '5',
                ratePeople: '6',
                initialRating: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
