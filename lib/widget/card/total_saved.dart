import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';

class TotalSaved extends StatefulWidget {
  const TotalSaved({super.key});

  @override
  State<TotalSaved> createState() => _TotalSavedState();
}

class _TotalSavedState extends State<TotalSaved> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(1, 1),
          colors: <Color>[cSekunder, cPrimer],
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Great Job, You Saved', style: body(cWhite)),
          const SizedBox(height: 10),
          Text('230K', style: h1(cWhite)),
          const SizedBox(height: 10),
          Text('Post Reach This Year', style: body(cWhite)),
        ],
      ),
    );
  }
}
