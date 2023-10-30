import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class RoundBoxPhoto extends StatelessWidget {
  final String img;
  const RoundBoxPhoto({required this.img, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(5.0),
          bottom: Radius.circular(5.0),
        ),
      ),
      child: Image.asset(
        "assets/${img}",
        width: 75,
        height: 75,
        color: kUnPointColor,
        fit: BoxFit.cover,
      ),
    );
  }
}
