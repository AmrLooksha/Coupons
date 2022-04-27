import 'package:flutter/material.dart';
import 'package:shop_app/models/AllMarchent.dart';
import 'package:shop_app/screens/home/poupolar_coupons.dart';
import 'package:shop_app/screens/utils/colors.dart';
import 'package:shop_app/screens/widgets/BigText.dart';
import 'package:shop_app/screens/widgets/SmallText.dart';
import 'dart:async';
import 'dart:convert';

class AllMarchentWidget extends StatelessWidget {
  AllMarchentWidget({
    required this.marchentss,
    Key? key,
  }) : super(key: key);
  MarchentModel marchentss;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) {
              return PopularCouponDetail();
            },
          ));
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(width: 1.0),
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 40,
            child: Image.network(marchentss.company_img),
          ),
        ),
        title: BigText(text: 'marchentss.id'),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.linear_scale, color: AppColors.mainColor),
            Row(
              children: [
                SmallText(text: "15"),
                SizedBox(
                  width: 5,
                ),
                SmallText(text: "Coupons"),
                SizedBox(
                  width: 10,
                ),
                SmallText(text: "5"),
                SizedBox(
                  width: 5,
                ),
                SmallText(text: "Used")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
