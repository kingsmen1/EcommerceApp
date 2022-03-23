import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product, this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: getProportionateScreenHeight(5),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportionateScreenWidth(64),
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? Color(0xFFFFE6E6)
                    : Color(0xFFF5f6F9),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourite
                  ? Color(0xFFFF4848)
                  : Color(0xFFDBDEE4),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(5),
        ),
        GestureDetector(
          onTap:pressOnSeeMore,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20)),
                child: Text(
                  'See More Details',
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),SizedBox(width: 5,),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kPrimaryColor,
              )
            ],
          ),
        )
      ],
    );
  }
}