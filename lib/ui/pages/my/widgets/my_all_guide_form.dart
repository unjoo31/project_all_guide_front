import 'package:flutter/material.dart';

import '../../../../data/model/all_guide.dart';
import '../../components/all_guide_list_item.dart';
import 'my_information_title.dart';

class MyAllGuideForm extends StatefulWidget {
  const MyAllGuideForm({super.key});

  @override
  State<MyAllGuideForm> createState() => _MyAllGuideFormState();
}

class _MyAllGuideFormState extends State<MyAllGuideForm> {
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
            title: MyInformationTitle(backText: "취소", titleText: "모두의 가이드"),
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
