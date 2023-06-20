import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:tweet_control/utils/sosmed.dart';
import 'package:tweet_control/widget/box_input/search_input.dart';

import '../global/size.dart';
import '../provider/resolution_bloc/resolution_bloc.dart';
import '../provider/route_bloc/route_bloc.dart';
import '../widget/header/general_header.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  TextEditingController search = TextEditingController();
  List tempdata = listSosmed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const GeneralHeader(tittle: 'Upload'),
            SizedBox(
              height: state.isTablet
                  ? sHeightContain(context)
                  : sHeightMinus(context, 135),
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
                      children: listSosmed
                          .where((element) => element['name']
                              .toString()
                              .toLowerCase()
                              .contains(search.text.toLowerCase()))
                          .toList()
                          .map((value) {
                        return GestureDetector(
                          onTap: () {
                            value['action'] == 1
                                ? context
                                    .read<RouteBloc>()
                                    .add(SetRoutePageEvent(value['name']))
                                : null;
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
      },
    );
  }
}
