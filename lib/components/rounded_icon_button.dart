import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key, this.iconData, this.press,
  }) : super(key: key);

  @required final IconData iconData;
  @required final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:getProportionateScreenHeight(40) ,
      width:getProportionateScreenWidth(40) ,
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(iconData),
        onPressed: press,),
    );
  }}