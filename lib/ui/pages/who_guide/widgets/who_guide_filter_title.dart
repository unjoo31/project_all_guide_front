import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_text_color_button.dart';

class WhoGuideFilterTitle extends StatelessWidget {
  const WhoGuideFilterTitle({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          CustomTextColorButton(
            "취소",
            () {
              Navigator.pushNamed(context, '/');
            },
          ),
          Spacer(),
          MiddleText(text: "필터"),
          Spacer(),
          CustomTextColorButton(
            "초기화",
            () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
