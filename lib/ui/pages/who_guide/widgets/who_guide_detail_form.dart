import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/who_guide/widgets/who_guide_detail_item.dart';

import '../../../../data/model/who_guide.dart';
import '../../components/back_icon.dart';
import '../../components/bookmark_icon.dart';

class WhoGuideDetailForm extends StatefulWidget {
  final int selectedIndex;

  const WhoGuideDetailForm({
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<WhoGuideDetailForm> createState() => _WhoGuideDetailFormState();
}

class _WhoGuideDetailFormState extends State<WhoGuideDetailForm> {
  late WhoGuide selectedGuide;

  @override
  void initState() {
    super.initState();
    selectedGuide = whoGuideList[widget.selectedIndex];
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
      body: WhoGuideDetailItem(
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
