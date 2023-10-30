import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/who_guide.dart';
import '../../components/floating_button.dart';
import '../../components/who_guide_list_item.dart';
import 'who_guide_category_form.dart'; // 북마크 아이콘 임포트

class WhoGuideListForm extends StatefulWidget {
  const WhoGuideListForm({Key? key}) : super(key: key);

  @override
  State<WhoGuideListForm> createState() => _WhoGuideListFormState();
}

class _WhoGuideListFormState extends State<WhoGuideListForm> {
  final List<WhoGuide> list = whoGuideList;

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
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                elevation: 0.0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                titleSpacing: 0,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      child: WhoGuideCategoryForm(),
                      width: 340,
                    ),
                  ),
                  SizedBox(width: 20), // 간격 조절
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
          Positioned(
            right: 180,
            bottom: 5,
            child: FloatingButton(
              imgPath: "assets/plus.png",
              onPressed: () {
                Navigator.pushNamed(context, 'guidemakefirtform');
              },
            ),
          ),
        ],
      ),
    );
  }
}
