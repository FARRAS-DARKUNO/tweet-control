import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/provider/resolution_bloc/resolution_bloc.dart';
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
    double itemHeight = 270;
    final double itemWidth = size.width / 2;
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const GeneralHeader(tittle: 'Dashboard'),
            SizedBox(
              height: state.isTablet
                  ? sHeightContain(context)
                  : sHeightMinus(context, 135),
              child: GridView.count(
                childAspectRatio: state.isTablet
                    ? (itemWidth / itemHeight)
                    : (itemWidth / 120),
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: state.isTablet ? 2 : 1,
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
      },
    );
  }
}
