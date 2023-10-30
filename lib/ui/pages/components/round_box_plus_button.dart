import 'package:flutter/material.dart';

import '../../../_core/constants/colors.dart';

class RoundBoxPlusButton extends StatefulWidget {
  const RoundBoxPlusButton({
    Key? key,
  }) : super(key: key);

  @override
  _IconButtonOffState createState() => _IconButtonOffState();
}

class _IconButtonOffState extends State<RoundBoxPlusButton> {
  Color iconColor = kUnPointColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(5.0),
            bottom: Radius.circular(5.0),
          ),
        ),
        child: IconButton(
          onPressed: () {
            setState(() {
              iconColor = kPrimaryColor;
            });
          },
          icon: Image.asset(
            "assets/photo_plus.png",
            width: 20,
            height: 20,
            color: kUnPointColor,
          ),
        ),
      ),
    );
  }
}
