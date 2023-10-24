import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BoxColorButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? press;
  final Color color;

  const BoxColorButton(
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
            borderRadius: BorderRadius.circular(15.0), // 조절 가능한 정도
          ),
          elevation: 7, // 그림자의 강도를 조절할 수 있는 값
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
