import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';
import 'make_category_list_form.dart';
import 'make_sequence_first_form.dart';
import 'make_subscript.dart';
import 'make_title_form.dart';

class WhoGuideMakeFirstForm extends StatelessWidget {
  const WhoGuideMakeFirstForm({super.key});

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
            MakeSequenceFirstForm(),
            SizedBox(height: 20),
            MakeSubscript(),
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
