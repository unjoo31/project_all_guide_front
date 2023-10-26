import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';

class WhoGuideMakeSecondForm extends StatelessWidget {
  const WhoGuideMakeSecondForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BoxNoPaddingButton(
          text: "Second 다음",
          press: () {
            Navigator.pushNamed(context, 'guidemakethirdform');
          },
        ),
      ),
    );
  }
}
