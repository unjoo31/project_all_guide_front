import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/my/widgets/save_cupertino_button.dart';

import '../../../../data/model/my_imformation.dart';
import 'my_information_title.dart';
import 'my_information_write_form.dart';

class MyInformationForm extends StatelessWidget {
  const MyInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: ListView(
          children: [
            SizedBox(height: 20),
            MyInformationTitle(),
            SizedBox(height: 20),
            MyInformationWriteForm(
              userImg: myInformationList[0].userImg,
            ),
            SaveCupertinoButton(
              text: "저장",
              press: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
