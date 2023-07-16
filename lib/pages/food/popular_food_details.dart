import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/Widgets/app_column.dart';
import 'package:food_delivery/Widgets/app_icon.dart';
import 'package:food_delivery/Widgets/expandable_text.dart';
import 'package:food_delivery/utils/dimensions.dart';

import '../../Widgets/big_text.dart';
import '../../Widgets/icon_and_text.dart';
import '../../Widgets/small_text.dart';
import '../../utils/AppColor.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/food00.png"
                  )
                ),

              ),

          ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppIcon(icon: Icons.arrow_back_ios,),
              AppIcon(icon: Icons.shopping_cart_outlined,)
              
            ],)
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top:Dimensions.popularFoodImageSize,
            child: Container(
              padding: EdgeInsets.only(left:Dimensions.width20, right:Dimensions.width20 ,top: Dimensions.height20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chinese Side",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20,),
                  Expanded(child: SingleChildScrollView(child: ExpandableText(text: "Chinese cuisine comprise cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has profoundly influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide."))),


                ],
              ),
          ))
          

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(left:Dimensions.width20 , right: Dimensions.width20, top: Dimensions.height30 , bottom: Dimensions.height30),
        decoration: BoxDecoration(
          color: AppColor.bottomBackground,

          borderRadius: BorderRadius.only(
            
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20 , right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColor.MainTextColor,
                  ),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(
                    Icons.add, color: AppColor.MainTextColor,
                  )
                ],
              ),

            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20 , right: Dimensions.width20),
              
              child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColor.MainColor,
              ),
            )
          ],
        ),
      ),

    );
  }
}