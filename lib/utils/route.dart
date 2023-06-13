import 'package:flutter/material.dart';
import 'package:tweet_control/screens/login.dart';
import 'package:tweet_control/screens/register.dart';

gotoRegister(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Register()));
}

gotoLogin(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Login()));
}

goBack(BuildContext context) {
  Navigator.pop(context);
}
