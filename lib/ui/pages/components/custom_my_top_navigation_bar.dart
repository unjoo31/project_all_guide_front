import 'package:flutter/material.dart';

import '../../../data/model/my_nav_category_off.dart';
import '../../../data/model/my_nav_category_on.dart';

class CustomMyTopNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTapped;

  CustomMyTopNavigationBar({
    required this.selectedIndex,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          myNavCategoriesOn.length,
          (index) => SizedBox(
            height: 60,
            width: 190,
            child: IconButton(
              onPressed: () => onTapped(index),
              icon: Image.asset(
                index == selectedIndex
                    ? myNavCategoriesOn[index].icon
                    : myNavCategoriesOff[index].icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
