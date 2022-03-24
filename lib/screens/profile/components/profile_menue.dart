import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20),
          top: getProportionateScreenWidth(20)),
      child: FlatButton(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
