import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/icons_text.dart';
import 'package:project2/widget/samll_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 4,
              itemBuilder: (context, index) {
                return _buildPageItem(index);
              }),
        ),
        // dot section
        DotsIndicator(
          dotsCount: 5,
          position: 0,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeColor: AppColor.mainColor,
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        // popular section
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(children: [
            BigText(
              text: "Trending",
            )
          ]),
        ),
        // List section
        Container(
          height: 1000,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, top: Dimensions.height20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/food2.jpeg"))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: Dimensions.width20),
                          padding: EdgeInsets.only(bottom: Dimensions.height10),
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Color.fromARGB(255, 255, 255, 255)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, right: 20, left: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BigText(
                                    text:
                                        "Chinese Sidejbhvvvvvvvvvvvvvvvvvvvvvvvvvvvvv",
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  SmallText(
                                    text: "specially from italy in th egonioou",
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: AppColor.iconcolor1,
                                      ),
                                      IconTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.5km",
                                        iconColor: AppColor.mainColor,
                                      ),
                                      IconTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32 min",
                                        iconColor: AppColor.iconColor2,
                                      )
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              );
            },
          ),
        )
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: Dimensions.pageViewContainer,
        margin: const EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.yellow : Colors.deepPurple,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food2.jpeg"))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimensions.pageTextContainer,
          margin: const EdgeInsets.only(left: 35, right: 35, bottom: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(115, 221, 220, 220),
                    offset: Offset(5, 5),
                    blurRadius: 5.0),
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 255, 255, 255),
                  offset: Offset(5, 0),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BigText(
                text: "Chinese Side",
              ),
              SizedBox(height: Dimensions.height10),
              Row(
                children: [
                  Wrap(
                      children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      color: AppColor.mainColor,
                      size: 16,
                    ),
                  )),
                  SizedBox(width: Dimensions.width10),
                  SmallText(
                    text: "4.5",
                  ),
                  SizedBox(width: Dimensions.width30),
                  SmallText(
                    text: "1265",
                  ),
                  const SizedBox(width: 5),
                  SmallText(
                    text: "comments",
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextWidget(
                    icon: Icons.circle_sharp,
                    text: "Normal",
                    iconColor: AppColor.iconcolor1,
                  ),
                  IconTextWidget(
                    icon: Icons.location_on,
                    text: "1.5km",
                    iconColor: AppColor.mainColor,
                  ),
                  IconTextWidget(
                    icon: Icons.access_time_rounded,
                    text: "32 min",
                    iconColor: AppColor.iconColor2,
                  )
                ],
              )
            ]),
          ),
        ),
      )
    ],
  );
}
