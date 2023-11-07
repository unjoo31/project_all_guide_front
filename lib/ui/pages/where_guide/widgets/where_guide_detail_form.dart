import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/where_guide.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/where_guide_detail_item.dart';

import '../../components/back_icon.dart';
import '../../components/bookmark_icon.dart';

class WhereGuideDetailForm extends StatefulWidget {
  final int selectedIndex;
  const WhereGuideDetailForm({
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<WhereGuideDetailForm> createState() => _WhereGuideDetailFormState();
}

class _WhereGuideDetailFormState extends State<WhereGuideDetailForm> {
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackIcon(
                  imgPath: "assets/back.png",
                ),
                Spacer(),
                BookmarkIcon(
                  imgPath: "assets/bookmark.svg",
                ),
              ],
            ),
          ),
        ),
      ),
      body: WhereGuideDetailItem(
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
