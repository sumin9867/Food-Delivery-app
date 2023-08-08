import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  DetailText({
    Key? key,
    this.color = const Color(0xff000000),
    required this.text,
    this.height = 1.2,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}
