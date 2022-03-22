import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  String _firstName;
  String _lastMame;
  String _phoneNumber;
  String _address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(text: 'Continue', Pressed: (){
            if(_formKey.currentState.validate()){
              _formKey.currentState.save();
              Navigator.pushNamed(context, OtpScreen.routeName);
            }
          }),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (value) => _address = value,
      validator: (value){
        if(value.trim().isEmpty){
          return 'Enter your Address';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'Address',
          hintText: 'Enter you Address',
          suffixIcon:
              CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg')),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(

      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (value) => _phoneNumber = value,
      validator:(value)=>validateMobile(value),
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'Phone Number',
          hintText: 'Enter you Phone Number',
          suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg')),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (value) => _lastMame = value,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'Last Name',
          hintText: 'Enter you Last Name',
          suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg')),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (value) => _firstName = value,
      validator: (value){
        if(value.trim().isEmpty){
          return 'Enter your FirstName';
        }
        return null;
      },
      decoration: const InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: 'First Name ',
          hintText: 'Enter you First Name',
          suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg')),
    );
  }
}
