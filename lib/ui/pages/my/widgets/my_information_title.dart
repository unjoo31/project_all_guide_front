import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_text_color_button.dart';

class MyInformationTitle extends StatelessWidget {
  const MyInformationTitle({Key? key});

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
          SizedBox(width: 90),
          MiddleText(text: "프로필"),
        ],
      ),
    );
  }
}
