import 'package:ecommerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              Text('Register Account'  , style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold),),
              Text('Completer your details or continue with social media' , textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    click: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    click: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    click: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text('By Continueing please confirm that your agree with our TERMS and CONDITIONS' , textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
