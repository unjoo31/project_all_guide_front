import 'package:flutter/material.dart';

class IconBottomText extends StatelessWidget {
  final String text;
  final String img;
  final Color textColor; // 수정된 부분

  const IconBottomText({
    required this.text,
    required this.img,
    required this.textColor,
    Key? key, // 추가된 부분
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/$img"),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
                fontSize: 14, color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
