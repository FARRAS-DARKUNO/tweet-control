import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/provider/resolution_bloc/resolution_bloc.dart';

import '../../global/fonts.dart';

class LastUpdate extends StatefulWidget {
  final double hightFull;
  const LastUpdate({required this.hightFull, super.key});

  @override
  State<LastUpdate> createState() => _LastUpdateState();
}

class _LastUpdateState extends State<LastUpdate> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cCalm,
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: widget.hightFull / 3,
                width: sWidthFull(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/night.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: sWidthDynamic(context, 0.3) - 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Latest Updates',
                            style: state.isTablet ? h1(cBlack) : body(cBlack)),
                        Text('Twitter', style: body(cGray)),
                      ],
                    ),
                  ),
                  const Icon(Icons.add_box_rounded, size: 40, color: cPrimer)
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
