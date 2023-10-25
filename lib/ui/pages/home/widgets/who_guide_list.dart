import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/who_guide_list_item.dart';

import '../../../../data/model/who_guide.dart';
import 'home_top_button.dart';

class WhoGuideList extends StatefulWidget {
  const WhoGuideList({super.key});

  @override
  State<WhoGuideList> createState() => _WhoGuideListState();
}

class _WhoGuideListState extends State<WhoGuideList> {
  final List<WhoGuide> list = whoGuideList;

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
              (context, index) => WhoGuideListItem(
                userImg: list[index].userImg,
                userName: list[index].userName,
                title: list[index].title,
                picUrlFirst: list[index].picUrlFirst,
              ),
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
