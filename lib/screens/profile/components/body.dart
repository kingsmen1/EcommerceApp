import 'package:ecommerce_app/screens/profile/components/profile_menue.dart';
import 'package:ecommerce_app/screens/profile/components/profile_pic.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          ProfileMenu(
            text: 'My account',
            press: () {},
            icon: 'assets/icons/User Icon.svg',
          ),
          ProfileMenu(
            text: 'Notification',
            press: () {},
            icon: 'assets/icons/Bell.svg',
          ),
          ProfileMenu(
            text: 'Setting ',
            press: () {},
            icon: 'assets/icons/Settings.svg',
          ),
          ProfileMenu(
            text: 'Help Center',
            press: () {},
            icon: 'assets/icons/Question mark.svg',
          ),
          ProfileMenu(
            text: 'Log Out ',
            press: () {},
            icon: 'assets/icons/Log out.svg',
          ),
        ],
      ),
    );
  }
}
