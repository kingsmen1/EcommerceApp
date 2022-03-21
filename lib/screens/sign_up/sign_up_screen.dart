import 'package:ecommerce_app/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {

  static String routeName = '/sign_up_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up'), centerTitle: true,),
      body: Body(),
    );
  }
}
