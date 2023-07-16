import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/small_text.dart';

import '../utils/AppColor.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key?key , required this.text, }) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text:text, size: Dimensions.font26,),
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
    );
  }
}
