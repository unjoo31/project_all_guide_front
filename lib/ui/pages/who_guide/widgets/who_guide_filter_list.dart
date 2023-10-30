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
    double dividerHeight = 0.6; // Divider의 높이
    if (showAlignFilter) {
      return 60.0 + dividerHeight;
    } else if (showCategoryFilter) {
      return 110.0 + dividerHeight;
    } else if (showKeywordFilter) {
      return 300.0 + dividerHeight;
    } else {
      return 60.0 + dividerHeight;
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
            height: 0.6,
            color: kUnPointColor,
          ),
        ],
      ),
    );
  }
}
