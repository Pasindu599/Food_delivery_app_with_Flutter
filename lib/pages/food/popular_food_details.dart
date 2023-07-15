import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/Widgets/app_icon.dart';
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
            top:Dimensions.popularFoodImageSize,
            child: Container(
              padding: EdgeInsets.only(left:Dimensions.width20, right:Dimensions.width20 ,top: Dimensions.height20 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Side"),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColor.MainColor,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "comments"),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(
                            icon: Icons.circle_sharp,
                            iconColor: AppColor.IconColor1,
                            text: "Normal"),
                        IconAndText(
                            icon: Icons.location_on,
                            iconColor: AppColor.MainColor,
                            text: "1.7km"),
                        IconAndText(
                            icon: Icons.access_time_rounded,
                            iconColor: AppColor.IconColor1,
                            text: "32min"),
                      ],
                    ),
                  ],
                ),
          ))
        ],
      ),

    );
  }
}