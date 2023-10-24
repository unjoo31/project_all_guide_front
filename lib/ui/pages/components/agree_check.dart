import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/size.dart';

import '../../../_core/constants/colors.dart';

class AgreeCheck extends StatelessWidget {
  final String text;

  const AgreeCheck({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckboxExample(),
        SizedBox(width: gap_medium),
        Text(
          text,
          style: TextStyle(color: kUnPointColor),
        ),
      ],
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(
          color: kGreyColor,
          width: 2,
        ),
        color: kGreyColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Theme(
        data: ThemeData(
          unselectedWidgetColor: Colors.transparent,
        ),
        child: Checkbox(
          checkColor: kPrimaryColor,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.transparent;
  }
}
