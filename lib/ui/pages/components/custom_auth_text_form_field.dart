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
                  fillColor: Colors.grey.withOpacity(0.1),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              if (funValidator != null && funValidator("") != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.error,
                    color: kPrimaryColor,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
