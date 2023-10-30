import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/colors.dart';

import '../../components/icon_bottom_text.dart';

class MakeSequenceForthForm extends StatelessWidget {
  const MakeSequenceForthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconBottomText(
                text: "카테고리", img: "complete.png", textColor: kUnPointColor),
            IconBottomText(
                text: "키워드", img: "complete.png", textColor: kUnPointColor),
            IconBottomText(
                text: "사진선택", img: "complete.png", textColor: kUnPointColor),
            IconBottomText(
                text: "글쓰기", img: "fourth_on.png", textColor: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
