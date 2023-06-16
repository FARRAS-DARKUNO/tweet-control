import 'package:flutter/material.dart';
import 'package:tweet_control/global/colors.dart';
import 'package:tweet_control/global/fonts.dart';
import 'package:tweet_control/global/size.dart';
import 'package:tweet_control/widget/box_input/count_input.dart';
import 'package:tweet_control/widget/box_input/date_input.dart';
import 'package:tweet_control/widget/box_input/haight_text_input.dart';
import 'package:tweet_control/widget/box_input/image_input.dart';
import 'package:tweet_control/widget/box_input/long_text_input.dart';
import 'package:tweet_control/widget/button/long_button.dart';
import 'package:tweet_control/widget/header/general_header.dart';

class TwitterUpload extends StatefulWidget {
  const TwitterUpload({super.key});

  @override
  State<TwitterUpload> createState() => _TwitterUploadState();
}

class _TwitterUploadState extends State<TwitterUpload> {
  TextEditingController title = TextEditingController();
  TextEditingController news = TextEditingController();
  TextEditingController count = TextEditingController(text: '0');
  TextEditingController date = TextEditingController(text: 'DD/MM/YYYY');
  bool spinText = false;
  bool translate = false;
  bool generateFill = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const GeneralHeader(tittle: 'Upload Twitter'),
        SizedBox(
          height: sHeightContain(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LongTextInput(
                  controller: title,
                  tag: 'Title...',
                  title: 'Title',
                ),
                HeightTextInput(
                  controller: news,
                  tag: "News ...",
                  title: 'News',
                ),
                const ImageInput(title: 'Image/Video'),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text('How much upload ?             ', style: h5(cBlack)),
                      const SizedBox(width: 10),
                      CountTextInput(controller: count)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('When it will be uploaded ? ', style: h5(cBlack)),
                    const SizedBox(width: 10),
                    DateInput(controller: date)
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: cPrimer,
                      value: spinText,
                      onChanged: (bool? value) {
                        setState(() {
                          spinText = value!;
                        });
                      },
                    ),
                    Text('Spint Text', style: body(cBlack)),
                    Checkbox(
                      checkColor: cPrimer,
                      value: translate,
                      onChanged: (bool? value) {
                        setState(() {
                          translate = value!;
                        });
                      },
                    ),
                    Text('Auto Translate', style: body(cBlack)),
                    Checkbox(
                      checkColor: cPrimer,
                      value: generateFill,
                      onChanged: (bool? value) {
                        setState(() {
                          generateFill = value!;
                        });
                      },
                    ),
                    Text('Generate Fill', style: body(cBlack))
                  ],
                ),
                const SizedBox(height: 20),
                const LongButton(title: "Submit")
              ],
            ),
          ),
        )
      ],
    );
  }
}
