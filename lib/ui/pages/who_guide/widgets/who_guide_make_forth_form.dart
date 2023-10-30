import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';
import 'make_sequence_forth_form.dart';
import 'make_subscript.dart';
import 'make_title_form.dart';
import 'make_write_form.dart';

class WhoGuideMakeForthForm extends StatelessWidget {
  const WhoGuideMakeForthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            MakeTitleForm(),
            SizedBox(height: 20),
            MakeSequenceForthForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "글을 작성하세요",
              subText: "글의 제목과 상세 내용을 작성할 수 있습니다.",
            ),
            MakeWriteForm(),
            BoxNoPaddingButton(
              text: "완료",
              press: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
