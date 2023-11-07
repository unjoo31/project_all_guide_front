import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/make_menu_list_form.dart';

import '../../components/box_no_padding_button.dart';
import '../../who_guide/widgets/make_subscript.dart';

class WhereGuideModfyItem extends StatelessWidget {
  final String picUrl;
  final String storeName;
  final String storeAddress;
  final String orderMenu_1;
  final String orderMenu_2;
  final String orderMenu_3;
  final String orderPrice;

  const WhereGuideModfyItem({
    required this.picUrl,
    required this.storeName,
    required this.storeAddress,
    required this.orderMenu_1,
    required this.orderMenu_2,
    required this.orderMenu_3,
    required this.orderPrice,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/${picUrl}",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 500,
              width: 400,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    child: Container(
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                MakeSubscript(
                                  titleText: "${storeName}",
                                  subText: "${storeAddress}",
                                ),
                                SizedBox(height: 10),
                                MakeMenuListForm(),
                                SizedBox(height: 10),
                                MakeSubscript(
                                  titleText: "결제금액",
                                  subText: "${orderPrice}",
                                ),
                                BoxNoPaddingButton(
                                  text: "결제하기",
                                  press: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
