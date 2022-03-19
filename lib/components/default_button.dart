import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    @required this.text, @required this.Pressed,
  });

  final String text;
  final Function Pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Pressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white),
      ),
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: kPrimaryColor),
    );
  }
}