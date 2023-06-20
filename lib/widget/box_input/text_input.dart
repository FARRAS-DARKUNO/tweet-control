import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/provider/resolution_bloc/resolution_bloc.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String tag;
  final String title;
  final bool isPassword;
  const TextInput({
    required this.controller,
    required this.tag,
    required this.title,
    required this.isPassword,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResolutionBloc, ResolutionState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          width: state.isTablet
              ? sWidthDynamic(context, 0.5)
              : sWidthDynamic(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(title, style: h5(cBlack)),
              ),
              Container(
                width: state.isTablet
                    ? sWidthDynamic(context, 0.4)
                    : sWidthDynamic(context, 0.9),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 2, color: cPrimer),
                ),
                child: TextField(
                  controller: controller,
                  obscureText: isPassword,
                  enableSuggestions: !isPassword,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: tag,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
