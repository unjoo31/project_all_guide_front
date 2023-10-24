import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final funPageRoute;

  const CustomElevatedButton({required this.text, required this.funPageRoute});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 7,
      ),
      onPressed: funPageRoute,
      child: Text(
        "$text",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
