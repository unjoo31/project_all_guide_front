import 'package:flutter/material.dart';

import '../../../data/model/nav_category.dart';
import '../../../data/model/nav_category_on.dart';

class CustomTopNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTapped;

  CustomTopNavigationBar({
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
          navCategories.length,
          (index) => SizedBox(
            height: 50,
            width: 160,
            child: IconButton(
              onPressed: () => onTapped(index),
              icon: Image.asset(
                index == selectedIndex
                    ? navCategoriesOn[index].icon
                    : navCategories[index].icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
