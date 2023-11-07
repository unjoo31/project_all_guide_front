import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';
import '../../../_core/constants/size.dart';

class CustomWriteLognTextField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final funValidator;
  final TextEditingController controller;

  const CustomWriteLognTextField({
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
          height: 400, // 조절 가능한 높이
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              TextField(
                controller: controller,
                obscureText: obscureText,
                maxLines: 15, // 여러 줄 입력을 허용
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
