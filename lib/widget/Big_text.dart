import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimension.dart';
// import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    this.color,
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size == 0 ? Dimensions.fontBig : size),
    );
  }
}
