import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/provider/bloc/route_bloc.dart';
import 'package:tweet_control/utils/name_page.dart';
import 'package:tweet_control/utils/sosmed.dart';
import 'package:tweet_control/widget/box_input/search_input.dart';

import '../global/size.dart';
import '../widget/header/general_header.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const GeneralHeader(tittle: 'Upload'),
        SizedBox(
          height: sHeightContain(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchInput(controller: search),
                ResponsiveGridList(
                  rowMainAxisAlignment: MainAxisAlignment.start,
                  shrinkWrap: false,
                  scroll: false,
                  desiredItemWidth: 100,
                  minSpacing: 10,
                  children: listSosmed.map((value) {
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<RouteBloc>()
                            .add(SetRoutePageEvent(twitter));
                      },
                      child: Container(
                        foregroundDecoration: value['action'] == 0
                            ? const BoxDecoration(
                                color: Color.fromARGB(255, 200, 200, 200),
                                backgroundBlendMode: BlendMode.lighten,
                              )
                            : null,
                        height: 100,
                        child: Image.asset(value['icon']),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
