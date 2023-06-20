import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/utils/route.dart';
import 'package:tweet_control/widget/box_input/text_input.dart';
import 'package:tweet_control/widget/button/normal_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            width: sWidthFull(context),
            height: sHeightFull(context),
            color: cWhite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.jpeg', scale: 3),
                  const SizedBox(height: 20),
                  TextInput(
                    isPassword: false,
                    controller: username,
                    tag: 'Username',
                    title: 'Username',
                  ),
                  TextInput(
                    isPassword: true,
                    controller: password,
                    tag: 'Password',
                    title: 'Password',
                  ),
                  GestureDetector(
                    onTap: () => gotoNavigation(context),
                    child: const NormalButton(title: 'Login'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child:
                          Image.asset('assets/images/google.png', scale: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Doesn’t haven a account ?  ', style: h5(cBlack)),
                      GestureDetector(
                        onTap: () => gotoRegister(context),
                        child: Text('Register ', style: h5(cPrimer)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
