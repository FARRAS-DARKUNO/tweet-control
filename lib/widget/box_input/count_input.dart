import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tweet_control/global/colors.dart';

class CountTextInput extends StatelessWidget {
  final TextEditingController controller;
  const CountTextInput({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: cPrimer),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        autocorrect: false,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: '0',
        ),
      ),
    );
  }
}
