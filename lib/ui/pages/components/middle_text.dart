import 'package:flutter/material.dart';

import '../../../_core/constants/theme.dart';

class MiddleText extends StatelessWidget {
  final String text;
  const MiddleText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 20,
        child: Text(
          "${text}",
          style: textTheme().displayMedium,
        ),
      ),
    );
  }
}
