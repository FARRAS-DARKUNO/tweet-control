import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/fonts.dart';
import '../../global/size.dart';

class ImageInput extends StatelessWidget {
  final String title;
  const ImageInput({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: sWidthDynamic(context, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(title, style: h5(cBlack)),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 2, color: cPrimer),
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: sWidthDynamic(context, 0.1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cPrimer,
                  ),
                  child: Text('Upload', style: h5(cWhite)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
