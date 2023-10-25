import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/icon_button.dart';

import '../../../../_core/constants/move.dart';
import '../../components/custom_text_color_button.dart';

class HomeTopButton extends StatelessWidget {
  const HomeTopButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButtonOff(imgPath: "assets/good_mini.svg"),
              IconButtonOff(imgPath: "assets/bookmark_mini.svg"),
            ],
          ),
          Spacer(),
          CustomTextColorButton(
            "더보기",
            () {
              Navigator.pushNamed(context, Move.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
