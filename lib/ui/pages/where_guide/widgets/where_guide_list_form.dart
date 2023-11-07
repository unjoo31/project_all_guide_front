import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/where_guide_detail_form.dart';

import '../../../../data/model/where_guide.dart';
import '../../components/floating_button.dart';
import '../../components/where_guide_list_item.dart';
import 'where_guide_catrgory_form.dart';

class WhereGuideListForm extends StatefulWidget {
  const WhereGuideListForm({Key? key}) : super(key: key);

  @override
  State<WhereGuideListForm> createState() => _WhoGuideListFormState();
}

class _WhoGuideListFormState extends State<WhereGuideListForm> {
  final List<WhereGuide> list = whereGuideList;

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
                    padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                    child: SizedBox(
                      child: WhereGuideCategoryForm(),
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
