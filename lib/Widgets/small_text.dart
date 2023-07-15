import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double height;
  double size;
  SmallText({
    Key? key,
    this.color = const Color.fromARGB(255, 37, 0, 49),
    this.size = 12,
    this.height = 1.2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontSize: size,
      ),
    );
  }
}
