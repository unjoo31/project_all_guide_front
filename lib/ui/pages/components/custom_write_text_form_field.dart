import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';
import '../../../_core/constants/size.dart';

class CustomWriteTextFormField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final funValidator;
  final TextEditingController controller;

  const CustomWriteTextFormField({
    Key? key,
    required this.text,
    this.obscureText = false,
    required this.funValidator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: gap_small),
        SizedBox(
          height: 55,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextFormField(
                controller: controller,
                validator: funValidator,
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: "   $text",
                  hintStyle: TextStyle(color: kUnPointColor),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: kUnPointColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: kUnPointColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: kUnPointColor,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 1.0,
                      color: kUnPointColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
