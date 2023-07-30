import 'package:flutter/material.dart';
import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/app_column.dart';
import 'package:project2/widget/appicon.dart';
import 'package:project2/widget/icons_text.dart';
import 'package:project2/widget/samll_text.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularImageHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/food1.jpg"))),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart,
                  ),
                ]),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularImageHeight - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: AppColumn(
                  text: "Chinese Slide",
                )),
          )
        ]),
      ),
    );
  }
}
