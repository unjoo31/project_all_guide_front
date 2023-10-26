import 'package:flutter/material.dart';

import '../../components/box_no_padding_button.dart';

class WhoGuideMakeForthForm extends StatelessWidget {
  const WhoGuideMakeForthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BoxNoPaddingButton(
          text: "Forth 다음",
          press: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}
