import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/forgot_password/forgot_password_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont have an Account? '),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sign up',
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
