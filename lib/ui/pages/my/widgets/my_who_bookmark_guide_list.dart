import 'package:flutter/material.dart';

import '../../../../data/model/who_guide.dart';
import '../../components/who_guide_list_item.dart';
import '../../who_guide/widgets/who_guide_detail_form.dart';

class MyWhoBookmarkGuideList extends StatefulWidget {
  const MyWhoBookmarkGuideList({super.key});

  @override
  State<MyWhoBookmarkGuideList> createState() => _MyWhoBookmarkGuideListState();
}

class _MyWhoBookmarkGuideListState extends State<MyWhoBookmarkGuideList> {
  final List<WhoGuide> list = whoGuideList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WhoGuideListItem(
                userImg: list[index].userImg,
                userName: list[index].userName,
                title: list[index].title,
                picUrlFirst: list[index].picUrlFirst,
                onDetailPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhoGuideDetailForm(
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
