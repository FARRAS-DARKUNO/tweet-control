import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/provider/bloc/route_bloc.dart';
import 'package:tweet_control/screens/dashboard.dart';
import 'package:tweet_control/screens/history.dart';
import 'package:tweet_control/screens/upload.dart';
import 'package:tweet_control/utils/name_page.dart';

class CustomeNavigation extends StatefulWidget {
  const CustomeNavigation({super.key});

  @override
  State<CustomeNavigation> createState() => _CustomeNavigationState();
}

class _CustomeNavigationState extends State<CustomeNavigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double widthMenus = sWidthDynamic(context, 0.23) - 10;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: sHeightFull(context),
          width: sWidthFull(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: sHeightFull(context),
                width: widthMenus,
                decoration: BoxDecoration(
                  color: cPrimer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: widthMenus,
                      height: 50,
                      child: Text(
                        'Tweet Controller',
                        style: h2(cWhite),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: menus.map((value) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              index = menus.indexOf(value);
                              context
                                  .read<RouteBloc>()
                                  .add(SetRoutePageEvent(value['route']));
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                index == menus.indexOf(value)
                                    ? Container(
                                        height: 20,
                                        width: 4,
                                        color: cWhite,
                                      )
                                    : Container(),
                                Container(
                                  width: widthMenus - 4,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        value['icon'],
                                        color: cWhite,
                                        size: 30,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(value['name'], style: h2(cWhite))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: sHeightFull(context),
                width: sWidthDynamic(context, 0.75) - 10,
                child: BlocBuilder<RouteBloc, RouteState>(
                  builder: (context, state) {
                    switch (state.routeState) {
                      case dashboard:
                        return const Dashboard();
                      case upload:
                        return const Upload();
                      case history:
                        return const History();
                      default:
                        return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List menus = [
  {'name': 'Dashboard', 'icon': Icons.dashboard_outlined, 'route': dashboard},
  {'name': 'Upload', 'icon': Icons.upload_file_outlined, 'route': upload},
  {'name': 'History', 'icon': Icons.history, 'route': history}
];
