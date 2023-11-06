import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../../../data/model/my_imformation.dart';
import '../../components/custom_cupertino_button.dart';
import 'my_list_guide.dart';
import 'my_list_information.dart';

class MyListForm extends StatelessWidget {
  const MyListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        centerTitle: false,
        flexibleSpace: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/main_top_logo.png',
                height: 60,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MiddleText(text: "마이페이지"),
            SizedBox(height: 15),
            MyListInformation(
                userImg: myInformationList[0].userImg,
                userName: myInformationList[0].userName,
                userEmail: myInformationList[0].userEmail),
            SizedBox(height: 15),
            MyListGuide(
              guideName: "모두의 가이드",
              guideImg: "my_all_guide.png",
              guideUrl: "myallguideform",
            ),
            SizedBox(height: 15),
            MyListGuide(
              guideName: "누구나 가이드",
              guideImg: "my_who_guide.png",
              guideUrl: "mywhoguideform",
            ),
            SizedBox(height: 15),
            MyListGuide(
              guideName: "어디가 가이드",
              guideImg: "my_where_guide.png",
              guideUrl: "mywhereguideform",
            ),
            SizedBox(height: 15),
            LogoutCupertinoButton(
              text: "로그아웃",
              press: () {
                Navigator.pushNamed(context, 'guidemakesecondform');
              },
            ),
          ],
        ),
      ),
    );
  }
}
