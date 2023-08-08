import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/controller/popular_controller.dart';
import 'package:project2/models/prodcut_model.dart';
import 'package:project2/utils/app_constant.dart';
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
        GetBuilder<PopularProductController>(builder: (popularProduct) {
          return popularProduct.isLoaded
              ? Container(
                  height: Dimensions.pageView,
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: popularProduct.popularProductList.length,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position,
                            popularProduct.popularProductList[position]);
                      }),
                )
              : CircularProgressIndicator(
                  color: AppColor.mainColor,
                );
        }),
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
              text: "Reccomended",
            )
          ]),
        ),
        // List section

        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, top: Dimensions.height20),
                  height: Dimensions.size150,
                  width: Dimensions.size150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food1.jpg"))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: Dimensions.width20),
                        padding: EdgeInsets.only(bottom: Dimensions.height10),
                        height: Dimensions.homepagetrend,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Color.fromARGB(255, 255, 255, 255)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: Dimensions.size20,
                              right: Dimensions.size20,
                              left: Dimensions.size20),
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
      ],
    );
  }
}

Widget _buildPageItem(int index, ProductModel popularProduct) {
  return Stack(
    children: [
      Container(
        height: Dimensions.pageViewContainer,
        margin:
            EdgeInsets.only(left: Dimensions.size5, right: Dimensions.size5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.yellow : Colors.deepPurple,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    AppConstants.baseUrl + "/uploads/" + popularProduct.img!))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimensions.pageTextContainer,
          margin: EdgeInsets.only(
              left: Dimensions.size35,
              right: Dimensions.size35,
              bottom: Dimensions.size15),
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
                text: popularProduct.name!,
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
