import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/screens/details/components/body.dart';

import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductsDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments as ProductsDetailsArguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppbar(rating: arguments._product.rating),
      body: Body(product: arguments._product),
    );
  }
}

class ProductsDetailsArguments {
  ProductsDetailsArguments(@required this._product);

  final Product _product;
}
