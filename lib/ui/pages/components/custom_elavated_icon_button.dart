import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/size.dart';

import '../../../_core/constants/colors.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final String text;
  final String imgUrl;
  final Color textColor;

  final GestureTapCallback? press;

  const CustomElevatedIconButton({
    required this.text,
    required this.imgUrl,
    required this.textColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: kBackWhite,
        elevation: 7,
      ),
      onPressed: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/$imgUrl"),
          SizedBox(width: gap_large),
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
