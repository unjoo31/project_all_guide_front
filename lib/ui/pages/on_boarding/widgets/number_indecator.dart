import 'package:flutter/material.dart';

class NumberIndicator extends StatelessWidget {
  const NumberIndicator({
    Key? key,
    required this.length,
    required this.currentPage,
    this.width = 60,
    this.height = 30,
  }) : super(key: key);

  final int currentPage;
  final int length;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        "$currentPage / $length",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
