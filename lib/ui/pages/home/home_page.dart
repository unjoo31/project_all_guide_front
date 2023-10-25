import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/custom_top_navigation_bar.dart';
import 'package:project_all_guide_front/ui/pages/home/widgets/all_guide_list.dart';
import 'package:project_all_guide_front/ui/pages/home/widgets/where_guide_list.dart';
import 'package:project_all_guide_front/ui/pages/home/widgets/who_guide_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
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
              Image.asset(
                'assets/main_top_logo.png',
                height: 60,
              ),
              CustomTopNavigationBar(
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
          AllGuideList(),
          WhoGuideList(),
          WhereGuideList(),
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
