import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class BottomText extends StatelessWidget {
  final String text;
  const BottomText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 40,
        child: Text(
          "${text}",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: kUnPointColor),
        ),
      ),
    );
  }
}
