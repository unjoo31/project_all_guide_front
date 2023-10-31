import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/where_guide_category.dart';

class MakeCategoryListForm extends StatefulWidget {
  const MakeCategoryListForm({Key? key}) : super(key: key);

  @override
  _MakeCategoryListFormState createState() => _MakeCategoryListFormState();
}

class _MakeCategoryListFormState extends State<MakeCategoryListForm> {
  int selectedIndex = -1; // 현재 선택된 인덱스

  @override
  Widget build(BuildContext context) {
    List<WhereGuideCategory> list = whereGuideCategoryList;

    return Column(
      children: [
        SizedBox(
          height: 270,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              bool isSelected = index == selectedIndex;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index; // 인덱스 업데이트
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, right: 5, left: 5),
                  child: Container(
                    child: SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              list[index].categoryButtonName,
                              style: TextStyle(
                                color:
                                    isSelected ? kPrimaryColor : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Spacer(), // 여백을 추가하여 아이콘과 텍스트 우측에 표시
                          Icon(
                            isSelected ? Icons.check : null,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.0),
                        bottom: Radius.circular(20.0),
                      ),
                      border: Border.all(
                        color: isSelected
                            ? Colors.grey.withOpacity(0.0)
                            : Colors.grey.withOpacity(0.3),
                        width: 1.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: isSelected
                              ? Colors.grey.withOpacity(0.3)
                              : Colors.transparent,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
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
