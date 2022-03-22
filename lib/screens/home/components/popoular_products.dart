import 'package:ecommerce_app/screens/home/components/products_card.dart';
import 'package:ecommerce_app/screens/home/components/section_tile.dart';
import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../size_config.dart';

class PopularProducsts extends StatelessWidget {
  const PopularProducsts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(text: "Popular Products", press: () {}),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product: demoProducts[index],
                )),
            SizedBox(width: getProportionateScreenWidth(20),)
          ]),
        ),
      ],
    );
  }
}