import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/all_guide/widgets/result_keyword_list.dart';
import 'package:project_all_guide_front/ui/pages/all_guide/widgets/result_list.dart';

import '../../../../data/model/all_guide.dart';

class AllGuideResultForm extends StatefulWidget {
  const AllGuideResultForm({Key? key}) : super(key: key);

  @override
  State<AllGuideResultForm> createState() => _AllGuideResultFormState();
}

class _AllGuideResultFormState extends State<AllGuideResultForm> {
  final List<AllGuide> list = allGuideItemsList;

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: ResultKeywordList(),
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
              (context, index) => ResultList(
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
