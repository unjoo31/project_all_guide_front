import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_all_guide_front/ui/pages/all_guide/widgets/relation_keyword_list.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/keyword.dart';
import '../../components/bottom_text.dart';
import '../../components/box_no_padding_button.dart';

class RelationGuideForm extends StatefulWidget {
  const RelationGuideForm({super.key});

  @override
  State<RelationGuideForm> createState() => _elationGuideState();
}

class _elationGuideState extends State<RelationGuideForm> {
  final List<Keyword> list = keywordList;
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        centerTitle: false,
        flexibleSpace: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/main_top_logo.png',
                height: 60,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                          style: TextStyle(color: kPrimaryColor, fontSize: 16),
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
            SizedBox(height: 40),
            MiddleText(text: "연관 키워드"),
            RelationKeywordList(
              onSelectedKeywordsChanged: (keywords) {
                setState(() {
                  selectedKeywords = keywords;
                });
              },
            ),
            BottomText(text: "${selectedKeywords.length}개의 키워드가 선택되었습니다."),
            BoxNoPaddingButton(
              text: "검색하기",
              press: () {
                Navigator.pushNamed(context, 'result');
              },
            ),
          ],
        ),
      ),
    );
  }
}
