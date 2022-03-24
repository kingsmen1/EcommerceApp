import 'package:ecommerce_app/screens/home/components/popoular_products.dart';

import 'package:ecommerce_app/screens/home/components/specialoffer.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'DiscountBanner.dart';
import 'categories.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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



