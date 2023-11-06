import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../components/custom_cupertino_button.dart';

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
            CustomCupertinoButton(
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
