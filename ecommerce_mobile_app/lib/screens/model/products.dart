import 'package:flutter/material.dart';

class Products {
  final int id;
  final String title, detail;
  final double rating, amount;
  final List<String> images;
  final List<Color> colors;
  bool isfavourite, ispopular;

  Products({
    required this.id,
    required this.title,
    required this.detail,
    required this.images,
    required this.colors,
    required this.amount,
    required this.rating,
    required this.isfavourite,
    required this.ispopular,
  });
}

List<Products> demoProductItems = [
  Products(
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
    title: "Wireless Controller for PS4™",
    amount: 64.99,
    detail: detail,
    rating: 4.8,
    isfavourite: true,
    ispopular: true,
  ),
  Products(
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
    title: "Nike Sport White - Man Pant",
    amount: 50.5,
    detail: detail,
    rating: 4.1,
    ispopular: true,
    isfavourite: true,
  ),
  Products(
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
    title: "Gloves XC Omega- Polygon",
    amount: 36.55,
    detail: detail,
    rating: 4.1,
    isfavourite: true,
    ispopular: true,
  ),
  Products(
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
    title: "Logitech Head",
    amount: 20.20,
    detail: detail,
    rating: 4.1,
    isfavourite: true,
    ispopular: true,
  ),
];

const String detail =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
