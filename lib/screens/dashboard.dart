import 'package:flutter/material.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/widget/card/last_update.dart';
import 'package:tweet_control/widget/card/list_update.dart';
import 'package:tweet_control/widget/card/plant.dart';
import 'package:tweet_control/widget/card/progress_bar.dart';
import 'package:tweet_control/widget/card/total_saved.dart';
import 'package:tweet_control/widget/header/general_header.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const GeneralHeader(tittle: 'Dashboard'),
        SizedBox(
          height: sHeightContain(context),
          child: GridView.count(
            childAspectRatio: (itemWidth / itemHeight),
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              const TotalSaved(),
              const ProgressBar(),
              const Plant(),
              LastUpdate(hightFull: itemHeight),
              const ListUpdate()
            ],
          ),
        )
      ],
    );
  }
}
