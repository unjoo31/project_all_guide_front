import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/where_guide.dart';
import 'package:project_all_guide_front/ui/pages/my/widgets/where_guide_modify_item.dart';

import 'my_where_guide_title.dart';

class WhereGuideModifyForm extends StatefulWidget {
  final int selectedIndex;
  const WhereGuideModifyForm({
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<WhereGuideModifyForm> createState() => _WhereGuideModifyFormState();
}

class _WhereGuideModifyFormState extends State<WhereGuideModifyForm> {
  late WhereGuide selectedGuide;

  @override
  void initState() {
    super.initState();
    selectedGuide = whereGuideList[widget.selectedIndex];
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
            child: MyWhereGuideTitle(
              leftText: "취소",
              titleText: "수정",
              rightText: "완료",
            ),
          ),
        ),
      ),
      body: WhereGuideModfyItem(
        picUrl: selectedGuide.picUrl,
        storeName: selectedGuide.storeName,
        storeAddress: selectedGuide.storeAddress,
        orderMenu_1: selectedGuide.orderMenu_1,
        orderMenu_2: selectedGuide.orderMenu_2,
        orderMenu_3: selectedGuide.orderMenu_3,
        orderPrice: selectedGuide.orderPrice,
      ),
    );
  }
}
