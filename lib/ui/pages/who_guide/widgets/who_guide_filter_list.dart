import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/filter_item.dart';
import '../../components/middle_text.dart';
import 'filter_list_align.dart';
import 'filter_list_category.dart';
import 'filter_list_keyword.dart';

class WhoGuideFilterList extends StatefulWidget {
  final FilterItem item;
  const WhoGuideFilterList({Key? key, required this.item}) : super(key: key);

  @override
  State<WhoGuideFilterList> createState() => _ExtendsIconTextCardState(item);
}

class _ExtendsIconTextCardState extends State<WhoGuideFilterList> {
  _ExtendsIconTextCardState(this.item);
  final FilterItem item;
  bool isShow = false;
  bool showAlignFilter = false;
  bool showCategoryFilter = false;
  bool showKeywordFilter = false;

  void toggle() {
    setState(() {
      isShow = !isShow;
    });
  }

  void showFilter(String title) {
    setState(() {
      showAlignFilter = title == '정렬';
      showCategoryFilter = title == '카테고리';
      showKeywordFilter = title == '키워드';
    });
  }

  double calculateHeight() {
    if (showAlignFilter) {
      return 60.0; // 원하는 높이 값으로 변경
    } else if (showCategoryFilter) {
      return 110.0; // 다른 카테고리의 높이 값으로 변경
    } else if (showKeywordFilter) {
      return 300.0; // 다른 키워드의 높이 값으로 변경
    } else {
      return 0.0; // 기본값이나 0.0을 반환하거나 필요에 따라 다른 값으로 변경
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 8),
                MiddleText(text: "${item.title}"),
                const Spacer(),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    onPressed: () {
                      toggle();
                      showFilter(item.title);
                    },
                    icon: Image.asset(
                      "assets/down_arrow.png",
                      color: kUnPointColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.fastOutSlowIn,
            height: isShow ? calculateHeight() : 0,
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  if (showAlignFilter) FilterListAlign(),
                  if (showCategoryFilter) FilterListCategory(),
                  if (showKeywordFilter) FilterListKeyword(),
                ],
              ),
            ),
          ),
          Divider(
            height: 0.5,
            color: kUnPointColor,
          ),
        ],
      ),
    );
  }
}
