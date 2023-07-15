import 'package:flutter/material.dart';
import 'package:food_delivery/Home/food_page_body.dart';
import 'package:food_delivery/Widgets/big_text.dart';
import 'package:food_delivery/Widgets/small_text.dart';
import 'package:food_delivery/utils/AppColor.dart';
import 'package:food_delivery/utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.height20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Sri Lanka",
                        color: AppColor.MainColor,
                      ),
                      Row(
                        children: [
                          SmallText(text: "Galle"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.weight45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColor.MainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}
