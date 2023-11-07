import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_text_color_button.dart';

class MyWhoGuideTitle extends StatelessWidget {
  final String leftText;
  final String titleText;
  final String rightText;

  const MyWhoGuideTitle(
      {required this.leftText,
      required this.titleText,
      required this.rightText,
      Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          CustomTextColorButton(
            "${leftText}",
            () {
              Navigator.pushNamed(context, 'mywhoguideform');
            },
          ),
          SizedBox(width: 100),
          MiddleText(text: "${titleText}"),
          SizedBox(width: 100),
          CustomTextColorButton(
            "${rightText}",
            () {
              Navigator.pushNamed(context, 'mywhoguideform');
            },
          ),
        ],
      ),
    );
  }
}
