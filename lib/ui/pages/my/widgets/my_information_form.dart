import 'package:flutter/material.dart';

import '../../../../data/model/my_imformation.dart';
import '../../components/box_no_padding_button.dart';
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
            BoxNoPaddingButton(
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
