import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/theme.dart';

class BottomText extends StatelessWidget {
  final String text;
  const BottomText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 30,
        child: Text(
          "${text}",
          style: textTheme().bodyMedium,
        ),
      ),
    );
  }
}
