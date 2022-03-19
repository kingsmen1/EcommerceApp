import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({

    @required this.text,
    @required this.image,
  }) ;

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              color: kPrimaryColor, fontSize: getProportionateScreenWidth(36)),
        ),
        Text(text , textAlign: TextAlign.center,),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          width: getProportionateScreenHeight(265),
          height: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}