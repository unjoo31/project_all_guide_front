import 'package:flutter/material.dart';

import '../../../../data/model/my_who_guide.dart';
import '../../components/my_who_guide_list_item.dart';
import 'my_who_guide_modify_form.dart';

class MyWhoWriteGuideList extends StatefulWidget {
  const MyWhoWriteGuideList({super.key});

  @override
  State<MyWhoWriteGuideList> createState() => _MyWhoWriteGuideListState();
}

class _MyWhoWriteGuideListState extends State<MyWhoWriteGuideList> {
  final List<MyWhoGuide> list = myWhoGuideList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => MyWhoGuideListItem(
                userImg: list[index].userImg,
                userName: list[index].userName,
                title: list[index].title,
                picUrlFirst: list[index].picUrlFirst,
                onDetailPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWhoGuideModifyForm(
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
