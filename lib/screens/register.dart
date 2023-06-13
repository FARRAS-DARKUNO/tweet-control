import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/widget/box_input/text_input.dart';
import 'package:tweet_control/widget/button/custome_back.dart';
import 'package:tweet_control/widget/button/normal_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            width: sWidthFull(context),
            height: sHeightFull(context),
            color: cWhite,
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomeBack(title: 'Back'),
                  Image.asset('assets/images/logo.jpeg', scale: 4),
                  const SizedBox(height: 20),
                  TextInput(
                    isPassword: false,
                    controller: username,
                    tag: 'Name',
                    title: 'Name',
                  ),
                  TextInput(
                    isPassword: false,
                    controller: username,
                    tag: 'Email',
                    title: 'Email',
                  ),
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
                  const NormalButton(title: 'Register'),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Image.asset('assets/images/google.png', scale: 10),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
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
