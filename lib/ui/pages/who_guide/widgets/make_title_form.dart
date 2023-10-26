import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_text_color_button.dart';

class MakeTitleForm extends StatelessWidget {
  const MakeTitleForm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          CustomTextColorButton(
            "취소",
            () {
              Navigator.pushNamed(context, '/');
            },
          ),
          SizedBox(width: 50),
          MiddleText(text: "누구나 가이드 만들기"),
        ],
      ),
    );
  }
}
