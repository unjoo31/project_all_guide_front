import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/category.dart';

class MakeCategoryListForm extends StatelessWidget {
  const MakeCategoryListForm({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> list = categoryList;
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
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
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                    bottom: Radius.circular(20.0),
                  ),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 0,
              height: 0,
            ),
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}
