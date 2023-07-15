import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/small_text.dart';
import 'package:food_delivery/utils/dimensions.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

  const IconAndText(
      {Key? key,
      required this.icon,
  
      required this.iconColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
       
        ),
      ],
    );
  }
}
