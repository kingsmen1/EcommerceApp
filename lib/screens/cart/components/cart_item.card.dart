import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(88),
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(cart.product.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(16),
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(
                  text: "\$ ${cart.product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                  children: [
                    TextSpan(
                        text: "   x${cart.numberOfItems}",
                        style: TextStyle(color: kTextColor))
                  ]))
            ],
          ),
        ],
      );
  }
}