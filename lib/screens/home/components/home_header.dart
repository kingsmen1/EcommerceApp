import 'package:ecommerce_app/screens/home/components/search_box.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBox(),
          IconButtonWithCounter(svgSrc: "assets/icons/Cart Icon.svg", press: (){} , ),
          IconButtonWithCounter(svgSrc: "assets/icons/Bell.svg", numberOfItems: 3,press: (){} , ),
        ],
      ),
    );
  }
}