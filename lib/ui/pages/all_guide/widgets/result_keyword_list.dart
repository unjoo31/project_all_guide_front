import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/keyword_selsect.dart';

import '../../../../_core/constants/colors.dart';

class ResultKeywordList extends StatelessWidget {
  const ResultKeywordList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 5.0,
      children: List.generate(keywordSelectList.length, (index) {
        return GestureDetector(
          child: Chip(
            label: Text(
              keywordSelectList[index].keywordName,
              style: TextStyle(color: kPrimaryColor, fontSize: 16),
            ),
            backgroundColor: kBackWhite,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: kBackWhite,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
          ),
        );
      }),
    );
  }
}
