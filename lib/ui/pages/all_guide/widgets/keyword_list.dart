import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/keyword.dart';

class KeywordList extends StatefulWidget {
  @override
  _KeywordListState createState() => _KeywordListState();
}

class _KeywordListState extends State<KeywordList> {
  Set<int> selectedIndices = Set<int>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 5.0,
      children: List.generate(keywordList.length, (index) {
        bool isSelected = selectedIndices.contains(index);

        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                selectedIndices.remove(index);
              } else {
                selectedIndices.add(index);
              }
            });
          },
          child: Chip(
            label: Text(
              keywordList[index].keywordName,
              style: TextStyle(
                  color: isSelected ? Colors.white : kPrimaryColor,
                  fontSize: 16),
            ),
            backgroundColor: isSelected ? kPrimaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: kPrimaryColor,
                width: isSelected ? 2.0 : 1.0,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      }),
    );
  }
}
