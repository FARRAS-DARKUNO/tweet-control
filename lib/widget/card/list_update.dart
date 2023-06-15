import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';

class ListUpdate extends StatefulWidget {
  const ListUpdate({super.key});

  @override
  State<ListUpdate> createState() => _ListUpdateState();
}

class _ListUpdateState extends State<ListUpdate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Last Updates', style: h2(cBlack)),
        SizedBox(
          width: sWidthFull(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Brand Edition', style: body(cGray)),
              Text('Upcoming Tasks', style: body(cGray)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: sWidthFull(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: cOrange,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tweeter', style: h2(cBlack)),
                      Text('Brand Stail...', style: body(cGray))
                    ],
                  )
                ],
              ),
              Text('+329.000', style: h2(cBlack))
            ],
          ),
        ),
      ],
    );
  }
}
