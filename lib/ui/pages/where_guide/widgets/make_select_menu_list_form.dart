import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../data/model/hash_menu.dart';

class MakeSelectMenuListForm extends StatefulWidget {
  const MakeSelectMenuListForm({Key? key}) : super(key: key);

  @override
  _MakeCategoryListFormState createState() => _MakeCategoryListFormState();
}

class _MakeCategoryListFormState extends State<MakeSelectMenuListForm> {
  Set<int> selectedIndices = {}; // 현재 선택된 인덱스들

  @override
  Widget build(BuildContext context) {
    List<HashMenu> list = hashMenuList;

    return Column(
      children: [
        SizedBox(
          height: 300,
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              bool isSelected = selectedIndices.contains(index);

              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selectedIndices.remove(index); // 선택 해제
                    } else {
                      selectedIndices.add(index); // 선택
                    }
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
                              list[index].hashMenuName,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            list[index].hashMenuPrice,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.check,
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
