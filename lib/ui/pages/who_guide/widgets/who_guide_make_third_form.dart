import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';
import 'make_photo_list.dart';
import 'make_sequence_third_form.dart';
import 'make_subscript.dart';
import 'make_title_form.dart';

class WhoGuideMakeThirdForm extends StatelessWidget {
  const WhoGuideMakeThirdForm({super.key});

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
            MakeSequenceThirdForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "사진을 선택하세요",
              subText: "사진은 최대 3개까지 선택할 수 있습니다.",
            ),
            ImageUpload(),
            BoxNoPaddingButton(
              text: "다음",
              press: () {
                Navigator.pushNamed(context, 'guidemakeforthform');
              },
            ),
          ],
        ),
      ),
    );
  }
}
