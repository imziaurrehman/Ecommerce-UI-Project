import 'package:flutter/material.dart';
import './products.dart';

class Cart {
  final Products products;
  final int sumOfNums;
  Cart({required this.products, required this.sumOfNums});
}

List<Cart> demoCart = [
  Cart(products: demoProductItems[0], sumOfNums: 3),
  Cart(products: demoProductItems[1], sumOfNums: 2),
  Cart(products: demoProductItems[2], sumOfNums: 1),
  Cart(products: demoProductItems[3], sumOfNums: 5),
];
