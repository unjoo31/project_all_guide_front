import 'package:flutter/material.dart';

class MiddleText extends StatelessWidget {
  final String text;
  const MiddleText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Text(
        "${text}",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
