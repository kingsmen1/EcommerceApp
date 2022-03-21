import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/complete_profile/componenets/complete_profile_form.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight *0.02,),
                Text('Complete Profile' , style: headingStyle,
            ),
                Text('Complete your details or  continue \n with Social Media' ,textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight *0.02,),
                CompleteProfileForm(),
                Text('By Continueing please confirm that your agree with our TERMS and CONDITIONS' , textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
