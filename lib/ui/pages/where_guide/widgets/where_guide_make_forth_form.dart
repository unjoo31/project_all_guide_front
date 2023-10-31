import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_sequence_forth_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_title_form.dart';

import '../../components/box_no_padding_button.dart';
import '../../who_guide/widgets/make_subscript.dart';
import 'make_select_menu_list_form.dart';

class WhereGuideForthForm extends StatelessWidget {
  const WhereGuideForthForm({super.key});

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
              titleText: "어디가 가이드 내용을 확인하세요.",
              subText:
                  "결제는 마이페이지 > 어디가 가이드에서 가능합니다. \n완료 버튼을 누르면 해당 페이지로 이동합니다.",
            ),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "턴어라운드",
              subText: "부산 부산진구 전포대로 200번길 21 1층 턴어라운드",
            ),
            SizedBox(height: 20),
            MakeSelectMenuListForm(),
            MakeSubscript(
              titleText: "결제금액",
              subText: "22,000",
            ),
            BoxNoPaddingButton(
              text: "다음",
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
