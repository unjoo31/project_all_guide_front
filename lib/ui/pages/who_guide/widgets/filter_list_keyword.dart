import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category_keyword.dart';
import '../../components/bottom_text.dart';
import 'make_keyword_list.dart';

class FilterListKeyword extends StatefulWidget {
  const FilterListKeyword({super.key});

  @override
  State<FilterListKeyword> createState() => _elationGuideState();
}

class _elationGuideState extends State<FilterListKeyword> {
  final List<CategoryKeyword> list = categoryKeywordList;
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 50,
                    child: Container(),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Wrap(
                      spacing: 8.0,
                      children: selectedKeywords.map((keyword) {
                        return Chip(
                          label: Text(
                            keyword,
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 16),
                          ),
                          backgroundColor: kBackWhite,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: kBackWhite,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          onDeleted: () {
                            setState(() {
                              selectedKeywords.remove(keyword);
                              //widget.onSelectedKeywordsChanged(selectedKeywords);
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              MiddleText(text: "연관 키워드"),
              MakeKeywordList(
                onSelectedKeywordsChanged: (keywords) {
                  setState(() {
                    selectedKeywords = keywords;
                  });
                },
              ),
              BottomText(text: "${selectedKeywords.length}개의 키워드가 선택되었습니다."),
            ],
          ),
        ),
      ),
    );
  }
}
