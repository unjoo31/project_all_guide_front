import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';

class WhoGuideMakeThirdForm extends StatelessWidget {
  const WhoGuideMakeThirdForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BoxNoPaddingButton(
          text: "Third 다음",
          press: () {
            Navigator.pushNamed(context, 'guidemakeforthform');
          },
        ),
      ),
    );
  }
}
