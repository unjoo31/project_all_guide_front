import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BoxNoColorButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const BoxNoColorButton(
      {Key? key, this.text, this.press, this.color = kBackWhite})
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
            borderRadius: BorderRadius.circular(12.0), // 조절 가능한 정도
          ),
          elevation: 8,
        ),
        onPressed: press,
        child: Center(
          child: Text(
            text ?? "",
            style: TextStyle(
                fontSize: 16,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold), // 텍스트 색상 조절
          ),
        ),
      ),
    );
  }
}
