import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/colors.dart';
import 'package:project_all_guide_front/ui/pages/components/box_mini_color_button.dart';

import 'delete_cupertino_button.dart';

class MyWhereGuideListItem extends StatelessWidget {
  final String picUrl;
  final String storeName;
  final String categoryName;
  final String orderMenu_1;
  final String orderMenu_2;
  final String orderMenu_3;
  final String orderPrice;
  final VoidCallback? onDetailPressed;

  const MyWhereGuideListItem({
    required this.picUrl,
    required this.storeName,
    required this.categoryName,
    required this.orderMenu_1,
    required this.orderMenu_2,
    required this.orderMenu_3,
    required this.orderPrice,
    this.onDetailPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: 160,
              height: 160,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(80),
                ),
                child: ClipOval(
                  child: Image.asset(
                    "assets/${picUrl}",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: SizedBox(
              height: 120,
              width: 180,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "${storeName}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 30),
                              Text(
                                "${categoryName}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),
                              Text("${orderMenu_1}"),
                              Text("${orderMenu_2}"),
                              Text("${orderMenu_3}"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DeleteCupertinoButton(
                text: "삭제",
              ),
              SizedBox(height: 10),
              BoxMiniColorButton(
                text: "수정",
                press: onDetailPressed,
                bgColor: Colors.white,
                txColor: kPrimaryColor,
              ),
            ],
          ),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
