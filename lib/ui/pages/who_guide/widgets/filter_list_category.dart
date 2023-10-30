import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category.dart';

class FilterListCategory extends StatefulWidget {
  const FilterListCategory({Key? key}) : super(key: key);

  //final Function(List<String>) onSelectedKeywordsChanged;

  @override
  _KeywordListState createState() => _KeywordListState();
}

class _KeywordListState extends State<FilterListCategory> {
  Set<int> selectedIndices = Set<int>();
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Wrap(
        spacing: 5.0,
        runSpacing: 2.0,
        children: List.generate(categoryList.length, (index) {
          bool isSelected = selectedIndices.contains(index);

          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedIndices.remove(index);
                  selectedKeywords.remove(categoryList[index].categoryName);
                } else {
                  selectedIndices.add(index);
                  selectedKeywords.add(categoryList[index].categoryName);
                }
                //widget.onSelectedKeywordsChanged(selectedKeywords);
              });
              Logger().d("키워드 선택됨? ${categoryList[index].categoryName}");
            },
            child: Chip(
              label: Text(
                categoryList[index].categoryName,
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
