import 'package:flutter/material.dart';
import 'package:tweet_control/screens/login.dart';
import 'package:tweet_control/screens/register.dart';
import 'package:tweet_control/widget/navigation/custome_navigation.dart';

gotoRegister(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Register()));
}

gotoLogin(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Login()));
}

gotoNavigation(BuildContext context) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => const CustomeNavigation()));
}

goBack(BuildContext context) {
  Navigator.pop(context);
}
