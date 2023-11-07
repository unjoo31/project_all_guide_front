import 'package:flutter/material.dart';

import '../../../../data/model/where_guide.dart';
import '../../components/where_guide_list_item.dart';
import '../../where_guide/widgets/where_guide_detail_form.dart';

class MyWhereBookmarkGuideList extends StatefulWidget {
  const MyWhereBookmarkGuideList({super.key});

  @override
  State<MyWhereBookmarkGuideList> createState() =>
      _MyWhereBookmarkGuideListState();
}

class _MyWhereBookmarkGuideListState extends State<MyWhereBookmarkGuideList> {
  final List<WhereGuide> list = whereGuideList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WhereGuideListItem(
                picUrl: list[index].picUrl,
                storeName: list[index].storeName,
                categoryName: list[index].categoryName,
                orderMenu_1: list[index].orderMenu_1,
                orderMenu_2: list[index].orderMenu_2,
                orderMenu_3: list[index].orderMenu_3,
                orderPrice: list[index].orderPrice,
                onDetailPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhereGuideDetailForm(
                        selectedIndex: index, // 선택된 인덱스 전달
                      ),
                    ),
                  );
                },
              ),
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
