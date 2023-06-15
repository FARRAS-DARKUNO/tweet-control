import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';

class Plant extends StatefulWidget {
  const Plant({super.key});

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/night.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text('What’s your plan?', style: info(cWhite)),
              Text('Have nice day', style: body(cWhite)),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            width: sWidthFull(context),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: cWhite,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.add_box_rounded,
                color: cPrimer,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
