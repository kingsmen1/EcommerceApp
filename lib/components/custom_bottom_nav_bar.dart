import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enum.dart';
import '../size_config.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key key,
    @required this.selectedMenue,
  }) : super(key: key);

  final MenuState selectedMenue;

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0xFFB6B6B6);
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(15),
            horizontal: getProportionateScreenHeight(30)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.50)),
            ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, HomeScreen.routeName);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/Shop Icon.svg',
                    color: MenuState.home == selectedMenue
                        ? kPrimaryColor
                        : inActiveColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/Heart Icon.svg',
                    color: MenuState.favorite == selectedMenue
                        ? kPrimaryColor
                        : inActiveColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/Chat bubble Icon.svg',
                    color: MenuState.message == selectedMenue
                        ? kPrimaryColor
                        : inActiveColor,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.routeName);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/User Icon.svg',
                    color: MenuState.profile == selectedMenue
                        ? kPrimaryColor
                        : inActiveColor,
                  )),
            ],
          ),
        ));
  }
}
