import 'package:flutter/material.dart';

import '../../../../data/model/my_who_guide.dart';
import 'my_who_guide_modify_item.dart';
import 'my_who_guide_title.dart';

class MyWhoGuideModifyForm extends StatefulWidget {
  final int selectedIndex;

  const MyWhoGuideModifyForm({
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<MyWhoGuideModifyForm> createState() => _MyWhoGuideModifyFormState();
}

class _MyWhoGuideModifyFormState extends State<MyWhoGuideModifyForm> {
  late MyWhoGuide selectedGuide;

  @override
  void initState() {
    super.initState();
    selectedGuide = myWhoGuideList[widget.selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        centerTitle: false,
        flexibleSpace: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: MyWhoGuideTitle(
              leftText: "취소",
              titleText: "수정",
              rightText: "완료",
            ),
          ),
        ),
      ),
      body: MyWhoGuideModifyItem(
        userImg: selectedGuide.userImg,
        userName: selectedGuide.userName,
        title: selectedGuide.title,
        picUrlFirst: selectedGuide.picUrlFirst,
        picUrlSecond: selectedGuide.picUrlSecond,
        picUrlThird: selectedGuide.picUrlThird,
        content: selectedGuide.content,
      ),
    );
  }
}
