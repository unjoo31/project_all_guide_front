import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_category_list_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_sequence_first_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_title_form.dart';

import '../../components/box_no_padding_button.dart';
import '../../who_guide/widgets/make_subscript.dart';

class WhereGuideFirstForm extends StatelessWidget {
  const WhereGuideFirstForm({super.key});

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
            MakeSequenceFirstForm(),
            SizedBox(height: 20),
            MakeSubscript(
              titleText: "카테고리를 선택하세요",
              subText: "카테고리는 1개만 선택할 수 있습니다.",
            ),
            SizedBox(height: 20),
            MakeCategoryListForm(),
            BoxNoPaddingButton(
              text: "다음",
              press: () {
                Navigator.pushNamed(context, 'guidemakesecondform');
              },
            ),
          ],
        ),
      ),
    );
  }
}
