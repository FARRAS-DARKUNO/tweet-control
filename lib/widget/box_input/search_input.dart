import 'package:flutter/material.dart';
import 'package:tweet_control/global/size.dart';

import '../../global/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  const SearchInput({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sWidthDynamic(context, 1),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width: 2, color: cPrimer),
      ),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Serach ...',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
