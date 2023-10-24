import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';
import '../../../_core/constants/size.dart';

class CustomAuthTextFormField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final funValidator;
  final TextEditingController controller;

  const CustomAuthTextFormField({
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
          child: TextFormField(
            controller: controller,
            validator: funValidator,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: "   $text",
              hintStyle: TextStyle(color: kUnPointColor),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.1),
              enabledBorder: OutlineInputBorder(
                // 3. 기본 TextFormField 디자인
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                // 4. 손가락 터치시 TextFormField 디자인
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                // 5. 에러발생시 TextFormField 디자인
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              errorStyle: TextStyle(color: kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
