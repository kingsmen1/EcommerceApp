import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_button.dart';
import '../../../size_config.dart';

class CustomAppbar extends PreferredSize {

  final double rating;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  const CustomAppbar( {
    Key key, @required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(press: (){
              Navigator.pop(context);
            },iconData: Icons.arrow_back_ios,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14 , vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Row(
                children: [
                  Text(rating.toString() , style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}