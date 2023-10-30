import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/filter_align.dart';

class FilterListAlign extends StatefulWidget {
  const FilterListAlign({Key? key}) : super(key: key);

  //final Function(List<String>) onSelectedKeywordsChanged;

  @override
  _KeywordListState createState() => _KeywordListState();
}

class _KeywordListState extends State<FilterListAlign> {
  Set<int> selectedIndices = Set<int>();
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Wrap(
        spacing: 5.0,
        runSpacing: 2.0,
        children: List.generate(filterAlignList.length, (index) {
          bool isSelected = selectedIndices.contains(index);

          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedIndices.remove(index);
                  selectedKeywords.remove(filterAlignList[index].title);
                } else {
                  selectedIndices.add(index);
                  selectedKeywords.add(filterAlignList[index].title);
                }
                //widget.onSelectedKeywordsChanged(selectedKeywords);
              });
              Logger().d("키워드 선택됨? ${filterAlignList[index].title}");
            },
            child: Chip(
              label: Text(
                filterAlignList[index].title,
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
      ),
    );
  }
}
