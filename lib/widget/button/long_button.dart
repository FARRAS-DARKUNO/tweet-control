import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';

import '../../global/size.dart';

class LongButton extends StatelessWidget {
  final String title;
  const LongButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      alignment: Alignment.center,
      width: sWidthDynamic(context, 1),
      height: 40,
      decoration: const BoxDecoration(
        color: cPrimer,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Text(title, style: h4(cWhite)),
    );
  }
}
