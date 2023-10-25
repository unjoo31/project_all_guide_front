import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/where_guide.dart';

import '../../components/where_guide_list_item.dart';
import 'home_top_button.dart';

class WhereGuideList extends StatefulWidget {
  const WhereGuideList({super.key});

  @override
  State<WhereGuideList> createState() => _WhereGuideListState();
}

class _WhereGuideListState extends State<WhereGuideList> {
  final List<WhereGuide> list = whereGuideList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: HomeTopButton(),
                width: 370,
              ),
            ],
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => WhereGuideListItem(
                picUrl: list[index].picUrl,
                storeName: list[index].storeName,
                categoryName: list[index].categoryName,
                orderMenu_1: list[index].orderMenu_1,
                orderMenu_2: list[index].orderMenu_2,
                orderMenu_3: list[index].orderMenu_3,
              ),
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
