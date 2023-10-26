import 'package:flutter/material.dart';
import 'package:project_all_guide_front/data/model/who_guide_category_button.dart';

class WhoGuideCategoryForm extends StatelessWidget {
  const WhoGuideCategoryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 5.0,
      children: List.generate(whoGuideCategoryButtonList.length, (index) {
        return GestureDetector(
          onTap: () {
            // Handle category button tap
          },
          child: Chip(
            label: Container(
              width: 70,
              child: Row(
                children: [
                  Image.asset(
                    "assets/${whoGuideCategoryButtonList[index].img}",
                    // Assuming each category button has an IconData property
                    color: Colors.black, // Icon color// Icon size
                  ),
                  SizedBox(
                      width: 7.0), // Add some spacing between icon and text
                  Text(
                    whoGuideCategoryButtonList[index].categoryButtonName,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 6,
          ),
        );
      }).toList(),
    );
  }
}
