import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_text_color_button.dart';

class MyInformationTitle extends StatelessWidget {
  final String backText;
  final String titleText;

  const MyInformationTitle(
      {required this.backText, required this.titleText, Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          CustomTextColorButton(
            "${backText}",
            () {
              Navigator.pushNamed(context, '/');
            },
          ),
          SizedBox(width: 90),
          MiddleText(text: "${titleText}"),
        ],
      ),
    );
  }
}
