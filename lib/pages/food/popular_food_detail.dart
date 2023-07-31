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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/food1.jpg"))),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height20,
            child: const Row(
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
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(
                      text: "Chinese Slide",
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(
                      text: "Intoduction",
                      size: Dimensions.fontMedium,
                    )
                  ],
                )),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
          height: Dimensions.botttmheight,
          padding: EdgeInsets.all(Dimensions.size20),
          decoration: BoxDecoration(
              color: AppColor.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.size20 * 2),
                  topLeft: Radius.circular(Dimensions.size20 * 2))),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                padding: EdgeInsets.all(Dimensions.size10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.size20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColor.signColor,
                    ),
                    SizedBox(width: Dimensions.size5),
                    BigText(
                      text: "0",
                    ),
                    SizedBox(width: Dimensions.size5),
                    Icon(
                      Icons.add,
                      color: AppColor.signColor,
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(Dimensions.size10),
              child: BigText(
                text: "\$10  Add to cart",
                size: Dimensions.fontMedium,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.size10),
                  color: AppColor.mainColor),
            )
          ])),
    );
  }
}
