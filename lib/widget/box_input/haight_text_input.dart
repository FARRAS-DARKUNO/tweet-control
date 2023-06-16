import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';

class HeightTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String tag;
  final String title;
  const HeightTextInput({
    required this.controller,
    required this.tag,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: sWidthDynamic(context, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(title, style: h5(cBlack)),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: cPrimer),
            ),
            child: TextField(
              minLines: 1,
              maxLines: 9,
              controller: controller,
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: tag,
              ),
            ),
          )
        ],
      ),
    );
  }
}
