import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';
import 'make_keyword_form.dart';
import 'make_sequence_second_form.dart';
import 'make_sequence_third_form.dart';
import 'make_subscript.dart';
import 'make_title_form.dart';

class WhoGuideMakeSecondForm extends StatelessWidget {
  const WhoGuideMakeSecondForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            MakeTitleForm(),
            SizedBox(height: 20),
            MakeSequenceSecondForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "키워드를 선택하세요",
              subText: "연간키워드를 선택하세요",
            ),
            MakeKeywordForm(),
            BoxNoPaddingButton(
              text: "다음",
              press: () {
                Navigator.pushNamed(context, 'guidemakethirdform');
              },
            ),
          ],
        ),
      ),
    );
  }
}
