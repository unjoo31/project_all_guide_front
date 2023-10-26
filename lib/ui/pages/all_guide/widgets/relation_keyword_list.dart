import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/keyword_second.dart';

class RelationKeywordList extends StatefulWidget {
  const RelationKeywordList({required this.onSelectedKeywordsChanged})
      : super();

  final Function(List<String>) onSelectedKeywordsChanged;

  @override
  _KeywordListState createState() => _KeywordListState();
}

class _KeywordListState extends State<RelationKeywordList> {
  Set<int> selectedIndices = Set<int>();
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 2.0,
      children: List.generate(keywordSecondList.length, (index) {
        bool isSelected = selectedIndices.contains(index);

        return GestureDetector(
          onTap: () {
            setState(() {
              if (isSelected) {
                selectedIndices.remove(index);
                selectedKeywords.remove(keywordSecondList[index].keywordName);
              } else {
                selectedIndices.add(index);
                selectedKeywords.add(keywordSecondList[index].keywordName);
              }
              widget.onSelectedKeywordsChanged(selectedKeywords);
            });
            Logger().d("키워드 선택됨? ${keywordSecondList[index].keywordName}");
          },
          child: Chip(
            label: Text(
              keywordSecondList[index].keywordName,
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
