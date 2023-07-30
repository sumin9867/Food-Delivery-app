import 'package:flutter/material.dart';
import 'package:food_delivery/utils/appcolor.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widget/Big_text.dart';
import 'package:food_delivery/widget/icons_text.dart';
import 'package:food_delivery/widget/samll_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          top: Dimensions.height20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    );
  }
}
