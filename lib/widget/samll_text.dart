import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  TextOverflow overflow;
  double size;
  double height;
  SmallText({
    Key? key,
    this.color = const Color(0xff000000),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 16,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        overflow: overflow,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}
