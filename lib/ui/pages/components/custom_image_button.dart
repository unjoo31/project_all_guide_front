import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String img;
  final VoidCallback function;

  const CustomImageButton(this.img, this.function, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Image.asset("assets/$img"),
    );
  }
}
