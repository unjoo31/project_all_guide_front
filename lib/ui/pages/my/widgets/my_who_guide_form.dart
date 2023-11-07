import 'package:flutter/material.dart';

import '../../components/custom_my_top_navigation_bar.dart';
import 'my_information_title.dart';
import 'my_who_bookmark_guide_list.dart';
import 'my_who_write_guide_list.dart';

class MyWhoGuideForm extends StatefulWidget {
  const MyWhoGuideForm({super.key});

  @override
  State<MyWhoGuideForm> createState() => _MyWhoGuideFormState();
}

class _MyWhoGuideFormState extends State<MyWhoGuideForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130,
        centerTitle: false,
        flexibleSpace: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyInformationTitle(backText: "취소", titleText: "누구나 가이드"),
              CustomMyTopNavigationBar(
                selectedIndex: _selectedIndex,
                onTapped: onTapped,
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MyWhoWriteGuideList(),
          MyWhoBookmarkGuideList(),
        ],
      ),
    );
  }

  void onTapped(index) {
    setState(() {
      _selectedIndex = index;
      _tabController.animateTo(index);
    });
  }
}
