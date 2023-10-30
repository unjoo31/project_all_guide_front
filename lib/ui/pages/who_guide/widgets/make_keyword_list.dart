import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category_keyword.dart';
import '../../../../data/model/keyword_second.dart';

class MakeKeywordList extends StatefulWidget {
  const MakeKeywordList({required this.onSelectedKeywordsChanged}) : super();

  final Function(List<String>) onSelectedKeywordsChanged;

  @override
  _KeywordListState createState() => _KeywordListState();
}

class _KeywordListState extends State<MakeKeywordList> {
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
                selectedKeywords.remove(categoryKeywordList[index].keywordName);
              } else {
                selectedIndices.add(index);
                selectedKeywords.add(categoryKeywordList[index].keywordName);
              }
              widget.onSelectedKeywordsChanged(selectedKeywords);
            });
            Logger().d("키워드 선택됨? ${categoryKeywordList[index].keywordName}");
          },
          child: Chip(
            label: Text(
              categoryKeywordList[index].keywordName,
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
