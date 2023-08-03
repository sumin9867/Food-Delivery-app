import 'package:flutter/material.dart';
import 'package:project2/pages/home/foodpagebody.dart';
import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/samll_text.dart';

// import 'package:google_fonts/google_fonts.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 239, 239),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.size15, bottom: Dimensions.size10),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.size20, right: Dimensions.size20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          BigText(
                            text: "Nepal",
                            color: AppColor.mainColor,
                          ),
                          Row(
                            children: [
                              SmallText(
                                text: "City",
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: AppColor.mainColor,
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: Dimensions.size45,
                        height: Dimensions.size45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.mainColor,
                        ),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ]),
              ),
            ),
          ),
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      )),
    );
  }
}
