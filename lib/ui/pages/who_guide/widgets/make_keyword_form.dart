import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category_keyword.dart';
import '../../components/bottom_text.dart';
import 'make_keyword_list.dart';

class MakeKeywordForm extends StatefulWidget {
  const MakeKeywordForm({super.key});

  @override
  State<MakeKeywordForm> createState() => _elationGuideState();
}

class _elationGuideState extends State<MakeKeywordForm> {
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
              // SearchForm(
              //   onSelectedKeywordsChanged: (keywords) {
              //     Logger().d("키워드 어디갔니? ${keywords}");
              //     setState(() {
              //       selectedKeywords = keywords;
              //     });
              //   },
              // ),
              Stack(
                children: [
                  SizedBox(
                    child: Image.asset("assets/search.png"),
                  ),
                  Positioned(
                    right: 15,
                    top: 20,
                    child: SvgPicture.asset(
                      "assets/voice.svg",
                      width: 25,
                      height: 25,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 10,
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
