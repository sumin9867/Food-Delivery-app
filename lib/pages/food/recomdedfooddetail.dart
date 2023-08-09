import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/controller/reccomended_controller.dart';
import 'package:project2/models/prodcut_model.dart';
import 'package:project2/routes/route_helper.dart';
import 'package:project2/utils/app_constant.dart';
import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/appicon.dart';
import 'package:project2/widget/expandabletext.dart';

class RecomendedFoodDetail extends StatelessWidget {
  final int pageId;
  RecomendedFoodDetail({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getInitial());
                    },
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                    ),
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart,
                  ),
                ]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.size20),
                      topLeft: Radius.circular(Dimensions.size20)),
                ),
                child: Center(
                  child: BigText(
                    text: product.name!,
                    size: Dimensions.fontMedium,
                  ),
                ),
                padding: EdgeInsets.only(
                    top: Dimensions.height10, bottom: Dimensions.height10),
                width: double.maxFinite,
              ),
            ),
            pinned: true,
            backgroundColor: AppColor.mainColor,
            expandedHeight: Dimensions.popularImageHeight,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
              AppConstants.baseUrl + AppConstants.uploadUrl + product.img!,
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableText(text: product.description!),
                ),
              )
            ],
          )),
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
              left: Dimensions.width20 * 5,
              right: Dimensions.width20 * 5,
              top: Dimensions.height10,
              bottom: Dimensions.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                icon: Icons.remove,
                iconcolor: Colors.white,
                backgroundcolor: AppColor.mainColor,
              ),
              SizedBox(width: Dimensions.size5),
              BigText(
                text: "\$${product.price}" + "X" + "0",
              ),
              SizedBox(width: Dimensions.size5),
              AppIcon(
                icon: Icons.add,
                iconcolor: Colors.white,
                backgroundcolor: AppColor.mainColor,
              ),
            ],
          ),
        ),
        Container(
            height: Dimensions.botttmheight,
            padding: EdgeInsets.all(Dimensions.size15),
            decoration: BoxDecoration(
                color: AppColor.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.size20),
                    topLeft: Radius.circular(Dimensions.size20))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Dimensions.size15)),
                      child: AppIcon(
                        icon: Icons.favorite,
                        iconcolor: AppColor.mainColor,
                        backgroundcolor: Colors.white,
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
      ]),
    );
  }
}
