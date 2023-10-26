import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BoxNoPaddingButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const BoxNoPaddingButton(
      {Key? key, this.text, this.press, this.color = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
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
                fontSize: 16, color: kBackWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
