import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/utils/route.dart';

class CustomeBack extends StatelessWidget {
  final String title;
  const CustomeBack({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidthFull(context),
      child: GestureDetector(
        onTap: () => goBack(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.keyboard_arrow_left_rounded,
              size: 30,
              color: cPrimer,
            ),
            Text(title, style: h5(cPrimer))
          ],
        ),
      ),
    );
  }
}
