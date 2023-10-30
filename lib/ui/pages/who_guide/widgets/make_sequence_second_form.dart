import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/colors.dart';

import '../../components/icon_bottom_text.dart';

class MakeSequenceSecondForm extends StatelessWidget {
  const MakeSequenceSecondForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconBottomText(
                text: "카테고리", img: "first_on.png", textColor: kPrimaryColor),
            IconBottomText(
                text: "키워드", img: "second_off.png", textColor: kUnPointColor),
            IconBottomText(
                text: "사진선택", img: "third_off.png", textColor: kUnPointColor),
            IconBottomText(
                text: "글쓰기", img: "fourth_off.png", textColor: kUnPointColor),
          ],
        ),
      ),
    );
  }
}
