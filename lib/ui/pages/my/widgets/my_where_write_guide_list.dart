import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/my/widgets/my_where_guide_list_item.dart';
import 'package:project_all_guide_front/ui/pages/my/widgets/where_guide_modify_form.dart';

import '../../../../data/model/where_guide.dart';

class MyWhereWriteGuideList extends StatefulWidget {
  const MyWhereWriteGuideList({super.key});

  @override
  State<MyWhereWriteGuideList> createState() => _MyWhereWriteGuideListState();
}

class _MyWhereWriteGuideListState extends State<MyWhereWriteGuideList> {
  final List<WhereGuide> list = whereGuideList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => MyWhereGuideListItem(
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
                      builder: (context) => WhereGuideModifyForm(
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
