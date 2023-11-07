import 'package:flutter/material.dart';

import '../../components/custom_my_top_navigation_bar.dart';
import 'my_information_title.dart';
import 'my_where_bookmark_guide_list.dart';
import 'my_where_write_guide_list.dart';

class MyWhereGuideForm extends StatefulWidget {
  const MyWhereGuideForm({super.key});

  @override
  State<MyWhereGuideForm> createState() => _MyWhereGuideFormState();
}

class _MyWhereGuideFormState extends State<MyWhereGuideForm>
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
              MyInformationTitle(backText: "취소", titleText: "어디가 가이드"),
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
          MyWhereWriteGuideList(),
          MyWhereBookmarkGuideList(),
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
