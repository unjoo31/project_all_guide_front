import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/bottom_text.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_image_button.dart';

class MapTitle extends StatelessWidget {
  const MapTitle({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: [
          CustomImageButton(
            "back_color.png",
            () {
              Navigator.pushNamed(context, 'guidemakesecondform');
            },
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [MiddleText(text: "서면"), BottomText(text: "부산진구 부전2동")],
          ),
          Spacer(),
          BottomText(text: "291 결과 탐색"),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
