import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/screens/details/components/product_description.dart';
import 'package:ecommerce_app/screens/details/components/product_images.dart';
import 'package:ecommerce_app/screens/details/components/top_rounded_container.dart';
import 'package:ecommerce_app/size_config.dart';

import 'package:flutter/material.dart';

import '../../../models/products.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  Body({this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            collor: Colors.white,
            child: ProductDescription(product: product, pressOnSeeMore: () {}),
          ),
          TopRoundedContainer(
              collor: Color(0xFFF6F7F9), child: ColorDots(product: product)),
          TopRoundedContainer(
              collor: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    top: getProportionateScreenHeight(15),
                    bottom: getProportionateScreenHeight(30)),
                child: DefaultButton(
                  text: 'Add to Cart',
                  Pressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}
