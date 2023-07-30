import 'package:flutter/material.dart';
import 'package:project2/utils/appcolor.dart';
import 'package:project2/utils/dimension.dart';
import 'package:project2/widget/Big_text.dart';
import 'package:project2/widget/icons_text.dart';
import 'package:project2/widget/samll_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(
        text: text,
        size: Dimensions.fontBig,
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
    ]);
  }
}
