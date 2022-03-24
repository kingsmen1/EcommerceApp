import 'package:ecommerce_app/enum.dart';
import 'package:ecommerce_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName  = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavigationBar(selectedMenue: MenuState.home),
    );
  }
}
