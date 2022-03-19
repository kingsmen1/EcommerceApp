import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/components/no_account_text.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKeyPass = GlobalKey<FormState>();
  List<String> _errors = [];
  String _email;

  void _trySubmit() {
    final _isValid = _formKeyPass.currentState.validate();
    FocusScope.of(context).unfocus();
    if (_isValid) {
      //this line triggers the onSaved on every TextFormField
      _formKeyPass.currentState.save();
      print(_email);
    } else {
      print('invalid');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyPass,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty && !_errors.contains(kEmailNullError)) {
                setState(() {
                  _errors.add(kEmailNullError);
                });
                return '';
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !_errors.contains(kInvalidEmailError)) {
                setState(() {
                  _errors.add(kInvalidEmailError);
                });
                return '';
              }
              return null;
            },
            onSaved: (newValue) => _email = newValue.trim(),
            onChanged: (value) {
              if (value.isNotEmpty && _errors.contains(kEmailNullError)) {
                setState(() {
                  _errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  _errors.contains(kInvalidEmailError)) {
                setState(() {
                  _errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },

            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          formError(errors: _errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            Pressed: _trySubmit,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
