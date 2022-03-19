
import '../../screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sing_in';

  @override
  Widget build(BuildContext context) {
    print('helo');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign in '),
      ),
      body: Body(),
    );
  }
}
