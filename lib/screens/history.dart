import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';

import '../global/size.dart';
import '../widget/header/general_header.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const GeneralHeader(tittle: 'History'),
        const SizedBox(height: 20),
        SizedBox(
          height: sHeightContain(context) - 20,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Table(
                border: TableBorder.all(color: cSekunder),
                children: [
                  TableRow(children: [
                    Text(
                      'Date',
                      style: h5(cSekunder),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Social Media',
                      style: h5(cSekunder),
                      textAlign: TextAlign.center,
                    ),
                    Text('', style: h5(cSekunder)),
                    Text(
                      'Total',
                      style: h5(cSekunder),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      '20/18/2012',
                      style: info(cBlack),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Twitter',
                      style: info(cBlack),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'agdbkabsjkdb dasd bsaldlsandlsandlasndlksandklasndlksanlksandlksndklsndlkasnlkasnlasnldkasnkldnaslkdd sd ask dnl kasndlksndlkasndklasn kl dsnkldn slkdnsakl ndkaslndlksanlksandlksandksaln dksa dlksa nlkdsa ldkasnklasnldkn',
                      style: info(cBlack),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      '2010',
                      style: info(cBlack),
                      textAlign: TextAlign.center,
                    ),
                  ])
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
