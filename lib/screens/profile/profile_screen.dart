import 'package:ecommerce_app/enum.dart';
import 'package:ecommerce_app/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/Profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomNavigationBar(selectedMenue: MenuState.profile),
    );
  }
}

