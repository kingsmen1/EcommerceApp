import 'package:ecommerce_app/screens/home/components/section_tile.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                Category: "SmartPhone",
                numberOfBrands: 18,press: (){},
              ),SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                Category: "SmartPhone",
                numberOfBrands: 24,press: (){},
              ),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.image,
    @required this.Category,
    @required this.numberOfBrands,@required this.press,
  }) : super(key: key);

  final String image, Category;
  final int numberOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.only(left:getProportionateScreenWidth(20)),
        child: SizedBox(
          height: getProportionateScreenWidth(100),
          width: getProportionateScreenHeight(242),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenHeight(10)),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), children: [
                      TextSpan(
                          text: '$Category\n',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '$numberOfBrands  Brands')
                    ])),
              )
            ]),
          ),
        ),
      ),
    );
  }
}