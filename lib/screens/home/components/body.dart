import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/products.dart';
import 'package:ecommerce_app/screens/home/components/popoular_products.dart';
import 'package:ecommerce_app/screens/home/components/products_card.dart';
import 'package:ecommerce_app/screens/home/components/search_box.dart';
import 'package:ecommerce_app/screens/home/components/section_tile.dart';
import 'package:ecommerce_app/screens/home/components/specialoffer.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'DiscountBanner.dart';
import 'categories.dart';
import 'home_header.dart';
import 'icon_button_with_counter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SpecialOffer(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),

            PopularProducsts()
          ],
        ),
      ),
    ));
  }
}



