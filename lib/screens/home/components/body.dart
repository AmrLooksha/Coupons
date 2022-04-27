import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/dimentions.dart';
import 'package:shop_app/screens/home/poupolar_coupons.dart';

import 'package:shop_app/screens/utils/colors.dart';
import 'package:shop_app/screens/widgets/BigText.dart';
import 'package:shop_app/screens/widgets/IconsAndTextWidget.dart';
import 'package:shop_app/screens/widgets/SmallText.dart';

class TopMerchant extends StatefulWidget {
  @override
  State<TopMerchant> createState() => _TopMerchantState();
}

class _TopMerchantState extends State<TopMerchant> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("Current value is" + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [BigText(text: "Top Marchent")],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return PopularCouponDetail();
              },
            ));
          },
          child: Container(
            height: Dimensions.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),
          ),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [BigText(text: "Top Coupons")],
          ),
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20), //mmmm
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assetss/image/noonn.jpg"))), // sssssssss
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
                                text: "Discount 10% Discount 10% Discount 10%"),
                            SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                                color: AppColors.mainColor,
                                child: Text("Get Coupons"),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return PopularCouponDetail();
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
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(children: [
    Container(
      height: 230,
      margin:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assetss/image/noonn.jpg"))),
    ),
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: Dimensions.pageViewTextContainer,
        margin: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            bottom: Dimensions.height30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5)),
              BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
              BoxShadow(color: Colors.white, offset: Offset(5, 0)),
            ]),
        child: Container(
          padding:
              EdgeInsets.only(top: Dimensions.height15, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Noon Egypt"),
              SizedBox(
                height: Dimensions.height10,
              ),
              Row(
                children: [
                  SmallText(text: "15"),
                  SizedBox(
                    width: 10,
                  ),
                  SmallText(text: "Coupons"),
                  SizedBox(
                    width: 15,
                  ),
                  SmallText(text: "5"),
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
        ),
      ),
    ),
  ]);
}
