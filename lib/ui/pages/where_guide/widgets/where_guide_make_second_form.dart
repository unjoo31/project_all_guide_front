import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_sequence_second_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_title_form.dart';

import '../../components/box_no_padding_button.dart';
import '../../who_guide/widgets/make_subscript.dart';

class WhereGuideSecondForm extends StatelessWidget {
  const WhereGuideSecondForm({super.key});

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
            MakeSequenceSecondForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "가게를 선택하세요",
              subText: "반경 1km에 있는 카페를 탐색합니다.",
            ),
            SizedBox(height: 20),
            BoxNoPaddingButton(
              text: "위치 허용 후 탐색하기",
              press: () {
                Navigator.pushNamed(context, 'guidemakesecondmapform');
              },
            ),
          ],
        ),
      ),
    );
  }
}
