import 'package:flutter/material.dart';
import 'package:tweet_control/utils/route.dart';

tokenHandler(BuildContext context) async {
  // final pref = await SharedPreferences.getInstance();
  // var token = pref.getString('Token') ?? '';

  // if (token == '') {
  Future.delayed(const Duration(seconds: 3)).then((_) => gotoLogin(context));
  // } else {
  //   try {
  //     Future.delayed(const Duration(seconds: 3)).then((_) => gotoHome(context));
  //   } catch (_) {
  //     gotoLogin(context);
  //   }
  // }
}
