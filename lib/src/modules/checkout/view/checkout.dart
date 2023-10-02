import 'package:flutter/material.dart';
import 'package:food_app/src/data/global_widgets/custom_button.dart';
import 'package:food_app/src/data/utils/custom_color.dart';
import 'package:food_app/src/modules/checkout/local_widget/bucket_list.dart';
import 'package:food_app/src/modules/checkout/local_widget/delivery_details.dart';
import 'package:food_app/src/modules/checkout/local_widget/payment_details.dart';
import 'package:food_app/src/modules/checkout/local_widget/social_destance.dart';

class CheckOut extends StatelessWidget {
  var customColor = CustomColor();
   CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F5F2),
      appBar: AppBar(
        title: Text("Checkout", style: TextStyle(color: customColor.deepBlue),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SocialDistance(),
                  DeliveryDetails(),
                  BucketList(),
                  PaymentDetails()
                ],
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: CustomButton(
              buttonName: 'Place order',
            ),
          )
        ],
      )

    );
  }
}
