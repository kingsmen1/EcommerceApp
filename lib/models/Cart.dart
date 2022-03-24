import 'package:ecommerce_app/models/products.dart';
import 'package:flutter/material.dart';

class Cart {
  final Product product;

  final int numberOfItems;

  Cart({@required this.product, @required this.numberOfItems});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numberOfItems: 2),
  Cart(product: demoProducts[1], numberOfItems: 4),
  Cart(product: demoProducts[2], numberOfItems: 8),
];
