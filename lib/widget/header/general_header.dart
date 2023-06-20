import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/provider/resolution_bloc/resolution_bloc.dart';

class GeneralHeader extends StatefulWidget {
  final String tittle;
  const GeneralHeader({required this.tittle, super.key});

  @override
  State<GeneralHeader> createState() => _GeneralHeaderState();
}

class _GeneralHeaderState extends State<GeneralHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.topCenter,
          width: state.isTablet ? sWidthContain(context) : sWidthFull(context),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  state.isTablet
                      ? Container()
                      : GestureDetector(
                          onTap: () => openDrawer(context),
                          child: const Icon(Icons.menu),
                        ),
                  SizedBox(width: state.isTablet ? 0 : 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hallo Deva Alfatih Mutoral', style: body(cGray)),
                      SizedBox(height: state.isTablet ? 5 : 0),
                      Text(widget.tittle, style: h1(cBlack)),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_none,
                      color: cBlack, size: state.isTablet ? 30 : 24),
                  const SizedBox(width: 10),
                  Icon(Icons.settings,
                      color: cBlack, size: state.isTablet ? 30 : 24),
                  const SizedBox(width: 10),
                  CircleAvatar(radius: state.isTablet ? 24 : 16)
                ],
              )
            ],
          ),
        );
      },
    );
  }

  openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
