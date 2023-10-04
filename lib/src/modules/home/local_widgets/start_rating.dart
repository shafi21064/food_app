import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home_package.dart';


class StarRating extends StatelessWidget {
  String? numberOfRating, ratePeople;
  double initialRating;
  StarRating({super.key, this.numberOfRating, required this.initialRating, this.ratePeople});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(title: '$numberOfRating Star', fontSize: 16, color: Colors.black),
        SizedBox(width: 2.w,),
        RatingBar.builder(
          itemSize: 25,
          initialRating: initialRating,
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
        TextWidget(title: '($ratePeople)', fontSize: 16, color: Colors.red),
      ],
    );
  }
}
