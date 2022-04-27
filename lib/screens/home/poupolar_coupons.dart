import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/dimentions.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/Marchent/allMarchent.dart';
import 'package:shop_app/screens/utils/colors.dart';
import 'package:shop_app/screens/widgets/BigText.dart';
import 'package:shop_app/screens/widgets/IconsAndTextWidget.dart';
import 'package:shop_app/screens/widgets/SmallText.dart';
import 'package:shop_app/screens/widgets/app_icon.dart';

// WORK HEREEEEEEEEEE

class PopularCouponDetail extends StatefulWidget {
  const PopularCouponDetail({Key? key}) : super(key: key);

  @override
  State<PopularCouponDetail> createState() => _PopularCouponDetailState();
}

class _PopularCouponDetailState extends State<PopularCouponDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assetss/image/noonn.jpg"))),

              ///copunimgname
            ),
          ),
          Positioned(
              top: 35,
              left: 0,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(
                          builder: (BuildContext context) {
                            return PopularCouponDetail();
                          },
                        ));
                      },
                      child: AppIcon(icon: Icons.arrow_back_ios)),
                  AppIcon(icon: Icons.favorite)
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 285,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Noon sss"), // Coupon Name
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        children: [
                          SmallText(text: "15"), // quantity
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "Coupons"),
                          SizedBox(
                            width: 15,
                          ),
                          SmallText(text: "5"), // used_copun
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "Used")
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Row(
                        children: [
                          IconsAndTextWidget(
                              icon: Icons.access_time_filled_rounded,
                              text: "5days",
                              iconColor: AppColors.iconColor2),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [BigText(text: "Top Coupons")],
                    ),
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10,
                              bottom: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20), //mmmm
                                    color: Colors.white38,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assetss/image/noonn.jpg"))),

                                ///copunimgname
                              ),
                              Expanded(
                                  child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Column(
                                    children: [
                                      BigText(
                                          text:
                                              "Discount 10% Discount 10% Discount 10%"),

                                      ///coupns_desc
                                      SizedBox(
                                        height: 10,
                                      ),
                                      MaterialButton(
                                          color: AppColors.mainColor,
                                          child: Text("Get Coupons"),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (BuildContext context) {
                                                return AllMarchentScreen();
                                              },
                                            ));
                                          })
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
