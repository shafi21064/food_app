import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/src/modules/checkout/checkout_pakage.dart';
import 'package:food_app/src/modules/checkout/view/confirm_order.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backGround,
      appBar: AppBar(
        title: Text("Checkout", style: TextStyle(color: CustomColor.deepBlue),),
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
                  const SocialDistance(),
                  const DeliveryDetails(),
                  SpaceInHeight(height: 10.h),
                  const BucketTitleWithAddItem(),
                   BucketItemList(),
                  const PaymentDetails()
                ],
              ),
            ),
          ),
          CustomButton(
            onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ConfirmOrder()));
            },
            widthSize: MediaQuery.sizeOf(context).width,
            buttonName: 'Place order',
          )
        ],
      )

    );
  }
}
