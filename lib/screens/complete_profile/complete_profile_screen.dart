import 'package:ecommerce_app/screens/complete_profile/componenets/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
static String routeName  = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up' ), centerTitle: true,),
      body: Body(),
    );
  }
}
