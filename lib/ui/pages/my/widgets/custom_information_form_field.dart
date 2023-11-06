import 'package:flutter/material.dart';

import '../../../../_core/constants/colors.dart';
import '../../../../_core/constants/size.dart';

class CustomInformationFormField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final funValidator;
  final TextEditingController controller;

  const CustomInformationFormField({
    Key? key,
    required this.text,
    this.obscureText = false,
    required this.funValidator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: gap_small),
        SizedBox(
          width: 200,
          height: 55,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextFormField(
                controller: controller,
                validator: funValidator,
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: "$text",
                  hintStyle: TextStyle(color: kUnPointColor),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1.0,
                  //     color: kUnPointColor,
                  //   ),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1.0,
                  //     color: kUnPointColor,
                  //   ),
                  // ),
                  // errorBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1.0,
                  //     color: kUnPointColor,
                  //   ),
                  // ),
                  // focusedErrorBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     width: 1.0,
                  //     color: kUnPointColor,
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
