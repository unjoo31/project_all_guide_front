import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/all_guide/all_guide_page.dart';
import 'package:project_all_guide_front/ui/pages/home/home_page.dart';
import 'package:project_all_guide_front/ui/pages/my/my_page.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/where_guide_page.dart';
import 'package:project_all_guide_front/ui/pages/who_guide/who_guide_page.dart';

import 'components/cuscom_bottom_navigation_bar.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(),
          AllGuidePage(),
          WhoGuidePage(),
          WhereGuidePage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onTapped: onTaped,
        ),
      ),
    );
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
