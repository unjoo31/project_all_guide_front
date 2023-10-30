import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/bottom_text.dart';

import '../../components/middle_text.dart';

class MakeSubscript extends StatelessWidget {
  final String titleText;
  final String subText;
  const MakeSubscript(
      {required this.titleText, required this.subText, Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 또는 원하는 크기로 지정
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [MiddleText(text: titleText), BottomText(text: subText)],
        ),
      ),
    );
  }
}
