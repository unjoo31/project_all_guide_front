import 'package:flutter/material.dart';

import '../../../data/model/nav_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTapped;

  CustomBottomNavigationBar({
    required this.selectedIndex,
    required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0), bottom: Radius.circular(20.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navItems.length,
          (index) => SizedBox(
            height: 70,
            width: 70,
            child: IconButton(
              onPressed: () => onTapped(index),
              icon: Image.asset(
                navItems[index].icon ?? "assets/star.svg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
