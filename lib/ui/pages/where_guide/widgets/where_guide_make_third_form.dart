import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_sequence_third_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_title_form.dart';

import '../../components/box_no_padding_button.dart';
import '../../who_guide/widgets/make_subscript.dart';
import 'make_menu_list_form.dart';

class WhereGuideThirdForm extends StatelessWidget {
  const WhereGuideThirdForm({super.key});

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
            MakeSequenceThirdForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "메뉴를 선택하세요",
              subText: "원하는 메뉴를 모두 선택하세요.",
            ),
            MakeMenuListForm(),
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
