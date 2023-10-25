import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class CustomTextColorButton extends StatelessWidget {
  final String text;
  final VoidCallback function;

  const CustomTextColorButton(this.text, this.function, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(text,
          style: const TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 14)),
    );
  }
}
