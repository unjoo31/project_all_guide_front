import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BoxMiniColorButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const BoxMiniColorButton(
      {Key? key, this.text, this.press, this.color = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 7,
        ),
        onPressed: press,
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
                fontSize: 13, color: kBackWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
