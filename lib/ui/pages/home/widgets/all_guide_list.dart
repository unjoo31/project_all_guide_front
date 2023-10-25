import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/all_guide.dart';
import 'package:project_all_guide_front/ui/pages/home/widgets/home_top_button.dart';

import '../../components/all_guide_list_item.dart';

class AllGuideList extends StatefulWidget {
  const AllGuideList({Key? key}) : super(key: key);

  @override
  State<AllGuideList> createState() => _AllGuideListState();
}

class _AllGuideListState extends State<AllGuideList> {
  final List<AllGuide> list = allGuideItemsList;

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
              (context, index) => AllGuideListItem(
                picUrl: list[index].picUrl,
                title: list[index].title,
                browserName: list[index].browserName,
              ),
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
