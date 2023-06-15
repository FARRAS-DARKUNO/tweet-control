import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';

class GeneralHeader extends StatefulWidget {
  final String tittle;
  const GeneralHeader({required this.tittle, super.key});

  @override
  State<GeneralHeader> createState() => _GeneralHeaderState();
}

class _GeneralHeaderState extends State<GeneralHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: sWidthContain(context),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hallo Deva Alfatih Mutoral', style: body(cGray)),
              const SizedBox(height: 5),
              Text(widget.tittle, style: h1(cBlack)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.notifications_none, color: cBlack, size: 30),
              SizedBox(width: 10),
              Icon(Icons.settings, color: cBlack, size: 30),
              SizedBox(width: 10),
              CircleAvatar(radius: 24)
            ],
          )
        ],
      ),
    );
  }
}
