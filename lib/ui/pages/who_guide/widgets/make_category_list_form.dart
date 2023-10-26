import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category.dart';

class MakeCategoryListForm extends StatelessWidget {
  const MakeCategoryListForm({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> list = categoryList;
    return Container(
      height: 400,
      child: ListView.separated(
        itemBuilder: (context, index) => Container(
          child: SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  list[index].categoryName,
                  style: TextStyle(color: kFontBlack, fontSize: 16),
                ),
              ),
            ),
          ),
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
              top: Radius.circular(20.0),
              bottom: Radius.circular(20.0),
            ),
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          thickness: 0.5,
          height: 0,
        ),
        itemCount: list.length,
      ),
    );
  }
}
