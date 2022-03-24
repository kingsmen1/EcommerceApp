import 'package:ecommerce_app/models/Cart.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item.card.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            onDismissed: (direction){
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(color: Color(0xFFFFE6E6) , borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [Spacer(), SvgPicture.asset("assets/icons/Trash.svg")],
                ),
              ),
              key: Key(demoCarts[index].product.id.toString()),
              child: CartItemCard(
                cart: demoCarts[index],
              )),
        ),
        itemCount: demoCarts.length,
      ),
    );
  }
}