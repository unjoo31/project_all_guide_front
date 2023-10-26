import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/bottom_text.dart';

import '../../components/middle_text.dart';

class MakeSubscript extends StatelessWidget {
  const MakeSubscript({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 또는 원하는 크기로 지정
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MiddleText(text: "카테고리를 선택하세요."),
            BottomText(text: "카테고리는 1개만 선택할 수 있습니다.")
          ],
        ),
      ),
    );
  }
}
