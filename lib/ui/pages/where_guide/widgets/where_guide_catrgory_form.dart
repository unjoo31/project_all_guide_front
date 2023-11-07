import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/where_guide_category.dart';

class WhereGuideCategoryForm extends StatefulWidget {
  const WhereGuideCategoryForm({Key? key}) : super(key: key);

  @override
  _WhereGuideCategoryFormState createState() => _WhereGuideCategoryFormState();
}

class _WhereGuideCategoryFormState extends State<WhereGuideCategoryForm> {
  List<bool> isSelectedList =
      List.generate(whereGuideCategoryList.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 5.0,
      children: List.generate(whereGuideCategoryList.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isSelectedList[index] = !isSelectedList[index];
            });

            Navigator.pushNamed(context, 'whoguidefilterform');
          },
          child: Chip(
            label: Container(
              width: 50,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    whereGuideCategoryList[index].categoryButtonName,
                    style: TextStyle(
                      color: isSelectedList[index] ? kFontGray : kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor:
                isSelectedList[index] ? kLightGreyColor : kFontWhite,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: isSelectedList[index] ? 0 : 6,
          ),
        );
      }).toList(),
    );
  }
}
