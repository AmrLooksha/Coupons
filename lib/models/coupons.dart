import 'package:flutter/material.dart';

class CouponsDataModel {
  int id;
  final String name;
  final List<Color> colors;
  final String description;
  final List<String> images;

  CouponsDataModel(
      {required this.id,
      required this.description,
      required this.images,
      required this.colors,
      required this.name});
}

// Our demo Coupons
List<CouponsDataModel> demoCoupons = [
  CouponsDataModel(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    name: "Wireless Controller for PS4™",
    description: description,
  ),
  CouponsDataModel(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    name: "Nike Sport White - Man Pant",
    description: description,
  ),
  CouponsDataModel(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    name: "Gloves XC Omega - Polygon",
    description: description,
  ),
  CouponsDataModel(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    name: "Logitech Head",
    description: description,
  ),
];

const String description = "DISCOUNT 10% NOON GET OFFER …";
