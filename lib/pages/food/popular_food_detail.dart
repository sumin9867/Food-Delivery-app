// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/controller/popular_controller.dart';

import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/app_column.dart';
import 'package:project2/widget/appicon.dart';
import 'package:project2/widget/expandabletext.dart';
import 'package:project2/widget/icons_text.dart';
import 'package:project2/widget/samll_text.dart';

class FoodDetail extends StatelessWidget {
  int pageId;
  FoodDetail({
    super.key,
    required this.pageId,
  });

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    print(pageId.toString());
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
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    const ExpandableText(
                      text:
                          " Food is any substance consumed by an organism for nutritional support. Food is usually of plant, animal, or fungal origin and contains essential nutrients such as carbohydrates, fats, proteins, vitamins, or minerals. The substance is ingested by an organism and assimilated by the organism's cells to provide energy, maintain life, or stimulate growth. Different species of animals have different feeding behaviours that satisfy the needs of their metabolisms and have evolved to fill a specific ecological niche within specific geographical contexts.Omnivorous humans are highly adaptable and have adapted to obtain food in many different ecosystems. The majority of the food energy required is supplied by the industrial food industry, which produces food through intensive agriculture and distributes it through complex food processing and food distribution systems. This system of conventional agriculture relies heavily on fossil fuels, which means that the food and agricultural systems are one of the major contributors to climate change, accounting for as much as 37% of total greenhouse gas emissions.[1]The food system has significant impacts on a wide range of other social and political issues, including sustainability, biological diversity, economics, population growth, water supply, and food security. Food safety and security are monitored by international agencies like the International Association for Food Protection, the World Resources Institute, the World Food Programme, the Food and Agriculture Organization, and the International Food Information Council.Definition and classification Food is any substance consumed to provide nutritional support and energy to an organism.[2][3] It can be raw, processed, or formulated and is consumed orally by animals for growth, health, or pleasure. Food is mainly composed of water, lipids, proteins, and carbohydrates. Minerals (e.g., salts) and organic substances (e.g., vitamins) can also be found in food.[4] Plants, algae, and some microorganisms use photosynthesis to make their own food molecules.[5] Water is found in many foods and has been defined as a food by itself.[6] Water and fiber have low energy densities, or calories, while fat is the most energy-dense component.[3] Some inorganic (non-food) elements are also essential for plant and animal functioning.[7]Human food can be classified in various ways, either by related content or by how it is processed.[8] The number and composition of food groups can vary. Most systems include four basic groups that describe their origin and relative nutritional function: Vegetables and Fruit, Cereals and Bread, Dairy, and Meat.[9] Studies that look into diet quality group food into whole grains/cereals, refined grains/cereals, vegetables, fruits, nuts, legumes, eggs, dairy products, fish, red meat, processed meat, and sugar-sweetened beverages.[10][11][12] The Food and Agriculture Organization and World Health Organization use a system with nineteen food classifications: cereals, roots, pulses and nuts, milk, eggs, fish and shellfish, meat, insects, vegetables, fruits, fats and oils, sweets and sugars, spices and condiments, beverages, foods for nutritional uses, food additives, composite dishes and savoury snacks.[13]",
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
