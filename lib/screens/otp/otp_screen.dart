
import 'package:ecommerce_app/screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName  = '/otp_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'), centerTitle: true,
      ),
      body: Body(),
    );
  }
}
